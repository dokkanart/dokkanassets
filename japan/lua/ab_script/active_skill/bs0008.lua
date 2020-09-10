--ジレン(フルパワー_強さこそ絶対(アクティブ)

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
SP_01 = 3122;  --強さこそ絶対

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
-- 強さこそ絶対(692f)
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
ef_1 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, ef_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 692, ef_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, ef_1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 692, ef_1, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, ef_1, 0 );
setEffRotateKey( spep_0 + 692, ef_1, 0 );
setEffAlphaKey( spep_0 + 0, ef_1, 255 );
setEffAlphaKey( spep_0 + 692, ef_1, 255 );

-- ** 音 ** --
--環境音
SE0 = playSe( spep_0 + 0, 1269 );
setSeVolume( spep_0 + 0, 1269, 13 );
stopSe( spep_0 + 384, SE0, 0 );

--セリフカットイン
playSe( spep_0 + 8, 1018 );
setSeVolume( spep_0 + 8, 1018, 79 );

--地響き
SE1 = playSe( spep_0 + 80, 1044 );
setSeVolume( spep_0 + 80, 1044, 63 );
stopSe( spep_0 + 184, SE0, 0 );

SE2 = playSe( spep_0 + 80, 1226 );
setSeVolume( spep_0 + 80, 1226, 42 );
setSeVolume( spep_0 + 309, 1226, 42 );
setSeVolume( spep_0 + 312, 1226, 39 );
setSeVolume( spep_0 + 316, 1226, 33 );
setSeVolume( spep_0 + 320, 1226, 25 );
setSeVolume( spep_0 + 324, 1226, 17 );
setSeVolume( spep_0 + 328, 1226, 11 );
setSeVolume( spep_0 + 332, 1226, 6 );
setSeVolume( spep_0 + 336, 1226, 0 );
stopSe( spep_0 + 336, SE2, 0 );

SE3 = playSe( spep_0 + 184, 1044 );
setSeVolume( spep_0 + 184, 1044, 40 );
setSeVolume( spep_0 + 309, 1044, 40 );
setSeVolume( spep_0 + 312, 1044, 36 );
setSeVolume( spep_0 + 316, 1044, 33 );
setSeVolume( spep_0 + 320, 1044, 25 );
setSeVolume( spep_0 + 324, 1044, 17 );
setSeVolume( spep_0 + 328, 1044, 11 );
setSeVolume( spep_0 + 332, 1044, 6 );
setSeVolume( spep_0 + 336, 1044, 0 );
stopSe( spep_0 + 336, SE3, 68 );

--手握る
playSe( spep_0 + 96, 1233 );
setSeVolume( spep_0 + 96, 1233, 37 );
playSe( spep_0 + 98, 1007 );
setSeVolume( spep_0 + 98, 1007, 120 );
playSe( spep_0 + 102, 1006 );
setSeVolume( spep_0 + 102, 1006, 86 );
playSe( spep_0 + 102, 1192 );
setSeVolume( spep_0 + 102, 1192, 200 );

--足めりこむ
SE4 = playSe( spep_0 + 138, 1024 );
stopSe( spep_0 + 190, SE4, 68 );
playSe( spep_0 + 138, 20 );

--雄叫び
playSe( spep_0 + 304, 44 );
playSe( spep_0 + 304, 1167 );
setSeVolume( spep_0 + 304, 1167, 50 );

--気合い爆発
playSe( spep_0 + 336, 1024 );
playSe( spep_0 + 338, 1067 );
playSe( spep_0 + 338, 1035 );
playSe( spep_0 + 338, 1202 );
playSe( spep_0 + 340, 1254 );
setSeVolume( spep_0 + 340, 1254, 0 );
setSeVolume( spep_0 + 344, 1254, 12 );
setSeVolume( spep_0 + 348, 1254, 26 );
setSeVolume( spep_0 + 352, 1254, 35 );
setSeVolume( spep_0 + 356, 1254, 41 );
setSeVolume( spep_0 + 357, 1254, 50 );

