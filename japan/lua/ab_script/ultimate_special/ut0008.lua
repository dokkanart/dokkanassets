--4017980:超サイヤ人ゴッドSSベジット_ファイナルかめはめ波
--sp_effect_a1_00213

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

--エフェクト(味方)
SP_01=	154796	;--	前半
SP_02=	154797	;--	後半　奥
SP_03=	154798	;--	後半　手前
SP_04=	154799	;--	KO


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
--初めの準備
spep_0=0;

-- ** エフェクト等 ** --
previously = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,previously, 0, 0, 0 );
setEffMoveKey( spep_0 + 614 ,previously, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,previously, 1.0, 1.0 );
setEffScaleKey( spep_0 + 614 ,previously, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0,previously, 0 );
setEffRotateKey( spep_0 + 614 ,previously, 0 );
setEffAlphaKey( spep_0 + 0,previously, 255 );
setEffAlphaKey( spep_0 + 614 ,previously, 255 );
setEffAlphaKey( spep_0 + 615 ,previously, 0);
setEffAlphaKey( spep_0 + 616 ,previously, 0 );

--文字エントリー

ctgogogo = entryEffectLife( spep_0 -3 + 386,  10008, 60, 0x100, -1, 0, 77.2, 317.8 );--ゴゴゴゴ…

setEffMoveKey( spep_0 -3 + 386, ctgogogo, 77.2, 317.8 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctgogogo, 84.9, 367.6 , 0 );
setEffMoveKey( spep_0 -3 + 390, ctgogogo, 79.8, 393.8 , 0 );
setEffMoveKey( spep_0 -3 + 392, ctgogogo, 80.4, 400.6 , 0 );
setEffMoveKey( spep_0 -3 + 394, ctgogogo, 87.4, 405.6 , 0 );
setEffMoveKey( spep_0 -3 + 396, ctgogogo, 80.2, 404.3 , 0 );
setEffMoveKey( spep_0 -3 + 398, ctgogogo, 87.5, 407 , 0 );
setEffMoveKey( spep_0 -3 + 400, ctgogogo, 81.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 402, ctgogogo, 85.4, 409.8 , 0 );
setEffMoveKey( spep_0 -3 + 404, ctgogogo, 80.2, 404.2 , 0 );
setEffMoveKey( spep_0 -3 + 406, ctgogogo, 86.5, 407.6 , 0 );
setEffMoveKey( spep_0 -3 + 408, ctgogogo, 80.9, 409.1 , 0 );
setEffMoveKey( spep_0 -3 + 410, ctgogogo, 87.4, 409.8 , 0 );
setEffMoveKey( spep_0 -3 + 412, ctgogogo, 81.2, 408.9 , 0 );
setEffMoveKey( spep_0 -3 + 414, ctgogogo, 86.4, 408.9 , 0 );
setEffMoveKey( spep_0 -3 + 416, ctgogogo, 81.9, 413.2 , 0 );
setEffMoveKey( spep_0 -3 + 418, ctgogogo, 84.5, 406.3 , 0 );
setEffMoveKey( spep_0 -3 + 420, ctgogogo, 85.9, 413.2 , 0 );
setEffMoveKey( spep_0 -3 + 422, ctgogogo, 84, 408.2 , 0 );
setEffMoveKey( spep_0 -3 + 424, ctgogogo, 86.3, 413.7 , 0 );
setEffMoveKey( spep_0 -3 + 426, ctgogogo, 83, 408.5 , 0 );
setEffMoveKey( spep_0 -3 + 428, ctgogogo, 83, 415.4 , 0 );
setEffMoveKey( spep_0 -3 + 430, ctgogogo, 86.1, 410.1 , 0 );
setEffMoveKey( spep_0 -3 + 432, ctgogogo, 84.1, 418.6 , 0 );
setEffMoveKey( spep_0 -3 + 434, ctgogogo, 82.9, 413.1 , 0 );
setEffMoveKey( spep_0 -3 + 436, ctgogogo, 87.2, 417.8 , 0 );
setEffMoveKey( spep_0 -3 + 438, ctgogogo, 84.1, 413.2 , 0 );
setEffMoveKey( spep_0 -3 + 440, ctgogogo, 80.9, 414.5 , 0 );
setEffMoveKey( spep_0 -3 + 442, ctgogogo, 88.8, 429.3 , 0 );
setEffMoveKey( spep_0 -3 + 444, ctgogogo, 81.3, 437.5 , 0 );
setEffMoveKey( spep_0 -3 + 446, ctgogogo, 81.6, 447.6 , 0 );

setEffScaleKey( spep_0 -3 + 386, ctgogogo, 1.57, 1.57 );
setEffScaleKey( spep_0 -3 + 388, ctgogogo, 1.98, 1.98 );
setEffScaleKey( spep_0 -3 + 390, ctgogogo, 2.23, 2.23 );
setEffScaleKey( spep_0 -3 + 392, ctgogogo, 2.31, 2.31 );
setEffScaleKey( spep_0 -3 + 394, ctgogogo, 2.32, 2.32 );
setEffScaleKey( spep_0 -3 + 396, ctgogogo, 2.32, 2.32 );
setEffScaleKey( spep_0 -3 + 398, ctgogogo, 2.33, 2.33 );
setEffScaleKey( spep_0 -3 + 400, ctgogogo, 2.33, 2.33 );
setEffScaleKey( spep_0 -3 + 402, ctgogogo, 2.34, 2.34 );
setEffScaleKey( spep_0 -3 + 404, ctgogogo, 2.34, 2.34 );
setEffScaleKey( spep_0 -3 + 406, ctgogogo, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 408, ctgogogo, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 410, ctgogogo, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 412, ctgogogo, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 414, ctgogogo, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 416, ctgogogo, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 418, ctgogogo, 2.38, 2.38 );
setEffScaleKey( spep_0 -3 + 420, ctgogogo, 2.38, 2.38 );
setEffScaleKey( spep_0 -3 + 422, ctgogogo, 2.39, 2.39 );
setEffScaleKey( spep_0 -3 + 424, ctgogogo, 2.39, 2.39 );
setEffScaleKey( spep_0 -3 + 426, ctgogogo, 2.4, 2.4 );
setEffScaleKey( spep_0 -3 + 428, ctgogogo, 2.41, 2.41 );
setEffScaleKey( spep_0 -3 + 430, ctgogogo, 2.41, 2.41 );
setEffScaleKey( spep_0 -3 + 432, ctgogogo, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 434, ctgogogo, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 436, ctgogogo, 2.43, 2.43 );
setEffScaleKey( spep_0 -3 + 438, ctgogogo, 2.43, 2.43 );
setEffScaleKey( spep_0 -3 + 440, ctgogogo, 2.44, 2.44 );
setEffScaleKey( spep_0 -3 + 442, ctgogogo, 2.53, 2.53 );
setEffScaleKey( spep_0 -3 + 444, ctgogogo, 2.62, 2.62 );
setEffScaleKey( spep_0 -3 + 446, ctgogogo, 2.71, 2.71 );

