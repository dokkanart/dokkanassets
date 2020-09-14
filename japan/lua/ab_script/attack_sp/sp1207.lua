--4014860 ゴールデンフリーザ_sp1207
--sp_effect_b1_00048

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

SP_01 =152074;   --瞬間移動
SP_02 =152075;   --撹乱～オーラ（前）
SP_03 =152076;   --撹乱（後）
SP_04 =152077;   --背景　　152063
SP_05 =152078;   --前方突進
SP_06 =152079;   --横突進
SP_07 =152080;   --吠える
SP_08 =152081;   --前方パンチ
SP_09 =152082;   --フィニッシュ

SP_01 =152074;
SP_02 =152075;
SP_03 =152076;
SP_04  =152077;   
SP_05  =152078;   
SP_06x =152083;
SP_07x =152084;
SP_08  =152081;   
SP_09  =152082;  


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵

setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- Scene01
------------------------------------------------------
spep_0 = 0;

--背景・白フェード--
entryFade(spep_0+38,10,2,0,255,255,255,255);
Bg0 = entryEffectLife(spep_0,SP_04,48,0x80,-1,0,0,0);

setEffScaleKey(spep_0,Bg0,-1.0,1.0);
setEffScaleKey(spep_0+48,Bg0,-1.0,1.0);

setEffRotateKey(spep_0,Bg0,0);
setEffRotateKey(spep_0+48,Bg0,0);

setEffAlphaKey(spep_0,Bg0,255);
setEffAlphaKey(spep_0+48,Bg0,255);

--エフェクト
Kidame=entryEffectLife(spep_0,SP_01,48,0x100,-1,0,0,0);

setEffScaleKey(spep_0,Kidame,1.0,1.0);
setEffScaleKey(spep_0+48,Kidame,1.0,1.0);

setEffRotateKey(spep_0,Kidame,0);
setEffRotateKey(spep_0+48,Kidame,0);

setEffAlphaKey(spep_0,Kidame,255);
setEffAlphaKey(spep_0+48,Kidame,255);

--集中線--
shuchusen0 = entryEffectLife(spep_0+28,906,20,0x80,-1,0,0,0);

setEffScaleKey(spep_0+28,shuchusen0,1.0,1.0);
setEffScaleKey(spep_0+48,shuchusen0,1.0,1.0);

setEffRotateKey(spep_0+28,shuchusen0,0);
setEffRotateKey(spep_0+48,shuchusen0,0);

setEffAlphaKey(spep_0+28,shuchusen0,255);
setEffAlphaKey(spep_0+48,shuchusen0,255);

--流線--
ryusen0 = entryEffectLife(spep_0,921,27,0x80,-1,0,0,0);

setEffScaleKey(spep_0,ryusen0,1.0,1.0);
setEffScaleKey(spep_0+27,ryusen0,1.0,1.0);

setEffRotateKey(spep_0,ryusen0,180);
setEffRotateKey(spep_0+27,ryusen0,180);

setEffAlphaKey(spep_0,ryusen0,255);
setEffAlphaKey(spep_0+27,ryusen0,255);

--SE--
playSe(spep_0+15,1018);
playSe(spep_0+32,43); --4

------------------------------------------------------
-- Scene02
------------------------------------------------------
spep_1 = spep_0+48;

--背景・白フェード--
entryFade(spep_1+248,10,2,0,255,255,255,255);

Bg = entryEffectLife(spep_1,SP_04,258,0x80,-1,0,0,0);

setEffScaleKey(spep_1,Bg,1.0,1.0);
setEffScaleKey(spep_1+258,Bg,1.0,1.0);

setEffRotateKey(spep_1,Bg,0);
setEffRotateKey(spep_1+258,Bg,0);

setEffAlphaKey(spep_1,Bg,255);
setEffAlphaKey(spep_1+258,Bg,255);

--エフェクト
HonrouF = entryEffectLife(spep_1,SP_02,258,0x100,-1,0,0,0);

setEffScaleKey(spep_1,HonrouF,1.0,1.0);
setEffScaleKey(spep_1+258,HonrouF,1.0,1.0);

setEffRotateKey(spep_1,HonrouF,0);
setEffRotateKey(spep_1+258,HonrouF,0);

setEffAlphaKey(spep_1,HonrouF,255);
setEffAlphaKey(spep_1+258,HonrouF,255);

--流線--
ryusen1 = entryEffectLife(spep_1,922,98,0x80,-1,0,0,0);

setEffScaleKey(spep_1,ryusen1,1.4,1.4);
setEffScaleKey(spep_1+98,ryusen1,1.4,1.4);

setEffRotateKey(spep_1,ryusen1,80);
setEffRotateKey(spep_1+98,ryusen1,80);

setEffAlphaKey(spep_1,ryusen1,101);
setEffAlphaKey(spep_1+98,ryusen1,101);

--集中線--
shuchusen1 = entryEffectLife(spep_1+100,906,158,0x80,-1,0, -153.6, -159.9 );

setEffMoveKey( spep_1 + 100, shuchusen1, -153.6, -159.9 , 0 );
setEffMoveKey( spep_1 + 102, shuchusen1, -149.4, -155.7 , 0 );
setEffMoveKey( spep_1 + 104, shuchusen1, -145.1, -151.5 , 0 );
setEffMoveKey( spep_1 + 106, shuchusen1, -140.9, -147.3 , 0 );
setEffMoveKey( spep_1 + 108, shuchusen1, -136.6, -143.2 , 0 );
setEffMoveKey( spep_1 + 110, shuchusen1, -132.4, -139 , 0 );
setEffMoveKey( spep_1 + 112, shuchusen1, -128.1, -134.8 , 0 );
setEffMoveKey( spep_1 + 114, shuchusen1, -123.9, -130.6 , 0 );
setEffMoveKey( spep_1 + 116, shuchusen1, -119.6, -126.4 , 0 );
setEffMoveKey( spep_1 + 118, shuchusen1, -115.4, -122.2 , 0 );
setEffMoveKey( spep_1 + 120, shuchusen1, -111.1, -118 , 0 );
setEffMoveKey( spep_1 + 122, shuchusen1, -106.9, -113.9 , 0 );
setEffMoveKey( spep_1 + 124, shuchusen1, -102.6, -109.7 , 0 );
setEffMoveKey( spep_1 + 126, shuchusen1, -98.4, -105.5 , 0 );
setEffMoveKey( spep_1 + 128, shuchusen1, -94.1, -101.3 , 0 );
setEffMoveKey( spep_1 + 130, shuchusen1, -89.9, -97.1 , 0 );
setEffMoveKey( spep_1 + 132, shuchusen1, -85.6, -92.9 , 0 );
setEffMoveKey( spep_1 + 134, shuchusen1, -81.4, -88.7 , 0 );
setEffMoveKey( spep_1 + 136, shuchusen1, -77.1, -84.6 , 0 );
setEffMoveKey( spep_1 + 138, shuchusen1, -72.9, -80.4 , 0 );
setEffMoveKey( spep_1 + 140, shuchusen1, -68.6, -76.2 , 0 );
setEffMoveKey( spep_1 + 142, shuchusen1, -64.4, -72 , 0 );
setEffMoveKey( spep_1 + 158, shuchusen1, -64.4, -72 , 0 );
setEffMoveKey( spep_1 + 159, shuchusen1, 0, -72 , 0 );
setEffMoveKey( spep_1 + 258, shuchusen1, 0, -72 , 0 );

