--ブロリー&チライ&レモ_サバイバルアタック

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
SP_01 = 154986; --カットイン前
SP_02 = 154987; --カットイン後・奥
SP_03 = 154989; --カットイン後・手前
SP_04 = 154991; --KO

--敵側
SP_02x = 154988; --カットイン後・奥
SP_03x = 154990; --カットイン後・手前

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
-- カットイン前(266F)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
start_f = entryEffectLife( spep_0 + 0, SP_01, 268, 0x100, -1, 0, 0, 0 );  --カットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 268, start_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 268, start_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_f, 0 );
setEffRotateKey( spep_0 + 268, start_f, 0 );
setEffAlphaKey( spep_0 + 0, start_f, 255 );
setEffAlphaKey( spep_0 + 268, start_f, 255 );

-- ** 書き文字エントリー ** --
ctba = entryEffectLife( spep_0 -3 + 130,  10022, 26, 0x100, -1, 0, 22.4, 305.3 );  --バッ
setEffMoveKey( spep_0 -3 + 130, ctba, 22.4, 305.3 , 0 );
setEffMoveKey( spep_0 -3 + 132, ctba, 29, 324.4 , 0 );
setEffMoveKey( spep_0 -3 + 134, ctba, 30.1, 327.3 , 0 );
setEffMoveKey( spep_0 -3 + 136, ctba, 30.4, 327.9 , 0 );
setEffMoveKey( spep_0 -3 + 138, ctba, 30.6, 328.5 , 0 );
setEffMoveKey( spep_0 -3 + 140, ctba, 30.8, 329.1 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctba, 31, 329.7 , 0 );
setEffMoveKey( spep_0 -3 + 144, ctba, 31.2, 330.3 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctba, 31.5, 330.9 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctba, 31.7, 331.5 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctba, 31.9, 332.1 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctba, 33.8, 337.3 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctba, 34.9, 340.5 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctba, 35.3, 341.5 , 0 );

setEffScaleKey( spep_0 -3 + 130, ctba, 0.88, 0.88 );
setEffScaleKey( spep_0 -3 + 132, ctba, 1.1, 1.1 );
setEffScaleKey( spep_0 -3 + 134, ctba, 1.13, 1.13 );
setEffScaleKey( spep_0 -3 + 136, ctba, 1.14, 1.14 );
setEffScaleKey( spep_0 -3 + 138, ctba, 1.15, 1.15 );
setEffScaleKey( spep_0 -3 + 140, ctba, 1.15, 1.15 );
setEffScaleKey( spep_0 -3 + 142, ctba, 1.16, 1.16 );
setEffScaleKey( spep_0 -3 + 144, ctba, 1.17, 1.17 );
setEffScaleKey( spep_0 -3 + 146, ctba, 1.18, 1.18 );
setEffScaleKey( spep_0 -3 + 148, ctba, 1.18, 1.18 );
setEffScaleKey( spep_0 -3 + 150, ctba, 1.19, 1.19 );
setEffScaleKey( spep_0 -3 + 152, ctba, 1.25, 1.25 );
setEffScaleKey( spep_0 -3 + 154, ctba, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 156, ctba, 1.3, 1.3 );

setEffRotateKey( spep_0 -3 + 130, ctba, 24.7 );
setEffRotateKey( spep_0 -3 + 156, ctba, 24.7 );