setEffRotateKey( spep_0 -3 + 386, ctgogogo, -0.2 );
setEffRotateKey( spep_0 -3 + 446, ctgogogo, -0.2 );

setEffAlphaKey( spep_0 -3 + 386, ctgogogo, 255 );
setEffAlphaKey( spep_0 -3 + 440, ctgogogo, 255 );
setEffAlphaKey( spep_0 -3 + 442, ctgogogo, 170 );
setEffAlphaKey( spep_0 -3 + 444, ctgogogo, 85 );
setEffAlphaKey( spep_0 -3 + 446, ctgogogo, 0 );

--SE
playSe( spep_0 + 0, 1072 );
setSeVolume( spep_0 + 0, 1072, 71 );
playSe( spep_0 + 54, 44 );
setSeVolume( spep_0 + 54, 44, 71 );
playSe( spep_0 + 54, 1004 );
setSeVolume( spep_0 + 54, 1004, 56 );
playSe( spep_0 + 84, 1035 );
setSeVolume( spep_0 + 84, 1035, 89 );
se_1176 = playSe( spep_0 + 84, 1176 );
setSeVolume( spep_0 + 84, 1176, 40 );
playSe( spep_0 + 111, 1036 );
setSeVolume( spep_0 + 111, 1036, 40 );
playSe( spep_0 + 135, 1036 );
setSeVolume( spep_0 + 135, 1036, 40 );
playSe( spep_0 + 159, 1036 );
setSeVolume( spep_0 + 159, 1036, 40 );
playSe( spep_0 + 183, 1036 );
setSeVolume( spep_0 + 183, 1036, 40 );
playSe( spep_0 + 207, 1036 );
setSeVolume( spep_0 + 207, 1036, 40 );
playSe( spep_0 + 214, 1048 );
setSeVolume( spep_0 + 214, 1048, 63 );
playSe( spep_0 + 220, 1013 );
setSeVolume( spep_0 + 220, 1013, 79 );
playSe( spep_0 + 231, 1036 );
setSeVolume( spep_0 + 231, 1036, 40 );
playSe( spep_0 + 255, 1036 );
setSeVolume( spep_0 + 255, 1036, 40 );
playSe( spep_0 + 256, 1208 );
setSeVolume( spep_0 + 256, 1208, 71 );
playSe( spep_0 + 262, 1003 );
setSeVolume( spep_0 + 262, 1003, 71 );
playSe( spep_0 + 279, 1036 );
setSeVolume( spep_0 + 279, 1036, 40 );
playSe( spep_0 + 284, 1031 );
setSeVolume( spep_0 + 284, 1031, 71 );
playSe( spep_0 + 286, 6 );
setSeVolume( spep_0 + 286, 6, 63 );
playSe( spep_0 + 290, 1041 );
setSeVolume( spep_0 + 290, 1041, 71 );
playSe( spep_0 + 303, 1036 );
setSeVolume( spep_0 + 303, 1036, 40 );
playSe( spep_0 + 319, 1031 );
setSeVolume( spep_0 + 319, 1031, 63 );
playSe( spep_0 + 320, 1041 );
setSeVolume( spep_0 + 320, 1041, 71 );
playSe( spep_0 + 320, 6 );
setSeVolume( spep_0 + 320, 6, 63 );
playSe( spep_0 + 327, 1036 );
setSeVolume( spep_0 + 327, 1036, 40 );
playSe( spep_0 + 331, 1031 );
setSeVolume( spep_0 + 331, 1031, 45 );
playSe( spep_0 + 351, 1036 );
setSeVolume( spep_0 + 351, 1036, 40 );
playSe( spep_0 + 359, 6 );
setSeVolume( spep_0 + 359, 6, 63 );
playSe( spep_0 + 361, 1041 );
setSeVolume( spep_0 + 361, 1041, 71 );
playSe( spep_0 + 369, 1031 );
setSeVolume( spep_0 + 369, 1031, 56 );
se_1210 = playSe( spep_0 + 372, 1210 );
setSeVolume( spep_0 + 372, 1210, 0 );
setSeVolume( spep_0 + 396, 1210, 0.77 );
setSeVolume( spep_0 + 397, 1210, 1.53 );
setSeVolume( spep_0 + 398, 1210, 2.30 );
setSeVolume( spep_0 + 399, 1210, 3.07 );
setSeVolume( spep_0 + 400, 1210, 3.83 );
setSeVolume( spep_0 + 401, 1210, 4.60 );
setSeVolume( spep_0 + 402, 1210, 5.37 );
setSeVolume( spep_0 + 403, 1210, 6.14 );
setSeVolume( spep_0 + 404, 1210, 6.90 );
setSeVolume( spep_0 + 405, 1210, 7.67 );
setSeVolume( spep_0 + 406, 1210, 8.44 );
setSeVolume( spep_0 + 407, 1210, 9.20 );
setSeVolume( spep_0 + 408, 1210, 9.97 );
setSeVolume( spep_0 + 409, 1210, 10.74 );
setSeVolume( spep_0 + 410, 1210, 11.50 );
setSeVolume( spep_0 + 411, 1210, 12.27 );
setSeVolume( spep_0 + 412, 1210, 13.04 );
setSeVolume( spep_0 + 413, 1210, 13.81 );
setSeVolume( spep_0 + 414, 1210, 14.57 );
setSeVolume( spep_0 + 415, 1210, 15.34 );
setSeVolume( spep_0 + 416, 1210, 16.11 );
setSeVolume( spep_0 + 417, 1210, 16.87 );
setSeVolume( spep_0 + 418, 1210, 17.64 );
setSeVolume( spep_0 + 419, 1210, 18.41 );
setSeVolume( spep_0 + 420, 1210, 19.17 );
setSeVolume( spep_0 + 421, 1210, 19.94 );
setSeVolume( spep_0 + 422, 1210, 20.71 );
setSeVolume( spep_0 + 423, 1210, 21.48 );
setSeVolume( spep_0 + 424, 1210, 22.24 );
setSeVolume( spep_0 + 425, 1210, 23.01 );
setSeVolume( spep_0 + 426, 1210, 23.78 );
setSeVolume( spep_0 + 427, 1210, 24.54 );
setSeVolume( spep_0 + 428, 1210, 25.31 );
setSeVolume( spep_0 + 429, 1210, 26.08 );
setSeVolume( spep_0 + 430, 1210, 26.84 );
setSeVolume( spep_0 + 431, 1210, 27.61 );
setSeVolume( spep_0 + 432, 1210, 28.38 );
setSeVolume( spep_0 + 433, 1210, 29.15 );
setSeVolume( spep_0 + 434, 1210, 29.91 );
setSeVolume( spep_0 + 435, 1210, 30.68 );
setSeVolume( spep_0 + 436, 1210, 31.45 );
setSeVolume( spep_0 + 437, 1210, 32.21 );
setSeVolume( spep_0 + 438, 1210, 32.98 );
setSeVolume( spep_0 + 439, 1210, 33.75 );
setSeVolume( spep_0 + 440, 1210, 34.51 );
setSeVolume( spep_0 + 441, 1210, 35.28 );
setSeVolume( spep_0 + 442, 1210, 36.05 );
setSeVolume( spep_0 + 443, 1210, 36.82 );
setSeVolume( spep_0 + 444, 1210, 37.58 );
setSeVolume( spep_0 + 445, 1210, 38.35 );
setSeVolume( spep_0 + 446, 1210, 39.12 );
setSeVolume( spep_0 + 447, 1210, 39.88 );
setSeVolume( spep_0 + 448, 1210, 40.65 );
setSeVolume( spep_0 + 449, 1210, 41.42 );
setSeVolume( spep_0 + 450, 1210, 42.18 );
setSeVolume( spep_0 + 451, 1210, 42.95 );
setSeVolume( spep_0 + 452, 1210, 43.72 );
setSeVolume( spep_0 + 453, 1210, 44.49 );
setSeVolume( spep_0 + 454, 1210, 45.25 );
setSeVolume( spep_0 + 455, 1210, 46.02 );
setSeVolume( spep_0 + 456, 1210, 46.79 );
setSeVolume( spep_0 + 457, 1210, 47.55 );
setSeVolume( spep_0 + 458, 1210, 48.32 );
setSeVolume( spep_0 + 459, 1210, 49.09 );
setSeVolume( spep_0 + 460, 1210, 49.85 );
setSeVolume( spep_0 + 461, 1210, 50.62 );
setSeVolume( spep_0 + 462, 1210, 51.39 );
setSeVolume( spep_0 + 463, 1210, 52.16 );
setSeVolume( spep_0 + 464, 1210, 52.92 );
setSeVolume( spep_0 + 465, 1210, 53.69 );
setSeVolume( spep_0 + 466, 1210, 54.46 );
setSeVolume( spep_0 + 467, 1210, 55.22 );
setSeVolume( spep_0 + 468, 1210, 55.99 );
setSeVolume( spep_0 + 469, 1210, 56.76 );
setSeVolume( spep_0 + 470, 1210, 57.52 );
setSeVolume( spep_0 + 471, 1210, 58.29 );
setSeVolume( spep_0 + 472, 1210, 59.06 );
setSeVolume( spep_0 + 473, 1210, 59.83 );
setSeVolume( spep_0 + 474, 1210, 60.59 );
setSeVolume( spep_0 + 475, 1210, 61.36 );
setSeVolume( spep_0 + 476, 1210, 62.13 );
setSeVolume( spep_0 + 477, 1210, 62.89 );
setSeVolume( spep_0 + 478, 1210, 63.66 );
setSeVolume( spep_0 + 479, 1210, 64.43 );
setSeVolume( spep_0 + 480, 1210, 65.19 );
setSeVolume( spep_0 + 481, 1210, 65.96 );
setSeVolume( spep_0 + 482, 1210, 66.73 );
setSeVolume( spep_0 + 483, 1210, 67.50 );
setSeVolume( spep_0 + 484, 1210, 68.26 );
setSeVolume( spep_0 + 485, 1210, 69.03 );
setSeVolume( spep_0 + 486, 1210, 69.80 );
setSeVolume( spep_0 + 487, 1210, 70.56 );
setSeVolume( spep_0 + 488, 1210, 71.33 );
setSeVolume( spep_0 + 489, 1210, 72.10 );
setSeVolume( spep_0 + 490, 1210, 72.86 );
setSeVolume( spep_0 + 491, 1210, 73.63 );
setSeVolume( spep_0 + 492, 1210, 74.40 );
setSeVolume( spep_0 + 493, 1210, 75.17 );
setSeVolume( spep_0 + 494, 1210, 75.93 );
setSeVolume( spep_0 + 495, 1210, 76.70 );
setSeVolume( spep_0 + 496, 1210, 77.47 );
setSeVolume( spep_0 + 497, 1210, 78.23 );
setSeVolume( spep_0 + 498, 1210, 79);
playSe( spep_0 + 375, 1036 );
setSeVolume( spep_0 + 375, 1036, 40 );
playSe( spep_0 + 375, 1031 );
setSeVolume( spep_0 + 375, 1031, 50 );
playSe( spep_0 + 393, 1209 );
setSeVolume( spep_0 + 393, 1209, 63 );
playSe( spep_0 + 399, 1036 );
setSeVolume( spep_0 + 399, 1036, 40 );
playSe( spep_0 + 399, 1199 );
setSeVolume( spep_0 + 399, 1199, 178 );
playSe( spep_0 + 423, 1036 );
setSeVolume( spep_0 + 423, 1036, 40 );
playSe( spep_0 + 447, 1036 );
setSeVolume( spep_0 + 447, 1036, 40 );
playSe( spep_0 + 471, 1036 );
setSeVolume( spep_0 + 471, 1036, 40 );
playSe( spep_0 + 476, 1199 );
setSeVolume( spep_0 + 476, 1199, 178 );
playSe( spep_0 + 495, 1036 );
setSeVolume( spep_0 + 495, 1036, 40 );
playSe( spep_0 + 519, 1036 );
setSeVolume( spep_0 + 519, 1036, 40 );
playSe( spep_0 + 543, 1036 );
setSeVolume( spep_0 + 543, 1036, 40 );
se_1146 = playSe( spep_0 + 561, 1146 );
setSeVolume( spep_0 + 561, 1146, 79 );
playSe( spep_0 + 563, 1027 );
setSeVolume( spep_0 + 563, 1027, 71 );
playSe( spep_0 + 567, 1036 );
setSeVolume( spep_0 + 567, 1036, 40 );
playSe( spep_0 + 591, 1036 );
setSeVolume( spep_0 + 591, 1036, 40 );

