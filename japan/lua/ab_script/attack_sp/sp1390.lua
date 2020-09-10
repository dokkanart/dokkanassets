--1018840:超サイヤ人孫悟飯(青年期)_衝撃波
--sp_effect_b4_00130

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
SP_01 = 154855; --登場
SP_02 = 154856; --格闘　手前
SP_03 = 154858; --格闘　奥
SP_04 = 154860; --ナビ構え
SP_05 = 154861; --衝撃波

--敵側
SP_02r = 154857; --ef_002の反転
SP_03r = 154859; --ef_003の反転
SP_05r = 154862; --ef_005の反転

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
-- 登場
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 56, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 56, start, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 3, 906, 58 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 3, shuchusen1, 58 -3, 20 );
setEffMoveKey( spep_0 -3 + 2, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 2, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 -3 + 3, shuchusen1, 1.08, 1.14 );
setEffScaleKey( spep_0 -3 + 58, shuchusen1, 1.08, 1.14 );

setEffRotateKey( spep_0 -3 + 3, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 58, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 3, shuchusen1, 0 );
setEffAlphaKey( spep_0 -3 + 56, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 58, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 58, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
se_0008 = playSe( spep_0 + 3, 8 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, se_0008, 0 );
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

-- ** 白フェード ** --
entryFade( spep_0 + 44, 10, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 226, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 225, rush_f, 255 );
setEffAlphaKey( spep_1 + 226, rush_f, 0 );

rush_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0, -5 );  --格闘(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 226, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 225, rush_b, 255 );
setEffAlphaKey( spep_1 + 226, rush_b, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 30, 1, 1 );
setDisp( spep_1 -3 + 130, 1, 0 );
setDisp( spep_1 -3 + 190, 1, 1 );
setDisp( spep_1 -3 + 228, 1, 0 );
changeAnime( spep_1 -3 + 30, 1, 101 );
changeAnime( spep_1 -3 + 54, 1, 108 );
changeAnime( spep_1 -3 + 112, 1, 107 );
changeAnime( spep_1 -3 + 190, 1, 108 );

setMoveKey( spep_1 -3 + 30, 1, 425.6, 1.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 391.2, 2.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 356.9, 3.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 322.5, 5.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 288.1, 6.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 253.7, 7.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 219.3, 9.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 184.9, 10.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 150.5, 11.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 116.1, 13.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 81.8, 14.4 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 47.4, 15.7 , 0 );

setMoveKey( spep_1 -3 + 54, 1, 99, 98.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 87, 127.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 114.5, 96 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 111.6, 97.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 124.4, 94.6 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 284.8, 210.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 402.4, 286.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 479.3, 342.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 530, 380.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 563.9, 400 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 579.5, 412.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 586.7, 419.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 592.2, 419.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 591.4, 420.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 590.5, 422.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 484.5, 346.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 389.1, 284 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 313.4, 237.9 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 260.4, 194.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 209.1, 162.6 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 169.8, 142.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 147.9, 118 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 131.5, 107.5 , 0 );

setMoveKey( spep_1 -3 + 100, 1, 117.1, 101.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 109.6, 98 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 102, 94.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 94.5, 91.7 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 87, 88.5 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 79.4, 85.3 , 0 );

setMoveKey( spep_1 -3 + 112, 1, 65.9, -37.8 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 97.7, 4.8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 20.8, -77.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 95.5, -128.2 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 117.1, -192.8 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 138.6, -257.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 150.6, -275.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 162.6, -294.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 174.6, -312.8 , 0 );

setMoveKey( spep_1 -3 + 190, 1, 16.7, 33.9 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 74.8, 80.6 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 58, -8.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 109.6, 52.2 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 106.8, 31.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 140.7, 50.2 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 111.6, 31.1 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 149.3, 30.9 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 276, 33.6 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 402.6, 36.4 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 529.3, 39.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 841.2, 40.8 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 936.1, 46.2 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 990.7, 60.4 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 1092.5, 41.1 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 1163.8, 46.4 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 1244.4, 47.8 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 1302.2, 64.8 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 1327.1, 44.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 1408.4, 33.1 , 0 );


setScaleKey( spep_1 -3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 52, 1, 1.54, 1.54 );

setScaleKey( spep_1 -3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 56, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 58, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 60, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 62, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 64, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 66, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 68, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 70, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 72, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 74, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 76, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 82, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 84, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 86, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 88, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 90, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 92, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 94, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 96, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 98, 1, 1.31, 1.31 );

setScaleKey( spep_1 -3 + 100, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 102, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 104, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 110, 1, 1.34, 1.34 );

setScaleKey( spep_1 -3 + 112, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 114, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 116, 1, 0.89, 0.9 );
setScaleKey( spep_1 -3 + 118, 1, 1.43, 1.45 );
setScaleKey( spep_1 -3 + 120, 1, 1.98, 2 );
setScaleKey( spep_1 -3 + 122, 1, 2.52, 2.55 );
setScaleKey( spep_1 -3 + 124, 1, 2.7, 2.74 );
setScaleKey( spep_1 -3 + 126, 1, 2.88, 2.92 );
setScaleKey( spep_1 -3 + 128, 1, 3.07, 3.11 );

setScaleKey( spep_1 -3 + 190, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 228, 1, 1.49, 1.49 );


setRotateKey( spep_1 -3 + 30, 1, 0 );
setRotateKey( spep_1 -3 + 52, 1, 0 );

setRotateKey( spep_1 -3 + 54, 1, -30.2 );
setRotateKey( spep_1 -3 + 56, 1, -23.1 );
setRotateKey( spep_1 -3 + 58, 1, -21.6 );
setRotateKey( spep_1 -3 + 60, 1, -21.5 );
setRotateKey( spep_1 -3 + 62, 1, -9 );
setRotateKey( spep_1 -3 + 64, 1, -20.5 );
setRotateKey( spep_1 -3 + 66, 1, -28.8 );
setRotateKey( spep_1 -3 + 68, 1, -34.4 );
setRotateKey( spep_1 -3 + 70, 1, -38.1 );
setRotateKey( spep_1 -3 + 72, 1, -40.4 );
setRotateKey( spep_1 -3 + 74, 1, -41.6 );
setRotateKey( spep_1 -3 + 76, 1, -42.2 );
setRotateKey( spep_1 -3 + 78, 1, -42.4 );
setRotateKey( spep_1 -3 + 80, 1, -42.5 );
setRotateKey( spep_1 -3 + 82, 1, -42.5 );
setRotateKey( spep_1 -3 + 84, 1, -40.1 );
setRotateKey( spep_1 -3 + 86, 1, -38.1 );
setRotateKey( spep_1 -3 + 88, 1, -36.5 );
setRotateKey( spep_1 -3 + 90, 1, -35.3 );
setRotateKey( spep_1 -3 + 92, 1, -34.3 );
setRotateKey( spep_1 -3 + 94, 1, -33.5 );
setRotateKey( spep_1 -3 + 96, 1, -32.9 );
setRotateKey( spep_1 -3 + 98, 1, -32.5 );

setRotateKey( spep_1 -3 + 100, 1, -32.4 );
setRotateKey( spep_1 -3 + 102, 1, -31.7 );
setRotateKey( spep_1 -3 + 104, 1, -31 );
setRotateKey( spep_1 -3 + 106, 1, -30.3 );
setRotateKey( spep_1 -3 + 108, 1, -29.6 );
setRotateKey( spep_1 -3 + 110, 1, -28.9 );

setRotateKey( spep_1 -3 + 112, 1, 10.8 );
setRotateKey( spep_1 -3 + 114, 1, 0 );
setRotateKey( spep_1 -3 + 128, 1, 0 );

