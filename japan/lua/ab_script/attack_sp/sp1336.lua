--ヘルズフラッシュ_人造人間16号

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
SP_01 = 154098; --突進
SP_02 = 154099; --殴る
SP_13 = 154126; --殴る 前
SP_03 = 154100; --持ち上げる　前
SP_04 = 154101; --持ち上げる　後ろ
SP_05 = 154102; --振り上げ
SP_06 = 154103; --叩きつけ　前
SP_07 = 154104; --叩きつけ　後ろ
SP_08 = 154105; --地面の穴
SP_09 = 154106; --両手を外す
SP_10 = 154107; --地面に光線発射
SP_11 = 154108; --地面から光線1
SP_12 = 154109; --地面から光線2


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
-- 突進(70F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cutin_f = entryEffectLife( spep_0 + 0, SP_01, 70, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, cutin_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, cutin_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, cutin_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin_f, 0 );
setEffRotateKey( spep_0 + 70, cutin_f, 0 );
setEffAlphaKey( spep_0 + 0, cutin_f, 255 );
setEffAlphaKey( spep_0 + 66, cutin_f, 255 );
setEffAlphaKey( spep_0 + 67, cutin_f, 0 );
setEffAlphaKey( spep_0 + 70, cutin_f, 0 );


-- ** 書き文字 ** --
ctdon = entryEffectLife( spep_0 + 0,  10019, 12, 0x100, -1, 0, 0, 65 );  --ドン

setEffMoveKey( spep_0 + 0, ctdon, 0, 65 , 0 );
setEffMoveKey( spep_0 + 2, ctdon, -5.4, 112.6 , 0 );
setEffMoveKey( spep_0 + 4, ctdon, 5.5, 157.4 , 0 );
setEffMoveKey( spep_0 + 6, ctdon, -3.9, 213.4 , 0 );
setEffMoveKey( spep_0 + 8, ctdon, 11.5, 200.1 , 0 );
setEffMoveKey( spep_0 + 10, ctdon, -3.8, 195.7 , 0 );
setEffMoveKey( spep_0 + 12, ctdon, -3.9, 192.3 , 0 );

setEffScaleKey( spep_0 + 0, ctdon, 0.59, 0.59 );
setEffScaleKey( spep_0 + 2, ctdon, 1.22, 1.22 );
setEffScaleKey( spep_0 + 4, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_0 + 6, ctdon, 2.46, 2.46 );
setEffScaleKey( spep_0 + 8, ctdon, 2.53, 2.53 );
setEffScaleKey( spep_0 + 10, ctdon, 2.6, 2.6 );
setEffScaleKey( spep_0 + 12, ctdon, 2.67, 2.67 );

setEffRotateKey( spep_0 + 0, ctdon, 0 );
setEffRotateKey( spep_0 + 12, ctdon, 0 );

setEffAlphaKey( spep_0 + 0, ctdon, 255 );
setEffAlphaKey( spep_0 + 6, ctdon, 255 );
setEffAlphaKey( spep_0 + 8, ctdon, 170 );
setEffAlphaKey( spep_0 + 10, ctdon, 85 );
setEffAlphaKey( spep_0 + 12, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0,  9);  --突進音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );

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


-- ** 次の準備 ** --
spep_1 = spep_0 + 66;

------------------------------------------------------
-- 殴る(70F)
------------------------------------------------------


-- ** エフェクト等 ** --
naguru_f = entryEffectLife( spep_1 + 0, SP_02, 70, 0x100, -1, 0, 0, 0 );  --殴る(ef_002)
setEffMoveKey( spep_1 + 0, naguru_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, naguru_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, naguru_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_f, 0 );
setEffRotateKey( spep_1 + 70, naguru_f, 0 );
setEffAlphaKey( spep_1 + 0, naguru_f, 255 );
setEffAlphaKey( spep_1 + 64, naguru_f, 255 );
setEffAlphaKey( spep_1 + 65, naguru_f, 0 );
setEffAlphaKey( spep_1 + 70, naguru_f, 0 );


-- ** 敵キャラ ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 - 3 + 30, 1, 0 );
changeAnime( spep_1 + 0, 1, 118 );
changeAnime( spep_1 - 3 + 18, 1, 107 );

setMoveKey( spep_1 + 0, 1, 358.1, -573.9 , 0 );
setMoveKey( spep_1 - 3 + 4, 1, 295.4, -431.2 , 0 );
setMoveKey( spep_1 - 3 + 6, 1, 264, -359.8 , 0 );
setMoveKey( spep_1 - 3 + 8, 1, 232.6, -288.4 , 0 );
setMoveKey( spep_1 - 3 + 10, 1, 201.1, -217 , 0 );
setMoveKey( spep_1 - 3 + 12, 1, 169.7, -145.6 , 0 );
setMoveKey( spep_1 - 3 + 14, 1, 138.3, -74.2 , 0 );
setMoveKey( spep_1 - 3 + 17, 1, 138.3, -74.2 , 0 );
setMoveKey( spep_1 - 3 + 18, 1, 86, -310.8 , 0 );
setMoveKey( spep_1 - 3 + 20, 1, 28.8, -287.8 , 0 );
setMoveKey( spep_1 - 3 + 22, 1, -40.9, -82.5 , 0 );
setMoveKey( spep_1 - 3 + 24, 1, 58, -94.7 , 0 );
setMoveKey( spep_1 - 3 + 26, 1, 17.9, -393.3 , 0 );
setMoveKey( spep_1 - 3 + 28, 1, -41.3, -544.4 , 0 );
setMoveKey( spep_1 - 3 + 30, 1, -50, -593.2 , 0 );

setScaleKey( spep_1 + 0, 1, 3.8, 3.8 );
setScaleKey( spep_1 - 3 + 4, 1, 3.21, 3.21 );
setScaleKey( spep_1 - 3 + 6, 1, 2.92, 2.92 );
setScaleKey( spep_1 - 3 + 8, 1, 2.62, 2.62 );
setScaleKey( spep_1 - 3 + 10, 1, 2.33, 2.33 );
setScaleKey( spep_1 - 3 + 12, 1, 2.03, 2.03 );
setScaleKey( spep_1 - 3 + 14, 1, 1.74, 1.74 );
setScaleKey( spep_1 - 3 + 17, 1, 1.74, 1.74 );
setScaleKey( spep_1 - 3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_1 - 3 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_1 - 3 + 26, 1, 1.7, 1.7 );
setScaleKey( spep_1 - 3 + 28, 1, 2.27, 2.27 );
setScaleKey( spep_1 - 3 + 30, 1, 2.46, 2.46 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 - 3 + 17, 1, 0 );
setRotateKey( spep_1 - 3 + 18, 1, 49.2 );
setRotateKey( spep_1 - 3 + 24, 1, 49.2 );
setRotateKey( spep_1 - 3 + 26, 1, 58.8 );
setRotateKey( spep_1 - 3 + 28, 1, 64.5 );
setRotateKey( spep_1 - 3 + 30, 1, 66.4 );

-- ** エフェクト等 ** --
naguru = entryEffectLife( spep_1 + 0, SP_13, 70, 0x80, -1, 0, 0, 0 );  --殴る後ろ（新規）(ef_013)
setEffMoveKey( spep_1 + 0, naguru, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, naguru, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru, 1.0, 1.0 );
setEffScaleKey( spep_1 + 70, naguru, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru, 0 );
setEffRotateKey( spep_1 + 70, naguru, 0 );
setEffAlphaKey( spep_1 + 0, naguru, 255 );
setEffAlphaKey( spep_1 + 64, naguru, 255 );
setEffAlphaKey( spep_1 + 65, naguru, 0 );
setEffAlphaKey( spep_1 + 70, naguru, 0 );

-- ** 書き文字 ** --
ctbaki = entryEffectLife( spep_1 - 3 + 20,  10020, 14, 0x100, -1, 0, 126.9, 158 );  -- バキっ

setEffMoveKey( spep_1 - 3 + 20,ctbaki, 126.9, 158 , 0 );
setEffMoveKey( spep_1 - 3 + 22,ctbaki, 129.2, 203.3 , 0 );
setEffMoveKey( spep_1 - 3 + 24,ctbaki, 131.5, 248.5 , 0 );
setEffMoveKey( spep_1 - 3 + 26,ctbaki, 133.8, 293.6 , 0 );
setEffMoveKey( spep_1 - 3 + 34,ctbaki, 133.8, 293.6 , 0 );

setEffScaleKey( spep_1 - 3 + 20,ctbaki, 0.62, 0.6 );
setEffScaleKey( spep_1 - 3 + 22,ctbaki, 1.27, 1.24 );
setEffScaleKey( spep_1 - 3 + 24,ctbaki, 1.93, 1.88 );
setEffScaleKey( spep_1 - 3 + 26,ctbaki, 2.59, 2.52 );
setEffScaleKey( spep_1 - 3 + 34,ctbaki, 2.59, 2.52 );

setEffRotateKey( spep_1 - 3 + 20,ctbaki, 36.7 );
setEffRotateKey( spep_1 - 3 + 34,ctbaki, 36.7 );

setEffAlphaKey( spep_1 - 3 + 20,ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 26,ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 28,ctbaki, 191 );
setEffAlphaKey( spep_1 - 3 + 30,ctbaki, 128 );
setEffAlphaKey( spep_1 - 3 + 32,ctbaki, 64 );
setEffAlphaKey( spep_1 - 3 + 34,ctbaki, 0 );

