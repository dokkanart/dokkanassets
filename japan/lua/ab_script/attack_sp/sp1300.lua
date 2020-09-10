--sp1300  フリーザ(第二形態)_悦楽のフリーザタイム

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 153562; --見上げるフリーザ
SP_02 = 153563; --ダッシュ
SP_03 = 153564; --突きエフェクト
SP_04 = 153565; --振り回し＆オーラ
SP_05 = 153566; --背景＆振り回し
SP_06 = 153567; --背景


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
-- 導入(120F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 120, 0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 120, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 120, kamae, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 120, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 120, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 120, shuchusen1, 1.8, 1.8 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 120, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 120, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

 -- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 26, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 26, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 12 +26,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 12 +26, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 12 +26, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 80 +26, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 12 +26, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 72 +26, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 74 +26, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76 +26, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 78 +26, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 80 +26, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 12 +26, ctgogo, 0 );
setEffRotateKey( spep_0 + 80 +26, ctgogo, 0 );

setEffAlphaKey( spep_0 + 12 +26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80 +26, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0,  8);  --冒頭
playSe( spep_0 + 12 +26, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 110, 8, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 120;


------------------------------------------------------
-- 突進(80F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --突進(ef_002)
setEffMoveKey( spep_1 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tosshin, 0 );
setEffRotateKey( spep_1 + 80, tosshin, 0 );
setEffAlphaKey( spep_1 + 0, tosshin, 255 );
setEffAlphaKey( spep_1 + 80, tosshin, 255 );

-- ** 書き文字 ** --
ct_don = entryEffectLife( spep_1 + 8,  10019, 36, 0x100, -1, 0, -259.5, -297.7 );  --ドン
setEffMoveKey( spep_1 + 8, ct_don, -259.5, -297.7, 0 );
setEffMoveKey( spep_1 + 10, ct_don, -238.7, -208.3 , 0 );
setEffMoveKey( spep_1 + 12, ct_don, -200.2, -117.6 , 0 );
setEffMoveKey( spep_1 + 14, ct_don, -168.6, -27.3 , 0 );
setEffMoveKey( spep_1 + 16, ct_don, -151.8, 68.3 , 0 );
setEffMoveKey( spep_1 + 18, ct_don, -109.3, 150.4 , 0 );
setEffMoveKey( spep_1 + 20, ct_don, -96.2, 235.6 , 0 );
setEffMoveKey( spep_1 + 22, ct_don, -69.5, 323.8 , 0 );
setEffMoveKey( spep_1 + 24, ct_don, -59.9, 347.2 , 0 );
setEffMoveKey( spep_1 + 26, ct_don, -53.3, 340.7 , 0 );
setEffMoveKey( spep_1 + 28, ct_don, -59.4, 371.7 , 0 );
setEffMoveKey( spep_1 + 30, ct_don, -45.5, 369.6 , 0 );
setEffMoveKey( spep_1 + 32, ct_don, -54.2, 385.7 , 0 );
setEffMoveKey( spep_1 + 34, ct_don, -41.5, 388.5 , 0 );
setEffMoveKey( spep_1 + 36, ct_don, -39.8, 406.2 , 0 );
setEffMoveKey( spep_1 + 38, ct_don, -37.2, 396.5 , 0 );
setEffMoveKey( spep_1 + 40, ct_don, -42.6, 415.9 , 0 );
setEffMoveKey( spep_1 + 42, ct_don, -34.5, 409.6 , 0 );
setEffMoveKey( spep_1 + 44, ct_don, -31.9, 414.2 , 0 );

setEffScaleKey( spep_1 + 8, ct_don, 0.8, 0.8 );
setEffScaleKey( spep_1 + 10, ct_don, 1.2, 1.2 );
setEffScaleKey( spep_1 + 12, ct_don, 1.6, 1.6 );
setEffScaleKey( spep_1 + 14, ct_don, 2, 2 );
setEffScaleKey( spep_1 + 16, ct_don, 2.18, 2.18 );
setEffScaleKey( spep_1 + 18, ct_don, 2.36, 2.36 );
setEffScaleKey( spep_1 + 20, ct_don, 2.54, 2.54 );
setEffScaleKey( spep_1 + 22, ct_don, 2.72, 2.72 );
setEffScaleKey( spep_1 + 24, ct_don, 2.88, 2.88 );
setEffScaleKey( spep_1 + 26, ct_don, 3.05, 3.05 );
setEffScaleKey( spep_1 + 28, ct_don, 3.21, 3.21 );
setEffScaleKey( spep_1 + 30, ct_don, 3.37, 3.37 );
setEffScaleKey( spep_1 + 32, ct_don, 3.54, 3.54 );
setEffScaleKey( spep_1 + 34, ct_don, 3.7, 3.7 );
setEffScaleKey( spep_1 + 36, ct_don, 3.76, 3.76 );
setEffScaleKey( spep_1 + 38, ct_don, 3.82, 3.82 );
setEffScaleKey( spep_1 + 40, ct_don, 3.88, 3.88 );
setEffScaleKey( spep_1 + 42, ct_don, 3.94, 3.94 );
setEffScaleKey( spep_1 + 44, ct_don, 4, 4 );

setEffRotateKey( spep_1 + 8, ct_don, -16 );
setEffRotateKey( spep_1 + 10, ct_don, -13.3 );
setEffRotateKey( spep_1 + 12, ct_don, -10.7 );
setEffRotateKey( spep_1 + 14, ct_don, -8 );
setEffRotateKey( spep_1 + 16, ct_don, -8.5 );
setEffRotateKey( spep_1 + 18, ct_don, -9 );
setEffRotateKey( spep_1 + 20, ct_don, -9.5 );
setEffRotateKey( spep_1 + 22, ct_don, -10 );
setEffRotateKey( spep_1 + 24, ct_don, -9.5 );
setEffRotateKey( spep_1 + 26, ct_don, -9.1 );
setEffRotateKey( spep_1 + 28, ct_don, -8.6 );
setEffRotateKey( spep_1 + 30, ct_don, -8.2 );
setEffRotateKey( spep_1 + 32, ct_don, -7.7 );
setEffRotateKey( spep_1 + 34, ct_don, -7.3 );
setEffRotateKey( spep_1 + 36, ct_don, -7 );
setEffRotateKey( spep_1 + 38, ct_don, -6.8 );
setEffRotateKey( spep_1 + 40, ct_don, -6.5 );
setEffRotateKey( spep_1 + 42, ct_don, -6.3 );
setEffRotateKey( spep_1 + 44, ct_don, -6 );

setEffAlphaKey( spep_1 + 8, ct_don, 49 );
setEffAlphaKey( spep_1 + 10, ct_don, 118 );
setEffAlphaKey( spep_1 + 12, ct_don, 186 );
setEffAlphaKey( spep_1 + 14, ct_don, 255 );
setEffAlphaKey( spep_1 + 34, ct_don, 255 );
setEffAlphaKey( spep_1 + 36, ct_don, 204 );
setEffAlphaKey( spep_1 + 38, ct_don, 153 );
setEffAlphaKey( spep_1 + 40, ct_don, 102 );
setEffAlphaKey( spep_1 + 42, ct_don, 51 );
setEffAlphaKey( spep_1 + 44, ct_don, 0 );

playSe(  spep_1,  9);  --突進

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 32; --エンドフェイズのフレーム数を置き換える

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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 70, 8, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 **  --
spep_2 = spep_1 +80;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 90;

------------------------------------------------------
-- 突き刺す(400F)
------------------------------------------------------

-- ** 書き文字　** --
ct_zuo = entryEffectLife( spep_3 + 2,  10012, 18, 0x100, -1, 0, -123.8, 86.8 );  --ズオッ
setEffMoveKey( spep_3 + 2, ct_zuo, -123.8, 86.8 , 0 );
setEffMoveKey( spep_3 + 4, ct_zuo, -156.6, 108.8 , 0 );
setEffMoveKey( spep_3 + 6, ct_zuo, -167, 129.6 , 0 );
setEffMoveKey( spep_3 + 8, ct_zuo, -184.2, 147.7 , 0 );
setEffMoveKey( spep_3 + 10, ct_zuo, -176.5, 151.1 , 0 );
setEffMoveKey( spep_3 + 12, ct_zuo, -195.7, 159.6 , 0 );
setEffMoveKey( spep_3 + 14, ct_zuo, -196.3, 179.1 , 0 );
setEffMoveKey( spep_3 + 16, ct_zuo, -201.2, 177.1 , 0 );
setEffMoveKey( spep_3 + 18, ct_zuo, -213.2, 201.2 , 0 );
setEffMoveKey( spep_3 + 20, ct_zuo, -219.6, 211.9 , 0 );

setEffScaleKey( spep_3 + 2, ct_zuo, 1.67, 1.67 );
setEffScaleKey( spep_3 + 4, ct_zuo, 2.27, 2.27 );
setEffScaleKey( spep_3 + 6, ct_zuo, 2.86, 2.86 );
setEffScaleKey( spep_3 + 8, ct_zuo, 2.83, 2.83 );
setEffScaleKey( spep_3 + 10, ct_zuo, 2.81, 2.81 );
setEffScaleKey( spep_3 + 12, ct_zuo, 2.78, 2.78 );
setEffScaleKey( spep_3 + 14, ct_zuo, 2.76, 2.76 );
setEffScaleKey( spep_3 + 16, ct_zuo, 2.74, 2.74 );
setEffScaleKey( spep_3 + 18, ct_zuo, 2.71, 2.71 );
setEffScaleKey( spep_3 + 20, ct_zuo, 2.69, 2.69 );

setEffRotateKey( spep_3 + 2, ct_zuo, -33 );
setEffRotateKey( spep_3 + 20, ct_zuo, -33 );

setEffAlphaKey( spep_3 + 2, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 10, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 12, ct_zuo, 204 );
setEffAlphaKey( spep_3 + 14, ct_zuo, 153 );
setEffAlphaKey( spep_3 + 16, ct_zuo, 102 );
setEffAlphaKey( spep_3 + 18, ct_zuo, 51 );
setEffAlphaKey( spep_3 + 20, ct_zuo, 0 );


-- ** エフェクト等 ** --
tsuki = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --フリーザ(ef_004)
setEffMoveKey( spep_3 + 0, tsuki, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, tsuki, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tsuki, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, tsuki, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tsuki, 0 );
setEffRotateKey( spep_3 + 180, tsuki, 0 );
setEffAlphaKey( spep_3 + 0, tsuki, 255 );
setEffAlphaKey( spep_3 + 180, tsuki, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 180, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_3 + 0, shuchusen3, 180, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 28, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 140, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 180, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 180, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 29, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 139, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 140, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 154, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 155, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 180, shuchusen3, 0 );


hit = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ヒットエフェクト(ef_003)
setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, hit, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 180, hit, 0 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 180, hit, 255 );

a = 3;
b = -20

-- ** キャラ ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 172 -a,  1,  0);