setEffRotateKey( spep_1 -3 + 190, 1, 0 );
setEffRotateKey( spep_1 -3 + 192, 1, 0.5 );
setEffRotateKey( spep_1 -3 + 194, 1, 1.1 );
setEffRotateKey( spep_1 -3 + 196, 1, 1.6 );
setEffRotateKey( spep_1 -3 + 198, 1, 2.2 );
setEffRotateKey( spep_1 -3 + 200, 1, 2.7 );
setEffRotateKey( spep_1 -3 + 202, 1, 3.2 );
setEffRotateKey( spep_1 -3 + 204, 1, 3.8 );
setEffRotateKey( spep_1 -3 + 206, 1, 4.3 );
setEffRotateKey( spep_1 -3 + 208, 1, 4.9 );
setEffRotateKey( spep_1 -3 + 210, 1, 5.4 );
setEffRotateKey( spep_1 -3 + 212, 1, 6 );
setEffRotateKey( spep_1 -3 + 214, 1, 6.5 );
setEffRotateKey( spep_1 -3 + 216, 1, 2.3 );
setEffRotateKey( spep_1 -3 + 218, 1, -1.9 );
setEffRotateKey( spep_1 -3 + 220, 1, -6 );
setEffRotateKey( spep_1 -3 + 222, 1, -10.2 );
setEffRotateKey( spep_1 -3 + 224, 1, -11.5 );
setEffRotateKey( spep_1 -3 + 226, 1, -12.8 );
setEffRotateKey( spep_1 -3 + 228, 1, -14.1 );


setAlphaKey( spep_1 -3 + 30, 1, 255 );
setAlphaKey( spep_1 -3 + 124, 1, 255 );
setAlphaKey( spep_1 -3 + 126, 1, 177 );
setAlphaKey( spep_1 -3 + 128, 1, 99 );

setAlphaKey( spep_1 -3 + 190, 1, 255 );
setAlphaKey( spep_1 -3 + 228, 1, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 -3 + 3, 906, 184 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 -3 + 3, shuchusen2, 184 -3, 20 );

setEffMoveKey( spep_1 -3 + 3, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 184, shuchusen2, 0, 0, 0 );


setEffScaleKey( spep_1 -3 + 3, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 4, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 6, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 8, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 10, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 12, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 14, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 -3 + 16, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 18, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 -3 + 20, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 -3 + 22, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 -3 + 24, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 26, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 28, shuchusen2, 1.1, 1.1 );

setEffScaleKey( spep_1 -3 + 54, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 56, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 58, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 60, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 62, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 64, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 66, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 68, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 -3 + 70, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 72, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 -3 + 74, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 -3 + 76, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 -3 + 78, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 80, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 82, shuchusen2, 1.1, 1.1 );

setEffScaleKey( spep_1 -3 + 108, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 110, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 112, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 114, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 116, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 118, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 120, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 122, shuchusen2, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 124, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 -3 + 126, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 128, shuchusen2, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 130, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 -3 + 132, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 -3 + 134, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 -3 + 136, shuchusen2, 1.12, 1.12 );
setEffScaleKey( spep_1 -3 + 138, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 140, shuchusen2, 1.1, 1.1 );

setEffScaleKey( spep_1 -3 + 156, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 158, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 160, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 162, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 164, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 166, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 168, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 170, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 -3 + 172, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 174, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 -3 + 176, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 -3 + 178, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 -3 + 180, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 182, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 184, shuchusen2, 1.1, 1.1 );


setEffRotateKey( spep_1 -3 + 3, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 184, shuchusen2, 0 );


setEffAlphaKey( spep_1 -3 + 3, shuchusen2, 64 );
setEffAlphaKey( spep_1 -3 + 4, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 6, shuchusen2, 191 );
setEffAlphaKey( spep_1 -3 + 8, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 10, shuchusen2, 243 );
setEffAlphaKey( spep_1 -3 + 12, shuchusen2, 231 );
setEffAlphaKey( spep_1 -3 + 14, shuchusen2, 219 );
setEffAlphaKey( spep_1 -3 + 16, shuchusen2, 207 );
setEffAlphaKey( spep_1 -3 + 18, shuchusen2, 195 );
setEffAlphaKey( spep_1 -3 + 20, shuchusen2, 183 );
setEffAlphaKey( spep_1 -3 + 22, shuchusen2, 171 );
setEffAlphaKey( spep_1 -3 + 24, shuchusen2, 159 );
setEffAlphaKey( spep_1 -3 + 26, shuchusen2, 147 );
setEffAlphaKey( spep_1 -3 + 28, shuchusen2, 135 );
setEffAlphaKey( spep_1 -3 + 29, shuchusen2, 130 );
setEffAlphaKey( spep_1 -3 + 30, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 54, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 55, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 56, shuchusen2, 64 );
setEffAlphaKey( spep_1 -3 + 58, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 60, shuchusen2, 191 );
setEffAlphaKey( spep_1 -3 + 62, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 64, shuchusen2, 230 );
setEffAlphaKey( spep_1 -3 + 66, shuchusen2, 204 );
setEffAlphaKey( spep_1 -3 + 68, shuchusen2, 179 );
setEffAlphaKey( spep_1 -3 + 70, shuchusen2, 153 );
setEffAlphaKey( spep_1 -3 + 72, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 74, shuchusen2, 102 );
setEffAlphaKey( spep_1 -3 + 76, shuchusen2, 77 );
setEffAlphaKey( spep_1 -3 + 78, shuchusen2, 51 );
setEffAlphaKey( spep_1 -3 + 80, shuchusen2, 26 );
setEffAlphaKey( spep_1 -3 + 82, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 108, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 109, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 110, shuchusen2, 51 );
setEffAlphaKey( spep_1 -3 + 112, shuchusen2, 102 );
setEffAlphaKey( spep_1 -3 + 114, shuchusen2, 153 );
setEffAlphaKey( spep_1 -3 + 116, shuchusen2, 204 );
setEffAlphaKey( spep_1 -3 + 118, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 120, shuchusen2, 244 );
setEffAlphaKey( spep_1 -3 + 122, shuchusen2, 233 );
setEffAlphaKey( spep_1 -3 + 124, shuchusen2, 222 );
setEffAlphaKey( spep_1 -3 + 126, shuchusen2, 211 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 201 );
setEffAlphaKey( spep_1 -3 + 130, shuchusen2, 190 );
setEffAlphaKey( spep_1 -3 + 132, shuchusen2, 179 );
setEffAlphaKey( spep_1 -3 + 134, shuchusen2, 168 );
setEffAlphaKey( spep_1 -3 + 136, shuchusen2, 157 );
setEffAlphaKey( spep_1 -3 + 138, shuchusen2, 146 );
setEffAlphaKey( spep_1 -3 + 140, shuchusen2, 135 );
setEffAlphaKey( spep_1 -3 + 141, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 142, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 156, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 157, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 158, shuchusen2, 64 );
setEffAlphaKey( spep_1 -3 + 160, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 162, shuchusen2, 191 );
setEffAlphaKey( spep_1 -3 + 164, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 166, shuchusen2, 243 );
setEffAlphaKey( spep_1 -3 + 168, shuchusen2, 231 );
setEffAlphaKey( spep_1 -3 + 170, shuchusen2, 219 );
setEffAlphaKey( spep_1 -3 + 172, shuchusen2, 207 );
setEffAlphaKey( spep_1 -3 + 174, shuchusen2, 195 );
setEffAlphaKey( spep_1 -3 + 176, shuchusen2, 183 );
setEffAlphaKey( spep_1 -3 + 178, shuchusen2, 171 );
setEffAlphaKey( spep_1 -3 + 180, shuchusen2, 159 );
setEffAlphaKey( spep_1 -3 + 182, shuchusen2, 147 );
setEffAlphaKey( spep_1 -3 + 184, shuchusen2, 135 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 -3 + 30, 920, 66, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 30, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 94, ryusen1, 0, 0, 0 );


setEffScaleKey( spep_1 -3 + 30, ryusen1, 2, 1 );
setEffScaleKey( spep_1 -3 + 58, ryusen1, 2, 1 );

setEffScaleKey( spep_1 -3 + 76, ryusen1, 3.64, 1.56 );
setEffScaleKey( spep_1 -3 + 94, ryusen1, 3.64, 1.56 );


setEffRotateKey( spep_1 -3 + 30, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 58, ryusen1, 0 );

setEffRotateKey( spep_1 -3 + 76, ryusen1, -46 );
setEffRotateKey( spep_1 -3 + 94, ryusen1, -46 );


