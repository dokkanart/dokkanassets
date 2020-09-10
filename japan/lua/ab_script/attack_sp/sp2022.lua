--1019770:天津飯_気功砲
--sp_effect_a7_00035

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
SP_01=	155529	;--	TU→気を溜める→カットイン
SP_02=	155530	;--	敵にズームアップ　手前
SP_03=	155531	;--	敵にズームアップ　億
SP_04=	155532	;--	気功砲
SP_05=	155533	;--	爆発
SP_06=	155534	;--	爆発
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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

--[[
setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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
]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- TU→気を溜める→カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 174, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 174, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 174, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 174, tame, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 16, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 247.1, -481.7 , 0 );
setMoveKey( spep_0 + 1, 1, 247.1, -481.7 , 0 );
setMoveKey( spep_0 + 2, 1, 268.3, -550.2 , 0 );
setMoveKey( spep_0 + 3, 1, 268.3, -550.2 , 0 );
setMoveKey( spep_0 + 4, 1, 289.4, -618.7 , 0 );
setMoveKey( spep_0 + 5, 1, 289.4, -618.7 , 0 );
setMoveKey( spep_0 + 6, 1, 310.5, -687.2 , 0 );
setMoveKey( spep_0 + 8, 1, 331.7, -755.7 , 0 );
setMoveKey( spep_0 + 10, 1, 352.8, -824.2 , 0 );
setMoveKey( spep_0 + 12, 1, 373.9, -892.7 , 0 );
setMoveKey( spep_0 + 14, 1, 395.1, -961.2 , 0 );
setMoveKey( spep_0 + 16, 1, 416.2, -1029.7 , 0 );
--[[
setMoveKey( spep_0 + 18, 1, 437.4, -1098.2 , 0 );
setMoveKey( spep_0 + 20, 1, 458.5, -1166.7 , 0 );
setMoveKey( spep_0 + 22, 1, 479.6, -1235.2 , 0 );
setMoveKey( spep_0 + 24, 1, 500.8, -1303.7 , 0 );
setMoveKey( spep_0 + 26, 1, 521.9, -1372.2 , 0 );
setMoveKey( spep_0 + 28, 1, 543.1, -1440.8 , 0 );
setMoveKey( spep_0 + 30, 1, 543.5, -1442.2 , 0 );
setMoveKey( spep_0 + 32, 1, 543.9, -1443.6 , 0 );
setMoveKey( spep_0 + 34, 1, 544.3, -1445 , 0 );
setMoveKey( spep_0 + 36, 1, 544.7, -1446.4 , 0 );
setMoveKey( spep_0 + 38, 1, 545.1, -1447.8 , 0 );
setMoveKey( spep_0 + 40, 1, 545.6, -1449.3 , 0 );
setMoveKey( spep_0 + 42, 1, 546, -1450.7 , 0 );
setMoveKey( spep_0 + 44, 1, 546.4, -1452.1 , 0 );
setMoveKey( spep_0 + 46, 1, 546.8, -1453.5 , 0 );
setMoveKey( spep_0 + 48, 1, 547.2, -1454.9 , 0 );
setMoveKey( spep_0 + 50, 1, 547.6, -1456.3 , 0 );
setMoveKey( spep_0 + 52, 1, 548.1, -1457.8 , 0 );
setMoveKey( spep_0 + 54, 1, 548.5, -1459.2 , 0 );
setMoveKey( spep_0 + 56, 1, 548.9, -1460.6 , 0 );
setMoveKey( spep_0 + 58, 1, 549.3, -1462 , 0 );
setMoveKey( spep_0 + 60, 1, 673.4, -1798.4 , 0 );
setMoveKey( spep_0 + 62, 1, 797.4, -2134.8 , 0 );
setMoveKey( spep_0 + 64, 1, 921.5, -2471.1 , 0 );
setMoveKey( spep_0 + 66, 1, 1045.6, -2807.5 , 0 );
setMoveKey( spep_0 + 68, 1, 1169.6, -3143.9 , 0 );
setMoveKey( spep_0 + 70, 1, 1293.7, -3480.2 , 0 );
setMoveKey( spep_0 + 72, 1, 1417.8, -3816.6 , 0 );
setMoveKey( spep_0 + 74, 1, 1541.8, -4153 , 0 );
setMoveKey( spep_0 + 76, 1, 1665.9, -4489.4 , 0 );
setMoveKey( spep_0 + 78, 1, 1790, -4825.7 , 0 );
setMoveKey( spep_0 + 80, 1, 1914, -5162.1 , 0 );
setMoveKey( spep_0 + 82, 1, 2038.1, -5498.5 , 0 );
setMoveKey( spep_0 + 84, 1, 2162.2, -5834.8 , 0 );
setMoveKey( spep_0 + 86, 1, 2286.2, -6171.2 , 0 );
setMoveKey( spep_0 + 88, 1, 2407.8, -6510.1 , 0 );
setMoveKey( spep_0 + 90, 1, 2410.3, -6507.6 , 0 );
setMoveKey( spep_0 + 92, 1, 2411.6, -6510.1 , 0 );
setMoveKey( spep_0 + 94, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 96, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 98, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 100, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 102, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 104, 1, 2409.7, -6505.7 , 0 );
setMoveKey( spep_0 + 106, 1, 2409.1, -6505.1 , 0 );
setMoveKey( spep_0 + 108, 1, 2409.7, -6505.7 , 0 );
setMoveKey( spep_0 + 110, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 112, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 114, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 116, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 118, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 120, 1, 2409.7, -6505.7 , 0 );
setMoveKey( spep_0 + 122, 1, 2409.1, -6505.1 , 0 );
setMoveKey( spep_0 + 124, 1, 2409.7, -6505.7 , 0 );
setMoveKey( spep_0 + 126, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 128, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 130, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 132, 1, 2409.5, -6508 , 0 );
setMoveKey( spep_0 + 134, 1, 2409.9, -6508.4 , 0 );
setMoveKey( spep_0 + 136, 1, 2410.3, -6508.8 , 0 );
setMoveKey( spep_0 + 138, 1, 2409.7, -6508.2 , 0 );
setMoveKey( spep_0 + 140, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 142, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 144, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 146, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 148, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 150, 1, 2409.5, -6507.2 , 0 );
setMoveKey( spep_0 + 152, 1, 2409.9, -6506.8 , 0 );
setMoveKey( spep_0 + 154, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 156, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 158, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 160, 1, 2409.7, -6508.2 , 0 );
setMoveKey( spep_0 + 162, 1, 2410.3, -6508.8 , 0 );
setMoveKey( spep_0 + 164, 1, 2409.7, -6508.2 , 0 );
setMoveKey( spep_0 + 166, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 168, 1, 2409.5, -6508 , 0 );
setMoveKey( spep_0 + 170, 1, 2409.9, -6508.4 , 0 );
setMoveKey( spep_0 + 172, 1, 2410.3, -6508.8 , 0 );
]]
setScaleKey( spep_0 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 1, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 2, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 3, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 4, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 5, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 16, 1, 3.5, 3.5 );
--[[
setScaleKey( spep_0 + 58, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 60, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 62, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 64, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 66, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 68, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 70, 1, 7, 7 );
setScaleKey( spep_0 + 72, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 74, 1, 8.17, 8.17 );
setScaleKey( spep_0 + 76, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 78, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 80, 1, 9.92, 9.92 );
setScaleKey( spep_0 + 82, 1, 10.5, 10.5 );
setScaleKey( spep_0 + 84, 1, 11.08, 11.08 );
setScaleKey( spep_0 + 86, 1, 11.67, 11.67 );
setScaleKey( spep_0 + 88, 1, 12.25, 12.25 );
setScaleKey( spep_0 + 172, 1, 12.25, 12.25 );
]]
setRotateKey( spep_0 + 0, 1, 5 );
setRotateKey( spep_0 + 1, 1, 5 );
setRotateKey( spep_0 + 2, 1, 5 );
setRotateKey( spep_0 + 3, 1, 5 );
setRotateKey( spep_0 + 4, 1, 5 );
setRotateKey( spep_0 + 5, 1, 5 );
setRotateKey( spep_0 + 16, 1, 5 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 1, 1, 255 );
setAlphaKey( spep_0 + 2, 1, 255 );
setAlphaKey( spep_0 + 3, 1, 255 );
setAlphaKey( spep_0 + 4, 1, 255 );
setAlphaKey( spep_0 + 16, 1, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 70,  906, 102, 0x100, -1, 0, 0, -1.1 );
setEffShake( spep_0 + 70, shuchusen1, 102, 20 );
setEffMoveKey( spep_0 + 70, shuchusen1, 0, -1.1 , 0 );
setEffMoveKey( spep_0 + 172, shuchusen1, 0, -1.1 , 0 );