changeAnime( spep_3 + 0, 1, 108);
changeAnime( spep_3 + 142 - a,  1, 106);
setShakeChara( spep_3,  1,  180,  10);

setMoveKey( spep_3 + 0, 1, -119.1, 0.1 , 0 );
--setMoveKey( spep_3 -a + 10, 1, -119.1, 0.1 , 0 );
setMoveKey( spep_3 -a + 12, 1, -29.1+b, 70.1 , 0 );
setMoveKey( spep_3 -a + 14, 1, 60.9+b, 140.1 , 0 );
setMoveKey( spep_3 -a + 16, 1, -19.1+b, 110.1 , 0 );
setMoveKey( spep_3 -a + 18, 1, -99.1+b, 80.1 , 0 );
setMoveKey( spep_3 -a + 20, 1, -29.1+b, 100.1 , 0 );
setMoveKey( spep_3 -a + 22, 1, 40.9+b, 120.1 , 0 );
setMoveKey( spep_3 -a + 24, 1, -9.1+b, 110.1 , 0 );
setMoveKey( spep_3 -a + 26, 1, -59.1+b, 100.1 , 0 );
setMoveKey( spep_3 -a + 28, 1, -29.1+b, 120.1 , 0 );
setMoveKey( spep_3 -a + 30, 1, 0.9+b, 140.1 , 0 );
setMoveKey( spep_3 -a + 32, 1, -19.1+b, 130.1 , 0 );
setMoveKey( spep_3 -a + 34, 1, -39.1+b, 120.1 , 0 );
setMoveKey( spep_3 -a + 36, 1, -24.1+b, 125.1 , 0 );
setMoveKey( spep_3 -a + 38, 1, -9.1+b, 130.1 , 0 );
setMoveKey( spep_3 -a + 40, 1, -14.1+b, 135.1 , 0 );
setMoveKey( spep_3 -a + 42, 1, -19.1+b, 140.1 , 0 );
setMoveKey( spep_3 -a + 44, 1, -20.5+b, 141.6 , 0 );
setMoveKey( spep_3 -a + 46, 1, -18.5+b, 140.2 , 0 );
setMoveKey( spep_3 -a + 48, 1, -17.1+b, 139.4 , 0 );
setMoveKey( spep_3 -a + 50, 1, -16.4+b, 139.3 , 0 );
setMoveKey( spep_3 -a + 52, 1, -16.5+b, 140.1 , 0 );
setMoveKey( spep_3 -a + 54, 1, -17.5+b, 141.9 , 0 );
setMoveKey( spep_3 -a + 56, 1, -15.8+b, 141.4 , 0 );
setMoveKey( spep_3 -a + 58, 1, -15.5+b, 142.6 , 0 );
setMoveKey( spep_3 -a + 60, 1, -12.9+b, 142 , 0 );
setMoveKey( spep_3 -a + 62, 1, -12.7+b, 143.7 , 0 );
setMoveKey( spep_3 -a + 64, 1, -11.2+b, 144.9 , 0 );
setMoveKey( spep_3 -a + 66, 1, -9.2+b, 146.2 , 0 );
setMoveKey( spep_3 -a + 68, 1, -7.9-40, 148.9 , 0 );
setMoveKey( spep_3 -a + 70, 1, -4.2-40, 150.7 , 0 );

setMoveKey( spep_3 -a + 72, 1, 0.1-60, 153.2 , 0 );
setMoveKey( spep_3 -a + 74, 1, -0.2-60, 158.3 , 0 );
setMoveKey( spep_3 -a + 75, 1, -0.2-60, 158.3 , 0 );

setMoveKey( spep_3 -a + 76, 1, 45.7-60, 161.1 , 0 );
setMoveKey( spep_3 -a + 77, 1, 45.7-60, 161.1 , 0 );
setMoveKey( spep_3 -a + 78, 1, 73.2-40, 153.9 , 0 );
setMoveKey( spep_3 -a + 79, 1, 73.2-40, 153.9 , 0 );

setMoveKey( spep_3 -a + 80, 1, -369.6, 189 , 0 );
setMoveKey( spep_3 -a + 82, 1, -342, 172.5 , 0 );
setMoveKey( spep_3 -a + 84, 1, -323.4, 179.5 , 0 );
setMoveKey( spep_3 -a + 86, 1, -315.9, 186.6 , 0 );
setMoveKey( spep_3 -a + 88, 1, -321.7, 178.7 , 0 );
setMoveKey( spep_3 -a + 90, 1, -321.6, 161 , 0 );
setMoveKey( spep_3 -a + 92, 1, -328.8, 146.1 , 0 );
setMoveKey( spep_3 -a + 94, 1, -336.9, 130.3 , 0 );
setMoveKey( spep_3 -a + 96, 1, -344.1, 136.9 , 0 );
setMoveKey( spep_3 -a + 98, 1, -343.2, 145.2 , 0 );
setMoveKey( spep_3 -a + 100, 1, -339.9, 154 , 0 );
setMoveKey( spep_3 -a + 102, 1, -336.2, 161 , 0 );
setMoveKey( spep_3 -a + 104, 1, -331.9, 167.4 , 0 );
setMoveKey( spep_3 -a + 106, 1, -326.3, 174.5 , 0 );
setMoveKey( spep_3 -a + 108, 1, -320.7, 180 , 0 );
setMoveKey( spep_3 -a + 110, 1, -314, 185.9 , 0 );
setMoveKey( spep_3 -a + 112, 1, -307.4, 190.1 , 0 );
setMoveKey( spep_3 -a + 114, 1, -300, 193.5 , 0 );
setMoveKey( spep_3 -a + 116, 1, -291.9, 197.4 , 0 );
setMoveKey( spep_3 -a + 118, 1, -283.7, 199 , 0 );
setMoveKey( spep_3 -a + 120, 1, -274.9, 199.7 , 0 );
setMoveKey( spep_3 -a + 122, 1, -265.5, 200.3 , 0 );
setMoveKey( spep_3 -a + 124, 1, -256.2, 198.5 , 0 );
setMoveKey( spep_3 -a + 126, 1, -246.3, 196.6 , 0 );
setMoveKey( spep_3 -a + 128, 1, -237, 192.1 , 0 );
setMoveKey( spep_3 -a + 130, 1, -226.2, 160.8 , 0 );
setMoveKey( spep_3 -a + 132, 1, -229.3, 127.2 , 0 );
setMoveKey( spep_3 -a + 134, 1, -242.6, 87.2 , 0 );
setMoveKey( spep_3 -a + 136, 1, -257.4, 42.3 , 0 );
setMoveKey( spep_3 -a + 138, 1, -269.8, -3.1 , 0 );
setMoveKey( spep_3 -a + 141, 1, -302.3, -31 , 0 );
setMoveKey( spep_3 -a + 142, 1, 445.6, 214 , 0 );
setMoveKey( spep_3 -a + 144, 1, 624.5, 31 , 0 );
setMoveKey( spep_3 -a + 146, 1, 725.9, -176.4 , 0 );
setMoveKey( spep_3 -a + 148, 1, 733, -159.9 , 0 );
setMoveKey( spep_3 -a + 150, 1, 735.7, -111.8 , 0 );
setMoveKey( spep_3 -a + 152, 1, 789, -158 , 0 );
setMoveKey( spep_3 -a + 154, 1, 832.2, -197.4 , 0 );
setMoveKey( spep_3 -a + 156, 1, 873.6, -230.5 , 0 );
setMoveKey( spep_3 -a + 158, 1, 912.2, -259 , 0 );
setMoveKey( spep_3 -a + 160, 1, 948.3, -284.4 , 0 );
setMoveKey( spep_3 -a + 162, 1, 977.2, -305.4 , 0 );
setMoveKey( spep_3 -a + 164, 1, 1007.7, -324.9 , 0 );
setMoveKey( spep_3 -a + 166, 1, 1036.3, -340.6 , 0 );
setMoveKey( spep_3 -a + 168, 1, 1058.1, -352.2 , 0 );
setMoveKey( spep_3 -a + 170, 1, 1083.9, -363.5 , 0 );
setMoveKey( spep_3 -a + 172, 1, 1096.6, -356.9 , 0 );
setMoveKey( spep_3 -a + 174, 1, 1109, -351.3 , 0 );
setMoveKey( spep_3 -a + 176, 1, 1116.5, -342.8 , 0 );
setMoveKey( spep_3 -a + 179, 1, 1129.1, -336 , 0 );