--気合いが溢れる
SE5 = playSe( spep_0 + 360, 1212 );
setSeVolume( spep_0 + 360, 1212, 0 );
setSeVolume( spep_0 + 392, 1212, 0 );
setSeVolume( spep_0 + 396, 1212, 12 );
setSeVolume( spep_0 + 400, 1212, 28 );
setSeVolume( spep_0 + 404, 1212, 34 );
setSeVolume( spep_0 + 408, 1212, 47 );
setSeVolume( spep_0 + 411, 1212, 56 );
setSeVolume( spep_0 + 463, 1212, 56 );
setSeVolume( spep_0 + 466, 1212, 51 );
setSeVolume( spep_0 + 470, 1212, 46 );
setSeVolume( spep_0 + 474, 1212, 40 );
setSeVolume( spep_0 + 478, 1212, 37 );
setSeVolume( spep_0 + 482, 1212, 32 );
setSeVolume( spep_0 + 486, 1212, 26 );
setSeVolume( spep_0 + 490, 1212, 19 );
setSeVolume( spep_0 + 494, 1212, 12 );
setSeVolume( spep_0 + 498, 1212, 6 );
setSeVolume( spep_0 + 502, 1212, 3 );
setSeVolume( spep_0 + 505, 1212, 0 );
stopSe( spep_0 + 505, SE5, 0 );

playSe( spep_0 + 408, 1259 );
setSeVolume( spep_0 + 408, 1259, 75 );

SE6 = playSe( spep_0 + 446, 1044 );
setSeVolume( spep_0 + 446, 1044, 66 );
setSeVolume( spep_0 + 519, 1044, 66 );
setSeVolume( spep_0 + 522, 1044, 58 );
setSeVolume( spep_0 + 526, 1044, 52 );
setSeVolume( spep_0 + 530, 1044, 47 );
setSeVolume( spep_0 + 534, 1044, 41 );
setSeVolume( spep_0 + 538, 1044, 35 );
setSeVolume( spep_0 + 542, 1044, 29 );
setSeVolume( spep_0 + 546, 1044, 22 );
setSeVolume( spep_0 + 550, 1044, 17 );
setSeVolume( spep_0 + 554, 1044, 13 );
setSeVolume( spep_0 + 558, 1044, 9 );
setSeVolume( spep_0 + 562, 1044, 3 );
setSeVolume( spep_0 + 565, 1044, 0 );
stopSe( spep_0 + 565, SE6, 0 );

playSe( spep_0 + 464, 1027 );
setSeVolume( spep_0 + 464, 1027, 84 );
playSe( spep_0 + 468, 1229 );
setSeVolume( spep_0 + 468, 1229, 146 );
playSe( spep_0 + 468, 1033 );

--環境音
playSe( spep_0 + 450, 1268 );
setSeVolume( spep_0 + 450, 1268, 143 );
playSe( spep_0 + 544, 1267 );
setSeVolume( spep_0 + 544, 1267, 62 );
playSe( spep_0 + 544, 1181 );
setSeVolume( spep_0 + 544, 1181, 78 );

--カメラアップ
playSe( spep_0 + 556, 1072 );
setSeVolume( spep_0 + 556, 1072, 0 );
setSeVolume( spep_0 + 575, 1072, 0 );
setSeVolume( spep_0 + 578, 1072, 26 );
setSeVolume( spep_0 + 582, 1072, 41 );
setSeVolume( spep_0 + 586, 1072, 52 );
setSeVolume( spep_0 + 587, 1072, 58 );

-- ** ボイス ** --
--信頼など〜
playVoice( spep_0 + 10, 170 );
setVoiceVolume( spep_0 + 10, 170, 126 );

--強さなど〜
playVoice( spep_0 + 188, 171 );
setVoiceVolume( spep_0 + 188, 171, 126 );

--うおおおお
playVoice( spep_0 + 310, 172 );
setVoiceVolume( spep_0 + 310, 172, 141 );

-- ** ダメージ表示 ** --
endPhase( spep_0 + 690  );

else end
