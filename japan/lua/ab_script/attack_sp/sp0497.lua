--超サイヤ人3孫悟空(ゼノ)_瞬間移動かめはめ波


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
SE_11 = 1015; --気弾発射
SE_12 = 1018; --高速ダッシュ
SE_13 = 1020; --気弾溜め
SE_14 = 1054; --割れる音
SE_15 = 43; --瞬間移動
SE_16 = 1003; --バッ

--味方側
SP_01 = 152461;--正面構え&瞬間移動
SP_02 = 152462;--出現
SP_03 = 152463;--発射
SP_04 = 190000;--ギャン
SP_05 = 1569;--地球から波動砲

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setMoveKey(   0,   1,    0, -2000, 0);
setMoveKey(   1,   1,    0, -2000 , 0);
setMoveKey(   2,   1,    0, -2000 , 0);
setMoveKey(   3,   1,    0, -2000 , 0);
setMoveKey(   4,   1,    0, -2000 , 0);
setMoveKey(   5,   1,    0, -2000 , 0);
setMoveKey(   6,   1,    0, -2000 , 0);

setScaleKey(   0,   1, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   2,   1, 1.6, 1.6);
setScaleKey(   3,   1, 1.6, 1.6);
setScaleKey(   4,   1, 1.6, 1.6);
setScaleKey(   5,   1, 1.6, 1.6);
setScaleKey(   6,   1, 1.6, 1.6);

setRotateKey(   0,   1, 0);
setRotateKey(   1,   1, 0);
setRotateKey(   2,   1, 0);
setRotateKey(   3,   1, 0);
setRotateKey(   4,   1, 0);
setRotateKey(   5,   1, 0);
setRotateKey(   6,   1, 0);

setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -2000,   0);
setMoveKey(   1,   0,    0, -2000,   0);
setMoveKey(   2,   0,    0, -2000,   0);
setMoveKey(   3,   0,    0, -2000,   0);
setMoveKey(   4,   0,    0, -2000,   0);
setMoveKey(   5,   0,    0, -2000,   0);
setMoveKey(   6,   0,    0, -2000,   0);

setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   2,   0, 1.6, 1.6);
setScaleKey(   3,   0, 1.6, 1.6);
setScaleKey(   4,   0, 1.6, 1.6);
setScaleKey(   5,   0, 1.6, 1.6);
setScaleKey(   6,   0, 1.6, 1.6);