-- ** 音 ** --
playSe( spep_1 + 18 -3,  1120);  --殴る音
playSe( spep_1 + 18 -3,  1009);
playSe( spep_1 + 40 -3,  20);
SE1 = playSe( spep_1 + 40,  1044);  --砂煙
stopSe( spep_1 + 54,  SE1,  30);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 64, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 64;
------------------------------------------------------
-- 持ち上げる(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
up1_f = entryEffectLife( spep_2 + 0, SP_03, 60, 0x100, -1, 0, 0, 0 );  --持ち上げる(ef_003)
setEffMoveKey( spep_2 + 0, up1_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, up1_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, up1_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, up1_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, up1_f, 0 );
setEffRotateKey( spep_2 + 60, up1_f, 0 );
setEffAlphaKey( spep_2 + 0, up1_f, 255 );
setEffAlphaKey( spep_2 + 57, up1_f, 255 );
setEffAlphaKey( spep_2 + 58, up1_f, 0 );
setEffAlphaKey( spep_2 + 60, up1_f, 0 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 57, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );

setMoveKey( spep_2 + 0, 1, -3.1, -231.4 , 0 );
setMoveKey( spep_2 + 36, 1, -3.1, -231.4 , 0 );
setMoveKey( spep_2 + 38, 1, -2.5, -224.3 , 0 );
setMoveKey( spep_2 + 40, 1, -2.5, -224.3 , 0 );
setMoveKey( spep_2 + 42, 1, -2.5, -224.2 , 0 );
setMoveKey( spep_2 + 44, 1, -2.4, -223.8 , 0 );
setMoveKey( spep_2 + 46, 1, -2.3, -223.1 , 0 );
setMoveKey( spep_2 + 48, 1, -2.2, -222 , 0 );
setMoveKey( spep_2 + 50, 1, -2.1, -220.3 , 0 );
setMoveKey( spep_2 + 52, 1, -1.8, -217.9 , 0 );
setMoveKey( spep_2 + 54, 1, -1.5, -214.7 , 0 );
setMoveKey( spep_2 + 56, 1, -1.1, -210.6 , 0 );
setMoveKey( spep_2 + 58, 1, -0.6, -205.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 58, 1, 1.71, 1.71 );

setRotateKey( spep_2 + 0, 1, 43.8 );
setRotateKey( spep_2 + 58, 1, 43.8 );

up1_b = entryEffectLife( spep_2 + 0, SP_04, 60, 0x80, -1, 0, 0, 0 );  --持ち上げる(ef_004)
setEffMoveKey( spep_2 + 0, up1_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, up1_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, up1_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60, up1_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, up1_b, 0 );
setEffRotateKey( spep_2 + 60, up1_b, 0 );
setEffAlphaKey( spep_2 + 0, up1_b, 255 );
setEffAlphaKey( spep_2 + 55, up1_b, 255 );
setEffAlphaKey( spep_2 + 56, up1_b, 0 );
setEffAlphaKey( spep_2 + 60, up1_b, 0 );

-- ** 音 ** --
playSe( spep_2 + 0,  8);  --上から降りてくる
playSe( spep_2 + 10,  1135);  --着地
setSeVolume(  spep_2 + 10 ,  1135,  50);
playSe( spep_2 + 26,  1135);  --着地
setSeVolume(  spep_2 + 26 ,  1135,  30);
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;
------------------------------------------------------
-- 持ち上げる2(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
up2 = entryEffectLife( spep_3 + 0, SP_05, 100, 0x100, -1, 0, 0, 0 );  --持ち上げる2(ef_005)
setEffMoveKey( spep_3 + 0, up2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, up2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, up2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, up2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, up2, 0 );
setEffRotateKey( spep_3 + 100, up2, 0 );
setEffAlphaKey( spep_3 + 0, up2, 255 );
setEffAlphaKey( spep_3 + 96, up2, 255 );
setEffAlphaKey( spep_3 + 97, up2, 0 );
setEffAlphaKey( spep_3 + 100, up2, 0 );

-- ** 書き文字 ** --
ctba = entryEffectLife( spep_3 - 3  + 14,  10022, 20, 0x100, -1, 0, 115.9, 237.5 );  --バッ

setEffMoveKey( spep_3 - 3  + 14, ctba, 115.9, 237.5 , 0 );
setEffMoveKey( spep_3 - 3  + 16, ctba, 102.2, 300.4 , 0 );
setEffMoveKey( spep_3 - 3  + 18, ctba, 88.4, 363.4 , 0 );
setEffMoveKey( spep_3 - 3  + 20, ctba, 74.6, 426.3 , 0 );
setEffMoveKey( spep_3 - 3  + 22, ctba, 68.8, 427.2 , 0 );
setEffMoveKey( spep_3 - 3  + 24, ctba, 63, 428.1 , 0 );
setEffMoveKey( spep_3 - 3  + 26, ctba, 57.2, 429 , 0 );
setEffMoveKey( spep_3 - 3  + 28, ctba, 51.4, 429.9 , 0 );
setEffMoveKey( spep_3 - 3  + 30, ctba, 45.7, 430.8 , 0 );
setEffMoveKey( spep_3 - 3  + 32, ctba, 39.9, 431.8 , 0 );
setEffMoveKey( spep_3 - 3  + 34, ctba, 34.1, 432.7 , 0 );

setEffScaleKey( spep_3 - 3  + 14, ctba, 1.55, 1.55 );
setEffScaleKey( spep_3 - 3  + 16, ctba, 2.23, 2.23 );
setEffScaleKey( spep_3 - 3  + 18, ctba, 2.91, 2.91 );
setEffScaleKey( spep_3 - 3  + 20, ctba, 3.59, 3.59 );
setEffScaleKey( spep_3 - 3  + 22, ctba, 3.64, 3.64 );
setEffScaleKey( spep_3 - 3  + 24, ctba, 3.69, 3.69 );
setEffScaleKey( spep_3 - 3  + 26, ctba, 3.74, 3.74 );
setEffScaleKey( spep_3 - 3  + 28, ctba, 3.79, 3.79 );
setEffScaleKey( spep_3 - 3  + 30, ctba, 3.84, 3.84 );
setEffScaleKey( spep_3 - 3  + 32, ctba, 3.89, 3.89 );
setEffScaleKey( spep_3 - 3  + 34, ctba, 3.94, 3.94 );

setEffRotateKey( spep_3 - 3  + 14, ctba, 15.5 );
setEffRotateKey( spep_3 - 3  + 34, ctba, 15.5 );

setEffAlphaKey( spep_3 - 3  + 14, ctba, 255 );
setEffAlphaKey( spep_3 - 3  + 20, ctba, 255 );
setEffAlphaKey( spep_3 - 3  + 22, ctba, 219 );
setEffAlphaKey( spep_3 - 3  + 24, ctba, 182 );
setEffAlphaKey( spep_3 - 3  + 26, ctba, 146 );
setEffAlphaKey( spep_3 - 3  + 28, ctba, 109 );
setEffAlphaKey( spep_3 - 3  + 30, ctba, 73 );
setEffAlphaKey( spep_3 - 3  + 32, ctba, 36 );
setEffAlphaKey( spep_3 - 3  + 34, ctba, 0 );

-- ** 音 ** --
playSe( spep_3 - 3 + 14,  1013);  --持ち上げる
SE2 = playSe( spep_3 + 44,  8);  --振り下ろす直前
setSeVolume( spep_3 + 44 ,  8,  200);
stopSe( spep_3 + 90,  SE2,  30);
--SE4 = playSe( spep_3 + 44,  1019);
--stopSe( spep_3 + 90,  SE4,  30);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;
------------------------------------------------------
-- 叩きつける(60F)
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffectLife( spep_4 + 0, SP_06, 60, 0x100, -1, 0, 0, 0 );  --叩きつける(ef_006)
setEffMoveKey( spep_4 + 0, down_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, down_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, down_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, down_f, 0 );
setEffRotateKey( spep_4 + 60, down_f, 0 );
setEffAlphaKey( spep_4 + 0, down_f, 255 );
setEffAlphaKey( spep_4 + 58, down_f, 255 );
setEffAlphaKey( spep_4 + 59, down_f, 0 );
setEffAlphaKey( spep_4 + 60, down_f, 0 );

-- ** 書き文字 ** --
ctdogon = entryEffectLife( spep_4 - 3 + 18,  10018, 14, 0x100, -1, 0, -34.9, -401 );  --ドゴォン

setEffMoveKey( spep_4 - 3 + 18, ctdogon, -34.9, -401 , 0 );
setEffMoveKey( spep_4 - 3 + 20, ctdogon, -43.2, -280.4 , 0 );
setEffMoveKey( spep_4 - 3 + 22, ctdogon, -27.6, -181.4 , 0 );
setEffMoveKey( spep_4 - 3 + 24, ctdogon, -34.6, -62.6 , 0 );
setEffMoveKey( spep_4 - 3 + 26, ctdogon, -46, -40.4 , 0 );
setEffMoveKey( spep_4 - 3 + 28, ctdogon, -26.2, -46.6 , 0 );
setEffMoveKey( spep_4 - 3 + 30, ctdogon, -32.3, -14.2 , 0 );
setEffMoveKey( spep_4 - 3 + 32, ctdogon, -32.2, -2.5 , 0 );

setEffScaleKey( spep_4 - 3 + 18, ctdogon, 2.77, 2.77 );
setEffScaleKey( spep_4 - 3 + 20, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_4 - 3 + 22, ctdogon, 3.92, 3.92 );
setEffScaleKey( spep_4 - 3 + 24, ctdogon, 4.5, 4.5 );
setEffScaleKey( spep_4 - 3 + 26, ctdogon, 4.55, 4.58 );
setEffScaleKey( spep_4 - 3 + 28, ctdogon, 4.59, 4.67 );
setEffScaleKey( spep_4 - 3 + 30, ctdogon, 4.64, 4.75 );
setEffScaleKey( spep_4 - 3 + 32, ctdogon, 4.68, 4.83 );

setEffRotateKey( spep_4 - 3 + 18, ctdogon, 5.7 );
setEffRotateKey( spep_4 - 3 + 32, ctdogon, 5.7 );

setEffAlphaKey( spep_4 - 3 + 18, ctdogon, 255 );
setEffAlphaKey( spep_4 - 3 + 24, ctdogon, 255 );
setEffAlphaKey( spep_4 - 3 + 26, ctdogon, 191 );
setEffAlphaKey( spep_4 - 3 + 28, ctdogon, 128 );
setEffAlphaKey( spep_4 - 3 + 30, ctdogon, 64 );
setEffAlphaKey( spep_4 - 3 + 32, ctdogon, 0 );

-- ** 敵の動き ** --
setDisp( spep_4 + 8 - 3, 1, 1 );
setDisp( spep_4 + 18 - 3, 1, 0 );
changeAnime( spep_4 + 0,  1,  6);

setMoveKey( spep_4 + 8 - 3, 1, -155.6, 713.1 , 0 );
setMoveKey( spep_4 + 10 - 3, 1, -115.4, 473.1 , 0 );
setMoveKey( spep_4 + 12 - 3, 1, -115.4, 313.1 , 0 );
setMoveKey( spep_4 + 14 - 3, 1, -115.4, 113.1 , 0 );
setMoveKey( spep_4 + 18 - 3, 1, -115.4, -386.9 , 0 );

setScaleKey( spep_4 + 8 - 3, 1, 4.8, 4.8 );
setScaleKey( spep_4 + 18 - 3, 1, 4.8, 4.8 );

setRotateKey( spep_4 + 8 - 3, 1, -38.7 );
setRotateKey( spep_4 + 10 - 3, 1, -39.9 );
setRotateKey( spep_4 + 18 - 3, 1, -39.9 );


down_b = entryEffectLife( spep_4 + 0, SP_07, 60, 0x80, -1, 0, 0, 0 );  --叩きつける(ef_007)
setEffMoveKey( spep_4 + 0, down_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, down_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 60, down_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, down_b, 0 );
setEffRotateKey( spep_4 + 60, down_b, 0 );
setEffAlphaKey( spep_4 + 0, down_b, 255 );
setEffAlphaKey( spep_4 + 58, down_b, 255 );
setEffAlphaKey( spep_4 + 59, down_b, 0 );
setEffAlphaKey( spep_4 + 60, down_b, 0 );

-- ** ** --
playSe( spep_4 + 0 ,  1014);  --投げ落とす
playSe( spep_4 + 0, 8);  --投げ落とす
playSe( spep_4 + 18 - 3,  1159);  --穴あけ　新規SEが来たら差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 60-3, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 60 - 3 ;
------------------------------------------------------
-- 穴があく(90F)
------------------------------------------------------

-- ** エフェクト等 ** --
hole = entryEffectLife( spep_5 + 0, SP_08, 90, 0x100, -1, 0, 0, 0 );  --地面に穴が開く(ef_008)
setEffMoveKey( spep_5 + 0, hole, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, hole, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hole, 1.0, 1.0 );
setEffScaleKey( spep_5 + 90, hole, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hole, 0 );
setEffRotateKey( spep_5 + 90, hole, 0 );
setEffAlphaKey( spep_5 + 0, hole, 255 );
setEffAlphaKey( spep_5 + 90, hole, 255 );

entryFade( spep_5 + 86, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --


-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );


-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 94, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --

entryFade( spep_6 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


spep_7 = spep_6 + 94;
--------------------------------------
--両手外す(100F)
--------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_7 + 0, SP_09, 100, 0x100, -1, 0, 0, 0 );  --両手をはずす(ef_009)
setEffMoveKey( spep_7 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, kamae, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, kamae, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kamae, 0 );
setEffRotateKey( spep_7 + 100, kamae, 0 );
setEffAlphaKey( spep_7 + 0, kamae, 255 );
setEffAlphaKey( spep_7 + 100, kamae, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_7 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_7 +20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_7 +32, 190006, 72, 0x100, -1, 0, 140, 550);    -- ゴゴゴゴ

setEffMoveKey(  spep_7 +32,  ctgogo,  140,  550);
setEffMoveKey(  spep_7 +104,  ctgogo,  140,  550);

setEffAlphaKey( spep_7 + 32, ctgogo, 0 );
setEffAlphaKey( spep_7 + 33, ctgogo, 255 );
setEffAlphaKey( spep_7 + 34, ctgogo, 255 );
setEffAlphaKey( spep_7 + 94, ctgogo, 255 );
setEffAlphaKey( spep_7 + 96, ctgogo, 255 );
setEffAlphaKey( spep_7 + 98, ctgogo, 191 );
setEffAlphaKey( spep_7 + 100, ctgogo, 128 );
setEffAlphaKey( spep_7 + 102, ctgogo, 64 );
setEffAlphaKey( spep_7 + 104, ctgogo, 0 );

setEffRotateKey(  spep_7 +32,  ctgogo,  0);
setEffRotateKey(  spep_7 +104,  ctgogo,  0);

setEffScaleKey(  spep_7 +32,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_7 +96,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_7 +104,  ctgogo, 1.07, 1.07 );


-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7 - 3 + 14,  906, 84, 0x100, -1, 0, 0, 0 );

setEffShake( spep_7 - 3 + 14,  shuchusen7,  84,  20);

setEffMoveKey( spep_7 - 3 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 - 3 + 98, shuchusen7, 0, 0 , 0 );
setEffScaleKey( spep_7 - 3 + 14, shuchusen7, 1.22, 1.17 );
setEffScaleKey( spep_7 - 3 + 98, shuchusen7, 1.22, 1.17 );
setEffRotateKey( spep_7 - 3 + 14, shuchusen7, 0 );
setEffRotateKey( spep_7 - 3 + 98, shuchusen7, 0 );
setEffAlphaKey( spep_7 - 3 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_7 - 3 + 98, shuchusen7, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 **  --
playSe( spep_7 + 32,  SE_04);  --ゴゴゴ

-- ** 次の準備 ** --
spep_8 = spep_7 + 100

--------------------------------------
--ヘルズフラッシュ(120F)
--------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffectLife( spep_8 + 0, SP_10, 120, 0x100, -1, 0, 0, 0 );  --ヘルズフラッシュ(ef_010)
setEffMoveKey( spep_8 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_8 + 120, hassya, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_8 + 120, hassya, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hassya, 0 );
setEffRotateKey( spep_8 + 120, hassya, 0 );
setEffAlphaKey( spep_8 + 0, hassya, 255 );
setEffAlphaKey( spep_8 + 120, hassya, 255 );

-- ** 書き文字 ** --
ctzuo = entryEffectLife( spep_8 - 3 + 30,  10012, 16, 0x100, -1, 0, -10.2, -391.7 );  --ズオッ

setEffMoveKey( spep_8 - 3 + 30, ctzuo, -10.2, -391.7 , 0 );
setEffMoveKey( spep_8 - 3 + 32, ctzuo, -4.8, -332.8 , 0 );
setEffMoveKey( spep_8 - 3 + 34, ctzuo, 0.6, -273.9 , 0 );
setEffMoveKey( spep_8 - 3 + 36, ctzuo, 1.8, -267.9 , 0 );
setEffMoveKey( spep_8 - 3 + 38, ctzuo, 3.1, -261.9 , 0 );
setEffMoveKey( spep_8 - 3 + 40, ctzuo, 4.4, -255.9 , 0 );
setEffMoveKey( spep_8 - 3 + 42, ctzuo, 5.7, -249.9 , 0 );
setEffMoveKey( spep_8 - 3 + 44, ctzuo, 1.6, -246.8 , 0 );
setEffMoveKey( spep_8 - 3 + 46, ctzuo, -2.4, -243.8 , 0 );

setEffScaleKey( spep_8 - 3 + 30, ctzuo, 1, 1 );
setEffScaleKey( spep_8 - 3 + 32, ctzuo, 2.22, 2.22 );
setEffScaleKey( spep_8 - 3 + 34, ctzuo, 3.43, 3.43 );
setEffScaleKey( spep_8 - 3 + 36, ctzuo, 3.56, 3.56 );
setEffScaleKey( spep_8 - 3 + 38, ctzuo, 3.69, 3.69 );
setEffScaleKey( spep_8 - 3 + 40, ctzuo, 3.81, 3.81 );
setEffScaleKey( spep_8 - 3 + 42, ctzuo, 3.94, 3.94 );
setEffScaleKey( spep_8 - 3 + 46, ctzuo, 3.94, 3.94 );

setEffRotateKey( spep_8 - 3 + 30, ctzuo, 16.7 );
setEffRotateKey( spep_8 - 3 + 46, ctzuo, 16.7 );

setEffAlphaKey( spep_8 - 3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_8 - 3 + 42, ctzuo, 255 );
setEffAlphaKey( spep_8 - 3 + 44, ctzuo, 128 );
setEffAlphaKey( spep_8 - 3 + 46, ctzuo, 0 );

entryFade( spep_8 + 16, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 110, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_8 + 26,  1137); --発射音
playSe( spep_8 + 26,  1122); --発射音

-- ** 次の準備 ** --
spep_9 = spep_8 + 120;

--------------------------------------
--島貫通(70F)
--------------------------------------
-- ** エフェクト等 ** --
kantsu1 = entryEffectLife( spep_9 + 0, SP_11, 70, 0x100, -1, 0, 0, 0 );  --島貫通(ef_011)
setEffMoveKey( spep_9 + 0, kantsu1, 0, 0 , 0 );
setEffMoveKey( spep_9 + 70, kantsu1, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, kantsu1, 1.0, 1.0 );
setEffScaleKey( spep_9 + 70, kantsu1, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kantsu1, 0 );
setEffRotateKey( spep_9 + 70, kantsu1, 0 );
setEffAlphaKey( spep_9 + 0, kantsu1, 255 );
setEffAlphaKey( spep_9 + 70, kantsu1, 255 );


-- ** 書き文字 ** --
ctgogo2 = entryEffectLife( spep_9 + 0, 190006, 22, 0x100, -1, 0, -37.6, -333.6 );  --ゴゴゴ
setEffMoveKey( spep_9 + 0, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 2, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 4, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 6, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 8, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 10, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 12, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 14, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 16, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 18, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 20, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 22, ctgogo2, -34.3, -348.4 , 0 );

z=0.5;

setEffScaleKey( spep_9 + 0, ctgogo2, 1.83-z, 1.83-z );
setEffScaleKey( spep_9 + 22, ctgogo2, 1.83-z, 1.83-z );

setEffRotateKey( spep_9 + 0, ctgogo2, 0 );
setEffRotateKey( spep_9 + 22, ctgogo2, 0 );

setEffAlphaKey( spep_9 + 0, ctgogo2, 255 );
setEffAlphaKey( spep_9 + 22, ctgogo2, 255 );

ctdon2 = entryEffectLife( spep_9 - 3 + 30,  10019, 10, 0x100, -1, 0, 5.6, -137.6 );  --ドン

setEffMoveKey( spep_9 - 3 + 30, ctdon2, 5.6, -137.6 , 0 );
setEffMoveKey( spep_9 - 3 + 32, ctdon2, -6.1, -197.7 , 0 );
setEffMoveKey( spep_9 - 3 + 34, ctdon2, 13.4, -263 , 0 );
setEffMoveKey( spep_9 - 3 + 36, ctdon2, -1.4, -256.8 , 0 );
setEffMoveKey( spep_9 - 3 + 38, ctdon2, 19.2, -276.7 , 0 );
setEffMoveKey( spep_9 - 3 + 40, ctdon2, 19.6, -283.4 , 0 );

setEffScaleKey( spep_9 - 3 + 30, ctdon2, 1.63, 1.63 );
setEffScaleKey( spep_9 - 3 + 32, ctdon2, 2.41, 2.41 );
setEffScaleKey( spep_9 - 3 + 34, ctdon2, 3.19, 3.19 );
setEffScaleKey( spep_9 - 3 + 36, ctdon2, 3.29, 3.29 );
setEffScaleKey( spep_9 - 3 + 38, ctdon2, 3.4, 3.4 );
setEffScaleKey( spep_9 - 3 + 40, ctdon2, 3.5, 3.5 );

setEffRotateKey( spep_9 - 3 + 30, ctdon2, 0 );
setEffRotateKey( spep_9 - 3 + 40, ctdon2, 0 );

setEffAlphaKey( spep_9 - 3 + 30, ctdon2, 255 );
setEffAlphaKey( spep_9 - 3 + 34, ctdon2, 255 );
setEffAlphaKey( spep_9 - 3 + 36, ctdon2, 170 );
setEffAlphaKey( spep_9 - 3 + 38, ctdon2, 85 );
setEffAlphaKey( spep_9 - 3 + 40, ctdon2, 0 );

entryFade( spep_9 + 25, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 60, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_9 + 28,  1160);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
 spep_10 = spep_9 + 70;

--------------------------------------
--島貫通2(160F)
--------------------------------------
-- ** エフェクト等 ** --
kantsu2 = entryEffect( spep_10 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --島貫通(ef_012)
setEffMoveKey( spep_10 + 0, kantsu2, 0, 0 , 0 );
setEffMoveKey( spep_10 + 160, kantsu2, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, kantsu2, 1.0, 1.0 );
setEffScaleKey( spep_10 + 160, kantsu2, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kantsu2, 0 );
setEffRotateKey( spep_10 + 160, kantsu2, 0 );
setEffAlphaKey( spep_10 + 0, kantsu2, 255 );
setEffAlphaKey( spep_10 + 160, kantsu2, 255 );

-- ** 書き文字 ** --
ctzudodo = entryEffectLife( spep_10 - 3 + 12,  10014, 88, 0x100, -1, 0, 112.7, -350.7 );  --ズドド
setEffMoveKey( spep_10 - 3 + 12, ctzudodo, 112.7, -350.7 , 0 );
setEffMoveKey( spep_10 - 3 + 14, ctzudodo, 114.2, -371.3 , 0 );
setEffMoveKey( spep_10 - 3 + 16, ctzudodo, 117.2, -389.5 , 0 );
setEffMoveKey( spep_10 - 3 + 18, ctzudodo, 126.7, -375 , 0 );
setEffMoveKey( spep_10 - 3 + 20, ctzudodo, 117.1, -391.1 , 0 );
setEffMoveKey( spep_10 - 3 + 22, ctzudodo, 126.8, -376.3 , 0 );
setEffMoveKey( spep_10 - 3 + 24, ctzudodo, 117, -392.8 , 0 );
setEffMoveKey( spep_10 - 3 + 26, ctzudodo, 126.9, -377.6 , 0 );
setEffMoveKey( spep_10 - 3 + 28, ctzudodo, 116.9, -394.4 , 0 );
setEffMoveKey( spep_10 - 3 + 30, ctzudodo, 127, -378.9 , 0 );
setEffMoveKey( spep_10 - 3 + 32, ctzudodo, 116.8, -396 , 0 );
setEffMoveKey( spep_10 - 3 + 34, ctzudodo, 127, -380.2 , 0 );
setEffMoveKey( spep_10 - 3 + 36, ctzudodo, 116.8, -397.7 , 0 );
setEffMoveKey( spep_10 - 3 + 38, ctzudodo, 127.1, -381.5 , 0 );
setEffMoveKey( spep_10 - 3 + 40, ctzudodo, 116.7, -399.3 , 0 );
setEffMoveKey( spep_10 - 3 + 42, ctzudodo, 127.2, -382.9 , 0 );
setEffMoveKey( spep_10 - 3 + 44, ctzudodo, 116.6, -400.9 , 0 );
setEffMoveKey( spep_10 - 3 + 46, ctzudodo, 127.3, -384.2 , 0 );
setEffMoveKey( spep_10 - 3 + 48, ctzudodo, 116.5, -402.5 , 0 );
setEffMoveKey( spep_10 - 3 + 50, ctzudodo, 127.4, -385.5 , 0 );
setEffMoveKey( spep_10 - 3 + 52, ctzudodo, 116.4, -404.2 , 0 );
setEffMoveKey( spep_10 - 3 + 54, ctzudodo, 127.5, -386.8 , 0 );
setEffMoveKey( spep_10 - 3 + 56, ctzudodo, 116.3, -405.8 , 0 );
setEffMoveKey( spep_10 - 3 + 58, ctzudodo, 127.6, -388.1 , 0 );
setEffMoveKey( spep_10 - 3 + 60, ctzudodo, 116.2, -407.4 , 0 );
setEffMoveKey( spep_10 - 3 + 62, ctzudodo, 127.7, -389.5 , 0 );
setEffMoveKey( spep_10 - 3 + 64, ctzudodo, 116.1, -409.1 , 0 );
setEffMoveKey( spep_10 - 3 + 66, ctzudodo, 127.8, -390.8 , 0 );
setEffMoveKey( spep_10 - 3 + 68, ctzudodo, 116, -410.7 , 0 );
setEffMoveKey( spep_10 - 3 + 70, ctzudodo, 116, -411.5 , 0 );
setEffMoveKey( spep_10 - 3 + 72, ctzudodo, 127.9, -392.8 , 0 );
setEffMoveKey( spep_10 - 3 + 74, ctzudodo, 116, -412.9 , 0 );
setEffMoveKey( spep_10 - 3 + 76, ctzudodo, 127.9, -394.1 , 0 );
setEffMoveKey( spep_10 - 3 + 78, ctzudodo, 116, -414.2 , 0 );
setEffMoveKey( spep_10 - 3 + 80, ctzudodo, 127.9, -395.5 , 0 );
setEffMoveKey( spep_10 - 3 + 82, ctzudodo, 116, -415.6 , 0 );
setEffMoveKey( spep_10 - 3 + 84, ctzudodo, 127.9, -396.8 , 0 );
setEffMoveKey( spep_10 - 3 + 86, ctzudodo, 116, -416.9 , 0 );
setEffMoveKey( spep_10 - 3 + 88, ctzudodo, 127.9, -398.2 , 0 );
setEffMoveKey( spep_10 - 3 + 90, ctzudodo, 116, -418.3 , 0 );
setEffMoveKey( spep_10 - 3 + 92, ctzudodo, 127.9, -399.6 , 0 );
setEffMoveKey( spep_10 - 3 + 94, ctzudodo, 116, -419.6 , 0 );
setEffMoveKey( spep_10 - 3 + 96, ctzudodo, 127.9, -400.9 , 0 );
setEffMoveKey( spep_10 - 3 + 98, ctzudodo, 115.9, -421 , 0 );
setEffMoveKey( spep_10 - 3 + 100, ctzudodo, 115.9, -421.7 , 0 );

setEffScaleKey( spep_10 - 3 + 12, ctzudodo, 0.31, 0.31 );
setEffScaleKey( spep_10 - 3 + 14, ctzudodo, 1.16, 1.16 );
setEffScaleKey( spep_10 - 3 + 16, ctzudodo, 2, 2 );
setEffScaleKey( spep_10 - 3 + 18, ctzudodo, 2.02, 2.02 );
setEffScaleKey( spep_10 - 3 + 20, ctzudodo, 2.04, 2.04 );
setEffScaleKey( spep_10 - 3 + 22, ctzudodo, 2.06, 2.06 );
setEffScaleKey( spep_10 - 3 + 24, ctzudodo, 2.09, 2.09 );
setEffScaleKey( spep_10 - 3 + 26, ctzudodo, 2.11, 2.11 );
setEffScaleKey( spep_10 - 3 + 28, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_10 - 3 + 30, ctzudodo, 2.15, 2.15 );
setEffScaleKey( spep_10 - 3 + 32, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_10 - 3 + 34, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_10 - 3 + 36, ctzudodo, 2.21, 2.21 );
setEffScaleKey( spep_10 - 3 + 38, ctzudodo, 2.23, 2.23 );
setEffScaleKey( spep_10 - 3 + 40, ctzudodo, 2.25, 2.25 );
setEffScaleKey( spep_10 - 3 + 42, ctzudodo, 2.27, 2.27 );
setEffScaleKey( spep_10 - 3 + 44, ctzudodo, 2.29, 2.29 );
setEffScaleKey( spep_10 - 3 + 46, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_10 - 3 + 48, ctzudodo, 2.33, 2.33 );
setEffScaleKey( spep_10 - 3 + 50, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_10 - 3 + 52, ctzudodo, 2.37, 2.37 );
setEffScaleKey( spep_10 - 3 + 54, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_10 - 3 + 56, ctzudodo, 2.41, 2.41 );
setEffScaleKey( spep_10 - 3 + 58, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_10 - 3 + 60, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_10 - 3 + 62, ctzudodo, 2.47, 2.47 );
setEffScaleKey( spep_10 - 3 + 64, ctzudodo, 2.49, 2.49 );
setEffScaleKey( spep_10 - 3 + 66, ctzudodo, 2.51, 2.51 );
setEffScaleKey( spep_10 - 3 + 68, ctzudodo, 2.53, 2.53 );
setEffScaleKey( spep_10 - 3 + 70, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_10 - 3 + 100, ctzudodo, 2.55, 2.55 );

setEffRotateKey( spep_10 - 3 + 12, ctzudodo, 48.7 );
setEffRotateKey( spep_10 - 3 + 14, ctzudodo, 48.8 );
setEffRotateKey( spep_10 - 3 + 42, ctzudodo, 48.8 );
setEffRotateKey( spep_10 - 3 + 44, ctzudodo, 48.7 );
setEffRotateKey( spep_10 - 3 + 100, ctzudodo, 48.7 );

setEffAlphaKey( spep_10 - 3 + 12, ctzudodo, 255 );
setEffAlphaKey( spep_10 - 3 + 70, ctzudodo, 255 );
setEffAlphaKey( spep_10 - 3 + 72, ctzudodo, 238 );
setEffAlphaKey( spep_10 - 3 + 74, ctzudodo, 221 );
setEffAlphaKey( spep_10 - 3 + 76, ctzudodo, 204 );
setEffAlphaKey( spep_10 - 3 + 78, ctzudodo, 187 );
setEffAlphaKey( spep_10 - 3 + 80, ctzudodo, 170 );
setEffAlphaKey( spep_10 - 3 + 82, ctzudodo, 153 );
setEffAlphaKey( spep_10 - 3 + 84, ctzudodo, 136 );
setEffAlphaKey( spep_10 - 3 + 86, ctzudodo, 119 );
setEffAlphaKey( spep_10 - 3 + 88, ctzudodo, 102 );
setEffAlphaKey( spep_10 - 3 + 90, ctzudodo, 85 );
setEffAlphaKey( spep_10 - 3 + 92, ctzudodo, 68 );
setEffAlphaKey( spep_10 - 3 + 94, ctzudodo, 51 );
setEffAlphaKey( spep_10 - 3 + 96, ctzudodo, 34 );
setEffAlphaKey( spep_10 - 3 + 98, ctzudodo, 17 );
setEffAlphaKey( spep_10 - 3 + 100, ctzudodo, 0 );

-- ** 音 ** --
playSe( spep_10 + 0,  1161);
playSe( spep_10 + 2,  1024);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 50 );
endPhase( spep_10 + 150 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進(70F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cutin_f = entryEffectLife( spep_0 + 0, SP_01, 70, 0x100, -1, 0, 0, 0 );  --突進(ef_001)
setEffMoveKey( spep_0 + 0, cutin_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, cutin_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 70, cutin_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin_f, 0 );
setEffRotateKey( spep_0 + 70, cutin_f, 0 );
setEffAlphaKey( spep_0 + 0, cutin_f, 255 );
setEffAlphaKey( spep_0 + 66, cutin_f, 255 );
setEffAlphaKey( spep_0 + 67, cutin_f, 0 );
setEffAlphaKey( spep_0 + 70, cutin_f, 0 );


-- ** 書き文字 ** --
ctdon = entryEffectLife( spep_0 + 0,  10019, 12, 0x100, -1, 0, 0, 65 );  --ドン

setEffMoveKey( spep_0 + 0, ctdon, 0, 65 , 0 );
setEffMoveKey( spep_0 + 2, ctdon, -5.4, 112.6 , 0 );
setEffMoveKey( spep_0 + 4, ctdon, 5.5, 157.4 , 0 );
setEffMoveKey( spep_0 + 6, ctdon, -3.9, 213.4 , 0 );
setEffMoveKey( spep_0 + 8, ctdon, 11.5, 200.1 , 0 );
setEffMoveKey( spep_0 + 10, ctdon, -3.8, 195.7 , 0 );
setEffMoveKey( spep_0 + 12, ctdon, -3.9, 192.3 , 0 );

setEffScaleKey( spep_0 + 0, ctdon, 0.59, 0.59 );
setEffScaleKey( spep_0 + 2, ctdon, 1.22, 1.22 );
setEffScaleKey( spep_0 + 4, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_0 + 6, ctdon, 2.46, 2.46 );
setEffScaleKey( spep_0 + 8, ctdon, 2.53, 2.53 );
setEffScaleKey( spep_0 + 10, ctdon, 2.6, 2.6 );
setEffScaleKey( spep_0 + 12, ctdon, 2.67, 2.67 );

setEffRotateKey( spep_0 + 0, ctdon, 0 );
setEffRotateKey( spep_0 + 12, ctdon, 0 );

setEffAlphaKey( spep_0 + 0, ctdon, 255 );
setEffAlphaKey( spep_0 + 6, ctdon, 255 );
setEffAlphaKey( spep_0 + 8, ctdon, 170 );
setEffAlphaKey( spep_0 + 10, ctdon, 85 );
setEffAlphaKey( spep_0 + 12, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0,  9);  --突進音

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE2, 0 );

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


-- ** 次の準備 ** --
spep_1 = spep_0 + 66;

------------------------------------------------------
-- 殴る(70F)
------------------------------------------------------

-- ** エフェクト等 ** --
naguru_f = entryEffectLife( spep_1 + 0, SP_02, 70, 0x100, -1, 0, 0, 0 );  --殴る(ef_002)
setEffMoveKey( spep_1 + 0, naguru_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, naguru_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 70, naguru_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru_f, 0 );
setEffRotateKey( spep_1 + 70, naguru_f, 0 );
setEffAlphaKey( spep_1 + 0, naguru_f, 255 );
setEffAlphaKey( spep_1 + 64, naguru_f, 255 );
setEffAlphaKey( spep_1 + 65, naguru_f, 0 );
setEffAlphaKey( spep_1 + 70, naguru_f, 0 );

-- ** 敵キャラ ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 - 3 + 30, 1, 0 );
changeAnime( spep_1 + 0, 1, 18 );
changeAnime( spep_1 - 3 + 18, 1, 7 );

setMoveKey( spep_1 + 0, 1, 358.1, -573.9 , 0 );
setMoveKey( spep_1 - 3 + 4, 1, -295.4, -431.2 , 0 );
setMoveKey( spep_1 - 3 + 6, 1, -264, -359.8 , 0 );
setMoveKey( spep_1 - 3 + 8, 1, -232.6, -288.4 , 0 );
setMoveKey( spep_1 - 3 + 10, 1, -201.1, -217 , 0 );
setMoveKey( spep_1 - 3 + 12, 1, -169.7, -145.6 , 0 );
setMoveKey( spep_1 - 3 + 14, 1, -138.3, -74.2 , 0 );
setMoveKey( spep_1 - 3 + 17, 1, -138.3, -74.2 , 0 );
setMoveKey( spep_1 - 3 + 18, 1, -86, -310.8 , 0 );
setMoveKey( spep_1 - 3 + 20, 1, -28.8, -287.8 , 0 );
setMoveKey( spep_1 - 3 + 22, 1, 40.9, -82.5 , 0 );
setMoveKey( spep_1 - 3 + 24, 1, -58, -94.7 , 0 );
setMoveKey( spep_1 - 3 + 26, 1, -17.9, -393.3 , 0 );
setMoveKey( spep_1 - 3 + 28, 1, 41.3, -544.4 , 0 );
setMoveKey( spep_1 - 3 + 30, 1, 50, -593.2 , 0 );

setScaleKey( spep_1 + 0, 1, 3.8, 3.8 );
setScaleKey( spep_1 - 3 + 4, 1, 3.21, 3.21 );
setScaleKey( spep_1 - 3 + 6, 1, 2.92, 2.92 );
setScaleKey( spep_1 - 3 + 8, 1, 2.62, 2.62 );
setScaleKey( spep_1 - 3 + 10, 1, 2.33, 2.33 );
setScaleKey( spep_1 - 3 + 12, 1, 2.03, 2.03 );
setScaleKey( spep_1 - 3 + 14, 1, 1.74, 1.74 );
setScaleKey( spep_1 - 3 + 17, 1, 1.74, 1.74 );
setScaleKey( spep_1 - 3 + 18, 1, 0.75, 0.75 );
setScaleKey( spep_1 - 3 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_1 - 3 + 26, 1, 1.7, 1.7 );
setScaleKey( spep_1 - 3 + 28, 1, 2.27, 2.27 );
setScaleKey( spep_1 - 3 + 30, 1, 2.46, 2.46 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 - 3 + 17, 1, 0 );
setRotateKey( spep_1 - 3 + 18, 1, 49.2 );
setRotateKey( spep_1 - 3 + 24, 1, 49.2 );
setRotateKey( spep_1 - 3 + 26, 1, 58.8 );
setRotateKey( spep_1 - 3 + 28, 1, 64.5 );
setRotateKey( spep_1 - 3 + 30, 1, 66.4 );

-- ** エフェクト等 ** --
naguru = entryEffectLife( spep_1 + 0, SP_13, 70, 0x80, -1, 0, 0, 0 );  --殴る(ef_002)
setEffMoveKey( spep_1 + 0, naguru, 0, 0 , 0 );
setEffMoveKey( spep_1 + 70, naguru, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, naguru, -1.0, 1.0 );
setEffScaleKey( spep_1 + 70, naguru, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, naguru, 0 );
setEffRotateKey( spep_1 + 70, naguru, 0 );
setEffAlphaKey( spep_1 + 0, naguru, 255 );
setEffAlphaKey( spep_1 + 64, naguru, 255 );
setEffAlphaKey( spep_1 + 65, naguru, 0 );
setEffAlphaKey( spep_1 + 70, naguru, 0 );

-- ** 書き文字 ** --
ctbaki = entryEffectLife( spep_1 - 3 + 20,  10020, 14, 0x100, -1, 0, 126.9, 158 );  -- バキっ

setEffMoveKey( spep_1 - 3 + 20,ctbaki, 126.9, 158 , 0 );
setEffMoveKey( spep_1 - 3 + 22,ctbaki, 129.2, 203.3 , 0 );
setEffMoveKey( spep_1 - 3 + 24,ctbaki, 131.5, 248.5 , 0 );
setEffMoveKey( spep_1 - 3 + 26,ctbaki, 133.8, 293.6 , 0 );
setEffMoveKey( spep_1 - 3 + 34,ctbaki, 133.8, 293.6 , 0 );

setEffScaleKey( spep_1 - 3 + 20,ctbaki, 0.62, 0.6 );
setEffScaleKey( spep_1 - 3 + 22,ctbaki, 1.27, 1.24 );
setEffScaleKey( spep_1 - 3 + 24,ctbaki, 1.93, 1.88 );
setEffScaleKey( spep_1 - 3 + 26,ctbaki, 2.59, 2.52 );
setEffScaleKey( spep_1 - 3 + 34,ctbaki, 2.59, 2.52 );

setEffRotateKey( spep_1 - 3 + 20,ctbaki, 36.7 );
setEffRotateKey( spep_1 - 3 + 34,ctbaki, 36.7 );

setEffAlphaKey( spep_1 - 3 + 20,ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 26,ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 28,ctbaki, 191 );
setEffAlphaKey( spep_1 - 3 + 30,ctbaki, 128 );
setEffAlphaKey( spep_1 - 3 + 32,ctbaki, 64 );
setEffAlphaKey( spep_1 - 3 + 34,ctbaki, 0 );

-- ** 音 ** --
playSe( spep_1 + 18 -3,  1120);  --殴る音
playSe( spep_1 + 18 -3, 1009);
playSe( spep_1 + 40 -3,  20);
SE1 = playSe( spep_1 + 40,  1044);  --砂煙
stopSe( spep_1 + 54,  SE1,  30);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 64, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 64;
------------------------------------------------------
-- 持ち上げる(60F)
------------------------------------------------------

-- ** エフェクト等 ** --
up1_f = entryEffectLife( spep_2 + 0, SP_03, 60, 0x100, -1, 0, 0, 0 );  --持ち上げる(ef_003)
setEffMoveKey( spep_2 + 0, up1_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, up1_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, up1_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, up1_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, up1_f, 0 );
setEffRotateKey( spep_2 + 60, up1_f, 0 );
setEffAlphaKey( spep_2 + 0, up1_f, 255 );
setEffAlphaKey( spep_2 + 57, up1_f, 255 );
setEffAlphaKey( spep_2 + 58, up1_f, 0 );
setEffAlphaKey( spep_2 + 60, up1_f, 0 );

-- ** 敵の動き ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 57, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );

setMoveKey( spep_2 + 0, 1, -3.1, -231.4 , 0 );
setMoveKey( spep_2 + 36, 1, -3.1, -231.4 , 0 );
setMoveKey( spep_2 + 38, 1, -2.5, -224.3 , 0 );
setMoveKey( spep_2 + 40, 1, -2.5, -224.3 , 0 );
setMoveKey( spep_2 + 42, 1, -2.5, -224.2 , 0 );
setMoveKey( spep_2 + 44, 1, -2.4, -223.8 , 0 );
setMoveKey( spep_2 + 46, 1, -2.3, -223.1 , 0 );
setMoveKey( spep_2 + 48, 1, -2.2, -222 , 0 );
setMoveKey( spep_2 + 50, 1, -2.1, -220.3 , 0 );
setMoveKey( spep_2 + 52, 1, -1.8, -217.9 , 0 );
setMoveKey( spep_2 + 54, 1, -1.5, -214.7 , 0 );
setMoveKey( spep_2 + 56, 1, -1.1, -210.6 , 0 );
setMoveKey( spep_2 + 58, 1, -0.6, -205.5 , 0 );

setScaleKey( spep_2 + 0, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 58, 1, 1.71, 1.71 );

setRotateKey( spep_2 + 0, 1, -43.8 );
setRotateKey( spep_2 + 58, 1, -43.8 );

up1_b = entryEffectLife( spep_2 + 0, SP_04, 60, 0x80, -1, 0, 0, 0 );  --持ち上げる(ef_004)
setEffMoveKey( spep_2 + 0, up1_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 60, up1_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, up1_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 60, up1_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, up1_b, 0 );
setEffRotateKey( spep_2 + 60, up1_b, 0 );
setEffAlphaKey( spep_2 + 0, up1_b, 255 );
setEffAlphaKey( spep_2 + 55, up1_b, 255 );
setEffAlphaKey( spep_2 + 56, up1_b, 0 );
setEffAlphaKey( spep_2 + 60, up1_b, 0 );

-- ** 音 ** --
playSe( spep_2 + 0,  8);  --上から降りてくる
playSe( spep_2 + 10,  1135);  --着地
setSeVolume(  spep_2 + 10 ,  1135,  50);
playSe( spep_2 + 26,  1135);  --着地
setSeVolume(  spep_2 + 26 ,  1135,  30);
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;
------------------------------------------------------
-- 持ち上げる2(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
up2 = entryEffectLife( spep_3 + 0, SP_05, 100, 0x100, -1, 0, 0, 0 );  --持ち上げる2(ef_005)
setEffMoveKey( spep_3 + 0, up2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, up2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, up2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 100, up2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, up2, 0 );
setEffRotateKey( spep_3 + 100, up2, 0 );
setEffAlphaKey( spep_3 + 0, up2, 255 );
setEffAlphaKey( spep_3 + 96, up2, 255 );
setEffAlphaKey( spep_3 + 97, up2, 0 );
setEffAlphaKey( spep_3 + 100, up2, 0 );

-- ** 書き文字 ** --
ctba = entryEffectLife( spep_3 - 3  + 14,  10022, 20, 0x100, -1, 0, 115.9, 237.5 );  --バッ

setEffMoveKey( spep_3 - 3  + 14, ctba, 115.9, 237.5 , 0 );
setEffMoveKey( spep_3 - 3  + 16, ctba, 102.2, 300.4 , 0 );
setEffMoveKey( spep_3 - 3  + 18, ctba, 88.4, 363.4 , 0 );
setEffMoveKey( spep_3 - 3  + 20, ctba, 74.6, 426.3 , 0 );
setEffMoveKey( spep_3 - 3  + 22, ctba, 68.8, 427.2 , 0 );
setEffMoveKey( spep_3 - 3  + 24, ctba, 63, 428.1 , 0 );
setEffMoveKey( spep_3 - 3  + 26, ctba, 57.2, 429 , 0 );
setEffMoveKey( spep_3 - 3  + 28, ctba, 51.4, 429.9 , 0 );
setEffMoveKey( spep_3 - 3  + 30, ctba, 45.7, 430.8 , 0 );
setEffMoveKey( spep_3 - 3  + 32, ctba, 39.9, 431.8 , 0 );
setEffMoveKey( spep_3 - 3  + 34, ctba, 34.1, 432.7 , 0 );

setEffScaleKey( spep_3 - 3  + 14, ctba, 1.55, 1.55 );
setEffScaleKey( spep_3 - 3  + 16, ctba, 2.23, 2.23 );
setEffScaleKey( spep_3 - 3  + 18, ctba, 2.91, 2.91 );
setEffScaleKey( spep_3 - 3  + 20, ctba, 3.59, 3.59 );
setEffScaleKey( spep_3 - 3  + 22, ctba, 3.64, 3.64 );
setEffScaleKey( spep_3 - 3  + 24, ctba, 3.69, 3.69 );
setEffScaleKey( spep_3 - 3  + 26, ctba, 3.74, 3.74 );
setEffScaleKey( spep_3 - 3  + 28, ctba, 3.79, 3.79 );
setEffScaleKey( spep_3 - 3  + 30, ctba, 3.84, 3.84 );
setEffScaleKey( spep_3 - 3  + 32, ctba, 3.89, 3.89 );
setEffScaleKey( spep_3 - 3  + 34, ctba, 3.94, 3.94 );

setEffRotateKey( spep_3 - 3  + 14, ctba, 15.5 );
setEffRotateKey( spep_3 - 3  + 34, ctba, 15.5 );

setEffAlphaKey( spep_3 - 3  + 14, ctba, 255 );
setEffAlphaKey( spep_3 - 3  + 20, ctba, 255 );
setEffAlphaKey( spep_3 - 3  + 22, ctba, 219 );
setEffAlphaKey( spep_3 - 3  + 24, ctba, 182 );
setEffAlphaKey( spep_3 - 3  + 26, ctba, 146 );
setEffAlphaKey( spep_3 - 3  + 28, ctba, 109 );
setEffAlphaKey( spep_3 - 3  + 30, ctba, 73 );
setEffAlphaKey( spep_3 - 3  + 32, ctba, 36 );
setEffAlphaKey( spep_3 - 3  + 34, ctba, 0 );

-- ** 音 ** --
playSe( spep_3 - 3 + 14,  1013);  --持ち上げる
SE2 = playSe( spep_3 + 44,  8);  --振り下ろす直前
setSeVolume( spep_3 + 44 , 8, 200);
stopSe( spep_3 + 90,  SE2,  30);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;
------------------------------------------------------
-- 叩きつける(60F)
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffectLife( spep_4 + 0, SP_06, 60, 0x100, -1, 0, 0, 0 );  --叩きつける(ef_006)
setEffMoveKey( spep_4 + 0, down_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, down_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, down_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 60, down_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, down_f, 0 );
setEffRotateKey( spep_4 + 60, down_f, 0 );
setEffAlphaKey( spep_4 + 0, down_f, 255 );
setEffAlphaKey( spep_4 + 58, down_f, 255 );
setEffAlphaKey( spep_4 + 59, down_f, 0 );
setEffAlphaKey( spep_4 + 60, down_f, 0 );

-- ** 書き文字 ** --
ctdogon = entryEffectLife( spep_4 - 3 + 18,  10018, 14, 0x100, -1, 0, -34.9, -401 );  --ドゴォン

setEffMoveKey( spep_4 - 3 + 18, ctdogon, -34.9, -401 , 0 );
setEffMoveKey( spep_4 - 3 + 20, ctdogon, -43.2, -280.4 , 0 );
setEffMoveKey( spep_4 - 3 + 22, ctdogon, -27.6, -181.4 , 0 );
setEffMoveKey( spep_4 - 3 + 24, ctdogon, -34.6, -62.6 , 0 );
setEffMoveKey( spep_4 - 3 + 26, ctdogon, -46, -40.4 , 0 );
setEffMoveKey( spep_4 - 3 + 28, ctdogon, -26.2, -46.6 , 0 );
setEffMoveKey( spep_4 - 3 + 30, ctdogon, -32.3, -14.2 , 0 );
setEffMoveKey( spep_4 - 3 + 32, ctdogon, -32.2, -2.5 , 0 );

setEffScaleKey( spep_4 - 3 + 18, ctdogon, 2.77, 2.77 );
setEffScaleKey( spep_4 - 3 + 20, ctdogon, 3.35, 3.35 );
setEffScaleKey( spep_4 - 3 + 22, ctdogon, 3.92, 3.92 );
setEffScaleKey( spep_4 - 3 + 24, ctdogon, 4.5, 4.5 );
setEffScaleKey( spep_4 - 3 + 26, ctdogon, 4.55, 4.58 );
setEffScaleKey( spep_4 - 3 + 28, ctdogon, 4.59, 4.67 );
setEffScaleKey( spep_4 - 3 + 30, ctdogon, 4.64, 4.75 );
setEffScaleKey( spep_4 - 3 + 32, ctdogon, 4.68, 4.83 );

setEffRotateKey( spep_4 - 3 + 18, ctdogon, 5.7 );
setEffRotateKey( spep_4 - 3 + 32, ctdogon, 5.7 );

setEffAlphaKey( spep_4 - 3 + 18, ctdogon, 255 );
setEffAlphaKey( spep_4 - 3 + 24, ctdogon, 255 );
setEffAlphaKey( spep_4 - 3 + 26, ctdogon, 191 );
setEffAlphaKey( spep_4 - 3 + 28, ctdogon, 128 );
setEffAlphaKey( spep_4 - 3 + 30, ctdogon, 64 );
setEffAlphaKey( spep_4 - 3 + 32, ctdogon, 0 );

-- ** 敵の動き ** --
setDisp( spep_4 + 8 - 3, 1, 1 );
setDisp( spep_4 + 18 - 3, 1, 0 );
changeAnime( spep_4 + 0,  1,  106);

setMoveKey( spep_4 + 8 - 3, 1, -155.6, 713.1 , 0 );
setMoveKey( spep_4 + 10 - 3, 1, -115.4, 473.1 , 0 );
setMoveKey( spep_4 + 12 - 3, 1, -115.4, 313.1 , 0 );
setMoveKey( spep_4 + 14 - 3 , 1, -115.4, 113.1 , 0 );
setMoveKey( spep_4 + 18 - 3, 1, -115.4, -386.9 , 0 );

setScaleKey( spep_4 + 8 - 3, 1, 4.8, 4.8 );
setScaleKey( spep_4 + 18 - 3, 1, 4.8, 4.8 );

setRotateKey( spep_4 + 8 - 3, 1, 38.7 );
setRotateKey( spep_4 + 10 - 3, 1, 39.9 );
setRotateKey( spep_4 + 18 - 3, 1, 39.9 );


down_b = entryEffectLife( spep_4 + 0, SP_07, 60, 0x80, -1, 0, 0, 0 );  --叩きつける(ef_007)
setEffMoveKey( spep_4 + 0, down_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 60, down_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, down_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 60, down_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, down_b, 0 );
setEffRotateKey( spep_4 + 60, down_b, 0 );
setEffAlphaKey( spep_4 + 0, down_b, 255 );
setEffAlphaKey( spep_4 + 58, down_b, 255 );
setEffAlphaKey( spep_4 + 59, down_b, 0 );
setEffAlphaKey( spep_4 + 60, down_b, 0 );

-- ** ** --
playSe( spep_4 + 0 ,  1014);  --投げ落とす
playSe( spep_4 + 0, 8);  --投げ落とす
playSe( spep_4 + 18 - 3,  1159);  --穴あけ
  

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 60-3, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 60 - 3 ;
------------------------------------------------------
-- 穴があく(90F)
------------------------------------------------------

-- ** エフェクト等 ** --
hole = entryEffectLife( spep_5 + 0, SP_08, 90, 0x100, -1, 0, 0, 0 );  --地面に穴が開く(ef_008)
setEffMoveKey( spep_5 + 0, hole, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, hole, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hole, -1.0, 1.0 );
setEffScaleKey( spep_5 + 90, hole, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hole, 0 );
setEffRotateKey( spep_5 + 90, hole, 0 );
setEffAlphaKey( spep_5 + 0, hole, 255 );
setEffAlphaKey( spep_5 + 90, hole, 255 );

entryFade( spep_5 + 86, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --


-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 90;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_6 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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

-- ** 音 ** --
playSe( spep_6 + 0, SE_05 );


-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 94, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --

entryFade( spep_6 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


spep_7 = spep_6 + 94;
--------------------------------------
--両手外す(100F)
--------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_7 + 0, SP_09, 100, 0x100, -1, 0, 0, 0 );  --両手をはずす(ef_009)
setEffMoveKey( spep_7 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, kamae, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_7 + 100, kamae, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kamae, 0 );
setEffRotateKey( spep_7 + 100, kamae, 0 );
setEffAlphaKey( spep_7 + 0, kamae, 255 );
setEffAlphaKey( spep_7 + 100, kamae, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_7 + 20, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_7 +20, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_7 +32, 190006, 72, 0x100, -1, 0, 140, 550);    -- ゴゴゴゴ

setEffMoveKey(  spep_7 +32,  ctgogo,  140,  550);
setEffMoveKey(  spep_7 +104,  ctgogo,  140,  550);

setEffAlphaKey( spep_7 + 32, ctgogo, 0 );
setEffAlphaKey( spep_7 + 33, ctgogo, 255 );
setEffAlphaKey( spep_7 + 34, ctgogo, 255 );
setEffAlphaKey( spep_7 + 94, ctgogo, 255 );
setEffAlphaKey( spep_7 + 96, ctgogo, 255 );
setEffAlphaKey( spep_7 + 98, ctgogo, 191 );
setEffAlphaKey( spep_7 + 100, ctgogo, 128 );
setEffAlphaKey( spep_7 + 102, ctgogo, 64 );
setEffAlphaKey( spep_7 + 104, ctgogo, 0 );

setEffRotateKey(  spep_7 +32,  ctgogo,  0);
setEffRotateKey(  spep_7 +104,  ctgogo,  0);

setEffScaleKey(  spep_7 +32,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_7 +96,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_7 +104,  ctgogo, -1.07, 1.07 );


-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7 - 3 + 14,  906, 84, 0x100, -1, 0, 0, 0 );

setEffShake( spep_7 - 3 + 14,  shuchusen7,  84,  20);

setEffMoveKey( spep_7 - 3 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 - 3 + 98, shuchusen7, 0, 0 , 0 );
setEffScaleKey( spep_7 - 3 + 14, shuchusen7, 1.22, 1.17 );
setEffScaleKey( spep_7 - 3 + 98, shuchusen7, 1.22, 1.17 );
setEffRotateKey( spep_7 - 3 + 14, shuchusen7, 0 );
setEffRotateKey( spep_7 - 3 + 98, shuchusen7, 0 );
setEffAlphaKey( spep_7 - 3 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_7 - 3 + 98, shuchusen7, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 **  --
playSe( spep_7 + 32,  SE_04);  --ゴゴゴ

-- ** 次の準備 ** --
spep_8 = spep_7 + 100
--------------------------------------
--ヘルズフラッシュ(120F)
--------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffectLife( spep_8 + 0, SP_10, 120, 0x100, -1, 0, 0, 0 );  --ヘルズフラッシュ(ef_010)
setEffMoveKey( spep_8 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_8 + 120, hassya, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hassya, -1.0, 1.0 );
setEffScaleKey( spep_8 + 120, hassya, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hassya, 0 );
setEffRotateKey( spep_8 + 120, hassya, 0 );
setEffAlphaKey( spep_8 + 0, hassya, 255 );
setEffAlphaKey( spep_8 + 120, hassya, 255 );

-- ** 書き文字 ** --
ctzuo = entryEffectLife( spep_8 - 3 + 30,  10012, 16, 0x100, -1, 0, -10.2, -391.7 );  --ズオッ

setEffMoveKey( spep_8 - 3 + 30, ctzuo, -10.2, -391.7 , 0 );
setEffMoveKey( spep_8 - 3 + 32, ctzuo, -4.8, -332.8 , 0 );
setEffMoveKey( spep_8 - 3 + 34, ctzuo, 0.6, -273.9 , 0 );
setEffMoveKey( spep_8 - 3 + 36, ctzuo, 1.8, -267.9 , 0 );
setEffMoveKey( spep_8 - 3 + 38, ctzuo, 3.1, -261.9 , 0 );
setEffMoveKey( spep_8 - 3 + 40, ctzuo, 4.4, -255.9 , 0 );
setEffMoveKey( spep_8 - 3 + 42, ctzuo, 5.7, -249.9 , 0 );
setEffMoveKey( spep_8 - 3 + 44, ctzuo, 1.6, -246.8 , 0 );
setEffMoveKey( spep_8 - 3 + 46, ctzuo, -2.4, -243.8 , 0 );

setEffScaleKey( spep_8 - 3 + 30, ctzuo, 1, 1 );
setEffScaleKey( spep_8 - 3 + 32, ctzuo, 2.22, 2.22 );
setEffScaleKey( spep_8 - 3 + 34, ctzuo, 3.43, 3.43 );
setEffScaleKey( spep_8 - 3 + 36, ctzuo, 3.56, 3.56 );
setEffScaleKey( spep_8 - 3 + 38, ctzuo, 3.69, 3.69 );
setEffScaleKey( spep_8 - 3 + 40, ctzuo, 3.81, 3.81 );
setEffScaleKey( spep_8 - 3 + 42, ctzuo, 3.94, 3.94 );
setEffScaleKey( spep_8 - 3 + 46, ctzuo, 3.94, 3.94 );

setEffRotateKey( spep_8 - 3 + 30, ctzuo, 16.7 );
setEffRotateKey( spep_8 - 3 + 46, ctzuo, 16.7 );

setEffAlphaKey( spep_8 - 3 + 30, ctzuo, 255 );
setEffAlphaKey( spep_8 - 3 + 42, ctzuo, 255 );
setEffAlphaKey( spep_8 - 3 + 44, ctzuo, 128 );
setEffAlphaKey( spep_8 - 3 + 46, ctzuo, 0 );


entryFade( spep_8 + 16, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 110, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_8 + 26,  1137); --発射音
playSe( spep_8 + 26,  1122); --発射音

-- ** 次の準備 ** --
spep_9 = spep_8 + 120;

--------------------------------------
--島貫通(70F)
--------------------------------------
-- ** エフェクト等 ** --
kantsu1 = entryEffectLife( spep_9 + 0, SP_11, 70, 0x100, -1, 0, 0, 0 );  --島貫通(ef_011)
setEffMoveKey( spep_9 + 0, kantsu1, 0, 0 , 0 );
setEffMoveKey( spep_9 + 70, kantsu1, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, kantsu1, -1.0, 1.0 );
setEffScaleKey( spep_9 + 70, kantsu1, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kantsu1, 0 );
setEffRotateKey( spep_9 + 70, kantsu1, 0 );
setEffAlphaKey( spep_9 + 0, kantsu1, 255 );
setEffAlphaKey( spep_9 + 70, kantsu1, 255 );


-- ** 書き文字 ** --
ctgogo2 = entryEffectLife( spep_9 + 0, 190006, 22, 0x100, -1, 0, -37.6, -333.6 );  --ゴゴゴ
setEffMoveKey( spep_9 + 0, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 2, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 4, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 6, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 8, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 10, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 12, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 14, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 16, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 18, ctgogo2, -34.3, -348.4 , 0 );
setEffMoveKey( spep_9 + 20, ctgogo2, -37.6, -333.6 , 0 );
setEffMoveKey( spep_9 + 22, ctgogo2, -34.3, -348.4 , 0 );

z=0.5;

setEffScaleKey( spep_9 + 0, ctgogo2, -1.83+z, 1.83+z );
setEffScaleKey( spep_9 + 22, ctgogo2, -1.83+z, 1.83+z );

setEffRotateKey( spep_9 + 0, ctgogo2, 0 );
setEffRotateKey( spep_9 + 22, ctgogo2, 0 );

setEffAlphaKey( spep_9 + 0, ctgogo2, 255 );
setEffAlphaKey( spep_9 + 22, ctgogo2, 255 );

ctdon2 = entryEffectLife( spep_9 - 3 + 30,  10019, 10, 0x100, -1, 0, 5.6, -137.6 );  --ドン

setEffMoveKey( spep_9 - 3 + 30, ctdon2, 5.6, -137.6 , 0 );
setEffMoveKey( spep_9 - 3 + 32, ctdon2, -6.1, -197.7 , 0 );
setEffMoveKey( spep_9 - 3 + 34, ctdon2, 13.4, -263 , 0 );
setEffMoveKey( spep_9 - 3 + 36, ctdon2, -1.4, -256.8 , 0 );
setEffMoveKey( spep_9 - 3 + 38, ctdon2, 19.2, -276.7 , 0 );
setEffMoveKey( spep_9 - 3 + 40, ctdon2, 19.6, -283.4 , 0 );

setEffScaleKey( spep_9 - 3 + 30, ctdon2, 1.63, 1.63 );
setEffScaleKey( spep_9 - 3 + 32, ctdon2, 2.41, 2.41 );
setEffScaleKey( spep_9 - 3 + 34, ctdon2, 3.19, 3.19 );
setEffScaleKey( spep_9 - 3 + 36, ctdon2, 3.29, 3.29 );
setEffScaleKey( spep_9 - 3 + 38, ctdon2, 3.4, 3.4 );
setEffScaleKey( spep_9 - 3 + 40, ctdon2, 3.5, 3.5 );

setEffRotateKey( spep_9 - 3 + 30, ctdon2, 0 );
setEffRotateKey( spep_9 - 3 + 40, ctdon2, 0 );

setEffAlphaKey( spep_9 - 3 + 30, ctdon2, 255 );
setEffAlphaKey( spep_9 - 3 + 34, ctdon2, 255 );
setEffAlphaKey( spep_9 - 3 + 36, ctdon2, 170 );
setEffAlphaKey( spep_9 - 3 + 38, ctdon2, 85 );
setEffAlphaKey( spep_9 - 3 + 40, ctdon2, 0 );

entryFade( spep_9 + 25, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_9 + 60, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

playSe( spep_9 + 28, 1160);

-- ** 次の準備 ** --
 spep_10 = spep_9 + 70;

--------------------------------------
--島貫通2(160F)
--------------------------------------
-- ** エフェクト等 ** --
kantsu2 = entryEffect( spep_10 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --島貫通(ef_011)
setEffMoveKey( spep_10 + 0, kantsu2, 0, 0 , 0 );
setEffMoveKey( spep_10 + 160, kantsu2, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, kantsu2, -1.0, 1.0 );
setEffScaleKey( spep_10 + 160, kantsu2, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kantsu2, 0 );
setEffRotateKey( spep_10 + 160, kantsu2, 0 );
setEffAlphaKey( spep_10 + 0, kantsu2, 255 );
setEffAlphaKey( spep_10 + 160, kantsu2, 255 );

-- ** 書き文字 ** --
ctzudodo = entryEffectLife( spep_10 - 3 + 12,  10014, 88, 0x100, -1, 0, 112.7, -350.7 );  --ズドド
setEffMoveKey( spep_10 - 3 + 12, ctzudodo, 112.7, -350.7 , 0 );
setEffMoveKey( spep_10 - 3 + 14, ctzudodo, 114.2, -371.3 , 0 );
setEffMoveKey( spep_10 - 3 + 16, ctzudodo, 117.2, -389.5 , 0 );
setEffMoveKey( spep_10 - 3 + 18, ctzudodo, 126.7, -375 , 0 );
setEffMoveKey( spep_10 - 3 + 20, ctzudodo, 117.1, -391.1 , 0 );
setEffMoveKey( spep_10 - 3 + 22, ctzudodo, 126.8, -376.3 , 0 );
setEffMoveKey( spep_10 - 3 + 24, ctzudodo, 117, -392.8 , 0 );
setEffMoveKey( spep_10 - 3 + 26, ctzudodo, 126.9, -377.6 , 0 );
setEffMoveKey( spep_10 - 3 + 28, ctzudodo, 116.9, -394.4 , 0 );
setEffMoveKey( spep_10 - 3 + 30, ctzudodo, 127, -378.9 , 0 );
setEffMoveKey( spep_10 - 3 + 32, ctzudodo, 116.8, -396 , 0 );
setEffMoveKey( spep_10 - 3 + 34, ctzudodo, 127, -380.2 , 0 );
setEffMoveKey( spep_10 - 3 + 36, ctzudodo, 116.8, -397.7 , 0 );
setEffMoveKey( spep_10 - 3 + 38, ctzudodo, 127.1, -381.5 , 0 );
setEffMoveKey( spep_10 - 3 + 40, ctzudodo, 116.7, -399.3 , 0 );
setEffMoveKey( spep_10 - 3 + 42, ctzudodo, 127.2, -382.9 , 0 );
setEffMoveKey( spep_10 - 3 + 44, ctzudodo, 116.6, -400.9 , 0 );
setEffMoveKey( spep_10 - 3 + 46, ctzudodo, 127.3, -384.2 , 0 );
setEffMoveKey( spep_10 - 3 + 48, ctzudodo, 116.5, -402.5 , 0 );
setEffMoveKey( spep_10 - 3 + 50, ctzudodo, 127.4, -385.5 , 0 );
setEffMoveKey( spep_10 - 3 + 52, ctzudodo, 116.4, -404.2 , 0 );
setEffMoveKey( spep_10 - 3 + 54, ctzudodo, 127.5, -386.8 , 0 );
setEffMoveKey( spep_10 - 3 + 56, ctzudodo, 116.3, -405.8 , 0 );
setEffMoveKey( spep_10 - 3 + 58, ctzudodo, 127.6, -388.1 , 0 );
setEffMoveKey( spep_10 - 3 + 60, ctzudodo, 116.2, -407.4 , 0 );
setEffMoveKey( spep_10 - 3 + 62, ctzudodo, 127.7, -389.5 , 0 );
setEffMoveKey( spep_10 - 3 + 64, ctzudodo, 116.1, -409.1 , 0 );
setEffMoveKey( spep_10 - 3 + 66, ctzudodo, 127.8, -390.8 , 0 );
setEffMoveKey( spep_10 - 3 + 68, ctzudodo, 116, -410.7 , 0 );
setEffMoveKey( spep_10 - 3 + 70, ctzudodo, 116, -411.5 , 0 );
setEffMoveKey( spep_10 - 3 + 72, ctzudodo, 127.9, -392.8 , 0 );
setEffMoveKey( spep_10 - 3 + 74, ctzudodo, 116, -412.9 , 0 );
setEffMoveKey( spep_10 - 3 + 76, ctzudodo, 127.9, -394.1 , 0 );
setEffMoveKey( spep_10 - 3 + 78, ctzudodo, 116, -414.2 , 0 );
setEffMoveKey( spep_10 - 3 + 80, ctzudodo, 127.9, -395.5 , 0 );
setEffMoveKey( spep_10 - 3 + 82, ctzudodo, 116, -415.6 , 0 );
setEffMoveKey( spep_10 - 3 + 84, ctzudodo, 127.9, -396.8 , 0 );
setEffMoveKey( spep_10 - 3 + 86, ctzudodo, 116, -416.9 , 0 );
setEffMoveKey( spep_10 - 3 + 88, ctzudodo, 127.9, -398.2 , 0 );
setEffMoveKey( spep_10 - 3 + 90, ctzudodo, 116, -418.3 , 0 );
setEffMoveKey( spep_10 - 3 + 92, ctzudodo, 127.9, -399.6 , 0 );
setEffMoveKey( spep_10 - 3 + 94, ctzudodo, 116, -419.6 , 0 );
setEffMoveKey( spep_10 - 3 + 96, ctzudodo, 127.9, -400.9 , 0 );
setEffMoveKey( spep_10 - 3 + 98, ctzudodo, 115.9, -421 , 0 );
setEffMoveKey( spep_10 - 3 + 100, ctzudodo, 115.9, -421.7 , 0 );

setEffScaleKey( spep_10 - 3 + 12, ctzudodo, 0.31, 0.31 );
setEffScaleKey( spep_10 - 3 + 14, ctzudodo, 1.16, 1.16 );
setEffScaleKey( spep_10 - 3 + 16, ctzudodo, 2, 2 );
setEffScaleKey( spep_10 - 3 + 18, ctzudodo, 2.02, 2.02 );
setEffScaleKey( spep_10 - 3 + 20, ctzudodo, 2.04, 2.04 );
setEffScaleKey( spep_10 - 3 + 22, ctzudodo, 2.06, 2.06 );
setEffScaleKey( spep_10 - 3 + 24, ctzudodo, 2.09, 2.09 );
setEffScaleKey( spep_10 - 3 + 26, ctzudodo, 2.11, 2.11 );
setEffScaleKey( spep_10 - 3 + 28, ctzudodo, 2.13, 2.13 );
setEffScaleKey( spep_10 - 3 + 30, ctzudodo, 2.15, 2.15 );
setEffScaleKey( spep_10 - 3 + 32, ctzudodo, 2.17, 2.17 );
setEffScaleKey( spep_10 - 3 + 34, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_10 - 3 + 36, ctzudodo, 2.21, 2.21 );
setEffScaleKey( spep_10 - 3 + 38, ctzudodo, 2.23, 2.23 );
setEffScaleKey( spep_10 - 3 + 40, ctzudodo, 2.25, 2.25 );
setEffScaleKey( spep_10 - 3 + 42, ctzudodo, 2.27, 2.27 );
setEffScaleKey( spep_10 - 3 + 44, ctzudodo, 2.29, 2.29 );
setEffScaleKey( spep_10 - 3 + 46, ctzudodo, 2.31, 2.31 );
setEffScaleKey( spep_10 - 3 + 48, ctzudodo, 2.33, 2.33 );
setEffScaleKey( spep_10 - 3 + 50, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_10 - 3 + 52, ctzudodo, 2.37, 2.37 );
setEffScaleKey( spep_10 - 3 + 54, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_10 - 3 + 56, ctzudodo, 2.41, 2.41 );
setEffScaleKey( spep_10 - 3 + 58, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_10 - 3 + 60, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_10 - 3 + 62, ctzudodo, 2.47, 2.47 );
setEffScaleKey( spep_10 - 3 + 64, ctzudodo, 2.49, 2.49 );
setEffScaleKey( spep_10 - 3 + 66, ctzudodo, 2.51, 2.51 );
setEffScaleKey( spep_10 - 3 + 68, ctzudodo, 2.53, 2.53 );
setEffScaleKey( spep_10 - 3 + 70, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_10 - 3 + 100, ctzudodo, 2.55, 2.55 );

setEffRotateKey( spep_10 - 3 + 12, ctzudodo, 0 );
setEffRotateKey( spep_10 - 3 + 14, ctzudodo, 0 );
setEffRotateKey( spep_10 - 3 + 42, ctzudodo, 0 );
setEffRotateKey( spep_10 - 3 + 44, ctzudodo, 0 );
setEffRotateKey( spep_10 - 3 + 100, ctzudodo, 0 );

setEffAlphaKey( spep_10 - 3 + 12, ctzudodo, 255 );
setEffAlphaKey( spep_10 - 3 + 70, ctzudodo, 255 );
setEffAlphaKey( spep_10 - 3 + 72, ctzudodo, 238 );
setEffAlphaKey( spep_10 - 3 + 74, ctzudodo, 221 );
setEffAlphaKey( spep_10 - 3 + 76, ctzudodo, 204 );
setEffAlphaKey( spep_10 - 3 + 78, ctzudodo, 187 );
setEffAlphaKey( spep_10 - 3 + 80, ctzudodo, 170 );
setEffAlphaKey( spep_10 - 3 + 82, ctzudodo, 153 );
setEffAlphaKey( spep_10 - 3 + 84, ctzudodo, 136 );
setEffAlphaKey( spep_10 - 3 + 86, ctzudodo, 119 );
setEffAlphaKey( spep_10 - 3 + 88, ctzudodo, 102 );
setEffAlphaKey( spep_10 - 3 + 90, ctzudodo, 85 );
setEffAlphaKey( spep_10 - 3 + 92, ctzudodo, 68 );
setEffAlphaKey( spep_10 - 3 + 94, ctzudodo, 51 );
setEffAlphaKey( spep_10 - 3 + 96, ctzudodo, 34 );
setEffAlphaKey( spep_10 - 3 + 98, ctzudodo, 17 );
setEffAlphaKey( spep_10 - 3 + 100, ctzudodo, 0 );

-- ** 音 ** --	
playSe( spep_10 + 0, 1161);	
playSe( spep_10 + 2, 1024);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 50 );
endPhase( spep_10 + 150 );

end

