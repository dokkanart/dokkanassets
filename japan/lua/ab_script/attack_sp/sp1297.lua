-- 4017200 超サイヤ人孫悟空　メテオスマッシュ

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

-- エフェクトセットアップ
ef_001 = 153577;    -- アイドル〜飛び出し
ef_002 = 153578;    -- ナビ手前突進
ef_003 = 153579;    -- ナビ殴り：手前
ef_004 = 153580;    -- ナビ殴り：奥
ef_005 = 153581;    -- 奥へ飛ぶ〜追っかけ：手前
ef_006 = 153582;    -- 奥へ飛ぶ〜追っかけ：奥
ef_007 = 153583;    -- ハンマーナックル：手前
ef_008 = 153584;    -- ハンマーナックル：奥
ef_009 = 153585;    -- 爆発

ef_001r = 153586;    -- 敵用：アイドル〜飛び出し
ef_002r = 153605;    -- 敵用：アイドル〜飛び出し
ef_003r = 153615;    -- 敵用：アイドル〜飛び出し
ef_004r = 153606;    -- 敵用：アイドル〜飛び出し
ef_005r = 153587;    -- 敵用：奥へ飛ぶ〜追っかけ：手前
ef_007r = 153588;    -- 敵用：ハンマーナックル：手前
ef_008r = 153589;    -- 敵用：ハンマーナックル：奥
ef_009r = 153590;    -- 敵用：爆発


kaki_001 = 10012; -- ズオッ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

------------------------------------------------------
-- 悟空が地面から飛び立つ	
------------------------------------------------------

spep_0 = 0 ;

-- 終始黒背景
entryFadeBg( spep_0, 0, spep_0 + 104, 0, 0, 0, 0, 255);

-- 悟空が地面から飛び立つ エフェクト
zimenkaratobitatsu = entryEffectLife( spep_0,  ef_001, 104, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_0,zimenkaratobitatsu,  0,  0);
setEffMoveKey( spep_0 + 104,zimenkaratobitatsu,  0,  0);

setEffScaleKey( spep_0, zimenkaratobitatsu, 1.0, 1.0);
setEffScaleKey( spep_0 + 104, zimenkaratobitatsu, 1.0, 1.0);

setEffAlphaKey( spep_0, zimenkaratobitatsu, 255);
setEffAlphaKey( spep_0 + 104, zimenkaratobitatsu, 255);

setEffRotateKey( spep_0, zimenkaratobitatsu, 0);
setEffRotateKey( spep_0 + 104, zimenkaratobitatsu, 0);

--SE
playSe( spep_0 + 32 , 1025 );  --地面を蹴る
setSeVolume(  spep_0 + 32,  1025,  70);
SeID_0 = playSe( spep_0 + 34 , 1044 );  --地面を蹴る
stopSe( spep_0 + 60, SeID_0,   30);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

------------------------------------------------------
-- カードカットイン
------------------------------------------------------

spep_1 = spep_0 + 104 ;

-- 終始黒背景
entryFadeBg( spep_1, 0, spep_1 + 90, 0, 0, 0, 0, 255);

--白フラッシュ	監修動画にはありませんがシステム的なフラッシュだと思うので入れています
entryFade( spep_1-6, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen_1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  shuchusen_1,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen_1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen_1,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen_1,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen_1,  0);
setEffRotateKey(  spep_1+90,  shuchusen_1,  0);
setEffAlphaKey(  spep_1,  shuchusen_1,  255);
setEffAlphaKey(  spep_1+90,  shuchusen_1,  255);

-- 白フラッシュ	監修動画にはありませんがシステム的なフラッシュだと思うので入れています
entryFade(  spep_1 + 78,  10,  5,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- カメラに向かって突進	
------------------------------------------------------

spep_2 = spep_1 + 90 ;

-- 終始黒背景
entryFadeBg( spep_2, 0, spep_2 + 115, 0, 0, 0, 0, 255);

-- カメラに向かって突進 エフェクト
tosshin = entryEffectLife( spep_2,  ef_002, 115, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_2,tosshin,  0,  0);
setEffMoveKey( spep_2 + 115,tosshin,  0,  0);

setEffScaleKey( spep_2, tosshin, 1.0, 1.0);
setEffScaleKey( spep_2 + 115, tosshin, 1.0, 1.0);

setEffAlphaKey( spep_2, tosshin, 255);
setEffAlphaKey( spep_2 + 115, tosshin, 255);

setEffRotateKey( spep_2, tosshin, 0);
setEffRotateKey( spep_2 + 115, tosshin, 0);

-- **  顔カットイン　** --
speff = entryEffect( spep_2 + 24, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 24, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 36,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 36, ctgogo, 72, 10 );

setEffMoveKey( spep_2 + 36, ctgogo, 200,  480, 0  );
setEffMoveKey( spep_2 + 36 + 72, ctgogo, 200,  480, 0  );	

setEffScaleKey( spep_2 + 36, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 36 + 64, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 + 36 + 66, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 36 + 68, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_2 + 36 + 70, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_2 + 36 + 72, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_2 + 36, ctgogo, 40 );
setEffRotateKey( spep_2 + 36 + 72, ctgogo, 40 );

setEffAlphaKey( spep_2 + 36, ctgogo, 0 );
setEffAlphaKey( spep_2 + 36 + 1, ctgogo, 255 );
setEffAlphaKey( spep_2 + 36 + 2, ctgogo, 255 );
setEffAlphaKey( spep_2 + 36 + 72, ctgogo, 255 );

--SE
playSe( spep_2 , 1072 );  --風を切る
playSe( spep_2 + 36 , SE_04 );  --ゴゴゴ

------------------------------------------------------
-- 敵を殴り飛ばす
------------------------------------------------------

spep_3 = spep_2 + 115 ;

-- 終始黒背景
entryFadeBg( spep_3, 0, spep_3 + 60, 0, 0, 0, 0, 255);

-- 敵を殴り飛ばす エフェクト
naguritobasu = entryEffectLife( spep_3,  ef_003, 60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_3,naguritobasu,  0,  0);
setEffMoveKey( spep_3 + 60,naguritobasu,  0,  0);

setEffScaleKey( spep_3, naguritobasu, 1.0, 1.0);
setEffScaleKey( spep_3 + 60, naguritobasu, 1.0, 1.0);

setEffAlphaKey( spep_3, naguritobasu, 255);
setEffAlphaKey( spep_3 + 59, naguritobasu, 255);
setEffAlphaKey( spep_3 + 60, naguritobasu, 0);	-- 1f余分なので消す

setEffRotateKey( spep_3, naguritobasu, 0);
setEffRotateKey( spep_3 + 60, naguritobasu, 0);

-- 敵を殴り飛ばす エフェクト
naguritobasu_haikei = entryEffectLife( spep_3,  ef_004, 60, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_3,naguritobasu_haikei,  0,  0);
setEffMoveKey( spep_3 + 60,naguritobasu_haikei,  0,  0);

setEffScaleKey( spep_3, naguritobasu_haikei, 1.0, 1.0);
setEffScaleKey( spep_3 + 60, naguritobasu_haikei, 1.0, 1.0);

setEffAlphaKey( spep_3, naguritobasu_haikei, 255);
setEffAlphaKey( spep_3 + 60, naguritobasu_haikei, 255);

setEffRotateKey( spep_3, naguritobasu_haikei, 0);
setEffRotateKey( spep_3 + 60, naguritobasu_haikei, 0);

-- 敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 - 3 + 55, 1, 0 );
setDisp( spep_3 - 3 + 56, 1, 0 );	-- 奇数フレームなので保険
changeAnime( spep_3 - 3 + 0, 1, 102 );
changeAnime( spep_3 - 3 + 32, 1, 107 );

setMoveKey( spep_3 - 3 + 0, 1, 204.2, -349.6 + 70 , 0 );
setMoveKey( spep_3 - 3 + 2, 1, 206.8, -357 + 70 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, 209.2, -363.5 + 70 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, 211.3, -369.3 + 70 , 0 );
setMoveKey( spep_3 - 3 + 8, 1, 213.1, -374.3 + 70 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, 214.6, -378.6 + 70 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, 215.9, -382 + 70 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, 216.8, -384.7 + 70 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, 217.5, -386.7 + 70 , 0 );
setMoveKey( spep_3 - 3 + 18, 1, 218, -387.8 + 70 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, 218.1, -388.2 + 70 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, 217.6, -416.5 + 70 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, 217.1, -443.2 + 70 , 0 );
setMoveKey( spep_3 - 3 + 26, 1, 216.7, -468.5 + 70 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 216.2, -492.1 + 70 , 0 );
setMoveKey( spep_3 - 3 + 31, 1, 215.9, -514.3 + 70 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, - 40 + 212, -753.2 + 180 , 0 );
setMoveKey( spep_3 - 3 + 34, 1, - 40 + 276.2, -831.6 + 180 , 0 );
setMoveKey( spep_3 - 3 + 36, 1, - 40 + 375.1, -952.1 + 180 , 0 );
setMoveKey( spep_3 - 3 + 38, 1, - 40 + 448.8, -1041.8 + 180 , 0 );
setMoveKey( spep_3 - 3 + 40, 1, - 40 + 505.7, -1111.2 + 180 , 0 );
setMoveKey( spep_3 - 3 + 42, 1, - 40 + 550.7, -1165.9 + 180 , 0 );
setMoveKey( spep_3 - 3 + 44, 1, - 40 + 586.7, -1209.7 + 180 , 0 );
setMoveKey( spep_3 - 3 + 46, 1, - 40 + 615.7, -1245.1 + 180 , 0 );
setMoveKey( spep_3 - 3 + 48, 1, - 40 + 639.3, -1273.8 + 180 , 0 );
setMoveKey( spep_3 - 3 + 50, 1, - 40 + 658.6, -1297.4 + 180 , 0 );
setMoveKey( spep_3 - 3 + 52, 1, - 40 + 674.8, -1317 + 180 , 0 );
setMoveKey( spep_3 - 3 + 54, 1, - 40 + 688.5, -1333.5 + 180 , 0 );

