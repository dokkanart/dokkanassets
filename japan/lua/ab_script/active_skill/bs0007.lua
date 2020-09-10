--超サイヤ人ゴッドSS孫悟空(界王拳)&超サイヤ人ゴッドSSベジータ(進化)_全身全霊全力解放

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
SP_01 = 155637;  --うつむき〜二人で溜め
SP_02 = 155638;  --悟空開放〜ベジータ開放
SP_03 = 155639;  --二人並んでで歩く

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- うつむき〜二人で溜め(788f)
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
ef_1 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ef_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 788, ef_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ef_1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 788, ef_1, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ef_1, 0 );
setEffRotateKey( spep_0 + 788, ef_1, 0 );
setEffAlphaKey( spep_0 + 0, ef_1, 255 );
setEffAlphaKey( spep_0 + 788, ef_1, 255 );

-- ** 音 ** --
--環境音
SE0 = playSe( spep_0 + 0, 1269 );
setSeVolume( spep_0 + 0, 1269, 66 );
setSeVolume( spep_0 + 604, 1269, 66 );
setSeVolume( spep_0 + 608, 1269, 42 );
setSeVolume( spep_0 + 612, 1269, 28 );
setSeVolume( spep_0 + 616, 1269, 0 );
stopSe( spep_0 + 616, SE0, 0 );

--顔あげる
playSe( spep_0 + 36, 1004 );
setSeVolume( spep_0 + 36, 1004, 22 );
playSe( spep_0 + 38, 1003 );
setSeVolume( spep_0 + 38, 1003, 32 );

--踏み出す
playSe( spep_0 + 234, 1106 );
setSeVolume( spep_0 + 234, 1106, 168 );
playSe( spep_0 + 235, 1192 );
setSeVolume( spep_0 + 235, 1192, 182 );

SE1 = playSe( spep_0 + 237, 1197 );
setSeVolume( spep_0 + 237, 1197, 45 );
stopSe( spep_0 + 246, SE1, 0 );

SE2 = playSe( spep_0 + 237, 19 );
setSeVolume( spep_0 + 237, 19, 43 );
setSeVolume( spep_0 + 247, 19, 43 );
setSeVolume( spep_0 + 250, 19, 32 );
setSeVolume( spep_0 + 254, 19, 26 );
setSeVolume( spep_0 + 258, 19, 18 );
setSeVolume( spep_0 + 262, 19, 6 );
setSeVolume( spep_0 + 267, 19, 0 );
stopSe( spep_0 + 267, SE2, 0 );

--カメラなめる
playSe( spep_0 + 354, 8 );
setSeVolume( spep_0 + 354, 8, 52 );

--セリフカットイン
playSe( spep_0 + 511, 1018 );
setSeVolume( spep_0 + 511, 1018, 79 );

--気溜め
playSe( spep_0 + 600, 1035 );

SE3 = playSe( spep_0 + 600, 1181 );
setSeVolume( spep_0 + 600, 1181, 50 );
setSeVolume( spep_0 + 604, 1181, 69 );
setSeVolume( spep_0 + 608, 1181, 81 );
setSeVolume( spep_0 + 612, 1181, 96 );
setSeVolume( spep_0 + 616, 1181, 107 );
setSeVolume( spep_0 + 620, 1181, 116 );
setSeVolume( spep_0 + 624, 1181, 128 );
setSeVolume( spep_0 + 628, 1181, 148 );
setSeVolume( spep_0 + 632, 1181, 162 );
setSeVolume( spep_0 + 636, 1181, 170 );
setSeVolume( spep_0 + 640, 1181, 179 );
setSeVolume( spep_0 + 644, 1181, 184 );
setSeVolume( spep_0 + 648, 1181, 196 );
setSeVolume( spep_0 + 652, 1181, 209 );
setSeVolume( spep_0 + 656, 1181, 218 );
setSeVolume( spep_0 + 660, 1181, 224 );
setSeVolume( spep_0 + 664, 1181, 238 );
setSeVolume( spep_0 + 668, 1181, 251 );

SE4 = playSe( spep_0 + 600, 1044 );
setSeVolume( spep_0 + 600, 1044, 59 );

playSe( spep_0 + 606, 1024 );

-- ** ボイス ** --
--ここで引くわけにはいかねぇんだ！
playVoice( spep_0 + 66, 176 );
setVoiceVolume( spep_0 + 66, 176, 141 );

--カカロットの言うとおりだ！
playVoice( spep_0 + 238, 177 );
setVoiceVolume( spep_0 + 238, 177, 141 );

--オレはきさまに勝たねばならんのだ！
playVoice( spep_0 + 347, 178 );
setVoiceVolume( spep_0 + 347, 178, 141 );

--いくぞ！！
playVoice( spep_0 + 504, 179 );
setVoiceVolume( spep_0 + 504, 179, 200 );

--はあああああああ
playVoice( spep_0 + 582, 180 );
setVoiceVolume( spep_0 + 582, 180, 180 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 788;

------------------------------------------------------
-- 悟空開放〜ベジータ開放(258f)
------------------------------------------------------

-- ** エフェクト等 ** --
ef_2 = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ef_2, 0, 0, 0 );
setEffMoveKey( spep_1 + 258, ef_2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ef_2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 258, ef_2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ef_2, 0 );
setEffRotateKey( spep_1 + 258, ef_2, 0 );
setEffAlphaKey( spep_1 + 0, ef_2, 255 );
setEffAlphaKey( spep_1 + 258, ef_2, 255 );