--[[
setMoveKey( spep_3 -a + 180, 1, 86, -299.8 , 0 );
setMoveKey( spep_3 -a + 182, 1, 81.7, -264.4 , 0 );
setMoveKey( spep_3 -a + 184, 1, 77.5, -229.1 , 0 );
setMoveKey( spep_3 -a + 186, 1, 73.2, -193.7 , 0 );
setMoveKey( spep_3 -a + 188, 1, 69, -158.3 , 0 );
setMoveKey( spep_3 -a + 190, 1, 64.7, -122.9 , 0 );
setMoveKey( spep_3 -a + 192, 1, 60.5, -87.5 , 0 );
setMoveKey( spep_3 -a + 194, 1, 56.2, -52.1 , 0 );
setMoveKey( spep_3 -a + 196, 1, 52, -16.7 , 0 );
setMoveKey( spep_3 -a + 198, 1, 47.7, -15.8 , 0 );
setMoveKey( spep_3 -a + 200, 1, 43.5, -14.8 , 0 );
setMoveKey( spep_3 -a + 202, 1, 39.2, -13.9 , 0 );
setMoveKey( spep_3 -a + 204, 1, 35, -12.9 , 0 );
setMoveKey( spep_3 -a + 206, 1, 30.7, -12 , 0 );
setMoveKey( spep_3 -a + 209, 1, 26.5, -11.1 , 0 );

setMoveKey( spep_3 - a + 330, 1, -8.2, 7.8 , 0 );
setMoveKey( spep_3 - a + 332, 1, -6.9, 7.2 , 0 );
setMoveKey( spep_3 - a + 334, 1, -5.7, 6.6 , 0 );
setMoveKey( spep_3 - a + 336, 1, -4.4, 6 , 0 );
setMoveKey( spep_3 - a + 338, 1, -3.2, 5.4 , 0 );
setMoveKey( spep_3 - a + 340, 1, -1.9, 4.8 , 0 );
setMoveKey( spep_3 - a + 342, 1, -0.7, 4.2 , 0 );
setMoveKey( spep_3 - a + 344, 1, 0.6, 3.6 , 0 );
setMoveKey( spep_3 - a + 346, 1, 1.8, 3 , 0 );
setMoveKey( spep_3 - a + 348, 1, 3.1, 2.4 , 0 );
setMoveKey( spep_3 - a + 350, 1, 4.3, 1.8 , 0 );
setMoveKey( spep_3 - a + 352, 1, 5.6, 1.2 , 0 );
setMoveKey( spep_3 - a + 354, 1, 6.8, 0.6 , 0 );
setMoveKey( spep_3 - a + 356, 1, 8.1, 0 , 0 );
setMoveKey( spep_3 - a + 358, 1, 9.3, -0.6 , 0 );
setMoveKey( spep_3 - a + 360, 1, 10.6, -1.2 , 0 );
setMoveKey( spep_3 - a + 362, 1, 11.8, -1.8 , 0 );
setMoveKey( spep_3 - a + 364, 1, 13.1, -2.4 , 0 );
setMoveKey( spep_3 - a + 366, 1, 14.3, -3 , 0 );

]]


setScaleKey( spep_3  + 0, 1, 3.8, 3.8 );
--setScaleKey( spep_3 -a + 44, 1, 3.8, 3.8 );
setScaleKey( spep_3 -a + 46, 1, 3.78, 3.78 );
setScaleKey( spep_3 -a + 48, 1, 3.76, 3.76 );
setScaleKey( spep_3 -a + 50, 1, 3.74, 3.74 );
setScaleKey( spep_3 -a + 52, 1, 3.72, 3.72 );
setScaleKey( spep_3 -a + 54, 1, 3.7, 3.7 );
setScaleKey( spep_3 -a + 56, 1, 3.67, 3.67 );
setScaleKey( spep_3 -a + 58, 1, 3.63, 3.63 );
setScaleKey( spep_3 -a + 60, 1, 3.57, 3.57 );
setScaleKey( spep_3 -a + 62, 1, 3.52, 3.52 );
setScaleKey( spep_3 -a + 64, 1, 3.44, 3.44 );
setScaleKey( spep_3 -a + 66, 1, 3.34, 3.34 );
setScaleKey( spep_3 -a + 68, 1, 3.23, 3.23 );
setScaleKey( spep_3 -a + 70, 1, 3.08, 3.08 );
setScaleKey( spep_3 -a + 72, 1, 2.89, 2.89 );
setScaleKey( spep_3 -a + 74, 1, 2.85, 2.85 );
setScaleKey( spep_3 -a + 76, 1, 2.76, 2.76 );
setScaleKey( spep_3 -a + 78, 1, 2.66, 2.66 );
setScaleKey( spep_3 -a + 80, 1, 2.55, 2.55 );
setScaleKey( spep_3 -a + 82, 1, 2.41, 2.41 );
setScaleKey( spep_3 -a + 84, 1, 2.3, 2.3 );
setScaleKey( spep_3 -a + 86, 1, 2.18, 2.18 );
setScaleKey( spep_3 -a + 88, 1, 2.07, 2.07 );
setScaleKey( spep_3 -a + 90, 1, 1.94, 1.94 );
setScaleKey( spep_3 -a + 92, 1, 1.82, 1.82 );
setScaleKey( spep_3 -a + 94, 1, 1.71, 1.71 );
setScaleKey( spep_3 -a + 128, 1, 1.71, 1.71 );
setScaleKey( spep_3 -a + 130, 1, 1.75, 1.75 );
setScaleKey( spep_3 -a + 132, 1, 1.77, 1.77 );
setScaleKey( spep_3 -a + 134, 1, 1.81, 1.81 );
setScaleKey( spep_3 -a + 136, 1, 1.84, 1.84 );
setScaleKey( spep_3 -a + 138, 1, 1.86, 1.86 );
setScaleKey( spep_3 -a + 141, 1, 1.9, 1.9 );
setScaleKey( spep_3 -a + 142, 1, 2.09, 2.09 );
setScaleKey( spep_3 -a + 144, 1, 2.23, 2.23 );
setScaleKey( spep_3 -a + 146, 1, 2.34, 2.34 );
setScaleKey( spep_3 -a + 148, 1, 2.33, 2.33 );
setScaleKey( spep_3 -a + 150, 1, 2.29, 2.29 );
setScaleKey( spep_3 -a + 152, 1, 2.37, 2.37 );
setScaleKey( spep_3 -a + 154, 1, 2.42, 2.42 );
setScaleKey( spep_3 -a + 156, 1, 2.5, 2.5 );
setScaleKey( spep_3 -a + 158, 1, 2.56, 2.56 );
setScaleKey( spep_3 -a + 160, 1, 2.62, 2.62 );
setScaleKey( spep_3 -a + 162, 1, 2.65, 2.65 );
setScaleKey( spep_3 -a + 164, 1, 2.71, 2.71 );
setScaleKey( spep_3 -a + 166, 1, 2.76, 2.76 );
setScaleKey( spep_3 -a + 168, 1, 2.78, 2.78 );
setScaleKey( spep_3 -a + 170, 1, 2.82, 2.82 );
setScaleKey( spep_3 -a + 172, 1, 2.85, 2.85 );
setScaleKey( spep_3 -a + 174, 1, 2.88, 2.88 );
setScaleKey( spep_3 -a + 176, 1, 2.88, 2.88 );
setScaleKey( spep_3 -a + 179, 1, 2.9, 2.9 );

