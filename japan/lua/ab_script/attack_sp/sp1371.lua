--1014990:ベジータ_ギャリックイレイザー

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
SP_01 = 154219; --突進
SP_02a = 154221; --アッパー：画面手前
SP_02b = 154223 --アッパー：画面奥
SP_03 = 154224; --気溜
SP_04 = 154225; --気弾発射
SP_05a = 154227; --敵に着弾：画面手前
SP_05b = 154228; --敵に着弾：画面奥
SP_06 = 154229; --専用ギャン
SP_07 = 154230; --敵爆発

--敵側
SP_01_r = 154220; --突進
SP_02a_r = 154222; --アッパー：画面手前
SP_04_r = 154226; --気弾発射
SP_07_r = 154231; --敵爆発

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
-- 突進(78F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 76, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 76, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 75, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 75, 20);
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 75, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 75, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 75, shuchusen1, 0 );


setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE0 = playSe( spep_0 + 0, 9 );  --迫ってくる


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );

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

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- アッパー(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
upperf = entryEffect( spep_1 + 0, SP_02a, 0x100, -1, 0, 0, 0 );  --格闘(ef_002a)
setEffMoveKey( spep_1 + 0, upperf, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, upperf, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, upperf, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, upperf, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, upperf, 0 );
setEffRotateKey( spep_1 + 96, upperf, 0 );
setEffAlphaKey( spep_1 + 0, upperf, 255 );
setEffAlphaKey( spep_1 + 96, upperf, 255 );

upperb = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0 );  --背景(ef_002b)
setEffMoveKey( spep_1 + 0, upperb, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, upperb, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, upperb, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, upperb, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, upperb, 0 );
setEffRotateKey( spep_1 + 96, upperb, 0 );
setEffAlphaKey( spep_1 + 0, upperb, 255 );
setEffAlphaKey( spep_1 + 96, upperb, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 99, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 64, 1, 106 );
changeAnime( spep_1 -3 + 76, 1, 5 );

a = -30

--setMoveKey( spep_1 -3 + 0, 1, 238, 202 , 0 );
setMoveKey( spep_1 -3 + 3, 1, 220.2, 181.5 + a, 0 );
setMoveKey( spep_1 -3 + 4, 1, 202.3, 161 + a, 0 );
setMoveKey( spep_1 -3 + 6, 1, 184.4, 140.6 + a, 0 );
setMoveKey( spep_1 -3 + 8, 1, 166.6, 120.1 + a, 0 );
setMoveKey( spep_1 -3 + 10, 1, 148.7, 99.7 + a, 0 );
setMoveKey( spep_1 -3 + 12, 1, 130.9, 79.2 + a, 0 );
setMoveKey( spep_1 -3 + 14, 1, 113.1, 58.8 + a, 0 );
setMoveKey( spep_1 -3 + 16, 1, 95.2, 38.4 + a, 0 );
setMoveKey( spep_1 -3 + 18, 1, 77.4, 18 + a, 0 );
setMoveKey( spep_1 -3 + 21, 1, 59.6, -2.4 + a, 0 );
setMoveKey( spep_1 -3 + 22, 1, 55.5, 9.7 + a, 0 );
setMoveKey( spep_1 -3 + 24, 1, 85.3, 51 + a, 0 );
setMoveKey( spep_1 -3 + 26, 1, 55.5, 14 + a, 0 );
setMoveKey( spep_1 -3 + 28, 1, 25.8, -23.6 + a, 0 );
setMoveKey( spep_1 -3 + 30, 1, 50.7, -8.2 + a, 0 );
setMoveKey( spep_1 -3 + 32, 1, 75.5, 7.1 + a, 0 );
setMoveKey( spep_1 -3 + 34, 1, 50.7, -6.7 + a, 0 );
setMoveKey( spep_1 -3 + 36, 1, 25.8, -20.6 + a, 0 );
setMoveKey( spep_1 -3 + 38, 1, 26.4, -20.6 + a, 0 );
setMoveKey( spep_1 -3 + 40, 1, 27, -20.5 + a, 0 );
setMoveKey( spep_1 -3 + 42, 1, 26.4, -19.6 + a, 0 );
setMoveKey( spep_1 -3 + 44, 1, 25.8, -18.7 + a, 0 );
setMoveKey( spep_1 -3 + 46, 1, 25.8, -18.3 + a, 0 );
setMoveKey( spep_1 -3 + 48, 1, 25.8, -17.9 + a, 0 );
setMoveKey( spep_1 -3 + 50, 1, 25.8, -17.6 + a, 0 );
setMoveKey( spep_1 -3 + 52, 1, 25.8, -17.3 + a, 0 );
setMoveKey( spep_1 -3 + 54, 1, 25.8, -17.1 + a, 0 );
setMoveKey( spep_1 -3 + 56, 1, 25.8, -16.8 + a, 0 );
setMoveKey( spep_1 -3 + 58, 1, 25.6, -16.4 + a, 0 );
setMoveKey( spep_1 -3 + 60, 1, 28.6, -4.4 + a, 0 );
setMoveKey( spep_1 -3 + 63, 1, 31.6, 7.6 + a, 0 );
setMoveKey( spep_1 -3 + 64, 1, -50.5, 130.1 + a, 0 );
setMoveKey( spep_1 -3 + 66, 1, -4.1, 205 + a, 0 );
setMoveKey( spep_1 -3 + 68, 1, 43.1, 283.6 + a, 0 );
setMoveKey( spep_1 -3 + 70, 1, 4.5, 246.4 + a, 0 );
setMoveKey( spep_1 -3 + 72, 1, -34.9, 205.4 + a, 0 );
setMoveKey( spep_1 -3 + 75, 1, -8.9, 251.1 + a, 0 );
setMoveKey( spep_1 -3 + 76, 1, 59.9, 413.7 + a, 0 );
setMoveKey( spep_1 -3 + 78, 1, 41.5, 386.4 + a, 0 );
setMoveKey( spep_1 -3 + 80, 1, 22.5, 358.5 + a, 0 );
setMoveKey( spep_1 -3 + 82, 1, 28.7, 373.1 + a, 0 );
setMoveKey( spep_1 -3 + 84, 1, 35.1, 387.8 + a, 0 );
setMoveKey( spep_1 -3 + 86, 1, 40, 384.2 + a, 0 );
setMoveKey( spep_1 -3 + 88, 1, 44.5, 380.3 + a, 0 );
setMoveKey( spep_1 -3 + 90, 1, 50, 385.7 + a, 0 );
setMoveKey( spep_1 -3 + 92, 1, 55.5, 391.1 + a, 0 );
setMoveKey( spep_1 -3 + 94, 1, 61, 396.6 + a, 0 );
setMoveKey( spep_1 -3 + 96, 1, 66.5, 402 + a, 0 );
setMoveKey( spep_1 -3 + 98, 1, 71.9, 407.5 + a, 0 );
setMoveKey( spep_1 -3 + 99, 1, 71.9, 407.5 + a, 0 );