setEffScaleKey( spep_1 + 100, shuchusen1, 1.37, 1.41 );
setEffScaleKey( spep_1 + 102, shuchusen1, 1.36, 1.4 );
setEffScaleKey( spep_1 + 104, shuchusen1, 1.35, 1.39 );
setEffScaleKey( spep_1 + 106, shuchusen1, 1.34, 1.37 );
setEffScaleKey( spep_1 + 108, shuchusen1, 1.33, 1.36 );
setEffScaleKey( spep_1 + 110, shuchusen1, 1.31, 1.35 );
setEffScaleKey( spep_1 + 112, shuchusen1, 1.3, 1.33 );
setEffScaleKey( spep_1 + 114, shuchusen1, 1.29, 1.32 );
setEffScaleKey( spep_1 + 116, shuchusen1, 1.28, 1.31 );
setEffScaleKey( spep_1 + 118, shuchusen1, 1.27, 1.3 );
setEffScaleKey( spep_1 + 120, shuchusen1, 1.26, 1.28 );
setEffScaleKey( spep_1 + 122, shuchusen1, 1.25, 1.27 );
setEffScaleKey( spep_1 + 124, shuchusen1, 1.24, 1.26 );
setEffScaleKey( spep_1 + 126, shuchusen1, 1.23, 1.24 );
setEffScaleKey( spep_1 + 128, shuchusen1, 1.22, 1.23 );
setEffScaleKey( spep_1 + 130, shuchusen1, 1.21, 1.22 );
setEffScaleKey( spep_1 + 132, shuchusen1, 1.19, 1.2 );
setEffScaleKey( spep_1 + 134, shuchusen1, 1.18, 1.19 );
setEffScaleKey( spep_1 + 136, shuchusen1, 1.17, 1.18 );
setEffScaleKey( spep_1 + 138, shuchusen1, 1.16, 1.17 );
setEffScaleKey( spep_1 + 140, shuchusen1, 1.15, 1.15 );
setEffScaleKey( spep_1 + 142, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_1 + 156, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_1 + 258, shuchusen1, 1.14, 1.14 );

setEffRotateKey( spep_1 + 100, shuchusen1, 0 );
setEffRotateKey( spep_1 + 258, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 100, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 158, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 159, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 175, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 176, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 258, shuchusen1, 255 );

HonrouB = entryEffectLife(spep_1,SP_03,258,0x80,-1,0,0,0);

setEffScaleKey(spep_1,HonrouB,1.0,1.0);
setEffScaleKey(spep_1+258,HonrouB,1.0,1.0);

setEffRotateKey(spep_1,HonrouB,0);
setEffRotateKey(spep_1+258,HonrouB,0);

setEffAlphaKey(spep_1,HonrouB,255);
setEffAlphaKey(spep_1+258,HonrouB,255);

--エネミー
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 106, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1 + 0, 1, -120, -6 , 0 );
setMoveKey( spep_1 + 2, 1, -93.8, -0.7 , 0 );
setMoveKey( spep_1 + 4, 1, -67.6, 4.5 , 0 );
setMoveKey( spep_1 + 6, 1, -41.4, 9.8 , 0 );
setMoveKey( spep_1 + 8, 1, -15.2, 15 , 0 );
setMoveKey( spep_1 + 10, 1, 11, 20.3 , 0 );
setMoveKey( spep_1 + 12, 1, 37.2, 25.5 , 0 );
setMoveKey( spep_1 + 14, 1, 63.4, 30.8 , 0 );
setMoveKey( spep_1 + 16, 1, 89.6, 36 , 0 );
setMoveKey( spep_1 + 18, 1, 115.8, 41.3 , 0 );
setMoveKey( spep_1 + 20, 1, 90.8, 37.5 , 0 );
setMoveKey( spep_1 + 22, 1, 65.8, 33.6 , 0 );
setMoveKey( spep_1 + 24, 1, 40.8, 29.8 , 0 );
setMoveKey( spep_1 + 26, 1, 15.8, 26 , 0 );
setMoveKey( spep_1 + 28, 1, -9.2, 22.1 , 0 );
setMoveKey( spep_1 + 30, 1, -34.2, 18.3 , 0 );
setMoveKey( spep_1 + 32, 1, -59.2, 14.4 , 0 );
setMoveKey( spep_1 + 34, 1, -84.2, 10.6 , 0 );
setMoveKey( spep_1 + 36, 1, -82.1, -7.4 , 0 );
setMoveKey( spep_1 + 38, 1, -80, -25.4 , 0 );
setMoveKey( spep_1 + 40, 1, -77.9, -43.4 , 0 );
setMoveKey( spep_1 + 42, 1, -75.8, -61.4 , 0 );
setMoveKey( spep_1 + 44, 1, -73.7, -79.4 , 0 );
setMoveKey( spep_1 + 46, 1, -71.7, -97.4 , 0 );
setMoveKey( spep_1 + 48, 1, -69.6, -115.4 , 0 );
setMoveKey( spep_1 + 50, 1, -67.5, -133.5 , 0 );
setMoveKey( spep_1 + 52, 1, -65.4, -151.5 , 0 );
setMoveKey( spep_1 + 54, 1, -63.3, -169.5 , 0 );
setMoveKey( spep_1 + 56, 1, -58.7, -144.4 , 0 );
setMoveKey( spep_1 + 58, 1, -54.1, -119.4 , 0 );
setMoveKey( spep_1 + 60, 1, -49.5, -94.4 , 0 );
setMoveKey( spep_1 + 62, 1, -45, -69.3 , 0 );
setMoveKey( spep_1 + 64, 1, -40.4, -44.2 , 0 );
setMoveKey( spep_1 + 66, 1, -35.8, -19.2 , 0 );
setMoveKey( spep_1 + 68, 1, -31.2, 5.9 , 0 );
setMoveKey( spep_1 + 70, 1, -26.6, 30.9 , 0 );
setMoveKey( spep_1 + 72, 1, -22, 56 , 0 );
setMoveKey( spep_1 + 74, 1, -17.4, 81.1 , 0 );
setMoveKey( spep_1 + 76, 1, -12.8, 106.1 , 0 );
setMoveKey( spep_1 + 78, 1, -6.3, 93.7 , 0 );
setMoveKey( spep_1 + 80, 1, 0.3, 81.4 , 0 );
setMoveKey( spep_1 + 82, 1, 6.8, 69 , 0 );
setMoveKey( spep_1 + 84, 1, 13.3, 56.7 , 0 );
setMoveKey( spep_1 + 86, 1, 19.9, 44.3 , 0 );
setMoveKey( spep_1 + 88, 1, 26.4, 32 , 0 );
setMoveKey( spep_1 + 90, 1, 32.9, 19.6 , 0 );
setMoveKey( spep_1 + 92, 1, 39.5, 7.2 , 0 );
setMoveKey( spep_1 + 94, 1, 46, -5.1 , 0 );
setMoveKey( spep_1 + 96, 1, 52.5, -17.5 , 0 );
setMoveKey( spep_1 + 98, 1, 59.1, -29.8 , 0 );
setMoveKey( spep_1 + 100, 1, 65.6, -42.2 , 0 );
setMoveKey( spep_1 + 102, 1, 305.2, -124.5 , 0 );
setMoveKey( spep_1 + 104, 1, 544.9, -206.7 , 0 );
setMoveKey( spep_1 + 106, 1, 784.5, -289 , 0 );