--[[
setScaleKey( spep_3 -a + 180, 1, 5.13, 5.13 );
setScaleKey( spep_3 -a + 182, 1, 4.88, 4.88 );
setScaleKey( spep_3 -a + 184, 1, 4.63, 4.63 );
setScaleKey( spep_3 -a + 186, 1, 4.38, 4.38 );
setScaleKey( spep_3 -a + 188, 1, 4.14, 4.14 );
setScaleKey( spep_3 -a + 190, 1, 3.89, 3.89 );
setScaleKey( spep_3 -a + 192, 1, 3.64, 3.64 );
setScaleKey( spep_3 -a + 194, 1, 3.39, 3.39 );
setScaleKey( spep_3 -a + 196, 1, 3.14, 3.14 );
setScaleKey( spep_3 -a + 198, 1, 2.89, 2.89 );
setScaleKey( spep_3 -a + 200, 1, 2.64, 2.64 );
setScaleKey( spep_3 -a + 202, 1, 2.4, 2.4 );
setScaleKey( spep_3 -a + 204, 1, 2.15, 2.15 );
setScaleKey( spep_3 -a + 206, 1, 1.9, 1.9 );
setScaleKey( spep_3 -a + 209, 1, 1.65, 1.65 );

setScaleKey( spep_3 - a + 330, 1, 1.78, 1.78 );
setScaleKey( spep_3 - a + 366, 1, 0.32, 0.36 );

]]

setRotateKey( spep_3 + 0, 1, -33 );
setRotateKey( spep_3 -a + 74, 1, -33 );
setRotateKey( spep_3 -a + 75, 1, -33 );
setRotateKey( spep_3 -a + 76, 1, -22.7 );
setRotateKey( spep_3 -a + 77, 1, -22.7 );
setRotateKey( spep_3 -a + 78, 1, -12.5 );
setRotateKey( spep_3 -a + 79, 1, -12.5 );
setRotateKey( spep_3 -a + 80, 1, -87.1 );
setRotateKey( spep_3 -a + 82, 1, -106.7 );
setRotateKey( spep_3 -a + 84, 1, -106.3 );
setRotateKey( spep_3 -a + 86, 1, -106 );
setRotateKey( spep_3 -a + 88, 1, -105.9 );
setRotateKey( spep_3 -a + 90, 1, -105.7 );
setRotateKey( spep_3 -a + 92, 1, -105.6 );
setRotateKey( spep_3 -a + 94, 1, -105.6 );
setRotateKey( spep_3 -a + 96, 1, -106.4 );
setRotateKey( spep_3 -a + 98, 1, -107.2 );
setRotateKey( spep_3 -a + 100, 1, -108 );
setRotateKey( spep_3 -a + 102, 1, -108.9 );
setRotateKey( spep_3 -a + 104, 1, -109.8 );
setRotateKey( spep_3 -a + 106, 1, -110.5 );
setRotateKey( spep_3 -a + 108, 1, -111.4 );
setRotateKey( spep_3 -a + 110, 1, -112.2 );
setRotateKey( spep_3 -a + 112, 1, -113 );
setRotateKey( spep_3 -a + 114, 1, -113.9 );
setRotateKey( spep_3 -a + 116, 1, -114.7 );
setRotateKey( spep_3 -a + 118, 1, -115.6 );
setRotateKey( spep_3 -a + 120, 1, -116.4 );
setRotateKey( spep_3 -a + 122, 1, -117.2 );
setRotateKey( spep_3 -a + 124, 1, -118.1 );
setRotateKey( spep_3 -a + 126, 1, -118.9 );
setRotateKey( spep_3 -a + 128, 1, -119.7 );
setRotateKey( spep_3 -a + 130, 1, -121.7 );
setRotateKey( spep_3 -a + 132, 1, -130.1 );
setRotateKey( spep_3 -a + 134, 1, -138.6 );
setRotateKey( spep_3 -a + 136, 1, -147.1 );
setRotateKey( spep_3 -a + 138, 1, -155.5 );
setRotateKey( spep_3 -a + 141, 1, -164 );
setRotateKey( spep_3 -a + 142, 1, -10.2 );
setRotateKey( spep_3 -a + 144, 1, 5.5 );
setRotateKey( spep_3 -a + 146, 1, 19.4 );
setRotateKey( spep_3 -a + 148, 1, 19.3 );
setRotateKey( spep_3 -a + 150, 1, 18 );
setRotateKey( spep_3 -a + 152, 1, 22.3 );
setRotateKey( spep_3 -a + 154, 1, 25.7 );
setRotateKey( spep_3 -a + 156, 1, 28.6 );
setRotateKey( spep_3 -a + 158, 1, 31 );
setRotateKey( spep_3 -a + 160, 1, 33.1 );
setRotateKey( spep_3 -a + 162, 1, 34.8 );
setRotateKey( spep_3 -a + 164, 1, 36.3 );
setRotateKey( spep_3 -a + 166, 1, 37.5 );
setRotateKey( spep_3 -a + 168, 1, 38.5 );
setRotateKey( spep_3 -a + 170, 1, 39.3 );
setRotateKey( spep_3 -a + 172, 1, 38.8 );
setRotateKey( spep_3 -a + 174, 1, 38.4 );
setRotateKey( spep_3 -a + 176, 1, 37.9 );
setRotateKey( spep_3 -a + 179, 1, 37.4 );
setRotateKey( spep_3 -a + 180, 1, 0 );

--[[
setRotateKey( spep_3 -a + 209, 1, 0 );
setRotateKey( spep_3 -a + 366, 1, 0 );
]]

haikei = entryEffect( spep_3 + 0, SP_05,  0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_3 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, haikei, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, haikei, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, haikei, 0 );
setEffRotateKey( spep_3 + 180, haikei, 0 );
setEffAlphaKey( spep_3 + 0, haikei, 255 );
setEffAlphaKey( spep_3 + 180, haikei, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 , 1027 );  --刺す
playSe( spep_3+84,  1003);  --傾ける
playSe( spep_3+144,  1004); --投げる

-- ** ホワイトフェード ** --
entryFade( spep_3 + 168, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 180;

------------------------------------------------------
-- 爆発(106F)
------------------------------------------------------
--敵の動き--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 120, 1, 1080 );

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_4+2, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ


bakuha = entryEffect( spep_4 + 0, 153567, 0x80, -1, 0, 0, 0 );  --ヒットエフェクト(ef_003)
setEffMoveKey( spep_4 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuha, 0 );
setEffRotateKey( spep_4 + 120, bakuha, 0 );
setEffAlphaKey( spep_4 + 0, bakuha, 100 );
setEffAlphaKey( spep_4 + 120, bakuha, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_4+2,  SE_11);
playSe( spep_4+8, SE_10);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 100, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 110 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入(96F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 120, 0x80, -1, 0, 0, 0 );  --導入(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 120, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 120, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 120, kamae, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 120, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 120, 20 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 120, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 120, shuchusen1, 1.8, 1.8 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 120, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 120, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

 -- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 26, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 26, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 12 +26,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 12 +26, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 12 +26, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 80 +26, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 12 +26, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 72 +26, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 74 +26, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76 +26, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 78 +26, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 80 +26, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 12 +26, ctgogo, 0 );
setEffRotateKey( spep_0 + 80 +26, ctgogo, 0 );

setEffAlphaKey( spep_0 + 12 +26, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80 +26, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0,  8);  --冒頭
playSe( spep_0 + 12 +26, SE_04 );  --ゴゴゴ

