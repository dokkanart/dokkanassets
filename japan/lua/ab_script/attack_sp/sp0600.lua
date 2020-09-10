--1018680:ダーブラ
--sp_effect_a1_00212

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
SP_01 = 154692; --対峙からTU
SP_02 = 154693; --バストアップから振り向きセリフ
SP_03 = 154694; --足元から煙が上がる
SP_04 = 154695; --右斜め上に飛び上がる
SP_05 = 154697; --画面に向かって迫ってくる
SP_06 = 154698; --敵の目の前へ高速移動
SP_07 = 154700; --画面に向かって手をかざす
SP_08 = 154701; --エビルインパルス発射
SP_09 = 154703; --効果線エフェクト
SP_10 = 154715; --右斜め上に飛び上がる（背景）

--敵側
SP_04r = 154696; --右斜め上に飛び上がる（反転）
SP_06r = 154699; --敵の目の前へ高速移動(反転)
SP_08r = 154702; --エビルインパルス発射（反転）

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;
adjustAttackerLabel( 0, -100 );

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 振り向き
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
furimuki = entryEffect( spep_0 + 38, SP_02, 0x80, -1, 0, 0, 0 ); --バストアップから振り向きセリフ(ef_002)
setEffMoveKey( spep_0 + 38, furimuki, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, furimuki, 0, 0, 0 );
setEffScaleKey( spep_0 + 38, furimuki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, furimuki, 1.0, 1.0 );
setEffRotateKey( spep_0 + 38, furimuki, 0 );
setEffRotateKey( spep_0 + 158, furimuki, 0 );
setEffAlphaKey( spep_0 + 38, furimuki, 0 );
setEffAlphaKey( spep_0 + 46, furimuki, 255 );
setEffAlphaKey( spep_0 + 158, furimuki, 255 );

taiji = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --対峙からTU(ef_001)
setEffMoveKey( spep_0 + 0, taiji, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, taiji, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, taiji, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, taiji, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taiji, 0 );
setEffRotateKey( spep_0 + 50, taiji, 0 );
setEffAlphaKey( spep_0 + 0, taiji, 255 );
setEffAlphaKey( spep_0 + 50, taiji, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 48, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 102 );

setMoveKey( spep_0 -3 + 3, 1, 256.5, -146 , 0 );
--setMoveKey( spep_0 -3 + 2, 1, 258.5, -144.7 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 261.5, -142.8 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 265.2, -140.4 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 269.5, -137.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 274.5, -134.4 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 280, -130.8 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 286, -126.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 292.5, -122.7 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 299.4, -118.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 306.8, -113.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 314.7, -108.4 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 322.9, -103.1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 331.5, -97.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 340.5, -91.6 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 350, -85.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 359.9, -79.1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 370.2, -72.4 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 380.9, -65.5 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 392.1, -58.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 403.8, -50.7 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 416, -42.8 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 428.7, -34.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 442, -25.9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 442, -25.9 , 0 );

setScaleKey( spep_0 -3 + 3, 1, 4.04, 4.04 );
--setScaleKey( spep_0 -3 + 2, 1, 4.05, 4.05 );
setScaleKey( spep_0 -3 + 4, 1, 4.06, 4.06 );
setScaleKey( spep_0 -3 + 5, 1, 4.06, 4.06 );
setScaleKey( spep_0 -3 + 6, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 8, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 8, 1, 4.1, 4.1 );
setScaleKey( spep_0 -3 + 9, 1, 4.1, 4.1 );
setScaleKey( spep_0 -3 + 10, 1, 4.12, 4.12 );
setScaleKey( spep_0 -3 + 12, 1, 4.15, 4.15 );
setScaleKey( spep_0 -3 + 14, 1, 4.17, 4.17 );
setScaleKey( spep_0 -3 + 16, 1, 4.21, 4.21 );
setScaleKey( spep_0 -3 + 18, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 20, 1, 4.27, 4.27 );
setScaleKey( spep_0 -3 + 22, 1, 4.31, 4.31 );
setScaleKey( spep_0 -3 + 24, 1, 4.35, 4.35 );
setScaleKey( spep_0 -3 + 26, 1, 4.39, 4.39 );
setScaleKey( spep_0 -3 + 28, 1, 4.43, 4.43 );
setScaleKey( spep_0 -3 + 30, 1, 4.47, 4.47 );
setScaleKey( spep_0 -3 + 32, 1, 4.52, 4.52 );
setScaleKey( spep_0 -3 + 34, 1, 4.57, 4.57 );
setScaleKey( spep_0 -3 + 36, 1, 4.62, 4.62 );
setScaleKey( spep_0 -3 + 38, 1, 4.67, 4.67 );
setScaleKey( spep_0 -3 + 40, 1, 4.72, 4.72 );
setScaleKey( spep_0 -3 + 42, 1, 4.78, 4.78 );
setScaleKey( spep_0 -3 + 44, 1, 4.84, 4.84 );
setScaleKey( spep_0 -3 + 46, 1, 4.9, 4.9 );
setScaleKey( spep_0 -3 + 48, 1, 4.9, 4.9 );

setRotateKey( spep_0 -3 + 3, 1, -9.8 );
setRotateKey( spep_0 -3 + 4, 1, -9.8 );
setRotateKey( spep_0 -3 + 5, 1, -9.8 );
setRotateKey( spep_0 -3 + 6, 1, -9.8 );
setRotateKey( spep_0 -3 + 7, 1, -9.8 );
setRotateKey( spep_0 -3 + 8, 1, -9.8 );
setRotateKey( spep_0 -3 + 9, 1, -9.8 );
setRotateKey( spep_0 -3 + 48, 1, -9.8 );