--setScaleKey( spep_1 -3 + 0, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 3, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 4, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 8, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 10, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 14, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 16, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 21, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 22, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 24, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 26, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 28, 1, 2, 2 );
setScaleKey( spep_1 -3 + 30, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 32, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 34, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 36, 1, 2, 2 );
setScaleKey( spep_1 -3 + 38, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 40, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 42, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 44, 1, 2, 2 );
setScaleKey( spep_1 -3 + 64, 1, 2, 2 );
setScaleKey( spep_1 -3 + 66, 1, 2.19, 2.19 );
setScaleKey( spep_1 -3 + 68, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 70, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 72, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 75, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 76, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 78, 1, 1, 1 );
setScaleKey( spep_1 -3 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 82, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 84, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 86, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 88, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 90, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 92, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 94, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 96, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 98, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 99, 1, 0.5, 0.5 );

setRotateKey( spep_1 -3 + 3, 1, -12 );
setRotateKey( spep_1 -3 + 21, 1, -12 );
setRotateKey( spep_1 -3 + 22, 1, -40 );
setRotateKey( spep_1 -3 + 24, 1, -40.8 );
setRotateKey( spep_1 -3 + 26, 1, -41.3 );
setRotateKey( spep_1 -3 + 28, 1, -41.7 );
setRotateKey( spep_1 -3 + 30, 1, -42 );
setRotateKey( spep_1 -3 + 32, 1, -42.2 );
setRotateKey( spep_1 -3 + 34, 1, -42.5 );
setRotateKey( spep_1 -3 + 36, 1, -42.7 );
setRotateKey( spep_1 -3 + 38, 1, -42.8 );
setRotateKey( spep_1 -3 + 40, 1, -43 );
setRotateKey( spep_1 -3 + 42, 1, -43.2 );
setRotateKey( spep_1 -3 + 44, 1, -43.3 );
setRotateKey( spep_1 -3 + 46, 1, -43.4 );
setRotateKey( spep_1 -3 + 48, 1, -43.6 );
setRotateKey( spep_1 -3 + 50, 1, -43.7 );
setRotateKey( spep_1 -3 + 52, 1, -43.8 );
setRotateKey( spep_1 -3 + 54, 1, -43.8 );
setRotateKey( spep_1 -3 + 56, 1, -43.9 );
setRotateKey( spep_1 -3 + 58, 1, -44 );
setRotateKey( spep_1 -3 + 60, 1, -45 );
setRotateKey( spep_1 -3 + 63, 1, -46 );
setRotateKey( spep_1 -3 + 64, 1, -50 );
setRotateKey( spep_1 -3 + 66, 1, -56 );
setRotateKey( spep_1 -3 + 68, 1, -62 );
setRotateKey( spep_1 -3 + 70, 1, -68 );
setRotateKey( spep_1 -3 + 72, 1, -74 );
setRotateKey( spep_1 -3 + 75, 1, -80 );
setRotateKey( spep_1 -3 + 76, 1, -22 );
setRotateKey( spep_1 -3 + 78, 1, -23.5 );
setRotateKey( spep_1 -3 + 80, 1, -25.1 );
setRotateKey( spep_1 -3 + 82, 1, -26.6 );
setRotateKey( spep_1 -3 + 84, 1, -28.2 );
setRotateKey( spep_1 -3 + 86, 1, -29.7 );
setRotateKey( spep_1 -3 + 88, 1, -31.3 );
setRotateKey( spep_1 -3 + 90, 1, -32.8 );
setRotateKey( spep_1 -3 + 92, 1, -34.4 );
setRotateKey( spep_1 -3 + 94, 1, -35.9 );
setRotateKey( spep_1 -3 + 96, 1, -37.5 );
setRotateKey( spep_1 -3 + 98, 1, -39 );
setRotateKey( spep_1 -3 + 99, 1, -39 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 -3 + 20, 906, 16, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 -3 + 20, shuchusen2, 16, 20);
setEffMoveKey( spep_1 -3 + 20, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 36, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 20, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 -3 + 36, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 -3 + 20, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 36, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 20, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 36, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_1 -3 + 64, 906, 10, 0x100, -1, 0, 0, 199.9 );
setEffShake( spep_1 -3 + 64, shuchusen3, 10, 20);
setEffMoveKey( spep_1 -3 + 64, shuchusen3, 0, 199.9 , 0 );
setEffMoveKey( spep_1 -3 + 74, shuchusen3, 0, 199.9 , 0 );

