--1018240:超サイヤ人孫悟空_瞬間移動かめはめ波

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
SP_01 = 154283; --気溜め〜瞬間移動で撹乱〜かめはめ波構え(手前)
SP_02 = 154284; --気溜め〜瞬間移動で撹乱〜かめはめ波構え(奥)
SP_03 = 154285; --かめはめ波発射〜敵に命中
SP_04 = 154286; --ギャン〜爆発

--敵側
SP_01r = 154287; --気溜め〜瞬間移動で撹乱〜かめはめ波構え(手前)
SP_02r = 154288; --気溜め〜瞬間移動で撹乱〜かめはめ波構え(奥)
SP_03r = 154289; --かめはめ波発射〜敵に命中

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
-- 気溜め〜瞬間移動で撹乱〜かめはめ波構え(408F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tamef = entryEffectLife( spep_0 + 0, SP_01, 408, 0x100, -1, 0, 0, 0 );  --気溜め〜瞬間移動で撹乱〜かめはめ波構え(手前)(ef_001)
setEffMoveKey( spep_0 + 0, tamef, 0, 0 , 0 );
setEffMoveKey( spep_0 + 408, tamef, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tamef, 1.0, 1.0 );
setEffScaleKey( spep_0 + 408, tamef, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tamef, 0 );
setEffRotateKey( spep_0 + 408, tamef, 0 );
setEffAlphaKey( spep_0 + 0, tamef, 255 );
setEffAlphaKey( spep_0 + 408, tamef, 255 );

tameb = entryEffectLife( spep_0 + 0, SP_02, 408, 0x80, -1, 0, 0, 0 );  --気溜め〜瞬間移動で撹乱〜かめはめ波構え(奥)(ef_002)
setEffMoveKey( spep_0 + 0, tameb, 0, 0 , 0 );
setEffMoveKey( spep_0 + 408, tameb, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tameb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 408, tameb, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tameb, 0 );
setEffRotateKey( spep_0 + 408, tameb, 0 );
setEffAlphaKey( spep_0 + 0, tameb, 255 );
setEffAlphaKey( spep_0 + 408, tameb, 255 );

spep_x = spep_0 + 30;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 120, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 120, 515.5 , 0 );

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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 30, 906, 138, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 30, shuchusen1, 138, 20);

setEffMoveKey( spep_0 -3 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 30, shuchusen1, 1.06, 1.48 );
setEffScaleKey( spep_0 -3 + 160, shuchusen1, 1.06, 1.48 );
setEffScaleKey( spep_0 -3 + 162, shuchusen1, 1.15, 1.62 );
setEffScaleKey( spep_0 -3 + 164, shuchusen1, 1.25, 1.75 );
setEffScaleKey( spep_0 -3 + 166, shuchusen1, 1.34, 1.89 );
setEffScaleKey( spep_0 -3 + 168, shuchusen1, 1.44, 2.02 );

setEffRotateKey( spep_0 -3 + 30, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 30, shuchusen1, 90 );
setEffAlphaKey( spep_0 -3 + 32, shuchusen1, 178 );
setEffAlphaKey( spep_0 -3 + 160, shuchusen1, 178 );
setEffAlphaKey( spep_0 -3 + 162, shuchusen1, 134 );
setEffAlphaKey( spep_0 -3 + 164, shuchusen1, 89 );
setEffAlphaKey( spep_0 -3 + 166, shuchusen1, 45 );
setEffAlphaKey( spep_0 -3 + 168, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_0 -3 + 350, 906, 58, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 350, shuchusen2, 8, 20);

setEffMoveKey( spep_0 -3 + 350, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 408, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 350, shuchusen2, 1.06, 1.48 );
setEffScaleKey( spep_0 -3 + 408, shuchusen2, 1.06, 1.48 );

setEffRotateKey( spep_0 -3 + 350, shuchusen2, 0 );
setEffRotateKey( spep_0 -3 + 408, shuchusen2, 0 );

setEffAlphaKey( spep_0 -3 + 350, shuchusen2, 0 );
setEffAlphaKey( spep_0 -3 + 352, shuchusen2, 45 );
setEffAlphaKey( spep_0 -3 + 354, shuchusen2, 89 );
setEffAlphaKey( spep_0 -3 + 356, shuchusen2, 134 );
setEffAlphaKey( spep_0 -3 + 358, shuchusen2, 178 );
setEffAlphaKey( spep_0 -3 + 408, shuchusen2, 178 );

-- ** 書き文字エントリー ** --
ctShun = entryEffectLife( spep_0 -3 + 134, 10011, 26, 0x100, -1, 0, 19.4, 328.2 ); --シュンッ
setEffMoveKey( spep_0 -3 + 134, ctShun, 19.4, 328.2, 0 );
setEffMoveKey( spep_0 -3 + 160, ctShun, 19.5, 324, 0 );

setEffScaleKey( spep_0 -3 + 134, ctShun, 0.87, 0.87 );
setEffScaleKey( spep_0 -3 + 136, ctShun, 2.91, 2.91 );
setEffScaleKey( spep_0 -3 + 138, ctShun, 2.91, 2.91 );
setEffScaleKey( spep_0 -3 + 140, ctShun, 2.9, 2.9 );
setEffScaleKey( spep_0 -3 + 142, ctShun, 2.88, 2.88 );
setEffScaleKey( spep_0 -3 + 144, ctShun, 2.86, 2.86 );
setEffScaleKey( spep_0 -3 + 146, ctShun, 2.82, 2.82 );
setEffScaleKey( spep_0 -3 + 148, ctShun, 2.77, 2.77 );
setEffScaleKey( spep_0 -3 + 150, ctShun, 2.7, 2.7 );
setEffScaleKey( spep_0 -3 + 152, ctShun, 2.61, 2.61 );
setEffScaleKey( spep_0 -3 + 154, ctShun, 2.47, 2.47 );
setEffScaleKey( spep_0 -3 + 156, ctShun, 2.26, 2.26 );
setEffScaleKey( spep_0 -3 + 158, ctShun, 1.91, 1.91 );
setEffScaleKey( spep_0 -3 + 160, ctShun, 1.15, 1.15 );

setEffRotateKey( spep_0 -3 + 134, ctShun, 16 );
setEffRotateKey( spep_0 -3 + 160, ctShun, 16 );

