--孫悟空(少年期)_まがるかめはめ波

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
SP_01 = 153145; --かめはめ波発射　奥
SP_02 = 153146; --かめはめ波発射　手前
SP_03 = 153101; --かめはめ波曲げる　手前
SP_04 = 153148; --かめはめ波曲げる　奥
SP_05 = 153149; --かめはめ波発射時の流線　一番奥
SP_06 = 153185; --最後の背景

--敵側
SP_01r = 153154; --かめはめ波発射
SP_03r = 153155; --かめはめ波曲げる　手前
SP_04r = 153156; --かめはめ波曲げる　奥

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
-- かめはめ波発射(306F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kameryusen = entryEffectLife( spep_0 + 0, SP_05, 306, 0x80, -1, 0, 0, 0 );  --かめはめ波発射時の流線　一番奥(ef_005)
setEffMoveKey( spep_0 + 0, kameryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, kameryusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kameryusen, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, kameryusen, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kameryusen, 255 );
setEffAlphaKey( spep_0 + 306, kameryusen, 255 );
setEffRotateKey( spep_0 + 0, kameryusen, 0 );
setEffRotateKey( spep_0 + 306, kameryusen, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_0 ,  922, 144, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_0 , ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 , ryusen1, 1, 1 );
setEffScaleKey( spep_0 + 144, ryusen1, 1, 1 );

setEffRotateKey( spep_0 , ryusen1, 0 );
setEffRotateKey( spep_0 + 144, ryusen1, 0 );

setEffAlphaKey( spep_0 + 0, ryusen1, 0 );
setEffAlphaKey( spep_0 + 67, ryusen1, 0 );
setEffAlphaKey( spep_0 + 68, ryusen1, 80 );
setEffAlphaKey( spep_0 + 144, ryusen1, 80 );

-- ** 書き文字エントリー ** --
ctdom = entryEffect( spep_0 + 0, 10059, 0x80, -1, 0, 0, 0 );  --ドォム！！
setEffMoveKey( spep_0 + 0, ctdom, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, ctdom, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ctdom, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, ctdom, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, ctdom, 255 );
setEffAlphaKey( spep_0 + 306, ctdom, 255 );
setEffRotateKey( spep_0 + 0, ctdom, 0 );
setEffRotateKey( spep_0 + 306, ctdom, 0 );

-- ** エフェクト等 ** --
kamebeam_b = entryEffectLife( spep_0 + 0, SP_01, 306, 0x80, -1, 0, 0, 0 );  --かめはめ波発射　手前(ef_001)
setEffMoveKey( spep_0 + 0, kamebeam_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, kamebeam_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamebeam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, kamebeam_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kamebeam_b, 255 );
setEffAlphaKey( spep_0 + 306, kamebeam_b, 255 );
setEffRotateKey( spep_0 + 0, kamebeam_b, 0 );
setEffRotateKey( spep_0 + 306, kamebeam_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 244, 1, 1 );
setDisp( spep_0 + 306, 1, 0 );
changeAnime( spep_0 + 244, 1, 118 );

setMoveKey( spep_0 + 244, 1, 1423, -1917.1 , 0 );
setMoveKey( spep_0 + 246, 1, 798.3, -1059.5 , 0 );
setMoveKey( spep_0 + 248, 1, 673.3, -886.5 , 0 );
setMoveKey( spep_0 + 250, 1, 610.1, -798.9 , 0 );
setMoveKey( spep_0 + 252, 1, 576.8, -752.7 , 0 );
setMoveKey( spep_0 + 254, 1, 552, -718.4 , 0 );
setMoveKey( spep_0 + 256, 1, 530.2, -688.1 , 0 );
setMoveKey( spep_0 + 258, 1, 510.9, -661.3 , 0 );
setMoveKey( spep_0 + 260, 1, 493.7, -637.5 , 0 );
setMoveKey( spep_0 + 262, 1, 478.4, -616.3 , 0 );
setMoveKey( spep_0 + 264, 1, 464.8, -597.4 , 0 );
setMoveKey( spep_0 + 266, 1, 452.6, -580.5 , 0 );
setMoveKey( spep_0 + 268, 1, 441.8, -565.5 , 0 );
setMoveKey( spep_0 + 270, 1, 432.2, -552.2 , 0 );
setMoveKey( spep_0 + 272, 1, 423.7, -540.3 , 0 );
setMoveKey( spep_0 + 274, 1, 416.2, -529.9 , 0 );
setMoveKey( spep_0 + 276, 1, 409.6, -520.7 , 0 );
setMoveKey( spep_0 + 278, 1, 403.8, -512.7 , 0 );
setMoveKey( spep_0 + 280, 1, 398.8, -505.8 , 0 );
setMoveKey( spep_0 + 282, 1, 394.5, -499.8 , 0 );
setMoveKey( spep_0 + 284, 1, 390.9, -494.8 , 0 );
setMoveKey( spep_0 + 286, 1, 387.9, -490.6 , 0 );
setMoveKey( spep_0 + 288, 1, 385.5, -487.3 , 0 );
setMoveKey( spep_0 + 290, 1, 383.5, -484.6 , 0 );
setMoveKey( spep_0 + 292, 1, 382.1, -482.5 , 0 );
setMoveKey( spep_0 + 294, 1, 381, -481.1 , 0 );
setMoveKey( spep_0 + 296, 1, 380.4, -480.1 , 0 );
setMoveKey( spep_0 + 298, 1, 380, -479.6 , 0 );
setMoveKey( spep_0 + 300, 1, 379.8, -479.4 , 0 );
setMoveKey( spep_0 + 302, 1, 379.9, -479.5 , 0 );
setMoveKey( spep_0 + 306, 1, 379.9, -479.5 , 0 );

setScaleKey( spep_0 + 244, 1, 13.04, 13.04 );
setScaleKey( spep_0 + 246, 1, 8.21, 8.21 );
setScaleKey( spep_0 + 248, 1, 7.23, 7.23 );
setScaleKey( spep_0 + 250, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 252, 1, 6.48, 6.48 );
setScaleKey( spep_0 + 254, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 256, 1, 6.12, 6.12 );
setScaleKey( spep_0 + 258, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 260, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 262, 1, 5.71, 5.71 );
setScaleKey( spep_0 + 264, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 266, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 268, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 270, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 272, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 274, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 276, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 278, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 280, 1, 5.09, 5.09 );
setScaleKey( spep_0 + 282, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 284, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 286, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 288, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 290, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 292, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 294, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 296, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 298, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 306, 1, 4.94, 4.94 );

setRotateKey( spep_0 + 244, 1, 20.8 );
setRotateKey( spep_0 + 246, 1, 20.9 );
setRotateKey( spep_0 + 248, 1, 21 );
setRotateKey( spep_0 + 306, 1, 21 );




-- ** エフェクト等 ** --
kamebeam_f = entryEffectLife( spep_0 + 0, SP_02, 306, 0x100, -1, 0, 0, 0 );  --青　一番手前(ef_002)
setEffMoveKey( spep_0 + 0, kamebeam_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, kamebeam_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamebeam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, kamebeam_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kamebeam_f, 180 );
setEffAlphaKey( spep_0 + 306, kamebeam_f, 180 );
setEffRotateKey( spep_0 + 0, kamebeam_f, 0 );
setEffRotateKey( spep_0 + 306, kamebeam_f, 0 );




k = 16;
-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 148 -k, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 148 -k, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

k1 = 14;
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 216 -k1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 216 -k1, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 216 -k1, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 216 -k1, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 216 -k1, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 155 -k1, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 156 -k1, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 216 -k1, shuchusen1, 255 );

a = 3;
-- ** 書き文字エントリー ** --
ctbo = entryEffectLife( spep_0 + 50 -a,  10044, 32, 0x100, -1, 0, -87.2, -75.3 );  --ボ
setEffMoveKey( spep_0 + 50 -a, ctbo, -87.2, -75.3 , 0 );
setEffMoveKey( spep_0 + 52 -a, ctbo, -119, 57.7 , 0 );
setEffMoveKey( spep_0 + 54 -a, ctbo, -122.4, 91.8 , 0 );
setEffMoveKey( spep_0 + 56 -a, ctbo, -135.5, 117 , 0 );
setEffMoveKey( spep_0 + 58 -a, ctbo, -130.8, 132.3 , 0 );
setEffMoveKey( spep_0 + 60 -a, ctbo, -141.2, 138.4 , 0 );
setEffMoveKey( spep_0 + 62 -a, ctbo, -133.1, 145.6 , 0 );
setEffMoveKey( spep_0 + 64 -a, ctbo, -141.4, 154.5 , 0 );
setEffMoveKey( spep_0 + 66 -a, ctbo, -136.2, 151.5 , 0 );
setEffMoveKey( spep_0 + 68 -a, ctbo, -139.5, 159.7 , 0 );
setEffMoveKey( spep_0 + 70 -a, ctbo, -139.4, 154.8 , 0 );
setEffMoveKey( spep_0 + 72 -a, ctbo, -142.8, 146.1 , 0 );
setEffMoveKey( spep_0 + 74 -a, ctbo, -136.1, 99.2 , 0 );
setEffMoveKey( spep_0 + 76 -a, ctbo, -144.5, 31.7 , 0 );
setEffMoveKey( spep_0 + 78 -a, ctbo, -136.1, -65.4 , 0 );
setEffMoveKey( spep_0 + 80 -a, ctbo, -144.5, -195 , 0 );
setEffMoveKey( spep_0 + 82 -a, ctbo, -144.5, -347.8 , 0 );

setEffScaleKey( spep_0 + 50 -a, ctbo, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52 -a, ctbo, 0.97, 0.97 );
setEffScaleKey( spep_0 + 54 -a, ctbo, 1.08, 1.08 );
setEffScaleKey( spep_0 + 56 -a, ctbo, 1.15, 1.15 );
setEffScaleKey( spep_0 + 58 -a, ctbo, 1.19, 1.19 );
setEffScaleKey( spep_0 + 60 -a, ctbo, 1.22, 1.22 );
setEffScaleKey( spep_0 + 62 -a, ctbo, 1.24, 1.24 );
setEffScaleKey( spep_0 + 64 -a, ctbo, 1.25, 1.25 );
setEffScaleKey( spep_0 + 66 -a, ctbo, 1.26, 1.26 );
setEffScaleKey( spep_0 + 82 -a, ctbo, 1.26, 1.26 );