setEffScaleKey( spep_0 + 70, shuchusen1, 1.02, 1.08 );
setEffScaleKey( spep_0 + 172, shuchusen1, 1.02, 1.08 );

setEffRotateKey( spep_0 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 + 172, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 70, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 82, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 83, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 172, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+70  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+70  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +82, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +82,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +154,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +82, ctgogo, 0 );
setEffAlphaKey( spep_0 + 83, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
setEffAlphaKey( spep_0 + 148, ctgogo, 255 );
setEffAlphaKey( spep_0 + 150, ctgogo, 191 );
setEffAlphaKey( spep_0 + 152, ctgogo, 112 );
setEffAlphaKey( spep_0 + 154, ctgogo, 64 );

setEffRotateKey(  spep_0 +82,  ctgogo,  0);
setEffRotateKey(  spep_0 +154,  ctgogo,  0);

setEffScaleKey(  spep_0 +82,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +144,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +154,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 0, 44 );
playSe( spep_0 + 56, 8 );
playSe( spep_0 + 78, 1003 );
playSe( spep_0 + 82, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 176, 0,  0, 0, 0, 180 ); --くろ 背景

--集中線
entryFade( spep_0+166 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+174;
------------------------------------------------------
-- 敵にズームアップ
------------------------------------------------------
-- ** エフェクト等 ** --
lock_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lock_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 120, lock_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, lock_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, lock_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lock_f, 0 );
setEffRotateKey( spep_1 + 120, lock_f, 0 );
setEffAlphaKey( spep_1 + 0, lock_f, 255 );
setEffAlphaKey( spep_1 + 120, lock_f, 255 );

-- ** エフェクト等 ** --
lock_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lock_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 120, lock_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, lock_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, lock_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lock_b, 0 );
setEffRotateKey( spep_1 + 120, lock_b, 0 );
setEffAlphaKey( spep_1 + 0, lock_b, 255 );
setEffAlphaKey( spep_1 + 120, lock_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 116, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 1.8, -6.2 , 0 );
setMoveKey( spep_1 + 2, 1, 1.9, -6.3 , 0 );
setMoveKey( spep_1 + 4, 1, 2, -6.6 , 0 );
setMoveKey( spep_1 + 6, 1, 2.1, -7 , 0 );
setMoveKey( spep_1 + 8, 1, 2.3, -7.6 , 0 );
setMoveKey( spep_1 + 10, 1, 2.5, -8.5 , 0 );
setMoveKey( spep_1 + 12, 1, 3.3, -11.1 , 0 );
setMoveKey( spep_1 + 14, 1, 4.4, -14.8 , 0 );
setMoveKey( spep_1 + 16, 1, 5.3, -17.8 , 0 );
setMoveKey( spep_1 + 18, 1, 6, -20.4 , 0 );
setMoveKey( spep_1 + 20, 1, 6.7, -22.5 , 0 );
setMoveKey( spep_1 + 22, 1, 7.2, -24.3 , 0 );
setMoveKey( spep_1 + 24, 1, 7.7, -25.9 , 0 );
setMoveKey( spep_1 + 26, 1, 8.1, -27.2 , 0 );
setMoveKey( spep_1 + 28, 1, 8.4, -28.3 , 0 );
setMoveKey( spep_1 + 30, 1, 8.6, -29.1 , 0 );
setMoveKey( spep_1 + 32, 1, 8.8, -29.8 , 0 );
setMoveKey( spep_1 + 34, 1, 9, -30.4 , 0 );
setMoveKey( spep_1 + 36, 1, 9.1, -30.8 , 0 );
setMoveKey( spep_1 + 38, 1, 9.2, -31.1 , 0 );
setMoveKey( spep_1 + 116, 1, 9.2, -31.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 6, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 12, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 14, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 18, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 22, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 24, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 28, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 30, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 32, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 34, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 38, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 116, 1, 0.81, 0.81 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 116, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255 );
setAlphaKey( spep_1 + 116, 1, 255 );