setEffAlphaKey( spep_0 -3 + 134, ctShun, 255 );
setEffAlphaKey( spep_0 -3 + 136, ctShun, 255 );
setEffAlphaKey( spep_0 -3 + 138, ctShun, 255 );
setEffAlphaKey( spep_0 -3 + 140, ctShun, 253 );
setEffAlphaKey( spep_0 -3 + 142, ctShun, 251 );
setEffAlphaKey( spep_0 -3 + 144, ctShun, 248 );
setEffAlphaKey( spep_0 -3 + 146, ctShun, 242 );
setEffAlphaKey( spep_0 -3 + 148, ctShun, 235 );
setEffAlphaKey( spep_0 -3 + 150, ctShun, 225 );
setEffAlphaKey( spep_0 -3 + 152, ctShun, 211 );
setEffAlphaKey( spep_0 -3 + 154, ctShun, 191 );
setEffAlphaKey( spep_0 -3 + 156, ctShun, 161 );
setEffAlphaKey( spep_0 -3 + 158, ctShun, 111 );
setEffAlphaKey( spep_0 -3 + 160, ctShun, 0 );

ctExclamation = entryEffectLife( spep_0 -3 + 202, 10000, 46, 0x100, -1, 0, 23.2, 173.9 ); --!!
setEffMoveKey( spep_0 -3 + 202, ctExclamation, 23.2, 173.9 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctExclamation, 53.8, 207.5 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctExclamation, 57.7, 232.6 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctExclamation, 62.2, 220.3 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctExclamation, 53.6, 204.6 , 0 );

setEffScaleKey( spep_0 -3 + 202, ctExclamation, 1.84, 1.85 );
setEffScaleKey( spep_0 -3 + 204, ctExclamation, 3.1, 3.12 );
setEffScaleKey( spep_0 -3 + 206, ctExclamation, 3.53, 3.55 );
setEffScaleKey( spep_0 -3 + 208, ctExclamation, 3.53, 3.55 );
setEffScaleKey( spep_0 -3 + 210, ctExclamation, 2.94, 2.95 );
setEffScaleKey( spep_0 -3 + 248, ctExclamation, 2.94, 2.95 );

setEffRotateKey( spep_0 -3 + 202, ctExclamation, 20 );
setEffRotateKey( spep_0 -3 + 248, ctExclamation, 20 );

setEffAlphaKey( spep_0 -3 + 202, ctExclamation, 255 );
setEffAlphaKey( spep_0 -3 + 248, ctExclamation, 255 );

ctExclamation2 = entryEffectLife( spep_0 -3 + 358, 10000, 40, 0x100, -1, 0, 145.8, 380.4 ); --!!
setEffMoveKey( spep_0 -3 + 358, ctExclamation2, 145.8, 380.4 , 0 );
setEffMoveKey( spep_0 -3 + 360, ctExclamation2, 139.5, 410.2 , 0 );
setEffMoveKey( spep_0 -3 + 362, ctExclamation2, 129.3, 422.2 , 0 );
setEffMoveKey( spep_0 -3 + 364, ctExclamation2, 136.6, 420.3 , 0 );
setEffMoveKey( spep_0 -3 + 366, ctExclamation2, 133.3, 403.6 , 0 );
setEffMoveKey( spep_0 -3 + 368, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 370, ctExclamation2, 134.3, 405.3 , 0 );
setEffMoveKey( spep_0 -3 + 372, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 374, ctExclamation2, 133.3, 403.6 , 0 );
setEffMoveKey( spep_0 -3 + 376, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 378, ctExclamation2, 134.3, 405.3 , 0 );
setEffMoveKey( spep_0 -3 + 380, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 382, ctExclamation2, 133.3, 403.6 , 0 );
setEffMoveKey( spep_0 -3 + 384, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 386, ctExclamation2, 134.3, 405.3 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 390, ctExclamation2, 133.3, 403.6 , 0 );
setEffMoveKey( spep_0 -3 + 392, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 394, ctExclamation2, 134.3, 405.3 , 0 );
setEffMoveKey( spep_0 -3 + 396, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 398, ctExclamation2, 133.3, 403.6 , 0 );


setEffScaleKey( spep_0 -3 + 358, ctExclamation2, 0.65, 0.65 );
setEffScaleKey( spep_0 -3 + 360, ctExclamation2, 1.64, 1.63 );
setEffScaleKey( spep_0 -3 + 362, ctExclamation2, 1.98, 1.96 );
setEffScaleKey( spep_0 -3 + 364, ctExclamation2, 1.98, 1.96 );
setEffScaleKey( spep_0 -3 + 366, ctExclamation2, 1.37, 1.36 );
setEffScaleKey( spep_0 -3 + 398, ctExclamation2, 1.37, 1.36 );

setEffRotateKey( spep_0 -3 + 358, ctExclamation2, -8 );
setEffRotateKey( spep_0 -3 + 398, ctExclamation2, -8 );

setEffAlphaKey( spep_0 -3 + 358, ctExclamation2, 255 );
setEffAlphaKey( spep_0 -3 + 398, ctExclamation2, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 180, 1, 1 );
setDisp( spep_0 -3 + 408, 1, 0 );
changeAnime( spep_0 -3 + 180, 1, 100 );
changeAnime( spep_0 -3 + 212, 1, 118 );
changeAnime( spep_0 -3 + 270, 1, 2 );
changeAnime( spep_0 -3 + 368, 1, 100 );

setShakeChara( spep_0 -3 + 196, 1, 40, 10 );
setShakeChara( spep_0 -3 + 266, 1, 40, 10 );
setShakeChara( spep_0 -3 + 348, 1, 60, 10 );