setEffScaleKey( spep_1 -3 + 64, shuchusen3, 1.1, 1.45 );
setEffScaleKey( spep_1 -3 + 74, shuchusen3, 1.1, 1.45 );

setEffRotateKey( spep_1 -3 + 64, shuchusen3, 0 );
setEffRotateKey( spep_1 -3 + 74, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 64, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 74, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctDon = entryEffectLife( spep_1 -3 + 20, 10019, 20, 0x100, -1, 0, 0, 0 ); --ドンッ
setEffMoveKey( spep_1 -3 + 20, ctDon, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctDon, -54.9, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctDon, -94, 254 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctDon, -107.1, 267.9 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctDon, -98.7, 265.8 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctDon, -114.9, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctDon, -112.5, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctDon, -122.9, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctDon, -119.7, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctDon, -122.7, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctDon, -126, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 20, ctDon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 22, ctDon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 24, ctDon, 2, 2 );
setEffScaleKey( spep_1 -3 + 26, ctDon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 28, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 30, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 32, ctDon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 34, ctDon, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 36, ctDon, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 38, ctDon, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 40, ctDon, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 20, ctDon, 0 );
setEffRotateKey( spep_1 -3 + 40, ctDon, 0 );

setEffAlphaKey( spep_1 -3 + 20, ctDon, 255 );
setEffAlphaKey( spep_1 -3 + 34, ctDon, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctDon, 170 );
setEffAlphaKey( spep_1 -3 + 38, ctDon, 85 );
setEffAlphaKey( spep_1 -3 + 40, ctDon, 0 );

ctBaki = entryEffectLife( spep_1 -3 + 64, 10020, 20, 0x100, -1, 0, 30.6, -41.8 ); --バキッ
setEffMoveKey( spep_1 -3 + 64, ctBaki, 30.6, -41.8 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctBaki, 84.6, -114 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctBaki, 124.3, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctBaki, 140.6, -189.5 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctBaki, 132.4, -194.6 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctBaki, 142.8, -191 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctBaki, 147, -207.9 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctBaki, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctBaki, 151.6, -211.4 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctBaki, 151.9, -210.6 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctBaki, 160.4, -217.3 , 0 );

setEffScaleKey( spep_1 -3 + 64, ctBaki, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 66, ctBaki, 1.37, 1.37 );
setEffScaleKey( spep_1 -3 + 68, ctBaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 70, ctBaki, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 72, ctBaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 74, ctBaki, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 76, ctBaki, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 78, ctBaki, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 80, ctBaki, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 82, ctBaki, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 84, ctBaki, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 64, ctBaki, 0 );
setEffRotateKey( spep_1 -3 + 84, ctBaki, 0 );

setEffAlphaKey( spep_1 -3 + 64, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 78, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 80, ctBaki, 179 );
setEffAlphaKey( spep_1 -3 + 82, ctBaki, 102 );
setEffAlphaKey( spep_1 -3 + 84, ctBaki, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_1 + 0, 8 );  --迫ってくる
playSe( spep_1 -3 + 20, 1010 );  --ドン
playSe( spep_1 -3 + 64, 1011 );  --バキ

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;

--------------------------------------
--気溜(98F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --気溜(ef_003)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_2 + 0, 906, 95, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen4, 95, 20);

setEffMoveKey( spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 95, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_2 + 95, shuchusen4, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen4, 0 );
setEffRotateKey( spep_2 + 95, shuchusen4, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 95, shuchusen4, 255 );

spep_x = spep_2 + 10;
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

-- ** 音 ** --
SE1 = playSe( spep_2 + 0, 1044 );  --地響き
stopSe( spep_2 + 96, SE1, 10 );

playSe( spep_x + 16, 1018 );  --ごごご

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

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
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射(68F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_004)
setEffMoveKey( spep_4 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_4 + 88, hassha, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 88, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 88, hassha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 68, 18,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_4 + 0 -12, 1072 );  --引き
setSeVolume( spep_4 + 0, 1072, 150 );
playSe( spep_4 + 14, 1022 );  --発射

-- ** 次の準備 ** --
spep_5 = spep_4 + 88;

------------------------------------------------------
-- 敵に着弾(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
hitf = entryEffect( spep_5 + 0, SP_05a, 0x100, -1, 0, 0, 0 );  --敵に着弾：画面手前(ef_005a)
setEffMoveKey( spep_5 + 0, hitf, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, hitf, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hitf, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, hitf, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hitf, 0 );
setEffRotateKey( spep_5 + 58, hitf, 0 );
setEffAlphaKey( spep_5 + 0, hitf, 255 );
setEffAlphaKey( spep_5 + 58, hitf, 255 );

hitb = entryEffect( spep_5 + 0, SP_05b, 0x80, -1, 0, 0, 0 );  --敵に着弾：画面奥(ef_005b)
setEffMoveKey( spep_5 + 0, hitb, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, hitb, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hitb, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, hitb, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hitb, 0 );
setEffRotateKey( spep_5 + 58, hitb, 0 );
setEffAlphaKey( spep_5 + 0, hitb, 255 );
setEffAlphaKey( spep_5 + 58, hitb, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 59, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

--setMoveKey( spep_5 -3 + 0, 1, -159.9, -280 , 0 );
setMoveKey( spep_5 -3 + 3, 1, -141.4, -258.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -123.3, -237.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -105.6, -217.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -88.4, -197.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -71.6, -178.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -55.1, -159.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -39, -141 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -23.2, -122.9 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -7.8, -105.1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 7.4, -87.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 22.2, -70.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 36.7, -53.9 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 51, -37.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 65, -21.5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 78.7, -5.7 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 92.1, 9.7 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 105.3, 24.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 118.2, 39.7 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 130.8, 54.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 143.1, 68.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 155.2, 82.2 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 166.9, 95.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 178.4, 108.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 189.6, 121.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 200.4, 134.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 210.9, 146.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 221, 157.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 230.8, 169.1 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 240, 179.9 , 0 );

--setScaleKey( spep_5 -3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 3, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 4, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 12, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 14, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 -3 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 22, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 24, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 26, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 38, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 42, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 46, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 48, 1, 1.85, 1.85 );
setScaleKey( spep_5 -3 + 50, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 52, 1, 1.91, 1.91 );
setScaleKey( spep_5 -3 + 54, 1, 1.94, 1.94 );
setScaleKey( spep_5 -3 + 56, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 59, 1, 2, 2 );

setRotateKey( spep_5 -3 + 3, 1, -70 );
setRotateKey( spep_5 -3 + 59, 1, -70 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 + 0, 1021 );  --迫る

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --ギャン(ef_006)
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 58, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 );
setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_6 -3 + 61, ctgyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_6 -3 + 3, ctgyan, 2, 2 );
setEffScaleKey( spep_6 -3 + 10, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_6 -3 + 61, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 -3 + 61, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 -3 + 61, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, 1023 );  --ギャン

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 225); --黒フェード