--SE
playSe( spep_1 + 0, 1202 );
se_1191 = playSe( spep_1 + 0, 1191 );
SEz=playSe( spep_1 + 0, 1240 );
playSe( spep_1 + 2, 1135 );
setSeVolume( spep_1 + 2, 1135, 40 );

stopSe( spep_1 + 41, se_1191, 37 );
stopSe( spep_1 + 78, SEz, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 120, 0,  0, 0, 0, 180 ); --くろ 背景

--次の準備
spep_2=spep_1+116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
--entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- 気功砲
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 90, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 90, beam, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_3-3 + 10,  906, 78, 0x100, -1, 0, 0, 71.7 );
setEffShake( spep_3-3 + 10, shuchusen2, 78, 20 );
setEffMoveKey( spep_3-3 + 10, shuchusen2, 0, 71.7 , 0 );
setEffMoveKey( spep_3-3 + 88, shuchusen2, 0, 71.7 , 0 );

setEffScaleKey( spep_3-3 + 10, shuchusen2, 1.45, 1.45 );
setEffScaleKey( spep_3-3 + 88, shuchusen2, 1.45, 1.45 );

setEffRotateKey( spep_3-3 + 10, shuchusen2, 180 );
setEffRotateKey( spep_3-3 + 88, shuchusen2, 180 );

setEffAlphaKey( spep_3-3 + 10, shuchusen2, 255 );
setEffAlphaKey( spep_3-3 + 88, shuchusen2, 255 );

--SE
SE0=playSe( spep_3 + 0, 1025 );
SE1=playSe( spep_3 + 0, 1137 );
se_1193 = playSe( spep_3 + 0, 1193 );
setSeVolume( spep_3 + 0, 1193, 23 );
SE2=playSe( spep_3 + 0, 1161 );
setSeVolume( spep_3 + 0, 1161, 59 );
SE3=playSe( spep_3 + 0, 1182 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 92, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    stopSe( SP_dodge - 12, se_1193, 0 );

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

stopSe( spep_3 + 52, se_1193, 35 );

--集中線
entryFade( spep_3+82 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 180, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 180, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 30, 1, 0 );

setBlendColor(spep_4 + 0,1,2,0,0,0,1.0);
setBlendColor(spep_4 + 32,1,2,0,0,0,1.0);
setBlendColor(spep_4 + 34,1,2,0,0,0,0);

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 11.8, -190.4 , 0 );
setMoveKey( spep_4 + 2, 1, 16.4, -187.7 , 0 );
setMoveKey( spep_4 + 4, 1, 11.8, -192.8 , 0 );
setMoveKey( spep_4 + 6, 1, 8.7, -190.2 , 0 );
setMoveKey( spep_4 + 8, 1, 11.8, -195.3 , 0 );
setMoveKey( spep_4 + 10, 1, 11.8, -194.2 , 0 );
setMoveKey( spep_4 + 12, 1, 8.7, -196.2 , 0 );
setMoveKey( spep_4 + 14, 1, 7.2, -199.7 , 0 );
setMoveKey( spep_4 + 16, 1, 10.3, -203.3 , 0 );
setMoveKey( spep_4 + 18, 1, 10.3, -205.3 , 0 );
setMoveKey( spep_4 + 20, 1, 7.2, -204.2 , 0 );
setMoveKey( spep_4 + 22, 1, 10.4, -210.3 , 0 );
setMoveKey( spep_4 + 24, 1, 10.4, -205.1 , 0 );
setMoveKey( spep_4 + 26, 1, 7.3, -209.2 , 0 );
setMoveKey( spep_4 + 28, 1, 18, -216.2 , 0 );
setMoveKey( spep_4 + 30, 1, 18.7, -212.5 , 0 );
--[[
setMoveKey( spep_4 + 32, 1, -14.3, -243 , 0 );
setMoveKey( spep_4 + 34, 1, 44, -191.4 , 0 );
setMoveKey( spep_4 + 36, 1, 30.7, -246.7 , 0 );
setMoveKey( spep_4 + 38, 1, -18.6, -190.9 , 0 );
setMoveKey( spep_4 + 40, 1, -5.2, -221.8 , 0 );
setMoveKey( spep_4 + 42, 1, 26.1, -206.1 , 0 );
setMoveKey( spep_4 + 44, 1, 6.9, -223.9 , 0 );
setMoveKey( spep_4 + 46, 1, 19.6, -210.6 , 0 );
setMoveKey( spep_4 + 48, 1, -2.4, -219.3 , 0 );
setMoveKey( spep_4 + 50, 1, 9.1, -210.5 , 0 );
setMoveKey( spep_4 + 52, 1, 17.8, -216.8 , 0 );
setMoveKey( spep_4 + 54, 1, 2.7, -208.1 , 0 );
setMoveKey( spep_4 + 56, 1, 19.7, -215.2 , 0 );
setMoveKey( spep_4 + 58, 1, 9.1, -208.1 , 0 );
setMoveKey( spep_4 + 60, 1, 17.6, -216.5 , 0 );
setMoveKey( spep_4 + 62, 1, 7.8, -208.1 , 0 );
setMoveKey( spep_4 + 64, 1, 14.6, -216.6 , 0 );
setMoveKey( spep_4 + 66, 1, 7.3, -209.5 , 0 );
setMoveKey( spep_4 + 68, 1, 14.5, -216.9 , 0 );
setMoveKey( spep_4 + 70, 1, 7.8, -206.5 , 0 );
setMoveKey( spep_4 + 72, 1, 11.7, -212.6 , 0 );
setMoveKey( spep_4 + 74, 1, 15.5, -218.7 , 0 );
setMoveKey( spep_4 + 76, 1, 7.8, -207.1 , 0 );
setMoveKey( spep_4 + 78, 1, 16.3, -219.5 , 0 );
setMoveKey( spep_4 + 80, 1, 18.6, -203.4 , 0 );
setMoveKey( spep_4 + 82, 1, 5.5, -218.4 , 0 );
setMoveKey( spep_4 + 84, 1, 4.7, -204.2 , 0 );
setMoveKey( spep_4 + 86, 1, 18.6, -216.6 , 0 );
setMoveKey( spep_4 + 88, 1, 16.7, -205.2 , 0 );
setMoveKey( spep_4 + 90, 1, 4, -209.9 , 0 );
setMoveKey( spep_4 + 92, 1, 12.4, -218.2 , 0 );
setMoveKey( spep_4 + 94, 1, 2.4, -215 , 0 );
setMoveKey( spep_4 + 96, 1, 17, -206.7 , 0 );
setMoveKey( spep_4 + 98, 1, 4.2, -206.7 , 0 );
setMoveKey( spep_4 + 100, 1, 19.3, -220.5 , 0 );
setMoveKey( spep_4 + 102, 1, 11, -208.3 , 0 );
setMoveKey( spep_4 + 104, 1, 3.4, -220.9 , 0 );
setMoveKey( spep_4 + 106, 1, 17.2, -204.2 , 0 );
setMoveKey( spep_4 + 108, 1, 7.2, -208.5 , 0 );
setMoveKey( spep_4 + 110, 1, 12.9, -219.9 , 0 );
setMoveKey( spep_4 + 112, 1, 15.9, -208.5 , 0 );
setMoveKey( spep_4 + 114, 1, 6.6, -212.6 , 0 );
setMoveKey( spep_4 + 116, 1, 10.3, -210.2 , 0 );
setMoveKey( spep_4 + 118, 1, 13.9, -207.8 , 0 );
setMoveKey( spep_4 + 120, 1, 17.6, -205.4 , 0 );
setMoveKey( spep_4 + 122, 1, 5, -217.8 , 0 );
setMoveKey( spep_4 + 124, 1, 7, -214.5 , 0 );
setMoveKey( spep_4 + 126, 1, 9, -211.1 , 0 );
setMoveKey( spep_4 + 128, 1, 11, -207.7 , 0 );
setMoveKey( spep_4 + 130, 1, 17.8, -219.7 , 0 );
setMoveKey( spep_4 + 132, 1, 11.7, -214.5 , 0 );
setMoveKey( spep_4 + 134, 1, 5.6, -209.2 , 0 );
setMoveKey( spep_4 + 136, 1, 11, -212.6 , 0 );
setMoveKey( spep_4 + 138, 1, 16.4, -215.9 , 0 );
setMoveKey( spep_4 + 140, 1, 13.1, -215.5 , 0 );
setMoveKey( spep_4 + 142, 1, 9.8, -215.1 , 0 );
setMoveKey( spep_4 + 144, 1, 6.5, -214.7 , 0 );
setMoveKey( spep_4 + 146, 1, 14.2, -209.6 , 0 );
setMoveKey( spep_4 + 148, 1, 10.7, -211.7 , 0 );
setMoveKey( spep_4 + 150, 1, 7.1, -213.8 , 0 );
setMoveKey( spep_4 + 152, 1, 10.7, -215.7 , 0 );
setMoveKey( spep_4 + 154, 1, 14.2, -217.6 , 0 );
setMoveKey( spep_4 + 156, 1, 10.6, -213.3 , 0 );
setMoveKey( spep_4 + 158, 1, 7.1, -209.1 , 0 );
setMoveKey( spep_4 + 160, 1, 9, -212.2 , 0 );
setMoveKey( spep_4 + 162, 1, 11, -215.3 , 0 );
setMoveKey( spep_4 + 164, 1, 12.9, -218.4 , 0 );
setMoveKey( spep_4 + 166, 1, 6.5, -212.1 , 0 );
setMoveKey( spep_4 + 168, 1, 11.2, -212.6 , 0 );
setMoveKey( spep_4 + 170, 1, 15.9, -213.1 , 0 );
setMoveKey( spep_4 + 172, 1, 14.3, -214.4 , 0 );
setMoveKey( spep_4 + 174, 1, 12.8, -215.8 , 0 );
setMoveKey( spep_4 + 176, 1, 13.5, -216.7 , 0 );
setMoveKey( spep_4 + 178, 1, 14.2, -217.6 , 0 );
]]--
setScaleKey( spep_4 + 0, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 30, 1, 0.52, 0.52 );

