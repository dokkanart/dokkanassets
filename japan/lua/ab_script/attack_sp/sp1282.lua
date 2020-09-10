-- 伝説降臨LRフリーザ　ノヴァストライク

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
ef_001 = 153395;    -- タメからフルパワー化
ef_002 = 153396;    -- 突進
ef_004a = 153397;    -- 敵に突撃
ef_004b = 153398;  -- 敵に突撃の背景
ef_005a = 153399;    -- 敵を地面に押し込む
ef_005b = 153400;	-- 敵を地面に押し込むの背景
ef_006 = 153401;	-- 地中で突進
ef_007 = 153402;	-- マグマ爆発
ef_008 = 153403;	-- 爆発を見下ろすシーン

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
-- タメからフルパワー化	
------------------------------------------------------

spep_0 = 0 ;

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 終始黒背景
entryFadeBg( spep_0, 0, spep_0 + 198, 0, 0, 0, 0, 255);

-- タメからフルパワー化 エフェクト
tamekarafullpower = entryEffectLife( spep_0,  ef_001, 198, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_0,tamekarafullpower,  0,  0);
setEffMoveKey( spep_0 + 198,tamekarafullpower,  0,  0);

setEffScaleKey( spep_0, tamekarafullpower, 1.0, 1.0);
setEffScaleKey( spep_0 + 198, tamekarafullpower, 1.0, 1.0);

setEffAlphaKey( spep_0, tamekarafullpower, 255);
setEffAlphaKey( spep_0 + 198, tamekarafullpower, 255);

setEffRotateKey( spep_0, tamekarafullpower, 0);
setEffRotateKey( spep_0 + 198, tamekarafullpower, 0);

-- 集中線
shuchusen_1 = entryEffectLife( spep_0 + 86,  906, 16, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 86, shuchusen_1, 16, 25 );

setEffMoveKey( spep_0 + 86, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 102, shuchusen_1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 86, shuchusen_1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 102, shuchusen_1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 86, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 102, shuchusen_1, 0 );

setEffAlphaKey( spep_0 + 86, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 102, shuchusen_1, 255 );

-- 集中線
shuchusen_2 = entryEffectLife( spep_0 + 128,  906, 14, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 128, shuchusen_2, 14, 25 );

setEffMoveKey( spep_0 + 128, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 142, shuchusen_2, 0, 0 , 0 );

setEffScaleKey( spep_0 + 128, shuchusen_2, 1.1, 1.1 );
setEffScaleKey( spep_0 + 142, shuchusen_2, 1.1, 1.1 );

setEffRotateKey( spep_0 + 128, shuchusen_2, 0 );
setEffRotateKey( spep_0 + 142, shuchusen_2, 0 );

setEffAlphaKey( spep_0 + 128, shuchusen_2, 255 );
setEffAlphaKey( spep_0 + 142, shuchusen_2, 255 );

-- 集中線
shuchusen_3 = entryEffectLife( spep_0 + 186,  906, 160, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 186, shuchusen_3, 160, 25 );

setEffMoveKey( spep_0 + 186, shuchusen_3, 0, 0 , 0 );
setEffMoveKey( spep_0 + 346, shuchusen_3, 0, 0 , 0 );

setEffScaleKey( spep_0 + 186, shuchusen_3, 1.3, 1.3 );
setEffScaleKey( spep_0 + 346, shuchusen_3, 1.3, 1.3 );

setEffRotateKey( spep_0 + 186, shuchusen_3, 0 );
setEffRotateKey( spep_0 + 346, shuchusen_3, 0 );

setEffAlphaKey( spep_0 + 186, shuchusen_3, 255 );
setEffAlphaKey( spep_0 + 346, shuchusen_3, 255 );

--SE
playSe( spep_0 + 52 , 8 );  --パワーチャージ
playSe( spep_0 + 88 , 1014 );  --巨大化
playSe( spep_0 + 130 , 1021 );  --気をまとう
seID4 = playSe( spep_0 + 186 , 1022 );  --飛ぶ

------------------------------------------------------
-- 突進	
------------------------------------------------------

spep_1 = spep_0 + 198 ;

