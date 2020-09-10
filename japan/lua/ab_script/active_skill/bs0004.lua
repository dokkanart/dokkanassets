--ビルス_逆鱗(アクティブスキル)

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--***SE***
SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--***エフェクト***
SP_01 = 155064;  --背後に黄色い丸いオーラ拡大
SP_02 = 155065;  --地球表示
SP_03 = 155066;  --アップで表情変化

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                     -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -5000,  -5000,  0);
setMoveKey(   1,   0,    -5000,  -5000,  0);
setMoveKey(   2,   0,    -5000,  -5000,  0);
setMoveKey(   3,   0,    -5000,  -5000,  0);
setMoveKey(   4,   0,    -5000,  -5000,  0);
setMoveKey(   5,   0,    -5000,  -5000,  0);
setMoveKey(   6,   0,    -5000,  -5000,  0);
setScaleKey(  0,  0,  1.5,  1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);
setScaleKey(   5,   0, 1.5, 1.5);
setScaleKey(   6,   0, 1.5, 1.5);

-- 敵
setMoveKey(   0,   1,    -5000,  -5000,  0);
setMoveKey(   1,   1,    -5000,  -5000,  0);
setMoveKey(   2,   1,    -5000,  -5000,  0);
setMoveKey(   3,   1,    -5000,  -5000,  0);
setMoveKey(   4,   1,    -5000,  -5000,  0);
setMoveKey(   5,   1,    -5000,  -5000,  0);
setMoveKey(   6,   1,    -5000,  -5000,  0);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);
setScaleKey(   5,   1, 1.5, 1.5);
setScaleKey(   6,   1, 1.5, 1.5);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 背後に黄色い丸いオーラ拡大(274F)
------------------------------------------------------
spep_0=0;

-- ** エフェクト ** --
start = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --背後に黄色い丸いオーラ拡大
setEffMoveKey( spep_0 + 0,  start, 0, 0, 0 );
setEffMoveKey( spep_0 + 274,  start, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,  start, 1.0, 1.0 );
setEffScaleKey( spep_0 + 274,  start, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0,  start, 0 );
setEffRotateKey( spep_0 + 274,  start, 0) ;
setEffAlphaKey( spep_0 + 0,  start,  255 );
setEffAlphaKey( spep_0 + 274,  start,  255 );

-- ** ボイス ** --
--残念だが〜
playVoice( spep_0 + 0, 150 );
setVoiceVolume( spep_0 + 0, 150, 224 );

-- ** 音 ** --
--後ろの気弾大きくなる音
SE0 = playSe( spep_0 + 0, 1226 );
setSeVolume( spep_0 + 0, 1226, 32 );
setSeVolume( spep_0 + 268, 1226, 32 );
setSeVolume( spep_0 + 274, 1226, 86 );

SE1 = playSe( spep_0 + 0, 1228 );
setSeVolume( spep_0 + 0, 1228, 8 );
setSeVolume( spep_0 + 42, 1228, 10 );
setSeVolume( spep_0 + 84, 1228, 14 );
setSeVolume( spep_0 + 112, 1228, 20 );
setSeVolume( spep_0 + 164, 1228, 28 );
setSeVolume( spep_0 + 200, 1228, 32 );
setSeVolume( spep_0 + 268, 1228, 40 );
setSeVolume( spep_0 + 274, 1228, 84 );

