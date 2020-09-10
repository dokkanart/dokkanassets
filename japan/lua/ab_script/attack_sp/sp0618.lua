--孫悟空(身勝手の極意“兆”)_かめはめ波

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
SP_01 = 155399;  --前半奥
SP_02 = 155400;  --前半手前
SP_03 = 155401;  --後半奥
SP_04 = 155402;  --後半手前

--敵側
SP_01x = 155403;  --前半奥
SP_02x = 155404;  --前半手前
SP_03x = 155405;  --後半奥
SP_04x = 155406;  --後半手前

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 前半(234F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 236, 0x80, -1, 0, 0, 0 );  --前半奥(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 236, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 236, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 236, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 236, 0x100, -1, 0, 0, 0 );  --前半手前(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 236, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 236, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 236, first_b, 255 );

spep_x = spep_0 + 152;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 62, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 190.4, 114.1 , 0 );
setMoveKey( spep_0 + 1, 1, 190.4, 114.1 , 0 );
setMoveKey( spep_0 + 2, 1, 190.4, 114.1 , 0 );
setMoveKey( spep_0 + 3, 1, 190.4, 114.1 , 0 );
setMoveKey( spep_0 + 4, 1, 190.4, 114.1 , 0 );
setMoveKey( spep_0 + 5, 1, 190.4, 114.1 , 0 );
setMoveKey( spep_0 + 6, 1, 190.4, 114.1 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 190.4, 114.1 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 176.9, 102 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 192.4, 113.9 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 194, 116.3 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 195.6, 118.6 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 196.2, 118.9 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 193.7, 115.4 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 191.2, 111.9 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 196.7, 113.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 188.7, 111.4 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 189.5, 114.2 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 190.3, 117 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 189.9, 112.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 175, 114.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 206.2, 117.2 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 189.5, 113.4 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 193.5, 115.5 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 193.5, 115.5 , 0 );