setScaleKey( spep_1 + 0, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 4, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 6, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 8, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 10, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 12, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 14, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 18, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 20, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 22, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 24, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 28, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 32, 1, 1, 1 );
setScaleKey( spep_1 + 34, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 36, 1, 1, 1 );
setScaleKey( spep_1 + 38, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 44, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 46, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 48, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 50, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 52, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 54, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 56, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 58, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 60, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 62, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 64, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 66, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 68, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 70, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 72, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 74, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 76, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 78, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 82, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 84, 1, 1, 1 );
setScaleKey( spep_1 + 86, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 88, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 90, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 92, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 94, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 96, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 98, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 100, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 102, 1, 3.59, 3.59 );
setScaleKey( spep_1 + 104, 1, 5.79, 5.79 );
setScaleKey( spep_1 + 106, 1, 8, 8 );

setRotateKey( spep_1 + 0, 1, -27.9 );
setRotateKey( spep_1 + 2, 1, -26.7 );
setRotateKey( spep_1 + 4, 1, -25.4 );
setRotateKey( spep_1 + 6, 1, -24.1 );
setRotateKey( spep_1 + 8, 1, -22.8 );
setRotateKey( spep_1 + 10, 1, -21.5 );
setRotateKey( spep_1 + 12, 1, -20.2 );
setRotateKey( spep_1 + 14, 1, -19 );
setRotateKey( spep_1 + 16, 1, -17.7 );
setRotateKey( spep_1 + 18, 1, -16.4 );
setRotateKey( spep_1 + 20, 1, -17.3 );
setRotateKey( spep_1 + 22, 1, -18.2 );
setRotateKey( spep_1 + 24, 1, -19.1 );
setRotateKey( spep_1 + 26, 1, -20 );
setRotateKey( spep_1 + 28, 1, -20.8 );
setRotateKey( spep_1 + 30, 1, -21.7 );
setRotateKey( spep_1 + 32, 1, -22.6 );
setRotateKey( spep_1 + 34, 1, -23.5 );
setRotateKey( spep_1 + 36, 1, -24.3 );
setRotateKey( spep_1 + 38, 1, -25 );
setRotateKey( spep_1 + 40, 1, -25.7 );
setRotateKey( spep_1 + 42, 1, -26.4 );
setRotateKey( spep_1 + 44, 1, -27.1 );
setRotateKey( spep_1 + 46, 1, -27.9 );
setRotateKey( spep_1 + 48, 1, -28.6 );
setRotateKey( spep_1 + 50, 1, -29.3 );
setRotateKey( spep_1 + 52, 1, -30 );
setRotateKey( spep_1 + 54, 1, -30.7 );
setRotateKey( spep_1 + 56, 1, -29.4 );
setRotateKey( spep_1 + 58, 1, -28.2 );
setRotateKey( spep_1 + 60, 1, -26.9 );
setRotateKey( spep_1 + 62, 1, -25.6 );
setRotateKey( spep_1 + 64, 1, -24.3 );
setRotateKey( spep_1 + 66, 1, -23 );
setRotateKey( spep_1 + 68, 1, -21.7 );
setRotateKey( spep_1 + 70, 1, -20.5 );
setRotateKey( spep_1 + 72, 1, -19.2 );
setRotateKey( spep_1 + 74, 1, -17.9 );
setRotateKey( spep_1 + 76, 1, -16.6 );
setRotateKey( spep_1 + 78, 1, -16.5 );
setRotateKey( spep_1 + 80, 1, -16.4 );
setRotateKey( spep_1 + 82, 1, -16.3 );
setRotateKey( spep_1 + 84, 1, -16.3 );
setRotateKey( spep_1 + 86, 1, -16.2 );
setRotateKey( spep_1 + 88, 1, -16.1 );
setRotateKey( spep_1 + 90, 1, -16 );
setRotateKey( spep_1 + 92, 1, -15.9 );
setRotateKey( spep_1 + 94, 1, -15.8 );
setRotateKey( spep_1 + 96, 1, -15.8 );
setRotateKey( spep_1 + 98, 1, -15.7 );
setRotateKey( spep_1 + 100, 1, -15.6 );
setRotateKey( spep_1 + 106, 1, -15.6 );

--カットイン
ctgogo = entryEffectLife( spep_1+170, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_1+170, ctgogo, 70, 8);
setEffScaleKey(spep_1+170, ctgogo, 0.7, 0.7);