setScaleKey( spep_3 - 3 + 0, 1, - 0.65 +  4.26, 4.26 - 0.65 );
setScaleKey( spep_3 - 3 + 2, 1, - 0.65 +  4.32, 4.32 - 0.65 );
setScaleKey( spep_3 - 3 + 4, 1, - 0.65 +  4.36, 4.36 - 0.65 );
setScaleKey( spep_3 - 3 + 6, 1, - 0.65 +  4.4, 4.4 - 0.65 );
setScaleKey( spep_3 - 3 + 8, 1, - 0.65 +  4.44, 4.44 - 0.65 );
setScaleKey( spep_3 - 3 + 10, 1, - 0.65 +  4.47, 4.47 - 0.65 );
setScaleKey( spep_3 - 3 + 12, 1, - 0.65 +  4.5, 4.5 - 0.65 );
setScaleKey( spep_3 - 3 + 14, 1, - 0.65 +  4.52, 4.52 - 0.65 );
setScaleKey( spep_3 - 3 + 16, 1, - 0.65 +  4.53, 4.53 - 0.65 );
setScaleKey( spep_3 - 3 + 18, 1, - 0.65 +  4.54, 4.54 - 0.65 );
setScaleKey( spep_3 - 3 + 20, 1, - 0.65 +  4.54, 4.54 - 0.65 );
setScaleKey( spep_3 - 3 + 22, 1, - 0.65 +  4.67, 4.67 - 0.65 );
setScaleKey( spep_3 - 3 + 24, 1, - 0.65 +  4.8, 4.8 - 0.65 );
setScaleKey( spep_3 - 3 + 26, 1, - 0.65 +  4.92, 4.92 - 0.65 );
setScaleKey( spep_3 - 3 + 28, 1, - 0.65 +  5.04, 5.04 - 0.65 );
setScaleKey( spep_3 - 3 + 31, 1, - 0.65 +  5.14, 5.14 - 0.65 );
setScaleKey( spep_3 - 3 + 32, 1, - 0.65 +  2.38, 2.38 - 0.65 );
setScaleKey( spep_3 - 3 + 34, 1, - 0.65 +  2.57, 2.57 - 0.65 );
setScaleKey( spep_3 - 3 + 36, 1, - 0.65 +  2.86, 2.86 - 0.65 );
setScaleKey( spep_3 - 3 + 38, 1, - 0.65 +  3.08, 3.08 - 0.65 );
setScaleKey( spep_3 - 3 + 40, 1, - 0.65 +  3.25, 3.25 - 0.65 );
setScaleKey( spep_3 - 3 + 42, 1, - 0.65 +  3.39, 3.39 - 0.65 );
setScaleKey( spep_3 - 3 + 44, 1, - 0.65 +  3.49, 3.49 - 0.65 );
setScaleKey( spep_3 - 3 + 46, 1, - 0.65 +  3.58, 3.58 - 0.65 );
setScaleKey( spep_3 - 3 + 48, 1, - 0.65 +  3.65, 3.65 - 0.65 );
setScaleKey( spep_3 - 3 + 50, 1, - 0.65 +  3.71, 3.71 - 0.65 );
setScaleKey( spep_3 - 3 + 52, 1, - 0.65 +  3.75, 3.75 - 0.65 );
setScaleKey( spep_3 - 3 + 54, 1, - 0.65 +  3.79, 3.79 - 0.65 );

setRotateKey( spep_3 - 3 + 0, 1, 4.8 );
setRotateKey( spep_3 - 3 + 20, 1, 4.8 );
setRotateKey( spep_3 - 3 + 22, 1, 6 );
setRotateKey( spep_3 - 3 + 24, 1, 7.1 );
setRotateKey( spep_3 - 3 + 26, 1, 8.1 );
setRotateKey( spep_3 - 3 + 28, 1, 9.1 );
setRotateKey( spep_3 - 3 + 31, 1, 10 );
setRotateKey( spep_3 - 3 + 32, 1, -94.6 );
setRotateKey( spep_3 - 3 + 34, 1, -87 );
setRotateKey( spep_3 - 3 + 36, 1, -75.3 );
setRotateKey( spep_3 - 3 + 38, 1, -66.7 );
setRotateKey( spep_3 - 3 + 40, 1, -60 );
setRotateKey( spep_3 - 3 + 42, 1, -54.7 );
setRotateKey( spep_3 - 3 + 44, 1, -50.4 );
setRotateKey( spep_3 - 3 + 46, 1, -47 );
setRotateKey( spep_3 - 3 + 48, 1, -44.3 );
setRotateKey( spep_3 - 3 + 50, 1, -42 );
setRotateKey( spep_3 - 3 + 52, 1, -40.1 );
setRotateKey( spep_3 - 3 + 54, 1, -38.4 );

--SE
playSe( spep_3 + 28 , 1009 );  --殴る

------------------------------------------------------
-- 地面を蹴って追いかける
------------------------------------------------------

spep_4 = spep_3 + 60 ;

-- 終始黒背景
entryFadeBg( spep_4, 0, spep_4 + 144, 0, 0, 0, 0, 255);

-- 地面を蹴って追いかける エフェクト
oikakeru = entryEffectLife( spep_4,  ef_005, 144, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4,oikakeru,  0,  0);
setEffMoveKey( spep_4 + 144,oikakeru,  0,  0);

setEffScaleKey( spep_4, oikakeru, 1.0, 1.0);
setEffScaleKey( spep_4 + 144, oikakeru, 1.0, 1.0);

setEffAlphaKey( spep_4, oikakeru, 255);
setEffAlphaKey( spep_4 + 143, oikakeru, 255);
setEffAlphaKey( spep_4 + 144, oikakeru, 0); -- 何故か残るのでアルファで消す

setEffRotateKey( spep_4, oikakeru, 0);
setEffRotateKey( spep_4 + 144, oikakeru, 0);

-- 地面を蹴って追いかける エフェクト
oikakeru_haikei = entryEffectLife( spep_4,  ef_006, 144, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_4,oikakeru_haikei,  0,  0);
setEffMoveKey( spep_4 + 144,oikakeru_haikei,  0,  0);

setEffScaleKey( spep_4, oikakeru_haikei, 1.0, 1.0);
setEffScaleKey( spep_4 + 144, oikakeru_haikei, 1.0, 1.0);

setEffAlphaKey( spep_4, oikakeru_haikei, 255);
setEffAlphaKey( spep_4 + 143, oikakeru_haikei, 255);
setEffAlphaKey( spep_4 + 144, oikakeru_haikei, 0); -- 何故か残るのでアルファで消す

setEffRotateKey( spep_4, oikakeru_haikei, 0);
setEffRotateKey( spep_4 + 144, oikakeru_haikei, 0);