-- ** ホワイトフェード ** --
entryFade( spep_0 + 110, 8, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 120;


------------------------------------------------------
-- 突進(80F)
------------------------------------------------------

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --突進(ef_002)
setEffMoveKey( spep_1 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_1 + 80, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tosshin, 0 );
setEffRotateKey( spep_1 + 80, tosshin, 0 );
setEffAlphaKey( spep_1 + 0, tosshin, 255 );
setEffAlphaKey( spep_1 + 80, tosshin, 255 );

-- ** 書き文字 ** --
ct_don = entryEffectLife( spep_1 + 8,  10019, 36, 0x100, -1, 0, -259.5, -297.7 );  --ドン
setEffMoveKey( spep_1 + 8, ct_don, -259.5, -297.7, 0 );
setEffMoveKey( spep_1 + 10, ct_don, -238.7, -208.3 , 0 );
setEffMoveKey( spep_1 + 12, ct_don, -200.2, -117.6 , 0 );
setEffMoveKey( spep_1 + 14, ct_don, -168.6, -27.3 , 0 );
setEffMoveKey( spep_1 + 16, ct_don, -151.8, 68.3 , 0 );
setEffMoveKey( spep_1 + 18, ct_don, -109.3, 150.4 , 0 );
setEffMoveKey( spep_1 + 20, ct_don, -96.2, 235.6 , 0 );
setEffMoveKey( spep_1 + 22, ct_don, -69.5, 323.8 , 0 );
setEffMoveKey( spep_1 + 24, ct_don, -59.9, 347.2 , 0 );
setEffMoveKey( spep_1 + 26, ct_don, -53.3, 340.7 , 0 );
setEffMoveKey( spep_1 + 28, ct_don, -59.4, 371.7 , 0 );
setEffMoveKey( spep_1 + 30, ct_don, -45.5, 369.6 , 0 );
setEffMoveKey( spep_1 + 32, ct_don, -54.2, 385.7 , 0 );
setEffMoveKey( spep_1 + 34, ct_don, -41.5, 388.5 , 0 );
setEffMoveKey( spep_1 + 36, ct_don, -39.8, 406.2 , 0 );
setEffMoveKey( spep_1 + 38, ct_don, -37.2, 396.5 , 0 );
setEffMoveKey( spep_1 + 40, ct_don, -42.6, 415.9 , 0 );
setEffMoveKey( spep_1 + 42, ct_don, -34.5, 409.6 , 0 );
setEffMoveKey( spep_1 + 44, ct_don, -31.9, 414.2 , 0 );

setEffScaleKey( spep_1 + 8, ct_don, 0.8, 0.8 );
setEffScaleKey( spep_1 + 10, ct_don, 1.2, 1.2 );
setEffScaleKey( spep_1 + 12, ct_don, 1.6, 1.6 );
setEffScaleKey( spep_1 + 14, ct_don, 2, 2 );
setEffScaleKey( spep_1 + 16, ct_don, 2.18, 2.18 );
setEffScaleKey( spep_1 + 18, ct_don, 2.36, 2.36 );
setEffScaleKey( spep_1 + 20, ct_don, 2.54, 2.54 );
setEffScaleKey( spep_1 + 22, ct_don, 2.72, 2.72 );
setEffScaleKey( spep_1 + 24, ct_don, 2.88, 2.88 );
setEffScaleKey( spep_1 + 26, ct_don, 3.05, 3.05 );
setEffScaleKey( spep_1 + 28, ct_don, 3.21, 3.21 );
setEffScaleKey( spep_1 + 30, ct_don, 3.37, 3.37 );
setEffScaleKey( spep_1 + 32, ct_don, 3.54, 3.54 );
setEffScaleKey( spep_1 + 34, ct_don, 3.7, 3.7 );
setEffScaleKey( spep_1 + 36, ct_don, 3.76, 3.76 );
setEffScaleKey( spep_1 + 38, ct_don, 3.82, 3.82 );
setEffScaleKey( spep_1 + 40, ct_don, 3.88, 3.88 );
setEffScaleKey( spep_1 + 42, ct_don, 3.94, 3.94 );
setEffScaleKey( spep_1 + 44, ct_don, 4, 4 );

setEffRotateKey( spep_1 + 8, ct_don, -16 );
setEffRotateKey( spep_1 + 10, ct_don, -13.3 );
setEffRotateKey( spep_1 + 12, ct_don, -10.7 );
setEffRotateKey( spep_1 + 14, ct_don, -8 );
setEffRotateKey( spep_1 + 16, ct_don, -8.5 );
setEffRotateKey( spep_1 + 18, ct_don, -9 );
setEffRotateKey( spep_1 + 20, ct_don, -9.5 );
setEffRotateKey( spep_1 + 22, ct_don, -10 );
setEffRotateKey( spep_1 + 24, ct_don, -9.5 );
setEffRotateKey( spep_1 + 26, ct_don, -9.1 );
setEffRotateKey( spep_1 + 28, ct_don, -8.6 );
setEffRotateKey( spep_1 + 30, ct_don, -8.2 );
setEffRotateKey( spep_1 + 32, ct_don, -7.7 );
setEffRotateKey( spep_1 + 34, ct_don, -7.3 );
setEffRotateKey( spep_1 + 36, ct_don, -7 );
setEffRotateKey( spep_1 + 38, ct_don, -6.8 );
setEffRotateKey( spep_1 + 40, ct_don, -6.5 );
setEffRotateKey( spep_1 + 42, ct_don, -6.3 );
setEffRotateKey( spep_1 + 44, ct_don, -6 );

setEffAlphaKey( spep_1 + 8, ct_don, 49 );
setEffAlphaKey( spep_1 + 10, ct_don, 118 );
setEffAlphaKey( spep_1 + 12, ct_don, 186 );
setEffAlphaKey( spep_1 + 14, ct_don, 255 );
setEffAlphaKey( spep_1 + 34, ct_don, 255 );
setEffAlphaKey( spep_1 + 36, ct_don, 204 );
setEffAlphaKey( spep_1 + 38, ct_don, 153 );
setEffAlphaKey( spep_1 + 40, ct_don, 102 );
setEffAlphaKey( spep_1 + 42, ct_don, 51 );
setEffAlphaKey( spep_1 + 44, ct_don, 0 );

playSe(  spep_1,  9);  --突進

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 32; --エンドフェイズのフレーム数を置き換える

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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 70, 8, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 **  --
spep_2 = spep_1 +80;



--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 90;



------------------------------------------------------
-- 突き刺す(400F)
------------------------------------------------------

-- ** 書き文字　** --
ct_zuo = entryEffectLife( spep_3 + 2,  10012, 18, 0x100, -1, 0, -123.8, 86.8 );  --ズオッ
setEffMoveKey( spep_3 + 2, ct_zuo, -123.8, 86.8 , 0 );
setEffMoveKey( spep_3 + 4, ct_zuo, -156.6, 108.8 , 0 );
setEffMoveKey( spep_3 + 6, ct_zuo, -167, 129.6 , 0 );
setEffMoveKey( spep_3 + 8, ct_zuo, -184.2, 147.7 , 0 );
setEffMoveKey( spep_3 + 10, ct_zuo, -176.5, 151.1 , 0 );
setEffMoveKey( spep_3 + 12, ct_zuo, -195.7, 159.6 , 0 );
setEffMoveKey( spep_3 + 14, ct_zuo, -196.3, 179.1 , 0 );
setEffMoveKey( spep_3 + 16, ct_zuo, -201.2, 177.1 , 0 );
setEffMoveKey( spep_3 + 18, ct_zuo, -213.2, 201.2 , 0 );
setEffMoveKey( spep_3 + 20, ct_zuo, -219.6, 211.9 , 0 );

setEffScaleKey( spep_3 + 2, ct_zuo, 1.67, 1.67 );
setEffScaleKey( spep_3 + 4, ct_zuo, 2.27, 2.27 );
setEffScaleKey( spep_3 + 6, ct_zuo, 2.86, 2.86 );
setEffScaleKey( spep_3 + 8, ct_zuo, 2.83, 2.83 );
setEffScaleKey( spep_3 + 10, ct_zuo, 2.81, 2.81 );
setEffScaleKey( spep_3 + 12, ct_zuo, 2.78, 2.78 );
setEffScaleKey( spep_3 + 14, ct_zuo, 2.76, 2.76 );
setEffScaleKey( spep_3 + 16, ct_zuo, 2.74, 2.74 );
setEffScaleKey( spep_3 + 18, ct_zuo, 2.71, 2.71 );
setEffScaleKey( spep_3 + 20, ct_zuo, 2.69, 2.69 );

setEffRotateKey( spep_3 + 2, ct_zuo, -33 );
setEffRotateKey( spep_3 + 20, ct_zuo, -33 );

setEffAlphaKey( spep_3 + 2, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 10, ct_zuo, 255 );
setEffAlphaKey( spep_3 + 12, ct_zuo, 204 );
setEffAlphaKey( spep_3 + 14, ct_zuo, 153 );
setEffAlphaKey( spep_3 + 16, ct_zuo, 102 );
setEffAlphaKey( spep_3 + 18, ct_zuo, 51 );
setEffAlphaKey( spep_3 + 20, ct_zuo, 0 );


-- ** エフェクト等 ** --
tsuki = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --フリーザ(ef_004)
setEffMoveKey( spep_3 + 0, tsuki, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, tsuki, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tsuki, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, tsuki, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tsuki, 0 );
setEffRotateKey( spep_3 + 180, tsuki, 0 );
setEffAlphaKey( spep_3 + 0, tsuki, 255 );
setEffAlphaKey( spep_3 + 180, tsuki, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 180, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_3 + 0, shuchusen3, 180, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 28, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 140, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 180, shuchusen3, 1.5, 1.5 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 180, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 29, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 139, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 140, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 154, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 155, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 180, shuchusen3, 0 );


hit = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ヒットエフェクト(ef_003)
setEffMoveKey( spep_3 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, hit, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit, 0 );
setEffRotateKey( spep_3 + 180, hit, 0 );
setEffAlphaKey( spep_3 + 0, hit, 255 );
setEffAlphaKey( spep_3 + 180, hit, 255 );

a = 3;
b = -20

-- ** キャラ ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 172 -a,  1,  0);