setRotateKey(   0,   0, 0);
setRotateKey(   1,   0, 0);
setRotateKey(   2,   0, 0);
setRotateKey(   3,   0, 0);
setRotateKey(   4,   0, 0);
setRotateKey(   5,   0, 0);
setRotateKey(   6,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 正面構え&正面構え2+瞬間移動開始
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

charge = entryEffect( spep_0, SP_01, 0x100, -1, 0, 0, 0);
setEffScaleKey(  spep_0,  charge,  1.0, 1.0);
setEffMoveKey(  spep_0,  charge,  0,  0);
setEffRotateKey(  spep_0,  charge,  0);
setEffAlphaKey(  spep_0,  charge,  255);

setEffScaleKey(  spep_0+240,  charge,  1.0, 1.0);
setEffMoveKey(  spep_0+240,  charge,  0,  0);
setEffRotateKey(  spep_0+240,  charge,  0);
setEffAlphaKey(  spep_0+240,  charge,  255);

--背景暗め
entryFadeBg( spep_0, 0, 50, 0, 10, 10, 10, 90);          -- ベース暗め　背景
entryFadeBg( spep_0+46, 0, 194, 0, 10, 10, 10, 230);          -- ベース暗め　背景


--集中線
shuchusen = entryEffectLife( spep_0+46, 906, 194, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake(spep_0+46,shuchusen,194,15);

setEffScaleKey( spep_0, shuchusen, 1.2, 1.5);
setEffMoveKey(  spep_0,  shuchusen,  0,  0);
setEffRotateKey( spep_0, shuchusen, 0);
setEffAlphaKey( spep_0, shuchusen, 255);

setEffScaleKey( spep_0+240, shuchusen, 1.2, 1.5);
setEffMoveKey(  spep_0+240,  shuchusen,  0,  0);
setEffRotateKey( spep_0+240, shuchusen, 0);
setEffAlphaKey( spep_0+240, shuchusen, 255);

--薄い白フラッシュ
entryFade( spep_0+46, 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 160);     -- white fade

--バッのSE
playSe( spep_0+48, SE_16);

--書き文字(バッ)
ctBa = entryEffectLife( spep_0 + 48,  10022, 26, 0x100, -1, 0, -84.8, 382 );
setEffMoveKey( spep_0 + 48, ctBa, -84.8, 382 , 0 );
setEffMoveKey( spep_0 + 54, ctBa, -92.1, 386.6 , 0 );
setEffMoveKey( spep_0 + 56, ctBa, -84.8, 382 , 0 );
setEffMoveKey( spep_0 + 58, ctBa, -93.6, 387.3 , 0 );
setEffMoveKey( spep_0 + 60, ctBa, -84.9, 382 , 0 );
setEffMoveKey( spep_0 + 62, ctBa, -84.9, 382 , 0 );
setEffMoveKey( spep_0 + 64, ctBa, -91.3, 386.6 , 0 );
setEffMoveKey( spep_0 + 66, ctBa, -84.9, 382 , 0 );
setEffMoveKey( spep_0 + 68, ctBa, -91.2, 386.7 , 0 );
setEffMoveKey( spep_0 + 70, ctBa, -91.2, 386.7 , 0 );
setEffMoveKey( spep_0 + 72, ctBa, -84.9, 382 , 0 );
setEffMoveKey( spep_0 + 74, ctBa, -84.9, 382 , 0 );

setEffScaleKey( spep_0 + 48, ctBa, 1.21, 1.21 );
setEffScaleKey( spep_0 + 54, ctBa, 1.8, 1.8 );
setEffScaleKey( spep_0 + 56, ctBa, 2.38, 2.38 );
setEffScaleKey( spep_0 + 58, ctBa, 2.13, 2.13 );
setEffScaleKey( spep_0 + 60, ctBa, 1.88, 1.88 );
setEffScaleKey( spep_0 + 62, ctBa, 1.63, 1.63 );
setEffScaleKey( spep_0 + 66, ctBa, 1.63, 1.63 );
setEffScaleKey( spep_0 + 68, ctBa, 1.62, 1.62 );
setEffScaleKey( spep_0 + 70, ctBa, 1.62, 1.62 );
setEffScaleKey( spep_0 + 72, ctBa, 1.63, 1.63 );
setEffScaleKey( spep_0 + 74, ctBa, 1.63, 1.63 );

setEffRotateKey( spep_0 + 48, ctBa, -5.8 );
setEffRotateKey( spep_0 + 54, ctBa, -9.5 );
setEffRotateKey( spep_0 + 56, ctBa, -13.2 );
setEffRotateKey( spep_0 + 58, ctBa, -10.7 );
setEffRotateKey( spep_0 + 60, ctBa, -8.3 );
setEffRotateKey( spep_0 + 62, ctBa, -5.8 );
setEffRotateKey( spep_0 + 74, ctBa, -5.8 );

setEffAlphaKey( spep_0 + 48, ctBa, 255 );
setEffAlphaKey( spep_0 + 70, ctBa, 255 );
setEffAlphaKey( spep_0 + 72, ctBa, 128 );
setEffAlphaKey( spep_0 + 74, ctBa, 0 );

--顔カットイン&文字
speff = entryEffect( spep_0+84,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect( spep_0+84,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff1, 4, 5); 

--書き文字(ゴゴゴゴゴ)
ctGo = entryEffectLife( spep_0+98, 190006, 70, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_0+98, ctGo, 70, 8);

setEffScaleKey( spep_0+98, ctGo, 0.8, 0.8);
setEffMoveKey(  spep_0+98,  ctGo, 170, 510);
setEffRotateKey(  spep_0+98,  ctGo,  0);
setEffAlphaKey(  spep_0+98,  ctGo,  255);

setEffScaleKey( spep_0+160, ctGo, 0.8, 0.8);

setEffAlphaKey(  spep_0+160,  ctGo,  255);

setEffScaleKey( spep_0+168, ctGo, 1.3, 1.3);
setEffMoveKey(  spep_0+168,  ctGo, 170, 510);
setEffRotateKey(  spep_0+168,  ctGo,  0);
setEffAlphaKey(  spep_0+168,  ctGo,  0);

--カットインSE
playSe( spep_0+98, SE_04);

--かめはめ波チャージ

playSe( spep_0+74, SE_02);
playSe( spep_0+94, SE_02);
playSe( spep_0+114, SE_02);
playSe( spep_0+134, SE_02);
playSe( spep_0+154, SE_02);
playSe( spep_0+174, SE_02);
playSe( spep_0+194, SE_02);

--瞬間移動SE
playSe( spep_0+210, SE_15);

--書き文字(シュンッ)
ctShun = entryEffectLife( spep_0 + 210,  10011, 20, 0x100, -1, 0, -0.2, 360.4 );
setEffMoveKey( spep_0 + 210, ctShun, -0.2, 360.4 , 0 );
setEffMoveKey( spep_0 + 212, ctShun, 0, 360.5 , 0 );
setEffMoveKey( spep_0 + 214, ctShun, 0, 360.5 , 0 );
setEffMoveKey( spep_0 + 216, ctShun, -0.1, 360.5 , 0 );
setEffMoveKey( spep_0 + 220, ctShun, -0.1, 360.5 , 0 );
setEffMoveKey( spep_0 + 222, ctShun, -0.1, 360.4 , 0 );
setEffMoveKey( spep_0 + 224, ctShun, -0.1, 360.4 , 0 );
setEffMoveKey( spep_0 + 226, ctShun, -0.2, 360.4 , 0 );
setEffMoveKey( spep_0 + 228, ctShun, -0.2, 360.4 , 0 );
setEffMoveKey( spep_0 + 230, ctShun, -0.2, 360.3 , 0 );

setEffScaleKey( spep_0 + 210, ctShun, 1.92, 1.92 );
setEffScaleKey( spep_0 + 212, ctShun, 3.24, 3.24 );
setEffScaleKey( spep_0 + 214, ctShun, 2.87, 2.87 );
setEffScaleKey( spep_0 + 216, ctShun, 2.49, 2.49 );
setEffScaleKey( spep_0 + 218, ctShun, 2.12, 2.12 );
setEffScaleKey( spep_0 + 220, ctShun, 2.1, 2.1 );
setEffScaleKey( spep_0 + 222, ctShun, 2.07, 2.07 );
setEffScaleKey( spep_0 + 224, ctShun, 2.05, 2.05 );
setEffScaleKey( spep_0 + 226, ctShun, 2.03, 2.03 );
setEffScaleKey( spep_0 + 228, ctShun, 2, 2 );
setEffScaleKey( spep_0 + 230, ctShun, 1.98, 1.98 );

setEffRotateKey( spep_0 + 210, ctShun, -7.8 );
setEffRotateKey( spep_0 + 230, ctShun, -7.8 );

setEffAlphaKey( spep_0 + 210, ctShun, 255 );
setEffAlphaKey( spep_0 + 218, ctShun, 255 );
setEffAlphaKey( spep_0 + 220, ctShun, 213 );
setEffAlphaKey( spep_0 + 222, ctShun, 170 );
setEffAlphaKey( spep_0 + 224, ctShun, 128 );
setEffAlphaKey( spep_0 + 226, ctShun, 85 );
setEffAlphaKey( spep_0 + 228, ctShun, 42 );
setEffAlphaKey( spep_0 + 230, ctShun, 0 );

--白フェード
entryFade( spep_0+232, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1 = spep_0 + 240;

------------------------------------------------------
-- 敵の前に出現(70F)
------------------------------------------------------

entryFadeBg( spep_1, 0, 70, 0, 10, 10, 10, 230);          -- ベース暗め　背景

--瞬間移動で現れる
warpOut = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0);
setEffScaleKey(  spep_1,  warpOut,  1.0, 1.0);
setEffMoveKey(  spep_1,  warpOut,  0,  0);
setEffRotateKey(  spep_1,  warpOut,  0);
setEffAlphaKey(  spep_1,  warpOut,  255);

setEffScaleKey(  spep_1+70,  warpOut,  1.0, 1.0);
setEffMoveKey(  spep_1+70,  warpOut,  0,  0);
setEffRotateKey(  spep_1+70,  warpOut,  0);
setEffAlphaKey(  spep_1+70,  warpOut,  255);

--驚く敵
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 19.4, 17.7 , 0 );
setMoveKey( spep_1 + 2, 1, 19.1, 32.8 , 0 );
setMoveKey( spep_1 + 4, 1, 18.9, 47.7 , 0 );
setMoveKey( spep_1 + 6, 1, 18.6, 62.3 , 0 );
setMoveKey( spep_1 + 8, 1, 18.4, 76.7 , 0 );
setMoveKey( spep_1 + 10, 1, 18.1, 90.8 , 0 );
setMoveKey( spep_1 + 12, 1, 17.9, 105.1 , 0 );
setMoveKey( spep_1 + 14, 1, 17.8, 119.1 , 0 );
setMoveKey( spep_1 + 16, 1, 17.6, 132.9 , 0 );
setMoveKey( spep_1 + 18, 1, 17.6, 137 , 0 );
setMoveKey( spep_1 + 20, 1, 15.5, 135.2 , 0 );
setMoveKey( spep_1 + 22, 1, 17.5, 141.4 , 0 );
setMoveKey( spep_1 + 24, 1, 13.4, 141.6 , 0 );
setMoveKey( spep_1 + 26, 1, 17.4, 145.8 , 0 );
setMoveKey( spep_1 + 28, 1, 15.3, 146 , 0 );
setMoveKey( spep_1 + 30, 1, 17.3, 150.2 , 0 );
setMoveKey( spep_1 + 32, 1, 13.2, 148.4 , 0 );
setMoveKey( spep_1 + 34, 1, 17.2, 154.6 , 0 );
setMoveKey( spep_1 + 36, 1, 15.1, 154.8 , 0 );
setMoveKey( spep_1 + 38, 1, 17.1, 159 , 0 );
setMoveKey( spep_1 + 40, 1, 13, 157.2 , 0 );
setMoveKey( spep_1 + 42, 1, 17, 163.3 , 0 );
setMoveKey( spep_1 + 44, 1, 14.9, 161.5 , 0 );
setMoveKey( spep_1 + 46, 1, 16.9, 167.7 , 0 );
setMoveKey( spep_1 + 48, 1, 12.8, 165.8 , 0 );
setMoveKey( spep_1 + 50, 1, 16.8, 172 , 0 );
setMoveKey( spep_1 + 52, 1, 14.7, 172.2 , 0 );
setMoveKey( spep_1 + 54, 1, 16.7, 176.3 , 0 );
setMoveKey( spep_1 + 56, 1, 12.6, 174.4 , 0 );
setMoveKey( spep_1 + 58, 1, 16.6, 180.6 , 0 );
setMoveKey( spep_1 + 60, 1, 14.5, 178.7 , 0 );
setMoveKey( spep_1 + 62, 1, 16.5, 184.9 , 0 );
setMoveKey( spep_1 + 64, 1, 12.4, 185 , 0 );
setMoveKey( spep_1 + 66, 1, 16.4, 189.1 , 0 );
setMoveKey( spep_1 + 68, 1, 14.3, 189.2 , 0 );
setMoveKey( spep_1 + 70, 1, 14.3, 189.2 , 0 );

setScaleKey( spep_1 + 0, 1, 2.67, 2.67 );
setScaleKey( spep_1 + 2, 1, 2.58, 2.58 );
setScaleKey( spep_1 + 4, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 6, 1, 2.41, 2.41 );
setScaleKey( spep_1 + 8, 1, 2.33, 2.33 );
setScaleKey( spep_1 + 10, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 12, 1, 2.17, 2.17 );
setScaleKey( spep_1 + 14, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 18, 1, 2, 2 );
setScaleKey( spep_1 + 20, 1, 2, 2 );
setScaleKey( spep_1 + 22, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 26, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 28, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 30, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 32, 1, 1.96, 1.96 );
setScaleKey( spep_1 + 34, 1, 1.96, 1.96 );
setScaleKey( spep_1 + 36, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 38, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 40, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 42, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 44, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 46, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 48, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 50, 1, 1.91, 1.91 );
setScaleKey( spep_1 + 52, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 54, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 56, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 58, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 60, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 62, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 64, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 66, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 70, 1, 1.86, 1.86 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 70, 1, 0 );

setDisp( spep_1 + 70, 1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake(spep_1,shuchusen2,70,15);

setEffScaleKey( spep_1, shuchusen2, 1.4, 1.9);
setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffRotateKey( spep_1, shuchusen2, 0);
setEffAlphaKey( spep_1, shuchusen2, 255);

setEffScaleKey( spep_1+70, shuchusen2, 1.4, 1.9);
setEffMoveKey(  spep_1+70,  shuchusen2,  0,  0);
setEffRotateKey( spep_1+70, shuchusen2, 0);
setEffAlphaKey( spep_1+70, shuchusen2, 255);

--書き文字(！？)
ctExQ = entryEffectLife( spep_1 + 24,  10001, 34, 0x100, -1, 0, -98, 402.6 );
setEffMoveKey( spep_1 + 24, ctExQ, -98, 402.6 , 0 );
setEffMoveKey( spep_1 + 26, ctExQ, -103.9, 407.7 , 0 );
setEffMoveKey( spep_1 + 28, ctExQ, -98.7, 402.5 , 0 );
setEffMoveKey( spep_1 + 30, ctExQ, -104.1, 407.9 , 0 );
setEffMoveKey( spep_1 + 32, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 34, ctExQ, -102.7, 406.9 , 0 );
setEffMoveKey( spep_1 + 36, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 38, ctExQ, -102.7, 406.9 , 0 );
setEffMoveKey( spep_1 + 40, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 42, ctExQ, -102.7, 406.9 , 0 );
setEffMoveKey( spep_1 + 44, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 46, ctExQ, -102.7, 406.9 , 0 );
setEffMoveKey( spep_1 + 48, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 50, ctExQ, -102.4, 406.6 , 0 );
setEffMoveKey( spep_1 + 52, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 54, ctExQ, -102.1, 406.4 , 0 );
setEffMoveKey( spep_1 + 56, ctExQ, -98, 402.6 , 0 );
setEffMoveKey( spep_1 + 58, ctExQ, -98, 402.6 , 0 );

setEffScaleKey( spep_1 + 24, ctExQ, 2.06, 2.06 );
setEffScaleKey( spep_1 + 26, ctExQ, 2.73, 2.73 );
setEffScaleKey( spep_1 + 28, ctExQ, 3.4, 3.4 );
setEffScaleKey( spep_1 + 30, ctExQ, 2.84, 2.84 );
setEffScaleKey( spep_1 + 32, ctExQ, 2.29, 2.29 );
setEffScaleKey( spep_1 + 46, ctExQ, 2.29, 2.29 );
setEffScaleKey( spep_1 + 48, ctExQ, 2.22, 2.22 );
setEffScaleKey( spep_1 + 50, ctExQ, 2.16, 2.16 );
setEffScaleKey( spep_1 + 52, ctExQ, 2.09, 2.09 );
setEffScaleKey( spep_1 + 54, ctExQ, 2.03, 2.03 );
setEffScaleKey( spep_1 + 56, ctExQ, 1.96, 1.96 );
setEffScaleKey( spep_1 + 58, ctExQ, 1.9, 1.9 );

setEffRotateKey( spep_1 + 24, ctExQ, -11.5 );
setEffRotateKey( spep_1 + 58, ctExQ, -11.5 );

setEffAlphaKey( spep_1 + 24, ctExQ, 255 );
setEffAlphaKey( spep_1 + 46, ctExQ, 255 );
setEffAlphaKey( spep_1 + 48, ctExQ, 213 );
setEffAlphaKey( spep_1 + 50, ctExQ, 170 );
setEffAlphaKey( spep_1 + 52, ctExQ, 128 );
setEffAlphaKey( spep_1 + 54, ctExQ, 85 );
setEffAlphaKey( spep_1 + 56, ctExQ, 42 );
setEffAlphaKey( spep_1 + 58, ctExQ, 0 );

--瞬間移動SE
playSe( spep_1+20, SE_15);

--書き文字(シュンッ)
ctShun2 = entryEffectLife( spep_1 + 20,  10011, 24, 0x100, -1, 0, 156.9, 135.1 );
setEffMoveKey( spep_1 + 20, ctShun2, 156.9, 135.1 , 0 );
setEffMoveKey( spep_1 + 36, ctShun2, 156.9, 135.1 , 0 );
setEffMoveKey( spep_1 + 38, ctShun2, 156.8, 135.1 , 0 );
setEffMoveKey( spep_1 + 40, ctShun2, 156.8, 135 , 0 );
setEffMoveKey( spep_1 + 44, ctShun2, 156.8, 135 , 0 );

setEffScaleKey( spep_1 + 20, ctShun2, 1.33, 1.33 );
setEffScaleKey( spep_1 + 22, ctShun2, 2.24, 2.24 );
setEffScaleKey( spep_1 + 24, ctShun2, 2.09, 2.09 );
setEffScaleKey( spep_1 + 26, ctShun2, 1.93, 1.93 );
setEffScaleKey( spep_1 + 28, ctShun2, 1.78, 1.78 );
setEffScaleKey( spep_1 + 30, ctShun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 32, ctShun2, 1.47, 1.47 );
setEffScaleKey( spep_1 + 34, ctShun2, 1.45, 1.45 );
setEffScaleKey( spep_1 + 36, ctShun2, 1.44, 1.44 );
setEffScaleKey( spep_1 + 38, ctShun2, 1.42, 1.42 );
setEffScaleKey( spep_1 + 40, ctShun2, 1.4, 1.4 );
setEffScaleKey( spep_1 + 42, ctShun2, 1.39, 1.39 );
setEffScaleKey( spep_1 + 44, ctShun2, 1.37, 1.37 );

setEffRotateKey( spep_1 + 20, ctShun2, 27.7 );
setEffRotateKey( spep_1 + 44, ctShun2, 27.7 );

setEffAlphaKey( spep_1 + 20, ctShun2, 255 );
setEffAlphaKey( spep_1 + 32, ctShun2, 255 );
setEffAlphaKey( spep_1 + 34, ctShun2, 213 );
setEffAlphaKey( spep_1 + 36, ctShun2, 170 );
setEffAlphaKey( spep_1 + 38, ctShun2, 128 );
setEffAlphaKey( spep_1 + 40, ctShun2, 85 );
setEffAlphaKey( spep_1 + 42, ctShun2, 42 );
setEffAlphaKey( spep_1 + 44, ctShun2, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 瞬間移動の続き
------------------------------------------------------

--かめはめ波溜めSE
playSe( spep_1+40, SE_02);
playSe( spep_1+60, SE_02);

--白フラッシュ
entryFade( spep_1+62, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1 + 70;

------------------------------------------------------
-- カードカットイン
------------------------------------------------------

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                             -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake(spep_2,shuchusen3,90,15);

setEffScaleKey( spep_2, shuchusen3, 1.5, 1.5);
setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
setEffRotateKey( spep_2, shuchusen3, 0);
setEffAlphaKey( spep_2, shuchusen3, 255);

setEffScaleKey( spep_2+90, shuchusen3, 1.5, 1.5);
setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
setEffRotateKey( spep_2+90, shuchusen3, 0);
setEffAlphaKey( spep_2+90, shuchusen3, 255);

playSe( spep_2, SE_05);

--白フェードが入る--
entryFade( spep_2+84, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2 + 90;

------------------------------------------------------
-- 正面かめはめ波(100F)
------------------------------------------------------

entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 230);          -- ベース暗め　背景

--発射SE
playSe( spep_3+10, SE_07);

--かめはめ波を発射
shoot = entryEffect( spep_3+2, SP_03, 0x100, -1, 0, 0, 0);   -- ef_002急上昇
setEffScaleKey(  spep_3+2,  shoot,  1.0, 1.0);
setEffMoveKey(  spep_3+2,  shoot,  0,  0);
setEffRotateKey(  spep_3+2,  shoot,  0);
setEffAlphaKey(  spep_3+2,  shoot,  255);

setEffScaleKey(  spep_3+100,  shoot,  1.0, 1.0);
setEffMoveKey(  spep_3+100,  shoot,  0,  0);
setEffRotateKey(  spep_3+100,  shoot,  0);
setEffAlphaKey(  spep_3+100,  shoot,  255);

setEffScaleKey(  spep_3+102,  shoot,  1.0, 1.0);
setEffMoveKey(  spep_3+102,  shoot,  0,  0);
setEffRotateKey(  spep_3+102,  shoot,  0);
setEffAlphaKey(  spep_3+102,  shoot,  0);

--書き文字(ズオッ)
ctZuo = entryEffectLife( spep_3 + 8,  10012, 72, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_3 + 8, ctZuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3 + 10, ctZuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_3 + 12, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 14, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 16, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 18, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 20, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 22, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 24, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 26, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 28, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 30, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 32, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 34, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 36, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 38, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 40, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 42, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 44, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 46, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 48, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 50, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 52, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 54, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 56, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 58, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 60, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 62, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 64, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 66, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 68, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 70, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 72, ctZuo, 152.3, 366.3 , 0 );
setEffMoveKey( spep_3 + 74, ctZuo, 192.3, 342.3 , 0 );
setEffMoveKey( spep_3 + 76, ctZuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_3 + 78, ctZuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_3 + 80, ctZuo, 250.3, 332.4 , 0 );

setEffScaleKey( spep_3 + 8, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_3 + 10, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_3 + 12, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 70, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 72, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_3 + 74, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_3 + 76, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_3 + 78, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_3 + 80, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_3 + 8, ctZuo, 27.2 );
setEffRotateKey( spep_3 + 80, ctZuo, 27.2 );

setEffAlphaKey( spep_3 + 8, ctZuo, 255 );
setEffAlphaKey( spep_3 + 70, ctZuo, 255 );
setEffAlphaKey( spep_3 + 72, ctZuo, 204 );
setEffAlphaKey( spep_3 + 74, ctZuo, 153 );
setEffAlphaKey( spep_3 + 76, ctZuo, 102 );
setEffAlphaKey( spep_3 + 78, ctZuo, 51 );
setEffAlphaKey( spep_3 + 80, ctZuo, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake(spep_3,shuchusen4,100,15);

setEffScaleKey( spep_3, shuchusen4, 1.3, 1.9);
setEffMoveKey(  spep_3,  shuchusen4,  0,  0);
setEffRotateKey( spep_3, shuchusen4, 0);
setEffAlphaKey( spep_3, shuchusen4, 255);

setEffScaleKey( spep_3+100, shuchusen4, 1.3, 1.9);
setEffMoveKey(  spep_3+100,  shuchusen4,  0,  0);
setEffRotateKey( spep_3+100, shuchusen4, 0);
setEffAlphaKey( spep_3+100, shuchusen4, 255);

--敵
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, -65, 1046 , 0 );
setMoveKey( spep_3 + 2, 1, -62.5, 968.6 , 0 );
setMoveKey( spep_3 + 4, 1, -50.4, 880.9 , 0 );
setMoveKey( spep_3 + 6, 1, -48.7, 766.9 , 0 );
setMoveKey( spep_3 + 8, 1, -29.4, 642.5 , 0 );
setMoveKey( spep_3 + 10, 1, -20.4, 487.8 , 0 );
setMoveKey( spep_3 + 12, 1, -1.9, 330.7 , 0 );
setMoveKey( spep_3 + 14, 1, 10.3, 139.3 , 0 );
setMoveKey( spep_3 + 16, 1, 14.2, 146.3 , 0 );
setMoveKey( spep_3 + 18, 1, 6.1, 141.3 , 0 );
setMoveKey( spep_3 + 20, 1, 14, 144.3 , 0 );
setMoveKey( spep_3 + 22, 1, 9.9, 135.3 , 0 );
setMoveKey( spep_3 + 24, 1, 13.8, 142.3 , 0 );
setMoveKey( spep_3 + 26, 1, 5.7, 133.3 , 0 );
setMoveKey( spep_3 + 28, 1, 13.6, 140.4 , 0 );
setMoveKey( spep_3 + 30, 1, 9.5, 135.4 , 0 );
setMoveKey( spep_3 + 32, 1, 13.4, 138.4 , 0 );
setMoveKey( spep_3 + 34, 1, 9.3, 133.4 , 0 );
setMoveKey( spep_3 + 36, 1, 13.3, 136.4 , 0 );
setMoveKey( spep_3 + 38, 1, 5.2, 131.4 , 0 );
setMoveKey( spep_3 + 40, 1, 13.1, 134.4 , 0 );
setMoveKey( spep_3 + 42, 1, 9, 125.4 , 0 );
setMoveKey( spep_3 + 44, 1, 12.9, 132.4 , 0 );
setMoveKey( spep_3 + 46, 1, 4.8, 123.5 , 0 );
setMoveKey( spep_3 + 48, 1, 12.7, 130.5 , 0 );
setMoveKey( spep_3 + 50, 1, 8.6, 125.5 , 0 );
setMoveKey( spep_3 + 52, 1, 12.5, 128.5 , 0 );
setMoveKey( spep_3 + 54, 1, 4.4, 119.5 , 0 );
setMoveKey( spep_3 + 56, 1, 12.3, 126.5 , 0 );
setMoveKey( spep_3 + 58, 1, 8.2, 121.5 , 0 );
setMoveKey( spep_3 + 60, 1, 12.1, 124.5 , 0 );
setMoveKey( spep_3 + 62, 1, 4, 115.5 , 0 );
setMoveKey( spep_3 + 64, 1, 11.9, 122.6 , 0 );
setMoveKey( spep_3 + 66, 1, 7.8, 117.6 , 0 );
setMoveKey( spep_3 + 68, 1, 11.7, 120.6 , 0 );
setMoveKey( spep_3 + 70, 1, 3.6, 111.6 , 0 );
setMoveKey( spep_3 + 72, 1, 11.5, 118.6 , 0 );
setMoveKey( spep_3 + 74, 1, 7.4, 109.6 , 0 );
setMoveKey( spep_3 + 76, 1, 11.3, 116.6 , 0 );
setMoveKey( spep_3 + 78, 1, 3.3, 103.6 , 0 );
setMoveKey( spep_3 + 80, 1, 11.2, 114.6 , 0 );
setMoveKey( spep_3 + 82, 1, 7.1, 105.7 , 0 );
setMoveKey( spep_3 + 84, 1, 11, 112.7 , 0 );
setMoveKey( spep_3 + 86, 1, 2.9, 107.7 , 0 );
setMoveKey( spep_3 + 88, 1, 10.8, 110.7 , 0 );
setMoveKey( spep_3 + 90, 1, 6.7, 101.7 , 0 );
setMoveKey( spep_3 + 92, 1, 10.6, 108.7 , 0 );
setMoveKey( spep_3 + 94, 1, 2.5, 99.7 , 0 );
setMoveKey( spep_3 + 96, 1, 10.4, 106.7 , 0 );
setMoveKey( spep_3 + 98, 1, 6.3, 97.7 , 0 );
setMoveKey( spep_3 + 100, 1, 6.3, 97.7 , 0 );

setScaleKey( spep_3 + 0, 1, 6.47, 6.47 );
setScaleKey( spep_3 + 2, 1, 6.08, 6.08 );
setScaleKey( spep_3 + 4, 1, 5.6, 5.6 );
setScaleKey( spep_3 + 6, 1, 5.01, 5.01 );
setScaleKey( spep_3 + 8, 1, 4.33, 4.33 );
setScaleKey( spep_3 + 10, 1, 3.56, 3.56 );
setScaleKey( spep_3 + 12, 1, 2.68, 2.68 );
setScaleKey( spep_3 + 14, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 16, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 18, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 22, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 24, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 26, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 28, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 30, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 32, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 36, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 38, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 42, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 44, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 46, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 48, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 50, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 54, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 56, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 58, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 62, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 64, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 66, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 68, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 70, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 72, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 74, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 78, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 80, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 82, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 84, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 86, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 88, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 90, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 92, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 94, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 96, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 98, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 100, 1, 1.26, 1.26 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 100, 1, 0 );

setDisp( spep_3 + 90, 1, 0 );

--白フェード
entryFade( spep_3+90, 4, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3 + 100;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 230);          -- ベース暗め　背景

--発射SE
playSe( spep_4, SE_06);

gyan = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0);   -- ef_002急上昇
setEffScaleKey(  spep_4,  gyan,  1.0, 1.0);
setEffMoveKey(  spep_4,  gyan,  0,  0);
setEffRotateKey(  spep_4,  gyan,  0);
setEffAlphaKey(  spep_4,  gyan,  255);

setEffScaleKey(  spep_4+60,  gyan,  1.0, 1.0);
setEffMoveKey(  spep_4+60,  gyan,  0,  0);
setEffRotateKey(  spep_4+60,  gyan,  0);
setEffAlphaKey(  spep_4+60,  gyan,  255);

--書き文字(ギャンッ)
ctGyan = entryEffectLife( spep_4 + 0,  10006, 58, 0x100, -1, 0, 8.8, 313 );
setEffMoveKey( spep_4 + 0, ctGyan, 8.8, 313 , 0 );
setEffMoveKey( spep_4 + 2, ctGyan, 9.1, 314.1 , 0 );
setEffMoveKey( spep_4 + 4, ctGyan, 9.4, 315.1 , 0 );
setEffMoveKey( spep_4 + 6, ctGyan, 9.7, 316.1 , 0 );
setEffMoveKey( spep_4 + 8, ctGyan, 10, 317.1 , 0 );
setEffMoveKey( spep_4 + 10, ctGyan, 10, 317.2 , 0 );
setEffMoveKey( spep_4 + 12, ctGyan, 10, 317.3 , 0 );
setEffMoveKey( spep_4 + 14, ctGyan, 10, 317.4 , 0 );
setEffMoveKey( spep_4 + 16, ctGyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4 + 18, ctGyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4 + 20, ctGyan, 10.1, 317.6 , 0 );
setEffMoveKey( spep_4 + 22, ctGyan, 10.1, 317.7 , 0 );
setEffMoveKey( spep_4 + 24, ctGyan, 10.2, 317.8 , 0 );
setEffMoveKey( spep_4 + 26, ctGyan, 10.2, 317.9 , 0 );
setEffMoveKey( spep_4 + 28, ctGyan, 10.2, 318 , 0 );
setEffMoveKey( spep_4 + 30, ctGyan, 10.2, 318 , 0 );
setEffMoveKey( spep_4 + 32, ctGyan, 10.3, 318.1 , 0 );
setEffMoveKey( spep_4 + 34, ctGyan, 10.3, 318.2 , 0 );
setEffMoveKey( spep_4 + 36, ctGyan, 10.3, 318.3 , 0 );
setEffMoveKey( spep_4 + 38, ctGyan, 10.3, 318.4 , 0 );
setEffMoveKey( spep_4 + 40, ctGyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4 + 42, ctGyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4 + 44, ctGyan, 10.4, 318.6 , 0 );
setEffMoveKey( spep_4 + 46, ctGyan, 10.4, 318.7 , 0 );
setEffMoveKey( spep_4 + 48, ctGyan, 10.5, 318.8 , 0 );
setEffMoveKey( spep_4 + 50, ctGyan, 10.5, 318.9 , 0 );
setEffMoveKey( spep_4 + 52, ctGyan, 10.5, 319 , 0 );
setEffMoveKey( spep_4 + 54, ctGyan, 10.5, 319 , 0 );
setEffMoveKey( spep_4 + 56, ctGyan, 10.5, 319.1 , 0 );
setEffMoveKey( spep_4 + 58, ctGyan, 10.6, 319.2 , 0 );

setEffScaleKey( spep_4 + 0, ctGyan, 2.11, 2.11 );
setEffScaleKey( spep_4 + 2, ctGyan, 2.47, 2.47 );
setEffScaleKey( spep_4 + 4, ctGyan, 2.82, 2.82 );
setEffScaleKey( spep_4 + 6, ctGyan, 3.18, 3.18 );
setEffScaleKey( spep_4 + 8, ctGyan, 3.53, 3.53 );
setEffScaleKey( spep_4 + 10, ctGyan, 3.56, 3.56 );
setEffScaleKey( spep_4 + 12, ctGyan, 3.6, 3.6 );
setEffScaleKey( spep_4 + 14, ctGyan, 3.6, 3.6 );
setEffScaleKey( spep_4 + 16, ctGyan, 3.63, 3.63 );
setEffScaleKey( spep_4 + 18, ctGyan, 3.67, 3.67 );
setEffScaleKey( spep_4 + 20, ctGyan, 3.7, 3.7 );
setEffScaleKey( spep_4 + 22, ctGyan, 3.74, 3.74 );
setEffScaleKey( spep_4 + 24, ctGyan, 3.74, 3.74 );
setEffScaleKey( spep_4 + 26, ctGyan, 3.77, 3.77 );
setEffScaleKey( spep_4 + 28, ctGyan, 3.81, 3.81 );
setEffScaleKey( spep_4 + 30, ctGyan, 3.85, 3.85 );
setEffScaleKey( spep_4 + 32, ctGyan, 3.88, 3.88 );
setEffScaleKey( spep_4 + 34, ctGyan, 3.88, 3.88 );
setEffScaleKey( spep_4 + 36, ctGyan, 3.92, 3.92 );
setEffScaleKey( spep_4 + 38, ctGyan, 3.95, 3.95 );
setEffScaleKey( spep_4 + 40, ctGyan, 3.99, 3.99 );
setEffScaleKey( spep_4 + 42, ctGyan, 4.02, 4.02 );
setEffScaleKey( spep_4 + 44, ctGyan, 4.02, 4.02 );
setEffScaleKey( spep_4 + 46, ctGyan, 4.06, 4.06 );
setEffScaleKey( spep_4 + 48, ctGyan, 4.09, 4.09 );
setEffScaleKey( spep_4 + 50, ctGyan, 4.13, 4.13 );
setEffScaleKey( spep_4 + 52, ctGyan, 4.13, 4.13 );
setEffScaleKey( spep_4 + 54, ctGyan, 4.16, 4.16 );
setEffScaleKey( spep_4 + 56, ctGyan, 4.2, 4.2 );
setEffScaleKey( spep_4 + 58, ctGyan, 4.23, 4.23 );

setEffRotateKey( spep_4 + 0, ctGyan, -5.2 );
setEffRotateKey( spep_4 + 58, ctGyan, -5.2 );

setEffAlphaKey( spep_4 + 0, ctGyan, 255 );
setEffAlphaKey( spep_4 + 58, ctGyan, 255 );

--白フェード
entryFade( spep_4+34, 14, 20, 14, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 60;

------------------------------------------------------
-- 地球からビーム(160F)
------------------------------------------------------

entryFadeBg( spep_5, 0, 160, 0, 10, 10, 10, 230);          -- ベース暗め　背景

--伸びるビームSE
playSe( spep_5, SE_07);

beam = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0);   -- ef_002急上昇
setEffScaleKey(  spep_5,  beam,  1.0, 1.0);
setEffMoveKey(  spep_5,  beam,  0,  0);
setEffRotateKey(  spep_5,  beam,  0);
setEffAlphaKey(  spep_5,  beam,  255);

setEffScaleKey(  spep_5+160,  beam,  1.0, 1.0);
setEffMoveKey(  spep_5+160,  beam,  0,  0);
setEffRotateKey(  spep_5+160,  beam,  0);
setEffAlphaKey(  spep_5+160,  beam,  255);

-- ダメージ表示
dealDamage(spep_5+16);

endPhase( spep_5 + 110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

charge = entryEffect( spep_0, SP_01, 0x100, -1, 0, 0, 0);
setEffScaleKey(  spep_0,  charge,  -1.0, 1.0);
setEffMoveKey(  spep_0,  charge,  0,  0);
setEffRotateKey(  spep_0,  charge,  0);
setEffAlphaKey(  spep_0,  charge,  255);

setEffScaleKey(  spep_0+240,  charge,  -1.0, 1.0);
setEffMoveKey(  spep_0+240,  charge,  0,  0);
setEffRotateKey(  spep_0+240,  charge,  0);
setEffAlphaKey(  spep_0+240,  charge,  255);

--背景暗め
entryFadeBg( spep_0, 0, 50, 0, 10, 10, 10, 90);          -- ベース暗め　背景
entryFadeBg( spep_0+46, 0, 194, 0, 10, 10, 10, 230);          -- ベース暗め　背景


--集中線
shuchusen = entryEffectLife( spep_0+46, 906, 194, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake(spep_0+46,shuchusen,194,15);

setEffScaleKey( spep_0, shuchusen, 1.2, 1.5);
setEffMoveKey(  spep_0,  shuchusen,  0,  0);
setEffRotateKey( spep_0, shuchusen, 0);
setEffAlphaKey( spep_0, shuchusen, 255);

setEffScaleKey( spep_0+240, shuchusen, 1.2, 1.5);
setEffMoveKey(  spep_0+240,  shuchusen,  0,  0);
setEffRotateKey( spep_0+240, shuchusen, 0);
setEffAlphaKey( spep_0+240, shuchusen, 255);

--薄い白フラッシュ
entryFade( spep_0+46, 0, 10, 4, fcolor_r, fcolor_g, fcolor_b, 160);     -- white fade

--バッのSE
playSe( spep_0+48, SE_16);

--書き文字(バッ)
ctBa = entryEffectLife( spep_0 + 48,  10022, 26, 0x100, -1, 0, -84.8, 382 );
setEffMoveKey( spep_0 + 48, ctBa, -84.8, 382 , 0 );
setEffMoveKey( spep_0 + 54, ctBa, -92.1, 386.6 , 0 );
setEffMoveKey( spep_0 + 56, ctBa, -84.8, 382 , 0 );
setEffMoveKey( spep_0 + 58, ctBa, -93.6, 387.3 , 0 );
setEffMoveKey( spep_0 + 60, ctBa, -84.9, 382 , 0 );
setEffMoveKey( spep_0 + 62, ctBa, -84.9, 382 , 0 );
setEffMoveKey( spep_0 + 64, ctBa, -91.3, 386.6 , 0 );
setEffMoveKey( spep_0 + 66, ctBa, -84.9, 382 , 0 );
setEffMoveKey( spep_0 + 68, ctBa, -91.2, 386.7 , 0 );
setEffMoveKey( spep_0 + 70, ctBa, -91.2, 386.7 , 0 );
setEffMoveKey( spep_0 + 72, ctBa, -84.9, 382 , 0 );
setEffMoveKey( spep_0 + 74, ctBa, -84.9, 382 , 0 );

setEffScaleKey( spep_0 + 48, ctBa, 1.21, 1.21 );
setEffScaleKey( spep_0 + 54, ctBa, 1.8, 1.8 );
setEffScaleKey( spep_0 + 56, ctBa, 2.38, 2.38 );
setEffScaleKey( spep_0 + 58, ctBa, 2.13, 2.13 );
setEffScaleKey( spep_0 + 60, ctBa, 1.88, 1.88 );
setEffScaleKey( spep_0 + 62, ctBa, 1.63, 1.63 );
setEffScaleKey( spep_0 + 66, ctBa, 1.63, 1.63 );
setEffScaleKey( spep_0 + 68, ctBa, 1.62, 1.62 );
setEffScaleKey( spep_0 + 70, ctBa, 1.62, 1.62 );
setEffScaleKey( spep_0 + 72, ctBa, 1.63, 1.63 );
setEffScaleKey( spep_0 + 74, ctBa, 1.63, 1.63 );

setEffRotateKey( spep_0 + 48, ctBa, -5.8 );
setEffRotateKey( spep_0 + 54, ctBa, -9.5 );
setEffRotateKey( spep_0 + 56, ctBa, -13.2 );
setEffRotateKey( spep_0 + 58, ctBa, -10.7 );
setEffRotateKey( spep_0 + 60, ctBa, -8.3 );
setEffRotateKey( spep_0 + 62, ctBa, -5.8 );
setEffRotateKey( spep_0 + 74, ctBa, -5.8 );

setEffAlphaKey( spep_0 + 48, ctBa, 255 );
setEffAlphaKey( spep_0 + 70, ctBa, 255 );
setEffAlphaKey( spep_0 + 72, ctBa, 128 );
setEffAlphaKey( spep_0 + 74, ctBa, 0 );

--顔カットイン&文字
--speff = entryEffect( spep_0+84,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
--speff1 = entryEffect( spep_0+84,   1505,   0,     -1,  0,  0,  -40);   -- eff_006 (セリフ)
--setEffReplaceTexture(  speff1, 4, 5); 

--書き文字(ゴゴゴゴゴ)
ctGo = entryEffectLife( spep_0+98, 190006, 70, 0x100, -1, 0, 0, 0);    -- ゴゴゴゴゴ
setEffShake( spep_0+98, ctGo, 70, 8);

setEffScaleKey( spep_0+98, ctGo, -0.8, 0.8);
setEffMoveKey(  spep_0+98,  ctGo, 0, 510);
setEffRotateKey(  spep_0+98,  ctGo,  0);
setEffAlphaKey(  spep_0+98,  ctGo,  255);

setEffScaleKey( spep_0+160, ctGo, -0.8, 0.8);

setEffAlphaKey(  spep_0+160,  ctGo,  255);

setEffScaleKey( spep_0+168, ctGo, -1.3, 1.3);
setEffMoveKey(  spep_0+168,  ctGo, 0, 510);
setEffRotateKey(  spep_0+168,  ctGo,  0);
setEffAlphaKey(  spep_0+168,  ctGo,  0);

--カットインSE
playSe( spep_0+98, SE_04);

--かめはめ波チャージ

playSe( spep_0+74, SE_02);
playSe( spep_0+94, SE_02);
playSe( spep_0+114, SE_02);
playSe( spep_0+134, SE_02);
playSe( spep_0+154, SE_02);
playSe( spep_0+174, SE_02);
playSe( spep_0+194, SE_02);

--瞬間移動SE
playSe( spep_0+210, SE_15);

--書き文字(シュンッ)
ctShun = entryEffectLife( spep_0 + 210,  10011, 20, 0x100, -1, 0, -0.2, 360.4 );
setEffMoveKey( spep_0 + 210, ctShun, -0.2, 360.4 , 0 );
setEffMoveKey( spep_0 + 212, ctShun, 0, 360.5 , 0 );
setEffMoveKey( spep_0 + 214, ctShun, 0, 360.5 , 0 );
setEffMoveKey( spep_0 + 216, ctShun, -0.1, 360.5 , 0 );
setEffMoveKey( spep_0 + 220, ctShun, -0.1, 360.5 , 0 );
setEffMoveKey( spep_0 + 222, ctShun, -0.1, 360.4 , 0 );
setEffMoveKey( spep_0 + 224, ctShun, -0.1, 360.4 , 0 );
setEffMoveKey( spep_0 + 226, ctShun, -0.2, 360.4 , 0 );
setEffMoveKey( spep_0 + 228, ctShun, -0.2, 360.4 , 0 );
setEffMoveKey( spep_0 + 230, ctShun, -0.2, 360.3 , 0 );

setEffScaleKey( spep_0 + 210, ctShun, 1.92, 1.92 );
setEffScaleKey( spep_0 + 212, ctShun, 3.24, 3.24 );
setEffScaleKey( spep_0 + 214, ctShun, 2.87, 2.87 );
setEffScaleKey( spep_0 + 216, ctShun, 2.49, 2.49 );
setEffScaleKey( spep_0 + 218, ctShun, 2.12, 2.12 );
setEffScaleKey( spep_0 + 220, ctShun, 2.1, 2.1 );
setEffScaleKey( spep_0 + 222, ctShun, 2.07, 2.07 );
setEffScaleKey( spep_0 + 224, ctShun, 2.05, 2.05 );
setEffScaleKey( spep_0 + 226, ctShun, 2.03, 2.03 );
setEffScaleKey( spep_0 + 228, ctShun, 2, 2 );
setEffScaleKey( spep_0 + 230, ctShun, 1.98, 1.98 );

setEffRotateKey( spep_0 + 210, ctShun, -7.8 );
setEffRotateKey( spep_0 + 230, ctShun, -7.8 );

setEffAlphaKey( spep_0 + 210, ctShun, 255 );
setEffAlphaKey( spep_0 + 218, ctShun, 255 );
setEffAlphaKey( spep_0 + 220, ctShun, 213 );
setEffAlphaKey( spep_0 + 222, ctShun, 170 );
setEffAlphaKey( spep_0 + 224, ctShun, 128 );
setEffAlphaKey( spep_0 + 226, ctShun, 85 );
setEffAlphaKey( spep_0 + 228, ctShun, 42 );
setEffAlphaKey( spep_0 + 230, ctShun, 0 );

--白フェード
entryFade( spep_0+232, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1 = spep_0 + 240;

------------------------------------------------------
-- 敵の前に出現(70F)
------------------------------------------------------

entryFadeBg( spep_1, 0, 70, 0, 10, 10, 10, 230);          -- ベース暗め　背景

--瞬間移動で現れる
warpOut = entryEffect( spep_1, SP_02, 0x100, -1, 0, 0, 0);
setEffScaleKey(  spep_1,  warpOut,  -1.0, 1.0);
setEffMoveKey(  spep_1,  warpOut,  0,  0);
setEffRotateKey(  spep_1,  warpOut,  0);
setEffAlphaKey(  spep_1,  warpOut,  255);

setEffScaleKey(  spep_1+70,  warpOut,  -1.0, 1.0);
setEffMoveKey(  spep_1+70,  warpOut,  0,  0);
setEffRotateKey(  spep_1+70,  warpOut,  0);
setEffAlphaKey(  spep_1+70,  warpOut,  255);

--驚く敵
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 19.4, 17.7 , 0 );
setMoveKey( spep_1 + 2, 1, 19.1, 32.8 , 0 );
setMoveKey( spep_1 + 4, 1, 18.9, 47.7 , 0 );
setMoveKey( spep_1 + 6, 1, 18.6, 62.3 , 0 );
setMoveKey( spep_1 + 8, 1, 18.4, 76.7 , 0 );
setMoveKey( spep_1 + 10, 1, 18.1, 90.8 , 0 );
setMoveKey( spep_1 + 12, 1, 17.9, 105.1 , 0 );
setMoveKey( spep_1 + 14, 1, 17.8, 119.1 , 0 );
setMoveKey( spep_1 + 16, 1, 17.6, 132.9 , 0 );
setMoveKey( spep_1 + 18, 1, 17.6, 137 , 0 );
setMoveKey( spep_1 + 20, 1, 15.5, 135.2 , 0 );
setMoveKey( spep_1 + 22, 1, 17.5, 141.4 , 0 );
setMoveKey( spep_1 + 24, 1, 13.4, 141.6 , 0 );
setMoveKey( spep_1 + 26, 1, 17.4, 145.8 , 0 );
setMoveKey( spep_1 + 28, 1, 15.3, 146 , 0 );
setMoveKey( spep_1 + 30, 1, 17.3, 150.2 , 0 );
setMoveKey( spep_1 + 32, 1, 13.2, 148.4 , 0 );
setMoveKey( spep_1 + 34, 1, 17.2, 154.6 , 0 );
setMoveKey( spep_1 + 36, 1, 15.1, 154.8 , 0 );
setMoveKey( spep_1 + 38, 1, 17.1, 159 , 0 );
setMoveKey( spep_1 + 40, 1, 13, 157.2 , 0 );
setMoveKey( spep_1 + 42, 1, 17, 163.3 , 0 );
setMoveKey( spep_1 + 44, 1, 14.9, 161.5 , 0 );
setMoveKey( spep_1 + 46, 1, 16.9, 167.7 , 0 );
setMoveKey( spep_1 + 48, 1, 12.8, 165.8 , 0 );
setMoveKey( spep_1 + 50, 1, 16.8, 172 , 0 );
setMoveKey( spep_1 + 52, 1, 14.7, 172.2 , 0 );
setMoveKey( spep_1 + 54, 1, 16.7, 176.3 , 0 );
setMoveKey( spep_1 + 56, 1, 12.6, 174.4 , 0 );
setMoveKey( spep_1 + 58, 1, 16.6, 180.6 , 0 );
setMoveKey( spep_1 + 60, 1, 14.5, 178.7 , 0 );
setMoveKey( spep_1 + 62, 1, 16.5, 184.9 , 0 );
setMoveKey( spep_1 + 64, 1, 12.4, 185 , 0 );
setMoveKey( spep_1 + 66, 1, 16.4, 189.1 , 0 );
setMoveKey( spep_1 + 68, 1, 14.3, 189.2 , 0 );
setMoveKey( spep_1 + 70, 1, 14.3, 189.2 , 0 );

setScaleKey( spep_1 + 0, 1, 2.67, 2.67 );
setScaleKey( spep_1 + 2, 1, 2.58, 2.58 );
setScaleKey( spep_1 + 4, 1, 2.5, 2.5 );
setScaleKey( spep_1 + 6, 1, 2.41, 2.41 );
setScaleKey( spep_1 + 8, 1, 2.33, 2.33 );
setScaleKey( spep_1 + 10, 1, 2.25, 2.25 );
setScaleKey( spep_1 + 12, 1, 2.17, 2.17 );
setScaleKey( spep_1 + 14, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_1 + 18, 1, 2, 2 );
setScaleKey( spep_1 + 20, 1, 2, 2 );
setScaleKey( spep_1 + 22, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 26, 1, 1.98, 1.98 );
setScaleKey( spep_1 + 28, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 30, 1, 1.97, 1.97 );
setScaleKey( spep_1 + 32, 1, 1.96, 1.96 );
setScaleKey( spep_1 + 34, 1, 1.96, 1.96 );
setScaleKey( spep_1 + 36, 1, 1.95, 1.95 );
setScaleKey( spep_1 + 38, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 40, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 42, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 44, 1, 1.93, 1.93 );
setScaleKey( spep_1 + 46, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 48, 1, 1.92, 1.92 );
setScaleKey( spep_1 + 50, 1, 1.91, 1.91 );
setScaleKey( spep_1 + 52, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 54, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 56, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 58, 1, 1.89, 1.89 );
setScaleKey( spep_1 + 60, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 62, 1, 1.88, 1.88 );
setScaleKey( spep_1 + 64, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 66, 1, 1.86, 1.86 );
setScaleKey( spep_1 + 70, 1, 1.86, 1.86 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 70, 1, 0 );

setDisp( spep_1 + 70, 1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake(spep_1,shuchusen2,70,15);

setEffScaleKey( spep_1, shuchusen2, 1.4, 1.9);
setEffMoveKey(  spep_1,  shuchusen2,  0,  0);
setEffRotateKey( spep_1, shuchusen2, 0);
setEffAlphaKey( spep_1, shuchusen2, 255);

setEffScaleKey( spep_1+70, shuchusen2, 1.4, 1.9);
setEffMoveKey(  spep_1+70,  shuchusen2,  0,  0);
setEffRotateKey( spep_1+70, shuchusen2, 0);
setEffAlphaKey( spep_1+70, shuchusen2, 255);

--書き文字(！？)
ctExQ = entryEffectLife( spep_1 + 24,  10001, 34, 0x100, -1, 0, -98, 402.6 );
setEffMoveKey( spep_1 + 24, ctExQ, -98, 402.6 , 0 );
setEffMoveKey( spep_1 + 26, ctExQ, -103.9, 407.7 , 0 );
setEffMoveKey( spep_1 + 28, ctExQ, -98.7, 402.5 , 0 );
setEffMoveKey( spep_1 + 30, ctExQ, -104.1, 407.9 , 0 );
setEffMoveKey( spep_1 + 32, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 34, ctExQ, -102.7, 406.9 , 0 );
setEffMoveKey( spep_1 + 36, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 38, ctExQ, -102.7, 406.9 , 0 );
setEffMoveKey( spep_1 + 40, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 42, ctExQ, -102.7, 406.9 , 0 );
setEffMoveKey( spep_1 + 44, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 46, ctExQ, -102.7, 406.9 , 0 );
setEffMoveKey( spep_1 + 48, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 50, ctExQ, -102.4, 406.6 , 0 );
setEffMoveKey( spep_1 + 52, ctExQ, -98.1, 402.6 , 0 );
setEffMoveKey( spep_1 + 54, ctExQ, -102.1, 406.4 , 0 );
setEffMoveKey( spep_1 + 56, ctExQ, -98, 402.6 , 0 );
setEffMoveKey( spep_1 + 58, ctExQ, -98, 402.6 , 0 );

setEffScaleKey( spep_1 + 24, ctExQ, 2.06, 2.06 );
setEffScaleKey( spep_1 + 26, ctExQ, 2.73, 2.73 );
setEffScaleKey( spep_1 + 28, ctExQ, 3.4, 3.4 );
setEffScaleKey( spep_1 + 30, ctExQ, 2.84, 2.84 );
setEffScaleKey( spep_1 + 32, ctExQ, 2.29, 2.29 );
setEffScaleKey( spep_1 + 46, ctExQ, 2.29, 2.29 );
setEffScaleKey( spep_1 + 48, ctExQ, 2.22, 2.22 );
setEffScaleKey( spep_1 + 50, ctExQ, 2.16, 2.16 );
setEffScaleKey( spep_1 + 52, ctExQ, 2.09, 2.09 );
setEffScaleKey( spep_1 + 54, ctExQ, 2.03, 2.03 );
setEffScaleKey( spep_1 + 56, ctExQ, 1.96, 1.96 );
setEffScaleKey( spep_1 + 58, ctExQ, 1.9, 1.9 );

setEffRotateKey( spep_1 + 24, ctExQ, -11.5 );
setEffRotateKey( spep_1 + 58, ctExQ, -11.5 );

setEffAlphaKey( spep_1 + 24, ctExQ, 255 );
setEffAlphaKey( spep_1 + 46, ctExQ, 255 );
setEffAlphaKey( spep_1 + 48, ctExQ, 213 );
setEffAlphaKey( spep_1 + 50, ctExQ, 170 );
setEffAlphaKey( spep_1 + 52, ctExQ, 128 );
setEffAlphaKey( spep_1 + 54, ctExQ, 85 );
setEffAlphaKey( spep_1 + 56, ctExQ, 42 );
setEffAlphaKey( spep_1 + 58, ctExQ, 0 );

--瞬間移動SE
playSe( spep_1+20, SE_15);

--書き文字(シュンッ)
ctShun2 = entryEffectLife( spep_1 + 20,  10011, 24, 0x100, -1, 0, 156.9, 135.1 );
setEffMoveKey( spep_1 + 20, ctShun2, 156.9, 135.1 , 0 );
setEffMoveKey( spep_1 + 36, ctShun2, 156.9, 135.1 , 0 );
setEffMoveKey( spep_1 + 38, ctShun2, 156.8, 135.1 , 0 );
setEffMoveKey( spep_1 + 40, ctShun2, 156.8, 135 , 0 );
setEffMoveKey( spep_1 + 44, ctShun2, 156.8, 135 , 0 );

setEffScaleKey( spep_1 + 20, ctShun2, 1.33, 1.33 );
setEffScaleKey( spep_1 + 22, ctShun2, 2.24, 2.24 );
setEffScaleKey( spep_1 + 24, ctShun2, 2.09, 2.09 );
setEffScaleKey( spep_1 + 26, ctShun2, 1.93, 1.93 );
setEffScaleKey( spep_1 + 28, ctShun2, 1.78, 1.78 );
setEffScaleKey( spep_1 + 30, ctShun2, 1.62, 1.62 );
setEffScaleKey( spep_1 + 32, ctShun2, 1.47, 1.47 );
setEffScaleKey( spep_1 + 34, ctShun2, 1.45, 1.45 );
setEffScaleKey( spep_1 + 36, ctShun2, 1.44, 1.44 );
setEffScaleKey( spep_1 + 38, ctShun2, 1.42, 1.42 );
setEffScaleKey( spep_1 + 40, ctShun2, 1.4, 1.4 );
setEffScaleKey( spep_1 + 42, ctShun2, 1.39, 1.39 );
setEffScaleKey( spep_1 + 44, ctShun2, 1.37, 1.37 );

setEffRotateKey( spep_1 + 20, ctShun2, 27.7 );
setEffRotateKey( spep_1 + 44, ctShun2, 27.7 );

setEffAlphaKey( spep_1 + 20, ctShun2, 255 );
setEffAlphaKey( spep_1 + 32, ctShun2, 255 );
setEffAlphaKey( spep_1 + 34, ctShun2, 213 );
setEffAlphaKey( spep_1 + 36, ctShun2, 170 );
setEffAlphaKey( spep_1 + 38, ctShun2, 128 );
setEffAlphaKey( spep_1 + 40, ctShun2, 85 );
setEffAlphaKey( spep_1 + 42, ctShun2, 42 );
setEffAlphaKey( spep_1 + 44, ctShun2, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 瞬間移動の続き
------------------------------------------------------

--かめはめ波溜めSE
playSe( spep_1+40, SE_02);
playSe( spep_1+60, SE_02);

--白フラッシュ
entryFade( spep_1+62, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1 + 70;

------------------------------------------------------
-- カードカットイン
------------------------------------------------------

speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                             -- 技名テクスチャ差し替え

shuchusen3 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線

setEffShake(spep_2,shuchusen3,90,15);

setEffScaleKey( spep_2, shuchusen3, 1.5, 1.5);
setEffMoveKey(  spep_2,  shuchusen3,  0,  0);
setEffRotateKey( spep_2, shuchusen3, 0);
setEffAlphaKey( spep_2, shuchusen3, 255);

setEffScaleKey( spep_2+90, shuchusen3, 1.5, 1.5);
setEffMoveKey(  spep_2+90,  shuchusen3,  0,  0);
setEffRotateKey( spep_2+90, shuchusen3, 0);
setEffAlphaKey( spep_2+90, shuchusen3, 255);

playSe( spep_2, SE_05);

--白フェードが入る--
entryFade( spep_2+84, 3, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2 + 90;

------------------------------------------------------
-- 正面かめはめ波(100F)
------------------------------------------------------

entryFadeBg( spep_3, 0, 100, 0, 10, 10, 10, 230);          -- ベース暗め　背景

--発射SE
playSe( spep_3+10, SE_07);

--かめはめ波を発射
shoot = entryEffect( spep_3+2, SP_03, 0x100, -1, 0, 0, 0);   -- ef_002急上昇
setEffScaleKey(  spep_3+2,  shoot,  -1.0, 1.0);
setEffMoveKey(  spep_3+2,  shoot,  0,  0);
setEffRotateKey(  spep_3+2,  shoot,  0);
setEffAlphaKey(  spep_3+2,  shoot,  255);

setEffScaleKey(  spep_3+100,  shoot,  -1.0, 1.0);
setEffMoveKey(  spep_3+100,  shoot,  0,  0);
setEffRotateKey(  spep_3+100,  shoot,  0);
setEffAlphaKey(  spep_3+100,  shoot,  255);

setEffScaleKey(  spep_3+102,  shoot,  -1.0, 1.0);
setEffMoveKey(  spep_3+102,  shoot,  0,  0);
setEffRotateKey(  spep_3+102,  shoot,  0);
setEffAlphaKey(  spep_3+102,  shoot,  0);

--書き文字(ズオッ)
ctZuo = entryEffectLife( spep_3 + 8,  10012, 72, 0x100, -1, 0, 78.7, 260.5 );
setEffMoveKey( spep_3 + 8, ctZuo, 78.7, 260.5 , 0 );
setEffMoveKey( spep_3 + 10, ctZuo, 117.2, 303.7 , 0 );
setEffMoveKey( spep_3 + 12, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 14, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 16, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 18, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 20, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 22, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 24, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 26, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 28, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 30, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 32, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 34, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 36, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 38, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 40, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 42, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 44, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 46, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 48, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 50, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 52, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 54, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 56, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 58, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 60, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 62, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 64, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 66, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 68, ctZuo, 137.7, 364.8 , 0 );
setEffMoveKey( spep_3 + 70, ctZuo, 153.7, 348.8 , 0 );
setEffMoveKey( spep_3 + 72, ctZuo, 152.3, 366.3 , 0 );
setEffMoveKey( spep_3 + 74, ctZuo, 192.3, 342.3 , 0 );
setEffMoveKey( spep_3 + 76, ctZuo, 181.2, 369.4 , 0 );
setEffMoveKey( spep_3 + 78, ctZuo, 230.9, 335.7 , 0 );
setEffMoveKey( spep_3 + 80, ctZuo, 250.3, 332.4 , 0 );

setEffScaleKey( spep_3 + 8, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_3 + 10, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_3 + 12, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 70, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_3 + 72, ctZuo, 3.55, 3.55 );
setEffScaleKey( spep_3 + 74, ctZuo, 4.37, 4.37 );
setEffScaleKey( spep_3 + 76, ctZuo, 5.19, 5.19 );
setEffScaleKey( spep_3 + 78, ctZuo, 6.01, 6.01 );
setEffScaleKey( spep_3 + 80, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_3 + 8, ctZuo, 27.2 );
setEffRotateKey( spep_3 + 80, ctZuo, 27.2 );

setEffAlphaKey( spep_3 + 8, ctZuo, 255 );
setEffAlphaKey( spep_3 + 70, ctZuo, 255 );
setEffAlphaKey( spep_3 + 72, ctZuo, 204 );
setEffAlphaKey( spep_3 + 74, ctZuo, 153 );
setEffAlphaKey( spep_3 + 76, ctZuo, 102 );
setEffAlphaKey( spep_3 + 78, ctZuo, 51 );
setEffAlphaKey( spep_3 + 80, ctZuo, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffShake(spep_3,shuchusen4,100,15);

setEffScaleKey( spep_3, shuchusen4, 1.3, 1.9);
setEffMoveKey(  spep_3,  shuchusen4,  0,  0);
setEffRotateKey( spep_3, shuchusen4, 0);
setEffAlphaKey( spep_3, shuchusen4, 255);

setEffScaleKey( spep_3+100, shuchusen4, 1.3, 1.9);
setEffMoveKey(  spep_3+100,  shuchusen4,  0,  0);
setEffRotateKey( spep_3+100, shuchusen4, 0);
setEffAlphaKey( spep_3+100, shuchusen4, 255);

--敵
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, -65, 1046 , 0 );
setMoveKey( spep_3 + 2, 1, -62.5, 968.6 , 0 );
setMoveKey( spep_3 + 4, 1, -50.4, 880.9 , 0 );
setMoveKey( spep_3 + 6, 1, -48.7, 766.9 , 0 );
setMoveKey( spep_3 + 8, 1, -29.4, 642.5 , 0 );
setMoveKey( spep_3 + 10, 1, -20.4, 487.8 , 0 );
setMoveKey( spep_3 + 12, 1, -1.9, 330.7 , 0 );
setMoveKey( spep_3 + 14, 1, 10.3, 139.3 , 0 );
setMoveKey( spep_3 + 16, 1, 14.2, 146.3 , 0 );
setMoveKey( spep_3 + 18, 1, 6.1, 141.3 , 0 );
setMoveKey( spep_3 + 20, 1, 14, 144.3 , 0 );
setMoveKey( spep_3 + 22, 1, 9.9, 135.3 , 0 );
setMoveKey( spep_3 + 24, 1, 13.8, 142.3 , 0 );
setMoveKey( spep_3 + 26, 1, 5.7, 133.3 , 0 );
setMoveKey( spep_3 + 28, 1, 13.6, 140.4 , 0 );
setMoveKey( spep_3 + 30, 1, 9.5, 135.4 , 0 );
setMoveKey( spep_3 + 32, 1, 13.4, 138.4 , 0 );
setMoveKey( spep_3 + 34, 1, 9.3, 133.4 , 0 );
setMoveKey( spep_3 + 36, 1, 13.3, 136.4 , 0 );
setMoveKey( spep_3 + 38, 1, 5.2, 131.4 , 0 );
setMoveKey( spep_3 + 40, 1, 13.1, 134.4 , 0 );
setMoveKey( spep_3 + 42, 1, 9, 125.4 , 0 );
setMoveKey( spep_3 + 44, 1, 12.9, 132.4 , 0 );
setMoveKey( spep_3 + 46, 1, 4.8, 123.5 , 0 );
setMoveKey( spep_3 + 48, 1, 12.7, 130.5 , 0 );
setMoveKey( spep_3 + 50, 1, 8.6, 125.5 , 0 );
setMoveKey( spep_3 + 52, 1, 12.5, 128.5 , 0 );
setMoveKey( spep_3 + 54, 1, 4.4, 119.5 , 0 );
setMoveKey( spep_3 + 56, 1, 12.3, 126.5 , 0 );
setMoveKey( spep_3 + 58, 1, 8.2, 121.5 , 0 );
setMoveKey( spep_3 + 60, 1, 12.1, 124.5 , 0 );
setMoveKey( spep_3 + 62, 1, 4, 115.5 , 0 );
setMoveKey( spep_3 + 64, 1, 11.9, 122.6 , 0 );
setMoveKey( spep_3 + 66, 1, 7.8, 117.6 , 0 );
setMoveKey( spep_3 + 68, 1, 11.7, 120.6 , 0 );
setMoveKey( spep_3 + 70, 1, 3.6, 111.6 , 0 );
setMoveKey( spep_3 + 72, 1, 11.5, 118.6 , 0 );
setMoveKey( spep_3 + 74, 1, 7.4, 109.6 , 0 );
setMoveKey( spep_3 + 76, 1, 11.3, 116.6 , 0 );
setMoveKey( spep_3 + 78, 1, 3.3, 103.6 , 0 );
setMoveKey( spep_3 + 80, 1, 11.2, 114.6 , 0 );
setMoveKey( spep_3 + 82, 1, 7.1, 105.7 , 0 );
setMoveKey( spep_3 + 84, 1, 11, 112.7 , 0 );
setMoveKey( spep_3 + 86, 1, 2.9, 107.7 , 0 );
setMoveKey( spep_3 + 88, 1, 10.8, 110.7 , 0 );
setMoveKey( spep_3 + 90, 1, 6.7, 101.7 , 0 );
setMoveKey( spep_3 + 92, 1, 10.6, 108.7 , 0 );
setMoveKey( spep_3 + 94, 1, 2.5, 99.7 , 0 );
setMoveKey( spep_3 + 96, 1, 10.4, 106.7 , 0 );
setMoveKey( spep_3 + 98, 1, 6.3, 97.7 , 0 );
setMoveKey( spep_3 + 100, 1, 6.3, 97.7 , 0 );

setScaleKey( spep_3 + 0, 1, 6.47, 6.47 );
setScaleKey( spep_3 + 2, 1, 6.08, 6.08 );
setScaleKey( spep_3 + 4, 1, 5.6, 5.6 );
setScaleKey( spep_3 + 6, 1, 5.01, 5.01 );
setScaleKey( spep_3 + 8, 1, 4.33, 4.33 );
setScaleKey( spep_3 + 10, 1, 3.56, 3.56 );
setScaleKey( spep_3 + 12, 1, 2.68, 2.68 );
setScaleKey( spep_3 + 14, 1, 1.71, 1.71 );
setScaleKey( spep_3 + 16, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 18, 1, 1.69, 1.69 );
setScaleKey( spep_3 + 20, 1, 1.68, 1.68 );
setScaleKey( spep_3 + 22, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 24, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 26, 1, 1.64, 1.64 );
setScaleKey( spep_3 + 28, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 30, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 32, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 36, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 38, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_3 + 42, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 44, 1, 1.55, 1.55 );
setScaleKey( spep_3 + 46, 1, 1.54, 1.54 );
setScaleKey( spep_3 + 48, 1, 1.53, 1.53 );
setScaleKey( spep_3 + 50, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 52, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 54, 1, 1.49, 1.49 );
setScaleKey( spep_3 + 56, 1, 1.48, 1.48 );
setScaleKey( spep_3 + 58, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_3 + 62, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 64, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 66, 1, 1.43, 1.43 );
setScaleKey( spep_3 + 68, 1, 1.42, 1.42 );
setScaleKey( spep_3 + 70, 1, 1.41, 1.41 );
setScaleKey( spep_3 + 72, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 74, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 76, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 78, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 80, 1, 1.35, 1.35 );
setScaleKey( spep_3 + 82, 1, 1.34, 1.34 );
setScaleKey( spep_3 + 84, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 86, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 88, 1, 1.31, 1.31 );
setScaleKey( spep_3 + 90, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 92, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 94, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 96, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 98, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 100, 1, 1.26, 1.26 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 100, 1, 0 );

setDisp( spep_3 + 90, 1, 0 );

--白フェード
entryFade( spep_3+90, 4, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3 + 100;

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------

entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 230);          -- ベース暗め　背景

--発射SE
playSe( spep_4, SE_06);

gyan = entryEffect( spep_4, SP_04, 0x100, -1, 0, 0, 0);   -- ef_002急上昇
setEffScaleKey(  spep_4,  gyan,  1.0, 1.0);
setEffMoveKey(  spep_4,  gyan,  0,  0);
setEffRotateKey(  spep_4,  gyan,  0);
setEffAlphaKey(  spep_4,  gyan,  255);

setEffScaleKey(  spep_4+60,  gyan,  1.0, 1.0);
setEffMoveKey(  spep_4+60,  gyan,  0,  0);
setEffRotateKey(  spep_4+60,  gyan,  0);
setEffAlphaKey(  spep_4+60,  gyan,  255);

--書き文字(ギャンッ)
ctGyan = entryEffectLife( spep_4 + 0,  10006, 58, 0x100, -1, 0, 8.8, 313 );
setEffMoveKey( spep_4 + 0, ctGyan, 8.8, 313 , 0 );
setEffMoveKey( spep_4 + 2, ctGyan, 9.1, 314.1 , 0 );
setEffMoveKey( spep_4 + 4, ctGyan, 9.4, 315.1 , 0 );
setEffMoveKey( spep_4 + 6, ctGyan, 9.7, 316.1 , 0 );
setEffMoveKey( spep_4 + 8, ctGyan, 10, 317.1 , 0 );
setEffMoveKey( spep_4 + 10, ctGyan, 10, 317.2 , 0 );
setEffMoveKey( spep_4 + 12, ctGyan, 10, 317.3 , 0 );
setEffMoveKey( spep_4 + 14, ctGyan, 10, 317.4 , 0 );
setEffMoveKey( spep_4 + 16, ctGyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4 + 18, ctGyan, 10.1, 317.5 , 0 );
setEffMoveKey( spep_4 + 20, ctGyan, 10.1, 317.6 , 0 );
setEffMoveKey( spep_4 + 22, ctGyan, 10.1, 317.7 , 0 );
setEffMoveKey( spep_4 + 24, ctGyan, 10.2, 317.8 , 0 );
setEffMoveKey( spep_4 + 26, ctGyan, 10.2, 317.9 , 0 );
setEffMoveKey( spep_4 + 28, ctGyan, 10.2, 318 , 0 );
setEffMoveKey( spep_4 + 30, ctGyan, 10.2, 318 , 0 );
setEffMoveKey( spep_4 + 32, ctGyan, 10.3, 318.1 , 0 );
setEffMoveKey( spep_4 + 34, ctGyan, 10.3, 318.2 , 0 );
setEffMoveKey( spep_4 + 36, ctGyan, 10.3, 318.3 , 0 );
setEffMoveKey( spep_4 + 38, ctGyan, 10.3, 318.4 , 0 );
setEffMoveKey( spep_4 + 40, ctGyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4 + 42, ctGyan, 10.4, 318.5 , 0 );
setEffMoveKey( spep_4 + 44, ctGyan, 10.4, 318.6 , 0 );
setEffMoveKey( spep_4 + 46, ctGyan, 10.4, 318.7 , 0 );
setEffMoveKey( spep_4 + 48, ctGyan, 10.5, 318.8 , 0 );
setEffMoveKey( spep_4 + 50, ctGyan, 10.5, 318.9 , 0 );
setEffMoveKey( spep_4 + 52, ctGyan, 10.5, 319 , 0 );
setEffMoveKey( spep_4 + 54, ctGyan, 10.5, 319 , 0 );
setEffMoveKey( spep_4 + 56, ctGyan, 10.5, 319.1 , 0 );
setEffMoveKey( spep_4 + 58, ctGyan, 10.6, 319.2 , 0 );

setEffScaleKey( spep_4 + 0, ctGyan, 2.11, 2.11 );
setEffScaleKey( spep_4 + 2, ctGyan, 2.47, 2.47 );
setEffScaleKey( spep_4 + 4, ctGyan, 2.82, 2.82 );
setEffScaleKey( spep_4 + 6, ctGyan, 3.18, 3.18 );
setEffScaleKey( spep_4 + 8, ctGyan, 3.53, 3.53 );
setEffScaleKey( spep_4 + 10, ctGyan, 3.56, 3.56 );
setEffScaleKey( spep_4 + 12, ctGyan, 3.6, 3.6 );
setEffScaleKey( spep_4 + 14, ctGyan, 3.6, 3.6 );
setEffScaleKey( spep_4 + 16, ctGyan, 3.63, 3.63 );
setEffScaleKey( spep_4 + 18, ctGyan, 3.67, 3.67 );
setEffScaleKey( spep_4 + 20, ctGyan, 3.7, 3.7 );
setEffScaleKey( spep_4 + 22, ctGyan, 3.74, 3.74 );
setEffScaleKey( spep_4 + 24, ctGyan, 3.74, 3.74 );
setEffScaleKey( spep_4 + 26, ctGyan, 3.77, 3.77 );
setEffScaleKey( spep_4 + 28, ctGyan, 3.81, 3.81 );
setEffScaleKey( spep_4 + 30, ctGyan, 3.85, 3.85 );
setEffScaleKey( spep_4 + 32, ctGyan, 3.88, 3.88 );
setEffScaleKey( spep_4 + 34, ctGyan, 3.88, 3.88 );
setEffScaleKey( spep_4 + 36, ctGyan, 3.92, 3.92 );
setEffScaleKey( spep_4 + 38, ctGyan, 3.95, 3.95 );
setEffScaleKey( spep_4 + 40, ctGyan, 3.99, 3.99 );
setEffScaleKey( spep_4 + 42, ctGyan, 4.02, 4.02 );
setEffScaleKey( spep_4 + 44, ctGyan, 4.02, 4.02 );
setEffScaleKey( spep_4 + 46, ctGyan, 4.06, 4.06 );
setEffScaleKey( spep_4 + 48, ctGyan, 4.09, 4.09 );
setEffScaleKey( spep_4 + 50, ctGyan, 4.13, 4.13 );
setEffScaleKey( spep_4 + 52, ctGyan, 4.13, 4.13 );
setEffScaleKey( spep_4 + 54, ctGyan, 4.16, 4.16 );
setEffScaleKey( spep_4 + 56, ctGyan, 4.2, 4.2 );
setEffScaleKey( spep_4 + 58, ctGyan, 4.23, 4.23 );

setEffRotateKey( spep_4 + 0, ctGyan, -5.2 );
setEffRotateKey( spep_4 + 58, ctGyan, -5.2 );

setEffAlphaKey( spep_4 + 0, ctGyan, 255 );
setEffAlphaKey( spep_4 + 58, ctGyan, 255 );

--白フェード
entryFade( spep_4+34, 14, 20, 14, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4 + 60;

------------------------------------------------------
-- 地球からビーム(160F)
------------------------------------------------------

entryFadeBg( spep_5, 0, 160, 0, 10, 10, 10, 230);          -- ベース暗め　背景

--伸びるビームSE
playSe( spep_5, SE_07);

beam = entryEffect( spep_5, SP_05, 0x100, -1, 0, 0, 0);   -- ef_002急上昇
setEffScaleKey(  spep_5,  beam,  1.0, 1.0);
setEffMoveKey(  spep_5,  beam,  0,  0);
setEffRotateKey(  spep_5,  beam,  0);
setEffAlphaKey(  spep_5,  beam,  255);

setEffScaleKey(  spep_5+160,  beam,  1.0, 1.0);
setEffMoveKey(  spep_5+160,  beam,  0,  0);
setEffRotateKey(  spep_5+160,  beam,  0);
setEffAlphaKey(  spep_5+160,  beam,  255);

-- ダメージ表示
dealDamage(spep_5+16);

endPhase( spep_5 + 110);

end