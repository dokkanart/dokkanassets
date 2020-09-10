--超サイヤ人孫悟飯(青年期)＆超サイヤ人孫悟天(幼年期)_アクティブ_親子三大かめはめ波

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
SP_01 = 153311; --溜め〜発射
SP_02 = 153312; --３人で放つ
SP_03 = 153313; --迫る
SP_04 = 153314; --被弾・手前
SP_05 = 153315; --被弾・奥
SP_06 = 153316; --宇宙視点

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
-- 溜め〜発射(148F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamehame = entryEffectLife( spep_0 + 0, SP_01, 148, 0x100, -1, 0, 0, 0 );  --溜め〜発射(ef_001)
setEffMoveKey( spep_0 + 0, kamehame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, kamehame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamehame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 148, kamehame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamehame, 0 );
setEffRotateKey( spep_0 + 148, kamehame, 0 );
setEffAlphaKey( spep_0 + 0, kamehame, 255 );
setEffAlphaKey( spep_0 + 148, kamehame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 26, 0x100, -1, 0, 0, 200.1 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 26, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 200.1 , 0 );
setEffMoveKey( spep_0 + 2, shuchusen1, 0, 187.8 , 0 );
setEffMoveKey( spep_0 + 4, shuchusen1, 0, 175.4 , 0 );
setEffMoveKey( spep_0 + 6, shuchusen1, 0, 163.1 , 0 );
setEffMoveKey( spep_0 + 8, shuchusen1, 0, 150.8 , 0 );
setEffMoveKey( spep_0 + 10, shuchusen1, 0, 138.5 , 0 );
setEffMoveKey( spep_0 + 12, shuchusen1, 0, 126.2 , 0 );
setEffMoveKey( spep_0 + 14, shuchusen1, 0, 113.9 , 0 );
setEffMoveKey( spep_0 + 16, shuchusen1, 0, 101.6 , 0 );
setEffMoveKey( spep_0 + 18, shuchusen1, 0, 89.3 , 0 );
setEffMoveKey( spep_0 + 20, shuchusen1, 0, 77 , 0 );
setEffMoveKey( spep_0 + 22, shuchusen1, 0, 64.7 , 0 );
setEffMoveKey( spep_0 + 24, shuchusen1, 0, 52.4 , 0 );
setEffMoveKey( spep_0 + 26, shuchusen1, 0, 40.1 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.39, 1.39 );
setEffScaleKey( spep_0 + 26, shuchusen1, 1.39, 1.39 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 26, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 2, shuchusen1, 237 );
setEffAlphaKey( spep_0 + 4, shuchusen1, 220 );
setEffAlphaKey( spep_0 + 6, shuchusen1, 202 );
setEffAlphaKey( spep_0 + 8, shuchusen1, 185 );
setEffAlphaKey( spep_0 + 10, shuchusen1, 167 );
setEffAlphaKey( spep_0 + 12, shuchusen1, 149 );
setEffAlphaKey( spep_0 + 14, shuchusen1, 132 );
setEffAlphaKey( spep_0 + 16, shuchusen1, 114 );
setEffAlphaKey( spep_0 + 18, shuchusen1, 96 );
setEffAlphaKey( spep_0 + 20, shuchusen1, 79 );
setEffAlphaKey( spep_0 + 22, shuchusen1, 61 );
setEffAlphaKey( spep_0 + 24, shuchusen1, 44 );
setEffAlphaKey( spep_0 + 26, shuchusen1, 0 );

shuchusen2 = entryEffectLife( spep_0 + 58,  906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 58, shuchusen2, 90, 10 );

setEffMoveKey( spep_0 + 58, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 + 58, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_0 + 148, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_0 + 58, shuchusen2, 0 );
setEffRotateKey( spep_0 + 148, shuchusen2, 0 );

setEffAlphaKey( spep_0 + 58, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 148, shuchusen2, 255 );

-- ** ボイス ** --
--波ぁー！！
playVoice( spep_0 + 58, 118 );
setVoiceVolume( spep_0 + 58, 118, 250 );

-- ** 音 ** --
SE1 = playSe( spep_0 + 24, 15 );  --溜め
stopSe( spep_0+ 54, SE1, 10 );
playSe( spep_0 + 64, 1022 );  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 148, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 52, 4, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 126, 20, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 148;

------------------------------------------------------
-- 3人で放つ(444F)
------------------------------------------------------

-- ** エフェクト等 ** --
hanatsu = entryEffectLife( spep_1 + 0, SP_02, 444, 0x100, -1, 0, 0, 0 );  --放つ(ef_002)
setEffMoveKey( spep_1 + 0, hanatsu, 0, 0 , 0 );
setEffMoveKey( spep_1 + 444, hanatsu, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hanatsu, 1.0, 1.0 );
setEffScaleKey( spep_1 + 444, hanatsu, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hanatsu, 0 );
setEffRotateKey( spep_1 + 444, hanatsu, 0 );
setEffAlphaKey( spep_1 + 0, hanatsu, 255 );
setEffAlphaKey( spep_1 + 443, hanatsu, 255 );
setEffAlphaKey( spep_1 + 444, hanatsu, 0 );

a = 3;
-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 194,  906, 246 -a, 0x100, -1, 0, 0, 128 );  --集中線
setEffShake( spep_1 + 194, shuchusen3, 246 -a, 25 );