-- 敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 134, 1, 0 ); -- エフェクトに隠れるので消す
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4  + 0, 1, -642.4, 616.6 , 0 );
setMoveKey( spep_4  + 2, 1, -185.3, 305.3 , 0 );
setMoveKey( spep_4  + 4, 1, -41.1, 207 , 0 );
setMoveKey( spep_4  + 6, 1, 50.5, 144.7 , 0 );
setMoveKey( spep_4  + 8, 1, 114.4, 101.2 , 0 );
setMoveKey( spep_4  + 10, 1, 160.3, 69.9 , 0 );
setMoveKey( spep_4  + 12, 1, 190.4, 49.4 , 0 );
setMoveKey( spep_4  + 14, 1, 208.2, 37.3 , 0 );
setMoveKey( spep_4  + 16, 1, 218.8, 30 , 0 );
setMoveKey( spep_4  + 18, 1, 225.6, 25.4 , 0 );
setMoveKey( spep_4  + 20, 1, 230.7, 22 , 0 );
setMoveKey( spep_4  + 22, 1, 235.6, 18.6 , 0 );
setMoveKey( spep_4  + 24, 1, 241.5, 14.6 , 0 );
setMoveKey( spep_4  + 26, 1, 249.5, 9.1 , 0 );
setMoveKey( spep_4  + 28, 1, 252.6, 7 , 0 );
setMoveKey( spep_4  + 30, 1, 255.5, 5 , 0 );
setMoveKey( spep_4  + 32, 1, 258.3, 3.1 , 0 );
setMoveKey( spep_4  + 34, 1, 260.9, 1.3 , 0 );
setMoveKey( spep_4  + 36, 1, 263.4, -0.4 , 0 );
setMoveKey( spep_4  + 38, 1, 265.7, -1.9 , 0 );
setMoveKey( spep_4  + 40, 1, 267.9, -3.4 , 0 );
setMoveKey( spep_4  + 42, 1, 270, -4.8 , 0 );
setMoveKey( spep_4  + 44, 1, 271.9, -6.2 , 0 );
setMoveKey( spep_4  + 46, 1, 273.8, -7.4 , 0 );
setMoveKey( spep_4  + 48, 1, 275.5, -8.6 , 0 );
setMoveKey( spep_4  + 50, 1, 277.1, -9.7 , 0 );
setMoveKey( spep_4  + 52, 1, 278.7, -10.8 , 0 );
setMoveKey( spep_4  + 54, 1, 280.1, -11.7 , 0 );
setMoveKey( spep_4  + 56, 1, 281.5, -12.7 , 0 );
setMoveKey( spep_4  + 58, 1, 282.8, -13.5 , 0 );
setMoveKey( spep_4  + 60, 1, 284, -14.4 , 0 );
setMoveKey( spep_4  + 62, 1, 285.1, -15.1 , 0 );
setMoveKey( spep_4  + 64, 1, 286.2, -15.8 , 0 );
setMoveKey( spep_4  + 66, 1, 287.1, -16.5 , 0 );
setMoveKey( spep_4  + 68, 1, 288.1, -17.1 , 0 );
setMoveKey( spep_4  + 70, 1, 288.9, -17.7 , 0 );
setMoveKey( spep_4  + 72, 1, 289.8, -18.3 , 0 );
setMoveKey( spep_4  + 74, 1, 290.5, -18.8 , 0 );
setMoveKey( spep_4  + 76, 1, 291.2, -19.3 , 0 );
setMoveKey( spep_4  + 78, 1, 291.9, -19.7 , 0 );
setMoveKey( spep_4  + 80, 1, 292.5, -20.1 , 0 );
setMoveKey( spep_4  + 82, 1, 293, -20.5 , 0 );
setMoveKey( spep_4  + 84, 1, 293.6, -20.9 , 0 );
setMoveKey( spep_4  + 86, 1, 294.1, -21.2 , 0 );
setMoveKey( spep_4  + 88, 1, 294.5, -21.5 , 0 );
setMoveKey( spep_4  + 90, 1, 294.9, -21.8 , 0 );
setMoveKey( spep_4  + 92, 1, 295.3, -22.1 , 0 );
setMoveKey( spep_4  + 94, 1, 295.7, -22.3 , 0 );
setMoveKey( spep_4  + 96, 1, 296, -22.5 , 0 );
setMoveKey( spep_4  + 98, 1, 296.3, -22.7 , 0 );
setMoveKey( spep_4  + 100, 1, 296.5, -22.9 , 0 );
setMoveKey( spep_4  + 102, 1, 296.8, -23 , 0 );
setMoveKey( spep_4  + 104, 1, 297, -23.2 , 0 );
setMoveKey( spep_4  + 106, 1, 297.2, -23.3 , 0 );
setMoveKey( spep_4  + 108, 1, 297.4, -23.5 , 0 );
setMoveKey( spep_4  + 110, 1, 297.5, -23.6 , 0 );
setMoveKey( spep_4  + 112, 1, 297.7, -23.7 , 0 );
setMoveKey( spep_4  + 114, 1, 297.8, -23.7 , 0 );
setMoveKey( spep_4  + 116, 1, 297.9, -23.8 , 0 );
setMoveKey( spep_4  + 118, 1, 298, -23.9 , 0 );
setMoveKey( spep_4  + 120, 1, 298.1, -23.9 , 0 );
setMoveKey( spep_4  + 122, 1, 298.1, -24 , 0 );
setMoveKey( spep_4  + 124, 1, 298.2, -24 , 0 );
setMoveKey( spep_4  + 126, 1, 298.2, -24.1 , 0 );
setMoveKey( spep_4  + 128, 1, 298.3, -24.1 , 0 );
setMoveKey( spep_4  + 132, 1, 298.3, -24.1 , 0 );
setMoveKey( spep_4  + 134, 1, 298.4, -24.1 , 0 );
-- setMoveKey( spep_4  + 138, 1, 298.4, -24.1 , 0 );	-- エフェクトに隠れるので消す
-- setMoveKey( spep_4  + 140, 1, 298.4, -24.2 , 0 );

setScaleKey( spep_4  + 0, 1, 3.74, 3.74 );
setScaleKey( spep_4  + 2, 1, 1.94, 1.94 );
setScaleKey( spep_4  + 4, 1, 1.37, 1.37 );
setScaleKey( spep_4  + 6, 1, 1.01, 1.01 );
setScaleKey( spep_4  + 8, 1, 0.76, 0.76 );
setScaleKey( spep_4  + 10, 1, 0.58, 0.58 );
setScaleKey( spep_4  + 12, 1, 0.46, 0.46 );
setScaleKey( spep_4  + 14, 1, 0.39, 0.39 );
setScaleKey( spep_4  + 16, 1, 0.35, 0.35 );
setScaleKey( spep_4  + 18, 1, 0.33, 0.33 );
setScaleKey( spep_4  + 20, 1, 0.31, 0.31 );
setScaleKey( spep_4  + 22, 1, 0.29, 0.29 );
setScaleKey( spep_4  + 24, 1, 0.26, 0.26 );
setScaleKey( spep_4  + 26, 1, 0.23, 0.23 );
setScaleKey( spep_4  + 28, 1, 0.22, 0.22 );
setScaleKey( spep_4  + 30, 1, 0.21, 0.21 );
setScaleKey( spep_4  + 32, 1, 0.2, 0.2 );
setScaleKey( spep_4  + 34, 1, 0.19, 0.19 );
setScaleKey( spep_4  + 36, 1, 0.18, 0.18 );
setScaleKey( spep_4  + 38, 1, 0.17, 0.17 );
setScaleKey( spep_4  + 40, 1, 0.16, 0.16 );
setScaleKey( spep_4  + 42, 1, 0.15, 0.15 );
setScaleKey( spep_4  + 44, 1, 0.14, 0.14 );
setScaleKey( spep_4  + 46, 1, 0.14, 0.14 );
setScaleKey( spep_4  + 48, 1, 0.13, 0.13 );
setScaleKey( spep_4  + 50, 1, 0.12, 0.12 );
setScaleKey( spep_4  + 52, 1, 0.12, 0.12 );
setScaleKey( spep_4  + 54, 1, 0.11, 0.11 );
setScaleKey( spep_4  + 56, 1, 0.11, 0.11 );
setScaleKey( spep_4  + 58, 1, 0.1, 0.1 );
setScaleKey( spep_4  + 60, 1, 0.1, 0.1 );
setScaleKey( spep_4  + 62, 1, 0.09, 0.09 );
setScaleKey( spep_4  + 64, 1, 0.09, 0.09 );
setScaleKey( spep_4  + 66, 1, 0.08, 0.08 );
setScaleKey( spep_4  + 70, 1, 0.08, 0.08 );
setScaleKey( spep_4  + 72, 1, 0.07, 0.07 );
setScaleKey( spep_4  + 78, 1, 0.07, 0.07 );
setScaleKey( spep_4  + 80, 1, 0.06, 0.06 );
setScaleKey( spep_4  + 88, 1, 0.06, 0.06 );
setScaleKey( spep_4  + 90, 1, 0.05, 0.05 );
setScaleKey( spep_4  + 106, 1, 0.05, 0.05 );
setScaleKey( spep_4  + 108, 1, 0.04, 0.04 );
setScaleKey( spep_4  + 134, 1, 0.04, 0.04 );
-- setScaleKey( spep_4  + 140, 1, 0.04, 0.04 );	-- エフェクトに隠れるので消す

setRotateKey( spep_4  + 0, 1, 57 );
setRotateKey( spep_4  + 2, 1, 72.6 );
setRotateKey( spep_4  + 4, 1, 77.5 );
setRotateKey( spep_4  + 6, 1, 80.7 );
setRotateKey( spep_4  + 8, 1, 82.8 );
setRotateKey( spep_4  + 10, 1, 84.4 );
setRotateKey( spep_4  + 12, 1, 85.4 );
setRotateKey( spep_4  + 14, 1, 86.1 );
setRotateKey( spep_4  + 16, 1, 86.4 );
setRotateKey( spep_4  + 18, 1, 86.6 );
setRotateKey( spep_4  + 20, 1, 86.8 );
setRotateKey( spep_4  + 22, 1, 87 );
setRotateKey( spep_4  + 24, 1, 87.2 );
setRotateKey( spep_4  + 26, 1, 87.5 );
setRotateKey( spep_4  + 28, 1, 87.6 );
setRotateKey( spep_4  + 30, 1, 87.7 );
setRotateKey( spep_4  + 32, 1, 87.7 );
setRotateKey( spep_4  + 34, 1, 87.8 );
setRotateKey( spep_4  + 36, 1, 87.9 );
setRotateKey( spep_4  + 38, 1, 88 );
setRotateKey( spep_4  + 40, 1, 88.1 );
setRotateKey( spep_4  + 42, 1, 88.1 );
setRotateKey( spep_4  + 44, 1, 88.2 );
setRotateKey( spep_4  + 46, 1, 88.2 );
setRotateKey( spep_4  + 48, 1, 88.3 );
setRotateKey( spep_4  + 50, 1, 88.3 );
setRotateKey( spep_4  + 52, 1, 88.4 );
setRotateKey( spep_4  + 54, 1, 88.4 );
setRotateKey( spep_4  + 56, 1, 88.5 );
setRotateKey( spep_4  + 58, 1, 88.5 );
setRotateKey( spep_4  + 60, 1, 88.6 );
setRotateKey( spep_4  + 64, 1, 88.6 );
setRotateKey( spep_4  + 66, 1, 88.7 );
setRotateKey( spep_4  + 72, 1, 88.7 );
setRotateKey( spep_4  + 74, 1, 88.8 );
setRotateKey( spep_4  + 80, 1, 88.8 );
setRotateKey( spep_4  + 82, 1, 88.9 );
setRotateKey( spep_4  + 96, 1, 88.9 );
setRotateKey( spep_4  + 98, 1, 89 );
setRotateKey( spep_4  + 134, 1, 89 );
-- setRotateKey( spep_4  + 140, 1, 89 );	-- エフェクトに隠れるので消す

--SE
playSe( spep_4 + 70 , 1007 );  --着地
playSe( spep_4 + 82 ,  1002 );  --地面を蹴る

------------------------------------------------------
-- 両手で叩きつける
------------------------------------------------------

spep_5 = spep_4 + 144 ;