setScaleKey( spep_0 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 1, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 2, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 3, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 4, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 5, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 28, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 30, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 32, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 34, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 36, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 38, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 40, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 42, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 54, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 56, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 58, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 62, 1, 0.16, 0.16 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 62, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--環境音
playSe( spep_0 + 0, 1181 ); 
setSeVolume( spep_0 + 0, 1181, 71 );
SE0 = playSe( spep_0 + 0, 1226 ); 
setSeVolume( spep_0 + 0, 1226, 50 );
SE01 = playSe( spep_0 + 0, 1044 ); 
setSeVolume( spep_0 + 0, 1044, 56 );

--風が吹く
SE1 = playSe( spep_0 + 19, 1241 ); 
stopSe( spep_0 + 58, SE1, 23 );
SE2 = playSe( spep_0 + 23, 1168 ); 
setSeVolume( spep_0 + 23, 1168, 10 );
setSeVolume( spep_0 + 26, 1168, 24 );
setSeVolume( spep_0 + 30, 1168, 36 );
setSeVolume( spep_0 + 34, 1168, 42 );
setSeVolume( spep_0 + 38, 1168, 50 );
setSeVolume( spep_0 + 40, 1168, 56 );
setSeVolume( spep_0 + 56, 1168, 56 );
setSeVolume( spep_0 + 60, 1168, 50 );
setSeVolume( spep_0 + 64, 1168, 44 );
setSeVolume( spep_0 + 68, 1168, 38 );
setSeVolume( spep_0 + 72, 1168, 35 );
setSeVolume( spep_0 + 76, 1168, 30 );
setSeVolume( spep_0 + 80, 1168, 26 );
setSeVolume( spep_0 + 84, 1168, 20 );
setSeVolume( spep_0 + 88, 1168, 16 );
setSeVolume( spep_0 + 92, 1168, 12 );
setSeVolume( spep_0 + 94, 1168, 7 );
setSeVolume( spep_0 + 97, 1168, 0 );
stopSe( spep_0 + 97, SE2, 0 );

--構える
playSe( spep_0 + 60, 1233 );
setSeVolume( spep_0 + 60, 1233, 63 );
SE3 = playSe( spep_0 + 69, 1192 );
stopSe( spep_0 + 84, SE3, 7 );

--カメラバン
playSe( spep_0 + 73, 1072 );

--かめはめ波溜め
playSe( spep_0 + 155, 1209 );
SE04 = playSe( spep_0 + 155, 1210 );
stopSe( spep_0 + 222 +14, SE04, 0 );

SE4 = playSe( spep_0 + 222 +14, 1210 );
setSeVolume( spep_0 + 222 +14, 1210, 0 );

--ゴゴゴ
playSe( spep_x + 16, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 234;

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

--環境音
stopSe( spep_1 + 2, SE0, 0 );
stopSe( spep_1 + 0, SE01, 0 );

--ダッシュ
--[[playSe( spep_1 + 66, 1072 );
setSeVolume( spep_1 + 66, 1072, 0 );
setSeVolume( spep_1 + 87, 1072, 5 );
setSeVolume( spep_1 + 89, 1072, 32 );
setSeVolume( spep_1 + 91, 1072, 53 );
setSeVolume( spep_1 + 93, 1072, 76 );]]
playSe( spep_1 + 90, 1004 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後半(778F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --爆発(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 776, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 776, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 776, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 776, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --爆発(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 776, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 776, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 776, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 776, finish_b, 255 );

-- ** 音 ** --
--かめはめ波溜め
setSeVolume( spep_2 + 21, 1210, 0 );
setSeVolume( spep_2 + 24, 1210, 2 );
setSeVolume( spep_2 + 28, 1210, 4 );
setSeVolume( spep_2 + 32, 1210, 7 );
setSeVolume( spep_2 + 34, 1210, 10 );
setSeVolume( spep_2 + 38, 1210, 13 );
setSeVolume( spep_2 + 42, 1210, 17 );
setSeVolume( spep_2 + 46, 1210, 20 );
setSeVolume( spep_2 + 50, 1210, 22 );
setSeVolume( spep_2 + 54, 1210, 25 );
setSeVolume( spep_2 + 58, 1210, 28 );
setSeVolume( spep_2 + 62, 1210, 30 );
setSeVolume( spep_2 + 66, 1210, 32 );
setSeVolume( spep_2 + 70, 1210, 35 );
setSeVolume( spep_2 + 74, 1210, 38 );
setSeVolume( spep_2 + 78, 1210, 41 );
setSeVolume( spep_2 + 82, 1210, 42 );
setSeVolume( spep_2 + 86, 1210, 44 );
setSeVolume( spep_2 + 90, 1210, 46 );
setSeVolume( spep_2 + 94, 1210, 47 );
setSeVolume( spep_2 + 98, 1210, 49 );
setSeVolume( spep_2 + 102, 1210, 50 );

--ダッシュ
--setSeVolume( spep_2 + 1, 1072, 100 );

playSe( spep_2 + 4, 1135 );
setSeVolume( spep_2 + 4, 1135, 71 );
playSe( spep_2 + 4, 44 );

SE001 = playSe( spep_2 + 4, 1183 );
stopSe( spep_2 + 96, SE001, 0 );

playSe( spep_2 + 4, 1182 );

SE5 = playSe( spep_2 + 4, 1116 );
stopSe( spep_2 + 28, SE5, 9 );

--眼が光る
--[[
SE6 = playSe( spep_2 + 12, 15 );
setSeVolume( spep_2 + 12, 15, 0 );
]]

SE6 = playSe( spep_2 + 85, 15 );
setSeVolume( spep_2 + 85, 15, 10 );
setStartTimeMs( SE6,  1217 );

setSeVolume( spep_2 + 85, 15, 10 );
setSeVolume( spep_2 + 86, 15, 15 );
setSeVolume( spep_2 + 88, 15, 24 );
setSeVolume( spep_2 + 90, 15, 32 );
setSeVolume( spep_2 + 92, 15, 39 );
setSeVolume( spep_2 + 96, 15, 45 );
setSeVolume( spep_2 + 123, 15, 45 );
setSeVolume( spep_2 + 128, 15, 36 );
setSeVolume( spep_2 + 132, 15, 24 );
setSeVolume( spep_2 + 136, 15, 11 );

--setSeVolume( spep_2 + 140, 15, 31 );
--setSeVolume( spep_2 + 144, 15, 12 );
--setSeVolume( spep_2 + 139, 15, 0 );
--[[setSeVolume( spep_2 + 148, 15, 26 );
setSeVolume( spep_2 + 152, 15, 23 );
setSeVolume( spep_2 + 156, 15, 18 );
setSeVolume( spep_2 + 160, 15, 14 );
setSeVolume( spep_2 + 164, 15, 6 );
setSeVolume( spep_2 + 167, 15, 0 );]]
--stopSe( spep_2 + 167, SE6, 0 );
stopSe( spep_2 + 139, SE6, 0 );

--[[SE7 = playSe( spep_2 + 79, 46 );
stopSe( spep_2 + 94, SE7, 14 );

SE8 = playSe( spep_2 + 79, 33 );
setSeVolume( spep_2 + 79, 33, 71 );
setSeVolume( spep_2 + 91, 33, 71 );
setSeVolume( spep_2 + 94, 33, 65 );
setSeVolume( spep_2 + 97, 33, 52 );
setSeVolume( spep_2 + 100, 33, 46 );
setSeVolume( spep_2 + 102, 33, 38 );
setSeVolume( spep_2 + 106, 33, 30 );
setSeVolume( spep_2 + 110, 33, 12 );
setSeVolume( spep_2 + 113, 33, 0 );
stopSe( spep_2 + 113, SE8, 0 );]]

SE006 = playSe( spep_2 + 81, 1026 );
setSeVolume( spep_2 + 81, 1026, 136 );
stopSe( spep_2 + 139, SE006, 10 );

--[[
SE002 = playSe( spep_2 + 81, 3 );
setSeVolume( spep_2 + 81, 3, 0 );
setSeVolume( spep_2 + 100, 3, 0 );
setSeVolume( spep_2 + 102, 3, 12 );
setSeVolume( spep_2 + 104, 3, 26 );
setSeVolume( spep_2 + 106, 3, 39 );
setSeVolume( spep_2 + 108, 3, 58 );
setSeVolume( spep_2 + 109, 3, 71 );
stopSe( spep_2 + 139, SE002, 0 );
]]

--[[
SE003 = playSe( spep_2 + 98, 1238 );
setSeVolume( spep_2 + 98, 1238, 90 );
stopSe( spep_2 + 139, SE003, 10 );
]]

--ジャンプ１
--SE9 = playSe( spep_2 + 140, 1046 );
--stopSe( spep_2 + 172, SE9, 0 );

--[[SE10 = playSe( spep_2 + 140, 1109 );
setSeVolume( spep_2 + 140, 1109, 79 );
setSeVolume( spep_2 + 149, 1109, 79 );
setSeVolume( spep_2 + 152, 1109, 56 );
setSeVolume( spep_2 + 154, 1109, 32 );
setSeVolume( spep_2 + 156, 1109, 17 );
setSeVolume( spep_2 + 157, 1109, 0 );
stopSe( spep_2 + 157, SE10, 0 );]]

--[[
SE11 = playSe( spep_2 + 140, 1192 );
setSeVolume( spep_2 + 140, 1192, 158 );
]]

SE12 = playSe( spep_2 + 140, 1117 );
setSeVolume( spep_2 + 140, 1117, 122 );
--[[
setSeVolume( spep_2 + 157, 1117, 112 );
setSeVolume( spep_2 + 160, 1117, 104 );
setSeVolume( spep_2 + 162, 1117, 94 );
setSeVolume( spep_2 + 164, 1117, 86 );
setSeVolume( spep_2 + 166, 1117, 74 );
setSeVolume( spep_2 + 168, 1117, 61 );
setSeVolume( spep_2 + 170, 1117, 49 );
setSeVolume( spep_2 + 172, 1117, 24 );
]]
--setSeVolume( spep_2 + 174, 1117, 11 );
--setSeVolume( spep_2 + 176, 1117, 0 );
stopSe( spep_2 + 157, SE12, 19 );

--[[
SE13 = playSe( spep_2 + 144, 1116 );
setSeVolume( spep_2 + 144, 1116, 50 );
]]
--[[
setSeVolume( spep_2 + 162, 1116, 40 );
setSeVolume( spep_2 + 166, 1116, 28 );
setSeVolume( spep_2 + 170, 1116, 12 );
]]
--setSeVolume( spep_2 + 174, 1116, 0 );
stopSe( spep_2 + 162, SE13, 10 );

SE14 = playSe( spep_2 + 146, 1168 );
setSeVolume( spep_2 + 146, 1168, 110 );
--[[
setSeVolume( spep_2 + 162, 1168, 79 );
setSeVolume( spep_2 + 164, 1168, 67 );
setSeVolume( spep_2 + 166, 1168, 58 );
setSeVolume( spep_2 + 168, 1168, 46 );
setSeVolume( spep_2 + 170, 1168, 29 );
setSeVolume( spep_2 + 172, 1168, 11 );
]]
--setSeVolume( spep_2 + 174, 1168, 0 );
stopSe( spep_2 + 172, SE14, 10 );

--[[
SE15 = playSe( spep_2 + 146, 20 );
setSeVolume( spep_2 + 146, 20, 71 );
stopSe( spep_2 + 172, SE15, 0 );
]]

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 778, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE4, 0 );
stopSe( SP_dodge - 12, SE9, 0 );
stopSe( SP_dodge - 12, SE10, 0 );
stopSe( SP_dodge - 12, SE11, 0 );
stopSe( SP_dodge - 12, SE12, 0 );
stopSe( SP_dodge - 12, SE13, 0 );
stopSe( SP_dodge - 12, SE14, 0 );
stopSe( SP_dodge - 12, SE15, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 218, 1, 1 );
setDisp( spep_2 -3 + 254, 1, 0 );
setDisp( spep_2 -3 + 350, 1, 1 );
setDisp( spep_2 -3 + 436, 1, 0 );
setDisp( spep_2 -3 + 538, 1, 1 );
setDisp( spep_2 -3 + 550, 1, 0 );
setDisp( spep_2 -3 + 612, 1, 1 );
setDisp( spep_2 -3 + 726, 1, 0 );
changeAnime( spep_2 -3 + 218, 1, 117 );
changeAnime( spep_2 -3 + 350, 1, 104 );
changeAnime( spep_2 -3 + 538, 1, 108 );

setMoveKey( spep_2 -3 + 218, 1, 129, 167.2 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 135, 174.3 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 133, 167.3 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 135, 175.9 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 134, 169.4 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 135, 174.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 134, 168.5 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 137, 173.5 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 136, 171.6 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 135, 176.6 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 136, 169.6 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 136, 176.7 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 138, 172.7 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 137, 175.8 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 136, 167.8 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 138, 176.8 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 138, 172.8 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 139, 174.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 139, 174.9 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 868.7, -55.5 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 733.6, -52 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 596.9, -73.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 465.6, -63.7 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 372.4, -77.8 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 301.1, -75.6 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 300.2, -77.3 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 299.7, -76.1 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 299.8, -77.3 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 299.9, -78.6 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 301.4, -78.8 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 303, -79.1 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 304, -83.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 304.1, -84.6 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 303, -79.8 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 302.7, -78.4 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 302.5, -77.1 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 302.2, -75.8 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 301.9, -74.5 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 301.7, -73.2 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 301.4, -71.9 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 301.1, -70.6 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 301.9, -69.5 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 301.2, -69 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 300.4, -68.7 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 299.6, -68.3 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 298.9, -67.9 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 298.2, -67.5 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 297.5, -67.2 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 296.7, -66.7 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 295.9, -66.4 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 295.2, -66 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 293.8, -66.4 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 292.4, -66.8 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 291, -67.2 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 289.6, -67.6 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 288.2, -68 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 286.8, -68.4 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 285.3, -68.8 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 283.5, -66.3 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 284.7, -66.8 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 285, -65.2 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 277.2, -64.7 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 277.2, -64.7 , 0 );
setMoveKey( spep_2 -3 + 538, 1, -205, 147.8 , 0 );
setMoveKey( spep_2 -3 + 539, 1, -205, 147.8 , 0 );
setMoveKey( spep_2 -3 + 540, 1, -201, 139.8 , 0 );
setMoveKey( spep_2 -3 + 541, 1, -201, 139.8 , 0 );
setMoveKey( spep_2 -3 + 542, 1, -33.5, 82.4 , 0 );
setMoveKey( spep_2 -3 + 543, 1, -33.5, 82.4 , 0 );
setMoveKey( spep_2 -3 + 544, 1, -34.5, 82.9 , 0 );
setMoveKey( spep_2 -3 + 545, 1, -34.5, 82.9 , 0 );
setMoveKey( spep_2 -3 + 546, 1, 368.1, -0.1 , 0 );
setMoveKey( spep_2 -3 + 547, 1, 368.1, -0.1 , 0 );
setMoveKey( spep_2 -3 + 548, 1, 328.1, -18 , 0 );
setMoveKey( spep_2 -3 + 549, 1, 328.1, -18 , 0 );
setMoveKey( spep_2 -3 + 550, 1, 300.5, -52 , 0 );
setMoveKey( spep_2 -3 + 612, 1, 1.4, 8 , 0 );
setMoveKey( spep_2 -3 + 614, 1, 10, 7 , 0 );
setMoveKey( spep_2 -3 + 616, 1, 16.1, 2.1 , 0 );
setMoveKey( spep_2 -3 + 618, 1, 29.2, -2.9 , 0 );
setMoveKey( spep_2 -3 + 620, 1, 39.2, -17.5 , 0 );
setMoveKey( spep_2 -3 + 622, 1, 40.1, -20.1 , 0 );
setMoveKey( spep_2 -3 + 624, 1, 53, -23.8 , 0 );
setMoveKey( spep_2 -3 + 626, 1, 61.4, -23.1 , 0 );
setMoveKey( spep_2 -3 + 628, 1, 68, -34.6 , 0 );
setMoveKey( spep_2 -3 + 630, 1, 76.2, -40.6 , 0 );
setMoveKey( spep_2 -3 + 632, 1, 85.3, -51.7 , 0 );
setMoveKey( spep_2 -3 + 634, 1, 92.9, -45.4 , 0 );
setMoveKey( spep_2 -3 + 636, 1, 98.9, -56 , 0 );
setMoveKey( spep_2 -3 + 638, 1, 109.9, -57.6 , 0 );
setMoveKey( spep_2 -3 + 640, 1, 114.9, -70.3 , 0 );
setMoveKey( spep_2 -3 + 642, 1, 119.9, -66.6 , 0 );
setMoveKey( spep_2 -3 + 644, 1, 128.2, -69.7 , 0 );
setMoveKey( spep_2 -3 + 646, 1, 136.7, -72.8 , 0 );
setMoveKey( spep_2 -3 + 648, 1, 143.2, -82.2 , 0 );
setMoveKey( spep_2 -3 + 650, 1, 150.7, -81.8 , 0 );
setMoveKey( spep_2 -3 + 652, 1, 159.6, -93.3 , 0 );
setMoveKey( spep_2 -3 + 654, 1, 158.7, -87.3 , 0 );
setMoveKey( spep_2 -3 + 656, 1, 165.7, -102 , 0 );
setMoveKey( spep_2 -3 + 658, 1, 177.6, -99.7 , 0 );
setMoveKey( spep_2 -3 + 660, 1, 184.6, -113 , 0 );
setMoveKey( spep_2 -3 + 662, 1, 195.5, -112.7 , 0 );
setMoveKey( spep_2 -3 + 664, 1, 208, -120.3 , 0 );
setMoveKey( spep_2 -3 + 666, 1, 214.4, -127.4 , 0 );
setMoveKey( spep_2 -3 + 668, 1, 220.8, -134.5 , 0 );
setMoveKey( spep_2 -3 + 670, 1, 234.1, -135.4 , 0 );
setMoveKey( spep_2 -3 + 672, 1, 238.7, -143.5 , 0 );
setMoveKey( spep_2 -3 + 674, 1, 243.2, -151.7 , 0 );
setMoveKey( spep_2 -3 + 676, 1, 252.3, -163 , 0 );
setMoveKey( spep_2 -3 + 678, 1, 261.9, -161 , 0 );
setMoveKey( spep_2 -3 + 680, 1, 264.5, -163.9 , 0 );
setMoveKey( spep_2 -3 + 682, 1, 274.1, -162.9 , 0 );
setMoveKey( spep_2 -3 + 684, 1, 279.7, -173.9 , 0 );
setMoveKey( spep_2 -3 + 686, 1, 289.2, -170.8 , 0 );
setMoveKey( spep_2 -3 + 688, 1, 294.5, -181.8 , 0 );
setMoveKey( spep_2 -3 + 690, 1, 307.7, -186.8 , 0 );
setMoveKey( spep_2 -3 + 692, 1, 315, -198.7 , 0 );
setMoveKey( spep_2 -3 + 694, 1, 321.6, -195 , 0 );
setMoveKey( spep_2 -3 + 696, 1, 327.7, -204.3 , 0 );
setMoveKey( spep_2 -3 + 698, 1, 338.8, -205.6 , 0 );
setMoveKey( spep_2 -3 + 700, 1, 345.3, -216.8 , 0 );
setMoveKey( spep_2 -3 + 702, 1, 350.7, -215.6 , 0 );
setMoveKey( spep_2 -3 + 704, 1, 357, -225.3 , 0 );
setMoveKey( spep_2 -3 + 706, 1, 369.2, -227.8 , 0 );
setMoveKey( spep_2 -3 + 708, 1, 375.3, -236.8 , 0 );
setMoveKey( spep_2 -3 + 710, 1, 384.6, -233.4 , 0 );
setMoveKey( spep_2 -3 + 712, 1, 386, -250.9 , 0 );
setMoveKey( spep_2 -3 + 714, 1, 398.5, -235.6 , 0 );
setMoveKey( spep_2 -3 + 716, 1, 400, -252.5 , 0 );
setMoveKey( spep_2 -3 + 718, 1, 415.7, -249.8 , 0 );
setMoveKey( spep_2 -3 + 720, 1, 420.3, -274.4 , 0 );
setMoveKey( spep_2 -3 + 722, 1, 432.9, -266.9 , 0 );
setMoveKey( spep_2 -3 + 724, 1, 439.2, -283.2 , 0 );
setMoveKey( spep_2 -3 + 726, 1, 452.4, -275.2 , 0 );

setScaleKey( spep_2 -3 + 218, 1, 0.17, 0.18 );
setScaleKey( spep_2 -3 + 228, 1, 0.17, 0.18 );
setScaleKey( spep_2 -3 + 230, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 232, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 234, 1, 0.18, 0.19 );
setScaleKey( spep_2 -3 + 246, 1, 0.18, 0.19 );
setScaleKey( spep_2 -3 + 248, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 250, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 252, 1, 0.19, 0.2 );
setScaleKey( spep_2 -3 + 254, 1, 0.19, 0.2 );
setScaleKey( spep_2 -3 + 350, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 352, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 354, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 356, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 358, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 360, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 436, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 538, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 550, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 612, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 726, 1, 0.19, 0.19 );

setRotateKey( spep_2 -3 + 218, 1, 0 );
setRotateKey( spep_2 -3 + 254, 1, 0 );
setRotateKey( spep_2 -3 + 350, 1, 0 );
setRotateKey( spep_2 -3 + 436, 1, 0 );
setRotateKey( spep_2 -3 + 538, 1, 20.9 );
setRotateKey( spep_2 -3 + 550, 1, 20.9 );
setRotateKey( spep_2 -3 + 612, 1, 20 );
setRotateKey( spep_2 -3 + 726, 1, 20 );

--setBlendColor( spep_2 -3 + 538, 1, 2, 0.6, 0.84, 1.00, 0.84 );
--setBlendColor( spep_2 -3 + 726, 1, 2, 0.6, 0.84, 1.00, 0.84 );
setBlendColor( spep_2 -3 + 538, 1, 2, 0.09, 0.18, 0.28, 0.89 );
setBlendColor( spep_2 -3 + 726, 1, 2, 0.09, 0.18, 0.28, 0.89 );

setBlendColor( spep_2 -3 + 730, 1, 2, 1.0, 1.0, 1.0, 1.00 );

-- ** 音 ** --
--かめはめ波溜め
setSeVolume( spep_2 + 212, 1210, 50 );
setSeVolume( spep_2 + 216, 1210, 52 );
setSeVolume( spep_2 + 220, 1210, 54 );
setSeVolume( spep_2 + 224, 1210, 58 );
setSeVolume( spep_2 + 228, 1210, 61 );
setSeVolume( spep_2 + 232, 1210, 64 );
setSeVolume( spep_2 + 236, 1210, 69 );
setSeVolume( spep_2 + 240, 1210, 72 );
setSeVolume( spep_2 + 244, 1210, 75 );
setSeVolume( spep_2 + 248, 1210, 78 );
setSeVolume( spep_2 + 252, 1210, 83 );
setSeVolume( spep_2 + 256, 1210, 86 );
setSeVolume( spep_2 + 260, 1210, 89 );
setSeVolume( spep_2 + 264, 1210, 93 );
setSeVolume( spep_2 + 269, 1210, 96 );
setSeVolume( spep_2 + 271, 1210, 100 );
stopSe( spep_2 + 294, SE4, 28 );

--ジャンプ２
--[[
SE004 = playSe( spep_2 + 173, 1046 );
setSeVolume( spep_2 + 173, 1046, 71 );
stopSe( spep_2 + 202, SE004, 0 );
]]

--[[SE16 = playSe( spep_2 + 173, 1109 );
stopSe( spep_2 + 182, SE16, 8 );]]

--[[SE005 = playSe( spep_2 + 173, 1192 );
setSeVolume( spep_2 + 173, 1192, 178 );
stopSe( spep_2 + 202, SE005, 0 );]]

SE17 = playSe( spep_2 + 177, 1116 );
setSeVolume( spep_2 + 177, 1116, 45 );
--[[
setSeVolume( spep_2 + 195, 1116, 45 );
setSeVolume( spep_2 + 198, 1116, 32 );
setSeVolume( spep_2 + 202, 1116, 24 );
]]
--setSeVolume( spep_2 + 204, 1116, 13 );
--setSeVolume( spep_2 + 206, 1116, 0 );
stopSe( spep_2 + 202, SE17, 5 );

SE18 = playSe( spep_2 + 177, 1117 );
setSeVolume( spep_2 + 177, 1117, 141 );
--[[
setSeVolume( spep_2 + 194, 1117, 141 );
setSeVolume( spep_2 + 198, 1117, 103 );
setSeVolume( spep_2 + 200, 1117, 74 );
setSeVolume( spep_2 + 202, 1117, 38 );
]]
--setSeVolume( spep_2 + 204, 1117, 6 );
--setSeVolume( spep_2 + 205, 1117, 0 );
stopSe( spep_2 + 202, SE18, 6 );

SE19 = playSe( spep_2 + 178, 1168 );
setSeVolume( spep_2 + 178, 1168, 110 );
--[[
setSeVolume( spep_2 + 192, 1168, 79 );
setSeVolume( spep_2 + 196, 1168, 59 );
setSeVolume( spep_2 + 200, 1168, 16 );
]]
--setSeVolume( spep_2 + 203, 1168, 0 );
stopSe( spep_2 + 202, SE19, 8 );

--[[SE_1168 = playSe( spep_2 + 178, 1102 );
stopSe( spep_2 + 202, SE_1168, 0 );]]

--ジャンプ３
--[[
playSe( spep_2 + 204, 1046 );
setSeVolume( spep_2 + 204, 1046, 79 );
]]

--[[
SE20 = playSe( spep_2 + 204, 1109 );
stopSe( spep_2 + 213, SE20, 8 );
]]

--[[playSe( spep_2 + 204, 1192 );
setSeVolume( spep_2 + 204, 1192, 178 );]]

SE21 = playSe( spep_2 + 206, 1168 );
stopSe( spep_2 + 236, SE21, 40 );

SE22 = playSe( spep_2 + 206, 1116 );
setSeVolume( spep_2 + 206, 1116, 71 );
--[[
setSeVolume( spep_2 + 232, 1116, 71 );
setSeVolume( spep_2 + 236, 1116, 63 );
setSeVolume( spep_2 + 240, 1116, 48 );
setSeVolume( spep_2 + 244, 1116, 32 );
setSeVolume( spep_2 + 248, 1116, 25 );
setSeVolume( spep_2 + 252, 1116, 12 );
setSeVolume( spep_2 + 258, 1116, 5 );
setSeVolume( spep_2 + 260, 1116, 0 );
]]
stopSe( spep_2 + 232, SE22, 28 );

SE23 = playSe( spep_2 + 208, 1117 );
stopSe( spep_2 + 225, SE23, 32 );

--ジャンプ４
playSe( spep_2 + 233, 44 );
setSeVolume( spep_2 + 233, 44, 44 );
playSe( spep_2 + 233, 1072 );
setSeVolume( spep_2 + 233, 1072, 85 );

--岩駆け上がる
SE24 = playSe( spep_2 + 283, 1212 );
setSeVolume( spep_2 + 283, 1212, 0 );
setStartTimeMs( SE24,  883 );
setSeVolume( spep_2 + 283, 1212, 6 );
setSeVolume( spep_2 + 286, 1212, 13 );
setSeVolume( spep_2 + 290, 1212, 24 );
setSeVolume( spep_2 + 292, 1212, 32 );
setSeVolume( spep_2 + 296, 1212, 49 );
setSeVolume( spep_2 + 299, 1212, 56 );
setSeVolume( spep_2 + 358, 1212, 56 );
setSeVolume( spep_2 + 362, 1212, 48 );
setSeVolume( spep_2 + 366, 1212, 39 );
setSeVolume( spep_2 + 370, 1212, 34 );
setSeVolume( spep_2 + 374, 1212, 27 );
setSeVolume( spep_2 + 378, 1212, 24 );
setSeVolume( spep_2 + 382, 1212, 19 );
setSeVolume( spep_2 + 386, 1212, 13 );
setSeVolume( spep_2 + 390, 1212, 8 );
setSeVolume( spep_2 + 394, 1212, 3 );
setSeVolume( spep_2 + 396, 1212, 0 );
stopSe( spep_2 + 396, SE24, 0 );

playSe( spep_2 + 291, 1017 );
playSe( spep_2 + 291, 1027 );
playSe( spep_2 + 291, 1179 );

SE25 = playSe( spep_2 + 291, 1183 );
setSeVolume( spep_2 + 291, 1183, 126 );
setSeVolume( spep_2 + 362, 1183, 126 );
setSeVolume( spep_2 + 366, 1183, 103 );
setSeVolume( spep_2 + 370, 1183, 94 );
setSeVolume( spep_2 + 374, 1183, 79 );
setSeVolume( spep_2 + 378, 1183, 71 );
setSeVolume( spep_2 + 382, 1183, 63 );
setSeVolume( spep_2 + 386, 1183, 57 );
setSeVolume( spep_2 + 390, 1183, 36 );
setSeVolume( spep_2 + 394, 1183, 13 );
setSeVolume( spep_2 + 399, 1183, 0 );
stopSe( spep_2 + 399, SE25, 0 );

SE26 = playSe( spep_2 + 302, 1241 );
setSeVolume( spep_2 + 302, 1241, 79 );
setSeVolume( spep_2 + 367, 1241, 79 );
setSeVolume( spep_2 + 370, 1241, 70 );
setSeVolume( spep_2 + 374, 1241, 62 );
setSeVolume( spep_2 + 378, 1241, 57 );
setSeVolume( spep_2 + 382, 1241, 51 );
setSeVolume( spep_2 + 386, 1241, 46 );
setSeVolume( spep_2 + 390, 1241, 38 );
setSeVolume( spep_2 + 394, 1241, 31 );
setSeVolume( spep_2 + 398, 1241, 25 );
setSeVolume( spep_2 + 402, 1241, 20 );
setSeVolume( spep_2 + 406, 1241, 15 );
setSeVolume( spep_2 + 410, 1241, 7 );
setSeVolume( spep_2 + 415, 1241, 0 );
stopSe( spep_2 + 415, SE26, 0 );

SE27 = playSe( spep_2 + 304, 1181 );
setSeVolume( spep_2 + 304, 1181, 141 );
setSeVolume( spep_2 + 375, 1181, 141 );
setSeVolume( spep_2 + 378, 1181, 113 );
setSeVolume( spep_2 + 380, 1181, 98 );
setSeVolume( spep_2 + 382, 1181, 83 );
setSeVolume( spep_2 + 384, 1181, 79 );
setSeVolume( spep_2 + 386, 1181, 72 );
setSeVolume( spep_2 + 390, 1181, 67 );
setSeVolume( spep_2 + 394, 1181, 60 );
setSeVolume( spep_2 + 398, 1181, 54 );
setSeVolume( spep_2 + 402, 1181, 49 );
setSeVolume( spep_2 + 406, 1181, 41 );
setSeVolume( spep_2 + 410, 1181, 34 );
setSeVolume( spep_2 + 414, 1181, 29 );
setSeVolume( spep_2 + 418, 1181, 21 );
setSeVolume( spep_2 + 422, 1181, 14 );
setSeVolume( spep_2 + 424, 1181, 6 );
setSeVolume( spep_2 + 426, 1181, 0 );
stopSe( spep_2 + 426, SE27, 0 );

--かめはめ波発射(正面)
playSe( spep_2 + 464, 1137 );
setSeVolume( spep_2 + 464, 1137, 79 );
playSe( spep_2 + 464, 1023 );
setSeVolume( spep_2 + 464, 1023, 79 );
playSe( spep_2 + 466, 1027 );
playSe( spep_2 + 466, 1146 );
playSe( spep_2 + 466, 1145 );
setSeVolume( spep_2 + 466, 1145, 79 );

--かめはめ波発射(横)
playSe( spep_2 + 536, 1188 );
playSe( spep_2 + 536, 1161 );
setSeVolume( spep_2 + 536, 1161, 56 );
playSe( spep_2 + 537, 1027 );
playSe( spep_2 + 537, 1223 );
playSe( spep_2 + 537, 1022 );
playSe( spep_2 + 537, 1213 );
setSeVolume( spep_2 + 537, 1213, 56 );
playSe( spep_2 + 537, 1211 );

--かめはめ波伸びる
playSe( spep_2 + 573, 1215 );
setSeVolume( spep_2 + 573, 1215, 40 );

playSe( spep_2 + 629, 1067 );
setSeVolume( spep_2 + 629, 1067, 0 );
setSeVolume( spep_2 + 630, 1067, 3 );
setSeVolume( spep_2 + 632, 1067, 7 );
setSeVolume( spep_2 + 634, 1067, 12 );
setSeVolume( spep_2 + 636, 1067, 17 );
setSeVolume( spep_2 + 638, 1067, 22 );
setSeVolume( spep_2 + 640, 1067, 26 );
setSeVolume( spep_2 + 642, 1067, 30 );
setSeVolume( spep_2 + 644, 1067, 32 );
setSeVolume( spep_2 + 646, 1067, 35 );
setSeVolume( spep_2 + 648, 1067, 39 );
setSeVolume( spep_2 + 650, 1067, 45 );
setSeVolume( spep_2 + 652, 1067, 51 );
setSeVolume( spep_2 + 654, 1067, 58 );
setSeVolume( spep_2 + 656, 1067, 62 );
setSeVolume( spep_2 + 658, 1067, 76 );
setSeVolume( spep_2 + 660, 1067, 89 );
setSeVolume( spep_2 + 663, 1067, 100 );

playSe( spep_2 + 639, 1188 );
setSeVolume( spep_2 + 639, 1188, 89 );

SE28 = playSe( spep_2 + 647, 1044 );
setSeVolume( spep_2 + 647, 1044, 63 );
setSeVolume( spep_2 + 654, 1044, 68 );
setSeVolume( spep_2 + 666, 1044, 71 );
setSeVolume( spep_2 + 682, 1044, 74 );
setSeVolume( spep_2 + 694, 1044, 79 );
setSeVolume( spep_2 + 706, 1044, 82 );
setSeVolume( spep_2 + 718, 1044, 87 );
setSeVolume( spep_2 + 734, 1044, 91 );
setSeVolume( spep_2 + 746, 1044, 95 );
setSeVolume( spep_2 + 762, 1044, 98 );
setSeVolume( spep_2 + 766, 1044, 100 );
stopSe( spep_2 + 776, SE28, 0 );

playSe( spep_2 + 671, 1168 );
setSeVolume( spep_2 + 671, 1168, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 660 );
endPhase( spep_2 + 776 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前半(234F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01x, 236, 0x80, -1, 0, 0, 0 );  --前半奥(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 236, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 236, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 236, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02x, 236, 0x100, -1, 0, 0, 0 );  --前半手前(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 236, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 236, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 236, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 236, first_b, 255 );

spep_x = spep_0 + 152;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 62, 1, 0 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 1, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 2, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 3, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 4, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 5, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 6, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0-3 + 28, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0-3 + 29, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0-3 + 30, 1, 230.4, 102 , 0 );
setMoveKey( spep_0-3 + 31, 1, 230.4, 102 , 0 );
setMoveKey( spep_0-3 + 32, 1, 184.6, 113.9 , 0 );
setMoveKey( spep_0-3 + 33, 1, 184.6, 113.9 , 0 );
setMoveKey( spep_0-3 + 34, 1, 198.1, 116.3 , 0 );
setMoveKey( spep_0-3 + 35, 1, 198.1, 116.3 , 0 );
setMoveKey( spep_0-3 + 36, 1, 211.7, 118.6 , 0 );
setMoveKey( spep_0-3 + 37, 1, 211.7, 118.6 , 0 );
setMoveKey( spep_0-3 + 38, 1, 184.5, 118.9 , 0 );
setMoveKey( spep_0-3 + 39, 1, 184.5, 118.9 , 0 );
setMoveKey( spep_0-3 + 40, 1, 192.8, 115.4 , 0 );
setMoveKey( spep_0-3 + 41, 1, 192.8, 115.4 , 0 );
setMoveKey( spep_0-3 + 42, 1, 201, 111.9 , 0 );
setMoveKey( spep_0-3 + 43, 1, 201, 111.9 , 0 );
setMoveKey( spep_0-3 + 44, 1, 184, 113.9 , 0 );
setMoveKey( spep_0-3 + 45, 1, 184, 113.9 , 0 );
setMoveKey( spep_0-3 + 46, 1, 192, 111.4 , 0 );
setMoveKey( spep_0-3 + 47, 1, 192, 111.4 , 0 );
setMoveKey( spep_0-3 + 48, 1, 191.2, 114.2 , 0 );
setMoveKey( spep_0-3 + 49, 1, 191.2, 114.2 , 0 );
setMoveKey( spep_0-3 + 50, 1, 190.4, 117 , 0 );
setMoveKey( spep_0-3 + 51, 1, 190.4, 117 , 0 );
setMoveKey( spep_0-3 + 52, 1, 190.8, 112.2 , 0 );
setMoveKey( spep_0-3 + 53, 1, 190.8, 112.2 , 0 );
setMoveKey( spep_0-3 + 54, 1, 209.6, 114.7 , 0 );
setMoveKey( spep_0-3 + 55, 1, 209.6, 114.7 , 0 );
setMoveKey( spep_0-3 + 56, 1, 182.1, 117.2 , 0 );
setMoveKey( spep_0-3 + 57, 1, 182.1, 117.2 , 0 );
setMoveKey( spep_0-3 + 58, 1, 191.3, 113.4 , 0 );
setMoveKey( spep_0-3 + 59, 1, 191.3, 113.4 , 0 );
setMoveKey( spep_0-3 + 60, 1, 191, 115.5 , 0 );
setMoveKey( spep_0-3 + 62, 1, 191, 115.5 , 0 );

setScaleKey( spep_0 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 1, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 2, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 3, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 4, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 5, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 28, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 30, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 32, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 34, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 36, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 38, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 40, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 42, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 44, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 54, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 56, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 58, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 62, 1, 0.16, 0.16 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 62, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--環境音
playSe( spep_0 + 0, 1181 ); 
setSeVolume( spep_0 + 0, 1181, 71 );
SE0 = playSe( spep_0 + 0, 1226 ); 
setSeVolume( spep_0 + 0, 1226, 50 );
SE01 = playSe( spep_0 + 0, 1044 ); 
setSeVolume( spep_0 + 0, 1044, 56 );

--風が吹く
SE1 = playSe( spep_0 + 19, 1241 ); 
stopSe( spep_0 + 58, SE1, 23 );
SE2 = playSe( spep_0 + 23, 1168 ); 
setSeVolume( spep_0 + 23, 1168, 10 );
setSeVolume( spep_0 + 26, 1168, 24 );
setSeVolume( spep_0 + 30, 1168, 36 );
setSeVolume( spep_0 + 34, 1168, 42 );
setSeVolume( spep_0 + 38, 1168, 50 );
setSeVolume( spep_0 + 40, 1168, 56 );
setSeVolume( spep_0 + 56, 1168, 56 );
setSeVolume( spep_0 + 60, 1168, 50 );
setSeVolume( spep_0 + 64, 1168, 44 );
setSeVolume( spep_0 + 68, 1168, 38 );
setSeVolume( spep_0 + 72, 1168, 35 );
setSeVolume( spep_0 + 76, 1168, 30 );
setSeVolume( spep_0 + 80, 1168, 26 );
setSeVolume( spep_0 + 84, 1168, 20 );
setSeVolume( spep_0 + 88, 1168, 16 );
setSeVolume( spep_0 + 92, 1168, 12 );
setSeVolume( spep_0 + 94, 1168, 7 );
setSeVolume( spep_0 + 97, 1168, 0 );
stopSe( spep_0 + 97, SE2, 0 );

--構える
playSe( spep_0 + 60, 1233 );
setSeVolume( spep_0 + 60, 1233, 63 );
SE3 = playSe( spep_0 + 69, 1192 );
stopSe( spep_0 + 84, SE3, 7 );

--カメラバン
playSe( spep_0 + 73, 1072 );

--かめはめ波溜め
playSe( spep_0 + 155, 1209 );
SE04 = playSe( spep_0 + 155, 1210 );
stopSe( spep_0 + 222 +14, SE04, 0 );

SE4 = playSe( spep_0 + 222 +14, 1210 );
setSeVolume( spep_0 + 222 +14, 1210, 0 );

--ゴゴゴ
playSe( spep_x + 16, 1018 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 234;

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

--環境音
stopSe( spep_1 + 2, SE0, 0 );
stopSe( spep_1 + 0, SE01, 0 );

--ダッシュ
--[[playSe( spep_1 + 66, 1072 );
setSeVolume( spep_1 + 66, 1072, 0 );
setSeVolume( spep_1 + 87, 1072, 5 );
setSeVolume( spep_1 + 89, 1072, 32 );
setSeVolume( spep_1 + 91, 1072, 53 );
setSeVolume( spep_1 + 93, 1072, 76 );]]
playSe( spep_1 + 90, 1004 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_2 = spep_1 + 94;

------------------------------------------------------
-- 後半(778F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --爆発(ef_003)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 776, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 776, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 776, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 776, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --爆発(ef_004)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 776, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 776, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 776, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 776, finish_b, 255 );

-- ** 音 ** --
--かめはめ波溜め
setSeVolume( spep_2 + 21, 1210, 0 );
setSeVolume( spep_2 + 24, 1210, 2 );
setSeVolume( spep_2 + 28, 1210, 4 );
setSeVolume( spep_2 + 32, 1210, 7 );
setSeVolume( spep_2 + 34, 1210, 10 );
setSeVolume( spep_2 + 38, 1210, 13 );
setSeVolume( spep_2 + 42, 1210, 17 );
setSeVolume( spep_2 + 46, 1210, 20 );
setSeVolume( spep_2 + 50, 1210, 22 );
setSeVolume( spep_2 + 54, 1210, 25 );
setSeVolume( spep_2 + 58, 1210, 28 );
setSeVolume( spep_2 + 62, 1210, 30 );
setSeVolume( spep_2 + 66, 1210, 32 );
setSeVolume( spep_2 + 70, 1210, 35 );
setSeVolume( spep_2 + 74, 1210, 38 );
setSeVolume( spep_2 + 78, 1210, 41 );
setSeVolume( spep_2 + 82, 1210, 42 );
setSeVolume( spep_2 + 86, 1210, 44 );
setSeVolume( spep_2 + 90, 1210, 46 );
setSeVolume( spep_2 + 94, 1210, 47 );
setSeVolume( spep_2 + 98, 1210, 49 );
setSeVolume( spep_2 + 102, 1210, 50 );

--ダッシュ
--setSeVolume( spep_2 + 1, 1072, 100 );

playSe( spep_2 + 4, 1135 );
setSeVolume( spep_2 + 4, 1135, 71 );
playSe( spep_2 + 4, 44 );

SE001 = playSe( spep_2 + 4, 1183 );
stopSe( spep_2 + 96, SE001, 0 );

playSe( spep_2 + 4, 1182 );

SE5 = playSe( spep_2 + 4, 1116 );
stopSe( spep_2 + 28, SE5, 9 );

--眼が光る
SE6 = playSe( spep_2 + 12, 15 );
setSeVolume( spep_2 + 12, 15, 0 );
setSeVolume( spep_2 + 85, 15, 10 );
setSeVolume( spep_2 + 86, 15, 15 );
setSeVolume( spep_2 + 88, 15, 24 );
setSeVolume( spep_2 + 90, 15, 32 );
setSeVolume( spep_2 + 92, 15, 39 );
setSeVolume( spep_2 + 96, 15, 45 );
setSeVolume( spep_2 + 123, 15, 45 );
setSeVolume( spep_2 + 128, 15, 36 );
setSeVolume( spep_2 + 132, 15, 24 );
setSeVolume( spep_2 + 136, 15, 11 );
--setSeVolume( spep_2 + 140, 15, 31 );
--setSeVolume( spep_2 + 144, 15, 12 );
setSeVolume( spep_2 + 139, 15, 0 );
--[[setSeVolume( spep_2 + 148, 15, 26 );
setSeVolume( spep_2 + 152, 15, 23 );
setSeVolume( spep_2 + 156, 15, 18 );
setSeVolume( spep_2 + 160, 15, 14 );
setSeVolume( spep_2 + 164, 15, 6 );
setSeVolume( spep_2 + 167, 15, 0 );]]
--stopSe( spep_2 + 167, SE6, 0 );
stopSe( spep_2 + 139, SE6, 0 );

--[[SE7 = playSe( spep_2 + 79, 46 );
stopSe( spep_2 + 94, SE7, 14 );

SE8 = playSe( spep_2 + 79, 33 );
setSeVolume( spep_2 + 79, 33, 71 );
setSeVolume( spep_2 + 91, 33, 71 );
setSeVolume( spep_2 + 94, 33, 65 );
setSeVolume( spep_2 + 97, 33, 52 );
setSeVolume( spep_2 + 100, 33, 46 );
setSeVolume( spep_2 + 102, 33, 38 );
setSeVolume( spep_2 + 106, 33, 30 );
setSeVolume( spep_2 + 110, 33, 12 );
setSeVolume( spep_2 + 113, 33, 0 );
stopSe( spep_2 + 113, SE8, 0 );]]

SE006 = playSe( spep_2 + 81, 1026 );
setSeVolume( spep_2 + 81, 1026, 126 );
stopSe( spep_2 + 139, SE006, 0 );

SE002 = playSe( spep_2 + 81, 3 );
setSeVolume( spep_2 + 81, 3, 0 );
setSeVolume( spep_2 + 100, 3, 0 );
setSeVolume( spep_2 + 102, 3, 12 );
setSeVolume( spep_2 + 104, 3, 26 );
setSeVolume( spep_2 + 106, 3, 39 );
setSeVolume( spep_2 + 108, 3, 58 );
setSeVolume( spep_2 + 109, 3, 71 );
stopSe( spep_2 + 139, SE002, 0 );

SE003 = playSe( spep_2 + 98, 1238 );
setSeVolume( spep_2 + 98, 1238, 71 );
stopSe( spep_2 + 139, SE003, 0 );

--ジャンプ１
SE9 = playSe( spep_2 + 140, 1046 );
stopSe( spep_2 + 172, SE9, 0 );

--[[SE10 = playSe( spep_2 + 140, 1109 );
setSeVolume( spep_2 + 140, 1109, 79 );
setSeVolume( spep_2 + 149, 1109, 79 );
setSeVolume( spep_2 + 152, 1109, 56 );
setSeVolume( spep_2 + 154, 1109, 32 );
setSeVolume( spep_2 + 156, 1109, 17 );
setSeVolume( spep_2 + 157, 1109, 0 );
stopSe( spep_2 + 157, SE10, 0 );]]

SE11 = playSe( spep_2 + 140, 1192 );
setSeVolume( spep_2 + 140, 1192, 158 );

SE12 = playSe( spep_2 + 140, 1117 );
setSeVolume( spep_2 + 140, 1117, 112 );
setSeVolume( spep_2 + 157, 1117, 112 );
setSeVolume( spep_2 + 160, 1117, 104 );
setSeVolume( spep_2 + 162, 1117, 94 );
setSeVolume( spep_2 + 164, 1117, 86 );
setSeVolume( spep_2 + 166, 1117, 74 );
setSeVolume( spep_2 + 168, 1117, 61 );
setSeVolume( spep_2 + 170, 1117, 49 );
setSeVolume( spep_2 + 172, 1117, 24 );
--setSeVolume( spep_2 + 174, 1117, 11 );
--setSeVolume( spep_2 + 176, 1117, 0 );
stopSe( spep_2 + 172, SE12, 0 );

SE13 = playSe( spep_2 + 144, 1116 );
setSeVolume( spep_2 + 144, 1116, 40 );
setSeVolume( spep_2 + 162, 1116, 40 );
setSeVolume( spep_2 + 166, 1116, 28 );
setSeVolume( spep_2 + 170, 1116, 12 );
--setSeVolume( spep_2 + 174, 1116, 0 );
stopSe( spep_2 + 172, SE13, 0 );

SE14 = playSe( spep_2 + 146, 1168 );
setSeVolume( spep_2 + 146, 1168, 79 );
setSeVolume( spep_2 + 162, 1168, 79 );
setSeVolume( spep_2 + 164, 1168, 67 );
setSeVolume( spep_2 + 166, 1168, 58 );
setSeVolume( spep_2 + 168, 1168, 46 );
setSeVolume( spep_2 + 170, 1168, 29 );
setSeVolume( spep_2 + 172, 1168, 11 );
--setSeVolume( spep_2 + 174, 1168, 0 );
stopSe( spep_2 + 172, SE14, 0 );

SE15 = playSe( spep_2 + 146, 20 );
setSeVolume( spep_2 + 146, 20, 71 );
stopSe( spep_2 + 172, SE15, 0 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 778, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE4, 0 );
stopSe( SP_dodge - 12, SE9, 0 );
stopSe( SP_dodge - 12, SE10, 0 );
stopSe( SP_dodge - 12, SE11, 0 );
stopSe( SP_dodge - 12, SE12, 0 );
stopSe( SP_dodge - 12, SE13, 0 );
stopSe( SP_dodge - 12, SE14, 0 );
stopSe( SP_dodge - 12, SE15, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 218, 1, 1 );
setDisp( spep_2 -3 + 254, 1, 0 );
setDisp( spep_2 -3 + 350, 1, 1 );
setDisp( spep_2 -3 + 436, 1, 0 );
setDisp( spep_2 -3 + 538, 1, 1 );
setDisp( spep_2 -3 + 550, 1, 0 );
setDisp( spep_2 -3 + 612, 1, 1 );
setDisp( spep_2 -3 + 726, 1, 0 );
changeAnime( spep_2 -3 + 218, 1, 117 );
changeAnime( spep_2 -3 + 350, 1, 104 );
changeAnime( spep_2 -3 + 538, 1, 108 );

setMoveKey( spep_2 -3 + 218, 1, 129, 167.2 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 135, 174.3 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 133, 167.3 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 135, 175.9 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 134, 169.4 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 135, 174.5 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 134, 168.5 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 137, 173.5 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 136, 171.6 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 135, 176.6 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 136, 169.6 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 136, 176.7 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 138, 172.7 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 137, 175.8 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 136, 167.8 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 138, 176.8 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 138, 172.8 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 139, 174.9 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 139, 174.9 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 868.7, -55.5 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 733.6, -52 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 596.9, -73.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 465.6, -63.7 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 372.4, -77.8 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 301.1, -75.6 , 0 );
setMoveKey( spep_2 -3 + 362, 1, 300.2, -77.3 , 0 );
setMoveKey( spep_2 -3 + 364, 1, 299.7, -76.1 , 0 );
setMoveKey( spep_2 -3 + 366, 1, 299.8, -77.3 , 0 );
setMoveKey( spep_2 -3 + 368, 1, 299.9, -78.6 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 301.4, -78.8 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 303, -79.1 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 304, -83.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 304.1, -84.6 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 303, -79.8 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 302.7, -78.4 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 302.5, -77.1 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 302.2, -75.8 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 301.9, -74.5 , 0 );
setMoveKey( spep_2 -3 + 388, 1, 301.7, -73.2 , 0 );
setMoveKey( spep_2 -3 + 390, 1, 301.4, -71.9 , 0 );
setMoveKey( spep_2 -3 + 392, 1, 301.1, -70.6 , 0 );
setMoveKey( spep_2 -3 + 394, 1, 301.9, -69.5 , 0 );
setMoveKey( spep_2 -3 + 396, 1, 301.2, -69 , 0 );
setMoveKey( spep_2 -3 + 398, 1, 300.4, -68.7 , 0 );
setMoveKey( spep_2 -3 + 400, 1, 299.6, -68.3 , 0 );
setMoveKey( spep_2 -3 + 402, 1, 298.9, -67.9 , 0 );
setMoveKey( spep_2 -3 + 404, 1, 298.2, -67.5 , 0 );
setMoveKey( spep_2 -3 + 406, 1, 297.5, -67.2 , 0 );
setMoveKey( spep_2 -3 + 408, 1, 296.7, -66.7 , 0 );
setMoveKey( spep_2 -3 + 410, 1, 295.9, -66.4 , 0 );
setMoveKey( spep_2 -3 + 412, 1, 295.2, -66 , 0 );
setMoveKey( spep_2 -3 + 414, 1, 293.8, -66.4 , 0 );
setMoveKey( spep_2 -3 + 416, 1, 292.4, -66.8 , 0 );
setMoveKey( spep_2 -3 + 418, 1, 291, -67.2 , 0 );
setMoveKey( spep_2 -3 + 420, 1, 289.6, -67.6 , 0 );
setMoveKey( spep_2 -3 + 422, 1, 288.2, -68 , 0 );
setMoveKey( spep_2 -3 + 424, 1, 286.8, -68.4 , 0 );
setMoveKey( spep_2 -3 + 426, 1, 285.3, -68.8 , 0 );
setMoveKey( spep_2 -3 + 428, 1, 283.5, -66.3 , 0 );
setMoveKey( spep_2 -3 + 430, 1, 284.7, -66.8 , 0 );
setMoveKey( spep_2 -3 + 432, 1, 285, -65.2 , 0 );
setMoveKey( spep_2 -3 + 434, 1, 277.2, -64.7 , 0 );
setMoveKey( spep_2 -3 + 436, 1, 277.2, -64.7 , 0 );
setMoveKey( spep_2 -3 + 538, 1, -205, 147.8 , 0 );
setMoveKey( spep_2 -3 + 539, 1, -205, 147.8 , 0 );
setMoveKey( spep_2 -3 + 540, 1, -201, 139.8 , 0 );
setMoveKey( spep_2 -3 + 541, 1, -201, 139.8 , 0 );
setMoveKey( spep_2 -3 + 542, 1, -33.5, 82.4 , 0 );
setMoveKey( spep_2 -3 + 543, 1, -33.5, 82.4 , 0 );
setMoveKey( spep_2 -3 + 544, 1, -34.5, 82.9 , 0 );
setMoveKey( spep_2 -3 + 545, 1, -34.5, 82.9 , 0 );
setMoveKey( spep_2 -3 + 546, 1, 368.1, -0.1 , 0 );
setMoveKey( spep_2 -3 + 547, 1, 368.1, -0.1 , 0 );
setMoveKey( spep_2 -3 + 548, 1, 328.1, -18 , 0 );
setMoveKey( spep_2 -3 + 549, 1, 328.1, -18 , 0 );
setMoveKey( spep_2 -3 + 550, 1, 300.5, -52 , 0 );
setMoveKey( spep_2 -3 + 612, 1, 1.4, 8 , 0 );
setMoveKey( spep_2 -3 + 614, 1, 10, 7 , 0 );
setMoveKey( spep_2 -3 + 616, 1, 16.1, 2.1 , 0 );
setMoveKey( spep_2 -3 + 618, 1, 29.2, -2.9 , 0 );
setMoveKey( spep_2 -3 + 620, 1, 39.2, -17.5 , 0 );
setMoveKey( spep_2 -3 + 622, 1, 40.1, -20.1 , 0 );
setMoveKey( spep_2 -3 + 624, 1, 53, -23.8 , 0 );
setMoveKey( spep_2 -3 + 626, 1, 61.4, -23.1 , 0 );
setMoveKey( spep_2 -3 + 628, 1, 68, -34.6 , 0 );
setMoveKey( spep_2 -3 + 630, 1, 76.2, -40.6 , 0 );
setMoveKey( spep_2 -3 + 632, 1, 85.3, -51.7 , 0 );
setMoveKey( spep_2 -3 + 634, 1, 92.9, -45.4 , 0 );
setMoveKey( spep_2 -3 + 636, 1, 98.9, -56 , 0 );
setMoveKey( spep_2 -3 + 638, 1, 109.9, -57.6 , 0 );
setMoveKey( spep_2 -3 + 640, 1, 114.9, -70.3 , 0 );
setMoveKey( spep_2 -3 + 642, 1, 119.9, -66.6 , 0 );
setMoveKey( spep_2 -3 + 644, 1, 128.2, -69.7 , 0 );
setMoveKey( spep_2 -3 + 646, 1, 136.7, -72.8 , 0 );
setMoveKey( spep_2 -3 + 648, 1, 143.2, -82.2 , 0 );
setMoveKey( spep_2 -3 + 650, 1, 150.7, -81.8 , 0 );
setMoveKey( spep_2 -3 + 652, 1, 159.6, -93.3 , 0 );
setMoveKey( spep_2 -3 + 654, 1, 158.7, -87.3 , 0 );
setMoveKey( spep_2 -3 + 656, 1, 165.7, -102 , 0 );
setMoveKey( spep_2 -3 + 658, 1, 177.6, -99.7 , 0 );
setMoveKey( spep_2 -3 + 660, 1, 184.6, -113 , 0 );
setMoveKey( spep_2 -3 + 662, 1, 195.5, -112.7 , 0 );
setMoveKey( spep_2 -3 + 664, 1, 208, -120.3 , 0 );
setMoveKey( spep_2 -3 + 666, 1, 214.4, -127.4 , 0 );
setMoveKey( spep_2 -3 + 668, 1, 220.8, -134.5 , 0 );
setMoveKey( spep_2 -3 + 670, 1, 234.1, -135.4 , 0 );
setMoveKey( spep_2 -3 + 672, 1, 238.7, -143.5 , 0 );
setMoveKey( spep_2 -3 + 674, 1, 243.2, -151.7 , 0 );
setMoveKey( spep_2 -3 + 676, 1, 252.3, -163 , 0 );
setMoveKey( spep_2 -3 + 678, 1, 261.9, -161 , 0 );
setMoveKey( spep_2 -3 + 680, 1, 264.5, -163.9 , 0 );
setMoveKey( spep_2 -3 + 682, 1, 274.1, -162.9 , 0 );
setMoveKey( spep_2 -3 + 684, 1, 279.7, -173.9 , 0 );
setMoveKey( spep_2 -3 + 686, 1, 289.2, -170.8 , 0 );
setMoveKey( spep_2 -3 + 688, 1, 294.5, -181.8 , 0 );
setMoveKey( spep_2 -3 + 690, 1, 307.7, -186.8 , 0 );
setMoveKey( spep_2 -3 + 692, 1, 315, -198.7 , 0 );
setMoveKey( spep_2 -3 + 694, 1, 321.6, -195 , 0 );
setMoveKey( spep_2 -3 + 696, 1, 327.7, -204.3 , 0 );
setMoveKey( spep_2 -3 + 698, 1, 338.8, -205.6 , 0 );
setMoveKey( spep_2 -3 + 700, 1, 345.3, -216.8 , 0 );
setMoveKey( spep_2 -3 + 702, 1, 350.7, -215.6 , 0 );
setMoveKey( spep_2 -3 + 704, 1, 357, -225.3 , 0 );
setMoveKey( spep_2 -3 + 706, 1, 369.2, -227.8 , 0 );
setMoveKey( spep_2 -3 + 708, 1, 375.3, -236.8 , 0 );
setMoveKey( spep_2 -3 + 710, 1, 384.6, -233.4 , 0 );
setMoveKey( spep_2 -3 + 712, 1, 386, -250.9 , 0 );
setMoveKey( spep_2 -3 + 714, 1, 398.5, -235.6 , 0 );
setMoveKey( spep_2 -3 + 716, 1, 400, -252.5 , 0 );
setMoveKey( spep_2 -3 + 718, 1, 415.7, -249.8 , 0 );
setMoveKey( spep_2 -3 + 720, 1, 420.3, -274.4 , 0 );
setMoveKey( spep_2 -3 + 722, 1, 432.9, -266.9 , 0 );
setMoveKey( spep_2 -3 + 724, 1, 439.2, -283.2 , 0 );
setMoveKey( spep_2 -3 + 726, 1, 452.4, -275.2 , 0 );

setScaleKey( spep_2 -3 + 218, 1, 0.17, 0.18 );
setScaleKey( spep_2 -3 + 228, 1, 0.17, 0.18 );
setScaleKey( spep_2 -3 + 230, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 232, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 234, 1, 0.18, 0.19 );
setScaleKey( spep_2 -3 + 246, 1, 0.18, 0.19 );
setScaleKey( spep_2 -3 + 248, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 250, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 252, 1, 0.19, 0.2 );
setScaleKey( spep_2 -3 + 254, 1, 0.19, 0.2 );
setScaleKey( spep_2 -3 + 350, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 352, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 354, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 356, 1, 1.33, 1.33 );
setScaleKey( spep_2 -3 + 358, 1, 1.27, 1.27 );
setScaleKey( spep_2 -3 + 360, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 436, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 538, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 550, 1, 0.06, 0.06 );
setScaleKey( spep_2 -3 + 612, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 726, 1, 0.19, 0.19 );

setRotateKey( spep_2 -3 + 218, 1, 0 );
setRotateKey( spep_2 -3 + 254, 1, 0 );
setRotateKey( spep_2 -3 + 350, 1, 0 );
setRotateKey( spep_2 -3 + 436, 1, 0 );
setRotateKey( spep_2 -3 + 538, 1, 20.9 );
setRotateKey( spep_2 -3 + 550, 1, 20.9 );
setRotateKey( spep_2 -3 + 612, 1, 20 );
setRotateKey( spep_2 -3 + 726, 1, 20 );

--setBlendColor( spep_2 -3 + 538, 1, 2, 0.6, 0.84, 1.00, 0.84 );
--setBlendColor( spep_2 -3 + 726, 1, 2, 0.6, 0.84, 1.00, 0.84 );
setBlendColor( spep_2 -3 + 538, 1, 2, 0.09, 0.18, 0.28, 0.89 );
setBlendColor( spep_2 -3 + 726, 1, 2, 0.09, 0.18, 0.28, 0.89 );

setBlendColor( spep_2 -3 + 730, 1, 2, 1.0, 1.0, 1.0, 1.00 );

-- ** 音 ** --
--かめはめ波溜め
setSeVolume( spep_2 + 212, 1210, 50 );
setSeVolume( spep_2 + 216, 1210, 52 );
setSeVolume( spep_2 + 220, 1210, 54 );
setSeVolume( spep_2 + 224, 1210, 58 );
setSeVolume( spep_2 + 228, 1210, 61 );
setSeVolume( spep_2 + 232, 1210, 64 );
setSeVolume( spep_2 + 236, 1210, 69 );
setSeVolume( spep_2 + 240, 1210, 72 );
setSeVolume( spep_2 + 244, 1210, 75 );
setSeVolume( spep_2 + 248, 1210, 78 );
setSeVolume( spep_2 + 252, 1210, 83 );
setSeVolume( spep_2 + 256, 1210, 86 );
setSeVolume( spep_2 + 260, 1210, 89 );
setSeVolume( spep_2 + 264, 1210, 93 );
setSeVolume( spep_2 + 269, 1210, 96 );
setSeVolume( spep_2 + 271, 1210, 100 );
stopSe( spep_2 + 294, SE4, 28 );

--ジャンプ２
SE004 = playSe( spep_2 + 173, 1046 );
setSeVolume( spep_2 + 173, 1046, 71 );
stopSe( spep_2 + 202, SE004, 0 );

--[[SE16 = playSe( spep_2 + 173, 1109 );
stopSe( spep_2 + 182, SE16, 8 );]]

--[[SE005 = playSe( spep_2 + 173, 1192 );
setSeVolume( spep_2 + 173, 1192, 178 );
stopSe( spep_2 + 202, SE005, 0 );]]

SE17 = playSe( spep_2 + 177, 1116 );
setSeVolume( spep_2 + 177, 1116, 45 );
setSeVolume( spep_2 + 195, 1116, 45 );
setSeVolume( spep_2 + 198, 1116, 32 );
setSeVolume( spep_2 + 202, 1116, 24 );
--setSeVolume( spep_2 + 204, 1116, 13 );
--setSeVolume( spep_2 + 206, 1116, 0 );
stopSe( spep_2 + 200, SE17, 0 );

SE18 = playSe( spep_2 + 177, 1117 );
setSeVolume( spep_2 + 177, 1117, 141 );
setSeVolume( spep_2 + 194, 1117, 141 );
setSeVolume( spep_2 + 198, 1117, 103 );
setSeVolume( spep_2 + 200, 1117, 74 );
setSeVolume( spep_2 + 202, 1117, 38 );
--setSeVolume( spep_2 + 204, 1117, 6 );
--setSeVolume( spep_2 + 205, 1117, 0 );
stopSe( spep_2 + 200, SE18, 0 );

SE19 = playSe( spep_2 + 178, 1168 );
setSeVolume( spep_2 + 178, 1168, 79 );
setSeVolume( spep_2 + 192, 1168, 79 );
setSeVolume( spep_2 + 196, 1168, 59 );
setSeVolume( spep_2 + 200, 1168, 16 );
--setSeVolume( spep_2 + 203, 1168, 0 );
stopSe( spep_2 + 200, SE19, 0 );

--[[SE_1168 = playSe( spep_2 + 178, 1102 );
stopSe( spep_2 + 202, SE_1168, 0 );]]

--ジャンプ３
playSe( spep_2 + 204, 1046 );
setSeVolume( spep_2 + 204, 1046, 79 );

SE20 = playSe( spep_2 + 204, 1109 );
stopSe( spep_2 + 213, SE20, 8 );

--[[playSe( spep_2 + 204, 1192 );
setSeVolume( spep_2 + 204, 1192, 178 );]]

SE21 = playSe( spep_2 + 206, 1168 );
stopSe( spep_2 + 236, SE21, 40 );

SE22 = playSe( spep_2 + 206, 1116 );
setSeVolume( spep_2 + 206, 1116, 71 );
setSeVolume( spep_2 + 232, 1116, 71 );
setSeVolume( spep_2 + 236, 1116, 63 );
setSeVolume( spep_2 + 240, 1116, 48 );
setSeVolume( spep_2 + 244, 1116, 32 );
setSeVolume( spep_2 + 248, 1116, 25 );
setSeVolume( spep_2 + 252, 1116, 12 );
setSeVolume( spep_2 + 258, 1116, 5 );
setSeVolume( spep_2 + 260, 1116, 0 );
stopSe( spep_2 + 260, SE22, 0 );

SE23 = playSe( spep_2 + 208, 1117 );
stopSe( spep_2 + 225, SE23, 32 );

--ジャンプ４
playSe( spep_2 + 233, 44 );
setSeVolume( spep_2 + 233, 44, 44 );
playSe( spep_2 + 233, 1072 );
setSeVolume( spep_2 + 233, 1072, 85 );

--岩駆け上がる
SE24 = playSe( spep_2 + 230, 1212 );
setSeVolume( spep_2 + 230, 1212, 0 );
setSeVolume( spep_2 + 283, 1212, 6 );
setSeVolume( spep_2 + 286, 1212, 13 );
setSeVolume( spep_2 + 290, 1212, 24 );
setSeVolume( spep_2 + 292, 1212, 32 );
setSeVolume( spep_2 + 296, 1212, 49 );
setSeVolume( spep_2 + 299, 1212, 56 );
setSeVolume( spep_2 + 358, 1212, 56 );
setSeVolume( spep_2 + 362, 1212, 48 );
setSeVolume( spep_2 + 366, 1212, 39 );
setSeVolume( spep_2 + 370, 1212, 34 );
setSeVolume( spep_2 + 374, 1212, 27 );
setSeVolume( spep_2 + 378, 1212, 24 );
setSeVolume( spep_2 + 382, 1212, 19 );
setSeVolume( spep_2 + 386, 1212, 13 );
setSeVolume( spep_2 + 390, 1212, 8 );
setSeVolume( spep_2 + 394, 1212, 3 );
setSeVolume( spep_2 + 396, 1212, 0 );
stopSe( spep_2 + 396, SE24, 0 );

playSe( spep_2 + 291, 1017 );
playSe( spep_2 + 291, 1027 );
playSe( spep_2 + 291, 1179 );

SE25 = playSe( spep_2 + 291, 1183 );
setSeVolume( spep_2 + 291, 1183, 126 );
setSeVolume( spep_2 + 362, 1183, 126 );
setSeVolume( spep_2 + 366, 1183, 103 );
setSeVolume( spep_2 + 370, 1183, 94 );
setSeVolume( spep_2 + 374, 1183, 79 );
setSeVolume( spep_2 + 378, 1183, 71 );
setSeVolume( spep_2 + 382, 1183, 63 );
setSeVolume( spep_2 + 386, 1183, 57 );
setSeVolume( spep_2 + 390, 1183, 36 );
setSeVolume( spep_2 + 394, 1183, 13 );
setSeVolume( spep_2 + 399, 1183, 0 );
stopSe( spep_2 + 399, SE25, 0 );

SE26 = playSe( spep_2 + 302, 1241 );
setSeVolume( spep_2 + 302, 1241, 79 );
setSeVolume( spep_2 + 367, 1241, 79 );
setSeVolume( spep_2 + 370, 1241, 70 );
setSeVolume( spep_2 + 374, 1241, 62 );
setSeVolume( spep_2 + 378, 1241, 57 );
setSeVolume( spep_2 + 382, 1241, 51 );
setSeVolume( spep_2 + 386, 1241, 46 );
setSeVolume( spep_2 + 390, 1241, 38 );
setSeVolume( spep_2 + 394, 1241, 31 );
setSeVolume( spep_2 + 398, 1241, 25 );
setSeVolume( spep_2 + 402, 1241, 20 );
setSeVolume( spep_2 + 406, 1241, 15 );
setSeVolume( spep_2 + 410, 1241, 7 );
setSeVolume( spep_2 + 415, 1241, 0 );
stopSe( spep_2 + 415, SE26, 0 );

SE27 = playSe( spep_2 + 304, 1181 );
setSeVolume( spep_2 + 304, 1181, 141 );
setSeVolume( spep_2 + 375, 1181, 141 );
setSeVolume( spep_2 + 378, 1181, 113 );
setSeVolume( spep_2 + 380, 1181, 98 );
setSeVolume( spep_2 + 382, 1181, 83 );
setSeVolume( spep_2 + 384, 1181, 79 );
setSeVolume( spep_2 + 386, 1181, 72 );
setSeVolume( spep_2 + 390, 1181, 67 );
setSeVolume( spep_2 + 394, 1181, 60 );
setSeVolume( spep_2 + 398, 1181, 54 );
setSeVolume( spep_2 + 402, 1181, 49 );
setSeVolume( spep_2 + 406, 1181, 41 );
setSeVolume( spep_2 + 410, 1181, 34 );
setSeVolume( spep_2 + 414, 1181, 29 );
setSeVolume( spep_2 + 418, 1181, 21 );
setSeVolume( spep_2 + 422, 1181, 14 );
setSeVolume( spep_2 + 424, 1181, 6 );
setSeVolume( spep_2 + 426, 1181, 0 );
stopSe( spep_2 + 426, SE27, 0 );

--かめはめ波発射(正面)
playSe( spep_2 + 464, 1137 );
setSeVolume( spep_2 + 464, 1137, 79 );
playSe( spep_2 + 464, 1023 );
setSeVolume( spep_2 + 464, 1023, 79 );
playSe( spep_2 + 466, 1027 );
playSe( spep_2 + 466, 1146 );
playSe( spep_2 + 466, 1145 );
setSeVolume( spep_2 + 466, 1145, 79 );

--かめはめ波発射(横)
playSe( spep_2 + 536, 1188 );
playSe( spep_2 + 536, 1161 );
setSeVolume( spep_2 + 536, 1161, 56 );
playSe( spep_2 + 537, 1027 );
playSe( spep_2 + 537, 1223 );
playSe( spep_2 + 537, 1022 );
playSe( spep_2 + 537, 1213 );
setSeVolume( spep_2 + 537, 1213, 56 );
playSe( spep_2 + 537, 1211 );

--かめはめ波伸びる
playSe( spep_2 + 573, 1215 );
setSeVolume( spep_2 + 573, 1215, 40 );

playSe( spep_2 + 629, 1067 );
setSeVolume( spep_2 + 629, 1067, 0 );
setSeVolume( spep_2 + 630, 1067, 3 );
setSeVolume( spep_2 + 632, 1067, 7 );
setSeVolume( spep_2 + 634, 1067, 12 );
setSeVolume( spep_2 + 636, 1067, 17 );
setSeVolume( spep_2 + 638, 1067, 22 );
setSeVolume( spep_2 + 640, 1067, 26 );
setSeVolume( spep_2 + 642, 1067, 30 );
setSeVolume( spep_2 + 644, 1067, 32 );
setSeVolume( spep_2 + 646, 1067, 35 );
setSeVolume( spep_2 + 648, 1067, 39 );
setSeVolume( spep_2 + 650, 1067, 45 );
setSeVolume( spep_2 + 652, 1067, 51 );
setSeVolume( spep_2 + 654, 1067, 58 );
setSeVolume( spep_2 + 656, 1067, 62 );
setSeVolume( spep_2 + 658, 1067, 76 );
setSeVolume( spep_2 + 660, 1067, 89 );
setSeVolume( spep_2 + 663, 1067, 100 );

playSe( spep_2 + 639, 1188 );
setSeVolume( spep_2 + 639, 1188, 89 );

SE28 = playSe( spep_2 + 647, 1044 );
setSeVolume( spep_2 + 647, 1044, 63 );
setSeVolume( spep_2 + 654, 1044, 68 );
setSeVolume( spep_2 + 666, 1044, 71 );
setSeVolume( spep_2 + 682, 1044, 74 );
setSeVolume( spep_2 + 694, 1044, 79 );
setSeVolume( spep_2 + 706, 1044, 82 );
setSeVolume( spep_2 + 718, 1044, 87 );
setSeVolume( spep_2 + 734, 1044, 91 );
setSeVolume( spep_2 + 746, 1044, 95 );
setSeVolume( spep_2 + 762, 1044, 98 );
setSeVolume( spep_2 + 766, 1044, 100 );
stopSe( spep_2 + 776, SE28, 0 );

playSe( spep_2 + 671, 1168 );
setSeVolume( spep_2 + 671, 1168, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 660 );
endPhase( spep_2 + 776 );

end