--顔カットイン
speff = entryEffect(  spep_1+158,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+158,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--SE--
playSe(spep_1+4,44); --4
playSe(spep_1+14,4); --4
playSe(spep_1+24,44); --4
playSe(spep_1+34,4); --4
playSe(spep_1+46,44); --4
playSe(spep_1+56,4); --4
playSe(spep_1+64,44); --4
playSe(spep_1+74,4); --4

playSe(spep_1+138,43); --4

playSe(spep_1+148,SE_01);
playSe(spep_1+170,SE_04);


------------------------------------------------------
-- Scene03　CARD
------------------------------------------------------
spep_2 =spep_1+258;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Scene04
------------------------------------------------------
spep_3 =spep_2+90;

--背景・白フェード--
entryFade(spep_3+74,4,2,0,255,255,255,255);

Tossin = entryEffectLife(  spep_3,  SP_05,  78, 0x100, -1,0, 0, 0);

setEffScaleKey(spep_3,Tossin,1.0,1.0);
setEffScaleKey(spep_3+78,Tossin,1.0,1.0);

setEffRotateKey(spep_3,Tossin,0);
setEffRotateKey(spep_3+78,Tossin,0);

setEffAlphaKey(spep_3,Tossin,255);
setEffAlphaKey(spep_3+78,Tossin,255);

shuchusen3 = entryEffectLife( spep_3, 906, 78, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+78,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+78,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+78,  shuchusen3,  0);
setEffAlphaKey(  spep_3+78,  shuchusen3,  255);

playSe( spep_3, 1002);
playSe( spep_3, 1011);

--playSeLife( spep_3+15, 1019,63,0);
--playSeLife( spep_3+15, 1044,63,0);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+60; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- Scene05
------------------------------------------------------
spep_4 = spep_3+78;

--背景・白フェード--
entryFade(spep_4,0,0,4,255,255,255,255);
entryFade(spep_4+158,8,2,0,255,255,255,255);
entryFadeBg(spep_4,0,168,0,10,10,10,255);

Tossin2 = entryEffectLife(  spep_4,  SP_06,  168, 0x100, -1,0, 0, 0);

setEffScaleKey(spep_4,Tossin2,1.0,1.0);
setEffScaleKey(spep_4+168,Tossin2,1.0,1.0);

setEffRotateKey(spep_4,Tossin2,0);
setEffRotateKey(spep_4+168,Tossin2,0);

setEffAlphaKey(spep_4,Tossin2,255);
setEffAlphaKey(spep_4+168,Tossin2,255);

playSe( spep_4, 8);--突進のやつ
--
--playSe( spep_4+120, 4);--突進のやつ
playSe( spep_4+15, 1019);
playSe( spep_4+40, 1019);
playSe( spep_4+75, 1019);
playSe( spep_4+120, 1019);
Seid1=playSe(spep_4+155, 1019);
stopSe(spep_4+167,Seid1,0);

--playSe( spep_4+15, 1044);
Seid2=playSe( spep_4+15, 1044);
stopSe(spep_4+167,Seid2,0);

------------------------------------------------------
-- Scene06
------------------------------------------------------
spep_5 = spep_4+168;

--背景・白フェード--
entryFade(spep_5,0,0,6,255,255,255,255);
entryFade(spep_5+48,18,4,0,255,255,255,255);
entryFadeBg(spep_5,0,68,0,10,10,10,255);

--ナビ--
Nabi = entryEffectLife(  spep_5,  SP_07,  68, 0x100, -1,0, 0, 0);

setEffScaleKey(spep_5,Nabi,1.0,1.0);
setEffScaleKey(spep_5+68,Nabi,1.0,1.0);

setEffRotateKey(spep_5,Nabi,0);
setEffRotateKey(spep_5+68,Nabi,0);

setEffAlphaKey(spep_5,Nabi,255);
setEffAlphaKey(spep_5+68,Nabi,255);

--集中線--
shuchusen5 = entryEffectLife( spep_5, 906, 68, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+68,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+68,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+68,  shuchusen5,  0);
setEffAlphaKey(  spep_5+68,  shuchusen5,  255);

--流線--
ryusen5 = entryEffectLife( spep_5, 922, 68, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5,  ryusen5,  0,  0);
setEffScaleKey(  spep_5,  ryusen5,  1.0,  1.0);
setEffRotateKey(  spep_5,  ryusen5,  90);
setEffAlphaKey(  spep_5,  ryusen5,  255);
setEffMoveKey(  spep_5+68,  ryusen5,  0,  0);
setEffScaleKey(  spep_5+68,  ryusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+68,  ryusen5,  90);
setEffAlphaKey(  spep_5+68,  ryusen5,  255);

playSe(spep_5,1018);

------------------------------------------------------
-- Scene07
------------------------------------------------------
spep_6= spep_5+68;

--背景・白フェード--
entryFade(spep_6+90,8,4,0,255,255,255,255);
entryFadeBg(spep_6,0,100,0,10,10,10,255);

--ナビ--
Nabi2 = entryEffectLife(  spep_6,  SP_08,  100, 0x100, -1,0, 0, 0);

setEffScaleKey(spep_6,Nabi2,1.0,1.0);
setEffScaleKey(spep_6+100,Nabi2,1.0,1.0);

setEffRotateKey(spep_6,Nabi2,0);
setEffRotateKey(spep_6+100,Nabi2,0);

setEffAlphaKey(spep_6,Nabi2,255);
setEffAlphaKey(spep_6+100,Nabi2,255);

--集中線--
shuchusen6 = entryEffectLife( spep_6+18, 906, 82, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_6+18,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6+18,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_6+18,  shuchusen6,  0);
setEffAlphaKey(  spep_6+18,  shuchusen6,  255);
setEffMoveKey(  spep_6+100,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6+100,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_6+100,  shuchusen6,  0);
setEffAlphaKey(  spep_6+100,  shuchusen6,  255);

-- SE --
playSe(spep_6,1022);
playSe(spep_6+70,1064);

------------------------------------------------------
-- Scene08
------------------------------------------------------
spep_7= spep_6+100;

--背景・白フェード--
entryFade(spep_7,0,0,10,255,255,255,255);
entryFade(spep_7+116,22,2,0,255,255,255,255);
entryFadeBg(spep_7,0,128,0,10,10,10,255);

--エフェクト
Finish = entryEffect(  spep_7, 152082, 0x80, -1,0, 0, 0);

setEffScaleKey(spep_7,Finish,1.0,1.0);
setEffScaleKey(spep_7+138,Finish,1.0,1.0);

setEffRotateKey(spep_7,Finish,0);
setEffRotateKey(spep_7+138,Finish,0);

setEffAlphaKey(spep_7,Finish,255);
setEffAlphaKey(spep_7+138,Finish,255);

--集中線--
shuchusen7 = entryEffectLife( spep_7, 906, 76, 0x100,  -1, 0,  0,  0); 

setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffMoveKey(  spep_7+76,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+76,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7+76,  shuchusen7,  0);
setEffAlphaKey(  spep_7+76,  shuchusen7,  255);

-- ダメージ表示
dealDamage( spep_7+36);
entryFade( spep_7+118, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+128);

-- SE --
playSe( spep_7+18,1060);
playSe( spep_7+28,1024);
--playSe( spep_7+68,3);


else

------------------------------------------------------
-- Scene01
------------------------------------------------------
spep_0 = 0;

--背景・白フェード--
entryFade(spep_0+38,10,2,0,255,255,255,255);
Bg0 = entryEffectLife(spep_0,SP_04,48,0x80,-1,0,0,0);

setEffScaleKey(spep_0,Bg0,-1.0,1.0);
setEffScaleKey(spep_0+48,Bg0,-1.0,1.0);

setEffRotateKey(spep_0,Bg0,0);
setEffRotateKey(spep_0+48,Bg0,0);

setEffAlphaKey(spep_0,Bg0,255);
setEffAlphaKey(spep_0+48,Bg0,255);

--エフェクト
Kidame=entryEffectLife(spep_0,SP_01,48,0x100,-1,0,0,0);

setEffScaleKey(spep_0,Kidame,1.0,1.0);
setEffScaleKey(spep_0+48,Kidame,1.0,1.0);

setEffRotateKey(spep_0,Kidame,0);
setEffRotateKey(spep_0+48,Kidame,0);

setEffAlphaKey(spep_0,Kidame,255);
setEffAlphaKey(spep_0+48,Kidame,255);

--集中線--
shuchusen0 = entryEffectLife(spep_0+28,906,20,0x80,-1,0,0,0);

setEffScaleKey(spep_0+28,shuchusen0,1.0,1.0);
setEffScaleKey(spep_0+48,shuchusen0,1.0,1.0);

setEffRotateKey(spep_0+28,shuchusen0,0);
setEffRotateKey(spep_0+48,shuchusen0,0);

setEffAlphaKey(spep_0+28,shuchusen0,255);
setEffAlphaKey(spep_0+48,shuchusen0,255);

--流線--
ryusen0 = entryEffectLife(spep_0,921,27,0x80,-1,0,0,0);

setEffScaleKey(spep_0,ryusen0,1.0,1.0);
setEffScaleKey(spep_0+27,ryusen0,1.0,1.0);

setEffRotateKey(spep_0,ryusen0,180);
setEffRotateKey(spep_0+27,ryusen0,180);

setEffAlphaKey(spep_0,ryusen0,255);
setEffAlphaKey(spep_0+27,ryusen0,255);

--SE--
playSe(spep_0+15,1018);
playSe(spep_0+32,43); --4

------------------------------------------------------
-- Scene02
------------------------------------------------------
spep_1 = spep_0+48;

--背景・白フェード--
entryFade(spep_1+248,10,2,0,255,255,255,255);

Bg = entryEffectLife(spep_1,SP_04,258,0x80,-1,0,0,0);

setEffScaleKey(spep_1,Bg,1.0,1.0);
setEffScaleKey(spep_1+258,Bg,1.0,1.0);

setEffRotateKey(spep_1,Bg,0);
setEffRotateKey(spep_1+258,Bg,0);

setEffAlphaKey(spep_1,Bg,255);
setEffAlphaKey(spep_1+258,Bg,255);

--エフェクト
HonrouF = entryEffectLife(spep_1,SP_02,258,0x100,-1,0,0,0);

setEffScaleKey(spep_1,HonrouF,1.0,1.0);
setEffScaleKey(spep_1+258,HonrouF,1.0,1.0);

setEffRotateKey(spep_1,HonrouF,0);
setEffRotateKey(spep_1+258,HonrouF,0);

setEffAlphaKey(spep_1,HonrouF,255);
setEffAlphaKey(spep_1+258,HonrouF,255);

--流線--
ryusen1 = entryEffectLife(spep_1,922,98,0x80,-1,0,0,0);

setEffScaleKey(spep_1,ryusen1,1.4,1.4);
setEffScaleKey(spep_1+98,ryusen1,1.4,1.4);

setEffRotateKey(spep_1,ryusen1,80);
setEffRotateKey(spep_1+98,ryusen1,80);

setEffAlphaKey(spep_1,ryusen1,101);
setEffAlphaKey(spep_1+98,ryusen1,101);

--集中線--
shuchusen1 = entryEffectLife(spep_1+100,906,158,0x80,-1,0, -153.6, -159.9 );

setEffMoveKey( spep_1 + 100, shuchusen1, -153.6, -159.9 , 0 );
setEffMoveKey( spep_1 + 102, shuchusen1, -149.4, -155.7 , 0 );
setEffMoveKey( spep_1 + 104, shuchusen1, -145.1, -151.5 , 0 );
setEffMoveKey( spep_1 + 106, shuchusen1, -140.9, -147.3 , 0 );
setEffMoveKey( spep_1 + 108, shuchusen1, -136.6, -143.2 , 0 );
setEffMoveKey( spep_1 + 110, shuchusen1, -132.4, -139 , 0 );
setEffMoveKey( spep_1 + 112, shuchusen1, -128.1, -134.8 , 0 );
setEffMoveKey( spep_1 + 114, shuchusen1, -123.9, -130.6 , 0 );
setEffMoveKey( spep_1 + 116, shuchusen1, -119.6, -126.4 , 0 );
setEffMoveKey( spep_1 + 118, shuchusen1, -115.4, -122.2 , 0 );
setEffMoveKey( spep_1 + 120, shuchusen1, -111.1, -118 , 0 );
setEffMoveKey( spep_1 + 122, shuchusen1, -106.9, -113.9 , 0 );
setEffMoveKey( spep_1 + 124, shuchusen1, -102.6, -109.7 , 0 );
setEffMoveKey( spep_1 + 126, shuchusen1, -98.4, -105.5 , 0 );
setEffMoveKey( spep_1 + 128, shuchusen1, -94.1, -101.3 , 0 );
setEffMoveKey( spep_1 + 130, shuchusen1, -89.9, -97.1 , 0 );
setEffMoveKey( spep_1 + 132, shuchusen1, -85.6, -92.9 , 0 );
setEffMoveKey( spep_1 + 134, shuchusen1, -81.4, -88.7 , 0 );
setEffMoveKey( spep_1 + 136, shuchusen1, -77.1, -84.6 , 0 );
setEffMoveKey( spep_1 + 138, shuchusen1, -72.9, -80.4 , 0 );
setEffMoveKey( spep_1 + 140, shuchusen1, -68.6, -76.2 , 0 );
setEffMoveKey( spep_1 + 142, shuchusen1, -64.4, -72 , 0 );
setEffMoveKey( spep_1 + 158, shuchusen1, -64.4, -72 , 0 );
setEffMoveKey( spep_1 + 159, shuchusen1, 0, -72 , 0 );
setEffMoveKey( spep_1 + 258, shuchusen1, 0, -72 , 0 );

setEffScaleKey( spep_1 + 100, shuchusen1, 1.37, 1.41 );
setEffScaleKey( spep_1 + 102, shuchusen1, 1.36, 1.4 );
setEffScaleKey( spep_1 + 104, shuchusen1, 1.35, 1.39 );
setEffScaleKey( spep_1 + 106, shuchusen1, 1.34, 1.37 );
setEffScaleKey( spep_1 + 108, shuchusen1, 1.33, 1.36 );
setEffScaleKey( spep_1 + 110, shuchusen1, 1.31, 1.35 );
setEffScaleKey( spep_1 + 112, shuchusen1, 1.3, 1.33 );
setEffScaleKey( spep_1 + 114, shuchusen1, 1.29, 1.32 );
setEffScaleKey( spep_1 + 116, shuchusen1, 1.28, 1.31 );
setEffScaleKey( spep_1 + 118, shuchusen1, 1.27, 1.3 );
setEffScaleKey( spep_1 + 120, shuchusen1, 1.26, 1.28 );
setEffScaleKey( spep_1 + 122, shuchusen1, 1.25, 1.27 );
setEffScaleKey( spep_1 + 124, shuchusen1, 1.24, 1.26 );
setEffScaleKey( spep_1 + 126, shuchusen1, 1.23, 1.24 );
setEffScaleKey( spep_1 + 128, shuchusen1, 1.22, 1.23 );
setEffScaleKey( spep_1 + 130, shuchusen1, 1.21, 1.22 );
setEffScaleKey( spep_1 + 132, shuchusen1, 1.19, 1.2 );
setEffScaleKey( spep_1 + 134, shuchusen1, 1.18, 1.19 );
setEffScaleKey( spep_1 + 136, shuchusen1, 1.17, 1.18 );
setEffScaleKey( spep_1 + 138, shuchusen1, 1.16, 1.17 );
setEffScaleKey( spep_1 + 140, shuchusen1, 1.15, 1.15 );
setEffScaleKey( spep_1 + 142, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_1 + 156, shuchusen1, 1.14, 1.14 );
setEffScaleKey( spep_1 + 258, shuchusen1, 1.14, 1.14 );

setEffRotateKey( spep_1 + 100, shuchusen1, 0 );
setEffRotateKey( spep_1 + 258, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 100, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 158, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 159, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 175, shuchusen1, 0 );
setEffAlphaKey( spep_1 + 176, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 258, shuchusen1, 255 );

HonrouB = entryEffectLife(spep_1,SP_03,258,0x80,-1,0,0,0);

setEffScaleKey(spep_1,HonrouB,1.0,1.0);
setEffScaleKey(spep_1+258,HonrouB,1.0,1.0);

setEffRotateKey(spep_1,HonrouB,0);
setEffRotateKey(spep_1+258,HonrouB,0);

setEffAlphaKey(spep_1,HonrouB,255);
setEffAlphaKey(spep_1+258,HonrouB,255);

--エネミー
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 106, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );

setMoveKey( spep_1 + 0, 1, -120, -6 , 0 );
setMoveKey( spep_1 + 2, 1, -93.8, -0.7 , 0 );
setMoveKey( spep_1 + 4, 1, -67.6, 4.5 , 0 );
setMoveKey( spep_1 + 6, 1, -41.4, 9.8 , 0 );
setMoveKey( spep_1 + 8, 1, -15.2, 15 , 0 );
setMoveKey( spep_1 + 10, 1, 11, 20.3 , 0 );
setMoveKey( spep_1 + 12, 1, 37.2, 25.5 , 0 );
setMoveKey( spep_1 + 14, 1, 63.4, 30.8 , 0 );
setMoveKey( spep_1 + 16, 1, 89.6, 36 , 0 );
setMoveKey( spep_1 + 18, 1, 115.8, 41.3 , 0 );
setMoveKey( spep_1 + 20, 1, 90.8, 37.5 , 0 );
setMoveKey( spep_1 + 22, 1, 65.8, 33.6 , 0 );
setMoveKey( spep_1 + 24, 1, 40.8, 29.8 , 0 );
setMoveKey( spep_1 + 26, 1, 15.8, 26 , 0 );
setMoveKey( spep_1 + 28, 1, -9.2, 22.1 , 0 );
setMoveKey( spep_1 + 30, 1, -34.2, 18.3 , 0 );
setMoveKey( spep_1 + 32, 1, -59.2, 14.4 , 0 );
setMoveKey( spep_1 + 34, 1, -84.2, 10.6 , 0 );
setMoveKey( spep_1 + 36, 1, -82.1, -7.4 , 0 );
setMoveKey( spep_1 + 38, 1, -80, -25.4 , 0 );
setMoveKey( spep_1 + 40, 1, -77.9, -43.4 , 0 );
setMoveKey( spep_1 + 42, 1, -75.8, -61.4 , 0 );
setMoveKey( spep_1 + 44, 1, -73.7, -79.4 , 0 );
setMoveKey( spep_1 + 46, 1, -71.7, -97.4 , 0 );
setMoveKey( spep_1 + 48, 1, -69.6, -115.4 , 0 );
setMoveKey( spep_1 + 50, 1, -67.5, -133.5 , 0 );
setMoveKey( spep_1 + 52, 1, -65.4, -151.5 , 0 );
setMoveKey( spep_1 + 54, 1, -63.3, -169.5 , 0 );
setMoveKey( spep_1 + 56, 1, -58.7, -144.4 , 0 );
setMoveKey( spep_1 + 58, 1, -54.1, -119.4 , 0 );
setMoveKey( spep_1 + 60, 1, -49.5, -94.4 , 0 );
setMoveKey( spep_1 + 62, 1, -45, -69.3 , 0 );
setMoveKey( spep_1 + 64, 1, -40.4, -44.2 , 0 );
setMoveKey( spep_1 + 66, 1, -35.8, -19.2 , 0 );
setMoveKey( spep_1 + 68, 1, -31.2, 5.9 , 0 );
setMoveKey( spep_1 + 70, 1, -26.6, 30.9 , 0 );
setMoveKey( spep_1 + 72, 1, -22, 56 , 0 );
setMoveKey( spep_1 + 74, 1, -17.4, 81.1 , 0 );
setMoveKey( spep_1 + 76, 1, -12.8, 106.1 , 0 );
setMoveKey( spep_1 + 78, 1, -6.3, 93.7 , 0 );
setMoveKey( spep_1 + 80, 1, 0.3, 81.4 , 0 );
setMoveKey( spep_1 + 82, 1, 6.8, 69 , 0 );
setMoveKey( spep_1 + 84, 1, 13.3, 56.7 , 0 );
setMoveKey( spep_1 + 86, 1, 19.9, 44.3 , 0 );
setMoveKey( spep_1 + 88, 1, 26.4, 32 , 0 );
setMoveKey( spep_1 + 90, 1, 32.9, 19.6 , 0 );
setMoveKey( spep_1 + 92, 1, 39.5, 7.2 , 0 );
setMoveKey( spep_1 + 94, 1, 46, -5.1 , 0 );
setMoveKey( spep_1 + 96, 1, 52.5, -17.5 , 0 );
setMoveKey( spep_1 + 98, 1, 59.1, -29.8 , 0 );
setMoveKey( spep_1 + 100, 1, 65.6, -42.2 , 0 );
setMoveKey( spep_1 + 102, 1, 305.2, -124.5 , 0 );
setMoveKey( spep_1 + 104, 1, 544.9, -206.7 , 0 );
setMoveKey( spep_1 + 106, 1, 784.5, -289 , 0 );