setRotateKey( spep_4 + 0, 1, 63 );
setRotateKey( spep_4 + 30, 1, 63 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 + 2, 1, 238 );
setAlphaKey( spep_4 + 4, 1, 221 );
setAlphaKey( spep_4 + 6, 1, 204 );
setAlphaKey( spep_4 + 8, 1, 187 );
setAlphaKey( spep_4 + 10, 1, 170 );
setAlphaKey( spep_4 + 12, 1, 153 );
setAlphaKey( spep_4 + 14, 1, 136 );
setAlphaKey( spep_4 + 16, 1, 119 );
setAlphaKey( spep_4 + 18, 1, 102 );
setAlphaKey( spep_4 + 20, 1, 85 );
setAlphaKey( spep_4 + 22, 1, 68 );
setAlphaKey( spep_4 + 24, 1, 51 );
setAlphaKey( spep_4 + 26, 1, 34 );
setAlphaKey( spep_4 + 28, 1, 17 );
setAlphaKey( spep_4 + 30, 1, 0 );
setAlphaKey( spep_4 + 32, 1, 0 );
setAlphaKey( spep_4 + 34, 1, 255 );

--SE
playSe( spep_4 + 28, 1159 );
playSe( spep_4 + 28, 1023 );
setSeVolume( spep_4 + 28, 1023, 80 );
playSe( spep_4 + 42, 1188 );
setSeVolume( spep_4 + 42, 1188, 63 );
playSe( spep_4 + 46, 1024 );
setSeVolume( spep_4 + 46, 1024, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 40 );
endPhase( spep_4 + 170 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- TU→気を溜める→カットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 174, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 174, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 174, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 174, tame, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 16, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 247.1, -481.7 , 0 );
setMoveKey( spep_0 + 1, 1, 247.1, -481.7 , 0 );
setMoveKey( spep_0 + 2, 1, 268.3, -550.2 , 0 );
setMoveKey( spep_0 + 3, 1, 268.3, -550.2 , 0 );
setMoveKey( spep_0 + 4, 1, 289.4, -618.7 , 0 );
setMoveKey( spep_0 + 5, 1, 289.4, -618.7 , 0 );
setMoveKey( spep_0 + 6, 1, 310.5, -687.2 , 0 );
setMoveKey( spep_0 + 8, 1, 331.7, -755.7 , 0 );
setMoveKey( spep_0 + 10, 1, 352.8, -824.2 , 0 );
setMoveKey( spep_0 + 12, 1, 373.9, -892.7 , 0 );
setMoveKey( spep_0 + 14, 1, 395.1, -961.2 , 0 );
setMoveKey( spep_0 + 16, 1, 416.2, -1029.7 , 0 );
--[[
setMoveKey( spep_0 + 18, 1, 437.4, -1098.2 , 0 );
setMoveKey( spep_0 + 20, 1, 458.5, -1166.7 , 0 );
setMoveKey( spep_0 + 22, 1, 479.6, -1235.2 , 0 );
setMoveKey( spep_0 + 24, 1, 500.8, -1303.7 , 0 );
setMoveKey( spep_0 + 26, 1, 521.9, -1372.2 , 0 );
setMoveKey( spep_0 + 28, 1, 543.1, -1440.8 , 0 );
setMoveKey( spep_0 + 30, 1, 543.5, -1442.2 , 0 );
setMoveKey( spep_0 + 32, 1, 543.9, -1443.6 , 0 );
setMoveKey( spep_0 + 34, 1, 544.3, -1445 , 0 );
setMoveKey( spep_0 + 36, 1, 544.7, -1446.4 , 0 );
setMoveKey( spep_0 + 38, 1, 545.1, -1447.8 , 0 );
setMoveKey( spep_0 + 40, 1, 545.6, -1449.3 , 0 );
setMoveKey( spep_0 + 42, 1, 546, -1450.7 , 0 );
setMoveKey( spep_0 + 44, 1, 546.4, -1452.1 , 0 );
setMoveKey( spep_0 + 46, 1, 546.8, -1453.5 , 0 );
setMoveKey( spep_0 + 48, 1, 547.2, -1454.9 , 0 );
setMoveKey( spep_0 + 50, 1, 547.6, -1456.3 , 0 );
setMoveKey( spep_0 + 52, 1, 548.1, -1457.8 , 0 );
setMoveKey( spep_0 + 54, 1, 548.5, -1459.2 , 0 );
setMoveKey( spep_0 + 56, 1, 548.9, -1460.6 , 0 );
setMoveKey( spep_0 + 58, 1, 549.3, -1462 , 0 );
setMoveKey( spep_0 + 60, 1, 673.4, -1798.4 , 0 );
setMoveKey( spep_0 + 62, 1, 797.4, -2134.8 , 0 );
setMoveKey( spep_0 + 64, 1, 921.5, -2471.1 , 0 );
setMoveKey( spep_0 + 66, 1, 1045.6, -2807.5 , 0 );
setMoveKey( spep_0 + 68, 1, 1169.6, -3143.9 , 0 );
setMoveKey( spep_0 + 70, 1, 1293.7, -3480.2 , 0 );
setMoveKey( spep_0 + 72, 1, 1417.8, -3816.6 , 0 );
setMoveKey( spep_0 + 74, 1, 1541.8, -4153 , 0 );
setMoveKey( spep_0 + 76, 1, 1665.9, -4489.4 , 0 );
setMoveKey( spep_0 + 78, 1, 1790, -4825.7 , 0 );
setMoveKey( spep_0 + 80, 1, 1914, -5162.1 , 0 );
setMoveKey( spep_0 + 82, 1, 2038.1, -5498.5 , 0 );
setMoveKey( spep_0 + 84, 1, 2162.2, -5834.8 , 0 );
setMoveKey( spep_0 + 86, 1, 2286.2, -6171.2 , 0 );
setMoveKey( spep_0 + 88, 1, 2407.8, -6510.1 , 0 );
setMoveKey( spep_0 + 90, 1, 2410.3, -6507.6 , 0 );
setMoveKey( spep_0 + 92, 1, 2411.6, -6510.1 , 0 );
setMoveKey( spep_0 + 94, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 96, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 98, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 100, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 102, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 104, 1, 2409.7, -6505.7 , 0 );
setMoveKey( spep_0 + 106, 1, 2409.1, -6505.1 , 0 );
setMoveKey( spep_0 + 108, 1, 2409.7, -6505.7 , 0 );
setMoveKey( spep_0 + 110, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 112, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 114, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 116, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 118, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 120, 1, 2409.7, -6505.7 , 0 );
setMoveKey( spep_0 + 122, 1, 2409.1, -6505.1 , 0 );
setMoveKey( spep_0 + 124, 1, 2409.7, -6505.7 , 0 );
setMoveKey( spep_0 + 126, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 128, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 130, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 132, 1, 2409.5, -6508 , 0 );
setMoveKey( spep_0 + 134, 1, 2409.9, -6508.4 , 0 );
setMoveKey( spep_0 + 136, 1, 2410.3, -6508.8 , 0 );
setMoveKey( spep_0 + 138, 1, 2409.7, -6508.2 , 0 );
setMoveKey( spep_0 + 140, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 142, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 144, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 146, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 148, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 150, 1, 2409.5, -6507.2 , 0 );
setMoveKey( spep_0 + 152, 1, 2409.9, -6506.8 , 0 );
setMoveKey( spep_0 + 154, 1, 2410.3, -6506.3 , 0 );
setMoveKey( spep_0 + 156, 1, 2409.7, -6507 , 0 );
setMoveKey( spep_0 + 158, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 160, 1, 2409.7, -6508.2 , 0 );
setMoveKey( spep_0 + 162, 1, 2410.3, -6508.8 , 0 );
setMoveKey( spep_0 + 164, 1, 2409.7, -6508.2 , 0 );
setMoveKey( spep_0 + 166, 1, 2409.1, -6507.6 , 0 );
setMoveKey( spep_0 + 168, 1, 2409.5, -6508 , 0 );
setMoveKey( spep_0 + 170, 1, 2409.9, -6508.4 , 0 );
setMoveKey( spep_0 + 172, 1, 2410.3, -6508.8 , 0 );
]]
setScaleKey( spep_0 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 1, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 2, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 3, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 4, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 5, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 16, 1, 3.5, 3.5 );
--[[
setScaleKey( spep_0 + 58, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 60, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 62, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 64, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 66, 1, 5.83, 5.83 );
setScaleKey( spep_0 + 68, 1, 6.42, 6.42 );
setScaleKey( spep_0 + 70, 1, 7, 7 );
setScaleKey( spep_0 + 72, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 74, 1, 8.17, 8.17 );
setScaleKey( spep_0 + 76, 1, 8.75, 8.75 );
setScaleKey( spep_0 + 78, 1, 9.33, 9.33 );
setScaleKey( spep_0 + 80, 1, 9.92, 9.92 );
setScaleKey( spep_0 + 82, 1, 10.5, 10.5 );
setScaleKey( spep_0 + 84, 1, 11.08, 11.08 );
setScaleKey( spep_0 + 86, 1, 11.67, 11.67 );
setScaleKey( spep_0 + 88, 1, 12.25, 12.25 );
setScaleKey( spep_0 + 172, 1, 12.25, 12.25 );
]]
setRotateKey( spep_0 + 0, 1, 5 );
setRotateKey( spep_0 + 1, 1, 5 );
setRotateKey( spep_0 + 2, 1, 5 );
setRotateKey( spep_0 + 3, 1, 5 );
setRotateKey( spep_0 + 4, 1, 5 );
setRotateKey( spep_0 + 5, 1, 5 );
setRotateKey( spep_0 + 16, 1, 5 );