setMoveKey( spep_0 -3 + 180, 1, 0, -40, 0 );
setMoveKey( spep_0 -3 + 211, 1, 0, -40, 0 );
setMoveKey( spep_0 -3 + 212, 1, 25, -40, 0 );
setMoveKey( spep_0 -3 + 269, 1, 25, -40, 0 );
setMoveKey( spep_0 -3 + 270, 1, -37.5, -22, 0 );
setMoveKey( spep_0 -3 + 300, 1, -38, -22, 0 );
setMoveKey( spep_0 -3 + 312, 1, -24.375, -1.875, 0 );
setMoveKey( spep_0 -3 + 318, 1, -10.75, 18.25, 0 );
setMoveKey( spep_0 -3 + 324, 1, 2.875, 38.375, 0 );
setMoveKey( spep_0 -3 + 327, 1, 16.5, 58.5, 0 );
setMoveKey( spep_0 -3 + 330, 1, 30.125, 78.625, 0 );
setMoveKey( spep_0 -3 + 332, 1, 43.75, 98.75, 0 );
setMoveKey( spep_0 -3 + 335, 1, 71, 139, 0 );
setMoveKey( spep_0 -3 + 337, 1, 98.25, 179.25, 0 );
setMoveKey( spep_0 -3 + 340, 1, 125.5, 219.5, 0 );
setMoveKey( spep_0 -3 + 342, 1, 139.125, 239.625, 0 );
setMoveKey( spep_0 -3 + 345, 1, 152.75, 259.75, 0 );
setMoveKey( spep_0 -3 + 356, 1, 175, 295, 0 );
setMoveKey( spep_0 -3 + 357, 1, 180, 300, 0 );
setMoveKey( spep_0 -3 + 367, 1, 180, 300, 0 );
setMoveKey( spep_0 -3 + 368, 1, 200, 300, 0 );
setMoveKey( spep_0 -3 + 408, 1, 200, 300, 0 );

setScaleKey( spep_0 -3 + 180, 1, 2, 2 );
setScaleKey( spep_0 -3 + 212, 1, 2, 2 );
setScaleKey( spep_0 -3 + 269, 1, 2, 2 );
setScaleKey( spep_0 -3 + 270, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 300, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 357, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 408, 1, 0.8, 0.8 );

setRotateKey( spep_0 -3 + 180, 1, 0 );
setRotateKey( spep_0 -3 + 408, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 28, 1035 );  --気溜め
playSe( spep_x + 16, 1018 );  --ごごご
playSe( spep_0 + 130, 1109 );  --瞬間移動
playSe( spep_0 + 192, 1109 );  --瞬間移動
playSe( spep_0 + 222, 1109 );  --瞬間移動
playSe( spep_0 + 268, 1109 );  --瞬間移動

SE0 = playSe( spep_0 + 288, 1132 );  --発射前
setSeVolume( spep_0 + 288, 1132, 0 );
setSeVolume( spep_0 + 318, 1132, 50 );
stopSe( spep_0 + 408, SE0, 0 );

SE1 = playSe( spep_0 + 316, 1037 );  --発射前
stopSe( spep_0 + 408, SE1, 0 );

SE2 = playSe( spep_0 + 316, 55 );  --発射前
stopSe( spep_0 + 408, SE2, 0 );

-- ** 白フェード ** --
entryFade( spep_0 -3 + 170, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 400, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 408, 0, 0, 0, 0, 180 ); --薄い黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 408;

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
entryFade( spep_1 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波発射〜敵に命中(138F)
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --斜め撃ち(ef_004)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 138, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 138, hassha, 255 );

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_2 -3 + 3, 10012, 47, 0x100, -1, 0, -60.7, 291.6 ); --ズオッ
setEffMoveKey( spep_2 -3 + 3, ctZuo, -60.7, 291.6 , 0 );
setEffMoveKey( spep_2 -3 + 4, ctZuo, -78.9, 334.4 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctZuo, -124.2, 385.7 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctZuo, -103.1, 384.1 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctZuo, -127.2, 385.7 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctZuo, -106.1, 384.2 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctZuo, -130.2, 385.8 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctZuo, -109.1, 384.3 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctZuo, -133.2, 385.8 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctZuo, -112.1, 384.4 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctZuo, -136.2, 385.9 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctZuo, -115.1, 384.5 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZuo, -139.2, 385.9 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZuo, -118.2, 384.6 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZuo, -142.2, 386 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZuo, -121.2, 384.7 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZuo, -145.2, 386 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZuo, -124.1, 384.8 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZuo, -148.2, 386 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZuo, -127.1, 384.9 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZuo, -151.2, 386 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZuo, -130.1, 385 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctZuo, -162, 399.5 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZuo, -125.7, 404.7 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctZuo, -122.7, 411.4 , 0 );

setEffScaleKey( spep_2 -3 + 3, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_2 -3 + 4, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_2 -3 + 6, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 44, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 46, ctZuo, 4.09, 4.09 );
setEffScaleKey( spep_2 -3 + 48, ctZuo, 5.46, 5.46 );
setEffScaleKey( spep_2 -3 + 50, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 3, ctZuo, 6.9 );
setEffRotateKey( spep_2 -3 + 4, ctZuo, -3.3 );
setEffRotateKey( spep_2 -3 + 6, ctZuo, -13.5 );
setEffRotateKey( spep_2 -3 + 8, ctZuo, -13.6 );
setEffRotateKey( spep_2 -3 + 10, ctZuo, -13.7 );
setEffRotateKey( spep_2 -3 + 12, ctZuo, -13.7 );
setEffRotateKey( spep_2 -3 + 14, ctZuo, -13.8 );
setEffRotateKey( spep_2 -3 + 16, ctZuo, -13.9 );
setEffRotateKey( spep_2 -3 + 18, ctZuo, -14 );
setEffRotateKey( spep_2 -3 + 20, ctZuo, -14.1 );
setEffRotateKey( spep_2 -3 + 22, ctZuo, -14.1 );
setEffRotateKey( spep_2 -3 + 24, ctZuo, -14.2 );
setEffRotateKey( spep_2 -3 + 26, ctZuo, -14.3 );
setEffRotateKey( spep_2 -3 + 28, ctZuo, -14.4 );
setEffRotateKey( spep_2 -3 + 30, ctZuo, -14.4 );
setEffRotateKey( spep_2 -3 + 32, ctZuo, -14.5 );
setEffRotateKey( spep_2 -3 + 34, ctZuo, -14.6 );
setEffRotateKey( spep_2 -3 + 36, ctZuo, -14.7 );
setEffRotateKey( spep_2 -3 + 38, ctZuo, -14.8 );
setEffRotateKey( spep_2 -3 + 40, ctZuo, -14.8 );
setEffRotateKey( spep_2 -3 + 42, ctZuo, -14.9 );
setEffRotateKey( spep_2 -3 + 44, ctZuo, -15 );
setEffRotateKey( spep_2 -3 + 46, ctZuo, -11.7 );
setEffRotateKey( spep_2 -3 + 48, ctZuo, -8.5 );
setEffRotateKey( spep_2 -3 + 50, ctZuo, -5.2 );