setScaleKey( spep_1 + 0, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 2, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 4, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 6, 1, 1.27, 1.27 );
setScaleKey( spep_1 + 8, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 10, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 12, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 14, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 18, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 20, 1, 1.39, 1.39 );
setScaleKey( spep_1 + 22, 1, 1.32, 1.32 );
setScaleKey( spep_1 + 24, 1, 1.26, 1.26 );
setScaleKey( spep_1 + 26, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 28, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 32, 1, 1, 1 );
setScaleKey( spep_1 + 34, 1, 0.94, 0.94 );
setScaleKey( spep_1 + 36, 1, 1, 1 );
setScaleKey( spep_1 + 38, 1, 1.06, 1.06 );
setScaleKey( spep_1 + 40, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_1 + 44, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 46, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 48, 1, 1.36, 1.36 );
setScaleKey( spep_1 + 50, 1, 1.42, 1.42 );
setScaleKey( spep_1 + 52, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 54, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 56, 1, 1.48, 1.48 );
setScaleKey( spep_1 + 58, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 60, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 62, 1, 1.28, 1.28 );
setScaleKey( spep_1 + 64, 1, 1.22, 1.22 );
setScaleKey( spep_1 + 66, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 68, 1, 1.08, 1.08 );
setScaleKey( spep_1 + 70, 1, 1.02, 1.02 );
setScaleKey( spep_1 + 72, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 74, 1, 0.88, 0.88 );
setScaleKey( spep_1 + 76, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 78, 1, 0.86, 0.86 );
setScaleKey( spep_1 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 82, 1, 0.96, 0.96 );
setScaleKey( spep_1 + 84, 1, 1, 1 );
setScaleKey( spep_1 + 86, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 88, 1, 1.1, 1.1 );
setScaleKey( spep_1 + 90, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 92, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 94, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 96, 1, 1.29, 1.29 );
setScaleKey( spep_1 + 98, 1, 1.33, 1.33 );
setScaleKey( spep_1 + 100, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 102, 1, 3.59, 3.59 );
setScaleKey( spep_1 + 104, 1, 5.79, 5.79 );
setScaleKey( spep_1 + 106, 1, 8, 8 );