setEffAlphaKey( spep_1 -3 + 30, ryusen1, 204 );
setEffAlphaKey( spep_1 -3 + 50, ryusen1, 204 );
setEffAlphaKey( spep_1 -3 + 52, ryusen1, 153 );
setEffAlphaKey( spep_1 -3 + 54, ryusen1, 102 );
setEffAlphaKey( spep_1 -3 + 56, ryusen1, 51 );
setEffAlphaKey( spep_1 -3 + 58, ryusen1, 0 );

setEffAlphaKey( spep_1 -3 + 76, ryusen1, 0 );
setEffAlphaKey( spep_1 -3 + 78, ryusen1, 51 );
setEffAlphaKey( spep_1 -3 + 80, ryusen1, 102 );
setEffAlphaKey( spep_1 -3 + 82, ryusen1, 153 );
setEffAlphaKey( spep_1 -3 + 84, ryusen1, 204 );
setEffAlphaKey( spep_1 -3 + 90, ryusen1, 204 );
setEffAlphaKey( spep_1 -3 + 92, ryusen1, 136 );
setEffAlphaKey( spep_1 -3 + 94, ryusen1, 68 );
setEffAlphaKey( spep_1 -3 + 96, ryusen1, 0 );


ryusen2 = entryEffectLife( spep_1 -3 + 190, 920, 38, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 190, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 192, ryusen2, 0, 25.1 , 0 );
setEffMoveKey( spep_1 -3 + 194, ryusen2, 0, -11.6 , 0 );
setEffMoveKey( spep_1 -3 + 196, ryusen2, 0, -5.5 , 0 );
setEffMoveKey( spep_1 -3 + 198, ryusen2, 0, 22 , 0 );
setEffMoveKey( spep_1 -3 + 200, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 228, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 190, ryusen2, 2, 1 );
setEffScaleKey( spep_1 -3 + 228, ryusen2, 2, 1 );

setEffRotateKey( spep_1 -3 + 190, ryusen2, 0 );
setEffRotateKey( spep_1 -3 + 228, ryusen2, 0 );

setEffAlphaKey( spep_1 -3 + 190, ryusen2, 225 );
setEffAlphaKey( spep_1 -3 + 228, ryusen2, 225 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 56, 10020, 12, 0x100, -1, 0, -115.8, 272.8 ); --バキッ
setEffMoveKey( spep_1 -3 + 56, ctbaki, -115.8, 272.8 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctbaki, -115.7, 269 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctbaki, -115.8, 271.7 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctbaki, -115.8, 274.4 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctbaki, -115.8, 277 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbaki, -115.7, 279.5 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbaki, -115.7, 282 , 0 );

setEffScaleKey( spep_1 -3 + 56, ctbaki, 1.81, 1.77 );
setEffScaleKey( spep_1 -3 + 58, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 60, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1 -3 + 62, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 -3 + 64, ctbaki, 1.62, 1.62 );
setEffScaleKey( spep_1 -3 + 66, ctbaki, 1.49, 1.5 );
setEffScaleKey( spep_1 -3 + 68, ctbaki, 1.36, 1.38 );

setEffRotateKey( spep_1 -3 + 56, ctbaki, 0 );
setEffRotateKey( spep_1 -3 + 68, ctbaki, 0 );

setEffAlphaKey( spep_1 -3 + 56, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 58, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 64, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 66, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 68, ctbaki, 0 );


ctbago = entryEffectLife( spep_1 -3 + 110, 10021, 18, 0x100, -1, 0, -93.6, 293.1 ); --バゴォッ
setEffMoveKey( spep_1 -3 + 110, ctbago, -93.6, 293.1 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctbago, -94.9, 303.6 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctbago, -96.1, 313.9 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctbago, -97.2, 324.2 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctbago, -98.3, 334.5 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctbago, -99.7, 337 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctbago, -101.1, 339.4 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctbago, -102.6, 341.8 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctbago, -103.9, 344.2 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctbago, -105.3, 346.5 , 0 );

setEffScaleKey( spep_1 -3 + 110, ctbago, 1, 1 );
setEffScaleKey( spep_1 -3 + 112, ctbago, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 114, ctbago, 1.91, 1.91 );
setEffScaleKey( spep_1 -3 + 116, ctbago, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 118, ctbago, 2.81, 2.81 );
setEffScaleKey( spep_1 -3 + 120, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_1 -3 + 122, ctbago, 2.89, 2.89 );
setEffScaleKey( spep_1 -3 + 124, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_1 -3 + 126, ctbago, 2.97, 2.97 );
setEffScaleKey( spep_1 -3 + 128, ctbago, 3.02, 3.02 );

setEffRotateKey( spep_1 -3 + 110, ctbago, 0 );
setEffRotateKey( spep_1 -3 + 112, ctbago, -7 );
setEffRotateKey( spep_1 -3 + 114, ctbago, -14.1 );
setEffRotateKey( spep_1 -3 + 116, ctbago, -21.2 );
setEffRotateKey( spep_1 -3 + 118, ctbago, -28.2 );
setEffRotateKey( spep_1 -3 + 120, ctbago, -28.2 );
setEffRotateKey( spep_1 -3 + 122, ctbago, -28.1 );
setEffRotateKey( spep_1 -3 + 124, ctbago, -28.1 );
setEffRotateKey( spep_1 -3 + 126, ctbago, -28.2 );
setEffRotateKey( spep_1 -3 + 128, ctbago, -28.2 );

setEffAlphaKey( spep_1 -3 + 110, ctbago, 128 );
setEffAlphaKey( spep_1 -3 + 112, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 124, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 126, ctbago, 128 );
setEffAlphaKey( spep_1 -3 + 128, ctbago, 0 );


ctdon = entryEffectLife( spep_1 -3 + 190, 10019, 12, 0x100, -1, 0, 26, 267.9 ); --ドンッ
setEffMoveKey( spep_1 -3 + 190, ctdon, 26, 267.9 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctdon, 26.1, 267.9 , 0 );
setEffMoveKey( spep_1 -3 + 194, ctdon, 26.1, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 196, ctdon, 25.9, 267.7 , 0 );
setEffMoveKey( spep_1 -3 + 198, ctdon, 26, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 202, ctdon, 26, 267.8 , 0 );

setEffScaleKey( spep_1 -3 + 190, ctdon, 1, 1 );
setEffScaleKey( spep_1 -3 + 192, ctdon, 1.43, 1.43 );
setEffScaleKey( spep_1 -3 + 194, ctdon, 1.86, 1.86 );
setEffScaleKey( spep_1 -3 + 196, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_1 -3 + 198, ctdon, 2.44, 2.44 );
setEffScaleKey( spep_1 -3 + 200, ctdon, 2.59, 2.59 );
setEffScaleKey( spep_1 -3 + 202, ctdon, 2.74, 2.74 );

setEffRotateKey( spep_1 -3 + 190, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 192, ctdon, 8.8 );
setEffRotateKey( spep_1 -3 + 194, ctdon, 17.9 );
setEffRotateKey( spep_1 -3 + 196, ctdon, 27 );
setEffRotateKey( spep_1 -3 + 202, ctdon, 27 );

setEffAlphaKey( spep_1 -3 + 190, ctdon, 125 );
setEffAlphaKey( spep_1 -3 + 192, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 196, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 198, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 200, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 202, ctdon, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 204, 20, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
se_0009 = playSe( spep_1 + 6, 09 );
playSe( spep_1 + 48, 1189 );
playSe( spep_1 + 51, 1001 );
setSeVolume( spep_1 + 51, 1001, 71 );
se_1110 = playSe( spep_1 + 54, 1110 );
setSeVolume( spep_1 + 54, 1110, 63 );
stopSe( spep_1 + 54, se_0009, 0 );
playSe( spep_1 + 55, 1007 );
stopSe( spep_1 + 72, se_1110, 17 );
playSe( spep_1 + 87, 1003 );
setSeVolume( spep_1 + 87, 1003, 79 );
playSe( spep_1 + 108, 1189 );
playSe( spep_1 + 112, 1009 );
playSe( spep_1 + 112, 1110 );
setSeVolume( spep_1 + 112, 1110, 79 );
playSe( spep_1 + 141, 1072 );
playSe( spep_1 + 188, 1120 );

-- ** 次の準備 ** --
spep_2 = spep_1 +226;

------------------------------------------------------
-- ナビ構え
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ナビ構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 96, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 96, kamae, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 96, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 96, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 96, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen3, 255 );