setEffMoveKey( spep_1 + 194, shuchusen3, 0, 128 , 0 );
setEffMoveKey( spep_1 + 196, shuchusen3, 0, 114.6 , 0 );
setEffMoveKey( spep_1 + 198, shuchusen3, 0, 101.1 , 0 );
setEffMoveKey( spep_1 + 200, shuchusen3, 0, 87.7 , 0 );
setEffMoveKey( spep_1 + 202, shuchusen3, 0, 74.2 , 0 );
setEffMoveKey( spep_1 + 204, shuchusen3, 0, 60.8 , 0 );
setEffMoveKey( spep_1 + 206, shuchusen3, 0, 47.3 , 0 );
setEffMoveKey( spep_1 + 208, shuchusen3, 0, 33.9 , 0 );
setEffMoveKey( spep_1 + 210, shuchusen3, 0, 20.4 , 0 );
setEffMoveKey( spep_1 + 212, shuchusen3, 0, 7 , 0 );
setEffMoveKey( spep_1 + 214, shuchusen3, 0, -6.5 , 0 );
setEffMoveKey( spep_1 + 216, shuchusen3, 0, -19.9 , 0 );
setEffMoveKey( spep_1 + 218, shuchusen3, 0, -33.4 , 0 );
setEffMoveKey( spep_1 + 220, shuchusen3, 0, -46.8 , 0 );
setEffMoveKey( spep_1 + 222, shuchusen3, 0, -60.3 , 0 );
setEffMoveKey( spep_1 + 224, shuchusen3, 0, -73.7 , 0 );
setEffMoveKey( spep_1 + 226, shuchusen3, 0, -87.2 , 0 );
setEffMoveKey( spep_1 + 228, shuchusen3, 0, -100.6 , 0 );
setEffMoveKey( spep_1 + 230, shuchusen3, 0, -114.1 , 0 );
setEffMoveKey( spep_1 + 232, shuchusen3, 0, -112 , 0 );
setEffMoveKey( spep_1 + 234, shuchusen3, 0, -110 , 0 );
setEffMoveKey( spep_1 + 236, shuchusen3, 0, -107.9 , 0 );
setEffMoveKey( spep_1 + 238, shuchusen3, 0, -105.8 , 0 );
setEffMoveKey( spep_1 + 240, shuchusen3, 0, -103.7 , 0 );
setEffMoveKey( spep_1 + 242, shuchusen3, 0, -101.7 , 0 );
setEffMoveKey( spep_1 + 244, shuchusen3, 0, -99.6 , 0 );
setEffMoveKey( spep_1 + 246, shuchusen3, 0, -97.5 , 0 );
setEffMoveKey( spep_1 + 248, shuchusen3, 0, -95.4 , 0 );
setEffMoveKey( spep_1 + 250, shuchusen3, 0, -93.4 , 0 );
setEffMoveKey( spep_1 + 252, shuchusen3, 0, -91.3 , 0 );
setEffMoveKey( spep_1 + 254, shuchusen3, 0, -89.2 , 0 );
setEffMoveKey( spep_1 + 256, shuchusen3, 0, -87.1 , 0 );
setEffMoveKey( spep_1 + 258, shuchusen3, 0, -85.1 , 0 );
setEffMoveKey( spep_1 + 260, shuchusen3, 0, -83 , 0 );
setEffMoveKey( spep_1 + 262, shuchusen3, 0, -80.9 , 0 );
setEffMoveKey( spep_1 + 264, shuchusen3, 0, -78.8 , 0 );
setEffMoveKey( spep_1 + 266, shuchusen3, 0, -76.8 , 0 );
setEffMoveKey( spep_1 + 268, shuchusen3, 0, -74.7 , 0 );
setEffMoveKey( spep_1 + 270, shuchusen3, 0, -72.6 , 0 );
setEffMoveKey( spep_1 + 272, shuchusen3, 0, -70.5 , 0 );
setEffMoveKey( spep_1 + 274, shuchusen3, 0, -68.5 , 0 );
setEffMoveKey( spep_1 + 276, shuchusen3, 0, -66.4 , 0 );
setEffMoveKey( spep_1 + 278, shuchusen3, 0, -64.3 , 0 );
setEffMoveKey( spep_1 + 280, shuchusen3, 0, -62.2 , 0 );
setEffMoveKey( spep_1 + 282, shuchusen3, 0, -60.2 , 0 );
setEffMoveKey( spep_1 + 284, shuchusen3, 0, -58.1 , 0 );
setEffMoveKey( spep_1 + 286, shuchusen3, 0, -56 , 0 );
setEffMoveKey( spep_1 + 288, shuchusen3, 0, -53.9 , 0 );
setEffMoveKey( spep_1 + 290, shuchusen3, 0, -51.9 , 0 );
setEffMoveKey( spep_1 + 292, shuchusen3, 0, -49.8 , 0 );
setEffMoveKey( spep_1 + 294, shuchusen3, 0, -47.7 , 0 );
setEffMoveKey( spep_1 + 296, shuchusen3, 0, -45.6 , 0 );
setEffMoveKey( spep_1 + 298, shuchusen3, 0, -43.6 , 0 );
setEffMoveKey( spep_1 + 300, shuchusen3, 0, -41.5 , 0 );
setEffMoveKey( spep_1 + 302, shuchusen3, 0, -39.4 , 0 );
setEffMoveKey( spep_1 + 304, shuchusen3, 0, -37.3 , 0 );
setEffMoveKey( spep_1 + 306, shuchusen3, 0, -35.3 , 0 );
setEffMoveKey( spep_1 + 308, shuchusen3, 0, -33.2 , 0 );
setEffMoveKey( spep_1 + 310, shuchusen3, 0, -31.1 , 0 );
setEffMoveKey( spep_1 + 312, shuchusen3, 0, -29 , 0 );
setEffMoveKey( spep_1 + 314, shuchusen3, 0, -27 , 0 );
setEffMoveKey( spep_1 + 316, shuchusen3, 0, -24.9 , 0 );
setEffMoveKey( spep_1 + 318, shuchusen3, 0, -22.8 , 0 );
setEffMoveKey( spep_1 + 320, shuchusen3, 0, -20.7 , 0 );
setEffMoveKey( spep_1 + 322, shuchusen3, 0, -18.7 , 0 );
setEffMoveKey( spep_1 + 324, shuchusen3, 0, -16.6 , 0 );
setEffMoveKey( spep_1 + 326, shuchusen3, 0, -14.5 , 0 );
setEffMoveKey( spep_1 + 328, shuchusen3, 0, -12.4 , 0 );
setEffMoveKey( spep_1 + 330, shuchusen3, 0, -10.4 , 0 );
setEffMoveKey( spep_1 + 332, shuchusen3, 0, -8.3 , 0 );
setEffMoveKey( spep_1 + 334, shuchusen3, 0, -6.2 , 0 );
setEffMoveKey( spep_1 + 336, shuchusen3, 0, -4.1 , 0 );
setEffMoveKey( spep_1 + 338, shuchusen3, 0, -2.1 , 0 );
setEffMoveKey( spep_1 + 340, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 440 -a, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 194, shuchusen3, 1.52, 1.52 );
setEffScaleKey( spep_1 + 196, shuchusen3, 1.51, 1.51 );
setEffScaleKey( spep_1 + 198, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_1 + 200, shuchusen3, 1.48, 1.48 );
setEffScaleKey( spep_1 + 202, shuchusen3, 1.47, 1.47 );
setEffScaleKey( spep_1 + 204, shuchusen3, 1.45, 1.45 );
setEffScaleKey( spep_1 + 206, shuchusen3, 1.44, 1.44 );
setEffScaleKey( spep_1 + 208, shuchusen3, 1.43, 1.43 );
setEffScaleKey( spep_1 + 210, shuchusen3, 1.41, 1.41 );
setEffScaleKey( spep_1 + 212, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_1 + 214, shuchusen3, 1.38, 1.38 );
setEffScaleKey( spep_1 + 216, shuchusen3, 1.37, 1.37 );
setEffScaleKey( spep_1 + 218, shuchusen3, 1.35, 1.35 );
setEffScaleKey( spep_1 + 220, shuchusen3, 1.34, 1.34 );
setEffScaleKey( spep_1 + 222, shuchusen3, 1.33, 1.33 );
setEffScaleKey( spep_1 + 224, shuchusen3, 1.31, 1.31 );
setEffScaleKey( spep_1 + 226, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_1 + 228, shuchusen3, 1.28, 1.28 );
setEffScaleKey( spep_1 + 230, shuchusen3, 1.27, 1.27 );
setEffScaleKey( spep_1 + 232, shuchusen3, 1.28, 1.28 );
setEffScaleKey( spep_1 + 234, shuchusen3, 1.29, 1.29 );
setEffScaleKey( spep_1 + 236, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_1 + 238, shuchusen3, 1.31, 1.31 );
setEffScaleKey( spep_1 + 240, shuchusen3, 1.32, 1.32 );
setEffScaleKey( spep_1 + 242, shuchusen3, 1.32, 1.32 );
setEffScaleKey( spep_1 + 244, shuchusen3, 1.33, 1.33 );
setEffScaleKey( spep_1 + 246, shuchusen3, 1.34, 1.34 );
setEffScaleKey( spep_1 + 248, shuchusen3, 1.35, 1.35 );
setEffScaleKey( spep_1 + 250, shuchusen3, 1.36, 1.36 );
setEffScaleKey( spep_1 + 252, shuchusen3, 1.37, 1.37 );
setEffScaleKey( spep_1 + 254, shuchusen3, 1.38, 1.38 );
setEffScaleKey( spep_1 + 256, shuchusen3, 1.39, 1.39 );
setEffScaleKey( spep_1 + 258, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_1 + 260, shuchusen3, 1.41, 1.41 );
setEffScaleKey( spep_1 + 262, shuchusen3, 1.42, 1.42 );
setEffScaleKey( spep_1 + 264, shuchusen3, 1.42, 1.42 );
setEffScaleKey( spep_1 + 266, shuchusen3, 1.43, 1.43 );
setEffScaleKey( spep_1 + 268, shuchusen3, 1.44, 1.44 );
setEffScaleKey( spep_1 + 270, shuchusen3, 1.45, 1.45 );
setEffScaleKey( spep_1 + 272, shuchusen3, 1.46, 1.46 );
setEffScaleKey( spep_1 + 274, shuchusen3, 1.47, 1.47 );
setEffScaleKey( spep_1 + 276, shuchusen3, 1.48, 1.48 );
setEffScaleKey( spep_1 + 278, shuchusen3, 1.49, 1.49 );
setEffScaleKey( spep_1 + 280, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_1 + 282, shuchusen3, 1.51, 1.51 );
setEffScaleKey( spep_1 + 284, shuchusen3, 1.52, 1.52 );
setEffScaleKey( spep_1 + 286, shuchusen3, 1.52, 1.52 );
setEffScaleKey( spep_1 + 288, shuchusen3, 1.53, 1.53 );
setEffScaleKey( spep_1 + 290, shuchusen3, 1.54, 1.54 );
setEffScaleKey( spep_1 + 292, shuchusen3, 1.55, 1.55 );
setEffScaleKey( spep_1 + 294, shuchusen3, 1.56, 1.56 );
setEffScaleKey( spep_1 + 296, shuchusen3, 1.57, 1.57 );
setEffScaleKey( spep_1 + 298, shuchusen3, 1.58, 1.58 );
setEffScaleKey( spep_1 + 300, shuchusen3, 1.59, 1.59 );
setEffScaleKey( spep_1 + 302, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_1 + 304, shuchusen3, 1.61, 1.61 );
setEffScaleKey( spep_1 + 306, shuchusen3, 1.62, 1.62 );
setEffScaleKey( spep_1 + 308, shuchusen3, 1.62, 1.62 );
setEffScaleKey( spep_1 + 310, shuchusen3, 1.63, 1.63 );
setEffScaleKey( spep_1 + 312, shuchusen3, 1.64, 1.64 );
setEffScaleKey( spep_1 + 314, shuchusen3, 1.65, 1.65 );
setEffScaleKey( spep_1 + 316, shuchusen3, 1.66, 1.66 );
setEffScaleKey( spep_1 + 318, shuchusen3, 1.67, 1.67 );
setEffScaleKey( spep_1 + 320, shuchusen3, 1.68, 1.68 );
setEffScaleKey( spep_1 + 322, shuchusen3, 1.69, 1.69 );
setEffScaleKey( spep_1 + 324, shuchusen3, 1.7, 1.7 );
setEffScaleKey( spep_1 + 326, shuchusen3, 1.71, 1.71 );
setEffScaleKey( spep_1 + 328, shuchusen3, 1.72, 1.72 );
setEffScaleKey( spep_1 + 330, shuchusen3, 1.72, 1.72 );
setEffScaleKey( spep_1 + 332, shuchusen3, 1.73, 1.73 );
setEffScaleKey( spep_1 + 334, shuchusen3, 1.74, 1.74 );
setEffScaleKey( spep_1 + 336, shuchusen3, 1.75, 1.75 );
setEffScaleKey( spep_1 + 338, shuchusen3, 1.76, 1.76 );
setEffScaleKey( spep_1 + 340, shuchusen3, 1.77, 1.77 );
setEffScaleKey( spep_1 + 440 -a, shuchusen3, 1.77, 1.77 );