-- ** 音 ** --
--気溜め
stopSe( spep_1 + 10, SE3, 0 );
stopSe( spep_1 + 10, SE4, 0 );

--界王拳溜め
SE5 = playSe( spep_1 + 10, 1044 );
setSeVolume( spep_1 + 10, 1044, 32 );
stopSe( spep_1 + 250, SE5, 0 );

SE6 = playSe( spep_1 + 10, 1181 );
setSeVolume( spep_1 + 10, 1181, 126 );
stopSe( spep_1 + 95, SE6, 0 );

SE7 = playSe( spep_1 + 10, 1269 );
setSeVolume( spep_1 + 10, 1269, 37 );
stopSe( spep_1 + 119, SE7, 0 );

SE8 = playSe( spep_1 + 67, 1265 );
setSeVolume( spep_1 + 67, 1265, 0 );
setSeVolume( spep_1 + 98, 1265, 0 );
setSeVolume( spep_1 + 100, 1265, 12 );
setSeVolume( spep_1 + 102, 1265, 26 );
setSeVolume( spep_1 + 105, 1265, 38 );
setSeVolume( spep_1 + 168, 1265, 38 );
setSeVolume( spep_1 + 172, 1265, 34 );
setSeVolume( spep_1 + 176, 1265, 30 );
setSeVolume( spep_1 + 180, 1265, 29 );
setSeVolume( spep_1 + 184, 1265, 27 );
setSeVolume( spep_1 + 188, 1265, 25 );
setSeVolume( spep_1 + 192, 1265, 23 );
setSeVolume( spep_1 + 196, 1265, 21 );
setSeVolume( spep_1 + 200, 1265, 19 );
setSeVolume( spep_1 + 204, 1265, 16 );
setSeVolume( spep_1 + 208, 1265, 14 );
setSeVolume( spep_1 + 212, 1265, 11 );
setSeVolume( spep_1 + 216, 1265, 7 );
setSeVolume( spep_1 + 220, 1265, 3 );
setSeVolume( spep_1 + 221, 1265, 0 );
stopSe( spep_1 + 221, SE8, 0 );

SE9 = playSe( spep_1 + 89, 1227 );
stopSe( spep_1 + 153, SE9, 60 );

playSe( spep_1 + 93, 24 );
setSeVolume( spep_1 + 93, 24, 72 );
playSe( spep_1 + 95, 1035 );
playSe( spep_1 + 95, 1231 );
setSeVolume( spep_1 + 95, 1231, 83 );
playSe( spep_1 + 95, 1254 );
setSeVolume( spep_1 + 95, 1254, 32 );

--キラベジ溜め
playSe( spep_1 + 193, 1067 );
setSeVolume( spep_1 + 193, 1067, 69 );
playSe( spep_1 + 193, 1035 );
setSeVolume( spep_1 + 193, 1035, 79 );

SE10 = playSe( spep_1 + 193, 1255 );
stopSe( spep_1 + 217, SE10, 26 );

playSe( spep_1 + 193, 1061 );
setSeVolume( spep_1 + 193, 1061, 81 );

-- ** ボイス ** --
--界王拳！！
playVoice( spep_1 + 40, 181 );
setVoiceVolume( spep_1 + 40, 181, 128 );

--ぬああああああああ！
playVoice( spep_1 + 138, 182 );
setVoiceVolume( spep_1 + 138, 182, 160 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 258;

------------------------------------------------------
-- 二人並んでで歩く(118f)
------------------------------------------------------

-- ** エフェクト等 ** --
ef_3 = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, ef_3, 0, 0, 0 );
setEffMoveKey( spep_2 + 118, ef_3, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, ef_3, 1.0, 1.0 );
setEffScaleKey( spep_2 + 118, ef_3, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, ef_3, 0 );
setEffRotateKey( spep_2 + 118, ef_3, 0 );
setEffAlphaKey( spep_2 + 0, ef_3, 255 );
setEffAlphaKey( spep_2 + 118, ef_3, 255 );

-- ** 音 ** --
--オーラ
playSe( spep_2 + 10, 1269 );
setSeVolume( spep_2 + 10, 1269, 20 );
playSe( spep_2 + 10, 1181 );
setSeVolume( spep_2 + 10, 1181, 180 );
playSe( spep_2 + 10, 1176 );
setSeVolume( spep_2 + 10, 1176, 72 );

--顔カットイン
playSe( spep_2 + 12, 1018 );
playSe( spep_2 + 12, 1042 );
setSeVolume( spep_2 + 12, 1042, 59 );
playSe( spep_2 + 12, 1026 );
setSeVolume( spep_2 + 12, 1026, 112 );

--足音
playSe( spep_2 + 24, 1108 );
setSeVolume( spep_2 + 24, 1108, 141 );
playSe( spep_2 + 58, 1106 );
setSeVolume( spep_2 + 58, 1106, 141 );
playSe( spep_2 + 88, 1108 );
setSeVolume( spep_2 + 88, 1108, 141 );
playSe( spep_2 + 104, 1106 );
setSeVolume( spep_2 + 104, 1106, 141 );

-- ** ダメージ表示 ** --
endPhase( spep_2 + 116  );

else end