setRotateKey( spep_1 + 0, 1, -27.9 );
setRotateKey( spep_1 + 2, 1, -26.7 );
setRotateKey( spep_1 + 4, 1, -25.4 );
setRotateKey( spep_1 + 6, 1, -24.1 );
setRotateKey( spep_1 + 8, 1, -22.8 );
setRotateKey( spep_1 + 10, 1, -21.5 );
setRotateKey( spep_1 + 12, 1, -20.2 );
setRotateKey( spep_1 + 14, 1, -19 );
setRotateKey( spep_1 + 16, 1, -17.7 );
setRotateKey( spep_1 + 18, 1, -16.4 );
setRotateKey( spep_1 + 20, 1, -17.3 );
setRotateKey( spep_1 + 22, 1, -18.2 );
setRotateKey( spep_1 + 24, 1, -19.1 );
setRotateKey( spep_1 + 26, 1, -20 );
setRotateKey( spep_1 + 28, 1, -20.8 );
setRotateKey( spep_1 + 30, 1, -21.7 );
setRotateKey( spep_1 + 32, 1, -22.6 );
setRotateKey( spep_1 + 34, 1, -23.5 );
setRotateKey( spep_1 + 36, 1, -24.3 );
setRotateKey( spep_1 + 38, 1, -25 );
setRotateKey( spep_1 + 40, 1, -25.7 );
setRotateKey( spep_1 + 42, 1, -26.4 );
setRotateKey( spep_1 + 44, 1, -27.1 );
setRotateKey( spep_1 + 46, 1, -27.9 );
setRotateKey( spep_1 + 48, 1, -28.6 );
setRotateKey( spep_1 + 50, 1, -29.3 );
setRotateKey( spep_1 + 52, 1, -30 );
setRotateKey( spep_1 + 54, 1, -30.7 );
setRotateKey( spep_1 + 56, 1, -29.4 );
setRotateKey( spep_1 + 58, 1, -28.2 );
setRotateKey( spep_1 + 60, 1, -26.9 );
setRotateKey( spep_1 + 62, 1, -25.6 );
setRotateKey( spep_1 + 64, 1, -24.3 );
setRotateKey( spep_1 + 66, 1, -23 );
setRotateKey( spep_1 + 68, 1, -21.7 );
setRotateKey( spep_1 + 70, 1, -20.5 );
setRotateKey( spep_1 + 72, 1, -19.2 );
setRotateKey( spep_1 + 74, 1, -17.9 );
setRotateKey( spep_1 + 76, 1, -16.6 );
setRotateKey( spep_1 + 78, 1, -16.5 );
setRotateKey( spep_1 + 80, 1, -16.4 );
setRotateKey( spep_1 + 82, 1, -16.3 );
setRotateKey( spep_1 + 84, 1, -16.3 );
setRotateKey( spep_1 + 86, 1, -16.2 );
setRotateKey( spep_1 + 88, 1, -16.1 );
setRotateKey( spep_1 + 90, 1, -16 );
setRotateKey( spep_1 + 92, 1, -15.9 );
setRotateKey( spep_1 + 94, 1, -15.8 );
setRotateKey( spep_1 + 96, 1, -15.8 );
setRotateKey( spep_1 + 98, 1, -15.7 );
setRotateKey( spep_1 + 100, 1, -15.6 );
setRotateKey( spep_1 + 106, 1, -15.6 );