-- ** 白フェード ** --
entryFade( spep_6 + 20, 36, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 58;

------------------------------------------------------
-- 最後(238F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --最後(ef_007)
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 238, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 238, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 238, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 238, finish, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 20 +20 );
endPhase( spep_7 + 236 -80 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(78F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01_r, 0x100, -1, 0, 0, 0 );  --突進(ef_001_r)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 76, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 76, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 75, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 75, 20);

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 75, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 75, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 75, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE0 = playSe( spep_0 + 0, 9 );  --迫ってくる

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
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

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- アッパー(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
upperf = entryEffect( spep_1 + 0, SP_02a_r, 0x100, -1, 0, 0, 0 );  --格闘(ef_002a_r)
setEffMoveKey( spep_1 + 0, upperf, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, upperf, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, upperf, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, upperf, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, upperf, 0 );
setEffRotateKey( spep_1 + 96, upperf, 0 );
setEffAlphaKey( spep_1 + 0, upperf, 255 );
setEffAlphaKey( spep_1 + 96, upperf, 255 );

upperb = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0 );  --背景(ef_002b)
setEffMoveKey( spep_1 + 0, upperb, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, upperb, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, upperb, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, upperb, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, upperb, 0 );
setEffRotateKey( spep_1 + 96, upperb, 0 );
setEffAlphaKey( spep_1 + 0, upperb, 255 );
setEffAlphaKey( spep_1 + 96, upperb, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 99, 1, 0 );
changeAnime( spep_1 + 0, 1, 100 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 64, 1, 106 );
changeAnime( spep_1 -3 + 76, 1, 5 );

a = -30

--setMoveKey( spep_1 -3 + 0, 1, 238, 202 , 0 );
setMoveKey( spep_1 -3 + 3, 1, 220.2, 181.5 + a, 0 );
setMoveKey( spep_1 -3 + 4, 1, 202.3, 161 + a, 0 );
setMoveKey( spep_1 -3 + 6, 1, 184.4, 140.6 + a, 0 );
setMoveKey( spep_1 -3 + 8, 1, 166.6, 120.1 + a, 0 );
setMoveKey( spep_1 -3 + 10, 1, 148.7, 99.7 + a, 0 );
setMoveKey( spep_1 -3 + 12, 1, 130.9, 79.2 + a, 0 );
setMoveKey( spep_1 -3 + 14, 1, 113.1, 58.8 + a, 0 );
setMoveKey( spep_1 -3 + 16, 1, 95.2, 38.4 + a, 0 );
setMoveKey( spep_1 -3 + 18, 1, 77.4, 18 + a, 0 );
setMoveKey( spep_1 -3 + 21, 1, 59.6, -2.4 + a, 0 );
setMoveKey( spep_1 -3 + 22, 1, 55.5, 9.7 + a, 0 );
setMoveKey( spep_1 -3 + 24, 1, 85.3, 51 + a, 0 );
setMoveKey( spep_1 -3 + 26, 1, 55.5, 14 + a, 0 );
setMoveKey( spep_1 -3 + 28, 1, 25.8, -23.6 + a, 0 );
setMoveKey( spep_1 -3 + 30, 1, 50.7, -8.2 + a, 0 );
setMoveKey( spep_1 -3 + 32, 1, 75.5, 7.1 + a, 0 );
setMoveKey( spep_1 -3 + 34, 1, 50.7, -6.7 + a, 0 );
setMoveKey( spep_1 -3 + 36, 1, 25.8, -20.6 + a, 0 );
setMoveKey( spep_1 -3 + 38, 1, 26.4, -20.6 + a, 0 );
setMoveKey( spep_1 -3 + 40, 1, 27, -20.5 + a, 0 );
setMoveKey( spep_1 -3 + 42, 1, 26.4, -19.6 + a, 0 );
setMoveKey( spep_1 -3 + 44, 1, 25.8, -18.7 + a, 0 );
setMoveKey( spep_1 -3 + 46, 1, 25.8, -18.3 + a, 0 );
setMoveKey( spep_1 -3 + 48, 1, 25.8, -17.9 + a, 0 );
setMoveKey( spep_1 -3 + 50, 1, 25.8, -17.6 + a, 0 );
setMoveKey( spep_1 -3 + 52, 1, 25.8, -17.3 + a, 0 );
setMoveKey( spep_1 -3 + 54, 1, 25.8, -17.1 + a, 0 );
setMoveKey( spep_1 -3 + 56, 1, 25.8, -16.8 + a, 0 );
setMoveKey( spep_1 -3 + 58, 1, 25.6, -16.4 + a, 0 );
setMoveKey( spep_1 -3 + 60, 1, 28.6, -4.4 + a, 0 );
setMoveKey( spep_1 -3 + 63, 1, 31.6, 7.6 + a, 0 );
setMoveKey( spep_1 -3 + 64, 1, -50.5, 130.1 + a, 0 );
setMoveKey( spep_1 -3 + 66, 1, -4.1, 205 + a, 0 );
setMoveKey( spep_1 -3 + 68, 1, 43.1, 283.6 + a, 0 );
setMoveKey( spep_1 -3 + 70, 1, 4.5, 246.4 + a, 0 );
setMoveKey( spep_1 -3 + 72, 1, -34.9, 205.4 + a, 0 );
setMoveKey( spep_1 -3 + 75, 1, -8.9, 251.1 + a, 0 );
setMoveKey( spep_1 -3 + 76, 1, 59.9, 413.7 + a, 0 );
setMoveKey( spep_1 -3 + 78, 1, 41.5, 386.4 + a, 0 );
setMoveKey( spep_1 -3 + 80, 1, 22.5, 358.5 + a, 0 );
setMoveKey( spep_1 -3 + 82, 1, 28.7, 373.1 + a, 0 );
setMoveKey( spep_1 -3 + 84, 1, 35.1, 387.8 + a, 0 );
setMoveKey( spep_1 -3 + 86, 1, 40, 384.2 + a, 0 );
setMoveKey( spep_1 -3 + 88, 1, 44.5, 380.3 + a, 0 );
setMoveKey( spep_1 -3 + 90, 1, 50, 385.7 + a, 0 );
setMoveKey( spep_1 -3 + 92, 1, 55.5, 391.1 + a, 0 );
setMoveKey( spep_1 -3 + 94, 1, 61, 396.6 + a, 0 );
setMoveKey( spep_1 -3 + 96, 1, 66.5, 402 + a, 0 );
setMoveKey( spep_1 -3 + 98, 1, 71.9, 407.5 + a, 0 );
setMoveKey( spep_1 -3 + 99, 1, 71.9, 407.5 + a, 0 );

--setScaleKey( spep_1 -3 + 0, 1, 0.56, 0.56 );
setScaleKey( spep_1 -3 + 3, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 4, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_1 -3 + 8, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 10, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 14, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 16, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 18, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 21, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 22, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 24, 1, 2.4, 2.4 );
setScaleKey( spep_1 -3 + 26, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 28, 1, 2, 2 );
setScaleKey( spep_1 -3 + 30, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 32, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 34, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 36, 1, 2, 2 );
setScaleKey( spep_1 -3 + 38, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 40, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 42, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 44, 1, 2, 2 );
setScaleKey( spep_1 -3 + 64, 1, 2, 2 );
setScaleKey( spep_1 -3 + 66, 1, 2.19, 2.19 );
setScaleKey( spep_1 -3 + 68, 1, 2.37, 2.37 );
setScaleKey( spep_1 -3 + 70, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 72, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 75, 1, 2.04, 2.04 );
setScaleKey( spep_1 -3 + 76, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 78, 1, 1, 1 );
setScaleKey( spep_1 -3 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_1 -3 + 82, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 84, 1, 0.86, 0.86 );
setScaleKey( spep_1 -3 + 86, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 88, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 90, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 92, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 94, 1, 0.59, 0.59 );
setScaleKey( spep_1 -3 + 96, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 98, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 99, 1, 0.5, 0.5 );

setRotateKey( spep_1 -3 + 3, 1, -12 );
setRotateKey( spep_1 -3 + 21, 1, -12 );
setRotateKey( spep_1 -3 + 22, 1, -40 );
setRotateKey( spep_1 -3 + 24, 1, -40.8 );
setRotateKey( spep_1 -3 + 26, 1, -41.3 );
setRotateKey( spep_1 -3 + 28, 1, -41.7 );
setRotateKey( spep_1 -3 + 30, 1, -42 );
setRotateKey( spep_1 -3 + 32, 1, -42.2 );
setRotateKey( spep_1 -3 + 34, 1, -42.5 );
setRotateKey( spep_1 -3 + 36, 1, -42.7 );
setRotateKey( spep_1 -3 + 38, 1, -42.8 );
setRotateKey( spep_1 -3 + 40, 1, -43 );
setRotateKey( spep_1 -3 + 42, 1, -43.2 );
setRotateKey( spep_1 -3 + 44, 1, -43.3 );
setRotateKey( spep_1 -3 + 46, 1, -43.4 );
setRotateKey( spep_1 -3 + 48, 1, -43.6 );
setRotateKey( spep_1 -3 + 50, 1, -43.7 );
setRotateKey( spep_1 -3 + 52, 1, -43.8 );
setRotateKey( spep_1 -3 + 54, 1, -43.8 );
setRotateKey( spep_1 -3 + 56, 1, -43.9 );
setRotateKey( spep_1 -3 + 58, 1, -44 );
setRotateKey( spep_1 -3 + 60, 1, -45 );
setRotateKey( spep_1 -3 + 63, 1, -46 );
setRotateKey( spep_1 -3 + 64, 1, -50 );
setRotateKey( spep_1 -3 + 66, 1, -56 );
setRotateKey( spep_1 -3 + 68, 1, -62 );
setRotateKey( spep_1 -3 + 70, 1, -68 );
setRotateKey( spep_1 -3 + 72, 1, -74 );
setRotateKey( spep_1 -3 + 75, 1, -80 );
setRotateKey( spep_1 -3 + 76, 1, -22 );
setRotateKey( spep_1 -3 + 78, 1, -23.5 );
setRotateKey( spep_1 -3 + 80, 1, -25.1 );
setRotateKey( spep_1 -3 + 82, 1, -26.6 );
setRotateKey( spep_1 -3 + 84, 1, -28.2 );
setRotateKey( spep_1 -3 + 86, 1, -29.7 );
setRotateKey( spep_1 -3 + 88, 1, -31.3 );
setRotateKey( spep_1 -3 + 90, 1, -32.8 );
setRotateKey( spep_1 -3 + 92, 1, -34.4 );
setRotateKey( spep_1 -3 + 94, 1, -35.9 );
setRotateKey( spep_1 -3 + 96, 1, -37.5 );
setRotateKey( spep_1 -3 + 98, 1, -39 );
setRotateKey( spep_1 -3 + 99, 1, -39 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 -3 + 20, 906, 16, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 -3 + 20, shuchusen2, 16, 20);
setEffMoveKey( spep_1 -3 + 20, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 36, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 20, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 -3 + 36, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 -3 + 20, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 36, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 20, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 36, shuchusen2, 255 );

shuchusen3 = entryEffectLife( spep_1 -3 + 64, 906, 10, 0x100, -1, 0, 0, 199.9 );
setEffShake( spep_1 -3 + 64, shuchusen3, 10, 20);
setEffMoveKey( spep_1 -3 + 64, shuchusen3, 0, 199.9 , 0 );
setEffMoveKey( spep_1 -3 + 74, shuchusen3, 0, 199.9 , 0 );

setEffScaleKey( spep_1 -3 + 64, shuchusen3, 1.1, 1.45 );
setEffScaleKey( spep_1 -3 + 74, shuchusen3, 1.1, 1.45 );

setEffRotateKey( spep_1 -3 + 64, shuchusen3, 0 );
setEffRotateKey( spep_1 -3 + 74, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 64, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 74, shuchusen3, 255 );

-- ** 書き文字エントリー ** --
ctDon = entryEffectLife( spep_1 -3 + 20, 10019, 20, 0x100, -1, 0, 0, 0 ); --ドンッ
setEffMoveKey( spep_1 -3 + 20, ctDon, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctDon, -54.9, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctDon, -94, 254 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctDon, -107.1, 267.9 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctDon, -98.7, 265.8 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctDon, -114.9, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctDon, -112.5, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctDon, -122.9, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctDon, -119.7, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctDon, -122.7, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctDon, -126, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 20, ctDon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 22, ctDon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 24, ctDon, 2, 2 );
setEffScaleKey( spep_1 -3 + 26, ctDon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 28, ctDon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 30, ctDon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 32, ctDon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 34, ctDon, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 36, ctDon, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 38, ctDon, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 40, ctDon, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 20, ctDon, 0 );
setEffRotateKey( spep_1 -3 + 40, ctDon, 0 );

setEffAlphaKey( spep_1 -3 + 20, ctDon, 255 );
setEffAlphaKey( spep_1 -3 + 34, ctDon, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctDon, 170 );
setEffAlphaKey( spep_1 -3 + 38, ctDon, 85 );
setEffAlphaKey( spep_1 -3 + 40, ctDon, 0 );

ctBaki = entryEffectLife( spep_1 -3 + 64, 10020, 20, 0x100, -1, 0, 30.6, -41.8 ); --バキッ
setEffMoveKey( spep_1 -3 + 64, ctBaki, 30.6, -41.8 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctBaki, 84.6, -114 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctBaki, 124.3, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctBaki, 140.6, -189.5 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctBaki, 132.4, -194.6 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctBaki, 142.8, -191 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctBaki, 147, -207.9 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctBaki, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctBaki, 151.6, -211.4 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctBaki, 151.9, -210.6 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctBaki, 160.4, -217.3 , 0 );

setEffScaleKey( spep_1 -3 + 64, ctBaki, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 66, ctBaki, 1.37, 1.37 );
setEffScaleKey( spep_1 -3 + 68, ctBaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 70, ctBaki, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 72, ctBaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 74, ctBaki, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 76, ctBaki, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 78, ctBaki, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 80, ctBaki, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 82, ctBaki, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 84, ctBaki, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 64, ctBaki, 0 );
setEffRotateKey( spep_1 -3 + 84, ctBaki, 0 );

setEffAlphaKey( spep_1 -3 + 64, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 78, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 80, ctBaki, 179 );
setEffAlphaKey( spep_1 -3 + 82, ctBaki, 102 );
setEffAlphaKey( spep_1 -3 + 84, ctBaki, 26 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_1 + 0, 8 );  --迫ってくる
playSe( spep_1 -3 + 20, 1010 );  --ドン
playSe( spep_1 -3 + 64, 1011 );  --バキ

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;

--------------------------------------
--気溜(98F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --気溜(ef_003)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_2 + 0, 906, 95, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen4, 95, 20);

setEffMoveKey( spep_2 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2 + 95, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_2 + 95, shuchusen4, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen4, 0 );
setEffRotateKey( spep_2 + 95, shuchusen4, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_2 + 95, shuchusen4, 255 );

spep_x = spep_2 + 10;
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

-- ** 音 ** --
SE1 = playSe( spep_2 + 0, 1044 );  --地響き
stopSe( spep_2 + 96, SE1, 10 );

playSe( spep_x + 16, 1018 );  --ごごご

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

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
playSe( spep_3 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射(68F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_04_r, 0x100, -1, 0, 0, 0 );  --気弾発射(ef_004_r)
setEffMoveKey( spep_4 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_4 + 88, hassha, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 88, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 88, hassha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 68, 18,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_4 + 0 -12, 1072 );  --引き
setSeVolume( spep_4 + 0, 1072, 150 );
playSe( spep_4 + 14, 1022 );  --発射

-- ** 次の準備 ** --
spep_5 = spep_4 + 88;

------------------------------------------------------
-- 敵に着弾(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
hitf = entryEffect( spep_5 + 0, SP_05a, 0x100, -1, 0, 0, 0 );  --敵に着弾：画面手前(ef_005a)
setEffMoveKey( spep_5 + 0, hitf, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, hitf, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hitf, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, hitf, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hitf, 0 );
setEffRotateKey( spep_5 + 58, hitf, 0 );
setEffAlphaKey( spep_5 + 0, hitf, 255 );
setEffAlphaKey( spep_5 + 58, hitf, 255 );

hitb = entryEffect( spep_5 + 0, SP_05b, 0x80, -1, 0, 0, 0 );  --敵に着弾：画面奥(ef_005b)
setEffMoveKey( spep_5 + 0, hitb, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, hitb, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hitb, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, hitb, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hitb, 0 );
setEffRotateKey( spep_5 + 58, hitb, 0 );
setEffAlphaKey( spep_5 + 0, hitb, 255 );
setEffAlphaKey( spep_5 + 58, hitb, 255 );

-- ** 敵の動き ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 59, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

--setMoveKey( spep_5 -3 + 0, 1, -159.9, -280 , 0 );
setMoveKey( spep_5 -3 + 3, 1, -141.4, -258.6 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -123.3, -237.8 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -105.6, -217.6 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -88.4, -197.8 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -71.6, -178.4 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -55.1, -159.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -39, -141 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -23.2, -122.9 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -7.8, -105.1 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 7.4, -87.7 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 22.2, -70.7 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 36.7, -53.9 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 51, -37.5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 65, -21.5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 78.7, -5.7 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 92.1, 9.7 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 105.3, 24.9 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 118.2, 39.7 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 130.8, 54.2 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 143.1, 68.4 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 155.2, 82.2 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 166.9, 95.7 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 178.4, 108.9 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 189.6, 121.7 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 200.4, 134.2 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 210.9, 146.2 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 221, 157.9 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 230.8, 169.1 , 0 );
setMoveKey( spep_5 -3 + 59, 1, 240, 179.9 , 0 );

--setScaleKey( spep_5 -3 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 3, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 4, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_5 -3 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_5 -3 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_5 -3 + 12, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 14, 1, 1.16, 1.16 );
setScaleKey( spep_5 -3 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_5 -3 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 -3 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_5 -3 + 22, 1, 1.35, 1.35 );
setScaleKey( spep_5 -3 + 24, 1, 1.39, 1.39 );
setScaleKey( spep_5 -3 + 26, 1, 1.43, 1.43 );
setScaleKey( spep_5 -3 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_5 -3 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_5 -3 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_5 -3 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_5 -3 + 38, 1, 1.67, 1.67 );
setScaleKey( spep_5 -3 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_5 -3 + 42, 1, 1.74, 1.74 );
setScaleKey( spep_5 -3 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_5 -3 + 46, 1, 1.81, 1.81 );
setScaleKey( spep_5 -3 + 48, 1, 1.85, 1.85 );
setScaleKey( spep_5 -3 + 50, 1, 1.88, 1.88 );
setScaleKey( spep_5 -3 + 52, 1, 1.91, 1.91 );
setScaleKey( spep_5 -3 + 54, 1, 1.94, 1.94 );
setScaleKey( spep_5 -3 + 56, 1, 1.97, 1.97 );
setScaleKey( spep_5 -3 + 59, 1, 2, 2 );

setRotateKey( spep_5 -3 + 3, 1, -70 );
setRotateKey( spep_5 -3 + 59, 1, -70 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_5 + 0, 1021 );  --迫る

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --ギャン(ef_006)
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 58, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 );
setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_6 -3 + 61, ctgyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_6 -3 + 3, ctgyan, 2, 2 );
setEffScaleKey( spep_6 -3 + 10, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_6 -3 + 61, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 -3 + 61, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 -3 + 61, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_6 + 0, 1023 );  --ギャン

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 225); --黒フェード

-- ** 白フェード ** --
entryFade( spep_6 + 20, 36, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 58;

------------------------------------------------------
-- 最後(238F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07_r, 0x80, -1, 0, 0, 0 ); --最後(ef_007_r)
setEffMoveKey( spep_7 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_7 + 238, finish, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 238, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 238, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 238, finish, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 20 +20 );
endPhase( spep_7 + 236 -80 );

end