setAlphaKey( spep_0 -3 + 3, 1, 255 );
setAlphaKey( spep_0 -3 + 40, 1, 255 );
setAlphaKey( spep_0 -3 + 48, 1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 90, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 -17 + 90, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 160, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_0 + 0, 44 );
setSeVolume( spep_0 + 0, 44, 0.00 );
setSeVolume( spep_0 + 1, 44, 3.62 );
setSeVolume( spep_0 + 2, 44, 7.23 );
setSeVolume( spep_0 + 3, 44, 10.85 );
setSeVolume( spep_0 + 4, 44, 14.46 );
setSeVolume( spep_0 + 5, 44, 18.08 );
setSeVolume( spep_0 + 6, 44, 21.69 );
setSeVolume( spep_0 + 7, 44, 25.31 );
setSeVolume( spep_0 + 8, 44, 28.92 );
setSeVolume( spep_0 + 9, 44, 32.54 );
setSeVolume( spep_0 + 10, 44, 36.15 );
setSeVolume( spep_0 + 11, 44, 39.77 );
setSeVolume( spep_0 + 12, 44, 43.38 );
setSeVolume( spep_0 + 13, 44, 47.00 );
setSeVolume( spep_0 + 14, 44, 50.62 );
setSeVolume( spep_0 + 15, 44, 54.23 );
setSeVolume( spep_0 + 16, 44, 57.85 );
setSeVolume( spep_0 + 17, 44, 61.46 );
setSeVolume( spep_0 + 18, 44, 65.08 );
setSeVolume( spep_0 + 19, 44, 68.69 );
setSeVolume( spep_0 + 20, 44, 72.31 );
setSeVolume( spep_0 + 21, 44, 75.92 );
setSeVolume( spep_0 + 22, 44, 79.54 );
setSeVolume( spep_0 + 23, 44, 83.15 );
setSeVolume( spep_0 + 24, 44, 86.77 );
setSeVolume( spep_0 + 25, 44, 90.38 );
setSeVolume( spep_0 + 26, 44, 94.00 );
setSeVolume( spep_0 + 27, 44, 97.62 );
setSeVolume( spep_0 + 28, 44, 101.23 );
setSeVolume( spep_0 + 29, 44, 104.85 );
setSeVolume( spep_0 + 30, 44, 108.46 );
setSeVolume( spep_0 + 31, 44, 112.08 );
setSeVolume( spep_0 + 32, 44, 115.69 );
setSeVolume( spep_0 + 33, 44, 119.31 );
setSeVolume( spep_0 + 34, 44, 122.92 );
setSeVolume( spep_0 + 35, 44, 126.54 );
setSeVolume( spep_0 + 36, 44, 130.15 );
setSeVolume( spep_0 + 37, 44, 133.77 );
setSeVolume( spep_0 + 38, 44, 137.38 );
setSeVolume( spep_0 + 39, 44, 141.00 );
playSe( spep_0 + 27, 08 );
setSeVolume( spep_0 + 27, 08, 0.00 );
setSeVolume( spep_0 + 28, 08, 4.85 );
setSeVolume( spep_0 + 29, 08, 9.69 );
setSeVolume( spep_0 + 30, 08, 14.54 );
setSeVolume( spep_0 + 31, 08, 19.38 );
setSeVolume( spep_0 + 32, 08, 24.23 );
setSeVolume( spep_0 + 33, 08, 29.08 );
setSeVolume( spep_0 + 34, 08, 33.92 );
setSeVolume( spep_0 + 35, 08, 38.77 );
setSeVolume( spep_0 + 36, 08, 43.62 );
setSeVolume( spep_0 + 37, 08, 48.46 );
setSeVolume( spep_0 + 38, 08, 53.31 );
setSeVolume( spep_0 + 39, 08, 58.15 );
setSeVolume( spep_0 + 40, 08, 63.00 );
setSeVolume( spep_0 + 41, 08, 67.85 );
setSeVolume( spep_0 + 42, 08, 72.69 );
setSeVolume( spep_0 + 43, 08, 77.54 );
setSeVolume( spep_0 + 44, 08, 82.38 );
setSeVolume( spep_0 + 45, 08, 87.23 );
setSeVolume( spep_0 + 46, 08, 92.08 );
setSeVolume( spep_0 + 47, 08, 96.92 );
setSeVolume( spep_0 + 48, 08, 101.77 );
setSeVolume( spep_0 + 49, 08, 106.62 );
setSeVolume( spep_0 + 50, 08, 111.46 );
setSeVolume( spep_0 + 51, 08, 116.31 );
setSeVolume( spep_0 + 52, 08, 121.15 );
setSeVolume( spep_0 + 53, 08, 126.00 );
se_1191 = playSe( spep_0 + 84, 1191 );
setSeVolume( spep_0 + 84, 1191, 0 );
playSe( spep_0 + 73, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 158;

------------------------------------------------------
-- 足元から煙が上がる
------------------------------------------------------
-- ** エフェクト等 ** --
kemuri = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --足元から煙が上がる(ef_003)
setEffMoveKey( spep_1 + 0, kemuri, 0, 0, 0 );
setEffMoveKey( spep_1 + 156, kemuri, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kemuri, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, kemuri, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kemuri, 0 );
setEffRotateKey( spep_1 + 156, kemuri, 0 );
setEffAlphaKey( spep_1 + 0, kemuri, 255 );
setEffAlphaKey( spep_1 + 156, kemuri, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 146, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 158, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
se_1175 = playSe( spep_1 + 3, 1175 );
setSeVolume( spep_1 + 3, 1175, 0 );
setSeVolume( spep_1 + 10, 1175, 0.00 );
setSeVolume( spep_1 + 11, 1175, 4.44 );
setSeVolume( spep_1 + 12, 1175, 8.88 );
setSeVolume( spep_1 + 13, 1175, 13.31 );
setSeVolume( spep_1 + 14, 1175, 17.75 );
setSeVolume( spep_1 + 15, 1175, 22.19 );
setSeVolume( spep_1 + 16, 1175, 26.63 );
setSeVolume( spep_1 + 17, 1175, 31.06 );
setSeVolume( spep_1 + 18, 1175, 35.50 );
setSeVolume( spep_1 + 19, 1175, 39.94 );
setSeVolume( spep_1 + 20, 1175, 44.38 );
setSeVolume( spep_1 + 21, 1175, 48.81 );
setSeVolume( spep_1 + 22, 1175, 53.25 );
setSeVolume( spep_1 + 23, 1175, 57.69 );
setSeVolume( spep_1 + 24, 1175, 62.13 );
setSeVolume( spep_1 + 25, 1175, 66.56 );
setSeVolume( spep_1 + 26, 1175, 71.00 );
setSeVolume( spep_1 + 5, 1191, 0.00 );
setSeVolume( spep_1 + 6, 1191, 2.25 );
setSeVolume( spep_1 + 7, 1191, 4.50 );
setSeVolume( spep_1 + 8, 1191, 6.75 );
setSeVolume( spep_1 + 9, 1191, 9.00 );
setSeVolume( spep_1 + 10, 1191, 11.25 );
setSeVolume( spep_1 + 11, 1191, 13.50 );
setSeVolume( spep_1 + 12, 1191, 15.75 );
setSeVolume( spep_1 + 13, 1191, 18.00 );
playSe( spep_1 -12 + 87, 1002 );
setSeVolume( spep_1 -12 + 87, 1002, 0 );
se_1116 = playSe( spep_1 -12 + 95, 1116 );
stopSe( spep_1 + 96, se_1175, 20 );
stopSe( spep_1 + 98, se_1191, 0 );
setSeVolume( spep_1 -12 + 103, 1002, 0.00 );
setSeVolume( spep_1 -12 + 104, 1002, 5.27 );
setSeVolume( spep_1 -12 + 105, 1002, 10.53 );
setSeVolume( spep_1 -12 + 106, 1002, 15.80 );
setSeVolume( spep_1 -12 + 107, 1002, 21.07 );
setSeVolume( spep_1 -12 + 108, 1002, 26.33 );
setSeVolume( spep_1 -12 + 109, 1002, 31.60 );
setSeVolume( spep_1 -12 + 110, 1002, 36.87 );
setSeVolume( spep_1 -12 + 111, 1002, 42.13 );
setSeVolume( spep_1 -12 + 112, 1002, 47.40 );
setSeVolume( spep_1 -12 + 113, 1002, 52.67 );
setSeVolume( spep_1 -12 + 114, 1002, 57.93 );
setSeVolume( spep_1 -12 + 115, 1002, 63.20 );
setSeVolume( spep_1 -12 + 116, 1002, 68.47 );
setSeVolume( spep_1 -12 + 117, 1002, 73.73 );
setSeVolume( spep_1 -12 + 118, 1002, 79.00 );
stopSe( spep_1 -12 + 116, se_1116, 25 );
playSe( spep_1 -12 + 143, 1072 );
setSeVolume( spep_1 -12 + 143, 1072, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 156;

------------------------------------------------------
-- 右斜め上に飛び上がる
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --右斜め上に飛び上がる(ef_004)
setEffMoveKey( spep_2 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, jump, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, jump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 86, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 86, jump, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 76, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
setSeVolume( spep_2 -12 + 5, 1072, 0.00 );
setSeVolume( spep_2 -12 + 6, 1072, 6.67 );
setSeVolume( spep_2 -12 + 7, 1072, 13.33 );
setSeVolume( spep_2 -12 + 8, 1072, 20.00 );
setSeVolume( spep_2 -12 + 9, 1072, 26.67 );
setSeVolume( spep_2 -12 + 10, 1072, 33.33 );
setSeVolume( spep_2 -12 + 11, 1072, 40.00 );
setSeVolume( spep_2 -12 + 12, 1072, 46.67 );
setSeVolume( spep_2 -12 + 13, 1072, 53.33 );
setSeVolume( spep_2 -12 + 14, 1072, 60.00 );
setSeVolume( spep_2 -12 + 15, 1072, 66.67 );
setSeVolume( spep_2 -12 + 16, 1072, 73.33 );
setSeVolume( spep_2 -12 + 17, 1072, 80.00 );
setSeVolume( spep_2 -12 + 18, 1072, 86.67 );
setSeVolume( spep_2 -12 + 19, 1072, 93.33 );
setSeVolume( spep_2 -12 + 20, 1072, 100.00 );
playSe( spep_2 -12 + 56, 09 );
playSe( spep_2 -12 + 56, 1182 );
se_1019 = playSe( spep_2 -12 + 66, 1019 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

------------------------------------------------------
-- 画面に向かって迫ってくる
------------------------------------------------------
-- ** エフェクト等 ** --
semaru = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --画面に向かって迫ってくる(ef_005)
setEffMoveKey( spep_3 + 0, semaru, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, semaru, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, semaru, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru, 0 );
setEffRotateKey( spep_3 + 116, semaru, 0 );
setEffAlphaKey( spep_3 + 0, semaru, 255 );
setEffAlphaKey( spep_3 + 116, semaru, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 118, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
se_1183 = playSe( spep_3 -12 + 3, 1183 );
setSeVolume( spep_3 -12 + 3, 1183, 158 );
se_1116 = playSe( spep_3 -12 + 37, 1116 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1183, 0 );
    stopSe( SP_dodge - 12, se_1116, 0 );
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    setRotateKey( SP_dodge + 32, 1, 2.5 );
    setAlphaKey( SP_dodge + 32, 1, 255 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 9,   1,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;

------------------------------------------------------
-- 敵の目の前へ高速移動
------------------------------------------------------
-- ** エフェクト等 ** --
idou_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); --敵の目の前へ高速移動(ef_006)
setEffMoveKey( spep_4 + 0, idou_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 58, idou_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, idou_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, idou_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, idou_f, 0 );
setEffRotateKey( spep_4 + 58, idou_f, 0 );
setEffAlphaKey( spep_4 + 0, idou_f, 255 );
setEffAlphaKey( spep_4 + 57, idou_f, 255 );
setEffAlphaKey( spep_4 + 58, idou_f, 0 );
setEffAlphaKey( spep_4 + 59, idou_f, 0 );

idou_b = entryEffectLife( spep_4 + 0, SP_10, 58, 0x80, -1, 0, 0, 0 ); --敵の目の前へ高速移動・背景(ef_010)
setEffMoveKey( spep_4 + 0, idou_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 58, idou_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, idou_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, idou_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, idou_b, 0 );
setEffRotateKey( spep_4 + 58, idou_b, 0 );
setEffAlphaKey( spep_4 + 0, idou_b, 255 );
setEffAlphaKey( spep_4 + 58, idou_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
setDisp( spep_4 -3 + 61, 1, 0 );
changeAnime( spep_4 -3 + 3, 1, 101 );

setMoveKey( spep_4 -3 + 3, 1, 134.9, -50.4 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 138.6, -50.4 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 142.2, -50.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 142.9, -50.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 143.3, -50.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 143.6, -50.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 143.9, -50.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 144.1, -50.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 144.2, -50.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 144.4, -50.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 144.5, -50.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 144.5, -50.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 144.6, -50.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 144.6, -50.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 144.7, -50.4 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 144.7, -50.4 , 0 );

setScaleKey( spep_4 -3 + 3, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 61, 1, 1.3, 1.3 );

setRotateKey( spep_4 -3 + 3, 1, 15 );
--setRotateKey( spep_4 -3 + 2, 1, 19.5 );
setRotateKey( spep_4 -3 + 4, 1, 24 );
setRotateKey( spep_4 -3 + 6, 1, 24.6 );
setRotateKey( spep_4 -3 + 8, 1, 24.9 );
setRotateKey( spep_4 -3 + 10, 1, 25.2 );
setRotateKey( spep_4 -3 + 12, 1, 25.4 );
setRotateKey( spep_4 -3 + 14, 1, 25.5 );
setRotateKey( spep_4 -3 + 16, 1, 25.7 );
setRotateKey( spep_4 -3 + 18, 1, 25.8 );
setRotateKey( spep_4 -3 + 20, 1, 25.8 );
setRotateKey( spep_4 -3 + 22, 1, 25.9 );
setRotateKey( spep_4 -3 + 24, 1, 26 );
setRotateKey( spep_4 -3 + 61, 1, 26 );

setAlphaKey( spep_4 -3 + 3, 1, 255 );
setAlphaKey( spep_4 -3 + 61, 1, 255 );

-- ** 書き文字エントリー ** --
ctbiikuri = entryEffectLife( spep_4 -3 + 6, 10000, 18, 0x100, -1, 0, 206.1, 148.9 ); --!!
setEffMoveKey( spep_4 -3 + 6, ctbiikuri, 206.1, 148.9 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctbiikuri, 197.6, 136.4 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctbiikuri, 190.6, 136 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctbiikuri, 197.2, 143.4 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctbiikuri, 197.6, 136.4 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctbiikuri, 190.6, 136 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctbiikuri, 197.2, 143.4 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctbiikuri, 197.6, 136.4 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctbiikuri, 190.6, 136 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctbiikuri, 197.2, 143.4 , 0 );

setEffScaleKey( spep_4 -3 + 6, ctbiikuri, 2.41, 2.41 );
setEffScaleKey( spep_4 -3 + 8, ctbiikuri, 1.61, 1.61 );
setEffScaleKey( spep_4 -3 + 24, ctbiikuri, 1.61, 1.61 );

setEffRotateKey( spep_4 -3 + 6, ctbiikuri, 18 );
setEffRotateKey( spep_4 -3 + 24, ctbiikuri, 18 );

setEffAlphaKey( spep_4 -3 + 6, ctbiikuri, 255 );
setEffAlphaKey( spep_4 -3 + 24, ctbiikuri, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_4 -12 + 20, 1004 );
stopSe( spep_4 -12 + 23, se_1019, 0 );
stopSe( spep_4 -12 + 23, se_1183, 0 );
stopSe( spep_4 -12 + 23, se_1116, 0 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;

------------------------------------------------------
-- 画面に向かって手をかざす
------------------------------------------------------
-- ** エフェクト等 ** --
kazasu = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --画面に向かって手をかざす(ef_007)
setEffMoveKey( spep_5 + 0, kazasu, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, kazasu, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kazasu, 1, 1 );
setEffScaleKey( spep_5 + 56, kazasu, 1, 1 );
setEffRotateKey( spep_5 + 0, kazasu, 0 );
setEffRotateKey( spep_5 + 56, kazasu, 0 );
setEffAlphaKey( spep_5 + 0, kazasu, 255 );
setEffAlphaKey( spep_5 + 56, kazasu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_5 -12 + 3, 1072 );
setSeVolume( spep_5 -12 + 3, 1072, 0 );
setSeVolume( spep_5 -12 + 18, 1072, 0.00 );
setSeVolume( spep_5 -12 + 19, 1072, 9.09 );
setSeVolume( spep_5 -12 + 20, 1072, 18.18 );
setSeVolume( spep_5 -12 + 21, 1072, 27.27 );
setSeVolume( spep_5 -12 + 22, 1072, 36.36 );
setSeVolume( spep_5 -12 + 23, 1072, 45.45 );
setSeVolume( spep_5 -12 + 24, 1072, 54.55 );
setSeVolume( spep_5 -12 + 25, 1072, 63.64 );
setSeVolume( spep_5 -12 + 26, 1072, 72.73 );
setSeVolume( spep_5 -12 + 27, 1072, 81.82 );
setSeVolume( spep_5 -12 + 28, 1072, 90.91 );
setSeVolume( spep_5 -12 + 29, 1072, 100.00 );
se_1173 = playSe( spep_5 -12 + 29, 1173 );
playSe( spep_5 -12 + 29, 1010 );
setSeVolume( spep_5 -12 + 29, 1010, 0 );
setSeVolume( spep_5 -12 + 33, 1010, 0.00 );
setSeVolume( spep_5 -12 + 34, 1010, 10.00 );
setSeVolume( spep_5 -12 + 35, 1010, 20.00 );
setSeVolume( spep_5 -12 + 36, 1010, 30.00 );
setSeVolume( spep_5 -12 + 37, 1010, 40.00 );
setSeVolume( spep_5 -12 + 38, 1010, 50.00 );
setSeVolume( spep_5 -12 + 39, 1010, 60.00 );
setSeVolume( spep_5 -12 + 40, 1010, 70.00 );
setSeVolume( spep_5 -12 + 41, 1010, 80.00 );
setSeVolume( spep_5 -12 + 42, 1010, 90.00 );
setSeVolume( spep_5 -12 + 43, 1010, 100.00 );
stopSe( spep_5 -12 + 51, se_1173, 30 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6, 1035 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- エビルインパルス発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassha_f = entryEffect( spep_7 + 0, SP_08, 0x100, -1, 0, 0, 0 ); --エビルインパルス発射(ef_008)
setEffMoveKey( spep_7 + 0, hassha_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 176, hassha_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 176, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hassha_f, 0 );
setEffRotateKey( spep_7 + 176, hassha_f, 0 );
setEffAlphaKey( spep_7 + 0, hassha_f, 255 );
setEffAlphaKey( spep_7 + 176, hassha_f, 255 );

hassha_b = entryEffectLife( spep_7 + 0, 921, 176, 0x80, -1, 0, 10, 60.1 ); --効果線エフェクト(ef_009)
setEffMoveKey( spep_7 + 0, hassha_b, 10, 60.1, 0 );
setEffMoveKey( spep_7 + 176, hassha_b, 10, 60.1, 0 );
setEffScaleKey( spep_7 + 0, hassha_b, 1.6 , 1.4 );
setEffScaleKey( spep_7 + 176, hassha_b, 1.6, 1.4 );
setEffRotateKey( spep_7 + 0, hassha_b, -32 );
setEffRotateKey( spep_7 + 176, hassha_b, -32 );
setEffAlphaKey( spep_7 + 0, hassha_b, 255 );
setEffAlphaKey( spep_7 + 176, hassha_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_7 -3 + 3, 1, 1 );
changeAnime( spep_7 -3 + 3, 1, 100 );
changeAnime( spep_7 -3 + 18, 1, 108 );

setMoveKey( spep_7 -3 + 3, 1, 142.7, -5 , 0 );
--setMoveKey( spep_7 -3 + 2, 1, 142, -4.3 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 141.2, -3.5 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 142.7, -5.3 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 143.3, -5.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 143.8, -5.3 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 138.7, -4.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 133.6, -3.7 , 0 );
setMoveKey( spep_7 -3 + 17, 1, 142.2, 1.4 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 196.6, 31 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 253.2, 80.9 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 330.4, 119 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 407.5, 157 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 471.7, 205.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 557.4, 243.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 624.6, 286.1 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 619.5, 287.5 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 622.1, 286.4 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 624.7, 285.4 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 627.3, 284.3 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 623.7, 287 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 628.2, 284.3 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 624.8, 284.5 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 626.1, 284.5 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 627.3, 284.5 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 625.5, 284.7 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 623.7, 284.9 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 626.4, 285.1 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 625.3, 285.8 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 624.3, 286.5 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 625.3, 286.2 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 626.4, 285.9 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 624.8, 286.7 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 625.9, 284.6 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 625.7, 284.5 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 625.5, 284.3 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 623.9, 287.4 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 624.6, 286.3 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 625.3, 285.3 , 0 );
setMoveKey( spep_7 -3 + 78, 1, 624.9, 285.8 , 0 );
setMoveKey( spep_7 -3 + 80, 1, 624.4, 286.3 , 0 );
setMoveKey( spep_7 -3 + 82, 1, 623.1, 287 , 0 );
setMoveKey( spep_7 -3 + 84, 1, 625, 287.3 , 0 );
setMoveKey( spep_7 -3 + 86, 1, 624.5, 285.9 , 0 );
setMoveKey( spep_7 -3 + 88, 1, 624.1, 284.5 , 0 );
setMoveKey( spep_7 -3 + 90, 1, 624.9, 285.3 , 0 );
setMoveKey( spep_7 -3 + 92, 1, 625.6, 286.1 , 0 );
setMoveKey( spep_7 -3 + 94, 1, 624.5, 285.6 , 0 );
setMoveKey( spep_7 -3 + 96, 1, 623.4, 285.1 , 0 );
setMoveKey( spep_7 -3 + 98, 1, 625.3, 285.9 , 0 );
setMoveKey( spep_7 -3 + 100, 1, 623.9, 286.1 , 0 );
setMoveKey( spep_7 -3 + 102, 1, 625.6, 287.7 , 0 );
setMoveKey( spep_7 -3 + 104, 1, 624.9, 286.1 , 0 );
setMoveKey( spep_7 -3 + 106, 1, 624.1, 284.6 , 0 );
setMoveKey( spep_7 -3 + 108, 1, 624.5, 286.1 , 0 );
setMoveKey( spep_7 -3 + 110, 1, 624.9, 287.7 , 0 );
setMoveKey( spep_7 -3 + 112, 1, 624.1, 286.6 , 0 );
setMoveKey( spep_7 -3 + 114, 1, 625.7, 284.6 , 0 );
setMoveKey( spep_7 -3 + 116, 1, 624.9, 285.8 , 0 );
setMoveKey( spep_7 -3 + 118, 1, 624.1, 287.1 , 0 );
setMoveKey( spep_7 -3 + 120, 1, 625.7, 284.6 , 0 );
setMoveKey( spep_7 -3 + 122, 1, 624.9, 286.1 , 0 );
setMoveKey( spep_7 -3 + 124, 1, 624.1, 287.5 , 0 );
setMoveKey( spep_7 -3 + 126, 1, 625.7, 287.5 , 0 );
setMoveKey( spep_7 -3 + 128, 1, 624.9, 287.5 , 0 );
setMoveKey( spep_7 -3 + 130, 1, 624.1, 287.5 , 0 );
setMoveKey( spep_7 -3 + 132, 1, 625.6, 285.4 , 0 );
setMoveKey( spep_7 -3 + 134, 1, 625, 286.2 , 0 );
setMoveKey( spep_7 -3 + 136, 1, 624.4, 287.1 , 0 );
setMoveKey( spep_7 -3 + 138, 1, 625.6, 287.1 , 0 );
setMoveKey( spep_7 -3 + 140, 1, 624.9, 287.1 , 0 );
setMoveKey( spep_7 -3 + 142, 1, 624.1, 287.1 , 0 );
setMoveKey( spep_7 -3 + 144, 1, 625.6, 287.1 , 0 );
setMoveKey( spep_7 -3 + 146, 1, 624.8, 287.3 , 0 );
setMoveKey( spep_7 -3 + 148, 1, 623.9, 287.5 , 0 );
setMoveKey( spep_7 -3 + 150, 1, 625.6, 286.8 , 0 );
setMoveKey( spep_7 -3 + 152, 1, 624.9, 286.1 , 0 );
setMoveKey( spep_7 -3 + 154, 1, 624.1, 285.4 , 0 );
setMoveKey( spep_7 -3 + 156, 1, 625.6, 287.1 , 0 );
setMoveKey( spep_7 -3 + 158, 1, 624.7, 285.4 , 0 );
setMoveKey( spep_7 -3 + 160, 1, 624.9, 285.8 , 0 );
setMoveKey( spep_7 -3 + 162, 1, 625.2, 286.1 , 0 );
setMoveKey( spep_7 -3 + 164, 1, 625.5, 286.5 , 0 );
setMoveKey( spep_7 -3 + 166, 1, 624.6, 287.7 , 0 );
setMoveKey( spep_7 -3 + 168, 1, 625.3, 287.1 , 0 );
setMoveKey( spep_7 -3 + 170, 1, 625.1, 287.1 , 0 );
setMoveKey( spep_7 -3 + 172, 1, 624.9, 287.1 , 0 );

setScaleKey( spep_7 -3 + 3, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 172, 1, 1.6, 1.6 );

setRotateKey( spep_7 -3 + 3, 1, 0 );
setRotateKey( spep_7 -3 + 172, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 176, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_7 + 3, 49 );
playSe( spep_7 + 15, 1213 );
setSeVolume( spep_7 + 30, 1213, 89 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 14 );
endPhase( spep_7 + 160 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 振り向き
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** --
furimuki = entryEffect( spep_0 + 38, SP_02, 0x80, -1, 0, 0, 0 ); --バストアップから振り向きセリフ(ef_002)
setEffMoveKey( spep_0 + 38, furimuki, 0, 0, 0 );
setEffMoveKey( spep_0 + 158, furimuki, 0, 0, 0 );
setEffScaleKey( spep_0 + 38, furimuki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 158, furimuki, 1.0, 1.0 );
setEffRotateKey( spep_0 + 38, furimuki, 0 );
setEffRotateKey( spep_0 + 158, furimuki, 0 );
setEffAlphaKey( spep_0 + 38, furimuki, 0 );
setEffAlphaKey( spep_0 + 46, furimuki, 255 );
setEffAlphaKey( spep_0 + 158, furimuki, 255 );

taiji = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --対峙からTU(ef_001)
setEffMoveKey( spep_0 + 0, taiji, 0, 0, 0 );
setEffMoveKey( spep_0 + 50, taiji, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, taiji, 1.0, 1.0 );
setEffScaleKey( spep_0 + 50, taiji, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taiji, 0 );
setEffRotateKey( spep_0 + 50, taiji, 0 );
setEffAlphaKey( spep_0 + 0, taiji, 255 );
setEffAlphaKey( spep_0 + 50, taiji, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 48, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 102 );

setMoveKey( spep_0 -3 + 3, 1, 256.5, -146 , 0 );
--setMoveKey( spep_0 -3 + 2, 1, 258.5, -144.7 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 261.5, -142.8 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 265.2, -140.4 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 269.5, -137.6 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 274.5, -134.4 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 280, -130.8 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 286, -126.9 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 292.5, -122.7 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 299.4, -118.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 306.8, -113.4 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 314.7, -108.4 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 322.9, -103.1 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 331.5, -97.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 340.5, -91.6 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 350, -85.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 359.9, -79.1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 370.2, -72.4 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 380.9, -65.5 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 392.1, -58.2 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 403.8, -50.7 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 416, -42.8 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 428.7, -34.6 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 442, -25.9 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 442, -25.9 , 0 );

setScaleKey( spep_0 -3 + 3, 1, 4.04, 4.04 );
--setScaleKey( spep_0 -3 + 2, 1, 4.05, 4.05 );
setScaleKey( spep_0 -3 + 4, 1, 4.06, 4.06 );
setScaleKey( spep_0 -3 + 5, 1, 4.06, 4.06 );
setScaleKey( spep_0 -3 + 6, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 8, 1, 4.08, 4.08 );
setScaleKey( spep_0 -3 + 8, 1, 4.1, 4.1 );
setScaleKey( spep_0 -3 + 9, 1, 4.1, 4.1 );
setScaleKey( spep_0 -3 + 10, 1, 4.12, 4.12 );
setScaleKey( spep_0 -3 + 12, 1, 4.15, 4.15 );
setScaleKey( spep_0 -3 + 14, 1, 4.17, 4.17 );
setScaleKey( spep_0 -3 + 16, 1, 4.21, 4.21 );
setScaleKey( spep_0 -3 + 18, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 20, 1, 4.27, 4.27 );
setScaleKey( spep_0 -3 + 22, 1, 4.31, 4.31 );
setScaleKey( spep_0 -3 + 24, 1, 4.35, 4.35 );
setScaleKey( spep_0 -3 + 26, 1, 4.39, 4.39 );
setScaleKey( spep_0 -3 + 28, 1, 4.43, 4.43 );
setScaleKey( spep_0 -3 + 30, 1, 4.47, 4.47 );
setScaleKey( spep_0 -3 + 32, 1, 4.52, 4.52 );
setScaleKey( spep_0 -3 + 34, 1, 4.57, 4.57 );
setScaleKey( spep_0 -3 + 36, 1, 4.62, 4.62 );
setScaleKey( spep_0 -3 + 38, 1, 4.67, 4.67 );
setScaleKey( spep_0 -3 + 40, 1, 4.72, 4.72 );
setScaleKey( spep_0 -3 + 42, 1, 4.78, 4.78 );
setScaleKey( spep_0 -3 + 44, 1, 4.84, 4.84 );
setScaleKey( spep_0 -3 + 46, 1, 4.9, 4.9 );
setScaleKey( spep_0 -3 + 48, 1, 4.9, 4.9 );

setRotateKey( spep_0 -3 + 3, 1, -9.8 );
setRotateKey( spep_0 -3 + 4, 1, -9.8 );
setRotateKey( spep_0 -3 + 5, 1, -9.8 );
setRotateKey( spep_0 -3 + 6, 1, -9.8 );
setRotateKey( spep_0 -3 + 7, 1, -9.8 );
setRotateKey( spep_0 -3 + 8, 1, -9.8 );
setRotateKey( spep_0 -3 + 9, 1, -9.8 );
setRotateKey( spep_0 -3 + 48, 1, -9.8 );

setAlphaKey( spep_0 -3 + 3, 1, 255 );
setAlphaKey( spep_0 -3 + 40, 1, 255 );
setAlphaKey( spep_0 -3 + 48, 1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 90, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 -17 + 90, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 160, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_0 + 0, 44 );
setSeVolume( spep_0 + 0, 44, 0.00 );
setSeVolume( spep_0 + 1, 44, 3.62 );
setSeVolume( spep_0 + 2, 44, 7.23 );
setSeVolume( spep_0 + 3, 44, 10.85 );
setSeVolume( spep_0 + 4, 44, 14.46 );
setSeVolume( spep_0 + 5, 44, 18.08 );
setSeVolume( spep_0 + 6, 44, 21.69 );
setSeVolume( spep_0 + 7, 44, 25.31 );
setSeVolume( spep_0 + 8, 44, 28.92 );
setSeVolume( spep_0 + 9, 44, 32.54 );
setSeVolume( spep_0 + 10, 44, 36.15 );
setSeVolume( spep_0 + 11, 44, 39.77 );
setSeVolume( spep_0 + 12, 44, 43.38 );
setSeVolume( spep_0 + 13, 44, 47.00 );
setSeVolume( spep_0 + 14, 44, 50.62 );
setSeVolume( spep_0 + 15, 44, 54.23 );
setSeVolume( spep_0 + 16, 44, 57.85 );
setSeVolume( spep_0 + 17, 44, 61.46 );
setSeVolume( spep_0 + 18, 44, 65.08 );
setSeVolume( spep_0 + 19, 44, 68.69 );
setSeVolume( spep_0 + 20, 44, 72.31 );
setSeVolume( spep_0 + 21, 44, 75.92 );
setSeVolume( spep_0 + 22, 44, 79.54 );
setSeVolume( spep_0 + 23, 44, 83.15 );
setSeVolume( spep_0 + 24, 44, 86.77 );
setSeVolume( spep_0 + 25, 44, 90.38 );
setSeVolume( spep_0 + 26, 44, 94.00 );
setSeVolume( spep_0 + 27, 44, 97.62 );
setSeVolume( spep_0 + 28, 44, 101.23 );
setSeVolume( spep_0 + 29, 44, 104.85 );
setSeVolume( spep_0 + 30, 44, 108.46 );
setSeVolume( spep_0 + 31, 44, 112.08 );
setSeVolume( spep_0 + 32, 44, 115.69 );
setSeVolume( spep_0 + 33, 44, 119.31 );
setSeVolume( spep_0 + 34, 44, 122.92 );
setSeVolume( spep_0 + 35, 44, 126.54 );
setSeVolume( spep_0 + 36, 44, 130.15 );
setSeVolume( spep_0 + 37, 44, 133.77 );
setSeVolume( spep_0 + 38, 44, 137.38 );
setSeVolume( spep_0 + 39, 44, 141.00 );
playSe( spep_0 + 27, 08 );
setSeVolume( spep_0 + 27, 08, 0.00 );
setSeVolume( spep_0 + 28, 08, 4.85 );
setSeVolume( spep_0 + 29, 08, 9.69 );
setSeVolume( spep_0 + 30, 08, 14.54 );
setSeVolume( spep_0 + 31, 08, 19.38 );
setSeVolume( spep_0 + 32, 08, 24.23 );
setSeVolume( spep_0 + 33, 08, 29.08 );
setSeVolume( spep_0 + 34, 08, 33.92 );
setSeVolume( spep_0 + 35, 08, 38.77 );
setSeVolume( spep_0 + 36, 08, 43.62 );
setSeVolume( spep_0 + 37, 08, 48.46 );
setSeVolume( spep_0 + 38, 08, 53.31 );
setSeVolume( spep_0 + 39, 08, 58.15 );
setSeVolume( spep_0 + 40, 08, 63.00 );
setSeVolume( spep_0 + 41, 08, 67.85 );
setSeVolume( spep_0 + 42, 08, 72.69 );
setSeVolume( spep_0 + 43, 08, 77.54 );
setSeVolume( spep_0 + 44, 08, 82.38 );
setSeVolume( spep_0 + 45, 08, 87.23 );
setSeVolume( spep_0 + 46, 08, 92.08 );
setSeVolume( spep_0 + 47, 08, 96.92 );
setSeVolume( spep_0 + 48, 08, 101.77 );
setSeVolume( spep_0 + 49, 08, 106.62 );
setSeVolume( spep_0 + 50, 08, 111.46 );
setSeVolume( spep_0 + 51, 08, 116.31 );
setSeVolume( spep_0 + 52, 08, 121.15 );
setSeVolume( spep_0 + 53, 08, 126.00 );
se_1191 = playSe( spep_0 + 84, 1191 );
setSeVolume( spep_0 + 84, 1191, 0 );
playSe( spep_0 + 73, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 158;

------------------------------------------------------
-- 足元から煙が上がる
------------------------------------------------------
-- ** エフェクト等 ** --
kemuri = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --足元から煙が上がる(ef_003)
setEffMoveKey( spep_1 + 0, kemuri, 0, 0, 0 );
setEffMoveKey( spep_1 + 156, kemuri, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kemuri, 1.0, 1.0 );
setEffScaleKey( spep_1 + 156, kemuri, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kemuri, 0 );
setEffRotateKey( spep_1 + 156, kemuri, 0 );
setEffAlphaKey( spep_1 + 0, kemuri, 255 );
setEffAlphaKey( spep_1 + 156, kemuri, 255 );

-- ** 白フェード ** --
entryFade( spep_1 + 146, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 158, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
se_1175 = playSe( spep_1 + 3, 1175 );
setSeVolume( spep_1 + 3, 1175, 0 );
setSeVolume( spep_1 + 10, 1175, 0.00 );
setSeVolume( spep_1 + 11, 1175, 4.44 );
setSeVolume( spep_1 + 12, 1175, 8.88 );
setSeVolume( spep_1 + 13, 1175, 13.31 );
setSeVolume( spep_1 + 14, 1175, 17.75 );
setSeVolume( spep_1 + 15, 1175, 22.19 );
setSeVolume( spep_1 + 16, 1175, 26.63 );
setSeVolume( spep_1 + 17, 1175, 31.06 );
setSeVolume( spep_1 + 18, 1175, 35.50 );
setSeVolume( spep_1 + 19, 1175, 39.94 );
setSeVolume( spep_1 + 20, 1175, 44.38 );
setSeVolume( spep_1 + 21, 1175, 48.81 );
setSeVolume( spep_1 + 22, 1175, 53.25 );
setSeVolume( spep_1 + 23, 1175, 57.69 );
setSeVolume( spep_1 + 24, 1175, 62.13 );
setSeVolume( spep_1 + 25, 1175, 66.56 );
setSeVolume( spep_1 + 26, 1175, 71.00 );
setSeVolume( spep_1 + 5, 1191, 0.00 );
setSeVolume( spep_1 + 6, 1191, 2.25 );
setSeVolume( spep_1 + 7, 1191, 4.50 );
setSeVolume( spep_1 + 8, 1191, 6.75 );
setSeVolume( spep_1 + 9, 1191, 9.00 );
setSeVolume( spep_1 + 10, 1191, 11.25 );
setSeVolume( spep_1 + 11, 1191, 13.50 );
setSeVolume( spep_1 + 12, 1191, 15.75 );
setSeVolume( spep_1 + 13, 1191, 18.00 );
playSe( spep_1 -12 + 87, 1002 );
setSeVolume( spep_1 -12 + 87, 1002, 0 );
se_1116 = playSe( spep_1 -12 + 95, 1116 );
stopSe( spep_1 + 96, se_1175, 20 );
stopSe( spep_1 + 98, se_1191, 0 );
setSeVolume( spep_1 -12 + 103, 1002, 0.00 );
setSeVolume( spep_1 -12 + 104, 1002, 5.27 );
setSeVolume( spep_1 -12 + 105, 1002, 10.53 );
setSeVolume( spep_1 -12 + 106, 1002, 15.80 );
setSeVolume( spep_1 -12 + 107, 1002, 21.07 );
setSeVolume( spep_1 -12 + 108, 1002, 26.33 );
setSeVolume( spep_1 -12 + 109, 1002, 31.60 );
setSeVolume( spep_1 -12 + 110, 1002, 36.87 );
setSeVolume( spep_1 -12 + 111, 1002, 42.13 );
setSeVolume( spep_1 -12 + 112, 1002, 47.40 );
setSeVolume( spep_1 -12 + 113, 1002, 52.67 );
setSeVolume( spep_1 -12 + 114, 1002, 57.93 );
setSeVolume( spep_1 -12 + 115, 1002, 63.20 );
setSeVolume( spep_1 -12 + 116, 1002, 68.47 );
setSeVolume( spep_1 -12 + 117, 1002, 73.73 );
setSeVolume( spep_1 -12 + 118, 1002, 79.00 );
stopSe( spep_1 -12 + 116, se_1116, 25 );
playSe( spep_1 -12 + 143, 1072 );
setSeVolume( spep_1 -12 + 143, 1072, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 156;

------------------------------------------------------
-- 右斜め上に飛び上がる
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_2 + 0, SP_04r, 0x100, -1, 0, 0, 0 ); --右斜め上に飛び上がる(ef_004)
setEffMoveKey( spep_2 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, jump, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, jump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 86, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 86, jump, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 76, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
setSeVolume( spep_2 -12 + 5, 1072, 0.00 );
setSeVolume( spep_2 -12 + 6, 1072, 6.67 );
setSeVolume( spep_2 -12 + 7, 1072, 13.33 );
setSeVolume( spep_2 -12 + 8, 1072, 20.00 );
setSeVolume( spep_2 -12 + 9, 1072, 26.67 );
setSeVolume( spep_2 -12 + 10, 1072, 33.33 );
setSeVolume( spep_2 -12 + 11, 1072, 40.00 );
setSeVolume( spep_2 -12 + 12, 1072, 46.67 );
setSeVolume( spep_2 -12 + 13, 1072, 53.33 );
setSeVolume( spep_2 -12 + 14, 1072, 60.00 );
setSeVolume( spep_2 -12 + 15, 1072, 66.67 );
setSeVolume( spep_2 -12 + 16, 1072, 73.33 );
setSeVolume( spep_2 -12 + 17, 1072, 80.00 );
setSeVolume( spep_2 -12 + 18, 1072, 86.67 );
setSeVolume( spep_2 -12 + 19, 1072, 93.33 );
setSeVolume( spep_2 -12 + 20, 1072, 100.00 );
playSe( spep_2 -12 + 56, 09 );
playSe( spep_2 -12 + 56, 1182 );
se_1019 = playSe( spep_2 -12 + 66, 1019 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

------------------------------------------------------
-- 画面に向かって迫ってくる
------------------------------------------------------
-- ** エフェクト等 ** --
semaru = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); --画面に向かって迫ってくる(ef_005)
setEffMoveKey( spep_3 + 0, semaru, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, semaru, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, semaru, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, semaru, 0 );
setEffRotateKey( spep_3 + 116, semaru, 0 );
setEffAlphaKey( spep_3 + 0, semaru, 255 );
setEffAlphaKey( spep_3 + 116, semaru, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 118, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
se_1183 = playSe( spep_3 -12 + 3, 1183 );
setSeVolume( spep_3 -12 + 3, 1183, 158 );
se_1116 = playSe( spep_3 -12 + 37, 1116 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1183, 0 );
    stopSe( SP_dodge - 12, se_1116, 0 );
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    setRotateKey( SP_dodge + 32, 1, 2.5 );
    setAlphaKey( SP_dodge + 32, 1, 255 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 9,   1,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;

------------------------------------------------------
-- 敵の目の前へ高速移動
------------------------------------------------------
-- ** エフェクト等 ** --
idou_f = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 ); --敵の目の前へ高速移動(ef_006)
setEffMoveKey( spep_4 + 0, idou_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 58, idou_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, idou_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, idou_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, idou_f, 0 );
setEffRotateKey( spep_4 + 58, idou_f, 0 );
setEffAlphaKey( spep_4 + 0, idou_f, 255 );
setEffAlphaKey( spep_4 + 57, idou_f, 255 );
setEffAlphaKey( spep_4 + 58, idou_f, 0 );
setEffAlphaKey( spep_4 + 59, idou_f, 0 );

idou_b = entryEffectLife( spep_4 + 0, SP_10, 58, 0x80, -1, 0, 0, 0 ); --敵の目の前へ高速移動・背景(ef_010)
setEffMoveKey( spep_4 + 0, idou_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 58, idou_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, idou_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 58, idou_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, idou_b, 0 );
setEffRotateKey( spep_4 + 58, idou_b, 0 );
setEffAlphaKey( spep_4 + 0, idou_b, 255 );
setEffAlphaKey( spep_4 + 58, idou_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 3, 1, 1 );
setDisp( spep_4 -3 + 61, 1, 0 );
changeAnime( spep_4 -3 + 3, 1, 101 );

setMoveKey( spep_4 -3 + 3, 1, 134.9, -50.4 , 0 );
--setMoveKey( spep_4 -3 + 2, 1, 138.6, -50.4 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 142.2, -50.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 142.9, -50.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 143.3, -50.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 143.6, -50.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 143.9, -50.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 144.1, -50.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 144.2, -50.4 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 144.4, -50.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 144.5, -50.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 144.5, -50.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 144.6, -50.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 144.6, -50.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 144.7, -50.4 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 144.7, -50.4 , 0 );

setScaleKey( spep_4 -3 + 3, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 61, 1, 1.3, 1.3 );

setRotateKey( spep_4 -3 + 3, 1, 15 );
--setRotateKey( spep_4 -3 + 2, 1, 19.5 );
setRotateKey( spep_4 -3 + 4, 1, 24 );
setRotateKey( spep_4 -3 + 6, 1, 24.6 );
setRotateKey( spep_4 -3 + 8, 1, 24.9 );
setRotateKey( spep_4 -3 + 10, 1, 25.2 );
setRotateKey( spep_4 -3 + 12, 1, 25.4 );
setRotateKey( spep_4 -3 + 14, 1, 25.5 );
setRotateKey( spep_4 -3 + 16, 1, 25.7 );
setRotateKey( spep_4 -3 + 18, 1, 25.8 );
setRotateKey( spep_4 -3 + 20, 1, 25.8 );
setRotateKey( spep_4 -3 + 22, 1, 25.9 );
setRotateKey( spep_4 -3 + 24, 1, 26 );
setRotateKey( spep_4 -3 + 61, 1, 26 );

setAlphaKey( spep_4 -3 + 3, 1, 255 );
setAlphaKey( spep_4 -3 + 61, 1, 255 );

-- ** 書き文字エントリー ** --
ctbiikuri = entryEffectLife( spep_4 -3 + 6, 10000, 18, 0x100, -1, 0, 206.1, 148.9 ); --!!
setEffMoveKey( spep_4 -3 + 6, ctbiikuri, 206.1, 148.9 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctbiikuri, 197.6, 136.4 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctbiikuri, 190.6, 136 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctbiikuri, 197.2, 143.4 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctbiikuri, 197.6, 136.4 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctbiikuri, 190.6, 136 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctbiikuri, 197.2, 143.4 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctbiikuri, 197.6, 136.4 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctbiikuri, 190.6, 136 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctbiikuri, 197.2, 143.4 , 0 );

setEffScaleKey( spep_4 -3 + 6, ctbiikuri, 2.41, 2.41 );
setEffScaleKey( spep_4 -3 + 8, ctbiikuri, 1.61, 1.61 );
setEffScaleKey( spep_4 -3 + 24, ctbiikuri, 1.61, 1.61 );

setEffRotateKey( spep_4 -3 + 6, ctbiikuri, 18 );
setEffRotateKey( spep_4 -3 + 24, ctbiikuri, 18 );

setEffAlphaKey( spep_4 -3 + 6, ctbiikuri, 255 );
setEffAlphaKey( spep_4 -3 + 24, ctbiikuri, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 60, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_4 -12 + 20, 1004 );
stopSe( spep_4 -12 + 23, se_1019, 0 );
stopSe( spep_4 -12 + 23, se_1183, 0 );
stopSe( spep_4 -12 + 23, se_1116, 0 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 58;

------------------------------------------------------
-- 画面に向かって手をかざす
------------------------------------------------------
-- ** エフェクト等 ** --
kazasu = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --画面に向かって手をかざす(ef_007)
setEffMoveKey( spep_5 + 0, kazasu, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, kazasu, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kazasu, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, kazasu, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kazasu, 0 );
setEffRotateKey( spep_5 + 56, kazasu, 0 );
setEffAlphaKey( spep_5 + 0, kazasu, 255 );
setEffAlphaKey( spep_5 + 56, kazasu, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_5 -12 + 3, 1072 );
setSeVolume( spep_5 -12 + 3, 1072, 0 );
setSeVolume( spep_5 -12 + 18, 1072, 0.00 );
setSeVolume( spep_5 -12 + 19, 1072, 9.09 );
setSeVolume( spep_5 -12 + 20, 1072, 18.18 );
setSeVolume( spep_5 -12 + 21, 1072, 27.27 );
setSeVolume( spep_5 -12 + 22, 1072, 36.36 );
setSeVolume( spep_5 -12 + 23, 1072, 45.45 );
setSeVolume( spep_5 -12 + 24, 1072, 54.55 );
setSeVolume( spep_5 -12 + 25, 1072, 63.64 );
setSeVolume( spep_5 -12 + 26, 1072, 72.73 );
setSeVolume( spep_5 -12 + 27, 1072, 81.82 );
setSeVolume( spep_5 -12 + 28, 1072, 90.91 );
setSeVolume( spep_5 -12 + 29, 1072, 100.00 );
se_1173 = playSe( spep_5 -12 + 29, 1173 );
playSe( spep_5 -12 + 29, 1010 );
setSeVolume( spep_5 -12 + 29, 1010, 0 );
setSeVolume( spep_5 -12 + 33, 1010, 0.00 );
setSeVolume( spep_5 -12 + 34, 1010, 10.00 );
setSeVolume( spep_5 -12 + 35, 1010, 20.00 );
setSeVolume( spep_5 -12 + 36, 1010, 30.00 );
setSeVolume( spep_5 -12 + 37, 1010, 40.00 );
setSeVolume( spep_5 -12 + 38, 1010, 50.00 );
setSeVolume( spep_5 -12 + 39, 1010, 60.00 );
setSeVolume( spep_5 -12 + 40, 1010, 70.00 );
setSeVolume( spep_5 -12 + 41, 1010, 80.00 );
setSeVolume( spep_5 -12 + 42, 1010, 90.00 );
setSeVolume( spep_5 -12 + 43, 1010, 100.00 );
stopSe( spep_5 -12 + 51, se_1173, 30 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_6 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_6 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_6 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_6 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_6 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_6 + 0, shuchusen, 0 );
setEffRotateKey( spep_6 + 90, shuchusen, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen, 255 );
setEffAlphaKey( spep_6 + 90, shuchusen, 255 );

-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6, 1035 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 94;

------------------------------------------------------
-- エビルインパルス発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassha_f = entryEffect( spep_7 + 0, SP_08r, 0x100, -1, 0, 0, 0 ); --エビルインパルス発射(ef_008)
setEffMoveKey( spep_7 + 0, hassha_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 176, hassha_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 176, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, hassha_f, 0 );
setEffRotateKey( spep_7 + 176, hassha_f, 0 );
setEffAlphaKey( spep_7 + 0, hassha_f, 255 );
setEffAlphaKey( spep_7 + 176, hassha_f, 255 );

hassha_b = entryEffectLife( spep_7 + 0, 921, 176, 0x80, -1, 0, 10, 60.1 ); --効果線エフェクト(ef_009)
setEffMoveKey( spep_7 + 0, hassha_b, 10, 60.1, 0 );
setEffMoveKey( spep_7 + 176, hassha_b, 10, 60.1, 0 );
setEffScaleKey( spep_7 + 0, hassha_b, 1.6 , 1.4 );
setEffScaleKey( spep_7 + 176, hassha_b, 1.6, 1.4 );
setEffRotateKey( spep_7 + 0, hassha_b, -32 );
setEffRotateKey( spep_7 + 176, hassha_b, -32 );
setEffAlphaKey( spep_7 + 0, hassha_b, 255 );
setEffAlphaKey( spep_7 + 176, hassha_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_7 -3 + 3, 1, 1 );
changeAnime( spep_7 -3 + 3, 1, 100 );
changeAnime( spep_7 -3 + 18, 1, 108 );

setMoveKey( spep_7 -3 + 3, 1, 142.7, -5 , 0 );
--setMoveKey( spep_7 -3 + 2, 1, 142, -4.3 , 0 );
setMoveKey( spep_7 -3 + 4, 1, 141.2, -3.5 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 142.7, -5.3 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 143.3, -5.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 143.8, -5.3 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 138.7, -4.5 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 133.6, -3.7 , 0 );
setMoveKey( spep_7 -3 + 17, 1, 142.2, 1.4 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 196.6, 31 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 253.2, 80.9 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 330.4, 119 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 407.5, 157 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 471.7, 205.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 557.4, 243.1 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 624.6, 286.1 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 619.5, 287.5 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 622.1, 286.4 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 624.7, 285.4 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 627.3, 284.3 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 623.7, 287 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 628.2, 284.3 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 624.8, 284.5 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 626.1, 284.5 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 627.3, 284.5 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 625.5, 284.7 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 623.7, 284.9 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 626.4, 285.1 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 625.3, 285.8 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 624.3, 286.5 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 625.3, 286.2 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 626.4, 285.9 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 624.8, 286.7 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 625.9, 284.6 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 625.7, 284.5 , 0 );
setMoveKey( spep_7 -3 + 70, 1, 625.5, 284.3 , 0 );
setMoveKey( spep_7 -3 + 72, 1, 623.9, 287.4 , 0 );
setMoveKey( spep_7 -3 + 74, 1, 624.6, 286.3 , 0 );
setMoveKey( spep_7 -3 + 76, 1, 625.3, 285.3 , 0 );
setMoveKey( spep_7 -3 + 78, 1, 624.9, 285.8 , 0 );
setMoveKey( spep_7 -3 + 80, 1, 624.4, 286.3 , 0 );
setMoveKey( spep_7 -3 + 82, 1, 623.1, 287 , 0 );
setMoveKey( spep_7 -3 + 84, 1, 625, 287.3 , 0 );
setMoveKey( spep_7 -3 + 86, 1, 624.5, 285.9 , 0 );
setMoveKey( spep_7 -3 + 88, 1, 624.1, 284.5 , 0 );
setMoveKey( spep_7 -3 + 90, 1, 624.9, 285.3 , 0 );
setMoveKey( spep_7 -3 + 92, 1, 625.6, 286.1 , 0 );
setMoveKey( spep_7 -3 + 94, 1, 624.5, 285.6 , 0 );
setMoveKey( spep_7 -3 + 96, 1, 623.4, 285.1 , 0 );
setMoveKey( spep_7 -3 + 98, 1, 625.3, 285.9 , 0 );
setMoveKey( spep_7 -3 + 100, 1, 623.9, 286.1 , 0 );
setMoveKey( spep_7 -3 + 102, 1, 625.6, 287.7 , 0 );
setMoveKey( spep_7 -3 + 104, 1, 624.9, 286.1 , 0 );
setMoveKey( spep_7 -3 + 106, 1, 624.1, 284.6 , 0 );
setMoveKey( spep_7 -3 + 108, 1, 624.5, 286.1 , 0 );
setMoveKey( spep_7 -3 + 110, 1, 624.9, 287.7 , 0 );
setMoveKey( spep_7 -3 + 112, 1, 624.1, 286.6 , 0 );
setMoveKey( spep_7 -3 + 114, 1, 625.7, 284.6 , 0 );
setMoveKey( spep_7 -3 + 116, 1, 624.9, 285.8 , 0 );
setMoveKey( spep_7 -3 + 118, 1, 624.1, 287.1 , 0 );
setMoveKey( spep_7 -3 + 120, 1, 625.7, 284.6 , 0 );
setMoveKey( spep_7 -3 + 122, 1, 624.9, 286.1 , 0 );
setMoveKey( spep_7 -3 + 124, 1, 624.1, 287.5 , 0 );
setMoveKey( spep_7 -3 + 126, 1, 625.7, 287.5 , 0 );
setMoveKey( spep_7 -3 + 128, 1, 624.9, 287.5 , 0 );
setMoveKey( spep_7 -3 + 130, 1, 624.1, 287.5 , 0 );
setMoveKey( spep_7 -3 + 132, 1, 625.6, 285.4 , 0 );
setMoveKey( spep_7 -3 + 134, 1, 625, 286.2 , 0 );
setMoveKey( spep_7 -3 + 136, 1, 624.4, 287.1 , 0 );
setMoveKey( spep_7 -3 + 138, 1, 625.6, 287.1 , 0 );
setMoveKey( spep_7 -3 + 140, 1, 624.9, 287.1 , 0 );
setMoveKey( spep_7 -3 + 142, 1, 624.1, 287.1 , 0 );
setMoveKey( spep_7 -3 + 144, 1, 625.6, 287.1 , 0 );
setMoveKey( spep_7 -3 + 146, 1, 624.8, 287.3 , 0 );
setMoveKey( spep_7 -3 + 148, 1, 623.9, 287.5 , 0 );
setMoveKey( spep_7 -3 + 150, 1, 625.6, 286.8 , 0 );
setMoveKey( spep_7 -3 + 152, 1, 624.9, 286.1 , 0 );
setMoveKey( spep_7 -3 + 154, 1, 624.1, 285.4 , 0 );
setMoveKey( spep_7 -3 + 156, 1, 625.6, 287.1 , 0 );
setMoveKey( spep_7 -3 + 158, 1, 624.7, 285.4 , 0 );
setMoveKey( spep_7 -3 + 160, 1, 624.9, 285.8 , 0 );
setMoveKey( spep_7 -3 + 162, 1, 625.2, 286.1 , 0 );
setMoveKey( spep_7 -3 + 164, 1, 625.5, 286.5 , 0 );
setMoveKey( spep_7 -3 + 166, 1, 624.6, 287.7 , 0 );
setMoveKey( spep_7 -3 + 168, 1, 625.3, 287.1 , 0 );
setMoveKey( spep_7 -3 + 170, 1, 625.1, 287.1 , 0 );
setMoveKey( spep_7 -3 + 172, 1, 624.9, 287.1 , 0 );

setScaleKey( spep_7 -3 + 3, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 172, 1, 1.6, 1.6 );

setRotateKey( spep_7 -3 + 3, 1, 0 );
setRotateKey( spep_7 -3 + 172, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 176, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 音 ** --
playSe( spep_7 + 3, 49 );
playSe( spep_7 + 15, 1213 );
setSeVolume( spep_7 + 30, 1213, 89 );

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 14 );
endPhase( spep_7 + 160 );

end