--ボイス
playVoice(spep_0 + 88,142);--「その目に焼き付けておくんだな　これがベジットの真の力だ！！」
setVoiceVolume(spep_0 + 88,142,241);
setVoiceVolume(spep_0 + 132,142,241);
setVoiceVolume(spep_0 + 133,142,200);
setVoiceVolume(spep_0 + 255,142,200);
setVoiceVolume(spep_0 + 262,142,241);

playVoice(spep_0 + 448,143);--「ファイナル…かめはめ波ーっ！！！！」
setVoiceVolume(spep_0 + 448,143,233);
setVoiceVolume(spep_0 + 559,143,233);
setVoiceVolume(spep_0 + 563,143,258);

--次の準備
spep_1=spep_0+614;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
later_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,later_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 388 ,later_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,later_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 388 ,later_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,later_f, 0 );
setEffRotateKey( spep_1 + 388 ,later_f, 0 );
setEffAlphaKey( spep_1 + 0,later_f, 255 );
setEffAlphaKey( spep_1 + 388 ,later_f, 255 );

-- ** エフェクト等 ** --
later_b = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0,later_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 388 ,later_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,later_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 388 ,later_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,later_b, 0 );
setEffRotateKey( spep_1 + 388 ,later_b, 0 );
setEffAlphaKey( spep_1 + 0,later_b, 255 );
setEffAlphaKey( spep_1 + 388 ,later_b, 255 );