setAlphaKey( spep_0 + 0, 1, 255 );
setAlphaKey( spep_0 + 1, 1, 255 );
setAlphaKey( spep_0 + 2, 1, 255 );
setAlphaKey( spep_0 + 3, 1, 255 );
setAlphaKey( spep_0 + 4, 1, 255 );
setAlphaKey( spep_0 + 16, 1, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 70,  906, 102, 0x100, -1, 0, 0, -1.1 );
setEffShake( spep_0 + 70, shuchusen1, 102, 20 );
setEffMoveKey( spep_0 + 70, shuchusen1, 0, -1.1 , 0 );
setEffMoveKey( spep_0 + 172, shuchusen1, 0, -1.1 , 0 );

setEffScaleKey( spep_0 + 70, shuchusen1, 1.02, 1.08 );
setEffScaleKey( spep_0 + 172, shuchusen1, 1.02, 1.08 );

setEffRotateKey( spep_0 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 + 172, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 70, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 82, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 83, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 172, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+70  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+70  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +82, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +82,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +154,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +82, ctgogo, 0 );
setEffAlphaKey( spep_0 + 83, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84, ctgogo, 255 );
setEffAlphaKey( spep_0 + 148, ctgogo, 255 );
setEffAlphaKey( spep_0 + 150, ctgogo, 191 );
setEffAlphaKey( spep_0 + 152, ctgogo, 112 );
setEffAlphaKey( spep_0 + 154, ctgogo, 64 );