setEffRotateKey( spep_1 + 196, shuchusen3, 0 );
setEffRotateKey( spep_1 + 440 -a, shuchusen3, 0 );

setEffAlphaKey( spep_1 + 194, shuchusen3, 26 );
setEffAlphaKey( spep_1 + 196, shuchusen3, 39 );
setEffAlphaKey( spep_1 + 198, shuchusen3, 51 );
setEffAlphaKey( spep_1 + 200, shuchusen3, 64 );
setEffAlphaKey( spep_1 + 202, shuchusen3, 77 );
setEffAlphaKey( spep_1 + 204, shuchusen3, 90 );
setEffAlphaKey( spep_1 + 206, shuchusen3, 102 );
setEffAlphaKey( spep_1 + 208, shuchusen3, 115 );
setEffAlphaKey( spep_1 + 210, shuchusen3, 128 );
setEffAlphaKey( spep_1 + 212, shuchusen3, 141 );
setEffAlphaKey( spep_1 + 214, shuchusen3, 153 );
setEffAlphaKey( spep_1 + 216, shuchusen3, 166 );
setEffAlphaKey( spep_1 + 218, shuchusen3, 179 );
setEffAlphaKey( spep_1 + 220, shuchusen3, 191 );
setEffAlphaKey( spep_1 + 222, shuchusen3, 204 );
setEffAlphaKey( spep_1 + 224, shuchusen3, 217 );
setEffAlphaKey( spep_1 + 226, shuchusen3, 230 );
setEffAlphaKey( spep_1 + 228, shuchusen3, 242 );
setEffAlphaKey( spep_1 + 230, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 439 -a, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 440 -a, shuchusen3, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 444, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** ボイス ** --
--おめえたちが持ってる
playVoice( spep_1 + 14, 119 );
setVoiceVolume( spep_1 + 14, 119, 250 );

--かめはめ
playVoice( spep_1 + 194, 120 );
setVoiceVolume( spep_1 + 194, 120, 250 );

--波ぁー！！！
playVoice( spep_1 + 272, 121 );
setVoiceVolume( spep_1 + 272, 121, 250 );

-- ** 音 ** --
playSe( spep_1 + 6, 1021 );  --かめはめ波
playSe( spep_1 + 40, 43 );  --瞬間移動
playSe( spep_1 + 104, 1035 );  --気溜め

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 406; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

--stopSe( SP_dodge,  SE_ha, 0);
setVoiceVolume( SP_dodge, 121, 0 );

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

-- ** 音 ** --
playSe( spep_1 + 400, 1022 );  --発射

-- ** 次の準備 ** --
spep_2 = spep_1 + 444;

------------------------------------------------------
-- 迫る(76F)
------------------------------------------------------

-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_2 + 0, SP_03, 76, 0x100, -1, 0, 0, 0 );  --迫る(ef_003)
setEffMoveKey( spep_2 + 0, semaru, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, semaru, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, semaru, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, semaru, 0 );
setEffRotateKey( spep_2 + 76, semaru, 0 );
setEffAlphaKey( spep_2 + 0, semaru, 255 );
setEffAlphaKey( spep_2 + 75, semaru, 255 );
setEffAlphaKey( spep_2 + 76, semaru, 0 );