-- 終始黒背景
entryFadeBg( spep_5, 0, spep_5 + 75, 0, 0, 0, 0, 255);

-- 両手で叩きつける エフェクト
tatakitsukeru = entryEffectLife( spep_5,  ef_007, 75, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5,tatakitsukeru,  0,  0);
setEffMoveKey( spep_5 + 75,tatakitsukeru,  0,  0);

setEffScaleKey( spep_5, tatakitsukeru, 1.0, 1.0);
setEffScaleKey( spep_5 + 75, tatakitsukeru, 1.0, 1.0);

setEffAlphaKey( spep_5, tatakitsukeru, 255);
setEffAlphaKey( spep_5 + 75, tatakitsukeru, 255);

setEffRotateKey( spep_5, tatakitsukeru, 0);
setEffRotateKey( spep_5 + 75, tatakitsukeru, 0);

-- 両手で叩きつける エフェクト
tatakitsukeru_haikei = entryEffectLife( spep_5,  ef_008, 75, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_5,tatakitsukeru_haikei,  0,  0);
setEffMoveKey( spep_5 + 75,tatakitsukeru_haikei,  0,  0);

setEffScaleKey( spep_5, tatakitsukeru_haikei, 1.0, 1.0);
setEffScaleKey( spep_5 + 75, tatakitsukeru_haikei, 1.0, 1.0);

setEffAlphaKey( spep_5, tatakitsukeru_haikei, 255);
setEffAlphaKey( spep_5 + 75, tatakitsukeru_haikei, 255);

setEffRotateKey( spep_5, tatakitsukeru_haikei, 0);
setEffRotateKey( spep_5 + 75, tatakitsukeru_haikei, 0);

-- 敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 - 3 + 0, 1, 107 );
changeAnime( spep_5 - 3 + 12, 1, 5 );

setMoveKey( spep_5 - 3 + 0, 1, -38.5, -4.9 , 0 );
setMoveKey( spep_5 - 3 + 2, 1, -37.5, -7.3 , 0 );
setMoveKey( spep_5 - 3 + 4, 1, -35.8, -11.3 , 0 );
setMoveKey( spep_5 - 3 + 6, 1, -33.4, -16.9 , 0 );
setMoveKey( spep_5 - 3 + 8, 1, -30.3, -24.1 , 0 );
setMoveKey( spep_5 - 3 + 11, 1, -26.5, -33 , 0 );
setMoveKey( spep_5 - 3 + 12, 1, 92.1, -182.3 , 0 );
setMoveKey( spep_5 - 3 + 14, 1, 93.2, -189.4 , 0 );
setMoveKey( spep_5 - 3 + 16, 1, 97, -212.1 , 0 );
setMoveKey( spep_5 - 3 + 18, 1, 102.7, -245.6 , 0 );
setMoveKey( spep_5 - 3 + 20, 1, 108.4, -280 , 0 );
setMoveKey( spep_5 - 3 + 22, 1, 113.4, -310.1 , 0 );
setMoveKey( spep_5 - 3 + 24, 1, 117.6, -335.1 , 0 );
setMoveKey( spep_5 - 3 + 26, 1, 121.1, -355.8 , 0 );
setMoveKey( spep_5 - 3 + 28, 1, 123.9, -372.7 , 0 );
setMoveKey( spep_5 - 3 + 30, 1, 126.3, -386.6 , 0 );
setMoveKey( spep_5 - 3 + 32, 1, 128.2, -397.9 , 0 );
setMoveKey( spep_5 - 3 + 34, 1, 129, -403.1 , 0 );
setMoveKey( spep_5 - 3 + 36, 1, 129.8, -407.9 , 0 );
setMoveKey( spep_5 - 3 + 38, 1, 130.5, -412.1 , 0 );
setMoveKey( spep_5 - 3 + 40, 1, 131.1, -415.9 , 0 );
setMoveKey( spep_5 - 3 + 42, 1, 131.7, -419.3 , 0 );
setMoveKey( spep_5 - 3 + 44, 1, 132.2, -422.3 , 0 );
setMoveKey( spep_5 - 3 + 46, 1, 132.6, -425.1 , 0 );
setMoveKey( spep_5 - 3 + 48, 1, 133.1, -427.5 , 0 );
setMoveKey( spep_5 - 3 + 50, 1, 133.4, -429.7 , 0 );
setMoveKey( spep_5 - 3 + 52, 1, 133.7, -431.7 , 0 );
setMoveKey( spep_5 - 3 + 54, 1, 134, -433.5 , 0 );
setMoveKey( spep_5 - 3 + 56, 1, 134.3, -435.1 , 0 );
setMoveKey( spep_5 - 3 + 58, 1, 134.6, -436.6 , 0 );
setMoveKey( spep_5 - 3 + 60, 1, 134.8, -437.9 , 0 );
setMoveKey( spep_5 - 3 + 62, 1, 135, -439 , 0 );
setMoveKey( spep_5 - 3 + 64, 1, 135.1, -440.1 , 0 );
setMoveKey( spep_5 - 3 + 66, 1, 135.3, -441 , 0 );
setMoveKey( spep_5 - 3 + 68, 1, 135.4, -441.9 , 0 );
setMoveKey( spep_5 - 3 + 70, 1, 135.6, -442.6 , 0 );
setMoveKey( spep_5 - 3 + 72, 1, 135.7, -443.3 , 0 );
setMoveKey( spep_5 - 3 + 74, 1, 135.8, -443.9 , 0 );
setMoveKey( spep_5 - 3 + 76, 1, 135.9, -444.4 , 0 );
setMoveKey( spep_5 - 3 + 78, 1, 136, -444.9 , 0 );

setScaleKey( spep_5 - 3 + 0, 1, 1.01, 1.01 );
setScaleKey( spep_5 - 3 + 2, 1, 1.01, 1.01 );
setScaleKey( spep_5 - 3 + 4, 1, 1.02, 1.02 );
setScaleKey( spep_5 - 3 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_5 - 3 + 11, 1, 1.03, 1.03 );
setScaleKey( spep_5 - 3 + 12, 1, 1.45, 1.45 );
setScaleKey( spep_5 - 3 + 14, 1, 1.42, 1.42 );
setScaleKey( spep_5 - 3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_5 - 3 + 18, 1, 1.14, 1.14 );
setScaleKey( spep_5 - 3 + 20, 1, 0.98, 0.98 );
setScaleKey( spep_5 - 3 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_5 - 3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_5 - 3 + 26, 1, 0.6, 0.6 );
setScaleKey( spep_5 - 3 + 28, 1, 0.52, 0.52 );
setScaleKey( spep_5 - 3 + 30, 1, 0.45, 0.45 );
setScaleKey( spep_5 - 3 + 32, 1, 0.4, 0.4 );
setScaleKey( spep_5 - 3 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_5 - 3 + 36, 1, 0.33, 0.33 );
setScaleKey( spep_5 - 3 + 38, 1, 0.3, 0.3 );
setScaleKey( spep_5 - 3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_5 - 3 + 42, 1, 0.25, 0.25 );
setScaleKey( spep_5 - 3 + 44, 1, 0.23, 0.23 );
setScaleKey( spep_5 - 3 + 46, 1, 0.21, 0.21 );
setScaleKey( spep_5 - 3 + 48, 1, 0.2, 0.2 );
setScaleKey( spep_5 - 3 + 50, 1, 0.18, 0.18 );
setScaleKey( spep_5 - 3 + 52, 1, 0.17, 0.17 );
setScaleKey( spep_5 - 3 + 54, 1, 0.16, 0.16 );
setScaleKey( spep_5 - 3 + 56, 1, 0.15, 0.15 );
setScaleKey( spep_5 - 3 + 58, 1, 0.14, 0.14 );
setScaleKey( spep_5 - 3 + 60, 1, 0.13, 0.13 );
setScaleKey( spep_5 - 3 + 62, 1, 0.12, 0.12 );
setScaleKey( spep_5 - 3 + 64, 1, 0.11, 0.11 );
setScaleKey( spep_5 - 3 + 66, 1, 0.11, 0.11 );
setScaleKey( spep_5 - 3 + 68, 1, 0.1, 0.1 );
setScaleKey( spep_5 - 3 + 70, 1, 0.1, 0.1 );
setScaleKey( spep_5 - 3 + 72, 1, 0.09, 0.09 );
setScaleKey( spep_5 - 3 + 74, 1, 0.09, 0.09 );
setScaleKey( spep_5 - 3 + 76, 1, 0.08, 0.08 );
setScaleKey( spep_5 - 3 + 78, 1, 0.08, 0.08 );

setRotateKey( spep_5 - 3 + 0, 1, 0 );
setRotateKey( spep_5 - 3 + 11, 1, 0 );
setRotateKey( spep_5 - 3 + 12, 1, 165.9 );
setRotateKey( spep_5 - 3 + 22, 1, 165.9 );
setRotateKey( spep_5 - 3 + 24, 1, 166 );
setRotateKey( spep_5 - 3 + 78, 1, 166 );

--SE
playSe( spep_5 + 8 , 1011 );  --殴る

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

spep_6 = spep_5 + 75 ;

-- 終始黒背景
entryFadeBg( spep_6, 0, spep_6 + 200, 0, 0, 0, 0, 255);

-- フィニッシュ エフェクト
finisheff = entryEffect( spep_6,  ef_009, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6,finisheff,  0,  0);
setEffMoveKey( spep_6 + 200,finisheff,  0,  0);

setEffScaleKey( spep_6, finisheff, 1.0, 1.0);
setEffScaleKey( spep_6 + 200, finisheff, 1.0, 1.0);

setEffAlphaKey( spep_6, finisheff, 255);
setEffAlphaKey( spep_6 + 200, finisheff, 255);