setEffAlphaKey( spep_0 -3 + 130, ctba, 255 );
setEffAlphaKey( spep_0 -3 + 150, ctba, 255 );
setEffAlphaKey( spep_0 -3 + 152, ctba, 113 );
setEffAlphaKey( spep_0 -3 + 154, ctba, 28 );
setEffAlphaKey( spep_0 -3 + 156, ctba, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 268, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--チライ走る
playSe( spep_0 + 0, 44 );
setSeVolume( spep_0 + 0, 44, 79 );
playSe( spep_0 + 9, 1106 );
playSe( spep_0 + 21, 1106 );
setSeVolume( spep_0 + 21, 1106, 126 );
playSe( spep_0 + 47, 1108 );
setSeVolume( spep_0 + 47, 1108, 158 );
playSe( spep_0 + 60, 1108 );
setSeVolume( spep_0 + 60, 1108, 200 );
playSe( spep_0 + 73, 1108 );
setSeVolume( spep_0 + 73, 1108, 200 );

--チライ銃を構える
SE0 = playSe( spep_0 + 84, 8 );
setSeVolume( spep_0 + 84, 8, 63 );
setSeVolume( spep_0 + 102, 8, 48 );
setSeVolume( spep_0 + 108, 8, 34 );
setSeVolume( spep_0 + 114, 8, 26 );
setSeVolume( spep_0 + 118, 8, 18 );
setSeVolume( spep_0 + 122, 8, 10 );
setSeVolume( spep_0 + 124, 8, 0 );
stopSe( spep_0 + 124, SE0, 0 );

playSe( spep_0 + 92, 1150 );
setSeVolume( spep_0 + 92, 1150, 0 );
setSeVolume( spep_0 + 118, 1150, 12 );
setSeVolume( spep_0 + 119, 1150, 36 );
setSeVolume( spep_0 + 120, 1150, 58 );
setSeVolume( spep_0 + 121, 1150, 71 );

playSe( spep_0 + 111, 1233 );
setSeVolume( spep_0 + 111, 1233, 40 );

playSe( spep_0 + 115, 4 );
setSeVolume( spep_0 + 115, 4, 126 );

SE1 = playSe( spep_0 + 122, 6 );
stopSe( spep_0 + 129, SE1, 6 );

playSe( spep_0 + 124, 27 );

SE2 = playSe( spep_0 + 126, 29 );
setSeVolume( spep_0 + 126, 29, 158 );
stopSe( spep_0 + 131, SE2, 0 );

--レモ画面内へ
SE3 = playSe( spep_0 + 172, 1116 );
setSeVolume( spep_0 + 172, 1116, 79 );
setSeVolume( spep_0 + 195, 1116, 79 );
setSeVolume( spep_0 + 198, 1116, 68 );
setSeVolume( spep_0 + 202, 1116, 54 );
setSeVolume( spep_0 + 208, 1116, 38 );
setSeVolume( spep_0 + 214, 1116, 12 );
setSeVolume( spep_0 + 218, 1116, 0 );
stopSe( spep_0 + 218, SE3, 0 );

--レモ銃を構える
playSe( spep_0 + 221, 1108 );
setSeVolume( spep_0 + 221, 1108, 178 );

SE4 = playSe( spep_0 + 221, 1111 );
stopSe( spep_0 + 232, SE4, 0 );

playSe( spep_0 + 223, 1106 );
setSeVolume( spep_0 + 223, 1106, 178 );

SE5 = playSe( spep_0 + 224, 6 );
stopSe( spep_0 + 231, SE5, 6 );

SE6 = playSe( spep_0 + 228, 29 );
stopSe( spep_0 + 233, SE6, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 266;

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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- カットイン後(810F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --カットイン後・奥(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 810, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 810, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 810, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 810, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --カットイン後・前(ef_003)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 810, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 810, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 810, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 810, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctbibi = entryEffectLife( spep_2 -3 + 62,  10025, 24, 0x100, -1, 0, -183.8, -3.8 );  --ビビビ
setEffMoveKey( spep_2 -3 + 62, ctbibi, -183.8, -3.8 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctbibi, -192.3, 23.7 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctbibi, -191.4, 31.7 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctbibi, -191, 45 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctbibi, -192, 35.5 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctbibi, -191, 44.6 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctbibi, -196.8, 40.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctbibi, -190.1, 45.3 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctbibi, -198.5, 41.3 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctbibi, -189.4, 38.1 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctbibi, -193.1, 44.9 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctbibi, -193.3, 41 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctbibi, -197, 43.9 , 0 );

setEffScaleKey( spep_2 -3 + 62, ctbibi, 0.83, 0.83 );
setEffScaleKey( spep_2 -3 + 64, ctbibi, 1.01, 1.01 );
setEffScaleKey( spep_2 -3 + 66, ctbibi, 1.11, 1.11 );
setEffScaleKey( spep_2 -3 + 68, ctbibi, 1.15, 1.15 );
setEffScaleKey( spep_2 -3 + 70, ctbibi, 1.15, 1.15 );
setEffScaleKey( spep_2 -3 + 72, ctbibi, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 78, ctbibi, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 80, ctbibi, 1.13, 1.13 );
setEffScaleKey( spep_2 -3 + 82, ctbibi, 1.13, 1.13 );
setEffScaleKey( spep_2 -3 + 84, ctbibi, 1.16, 1.16 );
setEffScaleKey( spep_2 -3 + 86, ctbibi, 1.16, 1.16 );

setEffRotateKey( spep_2 -3 + 62, ctbibi, -25.8 );
setEffRotateKey( spep_2 -3 + 64, ctbibi, -25.9 );
setEffRotateKey( spep_2 -3 + 82, ctbibi, -25.9 );
setEffRotateKey( spep_2 -3 + 84, ctbibi, -25.8 );
setEffRotateKey( spep_2 -3 + 86, ctbibi, -25.9 );

setEffAlphaKey( spep_2 -3 + 62, ctbibi, 255 );
setEffAlphaKey( spep_2 -3 + 86, ctbibi, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 44, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2  + 0, 1, 230.4, 218.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 231.4, 219 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 233.4, 220.3 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 237, 222.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 242.6, 226 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 250.9, 231.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 262.8, 238.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 279.4, 249 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 302.6, 263.5 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 335.1, 283.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 381, 312.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 441.7, 350.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 519.7, 399 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 619.4, 461.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 746.8, 540.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 909.8, 642.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 1117.7, 771.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 1375.3, 931.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 1666.9, 1112.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 1946.8, 1286.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 2174.3, 1426.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 2342.2, 1530.7 , 0 );

setScaleKey( spep_2 + 0, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 4, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 6, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 8, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 10, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 12, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 14, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 16, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 20, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 22, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 24, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 26, 1, 3.43, 3.43 );
setScaleKey( spep_2 -3 + 28, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 30, 1, 4.52, 4.52 );
setScaleKey( spep_2 -3 + 32, 1, 5.3, 5.3 );
setScaleKey( spep_2 -3 + 34, 1, 6.29, 6.29 );
setScaleKey( spep_2 -3 + 36, 1, 7.52, 7.52 );
setScaleKey( spep_2 -3 + 38, 1, 8.92, 8.92 );
setScaleKey( spep_2 -3 + 40, 1, 10.25, 10.25 );
setScaleKey( spep_2 -3 + 42, 1, 11.34, 11.34 );
setScaleKey( spep_2 -3 + 44, 1, 12.14, 12.14 );

setRotateKey( spep_2 + 0, 1, -8.4 );
setRotateKey( spep_2 -3 + 36, 1, -8.4 );
setRotateKey( spep_2 -3 + 38, 1, -8.3 );
setRotateKey( spep_2 -3 + 44, 1, -8.3 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 810, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--2人にズームイン
playSe( spep_2 + 0, 1072 );

--ビーム発射
SE7 = playSe( spep_2 + 51, 1016 );
SE8 = playSe( spep_2 + 53, 1177 );
setSeVolume( spep_2 + 53, 1177, 89 );
stopSe( spep_2 + 102, SE8, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE7, 0 );
stopSe( SP_dodge - 12, SE8, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** エフェクト等 ** --
ko = entryEffect( spep_2 + 810, SP_04, 0x100, -1, 0, 0, 0 );  --KO(ef_004)
setEffMoveKey( spep_2 + 810, ko, 0, 0 , 0 );
setEffMoveKey( spep_2 + 908, ko, 0, 0 , 0 );
setEffScaleKey( spep_2 + 810, ko, 1.0, 1.0 );
setEffScaleKey( spep_2 + 908, ko, 1.0, 1.0 );
setEffRotateKey( spep_2 + 810, ko, 0 );
setEffRotateKey( spep_2 + 908, ko, 0 );
setEffAlphaKey( spep_2 + 810, ko, 255 );
setEffAlphaKey( spep_2 + 908, ko, 255 );

spep_x = spep_2 + 428;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgaga = entryEffectLife( spep_2 -3 + 100,  10002, 34, 0x100, -1, 0, -58.9, 264.1 );  --ガガガ
setEffMoveKey( spep_2 -3 + 100, ctgaga, -58.9, 264.1 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctgaga, -65.1, 261.5 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctgaga, -55.1, 267.1 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctgaga, -66.5, 263.5 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctgaga, -54.7, 262 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctgaga, -66.1, 262.2 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctgaga, -55.6, 264 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctgaga, -66.6, 262.3 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctgaga, -55, 257.2 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctgaga, -61.3, 266.1 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctgaga, -61.9, 257 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctgaga, -59.1, 265 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctgaga, -64.8, 254.6 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctgaga, -56.8, 260.4 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctgaga, -61.4, 260 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctgaga, -70, 260.7 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctgaga, -59.4, 269.1 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctgaga, -59.8, 269.7 , 0 );

setEffScaleKey( spep_2 -3 + 100, ctgaga, 1.82, 1.82 );
setEffScaleKey( spep_2 -3 + 102, ctgaga, 1.84, 1.84 );
setEffScaleKey( spep_2 -3 + 104, ctgaga, 1.85, 1.85 );
setEffScaleKey( spep_2 -3 + 106, ctgaga, 1.86, 1.86 );
setEffScaleKey( spep_2 -3 + 108, ctgaga, 1.87, 1.87 );
setEffScaleKey( spep_2 -3 + 110, ctgaga, 1.89, 1.89 );
setEffScaleKey( spep_2 -3 + 112, ctgaga, 1.9, 1.9 );
setEffScaleKey( spep_2 -3 + 114, ctgaga, 1.91, 1.91 );
setEffScaleKey( spep_2 -3 + 116, ctgaga, 1.92, 1.92 );
setEffScaleKey( spep_2 -3 + 118, ctgaga, 1.94, 1.94 );
setEffScaleKey( spep_2 -3 + 120, ctgaga, 1.95, 1.95 );
setEffScaleKey( spep_2 -3 + 122, ctgaga, 1.96, 1.96 );
setEffScaleKey( spep_2 -3 + 124, ctgaga, 1.97, 1.97 );
setEffScaleKey( spep_2 -3 + 126, ctgaga, 1.99, 1.99 );
setEffScaleKey( spep_2 -3 + 128, ctgaga, 2, 2 );
setEffScaleKey( spep_2 -3 + 130, ctgaga, 2.07, 2.07 );
setEffScaleKey( spep_2 -3 + 132, ctgaga, 2.11, 2.11 );
setEffScaleKey( spep_2 -3 + 134, ctgaga, 2.12, 2.12 );

setEffRotateKey( spep_2 -3 + 100, ctgaga, -21 );
setEffRotateKey( spep_2 -3 + 102, ctgaga, -20.9 );
setEffRotateKey( spep_2 -3 + 104, ctgaga, -20.9 );
setEffRotateKey( spep_2 -3 + 106, ctgaga, -20.8 );
setEffRotateKey( spep_2 -3 + 108, ctgaga, -20.7 );
setEffRotateKey( spep_2 -3 + 110, ctgaga, -20.6 );
setEffRotateKey( spep_2 -3 + 112, ctgaga, -20.6 );
setEffRotateKey( spep_2 -3 + 114, ctgaga, -20.5 );
setEffRotateKey( spep_2 -3 + 116, ctgaga, -20.4 );
setEffRotateKey( spep_2 -3 + 118, ctgaga, -20.4 );
setEffRotateKey( spep_2 -3 + 120, ctgaga, -20.3 );
setEffRotateKey( spep_2 -3 + 122, ctgaga, -20.2 );
setEffRotateKey( spep_2 -3 + 124, ctgaga, -20.1 );
setEffRotateKey( spep_2 -3 + 126, ctgaga, -20.1 );
setEffRotateKey( spep_2 -3 + 128, ctgaga, -20 );
setEffRotateKey( spep_2 -3 + 130, ctgaga, -19.9 );
setEffRotateKey( spep_2 -3 + 132, ctgaga, -19.8 );
setEffRotateKey( spep_2 -3 + 134, ctgaga, -19.8 );

setEffAlphaKey( spep_2 -3 + 100, ctgaga, 255 );
setEffAlphaKey( spep_2 -3 + 128, ctgaga, 255 );
setEffAlphaKey( spep_2 -3 + 130, ctgaga, 113 );
setEffAlphaKey( spep_2 -3 + 132, ctgaga, 28 );
setEffAlphaKey( spep_2 -3 + 134, ctgaga, 0 );

ctbago = entryEffectLife( spep_2 -3 + 312,  10021, 26, 0x100, -1, 0, -71.9, 364.4 );  --バゴォ
setEffMoveKey( spep_2 -3 + 312, ctbago, -71.9, 364.4 , 0 );
setEffMoveKey( spep_2 -3 + 314, ctbago, -73.2, 368.4 , 0 );
setEffMoveKey( spep_2 -3 + 316, ctbago, -58, 397.1 , 0 );
setEffMoveKey( spep_2 -3 + 318, ctbago, -62.6, 391.6 , 0 );
setEffMoveKey( spep_2 -3 + 320, ctbago, -68.9, 381.5 , 0 );
setEffMoveKey( spep_2 -3 + 322, ctbago, -55.5, 403.9 , 0 );
setEffMoveKey( spep_2 -3 + 324, ctbago, -66.8, 391.7 , 0 );
setEffMoveKey( spep_2 -3 + 326, ctbago, -49.3, 395.7 , 0 );
setEffMoveKey( spep_2 -3 + 328, ctbago, -69.1, 400.3 , 0 );
setEffMoveKey( spep_2 -3 + 330, ctbago, -48.8, 396.8 , 0 );
setEffMoveKey( spep_2 -3 + 332, ctbago, -58.1, 403.9 , 0 );
setEffMoveKey( spep_2 -3 + 334, ctbago, -64, 395 , 0 );
setEffMoveKey( spep_2 -3 + 336, ctbago, -48.9, 421.1 , 0 );
setEffMoveKey( spep_2 -3 + 338, ctbago, -47.3, 425.1 , 0 );

setEffScaleKey( spep_2 -3 + 312, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 314, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_2 -3 + 316, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_2 -3 + 318, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_2 -3 + 320, ctbago, 3.02, 3.02 );
setEffScaleKey( spep_2 -3 + 322, ctbago, 3.04, 3.04 );
setEffScaleKey( spep_2 -3 + 324, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_2 -3 + 326, ctbago, 3.09, 3.09 );
setEffScaleKey( spep_2 -3 + 328, ctbago, 3.12, 3.12 );
setEffScaleKey( spep_2 -3 + 330, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_2 -3 + 332, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_2 -3 + 334, ctbago, 3.23, 3.23 );
setEffScaleKey( spep_2 -3 + 336, ctbago, 3.28, 3.28 );
setEffScaleKey( spep_2 -3 + 338, ctbago, 3.34, 3.34 );

setEffRotateKey( spep_2 -3 + 312, ctbago, -20 );
setEffRotateKey( spep_2 -3 + 338, ctbago, -20 );

setEffAlphaKey( spep_2 -3 + 312, ctbago, 255 );
setEffAlphaKey( spep_2 -3 + 332, ctbago, 255 );
setEffAlphaKey( spep_2 -3 + 334, ctbago, 170 );
setEffAlphaKey( spep_2 -3 + 336, ctbago, 85 );
setEffAlphaKey( spep_2 -3 + 338, ctbago, 0 );

ctdogon = entryEffectLife( spep_2 -3 + 384,  10018, 50, 0x100, -1, 0, -29.5, 222.4 );  --ドゴン
setEffMoveKey( spep_2 -3 + 384, ctdogon, -29.5, 222.4 , 0 );
setEffMoveKey( spep_2 -3 + 386, ctdogon, -45.7, 256.5 , 0 );
setEffMoveKey( spep_2 -3 + 388, ctdogon, -42.8, 290.4 , 0 );
setEffMoveKey( spep_2 -3 + 390, ctdogon, -46.5, 293.4 , 0 );
setEffMoveKey( spep_2 -3 + 392, ctdogon, -54, 291.8 , 0 );
setEffMoveKey( spep_2 -3 + 394, ctdogon, -44.5, 308.6 , 0 );
setEffMoveKey( spep_2 -3 + 396, ctdogon, -48.3, 297 , 0 );
setEffMoveKey( spep_2 -3 + 398, ctdogon, -50.1, 324.3 , 0 );
setEffMoveKey( spep_2 -3 + 400, ctdogon, -45.9, 311.7 , 0 );
setEffMoveKey( spep_2 -3 + 402, ctdogon, -42.9, 331 , 0 );
setEffMoveKey( spep_2 -3 + 404, ctdogon, -53, 321.7 , 0 );
setEffMoveKey( spep_2 -3 + 406, ctdogon, -51.4, 339.6 , 0 );
setEffMoveKey( spep_2 -3 + 408, ctdogon, -39.5, 333.3 , 0 );
setEffMoveKey( spep_2 -3 + 410, ctdogon, -57.3, 345.4 , 0 );
setEffMoveKey( spep_2 -3 + 412, ctdogon, -50.7, 346.8 , 0 );
setEffMoveKey( spep_2 -3 + 414, ctdogon, -51, 351.7 , 0 );
setEffMoveKey( spep_2 -3 + 416, ctdogon, -58.9, 344.5 , 0 );
setEffMoveKey( spep_2 -3 + 418, ctdogon, -48.1, 357.6 , 0 );
setEffMoveKey( spep_2 -3 + 420, ctdogon, -51.7, 339.7 , 0 );
setEffMoveKey( spep_2 -3 + 422, ctdogon, -53.3, 363.9 , 0 );
setEffMoveKey( spep_2 -3 + 424, ctdogon, -48.4, 345.3 , 0 );
setEffMoveKey( spep_2 -3 + 426, ctdogon, -44.9, 360.5 , 0 );
setEffMoveKey( spep_2 -3 + 428, ctdogon, -55, 345.7 , 0 );
setEffMoveKey( spep_2 -3 + 430, ctdogon, -52.9, 359.3 , 0 );
setEffMoveKey( spep_2 -3 + 432, ctdogon, -40.4, 347.8 , 0 );
setEffMoveKey( spep_2 -3 + 434, ctdogon, -40.4, 347.8 , 0 );

setEffScaleKey( spep_2 -3 + 384, ctdogon, 1, 1 );
setEffScaleKey( spep_2 -3 + 386, ctdogon, 1.71, 1.71 );
setEffScaleKey( spep_2 -3 + 388, ctdogon, 2.14, 2.14 );
setEffScaleKey( spep_2 -3 + 390, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 + 392, ctdogon, 2.3, 2.3 );
setEffScaleKey( spep_2 -3 + 394, ctdogon, 2.32, 2.32 );
setEffScaleKey( spep_2 -3 + 396, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_2 -3 + 398, ctdogon, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 400, ctdogon, 2.39, 2.39 );
setEffScaleKey( spep_2 -3 + 402, ctdogon, 2.41, 2.41 );
setEffScaleKey( spep_2 -3 + 404, ctdogon, 2.43, 2.43 );
setEffScaleKey( spep_2 -3 + 406, ctdogon, 2.45, 2.45 );
setEffScaleKey( spep_2 -3 + 408, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 410, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_2 -3 + 412, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_2 -3 + 414, ctdogon, 2.54, 2.54 );
setEffScaleKey( spep_2 -3 + 434, ctdogon, 2.54, 2.54 );

setEffRotateKey( spep_2 -3 + 384, ctdogon, -18.2 );
setEffRotateKey( spep_2 -3 + 386, ctdogon, -15.9 );
setEffRotateKey( spep_2 -3 + 388, ctdogon, -14.5 );
setEffRotateKey( spep_2 -3 + 390, ctdogon, -14 );
setEffRotateKey( spep_2 -3 + 434, ctdogon, -14 );

setEffAlphaKey( spep_2 -3 + 384, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 434, ctdogon, 255 );

ctzudo = entryEffectLife( spep_2 -3 + 582,  10014, 32, 0x100, -1, 0, 51.2, 290 );  --ズドド
setEffMoveKey( spep_2 -3 + 582, ctzudo, 51.2, 290 , 0 );
setEffMoveKey( spep_2 -3 + 584, ctzudo, 45.9, 290.1 , 0 );
setEffMoveKey( spep_2 -3 + 614, ctzudo, 45.9, 290.1 , 0 );

setEffScaleKey( spep_2 -3 + 582, ctzudo, 2.72, 2.72 );
setEffScaleKey( spep_2 -3 + 584, ctzudo, 2.71, 2.71 );
setEffScaleKey( spep_2 -3 + 586, ctzudo, 2.71, 2.71 );
setEffScaleKey( spep_2 -3 + 588, ctzudo, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 590, ctzudo, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 592, ctzudo, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 594, ctzudo, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 596, ctzudo, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 600, ctzudo, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 602, ctzudo, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 604, ctzudo, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 608, ctzudo, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 610, ctzudo, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 614, ctzudo, 2.64, 2.64 );

setEffRotateKey( spep_2 -3 + 582, ctzudo, 57.7 );
setEffRotateKey( spep_2 -3 + 614, ctzudo, 57.7 );

setEffAlphaKey( spep_2 -3 + 582, ctzudo, 255 );
setEffAlphaKey( spep_2 -3 + 614, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 88, 1, 1 );
setDisp( spep_2 -3 + 168, 1, 0 );
setDisp( spep_2 -3 + 242, 1, 1 );
setGaussBlurKey(spep_2 + 265, 1,  0.001 );
setGaussBlurKey(spep_2 + 308, 1,  0.001 );
setGaussBlurKey(spep_2 + 309, 1,  0.002 );
setGaussBlurKey(spep_2 + 329, 1,  0.002 );
setGaussBlurKey(spep_2  + 330, 1,  0 );
setGaussBlurKey(spep_2 -3 + 384, 1,  0 );
setDisp( spep_2 -3 + 338, 1, 0 );
setDisp( spep_2 -3 + 342, 1, 1 );
setDisp( spep_2 -3 + 384, 1, 0 );
changeAnime( spep_2 -3 + 88, 1, 104 );
changeAnime( spep_2 -3 + 138, 1, 117 );
changeAnime( spep_2 -3 + 158, 1, 103 );
changeAnime( spep_2 -3 + 242, 1, 111 );
changeAnime( spep_2 -3 + 243, 1, 111 );
changeAnime( spep_2 -3 + 244, 1, 111 );
changeAnime( spep_2 -3 + 245, 1, 111 );
changeAnime( spep_2 -3 + 246, 1, 118 );
changeAnime( spep_2 -3 + 268, 1, 1 );
changeAnime( spep_2 -3 + 312, 1, 7 );
changeAnime( spep_2 -3 + 334, 1, 6 );
changeAnime( spep_2 -3 + 342, 1, 7 );
changeAnime( spep_2 -3 + 348, 1, 106 );
changeAnime( spep_2 -3 + 352, 1, 5 );

setMoveKey( spep_2 -3 + 88, 1, 50.1, 18 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 50.1, 18 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 45.5, 13.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 55.4, 30.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 66.9, 19.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 63.7, 33.6 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 73.7, 24.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 65.5, 36.3 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 81, 27.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 80.4, 42.5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 87.7, 29.7 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 76.1, 40.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 92.4, 44.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 80.5, 37.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 98.1, 40.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 82.1, 44.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 103.4, 44.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 88.9, 44 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 102.4, 55.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 103.5, 52 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 105.4, 53.5 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 105.4, 53.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 106.1, 54 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 106.1, 54 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 93.6, 44.5 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 56.2, 16 , 0 );
setMoveKey( spep_2 -3 + 157, 1, 56.2, 16 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 27.3, -22.5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -19.9, -66 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -81.4, -93.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -150.5, -125.2 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -227.4, -160.1 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -227.4, -160.1 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 381.2, -96.2 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 378, -96.2 , 0 );
setMoveKey( spep_2 -3 + 245, 1, 378, -96.2 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 381.9, -137.8 , 0 );
setMoveKey( spep_2 -3 + 247, 1, 381.9, -137.8 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 291.4, -122.1 , 0 );
setMoveKey( spep_2 -3 + 249, 1, 291.4, -122.1 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 201.3, -106.4 , 0 );
setMoveKey( spep_2 -3 + 251, 1, 201.3, -106.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 211.3, -104.4 , 0 );
setMoveKey( spep_2 -3 + 253, 1, 211.3, -104.4 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 159, -106.8 , 0 );
setMoveKey( spep_2 -3 + 255, 1, 159, -106.8 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 150.1, -107.9 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 147.5, -113.2 , 0 );
setMoveKey( spep_2 -3 + 259, 1, 147.5, -113.2 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 107.3, -128.5 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 87.2, -145.9 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 77.8, -145.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 73.4, -152.6 , 0 );
setMoveKey( spep_2 -3 + 267, 1, 73.4, -152.6 , 0 );
setMoveKey( spep_2 -3 + 268, 1, -277.6, -498.1 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -275.9, -498.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, -274.3, -498.1 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -272.7, -498.1 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -271, -498.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -269.4, -498.1 , 0 );
setMoveKey( spep_2 -3 + 280, 1, -267.7, -498.1 , 0 );
setMoveKey( spep_2 -3 + 282, 1, -266.1, -498.2 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -264.5, -498.2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -262.8, -498.2 , 0 );
setMoveKey( spep_2 -3 + 288, 1, -261.2, -498.2 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -259.6, -498.2 , 0 );
setMoveKey( spep_2 -3 + 292, 1, -257.9, -498.2 , 0 );
setMoveKey( spep_2 -3 + 294, 1, -256.3, -498.2 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -254.7, -498.3 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -253, -498.3 , 0 );
setMoveKey( spep_2 -3 + 300, 1, -251.4, -498.3 , 0 );
setMoveKey( spep_2 -3 + 302, 1, -249.8, -498.3 , 0 );
setMoveKey( spep_2 -3 + 304, 1, -248.1, -498.3 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -246.5, -498.3 , 0 );
setMoveKey( spep_2 -3 + 311, 1, -246.5, -498.3 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -189, -342.8 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -162.3, -357.1 , 0 );
setMoveKey( spep_2 -3 + 316, 1, -171.7, -332.4 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -153, -271.6 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -505.3, -384.3 , 0 );
setMoveKey( spep_2 -3 + 322, 1, -507.6, -331.3 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -310.3, -361.7 , 0 );
setMoveKey( spep_2 -3 + 326, 1, -362.4, -265 , 0 );
setMoveKey( spep_2 -3 + 328, 1, -458.2, -505.8 , 0 );
setMoveKey( spep_2 -3 + 330, 1, -496.7, -507.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, -516.6, -445.2 , 0 );
setMoveKey( spep_2 -3 + 333, 1, -516.6, -445.2 , 0 );
setMoveKey( spep_2 -3 + 334, 1, -447.3, 3.2 , 0 );
setMoveKey( spep_2 -3 + 336, 1, -635.5, 118.3 , 0 );
setMoveKey( spep_2 -3 + 338, 1, -835.5, 168.3 , 0 );
setMoveKey( spep_2 -3 + 342, 1, -268.7, -904.9 , 0 );
setMoveKey( spep_2 -3 + 344, 1, -250, -815.4 , 0 );
setMoveKey( spep_2 -3 + 346, 1, -194, -546.8 , 0 );
setMoveKey( spep_2 -3 + 347, 1, -194, -546.8 , 0 );
setMoveKey( spep_2 -3 + 348, 1, -181.2, -385 , 0 );
setMoveKey( spep_2 -3 + 350, 1, -112.3, -185.1 , 0 );
setMoveKey( spep_2 -3 + 351, 1, -112.3, -185.1 , 0 );
setMoveKey( spep_2 -3 + 352, 1, -33.2, -9.6 , 0 );
setMoveKey( spep_2 -3 + 354, 1, -14.1, 43.2 , 0 );
setMoveKey( spep_2 -3 + 356, 1, -9.1, 57 , 0 );
setMoveKey( spep_2 -3 + 358, 1, -6.2, 64.9 , 0 );
setMoveKey( spep_2 -3 + 360, 1, -4.4, 70.1 , 0 );
setMoveKey( spep_2 -3 + 362, 1, -3.1, 73.5 , 0 );
setMoveKey( spep_2 -3 + 364, 1, -2.2, 75.9 , 0 );
setMoveKey( spep_2 -3 + 366, 1, -1.6, 77.6 , 0 );
setMoveKey( spep_2 -3 + 368, 1, -1.2, 78.7 , 0 );
setMoveKey( spep_2 -3 + 370, 1, -0.9, 79.5 , 0 );
setMoveKey( spep_2 -3 + 372, 1, -0.8, 80 , 0 );
setMoveKey( spep_2 -3 + 374, 1, -0.7, 80.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, -0.6, 80.5 , 0 );
setMoveKey( spep_2 -3 + 378, 1, -0.6, 80.6 , 0 );
setMoveKey( spep_2 -3 + 380, 1, -0.6, 80.6 , 0 );
setMoveKey( spep_2 -3 + 382, 1, -0.5, 80.5 , 0 );
setMoveKey( spep_2 -3 + 384, 1, -0.4, 80.4 , 0 );

setScaleKey( spep_2 -3 + 88, 1, 1, 1 );
setScaleKey( spep_2 -3 + 137, 1, 1, 1 );
setScaleKey( spep_2 -3 + 138, 1, 1, 1 );
setScaleKey( spep_2 -3 + 157, 1, 1, 1 );
setScaleKey( spep_2 -3 + 158, 1, 1, 1 );
setScaleKey( spep_2 -3 + 160, 1, 1, 1 );
setScaleKey( spep_2 -3 + 162, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 164, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 166, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 168, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 242, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 245, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 246, 1, 4.78, 4.78 );
setScaleKey( spep_2 -3 + 248, 1, 3.81, 3.81 );
setScaleKey( spep_2 -3 + 250, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 252, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 254, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 256, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 258, 1, 2.63, 2.63 );
setScaleKey( spep_2 -3 + 260, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 262, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 264, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 266, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 267, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 268, 1, 10.16, 10.16 );
setScaleKey( spep_2 -3 + 311, 1, 10.16, 10.16 );
setScaleKey( spep_2 -3 + 312, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 318, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 320, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 326, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 328, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 333, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 334, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 338, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 342, 1, 4.36, 4.36 );
setScaleKey( spep_2 -3 + 344, 1, 4.04, 4.04 );
setScaleKey( spep_2 -3 + 346, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 347, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 348, 1, 6.57, 6.57 );
setScaleKey( spep_2 -3 + 350, 1, 4.16, 4.16 );
setScaleKey( spep_2 -3 + 351, 1, 4.16, 4.16 );
setScaleKey( spep_2 -3 + 352, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 354, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 356, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 358, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 360, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 362, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 364, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 366, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 368, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 370, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 372, 1, 0.07, 0.07 );
setScaleKey( spep_2 -3 + 374, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 376, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 378, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 384, 1, 0.05, 0.05 );

setRotateKey( spep_2 -3 + 88, 1, 0 );
setRotateKey( spep_2 -3 + 137, 1, 0 );
setRotateKey( spep_2 -3 + 138, 1, 0 );
setRotateKey( spep_2 -3 + 152, 1, 0 );
setRotateKey( spep_2 -3 + 154, 1, -4.7 );
setRotateKey( spep_2 -3 + 156, 1, -19 );
setRotateKey( spep_2 -3 + 157, 1, -19 );
setRotateKey( spep_2 -3 + 158, 1, -3.8 );
setRotateKey( spep_2 -3 + 160, 1, -15.1 );
setRotateKey( spep_2 -3 + 168, 1, -15.1 );
setRotateKey( spep_2 -3 + 242, 1, 0 );
setRotateKey( spep_2 -3 + 244, 1, -0.7 );
setRotateKey( spep_2 -3 + 245, 1, -0.7 );
setRotateKey( spep_2 -3 + 246, 1, -6.9 );
setRotateKey( spep_2 -3 + 248, 1, -4.7 );
setRotateKey( spep_2 -3 + 250, 1, -2.5 );
setRotateKey( spep_2 -3 + 252, 1, -2.5 );
setRotateKey( spep_2 -3 + 254, 1, -6.7 );
setRotateKey( spep_2 -3 + 256, 1, -6.8 );
setRotateKey( spep_2 -3 + 258, 1, -6.9 );
setRotateKey( spep_2 -3 + 260, 1, -7.2 );
setRotateKey( spep_2 -3 + 262, 1, -7.5 );
setRotateKey( spep_2 -3 + 264, 1, -7.6 );
setRotateKey( spep_2 -3 + 266, 1, -7.7 );
setRotateKey( spep_2 -3 + 267, 1, -7.7 );
setRotateKey( spep_2 -3 + 268, 1, -16 );
setRotateKey( spep_2 -3 + 270, 1, -15.8 );
setRotateKey( spep_2 -3 + 272, 1, -15.7 );
setRotateKey( spep_2 -3 + 274, 1, -15.5 );
setRotateKey( spep_2 -3 + 276, 1, -15.4 );
setRotateKey( spep_2 -3 + 278, 1, -15.2 );
setRotateKey( spep_2 -3 + 280, 1, -15.1 );
setRotateKey( spep_2 -3 + 282, 1, -14.9 );
setRotateKey( spep_2 -3 + 284, 1, -14.7 );
setRotateKey( spep_2 -3 + 286, 1, -14.6 );
setRotateKey( spep_2 -3 + 288, 1, -14.4 );
setRotateKey( spep_2 -3 + 290, 1, -14.3 );
setRotateKey( spep_2 -3 + 292, 1, -14.1 );
setRotateKey( spep_2 -3 + 294, 1, -13.9 );
setRotateKey( spep_2 -3 + 296, 1, -13.8 );
setRotateKey( spep_2 -3 + 298, 1, -13.6 );
setRotateKey( spep_2 -3 + 300, 1, -13.5 );
setRotateKey( spep_2 -3 + 302, 1, -13.3 );
setRotateKey( spep_2 -3 + 304, 1, -13.2 );
setRotateKey( spep_2 -3 + 306, 1, -13 );
setRotateKey( spep_2 -3 + 311, 1, -13 );
setRotateKey( spep_2 -3 + 312, 1, 105 );
setRotateKey( spep_2 -3 + 322, 1, 105 );
setRotateKey( spep_2 -3 + 324, 1, 76 );
setRotateKey( spep_2 -3 + 326, 1, 76 );
setRotateKey( spep_2 -3 + 328, 1, 43 );
setRotateKey( spep_2 -3 + 333, 1, 43 );
setRotateKey( spep_2 -3 + 334, 1, -14.7 );
setRotateKey( spep_2 -3 + 338, 1, -14.7 );
setRotateKey( spep_2 -3 + 342, 1, 131 );
setRotateKey( spep_2 -3 + 347, 1, 131 );
setRotateKey( spep_2 -3 + 348, 1, -47.5 );
setRotateKey( spep_2 -3 + 351, 1, -47.5 );
setRotateKey( spep_2 -3 + 352, 1, 0 );
setRotateKey( spep_2 -3 + 384, 1, 0 );

setBlendColor( spep_2 + 0, 1, 0, 1.0, 0.81, 0, 0.16);  --黄色
setBlendColor( spep_2 -3 + 99, 1, 0, 1.0, 0.81, 0, 0.16);
setBlendColor( spep_2 -3 + 100, 1, 0, 0.43, 0.94, 1.0, 0.12);  --青
setBlendColor( spep_2 -3 + 135, 1, 0, 0.43, 0.94, 1.0, 0.12);
setBlendColor( spep_2 -3 + 136, 1, 0, 1.0, 0.81, 0, 0.16);  --黄色
setBlendColor( spep_2 -3 + 267, 1, 0, 1.0, 0.81, 0, 0.16);
setBlendColor( spep_2 -3 + 268, 1, 2, 0.13, 0.11, 0, 0.56);  --灰色
setBlendColor( spep_2 -3 + 311, 1, 2, 0.13, 0.11, 0, 0.56);
setBlendColor( spep_2 -3 + 312, 1, 2, 0.37, 0.30, 0, 0.46);  --薄茶色
setBlendColor( spep_2 -3 + 329, 1, 2, 0.37, 0.30, 0, 0.46);
setBlendColor( spep_2 -3 + 330, 1, 0, 0.47, 0.40, 0, 0.26);  --明るい薄茶色
setBlendColor( spep_2 -3 + 333, 1, 0, 0.47, 0.40, 0, 0.26);
setBlendColor( spep_2 -3 + 334, 1, 0, 1.0, 0.81, 0, 0.16);  --黄色
setBlendColor( spep_2 -3 + 341, 1, 0, 1.0, 0.81, 0, 0.16);
setBlendColor( spep_2 -3 + 342, 1, 0, 1.0, 1.0, 0, 0.09);  --明るい黄色
setBlendColor( spep_2 -3 + 384, 1, 0, 1.0, 1.0, 0, 0.09);
setBlendColor( spep_2 + 400, 1, 2, 0, 0, 0, 0);  --元に戻す

-- ** 音 ** --
--敵被弾
SE9 = playSe( spep_2 + 89, 1008 );
setSeVolume( spep_2 + 89, 1008, 89 );
stopSe( spep_2 + 98, SE9, 0 );

playSe( spep_2 + 91, 1023 );
setSeVolume( spep_2 + 91, 1023, 79 );

playSe( spep_2 + 91, 1162 );
setSeVolume( spep_2 + 91, 1162, 79 );

SE10 = playSe( spep_2 + 98, 1008 );
setSeVolume( spep_2 + 98, 1008, 112 );
stopSe( spep_2 + 107, SE10, 0 );

playSe( spep_2 + 101, 1017 );

SE11 = playSe( spep_2 + 107, 1008 );
setSeVolume( spep_2 + 107, 1008, 126 );
stopSe( spep_2 + 117, SE11, 0 );

--敵向かっていく
playSe( spep_2 + 145, 44 );
setSeVolume( spep_2 + 145, 44, 79 );

--ブロリーが向かってくる
playSe( spep_2 + 159, 1182 );
setSeVolume( spep_2 + 159, 1182, 178 );
setSeVolume( spep_2 + 169, 1182, 178 );
setSeVolume( spep_2 + 170, 1182, 136 );
setSeVolume( spep_2 + 171, 1182, 100 );

playSe( spep_2 + 159, 9 );
setSeVolume( spep_2 + 159, 9, 0 );
setSeVolume( spep_2 + 164, 9, 22 );
setSeVolume( spep_2 + 166, 9, 48 );
setSeVolume( spep_2 + 168, 9, 62 );
setSeVolume( spep_2 + 170, 9, 86 );
setSeVolume( spep_2 + 172, 9, 100 );

SE11 = playSe( spep_2 + 163, 1183 );
setSeVolume( spep_2 + 163, 1183, 126 );
stopSe( spep_2 + 265, SE11, 0 );

playSe( spep_2 + 192, 1072 );

SE12 = playSe( spep_2 + 207, 1116 );
stopSe( spep_2 + 232, SE12, 13 );

--パンチ
playSe( spep_2 + 229, 1004 );
playSe( spep_2 + 234, 1003 );
playSe( spep_2 + 247, 1009 );

SE13 = playSe( spep_2 + 249, 1190 );
setSeVolume( spep_2 + 249, 1190, 89 );
setSeVolume( spep_2 + 268, 1190, 89 );
setSeVolume( spep_2 + 272, 1190, 68 );
setSeVolume( spep_2 + 278, 1190, 52 );
setSeVolume( spep_2 + 284, 1190, 36 );
setSeVolume( spep_2 + 292, 1190, 14 );
setSeVolume( spep_2 + 296, 1190, 0 );
stopSe( spep_2 + 296, SE13, 0 );

playSe( spep_2 + 255, 1110 );
playSe( spep_2 + 255, 1190 );
setSeVolume( spep_2 + 255, 1190, 89 );

--ブロリー裏拳
playSe( spep_2 + 299, 1003 );
setSeVolume( spep_2 + 299, 1003, 158 );

SE14 = playSe( spep_2 + 306, 1182 );
setSeVolume( spep_2 + 306, 1182, 178 );
setSeVolume( spep_2 + 316, 1182, 178 );
setSeVolume( spep_2 + 318, 1182, 112 );
setSeVolume( spep_2 + 320, 1182, 54 );
setSeVolume( spep_2 + 322, 1182, 0 );
stopSe( spep_2 + 322, SE14, 0 );

playSe( spep_2 + 309, 1187 );

--敵が飛んでいく
SE15 = playSe( spep_2 + 319, 1121 );
stopSe( spep_2 + 388, SE15, 0 );

--岩へ衝突
SE16 = playSe( spep_2 + 383, 1159 );
stopSe( spep_2 + 437, SE16, 133 );

--気弾溜め
SE17 = playSe( spep_2 + 449, 1154 );
setSeVolume( spep_2 + 449, 1154, 0 );
setSeVolume( spep_2 + 459, 1154, 14 );
setSeVolume( spep_2 + 462, 1154, 46 );
setSeVolume( spep_2 + 464, 1154, 79 );
setSeVolume( spep_2 + 500, 1154, 79 );
setSeVolume( spep_2 + 504, 1154, 58 );
setSeVolume( spep_2 + 516, 1154, 42 );
setSeVolume( spep_2 + 520, 1154, 28 );
setSeVolume( spep_2 + 524, 1154, 16 );
setSeVolume( spep_2 + 526, 1154, 0 );
stopSe( spep_2 + 526, SE17, 0 );

playSe( spep_2 + 460, 1013 );
setSeVolume( spep_2 + 460, 1013, 112 );
playSe( spep_2 + 461, 1233 );
setSeVolume( spep_2 + 461, 1233, 79 );
playSe( spep_2 + 461, 49 );

--気弾発射
playSe( spep_2 + 499, 1004 );
playSe( spep_2 + 507, 1027 );
setSeVolume( spep_2 + 507, 1027, 56 );
playSe( spep_2 + 509, 1016 );
playSe( spep_2 + 512, 1015 );
setSeVolume( spep_2 + 512, 1015, 71 );
playSe( spep_2 + 512, 1021 );
setSeVolume( spep_2 + 512, 1021, 79 );
playSe( spep_2 + 518, 1016 );
playSe( spep_2 + 525, 1016 );
setSeVolume( spep_2 + 525, 1016, 79 );
playSe( spep_2 + 532, 1016 );
setSeVolume( spep_2 + 532, 1016, 71 );

--爆発
playSe( spep_2 + 565, 1002 );
playSe( spep_2 + 575, 1011 );
setSeVolume( spep_2 + 575, 1011, 89 );

SE18 = playSe( spep_2 + 575, 1159 );
setSeVolume( spep_2 + 575, 1159, 71 );
setSeVolume( spep_2 + 660, 1159, 71 );
setSeVolume( spep_2 + 676, 1159, 64 );
setSeVolume( spep_2 + 684, 1159, 57 );
setSeVolume( spep_2 + 698, 1159, 52 );
setSeVolume( spep_2 + 712, 1159, 48 );
setSeVolume( spep_2 + 736, 1159, 42 );
setSeVolume( spep_2 + 736, 1159, 26 );
setSeVolume( spep_2 + 752, 1159, 16 );
setSeVolume( spep_2 + 768, 1159, 8 );
setSeVolume( spep_2 + 771, 1159, 0 );
stopSe( spep_2 + 771, SE18, 0 );

playSe( spep_2 + 588, 1023 );
setSeVolume( spep_2 + 588, 1023, 89 );

playSe( spep_2 + 609, 44 );
setSeVolume( spep_2 + 609, 44, 0 );
setSeVolume( spep_2 + 612, 44, 10 );
setSeVolume( spep_2 + 616, 44, 24 );
setSeVolume( spep_2 + 614, 44, 32 );
setSeVolume( spep_2 + 616, 44, 46 );
setSeVolume( spep_2 + 618, 44, 68 );
setSeVolume( spep_2 + 620, 44, 84 );
setSeVolume( spep_2 + 622, 44, 100 );

--OK
playSe( spep_2 + 676 +2, 32 );
setSeVolume( spep_2 + 676 +2, 32, 89 );

playSe( spep_2 + 678 +2, 22 );
setSeVolume( spep_2 + 678 +2, 44, 0 );
setSeVolume( spep_2 + 686 +2, 44, 12 );
setSeVolume( spep_2 + 692 +2, 44, 26 );
setSeVolume( spep_2 + 696 +2, 44, 48 );
setSeVolume( spep_2 + 700 +2, 44, 63 );

playSe( spep_2 + 686 +2, 1042 );
setSeVolume( spep_2 + 686 +2, 1042, 89 );

--振り向く
playSe( spep_2 + 718, 1072 );
setSeVolume( spep_2 + 718, 1072, 0 );
setSeVolume( spep_2 + 740, 1072, 10 );
setSeVolume( spep_2 + 744, 1072, 62 );
setSeVolume( spep_2 + 746, 1072, 100 );

playSe( spep_2 + 737, 8 );

SE19 = playSe( spep_2 + 737, 1116 );
setSeVolume( spep_2 + 737, 1116, 79 );
setSeVolume( spep_2 + 763, 1116, 79 );
setSeVolume( spep_2 + 770, 1116, 54 );
setSeVolume( spep_2 + 774, 1116, 32 );
setSeVolume( spep_2 + 777, 1116, 0 );
stopSe( spep_2 + 777, SE19, 0 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 692 );
entryFade( spep_2 +812 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 812 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カットイン前(266F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start_f = entryEffectLife( spep_0 + 0, SP_01, 268, 0x100, -1, 0, 0, 0 );  --カットイン前(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 268, start_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 268, start_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_f, 0 );
setEffRotateKey( spep_0 + 268, start_f, 0 );
setEffAlphaKey( spep_0 + 0, start_f, 255 );
setEffAlphaKey( spep_0 + 268, start_f, 255 );

-- ** 書き文字エントリー ** --
ctba = entryEffectLife( spep_0 -3 + 130,  10022, 26, 0x100, -1, 0, 22.4, 305.3 );  --バッ
setEffMoveKey( spep_0 -3 + 130, ctba, -22.4, 305.3 , 0 );
setEffMoveKey( spep_0 -3 + 132, ctba, -29, 324.4 , 0 );
setEffMoveKey( spep_0 -3 + 134, ctba, -30.1, 327.3 , 0 );
setEffMoveKey( spep_0 -3 + 136, ctba, -30.4, 327.9 , 0 );
setEffMoveKey( spep_0 -3 + 138, ctba, -30.6, 328.5 , 0 );
setEffMoveKey( spep_0 -3 + 140, ctba, -30.8, 329.1 , 0 );
setEffMoveKey( spep_0 -3 + 142, ctba, -31, 329.7 , 0 );
setEffMoveKey( spep_0 -3 + 144, ctba, -31.2, 330.3 , 0 );
setEffMoveKey( spep_0 -3 + 146, ctba, -31.5, 330.9 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctba, -31.7, 331.5 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctba, -31.9, 332.1 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctba, -33.8, 337.3 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctba, -34.9, 340.5 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctba, -35.3, 341.5 , 0 );

setEffScaleKey( spep_0 -3 + 130, ctba, 0.88, 0.88 );
setEffScaleKey( spep_0 -3 + 132, ctba, 1.1, 1.1 );
setEffScaleKey( spep_0 -3 + 134, ctba, 1.13, 1.13 );
setEffScaleKey( spep_0 -3 + 136, ctba, 1.14, 1.14 );
setEffScaleKey( spep_0 -3 + 138, ctba, 1.15, 1.15 );
setEffScaleKey( spep_0 -3 + 140, ctba, 1.15, 1.15 );
setEffScaleKey( spep_0 -3 + 142, ctba, 1.16, 1.16 );
setEffScaleKey( spep_0 -3 + 144, ctba, 1.17, 1.17 );
setEffScaleKey( spep_0 -3 + 146, ctba, 1.18, 1.18 );
setEffScaleKey( spep_0 -3 + 148, ctba, 1.18, 1.18 );
setEffScaleKey( spep_0 -3 + 150, ctba, 1.19, 1.19 );
setEffScaleKey( spep_0 -3 + 152, ctba, 1.25, 1.25 );
setEffScaleKey( spep_0 -3 + 154, ctba, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 156, ctba, 1.3, 1.3 );

setEffRotateKey( spep_0 -3 + 130, ctba, -24.7 );
setEffRotateKey( spep_0 -3 + 156, ctba, -24.7 );

setEffAlphaKey( spep_0 -3 + 130, ctba, 255 );
setEffAlphaKey( spep_0 -3 + 150, ctba, 255 );
setEffAlphaKey( spep_0 -3 + 152, ctba, 113 );
setEffAlphaKey( spep_0 -3 + 154, ctba, 28 );
setEffAlphaKey( spep_0 -3 + 156, ctba, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 268, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--チライ走る
playSe( spep_0 + 0, 44 );
setSeVolume( spep_0 + 0, 44, 79 );
playSe( spep_0 + 9, 1106 );
playSe( spep_0 + 21, 1106 );
setSeVolume( spep_0 + 21, 1106, 126 );
playSe( spep_0 + 47, 1108 );
setSeVolume( spep_0 + 47, 1108, 158 );
playSe( spep_0 + 60, 1108 );
setSeVolume( spep_0 + 60, 1108, 200 );
playSe( spep_0 + 73, 1108 );
setSeVolume( spep_0 + 73, 1108, 200 );

--チライ銃を構える
SE0 = playSe( spep_0 + 84, 8 );
setSeVolume( spep_0 + 84, 8, 63 );
setSeVolume( spep_0 + 102, 8, 48 );
setSeVolume( spep_0 + 108, 8, 34 );
setSeVolume( spep_0 + 114, 8, 26 );
setSeVolume( spep_0 + 118, 8, 18 );
setSeVolume( spep_0 + 122, 8, 10 );
setSeVolume( spep_0 + 124, 8, 0 );
stopSe( spep_0 + 124, SE0, 0 );

playSe( spep_0 + 92, 1150 );
setSeVolume( spep_0 + 92, 1150, 0 );
setSeVolume( spep_0 + 118, 1150, 12 );
setSeVolume( spep_0 + 119, 1150, 36 );
setSeVolume( spep_0 + 120, 1150, 58 );
setSeVolume( spep_0 + 121, 1150, 71 );

playSe( spep_0 + 111, 1233 );
setSeVolume( spep_0 + 111, 1233, 40 );

playSe( spep_0 + 115, 4 );
setSeVolume( spep_0 + 115, 4, 126 );

SE1 = playSe( spep_0 + 122, 6 );
stopSe( spep_0 + 129, SE1, 6 );

playSe( spep_0 + 124, 27 );

SE2 = playSe( spep_0 + 126, 29 );
setSeVolume( spep_0 + 126, 29, 158 );
stopSe( spep_0 + 131, SE2, 0 );

--レモ画面内へ
SE3 = playSe( spep_0 + 172, 1116 );
setSeVolume( spep_0 + 172, 1116, 79 );
setSeVolume( spep_0 + 195, 1116, 79 );
setSeVolume( spep_0 + 198, 1116, 68 );
setSeVolume( spep_0 + 202, 1116, 54 );
setSeVolume( spep_0 + 208, 1116, 38 );
setSeVolume( spep_0 + 214, 1116, 12 );
setSeVolume( spep_0 + 218, 1116, 0 );
stopSe( spep_0 + 218, SE3, 0 );

--レモ銃を構える
playSe( spep_0 + 221, 1108 );
setSeVolume( spep_0 + 221, 1108, 178 );

SE4 = playSe( spep_0 + 221, 1111 );
stopSe( spep_0 + 232, SE4, 0 );

playSe( spep_0 + 223, 1106 );
setSeVolume( spep_0 + 223, 1106, 178 );

SE5 = playSe( spep_0 + 224, 6 );
stopSe( spep_0 + 231, SE5, 6 );

SE6 = playSe( spep_0 + 228, 29 );
stopSe( spep_0 + 233, SE6, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 266;

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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- カットイン後(810F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  --カットイン後・奥(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 810, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 810, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 810, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 810, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --カットイン後・前(ef_003)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 810, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 810, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 810, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 810, finish_b, 255 );

-- ** 書き文字エントリー ** --
ctbibi = entryEffectLife( spep_2 -3 + 62,  10025, 24, 0x100, -1, 0, -183.8, -3.8 );  --ビビビ
setEffMoveKey( spep_2 -3 + 62, ctbibi, -183.8, -3.8 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctbibi, -192.3, 23.7 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctbibi, -191.4, 31.7 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctbibi, -191, 45 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctbibi, -192, 35.5 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctbibi, -191, 44.6 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctbibi, -196.8, 40.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctbibi, -190.1, 45.3 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctbibi, -198.5, 41.3 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctbibi, -189.4, 38.1 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctbibi, -193.1, 44.9 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctbibi, -193.3, 41 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctbibi, -197, 43.9 , 0 );

setEffScaleKey( spep_2 -3 + 62, ctbibi, 0.83, 0.83 );
setEffScaleKey( spep_2 -3 + 64, ctbibi, 1.01, 1.01 );
setEffScaleKey( spep_2 -3 + 66, ctbibi, 1.11, 1.11 );
setEffScaleKey( spep_2 -3 + 68, ctbibi, 1.15, 1.15 );
setEffScaleKey( spep_2 -3 + 70, ctbibi, 1.15, 1.15 );
setEffScaleKey( spep_2 -3 + 72, ctbibi, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 78, ctbibi, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 80, ctbibi, 1.13, 1.13 );
setEffScaleKey( spep_2 -3 + 82, ctbibi, 1.13, 1.13 );
setEffScaleKey( spep_2 -3 + 84, ctbibi, 1.16, 1.16 );
setEffScaleKey( spep_2 -3 + 86, ctbibi, 1.16, 1.16 );

setEffRotateKey( spep_2 -3 + 62, ctbibi, -25.8 );
setEffRotateKey( spep_2 -3 + 64, ctbibi, -25.9 );
setEffRotateKey( spep_2 -3 + 82, ctbibi, -25.9 );
setEffRotateKey( spep_2 -3 + 84, ctbibi, -25.8 );
setEffRotateKey( spep_2 -3 + 86, ctbibi, -25.9 );

setEffAlphaKey( spep_2 -3 + 62, ctbibi, 255 );
setEffAlphaKey( spep_2 -3 + 86, ctbibi, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 44, 1, 0 );
changeAnime( spep_2 + 0, 1, 118 );

setMoveKey( spep_2  + 0, 1, 230.4, 218.4 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 231.4, 219 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 233.4, 220.3 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 237, 222.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 242.6, 226 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 250.9, 231.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 262.8, 238.6 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 279.4, 249 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 302.6, 263.5 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 335.1, 283.8 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 381, 312.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 441.7, 350.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 519.7, 399 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 619.4, 461.2 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 746.8, 540.6 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 909.8, 642.2 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 1117.7, 771.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 1375.3, 931.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 1666.9, 1112.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 1946.8, 1286.1 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 2174.3, 1426.9 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 2342.2, 1530.7 , 0 );

setScaleKey( spep_2 + 0, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 4, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 6, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 8, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 10, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 12, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 14, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 16, 1, 2.28, 2.28 );
setScaleKey( spep_2 -3 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 20, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 22, 1, 2.77, 2.77 );
setScaleKey( spep_2 -3 + 24, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 26, 1, 3.43, 3.43 );
setScaleKey( spep_2 -3 + 28, 1, 3.91, 3.91 );
setScaleKey( spep_2 -3 + 30, 1, 4.52, 4.52 );
setScaleKey( spep_2 -3 + 32, 1, 5.3, 5.3 );
setScaleKey( spep_2 -3 + 34, 1, 6.29, 6.29 );
setScaleKey( spep_2 -3 + 36, 1, 7.52, 7.52 );
setScaleKey( spep_2 -3 + 38, 1, 8.92, 8.92 );
setScaleKey( spep_2 -3 + 40, 1, 10.25, 10.25 );
setScaleKey( spep_2 -3 + 42, 1, 11.34, 11.34 );
setScaleKey( spep_2 -3 + 44, 1, 12.14, 12.14 );

setRotateKey( spep_2 + 0, 1, -8.4 );
setRotateKey( spep_2 -3 + 36, 1, -8.4 );
setRotateKey( spep_2 -3 + 38, 1, -8.3 );
setRotateKey( spep_2 -3 + 44, 1, -8.3 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 810, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--2人にズームイン
playSe( spep_2 + 0, 1072 );

--ビーム発射
SE7 = playSe( spep_2 + 51, 1016 );
SE8 = playSe( spep_2 + 53, 1177 );
setSeVolume( spep_2 + 53, 1177, 89 );
stopSe( spep_2 + 102, SE8, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 70; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE7, 0 );
stopSe( SP_dodge - 12, SE8, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** エフェクト等 ** --
ko = entryEffect( spep_2 + 810, SP_04, 0x100, -1, 0, 0, 0 );  --KO(ef_004)
setEffMoveKey( spep_2 + 810, ko, 0, 0 , 0 );
setEffMoveKey( spep_2 + 908, ko, 0, 0 , 0 );
setEffScaleKey( spep_2 + 810, ko, -1.0, 1.0 );
setEffScaleKey( spep_2 + 908, ko, -1.0, 1.0 );
setEffRotateKey( spep_2 + 810, ko, 0 );
setEffRotateKey( spep_2 + 908, ko, 0 );
setEffAlphaKey( spep_2 + 810, ko, 255 );
setEffAlphaKey( spep_2 + 908, ko, 255 );

spep_x = spep_2 + 428;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgaga = entryEffectLife( spep_2 -3 + 100,  10002, 34, 0x100, -1, 0, -58.9, 264.1 );  --ガガガ
setEffMoveKey( spep_2 -3 + 100, ctgaga, -58.9, 264.1 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctgaga, -65.1, 261.5 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctgaga, -55.1, 267.1 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctgaga, -66.5, 263.5 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctgaga, -54.7, 262 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctgaga, -66.1, 262.2 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctgaga, -55.6, 264 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctgaga, -66.6, 262.3 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctgaga, -55, 257.2 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctgaga, -61.3, 266.1 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctgaga, -61.9, 257 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctgaga, -59.1, 265 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctgaga, -64.8, 254.6 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctgaga, -56.8, 260.4 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctgaga, -61.4, 260 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctgaga, -70, 260.7 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctgaga, -59.4, 269.1 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctgaga, -59.8, 269.7 , 0 );

setEffScaleKey( spep_2 -3 + 100, ctgaga, 1.82, 1.82 );
setEffScaleKey( spep_2 -3 + 102, ctgaga, 1.84, 1.84 );
setEffScaleKey( spep_2 -3 + 104, ctgaga, 1.85, 1.85 );
setEffScaleKey( spep_2 -3 + 106, ctgaga, 1.86, 1.86 );
setEffScaleKey( spep_2 -3 + 108, ctgaga, 1.87, 1.87 );
setEffScaleKey( spep_2 -3 + 110, ctgaga, 1.89, 1.89 );
setEffScaleKey( spep_2 -3 + 112, ctgaga, 1.9, 1.9 );
setEffScaleKey( spep_2 -3 + 114, ctgaga, 1.91, 1.91 );
setEffScaleKey( spep_2 -3 + 116, ctgaga, 1.92, 1.92 );
setEffScaleKey( spep_2 -3 + 118, ctgaga, 1.94, 1.94 );
setEffScaleKey( spep_2 -3 + 120, ctgaga, 1.95, 1.95 );
setEffScaleKey( spep_2 -3 + 122, ctgaga, 1.96, 1.96 );
setEffScaleKey( spep_2 -3 + 124, ctgaga, 1.97, 1.97 );
setEffScaleKey( spep_2 -3 + 126, ctgaga, 1.99, 1.99 );
setEffScaleKey( spep_2 -3 + 128, ctgaga, 2, 2 );
setEffScaleKey( spep_2 -3 + 130, ctgaga, 2.07, 2.07 );
setEffScaleKey( spep_2 -3 + 132, ctgaga, 2.11, 2.11 );
setEffScaleKey( spep_2 -3 + 134, ctgaga, 2.12, 2.12 );

setEffRotateKey( spep_2 -3 + 100, ctgaga, -21 );
setEffRotateKey( spep_2 -3 + 102, ctgaga, -20.9 );
setEffRotateKey( spep_2 -3 + 104, ctgaga, -20.9 );
setEffRotateKey( spep_2 -3 + 106, ctgaga, -20.8 );
setEffRotateKey( spep_2 -3 + 108, ctgaga, -20.7 );
setEffRotateKey( spep_2 -3 + 110, ctgaga, -20.6 );
setEffRotateKey( spep_2 -3 + 112, ctgaga, -20.6 );
setEffRotateKey( spep_2 -3 + 114, ctgaga, -20.5 );
setEffRotateKey( spep_2 -3 + 116, ctgaga, -20.4 );
setEffRotateKey( spep_2 -3 + 118, ctgaga, -20.4 );
setEffRotateKey( spep_2 -3 + 120, ctgaga, -20.3 );
setEffRotateKey( spep_2 -3 + 122, ctgaga, -20.2 );
setEffRotateKey( spep_2 -3 + 124, ctgaga, -20.1 );
setEffRotateKey( spep_2 -3 + 126, ctgaga, -20.1 );
setEffRotateKey( spep_2 -3 + 128, ctgaga, -20 );
setEffRotateKey( spep_2 -3 + 130, ctgaga, -19.9 );
setEffRotateKey( spep_2 -3 + 132, ctgaga, -19.8 );
setEffRotateKey( spep_2 -3 + 134, ctgaga, -19.8 );

setEffAlphaKey( spep_2 -3 + 100, ctgaga, 255 );
setEffAlphaKey( spep_2 -3 + 128, ctgaga, 255 );
setEffAlphaKey( spep_2 -3 + 130, ctgaga, 113 );
setEffAlphaKey( spep_2 -3 + 132, ctgaga, 28 );
setEffAlphaKey( spep_2 -3 + 134, ctgaga, 0 );

ctbago = entryEffectLife( spep_2 -3 + 312,  10021, 26, 0x100, -1, 0, 71.9, 364.4 );  --バゴォ
setEffMoveKey( spep_2 -3 + 312, ctbago, 71.9, 364.4 , 0 );
setEffMoveKey( spep_2 -3 + 314, ctbago, 73.2, 368.4 , 0 );
setEffMoveKey( spep_2 -3 + 316, ctbago, 58, 397.1 , 0 );
setEffMoveKey( spep_2 -3 + 318, ctbago, 62.6, 391.6 , 0 );
setEffMoveKey( spep_2 -3 + 320, ctbago, 68.9, 381.5 , 0 );
setEffMoveKey( spep_2 -3 + 322, ctbago, 55.5, 403.9 , 0 );
setEffMoveKey( spep_2 -3 + 324, ctbago, 66.8, 391.7 , 0 );
setEffMoveKey( spep_2 -3 + 326, ctbago, 49.3, 395.7 , 0 );
setEffMoveKey( spep_2 -3 + 328, ctbago, 69.1, 400.3 , 0 );
setEffMoveKey( spep_2 -3 + 330, ctbago, 48.8, 396.8 , 0 );
setEffMoveKey( spep_2 -3 + 332, ctbago, 58.1, 403.9 , 0 );
setEffMoveKey( spep_2 -3 + 334, ctbago, 64, 395 , 0 );
setEffMoveKey( spep_2 -3 + 336, ctbago, 48.9, 421.1 , 0 );
setEffMoveKey( spep_2 -3 + 338, ctbago, 47.3, 425.1 , 0 );

setEffScaleKey( spep_2 -3 + 312, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 314, ctbago, 2.83, 2.83 );
setEffScaleKey( spep_2 -3 + 316, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_2 -3 + 318, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_2 -3 + 320, ctbago, 3.02, 3.02 );
setEffScaleKey( spep_2 -3 + 322, ctbago, 3.04, 3.04 );
setEffScaleKey( spep_2 -3 + 324, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_2 -3 + 326, ctbago, 3.09, 3.09 );
setEffScaleKey( spep_2 -3 + 328, ctbago, 3.12, 3.12 );
setEffScaleKey( spep_2 -3 + 330, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_2 -3 + 332, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_2 -3 + 334, ctbago, 3.23, 3.23 );
setEffScaleKey( spep_2 -3 + 336, ctbago, 3.28, 3.28 );
setEffScaleKey( spep_2 -3 + 338, ctbago, 3.34, 3.34 );

setEffRotateKey( spep_2 -3 + 312, ctbago, 20 );
setEffRotateKey( spep_2 -3 + 338, ctbago, 20 );

setEffAlphaKey( spep_2 -3 + 312, ctbago, 255 );
setEffAlphaKey( spep_2 -3 + 332, ctbago, 255 );
setEffAlphaKey( spep_2 -3 + 334, ctbago, 170 );
setEffAlphaKey( spep_2 -3 + 336, ctbago, 85 );
setEffAlphaKey( spep_2 -3 + 338, ctbago, 0 );

ctdogon = entryEffectLife( spep_2 -3 + 384,  10018, 50, 0x100, -1, 0, 29.5, 222.4 );  --ドゴン
setEffMoveKey( spep_2 -3 + 384, ctdogon, 29.5, 222.4 , 0 );
setEffMoveKey( spep_2 -3 + 386, ctdogon, 45.7, 256.5 , 0 );
setEffMoveKey( spep_2 -3 + 388, ctdogon, 42.8, 290.4 , 0 );
setEffMoveKey( spep_2 -3 + 390, ctdogon, 46.5, 293.4 , 0 );
setEffMoveKey( spep_2 -3 + 392, ctdogon, 54, 291.8 , 0 );
setEffMoveKey( spep_2 -3 + 394, ctdogon, 44.5, 308.6 , 0 );
setEffMoveKey( spep_2 -3 + 396, ctdogon, 48.3, 297 , 0 );
setEffMoveKey( spep_2 -3 + 398, ctdogon, 50.1, 324.3 , 0 );
setEffMoveKey( spep_2 -3 + 400, ctdogon, 45.9, 311.7 , 0 );
setEffMoveKey( spep_2 -3 + 402, ctdogon, 42.9, 331 , 0 );
setEffMoveKey( spep_2 -3 + 404, ctdogon, 53, 321.7 , 0 );
setEffMoveKey( spep_2 -3 + 406, ctdogon, 51.4, 339.6 , 0 );
setEffMoveKey( spep_2 -3 + 408, ctdogon, 39.5, 333.3 , 0 );
setEffMoveKey( spep_2 -3 + 410, ctdogon, 57.3, 345.4 , 0 );
setEffMoveKey( spep_2 -3 + 412, ctdogon, 50.7, 346.8 , 0 );
setEffMoveKey( spep_2 -3 + 414, ctdogon, 51, 351.7 , 0 );
setEffMoveKey( spep_2 -3 + 416, ctdogon, 58.9, 344.5 , 0 );
setEffMoveKey( spep_2 -3 + 418, ctdogon, 48.1, 357.6 , 0 );
setEffMoveKey( spep_2 -3 + 420, ctdogon, 51.7, 339.7 , 0 );
setEffMoveKey( spep_2 -3 + 422, ctdogon, 53.3, 363.9 , 0 );
setEffMoveKey( spep_2 -3 + 424, ctdogon, 48.4, 345.3 , 0 );
setEffMoveKey( spep_2 -3 + 426, ctdogon, 44.9, 360.5 , 0 );
setEffMoveKey( spep_2 -3 + 428, ctdogon, 55, 345.7 , 0 );
setEffMoveKey( spep_2 -3 + 430, ctdogon, 52.9, 359.3 , 0 );
setEffMoveKey( spep_2 -3 + 432, ctdogon, 40.4, 347.8 , 0 );
setEffMoveKey( spep_2 -3 + 434, ctdogon, 40.4, 347.8 , 0 );

setEffScaleKey( spep_2 -3 + 384, ctdogon, 1, 1 );
setEffScaleKey( spep_2 -3 + 386, ctdogon, 1.71, 1.71 );
setEffScaleKey( spep_2 -3 + 388, ctdogon, 2.14, 2.14 );
setEffScaleKey( spep_2 -3 + 390, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_2 -3 + 392, ctdogon, 2.3, 2.3 );
setEffScaleKey( spep_2 -3 + 394, ctdogon, 2.32, 2.32 );
setEffScaleKey( spep_2 -3 + 396, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_2 -3 + 398, ctdogon, 2.37, 2.37 );
setEffScaleKey( spep_2 -3 + 400, ctdogon, 2.39, 2.39 );
setEffScaleKey( spep_2 -3 + 402, ctdogon, 2.41, 2.41 );
setEffScaleKey( spep_2 -3 + 404, ctdogon, 2.43, 2.43 );
setEffScaleKey( spep_2 -3 + 406, ctdogon, 2.45, 2.45 );
setEffScaleKey( spep_2 -3 + 408, ctdogon, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 410, ctdogon, 2.5, 2.5 );
setEffScaleKey( spep_2 -3 + 412, ctdogon, 2.52, 2.52 );
setEffScaleKey( spep_2 -3 + 414, ctdogon, 2.54, 2.54 );
setEffScaleKey( spep_2 -3 + 434, ctdogon, 2.54, 2.54 );

setEffRotateKey( spep_2 -3 + 384, ctdogon, 18.2 );
setEffRotateKey( spep_2 -3 + 386, ctdogon, 15.9 );
setEffRotateKey( spep_2 -3 + 388, ctdogon, 14.5 );
setEffRotateKey( spep_2 -3 + 390, ctdogon, 14 );
setEffRotateKey( spep_2 -3 + 434, ctdogon, 14 );

setEffAlphaKey( spep_2 -3 + 384, ctdogon, 255 );
setEffAlphaKey( spep_2 -3 + 434, ctdogon, 255 );

ctzudo = entryEffectLife( spep_2 -3 + 582,  10014, 32, 0x100, -1, 0, -51.2, 290 );  --ズドド
setEffMoveKey( spep_2 -3 + 582, ctzudo, -51.2, 290 , 0 );
setEffMoveKey( spep_2 -3 + 584, ctzudo, -45.9, 290.1 , 0 );
setEffMoveKey( spep_2 -3 + 614, ctzudo, -45.9, 290.1 , 0 );

setEffScaleKey( spep_2 -3 + 582, ctzudo, 2.72, 2.72 );
setEffScaleKey( spep_2 -3 + 584, ctzudo, 2.71, 2.71 );
setEffScaleKey( spep_2 -3 + 586, ctzudo, 2.71, 2.71 );
setEffScaleKey( spep_2 -3 + 588, ctzudo, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 590, ctzudo, 2.7, 2.7 );
setEffScaleKey( spep_2 -3 + 592, ctzudo, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 594, ctzudo, 2.69, 2.69 );
setEffScaleKey( spep_2 -3 + 596, ctzudo, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 600, ctzudo, 2.68, 2.68 );
setEffScaleKey( spep_2 -3 + 602, ctzudo, 2.67, 2.67 );
setEffScaleKey( spep_2 -3 + 604, ctzudo, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 608, ctzudo, 2.65, 2.65 );
setEffScaleKey( spep_2 -3 + 610, ctzudo, 2.64, 2.64 );
setEffScaleKey( spep_2 -3 + 614, ctzudo, 2.64, 2.64 );

setEffRotateKey( spep_2 -3 + 582, ctzudo, -70 );
setEffRotateKey( spep_2 -3 + 614, ctzudo, -70 );

setEffAlphaKey( spep_2 -3 + 582, ctzudo, 255 );
setEffAlphaKey( spep_2 -3 + 614, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 88, 1, 1 );
setDisp( spep_2 -3 + 168, 1, 0 );

setDisp( spep_2 -3 + 242, 1, 1 );
setDisp( spep_2 -3 + 338, 1, 0 );
setDisp( spep_2 -3 + 342, 1, 1 );
setGaussBlurKey(spep_2 + 265, 1,  0.001 );
setGaussBlurKey(spep_2 + 308, 1,  0.001 );
setGaussBlurKey(spep_2 + 309, 1,  0.002 );
setGaussBlurKey(spep_2 + 329, 1,  0.002 );
setGaussBlurKey(spep_2  + 330, 1,  0 );
setGaussBlurKey(spep_2 -3 + 384, 1,  0 );
setDisp( spep_2 -3 + 384, 1, 0 );
changeAnime( spep_2 -3 + 88, 1, 104 );
changeAnime( spep_2 -3 + 138, 1, 117 );
changeAnime( spep_2 -3 + 158, 1, 103 );

changeAnime( spep_2 -3 + 242, 1, 11 );
changeAnime( spep_2 -3 + 243, 1, 11 );
changeAnime( spep_2 -3 + 244, 1, 11 );
changeAnime( spep_2 -3 + 245, 1, 11 );
changeAnime( spep_2 -3 + 246, 1, 18 );
changeAnime( spep_2 -3 + 268, 1, 101 );
changeAnime( spep_2 -3 + 312, 1, 107 );
changeAnime( spep_2 -3 + 334, 1, 106 );
changeAnime( spep_2 -3 + 342, 1, 107 );
changeAnime( spep_2 -3 + 348, 1, 6 );
changeAnime( spep_2 -3 + 352, 1, 105 );

setMoveKey( spep_2 -3 + 88, 1, 50.1, 18 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 50.1, 18 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 45.5, 13.7 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 55.4, 30.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 66.9, 19.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 63.7, 33.6 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 73.7, 24.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 65.5, 36.3 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 81, 27.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 80.4, 42.5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 87.7, 29.7 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 76.1, 40.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 92.4, 44.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 80.5, 37.9 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 98.1, 40.7 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 82.1, 44.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 103.4, 44.3 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 88.9, 44 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 102.4, 55.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 103.5, 52 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 105.4, 53.5 , 0 );
setMoveKey( spep_2 -3 + 137, 1, 105.4, 53.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 106.1, 54 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 106.1, 54 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 93.6, 44.5 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 56.2, 16 , 0 );
setMoveKey( spep_2 -3 + 157, 1, 56.2, 16 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 27.3, -22.5 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -19.9, -66 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -81.4, -93.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -150.5, -125.2 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -227.4, -160.1 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -227.4, -160.1 , 0 );

setMoveKey( spep_2 -3 + 242, 1, -381.2, -96.2 , 0 );
setMoveKey( spep_2 -3 + 244, 1, -378, -96.2 , 0 );
setMoveKey( spep_2 -3 + 245, 1, -378, -96.2 , 0 );
setMoveKey( spep_2 -3 + 246, 1, -381.9, -137.8 , 0 );
setMoveKey( spep_2 -3 + 247, 1, -381.9, -137.8 , 0 );
setMoveKey( spep_2 -3 + 248, 1, -291.4, -122.1 , 0 );
setMoveKey( spep_2 -3 + 249, 1, -291.4, -122.1 , 0 );
setMoveKey( spep_2 -3 + 250, 1, -201.3, -106.4 , 0 );
setMoveKey( spep_2 -3 + 251, 1, -201.3, -106.4 , 0 );
setMoveKey( spep_2 -3 + 252, 1, -211.3, -104.4 , 0 );
setMoveKey( spep_2 -3 + 253, 1, -211.3, -104.4 , 0 );
setMoveKey( spep_2 -3 + 254, 1, -159, -106.8 , 0 );
setMoveKey( spep_2 -3 + 255, 1, -159, -106.8 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -150.1, -107.9 , 0 );
setMoveKey( spep_2 -3 + 258, 1, -147.5, -113.2 , 0 );
setMoveKey( spep_2 -3 + 259, 1, -147.5, -113.2 , 0 );
setMoveKey( spep_2 -3 + 260, 1, -107.3, -128.5 , 0 );
setMoveKey( spep_2 -3 + 262, 1, -87.2, -145.9 , 0 );
setMoveKey( spep_2 -3 + 264, 1, -77.8, -145.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, -73.4, -152.6 , 0 );
setMoveKey( spep_2 -3 + 267, 1, -73.4, -152.6 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 277.6, -498.1 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 275.9, -498.1 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 274.3, -498.1 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 272.7, -498.1 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 271, -498.1 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 269.4, -498.1 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 267.7, -498.1 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 266.1, -498.2 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 264.5, -498.2 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 262.8, -498.2 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 261.2, -498.2 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 259.6, -498.2 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 257.9, -498.2 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 256.3, -498.2 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 254.7, -498.3 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 253, -498.3 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 251.4, -498.3 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 249.8, -498.3 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 248.1, -498.3 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 246.5, -498.3 , 0 );
setMoveKey( spep_2 -3 + 311, 1, 246.5, -498.3 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 189, -342.8 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 162.3, -357.1 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 171.7, -332.4 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 153, -271.6 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 505.3, -384.3 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 507.6, -331.3 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 310.3, -361.7 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 362.4, -265 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 458.2, -505.8 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 496.7, -507.6 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 516.6, -445.2 , 0 );
setMoveKey( spep_2 -3 + 333, 1, 516.6, -445.2 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 447.3, 3.2 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 635.5, 118.3 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 835.5, 168.3 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 268.7, -904.9 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 250, -815.4 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 194, -546.8 , 0 );
setMoveKey( spep_2 -3 + 347, 1, 194, -546.8 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 181.2, -385 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 112.3, -185.1 , 0 );
setMoveKey( spep_2 -3 + 351, 1, 112.3, -185.1 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 33.2, -9.6 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 14.1, 43.2 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 9.1, 57 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 6.2, 64.9 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 4.4, 70.1 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 3.1, 73.5 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 2.2, 75.9 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 1.6, 77.6 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 1.2, 78.7 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 0.9, 79.5 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 0.8, 80 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 0.7, 80.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 0.6, 80.5 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 0.6, 80.6 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 0.6, 80.6 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 0.5, 80.5 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 0.4, 80.4 , 0 );

setScaleKey( spep_2 -3 + 88, 1, 1, 1 );
setScaleKey( spep_2 -3 + 137, 1, 1, 1 );
setScaleKey( spep_2 -3 + 138, 1, 1, 1 );
setScaleKey( spep_2 -3 + 157, 1, 1, 1 );
setScaleKey( spep_2 -3 + 158, 1, 1, 1 );
setScaleKey( spep_2 -3 + 160, 1, 1, 1 );
setScaleKey( spep_2 -3 + 162, 1, 1.03, 1.03 );
setScaleKey( spep_2 -3 + 164, 1, 1.07, 1.07 );
setScaleKey( spep_2 -3 + 166, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 168, 1, 1.11, 1.11 );
setScaleKey( spep_2 -3 + 242, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 245, 1, 4.05, 4.05 );
setScaleKey( spep_2 -3 + 246, 1, 4.78, 4.78 );
setScaleKey( spep_2 -3 + 248, 1, 3.81, 3.81 );
setScaleKey( spep_2 -3 + 250, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 252, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 254, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 256, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 258, 1, 2.63, 2.63 );
setScaleKey( spep_2 -3 + 260, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 262, 1, 2.55, 2.55 );
setScaleKey( spep_2 -3 + 264, 1, 2.52, 2.52 );
setScaleKey( spep_2 -3 + 266, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 267, 1, 2.51, 2.51 );
setScaleKey( spep_2 -3 + 268, 1, 10.16, 10.16 );
setScaleKey( spep_2 -3 + 311, 1, 10.16, 10.16 );
setScaleKey( spep_2 -3 + 312, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 318, 1, 2.78, 2.78 );
setScaleKey( spep_2 -3 + 320, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 326, 1, 2.83, 2.83 );
setScaleKey( spep_2 -3 + 328, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 333, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 334, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 338, 1, 2.73, 2.73 );
setScaleKey( spep_2 -3 + 342, 1, 4.36, 4.36 );
setScaleKey( spep_2 -3 + 344, 1, 4.04, 4.04 );
setScaleKey( spep_2 -3 + 346, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 347, 1, 3.09, 3.09 );
setScaleKey( spep_2 -3 + 348, 1, 6.57, 6.57 );
setScaleKey( spep_2 -3 + 350, 1, 4.16, 4.16 );
setScaleKey( spep_2 -3 + 351, 1, 4.16, 4.16 );
setScaleKey( spep_2 -3 + 352, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 354, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 356, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 358, 1, 0.43, 0.43 );
setScaleKey( spep_2 -3 + 360, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 362, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 364, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 366, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 368, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 370, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 372, 1, 0.07, 0.07 );
setScaleKey( spep_2 -3 + 374, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 376, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 378, 1, 0.05, 0.05 );
setScaleKey( spep_2 -3 + 384, 1, 0.05, 0.05 );

setRotateKey( spep_2 -3 + 88, 1, 0 );
setRotateKey( spep_2 -3 + 137, 1, 0 );
setRotateKey( spep_2 -3 + 138, 1, 0 );
setRotateKey( spep_2 -3 + 152, 1, 0 );
setRotateKey( spep_2 -3 + 154, 1, -4.7 );
setRotateKey( spep_2 -3 + 156, 1, -19 );
setRotateKey( spep_2 -3 + 157, 1, -19 );
setRotateKey( spep_2 -3 + 158, 1, -3.8 );
setRotateKey( spep_2 -3 + 160, 1, -15.1 );
setRotateKey( spep_2 -3 + 168, 1, -15.1 );
setRotateKey( spep_2 -3 + 242, 1, 0 );

setRotateKey( spep_2 -3 + 244, 1, 0.7 );
setRotateKey( spep_2 -3 + 245, 1, 0.7 );
setRotateKey( spep_2 -3 + 246, 1, 6.9 );
setRotateKey( spep_2 -3 + 248, 1, 4.7 );
setRotateKey( spep_2 -3 + 250, 1, 2.5 );
setRotateKey( spep_2 -3 + 252, 1, 2.5 );
setRotateKey( spep_2 -3 + 254, 1, 6.7 );
setRotateKey( spep_2 -3 + 256, 1, 6.8 );
setRotateKey( spep_2 -3 + 258, 1, 6.9 );
setRotateKey( spep_2 -3 + 260, 1, 7.2 );
setRotateKey( spep_2 -3 + 262, 1, 7.5 );
setRotateKey( spep_2 -3 + 264, 1, 7.6 );
setRotateKey( spep_2 -3 + 266, 1, 7.7 );
setRotateKey( spep_2 -3 + 267, 1, 7.7 );
setRotateKey( spep_2 -3 + 268, 1, 16 );
setRotateKey( spep_2 -3 + 270, 1, 15.8 );
setRotateKey( spep_2 -3 + 272, 1, 15.7 );
setRotateKey( spep_2 -3 + 274, 1, 15.5 );
setRotateKey( spep_2 -3 + 276, 1, 15.4 );
setRotateKey( spep_2 -3 + 278, 1, 15.2 );
setRotateKey( spep_2 -3 + 280, 1, 15.1 );
setRotateKey( spep_2 -3 + 282, 1, 14.9 );
setRotateKey( spep_2 -3 + 284, 1, 14.7 );
setRotateKey( spep_2 -3 + 286, 1, 14.6 );
setRotateKey( spep_2 -3 + 288, 1, 14.4 );
setRotateKey( spep_2 -3 + 290, 1, 14.3 );
setRotateKey( spep_2 -3 + 292, 1, 14.1 );
setRotateKey( spep_2 -3 + 294, 1, 13.9 );
setRotateKey( spep_2 -3 + 296, 1, 13.8 );
setRotateKey( spep_2 -3 + 298, 1, 13.6 );
setRotateKey( spep_2 -3 + 300, 1, 13.5 );
setRotateKey( spep_2 -3 + 302, 1, 13.3 );
setRotateKey( spep_2 -3 + 304, 1, 13.2 );
setRotateKey( spep_2 -3 + 306, 1, 13 );
setRotateKey( spep_2 -3 + 311, 1, 13 );
setRotateKey( spep_2 -3 + 312, 1, -105 );
setRotateKey( spep_2 -3 + 322, 1, -105 );
setRotateKey( spep_2 -3 + 324, 1, -76 );
setRotateKey( spep_2 -3 + 326, 1, -76 );
setRotateKey( spep_2 -3 + 328, 1, -43 );
setRotateKey( spep_2 -3 + 333, 1, -43 );
setRotateKey( spep_2 -3 + 334, 1, 14.7 );
setRotateKey( spep_2 -3 + 338, 1, 14.7 );
setRotateKey( spep_2 -3 + 342, 1, -131 );
setRotateKey( spep_2 -3 + 347, 1, -131 );
setRotateKey( spep_2 -3 + 348, 1, 47.5 );
setRotateKey( spep_2 -3 + 351, 1, 47.5 );
setRotateKey( spep_2 -3 + 352, 1, 0 );
setRotateKey( spep_2 -3 + 384, 1, 0 );

setBlendColor( spep_2 + 0, 1, 0, 1.0, 0.81, 0, 0.16);  --黄色
setBlendColor( spep_2 -3 + 99, 1, 0, 1.0, 0.81, 0, 0.16);
setBlendColor( spep_2 -3 + 100, 1, 0, 0.43, 0.94, 1.0, 0.12);  --青
setBlendColor( spep_2 -3 + 135, 1, 0, 0.43, 0.94, 1.0, 0.12);
setBlendColor( spep_2 -3 + 136, 1, 0, 1.0, 0.81, 0, 0.16);  --黄色
setBlendColor( spep_2 -3 + 267, 1, 0, 1.0, 0.81, 0, 0.16);
setBlendColor( spep_2 -3 + 268, 1, 2, 0.13, 0.11, 0, 0.56);  --灰色
setBlendColor( spep_2 -3 + 311, 1, 2, 0.13, 0.11, 0, 0.56);
setBlendColor( spep_2 -3 + 312, 1, 2, 0.37, 0.30, 0, 0.46);  --薄茶色
setBlendColor( spep_2 -3 + 329, 1, 2, 0.37, 0.30, 0, 0.46);
setBlendColor( spep_2 -3 + 330, 1, 0, 0.47, 0.40, 0, 0.26);  --明るい薄茶色
setBlendColor( spep_2 -3 + 333, 1, 0, 0.47, 0.40, 0, 0.26);
setBlendColor( spep_2 -3 + 334, 1, 0, 1.0, 0.81, 0, 0.16);  --黄色
setBlendColor( spep_2 -3 + 341, 1, 0, 1.0, 0.81, 0, 0.16);
setBlendColor( spep_2 -3 + 342, 1, 0, 1.0, 1.0, 0, 0.09);  --明るい黄色
setBlendColor( spep_2 -3 + 384, 1, 0, 1.0, 1.0, 0, 0.09);
setBlendColor( spep_2 + 400, 1, 2, 0, 0, 0, 0);  --元に戻す

-- ** 音 ** --
--敵被弾
SE9 = playSe( spep_2 + 89, 1008 );
setSeVolume( spep_2 + 89, 1008, 89 );
stopSe( spep_2 + 98, SE9, 0 );

playSe( spep_2 + 91, 1023 );
setSeVolume( spep_2 + 91, 1023, 79 );

playSe( spep_2 + 91, 1162 );
setSeVolume( spep_2 + 91, 1162, 79 );

SE10 = playSe( spep_2 + 98, 1008 );
setSeVolume( spep_2 + 98, 1008, 112 );
stopSe( spep_2 + 107, SE10, 0 );

playSe( spep_2 + 101, 1017 );

SE11 = playSe( spep_2 + 107, 1008 );
setSeVolume( spep_2 + 107, 1008, 126 );
stopSe( spep_2 + 117, SE11, 0 );

--敵向かっていく
playSe( spep_2 + 145, 44 );
setSeVolume( spep_2 + 145, 44, 79 );

--ブロリーが向かってくる
playSe( spep_2 + 159, 1182 );
setSeVolume( spep_2 + 159, 1182, 178 );
setSeVolume( spep_2 + 169, 1182, 178 );
setSeVolume( spep_2 + 170, 1182, 136 );
setSeVolume( spep_2 + 171, 1182, 100 );

playSe( spep_2 + 159, 9 );
setSeVolume( spep_2 + 159, 9, 0 );
setSeVolume( spep_2 + 164, 9, 22 );
setSeVolume( spep_2 + 166, 9, 48 );
setSeVolume( spep_2 + 168, 9, 62 );
setSeVolume( spep_2 + 170, 9, 86 );
setSeVolume( spep_2 + 172, 9, 100 );

SE11 = playSe( spep_2 + 163, 1183 );
setSeVolume( spep_2 + 163, 1183, 126 );
stopSe( spep_2 + 265, SE11, 0 );

playSe( spep_2 + 192, 1072 );

SE12 = playSe( spep_2 + 207, 1116 );
stopSe( spep_2 + 232, SE12, 13 );

--パンチ
playSe( spep_2 + 229, 1004 );
playSe( spep_2 + 234, 1003 );
playSe( spep_2 + 247, 1009 );

SE13 = playSe( spep_2 + 249, 1190 );
setSeVolume( spep_2 + 249, 1190, 89 );
setSeVolume( spep_2 + 268, 1190, 89 );
setSeVolume( spep_2 + 272, 1190, 68 );
setSeVolume( spep_2 + 278, 1190, 52 );
setSeVolume( spep_2 + 284, 1190, 36 );
setSeVolume( spep_2 + 292, 1190, 14 );
setSeVolume( spep_2 + 296, 1190, 0 );
stopSe( spep_2 + 296, SE13, 0 );

playSe( spep_2 + 255, 1110 );
playSe( spep_2 + 255, 1190 );
setSeVolume( spep_2 + 255, 1190, 89 );

--ブロリー裏拳
playSe( spep_2 + 299, 1003 );
setSeVolume( spep_2 + 299, 1003, 158 );

SE14 = playSe( spep_2 + 306, 1182 );
setSeVolume( spep_2 + 306, 1182, 178 );
setSeVolume( spep_2 + 316, 1182, 178 );
setSeVolume( spep_2 + 318, 1182, 112 );
setSeVolume( spep_2 + 320, 1182, 54 );
setSeVolume( spep_2 + 322, 1182, 0 );
stopSe( spep_2 + 322, SE14, 0 );

playSe( spep_2 + 309, 1187 );

--敵が飛んでいく
SE15 = playSe( spep_2 + 319, 1121 );
stopSe( spep_2 + 388, SE15, 0 );

--岩へ衝突
SE16 = playSe( spep_2 + 383, 1159 );
stopSe( spep_2 + 437, SE16, 133 );

--気弾溜め
SE17 = playSe( spep_2 + 449, 1154 );
setSeVolume( spep_2 + 449, 1154, 0 );
setSeVolume( spep_2 + 459, 1154, 14 );
setSeVolume( spep_2 + 462, 1154, 46 );
setSeVolume( spep_2 + 464, 1154, 79 );
setSeVolume( spep_2 + 500, 1154, 79 );
setSeVolume( spep_2 + 504, 1154, 58 );
setSeVolume( spep_2 + 516, 1154, 42 );
setSeVolume( spep_2 + 520, 1154, 28 );
setSeVolume( spep_2 + 524, 1154, 16 );
setSeVolume( spep_2 + 526, 1154, 0 );
stopSe( spep_2 + 526, SE17, 0 );

playSe( spep_2 + 460, 1013 );
setSeVolume( spep_2 + 460, 1013, 112 );
playSe( spep_2 + 461, 1233 );
setSeVolume( spep_2 + 461, 1233, 79 );
playSe( spep_2 + 461, 49 );

--気弾発射
playSe( spep_2 + 499, 1004 );
playSe( spep_2 + 507, 1027 );
setSeVolume( spep_2 + 507, 1027, 56 );
playSe( spep_2 + 509, 1016 );
playSe( spep_2 + 512, 1015 );
setSeVolume( spep_2 + 512, 1015, 71 );
playSe( spep_2 + 512, 1021 );
setSeVolume( spep_2 + 512, 1021, 79 );
playSe( spep_2 + 518, 1016 );
playSe( spep_2 + 525, 1016 );
setSeVolume( spep_2 + 525, 1016, 79 );
playSe( spep_2 + 532, 1016 );
setSeVolume( spep_2 + 532, 1016, 71 );

--爆発
playSe( spep_2 + 565, 1002 );
playSe( spep_2 + 575, 1011 );
setSeVolume( spep_2 + 575, 1011, 89 );

SE18 = playSe( spep_2 + 575, 1159 );
setSeVolume( spep_2 + 575, 1159, 71 );
setSeVolume( spep_2 + 660, 1159, 71 );
setSeVolume( spep_2 + 676, 1159, 64 );
setSeVolume( spep_2 + 684, 1159, 57 );
setSeVolume( spep_2 + 698, 1159, 52 );
setSeVolume( spep_2 + 712, 1159, 48 );
setSeVolume( spep_2 + 736, 1159, 42 );
setSeVolume( spep_2 + 736, 1159, 26 );
setSeVolume( spep_2 + 752, 1159, 16 );
setSeVolume( spep_2 + 768, 1159, 8 );
setSeVolume( spep_2 + 771, 1159, 0 );
stopSe( spep_2 + 771, SE18, 0 );

playSe( spep_2 + 588, 1023 );
setSeVolume( spep_2 + 588, 1023, 89 );

playSe( spep_2 + 609, 44 );
setSeVolume( spep_2 + 609, 44, 0 );
setSeVolume( spep_2 + 612, 44, 10 );
setSeVolume( spep_2 + 616, 44, 24 );
setSeVolume( spep_2 + 614, 44, 32 );
setSeVolume( spep_2 + 616, 44, 46 );
setSeVolume( spep_2 + 618, 44, 68 );
setSeVolume( spep_2 + 620, 44, 84 );
setSeVolume( spep_2 + 622, 44, 100 );

--OK
playSe( spep_2 + 676 +2, 32 );
setSeVolume( spep_2 + 676 +2, 32, 89 );

playSe( spep_2 + 678 +2, 22 );
setSeVolume( spep_2 + 678 +2, 44, 0 );
setSeVolume( spep_2 + 686 +2, 44, 12 );
setSeVolume( spep_2 + 692 +2, 44, 26 );
setSeVolume( spep_2 + 696 +2, 44, 48 );
setSeVolume( spep_2 + 700 +2, 44, 63 );

playSe( spep_2 + 686 +2, 1042 );
setSeVolume( spep_2 + 686 +2, 1042, 89 );

--振り向く
playSe( spep_2 + 718, 1072 );
setSeVolume( spep_2 + 718, 1072, 0 );
setSeVolume( spep_2 + 740, 1072, 10 );
setSeVolume( spep_2 + 744, 1072, 62 );
setSeVolume( spep_2 + 746, 1072, 100 );

playSe( spep_2 + 737, 8 );

SE19 = playSe( spep_2 + 737, 1116 );
setSeVolume( spep_2 + 737, 1116, 79 );
setSeVolume( spep_2 + 763, 1116, 79 );
setSeVolume( spep_2 + 770, 1116, 54 );
setSeVolume( spep_2 + 774, 1116, 32 );
setSeVolume( spep_2 + 777, 1116, 0 );
stopSe( spep_2 + 777, SE19, 0 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 692 );
entryFade( spep_2 +812 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_2 + 812 );

end