changeAnime( spep_3 + 0, 1, 108);
changeAnime( spep_3 + 142 - a,  1, 106);
setShakeChara( spep_3,  1,  180,  10);

setMoveKey( spep_3 + 0, 1, -119.1, 0.1 , 0 );
--setMoveKey( spep_3 -a + 10, 1, -119.1, 0.1 , 0 );
setMoveKey( spep_3 -a + 12, 1, -29.1+b, 70.1 , 0 );
setMoveKey( spep_3 -a + 14, 1, 60.9+b, 140.1 , 0 );
setMoveKey( spep_3 -a + 16, 1, -19.1+b, 110.1 , 0 );
setMoveKey( spep_3 -a + 18, 1, -99.1+b, 80.1 , 0 );
setMoveKey( spep_3 -a + 20, 1, -29.1+b, 100.1 , 0 );
setMoveKey( spep_3 -a + 22, 1, 40.9+b, 120.1 , 0 );
setMoveKey( spep_3 -a + 24, 1, -9.1+b, 110.1 , 0 );
setMoveKey( spep_3 -a + 26, 1, -59.1+b, 100.1 , 0 );
setMoveKey( spep_3 -a + 28, 1, -29.1+b, 120.1 , 0 );
setMoveKey( spep_3 -a + 30, 1, 0.9+b, 140.1 , 0 );
setMoveKey( spep_3 -a + 32, 1, -19.1+b, 130.1 , 0 );
setMoveKey( spep_3 -a + 34, 1, -39.1+b, 120.1 , 0 );
setMoveKey( spep_3 -a + 36, 1, -24.1+b, 125.1 , 0 );
setMoveKey( spep_3 -a + 38, 1, -9.1+b, 130.1 , 0 );
setMoveKey( spep_3 -a + 40, 1, -14.1+b, 135.1 , 0 );
setMoveKey( spep_3 -a + 42, 1, -19.1+b, 140.1 , 0 );
setMoveKey( spep_3 -a + 44, 1, -20.5+b, 141.6 , 0 );
setMoveKey( spep_3 -a + 46, 1, -18.5+b, 140.2 , 0 );
setMoveKey( spep_3 -a + 48, 1, -17.1+b, 139.4 , 0 );
setMoveKey( spep_3 -a + 50, 1, -16.4+b, 139.3 , 0 );
setMoveKey( spep_3 -a + 52, 1, -16.5+b, 140.1 , 0 );
setMoveKey( spep_3 -a + 54, 1, -17.5+b, 141.9 , 0 );
setMoveKey( spep_3 -a + 56, 1, -15.8+b, 141.4 , 0 );
setMoveKey( spep_3 -a + 58, 1, -15.5+b, 142.6 , 0 );
setMoveKey( spep_3 -a + 60, 1, -12.9+b, 142 , 0 );
setMoveKey( spep_3 -a + 62, 1, -12.7+b, 143.7 , 0 );
setMoveKey( spep_3 -a + 64, 1, -11.2+b, 144.9 , 0 );
setMoveKey( spep_3 -a + 66, 1, -9.2+b, 146.2 , 0 );
setMoveKey( spep_3 -a + 68, 1, -7.9-40, 148.9 , 0 );
setMoveKey( spep_3 -a + 70, 1, -4.2-40, 150.7 , 0 );

setMoveKey( spep_3 -a + 72, 1, 0.1-60, 153.2 , 0 );
setMoveKey( spep_3 -a + 74, 1, -0.2-60, 158.3 , 0 );
setMoveKey( spep_3 -a + 75, 1, -0.2-60, 158.3 , 0 );

setMoveKey( spep_3 -a + 76, 1, 45.7-60, 161.1 , 0 );
setMoveKey( spep_3 -a + 77, 1, 45.7-60, 161.1 , 0 );
setMoveKey( spep_3 -a + 78, 1, 73.2-40, 153.9 , 0 );
setMoveKey( spep_3 -a + 79, 1, 73.2-40, 153.9 , 0 );

setMoveKey( spep_3 -a + 80, 1, -369.6, 189 , 0 );
setMoveKey( spep_3 -a + 82, 1, -342, 172.5 , 0 );
setMoveKey( spep_3 -a + 84, 1, -323.4, 179.5 , 0 );
setMoveKey( spep_3 -a + 86, 1, -315.9, 186.6 , 0 );
setMoveKey( spep_3 -a + 88, 1, -321.7, 178.7 , 0 );
setMoveKey( spep_3 -a + 90, 1, -321.6, 161 , 0 );
setMoveKey( spep_3 -a + 92, 1, -328.8, 146.1 , 0 );
setMoveKey( spep_3 -a + 94, 1, -336.9, 130.3 , 0 );
setMoveKey( spep_3 -a + 96, 1, -344.1, 136.9 , 0 );
setMoveKey( spep_3 -a + 98, 1, -343.2, 145.2 , 0 );
setMoveKey( spep_3 -a + 100, 1, -339.9, 154 , 0 );
setMoveKey( spep_3 -a + 102, 1, -336.2, 161 , 0 );
setMoveKey( spep_3 -a + 104, 1, -331.9, 167.4 , 0 );
setMoveKey( spep_3 -a + 106, 1, -326.3, 174.5 , 0 );
setMoveKey( spep_3 -a + 108, 1, -320.7, 180 , 0 );
setMoveKey( spep_3 -a + 110, 1, -314, 185.9 , 0 );
setMoveKey( spep_3 -a + 112, 1, -307.4, 190.1 , 0 );
setMoveKey( spep_3 -a + 114, 1, -300, 193.5 , 0 );
setMoveKey( spep_3 -a + 116, 1, -291.9, 197.4 , 0 );
setMoveKey( spep_3 -a + 118, 1, -283.7, 199 , 0 );
setMoveKey( spep_3 -a + 120, 1, -274.9, 199.7 , 0 );
setMoveKey( spep_3 -a + 122, 1, -265.5, 200.3 , 0 );
setMoveKey( spep_3 -a + 124, 1, -256.2, 198.5 , 0 );
setMoveKey( spep_3 -a + 126, 1, -246.3, 196.6 , 0 );
setMoveKey( spep_3 -a + 128, 1, -237, 192.1 , 0 );
setMoveKey( spep_3 -a + 130, 1, -226.2, 160.8 , 0 );
setMoveKey( spep_3 -a + 132, 1, -229.3, 127.2 , 0 );
setMoveKey( spep_3 -a + 134, 1, -242.6, 87.2 , 0 );
setMoveKey( spep_3 -a + 136, 1, -257.4, 42.3 , 0 );
setMoveKey( spep_3 -a + 138, 1, -269.8, -3.1 , 0 );
setMoveKey( spep_3 -a + 141, 1, -302.3, -31 , 0 );
setMoveKey( spep_3 -a + 142, 1, 445.6, 214 , 0 );
setMoveKey( spep_3 -a + 144, 1, 624.5, 31 , 0 );
setMoveKey( spep_3 -a + 146, 1, 725.9, -176.4 , 0 );
setMoveKey( spep_3 -a + 148, 1, 733, -159.9 , 0 );
setMoveKey( spep_3 -a + 150, 1, 735.7, -111.8 , 0 );
setMoveKey( spep_3 -a + 152, 1, 789, -158 , 0 );
setMoveKey( spep_3 -a + 154, 1, 832.2, -197.4 , 0 );
setMoveKey( spep_3 -a + 156, 1, 873.6, -230.5 , 0 );
setMoveKey( spep_3 -a + 158, 1, 912.2, -259 , 0 );
setMoveKey( spep_3 -a + 160, 1, 948.3, -284.4 , 0 );
setMoveKey( spep_3 -a + 162, 1, 977.2, -305.4 , 0 );
setMoveKey( spep_3 -a + 164, 1, 1007.7, -324.9 , 0 );
setMoveKey( spep_3 -a + 166, 1, 1036.3, -340.6 , 0 );
setMoveKey( spep_3 -a + 168, 1, 1058.1, -352.2 , 0 );
setMoveKey( spep_3 -a + 170, 1, 1083.9, -363.5 , 0 );
setMoveKey( spep_3 -a + 172, 1, 1096.6, -356.9 , 0 );
setMoveKey( spep_3 -a + 174, 1, 1109, -351.3 , 0 );
setMoveKey( spep_3 -a + 176, 1, 1116.5, -342.8 , 0 );
setMoveKey( spep_3 -a + 179, 1, 1129.1, -336 , 0 );

