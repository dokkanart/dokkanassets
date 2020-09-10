--超サイヤ人孫悟空_瞬間移動かめはめ波

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
SP_01 = 153769; --瞬間移動
SP_02 = 153770; --かめはめ波発射
SP_03 = 153773; --背景

--敵側
SP_01x = 153771; --瞬間移動
SP_02x = 153772; --かめはめ波発射

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
-- 瞬間移動(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idou = entryEffectLife( spep_0 + 0, SP_01, 176, 0x100, -1, 0, 0, 0 );  --瞬間移動(ef_001)
setEffMoveKey( spep_0 + 0, idou, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, idou, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, idou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou, 0 );
setEffRotateKey( spep_0 + 176, idou, 0 );
setEffAlphaKey( spep_0 + 0, idou, 255 );
setEffAlphaKey( spep_0 + 176, idou, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 132, 906, 36, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 132, shuchusen1, 36, 20 );

setEffMoveKey( spep_0 + 132, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 132, shuchusen1, 1.06, 1.48 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.06, 1.48 );

setEffRotateKey( spep_0 + 132, shuchusen1, 0 );
setEffRotateKey( spep_0 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 132, shuchusen1, 45 );
setEffAlphaKey( spep_0 + 134, shuchusen1, 89 );
setEffAlphaKey( spep_0 + 136, shuchusen1, 134 );
setEffAlphaKey( spep_0 + 138, shuchusen1, 178 );
setEffAlphaKey( spep_0 + 160, shuchusen1, 178 );
setEffAlphaKey( spep_0 + 162, shuchusen1, 134 );
setEffAlphaKey( spep_0 + 164, shuchusen1, 89 );
setEffAlphaKey( spep_0 + 166, shuchusen1, 45 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 0 );

spep_x = spep_0 + 30;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

ctshun = entryEffectLife( spep_0 + 130 -3,  10011, 26, 0x100, -1, 0, 19.4, 328.2 ); --シュン
setEffMoveKey( spep_0 + 130 -3, ctshun, 19.4, 328.2 , 0 );
setEffMoveKey( spep_0 + 132 -3, ctshun, 19.6, 328 , 0 );
setEffMoveKey( spep_0 + 134 -3, ctshun, 19.7, 328 , 0 );
setEffMoveKey( spep_0 + 136 -3, ctshun, 19.7, 327.9 , 0 );
setEffMoveKey( spep_0 + 138 -3, ctshun, 19.8, 327.8 , 0 );
setEffMoveKey( spep_0 + 140 -3, ctshun, 19.9, 327.8 , 0 );
setEffMoveKey( spep_0 + 142 -3, ctshun, 19.9, 327.7 , 0 );
setEffMoveKey( spep_0 + 144 -3, ctshun, 20, 327.6 , 0 );
setEffMoveKey( spep_0 + 146 -3, ctshun, 19.9, 327 , 0 );
setEffMoveKey( spep_0 + 148 -3, ctshun, 19.9, 326.4 , 0 );
setEffMoveKey( spep_0 + 150 -3, ctshun, 19.8, 325.8 , 0 );
setEffMoveKey( spep_0 + 152 -3, ctshun, 19.7, 325.2 , 0 );
setEffMoveKey( spep_0 + 154 -3, ctshun, 19.7, 324.6 , 0 );
setEffMoveKey( spep_0 + 156 -3, ctshun, 19.6, 324 , 0 );

setEffScaleKey( spep_0 + 130 -3, ctshun, 0.87, 0.87 );
setEffScaleKey( spep_0 + 132 -3, ctshun, 2.91, 2.91 );
setEffScaleKey( spep_0 + 134 -3, ctshun, 2.78, 2.78 );
setEffScaleKey( spep_0 + 136 -3, ctshun, 2.64, 2.64 );
setEffScaleKey( spep_0 + 138 -3, ctshun, 2.6, 2.6 );
setEffScaleKey( spep_0 + 140 -3, ctshun, 2.56, 2.56 );
setEffScaleKey( spep_0 + 142 -3, ctshun, 2.52, 2.52 );
setEffScaleKey( spep_0 + 144 -3, ctshun, 2.48, 2.48 );
setEffScaleKey( spep_0 + 146 -3, ctshun, 2.47, 2.47 );
setEffScaleKey( spep_0 + 148 -3, ctshun, 2.46, 2.46 );
setEffScaleKey( spep_0 + 150 -3, ctshun, 2.45, 2.45 );
setEffScaleKey( spep_0 + 152 -3, ctshun, 2.43, 2.43 );
setEffScaleKey( spep_0 + 154 -3, ctshun, 2.42, 2.42 );
setEffScaleKey( spep_0 + 156 -3, ctshun, 2.41, 2.41 );

setEffRotateKey( spep_0 + 130 -3, ctshun, 16 );
setEffRotateKey( spep_0 + 156 -3, ctshun, 16 );

setEffAlphaKey( spep_0 + 130 -3, ctshun, 255 );
setEffAlphaKey( spep_0 + 144 -3, ctshun, 255 );
setEffAlphaKey( spep_0 + 146 -3, ctshun, 213 );
setEffAlphaKey( spep_0 + 148 -3, ctshun, 170 );
setEffAlphaKey( spep_0 + 150 -3, ctshun, 128 );
setEffAlphaKey( spep_0 + 152 -3, ctshun, 85 );
setEffAlphaKey( spep_0 + 154 -3, ctshun, 42 );
setEffAlphaKey( spep_0 + 156 -3, ctshun, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_x + 16, SE_04 );  --ゴゴゴ
playSe( spep_0 + 130 -6, 1109 );  --瞬間移動

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波発射(178F)
------------------------------------------------------

-- ** エフェクト等 ** --
kame = entryEffectLife( spep_2 + 0, SP_02, 178, 0x80, -1, 0, 0, 0 );  --かめはめ波発射(ef_002)
setEffMoveKey( spep_2 + 0, kame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, kame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, kame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kame, 0 );
setEffRotateKey( spep_2 + 178, kame, 0 );
setEffAlphaKey( spep_2 + 0, kame, 255 );
setEffAlphaKey( spep_2 + 178, kame, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 58.5, 15 , 0 );
setMoveKey( spep_2 + 4 -3, 1, 74.6, 5.9 , 0 );
setMoveKey( spep_2 + 6 -3, 1, 82.7, 1.3 , 0 );
setMoveKey( spep_2 + 8 -3, 1, 90.8, -3.3 , 0 );
setMoveKey( spep_2 + 10 -3, 1, 98.9, -7.9 , 0 );
setMoveKey( spep_2 + 12 -3, 1, 101, -9.2 , 0 );
setMoveKey( spep_2 + 14 -3, 1, 103.1, -10.5 , 0 );
setMoveKey( spep_2 + 16 -3, 1, 105.2, -11.8 , 0 );
setMoveKey( spep_2 + 18 -3, 1, 107.3, -13 , 0 );
setMoveKey( spep_2 + 20 -3, 1, 109.5, -14.4 , 0 );
setMoveKey( spep_2 + 22 -3, 1, 111.6, -15.6 , 0 );
setMoveKey( spep_2 + 24 -3, 1, 113.8, -16.9 , 0 );
setMoveKey( spep_2 + 26 -3, 1, 115.9, -18.2 , 0 );
setMoveKey( spep_2 + 28 -3, 1, 117.9, -19.5 , 0 );
setMoveKey( spep_2 + 30 -3, 1, 120.1, -20.9 , 0 );
setMoveKey( spep_2 + 32 -3, 1, 122.2, -22.1 , 0 );
setMoveKey( spep_2 + 34 -3, 1, 124.4, -23.4 , 0 );
setMoveKey( spep_2 + 36 -3, 1, 126.6, -24.7 , 0 );
setMoveKey( spep_2 + 38 -3, 1, 128.8, -26 , 0 );
setMoveKey( spep_2 + 40 -3, 1, 130.9, -27.3 , 0 );
setMoveKey( spep_2 + 42 -3, 1, 133, -28.6 , 0 );
setMoveKey( spep_2 + 44 -3, 1, 135.2, -30 , 0 );
setMoveKey( spep_2 + 46 -3, 1, 137.3, -31.2 , 0 );
setMoveKey( spep_2 + 48 -3, 1, 139.5, -32.6 , 0 );
setMoveKey( spep_2 + 50 -3, 1, 141.7, -33.8 , 0 );
setMoveKey( spep_2 + 52 -3, 1, 143.9, -35.2 , 0 );
setMoveKey( spep_2 + 54 -3, 1, 146, -36.4 , 0 );
setMoveKey( spep_2 + 56 -3, 1, 148.2, -37.8 , 0 );
setMoveKey( spep_2 + 58 -3, 1, 150.4, -39.2 , 0 );
setMoveKey( spep_2 + 60 -3, 1, 151.8, -40 , 0 );

setScaleKey( spep_2 + 0, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 4 -3, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 6 -3, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 8 -3, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 10 -3, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 12 -3, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 14 -3, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 16 -3, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 18 -3, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 20 -3, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 22 -3, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 24 -3, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 26 -3, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 28 -3, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 30 -3, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 32 -3, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 34 -3, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 36 -3, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 38 -3, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 40 -3, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 42 -3, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 44 -3, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 46 -3, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 48 -3, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 50 -3, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 52 -3, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 54 -3, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 56 -3, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 58 -3, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 60 -3, 1, 1.77, 1.77 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 142, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 38 -10, 1109 );  --瞬間移動
setSeVolume( spep_2 + 38 -10, 1109, 60 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 165.8, -77.7 , 0 );
setMoveKey( SP_dodge + 2, 1, 180.6, -117.8 , 0 );
setMoveKey( SP_dodge + 4, 1, 196.4, -160.4 , 0 );
setMoveKey( SP_dodge + 6, 1, 213, -205.3 , 0 );
setMoveKey( SP_dodge + 8, 1, 230.6, -252.8 , 0 );
setMoveKey( SP_dodge + 10, 1, 249.1, -302.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.81, 1.81 );
setScaleKey( SP_dodge + 2, 1, 1.85, 1.85 );
setScaleKey( SP_dodge + 4, 1, 1.89, 1.89 );
setScaleKey( SP_dodge + 6, 1, 1.94, 1.94 );
setScaleKey( SP_dodge + 8, 1, 1.99, 1.99 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 書き文字エントリー ** --
ctex = entryEffectLife( spep_2 + 60 -3,  10000, 40, 0x100, -1, 0, 114.9, 277.4 );  --!!
setEffMoveKey( spep_2 + 60 -3, ctex, 114.9, 277.4 , 0 );
setEffMoveKey( spep_2 + 62 -3, ctex, 143.1, 253.5 , 0 );
setEffMoveKey( spep_2 + 64 -3, ctex, 154.4, 245.9 , 0 );
setEffMoveKey( spep_2 + 66 -3, ctex, 177, 190.7 , 0 );
setEffMoveKey( spep_2 + 68 -3, ctex, 177.8, 154.7 , 0 );
setEffMoveKey( spep_2 + 70 -3, ctex, 201.5, 105.6 , 0 );
setEffMoveKey( spep_2 + 72 -3, ctex, 220.9, 66.5 , 0 );
setEffMoveKey( spep_2 + 74 -3, ctex, 255.1, 9.6 , 0 );
setEffMoveKey( spep_2 + 76 -3, ctex, 270.6, -31.9 , 0 );
setEffMoveKey( spep_2 + 78 -3, ctex, 308.8, -86.4 , 0 );
setEffMoveKey( spep_2 + 80 -3, ctex, 326.8, -123.8 , 0 );
setEffMoveKey( spep_2 + 82 -3, ctex, 362.4, -182.4 , 0 );
setEffMoveKey( spep_2 + 84 -3, ctex, 375.9, -222.8 , 0 );
setEffMoveKey( spep_2 + 86 -3, ctex, 408.7, -258.9 , 0 );
setEffMoveKey( spep_2 + 88 -3, ctex, 418.7, -276 , 0 );
setEffMoveKey( spep_2 + 90 -3, ctex, 447.7, -315.9 , 0 );
setEffMoveKey( spep_2 + 92 -3, ctex, 453.9, -336.8 , 0 );
setEffMoveKey( spep_2 + 94 -3, ctex, 486.7, -372.9 , 0 );
setEffMoveKey( spep_2 + 96 -3, ctex, 496.7, -390 , 0 );
setEffMoveKey( spep_2 + 98 -3, ctex, 525.7, -429.9 , 0 );
setEffMoveKey( spep_2 + 100 -3, ctex, 531.9, -450.9 , 0 );

setEffScaleKey( spep_2 + 60 -3, ctex, 1.84, 1.84 );
setEffScaleKey( spep_2 + 62 -3, ctex, 3.02, 3.02 );
setEffScaleKey( spep_2 + 64 -3, ctex, 4.2, 4.2 );
setEffScaleKey( spep_2 + 66 -3, ctex, 3.73, 3.73 );
setEffScaleKey( spep_2 + 68 -3, ctex, 3.27, 3.27 );
setEffScaleKey( spep_2 + 70 -3, ctex, 2.8, 2.8 );
setEffScaleKey( spep_2 + 72 -3, ctex, 2.94, 2.94 );
setEffScaleKey( spep_2 + 74 -3, ctex, 3.09, 3.09 );
setEffScaleKey( spep_2 + 76 -3, ctex, 3.23, 3.23 );
setEffScaleKey( spep_2 + 78 -3, ctex, 3.37, 3.37 );
setEffScaleKey( spep_2 + 80 -3, ctex, 3.51, 3.51 );
setEffScaleKey( spep_2 + 82 -3, ctex, 3.66, 3.66 );
setEffScaleKey( spep_2 + 84 -3, ctex, 3.8, 3.8 );
setEffScaleKey( spep_2 + 100 -3, ctex, 3.8, 3.8 );

setEffRotateKey( spep_2 + 60 -3, ctex, 0 );
setEffRotateKey( spep_2 + 100 -3, ctex, 0 );

setEffAlphaKey( spep_2 + 60 -3, ctex, 255 );
setEffAlphaKey( spep_2 + 100 -3, ctex, 255 );

ctzuo = entryEffectLife( spep_2 + 110 -3,  10012, 68, 0x100, -1, 0, 87, 300 );  --ズオッ
setEffMoveKey( spep_2 + 110 -3, ctzuo, 87, 300 , 0 );
setEffMoveKey( spep_2 + 112 -3, ctzuo, 120.8, 336.5 , 0 );
setEffMoveKey( spep_2 + 114 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 116 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 118 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 120 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 122 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 124 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 126 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 128 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 130 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 132 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 134 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 136 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 138 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 140 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 142 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 144 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 146 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 148 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 150 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 152 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 154 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 156 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 158 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 160 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 162 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 164 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 166 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 168 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 170 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 172 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 174 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 176 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 178 -3, ctzuo, 139.1, 388.9 , 0 );

setEffScaleKey( spep_2 + 110 -3, ctzuo, 0.29, 0.29 );
setEffScaleKey( spep_2 + 112 -3, ctzuo, 1.33, 1.33 );
setEffScaleKey( spep_2 + 114 -3, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2 + 178 -3, ctzuo, 2.35, 2.35 );

setEffRotateKey( spep_2 + 110 -3, ctzuo, 28.2 );
setEffRotateKey( spep_2 + 112 -3, ctzuo, 27.8 );
setEffRotateKey( spep_2 + 114 -3, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 178 -3, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 110 -3, ctzuo, 255 );
setEffAlphaKey( spep_2 + 178 -3, ctzuo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 178, 1, 0 );

setMoveKey( spep_2 + 62 -3, 1, 165.8, -77.7 , 0 );
setMoveKey( spep_2 + 64 -3, 1, 180.6, -117.8 , 0 );
setMoveKey( spep_2 + 66 -3, 1, 196.4, -160.4 , 0 );
setMoveKey( spep_2 + 68 -3, 1, 213, -205.3 , 0 );
setMoveKey( spep_2 + 70 -3, 1, 230.6, -252.8 , 0 );
setMoveKey( spep_2 + 72 -3, 1, 249.1, -302.7 , 0 );
setMoveKey( spep_2 + 74 -3, 1, 268.4, -354.9 , 0 );
setMoveKey( spep_2 + 76 -3, 1, 288.8, -409.6 , 0 );
setMoveKey( spep_2 + 78 -3, 1, 309.9, -466.7 , 0 );
setMoveKey( spep_2 + 80 -3, 1, 332.1, -526.3 , 0 );
setMoveKey( spep_2 + 82 -3, 1, 363.1, -585.7 , 0 );
setMoveKey( spep_2 + 84 -3, 1, 392.1, -641.5 , 0 );
setMoveKey( spep_2 + 86 -3, 1, 419.2, -693.6 , 0 );
setMoveKey( spep_2 + 88 -3, 1, 444.3, -741.8 , 0 );
setMoveKey( spep_2 + 90 -3, 1, 467.5, -786.3 , 0 );
setMoveKey( spep_2 + 92 -3, 1, 488.7, -827 , 0 );
setMoveKey( spep_2 + 94 -3, 1, 508, -864 , 0 );
setMoveKey( spep_2 + 96 -3, 1, 525.2, -897.1 , 0 );
setMoveKey( spep_2 + 98 -3, 1, 540.5, -926.6 , 0 );
setMoveKey( spep_2 + 100 -3, 1, 553.9, -952.4 , 0 );
setMoveKey( spep_2 + 102 -3, 1, 565.2, -974.3 , 0 );
setMoveKey( spep_2 + 104 -3, 1, 574.7, -992.6 , 0 );
setMoveKey( spep_2 + 106 -3, 1, 582.1, -1006.9 , 0 );
setMoveKey( spep_2 + 108 -3, 1, 587.7, -1017.7 , 0 );
setMoveKey( spep_2 + 110 -3, 1, 1500, -2535 , 0 );
setMoveKey( spep_2 + 112 -3, 1, 1159.3, -1996.4 , 0 );
setMoveKey( spep_2 + 114 -3, 1, 815.5, -1441.1 , 0 );
setMoveKey( spep_2 + 116 -3, 1, 666.8, -1186.3 , 0 );
setMoveKey( spep_2 + 118 -3, 1, 528.5, -920.2 , 0 );
setMoveKey( spep_2 + 120 -3, 1, 378.2, -658.8 , 0 );
setMoveKey( spep_2 + 122 -3, 1, 232, -379.6 , 0 );
setMoveKey( spep_2 + 124 -3, 1, 221.9, -369 , 0 );
setMoveKey( spep_2 + 126 -3, 1, 218, -351.6 , 0 );
setMoveKey( spep_2 + 128 -3, 1, 204.3, -340.2 , 0 );
setMoveKey( spep_2 + 130 -3, 1, 203.2, -321.8 , 0 );
setMoveKey( spep_2 + 132 -3, 1, 192.2, -309.5 , 0 );
setMoveKey( spep_2 + 134 -3, 1, 187.5, -290.3 , 0 );
setMoveKey( spep_2 + 136 -3, 1, 176.1, -280.2 , 0 );
setMoveKey( spep_2 + 138 -3, 1, 170.9, -256.9 , 0 );
setMoveKey( spep_2 + 140 -3, 1, 159.1, -242.7 , 0 );
setMoveKey( spep_2 + 142 -3, 1, 153.4, -221.7 , 0 );
setMoveKey( spep_2 + 144 -3, 1, 147.5, -218.1 , 0 );
setMoveKey( spep_2 + 146 -3, 1, 148, -207.9 , 0 );
setMoveKey( spep_2 + 148 -3, 1, 138.7, -207.1 , 0 );
setMoveKey( spep_2 + 150 -3, 1, 135.7, -199.7 , 0 );
setMoveKey( spep_2 + 152 -3, 1, 129.4, -195.3 , 0 );
setMoveKey( spep_2 + 154 -3, 1, 129.5, -184.3 , 0 );
setMoveKey( spep_2 + 156 -3, 1, 126.8, -186.6 , 0 );
setMoveKey( spep_2 + 158 -3, 1, 136.5, -182 , 0 );
setMoveKey( spep_2 + 160 -3, 1, 136.3, -183.4 , 0 );
setMoveKey( spep_2 + 162 -3, 1, 142.2, -177.8 , 0 );
setMoveKey( spep_2 + 164 -3, 1, 138, -178.2 , 0 );
setMoveKey( spep_2 + 166 -3, 1, 146.3, -171.8 , 0 );
setMoveKey( spep_2 + 168 -3, 1, 144.6, -171.2 , 0 );
setMoveKey( spep_2 + 170 -3, 1, 145.8, -167 , 0 );
setMoveKey( spep_2 + 172 -3, 1, 144.6, -170.3 , 0 );
setMoveKey( spep_2 + 174 -3, 1, 147, -157.2 , 0 );
setMoveKey( spep_2 + 176 -3, 1, 143, -151.5 , 0 );
setMoveKey( spep_2 + 178, 1, 146.7, -145.4 , 0 );

setScaleKey( spep_2 + 62 -3, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 64 -3, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 66 -3, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 68 -3, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 70 -3, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 72 -3, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 74 -3, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 76 -3, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 78 -3, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 80 -3, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 82 -3, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 84 -3, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 86 -3, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 88 -3, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 90 -3, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 92 -3, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 94 -3, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 96 -3, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 98 -3, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 100 -3, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 102 -3, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 104 -3, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 106 -3, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 108 -3, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 110 -3, 1, 7.91, 7.91 );
setScaleKey( spep_2 + 112 -3, 1, 6.36, 6.36 );
setScaleKey( spep_2 + 114 -3, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 116 -3, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 118 -3, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 120 -3, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 122 -3, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 124 -3, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 126 -3, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 128 -3, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 130 -3, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 132 -3, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 134 -3, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 136 -3, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 138 -3, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 140 -3, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 142 -3, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 144 -3, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 146 -3, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 150 -3, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 152 -3, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 154 -3, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 156 -3, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 158 -3, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 160 -3, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 162 -3, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 164 -3, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 166 -3, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 168 -3, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 170 -3, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 174 -3, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 176 -3, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 178, 1, 2.09, 2.09 );

setRotateKey( spep_2 + 178, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 110 -3, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 172, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 64, 1072 );  --撃つ前
playSe( spep_2 + 110 -3, 1022 );  --発射

-- ** 次の準備 ** --
spep_3 = spep_2 + 178;

------------------------------------------------------
-- ギャン(62F)
------------------------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_3 + 0,  152969,  62,  0x100,  -1,  0,  0,  0);  --ギャン
setEffMoveKey( spep_3 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 62, gyan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 62, gyan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gyan, 0 );
setEffRotateKey( spep_3 + 62, gyan, 0 );
setEffAlphaKey( spep_3 + 0, gyan, 255 );
setEffAlphaKey( spep_3 + 62, gyan, 255 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_3 + 0,  10006, 62, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_3 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_3 + 62, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_3 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_3 + 6, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_3 + 8, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_3 + 10, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_3 + 12, ctgyan, 3, 3 );
setEffScaleKey( spep_3 + 14, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_3 + 16, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_3 + 18, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_3 + 20, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_3 + 22, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_3 + 24, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_3 + 26, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_3 + 28, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_3 + 30, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_3 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_3 + 34, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_3 + 36, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_3 + 38, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_3 + 40, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_3 + 42, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_3 + 44, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_3 + 46, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_3 + 48, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_3 + 50, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_3 + 52, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_3 + 54, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_3 + 56, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_3 + 58, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_3 + 60, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_3 + 62, ctgyan, 5, 5 );

setEffRotateKey( spep_3 + 0, ctgyan, 0 );
setEffRotateKey( spep_3 + 62, ctgyan, 0 );

setEffAlphaKey( spep_3 + 0, ctgyan, 255 );
setEffAlphaKey( spep_3 + 62, ctgyan, 255 );

-- ** 音 ** --
playSe(spep_3 + 0,SE_09);

-- ** 白フェード ** --
entryFade( spep_3 + 54, 10, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei = entryEffect( spep_4 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, haikei, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, haikei, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 100, haikei, 0 );
setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 100, haikei, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
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
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 瞬間移動(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idou = entryEffectLife( spep_0 + 0, SP_01x, 176, 0x100, -1, 0, 0, 0 );  --瞬間移動(ef_001)
setEffMoveKey( spep_0 + 0, idou, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, idou, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, idou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou, 0 );
setEffRotateKey( spep_0 + 176, idou, 0 );
setEffAlphaKey( spep_0 + 0, idou, 255 );
setEffAlphaKey( spep_0 + 176, idou, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 132, 906, 36, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 132, shuchusen1, 36, 20 );

setEffMoveKey( spep_0 + 132, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 132, shuchusen1, 1.06, 1.48 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.06, 1.48 );

setEffRotateKey( spep_0 + 132, shuchusen1, 0 );
setEffRotateKey( spep_0 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 132, shuchusen1, 45 );
setEffAlphaKey( spep_0 + 134, shuchusen1, 89 );
setEffAlphaKey( spep_0 + 136, shuchusen1, 134 );
setEffAlphaKey( spep_0 + 138, shuchusen1, 178 );
setEffAlphaKey( spep_0 + 160, shuchusen1, 178 );
setEffAlphaKey( spep_0 + 162, shuchusen1, 134 );
setEffAlphaKey( spep_0 + 164, shuchusen1, 89 );
setEffAlphaKey( spep_0 + 166, shuchusen1, 45 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 0 );

spep_x = spep_0 + 30;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

ctshun = entryEffectLife( spep_0 + 130 -3,  10011, 26, 0x100, -1, 0, 19.4, 328.2 ); --シュン
setEffMoveKey( spep_0 + 130 -3, ctshun, 19.4, 328.2 , 0 );
setEffMoveKey( spep_0 + 132 -3, ctshun, 19.6, 328 , 0 );
setEffMoveKey( spep_0 + 134 -3, ctshun, 19.7, 328 , 0 );
setEffMoveKey( spep_0 + 136 -3, ctshun, 19.7, 327.9 , 0 );
setEffMoveKey( spep_0 + 138 -3, ctshun, 19.8, 327.8 , 0 );
setEffMoveKey( spep_0 + 140 -3, ctshun, 19.9, 327.8 , 0 );
setEffMoveKey( spep_0 + 142 -3, ctshun, 19.9, 327.7 , 0 );
setEffMoveKey( spep_0 + 144 -3, ctshun, 20, 327.6 , 0 );
setEffMoveKey( spep_0 + 146 -3, ctshun, 19.9, 327 , 0 );
setEffMoveKey( spep_0 + 148 -3, ctshun, 19.9, 326.4 , 0 );
setEffMoveKey( spep_0 + 150 -3, ctshun, 19.8, 325.8 , 0 );
setEffMoveKey( spep_0 + 152 -3, ctshun, 19.7, 325.2 , 0 );
setEffMoveKey( spep_0 + 154 -3, ctshun, 19.7, 324.6 , 0 );
setEffMoveKey( spep_0 + 156 -3, ctshun, 19.6, 324 , 0 );

setEffScaleKey( spep_0 + 130 -3, ctshun, 0.87, 0.87 );
setEffScaleKey( spep_0 + 132 -3, ctshun, 2.91, 2.91 );
setEffScaleKey( spep_0 + 134 -3, ctshun, 2.78, 2.78 );
setEffScaleKey( spep_0 + 136 -3, ctshun, 2.64, 2.64 );
setEffScaleKey( spep_0 + 138 -3, ctshun, 2.6, 2.6 );
setEffScaleKey( spep_0 + 140 -3, ctshun, 2.56, 2.56 );
setEffScaleKey( spep_0 + 142 -3, ctshun, 2.52, 2.52 );
setEffScaleKey( spep_0 + 144 -3, ctshun, 2.48, 2.48 );
setEffScaleKey( spep_0 + 146 -3, ctshun, 2.47, 2.47 );
setEffScaleKey( spep_0 + 148 -3, ctshun, 2.46, 2.46 );
setEffScaleKey( spep_0 + 150 -3, ctshun, 2.45, 2.45 );
setEffScaleKey( spep_0 + 152 -3, ctshun, 2.43, 2.43 );
setEffScaleKey( spep_0 + 154 -3, ctshun, 2.42, 2.42 );
setEffScaleKey( spep_0 + 156 -3, ctshun, 2.41, 2.41 );

setEffRotateKey( spep_0 + 130 -3, ctshun, -10 );
setEffRotateKey( spep_0 + 156 -3, ctshun, -10 );

setEffAlphaKey( spep_0 + 130 -3, ctshun, 255 );
setEffAlphaKey( spep_0 + 144 -3, ctshun, 255 );
setEffAlphaKey( spep_0 + 146 -3, ctshun, 213 );
setEffAlphaKey( spep_0 + 148 -3, ctshun, 170 );
setEffAlphaKey( spep_0 + 150 -3, ctshun, 128 );
setEffAlphaKey( spep_0 + 152 -3, ctshun, 85 );
setEffAlphaKey( spep_0 + 154 -3, ctshun, 42 );
setEffAlphaKey( spep_0 + 156 -3, ctshun, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_x + 16, SE_04 );  --ゴゴゴ
playSe( spep_0 + 130 -6, 1109 );  --瞬間移動

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波発射(178F)
------------------------------------------------------

-- ** エフェクト等 ** --
kame = entryEffectLife( spep_2 + 0, SP_02x, 178, 0x80, -1, 0, 0, 0 );  --かめはめ波発射(ef_002)
setEffMoveKey( spep_2 + 0, kame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 178, kame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 178, kame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kame, 0 );
setEffRotateKey( spep_2 + 178, kame, 0 );
setEffAlphaKey( spep_2 + 0, kame, 255 );
setEffAlphaKey( spep_2 + 178, kame, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 102 );

setMoveKey( spep_2 + 0, 1, 58.5, 15 , 0 );
setMoveKey( spep_2 + 4 -3, 1, 74.6, 5.9 , 0 );
setMoveKey( spep_2 + 6 -3, 1, 82.7, 1.3 , 0 );
setMoveKey( spep_2 + 8 -3, 1, 90.8, -3.3 , 0 );
setMoveKey( spep_2 + 10 -3, 1, 98.9, -7.9 , 0 );
setMoveKey( spep_2 + 12 -3, 1, 101, -9.2 , 0 );
setMoveKey( spep_2 + 14 -3, 1, 103.1, -10.5 , 0 );
setMoveKey( spep_2 + 16 -3, 1, 105.2, -11.8 , 0 );
setMoveKey( spep_2 + 18 -3, 1, 107.3, -13 , 0 );
setMoveKey( spep_2 + 20 -3, 1, 109.5, -14.4 , 0 );
setMoveKey( spep_2 + 22 -3, 1, 111.6, -15.6 , 0 );
setMoveKey( spep_2 + 24 -3, 1, 113.8, -16.9 , 0 );
setMoveKey( spep_2 + 26 -3, 1, 115.9, -18.2 , 0 );
setMoveKey( spep_2 + 28 -3, 1, 117.9, -19.5 , 0 );
setMoveKey( spep_2 + 30 -3, 1, 120.1, -20.9 , 0 );
setMoveKey( spep_2 + 32 -3, 1, 122.2, -22.1 , 0 );
setMoveKey( spep_2 + 34 -3, 1, 124.4, -23.4 , 0 );
setMoveKey( spep_2 + 36 -3, 1, 126.6, -24.7 , 0 );
setMoveKey( spep_2 + 38 -3, 1, 128.8, -26 , 0 );
setMoveKey( spep_2 + 40 -3, 1, 130.9, -27.3 , 0 );
setMoveKey( spep_2 + 42 -3, 1, 133, -28.6 , 0 );
setMoveKey( spep_2 + 44 -3, 1, 135.2, -30 , 0 );
setMoveKey( spep_2 + 46 -3, 1, 137.3, -31.2 , 0 );
setMoveKey( spep_2 + 48 -3, 1, 139.5, -32.6 , 0 );
setMoveKey( spep_2 + 50 -3, 1, 141.7, -33.8 , 0 );
setMoveKey( spep_2 + 52 -3, 1, 143.9, -35.2 , 0 );
setMoveKey( spep_2 + 54 -3, 1, 146, -36.4 , 0 );
setMoveKey( spep_2 + 56 -3, 1, 148.2, -37.8 , 0 );
setMoveKey( spep_2 + 58 -3, 1, 150.4, -39.2 , 0 );
setMoveKey( spep_2 + 60 -3, 1, 151.8, -40 , 0 );

setScaleKey( spep_2 + 0, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 4 -3, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 6 -3, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 8 -3, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 10 -3, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 12 -3, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 14 -3, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 16 -3, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 18 -3, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 20 -3, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 22 -3, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 24 -3, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 26 -3, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 28 -3, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 30 -3, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 32 -3, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 34 -3, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 36 -3, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 38 -3, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 40 -3, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 42 -3, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 44 -3, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 46 -3, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 48 -3, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 50 -3, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 52 -3, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 54 -3, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 56 -3, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 58 -3, 1, 1.76, 1.76 );
setScaleKey( spep_2 + 60 -3, 1, 1.77, 1.77 );

setRotateKey( spep_2 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 142, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 38 -10, 1109 );  --瞬間移動
setSeVolume( spep_2 + 38 -10, 1109, 60 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 60; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 165.8, -77.7 , 0 );
setMoveKey( SP_dodge + 2, 1, 180.6, -117.8 , 0 );
setMoveKey( SP_dodge + 4, 1, 196.4, -160.4 , 0 );
setMoveKey( SP_dodge + 6, 1, 213, -205.3 , 0 );
setMoveKey( SP_dodge + 8, 1, 230.6, -252.8 , 0 );
setMoveKey( SP_dodge + 10, 1, 249.1, -302.7 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.81, 1.81 );
setScaleKey( SP_dodge + 2, 1, 1.85, 1.85 );
setScaleKey( SP_dodge + 4, 1, 1.89, 1.89 );
setScaleKey( SP_dodge + 6, 1, 1.94, 1.94 );
setScaleKey( SP_dodge + 8, 1, 1.99, 1.99 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 書き文字エントリー ** --
ctex = entryEffectLife( spep_2 + 60 -3,  10000, 40, 0x100, -1, 0, 114.9, 277.4 );  --!!
setEffMoveKey( spep_2 + 60 -3, ctex, 114.9, 277.4 , 0 );
setEffMoveKey( spep_2 + 62 -3, ctex, 143.1, 253.5 , 0 );
setEffMoveKey( spep_2 + 64 -3, ctex, 154.4, 245.9 , 0 );
setEffMoveKey( spep_2 + 66 -3, ctex, 177, 190.7 , 0 );
setEffMoveKey( spep_2 + 68 -3, ctex, 177.8, 154.7 , 0 );
setEffMoveKey( spep_2 + 70 -3, ctex, 201.5, 105.6 , 0 );
setEffMoveKey( spep_2 + 72 -3, ctex, 220.9, 66.5 , 0 );
setEffMoveKey( spep_2 + 74 -3, ctex, 255.1, 9.6 , 0 );
setEffMoveKey( spep_2 + 76 -3, ctex, 270.6, -31.9 , 0 );
setEffMoveKey( spep_2 + 78 -3, ctex, 308.8, -86.4 , 0 );
setEffMoveKey( spep_2 + 80 -3, ctex, 326.8, -123.8 , 0 );
setEffMoveKey( spep_2 + 82 -3, ctex, 362.4, -182.4 , 0 );
setEffMoveKey( spep_2 + 84 -3, ctex, 375.9, -222.8 , 0 );
setEffMoveKey( spep_2 + 86 -3, ctex, 408.7, -258.9 , 0 );
setEffMoveKey( spep_2 + 88 -3, ctex, 418.7, -276 , 0 );
setEffMoveKey( spep_2 + 90 -3, ctex, 447.7, -315.9 , 0 );
setEffMoveKey( spep_2 + 92 -3, ctex, 453.9, -336.8 , 0 );
setEffMoveKey( spep_2 + 94 -3, ctex, 486.7, -372.9 , 0 );
setEffMoveKey( spep_2 + 96 -3, ctex, 496.7, -390 , 0 );
setEffMoveKey( spep_2 + 98 -3, ctex, 525.7, -429.9 , 0 );
setEffMoveKey( spep_2 + 100 -3, ctex, 531.9, -450.9 , 0 );

setEffScaleKey( spep_2 + 60 -3, ctex, 1.84, 1.84 );
setEffScaleKey( spep_2 + 62 -3, ctex, 3.02, 3.02 );
setEffScaleKey( spep_2 + 64 -3, ctex, 4.2, 4.2 );
setEffScaleKey( spep_2 + 66 -3, ctex, 3.73, 3.73 );
setEffScaleKey( spep_2 + 68 -3, ctex, 3.27, 3.27 );
setEffScaleKey( spep_2 + 70 -3, ctex, 2.8, 2.8 );
setEffScaleKey( spep_2 + 72 -3, ctex, 2.94, 2.94 );
setEffScaleKey( spep_2 + 74 -3, ctex, 3.09, 3.09 );
setEffScaleKey( spep_2 + 76 -3, ctex, 3.23, 3.23 );
setEffScaleKey( spep_2 + 78 -3, ctex, 3.37, 3.37 );
setEffScaleKey( spep_2 + 80 -3, ctex, 3.51, 3.51 );
setEffScaleKey( spep_2 + 82 -3, ctex, 3.66, 3.66 );
setEffScaleKey( spep_2 + 84 -3, ctex, 3.8, 3.8 );
setEffScaleKey( spep_2 + 100 -3, ctex, 3.8, 3.8 );

setEffRotateKey( spep_2 + 60 -3, ctex, 0 );
setEffRotateKey( spep_2 + 100 -3, ctex, 0 );

setEffAlphaKey( spep_2 + 60 -3, ctex, 255 );
setEffAlphaKey( spep_2 + 100 -3, ctex, 255 );

ctzuo = entryEffectLife( spep_2 + 110 -3,  10012, 68, 0x100, -1, 0, 87, 300 );  --ズオッ
setEffMoveKey( spep_2 + 110 -3, ctzuo, 87, 300 , 0 );
setEffMoveKey( spep_2 + 112 -3, ctzuo, 120.8, 336.5 , 0 );
setEffMoveKey( spep_2 + 114 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 116 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 118 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 120 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 122 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 124 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 126 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 128 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 130 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 132 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 134 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 136 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 138 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 140 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 142 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 144 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 146 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 148 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 150 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 152 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 154 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 156 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 158 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 160 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 162 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 164 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 166 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 168 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 170 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 172 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 174 -3, ctzuo, 139.1, 388.9 , 0 );
setEffMoveKey( spep_2 + 176 -3, ctzuo, 152.9, 375.1 , 0 );
setEffMoveKey( spep_2 + 178 -3, ctzuo, 139.1, 388.9 , 0 );

setEffScaleKey( spep_2 + 110 -3, ctzuo, 0.29, 0.29 );
setEffScaleKey( spep_2 + 112 -3, ctzuo, 1.33, 1.33 );
setEffScaleKey( spep_2 + 114 -3, ctzuo, 2.35, 2.35 );
setEffScaleKey( spep_2 + 178 -3, ctzuo, 2.35, 2.35 );

setEffRotateKey( spep_2 + 110 -3, ctzuo, 28.2 );
setEffRotateKey( spep_2 + 112 -3, ctzuo, 27.8 );
setEffRotateKey( spep_2 + 114 -3, ctzuo, 27.2 );
setEffRotateKey( spep_2 + 178 -3, ctzuo, 27.2 );

setEffAlphaKey( spep_2 + 110 -3, ctzuo, 255 );
setEffAlphaKey( spep_2 + 178 -3, ctzuo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 178, 1, 0 );

setMoveKey( spep_2 + 62 -3, 1, 165.8, -77.7 , 0 );
setMoveKey( spep_2 + 64 -3, 1, 180.6, -117.8 , 0 );
setMoveKey( spep_2 + 66 -3, 1, 196.4, -160.4 , 0 );
setMoveKey( spep_2 + 68 -3, 1, 213, -205.3 , 0 );
setMoveKey( spep_2 + 70 -3, 1, 230.6, -252.8 , 0 );
setMoveKey( spep_2 + 72 -3, 1, 249.1, -302.7 , 0 );
setMoveKey( spep_2 + 74 -3, 1, 268.4, -354.9 , 0 );
setMoveKey( spep_2 + 76 -3, 1, 288.8, -409.6 , 0 );
setMoveKey( spep_2 + 78 -3, 1, 309.9, -466.7 , 0 );
setMoveKey( spep_2 + 80 -3, 1, 332.1, -526.3 , 0 );
setMoveKey( spep_2 + 82 -3, 1, 363.1, -585.7 , 0 );
setMoveKey( spep_2 + 84 -3, 1, 392.1, -641.5 , 0 );
setMoveKey( spep_2 + 86 -3, 1, 419.2, -693.6 , 0 );
setMoveKey( spep_2 + 88 -3, 1, 444.3, -741.8 , 0 );
setMoveKey( spep_2 + 90 -3, 1, 467.5, -786.3 , 0 );
setMoveKey( spep_2 + 92 -3, 1, 488.7, -827 , 0 );
setMoveKey( spep_2 + 94 -3, 1, 508, -864 , 0 );
setMoveKey( spep_2 + 96 -3, 1, 525.2, -897.1 , 0 );
setMoveKey( spep_2 + 98 -3, 1, 540.5, -926.6 , 0 );
setMoveKey( spep_2 + 100 -3, 1, 553.9, -952.4 , 0 );
setMoveKey( spep_2 + 102 -3, 1, 565.2, -974.3 , 0 );
setMoveKey( spep_2 + 104 -3, 1, 574.7, -992.6 , 0 );
setMoveKey( spep_2 + 106 -3, 1, 582.1, -1006.9 , 0 );
setMoveKey( spep_2 + 108 -3, 1, 587.7, -1017.7 , 0 );
setMoveKey( spep_2 + 110 -3, 1, 1500, -2535 , 0 );
setMoveKey( spep_2 + 112 -3, 1, 1159.3, -1996.4 , 0 );
setMoveKey( spep_2 + 114 -3, 1, 815.5, -1441.1 , 0 );
setMoveKey( spep_2 + 116 -3, 1, 666.8, -1186.3 , 0 );
setMoveKey( spep_2 + 118 -3, 1, 528.5, -920.2 , 0 );
setMoveKey( spep_2 + 120 -3, 1, 378.2, -658.8 , 0 );
setMoveKey( spep_2 + 122 -3, 1, 232, -379.6 , 0 );
setMoveKey( spep_2 + 124 -3, 1, 221.9, -369 , 0 );
setMoveKey( spep_2 + 126 -3, 1, 218, -351.6 , 0 );
setMoveKey( spep_2 + 128 -3, 1, 204.3, -340.2 , 0 );
setMoveKey( spep_2 + 130 -3, 1, 203.2, -321.8 , 0 );
setMoveKey( spep_2 + 132 -3, 1, 192.2, -309.5 , 0 );
setMoveKey( spep_2 + 134 -3, 1, 187.5, -290.3 , 0 );
setMoveKey( spep_2 + 136 -3, 1, 176.1, -280.2 , 0 );
setMoveKey( spep_2 + 138 -3, 1, 170.9, -256.9 , 0 );
setMoveKey( spep_2 + 140 -3, 1, 159.1, -242.7 , 0 );
setMoveKey( spep_2 + 142 -3, 1, 153.4, -221.7 , 0 );
setMoveKey( spep_2 + 144 -3, 1, 147.5, -218.1 , 0 );
setMoveKey( spep_2 + 146 -3, 1, 148, -207.9 , 0 );
setMoveKey( spep_2 + 148 -3, 1, 138.7, -207.1 , 0 );
setMoveKey( spep_2 + 150 -3, 1, 135.7, -199.7 , 0 );
setMoveKey( spep_2 + 152 -3, 1, 129.4, -195.3 , 0 );
setMoveKey( spep_2 + 154 -3, 1, 129.5, -184.3 , 0 );
setMoveKey( spep_2 + 156 -3, 1, 126.8, -186.6 , 0 );
setMoveKey( spep_2 + 158 -3, 1, 136.5, -182 , 0 );
setMoveKey( spep_2 + 160 -3, 1, 136.3, -183.4 , 0 );
setMoveKey( spep_2 + 162 -3, 1, 142.2, -177.8 , 0 );
setMoveKey( spep_2 + 164 -3, 1, 138, -178.2 , 0 );
setMoveKey( spep_2 + 166 -3, 1, 146.3, -171.8 , 0 );
setMoveKey( spep_2 + 168 -3, 1, 144.6, -171.2 , 0 );
setMoveKey( spep_2 + 170 -3, 1, 145.8, -167 , 0 );
setMoveKey( spep_2 + 172 -3, 1, 144.6, -170.3 , 0 );
setMoveKey( spep_2 + 174 -3, 1, 147, -157.2 , 0 );
setMoveKey( spep_2 + 176 -3, 1, 143, -151.5 , 0 );
setMoveKey( spep_2 + 178, 1, 146.7, -145.4 , 0 );

setScaleKey( spep_2 + 62 -3, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 64 -3, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 66 -3, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 68 -3, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 70 -3, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 72 -3, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 74 -3, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 76 -3, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 78 -3, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 80 -3, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 82 -3, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 84 -3, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 86 -3, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 88 -3, 1, 2.73, 2.73 );
setScaleKey( spep_2 + 90 -3, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 92 -3, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 94 -3, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 96 -3, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 98 -3, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 100 -3, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 102 -3, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 104 -3, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 106 -3, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 108 -3, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 110 -3, 1, 7.91, 7.91 );
setScaleKey( spep_2 + 112 -3, 1, 6.36, 6.36 );
setScaleKey( spep_2 + 114 -3, 1, 4.73, 4.73 );
setScaleKey( spep_2 + 116 -3, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 118 -3, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 120 -3, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 122 -3, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 124 -3, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 126 -3, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 128 -3, 1, 2.26, 2.26 );
setScaleKey( spep_2 + 130 -3, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 132 -3, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 134 -3, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 136 -3, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 138 -3, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 140 -3, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 142 -3, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 144 -3, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 146 -3, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 150 -3, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 152 -3, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 154 -3, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 156 -3, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 158 -3, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 160 -3, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 162 -3, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 164 -3, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 166 -3, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 168 -3, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 170 -3, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 174 -3, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 176 -3, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 178, 1, 2.09, 2.09 );

setRotateKey( spep_2 + 178, 1, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 110 -3, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 172, 4, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 64, 1072 );  --撃つ前
playSe( spep_2 + 110 -3, 1022 );  --発射

-- ** 次の準備 ** --
spep_3 = spep_2 + 178;

------------------------------------------------------
-- ギャン(62F)
------------------------------------------------------

--エフェクトの再生
gyan = entryEffectLife(  spep_3 + 0,  152969,  62,  0x100,  -1,  0,  0,  0);  --ギャン
setEffMoveKey( spep_3 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 62, gyan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 62, gyan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, gyan, 0 );
setEffRotateKey( spep_3 + 62, gyan, 0 );
setEffAlphaKey( spep_3 + 0, gyan, 255 );
setEffAlphaKey( spep_3 + 62, gyan, 255 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_3 + 0,  10006, 62, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_3 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_3 + 62, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_3 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_3 + 6, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_3 + 8, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_3 + 10, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_3 + 12, ctgyan, 3, 3 );
setEffScaleKey( spep_3 + 14, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_3 + 16, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_3 + 18, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_3 + 20, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_3 + 22, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_3 + 24, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_3 + 26, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_3 + 28, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_3 + 30, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_3 + 32, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_3 + 34, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_3 + 36, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_3 + 38, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_3 + 40, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_3 + 42, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_3 + 44, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_3 + 46, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_3 + 48, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_3 + 50, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_3 + 52, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_3 + 54, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_3 + 56, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_3 + 58, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_3 + 60, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_3 + 62, ctgyan, 5, 5 );

setEffRotateKey( spep_3 + 0, ctgyan, 0 );
setEffRotateKey( spep_3 + 62, ctgyan, 0 );

setEffAlphaKey( spep_3 + 0, ctgyan, 255 );
setEffAlphaKey( spep_3 + 62, ctgyan, 255 );

-- ** 音 ** --
playSe(spep_3 + 0,SE_09);

-- ** 白フェード ** --
entryFade( spep_3 + 54, 10, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;

------------------------------------------------------
-- 爆発(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
haikei = entryEffect( spep_4 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_4 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, haikei, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, haikei, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, haikei, 0 );
setEffRotateKey( spep_4 + 100, haikei, 0 );
setEffAlphaKey( spep_4 + 0, haikei, 255 );
setEffAlphaKey( spep_4 + 100, haikei, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
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
setScaleKey( spep_4 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
endPhase( spep_4 + 100 );

end