setEffAlphaKey( spep_2 -3 + 3, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 44, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 46, ctZuo, 170 );
setEffAlphaKey( spep_2 -3 + 48, ctZuo, 85 );
setEffAlphaKey( spep_2 -3 + 50, ctZuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 138, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SE3 = playSe( spep_2 + 0, 1022 );  --発射

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE3, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵の動き ** --
setDisp( spep_2 -3 + 80, 1, 1 );
setDisp( spep_2 + 138, 1, 0 );
changeAnime( spep_2 -3 + 80, 1, 100 );
changeAnime( spep_2 -3 + 126, 1, 104 );

setShakeChara( spep_2 -3 + 80, 1, 58, 10 );

setMoveKey( spep_2 -3 + 80, 1, 100, 200, 0 );
setMoveKey( spep_2 -3 + 138, 1, 0, 50, 0 );

setScaleKey( spep_2 -3 + 80, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 138, 1, 3.5, 3.5 );

setRotateKey( spep_2 -3 + 80, 1, 0, 0 );
setRotateKey( spep_2 -3 + 138, 1, 0, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 130, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 60, 1021 );  --発射
setSeVolume( spep_2 + 60, 1022, 100 );
setSeVolume( spep_2 + 124, 1022, 150 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 138;

------------------------------------------------------
-- ギャン〜爆発(238F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, 190000, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 60, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 60, finish, 255 );

hidan = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --被弾(ef_005)
setEffMoveKey( spep_3 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 238, hidan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 238, hidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan, 0 );
setEffRotateKey( spep_3 + 238, hidan, 0 );
setEffAlphaKey( spep_3 + 0, hidan, 255 );
setEffAlphaKey( spep_3 + 238, hidan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 238, 0, 0, 0, 0, 180 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 -3 + 48, 10, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 -3 + 78, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_3 -3 + 3, 10006, 55, 0x100, -1, 0, 7.1, 306.8 ); --ギャンッ
setEffMoveKey( spep_3 -3 + 3, ctGyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctGyan, 7.1, 306.8 , 0 );

--setEffScaleKey( spep_3 -3 + 0, ctGyan, 0.6, 0.6 );
setEffScaleKey( spep_3 -3 + 3, ctGyan, 2.45, 2.8 );
setEffScaleKey( spep_3 -3 + 4, ctGyan, 2.8, 3.2 );
setEffScaleKey( spep_3 -3 + 6, ctGyan, 3.15, 3.6 );
setEffScaleKey( spep_3 -3 + 8, ctGyan, 3.5, 4 );
setEffScaleKey( spep_3 -3 + 10, ctGyan, 3.535, 4.04 );
setEffScaleKey( spep_3 -3 + 12, ctGyan, 3.57, 4.08 );
setEffScaleKey( spep_3 -3 + 14, ctGyan, 3.57, 4.08 );
setEffScaleKey( spep_3 -3 + 16, ctGyan, 3.605, 4.12 );
setEffScaleKey( spep_3 -3 + 18, ctGyan, 3.64, 4.16 );
setEffScaleKey( spep_3 -3 + 20, ctGyan, 3.675, 4.2 );
setEffScaleKey( spep_3 -3 + 22, ctGyan, 3.71, 4.24 );
setEffScaleKey( spep_3 -3 + 24, ctGyan, 3.71, 4.24 );
setEffScaleKey( spep_3 -3 + 26, ctGyan, 3.745, 4.28 );
setEffScaleKey( spep_3 -3 + 28, ctGyan, 3.78, 4.32 );
setEffScaleKey( spep_3 -3 + 30, ctGyan, 3.815, 4.36 );
setEffScaleKey( spep_3 -3 + 32, ctGyan, 3.85, 4.4 );
setEffScaleKey( spep_3 -3 + 34, ctGyan, 3.85, 4.4 );
setEffScaleKey( spep_3 -3 + 36, ctGyan, 3.885, 4.44 );
setEffScaleKey( spep_3 -3 + 38, ctGyan, 3.92, 4.48 );
setEffScaleKey( spep_3 -3 + 40, ctGyan, 3.955, 4.52 );
setEffScaleKey( spep_3 -3 + 42, ctGyan, 3.955, 4.52 );
setEffScaleKey( spep_3 -3 + 44, ctGyan, 3.99, 4.56 );
setEffScaleKey( spep_3 -3 + 46, ctGyan, 4.025, 4.6 );
setEffScaleKey( spep_3 -3 + 48, ctGyan, 4.06, 4.64 );
setEffScaleKey( spep_3 -3 + 50, ctGyan, 4.095, 4.68 );
setEffScaleKey( spep_3 -3 + 52, ctGyan, 4.095, 4.68 );
setEffScaleKey( spep_3 -3 + 54, ctGyan, 4.13, 4.72 );
setEffScaleKey( spep_3 -3 + 56, ctGyan, 4.165, 4.76 );
setEffScaleKey( spep_3 -3 + 58, ctGyan, 4.2, 4.8 );

setEffRotateKey( spep_3 -3 + 3, ctGyan, 0 );
setEffRotateKey( spep_3 -3 + 58, ctGyan, 0 );

setEffAlphaKey( spep_3 -3 + 3, ctGyan, 255 );
setEffAlphaKey( spep_3 -3 + 58, ctGyan, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, 1023 );  --ギャン
playSe( spep_3 + 77, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 120 );
endPhase( spep_3 + 236 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め〜瞬間移動で撹乱〜かめはめ波構え(408F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tamef = entryEffectLife( spep_0 + 0, SP_01r, 408, 0x100, -1, 0, 0, 0 );  --気溜め〜瞬間移動で撹乱〜かめはめ波構え(手前)(ef_001)
setEffMoveKey( spep_0 + 0, tamef, 0, 0 , 0 );
setEffMoveKey( spep_0 + 408, tamef, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tamef, 1.0, 1.0 );
setEffScaleKey( spep_0 + 408, tamef, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tamef, 0 );
setEffRotateKey( spep_0 + 408, tamef, 0 );
setEffAlphaKey( spep_0 + 0, tamef, 255 );
setEffAlphaKey( spep_0 + 408, tamef, 255 );

tameb = entryEffectLife( spep_0 + 0, SP_02r, 408, 0x80, -1, 0, 0, 0 );  --気溜め〜瞬間移動で撹乱〜かめはめ波構え(奥)(ef_002)
setEffMoveKey( spep_0 + 0, tameb, 0, 0 , 0 );
setEffMoveKey( spep_0 + 408, tameb, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tameb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 408, tameb, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tameb, 0 );
setEffRotateKey( spep_0 + 408, tameb, 0 );
setEffAlphaKey( spep_0 + 0, tameb, 255 );
setEffAlphaKey( spep_0 + 408, tameb, 255 );

spep_x = spep_0 + 30;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 120, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 120, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 120, 515.5 , 0 );

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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 30, 906, 138, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 30, shuchusen1, 138, 20);

setEffMoveKey( spep_0 -3 + 30, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 30, shuchusen1, 1.06, 1.48 );
setEffScaleKey( spep_0 -3 + 160, shuchusen1, 1.06, 1.48 );
setEffScaleKey( spep_0 -3 + 162, shuchusen1, 1.15, 1.62 );
setEffScaleKey( spep_0 -3 + 164, shuchusen1, 1.25, 1.75 );
setEffScaleKey( spep_0 -3 + 166, shuchusen1, 1.34, 1.89 );
setEffScaleKey( spep_0 -3 + 168, shuchusen1, 1.44, 2.02 );

setEffRotateKey( spep_0 -3 + 30, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 168, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 30, shuchusen1, 90 );
setEffAlphaKey( spep_0 -3 + 32, shuchusen1, 178 );
setEffAlphaKey( spep_0 -3 + 160, shuchusen1, 178 );
setEffAlphaKey( spep_0 -3 + 162, shuchusen1, 134 );
setEffAlphaKey( spep_0 -3 + 164, shuchusen1, 89 );
setEffAlphaKey( spep_0 -3 + 166, shuchusen1, 45 );
setEffAlphaKey( spep_0 -3 + 168, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_0 -3 + 350, 906, 58, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 350, shuchusen2, 8, 20);

setEffMoveKey( spep_0 -3 + 350, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 408, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 350, shuchusen2, 1.06, 1.48 );
setEffScaleKey( spep_0 -3 + 408, shuchusen2, 1.06, 1.48 );

setEffRotateKey( spep_0 -3 + 350, shuchusen2, 0 );
setEffRotateKey( spep_0 -3 + 408, shuchusen2, 0 );

setEffAlphaKey( spep_0 -3 + 350, shuchusen2, 0 );
setEffAlphaKey( spep_0 -3 + 352, shuchusen2, 45 );
setEffAlphaKey( spep_0 -3 + 354, shuchusen2, 89 );
setEffAlphaKey( spep_0 -3 + 356, shuchusen2, 134 );
setEffAlphaKey( spep_0 -3 + 358, shuchusen2, 178 );
setEffAlphaKey( spep_0 -3 + 408, shuchusen2, 178 );

-- ** 書き文字エントリー ** --
ctShun = entryEffectLife( spep_0 -3 + 134, 10011, 26, 0x100, -1, 0, 19.4, 328.2 ); --シュンッ
setEffMoveKey( spep_0 -3 + 134, ctShun, 19.4, 328.2, 0 );
setEffMoveKey( spep_0 -3 + 160, ctShun, 19.5, 324, 0 );

setEffScaleKey( spep_0 -3 + 134, ctShun, 0.87, 0.87 );
setEffScaleKey( spep_0 -3 + 136, ctShun, 2.91, 2.91 );
setEffScaleKey( spep_0 -3 + 138, ctShun, 2.91, 2.91 );
setEffScaleKey( spep_0 -3 + 140, ctShun, 2.9, 2.9 );
setEffScaleKey( spep_0 -3 + 142, ctShun, 2.88, 2.88 );
setEffScaleKey( spep_0 -3 + 144, ctShun, 2.86, 2.86 );
setEffScaleKey( spep_0 -3 + 146, ctShun, 2.82, 2.82 );
setEffScaleKey( spep_0 -3 + 148, ctShun, 2.77, 2.77 );
setEffScaleKey( spep_0 -3 + 150, ctShun, 2.7, 2.7 );
setEffScaleKey( spep_0 -3 + 152, ctShun, 2.61, 2.61 );
setEffScaleKey( spep_0 -3 + 154, ctShun, 2.47, 2.47 );
setEffScaleKey( spep_0 -3 + 156, ctShun, 2.26, 2.26 );
setEffScaleKey( spep_0 -3 + 158, ctShun, 1.91, 1.91 );
setEffScaleKey( spep_0 -3 + 160, ctShun, 1.15, 1.15 );

setEffRotateKey( spep_0 -3 + 134, ctShun, 16 );
setEffRotateKey( spep_0 -3 + 160, ctShun, 16 );

setEffAlphaKey( spep_0 -3 + 134, ctShun, 255 );
setEffAlphaKey( spep_0 -3 + 136, ctShun, 255 );
setEffAlphaKey( spep_0 -3 + 138, ctShun, 255 );
setEffAlphaKey( spep_0 -3 + 140, ctShun, 253 );
setEffAlphaKey( spep_0 -3 + 142, ctShun, 251 );
setEffAlphaKey( spep_0 -3 + 144, ctShun, 248 );
setEffAlphaKey( spep_0 -3 + 146, ctShun, 242 );
setEffAlphaKey( spep_0 -3 + 148, ctShun, 235 );
setEffAlphaKey( spep_0 -3 + 150, ctShun, 225 );
setEffAlphaKey( spep_0 -3 + 152, ctShun, 211 );
setEffAlphaKey( spep_0 -3 + 154, ctShun, 191 );
setEffAlphaKey( spep_0 -3 + 156, ctShun, 161 );
setEffAlphaKey( spep_0 -3 + 158, ctShun, 111 );
setEffAlphaKey( spep_0 -3 + 160, ctShun, 0 );

ctExclamation = entryEffectLife( spep_0 -3 + 202, 10000, 46, 0x100, -1, 0, 23.2, 173.9 ); --!!
setEffMoveKey( spep_0 -3 + 202, ctExclamation, 23.2, 173.9 , 0 );
setEffMoveKey( spep_0 -3 + 204, ctExclamation, 53.8, 207.5 , 0 );
setEffMoveKey( spep_0 -3 + 206, ctExclamation, 57.7, 232.6 , 0 );
setEffMoveKey( spep_0 -3 + 208, ctExclamation, 62.2, 220.3 , 0 );
setEffMoveKey( spep_0 -3 + 210, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 212, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctExclamation, 45.9, 212.9 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctExclamation, 53.6, 204.6 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctExclamation, 49.9, 214.8 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctExclamation, 53.6, 204.6 , 0 );

setEffScaleKey( spep_0 -3 + 202, ctExclamation, 1.84, 1.85 );
setEffScaleKey( spep_0 -3 + 204, ctExclamation, 3.1, 3.12 );
setEffScaleKey( spep_0 -3 + 206, ctExclamation, 3.53, 3.55 );
setEffScaleKey( spep_0 -3 + 208, ctExclamation, 3.53, 3.55 );
setEffScaleKey( spep_0 -3 + 210, ctExclamation, 2.94, 2.95 );
setEffScaleKey( spep_0 -3 + 248, ctExclamation, 2.94, 2.95 );

setEffRotateKey( spep_0 -3 + 202, ctExclamation, 20 );
setEffRotateKey( spep_0 -3 + 248, ctExclamation, 20 );

setEffAlphaKey( spep_0 -3 + 202, ctExclamation, 255 );
setEffAlphaKey( spep_0 -3 + 248, ctExclamation, 255 );

ctExclamation2 = entryEffectLife( spep_0 -3 + 358, 10000, 40, 0x100, -1, 0, 145.8, 380.4 ); --!!
setEffMoveKey( spep_0 -3 + 358, ctExclamation2, 145.8, 380.4 , 0 );
setEffMoveKey( spep_0 -3 + 360, ctExclamation2, 139.5, 410.2 , 0 );
setEffMoveKey( spep_0 -3 + 362, ctExclamation2, 129.3, 422.2 , 0 );
setEffMoveKey( spep_0 -3 + 364, ctExclamation2, 136.6, 420.3 , 0 );
setEffMoveKey( spep_0 -3 + 366, ctExclamation2, 133.3, 403.6 , 0 );
setEffMoveKey( spep_0 -3 + 368, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 370, ctExclamation2, 134.3, 405.3 , 0 );
setEffMoveKey( spep_0 -3 + 372, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 374, ctExclamation2, 133.3, 403.6 , 0 );
setEffMoveKey( spep_0 -3 + 376, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 378, ctExclamation2, 134.3, 405.3 , 0 );
setEffMoveKey( spep_0 -3 + 380, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 382, ctExclamation2, 133.3, 403.6 , 0 );
setEffMoveKey( spep_0 -3 + 384, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 386, ctExclamation2, 134.3, 405.3 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 390, ctExclamation2, 133.3, 403.6 , 0 );
setEffMoveKey( spep_0 -3 + 392, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 394, ctExclamation2, 134.3, 405.3 , 0 );
setEffMoveKey( spep_0 -3 + 396, ctExclamation2, 138.3, 402.3 , 0 );
setEffMoveKey( spep_0 -3 + 398, ctExclamation2, 133.3, 403.6 , 0 );


setEffScaleKey( spep_0 -3 + 358, ctExclamation2, 0.65, 0.65 );
setEffScaleKey( spep_0 -3 + 360, ctExclamation2, 1.64, 1.63 );
setEffScaleKey( spep_0 -3 + 362, ctExclamation2, 1.98, 1.96 );
setEffScaleKey( spep_0 -3 + 364, ctExclamation2, 1.98, 1.96 );
setEffScaleKey( spep_0 -3 + 366, ctExclamation2, 1.37, 1.36 );
setEffScaleKey( spep_0 -3 + 398, ctExclamation2, 1.37, 1.36 );

setEffRotateKey( spep_0 -3 + 358, ctExclamation2, -8 );
setEffRotateKey( spep_0 -3 + 398, ctExclamation2, -8 );

setEffAlphaKey( spep_0 -3 + 358, ctExclamation2, 255 );
setEffAlphaKey( spep_0 -3 + 398, ctExclamation2, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 180, 1, 1 );
setDisp( spep_0 -3 + 408, 1, 0 );
changeAnime( spep_0 -3 + 180, 1, 100 );
changeAnime( spep_0 -3 + 212, 1, 118 );
changeAnime( spep_0 -3 + 270, 1, 2 );
changeAnime( spep_0 -3 + 368, 1, 100 );

setShakeChara( spep_0 -3 + 196, 1, 40, 10 );
setShakeChara( spep_0 -3 + 266, 1, 40, 10 );
setShakeChara( spep_0 -3 + 348, 1, 60, 10 );

setMoveKey( spep_0 -3 + 180, 1, 0, -40, 0 );
setMoveKey( spep_0 -3 + 211, 1, 0, -40, 0 );
setMoveKey( spep_0 -3 + 212, 1, 25, -40, 0 );
setMoveKey( spep_0 -3 + 269, 1, 25, -40, 0 );
setMoveKey( spep_0 -3 + 270, 1, -37.5, -22, 0 );
setMoveKey( spep_0 -3 + 300, 1, -38, -22, 0 );
setMoveKey( spep_0 -3 + 312, 1, -24.375, -1.875, 0 );
setMoveKey( spep_0 -3 + 318, 1, -10.75, 18.25, 0 );
setMoveKey( spep_0 -3 + 324, 1, 2.875, 38.375, 0 );
setMoveKey( spep_0 -3 + 327, 1, 16.5, 58.5, 0 );
setMoveKey( spep_0 -3 + 330, 1, 30.125, 78.625, 0 );
setMoveKey( spep_0 -3 + 332, 1, 43.75, 98.75, 0 );
setMoveKey( spep_0 -3 + 335, 1, 71, 139, 0 );
setMoveKey( spep_0 -3 + 337, 1, 98.25, 179.25, 0 );
setMoveKey( spep_0 -3 + 340, 1, 125.5, 219.5, 0 );
setMoveKey( spep_0 -3 + 342, 1, 139.125, 239.625, 0 );
setMoveKey( spep_0 -3 + 345, 1, 152.75, 259.75, 0 );
setMoveKey( spep_0 -3 + 356, 1, 175, 295, 0 );
setMoveKey( spep_0 -3 + 357, 1, 180, 300, 0 );
setMoveKey( spep_0 -3 + 367, 1, 180, 300, 0 );
setMoveKey( spep_0 -3 + 368, 1, 200, 300, 0 );
setMoveKey( spep_0 -3 + 408, 1, 200, 300, 0 );

setScaleKey( spep_0 -3 + 180, 1, 2, 2 );
setScaleKey( spep_0 -3 + 212, 1, 2, 2 );
setScaleKey( spep_0 -3 + 269, 1, 2, 2 );
setScaleKey( spep_0 -3 + 270, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 300, 1, 1.8, 1.8 );
setScaleKey( spep_0 -3 + 357, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 408, 1, 0.8, 0.8 );

setRotateKey( spep_0 -3 + 180, 1, 0 );
setRotateKey( spep_0 -3 + 408, 1, 0 );

-- ** 音 ** --
playSe( spep_0 + 28, 1035 );  --気溜め
playSe( spep_x + 16, 1018 );  --ごごご
playSe( spep_0 + 130, 1109 );  --瞬間移動
playSe( spep_0 + 192, 1109 );  --瞬間移動
playSe( spep_0 + 222, 1109 );  --瞬間移動
playSe( spep_0 + 268, 1109 );  --瞬間移動

SE0 = playSe( spep_0 + 288, 1132 );  --発射前
setSeVolume( spep_0 + 288, 1132, 0 );
setSeVolume( spep_0 + 318, 1132, 50 );
stopSe( spep_0 + 408, SE0, 0 );

SE1 = playSe( spep_0 + 316, 1037 );  --発射前
stopSe( spep_0 + 408, SE1, 0 );

SE2 = playSe( spep_0 + 316, 55 );  --発射前
stopSe( spep_0 + 408, SE2, 0 );

-- ** 白フェード ** --
entryFade( spep_0 -3 + 170, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 400, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 408, 0, 0, 0, 0, 180 ); --薄い黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 408;

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
entryFade( spep_1 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波発射〜敵に命中(138F)
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --斜め撃ち(ef_004)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 138, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 138, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 138, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 138, hassha, 255 );

-- ** 書き文字エントリー ** --
ctZuo = entryEffectLife( spep_2 -3 + 3, 10012, 47, 0x100, -1, 0, -60.7, 291.6 ); --ズオッ
setEffMoveKey( spep_2 -3 + 3, ctZuo, -60.7, 291.6 , 0 );
setEffMoveKey( spep_2 -3 + 4, ctZuo, -78.9, 334.4 , 0 );
setEffMoveKey( spep_2 -3 + 6, ctZuo, -124.2, 385.7 , 0 );
setEffMoveKey( spep_2 -3 + 8, ctZuo, -103.1, 384.1 , 0 );
setEffMoveKey( spep_2 -3 + 10, ctZuo, -127.2, 385.7 , 0 );
setEffMoveKey( spep_2 -3 + 12, ctZuo, -106.1, 384.2 , 0 );
setEffMoveKey( spep_2 -3 + 14, ctZuo, -130.2, 385.8 , 0 );
setEffMoveKey( spep_2 -3 + 16, ctZuo, -109.1, 384.3 , 0 );
setEffMoveKey( spep_2 -3 + 18, ctZuo, -133.2, 385.8 , 0 );
setEffMoveKey( spep_2 -3 + 20, ctZuo, -112.1, 384.4 , 0 );
setEffMoveKey( spep_2 -3 + 22, ctZuo, -136.2, 385.9 , 0 );
setEffMoveKey( spep_2 -3 + 24, ctZuo, -115.1, 384.5 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctZuo, -139.2, 385.9 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctZuo, -118.2, 384.6 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctZuo, -142.2, 386 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctZuo, -121.2, 384.7 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctZuo, -145.2, 386 , 0 );
setEffMoveKey( spep_2 -3 + 36, ctZuo, -124.1, 384.8 , 0 );
setEffMoveKey( spep_2 -3 + 38, ctZuo, -148.2, 386 , 0 );
setEffMoveKey( spep_2 -3 + 40, ctZuo, -127.1, 384.9 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctZuo, -151.2, 386 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctZuo, -130.1, 385 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctZuo, -162, 399.5 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctZuo, -125.7, 404.7 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctZuo, -122.7, 411.4 , 0 );

setEffScaleKey( spep_2 -3 + 3, ctZuo, 0.34, 0.34 );
setEffScaleKey( spep_2 -3 + 4, ctZuo, 1.54, 1.54 );
setEffScaleKey( spep_2 -3 + 6, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 44, ctZuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 46, ctZuo, 4.09, 4.09 );
setEffScaleKey( spep_2 -3 + 48, ctZuo, 5.46, 5.46 );
setEffScaleKey( spep_2 -3 + 50, ctZuo, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 3, ctZuo, 6.9 );
setEffRotateKey( spep_2 -3 + 4, ctZuo, -3.3 );
setEffRotateKey( spep_2 -3 + 6, ctZuo, -13.5 );
setEffRotateKey( spep_2 -3 + 8, ctZuo, -13.6 );
setEffRotateKey( spep_2 -3 + 10, ctZuo, -13.7 );
setEffRotateKey( spep_2 -3 + 12, ctZuo, -13.7 );
setEffRotateKey( spep_2 -3 + 14, ctZuo, -13.8 );
setEffRotateKey( spep_2 -3 + 16, ctZuo, -13.9 );
setEffRotateKey( spep_2 -3 + 18, ctZuo, -14 );
setEffRotateKey( spep_2 -3 + 20, ctZuo, -14.1 );
setEffRotateKey( spep_2 -3 + 22, ctZuo, -14.1 );
setEffRotateKey( spep_2 -3 + 24, ctZuo, -14.2 );
setEffRotateKey( spep_2 -3 + 26, ctZuo, -14.3 );
setEffRotateKey( spep_2 -3 + 28, ctZuo, -14.4 );
setEffRotateKey( spep_2 -3 + 30, ctZuo, -14.4 );
setEffRotateKey( spep_2 -3 + 32, ctZuo, -14.5 );
setEffRotateKey( spep_2 -3 + 34, ctZuo, -14.6 );
setEffRotateKey( spep_2 -3 + 36, ctZuo, -14.7 );
setEffRotateKey( spep_2 -3 + 38, ctZuo, -14.8 );
setEffRotateKey( spep_2 -3 + 40, ctZuo, -14.8 );
setEffRotateKey( spep_2 -3 + 42, ctZuo, -14.9 );
setEffRotateKey( spep_2 -3 + 44, ctZuo, -15 );
setEffRotateKey( spep_2 -3 + 46, ctZuo, -11.7 );
setEffRotateKey( spep_2 -3 + 48, ctZuo, -8.5 );
setEffRotateKey( spep_2 -3 + 50, ctZuo, -5.2 );

setEffAlphaKey( spep_2 -3 + 3, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 44, ctZuo, 255 );
setEffAlphaKey( spep_2 -3 + 46, ctZuo, 170 );
setEffAlphaKey( spep_2 -3 + 48, ctZuo, 85 );
setEffAlphaKey( spep_2 -3 + 50, ctZuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 138, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SE3 = playSe( spep_2 + 0, 1022 );  --発射

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE3, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵の動き ** --
setDisp( spep_2 -3 + 80, 1, 1 );
setDisp( spep_2 + 138, 1, 0 );
changeAnime( spep_2 -3 + 80, 1, 100 );
changeAnime( spep_2 -3 + 126, 1, 104 );

setShakeChara( spep_2 -3 + 80, 1, 58, 10 );

setMoveKey( spep_2 -3 + 80, 1, 100, 200, 0 );
setMoveKey( spep_2 -3 + 138, 1, 0, 50, 0 );

setScaleKey( spep_2 -3 + 80, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 138, 1, 3.5, 3.5 );

setRotateKey( spep_2 -3 + 80, 1, 0, 0 );
setRotateKey( spep_2 -3 + 138, 1, 0, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 130, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 60, 1021 );  --発射
setSeVolume( spep_2 + 60, 1022, 100 );
setSeVolume( spep_2 + 124, 1022, 150 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 138;

------------------------------------------------------
-- ギャン〜爆発(238F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, 190000, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 60, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 60, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 60, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 60, finish, 255 );

hidan = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --被弾(ef_005)
setEffMoveKey( spep_3 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 238, hidan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 238, hidan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan, 0 );
setEffRotateKey( spep_3 + 238, hidan, 0 );
setEffAlphaKey( spep_3 + 0, hidan, 255 );
setEffAlphaKey( spep_3 + 238, hidan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 238, 0, 0, 0, 0, 180 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 -3 + 48, 10, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 -3 + 78, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_3 -3 + 3, 10006, 55, 0x100, -1, 0, 7.1, 306.8 ); --ギャンッ
setEffMoveKey( spep_3 -3 + 3, ctGyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctGyan, 7.1, 306.8 , 0 );

--setEffScaleKey( spep_3 -3 + 0, ctGyan, 0.6, 0.6 );
setEffScaleKey( spep_3 -3 + 3, ctGyan, 2.45, 2.8 );
setEffScaleKey( spep_3 -3 + 4, ctGyan, 2.8, 3.2 );
setEffScaleKey( spep_3 -3 + 6, ctGyan, 3.15, 3.6 );
setEffScaleKey( spep_3 -3 + 8, ctGyan, 3.5, 4 );
setEffScaleKey( spep_3 -3 + 10, ctGyan, 3.535, 4.04 );
setEffScaleKey( spep_3 -3 + 12, ctGyan, 3.57, 4.08 );
setEffScaleKey( spep_3 -3 + 14, ctGyan, 3.57, 4.08 );
setEffScaleKey( spep_3 -3 + 16, ctGyan, 3.605, 4.12 );
setEffScaleKey( spep_3 -3 + 18, ctGyan, 3.64, 4.16 );
setEffScaleKey( spep_3 -3 + 20, ctGyan, 3.675, 4.2 );
setEffScaleKey( spep_3 -3 + 22, ctGyan, 3.71, 4.24 );
setEffScaleKey( spep_3 -3 + 24, ctGyan, 3.71, 4.24 );
setEffScaleKey( spep_3 -3 + 26, ctGyan, 3.745, 4.28 );
setEffScaleKey( spep_3 -3 + 28, ctGyan, 3.78, 4.32 );
setEffScaleKey( spep_3 -3 + 30, ctGyan, 3.815, 4.36 );
setEffScaleKey( spep_3 -3 + 32, ctGyan, 3.85, 4.4 );
setEffScaleKey( spep_3 -3 + 34, ctGyan, 3.85, 4.4 );
setEffScaleKey( spep_3 -3 + 36, ctGyan, 3.885, 4.44 );
setEffScaleKey( spep_3 -3 + 38, ctGyan, 3.92, 4.48 );
setEffScaleKey( spep_3 -3 + 40, ctGyan, 3.955, 4.52 );
setEffScaleKey( spep_3 -3 + 42, ctGyan, 3.955, 4.52 );
setEffScaleKey( spep_3 -3 + 44, ctGyan, 3.99, 4.56 );
setEffScaleKey( spep_3 -3 + 46, ctGyan, 4.025, 4.6 );
setEffScaleKey( spep_3 -3 + 48, ctGyan, 4.06, 4.64 );
setEffScaleKey( spep_3 -3 + 50, ctGyan, 4.095, 4.68 );
setEffScaleKey( spep_3 -3 + 52, ctGyan, 4.095, 4.68 );
setEffScaleKey( spep_3 -3 + 54, ctGyan, 4.13, 4.72 );
setEffScaleKey( spep_3 -3 + 56, ctGyan, 4.165, 4.76 );
setEffScaleKey( spep_3 -3 + 58, ctGyan, 4.2, 4.8 );

setEffRotateKey( spep_3 -3 + 3, ctGyan, 0 );
setEffRotateKey( spep_3 -3 + 58, ctGyan, 0 );

setEffAlphaKey( spep_3 -3 + 3, ctGyan, 255 );
setEffAlphaKey( spep_3 -3 + 58, ctGyan, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, 1023 );  --ギャン
playSe( spep_3 + 77, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 120 );
endPhase( spep_3 + 236 );

end