--SE
SE0=playSe( spep_1 + 1, 1160 );
setSeVolume( spep_1 + 1, 1160, 79 );
SE1=playSe( spep_1 + 4, 1022 );
se_1213 = playSe( spep_1 + 4, 1213 );
setSeVolume( spep_1 + 4, 1213, 45 );
setSeVolume( spep_1 + 61,1213,45);
setSeVolume( spep_1 + 62,1213,45.62);
setSeVolume( spep_1 + 63,1213,46.24);
setSeVolume( spep_1 + 64,1213,46.86);
setSeVolume( spep_1 + 65,1213,47.48);
setSeVolume( spep_1 + 66,1213,48.1);
setSeVolume( spep_1 + 67,1213,48.72);
setSeVolume( spep_1 + 68,1213,49.34);
setSeVolume( spep_1 + 69,1213,49.96);
setSeVolume( spep_1 + 70,1213,50.58);
setSeVolume( spep_1 + 71,1213,51.2);
setSeVolume( spep_1 + 72,1213,51.82);
setSeVolume( spep_1 + 73,1213,52.44);
setSeVolume( spep_1 + 74,1213,53.06);
setSeVolume( spep_1 + 75,1213,53.68);
setSeVolume( spep_1 + 76,1213,54.3);
setSeVolume( spep_1 + 77,1213,54.92);
setSeVolume( spep_1 + 78,1213,55.54);
setSeVolume( spep_1 + 79,1213,56.16);
setSeVolume( spep_1 + 80,1213,56.78);
setSeVolume( spep_1 + 81,1213,57.4);
setSeVolume( spep_1 + 82,1213,58.02);
setSeVolume( spep_1 + 83,1213,58.64);
setSeVolume( spep_1 + 84,1213,59.26);
setSeVolume( spep_1 + 85,1213,59.88);
setSeVolume( spep_1 + 86,1213,60.5);
setSeVolume( spep_1 + 87,1213,61.12);
setSeVolume( spep_1 + 88,1213,61.74);
setSeVolume( spep_1 + 89,1213,62.36);
setSeVolume( spep_1 + 90,1213,63);
SE2=playSe( spep_1 + 7, 1027 );
setSeVolume( spep_1 + 7, 1027, 71 );
SE3=playSe( spep_1 + 14, 1223 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1176, 0 );
    stopSe( SP_dodge - 12, se_1210, 0 );
    stopSe( SP_dodge - 12, se_1146, 0 );
    stopSe( SP_dodge - 12, se_1213, 0 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
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

--エネミーの動き
setDisp( spep_1-3 + 116, 1, 1);
setDisp( spep_1-3 + 224, 1, 0);
changeAnime( spep_1-3 + 116, 1, 104);

setAlphaKey( spep_1-3 + 116, 1, 102 );
setAlphaKey( spep_1-3 + 118, 1, 102 );
setAlphaKey( spep_1-3 + 120, 1, 140 );
setAlphaKey( spep_1-3 + 122, 1, 140 );
setAlphaKey( spep_1-3 + 124, 1, 255 );

setBlendColor( spep_1 -3 + 116, 1, 5, 0.8, 1, 1, 0.34);
setBlendColor( spep_1 -3 + 144, 1, 2, 0.3, 0.3, 0.6, 0.5 );
setBlendColor( spep_1 -3 + 224, 1, 2, 0, 0, 0, 0 );

setMoveKey( spep_1-3 + 116, 1, 234.2, -65 , 0 );
setMoveKey( spep_1-3 + 117, 1, 234.2, -65 , 0 );
setMoveKey( spep_1-3 + 118, 1, 232.2, -78 , 0 );
setMoveKey( spep_1-3 + 119, 1, 232.2, -78 , 0 );
setMoveKey( spep_1-3 + 120, 1, 224.1, -64 , 0 );
setMoveKey( spep_1-3 + 121, 1, 224.1, -64 , 0 );
setMoveKey( spep_1-3 + 122, 1, 221.1, -75 , 0 );
setMoveKey( spep_1-3 + 123, 1, 221.1, -75 , 0 );
setMoveKey( spep_1-3 + 124, 1, 213.3, -1.8 , 0 );
setMoveKey( spep_1-3 + 125, 1, 213.3, -1.8 , 0 );
setMoveKey( spep_1-3 + 126, 1, 165.1, 24.1 , 0 );
setMoveKey( spep_1-3 + 127, 1, 165.1, 24.1 , 0 );
setMoveKey( spep_1-3 + 128, 1, 174.1, 14.1 , 0 );
setMoveKey( spep_1-3 + 129, 1, 174.1, 14.1 , 0 );
setMoveKey( spep_1-3 + 130, 1, 151, 50.3 , 0 );
setMoveKey( spep_1-3 + 131, 1, 151, 50.3 , 0 );
setMoveKey( spep_1-3 + 132, 1, 198.5, 149.2 , 0 );
setMoveKey( spep_1-3 + 133, 1, 198.5, 149.2 , 0 );
setMoveKey( spep_1-3 + 134, 1, 195.5, 135.2 , 0 );
setMoveKey( spep_1-3 + 135, 1, 195.5, 135.2 , 0 );
setMoveKey( spep_1-3 + 136, 1, 200.8, 162.5 , 0 );
setMoveKey( spep_1-3 + 137, 1, 200.8, 162.5 , 0 );
setMoveKey( spep_1-3 + 138, 1, 163.7, 167.3 , 0 );
setMoveKey( spep_1-3 + 139, 1, 163.7, 167.3 , 0 );
setMoveKey( spep_1-3 + 140, 1, 164.7, 155.3 , 0 );
setMoveKey( spep_1-3 + 141, 1, 164.7, 155.3 , 0 );
setMoveKey( spep_1-3 + 142, 1, 79.3, 164.3 , 0 );
setMoveKey( spep_1-3 + 143, 1, 79.3, 164.3 , 0 );
setMoveKey( spep_1-3 + 144, 1, 258.6, 181.4 , 0 );
setMoveKey( spep_1-3 + 145, 1, 258.6, 181.4 , 0 );
setMoveKey( spep_1-3 + 146, 1, 249.6, 189.4 , 0 );
setMoveKey( spep_1-3 + 147, 1, 249.6, 189.4 , 0 );
setMoveKey( spep_1-3 + 148, 1, 231.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 149, 1, 231.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 150, 1, 245.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 151, 1, 245.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 152, 1, 236.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 153, 1, 236.6, 175.4 , 0 );
setMoveKey( spep_1-3 + 154, 1, 228.6, 189.4 , 0 );
setMoveKey( spep_1-3 + 155, 1, 228.6, 189.4 , 0 );
setMoveKey( spep_1-3 + 156, 1, 224.6, 191.4 , 0 );
setMoveKey( spep_1-3 + 157, 1, 224.6, 191.4 , 0 );
setMoveKey( spep_1-3 + 158, 1, 209.6, 188.4 , 0 );
setMoveKey( spep_1-3 + 159, 1, 209.6, 188.4 , 0 );
setMoveKey( spep_1-3 + 160, 1, 228.6, 193.4 , 0 );
setMoveKey( spep_1-3 + 161, 1, 228.6, 193.4 , 0 );
setMoveKey( spep_1-3 + 162, 1, 219.6, 183.4 , 0 );
setMoveKey( spep_1-3 + 163, 1, 219.6, 183.4 , 0 );
setMoveKey( spep_1-3 + 164, 1, 218.6, 195.4 , 0 );
setMoveKey( spep_1-3 + 165, 1, 218.6, 195.4 , 0 );
setMoveKey( spep_1-3 + 166, 1, 235.6, 201.4 , 0 );
setMoveKey( spep_1-3 + 167, 1, 235.6, 201.4 , 0 );
setMoveKey( spep_1-3 + 168, 1, 231.6, 196.4 , 0 );
setMoveKey( spep_1-3 + 169, 1, 231.6, 196.4 , 0 );
setMoveKey( spep_1-3 + 180, 1, 231.6, 196.4 , 0 );
setMoveKey( spep_1-3 + 181, 1, 231.6, 196.4 , 0 );
setMoveKey( spep_1-3 + 182, 1, 215.6, 200.4 , 0 );
setMoveKey( spep_1-3 + 183, 1, 215.6, 200.4 , 0 );
setMoveKey( spep_1-3 + 184, 1, 216.6, 185.4 , 0 );
setMoveKey( spep_1-3 + 185, 1, 216.6, 185.4 , 0 );
setMoveKey( spep_1-3 + 186, 1, 212.6, 203.4 , 0 );
setMoveKey( spep_1-3 + 187, 1, 212.6, 203.4 , 0 );
setMoveKey( spep_1-3 + 188, 1, 211.6, 200.4 , 0 );
setMoveKey( spep_1-3 + 189, 1, 211.6, 200.4 , 0 );
setMoveKey( spep_1-3 + 190, 1, 211.6, 200.4 , 0 );
setMoveKey( spep_1-3 + 191, 1, 211.6, 200.4 , 0 );
setMoveKey( spep_1-3 + 192, 1, 223.6, 194.4 , 0 );
setMoveKey( spep_1-3 + 193, 1, 223.6, 194.4 , 0 );
setMoveKey( spep_1-3 + 194, 1, 232.6, 209.4 , 0 );
setMoveKey( spep_1-3 + 195, 1, 232.6, 209.4 , 0 );
setMoveKey( spep_1-3 + 196, 1, 214.6, 188.4 , 0 );
setMoveKey( spep_1-3 + 197, 1, 214.6, 188.4 , 0 );
setMoveKey( spep_1-3 + 198, 1, 214.6, 200.4 , 0 );
setMoveKey( spep_1-3 + 199, 1, 214.6, 200.4 , 0 );
setMoveKey( spep_1-3 + 200, 1, 223.6, 199.4 , 0 );
setMoveKey( spep_1-3 + 201, 1, 223.6, 199.4 , 0 );
setMoveKey( spep_1-3 + 202, 1, 233.6, 207.4 , 0 );
setMoveKey( spep_1-3 + 203, 1, 233.6, 207.4 , 0 );
setMoveKey( spep_1-3 + 204, 1, 233.6, 207.4 , 0 );
setMoveKey( spep_1-3 + 205, 1, 233.6, 207.4 , 0 );
setMoveKey( spep_1-3 + 206, 1, 223.6, 217.4 , 0 );
setMoveKey( spep_1-3 + 207, 1, 223.6, 217.4 , 0 );
setMoveKey( spep_1-3 + 208, 1, 231.6, 194.4 , 0 );
setMoveKey( spep_1-3 + 209, 1, 231.6, 194.4 , 0 );
setMoveKey( spep_1-3 + 210, 1, 226.6, 196.4 , 0 );
setMoveKey( spep_1-3 + 211, 1, 226.6, 196.4 , 0 );
setMoveKey( spep_1-3 + 212, 1, 214.6, 204.4 , 0 );
setMoveKey( spep_1-3 + 213, 1, 214.6, 204.4 , 0 );
setMoveKey( spep_1-3 + 214, 1, 214.6, 204.4 , 0 );
setMoveKey( spep_1-3 + 215, 1, 214.6, 204.4 , 0 );
setMoveKey( spep_1-3 + 216, 1, 234.6, 196.4 , 0 );
setMoveKey( spep_1-3 + 217, 1, 234.6, 196.4 , 0 );
setMoveKey( spep_1-3 + 218, 1, 235.6, 215.4 , 0 );
setMoveKey( spep_1-3 + 219, 1, 235.6, 215.4 , 0 );
setMoveKey( spep_1-3 + 220, 1, 229.6, 194.4 , 0 );
setMoveKey( spep_1-3 + 221, 1, 229.6, 194.4 , 0 );
setMoveKey( spep_1-3 + 222, 1, 229.6, 194.4 , 0 );
setMoveKey( spep_1-3 + 223, 1, 229.6, 194.4 , 0 );
setMoveKey( spep_1-3 + 224, 1, 232.6, 211.4 , 0 );

setScaleKey( spep_1-3 + 116, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 118, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 119, 1, 0.44, 0.44 );
setScaleKey( spep_1-3 + 120, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 122, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 123, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 124, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 128, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 129, 1, 0.55, 0.55 );
setScaleKey( spep_1-3 + 130, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 131, 1, 0.56, 0.56 );
setScaleKey( spep_1-3 + 132, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 134, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 135, 1, 0.57, 0.57 );
setScaleKey( spep_1-3 + 136, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 137, 1, 0.59, 0.59 );
setScaleKey( spep_1-3 + 138, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 140, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 141, 1, 0.6, 0.6 );
setScaleKey( spep_1-3 + 142, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 143, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 144, 1, 0.45, 0.45 );
setScaleKey( spep_1-3 + 224, 1, 0.45, 0.45 );

setRotateKey( spep_1-3 + 116, 1, -19.9 );
setRotateKey( spep_1-3 + 118, 1, -19.9 );
setRotateKey( spep_1-3 + 119, 1, -19.9 );
setRotateKey( spep_1-3 + 120, 1, -27.6 );
setRotateKey( spep_1-3 + 122, 1, -27.6 );
setRotateKey( spep_1-3 + 123, 1, -27.6 );
setRotateKey( spep_1-3 + 124, 1, -38 );
setRotateKey( spep_1-3 + 125, 1, -38 );
setRotateKey( spep_1-3 + 126, 1, -54.7 );
setRotateKey( spep_1-3 + 128, 1, -54.7 );
setRotateKey( spep_1-3 + 129, 1, -54.7 );
setRotateKey( spep_1-3 + 130, 1, -67 );
setRotateKey( spep_1-3 + 131, 1, -67 );
setRotateKey( spep_1-3 + 132, 1, -111.8 );
setRotateKey( spep_1-3 + 134, 1, -111.8 );
setRotateKey( spep_1-3 + 135, 1, -111.8 );
setRotateKey( spep_1-3 + 136, 1, -131.3 );
setRotateKey( spep_1-3 + 137, 1, -131.3 );
setRotateKey( spep_1-3 + 138, 1, -136.9 );
setRotateKey( spep_1-3 + 140, 1, -136.9 );
setRotateKey( spep_1-3 + 141, 1, -136.9 );
setRotateKey( spep_1-3 + 142, 1, -158.2 );
setRotateKey( spep_1-3 + 143, 1, -158.2 );
setRotateKey( spep_1-3 + 144, 1, 1.1 );
setRotateKey( spep_1-3 + 224, 1, 1.1 );

ko = entryEffect(  spep_1+358 +8,  SP_04,    0x100,  -1, 0, 0, 0);

setEffMoveKey(  spep_1+358 +8,  ko,  0,  0);
setEffMoveKey(  spep_1+600 +8,  ko,  0,  0);
setEffScaleKey(  spep_1+358 +8,  ko,  1.0,  1.0);
setEffScaleKey(  spep_1+600 +8,  ko,  1.0,  1.0);
setEffRotateKey(  spep_1+358 +8,  ko,  0);
setEffRotateKey(  spep_1+600 +8,  ko,  0);
setEffAlphaKey(  spep_1+358 +8,  ko,  255);
setEffAlphaKey(  spep_1+600 +8,  ko,  255);

--SE
se_1211 = playSe( spep_1 + 25, 1211 );
setSeVolume( spep_1 + 25, 1211, 0 );
setSeVolume( spep_1 + 50, 1211, 0.00 );
setSeVolume( spep_1 + 51, 1211, 2.51 );
setSeVolume( spep_1 + 52, 1211, 5.02 );
setSeVolume( spep_1 + 53, 1211, 7.52 );
setSeVolume( spep_1 + 54, 1211, 10.03 );
setSeVolume( spep_1 + 55, 1211, 12.54 );
setSeVolume( spep_1 + 56, 1211, 15.05 );
setSeVolume( spep_1 + 57, 1211, 17.56 );
setSeVolume( spep_1 + 58, 1211, 20.06 );
setSeVolume( spep_1 + 59, 1211, 22.57 );
setSeVolume( spep_1 + 60, 1211, 25.08 );
setSeVolume( spep_1 + 61, 1211, 27.59 );
setSeVolume( spep_1 + 62, 1211, 30.10 );
setSeVolume( spep_1 + 63, 1211, 32.60 );
setSeVolume( spep_1 + 64, 1211, 35.11 );
setSeVolume( spep_1 + 65, 1211, 37.62 );
setSeVolume( spep_1 + 66, 1211, 40.13 );
setSeVolume( spep_1 + 67, 1211, 42.63 );
setSeVolume( spep_1 + 68, 1211, 45.14 );
setSeVolume( spep_1 + 69, 1211, 47.65 );
setSeVolume( spep_1 + 70, 1211, 50.16 );
setSeVolume( spep_1 + 71, 1211, 52.67 );
setSeVolume( spep_1 + 72, 1211, 55.17 );
setSeVolume( spep_1 + 73, 1211, 57.68 );
setSeVolume( spep_1 + 74, 1211, 60.19 );
setSeVolume( spep_1 + 75, 1211, 62.70 );
setSeVolume( spep_1 + 76, 1211, 65.21 );
setSeVolume( spep_1 + 77, 1211, 67.71 );
setSeVolume( spep_1 + 78, 1211, 70.22 );
setSeVolume( spep_1 + 79, 1211, 72.73 );
setSeVolume( spep_1 + 80, 1211, 75.24 );
setSeVolume( spep_1 + 81, 1211, 77.75 );
setSeVolume( spep_1 + 82, 1211, 80.25 );
setSeVolume( spep_1 + 83, 1211, 82.76 );
setSeVolume( spep_1 + 84, 1211, 85.27 );
setSeVolume( spep_1 + 85, 1211, 87.78 );
setSeVolume( spep_1 + 86, 1211, 90.29 );
setSeVolume( spep_1 + 87, 1211, 92.79 );
setSeVolume( spep_1 + 88, 1211, 95.30 );
setSeVolume( spep_1 + 89, 1211, 97.81 );
setSeVolume( spep_1 + 90, 1211, 100.32 );
setSeVolume( spep_1 + 91, 1211, 102.83 );
setSeVolume( spep_1 + 92, 1211, 105.33 );
setSeVolume( spep_1 + 93, 1211, 107.84 );
setSeVolume( spep_1 + 94, 1211, 110.35 );
setSeVolume( spep_1 + 95, 1211, 112.86 );
setSeVolume( spep_1 + 96, 1211, 115.37 );
setSeVolume( spep_1 + 97, 1211, 117.87 );
setSeVolume( spep_1 + 98, 1211, 120.38 );
setSeVolume( spep_1 + 99, 1211, 122.89 );
setSeVolume( spep_1 + 100, 1211, 125.40 );
setSeVolume( spep_1 + 101, 1211, 127.90 );
setSeVolume( spep_1 + 102, 1211, 130.41 );
setSeVolume( spep_1 + 103, 1211, 132.92 );
setSeVolume( spep_1 + 104, 1211, 135.43 );
setSeVolume( spep_1 + 105, 1211, 137.94 );
setSeVolume( spep_1 + 106, 1211, 140.44 );
setSeVolume( spep_1 + 107, 1211, 142.95 );
setSeVolume( spep_1 + 108, 1211, 145.46 );
setSeVolume( spep_1 + 109, 1211, 147.97 );
setSeVolume( spep_1 + 110, 1211, 150.48 );
setSeVolume( spep_1 + 111, 1211, 152.98 );
setSeVolume( spep_1 + 112, 1211, 155.49 );
setSeVolume( spep_1 + 113, 1211, 158.00 );
setSeVolume( spep_1 + 114, 1211, 160.51 );
setSeVolume( spep_1 + 115, 1211, 163.02 );
setSeVolume( spep_1 + 116, 1211, 165.52 );
setSeVolume( spep_1 + 117, 1211, 168.03 );
setSeVolume( spep_1 + 118, 1211, 170.54 );
setSeVolume( spep_1 + 119, 1211, 173.05 );
setSeVolume( spep_1 + 120, 1211, 175.56 );
setSeVolume( spep_1 + 121, 1211, 178.06 );
setSeVolume( spep_1 + 122, 1211, 180.57 );
setSeVolume( spep_1 + 123, 1211, 183.08 );
setSeVolume( spep_1 + 124, 1211, 185.59 );
setSeVolume( spep_1 + 125, 1211, 188.10 );
setSeVolume( spep_1 + 126, 1211, 190.60 );
setSeVolume( spep_1 + 127, 1211, 193.11 );
setSeVolume( spep_1 + 128, 1211, 195.62 );
setSeVolume( spep_1 + 129, 1211, 198.13 );
setSeVolume( spep_1 + 130, 1211, 200.63 );
setSeVolume( spep_1 + 131, 1211, 203.14 );
setSeVolume( spep_1 + 132, 1211, 205.65 );
setSeVolume( spep_1 + 133, 1211, 208.16 );
setSeVolume( spep_1 + 134, 1211, 210.67 );
setSeVolume( spep_1 + 135, 1211, 213.17 );
setSeVolume( spep_1 + 136, 1211, 215.68 );
setSeVolume( spep_1 + 137, 1211, 218.19 );
setSeVolume( spep_1 + 138, 1211, 220.70 );
setSeVolume( spep_1 + 139, 1211, 223.21 );
setSeVolume( spep_1 + 140, 1211, 225.71 );
setSeVolume( spep_1 + 141, 1211, 228.22 );
setSeVolume( spep_1 + 142, 1211, 230.73 );
setSeVolume( spep_1 + 143, 1211, 233.24 );
setSeVolume( spep_1 + 144, 1211, 235.75 );
setSeVolume( spep_1 + 145, 1211, 238.25 );
setSeVolume( spep_1 + 146, 1211, 240.76 );
setSeVolume( spep_1 + 147, 1211, 243.27 );
setSeVolume( spep_1 + 148, 1211, 245.78 );
setSeVolume( spep_1 + 149, 1211, 248.29 );
setSeVolume( spep_1 + 150, 1211, 250.79 );
setSeVolume( spep_1 + 151, 1211, 253.30 );
setSeVolume( spep_1 + 152, 1211, 255.81 );
setSeVolume( spep_1 + 153, 1211, 258.32 );
setSeVolume( spep_1 + 154, 1211, 260.83 );
setSeVolume( spep_1 + 155, 1211, 263.33 );
setSeVolume( spep_1 + 156, 1211, 265.84 );
setSeVolume( spep_1 + 157, 1211, 268.35 );
setSeVolume( spep_1 + 158, 1211, 270.86 );
setSeVolume( spep_1 + 159, 1211, 273.37 );
setSeVolume( spep_1 + 160, 1211, 275.87 );
setSeVolume( spep_1 + 161, 1211, 278.38 );
setSeVolume( spep_1 + 162, 1211, 280.89 );
setSeVolume( spep_1 + 163, 1211, 283.40 );
setSeVolume( spep_1 + 164, 1211, 285.90 );
setSeVolume( spep_1 + 165, 1211, 288.41 );
setSeVolume( spep_1 + 166, 1211, 290.92 );
setSeVolume( spep_1 + 167, 1211, 293.43 );
setSeVolume( spep_1 + 168, 1211, 295.94 );
setSeVolume( spep_1 + 169, 1211, 298.44 );
setSeVolume( spep_1 + 170, 1211, 300.95 );
setSeVolume( spep_1 + 171, 1211, 303.46 );
setSeVolume( spep_1 + 172, 1211, 305.97 );
setSeVolume( spep_1 + 173, 1211, 308.48 );
setSeVolume( spep_1 + 174, 1211, 310.98 );
setSeVolume( spep_1 + 175, 1211, 313.49 );
setSeVolume( spep_1 + 176, 1211, 316.00 );
se_11761 = playSe( spep_1 + 32, 1176 );
setSeVolume( spep_1 + 32, 1176, 0 );
setSeVolume( spep_1 + 147, 1176, 0.00 );
setSeVolume( spep_1 + 148, 1176, 4.39 );
setSeVolume( spep_1 + 149, 1176, 8.78 );
setSeVolume( spep_1 + 150, 1176, 13.17 );
setSeVolume( spep_1 + 151, 1176, 17.56 );
setSeVolume( spep_1 + 152, 1176, 21.94 );
setSeVolume( spep_1 + 153, 1176, 26.33 );
setSeVolume( spep_1 + 154, 1176, 30.72 );
setSeVolume( spep_1 + 155, 1176, 35.11 );
setSeVolume( spep_1 + 156, 1176, 39.50 );
setSeVolume( spep_1 + 157, 1176, 43.89 );
setSeVolume( spep_1 + 158, 1176, 48.28 );
setSeVolume( spep_1 + 159, 1176, 52.67 );
setSeVolume( spep_1 + 160, 1176, 57.06 );
setSeVolume( spep_1 + 161, 1176, 61.44 );
setSeVolume( spep_1 + 162, 1176, 65.83 );
setSeVolume( spep_1 + 163, 1176, 70.22 );
setSeVolume( spep_1 + 164, 1176, 74.61 );
setSeVolume( spep_1 + 165, 1176, 79.00 );
se_1124 = playSe( spep_1 + 46, 1124 );
setSeVolume( spep_1 + 46, 1124, 16 );
se_1215 = playSe( spep_1 + 62, 1215 );
setSeVolume( spep_1 + 62, 1215, 0 );
setSeVolume( spep_1 + 146, 1215, 0.00 );
setSeVolume( spep_1 + 147, 1215, 2.74 );
setSeVolume( spep_1 + 148, 1215, 5.48 );
setSeVolume( spep_1 + 149, 1215, 8.22 );
setSeVolume( spep_1 + 150, 1215, 10.96 );
setSeVolume( spep_1 + 151, 1215, 13.70 );
setSeVolume( spep_1 + 152, 1215, 16.43 );
setSeVolume( spep_1 + 153, 1215, 19.17 );
setSeVolume( spep_1 + 154, 1215, 21.91 );
setSeVolume( spep_1 + 155, 1215, 24.65 );
setSeVolume( spep_1 + 156, 1215, 27.39 );
setSeVolume( spep_1 + 157, 1215, 30.13 );
setSeVolume( spep_1 + 158, 1215, 32.87 );
setSeVolume( spep_1 + 159, 1215, 35.61 );
setSeVolume( spep_1 + 160, 1215, 38.35 );
setSeVolume( spep_1 + 161, 1215, 41.09 );
setSeVolume( spep_1 + 162, 1215, 43.83 );
setSeVolume( spep_1 + 163, 1215, 46.57 );
setSeVolume( spep_1 + 164, 1215, 49.30 );
setSeVolume( spep_1 + 165, 1215, 52.04 );
setSeVolume( spep_1 + 166, 1215, 54.78 );
setSeVolume( spep_1 + 167, 1215, 57.52 );
setSeVolume( spep_1 + 168, 1215, 60.26 );
setSeVolume( spep_1 + 169, 1215, 63.00 );
SE0=playSe( spep_1 + 90, 1181 );
setSeVolume( spep_1 + 90, 1181, 172 );
setSeVolume( spep_1 + 198, 1181, 172 );
setSeVolume( spep_1 + 199, 1181, 100 );
setSeVolume( spep_1 + 200, 1181, 100 );
playSe( spep_1 + 107, 1212 );
setSeVolume( spep_1 + 107, 1212, 0 );
setSeVolume( spep_1 + 107, 1212, 0.00 );
setSeVolume( spep_1 + 108, 1212, 0.45 );
setSeVolume( spep_1 + 109, 1212, 0.90 );
setSeVolume( spep_1 + 110, 1212, 1.35 );
setSeVolume( spep_1 + 111, 1212, 1.80 );
setSeVolume( spep_1 + 112, 1212, 2.25 );
setSeVolume( spep_1 + 113, 1212, 2.70 );
setSeVolume( spep_1 + 114, 1212, 3.15 );
setSeVolume( spep_1 + 115, 1212, 3.61 );
setSeVolume( spep_1 + 116, 1212, 4.06 );
setSeVolume( spep_1 + 117, 1212, 4.51 );
setSeVolume( spep_1 + 118, 1212, 4.96 );
setSeVolume( spep_1 + 119, 1212, 5.41 );
setSeVolume( spep_1 + 120, 1212, 5.86 );
setSeVolume( spep_1 + 121, 1212, 6.31 );
setSeVolume( spep_1 + 122, 1212, 6.76 );
setSeVolume( spep_1 + 123, 1212, 7.21 );
setSeVolume( spep_1 + 124, 1212, 7.66 );
setSeVolume( spep_1 + 125, 1212, 8.11 );
setSeVolume( spep_1 + 126, 1212, 8.56 );
setSeVolume( spep_1 + 127, 1212, 9.01 );
setSeVolume( spep_1 + 128, 1212, 9.46 );
setSeVolume( spep_1 + 129, 1212, 9.92 );
setSeVolume( spep_1 + 130, 1212, 10.37 );
setSeVolume( spep_1 + 131, 1212, 10.82 );
setSeVolume( spep_1 + 132, 1212, 11.27 );
setSeVolume( spep_1 + 133, 1212, 11.72 );
setSeVolume( spep_1 + 134, 1212, 12.17 );
setSeVolume( spep_1 + 135, 1212, 12.62 );
setSeVolume( spep_1 + 136, 1212, 13.07 );
setSeVolume( spep_1 + 137, 1212, 13.52 );
setSeVolume( spep_1 + 138, 1212, 13.97 );
setSeVolume( spep_1 + 139, 1212, 14.42 );
setSeVolume( spep_1 + 140, 1212, 14.87 );
setSeVolume( spep_1 + 141, 1212, 15.32 );
setSeVolume( spep_1 + 142, 1212, 15.77 );
setSeVolume( spep_1 + 143, 1212, 16.23 );
setSeVolume( spep_1 + 144, 1212, 16.68 );
setSeVolume( spep_1 + 145, 1212, 17.13 );
setSeVolume( spep_1 + 146, 1212, 17.58 );
setSeVolume( spep_1 + 147, 1212, 18.03 );
setSeVolume( spep_1 + 148, 1212, 18.48 );
setSeVolume( spep_1 + 149, 1212, 18.93 );
setSeVolume( spep_1 + 150, 1212, 19.38 );
setSeVolume( spep_1 + 151, 1212, 19.83 );
setSeVolume( spep_1 + 152, 1212, 20.28 );
setSeVolume( spep_1 + 153, 1212, 20.73 );
setSeVolume( spep_1 + 154, 1212, 21.18 );
setSeVolume( spep_1 + 155, 1212, 21.63 );
setSeVolume( spep_1 + 156, 1212, 22.08 );
setSeVolume( spep_1 + 157, 1212, 22.54 );
setSeVolume( spep_1 + 158, 1212, 22.99 );
setSeVolume( spep_1 + 159, 1212, 23.44 );
setSeVolume( spep_1 + 160, 1212, 23.89 );
setSeVolume( spep_1 + 161, 1212, 24.34 );
setSeVolume( spep_1 + 162, 1212, 24.79 );
setSeVolume( spep_1 + 163, 1212, 25.24 );
setSeVolume( spep_1 + 164, 1212, 25.69 );
setSeVolume( spep_1 + 165, 1212, 26.14 );
setSeVolume( spep_1 + 166, 1212, 26.59 );
setSeVolume( spep_1 + 167, 1212, 27.04 );
setSeVolume( spep_1 + 168, 1212, 27.49 );
setSeVolume( spep_1 + 169, 1212, 27.94 );
setSeVolume( spep_1 + 170, 1212, 28.39 );
setSeVolume( spep_1 + 171, 1212, 28.85 );
setSeVolume( spep_1 + 172, 1212, 29.30 );
setSeVolume( spep_1 + 173, 1212, 29.75 );
setSeVolume( spep_1 + 174, 1212, 30.20 );
setSeVolume( spep_1 + 175, 1212, 30.65 );
setSeVolume( spep_1 + 176, 1212, 31.10 );
setSeVolume( spep_1 + 177, 1212, 31.55 );
setSeVolume( spep_1 + 178, 1212, 32.00 );
playSe( spep_1 + 168, 1021 );
se_1159 = playSe( spep_1 + 230, 1159 );
playSe( spep_1 + 230, 1024 );
setSeVolume( spep_1 + 230, 1159, 79 );
playSe( spep_1 + 326, 1011 );
setSeVolume( spep_1 + 326, 1011, 89 );

stopSe( spep_1 + 4, se_1210, 0 );
stopSe( spep_1 + 14, se_1146, 0 );
stopSe( spep_1 + 46, se_1176, 0 );
stopSe( spep_1 + 255, se_1213, 0 );
stopSe( spep_1 + 230, se_1211, 0 );
stopSe( spep_1 + 248, se_11761, 50 );
stopSe( spep_1 + 236, se_1124, 0 );
stopSe( spep_1 + 210, se_1215, 47 );
stopSe( spep_1 + 395, se_1159, 76 );

-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_1 + 228 );
--entryFade( spep_1 +338, 10,  16, 10, 8, 8, 8, 255);             -- black fade
entryFade( spep_1 +368 - 4, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_1 + 368 );


else end