spep_x = spep_2 + 0;
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

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_2 + 12, 1018 );

-- ** 次の準備 ** --
spep_3 = spep_2 +96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 8, 1035 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 衝撃波
------------------------------------------------------
-- ** エフェクト等 ** --
shockwave = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --衝撃波(ef_005)
setEffMoveKey( spep_4 + 0, shockwave, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, shockwave, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shockwave, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, shockwave, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shockwave, 0 );
setEffRotateKey( spep_4 + 76, shockwave, 0 );
setEffAlphaKey( spep_4 + 0, shockwave, 255 );
setEffAlphaKey( spep_4 + 76, shockwave, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_4 -3 + 0, 921, 78 -3, 0x80, -1, 0, 80, 6 );
setEffMoveKey( spep_4 -3 + 3, ryusen3, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 48, ryusen3, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 49, ryusen3, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 50, ryusen3, -64, 26 , 0 );
setEffMoveKey( spep_4 -3 + 78, ryusen3, -64, 26 , 0 );

setEffScaleKey( spep_4 -3 + 3, ryusen3, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 48, ryusen3, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 49, ryusen3, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 50, ryusen3, 1.14, 1.12 );
setEffScaleKey( spep_4 -3 + 78, ryusen3, 1.14, 1.12 );

setEffRotateKey( spep_4 -3 + 0, ryusen3, 0 );
setEffRotateKey( spep_4 -3 + 78, ryusen3, 0 );

setEffAlphaKey( spep_4 -3 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 -3 + 78, ryusen3, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 50, 1, 1 );
setDisp( spep_4 -3 + 78, 1, 0 );
changeAnime( spep_4 -3 + 50, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 106 );


setMoveKey( spep_4 -3 + 50, 1, -96.8, -18.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -66.6, -16.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -36.4, -15.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -6.2, -13.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 24, -11.7 , 0 );

setMoveKey( spep_4 -3 + 60, 1, 47.8, -0.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 71.6, 10.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 19.1, 45.6 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 119.7, 10.9 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 83.7, 16.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 196.4, -8.3 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 268.6, 14.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 319.6, 15.7 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 370.6, 17.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 421.7, 18.5 , 0 );

b= 0.6;
d= 0.5;

setScaleKey( spep_4 -3 + 50, 1, 3.89 * d, 3.89 * d );
setScaleKey( spep_4 -3 + 52, 1, 3.62 * d, 3.62 * d );
setScaleKey( spep_4 -3 + 54, 1, 3.34 * d, 3.34 * d );
setScaleKey( spep_4 -3 + 56, 1, 3.06 * d, 3.06 * d );
setScaleKey( spep_4 -3 + 57, 1, 3.06 * d, 3.06 * d );

setScaleKey( spep_4 -3 + 58, 1, 2.77 * b, 2.77 * b );
setScaleKey( spep_4 -3 + 60, 1, 2.68 * b, 2.68 * b );
setScaleKey( spep_4 -3 + 62, 1, 2.59 * b, 2.59 * b );
setScaleKey( spep_4 -3 + 64, 1, 2.4 * b, 2.4 * b );
setScaleKey( spep_4 -3 + 66, 1, 2.04 * b, 2.04 * b );
setScaleKey( spep_4 -3 + 68, 1, 1.69 * b, 1.69 * b );
setScaleKey( spep_4 -3 + 70, 1, 1.27 * b, 1.27 * b );
setScaleKey( spep_4 -3 + 72, 1, 0.84 * b, 0.84 * b );
setScaleKey( spep_4 -3 + 74, 1, 0.7 * b, 0.7 * b );
setScaleKey( spep_4 -3 + 76, 1, 0.56 * b, 0.56 * b );
setScaleKey( spep_4 -3 + 78, 1, 0.42 * b, 0.42 * b );

a= 30;

setRotateKey( spep_4 -3 + 50, 1, 34 - a );
setRotateKey( spep_4 -3 + 52, 1, 35 - a );
setRotateKey( spep_4 -3 + 54, 1, 35.8 - a );
setRotateKey( spep_4 -3 + 56, 1, 36.6 - a );
setRotateKey( spep_4 -3 + 57, 1, 36.6 - a );

c= 55

setRotateKey( spep_4 -3 + 58, 1, 37.4 - c );
setRotateKey( spep_4 -3 + 60, 1, 30.7 - c );
setRotateKey( spep_4 -3 + 62, 1, 23.9 - c );
setRotateKey( spep_4 -3 + 64, 1, 28.6 - c );
setRotateKey( spep_4 -3 + 66, 1, 33.3 - c );
setRotateKey( spep_4 -3 + 68, 1, 38 - c );
setRotateKey( spep_4 -3 + 70, 1, 43.5 - c );
setRotateKey( spep_4 -3 + 72, 1, 49 - c );
setRotateKey( spep_4 -3 + 74, 1, 54.5 - c );
setRotateKey( spep_4 -3 + 76, 1, 60 - c );
setRotateKey( spep_4 -3 + 78, 1, 65.4 - c );


setAlphaKey( spep_4 -3 + 50, 1, 255 );
setAlphaKey( spep_4 -3 + 78, 1, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 55, 2, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 68, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 3, 1028 );
setSeVolume( spep_4 + 3, 1028, 71 );
se_1182 = playSe( spep_4 + 3, 1182 );
setSeVolume( spep_4 + 3, 1128, 141 );
se_1068 = playSe( spep_4 + 5, 1068 );
setSeVolume( spep_4 + 5, 1068, 0 );
se_1011 = playSe( spep_4 + 6, 1011 );
setSeVolume( spep_4 + 6, 1011, 89 );
se_1060 = playSe( spep_4 + 7, 1060 );
setSeVolume( spep_4 + 7, 1060, 50 );
setSeVolume( spep_4 + 13, 1128, 100 );
setSeVolume( spep_4 + 13, 1068, 79.00 );
stopSe( spep_4 + 13, se_1182, 71 );
stopSe( spep_4 + 33, se_1060, 37 );
stopSe( spep_4 + 38, se_1068, 39 );
playSe( spep_4 + 58, 1010 );
se_1187 = playSe( spep_4 + 60, 1187 );
setSeVolume( spep_4 + 60, 1187, 50 );
se_1033 = playSe( spep_4 + 62, 1033 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 +76;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------
-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 23, 1054 );
stopSe( spep_5 + 33, se_1187, 0 );
stopSe( spep_5 + 33, se_1033, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 -10 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0 );
setEffMoveKey( spep_0 + 56, start, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0 );
setEffScaleKey( spep_0 + 56, start, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start, 0 );
setEffRotateKey( spep_0 + 56, start, 0 );
setEffAlphaKey( spep_0 + 0, start, 255 );
setEffAlphaKey( spep_0 + 56, start, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 3, 906, 58 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 3, shuchusen1, 58 -3, 20 );
setEffMoveKey( spep_0 -3 + 2, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 2, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_0 -3 + 3, shuchusen1, 1.08, 1.14 );
setEffScaleKey( spep_0 -3 + 58, shuchusen1, 1.08, 1.14 );