setEffRotateKey( spep_6, finisheff, 0);
setEffRotateKey( spep_6 + 200, finisheff, 0);

-- 敵の動き
setDisp( spep_6 , 1, 0 );

--SE
playSe( spep_6  , 1023 );  --叩きつける

-- 黒フェード
dealDamage( spep_6 + 40);
entryFade( spep_6 + 170, 9, 10, 1, 8, 8, 8, 255);
endPhase( spep_6 + 180 );
else


---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


--敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     


---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 悟空が地面から飛び立つ	
------------------------------------------------------

spep_0 = 0 ;

-- 終始黒背景
entryFadeBg( spep_0, 0, spep_0 + 104, 0, 0, 0, 0, 255);

-- 悟空が地面から飛び立つ エフェクト
zimenkaratobitatsu = entryEffectLife( spep_0,  ef_001r, 104, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_0,zimenkaratobitatsu,  0,  0);
setEffMoveKey( spep_0 + 104,zimenkaratobitatsu,  0,  0);

setEffScaleKey( spep_0, zimenkaratobitatsu, 1.0, 1.0);
setEffScaleKey( spep_0 + 104, zimenkaratobitatsu, 1.0, 1.0);

setEffAlphaKey( spep_0, zimenkaratobitatsu, 255);
setEffAlphaKey( spep_0 + 104, zimenkaratobitatsu, 255);

setEffRotateKey( spep_0, zimenkaratobitatsu, 0);
setEffRotateKey( spep_0 + 104, zimenkaratobitatsu, 0);

--SE
playSe( spep_0 + 32 , 1025 );  --地面を蹴る
setSeVolume(  spep_0 + 32,  1025,  70);
SeID_0 = playSe( spep_0 + 34 , 1044 );  --地面を蹴る
stopSe( spep_0 + 60, SeID_0,   30);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

------------------------------------------------------
-- カードカットイン
------------------------------------------------------

spep_1 = spep_0 + 104 ;

-- 終始黒背景
entryFadeBg( spep_1, 0, spep_1 + 90, 0, 0, 0, 0, 255);

--白フラッシュ	監修動画にはありませんがシステム的なフラッシュだと思うので入れています
entryFade( spep_1-6, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen_1 = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_1,  shuchusen_1,  0,  0);
setEffMoveKey(  spep_1+90,  shuchusen_1,  0,  0);
setEffScaleKey(  spep_1,  shuchusen_1,  1.6,  1.6);
setEffScaleKey(  spep_1+90,  shuchusen_1,  1.6,  1.6);
setEffRotateKey(  spep_1,  shuchusen_1,  0);
setEffRotateKey(  spep_1+90,  shuchusen_1,  0);
setEffAlphaKey(  spep_1,  shuchusen_1,  255);
setEffAlphaKey(  spep_1+90,  shuchusen_1,  255);