setEffRotateKey(  spep_0 +82,  ctgogo,  0);
setEffRotateKey(  spep_0 +154,  ctgogo,  0);

setEffScaleKey(  spep_0 +82,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +144,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +154,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 0, 44 );
playSe( spep_0 + 56, 8 );
playSe( spep_0 + 78, 1003 );
playSe( spep_0 + 82, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 176, 0,  0, 0, 0, 180 ); --くろ 背景

--集中線
entryFade( spep_0+166 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+174;
------------------------------------------------------
-- 敵にズームアップ
------------------------------------------------------
-- ** エフェクト等 ** --
lock_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lock_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 120, lock_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, lock_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 120, lock_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lock_f, 0 );
setEffRotateKey( spep_1 + 120, lock_f, 0 );
setEffAlphaKey( spep_1 + 0, lock_f, 255 );
setEffAlphaKey( spep_1 + 120, lock_f, 255 );

-- ** エフェクト等 ** --
lock_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lock_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 120, lock_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, lock_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 120, lock_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lock_b, 0 );
setEffRotateKey( spep_1 + 120, lock_b, 0 );
setEffAlphaKey( spep_1 + 0, lock_b, 255 );
setEffAlphaKey( spep_1 + 120, lock_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 116, 1, 0 );

changeAnime( spep_1 + 0, 1, 117 );

setMoveKey( spep_1 + 0, 1, 1.8, -6.2 , 0 );
setMoveKey( spep_1 + 2, 1, 1.9, -6.3 , 0 );
setMoveKey( spep_1 + 4, 1, 2, -6.6 , 0 );
setMoveKey( spep_1 + 6, 1, 2.1, -7 , 0 );
setMoveKey( spep_1 + 8, 1, 2.3, -7.6 , 0 );
setMoveKey( spep_1 + 10, 1, 2.5, -8.5 , 0 );
setMoveKey( spep_1 + 12, 1, 3.3, -11.1 , 0 );
setMoveKey( spep_1 + 14, 1, 4.4, -14.8 , 0 );
setMoveKey( spep_1 + 16, 1, 5.3, -17.8 , 0 );
setMoveKey( spep_1 + 18, 1, 6, -20.4 , 0 );
setMoveKey( spep_1 + 20, 1, 6.7, -22.5 , 0 );
setMoveKey( spep_1 + 22, 1, 7.2, -24.3 , 0 );
setMoveKey( spep_1 + 24, 1, 7.7, -25.9 , 0 );
setMoveKey( spep_1 + 26, 1, 8.1, -27.2 , 0 );
setMoveKey( spep_1 + 28, 1, 8.4, -28.3 , 0 );
setMoveKey( spep_1 + 30, 1, 8.6, -29.1 , 0 );
setMoveKey( spep_1 + 32, 1, 8.8, -29.8 , 0 );
setMoveKey( spep_1 + 34, 1, 9, -30.4 , 0 );
setMoveKey( spep_1 + 36, 1, 9.1, -30.8 , 0 );
setMoveKey( spep_1 + 38, 1, 9.2, -31.1 , 0 );
setMoveKey( spep_1 + 116, 1, 9.2, -31.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 2, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 4, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 6, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 8, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 10, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 12, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 14, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 18, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 20, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 22, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 24, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 28, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 30, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 32, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 34, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 36, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 38, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 116, 1, 0.81, 0.81 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 116, 1, 0 );