setEffRotateKey( spep_0 -3 + 3, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 58, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 3, shuchusen1, 0 );
setEffAlphaKey( spep_0 -3 + 56, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 58, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 58, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
se_0008 = playSe( spep_0 + 3, 8 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, se_0008, 0 );
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

-- ** 白フェード ** --
entryFade( spep_0 + 44, 10, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 56;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 226, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 225, rush_f, 255 );
setEffAlphaKey( spep_1 + 226, rush_f, 0 );

rush_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0, -5 );  --格闘(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 226, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 226, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 226, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 225, rush_b, 255 );
setEffAlphaKey( spep_1 + 226, rush_b, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 30, 1, 1 );
setDisp( spep_1 -3 + 130, 1, 0 );
setDisp( spep_1 -3 + 190, 1, 1 );
setDisp( spep_1 -3 + 228, 1, 0 );
changeAnime( spep_1 -3 + 30, 1, 101 );
changeAnime( spep_1 -3 + 54, 1, 108 );
changeAnime( spep_1 -3 + 112, 1, 107 );
changeAnime( spep_1 -3 + 190, 1, 108 );

setMoveKey( spep_1 -3 + 30, 1, 425.6, 1.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 391.2, 2.5 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 356.9, 3.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 322.5, 5.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 288.1, 6.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 253.7, 7.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 219.3, 9.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 184.9, 10.4 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 150.5, 11.8 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 116.1, 13.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 81.8, 14.4 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 47.4, 15.7 , 0 );

setMoveKey( spep_1 -3 + 54, 1, 99, 98.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 87, 127.4 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 114.5, 96 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 111.6, 97.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 124.4, 94.6 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 284.8, 210.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 402.4, 286.2 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 479.3, 342.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 530, 380.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 563.9, 400 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 579.5, 412.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 586.7, 419.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 592.2, 419.9 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 591.4, 420.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 590.5, 422.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 484.5, 346.8 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 389.1, 284 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 313.4, 237.9 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 260.4, 194.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 209.1, 162.6 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 169.8, 142.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 147.9, 118 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 131.5, 107.5 , 0 );

setMoveKey( spep_1 -3 + 100, 1, 117.1, 101.2 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 109.6, 98 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 102, 94.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 94.5, 91.7 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 87, 88.5 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 79.4, 85.3 , 0 );

setMoveKey( spep_1 -3 + 112, 1, 65.9, -37.8 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 97.7, 4.8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 20.8, -77.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 95.5, -128.2 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 117.1, -192.8 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 138.6, -257.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 150.6, -275.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 162.6, -294.3 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 174.6, -312.8 , 0 );

setMoveKey( spep_1 -3 + 190, 1, 16.7, 33.9 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 74.8, 80.6 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 58, -8.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 109.6, 52.2 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 106.8, 31.6 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 140.7, 50.2 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 111.6, 31.1 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 149.3, 30.9 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 276, 33.6 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 402.6, 36.4 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 529.3, 39.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 841.2, 40.8 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 936.1, 46.2 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 990.7, 60.4 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 1092.5, 41.1 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 1163.8, 46.4 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 1244.4, 47.8 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 1302.2, 64.8 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 1327.1, 44.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 1408.4, 33.1 , 0 );


setScaleKey( spep_1 -3 + 30, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 52, 1, 1.54, 1.54 );

setScaleKey( spep_1 -3 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 56, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 58, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 60, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 62, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 64, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 66, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 68, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 70, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 72, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 74, 1, 0.51, 0.51 );
setScaleKey( spep_1 -3 + 76, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 82, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 84, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 86, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 88, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 90, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 92, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 94, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 96, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 98, 1, 1.31, 1.31 );

setScaleKey( spep_1 -3 + 100, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 102, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 104, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 110, 1, 1.34, 1.34 );

setScaleKey( spep_1 -3 + 112, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 114, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 116, 1, 0.89, 0.9 );
setScaleKey( spep_1 -3 + 118, 1, 1.43, 1.45 );
setScaleKey( spep_1 -3 + 120, 1, 1.98, 2 );
setScaleKey( spep_1 -3 + 122, 1, 2.52, 2.55 );
setScaleKey( spep_1 -3 + 124, 1, 2.7, 2.74 );
setScaleKey( spep_1 -3 + 126, 1, 2.88, 2.92 );
setScaleKey( spep_1 -3 + 128, 1, 3.07, 3.11 );

setScaleKey( spep_1 -3 + 190, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 228, 1, 1.49, 1.49 );


setRotateKey( spep_1 -3 + 30, 1, 0 );
setRotateKey( spep_1 -3 + 52, 1, 0 );

setRotateKey( spep_1 -3 + 54, 1, -30.2 );
setRotateKey( spep_1 -3 + 56, 1, -23.1 );
setRotateKey( spep_1 -3 + 58, 1, -21.6 );
setRotateKey( spep_1 -3 + 60, 1, -21.5 );
setRotateKey( spep_1 -3 + 62, 1, -9 );
setRotateKey( spep_1 -3 + 64, 1, -20.5 );
setRotateKey( spep_1 -3 + 66, 1, -28.8 );
setRotateKey( spep_1 -3 + 68, 1, -34.4 );
setRotateKey( spep_1 -3 + 70, 1, -38.1 );
setRotateKey( spep_1 -3 + 72, 1, -40.4 );
setRotateKey( spep_1 -3 + 74, 1, -41.6 );
setRotateKey( spep_1 -3 + 76, 1, -42.2 );
setRotateKey( spep_1 -3 + 78, 1, -42.4 );
setRotateKey( spep_1 -3 + 80, 1, -42.5 );
setRotateKey( spep_1 -3 + 82, 1, -42.5 );
setRotateKey( spep_1 -3 + 84, 1, -40.1 );
setRotateKey( spep_1 -3 + 86, 1, -38.1 );
setRotateKey( spep_1 -3 + 88, 1, -36.5 );
setRotateKey( spep_1 -3 + 90, 1, -35.3 );
setRotateKey( spep_1 -3 + 92, 1, -34.3 );
setRotateKey( spep_1 -3 + 94, 1, -33.5 );
setRotateKey( spep_1 -3 + 96, 1, -32.9 );
setRotateKey( spep_1 -3 + 98, 1, -32.5 );

setRotateKey( spep_1 -3 + 100, 1, -32.4 );
setRotateKey( spep_1 -3 + 102, 1, -31.7 );
setRotateKey( spep_1 -3 + 104, 1, -31 );
setRotateKey( spep_1 -3 + 106, 1, -30.3 );
setRotateKey( spep_1 -3 + 108, 1, -29.6 );
setRotateKey( spep_1 -3 + 110, 1, -28.9 );

setRotateKey( spep_1 -3 + 112, 1, 10.8 );
setRotateKey( spep_1 -3 + 114, 1, 0 );
setRotateKey( spep_1 -3 + 128, 1, 0 );

setEffRotateKey( spep_1 -3 + 190, 1, 0 );
setEffRotateKey( spep_1 -3 + 192, 1, 0.5 );
setEffRotateKey( spep_1 -3 + 194, 1, 1.1 );
setEffRotateKey( spep_1 -3 + 196, 1, 1.6 );
setEffRotateKey( spep_1 -3 + 198, 1, 2.2 );
setEffRotateKey( spep_1 -3 + 200, 1, 2.7 );
setEffRotateKey( spep_1 -3 + 202, 1, 3.2 );
setEffRotateKey( spep_1 -3 + 204, 1, 3.8 );
setEffRotateKey( spep_1 -3 + 206, 1, 4.3 );
setEffRotateKey( spep_1 -3 + 208, 1, 4.9 );
setEffRotateKey( spep_1 -3 + 210, 1, 5.4 );
setEffRotateKey( spep_1 -3 + 212, 1, 6 );
setEffRotateKey( spep_1 -3 + 214, 1, 6.5 );
setEffRotateKey( spep_1 -3 + 216, 1, 2.3 );
setEffRotateKey( spep_1 -3 + 218, 1, -1.9 );
setEffRotateKey( spep_1 -3 + 220, 1, -6 );
setEffRotateKey( spep_1 -3 + 222, 1, -10.2 );
setEffRotateKey( spep_1 -3 + 224, 1, -11.5 );
setEffRotateKey( spep_1 -3 + 226, 1, -12.8 );
setEffRotateKey( spep_1 -3 + 228, 1, -14.1 );


setAlphaKey( spep_1 -3 + 30, 1, 255 );
setAlphaKey( spep_1 -3 + 124, 1, 255 );
setAlphaKey( spep_1 -3 + 126, 1, 177 );
setAlphaKey( spep_1 -3 + 128, 1, 99 );