-- ** ホワイトフェード ** --
entryFade( spep_1 - 10, 10, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 終始黒背景
entryFadeBg( spep_1, 0, spep_1 + 144, 0, 0, 0, 0, 255);

-- 突進 エフェクト
tosshin = entryEffectLife( spep_1,  ef_002, 144, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_1,tosshin,  0,  0);
setEffMoveKey( spep_1 + 144,tosshin,  0,  0);

setEffScaleKey( spep_1, tosshin, 1.0, 1.0);
setEffScaleKey( spep_1 + 144, tosshin, 1.0, 1.0);

setEffAlphaKey( spep_1, tosshin, 255);
setEffAlphaKey( spep_1 + 144, tosshin, 255);

setEffRotateKey( spep_1, tosshin, 0);
setEffRotateKey( spep_1 + 144, tosshin, 0);

-- 書き文字 ズオッ
ct_zuoltu_1 = entryEffectLife( spep_1 + 0,  10012, 60, 0x100, -1, 0, 76, 259.9 );
setEffMoveKey( spep_1 + 0, ct_zuoltu_1, 76, 259.9 , 0 );
setEffMoveKey( spep_1 + 2, ct_zuoltu_1, 95.9, 286.5 , 0 );
setEffMoveKey( spep_1 + 4, ct_zuoltu_1, 102.6, 326.6 , 0 );
setEffMoveKey( spep_1 + 6, ct_zuoltu_1, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 60, ct_zuoltu_1, 132, 343.9 , 0 );

setEffShake(spep_1 + 6, ct_zuoltu_1, 54, 30);

setEffScaleKey( spep_1 + 0, ct_zuoltu_1, 0.1, 0.1);
setEffScaleKey( spep_1 + 6, ct_zuoltu_1, 0.8 + 2, 0.8 + 2);
setEffScaleKey( spep_1 + 50, ct_zuoltu_1, 0.8 + 2, 0.8 + 2 );
setEffScaleKey( spep_1 + 60, ct_zuoltu_1, 2 + 4.5, 2 + 4.5 );

setEffRotateKey( spep_1 + 0, ct_zuoltu_1, 30 );
setEffRotateKey( spep_1 + 60, ct_zuoltu_1, 30 );

setEffAlphaKey( spep_1 + 0, ct_zuoltu_1, 255 );
setEffAlphaKey( spep_1 + 50, ct_zuoltu_1, 255 );
setEffAlphaKey( spep_1 + 52, ct_zuoltu_1, 204 );
setEffAlphaKey( spep_1 + 54, ct_zuoltu_1, 153 );
setEffAlphaKey( spep_1 + 56, ct_zuoltu_1, 102 );
setEffAlphaKey( spep_1 + 58, ct_zuoltu_1, 51 );
setEffAlphaKey( spep_1 + 60, ct_zuoltu_1, 0 );

-- 監修動画の顔カットインの長さが実際の元の違うため、前後が正しく合っていません。
-- 後ろを合わせた方が自然に見えるので後ろを合わせています
-- **  顔カットイン　** --
speff = entryEffect( spep_1 + 44, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 + 44, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 56,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_1 + 56, ctgogo, 72, 10 );

setEffMoveKey( spep_1 + 56, ctgogo, -50,  520, 0  );
setEffMoveKey( spep_1 + 56 + 72, ctgogo, -50,  520, 0  );	

setEffScaleKey( spep_1 + 56, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 56 + 64, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_1 + 56 + 66, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56 + 68, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_1 + 56 + 70, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_1 + 56 + 72, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_1 + 56, ctgogo, 0 );
setEffRotateKey( spep_1 + 56 + 72, ctgogo, 0 );

setEffAlphaKey( spep_1 + 56, ctgogo, 0 );
setEffAlphaKey( spep_1 + 56 + 1, ctgogo, 255 );
setEffAlphaKey( spep_1 + 56 + 2, ctgogo, 255 );
setEffAlphaKey( spep_1 + 56 + 72, ctgogo, 255 );

--SE
-- playSe( spep_1 , 1072 );  --風を切る
stopSe( spep_1 + 56, seID4, 10)
playSe( spep_1 + 56 , SE_04 );  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 140; --エンドフェイズのフレーム数を置き換える

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

spep_2 = spep_1 + 144 ;

-- 終始黒背景
entryFadeBg( spep_2, 0, spep_2 + 90, 0, 0, 0, 0, 255);

--白フラッシュ
entryFade( spep_2-6, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen_4 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen_4,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen_4,  0,  0);
setEffScaleKey(  spep_2,  shuchusen_4,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen_4,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen_4,  0);
setEffRotateKey(  spep_2+90,  shuchusen_4,  0);
setEffAlphaKey(  spep_2,  shuchusen_4,  255);
setEffAlphaKey(  spep_2+90,  shuchusen_4,  255);

entryFade(  spep_2 + 78,  10,  5,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 敵に突撃
------------------------------------------------------

spep_3 = spep_2 + 90 ;

-- 終始黒背景
entryFadeBg( spep_3, 0, spep_3 + 66, 0, 0, 0, 0, 255);

-- 敵に突撃 エフェクト
tekinitotsugeki = entryEffectLife( spep_3,  ef_004a, 66, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_3,tekinitotsugeki,  0,  0);
setEffMoveKey( spep_3 + 66,tekinitotsugeki,  0,  0);

setEffScaleKey( spep_3, tekinitotsugeki, 1.0, 1.0);
setEffScaleKey( spep_3 + 66, tekinitotsugeki, 1.0, 1.0);

setEffAlphaKey( spep_3, tekinitotsugeki, 255);
setEffAlphaKey( spep_3 + 64, tekinitotsugeki, 255);
setEffAlphaKey( spep_3 + 65, tekinitotsugeki, 255);
setEffAlphaKey( spep_3 + 66, tekinitotsugeki, 0);

setEffRotateKey( spep_3, tekinitotsugeki, 0);
setEffRotateKey( spep_3 + 66, tekinitotsugeki, 0);

-- 敵に突撃の背景 エフェクト
tekinitotsugeki_haikei = entryEffectLife( spep_3,  ef_004b, 66, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_3,tekinitotsugeki_haikei,  0,  0);
setEffMoveKey( spep_3 + 66,tekinitotsugeki_haikei,  0,  0);

setEffScaleKey( spep_3, tekinitotsugeki_haikei, 1.0, 1.0);
setEffScaleKey( spep_3 + 66, tekinitotsugeki_haikei, 1.0, 1.0);

setEffAlphaKey( spep_3, tekinitotsugeki_haikei, 255);
setEffAlphaKey( spep_3 + 64, tekinitotsugeki_haikei, 255);
setEffAlphaKey( spep_3 + 65, tekinitotsugeki_haikei, 255);
setEffAlphaKey( spep_3 + 66, tekinitotsugeki_haikei, 0);

setEffRotateKey( spep_3, tekinitotsugeki_haikei, 0);
setEffRotateKey( spep_3 + 66, tekinitotsugeki_haikei, 0);

-- 集中線
suchusen_5 = entryEffectLife( spep_3 + 18,  906, 16, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_3 + 18, suchusen_5, 16, 25 );

setEffMoveKey( spep_3 + 18, suchusen_5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 34, suchusen_5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 18, suchusen_5, 1.1, 1.1 );
setEffScaleKey( spep_3 + 34, suchusen_5, 1.1, 1.1 );

setEffRotateKey( spep_3 + 18, suchusen_5, 0 );
setEffRotateKey( spep_3 + 34, suchusen_5, 0 );

setEffAlphaKey( spep_3 + 18, suchusen_5, 255 );
setEffAlphaKey( spep_3 + 34, suchusen_5, 255 );

-- 敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 - 3 + 0, 1, 104 );
changeAnime( spep_3 - 3 + 20, 1, 108 );

setMoveKey( spep_3 - 5 + 0, 1, 330.4, -349.8 , 0 );
setMoveKey( spep_3 - 4 + 0, 1, 330.4, -349.8 , 0 );
setMoveKey( spep_3 - 3 + 0, 1, 330.4, -349.8 , 0 );
setMoveKey( spep_3 - 3 + 2, 1, 317.9, -337.6 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, 304.1, -324.3 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, 288.5, -309.3 , 0 );
setMoveKey( spep_3 - 3 + 8, 1, 270.8, -292.2 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, 250.3, -272.5 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, 226.2, -249.3 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, 197.2, -221.3 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, 160.9, -186.2 , 0 );
setMoveKey( spep_3 - 3 + 19, 1, 111.8, -139.3 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, 27.2, -21.7 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, 72.9, -76.1 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, 6.6, -56.3 , 0 );
setMoveKey( spep_3 - 3 + 26, 1, 51, 6.9 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 28.9, -71.1 , 0 );
setMoveKey( spep_3 - 3 + 30, 1, 26, -47 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, 22.9, -23 , 0 );
setMoveKey( spep_3 - 3 + 34, 1, 21.3, -21.8 , 0 );
setMoveKey( spep_3 - 3 + 36, 1, 16.9, -18.5 , 0 );
setMoveKey( spep_3 - 3 + 38, 1, 10.2, -13.5 , 0 );
setMoveKey( spep_3 - 3 + 40, 1, 2.1, -7.4 , 0 );
setMoveKey( spep_3 - 3 + 42, 1, -6.3, -1.2 , 0 );
setMoveKey( spep_3 - 3 + 44, 1, -13.6, 4.3 , 0 );
setMoveKey( spep_3 - 3 + 46, 1, -18.7, 8.1 , 0 );
setMoveKey( spep_3 - 3 + 48, 1, -20.3, 9.6 , 0 );
setMoveKey( spep_3 - 3 + 50, 1, -17.5, 7.2 , 0 );
setMoveKey( spep_3 - 3 + 52, 1, -9, 0 , 0 );
setMoveKey( spep_3 - 3 + 54, 1, 5.2, -12.1 , 0 );
setMoveKey( spep_3 - 3 + 56, 1, 25.5, -29.3 , 0 );
setMoveKey( spep_3 - 3 + 58, 1, 52.4, -52.2 , 0 );
setMoveKey( spep_3 - 3 + 60, 1, 87.2, -81.6 , 0 );
setMoveKey( spep_3 - 3 + 62, 1, 131.6, -119.3 , 0 );
setMoveKey( spep_3 - 3 + 64, 1, 189.8, -168.6 , 0 );
setMoveKey( spep_3 - 3 + 66, 1, 271.1, -237.6 , 0 );
setMoveKey( spep_3 + 65, 1, 424.7, -367.8 , 0 );

setScaleKey( spep_3 - 3 + 0, 1, 0.55, 0.55 );
setScaleKey( spep_3 - 3 + 2, 1, 0.59, 0.59 );
setScaleKey( spep_3 - 3 + 4, 1, 0.63, 0.63 );
setScaleKey( spep_3 - 3 + 6, 1, 0.67, 0.67 );
setScaleKey( spep_3 - 3 + 8, 1, 0.73, 0.73 );
setScaleKey( spep_3 - 3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_3 - 3 + 12, 1, 0.86, 0.86 );
setScaleKey( spep_3 - 3 + 14, 1, 0.95, 0.95 );
setScaleKey( spep_3 - 3 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_3 - 3 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 3 + 20, 1, 1.4, 1.4 );
setScaleKey( spep_3 - 3 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_3 - 3 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 3 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 3 + 34, 1, 1.21, 1.21 );
setScaleKey( spep_3 - 3 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_3 - 3 + 38, 1, 1.32, 1.32 );
setScaleKey( spep_3 - 3 + 40, 1, 1.39, 1.39 );
setScaleKey( spep_3 - 3 + 42, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_3 - 3 + 46, 1, 1.58, 1.58 );
setScaleKey( spep_3 - 3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_3 - 3 + 50, 1, 1.59, 1.59 );
setScaleKey( spep_3 - 3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_3 - 3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_3 - 3 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_3 - 3 + 58, 1, 1.43, 1.43 );
setScaleKey( spep_3 - 3 + 60, 1, 1.36, 1.36 );
setScaleKey( spep_3 - 3 + 62, 1, 1.26, 1.26 );
setScaleKey( spep_3 - 3 + 64, 1, 1.13, 1.13 );
setScaleKey( spep_3 - 3 + 66, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 65, 1, 0.6, 0.6 );

setRotateKey( spep_3 - 3 + 0, 1, 20 );
setRotateKey( spep_3 - 3 + 19, 1, 20 );
setRotateKey( spep_3 - 3 + 20, 1, 36.1 );
setRotateKey( spep_3 - 3 + 56, 1, 36.1 );
setRotateKey( spep_3 - 3 + 58, 1, 36 );
setRotateKey( spep_3 - 3 + 64, 1, 36 );
setRotateKey( spep_3 - 3 + 66, 1, 35.9 );
setRotateKey( spep_3 + 65, 1, 35.9 );

--SE
playSe( spep_3 + 18 , 1010 );  --相手にぶつかる
playSe( spep_3 + 54 , 1072 );  --地面に突撃


------------------------------------------------------
-- 敵を地面に押し込む
------------------------------------------------------

spep_4 = spep_3 + 66 ;

-- 終始黒背景
entryFadeBg( spep_4, 0, spep_4 + 100, 0, 0, 0, 0, 255);

-- 敵を地面に押し込む エフェクト
tekiwozimennioshikomu = entryEffectLife( spep_4,  ef_005a, 100, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4,tekiwozimennioshikomu,  0,  0);
setEffMoveKey( spep_4 + 100,tekiwozimennioshikomu,  0,  0);

setEffScaleKey( spep_4, tekiwozimennioshikomu, 1.0, 1.0);
setEffScaleKey( spep_4 + 100, tekiwozimennioshikomu, 1.0, 1.0);

setEffAlphaKey( spep_4, tekiwozimennioshikomu, 255);
setEffAlphaKey( spep_4 + 100, tekiwozimennioshikomu, 255);

setEffRotateKey( spep_4, tekiwozimennioshikomu, 0);
setEffRotateKey( spep_4 + 100, tekiwozimennioshikomu, 0);

-- 敵を地面に押し込む エフェクト
tekiwozimennioshikomu_haikei = entryEffectLife( spep_4,  ef_005b, 100, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_4,tekiwozimennioshikomu_haikei,  0,  0);
setEffMoveKey( spep_4 + 100,tekiwozimennioshikomu_haikei,  0,  0);

setEffScaleKey( spep_4, tekiwozimennioshikomu_haikei, 1.0, 1.0);
setEffScaleKey( spep_4 + 100, tekiwozimennioshikomu_haikei, 1.0, 1.0);

setEffAlphaKey( spep_4, tekiwozimennioshikomu_haikei, 255);
setEffAlphaKey( spep_4 + 100, tekiwozimennioshikomu_haikei, 255);

setEffRotateKey( spep_4, tekiwozimennioshikomu_haikei, 0);
setEffRotateKey( spep_4 + 100, tekiwozimennioshikomu_haikei, 0);

-- 集中線
shuchusen_6 = entryEffectLife( spep_4 + 72,  906, 20, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_4 + 72, shuchusen_6, 20, 25 );

setEffMoveKey( spep_4 + 72, shuchusen_6, 0, -250 , 0 );
setEffMoveKey( spep_4 + 92, shuchusen_6, 0, -250 , 0 );

setEffScaleKey( spep_4 + 72, shuchusen_6, 1.4, 1.4 );
setEffScaleKey( spep_4 + 92, shuchusen_6, 1.4, 1.4 );

setEffRotateKey( spep_4 + 72, shuchusen_6, 0 );
setEffRotateKey( spep_4 + 92, shuchusen_6, 0 );

setEffAlphaKey( spep_4 + 72, shuchusen_6, 255 );
setEffAlphaKey( spep_4 + 92, shuchusen_6, 255 );

-- 敵の動き
setDisp( spep_4 - 3 + 53, 1, 0 );

setMoveKey( spep_4 + 0, 1, 1.9, -95.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 26.1, -150.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 51.5, -166.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 83.8, -174.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 121, -171.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 160.7, -157.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 200.4, -132 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 206.4, -90.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 210.6, -47.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 212.8, -4.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 212.6, 39.2 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 209.7, 83.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 204.1, 127.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 195.8, 172.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 184.7, 216.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 171.2, 260.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 154.7, 300.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 135.4, 339.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 113.7, 376.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 89.5, 412.4 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 63.3, 446.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 35.4, 479.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 6.5, 512.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -34.1, 552.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -78.8, 587.7 , 0 );
setMoveKey( spep_4 -3 + 53, 1, -126.9, 618.6 , 0 );

setScaleKey( spep_4 + 0, 1, 3, 3 );
setScaleKey( spep_4 -3 + 4, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 6, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 8, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 12, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 14, 1, 0.3, 0.3 );
setScaleKey( spep_4 -3 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 18, 1, 0.25, 0.25 );
setScaleKey( spep_4 -3 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_4 -3 + 22, 1, 0.19, 0.19 );
setScaleKey( spep_4 -3 + 24, 1, 0.18, 0.18 );
setScaleKey( spep_4 -3 + 26, 1, 0.15, 0.15 );
setScaleKey( spep_4 -3 + 28, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 30, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 32, 1, 0.07, 0.07 );
setScaleKey( spep_4 -3 + 53, 1, 0.07, 0.07 );

setRotateKey( spep_4 + 0, 1, 15.8 );
setRotateKey( spep_4 -3 + 4, 1, -1.3 );
setRotateKey( spep_4 -3 + 6, 1, -9.9 );
setRotateKey( spep_4 -3 + 8, 1, -18.5 );
setRotateKey( spep_4 -3 + 10, 1, -27.1 );
setRotateKey( spep_4 -3 + 12, 1, -35.6 );
setRotateKey( spep_4 -3 + 14, 1, -44.2 );
setRotateKey( spep_4 -3 + 16, 1, -51.6 );
setRotateKey( spep_4 -3 + 18, 1, -59.1 );
setRotateKey( spep_4 -3 + 20, 1, -66.5 );
setRotateKey( spep_4 -3 + 22, 1, -74 );
setRotateKey( spep_4 -3 + 24, 1, -81.4 );
setRotateKey( spep_4 -3 + 26, 1, -88.9 );
setRotateKey( spep_4 -3 + 28, 1, -96.3 );
setRotateKey( spep_4 -3 + 30, 1, -103.8 );
setRotateKey( spep_4 -3 + 32, 1, -111.2 );
setRotateKey( spep_4 -3 + 34, 1, -112.5 );
setRotateKey( spep_4 -3 + 36, 1, -113.8 );
setRotateKey( spep_4 -3 + 38, 1, -115.1 );
setRotateKey( spep_4 -3 + 40, 1, -116.3 );
setRotateKey( spep_4 -3 + 42, 1, -117.6 );
setRotateKey( spep_4 -3 + 44, 1, -118.9 );
setRotateKey( spep_4 -3 + 46, 1, -120.2 );
setRotateKey( spep_4 -3 + 48, 1, -127.2 );
setRotateKey( spep_4 -3 + 50, 1, -134.2 );
setRotateKey( spep_4 -3 + 53, 1, -141.2 );

-- 敵の動き
setDisp( spep_4 - 3 + 60, 1, 1 );
setDisp( spep_4 - 3 + 74, 1, 0 );

changeAnime( spep_4 - 3 + 60, 1, 107 );

setMoveKey( spep_4 -3 + 60, 1, -220.1, 584.1 , 0 );
setMoveKey( spep_4 -3 + 61, 1, -220.1, 584.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -201.8, 505.5 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -201.8, 505.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -181.4, 417.7 , 0 );
setMoveKey( spep_4 -3 + 65, 1, -181.4, 417.7 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -156.6, 311.3 , 0 );
setMoveKey( spep_4 -3 + 67, 1, -156.6, 311.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -125, 175.3 , 0 );
setMoveKey( spep_4 -3 + 69, 1, -125, 175.3 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -82.9, -5 , 0 );
setMoveKey( spep_4 -3 + 71, 1, -82.9, -5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -25, -252.5 , 0 );
setMoveKey( spep_4 -3 + 73, 1, -25, -252.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -25, -252.5 , 0 );

setScaleKey( spep_4 -3 + 60, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 61, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 62, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 63, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 64, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 65, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 66, 1, 0.14, 0.14 );
setScaleKey( spep_4 -3 + 67, 1, 0.14, 0.14 );
setScaleKey( spep_4 -3 + 68, 1, 0.17, 0.17 );
setScaleKey( spep_4 -3 + 69, 1, 0.17, 0.17 );
setScaleKey( spep_4 -3 + 70, 1, 0.21, 0.21 );
setScaleKey( spep_4 -3 + 71, 1, 0.21, 0.21 );
setScaleKey( spep_4 -3 + 72, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 73, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 74, 1, 0.27, 0.27 );

setRotateKey( spep_4 -3 + 60, 1, 339.2 );
setRotateKey( spep_4 -3 + 74, 1, 339.2 );

--SE
seID2 = playSe( spep_4 + 70 , 1023 );  --地面に突撃
playSe( spep_4 + 72 , 1014 );  --地面に突撃
setSeVolume( spep_4 + 72 ,  1014,  40);

stopSe( spep_4 + 90, seID2, 30 );

------------------------------------------------------
-- 地中で突進
------------------------------------------------------

spep_5 = spep_4 + 100 ;

-- ** 黒フェード ** --
entryFade( spep_5 - 2 -2, 0, 2 +2, 6, 8, 8, 8, 255 );

-- 終始黒背景
entryFadeBg( spep_5, 0, spep_5 + 72, 0, 0, 0, 0, 255);

-- 地中で突進 エフェクト
tityuudetosshin = entryEffectLife( spep_5,  ef_006, 72, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5,tityuudetosshin,  0,  0);
setEffMoveKey( spep_5 + 72,tityuudetosshin,  0,  0);

setEffScaleKey( spep_5, tityuudetosshin, 1.0, 1.0);
setEffScaleKey( spep_5 + 72, tityuudetosshin, 1.0, 1.0);

setEffAlphaKey( spep_5, tityuudetosshin, 255);
setEffAlphaKey( spep_5 + 72, tityuudetosshin, 255);

setEffRotateKey( spep_5, tityuudetosshin, 0);
setEffRotateKey( spep_5 + 72, tityuudetosshin, 0);

--SE
seID0 = playSe( spep_5 , 1044 );  --地響き

------------------------------------------------------
-- マグマ爆発
------------------------------------------------------

spep_6 = spep_5 + 72 ;

-- ** 黒フェード ** --
entryFade( spep_6 - 6, 4, 2, 6, 8, 8, 8, 255 );

-- 終始黒背景
entryFadeBg( spep_6, 0, spep_6 + 220, 0, 0, 0, 0, 255);

-- マグマ爆発 エフェクト
magumabakuhatsu = entryEffectLife( spep_6,  ef_007, 220, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6,magumabakuhatsu,  0,  0);
setEffMoveKey( spep_6 + 220,magumabakuhatsu,  0,  0);

setEffScaleKey( spep_6, magumabakuhatsu, 1.0, 1.0);
setEffScaleKey( spep_6 + 220, magumabakuhatsu, 1.0, 1.0);

setEffAlphaKey( spep_6, magumabakuhatsu, 255);
setEffAlphaKey( spep_6 + 220, magumabakuhatsu, 255);

setEffRotateKey( spep_6, magumabakuhatsu, 0);
setEffRotateKey( spep_6 + 220, magumabakuhatsu, 0);

--SE
playSe( spep_6 + 20 , 1072 );  --フリーザ飛び出る

seID1 = playSe( spep_6 + 80 , 1066 );  --マグマの音

stopSe( spep_6 , seID0, 30 );
stopSe( spep_6 + 80, seID1, 80 );

playSe( spep_6 + 170 , 1068 );  --爆発
seID3 = playSe( spep_6 + 180 , 1044 );  --地響き
setSeVolume( spep_6 + 180 ,  1044,  40);

------------------------------------------------------
-- 爆発を見下ろすシーン
------------------------------------------------------

spep_7 = spep_6 + 220 ;

-- 終始黒背景
entryFadeBg( spep_7, 0, spep_7 + 160, 0, 0, 0, 0, 255);

-- マグマ爆発 エフェクト
bakuhatsuwomiorosu = entryEffect( spep_7,  ef_008, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7,bakuhatsuwomiorosu,  0,  0);
setEffMoveKey( spep_7 + 160,bakuhatsuwomiorosu,  0,  0);

setEffScaleKey( spep_7, bakuhatsuwomiorosu, 1.0, 1.0);
setEffScaleKey( spep_7 + 160, bakuhatsuwomiorosu, 1.0, 1.0);

setEffAlphaKey( spep_7, bakuhatsuwomiorosu, 255);
setEffAlphaKey( spep_7 + 160, bakuhatsuwomiorosu, 255);

setEffRotateKey( spep_7, bakuhatsuwomiorosu, 0);
setEffRotateKey( spep_7 + 160, bakuhatsuwomiorosu, 0);

stopSe( spep_7 + 140, seID3, 0 );

-- 黒フェード
dealDamage( spep_7 + 40);
entryFade( spep_7 + 140, 9, 10, 1, 8, 8, 8, 255);
endPhase(spep_7 + 150 );
else


---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------


--敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     --敵側の攻撃     


---------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------
-- タメからフルパワー化	
------------------------------------------------------

spep_0 = 0 ;

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 終始黒背景
entryFadeBg( spep_0, 0, spep_0 + 198, 0, 0, 0, 0, 255);

-- タメからフルパワー化 エフェクト
tamekarafullpower = entryEffectLife( spep_0,  ef_001, 198, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_0,tamekarafullpower,  0,  0);
setEffMoveKey( spep_0 + 198,tamekarafullpower,  0,  0);

setEffScaleKey( spep_0, tamekarafullpower, -1.0, 1.0);
setEffScaleKey( spep_0 + 198, tamekarafullpower, -1.0, 1.0);

setEffAlphaKey( spep_0, tamekarafullpower, 255);
setEffAlphaKey( spep_0 + 198, tamekarafullpower, 255);

setEffRotateKey( spep_0, tamekarafullpower, 0);
setEffRotateKey( spep_0 + 198, tamekarafullpower, 0);

-- 集中線
shuchusen_1 = entryEffectLife( spep_0 + 86,  906, 16, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 86, shuchusen_1, 16, 25 );

setEffMoveKey( spep_0 + 86, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 102, shuchusen_1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 86, shuchusen_1, 1.1, 1.1 );
setEffScaleKey( spep_0 + 102, shuchusen_1, 1.1, 1.1 );

setEffRotateKey( spep_0 + 86, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 102, shuchusen_1, 0 );

setEffAlphaKey( spep_0 + 86, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 102, shuchusen_1, 255 );

-- 集中線
shuchusen_2 = entryEffectLife( spep_0 + 128,  906, 14, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 128, shuchusen_2, 14, 25 );

setEffMoveKey( spep_0 + 128, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 142, shuchusen_2, 0, 0 , 0 );

setEffScaleKey( spep_0 + 128, shuchusen_2, 1.1, 1.1 );
setEffScaleKey( spep_0 + 142, shuchusen_2, 1.1, 1.1 );

setEffRotateKey( spep_0 + 128, shuchusen_2, 0 );
setEffRotateKey( spep_0 + 142, shuchusen_2, 0 );

setEffAlphaKey( spep_0 + 128, shuchusen_2, 255 );
setEffAlphaKey( spep_0 + 142, shuchusen_2, 255 );

-- 集中線
shuchusen_3 = entryEffectLife( spep_0 + 186,  906, 160, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 186, shuchusen_3, 160, 25 );

setEffMoveKey( spep_0 + 186, shuchusen_3, 0, 0 , 0 );
setEffMoveKey( spep_0 + 346, shuchusen_3, 0, 0 , 0 );

setEffScaleKey( spep_0 + 186, shuchusen_3, 1.3, 1.3 );
setEffScaleKey( spep_0 + 346, shuchusen_3, 1.3, 1.3 );

setEffRotateKey( spep_0 + 186, shuchusen_3, 0 );
setEffRotateKey( spep_0 + 346, shuchusen_3, 0 );

setEffAlphaKey( spep_0 + 186, shuchusen_3, 255 );
setEffAlphaKey( spep_0 + 346, shuchusen_3, 255 );

--SE
playSe( spep_0 + 52 , 8 );  --パワーチャージ
playSe( spep_0 + 88 , 1014 );  --巨大化
playSe( spep_0 + 130 , 1021 );  --気をまとう
seID4 = playSe( spep_0 + 186 , 1022 );  --飛ぶ

------------------------------------------------------
-- 突進	
------------------------------------------------------

spep_1 = spep_0 + 198 ;

-- ** ホワイトフェード ** --
entryFade( spep_1 - 10, 10, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 終始黒背景
entryFadeBg( spep_1, 0, spep_1 + 144, 0, 0, 0, 0, 255);

-- 突進 エフェクト
tosshin = entryEffectLife( spep_1,  ef_002, 144, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_1,tosshin,  0,  0);
setEffMoveKey( spep_1 + 144,tosshin,  0,  0);

setEffScaleKey( spep_1, tosshin, -1.0, 1.0);
setEffScaleKey( spep_1 + 144, tosshin, -1.0, 1.0);

setEffAlphaKey( spep_1, tosshin, 255);
setEffAlphaKey( spep_1 + 144, tosshin, 255);

setEffRotateKey( spep_1, tosshin, 0);
setEffRotateKey( spep_1 + 144, tosshin, 0);

-- 書き文字 ズオッ
ct_zuoltu_1 = entryEffectLife( spep_1 + 0,  10012, 60, 0x100, -1, 0, 76, 259.9 );
setEffMoveKey( spep_1 + 0, ct_zuoltu_1, 76, 259.9 , 0 );
setEffMoveKey( spep_1 + 2, ct_zuoltu_1, 95.9, 286.5 , 0 );
setEffMoveKey( spep_1 + 4, ct_zuoltu_1, 102.6, 326.6 , 0 );
setEffMoveKey( spep_1 + 6, ct_zuoltu_1, 132, 343.9 , 0 );
setEffMoveKey( spep_1 + 60, ct_zuoltu_1, 132, 343.9 , 0 );

setEffShake(spep_1 + 6, ct_zuoltu_1, 54, 30);

setEffScaleKey( spep_1 + 0, ct_zuoltu_1, 0.1, 0.1);
setEffScaleKey( spep_1 + 6, ct_zuoltu_1, 0.8 + 2, 0.8 + 2);
setEffScaleKey( spep_1 + 50, ct_zuoltu_1, 0.8 + 2, 0.8 + 2 );
setEffScaleKey( spep_1 + 60, ct_zuoltu_1, 2 + 4.5, 2 + 4.5 );

setEffRotateKey( spep_1 + 0, ct_zuoltu_1, 30 );
setEffRotateKey( spep_1 + 60, ct_zuoltu_1, 30 );

setEffAlphaKey( spep_1 + 0, ct_zuoltu_1, 255 );
setEffAlphaKey( spep_1 + 50, ct_zuoltu_1, 255 );
setEffAlphaKey( spep_1 + 52, ct_zuoltu_1, 204 );
setEffAlphaKey( spep_1 + 54, ct_zuoltu_1, 153 );
setEffAlphaKey( spep_1 + 56, ct_zuoltu_1, 102 );
setEffAlphaKey( spep_1 + 58, ct_zuoltu_1, 51 );
setEffAlphaKey( spep_1 + 60, ct_zuoltu_1, 0 );

-- 監修動画の顔カットインの長さが実際の元の違うため、前後が正しく合っていません。
-- 後ろを合わせた方が自然に見えるので後ろを合わせています
-- **  顔カットイン　** --
-- speff = entryEffect( spep_1 + 44, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
-- speff1 = entryEffect( spep_1 + 44, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_1 + 56,  190006, 72, 0x100, -1, 0, 70.9, 515.5 ); --ゴゴゴ
setEffShake( spep_1 + 56, ctgogo, 72, 10 );

setEffMoveKey( spep_1 + 56, ctgogo, -50,  520, 0  );
setEffMoveKey( spep_1 + 56 + 72, ctgogo, -50,  520, 0  );	

setEffScaleKey( spep_1 + 56, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 56 + 64, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_1 + 56 + 66, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56 + 68, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_1 + 56 + 70, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_1 + 56 + 72, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_1 + 56, ctgogo, 0 );
setEffRotateKey( spep_1 + 56 + 72, ctgogo, 0 );

setEffAlphaKey( spep_1 + 56, ctgogo, 0 );
setEffAlphaKey( spep_1 + 56 + 1, ctgogo, 255 );
setEffAlphaKey( spep_1 + 56 + 2, ctgogo, 255 );
setEffAlphaKey( spep_1 + 56 + 72, ctgogo, 255 );

--SE
-- playSe( spep_1 , 1072 );  --風を切る
stopSe( spep_1 + 56, seID4, 10)
playSe( spep_1 + 56 , SE_04 );  --ゴゴゴ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 140; --エンドフェイズのフレーム数を置き換える

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

spep_2 = spep_1 + 144 ;

-- 終始黒背景
entryFadeBg( spep_2, 0, spep_2 + 90, 0, 0, 0, 0, 255);

--白フラッシュ
entryFade( spep_2-6, 6, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen_4 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);

setEffMoveKey(  spep_2,  shuchusen_4,  0,  0);
setEffMoveKey(  spep_2+90,  shuchusen_4,  0,  0);
setEffScaleKey(  spep_2,  shuchusen_4,  1.6,  1.6);
setEffScaleKey(  spep_2+90,  shuchusen_4,  1.6,  1.6);
setEffRotateKey(  spep_2,  shuchusen_4,  0);
setEffRotateKey(  spep_2+90,  shuchusen_4,  0);
setEffAlphaKey(  spep_2,  shuchusen_4,  255);
setEffAlphaKey(  spep_2+90,  shuchusen_4,  255);

entryFade(  spep_2 + 78,  10,  5,  6,  fcolor_r,  fcolor_g,  fcolor_b,  255);  --white fade

------------------------------------------------------
-- 敵に突撃
------------------------------------------------------

spep_3 = spep_2 + 90 ;

-- 終始黒背景
entryFadeBg( spep_3, 0, spep_3 + 66, 0, 0, 0, 0, 255);

-- 敵に突撃 エフェクト
tekinitotsugeki = entryEffectLife( spep_3,  ef_004a, 66, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_3,tekinitotsugeki,  0,  0);
setEffMoveKey( spep_3 + 66,tekinitotsugeki,  0,  0);

setEffScaleKey( spep_3, tekinitotsugeki, 1.0, 1.0);
setEffScaleKey( spep_3 + 66, tekinitotsugeki, 1.0, 1.0);

setEffAlphaKey( spep_3, tekinitotsugeki, 255);
setEffAlphaKey( spep_3 + 64, tekinitotsugeki, 255);
setEffAlphaKey( spep_3 + 65, tekinitotsugeki, 255);
setEffAlphaKey( spep_3 + 66, tekinitotsugeki, 0);

setEffRotateKey( spep_3, tekinitotsugeki, 0);
setEffRotateKey( spep_3 + 66, tekinitotsugeki, 0);

-- 敵に突撃の背景 エフェクト
tekinitotsugeki_haikei = entryEffectLife( spep_3,  ef_004b, 66, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_3,tekinitotsugeki_haikei,  0,  0);
setEffMoveKey( spep_3 + 66,tekinitotsugeki_haikei,  0,  0);

setEffScaleKey( spep_3, tekinitotsugeki_haikei, 1.0, 1.0);
setEffScaleKey( spep_3 + 66, tekinitotsugeki_haikei, 1.0, 1.0);

setEffAlphaKey( spep_3, tekinitotsugeki_haikei, 255);
setEffAlphaKey( spep_3 + 64, tekinitotsugeki_haikei, 255);
setEffAlphaKey( spep_3 + 65, tekinitotsugeki_haikei, 255);
setEffAlphaKey( spep_3 + 66, tekinitotsugeki_haikei, 0);

setEffRotateKey( spep_3, tekinitotsugeki_haikei, 0);
setEffRotateKey( spep_3 + 66, tekinitotsugeki_haikei, 0);

-- 集中線
suchusen_5 = entryEffectLife( spep_3 + 18,  906, 16, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_3 + 18, suchusen_5, 16, 25 );

setEffMoveKey( spep_3 + 18, suchusen_5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 34, suchusen_5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 18, suchusen_5, 1.1, 1.1 );
setEffScaleKey( spep_3 + 34, suchusen_5, 1.1, 1.1 );

setEffRotateKey( spep_3 + 18, suchusen_5, 0 );
setEffRotateKey( spep_3 + 34, suchusen_5, 0 );

setEffAlphaKey( spep_3 + 18, suchusen_5, 255 );
setEffAlphaKey( spep_3 + 34, suchusen_5, 255 );

-- 敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 - 3 + 0, 1, 104 );
changeAnime( spep_3 - 3 + 20, 1, 108 );

setMoveKey( spep_3 - 5 + 0, 1, 330.4, -349.8 , 0 );
setMoveKey( spep_3 - 4 + 0, 1, 330.4, -349.8 , 0 );
setMoveKey( spep_3 - 3 + 0, 1, 330.4, -349.8 , 0 );
setMoveKey( spep_3 - 3 + 2, 1, 317.9, -337.6 , 0 );
setMoveKey( spep_3 - 3 + 4, 1, 304.1, -324.3 , 0 );
setMoveKey( spep_3 - 3 + 6, 1, 288.5, -309.3 , 0 );
setMoveKey( spep_3 - 3 + 8, 1, 270.8, -292.2 , 0 );
setMoveKey( spep_3 - 3 + 10, 1, 250.3, -272.5 , 0 );
setMoveKey( spep_3 - 3 + 12, 1, 226.2, -249.3 , 0 );
setMoveKey( spep_3 - 3 + 14, 1, 197.2, -221.3 , 0 );
setMoveKey( spep_3 - 3 + 16, 1, 160.9, -186.2 , 0 );
setMoveKey( spep_3 - 3 + 19, 1, 111.8, -139.3 , 0 );
setMoveKey( spep_3 - 3 + 20, 1, 27.2, -21.7 , 0 );
setMoveKey( spep_3 - 3 + 22, 1, 72.9, -76.1 , 0 );
setMoveKey( spep_3 - 3 + 24, 1, 6.6, -56.3 , 0 );
setMoveKey( spep_3 - 3 + 26, 1, 51, 6.9 , 0 );
setMoveKey( spep_3 - 3 + 28, 1, 28.9, -71.1 , 0 );
setMoveKey( spep_3 - 3 + 30, 1, 26, -47 , 0 );
setMoveKey( spep_3 - 3 + 32, 1, 22.9, -23 , 0 );
setMoveKey( spep_3 - 3 + 34, 1, 21.3, -21.8 , 0 );
setMoveKey( spep_3 - 3 + 36, 1, 16.9, -18.5 , 0 );
setMoveKey( spep_3 - 3 + 38, 1, 10.2, -13.5 , 0 );
setMoveKey( spep_3 - 3 + 40, 1, 2.1, -7.4 , 0 );
setMoveKey( spep_3 - 3 + 42, 1, -6.3, -1.2 , 0 );
setMoveKey( spep_3 - 3 + 44, 1, -13.6, 4.3 , 0 );
setMoveKey( spep_3 - 3 + 46, 1, -18.7, 8.1 , 0 );
setMoveKey( spep_3 - 3 + 48, 1, -20.3, 9.6 , 0 );
setMoveKey( spep_3 - 3 + 50, 1, -17.5, 7.2 , 0 );
setMoveKey( spep_3 - 3 + 52, 1, -9, 0 , 0 );
setMoveKey( spep_3 - 3 + 54, 1, 5.2, -12.1 , 0 );
setMoveKey( spep_3 - 3 + 56, 1, 25.5, -29.3 , 0 );
setMoveKey( spep_3 - 3 + 58, 1, 52.4, -52.2 , 0 );
setMoveKey( spep_3 - 3 + 60, 1, 87.2, -81.6 , 0 );
setMoveKey( spep_3 - 3 + 62, 1, 131.6, -119.3 , 0 );
setMoveKey( spep_3 - 3 + 64, 1, 189.8, -168.6 , 0 );
setMoveKey( spep_3 - 3 + 66, 1, 271.1, -237.6 , 0 );
setMoveKey( spep_3 + 65, 1, 424.7, -367.8 , 0 );

setScaleKey( spep_3 - 3 + 0, 1, 0.55, 0.55 );
setScaleKey( spep_3 - 3 + 2, 1, 0.59, 0.59 );
setScaleKey( spep_3 - 3 + 4, 1, 0.63, 0.63 );
setScaleKey( spep_3 - 3 + 6, 1, 0.67, 0.67 );
setScaleKey( spep_3 - 3 + 8, 1, 0.73, 0.73 );
setScaleKey( spep_3 - 3 + 10, 1, 0.79, 0.79 );
setScaleKey( spep_3 - 3 + 12, 1, 0.86, 0.86 );
setScaleKey( spep_3 - 3 + 14, 1, 0.95, 0.95 );
setScaleKey( spep_3 - 3 + 16, 1, 1.05, 1.05 );
setScaleKey( spep_3 - 3 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 3 + 20, 1, 1.4, 1.4 );
setScaleKey( spep_3 - 3 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 3 + 24, 1, 1.3, 1.3 );
setScaleKey( spep_3 - 3 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 3 + 32, 1, 1.2, 1.2 );
setScaleKey( spep_3 - 3 + 34, 1, 1.21, 1.21 );
setScaleKey( spep_3 - 3 + 36, 1, 1.25, 1.25 );
setScaleKey( spep_3 - 3 + 38, 1, 1.32, 1.32 );
setScaleKey( spep_3 - 3 + 40, 1, 1.39, 1.39 );
setScaleKey( spep_3 - 3 + 42, 1, 1.47, 1.47 );
setScaleKey( spep_3 - 3 + 44, 1, 1.53, 1.53 );
setScaleKey( spep_3 - 3 + 46, 1, 1.58, 1.58 );
setScaleKey( spep_3 - 3 + 48, 1, 1.6, 1.6 );
setScaleKey( spep_3 - 3 + 50, 1, 1.59, 1.59 );
setScaleKey( spep_3 - 3 + 52, 1, 1.57, 1.57 );
setScaleKey( spep_3 - 3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_3 - 3 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_3 - 3 + 58, 1, 1.43, 1.43 );
setScaleKey( spep_3 - 3 + 60, 1, 1.36, 1.36 );
setScaleKey( spep_3 - 3 + 62, 1, 1.26, 1.26 );
setScaleKey( spep_3 - 3 + 64, 1, 1.13, 1.13 );
setScaleKey( spep_3 - 3 + 66, 1, 0.94, 0.94 );
setScaleKey( spep_3 + 65, 1, 0.6, 0.6 );

setRotateKey( spep_3 - 3 + 0, 1, 20 );
setRotateKey( spep_3 - 3 + 19, 1, 20 );
setRotateKey( spep_3 - 3 + 20, 1, 36.1 );
setRotateKey( spep_3 - 3 + 56, 1, 36.1 );
setRotateKey( spep_3 - 3 + 58, 1, 36 );
setRotateKey( spep_3 - 3 + 64, 1, 36 );
setRotateKey( spep_3 - 3 + 66, 1, 35.9 );
setRotateKey( spep_3 + 65, 1, 35.9 );

--SE
playSe( spep_3 + 18 , 1010 );  --相手にぶつかる
playSe( spep_3 + 54 , 1072 );  --地面に突撃


------------------------------------------------------
-- 敵を地面に押し込む
------------------------------------------------------

spep_4 = spep_3 + 66 ;

-- 終始黒背景
entryFadeBg( spep_4, 0, spep_4 + 100, 0, 0, 0, 0, 255);

-- 敵を地面に押し込む エフェクト
tekiwozimennioshikomu = entryEffectLife( spep_4,  ef_005a, 100, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_4,tekiwozimennioshikomu,  0,  0);
setEffMoveKey( spep_4 + 100,tekiwozimennioshikomu,  0,  0);

setEffScaleKey( spep_4, tekiwozimennioshikomu, 1.0, 1.0);
setEffScaleKey( spep_4 + 100, tekiwozimennioshikomu, 1.0, 1.0);

setEffAlphaKey( spep_4, tekiwozimennioshikomu, 255);
setEffAlphaKey( spep_4 + 100, tekiwozimennioshikomu, 255);

setEffRotateKey( spep_4, tekiwozimennioshikomu, 0);
setEffRotateKey( spep_4 + 100, tekiwozimennioshikomu, 0);

-- 敵を地面に押し込む エフェクト
tekiwozimennioshikomu_haikei = entryEffectLife( spep_4,  ef_005b, 100, 0x80, -1, 0, 0, 0);
setEffMoveKey( spep_4,tekiwozimennioshikomu_haikei,  0,  0);
setEffMoveKey( spep_4 + 100,tekiwozimennioshikomu_haikei,  0,  0);

setEffScaleKey( spep_4, tekiwozimennioshikomu_haikei, 1.0, 1.0);
setEffScaleKey( spep_4 + 100, tekiwozimennioshikomu_haikei, 1.0, 1.0);

setEffAlphaKey( spep_4, tekiwozimennioshikomu_haikei, 255);
setEffAlphaKey( spep_4 + 100, tekiwozimennioshikomu_haikei, 255);

setEffRotateKey( spep_4, tekiwozimennioshikomu_haikei, 0);
setEffRotateKey( spep_4 + 100, tekiwozimennioshikomu_haikei, 0);

-- 集中線
shuchusen_6 = entryEffectLife( spep_4 + 72,  906, 20, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_4 + 72, shuchusen_6, 20, 25 );

setEffMoveKey( spep_4 + 72, shuchusen_6, 0, -250 , 0 );
setEffMoveKey( spep_4 + 92, shuchusen_6, 0, -250 , 0 );

setEffScaleKey( spep_4 + 72, shuchusen_6, 1.4, 1.4 );
setEffScaleKey( spep_4 + 92, shuchusen_6, 1.4, 1.4 );

setEffRotateKey( spep_4 + 72, shuchusen_6, 0 );
setEffRotateKey( spep_4 + 92, shuchusen_6, 0 );

setEffAlphaKey( spep_4 + 72, shuchusen_6, 255 );
setEffAlphaKey( spep_4 + 92, shuchusen_6, 255 );

-- 敵の動き
setDisp( spep_4 - 3 + 53, 1, 0 );

setMoveKey( spep_4 + 0, 1, 1.9, -95.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 26.1, -150.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 51.5, -166.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 83.8, -174.2 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 121, -171.2 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 160.7, -157.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 200.4, -132 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 206.4, -90.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 210.6, -47.9 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 212.8, -4.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 212.6, 39.2 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 209.7, 83.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 204.1, 127.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 195.8, 172.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 184.7, 216.3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 171.2, 260.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 154.7, 300.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 135.4, 339.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 113.7, 376.4 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 89.5, 412.4 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 63.3, 446.8 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 35.4, 479.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 6.5, 512.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -34.1, 552.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -78.8, 587.7 , 0 );
setMoveKey( spep_4 -3 + 53, 1, -126.9, 618.6 , 0 );

setScaleKey( spep_4 + 0, 1, 3, 3 );
setScaleKey( spep_4 -3 + 4, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 6, 1, 1.84, 1.84 );
setScaleKey( spep_4 -3 + 8, 1, 1.45, 1.45 );
setScaleKey( spep_4 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_4 -3 + 12, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 14, 1, 0.3, 0.3 );
setScaleKey( spep_4 -3 + 16, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 18, 1, 0.25, 0.25 );
setScaleKey( spep_4 -3 + 20, 1, 0.22, 0.22 );
setScaleKey( spep_4 -3 + 22, 1, 0.19, 0.19 );
setScaleKey( spep_4 -3 + 24, 1, 0.18, 0.18 );
setScaleKey( spep_4 -3 + 26, 1, 0.15, 0.15 );
setScaleKey( spep_4 -3 + 28, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 30, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 32, 1, 0.07, 0.07 );
setScaleKey( spep_4 -3 + 53, 1, 0.07, 0.07 );

setRotateKey( spep_4 + 0, 1, 15.8 );
setRotateKey( spep_4 -3 + 4, 1, -1.3 );
setRotateKey( spep_4 -3 + 6, 1, -9.9 );
setRotateKey( spep_4 -3 + 8, 1, -18.5 );
setRotateKey( spep_4 -3 + 10, 1, -27.1 );
setRotateKey( spep_4 -3 + 12, 1, -35.6 );
setRotateKey( spep_4 -3 + 14, 1, -44.2 );
setRotateKey( spep_4 -3 + 16, 1, -51.6 );
setRotateKey( spep_4 -3 + 18, 1, -59.1 );
setRotateKey( spep_4 -3 + 20, 1, -66.5 );
setRotateKey( spep_4 -3 + 22, 1, -74 );
setRotateKey( spep_4 -3 + 24, 1, -81.4 );
setRotateKey( spep_4 -3 + 26, 1, -88.9 );
setRotateKey( spep_4 -3 + 28, 1, -96.3 );
setRotateKey( spep_4 -3 + 30, 1, -103.8 );
setRotateKey( spep_4 -3 + 32, 1, -111.2 );
setRotateKey( spep_4 -3 + 34, 1, -112.5 );
setRotateKey( spep_4 -3 + 36, 1, -113.8 );
setRotateKey( spep_4 -3 + 38, 1, -115.1 );
setRotateKey( spep_4 -3 + 40, 1, -116.3 );
setRotateKey( spep_4 -3 + 42, 1, -117.6 );
setRotateKey( spep_4 -3 + 44, 1, -118.9 );
setRotateKey( spep_4 -3 + 46, 1, -120.2 );
setRotateKey( spep_4 -3 + 48, 1, -127.2 );
setRotateKey( spep_4 -3 + 50, 1, -134.2 );
setRotateKey( spep_4 -3 + 53, 1, -141.2 );

-- 敵の動き
setDisp( spep_4 - 3 + 60, 1, 1 );
setDisp( spep_4 - 3 + 74, 1, 0 );

changeAnime( spep_4 - 3 + 60, 1, 107 );

setMoveKey( spep_4 -3 + 60, 1, -220.1, 584.1 , 0 );
setMoveKey( spep_4 -3 + 61, 1, -220.1, 584.1 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -201.8, 505.5 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -201.8, 505.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -181.4, 417.7 , 0 );
setMoveKey( spep_4 -3 + 65, 1, -181.4, 417.7 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -156.6, 311.3 , 0 );
setMoveKey( spep_4 -3 + 67, 1, -156.6, 311.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -125, 175.3 , 0 );
setMoveKey( spep_4 -3 + 69, 1, -125, 175.3 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -82.9, -5 , 0 );
setMoveKey( spep_4 -3 + 71, 1, -82.9, -5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -25, -252.5 , 0 );
setMoveKey( spep_4 -3 + 73, 1, -25, -252.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -25, -252.5 , 0 );

setScaleKey( spep_4 -3 + 60, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 61, 1, 0.08, 0.08 );
setScaleKey( spep_4 -3 + 62, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 63, 1, 0.1, 0.1 );
setScaleKey( spep_4 -3 + 64, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 65, 1, 0.12, 0.12 );
setScaleKey( spep_4 -3 + 66, 1, 0.14, 0.14 );
setScaleKey( spep_4 -3 + 67, 1, 0.14, 0.14 );
setScaleKey( spep_4 -3 + 68, 1, 0.17, 0.17 );
setScaleKey( spep_4 -3 + 69, 1, 0.17, 0.17 );
setScaleKey( spep_4 -3 + 70, 1, 0.21, 0.21 );
setScaleKey( spep_4 -3 + 71, 1, 0.21, 0.21 );
setScaleKey( spep_4 -3 + 72, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 73, 1, 0.27, 0.27 );
setScaleKey( spep_4 -3 + 74, 1, 0.27, 0.27 );

setRotateKey( spep_4 -3 + 60, 1, 339.2 );
setRotateKey( spep_4 -3 + 74, 1, 339.2 );

--SE
seID2 = playSe( spep_4 + 70 , 1023 );  --地面に突撃
playSe( spep_4 + 72 , 1014 );  --地面に突撃
setSeVolume( spep_4 + 72 ,  1014,  40);

stopSe( spep_4 + 90, seID2, 30 );

------------------------------------------------------
-- 地中で突進
------------------------------------------------------

spep_5 = spep_4 + 100 ;

-- ** 黒フェード ** --
entryFade( spep_5 - 2 -2, 0, 2 +2, 6, 8, 8, 8, 255 );

-- 終始黒背景
entryFadeBg( spep_5, 0, spep_5 + 72, 0, 0, 0, 0, 255);

-- 地中で突進 エフェクト
tityuudetosshin = entryEffectLife( spep_5,  ef_006, 72, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_5,tityuudetosshin,  0,  0);
setEffMoveKey( spep_5 + 72,tityuudetosshin,  0,  0);

setEffScaleKey( spep_5, tityuudetosshin, -1.0, 1.0);
setEffScaleKey( spep_5 + 72, tityuudetosshin, -1.0, 1.0);

setEffAlphaKey( spep_5, tityuudetosshin, 255);
setEffAlphaKey( spep_5 + 72, tityuudetosshin, 255);

setEffRotateKey( spep_5, tityuudetosshin, 0);
setEffRotateKey( spep_5 + 72, tityuudetosshin, 0);

--SE
seID0 = playSe( spep_5 , 1044 );  --地響き

------------------------------------------------------
-- マグマ爆発
------------------------------------------------------

spep_6 = spep_5 + 72 ;

-- ** 黒フェード ** --
entryFade( spep_6 - 6, 4, 2, 6, 8, 8, 8, 255 );

-- 終始黒背景
entryFadeBg( spep_6, 0, spep_6 + 220, 0, 0, 0, 0, 255);

-- マグマ爆発 エフェクト
magumabakuhatsu = entryEffectLife( spep_6,  ef_007, 220, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_6,magumabakuhatsu,  0,  0);
setEffMoveKey( spep_6 + 220,magumabakuhatsu,  0,  0);

setEffScaleKey( spep_6, magumabakuhatsu, 1.0, 1.0);
setEffScaleKey( spep_6 + 220, magumabakuhatsu, 1.0, 1.0);

setEffAlphaKey( spep_6, magumabakuhatsu, 255);
setEffAlphaKey( spep_6 + 220, magumabakuhatsu, 255);

setEffRotateKey( spep_6, magumabakuhatsu, 0);
setEffRotateKey( spep_6 + 220, magumabakuhatsu, 0);

--SE
playSe( spep_6 + 20 , 1072 );  --フリーザ飛び出る

seID1 = playSe( spep_6 + 80 , 1066 );  --マグマの音

stopSe( spep_6 , seID0, 30 );
stopSe( spep_6 + 80, seID1, 80 );

playSe( spep_6 + 170 , 1068 );  --爆発
seID3 = playSe( spep_6 + 180 , 1044 );  --地響き
setSeVolume( spep_6 + 180 ,  1044,  40);

------------------------------------------------------
-- 爆発を見下ろすシーン
------------------------------------------------------

spep_7 = spep_6 + 220 ;

-- 終始黒背景
entryFadeBg( spep_7, 0, spep_7 + 160, 0, 0, 0, 0, 255);

-- マグマ爆発 エフェクト
bakuhatsuwomiorosu = entryEffect( spep_7,  ef_008, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_7,bakuhatsuwomiorosu,  0,  0);
setEffMoveKey( spep_7 + 160,bakuhatsuwomiorosu,  0,  0);

setEffScaleKey( spep_7, bakuhatsuwomiorosu, 1.0, 1.0);
setEffScaleKey( spep_7 + 160, bakuhatsuwomiorosu, 1.0, 1.0);

setEffAlphaKey( spep_7, bakuhatsuwomiorosu, 255);
setEffAlphaKey( spep_7 + 160, bakuhatsuwomiorosu, 255);

setEffRotateKey( spep_7, bakuhatsuwomiorosu, 0);
setEffRotateKey( spep_7 + 160, bakuhatsuwomiorosu, 0);

stopSe( spep_7 + 140, seID3, 0 );

-- 黒フェード
dealDamage( spep_7 + 40);
entryFade( spep_7 + 140, 9, 10, 1, 8, 8, 8, 255);
endPhase(spep_7 + 150 );

end