-- 白フラッシュ	監修動画にはありませんがシステム的なフラッシュだと思うので入れています
entryFade(  spep_1 + 78,  10,  5,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- カメラに向かって突進	
------------------------------------------------------

spep_2 = spep_1 + 90 ;

-- 終始黒背景
entryFadeBg( spep_2, 0, spep_2 + 115, 0, 0, 0, 0, 255);

-- カメラに向かって突進 エフェクト
tosshin = entryEffectLife( spep_2,  ef_002r, 115, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_2,tosshin,  0,  0);
setEffMoveKey( spep_2 + 115,tosshin,  0,  0);

setEffScaleKey( spep_2, tosshin, 1.0, 1.0);
setEffScaleKey( spep_2 + 115, tosshin, 1.0, 1.0);

setEffAlphaKey( spep_2, tosshin, 255);
setEffAlphaKey( spep_2 + 115, tosshin, 255);

setEffRotateKey( spep_2, tosshin, 0);
setEffRotateKey( spep_2 + 115, tosshin, 0);

--[[
-- **  顔カットイン　** --
speff = entryEffect( spep_2 + 24, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 24, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 36,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 36, ctgogo, 72, 10 );

setEffMoveKey( spep_2 + 36, ctgogo, 200,  480, 0  );
setEffMoveKey( spep_2 + 36 + 72, ctgogo, 200,  480, 0  );	

setEffScaleKey( spep_2 + 36, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 36 + 64, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 + 36 + 66, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 36 + 68, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_2 + 36 + 70, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_2 + 36 + 72, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_2 + 36, ctgogo, 40 );
setEffRotateKey( spep_2 + 36 + 72, ctgogo, 40 );

setEffAlphaKey( spep_2 + 36, ctgogo, 0 );
setEffAlphaKey( spep_2 + 36 + 1, ctgogo, 255 );
setEffAlphaKey( spep_2 + 36 + 2, ctgogo, 255 );
setEffAlphaKey( spep_2 + 36 + 72, ctgogo, 255 );

--SE
playSe( spep_2 , 1072 );  --風を切る
playSe( spep_2 + 36 , SE_04 );  --ゴゴゴ

------------------------------------------------------
-- 敵を殴り飛ばす
------------------------------------------------------

spep_3 = spep_2 + 115 ;

-- 終始黒背景
entryFadeBg( spep_3, 0, spep_3 + 60, 0, 0, 0, 0, 255);

-- 敵を殴り飛ばす エフェクト
naguritobasu = entryEffectLife( spep_3,  ef_003r, 60, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_3,naguritobasu,  0,  0);
setEffMoveKey( spep_3 + 60,naguritobasu,  0,  0);

setEffScaleKey( spep_3, naguritobasu, 1.0, 1.0);
setEffScaleKey( spep_3 + 60, naguritobasu, 1.0, 1.0);

setEffAlphaKey( spep_3, naguritobasu, 255);
setEffAlphaKey( spep_3 + 59, naguritobasu, 255);
setEffAlphaKey( spep_3 + 60, naguritobasu, 0);	-- 1f余分なので消す

setEffRotateKey( spep_3, naguritobasu, 0);
setEffRotateKey( spep_3 + 60, naguritobasu, 0);

-- 敵を殴り飛ばす エフェクト
naguritobasu_haikei = entryEffectLife( spep_3,  ef_004r, 60, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_3,naguritobasu_haikei,  0,  0);
setEffMoveKey( spep_3 + 60,naguritobasu_haikei,  0,  0);

setEffScaleKey( spep_3, naguritobasu_haikei, 1.0, 1.0);
setEffScaleKey( spep_3 + 60, naguritobasu_haikei, 1.0, 1.0);

setEffAlphaKey( spep_3, naguritobasu_haikei, 255);
setEffAlphaKey( spep_3 + 60, naguritobasu_haikei, 255);

setEffRotateKey( spep_3, naguritobasu_haikei, 0);
setEffRotateKey( spep_3 + 60, naguritobasu_haikei, 0);

-- 敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 - 3 + 55, 1, 0 );
setDisp( spep_3 - 3 + 56, 1, 0 );	-- 奇数フレームなので保険
changeAnime( spep_3 - 3 + 0, 1, 102 );
changeAnime( spep_3 - 3 + 32, 1, 107 );

setMoveKey( spep_3 - 3 + 0, 1, 204.2, -349.6 + 70 , 0 );
setMoveKey( spep_3 - 3 + 2, 1, 206.8, -357 + 70 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, 209.2, -363.5 + 70 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, 211.3, -369.3 + 70 , 0 );
setMoveKey( spep_3 - 3 + 8, 1, 213.1, -374.3 + 70 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, 214.6, -378.6 + 70 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, 215.9, -382 + 70 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, 216.8, -384.7 + 70 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, 217.5, -386.7 + 70 , 0 );
setMoveKey( spep_3 - 3 + 18, 1, 218, -387.8 + 70 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, 218.1, -388.2 + 70 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, 217.6, -416.5 + 70 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, 217.1, -443.2 + 70 , 0 );
setMoveKey( spep_3 - 3 + 26, 1, 216.7, -468.5 + 70 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 216.2, -492.1 + 70 , 0 );
setMoveKey( spep_3 - 3 + 31, 1, 215.9, -514.3 + 70 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, - 40 + 212, -753.2 + 180 , 0 );
setMoveKey( spep_3 - 3 + 34, 1, - 40 + 276.2, -831.6 + 180 , 0 );
setMoveKey( spep_3 - 3 + 36, 1, - 40 + 375.1, -952.1 + 180 , 0 );
setMoveKey( spep_3 - 3 + 38, 1, - 40 + 448.8, -1041.8 + 180 , 0 );
setMoveKey( spep_3 - 3 + 40, 1, - 40 + 505.7, -1111.2 + 180 , 0 );
setMoveKey( spep_3 - 3 + 42, 1, - 40 + 550.7, -1165.9 + 180 , 0 );
setMoveKey( spep_3 - 3 + 44, 1, - 40 + 586.7, -1209.7 + 180 , 0 );
setMoveKey( spep_3 - 3 + 46, 1, - 40 + 615.7, -1245.1 + 180 , 0 );
setMoveKey( spep_3 - 3 + 48, 1, - 40 + 639.3, -1273.8 + 180 , 0 );
setMoveKey( spep_3 - 3 + 50, 1, - 40 + 658.6, -1297.4 + 180 , 0 );
setMoveKey( spep_3 - 3 + 52, 1, - 40 + 674.8, -1317 + 180 , 0 );
setMoveKey( spep_3 - 3 + 54, 1, - 40 + 688.5, -1333.5 + 180 , 0 );

setScaleKey( spep_3 - 3 + 0, 1, - 0.65 +  4.26, 4.26 - 0.65 );
setScaleKey( spep_3 - 3 + 2, 1, - 0.65 +  4.32, 4.32 - 0.65 );
setScaleKey( spep_3 - 3 + 4, 1, - 0.65 +  4.36, 4.36 - 0.65 );
setScaleKey( spep_3 - 3 + 6, 1, - 0.65 +  4.4, 4.4 - 0.65 );
setScaleKey( spep_3 - 3 + 8, 1, - 0.65 +  4.44, 4.44 - 0.65 );
setScaleKey( spep_3 - 3 + 10, 1, - 0.65 +  4.47, 4.47 - 0.65 );
setScaleKey( spep_3 - 3 + 12, 1, - 0.65 +  4.5, 4.5 - 0.65 );
setScaleKey( spep_3 - 3 + 14, 1, - 0.65 +  4.52, 4.52 - 0.65 );
setScaleKey( spep_3 - 3 + 16, 1, - 0.65 +  4.53, 4.53 - 0.65 );
setScaleKey( spep_3 - 3 + 18, 1, - 0.65 +  4.54, 4.54 - 0.65 );
setScaleKey( spep_3 - 3 + 20, 1, - 0.65 +  4.54, 4.54 - 0.65 );
setScaleKey( spep_3 - 3 + 22, 1, - 0.65 +  4.67, 4.67 - 0.65 );
setScaleKey( spep_3 - 3 + 24, 1, - 0.65 +  4.8, 4.8 - 0.65 );
setScaleKey( spep_3 - 3 + 26, 1, - 0.65 +  4.92, 4.92 - 0.65 );
setScaleKey( spep_3 - 3 + 28, 1, - 0.65 +  5.04, 5.04 - 0.65 );
setScaleKey( spep_3 - 3 + 31, 1, - 0.65 +  5.14, 5.14 - 0.65 );
setScaleKey( spep_3 - 3 + 32, 1, - 0.65 +  2.38, 2.38 - 0.65 );
setScaleKey( spep_3 - 3 + 34, 1, - 0.65 +  2.57, 2.57 - 0.65 );
setScaleKey( spep_3 - 3 + 36, 1, - 0.65 +  2.86, 2.86 - 0.65 );
setScaleKey( spep_3 - 3 + 38, 1, - 0.65 +  3.08, 3.08 - 0.65 );
setScaleKey( spep_3 - 3 + 40, 1, - 0.65 +  3.25, 3.25 - 0.65 );
setScaleKey( spep_3 - 3 + 42, 1, - 0.65 +  3.39, 3.39 - 0.65 );
setScaleKey( spep_3 - 3 + 44, 1, - 0.65 +  3.49, 3.49 - 0.65 );
setScaleKey( spep_3 - 3 + 46, 1, - 0.65 +  3.58, 3.58 - 0.65 );
setScaleKey( spep_3 - 3 + 48, 1, - 0.65 +  3.65, 3.65 - 0.65 );
setScaleKey( spep_3 - 3 + 50, 1, - 0.65 +  3.71, 3.71 - 0.65 );
setScaleKey( spep_3 - 3 + 52, 1, - 0.65 +  3.75, 3.75 - 0.65 );
setScaleKey( spep_3 - 3 + 54, 1, - 0.65 +  3.79, 3.79 - 0.65 );

setRotateKey( spep_3 - 3 + 0, 1, 4.8 );
setRotateKey( spep_3 - 3 + 20, 1, 4.8 );
setRotateKey( spep_3 - 3 + 22, 1, 6 );
setRotateKey( spep_3 - 3 + 24, 1, 7.1 );
setRotateKey( spep_3 - 3 + 26, 1, 8.1 );
setRotateKey( spep_3 - 3 + 28, 1, 9.1 );
setRotateKey( spep_3 - 3 + 31, 1, 10 );
setRotateKey( spep_3 - 3 + 32, 1, -94.6 );
setRotateKey( spep_3 - 3 + 34, 1, -87 );
setRotateKey( spep_3 - 3 + 36, 1, -75.3 );
setRotateKey( spep_3 - 3 + 38, 1, -66.7 );
setRotateKey( spep_3 - 3 + 40, 1, -60 );
setRotateKey( spep_3 - 3 + 42, 1, -54.7 );
setRotateKey( spep_3 - 3 + 44, 1, -50.4 );
setRotateKey( spep_3 - 3 + 46, 1, -47 );
setRotateKey( spep_3 - 3 + 48, 1, -44.3 );
setRotateKey( spep_3 - 3 + 50, 1, -42 );
setRotateKey( spep_3 - 3 + 52, 1, -40.1 );
setRotateKey( spep_3 - 3 + 54, 1, -38.4 );

--SE
playSe( spep_3 + 28 , 1009 );  --殴る

------------------------------------------------------
-- 地面を蹴って追いかける
------------------------------------------------------

spep_4 = spep_3 + 60 ;

-- 終始黒背景
entryFadeBg( spep_4, 0, spep_4 + 144, 0, 0, 0, 0, 255);

-- 地面を蹴って追いかける エフェクト
oikakeru = entryEffectLife( spep_4,  ef_005r, 144, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4,oikakeru,  0,  0);
setEffMoveKey( spep_4 + 144,oikakeru,  0,  0);

setEffScaleKey( spep_4, oikakeru, 1.0, 1.0);
setEffScaleKey( spep_4 + 144, oikakeru, 1.0, 1.0);

setEffAlphaKey( spep_4, oikakeru, 255);
setEffAlphaKey( spep_4 + 143, oikakeru, 255);
setEffAlphaKey( spep_4 + 144, oikakeru, 0); -- 何故か残るのでアルファで消す

setEffRotateKey( spep_4, oikakeru, 0);
setEffRotateKey( spep_4 + 144, oikakeru, 0);

-- 地面を蹴って追いかける エフェクト
oikakeru_haikei = entryEffectLife( spep_4,  ef_006, 144, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_4,oikakeru_haikei,  0,  0);
setEffMoveKey( spep_4 + 144,oikakeru_haikei,  0,  0);

setEffScaleKey( spep_4, oikakeru_haikei, 1.0, 1.0);
setEffScaleKey( spep_4 + 144, oikakeru_haikei, 1.0, 1.0);

setEffAlphaKey( spep_4, oikakeru_haikei, 255);
setEffAlphaKey( spep_4 + 143, oikakeru_haikei, 255);
setEffAlphaKey( spep_4 + 144, oikakeru_haikei, 0); -- 何故か残るのでアルファで消す

setEffRotateKey( spep_4, oikakeru_haikei, 0);
setEffRotateKey( spep_4 + 144, oikakeru_haikei, 0);

-- 敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 134, 1, 0 ); -- エフェクトに隠れるので消す
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4  + 0, 1, -642.4, 616.6 , 0 );
setMoveKey( spep_4  + 2, 1, -185.3, 305.3 , 0 );
setMoveKey( spep_4  + 4, 1, -41.1, 207 , 0 );
setMoveKey( spep_4  + 6, 1, 50.5, 144.7 , 0 );
setMoveKey( spep_4  + 8, 1, 114.4, 101.2 , 0 );
setMoveKey( spep_4  + 10, 1, 160.3, 69.9 , 0 );
setMoveKey( spep_4  + 12, 1, 190.4, 49.4 , 0 );
setMoveKey( spep_4  + 14, 1, 208.2, 37.3 , 0 );
setMoveKey( spep_4  + 16, 1, 218.8, 30 , 0 );
setMoveKey( spep_4  + 18, 1, 225.6, 25.4 , 0 );
setMoveKey( spep_4  + 20, 1, 230.7, 22 , 0 );
setMoveKey( spep_4  + 22, 1, 235.6, 18.6 , 0 );
setMoveKey( spep_4  + 24, 1, 241.5, 14.6 , 0 );
setMoveKey( spep_4  + 26, 1, 249.5, 9.1 , 0 );
setMoveKey( spep_4  + 28, 1, 252.6, 7 , 0 );
setMoveKey( spep_4  + 30, 1, 255.5, 5 , 0 );
setMoveKey( spep_4  + 32, 1, 258.3, 3.1 , 0 );
setMoveKey( spep_4  + 34, 1, 260.9, 1.3 , 0 );
setMoveKey( spep_4  + 36, 1, 263.4, -0.4 , 0 );
setMoveKey( spep_4  + 38, 1, 265.7, -1.9 , 0 );
setMoveKey( spep_4  + 40, 1, 267.9, -3.4 , 0 );
setMoveKey( spep_4  + 42, 1, 270, -4.8 , 0 );
setMoveKey( spep_4  + 44, 1, 271.9, -6.2 , 0 );
setMoveKey( spep_4  + 46, 1, 273.8, -7.4 , 0 );
setMoveKey( spep_4  + 48, 1, 275.5, -8.6 , 0 );
setMoveKey( spep_4  + 50, 1, 277.1, -9.7 , 0 );
setMoveKey( spep_4  + 52, 1, 278.7, -10.8 , 0 );
setMoveKey( spep_4  + 54, 1, 280.1, -11.7 , 0 );
setMoveKey( spep_4  + 56, 1, 281.5, -12.7 , 0 );
setMoveKey( spep_4  + 58, 1, 282.8, -13.5 , 0 );
setMoveKey( spep_4  + 60, 1, 284, -14.4 , 0 );
setMoveKey( spep_4  + 62, 1, 285.1, -15.1 , 0 );
setMoveKey( spep_4  + 64, 1, 286.2, -15.8 , 0 );
setMoveKey( spep_4  + 66, 1, 287.1, -16.5 , 0 );
setMoveKey( spep_4  + 68, 1, 288.1, -17.1 , 0 );
setMoveKey( spep_4  + 70, 1, 288.9, -17.7 , 0 );
setMoveKey( spep_4  + 72, 1, 289.8, -18.3 , 0 );
setMoveKey( spep_4  + 74, 1, 290.5, -18.8 , 0 );
setMoveKey( spep_4  + 76, 1, 291.2, -19.3 , 0 );
setMoveKey( spep_4  + 78, 1, 291.9, -19.7 , 0 );
setMoveKey( spep_4  + 80, 1, 292.5, -20.1 , 0 );
setMoveKey( spep_4  + 82, 1, 293, -20.5 , 0 );
setMoveKey( spep_4  + 84, 1, 293.6, -20.9 , 0 );
setMoveKey( spep_4  + 86, 1, 294.1, -21.2 , 0 );
setMoveKey( spep_4  + 88, 1, 294.5, -21.5 , 0 );
setMoveKey( spep_4  + 90, 1, 294.9, -21.8 , 0 );
setMoveKey( spep_4  + 92, 1, 295.3, -22.1 , 0 );
setMoveKey( spep_4  + 94, 1, 295.7, -22.3 , 0 );
setMoveKey( spep_4  + 96, 1, 296, -22.5 , 0 );
setMoveKey( spep_4  + 98, 1, 296.3, -22.7 , 0 );
setMoveKey( spep_4  + 100, 1, 296.5, -22.9 , 0 );
setMoveKey( spep_4  + 102, 1, 296.8, -23 , 0 );
setMoveKey( spep_4  + 104, 1, 297, -23.2 , 0 );
setMoveKey( spep_4  + 106, 1, 297.2, -23.3 , 0 );
setMoveKey( spep_4  + 108, 1, 297.4, -23.5 , 0 );
setMoveKey( spep_4  + 110, 1, 297.5, -23.6 , 0 );
setMoveKey( spep_4  + 112, 1, 297.7, -23.7 , 0 );
setMoveKey( spep_4  + 114, 1, 297.8, -23.7 , 0 );
setMoveKey( spep_4  + 116, 1, 297.9, -23.8 , 0 );
setMoveKey( spep_4  + 118, 1, 298, -23.9 , 0 );
setMoveKey( spep_4  + 120, 1, 298.1, -23.9 , 0 );
setMoveKey( spep_4  + 122, 1, 298.1, -24 , 0 );
setMoveKey( spep_4  + 124, 1, 298.2, -24 , 0 );
setMoveKey( spep_4  + 126, 1, 298.2, -24.1 , 0 );
setMoveKey( spep_4  + 128, 1, 298.3, -24.1 , 0 );
setMoveKey( spep_4  + 132, 1, 298.3, -24.1 , 0 );
setMoveKey( spep_4  + 134, 1, 298.4, -24.1 , 0 );
-- setMoveKey( spep_4  + 138, 1, 298.4, -24.1 , 0 );	-- エフェクトに隠れるので消す
-- setMoveKey( spep_4  + 140, 1, 298.4, -24.2 , 0 );