--[[
setMoveKey( spep_3 -a + 180, 1, 86, -299.8 , 0 );
setMoveKey( spep_3 -a + 182, 1, 81.7, -264.4 , 0 );
setMoveKey( spep_3 -a + 184, 1, 77.5, -229.1 , 0 );
setMoveKey( spep_3 -a + 186, 1, 73.2, -193.7 , 0 );
setMoveKey( spep_3 -a + 188, 1, 69, -158.3 , 0 );
setMoveKey( spep_3 -a + 190, 1, 64.7, -122.9 , 0 );
setMoveKey( spep_3 -a + 192, 1, 60.5, -87.5 , 0 );
setMoveKey( spep_3 -a + 194, 1, 56.2, -52.1 , 0 );
setMoveKey( spep_3 -a + 196, 1, 52, -16.7 , 0 );
setMoveKey( spep_3 -a + 198, 1, 47.7, -15.8 , 0 );
setMoveKey( spep_3 -a + 200, 1, 43.5, -14.8 , 0 );
setMoveKey( spep_3 -a + 202, 1, 39.2, -13.9 , 0 );
setMoveKey( spep_3 -a + 204, 1, 35, -12.9 , 0 );
setMoveKey( spep_3 -a + 206, 1, 30.7, -12 , 0 );
setMoveKey( spep_3 -a + 209, 1, 26.5, -11.1 , 0 );

setMoveKey( spep_3 - a + 330, 1, -8.2, 7.8 , 0 );
setMoveKey( spep_3 - a + 332, 1, -6.9, 7.2 , 0 );
setMoveKey( spep_3 - a + 334, 1, -5.7, 6.6 , 0 );
setMoveKey( spep_3 - a + 336, 1, -4.4, 6 , 0 );
setMoveKey( spep_3 - a + 338, 1, -3.2, 5.4 , 0 );
setMoveKey( spep_3 - a + 340, 1, -1.9, 4.8 , 0 );
setMoveKey( spep_3 - a + 342, 1, -0.7, 4.2 , 0 );
setMoveKey( spep_3 - a + 344, 1, 0.6, 3.6 , 0 );
setMoveKey( spep_3 - a + 346, 1, 1.8, 3 , 0 );
setMoveKey( spep_3 - a + 348, 1, 3.1, 2.4 , 0 );
setMoveKey( spep_3 - a + 350, 1, 4.3, 1.8 , 0 );
setMoveKey( spep_3 - a + 352, 1, 5.6, 1.2 , 0 );
setMoveKey( spep_3 - a + 354, 1, 6.8, 0.6 , 0 );
setMoveKey( spep_3 - a + 356, 1, 8.1, 0 , 0 );
setMoveKey( spep_3 - a + 358, 1, 9.3, -0.6 , 0 );
setMoveKey( spep_3 - a + 360, 1, 10.6, -1.2 , 0 );
setMoveKey( spep_3 - a + 362, 1, 11.8, -1.8 , 0 );
setMoveKey( spep_3 - a + 364, 1, 13.1, -2.4 , 0 );
setMoveKey( spep_3 - a + 366, 1, 14.3, -3 , 0 );

]]


setScaleKey( spep_3  + 0, 1, 3.8, 3.8 );
--setScaleKey( spep_3 -a + 44, 1, 3.8, 3.8 );
setScaleKey( spep_3 -a + 46, 1, 3.78, 3.78 );
setScaleKey( spep_3 -a + 48, 1, 3.76, 3.76 );
setScaleKey( spep_3 -a + 50, 1, 3.74, 3.74 );
setScaleKey( spep_3 -a + 52, 1, 3.72, 3.72 );
setScaleKey( spep_3 -a + 54, 1, 3.7, 3.7 );
setScaleKey( spep_3 -a + 56, 1, 3.67, 3.67 );
setScaleKey( spep_3 -a + 58, 1, 3.63, 3.63 );
setScaleKey( spep_3 -a + 60, 1, 3.57, 3.57 );
setScaleKey( spep_3 -a + 62, 1, 3.52, 3.52 );
setScaleKey( spep_3 -a + 64, 1, 3.44, 3.44 );
setScaleKey( spep_3 -a + 66, 1, 3.34, 3.34 );
setScaleKey( spep_3 -a + 68, 1, 3.23, 3.23 );
setScaleKey( spep_3 -a + 70, 1, 3.08, 3.08 );
setScaleKey( spep_3 -a + 72, 1, 2.89, 2.89 );
setScaleKey( spep_3 -a + 74, 1, 2.85, 2.85 );
setScaleKey( spep_3 -a + 76, 1, 2.76, 2.76 );
setScaleKey( spep_3 -a + 78, 1, 2.66, 2.66 );
setScaleKey( spep_3 -a + 80, 1, 2.55, 2.55 );
setScaleKey( spep_3 -a + 82, 1, 2.41, 2.41 );
setScaleKey( spep_3 -a + 84, 1, 2.3, 2.3 );
setScaleKey( spep_3 -a + 86, 1, 2.18, 2.18 );
setScaleKey( spep_3 -a + 88, 1, 2.07, 2.07 );
setScaleKey( spep_3 -a + 90, 1, 1.94, 1.94 );
setScaleKey( spep_3 -a + 92, 1, 1.82, 1.82 );
setScaleKey( spep_3 -a + 94, 1, 1.71, 1.71 );
setScaleKey( spep_3 -a + 128, 1, 1.71, 1.71 );
setScaleKey( spep_3 -a + 130, 1, 1.75, 1.75 );
setScaleKey( spep_3 -a + 132, 1, 1.77, 1.77 );
setScaleKey( spep_3 -a + 134, 1, 1.81, 1.81 );
setScaleKey( spep_3 -a + 136, 1, 1.84, 1.84 );
setScaleKey( spep_3 -a + 138, 1, 1.86, 1.86 );
setScaleKey( spep_3 -a + 141, 1, 1.9, 1.9 );
setScaleKey( spep_3 -a + 142, 1, 2.09, 2.09 );
setScaleKey( spep_3 -a + 144, 1, 2.23, 2.23 );
setScaleKey( spep_3 -a + 146, 1, 2.34, 2.34 );
setScaleKey( spep_3 -a + 148, 1, 2.33, 2.33 );
setScaleKey( spep_3 -a + 150, 1, 2.29, 2.29 );
setScaleKey( spep_3 -a + 152, 1, 2.37, 2.37 );
setScaleKey( spep_3 -a + 154, 1, 2.42, 2.42 );
setScaleKey( spep_3 -a + 156, 1, 2.5, 2.5 );
setScaleKey( spep_3 -a + 158, 1, 2.56, 2.56 );
setScaleKey( spep_3 -a + 160, 1, 2.62, 2.62 );
setScaleKey( spep_3 -a + 162, 1, 2.65, 2.65 );
setScaleKey( spep_3 -a + 164, 1, 2.71, 2.71 );
setScaleKey( spep_3 -a + 166, 1, 2.76, 2.76 );
setScaleKey( spep_3 -a + 168, 1, 2.78, 2.78 );
setScaleKey( spep_3 -a + 170, 1, 2.82, 2.82 );
setScaleKey( spep_3 -a + 172, 1, 2.85, 2.85 );
setScaleKey( spep_3 -a + 174, 1, 2.88, 2.88 );
setScaleKey( spep_3 -a + 176, 1, 2.88, 2.88 );
setScaleKey( spep_3 -a + 179, 1, 2.9, 2.9 );