setAlphaKey( spep_1 + 0, 1, 255 );
setAlphaKey( spep_1 + 116, 1, 255 );

--SE
playSe( spep_1 + 0, 1202 );
se_1191 = playSe( spep_1 + 0, 1191 );
SEz=playSe( spep_1 + 0, 1240 );
playSe( spep_1 + 2, 1135 );
setSeVolume( spep_1 + 2, 1135, 40 );

stopSe( spep_1 + 41, se_1191, 37 );
stopSe( spep_1 + 78, SEz, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 120, 0,  0, 0, 0, 180 ); --くろ 背景

--次の準備
spep_2=spep_1+116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
--entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;
------------------------------------------------------
-- 気功砲
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, beam, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, beam, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam, 0 );
setEffRotateKey( spep_3 + 90, beam, 0 );
setEffAlphaKey( spep_3 + 0, beam, 255 );
setEffAlphaKey( spep_3 + 90, beam, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_3-3 + 10,  906, 78, 0x100, -1, 0, 0, 71.7 );
setEffShake( spep_3-3 + 10, shuchusen2, 78, 20 );
setEffMoveKey( spep_3-3 + 10, shuchusen2, 0, 71.7 , 0 );
setEffMoveKey( spep_3-3 + 88, shuchusen2, 0, 71.7 , 0 );

setEffScaleKey( spep_3-3 + 10, shuchusen2, 1.45, 1.45 );
setEffScaleKey( spep_3-3 + 88, shuchusen2, 1.45, 1.45 );

setEffRotateKey( spep_3-3 + 10, shuchusen2, 180 );
setEffRotateKey( spep_3-3 + 88, shuchusen2, 180 );

setEffAlphaKey( spep_3-3 + 10, shuchusen2, 255 );
setEffAlphaKey( spep_3-3 + 88, shuchusen2, 255 );

--SE
SE0=playSe( spep_3 + 0, 1025 );
SE1=playSe( spep_3 + 0, 1137 );
se_1193 = playSe( spep_3 + 0, 1193 );
setSeVolume( spep_3 + 0, 1193, 23 );
SE2=playSe( spep_3 + 0, 1161 );
setSeVolume( spep_3 + 0, 1161, 59 );
SE3=playSe( spep_3 + 0, 1182 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 92, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, SE3, 0 );
    stopSe( SP_dodge - 12, se_1193, 0 );

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

stopSe( spep_3 + 52, se_1193, 35 );

--集中線
entryFade( spep_3+82 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 180, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 180, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 180, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 180, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 30, 1, 0 );

setBlendColor(spep_4 + 0,1,2,0,0,0,1.0);
setBlendColor(spep_4 + 32,1,2,0,0,0,1.0);
setBlendColor(spep_4 + 34,1,2,0,0,0,0);

changeAnime( spep_4 + 0, 1, 108 );