setScaleKey( spep_4  + 0, 1, 3.74, 3.74 );
setScaleKey( spep_4  + 2, 1, 1.94, 1.94 );
setScaleKey( spep_4  + 4, 1, 1.37, 1.37 );
setScaleKey( spep_4  + 6, 1, 1.01, 1.01 );
setScaleKey( spep_4  + 8, 1, 0.76, 0.76 );
setScaleKey( spep_4  + 10, 1, 0.58, 0.58 );
setScaleKey( spep_4  + 12, 1, 0.46, 0.46 );
setScaleKey( spep_4  + 14, 1, 0.39, 0.39 );
setScaleKey( spep_4  + 16, 1, 0.35, 0.35 );
setScaleKey( spep_4  + 18, 1, 0.33, 0.33 );
setScaleKey( spep_4  + 20, 1, 0.31, 0.31 );
setScaleKey( spep_4  + 22, 1, 0.29, 0.29 );
setScaleKey( spep_4  + 24, 1, 0.26, 0.26 );
setScaleKey( spep_4  + 26, 1, 0.23, 0.23 );
setScaleKey( spep_4  + 28, 1, 0.22, 0.22 );
setScaleKey( spep_4  + 30, 1, 0.21, 0.21 );
setScaleKey( spep_4  + 32, 1, 0.2, 0.2 );
setScaleKey( spep_4  + 34, 1, 0.19, 0.19 );
setScaleKey( spep_4  + 36, 1, 0.18, 0.18 );
setScaleKey( spep_4  + 38, 1, 0.17, 0.17 );
setScaleKey( spep_4  + 40, 1, 0.16, 0.16 );
setScaleKey( spep_4  + 42, 1, 0.15, 0.15 );
setScaleKey( spep_4  + 44, 1, 0.14, 0.14 );
setScaleKey( spep_4  + 46, 1, 0.14, 0.14 );
setScaleKey( spep_4  + 48, 1, 0.13, 0.13 );
setScaleKey( spep_4  + 50, 1, 0.12, 0.12 );
setScaleKey( spep_4  + 52, 1, 0.12, 0.12 );
setScaleKey( spep_4  + 54, 1, 0.11, 0.11 );
setScaleKey( spep_4  + 56, 1, 0.11, 0.11 );
setScaleKey( spep_4  + 58, 1, 0.1, 0.1 );
setScaleKey( spep_4  + 60, 1, 0.1, 0.1 );
setScaleKey( spep_4  + 62, 1, 0.09, 0.09 );
setScaleKey( spep_4  + 64, 1, 0.09, 0.09 );
setScaleKey( spep_4  + 66, 1, 0.08, 0.08 );
setScaleKey( spep_4  + 70, 1, 0.08, 0.08 );
setScaleKey( spep_4  + 72, 1, 0.07, 0.07 );
setScaleKey( spep_4  + 78, 1, 0.07, 0.07 );
setScaleKey( spep_4  + 80, 1, 0.06, 0.06 );
setScaleKey( spep_4  + 88, 1, 0.06, 0.06 );
setScaleKey( spep_4  + 90, 1, 0.05, 0.05 );
setScaleKey( spep_4  + 106, 1, 0.05, 0.05 );
setScaleKey( spep_4  + 108, 1, 0.04, 0.04 );
setScaleKey( spep_4  + 134, 1, 0.04, 0.04 );
-- setScaleKey( spep_4  + 140, 1, 0.04, 0.04 );	-- エフェクトに隠れるので消す

setRotateKey( spep_4  + 0, 1, 57 );
setRotateKey( spep_4  + 2, 1, 72.6 );
setRotateKey( spep_4  + 4, 1, 77.5 );
setRotateKey( spep_4  + 6, 1, 80.7 );
setRotateKey( spep_4  + 8, 1, 82.8 );
setRotateKey( spep_4  + 10, 1, 84.4 );
setRotateKey( spep_4  + 12, 1, 85.4 );
setRotateKey( spep_4  + 14, 1, 86.1 );
setRotateKey( spep_4  + 16, 1, 86.4 );
setRotateKey( spep_4  + 18, 1, 86.6 );
setRotateKey( spep_4  + 20, 1, 86.8 );
setRotateKey( spep_4  + 22, 1, 87 );
setRotateKey( spep_4  + 24, 1, 87.2 );
setRotateKey( spep_4  + 26, 1, 87.5 );
setRotateKey( spep_4  + 28, 1, 87.6 );
setRotateKey( spep_4  + 30, 1, 87.7 );
setRotateKey( spep_4  + 32, 1, 87.7 );
setRotateKey( spep_4  + 34, 1, 87.8 );
setRotateKey( spep_4  + 36, 1, 87.9 );
setRotateKey( spep_4  + 38, 1, 88 );
setRotateKey( spep_4  + 40, 1, 88.1 );
setRotateKey( spep_4  + 42, 1, 88.1 );
setRotateKey( spep_4  + 44, 1, 88.2 );
setRotateKey( spep_4  + 46, 1, 88.2 );
setRotateKey( spep_4  + 48, 1, 88.3 );
setRotateKey( spep_4  + 50, 1, 88.3 );
setRotateKey( spep_4  + 52, 1, 88.4 );
setRotateKey( spep_4  + 54, 1, 88.4 );
setRotateKey( spep_4  + 56, 1, 88.5 );
setRotateKey( spep_4  + 58, 1, 88.5 );
setRotateKey( spep_4  + 60, 1, 88.6 );
setRotateKey( spep_4  + 64, 1, 88.6 );
setRotateKey( spep_4  + 66, 1, 88.7 );
setRotateKey( spep_4  + 72, 1, 88.7 );
setRotateKey( spep_4  + 74, 1, 88.8 );
setRotateKey( spep_4  + 80, 1, 88.8 );
setRotateKey( spep_4  + 82, 1, 88.9 );
setRotateKey( spep_4  + 96, 1, 88.9 );
setRotateKey( spep_4  + 98, 1, 89 );
setRotateKey( spep_4  + 134, 1, 89 );
-- setRotateKey( spep_4  + 140, 1, 89 );	-- エフェクトに隠れるので消す

--SE
playSe( spep_4 + 70 , 1007 );  --着地
playSe( spep_4 + 82 , 1002 );  --地面を蹴る

------------------------------------------------------
-- 両手で叩きつける
------------------------------------------------------

spep_5 = spep_4 + 144 ;

-- 終始黒背景
entryFadeBg( spep_5, 0, spep_5 + 75, 0, 0, 0, 0, 255);

-- 両手で叩きつける エフェクト
tatakitsukeru = entryEffectLife( spep_5,  ef_007r, 75, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5,tatakitsukeru,  0,  0);
setEffMoveKey( spep_5 + 75,tatakitsukeru,  0,  0);

setEffScaleKey( spep_5, tatakitsukeru, 1.0, 1.0);
setEffScaleKey( spep_5 + 75, tatakitsukeru, 1.0, 1.0);

setEffAlphaKey( spep_5, tatakitsukeru, 255);
setEffAlphaKey( spep_5 + 75, tatakitsukeru, 255);