setAlphaKey( spep_1 -3 + 190, 1, 255 );
setAlphaKey( spep_1 -3 + 228, 1, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 -3 + 3, 906, 184 -3, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 -3 + 3, shuchusen2, 184 -3, 20 );

setEffMoveKey( spep_1 -3 + 3, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 184, shuchusen2, 0, 0, 0 );


setEffScaleKey( spep_1 -3 + 3, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 4, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 6, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 8, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 10, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 12, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 14, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 -3 + 16, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 18, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 -3 + 20, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 -3 + 22, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 -3 + 24, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 26, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 28, shuchusen2, 1.1, 1.1 );

setEffScaleKey( spep_1 -3 + 54, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 56, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 58, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 60, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 62, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 64, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 66, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 68, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 -3 + 70, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 72, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 -3 + 74, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 -3 + 76, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 -3 + 78, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 80, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 82, shuchusen2, 1.1, 1.1 );

setEffScaleKey( spep_1 -3 + 108, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 110, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 112, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 114, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 116, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 118, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 120, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 122, shuchusen2, 1.21, 1.21 );
setEffScaleKey( spep_1 -3 + 124, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 -3 + 126, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 128, shuchusen2, 1.17, 1.17 );
setEffScaleKey( spep_1 -3 + 130, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 -3 + 132, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 -3 + 134, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 -3 + 136, shuchusen2, 1.12, 1.12 );
setEffScaleKey( spep_1 -3 + 138, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 140, shuchusen2, 1.1, 1.1 );

setEffScaleKey( spep_1 -3 + 156, shuchusen2, 1.25, 1.25 );
setEffScaleKey( spep_1 -3 + 158, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 160, shuchusen2, 1.24, 1.24 );
setEffScaleKey( spep_1 -3 + 162, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 164, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 -3 + 166, shuchusen2, 1.22, 1.22 );
setEffScaleKey( spep_1 -3 + 168, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 170, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_1 -3 + 172, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_1 -3 + 174, shuchusen2, 1.16, 1.16 );
setEffScaleKey( spep_1 -3 + 176, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_1 -3 + 178, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 -3 + 180, shuchusen2, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 182, shuchusen2, 1.11, 1.11 );
setEffScaleKey( spep_1 -3 + 184, shuchusen2, 1.1, 1.1 );


setEffRotateKey( spep_1 -3 + 3, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 184, shuchusen2, 0 );


setEffAlphaKey( spep_1 -3 + 3, shuchusen2, 64 );
setEffAlphaKey( spep_1 -3 + 4, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 6, shuchusen2, 191 );
setEffAlphaKey( spep_1 -3 + 8, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 10, shuchusen2, 243 );
setEffAlphaKey( spep_1 -3 + 12, shuchusen2, 231 );
setEffAlphaKey( spep_1 -3 + 14, shuchusen2, 219 );
setEffAlphaKey( spep_1 -3 + 16, shuchusen2, 207 );
setEffAlphaKey( spep_1 -3 + 18, shuchusen2, 195 );
setEffAlphaKey( spep_1 -3 + 20, shuchusen2, 183 );
setEffAlphaKey( spep_1 -3 + 22, shuchusen2, 171 );
setEffAlphaKey( spep_1 -3 + 24, shuchusen2, 159 );
setEffAlphaKey( spep_1 -3 + 26, shuchusen2, 147 );
setEffAlphaKey( spep_1 -3 + 28, shuchusen2, 135 );
setEffAlphaKey( spep_1 -3 + 29, shuchusen2, 130 );
setEffAlphaKey( spep_1 -3 + 30, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 54, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 55, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 56, shuchusen2, 64 );
setEffAlphaKey( spep_1 -3 + 58, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 60, shuchusen2, 191 );
setEffAlphaKey( spep_1 -3 + 62, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 64, shuchusen2, 230 );
setEffAlphaKey( spep_1 -3 + 66, shuchusen2, 204 );
setEffAlphaKey( spep_1 -3 + 68, shuchusen2, 179 );
setEffAlphaKey( spep_1 -3 + 70, shuchusen2, 153 );
setEffAlphaKey( spep_1 -3 + 72, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 74, shuchusen2, 102 );
setEffAlphaKey( spep_1 -3 + 76, shuchusen2, 77 );
setEffAlphaKey( spep_1 -3 + 78, shuchusen2, 51 );
setEffAlphaKey( spep_1 -3 + 80, shuchusen2, 26 );
setEffAlphaKey( spep_1 -3 + 82, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 108, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 109, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 110, shuchusen2, 51 );
setEffAlphaKey( spep_1 -3 + 112, shuchusen2, 102 );
setEffAlphaKey( spep_1 -3 + 114, shuchusen2, 153 );
setEffAlphaKey( spep_1 -3 + 116, shuchusen2, 204 );
setEffAlphaKey( spep_1 -3 + 118, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 120, shuchusen2, 244 );
setEffAlphaKey( spep_1 -3 + 122, shuchusen2, 233 );
setEffAlphaKey( spep_1 -3 + 124, shuchusen2, 222 );
setEffAlphaKey( spep_1 -3 + 126, shuchusen2, 211 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 201 );
setEffAlphaKey( spep_1 -3 + 130, shuchusen2, 190 );
setEffAlphaKey( spep_1 -3 + 132, shuchusen2, 179 );
setEffAlphaKey( spep_1 -3 + 134, shuchusen2, 168 );
setEffAlphaKey( spep_1 -3 + 136, shuchusen2, 157 );
setEffAlphaKey( spep_1 -3 + 138, shuchusen2, 146 );
setEffAlphaKey( spep_1 -3 + 140, shuchusen2, 135 );
setEffAlphaKey( spep_1 -3 + 141, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 142, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 156, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 157, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 158, shuchusen2, 64 );
setEffAlphaKey( spep_1 -3 + 160, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 162, shuchusen2, 191 );
setEffAlphaKey( spep_1 -3 + 164, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 166, shuchusen2, 243 );
setEffAlphaKey( spep_1 -3 + 168, shuchusen2, 231 );
setEffAlphaKey( spep_1 -3 + 170, shuchusen2, 219 );
setEffAlphaKey( spep_1 -3 + 172, shuchusen2, 207 );
setEffAlphaKey( spep_1 -3 + 174, shuchusen2, 195 );
setEffAlphaKey( spep_1 -3 + 176, shuchusen2, 183 );
setEffAlphaKey( spep_1 -3 + 178, shuchusen2, 171 );
setEffAlphaKey( spep_1 -3 + 180, shuchusen2, 159 );
setEffAlphaKey( spep_1 -3 + 182, shuchusen2, 147 );
setEffAlphaKey( spep_1 -3 + 184, shuchusen2, 135 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 -3 + 30, 920, 66, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 30, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 94, ryusen1, 0, 0, 0 );


setEffScaleKey( spep_1 -3 + 30, ryusen1, 2, 1 );
setEffScaleKey( spep_1 -3 + 58, ryusen1, 2, 1 );

setEffScaleKey( spep_1 -3 + 76, ryusen1, 3.64, 1.56 );
setEffScaleKey( spep_1 -3 + 94, ryusen1, 3.64, 1.56 );


setEffRotateKey( spep_1 -3 + 30, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 58, ryusen1, 0 );

setEffRotateKey( spep_1 -3 + 76, ryusen1, -46 );
setEffRotateKey( spep_1 -3 + 94, ryusen1, -46 );


setEffAlphaKey( spep_1 -3 + 30, ryusen1, 204 );
setEffAlphaKey( spep_1 -3 + 50, ryusen1, 204 );
setEffAlphaKey( spep_1 -3 + 52, ryusen1, 153 );
setEffAlphaKey( spep_1 -3 + 54, ryusen1, 102 );
setEffAlphaKey( spep_1 -3 + 56, ryusen1, 51 );
setEffAlphaKey( spep_1 -3 + 58, ryusen1, 0 );

