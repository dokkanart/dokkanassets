--バーダック_アクティブ変身

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
SP_01=	3111;

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
spep_1 = 0;

-- ** エフェクト等 ** --
effct = entryEffect( spep_1 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, effct, 0, 0 , 0 );
setEffMoveKey( spep_1 + 718, effct, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, effct, 1.0, 1.0 );
setEffScaleKey( spep_1 + 718, effct, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, effct, 0 );
setEffRotateKey( spep_1 + 718, effct, 0 );
setEffAlphaKey( spep_1 + 0, effct, 255 );
setEffAlphaKey( spep_1 + 718, effct, 255 );

-- ** 音 ** --
--雷
playSe( spep_1 + 0,  1229);
playSe( spep_1 + 14,  1230);
playSe( spep_1 + 122,  1231);
playSe( spep_1 + 182,  1229);
setSeVolume( spep_1 + 182, 1229, 71);

SE0 = playSe( spep_1 + 215,  1230);
setSeVolume( spep_1 + 215, 1230, 79);
setSeVolume( spep_1 + 255, 1230, 79);
setSeVolume( spep_1 + 262, 1230, 48);
setSeVolume( spep_1 + 276, 1230, 32);
setSeVolume( spep_1 + 284, 1230, 0);
stopSe( spep_1 + 284, SE0, 0 );

playSe( spep_1 + 293,  1231);
setSeVolume( spep_1 + 293, 1231, 63);

playSe( spep_1 + 372,  1229);
setSeVolume( spep_1 + 372, 1229, 79);

--拳握る
playSe( spep_1 + 34,  1233);
playSe( spep_1 + 47,  1006);

--イナズマ走る
SE1 = playSe( spep_1 + 100,  1148);
setSeVolume( spep_1 + 100, 1148, 40);
stopSe( spep_1 + 234, SE1, 0 );

playSe( spep_1 + 182,  1056);
setSeVolume( spep_1 + 182, 1056, 63);

SE2 = playSe( spep_1 + 243,  1147);
setSeVolume( spep_1 + 243, 1147, 56);
stopSe( spep_1 + 449, SE2, 0 );

--カットイン
playSe( spep_1 + 130, 1018 );

--金髪に
playSe( spep_1 + 165, 1072 );
playSe( spep_1 + 306, 1072 );

--画面切り替え
playSe( spep_1 + 355,  8);
setSeVolume( spep_1 + 355, 8, 71);

--うずくまって気を溜める
SE3 = playSe( spep_1 + 388,  1044);
setSeVolume( spep_1 + 388, 1044, 56);
stopSe( spep_1 + 507, SE3, 0 );

SE4 = playSe( spep_1 + 392,  1159);
setSeVolume( spep_1 + 392, 1159, 10);
setSeVolume( spep_1 + 198, 1159, 38);
setSeVolume( spep_1 + 403, 1159, 63);
setSeVolume( spep_1 + 418, 1159, 63);
setSeVolume( spep_1 + 430, 1159, 38);
setSeVolume( spep_1 + 444, 1159, 12);
setSeVolume( spep_1 + 451, 1159, 0);
stopSe( spep_1 + 451, SE4, 0 );

playSe( spep_1 + 396,  1167);
setSeVolume( spep_1 + 396, 1167, 45);
playSe( spep_1 + 405,  1213);
setSeVolume( spep_1 + 405, 1213, 45);
playSe( spep_1 + 443,  1043);
setSeVolume( spep_1 + 443, 1043, 79);

--気の解放
playSe( spep_1 + 492,  1024);
setSeVolume( spep_1 + 492, 1024, 89);
playSe( spep_1 + 492,  1067);
setSeVolume( spep_1 + 492, 1067, 89);
playSe( spep_1 + 492,  1035);
playSe( spep_1 + 492,  1190);

--画面切り替え
SE5 = playSe( spep_1 + 573,  1072);
stopSe( spep_1 + 591, SE5, 8 );

playSe( spep_1 + 594,  44);
setSeVolume( spep_1 + 594, 44, 56);

--オーラ
playSe( spep_1 + 576,  1036);
setSeVolume( spep_1 + 576, 1036, 50);
playSe( spep_1 + 600,  1036);
setSeVolume( spep_1 + 600, 1036, 50);
playSe( spep_1 + 624,  1036);
setSeVolume( spep_1 + 624, 1036, 50);

--最後決め
playSe( spep_1 + 639,  40);
setSeVolume( spep_1 + 639, 40, 79);
playSe( spep_1 + 642,  1156);
setSeVolume( spep_1 + 642, 1156, 79);
playSe( spep_1 + 642,  1062);
setSeVolume( spep_1 + 642, 1062, 79);

-- ** ボイス ** --
--なさけねぇ
playVoice(spep_1 + 0 +14, 147 );
setVoiceVolume(spep_1 + 0 +14, 147, 251 );

--おれが…おれが…！
playVoice(spep_1 + 185, 148 );
setVoiceVolume(spep_1 + 185, 148, 316 );

--貴様を倒す！
playVoice(spep_1 + 410, 149 );
setVoiceVolume(spep_1 + 410, 149, 300 );  --貴様を
setVoiceVolume(spep_1 + 497, 149, 350 );  --倒す

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 730, 0,  255, 255, 255, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
endPhase( spep_1 + 718  );

else end