setEffRotateKey( spep_5, tatakitsukeru, 0);
setEffRotateKey( spep_5 + 75, tatakitsukeru, 0);

-- 両手で叩きつける エフェクト
tatakitsukeru_haikei = entryEffectLife( spep_5,  ef_008r, 75, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_5,tatakitsukeru_haikei,  0,  0);
setEffMoveKey( spep_5 + 75,tatakitsukeru_haikei,  0,  0);

setEffScaleKey( spep_5, tatakitsukeru_haikei, 1.0, 1.0);
setEffScaleKey( spep_5 + 75, tatakitsukeru_haikei, 1.0, 1.0);

setEffAlphaKey( spep_5, tatakitsukeru_haikei, 255);
setEffAlphaKey( spep_5 + 75, tatakitsukeru_haikei, 255);

setEffRotateKey( spep_5, tatakitsukeru_haikei, 0);
setEffRotateKey( spep_5 + 75, tatakitsukeru_haikei, 0);

-- 敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 - 3 + 0, 1, 107 );
changeAnime( spep_5 - 3 + 12, 1, 5 );

setMoveKey( spep_5 - 3 + 0, 1, -38.5, -4.9 , 0 );
setMoveKey( spep_5 - 3 + 2, 1, -37.5, -7.3 , 0 );
setMoveKey( spep_5 - 3 + 4, 1, -35.8, -11.3 , 0 );
setMoveKey( spep_5 - 3 + 6, 1, -33.4, -16.9 , 0 );
setMoveKey( spep_5 - 3 + 8, 1, -30.3, -24.1 , 0 );
setMoveKey( spep_5 - 3 + 11, 1, -26.5, -33 , 0 );
setMoveKey( spep_5 - 3 + 12, 1, 92.1, -182.3 , 0 );
setMoveKey( spep_5 - 3 + 14, 1, 93.2, -189.4 , 0 );
setMoveKey( spep_5 - 3 + 16, 1, 97, -212.1 , 0 );
setMoveKey( spep_5 - 3 + 18, 1, 102.7, -245.6 , 0 );
setMoveKey( spep_5 - 3 + 20, 1, 108.4, -280 , 0 );
setMoveKey( spep_5 - 3 + 22, 1, 113.4, -310.1 , 0 );
setMoveKey( spep_5 - 3 + 24, 1, 117.6, -335.1 , 0 );
setMoveKey( spep_5 - 3 + 26, 1, 121.1, -355.8 , 0 );
setMoveKey( spep_5 - 3 + 28, 1, 123.9, -372.7 , 0 );
setMoveKey( spep_5 - 3 + 30, 1, 126.3, -386.6 , 0 );
setMoveKey( spep_5 - 3 + 32, 1, 128.2, -397.9 , 0 );
setMoveKey( spep_5 - 3 + 34, 1, 129, -403.1 , 0 );
setMoveKey( spep_5 - 3 + 36, 1, 129.8, -407.9 , 0 );
setMoveKey( spep_5 - 3 + 38, 1, 130.5, -412.1 , 0 );
setMoveKey( spep_5 - 3 + 40, 1, 131.1, -415.9 , 0 );
setMoveKey( spep_5 - 3 + 42, 1, 131.7, -419.3 , 0 );
setMoveKey( spep_5 - 3 + 44, 1, 132.2, -422.3 , 0 );
setMoveKey( spep_5 - 3 + 46, 1, 132.6, -425.1 , 0 );
setMoveKey( spep_5 - 3 + 48, 1, 133.1, -427.5 , 0 );
setMoveKey( spep_5 - 3 + 50, 1, 133.4, -429.7 , 0 );
setMoveKey( spep_5 - 3 + 52, 1, 133.7, -431.7 , 0 );
setMoveKey( spep_5 - 3 + 54, 1, 134, -433.5 , 0 );
setMoveKey( spep_5 - 3 + 56, 1, 134.3, -435.1 , 0 );
setMoveKey( spep_5 - 3 + 58, 1, 134.6, -436.6 , 0 );
setMoveKey( spep_5 - 3 + 60, 1, 134.8, -437.9 , 0 );
setMoveKey( spep_5 - 3 + 62, 1, 135, -439 , 0 );
setMoveKey( spep_5 - 3 + 64, 1, 135.1, -440.1 , 0 );
setMoveKey( spep_5 - 3 + 66, 1, 135.3, -441 , 0 );
setMoveKey( spep_5 - 3 + 68, 1, 135.4, -441.9 , 0 );
setMoveKey( spep_5 - 3 + 70, 1, 135.6, -442.6 , 0 );
setMoveKey( spep_5 - 3 + 72, 1, 135.7, -443.3 , 0 );
setMoveKey( spep_5 - 3 + 74, 1, 135.8, -443.9 , 0 );
setMoveKey( spep_5 - 3 + 76, 1, 135.9, -444.4 , 0 );
setMoveKey( spep_5 - 3 + 78, 1, 136, -444.9 , 0 );

setScaleKey( spep_5 - 3 + 0, 1, 1.01, 1.01 );
setScaleKey( spep_5 - 3 + 2, 1, 1.01, 1.01 );
setScaleKey( spep_5 - 3 + 4, 1, 1.02, 1.02 );
setScaleKey( spep_5 - 3 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_5 - 3 + 11, 1, 1.03, 1.03 );
setScaleKey( spep_5 - 3 + 12, 1, 1.45, 1.45 );
setScaleKey( spep_5 - 3 + 14, 1, 1.42, 1.42 );
setScaleKey( spep_5 - 3 + 16, 1, 1.31, 1.31 );
setScaleKey( spep_5 - 3 + 18, 1, 1.14, 1.14 );
setScaleKey( spep_5 - 3 + 20, 1, 0.98, 0.98 );
setScaleKey( spep_5 - 3 + 22, 1, 0.83, 0.83 );
setScaleKey( spep_5 - 3 + 24, 1, 0.71, 0.71 );
setScaleKey( spep_5 - 3 + 26, 1, 0.6, 0.6 );
setScaleKey( spep_5 - 3 + 28, 1, 0.52, 0.52 );
setScaleKey( spep_5 - 3 + 30, 1, 0.45, 0.45 );
setScaleKey( spep_5 - 3 + 32, 1, 0.4, 0.4 );
setScaleKey( spep_5 - 3 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_5 - 3 + 36, 1, 0.33, 0.33 );
setScaleKey( spep_5 - 3 + 38, 1, 0.3, 0.3 );
setScaleKey( spep_5 - 3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_5 - 3 + 42, 1, 0.25, 0.25 );
setScaleKey( spep_5 - 3 + 44, 1, 0.23, 0.23 );
setScaleKey( spep_5 - 3 + 46, 1, 0.21, 0.21 );
setScaleKey( spep_5 - 3 + 48, 1, 0.2, 0.2 );
setScaleKey( spep_5 - 3 + 50, 1, 0.18, 0.18 );
setScaleKey( spep_5 - 3 + 52, 1, 0.17, 0.17 );
setScaleKey( spep_5 - 3 + 54, 1, 0.16, 0.16 );
setScaleKey( spep_5 - 3 + 56, 1, 0.15, 0.15 );
setScaleKey( spep_5 - 3 + 58, 1, 0.14, 0.14 );
setScaleKey( spep_5 - 3 + 60, 1, 0.13, 0.13 );
setScaleKey( spep_5 - 3 + 62, 1, 0.12, 0.12 );
setScaleKey( spep_5 - 3 + 64, 1, 0.11, 0.11 );
setScaleKey( spep_5 - 3 + 66, 1, 0.11, 0.11 );
setScaleKey( spep_5 - 3 + 68, 1, 0.1, 0.1 );
setScaleKey( spep_5 - 3 + 70, 1, 0.1, 0.1 );
setScaleKey( spep_5 - 3 + 72, 1, 0.09, 0.09 );
setScaleKey( spep_5 - 3 + 74, 1, 0.09, 0.09 );
setScaleKey( spep_5 - 3 + 76, 1, 0.08, 0.08 );
setScaleKey( spep_5 - 3 + 78, 1, 0.08, 0.08 );

setRotateKey( spep_5 - 3 + 0, 1, 0 );
setRotateKey( spep_5 - 3 + 11, 1, 0 );
setRotateKey( spep_5 - 3 + 12, 1, 165.9 );
setRotateKey( spep_5 - 3 + 22, 1, 165.9 );
setRotateKey( spep_5 - 3 + 24, 1, 166 );
setRotateKey( spep_5 - 3 + 78, 1, 166 );

--SE
playSe( spep_5 + 8 , 1011 );  --殴る

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

spep_6 = spep_5 + 75 ;

-- 終始黒背景
entryFadeBg( spep_6, 0, spep_6 + 200, 0, 0, 0, 0, 255);

-- フィニッシュ エフェクト
finisheff = entryEffect( spep_6,  ef_009r, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6,finisheff,  0,  0);
setEffMoveKey( spep_6 + 200,finisheff,  0,  0);

setEffScaleKey( spep_6, finisheff, 1.0, 1.0);
setEffScaleKey( spep_6 + 200, finisheff, 1.0, 1.0);

setEffAlphaKey( spep_6, finisheff, 255);
setEffAlphaKey( spep_6 + 200, finisheff, 255);

setEffRotateKey( spep_6, finisheff, 0);
setEffRotateKey( spep_6 + 200, finisheff, 0);

-- 敵の動き
setDisp( spep_6 , 1, 0 );

--SE
playSe( spep_6  , 1023 );  --叩きつける

-- 黒フェード
dealDamage( spep_6 + 40);
entryFade( spep_6 + 170, 9, 10, 1, 8, 8, 8, 255);
endPhase( spep_6 + 180 );

end