setEffAlphaKey( spep_1 -3 + 76, ryusen1, 0 );
setEffAlphaKey( spep_1 -3 + 78, ryusen1, 51 );
setEffAlphaKey( spep_1 -3 + 80, ryusen1, 102 );
setEffAlphaKey( spep_1 -3 + 82, ryusen1, 153 );
setEffAlphaKey( spep_1 -3 + 84, ryusen1, 204 );
setEffAlphaKey( spep_1 -3 + 90, ryusen1, 204 );
setEffAlphaKey( spep_1 -3 + 92, ryusen1, 136 );
setEffAlphaKey( spep_1 -3 + 94, ryusen1, 68 );
setEffAlphaKey( spep_1 -3 + 96, ryusen1, 0 );


ryusen2 = entryEffectLife( spep_1 -3 + 190, 920, 38, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 190, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 192, ryusen2, 0, 25.1 , 0 );
setEffMoveKey( spep_1 -3 + 194, ryusen2, 0, -11.6 , 0 );
setEffMoveKey( spep_1 -3 + 196, ryusen2, 0, -5.5 , 0 );
setEffMoveKey( spep_1 -3 + 198, ryusen2, 0, 22 , 0 );
setEffMoveKey( spep_1 -3 + 200, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 228, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 190, ryusen2, 2, 1 );
setEffScaleKey( spep_1 -3 + 228, ryusen2, 2, 1 );

setEffRotateKey( spep_1 -3 + 190, ryusen2, 0 );
setEffRotateKey( spep_1 -3 + 228, ryusen2, 0 );

setEffAlphaKey( spep_1 -3 + 190, ryusen2, 225 );
setEffAlphaKey( spep_1 -3 + 228, ryusen2, 225 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 56, 10020, 12, 0x100, -1, 0, -115.8, 272.8 ); --バキッ
setEffMoveKey( spep_1 -3 + 56, ctbaki, -115.8, 272.8 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctbaki, -115.7, 269 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctbaki, -115.8, 271.7 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctbaki, -115.8, 274.4 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctbaki, -115.8, 277 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbaki, -115.7, 279.5 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbaki, -115.7, 282 , 0 );

setEffScaleKey( spep_1 -3 + 56, ctbaki, 1.81, 1.77 );
setEffScaleKey( spep_1 -3 + 58, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 60, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1 -3 + 62, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 -3 + 64, ctbaki, 1.62, 1.62 );
setEffScaleKey( spep_1 -3 + 66, ctbaki, 1.49, 1.5 );
setEffScaleKey( spep_1 -3 + 68, ctbaki, 1.36, 1.38 );

setEffRotateKey( spep_1 -3 + 56, ctbaki, 0 );
setEffRotateKey( spep_1 -3 + 68, ctbaki, 0 );

setEffAlphaKey( spep_1 -3 + 56, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 58, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 64, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 66, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 68, ctbaki, 0 );


ctbago = entryEffectLife( spep_1 -3 + 110, 10021, 18, 0x100, -1, 0, -93.6, 293.1 ); --バゴォッ
setEffMoveKey( spep_1 -3 + 110, ctbago, -93.6, 293.1 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctbago, -94.9, 303.6 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctbago, -96.1, 313.9 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctbago, -97.2, 324.2 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctbago, -98.3, 334.5 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctbago, -99.7, 337 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctbago, -101.1, 339.4 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctbago, -102.6, 341.8 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctbago, -103.9, 344.2 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctbago, -105.3, 346.5 , 0 );

setEffScaleKey( spep_1 -3 + 110, ctbago, 1, 1 );
setEffScaleKey( spep_1 -3 + 112, ctbago, 1.45, 1.45 );
setEffScaleKey( spep_1 -3 + 114, ctbago, 1.91, 1.91 );
setEffScaleKey( spep_1 -3 + 116, ctbago, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 118, ctbago, 2.81, 2.81 );
setEffScaleKey( spep_1 -3 + 120, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_1 -3 + 122, ctbago, 2.89, 2.89 );
setEffScaleKey( spep_1 -3 + 124, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_1 -3 + 126, ctbago, 2.97, 2.97 );
setEffScaleKey( spep_1 -3 + 128, ctbago, 3.02, 3.02 );

setEffRotateKey( spep_1 -3 + 110, ctbago, 0 );
setEffRotateKey( spep_1 -3 + 112, ctbago, -7 );
setEffRotateKey( spep_1 -3 + 114, ctbago, -14.1 );
setEffRotateKey( spep_1 -3 + 116, ctbago, -21.2 );
setEffRotateKey( spep_1 -3 + 118, ctbago, -28.2 );
setEffRotateKey( spep_1 -3 + 120, ctbago, -28.2 );
setEffRotateKey( spep_1 -3 + 122, ctbago, -28.1 );
setEffRotateKey( spep_1 -3 + 124, ctbago, -28.1 );
setEffRotateKey( spep_1 -3 + 126, ctbago, -28.2 );
setEffRotateKey( spep_1 -3 + 128, ctbago, -28.2 );

setEffAlphaKey( spep_1 -3 + 110, ctbago, 128 );
setEffAlphaKey( spep_1 -3 + 112, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 124, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 126, ctbago, 128 );
setEffAlphaKey( spep_1 -3 + 128, ctbago, 0 );


ctdon = entryEffectLife( spep_1 -3 + 190, 10019, 12, 0x100, -1, 0, 26, 267.9 ); --ドンッ
setEffMoveKey( spep_1 -3 + 190, ctdon, 26, 267.9 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctdon, 26.1, 267.9 , 0 );
setEffMoveKey( spep_1 -3 + 194, ctdon, 26.1, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 196, ctdon, 25.9, 267.7 , 0 );
setEffMoveKey( spep_1 -3 + 198, ctdon, 26, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 202, ctdon, 26, 267.8 , 0 );

setEffScaleKey( spep_1 -3 + 190, ctdon, 1, 1 );
setEffScaleKey( spep_1 -3 + 192, ctdon, 1.43, 1.43 );
setEffScaleKey( spep_1 -3 + 194, ctdon, 1.86, 1.86 );
setEffScaleKey( spep_1 -3 + 196, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_1 -3 + 198, ctdon, 2.44, 2.44 );
setEffScaleKey( spep_1 -3 + 200, ctdon, 2.59, 2.59 );
setEffScaleKey( spep_1 -3 + 202, ctdon, 2.74, 2.74 );

setEffRotateKey( spep_1 -3 + 190, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 192, ctdon, 8.8 );
setEffRotateKey( spep_1 -3 + 194, ctdon, 17.9 );
setEffRotateKey( spep_1 -3 + 196, ctdon, 27 );
setEffRotateKey( spep_1 -3 + 202, ctdon, 27 );

setEffAlphaKey( spep_1 -3 + 190, ctdon, 125 );
setEffAlphaKey( spep_1 -3 + 192, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 196, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 198, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 200, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 202, ctdon, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 204, 20, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
se_0009 = playSe( spep_1 + 6, 09 );
playSe( spep_1 + 48, 1189 );
playSe( spep_1 + 51, 1001 );
setSeVolume( spep_1 + 51, 1001, 71 );
se_1110 = playSe( spep_1 + 54, 1110 );
setSeVolume( spep_1 + 54, 1110, 63 );
stopSe( spep_1 + 54, se_0009, 0 );
playSe( spep_1 + 55, 1007 );
stopSe( spep_1 + 72, se_1110, 17 );
playSe( spep_1 + 87, 1003 );
setSeVolume( spep_1 + 87, 1003, 79 );
playSe( spep_1 + 108, 1189 );
playSe( spep_1 + 112, 1009 );
playSe( spep_1 + 112, 1110 );
setSeVolume( spep_1 + 112, 1110, 79 );
playSe( spep_1 + 141, 1072 );
playSe( spep_1 + 188, 1120 );

-- ** 次の準備 ** --
spep_2 = spep_1 +226;

------------------------------------------------------
-- ナビ構え
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --ナビ構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, kamae, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 96, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 96, kamae, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 96, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 96, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 96, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen3, 255 );

spep_x = spep_2 + 0;
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

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_2 + 12, 1018 );