SE2 = playSe( spep_0 + 11, 1227 );
setSeVolume( spep_0 + 11, 1227, 56 );
setSeVolume( spep_0 + 268, 1227, 56 );
setSeVolume( spep_0 + 274, 1227, 86 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 274;

------------------------------------------------------
-- 地球表示(86F)
------------------------------------------------------

-- ** エフェクト ** --
earth = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --地球表示
setEffMoveKey( spep_1 + 0,  earth, 0, 0, 0 );
setEffMoveKey( spep_1 + 86,  earth, 0, 0, 0 );
setEffScaleKey( spep_1 + 0,  earth, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86,  earth, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0,  earth, 0 );
setEffRotateKey( spep_1 + 86,  earth, 0) ;
setEffAlphaKey( spep_1 + 0,  earth,  255 );
setEffAlphaKey( spep_1 + 86,  earth,  255 );

-- ** 音 ** --
--後ろの気弾大きくなる音
setSeVolume( spep_1 + 6, 1226, 126 );
setSeVolume( spep_1 + 6, 1228, 100 );
setSeVolume( spep_1 + 6, 1227, 126 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

------------------------------------------------------
-- アップで表情変化(216F)
------------------------------------------------------

-- ** エフェクト ** --
last = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --アップで表情変化
setEffMoveKey( spep_2 + 0,  last, 0, 0, 0 );
setEffMoveKey( spep_2 + 216,  last, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  last, 1.0, 1.0 );
setEffScaleKey( spep_2 + 216,  last, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  last, 0 );
setEffRotateKey( spep_2 + 216,  last, 0) ;
setEffAlphaKey( spep_2 + 0,  last,  255 );
setEffAlphaKey( spep_2 + 216,  last,  255 );

-- ** ボイス ** --
--破壊神をなめるなよ
playVoice( spep_2 + 34, 151 );
setVoiceVolume( spep_2 + 34, 151, 200 );

-- ** 音 ** --
--後ろの気弾大きくなる音
setSeVolume( spep_2 + 45, 1226, 126 );
setSeVolume( spep_2 + 46, 1226, 112 );
setSeVolume( spep_2 + 48, 1226, 98 );
setSeVolume( spep_2 + 50, 1226, 82 );
setSeVolume( spep_2 + 52, 1226, 76 );
setSeVolume( spep_2 + 54, 1226, 70 );
setSeVolume( spep_2 + 55, 1226, 63 );
setSeVolume( spep_2 + 217, 1226, 63 );
setSeVolume( spep_2 + 218, 1226, 52 );
setSeVolume( spep_2 + 220, 1226, 38 );
setSeVolume( spep_2 + 222, 1226, 0 );
stopSe( spep_2 + 222, SE0, 0 );

setSeVolume( spep_2 + 45, 1228, 100 );
setSeVolume( spep_2 + 46, 1228, 94 );
setSeVolume( spep_2 + 48, 1228, 86 );
setSeVolume( spep_2 + 50, 1228, 82 );
setSeVolume( spep_2 + 52, 1228, 76 );
setSeVolume( spep_2 + 54, 1228, 62 );
setSeVolume( spep_2 + 55, 1228, 56 );
setSeVolume( spep_2 + 217, 1228, 56 );
setSeVolume( spep_2 + 218, 1228, 48 );
setSeVolume( spep_2 + 220, 1228, 32 );
setSeVolume( spep_2 + 222, 1228, 0 );
stopSe( spep_2 + 222, SE1, 0 );

setSeVolume( spep_2 + 45, 1227, 126 );
setSeVolume( spep_2 + 46, 1227, 112 );
setSeVolume( spep_2 + 48, 1227, 98 );
setSeVolume( spep_2 + 50, 1227, 82 );
setSeVolume( spep_2 + 52, 1227, 76 );
setSeVolume( spep_2 + 54, 1227, 70 );
setSeVolume( spep_2 + 55, 1227, 63 );
setSeVolume( spep_2 + 217, 1227, 63 );
setSeVolume( spep_2 + 218, 1227, 52 );
setSeVolume( spep_2 + 220, 1227, 38 );
setSeVolume( spep_2 + 222, 1227, 0 );
stopSe( spep_2 + 222, SE2, 0 );

--口を開ける
playSe( spep_2 + 106 -4, 1024 );
setSeVolume( spep_2 + 106 -4, 1024, 89 );

playSe( spep_2 + 106 -4, 1126 );
setSeVolume( spep_2 + 106 -4, 1126, 45 );

-- ** 最後 ** --
entryFade( spep_2 + 216 -10, 8, 2, 0, 0, 0, 0, 255);
endPhase(spep_2 + 216);

else end