--カットイン
ctgogo = entryEffectLife( spep_1+170, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(spep_1+170, ctgogo, 70, 8);
setEffScaleKey(spep_1+170, ctgogo, -0.7, 0.7);

--顔カットイン
--speff = entryEffect(  spep_1+158,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_1+158,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--SE--
playSe(spep_1+4,44); --4
playSe(spep_1+14,4); --4
playSe(spep_1+24,44); --4
playSe(spep_1+34,4); --4
playSe(spep_1+46,44); --4
playSe(spep_1+56,4); --4
playSe(spep_1+64,44); --4
playSe(spep_1+74,4); --4

playSe(spep_1+138,43); --4

playSe(spep_1+148,SE_01);
playSe(spep_1+170,SE_04);


------------------------------------------------------
-- Scene03　CARD
------------------------------------------------------
spep_2 =spep_1+258;

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

shuchusen2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_2,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2,  shuchusen2,  0);
setEffAlphaKey(  spep_2,  shuchusen2,  255);
setEffMoveKey(  spep_2+90,  shuchusen2,  0,  0);
setEffScaleKey(  spep_2+90,  shuchusen2,  1.0,  1.0);
setEffRotateKey(  spep_2+90,  shuchusen2,  0);
setEffAlphaKey(  spep_2+90,  shuchusen2,  255);

entryFade( spep_2+84, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- Scene04
------------------------------------------------------
spep_3 =spep_2+90;

--背景・白フェード--
entryFade(spep_3+74,4,2,0,255,255,255,255);

Tossin = entryEffectLife(  spep_3,  SP_05,  78, 0x100, -1,0, 0, 0);

setEffScaleKey(spep_3,Tossin,-1.0,1.0);
setEffScaleKey(spep_3+78,Tossin,-1.0,1.0);

setEffRotateKey(spep_3,Tossin,0);
setEffRotateKey(spep_3+78,Tossin,0);

setEffAlphaKey(spep_3,Tossin,255);
setEffAlphaKey(spep_3+78,Tossin,255);

shuchusen3 = entryEffectLife( spep_3, 906, 78, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_3,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3,  shuchusen3,  0);
setEffAlphaKey(  spep_3,  shuchusen3,  255);
setEffMoveKey(  spep_3+78,  shuchusen3,  0,  0);
setEffScaleKey(  spep_3+78,  shuchusen3,  1.0,  1.0);
setEffRotateKey(  spep_3+78,  shuchusen3,  0);
setEffAlphaKey(  spep_3+78,  shuchusen3,  255);

playSe( spep_3, 1002);
playSe( spep_3, 1011);

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_3+60; --エンドフェイズのフレーム数を置き換える

setMoveKey( SP_dodge-1, 0, 0,  0, 0); --味方位置
setMoveKey( SP_dodge, 0, 0, 1000, -1000); --味方位置

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- Scene05
------------------------------------------------------
spep_4 = spep_3+78;

--背景・白フェード--
entryFade(spep_4,0,0,4,255,255,255,255);
entryFade(spep_4+158,8,2,0,255,255,255,255);
entryFadeBg(spep_4,0,168,0,10,10,10,255);

Tossin2 = entryEffectLife(  spep_4,  SP_06x,  168, 0x100, -1,0, 0, 0);

setEffScaleKey(spep_4,Tossin2,1.0,1.0);
setEffScaleKey(spep_4+168,Tossin2,1.0,1.0);

setEffRotateKey(spep_4,Tossin2,0);
setEffRotateKey(spep_4+168,Tossin2,0);

setEffAlphaKey(spep_4,Tossin2,255);
setEffAlphaKey(spep_4+168,Tossin2,255);

playSe( spep_4, 8);--突進のやつ
--
--playSe( spep_4+120, 4);--突進のやつ
playSe( spep_4+15, 1019);
playSe( spep_4+40, 1019);
playSe( spep_4+75, 1019);
playSe( spep_4+120, 1019);
Seid1=playSe(spep_4+155, 1019);
stopSe(spep_4+167,Seid1,0);

--playSe( spep_4+15, 1044);
Seid2=playSe( spep_4+15, 1044);
stopSe(spep_4+167,Seid2,0);

------------------------------------------------------
-- Scene06
------------------------------------------------------
spep_5 = spep_4+168;

--背景・白フェード--
entryFade(spep_5,0,0,6,255,255,255,255);
entryFade(spep_5+48,18,4,0,255,255,255,255);
entryFadeBg(spep_5,0,68,0,10,10,10,255);

--ナビ--
Nabi = entryEffectLife(  spep_5,  SP_07x,  68, 0x100, -1,0, 0, 0);

setEffScaleKey(spep_5,Nabi,1.0,1.0);
setEffScaleKey(spep_5+68,Nabi,1.0,1.0);

setEffRotateKey(spep_5,Nabi,0);
setEffRotateKey(spep_5+68,Nabi,0);

setEffAlphaKey(spep_5,Nabi,255);
setEffAlphaKey(spep_5+68,Nabi,255);

--集中線--
shuchusen5 = entryEffectLife( spep_5, 906, 68, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5,  shuchusen5,  0);
setEffAlphaKey(  spep_5,  shuchusen5,  255);
setEffMoveKey(  spep_5+68,  shuchusen5,  0,  0);
setEffScaleKey(  spep_5+68,  shuchusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+68,  shuchusen5,  0);
setEffAlphaKey(  spep_5+68,  shuchusen5,  255);

--流線--
ryusen5 = entryEffectLife( spep_5, 922, 68, 0x80,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_5,  ryusen5,  0,  0);
setEffScaleKey(  spep_5,  ryusen5,  1.0,  1.0);
setEffRotateKey(  spep_5,  ryusen5,  90);
setEffAlphaKey(  spep_5,  ryusen5,  255);
setEffMoveKey(  spep_5+68,  ryusen5,  0,  0);
setEffScaleKey(  spep_5+68,  ryusen5,  1.0,  1.0);
setEffRotateKey(  spep_5+68,  ryusen5,  90);
setEffAlphaKey(  spep_5+68,  ryusen5,  255);

playSe(spep_5,1018);

------------------------------------------------------
-- Scene07
------------------------------------------------------
spep_6= spep_5+68;

--背景・白フェード--
entryFade(spep_6+90,8,4,0,255,255,255,255);
entryFadeBg(spep_6,0,100,0,10,10,10,255);

--ナビ--
Nabi2 = entryEffectLife(  spep_6,  SP_08,  100, 0x100, -1,0, 0, 0);

setEffScaleKey(spep_6,Nabi2,-1.0,1.0);
setEffScaleKey(spep_6+100,Nabi2,-1.0,1.0);

setEffRotateKey(spep_6,Nabi2,0);
setEffRotateKey(spep_6+100,Nabi2,0);

setEffAlphaKey(spep_6,Nabi2,255);
setEffAlphaKey(spep_6+100,Nabi2,255);

--集中線--
shuchusen6 = entryEffectLife( spep_6+18, 906, 82, 0x100,  -1, 0,  0,  0);  --集中線

setEffMoveKey(  spep_6+18,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6+18,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_6+18,  shuchusen6,  0);
setEffAlphaKey(  spep_6+18,  shuchusen6,  255);
setEffMoveKey(  spep_6+100,  shuchusen6,  0,  0);
setEffScaleKey(  spep_6+100,  shuchusen6,  1.0,  1.0);
setEffRotateKey(  spep_6+100,  shuchusen6,  0);
setEffAlphaKey(  spep_6+100,  shuchusen6,  255);

-- SE --
playSe(spep_6,1022);
playSe(spep_6+70,1064);

------------------------------------------------------
-- Scene08
------------------------------------------------------
spep_7= spep_6+100;

--背景・白フェード--
entryFade(spep_7,0,0,10,255,255,255,255);
entryFade(spep_7+116,22,2,0,255,255,255,255);
entryFadeBg(spep_7,0,128,0,10,10,10,255);

--エフェクト
Finish = entryEffect(  spep_7, 152082, 0x80, -1,0, 0, 0);

setEffScaleKey(spep_7,Finish,1.0,1.0);
setEffScaleKey(spep_7+138,Finish,1.0,1.0);

setEffRotateKey(spep_7,Finish,0);
setEffRotateKey(spep_7+138,Finish,0);

setEffAlphaKey(spep_7,Finish,255);
setEffAlphaKey(spep_7+138,Finish,255);

--集中線--
shuchusen7 = entryEffectLife( spep_7, 906, 76, 0x100,  -1, 0,  0,  0); 

setEffMoveKey(  spep_7,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7,  shuchusen7,  0);
setEffAlphaKey(  spep_7,  shuchusen7,  255);
setEffMoveKey(  spep_7+76,  shuchusen7,  0,  0);
setEffScaleKey(  spep_7+76,  shuchusen7,  1.0,  1.0);
setEffRotateKey(  spep_7+76,  shuchusen7,  0);
setEffAlphaKey(  spep_7+76,  shuchusen7,  255);

-- ダメージ表示
dealDamage( spep_7+36);
entryFade( spep_7+118, 9,  10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+128);

-- SE --
playSe( spep_7+18,1060);
playSe( spep_7+28,1024);
--playSe( spep_7+68,3);
end