-- ** 音 ** --
playSe( spep_2 + 6, 1021);  --発射

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 72, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;

------------------------------------------------------
-- 被弾(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_3 + 0, SP_04, 96, 0x100, -1, 0, 0, 0 );  --被弾・手前(ef_004)
setEffMoveKey( spep_3 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_f, 0 );
setEffRotateKey( spep_3 + 96, hidan_f, 0 );
setEffAlphaKey( spep_3 + 0, hidan_f, 255 );
setEffAlphaKey( spep_3 + 96, hidan_f, 255 );

hidan_b = entryEffectLife( spep_3 + 0, SP_05, 96, 0x80, -1, 0, 0, 0 );  --被弾・奥(ef_005)
setEffMoveKey( spep_3 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_b, 0 );
setEffRotateKey( spep_3 + 96, hidan_b, 0 );
setEffAlphaKey( spep_3 + 0, hidan_b, 255 );
setEffAlphaKey( spep_3 + 96, hidan_b, 255 );

hidan_b1 = entryEffectLife( spep_3 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --被弾・奥(ef_005)
setEffMoveKey( spep_3 + 0, hidan_b1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, hidan_b1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_b1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hidan_b1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_b1, 0 );
setEffRotateKey( spep_3 + 96, hidan_b1, 0 );
setEffAlphaKey( spep_3 + 0, hidan_b1, 0 );
setEffAlphaKey( spep_3 + 0, hidan_b1, 0 );
setEffAlphaKey( spep_3 + 14 -a, hidan_b1, 200 );
setEffAlphaKey( spep_3 + 24 -a, hidan_b1, 240 );
setEffAlphaKey( spep_3 + 96, hidan_b1, 255 );

hidan_f1 = entryEffectLife( spep_3 + 0, SP_04, 96, 0x100, -1, 0, 0, 0 );  --被弾・手前(ef_004)
setEffMoveKey( spep_3 + 0, hidan_f1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, hidan_f1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hidan_f1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, hidan_f1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hidan_f1, 0 );
setEffRotateKey( spep_3 + 96, hidan_f1, 0 );
setEffAlphaKey( spep_3 + 0, hidan_f1, 0 );
setEffAlphaKey( spep_3 + 0, hidan_f1, 0 );
setEffAlphaKey( spep_3 + 14 -a, hidan_f1, 200 );
setEffAlphaKey( spep_3 + 96, hidan_f1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 24 -a, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 14 -a, 1, 108 );

setMoveKey( spep_3 + 0, 1, -166.1, -133.2 , 0 );
setMoveKey( spep_3 + 4 -a, 1, -129, -98.2 , 0 );
setMoveKey( spep_3 + 6 -a, 1, -118.1, -85.1 , 0 );
setMoveKey( spep_3 + 8 -a, 1, -96.7, -73.4 , 0 );
setMoveKey( spep_3 + 10 -a, 1, -81, -50.1 , 0 );
setMoveKey( spep_3 + 13 -a, 1, -70.1, -37 , 0 );
setMoveKey( spep_3 + 14 -a, 1, -65.8, 18.7 , 0 );
setMoveKey( spep_3 + 16 -a, 1, -53.5, 25.2 , 0 );
setMoveKey( spep_3 + 18 -a, 1, -41.2, 31.6 , 0 );
setMoveKey( spep_3 + 20 -a, 1, -28.9, 38 , 0 );
setMoveKey( spep_3 + 22 -a, 1, -16.6, 44.4 , 0 );
setMoveKey( spep_3 + 24 -a, 1, -4.3, 50.9 , 0 );

setScaleKey( spep_3 + 0, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 2, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 13 -a, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 14 -a, 1, 2, 1.98 );
setScaleKey( spep_3 + 24 -a, 1, 2, 1.98 );

setRotateKey( spep_3 + 0, 1, -29.8 );
setRotateKey( spep_3 + 4 -a, 1, -29.9 );
setRotateKey( spep_3 + 6 -a, 1, -29.9 );
setRotateKey( spep_3 + 8 -a, 1, -25.2 );
setRotateKey( spep_3 + 10 -a, 1, -29.9 );
setRotateKey( spep_3 + 13 -a, 1, -29.9 );
setRotateKey( spep_3 + 14 -a, 1, -15.3 );
setRotateKey( spep_3 + 16 -a, 1, -15.4 );
setRotateKey( spep_3 + 24 -a, 1, -15.4 );

-- ** 音 ** --
playSe( spep_3 + 14 -a, 1023);  --被弾

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;

------------------------------------------------------
-- 地球からビームが出る(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --ビーム(ef_006)
setEffMoveKey( spep_4 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_4 + 186, beam, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, beam, 1, 1 );
setEffScaleKey( spep_4 + 186, beam, 1, 1 );

setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 186, beam, 0 );

setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 186, beam, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 186, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen4, 186, 25 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 186, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 186, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 186, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 186, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_4 + 16, 1024 );  --ビーム

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 186, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  -- 薄いwhite fade

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 20 );
entryFade( spep_4 + 176, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 186 );

else end