setEffRotateKey( spep_0 + 50 -a, ctbo, 0 );
setEffRotateKey( spep_0 + 82 -a, ctbo, 0 );

setEffAlphaKey( spep_0 + 50 -a, ctbo, 255 );
setEffAlphaKey( spep_0 + 70 -a, ctbo, 255 );
setEffAlphaKey( spep_0 + 72 -a, ctbo, 248 );
setEffAlphaKey( spep_0 + 74 -a, ctbo, 227 );
setEffAlphaKey( spep_0 + 76 -a, ctbo, 191 );
setEffAlphaKey( spep_0 + 78 -a, ctbo, 142 );
setEffAlphaKey( spep_0 + 80 -a, ctbo, 78 );
setEffAlphaKey( spep_0 + 82 -a, ctbo, 0 );

ctn = entryEffectLife( spep_0 + 50 -a,  10045, 32, 0x100, -1, 0, 45.7, -184.2 );  --ン
setEffMoveKey( spep_0 + 50 -a, ctn, 45.7, -184.2 , 0 );
setEffMoveKey( spep_0 + 52 -a, ctn, 95.2, -117.6 , 0 );
setEffMoveKey( spep_0 + 54 -a, ctn, 116.1, -103.5 , 0 );
setEffMoveKey( spep_0 + 56 -a, ctn, 118.4, -90.9 , 0 );
setEffMoveKey( spep_0 + 58 -a, ctn, 132, -82.9 , 0 );
setEffMoveKey( spep_0 + 60 -a, ctn, 128.2, -82.2 , 0 );
setEffMoveKey( spep_0 + 62 -a, ctn, 140.7, -78.6 , 0 );
setEffMoveKey( spep_0 + 64 -a, ctn, 134.6, -71.5 , 0 );
setEffMoveKey( spep_0 + 66 -a, ctn, 142, -76.3 , 0 );
setEffMoveKey( spep_0 + 68 -a, ctn, 138.7, -68.1 , 0 );
setEffMoveKey( spep_0 + 70 -a, ctn, 138.8, -73 , 0 );
setEffMoveKey( spep_0 + 72 -a, ctn, 135.4, -81.7 , 0 );
setEffMoveKey( spep_0 + 74 -a, ctn, 142.1, -128.6 , 0 );
setEffMoveKey( spep_0 + 76 -a, ctn, 133.8, -196.1 , 0 );
setEffMoveKey( spep_0 + 78 -a, ctn, 142.1, -293.2 , 0 );
setEffMoveKey( spep_0 + 80 -a, ctn, 133.8, -422.8 , 0 );
setEffMoveKey( spep_0 + 82 -a, ctn, 133.8, -575.6 , 0 );

setEffScaleKey( spep_0 + 50 -a, ctn, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52 -a, ctn, 0.97, 0.97 );
setEffScaleKey( spep_0 + 54 -a, ctn, 1.08, 1.08 );
setEffScaleKey( spep_0 + 56 -a, ctn, 1.15, 1.15 );
setEffScaleKey( spep_0 + 58 -a, ctn, 1.19, 1.19 );
setEffScaleKey( spep_0 + 60 -a, ctn, 1.22, 1.22 );
setEffScaleKey( spep_0 + 62 -a, ctn, 1.24, 1.24 );
setEffScaleKey( spep_0 + 64 -a, ctn, 1.25, 1.25 );
setEffScaleKey( spep_0 + 66 -a, ctn, 1.26, 1.26 );
setEffScaleKey( spep_0 + 82 -a, ctn, 1.26, 1.26 );

setEffRotateKey( spep_0 + 50 -a, ctn, 0 );
setEffRotateKey( spep_0 + 82 -a, ctn, 0 );

setEffAlphaKey( spep_0 + 50 -a, ctn, 255 );
setEffAlphaKey( spep_0 + 70 -a, ctn, 255 );
setEffAlphaKey( spep_0 + 72 -a, ctn, 248 );
setEffAlphaKey( spep_0 + 74 -a, ctn, 227 );
setEffAlphaKey( spep_0 + 76 -a, ctn, 191 );
setEffAlphaKey( spep_0 + 78 -a, ctn, 142 );
setEffAlphaKey( spep_0 + 80 -a, ctn, 78 );
setEffAlphaKey( spep_0 + 82 -a, ctn, 0 );