setMoveKey( spep_4 + 0, 1, 11.8, -190.4 , 0 );
setMoveKey( spep_4 + 2, 1, 16.4, -187.7 , 0 );
setMoveKey( spep_4 + 4, 1, 11.8, -192.8 , 0 );
setMoveKey( spep_4 + 6, 1, 8.7, -190.2 , 0 );
setMoveKey( spep_4 + 8, 1, 11.8, -195.3 , 0 );
setMoveKey( spep_4 + 10, 1, 11.8, -194.2 , 0 );
setMoveKey( spep_4 + 12, 1, 8.7, -196.2 , 0 );
setMoveKey( spep_4 + 14, 1, 7.2, -199.7 , 0 );
setMoveKey( spep_4 + 16, 1, 10.3, -203.3 , 0 );
setMoveKey( spep_4 + 18, 1, 10.3, -205.3 , 0 );
setMoveKey( spep_4 + 20, 1, 7.2, -204.2 , 0 );
setMoveKey( spep_4 + 22, 1, 10.4, -210.3 , 0 );
setMoveKey( spep_4 + 24, 1, 10.4, -205.1 , 0 );
setMoveKey( spep_4 + 26, 1, 7.3, -209.2 , 0 );
setMoveKey( spep_4 + 28, 1, 18, -216.2 , 0 );
setMoveKey( spep_4 + 30, 1, 18.7, -212.5 , 0 );
--[[
setMoveKey( spep_4 + 32, 1, -14.3, -243 , 0 );
setMoveKey( spep_4 + 34, 1, 44, -191.4 , 0 );
setMoveKey( spep_4 + 36, 1, 30.7, -246.7 , 0 );
setMoveKey( spep_4 + 38, 1, -18.6, -190.9 , 0 );
setMoveKey( spep_4 + 40, 1, -5.2, -221.8 , 0 );
setMoveKey( spep_4 + 42, 1, 26.1, -206.1 , 0 );
setMoveKey( spep_4 + 44, 1, 6.9, -223.9 , 0 );
setMoveKey( spep_4 + 46, 1, 19.6, -210.6 , 0 );
setMoveKey( spep_4 + 48, 1, -2.4, -219.3 , 0 );
setMoveKey( spep_4 + 50, 1, 9.1, -210.5 , 0 );
setMoveKey( spep_4 + 52, 1, 17.8, -216.8 , 0 );
setMoveKey( spep_4 + 54, 1, 2.7, -208.1 , 0 );
setMoveKey( spep_4 + 56, 1, 19.7, -215.2 , 0 );
setMoveKey( spep_4 + 58, 1, 9.1, -208.1 , 0 );
setMoveKey( spep_4 + 60, 1, 17.6, -216.5 , 0 );
setMoveKey( spep_4 + 62, 1, 7.8, -208.1 , 0 );
setMoveKey( spep_4 + 64, 1, 14.6, -216.6 , 0 );
setMoveKey( spep_4 + 66, 1, 7.3, -209.5 , 0 );
setMoveKey( spep_4 + 68, 1, 14.5, -216.9 , 0 );
setMoveKey( spep_4 + 70, 1, 7.8, -206.5 , 0 );
setMoveKey( spep_4 + 72, 1, 11.7, -212.6 , 0 );
setMoveKey( spep_4 + 74, 1, 15.5, -218.7 , 0 );
setMoveKey( spep_4 + 76, 1, 7.8, -207.1 , 0 );
setMoveKey( spep_4 + 78, 1, 16.3, -219.5 , 0 );
setMoveKey( spep_4 + 80, 1, 18.6, -203.4 , 0 );
setMoveKey( spep_4 + 82, 1, 5.5, -218.4 , 0 );
setMoveKey( spep_4 + 84, 1, 4.7, -204.2 , 0 );
setMoveKey( spep_4 + 86, 1, 18.6, -216.6 , 0 );
setMoveKey( spep_4 + 88, 1, 16.7, -205.2 , 0 );
setMoveKey( spep_4 + 90, 1, 4, -209.9 , 0 );
setMoveKey( spep_4 + 92, 1, 12.4, -218.2 , 0 );
setMoveKey( spep_4 + 94, 1, 2.4, -215 , 0 );
setMoveKey( spep_4 + 96, 1, 17, -206.7 , 0 );
setMoveKey( spep_4 + 98, 1, 4.2, -206.7 , 0 );
setMoveKey( spep_4 + 100, 1, 19.3, -220.5 , 0 );
setMoveKey( spep_4 + 102, 1, 11, -208.3 , 0 );
setMoveKey( spep_4 + 104, 1, 3.4, -220.9 , 0 );
setMoveKey( spep_4 + 106, 1, 17.2, -204.2 , 0 );
setMoveKey( spep_4 + 108, 1, 7.2, -208.5 , 0 );
setMoveKey( spep_4 + 110, 1, 12.9, -219.9 , 0 );
setMoveKey( spep_4 + 112, 1, 15.9, -208.5 , 0 );
setMoveKey( spep_4 + 114, 1, 6.6, -212.6 , 0 );
setMoveKey( spep_4 + 116, 1, 10.3, -210.2 , 0 );
setMoveKey( spep_4 + 118, 1, 13.9, -207.8 , 0 );
setMoveKey( spep_4 + 120, 1, 17.6, -205.4 , 0 );
setMoveKey( spep_4 + 122, 1, 5, -217.8 , 0 );
setMoveKey( spep_4 + 124, 1, 7, -214.5 , 0 );
setMoveKey( spep_4 + 126, 1, 9, -211.1 , 0 );
setMoveKey( spep_4 + 128, 1, 11, -207.7 , 0 );
setMoveKey( spep_4 + 130, 1, 17.8, -219.7 , 0 );
setMoveKey( spep_4 + 132, 1, 11.7, -214.5 , 0 );
setMoveKey( spep_4 + 134, 1, 5.6, -209.2 , 0 );
setMoveKey( spep_4 + 136, 1, 11, -212.6 , 0 );
setMoveKey( spep_4 + 138, 1, 16.4, -215.9 , 0 );
setMoveKey( spep_4 + 140, 1, 13.1, -215.5 , 0 );
setMoveKey( spep_4 + 142, 1, 9.8, -215.1 , 0 );
setMoveKey( spep_4 + 144, 1, 6.5, -214.7 , 0 );
setMoveKey( spep_4 + 146, 1, 14.2, -209.6 , 0 );
setMoveKey( spep_4 + 148, 1, 10.7, -211.7 , 0 );
setMoveKey( spep_4 + 150, 1, 7.1, -213.8 , 0 );
setMoveKey( spep_4 + 152, 1, 10.7, -215.7 , 0 );
setMoveKey( spep_4 + 154, 1, 14.2, -217.6 , 0 );
setMoveKey( spep_4 + 156, 1, 10.6, -213.3 , 0 );
setMoveKey( spep_4 + 158, 1, 7.1, -209.1 , 0 );
setMoveKey( spep_4 + 160, 1, 9, -212.2 , 0 );
setMoveKey( spep_4 + 162, 1, 11, -215.3 , 0 );
setMoveKey( spep_4 + 164, 1, 12.9, -218.4 , 0 );
setMoveKey( spep_4 + 166, 1, 6.5, -212.1 , 0 );
setMoveKey( spep_4 + 168, 1, 11.2, -212.6 , 0 );
setMoveKey( spep_4 + 170, 1, 15.9, -213.1 , 0 );
setMoveKey( spep_4 + 172, 1, 14.3, -214.4 , 0 );
setMoveKey( spep_4 + 174, 1, 12.8, -215.8 , 0 );
setMoveKey( spep_4 + 176, 1, 13.5, -216.7 , 0 );
setMoveKey( spep_4 + 178, 1, 14.2, -217.6 , 0 );
]]--
setScaleKey( spep_4 + 0, 1, 0.52, 0.52 );
setScaleKey( spep_4 + 30, 1, 0.52, 0.52 );

setRotateKey( spep_4 + 0, 1, 63 );
setRotateKey( spep_4 + 30, 1, 63 );

setAlphaKey( spep_4 + 0, 1, 255 );
setAlphaKey( spep_4 + 2, 1, 238 );
setAlphaKey( spep_4 + 4, 1, 221 );
setAlphaKey( spep_4 + 6, 1, 204 );
setAlphaKey( spep_4 + 8, 1, 187 );
setAlphaKey( spep_4 + 10, 1, 170 );
setAlphaKey( spep_4 + 12, 1, 153 );
setAlphaKey( spep_4 + 14, 1, 136 );
setAlphaKey( spep_4 + 16, 1, 119 );
setAlphaKey( spep_4 + 18, 1, 102 );
setAlphaKey( spep_4 + 20, 1, 85 );
setAlphaKey( spep_4 + 22, 1, 68 );
setAlphaKey( spep_4 + 24, 1, 51 );
setAlphaKey( spep_4 + 26, 1, 34 );
setAlphaKey( spep_4 + 28, 1, 17 );
setAlphaKey( spep_4 + 30, 1, 0 );
setAlphaKey( spep_4 + 32, 1, 0 );
setAlphaKey( spep_4 + 34, 1, 255 );

--SE
playSe( spep_4 + 28, 1159 );
playSe( spep_4 + 28, 1023 );
setSeVolume( spep_4 + 28, 1023, 80 );
playSe( spep_4 + 42, 1188 );
setSeVolume( spep_4 + 42, 1188, 63 );
playSe( spep_4 + 46, 1024 );
setSeVolume( spep_4 + 46, 1024, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 40 );
endPhase( spep_4 + 170 );
end