-- ** 次の準備 ** --
spep_3 = spep_2 +96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 8, 1035 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 衝撃波
------------------------------------------------------
-- ** エフェクト等 ** --
shockwave = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --衝撃波(ef_005)
setEffMoveKey( spep_4 + 0, shockwave, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, shockwave, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shockwave, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, shockwave, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shockwave, 0 );
setEffRotateKey( spep_4 + 76, shockwave, 0 );
setEffAlphaKey( spep_4 + 0, shockwave, 255 );
setEffAlphaKey( spep_4 + 76, shockwave, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_4 -3 + 0, 921, 78 -3, 0x80, -1, 0, 80, 6 );
setEffMoveKey( spep_4 -3 + 3, ryusen3, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 48, ryusen3, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 49, ryusen3, 80, 6 , 0 );
setEffMoveKey( spep_4 -3 + 50, ryusen3, -64, 26 , 0 );
setEffMoveKey( spep_4 -3 + 78, ryusen3, -64, 26 , 0 );

setEffScaleKey( spep_4 -3 + 3, ryusen3, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 48, ryusen3, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 49, ryusen3, -1.29, 1.12 );
setEffScaleKey( spep_4 -3 + 50, ryusen3, 1.14, 1.12 );
setEffScaleKey( spep_4 -3 + 78, ryusen3, 1.14, 1.12 );

setEffRotateKey( spep_4 -3 + 0, ryusen3, 0 );
setEffRotateKey( spep_4 -3 + 78, ryusen3, 0 );

setEffAlphaKey( spep_4 -3 + 0, ryusen3, 255 );
setEffAlphaKey( spep_4 -3 + 78, ryusen3, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 50, 1, 1 );
setDisp( spep_4 -3 + 78, 1, 0 );
changeAnime( spep_4 -3 + 50, 1, 108 );
changeAnime( spep_4 -3 + 58, 1, 106 );


setMoveKey( spep_4 -3 + 50, 1, -96.8, -18.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -66.6, -16.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -36.4, -15.1 , 0 );
setMoveKey( spep_4 -3 + 56, 1, -6.2, -13.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 24, -11.7 , 0 );

setMoveKey( spep_4 -3 + 60, 1, 47.8, -0.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 71.6, 10.5 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 19.1, 45.6 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 119.7, 10.9 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 83.7, 16.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 196.4, -8.3 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 268.6, 14.3 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 319.6, 15.7 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 370.6, 17.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 421.7, 18.5 , 0 );

b= 0.6;
d= 0.5;

setScaleKey( spep_4 -3 + 50, 1, 3.89 * d, 3.89 * d );
setScaleKey( spep_4 -3 + 52, 1, 3.62 * d, 3.62 * d );
setScaleKey( spep_4 -3 + 54, 1, 3.34 * d, 3.34 * d );
setScaleKey( spep_4 -3 + 56, 1, 3.06 * d, 3.06 * d );
setScaleKey( spep_4 -3 + 57, 1, 3.06 * d, 3.06 * d );

setScaleKey( spep_4 -3 + 58, 1, 2.77 * b, 2.77 * b );
setScaleKey( spep_4 -3 + 60, 1, 2.68 * b, 2.68 * b );
setScaleKey( spep_4 -3 + 62, 1, 2.59 * b, 2.59 * b );
setScaleKey( spep_4 -3 + 64, 1, 2.4 * b, 2.4 * b );
setScaleKey( spep_4 -3 + 66, 1, 2.04 * b, 2.04 * b );
setScaleKey( spep_4 -3 + 68, 1, 1.69 * b, 1.69 * b );
setScaleKey( spep_4 -3 + 70, 1, 1.27 * b, 1.27 * b );
setScaleKey( spep_4 -3 + 72, 1, 0.84 * b, 0.84 * b );
setScaleKey( spep_4 -3 + 74, 1, 0.7 * b, 0.7 * b );
setScaleKey( spep_4 -3 + 76, 1, 0.56 * b, 0.56 * b );
setScaleKey( spep_4 -3 + 78, 1, 0.42 * b, 0.42 * b );

a= 30;

setRotateKey( spep_4 -3 + 50, 1, 34 - a );
setRotateKey( spep_4 -3 + 52, 1, 35 - a );
setRotateKey( spep_4 -3 + 54, 1, 35.8 - a );
setRotateKey( spep_4 -3 + 56, 1, 36.6 - a );
setRotateKey( spep_4 -3 + 57, 1, 36.6 - a );

c= 55

setRotateKey( spep_4 -3 + 58, 1, 37.4 - c );
setRotateKey( spep_4 -3 + 60, 1, 30.7 - c );
setRotateKey( spep_4 -3 + 62, 1, 23.9 - c );
setRotateKey( spep_4 -3 + 64, 1, 28.6 - c );
setRotateKey( spep_4 -3 + 66, 1, 33.3 - c );
setRotateKey( spep_4 -3 + 68, 1, 38 - c );
setRotateKey( spep_4 -3 + 70, 1, 43.5 - c );
setRotateKey( spep_4 -3 + 72, 1, 49 - c );
setRotateKey( spep_4 -3 + 74, 1, 54.5 - c );
setRotateKey( spep_4 -3 + 76, 1, 60 - c );
setRotateKey( spep_4 -3 + 78, 1, 65.4 - c );


setAlphaKey( spep_4 -3 + 50, 1, 255 );
setAlphaKey( spep_4 -3 + 78, 1, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 55, 2, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 68, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 3, 1028 );
setSeVolume( spep_4 + 3, 1028, 71 );
se_1182 = playSe( spep_4 + 3, 1182 );
setSeVolume( spep_4 + 3, 1128, 141 );
se_1068 = playSe( spep_4 + 5, 1068 );
setSeVolume( spep_4 + 5, 1068, 0 );
se_1011 = playSe( spep_4 + 6, 1011 );
setSeVolume( spep_4 + 6, 1011, 89 );
se_1060 = playSe( spep_4 + 7, 1060 );
setSeVolume( spep_4 + 7, 1060, 50 );
setSeVolume( spep_4 + 13, 1128, 100 );
setSeVolume( spep_4 + 13, 1068, 79.00 );
stopSe( spep_4 + 13, se_1182, 71 );
stopSe( spep_4 + 33, se_1060, 37 );
stopSe( spep_4 + 38, se_1068, 39 );
playSe( spep_4 + 58, 1010 );
se_1187 = playSe( spep_4 + 60, 1187 );
setSeVolume( spep_4 + 60, 1187, 50 );
se_1033 = playSe( spep_4 + 62, 1033 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 +76;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------
-- ** ひび割れ ** --
hibiware = entryEffect( spep_5 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_5 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_5 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_5 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_5 + 2, hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5 + 2, hibiware, 0 );
setEffAlphaKey( spep_5 + 13, hibiware, 0 );
setEffAlphaKey( spep_5 + 14, hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen4, 0 );
setEffRotateKey( spep_5 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_5 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_5 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen5, 0 );
setEffRotateKey( spep_5 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_5 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_5 + 110, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_5 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_5 + 0, 1, -40 );
setRotateKey( spep_5 + 1, 1, -40 );
setRotateKey( spep_5 + 2, 1, 80 );
setRotateKey( spep_5 + 3, 1, 80 );
setRotateKey( spep_5 + 4, 1, 200 );
setRotateKey( spep_5 + 5, 1, 200 );
setRotateKey( spep_5 + 6, 1, 360 );
setRotateKey( spep_5 + 7, 1, 360 );
setRotateKey( spep_5 + 8, 1, 558 );
setRotateKey( spep_5 + 9, 1, 558 );
setRotateKey( spep_5 + 10, 1, 425 );
setRotateKey( spep_5 + 11, 1, 425 );
setRotateKey( spep_5 + 12, 1, -40 );
setRotateKey( spep_5 + 110, 1, -40 );

-- ** 音 ** --
playSe( spep_5 + 23, 1054 );
stopSe( spep_5 + 33, se_1187, 0 );
stopSe( spep_5 + 33, se_1033, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
endPhase( spep_5 + 100 -10 );

end