-- ** 音 ** --
playSe( spep_0 + 50 -a, 19 );  --ボン
playSe( spep_0 + 156, SE_04 );  --ゴゴゴ
playSe( spep_0 + 236 -8, 1022 );  --かめはめ波発射

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFadeBg( spep_0 + 0, 0, 306, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 302, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 306;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 260; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波曲げる(262F)
------------------------------------------------------

-- ** エフェクト等 ** --
mageru_f = entryEffectLife( spep_2 + 0, SP_03, 262, 0x100, -1, 0, 0, 0 );  --かめはめ波曲げる　手前(ef_003)
setEffMoveKey( spep_2 + 0, mageru_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 262, mageru_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, mageru_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 262, mageru_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, mageru_f, 0 );
setEffRotateKey( spep_2 + 262, mageru_f, 0 );
setEffAlphaKey( spep_2 + 0, mageru_f, 255 );
setEffAlphaKey( spep_2 + 261, mageru_f, 255 );
setEffAlphaKey( spep_2 + 262, mageru_f, 0 );

mageru_b = entryEffectLife( spep_2 + 0, SP_04, 262, 0x80, -1, 0, 0, 0 );  --かめはめ波曲げる　奥(ef_004)
setEffMoveKey( spep_2 + 0, mageru_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 262, mageru_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, mageru_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 262, mageru_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, mageru_b, 0 );
setEffRotateKey( spep_2 + 262, mageru_b, 0 );
setEffAlphaKey( spep_2 + 0, mageru_b, 255 );
setEffAlphaKey( spep_2 + 261, mageru_b, 255 );
setEffAlphaKey( spep_2 + 262, mageru_b, 0 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  921, 58, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 58, ryusen2, 1.5, 1.5 );

setEffRotateKey( spep_2 + 0, ryusen2, 54.3 );
setEffRotateKey( spep_2 + 58, ryusen2, 54.3 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 58, ryusen2, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 58,  906, 204, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 58, shuchusen2, 202, 20 );

setEffMoveKey( spep_2 + 58, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 262, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 58, shuchusen2, 1.23, 1.27 );
setEffScaleKey( spep_2 + 262, shuchusen2, 1.23, 1.27 );

setEffRotateKey( spep_2 + 58, shuchusen2, 0 );
setEffRotateKey( spep_2 + 262, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 58, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 59, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 261, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 262, shuchusen2, 0 );

a1 = 3;
-- ** 書き文字エントリー ** --
ctgui1 = entryEffectLife( spep_2 + 74 -a1,  10049, 38, 0x100, -1, 0, 169.8, 58.5 );  --グイッ
setEffMoveKey( spep_2 + 74 -a1, ctgui1, 169.8, 58.5 , 0 );
setEffMoveKey( spep_2 + 76 -a1, ctgui1, 192.7, 86 , 0 );
setEffMoveKey( spep_2 + 78 -a1, ctgui1, 198.7, 93.4 , 0 );
setEffMoveKey( spep_2 + 80 -a1, ctgui1, 202.1, 97.4 , 0 );
setEffMoveKey( spep_2 + 82 -a1, ctgui1, 204, 99.7 , 0 );
setEffMoveKey( spep_2 + 84 -a1, ctgui1, 205, 100.9 , 0 );
setEffMoveKey( spep_2 + 86 -a1, ctgui1, 205.4, 101.4 , 0 );
setEffMoveKey( spep_2 + 88 -a1, ctgui1, 206, 101.5 , 0 );
setEffMoveKey( spep_2 + 112 -a1, ctgui1, 206, 101.5 , 0 );

setEffScaleKey( spep_2 + 74 -a1, ctgui1, 0.95, 0.95 );
setEffScaleKey( spep_2 + 76 -a1, ctgui1, 1.19, 1.19 );
setEffScaleKey( spep_2 + 78 -a1, ctgui1, 1.25, 1.25 );
setEffScaleKey( spep_2 + 80 -a1, ctgui1, 1.28, 1.28 );
setEffScaleKey( spep_2 + 82 -a1, ctgui1, 1.3, 1.3 );
setEffScaleKey( spep_2 + 84 -a1, ctgui1, 1.31, 1.31 );
setEffScaleKey( spep_2 + 86 -a1, ctgui1, 1.32, 1.32 );
setEffScaleKey( spep_2 + 112 -a1, ctgui1, 1.32, 1.32 );

setEffRotateKey( spep_2 + 74 -a1, ctgui1, 38.5 );
setEffRotateKey( spep_2 + 112 -a1, ctgui1, 38.5 );

setEffAlphaKey( spep_2 + 74 -a1, ctgui1, 255 );
setEffAlphaKey( spep_2 + 106 -a1, ctgui1, 255 );
setEffAlphaKey( spep_2 + 108 -a1, ctgui1, 170 );
setEffAlphaKey( spep_2 + 110 -a1, ctgui1, 85 );
setEffAlphaKey( spep_2 + 112 -a1, ctgui1, 0 );

ctgun = entryEffectLife( spep_2 + 128 -a1,  10050, 42, 0x100, -1, 0, 51.7, 311.5 );  --グンッ
setEffMoveKey( spep_2 + 128 -a1, ctgun, 51.7, 311.5 , 0 );
setEffMoveKey( spep_2 + 130 -a1, ctgun, 56.9, 335.3 , 0 );
setEffMoveKey( spep_2 + 132 -a1, ctgun, 58.2, 341.2 , 0 );
setEffMoveKey( spep_2 + 134 -a1, ctgun, 58.8, 344.2 , 0 );
setEffMoveKey( spep_2 + 136 -a1, ctgun, 59.2, 345.8 , 0 );
setEffMoveKey( spep_2 + 138 -a1, ctgun, 59.3, 346.4 , 0 );
setEffMoveKey( spep_2 + 140 -a1, ctgun, 59.3, 346.3 , 0 );
setEffMoveKey( spep_2 + 170 -a1, ctgun, 59.3, 346.3 , 0 );

setEffScaleKey( spep_2 + 128 -a1, ctgun, 0.48, 0.48 );
setEffScaleKey( spep_2 + 130 -a1, ctgun, 0.67, 0.67 );
setEffScaleKey( spep_2 + 132 -a1, ctgun, 0.71, 0.71 );
setEffScaleKey( spep_2 + 134 -a1, ctgun, 0.73, 0.73 );
setEffScaleKey( spep_2 + 136 -a1, ctgun, 0.75, 0.75 );
setEffScaleKey( spep_2 + 170 -a1, ctgun, 0.75, 0.75 );

setEffRotateKey( spep_2 + 128 -a1, ctgun, -1.8 );
setEffRotateKey( spep_2 + 170 -a1, ctgun, -1.8 );

setEffAlphaKey( spep_2 + 128 -a1, ctgun, 255 );
setEffAlphaKey( spep_2 + 164 -a1, ctgun, 255 );
setEffAlphaKey( spep_2 + 166 -a1, ctgun, 170 );
setEffAlphaKey( spep_2 + 168 -a1, ctgun, 85 );
setEffAlphaKey( spep_2 + 170 -a1, ctgun, 0 );

ctexc = entryEffectLife( spep_2 + 132 -a1,  10000, 38, 0x100, -1, 0, 122.3, -4.6 );  --！！
setEffMoveKey( spep_2 + 132 -a1, ctexc, 122.3, -4.6 , 0 );
setEffMoveKey( spep_2 + 134 -a1, ctexc, 120.1, 3.8 , 0 );
setEffMoveKey( spep_2 + 136 -a1, ctexc, 131, 15.2 , 0 );
setEffMoveKey( spep_2 + 138 -a1, ctexc, 123.5, 24 , 0 );
setEffMoveKey( spep_2 + 140 -a1, ctexc, 125.1, 33 , 0 );
setEffMoveKey( spep_2 + 142 -a1, ctexc, 134.8, 26.7 , 0 );
setEffMoveKey( spep_2 + 144 -a1, ctexc, 130.7, 37.1 , 0 );
setEffMoveKey( spep_2 + 146 -a1, ctexc, 137.8, 28.4 , 0 );
setEffMoveKey( spep_2 + 148 -a1, ctexc, 129.1, 37.9 , 0 );
setEffMoveKey( spep_2 + 150 -a1, ctexc, 133.9, 28.1 , 0 );
setEffMoveKey( spep_2 + 152 -a1, ctexc, 138.8, 41.8 , 0 );
setEffMoveKey( spep_2 + 154 -a1, ctexc, 131.7, 32.1 , 0 );
setEffMoveKey( spep_2 + 156 -a1, ctexc, 141, 43 , 0 );
setEffMoveKey( spep_2 + 158 -a1, ctexc, 128.5, 39.9 , 0 );
setEffMoveKey( spep_2 + 160 -a1, ctexc, 134.4, 42 , 0 );
setEffMoveKey( spep_2 + 162 -a1, ctexc, 126.6, 42.5 , 0 );
setEffMoveKey( spep_2 + 164 -a1, ctexc, 142.5, 47.9 , 0 );
setEffMoveKey( spep_2 + 166 -a1, ctexc, 129.1, 43.3 , 0 );
setEffMoveKey( spep_2 + 168 -a1, ctexc, 134.9, 44.3 , 0 );
setEffMoveKey( spep_2 + 170 -a1, ctexc, 134.9, 44.3 , 0 );

setEffScaleKey( spep_2 + 132 -a1, ctexc, 0.88, 0.88 );
setEffScaleKey( spep_2 + 134 -a1, ctexc, 1.07, 1.07 );
setEffScaleKey( spep_2 + 136 -a1, ctexc, 1.26, 1.26 );
setEffScaleKey( spep_2 + 138 -a1, ctexc, 1.46, 1.46 );
setEffScaleKey( spep_2 + 140 -a1, ctexc, 1.65, 1.65 );
setEffScaleKey( spep_2 + 142 -a1, ctexc, 1.68, 1.68 );
setEffScaleKey( spep_2 + 144 -a1, ctexc, 1.7, 1.7 );
setEffScaleKey( spep_2 + 146 -a1, ctexc, 1.73, 1.73 );
setEffScaleKey( spep_2 + 148 -a1, ctexc, 1.75, 1.75 );
setEffScaleKey( spep_2 + 150 -a1, ctexc, 1.78, 1.78 );
setEffScaleKey( spep_2 + 152 -a1, ctexc, 1.81, 1.81 );
setEffScaleKey( spep_2 + 154 -a1, ctexc, 1.83, 1.83 );
setEffScaleKey( spep_2 + 156 -a1, ctexc, 1.86, 1.86 );
setEffScaleKey( spep_2 + 158 -a1, ctexc, 1.88, 1.88 );
setEffScaleKey( spep_2 + 160 -a1, ctexc, 1.91, 1.91 );
setEffScaleKey( spep_2 + 162 -a1, ctexc, 1.93, 1.93 );
setEffScaleKey( spep_2 + 164 -a1, ctexc, 1.96, 1.96 );
setEffScaleKey( spep_2 + 170 -a1, ctexc, 1.96, 1.96 );

setEffRotateKey( spep_2 + 132 -a1, ctexc, 12.2 );
setEffRotateKey( spep_2 + 170 -a1, ctexc, 12.2 );

setEffAlphaKey( spep_2 + 132 -a1, ctexc, 255 );
setEffAlphaKey( spep_2 + 164 -a1, ctexc, 255 );
setEffAlphaKey( spep_2 + 166 -a1, ctexc, 170 );
setEffAlphaKey( spep_2 + 168 -a1, ctexc, 85 );
setEffAlphaKey( spep_2 + 170 -a1, ctexc, 0 );

ctgui2 = entryEffectLife( spep_2 + 178 -a1,  10049, 26, 0x100, -1, 0, 169.7, 58.5 );  --グイッ
setEffMoveKey( spep_2 + 178 -a1, ctgui2, 169.7, 58.5 , 0 );
setEffMoveKey( spep_2 + 180 -a1, ctgui2, 192.7, 86 , 0 );
setEffMoveKey( spep_2 + 182 -a1, ctgui2, 198.7, 93.4 , 0 );
setEffMoveKey( spep_2 + 184 -a1, ctgui2, 202.1, 97.4 , 0 );
setEffMoveKey( spep_2 + 186 -a1, ctgui2, 204, 99.7 , 0 );
setEffMoveKey( spep_2 + 188 -a1, ctgui2, 205, 100.9 , 0 );
setEffMoveKey( spep_2 + 190 -a1, ctgui2, 205.4, 101.4 , 0 );
setEffMoveKey( spep_2 + 192 -a1, ctgui2, 206, 101.5 , 0 );
setEffMoveKey( spep_2 + 204 -a1, ctgui2, 206, 101.5 , 0 );

setEffScaleKey( spep_2 + 178 -a1, ctgui2, 0.95, 0.95 );
setEffScaleKey( spep_2 + 180 -a1, ctgui2, 1.19, 1.19 );
setEffScaleKey( spep_2 + 182 -a1, ctgui2, 1.25, 1.25 );
setEffScaleKey( spep_2 + 184 -a1, ctgui2, 1.28, 1.28 );
setEffScaleKey( spep_2 + 186 -a1, ctgui2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 188 -a1, ctgui2, 1.31, 1.31 );
setEffScaleKey( spep_2 + 190 -a1, ctgui2, 1.32, 1.32 );
setEffScaleKey( spep_2 + 204 -a1, ctgui2, 1.32, 1.32 );

setEffRotateKey( spep_2 + 178 -a1, ctgui2, 38.5 );
setEffRotateKey( spep_2 + 204 -a1, ctgui2, 38.5 );

setEffAlphaKey( spep_2 + 178 -a1, ctgui2, 255 );
setEffAlphaKey( spep_2 + 198 -a1, ctgui2, 255 );
setEffAlphaKey( spep_2 + 200 -a1, ctgui2, 170 );
setEffAlphaKey( spep_2 + 202 -a1, ctgui2, 85 );
setEffAlphaKey( spep_2 + 204 -a1, ctgui2, 0 );

ctgyuo = entryEffectLife( spep_2 + 204 -a1,  10051, 26, 0x100, -1, 0, -33.8, 162.5 );  --ギュオッ
setEffMoveKey( spep_2 + 204 -a1, ctgyuo, -33.8, 162.5 , 0 );
setEffMoveKey( spep_2 + 206 -a1, ctgyuo, -37.1, 166.6 , 0 );
setEffMoveKey( spep_2 + 208 -a1, ctgyuo, -39.1, 169 , 0 );
setEffMoveKey( spep_2 + 210 -a1, ctgyuo, -39.7, 169.8 , 0 );
setEffMoveKey( spep_2 + 212 -a1, ctgyuo, -39.9, 170 , 0 );
setEffMoveKey( spep_2 + 214 -a1, ctgyuo, -40, 170.2 , 0 );
setEffMoveKey( spep_2 + 216 -a1, ctgyuo, -40.2, 170.4 , 0 );
setEffMoveKey( spep_2 + 218 -a1, ctgyuo, -40.3, 170.6 , 0 );
setEffMoveKey( spep_2 + 220 -a1, ctgyuo, -40.5, 170.8 , 0 );
setEffMoveKey( spep_2 + 222 -a1, ctgyuo, -40.7, 171 , 0 );
setEffMoveKey( spep_2 + 224 -a1, ctgyuo, -40.8, 171.2 , 0 );
setEffMoveKey( spep_2 + 226 -a1, ctgyuo, -41.7, 172.3 , 0 );
setEffMoveKey( spep_2 + 228 -a1, ctgyuo, -42.5, 173.3 , 0 );
setEffMoveKey( spep_2 + 230 -a1, ctgyuo, -43.4, 174.4 , 0 );

setEffScaleKey( spep_2 + 204 -a1, ctgyuo, 0.52, 0.52 );
setEffScaleKey( spep_2 + 206 -a1, ctgyuo, 0.89, 0.89 );
setEffScaleKey( spep_2 + 208 -a1, ctgyuo, 1.11, 1.11 );
setEffScaleKey( spep_2 + 210 -a1, ctgyuo, 1.18, 1.18 );
setEffScaleKey( spep_2 + 212 -a1, ctgyuo, 1.2, 1.2 );
setEffScaleKey( spep_2 + 214 -a1, ctgyuo, 1.22, 1.22 );
setEffScaleKey( spep_2 + 216 -a1, ctgyuo, 1.24, 1.24 );
setEffScaleKey( spep_2 + 218 -a1, ctgyuo, 1.25, 1.25 );
setEffScaleKey( spep_2 + 220 -a1, ctgyuo, 1.27, 1.27 );
setEffScaleKey( spep_2 + 222 -a1, ctgyuo, 1.29, 1.29 );
setEffScaleKey( spep_2 + 224 -a1, ctgyuo, 1.31, 1.31 );
setEffScaleKey( spep_2 + 226 -a1, ctgyuo, 1.41, 1.41 );
setEffScaleKey( spep_2 + 228 -a1, ctgyuo, 1.51, 1.51 );
setEffScaleKey( spep_2 + 230 -a1, ctgyuo, 1.61, 1.61 );

setEffRotateKey( spep_2 + 204 -a1, ctgyuo, -6.2 );
setEffRotateKey( spep_2 + 230 -a1, ctgyuo, -6.2 );

setEffAlphaKey( spep_2 + 204 -a1, ctgyuo, 255 );
setEffAlphaKey( spep_2 + 224 -a1, ctgyuo, 255 );
setEffAlphaKey( spep_2 + 226 -a1, ctgyuo, 170 );
setEffAlphaKey( spep_2 + 228 -a1, ctgyuo, 85 );
setEffAlphaKey( spep_2 + 230 -a1, ctgyuo, 0 );

ctdon = entryEffectLife( spep_2 + 238 -a1,  10048, 24, 0x100, -1, 0, 91.3, 246.3 );  --ドーン
setEffMoveKey( spep_2 + 238 -a1, ctdon, 91.3, 246.3 , 0 );
setEffMoveKey( spep_2 + 240 -a1, ctdon, 59.6, 281.8 , 0 );
setEffMoveKey( spep_2 + 242 -a1, ctdon, 57.5, 299.8 , 0 );
setEffMoveKey( spep_2 + 244 -a1, ctdon, 42.5, 301.5 , 0 );
setEffMoveKey( spep_2 + 246 -a1, ctdon, 47.3, 310.3 , 0 );
setEffMoveKey( spep_2 + 248 -a1, ctdon, 34.2, 314.4 , 0 );
setEffMoveKey( spep_2 + 250 -a1, ctdon, 41.9, 314.1 , 0 );
setEffMoveKey( spep_2 + 252 -a1, ctdon, 30.3, 324.8 , 0 );
setEffMoveKey( spep_2 + 254 -a1, ctdon, 39.8, 320.8 , 0 );
setEffMoveKey( spep_2 + 256 -a1, ctdon, 32.1, 326.6 , 0 );
setEffMoveKey( spep_2 + 258 -a1, ctdon, 36.4, 318 , 0 );
setEffMoveKey( spep_2 + 260 -a1, ctdon, 32.2, 331.1 , 0 );
setEffMoveKey( spep_2 + 262 -a1, ctdon, 32.5, 323.8 , 0 );

setEffScaleKey( spep_2 + 238 -a1, ctdon, 0.81, 0.81 );
setEffScaleKey( spep_2 + 240 -a1, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_2 + 242 -a1, ctdon, 1.26, 1.26 );
setEffScaleKey( spep_2 + 244 -a1, ctdon, 1.34, 1.34 );
setEffScaleKey( spep_2 + 246 -a1, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_2 + 248 -a1, ctdon, 1.44, 1.44 );
setEffScaleKey( spep_2 + 250 -a1, ctdon, 1.47, 1.47 );
setEffScaleKey( spep_2 + 252 -a1, ctdon, 1.49, 1.49 );
setEffScaleKey( spep_2 + 254 -a1, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 + 256 -a1, ctdon, 1.51, 1.51 );
setEffScaleKey( spep_2 + 258 -a1, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 262 -a1, ctdon, 1.52, 1.52 );

setEffRotateKey( spep_2 + 238 -a1, ctdon, 22.9 );
setEffRotateKey( spep_2 + 240 -a1, ctdon, 23.1 );
setEffRotateKey( spep_2 + 242 -a1, ctdon, 23.1 );
setEffRotateKey( spep_2 + 244 -a1, ctdon, 23.2 );
setEffRotateKey( spep_2 + 262 -a1, ctdon, 23.2 );

setEffAlphaKey( spep_2 + 238 -a1, ctdon, 255 );
setEffAlphaKey( spep_2 + 262 -a1, ctdon, 255 );

b = 2;
b1 = 3;
-- ** 敵キャラクター ** --
setDisp( spep_2 + 112 -b, 1, 1 );  --待ち
setDisp( spep_2 + 170 -b, 1, 0 );
setDisp( spep_2 + 204 -b, 1, 1 ); --ガード
setDisp( spep_2 + 262 -b, 1, 0 );

changeAnime( spep_2 + 112 -b, 1, 118 );  --待ち
changeAnime( spep_2 + 204 -b, 1, 104 );  --ガード
changeAnime( spep_2 + 238 -b1, 1, 106 );  --着弾

setMoveKey( spep_2 + 112 -b, 1, 184.1, -196.2 , 0 );  --待ち
setMoveKey( spep_2 + 170 -b, 1, 184.1, -196.2 , 0 );
setMoveKey( spep_2 + 204 -b, 1, 3.4, -71.6 , 0 );  --ガード
setMoveKey( spep_2 + 226 -b, 1, 3.4, -71.6 , 0 );
setMoveKey( spep_2 + 228 -b, 1, 32.4, -51.6 , 0 );
setMoveKey( spep_2 + 237 -b1, 1, 32.4, -51.6 , 0 );
setMoveKey( spep_2 + 238 -b1, 1, -66.6, -18.4 , 0 );  --着弾
setMoveKey( spep_2 + 240 -b1, 1, -146.1, -56.8 , 0 );
setMoveKey( spep_2 + 242 -b1, 1, -202.3, -81.3 , 0 );
setMoveKey( spep_2 + 244 -b1, 1, -205.9, -73.9 , 0 );
setMoveKey( spep_2 + 246 -b1, 1, -221.2, -96.5 , 0 );
setMoveKey( spep_2 + 248 -b1, 1, -242.2, -82.7 , 0 );
setMoveKey( spep_2 + 250 -b1, 1, -239.2, -95.2 , 0 );
setMoveKey( spep_2 + 252 -b1, 1, -254, -86.4 , 0 );
setMoveKey( spep_2 + 254 -b1, 1, -254.7, -95.9 , 0 );
setMoveKey( spep_2 + 256 -b1, 1, -259.4, -90.3 , 0 );
setMoveKey( spep_2 + 258 -b1, 1, -262.8, -107.4 , 0 );
setMoveKey( spep_2 + 260 -b1, 1, -265.6, -88.1 , 0 );
setMoveKey( spep_2 + 262 -b, 1, -265.4, -113.5 , 0 );

setScaleKey( spep_2 + 112 -b, 1, 1.7, 1.7 );  --待ち
setScaleKey( spep_2 + 170 -b, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 204 -b, 1, 1.35, 1.35 );  --ガード
setScaleKey( spep_2 + 226 -b, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 228 -b, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 237 -b1, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 238 -b1, 1, 1.85, 1.85 );  --着弾
setScaleKey( spep_2 + 240 -b1, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 242 -b1, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 244 -b1, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 246 -b1, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 248 -b1, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 250 -b1, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 252 -b1, 1, 3.37, 3.37 );
setScaleKey( spep_2 + 254 -b1, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 256 -b1, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 258 -b1, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 260 -b1, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 262 -b, 1, 3.49, 3.49 );

setRotateKey( spep_2 + 112 -b, 1, 0 );
setRotateKey( spep_2 + 237 -b1, 1, 0 );
setRotateKey( spep_2 + 238 -b1, 1, -60 );
setRotateKey( spep_2 + 262 -b, 1, -60 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 248, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 262, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_2 + 2, 1021 );  --かめはめ波
playSe( spep_2 + 74 -a1, 1004 );  --かめはめ波曲げる
playSe( spep_2 + 128 -a1, 1021 );  --かめはめ波
playSe( spep_2 + 178 -a1, 1004 );  --かめはめ波曲げる
playSe( spep_2 + 204, 1021 );  --かめはめ波
playSe( spep_2 + 238 -a1, 1023 );  --着弾

-- ** 次の準備 ** --
spep_3 = spep_2 + 262;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 背景 ** --
sora = entryEffectLife( spep_3 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --空の背景(ef_006)
setEffMoveKey( spep_3 + 0, sora, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, sora, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sora, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, sora, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sora, 0 );
setEffRotateKey( spep_3 + 100, sora, 0 );
setEffAlphaKey( spep_3 + 0, sora, 255 );
setEffAlphaKey( spep_3 + 100, sora, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen3, 0 );
setEffRotateKey( spep_3 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen4, 0 );
setEffRotateKey( spep_3 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_3 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_3 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_3 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3 + 1, 1, -40 );
setRotateKey( spep_3 + 2, 1, 80 );
setRotateKey( spep_3 + 3, 1, 80 );
setRotateKey( spep_3 + 4, 1, 200 );
setRotateKey( spep_3 + 5, 1, 200 );
setRotateKey( spep_3 + 6, 1, 360 );
setRotateKey( spep_3 + 7, 1, 360 );
setRotateKey( spep_3 + 8, 1, 558 );
setRotateKey( spep_3 + 9, 1, 558 );
setRotateKey( spep_3 + 10, 1, 425 );
setRotateKey( spep_3 + 11, 1, 425 );
setRotateKey( spep_3 + 12, 1, -40 );
setRotateKey( spep_3 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_10 );  --爆発音
playSe( spep_3 + 14, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 2, 24, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 青マスク ** --
entryFade( spep_3 + 0, 0, 2, 24, 68, 91, 255, 200 );  -- 薄い青

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
entryFade( spep_3 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_3 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波発射(306F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kameryusen = entryEffectLife( spep_0 + 0, SP_05, 306, 0x80, -1, 0, 0, 0 );  --かめはめ波発射時の流線　一番奥(ef_005)
setEffMoveKey( spep_0 + 0, kameryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, kameryusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kameryusen, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, kameryusen, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kameryusen, 255 );
setEffAlphaKey( spep_0 + 306, kameryusen, 255 );
setEffRotateKey( spep_0 + 0, kameryusen, 0 );
setEffRotateKey( spep_0 + 306, kameryusen, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_0 ,  922, 144, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_0 , ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 , ryusen1, 1, 1 );
setEffScaleKey( spep_0 + 144, ryusen1, 1, 1 );

setEffRotateKey( spep_0 , ryusen1, 0 );
setEffRotateKey( spep_0 + 144, ryusen1, 0 );

setEffAlphaKey( spep_0 + 0, ryusen1, 0 );
setEffAlphaKey( spep_0 + 67, ryusen1, 0 );
setEffAlphaKey( spep_0 + 68, ryusen1, 80 );
setEffAlphaKey( spep_0 + 144, ryusen1, 80 );

-- ** 書き文字エントリー ** --
ctdom = entryEffect( spep_0 + 0, 10063, 0x80, -1, 0, 0, 0 );  --ドォム！！
setEffMoveKey( spep_0 + 0, ctdom, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, ctdom, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, ctdom, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, ctdom, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, ctdom, 255 );
setEffAlphaKey( spep_0 + 306, ctdom, 255 );
setEffRotateKey( spep_0 + 0, ctdom, 0 );
setEffRotateKey( spep_0 + 306, ctdom, 0 );

-- ** エフェクト等 ** --
kamebeam_b = entryEffectLife( spep_0 + 0, SP_01r, 306, 0x80, -1, 0, 0, 0 );  --かめはめ波発射　手前(ef_001)
setEffMoveKey( spep_0 + 0, kamebeam_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, kamebeam_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamebeam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, kamebeam_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kamebeam_b, 255 );
setEffAlphaKey( spep_0 + 306, kamebeam_b, 255 );
setEffRotateKey( spep_0 + 0, kamebeam_b, 0 );
setEffRotateKey( spep_0 + 306, kamebeam_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 244, 1, 1 );
setDisp( spep_0 + 306, 1, 0 );
changeAnime( spep_0 + 244, 1, 118 );

setMoveKey( spep_0 + 244, 1, 1423, -1917.1 , 0 );
setMoveKey( spep_0 + 246, 1, 798.3, -1059.5 , 0 );
setMoveKey( spep_0 + 248, 1, 673.3, -886.5 , 0 );
setMoveKey( spep_0 + 250, 1, 610.1, -798.9 , 0 );
setMoveKey( spep_0 + 252, 1, 576.8, -752.7 , 0 );
setMoveKey( spep_0 + 254, 1, 552, -718.4 , 0 );
setMoveKey( spep_0 + 256, 1, 530.2, -688.1 , 0 );
setMoveKey( spep_0 + 258, 1, 510.9, -661.3 , 0 );
setMoveKey( spep_0 + 260, 1, 493.7, -637.5 , 0 );
setMoveKey( spep_0 + 262, 1, 478.4, -616.3 , 0 );
setMoveKey( spep_0 + 264, 1, 464.8, -597.4 , 0 );
setMoveKey( spep_0 + 266, 1, 452.6, -580.5 , 0 );
setMoveKey( spep_0 + 268, 1, 441.8, -565.5 , 0 );
setMoveKey( spep_0 + 270, 1, 432.2, -552.2 , 0 );
setMoveKey( spep_0 + 272, 1, 423.7, -540.3 , 0 );
setMoveKey( spep_0 + 274, 1, 416.2, -529.9 , 0 );
setMoveKey( spep_0 + 276, 1, 409.6, -520.7 , 0 );
setMoveKey( spep_0 + 278, 1, 403.8, -512.7 , 0 );
setMoveKey( spep_0 + 280, 1, 398.8, -505.8 , 0 );
setMoveKey( spep_0 + 282, 1, 394.5, -499.8 , 0 );
setMoveKey( spep_0 + 284, 1, 390.9, -494.8 , 0 );
setMoveKey( spep_0 + 286, 1, 387.9, -490.6 , 0 );
setMoveKey( spep_0 + 288, 1, 385.5, -487.3 , 0 );
setMoveKey( spep_0 + 290, 1, 383.5, -484.6 , 0 );
setMoveKey( spep_0 + 292, 1, 382.1, -482.5 , 0 );
setMoveKey( spep_0 + 294, 1, 381, -481.1 , 0 );
setMoveKey( spep_0 + 296, 1, 380.4, -480.1 , 0 );
setMoveKey( spep_0 + 298, 1, 380, -479.6 , 0 );
setMoveKey( spep_0 + 300, 1, 379.8, -479.4 , 0 );
setMoveKey( spep_0 + 302, 1, 379.9, -479.5 , 0 );
setMoveKey( spep_0 + 306, 1, 379.9, -479.5 , 0 );

setScaleKey( spep_0 + 244, 1, 13.04, 13.04 );
setScaleKey( spep_0 + 246, 1, 8.21, 8.21 );
setScaleKey( spep_0 + 248, 1, 7.23, 7.23 );
setScaleKey( spep_0 + 250, 1, 6.74, 6.74 );
setScaleKey( spep_0 + 252, 1, 6.48, 6.48 );
setScaleKey( spep_0 + 254, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 256, 1, 6.12, 6.12 );
setScaleKey( spep_0 + 258, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 260, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 262, 1, 5.71, 5.71 );
setScaleKey( spep_0 + 264, 1, 5.61, 5.61 );
setScaleKey( spep_0 + 266, 1, 5.51, 5.51 );
setScaleKey( spep_0 + 268, 1, 5.43, 5.43 );
setScaleKey( spep_0 + 270, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 272, 1, 5.28, 5.28 );
setScaleKey( spep_0 + 274, 1, 5.23, 5.23 );
setScaleKey( spep_0 + 276, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 278, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 280, 1, 5.09, 5.09 );
setScaleKey( spep_0 + 282, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 284, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 286, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 288, 1, 4.99, 4.99 );
setScaleKey( spep_0 + 290, 1, 4.97, 4.97 );
setScaleKey( spep_0 + 292, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 294, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 296, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 298, 1, 4.94, 4.94 );
setScaleKey( spep_0 + 306, 1, 4.94, 4.94 );

setRotateKey( spep_0 + 244, 1, 20.8 );
setRotateKey( spep_0 + 246, 1, 20.9 );
setRotateKey( spep_0 + 248, 1, 21 );
setRotateKey( spep_0 + 306, 1, 21 );




-- ** エフェクト等 ** --
kamebeam_f = entryEffectLife( spep_0 + 0, SP_02, 306, 0x100, -1, 0, 0, 0 );  --青　一番手前(ef_002)
setEffMoveKey( spep_0 + 0, kamebeam_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, kamebeam_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamebeam_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, kamebeam_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kamebeam_f, 180 );
setEffAlphaKey( spep_0 + 306, kamebeam_f, 180 );
setEffRotateKey( spep_0 + 0, kamebeam_f, 0 );
setEffRotateKey( spep_0 + 306, kamebeam_f, 0 );



k = 16;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 148 -k, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 148 -k, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

k1 = 14;
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 216 -k1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 216 -k1, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 216 -k1, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 216 -k1, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 216 -k1, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 155 -k1, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 156 -k1, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 216 -k1, shuchusen1, 255 );

a = 3;
-- ** 書き文字エントリー ** --
ctbo = entryEffectLife( spep_0 + 50 -a,  10044, 32, 0x100, -1, 0, 87.2, -75.3 );  --ボ
setEffMoveKey( spep_0 + 50 -a, ctbo, 87.2, -75.3 , 0 );
setEffMoveKey( spep_0 + 52 -a, ctbo, 119, 57.7 , 0 );
setEffMoveKey( spep_0 + 54 -a, ctbo, 122.4, 91.8 , 0 );
setEffMoveKey( spep_0 + 56 -a, ctbo, 135.5, 117 , 0 );
setEffMoveKey( spep_0 + 58 -a, ctbo, 130.8, 132.3 , 0 );
setEffMoveKey( spep_0 + 60 -a, ctbo, 141.2, 138.4 , 0 );
setEffMoveKey( spep_0 + 62 -a, ctbo, 133.1, 145.6 , 0 );
setEffMoveKey( spep_0 + 64 -a, ctbo, 141.4, 154.5 , 0 );
setEffMoveKey( spep_0 + 66 -a, ctbo, 136.2, 151.5 , 0 );
setEffMoveKey( spep_0 + 68 -a, ctbo, 139.5, 159.7 , 0 );
setEffMoveKey( spep_0 + 70 -a, ctbo, 139.4, 154.8 , 0 );
setEffMoveKey( spep_0 + 72 -a, ctbo, 142.8, 146.1 , 0 );
setEffMoveKey( spep_0 + 74 -a, ctbo, 136.1, 99.2 , 0 );
setEffMoveKey( spep_0 + 76 -a, ctbo, 144.5, 31.7 , 0 );
setEffMoveKey( spep_0 + 78 -a, ctbo, 136.1, -65.4 , 0 );
setEffMoveKey( spep_0 + 80 -a, ctbo, 144.5, -195 , 0 );
setEffMoveKey( spep_0 + 82 -a, ctbo, 144.5, -347.8 , 0 );

setEffScaleKey( spep_0 + 50 -a, ctbo, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52 -a, ctbo, 0.97, 0.97 );
setEffScaleKey( spep_0 + 54 -a, ctbo, 1.08, 1.08 );
setEffScaleKey( spep_0 + 56 -a, ctbo, 1.15, 1.15 );
setEffScaleKey( spep_0 + 58 -a, ctbo, 1.19, 1.19 );
setEffScaleKey( spep_0 + 60 -a, ctbo, 1.22, 1.22 );
setEffScaleKey( spep_0 + 62 -a, ctbo, 1.24, 1.24 );
setEffScaleKey( spep_0 + 64 -a, ctbo, 1.25, 1.25 );
setEffScaleKey( spep_0 + 66 -a, ctbo, 1.26, 1.26 );
setEffScaleKey( spep_0 + 82 -a, ctbo, 1.26, 1.26 );

setEffRotateKey( spep_0 + 50 -a, ctbo, 0 );
setEffRotateKey( spep_0 + 82 -a, ctbo, 0 );

setEffAlphaKey( spep_0 + 50 -a, ctbo, 255 );
setEffAlphaKey( spep_0 + 70 -a, ctbo, 255 );
setEffAlphaKey( spep_0 + 72 -a, ctbo, 248 );
setEffAlphaKey( spep_0 + 74 -a, ctbo, 227 );
setEffAlphaKey( spep_0 + 76 -a, ctbo, 191 );
setEffAlphaKey( spep_0 + 78 -a, ctbo, 142 );
setEffAlphaKey( spep_0 + 80 -a, ctbo, 78 );
setEffAlphaKey( spep_0 + 82 -a, ctbo, 0 );

ctn = entryEffectLife( spep_0 + 50 -a,  10045, 32, 0x100, -1, 0, -45.7, -184.2 );  --ン
setEffMoveKey( spep_0 + 50 -a, ctn, -45.7, -184.2 , 0 );
setEffMoveKey( spep_0 + 52 -a, ctn, -95.2, -117.6 , 0 );
setEffMoveKey( spep_0 + 54 -a, ctn, -116.1, -103.5 , 0 );
setEffMoveKey( spep_0 + 56 -a, ctn, -118.4, -90.9 , 0 );
setEffMoveKey( spep_0 + 58 -a, ctn, -132, -82.9 , 0 );
setEffMoveKey( spep_0 + 60 -a, ctn, -128.2, -82.2 , 0 );
setEffMoveKey( spep_0 + 62 -a, ctn, -140.7, -78.6 , 0 );
setEffMoveKey( spep_0 + 64 -a, ctn, -134.6, -71.5 , 0 );
setEffMoveKey( spep_0 + 66 -a, ctn, -142, -76.3 , 0 );
setEffMoveKey( spep_0 + 68 -a, ctn, -138.7, -68.1 , 0 );
setEffMoveKey( spep_0 + 70 -a, ctn, -138.8, -73 , 0 );
setEffMoveKey( spep_0 + 72 -a, ctn, -135.4, -81.7 , 0 );
setEffMoveKey( spep_0 + 74 -a, ctn, -142.1, -128.6 , 0 );
setEffMoveKey( spep_0 + 76 -a, ctn, -133.8, -196.1 , 0 );
setEffMoveKey( spep_0 + 78 -a, ctn, -142.1, -293.2 , 0 );
setEffMoveKey( spep_0 + 80 -a, ctn, -133.8, -422.8 , 0 );
setEffMoveKey( spep_0 + 82 -a, ctn, -133.8, -575.6 , 0 );

setEffScaleKey( spep_0 + 50 -a, ctn, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52 -a, ctn, 0.97, 0.97 );
setEffScaleKey( spep_0 + 54 -a, ctn, 1.08, 1.08 );
setEffScaleKey( spep_0 + 56 -a, ctn, 1.15, 1.15 );
setEffScaleKey( spep_0 + 58 -a, ctn, 1.19, 1.19 );
setEffScaleKey( spep_0 + 60 -a, ctn, 1.22, 1.22 );
setEffScaleKey( spep_0 + 62 -a, ctn, 1.24, 1.24 );
setEffScaleKey( spep_0 + 64 -a, ctn, 1.25, 1.25 );
setEffScaleKey( spep_0 + 66 -a, ctn, 1.26, 1.26 );
setEffScaleKey( spep_0 + 82 -a, ctn, 1.26, 1.26 );

setEffRotateKey( spep_0 + 50 -a, ctn, 0 );
setEffRotateKey( spep_0 + 82 -a, ctn, 0 );

setEffAlphaKey( spep_0 + 50 -a, ctn, 255 );
setEffAlphaKey( spep_0 + 70 -a, ctn, 255 );
setEffAlphaKey( spep_0 + 72 -a, ctn, 248 );
setEffAlphaKey( spep_0 + 74 -a, ctn, 227 );
setEffAlphaKey( spep_0 + 76 -a, ctn, 191 );
setEffAlphaKey( spep_0 + 78 -a, ctn, 142 );
setEffAlphaKey( spep_0 + 80 -a, ctn, 78 );
setEffAlphaKey( spep_0 + 82 -a, ctn, 0 );


-- ** 音 ** --
playSe( spep_0 + 50 -a, 19 );  --ボン
playSe( spep_0 + 156, SE_04 );  --ゴゴゴ


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFadeBg( spep_0 + 0, 0, 306, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 302, 2, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 306;


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 260; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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
playSe( spep_0 + 236 -8, 1022 );  --かめはめ波発射



--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波曲げる(262F)
------------------------------------------------------

-- ** エフェクト等 ** --
mageru_f = entryEffectLife( spep_2 + 0, SP_03r, 262, 0x100, -1, 0, 0, 0 );  --かめはめ波曲げる　手前(ef_003)
setEffMoveKey( spep_2 + 0, mageru_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 262, mageru_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, mageru_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 262, mageru_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, mageru_f, 0 );
setEffRotateKey( spep_2 + 262, mageru_f, 0 );
setEffAlphaKey( spep_2 + 0, mageru_f, 255 );
setEffAlphaKey( spep_2 + 261, mageru_f, 255 );
setEffAlphaKey( spep_2 + 262, mageru_f, 0 );

mageru_b = entryEffectLife( spep_2 + 0, SP_04r, 262, 0x80, -1, 0, 0, 0 );  --かめはめ波曲げる　奥(ef_004)
setEffMoveKey( spep_2 + 0, mageru_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 262, mageru_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, mageru_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 262, mageru_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, mageru_b, 0 );
setEffRotateKey( spep_2 + 262, mageru_b, 0 );
setEffAlphaKey( spep_2 + 0, mageru_b, 255 );
setEffAlphaKey( spep_2 + 261, mageru_b, 255 );
setEffAlphaKey( spep_2 + 262, mageru_b, 0 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  921, 58, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_2 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 58, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.5, 1.5 );
setEffScaleKey( spep_2 + 58, ryusen2, 1.5, 1.5 );

setEffRotateKey( spep_2 + 0, ryusen2, 54.3 );
setEffRotateKey( spep_2 + 58, ryusen2, 54.3 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 58, ryusen2, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 58,  906, 204, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 58, shuchusen2, 202, 20 );

setEffMoveKey( spep_2 + 58, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 262, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 58, shuchusen2, 1.23, 1.27 );
setEffScaleKey( spep_2 + 262, shuchusen2, 1.23, 1.27 );

setEffRotateKey( spep_2 + 58, shuchusen2, 0 );
setEffRotateKey( spep_2 + 262, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 58, shuchusen2, 0 );
setEffAlphaKey( spep_2 + 59, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 261, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 262, shuchusen2, 0 );

a1 = 3;
-- ** 書き文字エントリー ** --
ctgui1 = entryEffectLife( spep_2 + 74 -a1,  10049, 38, 0x100, -1, 0, 169.8, 58.5 );  --グイッ
setEffMoveKey( spep_2 + 74 -a1, ctgui1, 169.8, 58.5 , 0 );
setEffMoveKey( spep_2 + 76 -a1, ctgui1, 192.7, 86 , 0 );
setEffMoveKey( spep_2 + 78 -a1, ctgui1, 198.7, 93.4 , 0 );
setEffMoveKey( spep_2 + 80 -a1, ctgui1, 202.1, 97.4 , 0 );
setEffMoveKey( spep_2 + 82 -a1, ctgui1, 204, 99.7 , 0 );
setEffMoveKey( spep_2 + 84 -a1, ctgui1, 205, 100.9 , 0 );
setEffMoveKey( spep_2 + 86 -a1, ctgui1, 205.4, 101.4 , 0 );
setEffMoveKey( spep_2 + 88 -a1, ctgui1, 206, 101.5 , 0 );
setEffMoveKey( spep_2 + 112 -a1, ctgui1, 206, 101.5 , 0 );

setEffScaleKey( spep_2 + 74 -a1, ctgui1, 0.95, 0.95 );
setEffScaleKey( spep_2 + 76 -a1, ctgui1, 1.19, 1.19 );
setEffScaleKey( spep_2 + 78 -a1, ctgui1, 1.25, 1.25 );
setEffScaleKey( spep_2 + 80 -a1, ctgui1, 1.28, 1.28 );
setEffScaleKey( spep_2 + 82 -a1, ctgui1, 1.3, 1.3 );
setEffScaleKey( spep_2 + 84 -a1, ctgui1, 1.31, 1.31 );
setEffScaleKey( spep_2 + 86 -a1, ctgui1, 1.32, 1.32 );
setEffScaleKey( spep_2 + 112 -a1, ctgui1, 1.32, 1.32 );

setEffRotateKey( spep_2 + 74 -a1, ctgui1, 38.5 );
setEffRotateKey( spep_2 + 112 -a1, ctgui1, 38.5 );

setEffAlphaKey( spep_2 + 74 -a1, ctgui1, 255 );
setEffAlphaKey( spep_2 + 106 -a1, ctgui1, 255 );
setEffAlphaKey( spep_2 + 108 -a1, ctgui1, 170 );
setEffAlphaKey( spep_2 + 110 -a1, ctgui1, 85 );
setEffAlphaKey( spep_2 + 112 -a1, ctgui1, 0 );

ctgun = entryEffectLife( spep_2 + 128 -a1,  10050, 42, 0x100, -1, 0, 51.7, 311.5 );  --グンッ
setEffMoveKey( spep_2 + 128 -a1, ctgun, 51.7, 311.5 , 0 );
setEffMoveKey( spep_2 + 130 -a1, ctgun, 56.9, 335.3 , 0 );
setEffMoveKey( spep_2 + 132 -a1, ctgun, 58.2, 341.2 , 0 );
setEffMoveKey( spep_2 + 134 -a1, ctgun, 58.8, 344.2 , 0 );
setEffMoveKey( spep_2 + 136 -a1, ctgun, 59.2, 345.8 , 0 );
setEffMoveKey( spep_2 + 138 -a1, ctgun, 59.3, 346.4 , 0 );
setEffMoveKey( spep_2 + 140 -a1, ctgun, 59.3, 346.3 , 0 );
setEffMoveKey( spep_2 + 170 -a1, ctgun, 59.3, 346.3 , 0 );

setEffScaleKey( spep_2 + 128 -a1, ctgun, 0.48, 0.48 );
setEffScaleKey( spep_2 + 130 -a1, ctgun, 0.67, 0.67 );
setEffScaleKey( spep_2 + 132 -a1, ctgun, 0.71, 0.71 );
setEffScaleKey( spep_2 + 134 -a1, ctgun, 0.73, 0.73 );
setEffScaleKey( spep_2 + 136 -a1, ctgun, 0.75, 0.75 );
setEffScaleKey( spep_2 + 170 -a1, ctgun, 0.75, 0.75 );

setEffRotateKey( spep_2 + 128 -a1, ctgun, -1.8 );
setEffRotateKey( spep_2 + 170 -a1, ctgun, -1.8 );

setEffAlphaKey( spep_2 + 128 -a1, ctgun, 255 );
setEffAlphaKey( spep_2 + 164 -a1, ctgun, 255 );
setEffAlphaKey( spep_2 + 166 -a1, ctgun, 170 );
setEffAlphaKey( spep_2 + 168 -a1, ctgun, 85 );
setEffAlphaKey( spep_2 + 170 -a1, ctgun, 0 );

ctexc = entryEffectLife( spep_2 + 132 -a1,  10000, 38, 0x100, -1, 0, 122.3, -4.6 );  --！！
setEffMoveKey( spep_2 + 132 -a1, ctexc, 122.3, -4.6 , 0 );
setEffMoveKey( spep_2 + 134 -a1, ctexc, 120.1, 3.8 , 0 );
setEffMoveKey( spep_2 + 136 -a1, ctexc, 131, 15.2 , 0 );
setEffMoveKey( spep_2 + 138 -a1, ctexc, 123.5, 24 , 0 );
setEffMoveKey( spep_2 + 140 -a1, ctexc, 125.1, 33 , 0 );
setEffMoveKey( spep_2 + 142 -a1, ctexc, 134.8, 26.7 , 0 );
setEffMoveKey( spep_2 + 144 -a1, ctexc, 130.7, 37.1 , 0 );
setEffMoveKey( spep_2 + 146 -a1, ctexc, 137.8, 28.4 , 0 );
setEffMoveKey( spep_2 + 148 -a1, ctexc, 129.1, 37.9 , 0 );
setEffMoveKey( spep_2 + 150 -a1, ctexc, 133.9, 28.1 , 0 );
setEffMoveKey( spep_2 + 152 -a1, ctexc, 138.8, 41.8 , 0 );
setEffMoveKey( spep_2 + 154 -a1, ctexc, 131.7, 32.1 , 0 );
setEffMoveKey( spep_2 + 156 -a1, ctexc, 141, 43 , 0 );
setEffMoveKey( spep_2 + 158 -a1, ctexc, 128.5, 39.9 , 0 );
setEffMoveKey( spep_2 + 160 -a1, ctexc, 134.4, 42 , 0 );
setEffMoveKey( spep_2 + 162 -a1, ctexc, 126.6, 42.5 , 0 );
setEffMoveKey( spep_2 + 164 -a1, ctexc, 142.5, 47.9 , 0 );
setEffMoveKey( spep_2 + 166 -a1, ctexc, 129.1, 43.3 , 0 );
setEffMoveKey( spep_2 + 168 -a1, ctexc, 134.9, 44.3 , 0 );
setEffMoveKey( spep_2 + 170 -a1, ctexc, 134.9, 44.3 , 0 );

setEffScaleKey( spep_2 + 132 -a1, ctexc, 0.88, 0.88 );
setEffScaleKey( spep_2 + 134 -a1, ctexc, 1.07, 1.07 );
setEffScaleKey( spep_2 + 136 -a1, ctexc, 1.26, 1.26 );
setEffScaleKey( spep_2 + 138 -a1, ctexc, 1.46, 1.46 );
setEffScaleKey( spep_2 + 140 -a1, ctexc, 1.65, 1.65 );
setEffScaleKey( spep_2 + 142 -a1, ctexc, 1.68, 1.68 );
setEffScaleKey( spep_2 + 144 -a1, ctexc, 1.7, 1.7 );
setEffScaleKey( spep_2 + 146 -a1, ctexc, 1.73, 1.73 );
setEffScaleKey( spep_2 + 148 -a1, ctexc, 1.75, 1.75 );
setEffScaleKey( spep_2 + 150 -a1, ctexc, 1.78, 1.78 );
setEffScaleKey( spep_2 + 152 -a1, ctexc, 1.81, 1.81 );
setEffScaleKey( spep_2 + 154 -a1, ctexc, 1.83, 1.83 );
setEffScaleKey( spep_2 + 156 -a1, ctexc, 1.86, 1.86 );
setEffScaleKey( spep_2 + 158 -a1, ctexc, 1.88, 1.88 );
setEffScaleKey( spep_2 + 160 -a1, ctexc, 1.91, 1.91 );
setEffScaleKey( spep_2 + 162 -a1, ctexc, 1.93, 1.93 );
setEffScaleKey( spep_2 + 164 -a1, ctexc, 1.96, 1.96 );
setEffScaleKey( spep_2 + 170 -a1, ctexc, 1.96, 1.96 );

setEffRotateKey( spep_2 + 132 -a1, ctexc, 12.2 );
setEffRotateKey( spep_2 + 170 -a1, ctexc, 12.2 );

setEffAlphaKey( spep_2 + 132 -a1, ctexc, 255 );
setEffAlphaKey( spep_2 + 164 -a1, ctexc, 255 );
setEffAlphaKey( spep_2 + 166 -a1, ctexc, 170 );
setEffAlphaKey( spep_2 + 168 -a1, ctexc, 85 );
setEffAlphaKey( spep_2 + 170 -a1, ctexc, 0 );

ctgui2 = entryEffectLife( spep_2 + 178 -a1,  10049, 26, 0x100, -1, 0, 169.7, 58.5 );  --グイッ
setEffMoveKey( spep_2 + 178 -a1, ctgui2, 169.7, 58.5 , 0 );
setEffMoveKey( spep_2 + 180 -a1, ctgui2, 192.7, 86 , 0 );
setEffMoveKey( spep_2 + 182 -a1, ctgui2, 198.7, 93.4 , 0 );
setEffMoveKey( spep_2 + 184 -a1, ctgui2, 202.1, 97.4 , 0 );
setEffMoveKey( spep_2 + 186 -a1, ctgui2, 204, 99.7 , 0 );
setEffMoveKey( spep_2 + 188 -a1, ctgui2, 205, 100.9 , 0 );
setEffMoveKey( spep_2 + 190 -a1, ctgui2, 205.4, 101.4 , 0 );
setEffMoveKey( spep_2 + 192 -a1, ctgui2, 206, 101.5 , 0 );
setEffMoveKey( spep_2 + 204 -a1, ctgui2, 206, 101.5 , 0 );

setEffScaleKey( spep_2 + 178 -a1, ctgui2, 0.95, 0.95 );
setEffScaleKey( spep_2 + 180 -a1, ctgui2, 1.19, 1.19 );
setEffScaleKey( spep_2 + 182 -a1, ctgui2, 1.25, 1.25 );
setEffScaleKey( spep_2 + 184 -a1, ctgui2, 1.28, 1.28 );
setEffScaleKey( spep_2 + 186 -a1, ctgui2, 1.3, 1.3 );
setEffScaleKey( spep_2 + 188 -a1, ctgui2, 1.31, 1.31 );
setEffScaleKey( spep_2 + 190 -a1, ctgui2, 1.32, 1.32 );
setEffScaleKey( spep_2 + 204 -a1, ctgui2, 1.32, 1.32 );

setEffRotateKey( spep_2 + 178 -a1, ctgui2, 38.5 );
setEffRotateKey( spep_2 + 204 -a1, ctgui2, 38.5 );

setEffAlphaKey( spep_2 + 178 -a1, ctgui2, 255 );
setEffAlphaKey( spep_2 + 198 -a1, ctgui2, 255 );
setEffAlphaKey( spep_2 + 200 -a1, ctgui2, 170 );
setEffAlphaKey( spep_2 + 202 -a1, ctgui2, 85 );
setEffAlphaKey( spep_2 + 204 -a1, ctgui2, 0 );

ctgyuo = entryEffectLife( spep_2 + 204 -a1,  10051, 26, 0x100, -1, 0, -33.8, 162.5 );  --ギュオッ
setEffMoveKey( spep_2 + 204 -a1, ctgyuo, -33.8, 162.5 , 0 );
setEffMoveKey( spep_2 + 206 -a1, ctgyuo, -37.1, 166.6 , 0 );
setEffMoveKey( spep_2 + 208 -a1, ctgyuo, -39.1, 169 , 0 );
setEffMoveKey( spep_2 + 210 -a1, ctgyuo, -39.7, 169.8 , 0 );
setEffMoveKey( spep_2 + 212 -a1, ctgyuo, -39.9, 170 , 0 );
setEffMoveKey( spep_2 + 214 -a1, ctgyuo, -40, 170.2 , 0 );
setEffMoveKey( spep_2 + 216 -a1, ctgyuo, -40.2, 170.4 , 0 );
setEffMoveKey( spep_2 + 218 -a1, ctgyuo, -40.3, 170.6 , 0 );
setEffMoveKey( spep_2 + 220 -a1, ctgyuo, -40.5, 170.8 , 0 );
setEffMoveKey( spep_2 + 222 -a1, ctgyuo, -40.7, 171 , 0 );
setEffMoveKey( spep_2 + 224 -a1, ctgyuo, -40.8, 171.2 , 0 );
setEffMoveKey( spep_2 + 226 -a1, ctgyuo, -41.7, 172.3 , 0 );
setEffMoveKey( spep_2 + 228 -a1, ctgyuo, -42.5, 173.3 , 0 );
setEffMoveKey( spep_2 + 230 -a1, ctgyuo, -43.4, 174.4 , 0 );

setEffScaleKey( spep_2 + 204 -a1, ctgyuo, 0.52, 0.52 );
setEffScaleKey( spep_2 + 206 -a1, ctgyuo, 0.89, 0.89 );
setEffScaleKey( spep_2 + 208 -a1, ctgyuo, 1.11, 1.11 );
setEffScaleKey( spep_2 + 210 -a1, ctgyuo, 1.18, 1.18 );
setEffScaleKey( spep_2 + 212 -a1, ctgyuo, 1.2, 1.2 );
setEffScaleKey( spep_2 + 214 -a1, ctgyuo, 1.22, 1.22 );
setEffScaleKey( spep_2 + 216 -a1, ctgyuo, 1.24, 1.24 );
setEffScaleKey( spep_2 + 218 -a1, ctgyuo, 1.25, 1.25 );
setEffScaleKey( spep_2 + 220 -a1, ctgyuo, 1.27, 1.27 );
setEffScaleKey( spep_2 + 222 -a1, ctgyuo, 1.29, 1.29 );
setEffScaleKey( spep_2 + 224 -a1, ctgyuo, 1.31, 1.31 );
setEffScaleKey( spep_2 + 226 -a1, ctgyuo, 1.41, 1.41 );
setEffScaleKey( spep_2 + 228 -a1, ctgyuo, 1.51, 1.51 );
setEffScaleKey( spep_2 + 230 -a1, ctgyuo, 1.61, 1.61 );

setEffRotateKey( spep_2 + 204 -a1, ctgyuo, -6.2 );
setEffRotateKey( spep_2 + 230 -a1, ctgyuo, -6.2 );

setEffAlphaKey( spep_2 + 204 -a1, ctgyuo, 255 );
setEffAlphaKey( spep_2 + 224 -a1, ctgyuo, 255 );
setEffAlphaKey( spep_2 + 226 -a1, ctgyuo, 170 );
setEffAlphaKey( spep_2 + 228 -a1, ctgyuo, 85 );
setEffAlphaKey( spep_2 + 230 -a1, ctgyuo, 0 );

ctdon = entryEffectLife( spep_2 + 238 -a1,  10048, 24, 0x100, -1, 0, 91.3, 246.3 );  --ドーン
setEffMoveKey( spep_2 + 238 -a1, ctdon, 91.3, 246.3 , 0 );
setEffMoveKey( spep_2 + 240 -a1, ctdon, 59.6, 281.8 , 0 );
setEffMoveKey( spep_2 + 242 -a1, ctdon, 57.5, 299.8 , 0 );
setEffMoveKey( spep_2 + 244 -a1, ctdon, 42.5, 301.5 , 0 );
setEffMoveKey( spep_2 + 246 -a1, ctdon, 47.3, 310.3 , 0 );
setEffMoveKey( spep_2 + 248 -a1, ctdon, 34.2, 314.4 , 0 );
setEffMoveKey( spep_2 + 250 -a1, ctdon, 41.9, 314.1 , 0 );
setEffMoveKey( spep_2 + 252 -a1, ctdon, 30.3, 324.8 , 0 );
setEffMoveKey( spep_2 + 254 -a1, ctdon, 39.8, 320.8 , 0 );
setEffMoveKey( spep_2 + 256 -a1, ctdon, 32.1, 326.6 , 0 );
setEffMoveKey( spep_2 + 258 -a1, ctdon, 36.4, 318 , 0 );
setEffMoveKey( spep_2 + 260 -a1, ctdon, 32.2, 331.1 , 0 );
setEffMoveKey( spep_2 + 262 -a1, ctdon, 32.5, 323.8 , 0 );

setEffScaleKey( spep_2 + 238 -a1, ctdon, 0.81, 0.81 );
setEffScaleKey( spep_2 + 240 -a1, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_2 + 242 -a1, ctdon, 1.26, 1.26 );
setEffScaleKey( spep_2 + 244 -a1, ctdon, 1.34, 1.34 );
setEffScaleKey( spep_2 + 246 -a1, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_2 + 248 -a1, ctdon, 1.44, 1.44 );
setEffScaleKey( spep_2 + 250 -a1, ctdon, 1.47, 1.47 );
setEffScaleKey( spep_2 + 252 -a1, ctdon, 1.49, 1.49 );
setEffScaleKey( spep_2 + 254 -a1, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 + 256 -a1, ctdon, 1.51, 1.51 );
setEffScaleKey( spep_2 + 258 -a1, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 262 -a1, ctdon, 1.52, 1.52 );

setEffRotateKey( spep_2 + 238 -a1, ctdon, 22.9 );
setEffRotateKey( spep_2 + 240 -a1, ctdon, 23.1 );
setEffRotateKey( spep_2 + 242 -a1, ctdon, 23.1 );
setEffRotateKey( spep_2 + 244 -a1, ctdon, 23.2 );
setEffRotateKey( spep_2 + 262 -a1, ctdon, 23.2 );

setEffAlphaKey( spep_2 + 238 -a1, ctdon, 255 );
setEffAlphaKey( spep_2 + 262 -a1, ctdon, 255 );

b = 2;
b1 = 3;
-- ** 敵キャラクター ** --
setDisp( spep_2 + 112 -b, 1, 1 );  --待ち
setDisp( spep_2 + 170 -b, 1, 0 );
setDisp( spep_2 + 204 -b, 1, 1 ); --ガード
setDisp( spep_2 + 262 -b, 1, 0 );

changeAnime( spep_2 + 112 -b, 1, 118 );  --待ち
changeAnime( spep_2 + 204 -b, 1, 104 );  --ガード
changeAnime( spep_2 + 238 -b1, 1, 106 );  --着弾

setMoveKey( spep_2 + 112 -b, 1, 184.1, -196.2 , 0 );  --待ち
setMoveKey( spep_2 + 170 -b, 1, 184.1, -196.2 , 0 );
setMoveKey( spep_2 + 204 -b, 1, 3.4, -71.6 , 0 );  --ガード
setMoveKey( spep_2 + 226 -b, 1, 3.4, -71.6 , 0 );
setMoveKey( spep_2 + 228 -b, 1, 32.4, -51.6 , 0 );
setMoveKey( spep_2 + 237 -b1, 1, 32.4, -51.6 , 0 );
setMoveKey( spep_2 + 238 -b1, 1, -66.6, -18.4 , 0 );  --着弾
setMoveKey( spep_2 + 240 -b1, 1, -146.1, -56.8 , 0 );
setMoveKey( spep_2 + 242 -b1, 1, -202.3, -81.3 , 0 );
setMoveKey( spep_2 + 244 -b1, 1, -205.9, -73.9 , 0 );
setMoveKey( spep_2 + 246 -b1, 1, -221.2, -96.5 , 0 );
setMoveKey( spep_2 + 248 -b1, 1, -242.2, -82.7 , 0 );
setMoveKey( spep_2 + 250 -b1, 1, -239.2, -95.2 , 0 );
setMoveKey( spep_2 + 252 -b1, 1, -254, -86.4 , 0 );
setMoveKey( spep_2 + 254 -b1, 1, -254.7, -95.9 , 0 );
setMoveKey( spep_2 + 256 -b1, 1, -259.4, -90.3 , 0 );
setMoveKey( spep_2 + 258 -b1, 1, -262.8, -107.4 , 0 );
setMoveKey( spep_2 + 260 -b1, 1, -265.6, -88.1 , 0 );
setMoveKey( spep_2 + 262 -b, 1, -265.4, -113.5 , 0 );

setScaleKey( spep_2 + 112 -b, 1, 1.7, 1.7 );  --待ち
setScaleKey( spep_2 + 170 -b, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 204 -b, 1, 1.35, 1.35 );  --ガード
setScaleKey( spep_2 + 226 -b, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 228 -b, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 237 -b1, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 238 -b1, 1, 1.85, 1.85 );  --着弾
setScaleKey( spep_2 + 240 -b1, 1, 2.67, 2.67 );
setScaleKey( spep_2 + 242 -b1, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 244 -b1, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 246 -b1, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 248 -b1, 1, 3.26, 3.26 );
setScaleKey( spep_2 + 250 -b1, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 252 -b1, 1, 3.37, 3.37 );
setScaleKey( spep_2 + 254 -b1, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 256 -b1, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 258 -b1, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 260 -b1, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 262 -b, 1, 3.49, 3.49 );

setRotateKey( spep_2 + 112 -b, 1, 0 );
setRotateKey( spep_2 + 237 -b1, 1, 0 );
setRotateKey( spep_2 + 238 -b1, 1, -60 );
setRotateKey( spep_2 + 262 -b, 1, -60 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 248, 12, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 262, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_2 + 2, 1021 );  --かめはめ波
playSe( spep_2 + 74 -a1, 1004 );  --かめはめ波曲げる
playSe( spep_2 + 128 -a1, 1021 );  --かめはめ波
playSe( spep_2 + 178 -a1, 1004 );  --かめはめ波曲げる
playSe( spep_2 + 204, 1021 );  --かめはめ波
playSe( spep_2 + 238 -a1, 1023 );  --着弾

-- ** 次の準備 ** --
spep_3 = spep_2 + 262;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 背景 ** --
sora = entryEffectLife( spep_3 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --空の背景(ef_006)
setEffMoveKey( spep_3 + 0, sora, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, sora, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sora, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, sora, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sora, 0 );
setEffRotateKey( spep_3 + 100, sora, 0 );
setEffAlphaKey( spep_3 + 0, sora, 255 );
setEffAlphaKey( spep_3 + 100, sora, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen3, 0 );
setEffRotateKey( spep_3 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen4, 0 );
setEffRotateKey( spep_3 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_3 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_3 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_3 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3 + 1, 1, -40 );
setRotateKey( spep_3 + 2, 1, 80 );
setRotateKey( spep_3 + 3, 1, 80 );
setRotateKey( spep_3 + 4, 1, 200 );
setRotateKey( spep_3 + 5, 1, 200 );
setRotateKey( spep_3 + 6, 1, 360 );
setRotateKey( spep_3 + 7, 1, 360 );
setRotateKey( spep_3 + 8, 1, 558 );
setRotateKey( spep_3 + 9, 1, 558 );
setRotateKey( spep_3 + 10, 1, 425 );
setRotateKey( spep_3 + 11, 1, 425 );
setRotateKey( spep_3 + 12, 1, -40 );
setRotateKey( spep_3 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_10 );  --爆発音
playSe( spep_3 + 14, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 2, 24, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 青マスク ** --
entryFade( spep_3 + 0, 0, 2, 24, 68, 91, 255, 200 );  -- 薄い青

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
entryFade( spep_3 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_3 + 100 );

end