--[[
setScaleKey( spep_3 -a + 180, 1, 5.13, 5.13 );
setScaleKey( spep_3 -a + 182, 1, 4.88, 4.88 );
setScaleKey( spep_3 -a + 184, 1, 4.63, 4.63 );
setScaleKey( spep_3 -a + 186, 1, 4.38, 4.38 );
setScaleKey( spep_3 -a + 188, 1, 4.14, 4.14 );
setScaleKey( spep_3 -a + 190, 1, 3.89, 3.89 );
setScaleKey( spep_3 -a + 192, 1, 3.64, 3.64 );
setScaleKey( spep_3 -a + 194, 1, 3.39, 3.39 );
setScaleKey( spep_3 -a + 196, 1, 3.14, 3.14 );
setScaleKey( spep_3 -a + 198, 1, 2.89, 2.89 );
setScaleKey( spep_3 -a + 200, 1, 2.64, 2.64 );
setScaleKey( spep_3 -a + 202, 1, 2.4, 2.4 );
setScaleKey( spep_3 -a + 204, 1, 2.15, 2.15 );
setScaleKey( spep_3 -a + 206, 1, 1.9, 1.9 );
setScaleKey( spep_3 -a + 209, 1, 1.65, 1.65 );

setScaleKey( spep_3 - a + 330, 1, 1.78, 1.78 );
setScaleKey( spep_3 - a + 366, 1, 0.32, 0.36 );

]]

setRotateKey( spep_3 + 0, 1, -33 );
setRotateKey( spep_3 -a + 74, 1, -33 );
setRotateKey( spep_3 -a + 75, 1, -33 );
setRotateKey( spep_3 -a + 76, 1, -22.7 );
setRotateKey( spep_3 -a + 77, 1, -22.7 );
setRotateKey( spep_3 -a + 78, 1, -12.5 );
setRotateKey( spep_3 -a + 79, 1, -12.5 );
setRotateKey( spep_3 -a + 80, 1, -87.1 );
setRotateKey( spep_3 -a + 82, 1, -106.7 );
setRotateKey( spep_3 -a + 84, 1, -106.3 );
setRotateKey( spep_3 -a + 86, 1, -106 );
setRotateKey( spep_3 -a + 88, 1, -105.9 );
setRotateKey( spep_3 -a + 90, 1, -105.7 );
setRotateKey( spep_3 -a + 92, 1, -105.6 );
setRotateKey( spep_3 -a + 94, 1, -105.6 );
setRotateKey( spep_3 -a + 96, 1, -106.4 );
setRotateKey( spep_3 -a + 98, 1, -107.2 );
setRotateKey( spep_3 -a + 100, 1, -108 );
setRotateKey( spep_3 -a + 102, 1, -108.9 );
setRotateKey( spep_3 -a + 104, 1, -109.8 );
setRotateKey( spep_3 -a + 106, 1, -110.5 );
setRotateKey( spep_3 -a + 108, 1, -111.4 );
setRotateKey( spep_3 -a + 110, 1, -112.2 );
setRotateKey( spep_3 -a + 112, 1, -113 );
setRotateKey( spep_3 -a + 114, 1, -113.9 );
setRotateKey( spep_3 -a + 116, 1, -114.7 );
setRotateKey( spep_3 -a + 118, 1, -115.6 );
setRotateKey( spep_3 -a + 120, 1, -116.4 );
setRotateKey( spep_3 -a + 122, 1, -117.2 );
setRotateKey( spep_3 -a + 124, 1, -118.1 );
setRotateKey( spep_3 -a + 126, 1, -118.9 );
setRotateKey( spep_3 -a + 128, 1, -119.7 );
setRotateKey( spep_3 -a + 130, 1, -121.7 );
setRotateKey( spep_3 -a + 132, 1, -130.1 );
setRotateKey( spep_3 -a + 134, 1, -138.6 );
setRotateKey( spep_3 -a + 136, 1, -147.1 );
setRotateKey( spep_3 -a + 138, 1, -155.5 );
setRotateKey( spep_3 -a + 141, 1, -164 );
setRotateKey( spep_3 -a + 142, 1, -10.2 );
setRotateKey( spep_3 -a + 144, 1, 5.5 );
setRotateKey( spep_3 -a + 146, 1, 19.4 );
setRotateKey( spep_3 -a + 148, 1, 19.3 );
setRotateKey( spep_3 -a + 150, 1, 18 );
setRotateKey( spep_3 -a + 152, 1, 22.3 );
setRotateKey( spep_3 -a + 154, 1, 25.7 );
setRotateKey( spep_3 -a + 156, 1, 28.6 );
setRotateKey( spep_3 -a + 158, 1, 31 );
setRotateKey( spep_3 -a + 160, 1, 33.1 );
setRotateKey( spep_3 -a + 162, 1, 34.8 );
setRotateKey( spep_3 -a + 164, 1, 36.3 );
setRotateKey( spep_3 -a + 166, 1, 37.5 );
setRotateKey( spep_3 -a + 168, 1, 38.5 );
setRotateKey( spep_3 -a + 170, 1, 39.3 );
setRotateKey( spep_3 -a + 172, 1, 38.8 );
setRotateKey( spep_3 -a + 174, 1, 38.4 );
setRotateKey( spep_3 -a + 176, 1, 37.9 );
setRotateKey( spep_3 -a + 179, 1, 37.4 );
setRotateKey( spep_3 -a + 180, 1, 0 );

--[[
setRotateKey( spep_3 -a + 209, 1, 0 );
setRotateKey( spep_3 -a + 366, 1, 0 );
]]

haikei = entryEffect( spep_3 + 0, SP_05,  0x80, -1, 0, 0, 0 );  --背景(ef_005)
setEffMoveKey( spep_3 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_3 + 180, haikei, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, haikei, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, haikei, 0 );
setEffRotateKey( spep_3 + 180, haikei, 0 );
setEffAlphaKey( spep_3 + 0, haikei, 255 );
setEffAlphaKey( spep_3 + 180, haikei, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 , 1027 );  --刺す
playSe( spep_3+84,  1003);  --傾ける
playSe( spep_3+144,  1004); --投げる

-- ** ホワイトフェード ** --
entryFade( spep_3 + 168, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 180;

------------------------------------------------------
-- 爆発(106F)
------------------------------------------------------
--敵の動き--
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_4 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_4 + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_4 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 120, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 2, 1, 105 );
setRotateKey( spep_4 + 4, 1, 240 );
setRotateKey( spep_4 + 6, 1, 405 );
setRotateKey( spep_4 + 8, 1, 600 );
setRotateKey( spep_4 + 10, 1, 825 );
setRotateKey( spep_4 + 12, 1, 1080 );
setRotateKey( spep_4 + 120, 1, 1080 );

--書き文字--
ctGa = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( spep_4 + 14, ctGa, 30, 10);

setEffMoveKey( spep_4 + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( spep_4 + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctGa, 2, 2 );
setEffScaleKey( spep_4+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_4+17, cGa, 2.6, 2.6);
setEffScaleKey( spep_4+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_4+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_4+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_4+112, ctGa, 3.8, 3.8);

setEffRotateKey( spep_4 + 14, ctGa, -40 );
setEffRotateKey( spep_4 + 16, ctGa, -31 );
setEffRotateKey( spep_4 + 18, ctGa, -40 );
setEffRotateKey( spep_4 + 20, ctGa, -31 );
setEffRotateKey( spep_4 + 22, ctGa, -40 );
setEffRotateKey( spep_4 + 24, ctGa, -31);
setEffRotateKey( spep_4 + 26, ctGa, -40 );
setEffRotateKey( spep_4 + 28, ctGa, -31);
setEffRotateKey( spep_4 + 30, ctGa, -40 );

setEffAlphaKey( spep_4 + 14, ctGa, 255 );

--集中線（白）
shuchusen = entryEffectLife( spep_4+2, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( spep_4+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


--ひび割れ
hibi = entryEffect( spep_4+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ


-- ** 音 ** --
playSe( spep_4+2,  SE_11);
playSe( spep_4+8, SE_10);

bakuha = entryEffect( spep_4 + 0, 153567, 0x80, -1, 0, 0, 0 );  --ヒットエフェクト(ef_003)
setEffMoveKey( spep_4 + 0, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 120, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 120, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bakuha, 0 );
setEffRotateKey( spep_4 + 120, bakuha, 0 );
setEffAlphaKey( spep_4 + 0, bakuha, 100 );
setEffAlphaKey( spep_4 + 120, bakuha, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 100, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 110 );
end

