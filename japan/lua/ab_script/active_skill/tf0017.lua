--魔人ブウ(純粋悪)_アクティブ吸収演出

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

--エフェクト
SP_01=	3117;

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 変身
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
effct = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, effct, 0, 0 , 0 );
setEffMoveKey( spep_0 + 866, effct, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, effct, 1.0, 1.0 );
setEffScaleKey( spep_0 + 866, effct, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, effct, 0 );
setEffRotateKey( spep_0 + 866, effct, 0 );
setEffAlphaKey( spep_0 + 0, effct, 255 );
setEffAlphaKey( spep_0 + 866, effct, 255 );

-- ** 音 ** --
--ビーム溜める
playSe( spep_0 + 0, 1248 );
setSeVolume( spep_0 + 0, 1248, 0 );
setSeVolume( spep_0 + 19, 1248, 5 );
setSeVolume( spep_0 + 20, 1248, 39 );
setSeVolume( spep_0 + 22, 1248, 68 );
setSeVolume( spep_0 + 24, 1248, 102 );
setSeVolume( spep_0 + 26, 1248, 141 );
playSe( spep_0 + 19, 1262 );
setSeVolume( spep_0 + 19, 1262, 141 );

SE0 = playSe( spep_0 + 77, 1249 );
setSeVolume( spep_0 + 77, 1249, 141 );
stopSe( spep_0 + 288, SE0, 0 );

--吹き返す
playSe( spep_0 + 203, 20 );
setSeVolume( spep_0 + 203, 20, 0 );
setSeVolume( spep_0 + 205, 20, 5 );
setSeVolume( spep_0 + 208, 20, 13 );
setSeVolume( spep_0 + 212, 20, 32 );
setSeVolume( spep_0 + 216, 20, 64 );
setSeVolume( spep_0 + 220, 20, 79 );
playSe( spep_0 + 203, 1027 );
playSe( spep_0 + 210, 44 );

SE1 = playSe( spep_0 + 215, 1183 );
setSeVolume( spep_0 + 215, 1183, 59 );
stopSe( spep_0 + 297, SE1, 0 );
playSe( spep_0 + 244, 1072 );

--ビームヒット
playSe( spep_0 + 282, 1231 );
setSeVolume( spep_0 + 282, 1231, 200 );
SE2 = playSe( spep_0 + 282, 1214 );
setSeVolume( spep_0 + 282, 1214, 158 );
setSeVolume( spep_0 + 319, 1214, 158 );
setSeVolume( spep_0 + 322, 1214, 139 );
setSeVolume( spep_0 + 326, 1214, 104 );
setSeVolume( spep_0 + 330, 1214, 92 );
setSeVolume( spep_0 + 334, 1214, 85 );
setSeVolume( spep_0 + 338, 1214, 72 );
setSeVolume( spep_0 + 342, 1214, 66 );
setSeVolume( spep_0 + 346, 1214, 57 );
setSeVolume( spep_0 + 350, 1214, 48 );
setSeVolume( spep_0 + 354, 1214, 42 );
setSeVolume( spep_0 + 358, 1214, 36 );
setSeVolume( spep_0 + 362, 1214, 27 );
setSeVolume( spep_0 + 366, 1214, 19 );
setSeVolume( spep_0 + 370, 1214, 11 );
setSeVolume( spep_0 + 374, 1214, 4 );
setSeVolume( spep_0 + 379, 1214, 0 );
stopSe( spep_0 + 379, SE2, 0 );
playSe( spep_0 + 287, 20 );

--チョコ落ちる
SE3 = playSe( spep_0 + 344, 1013 );
stopSe( spep_0 + 358, SE3, 0 );
SE4 = playSe( spep_0 + 345, 1041 );
stopSe( spep_0 + 349, SE4, 0 );
playSe( spep_0 + 346, 1107 );
setSeVolume( spep_0 + 346, 1107, 141 );
playSe( spep_0 + 347, 1106 );
setSeVolume( spep_0 + 347, 1106, 141 );

--拾う
playSe( spep_0 + 381, 1048 );
setSeVolume( spep_0 + 381, 1048, 50 );
playSe( spep_0 + 381, 1113 );

--口に放り込む
playSe( spep_0 + 413, 38 );

--覚醒
playSe( spep_0 + 459, 1014 );
playSe( spep_0 + 461, 1237 );

--カットイン
playSe( spep_0 + 493, 1018 );

--興奮する
playSe( spep_0 + 545, 1247 );
setSeVolume( spep_0 + 545, 1247, 71 );
playSe( spep_0 + 545, 1241 );
SE5 = playSe( spep_0 + 545, 1227 );
stopSe( spep_0 + 647, SE5, 73 );
playSe( spep_0 + 545, 1027 );
setSeVolume( spep_0 + 545, 1027, 68 );

--最後決め
playSe( spep_0 + 685, 1068 );
playSe( spep_0 + 685, 1168 );
setSeVolume( spep_0 + 685, 1168, 63 );
playSe( spep_0 + 692, 1024 );

-- ** ボイス ** --
--チョコにしてやる
playVoice(spep_0 + 29, 161 );
setVoiceVolume(spep_0 + 29, 161, 126 );

--がああ
playVoice(spep_0 + 670, 162 );
setVoiceVolume(spep_0 + 670, 162, 100 );

-- ** 白背景 ** --
entryFadeBg( spep_0 + 0, 0, 864, 0,  245, 245, 245, 255 ); --白 背景

-- ** ダメージ表示 ** --
endPhase( spep_0 + 864 );

else end