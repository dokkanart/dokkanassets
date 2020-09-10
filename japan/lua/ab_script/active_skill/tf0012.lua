--1018880:ゴクウブラック(超サイヤ人ロゼ)_激怒演出
--battle_301087

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
SP_01=	3108	;--

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
-- かめはめ波　溜める
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 808, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 808, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 808, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 808, tame, 255 );

--SE
playSe( spep_0 + 39, 1148 );
setSeVolume( spep_0 + 39, 1148, 79 );
playSe( spep_0 + 52, 1003 );
se_1026 = playSe( spep_0 + 56, 1026 );
playSe( spep_0 + 65, 1194 );
playSe( spep_0 + 66, 1145 );
setSeVolume( spep_0 + 66, 1145, 0 );
setSeVolume( spep_0 + 73, 1145, 21 );
setSeVolume( spep_0 + 74, 1145, 42 );
setSeVolume( spep_0 + 75, 1145, 63 );
playSe( spep_0 + 71, 1056 );
setSeVolume( spep_0 + 71, 1056, 56 );
playSe( spep_0 + 73, 1038 );
setSeVolume( spep_0 + 73, 1038, 63 );
playSe( spep_0 + 119, 1056 );
setSeVolume( spep_0 + 119, 1056, 56 );
se_1056 = playSe( spep_0 + 180, 1056 );
setSeVolume( spep_0 + 180, 1056, 56 );
playSe( spep_0 + 191, 1043 );
setSeVolume( spep_0 + 191, 1043, 79 );
playSe( spep_0 + 210, 1018 );
setSeVolume( spep_0 + 210, 1018, 50 );
playSe( spep_0 + 295, 1004 );
playSe( spep_0 + 304, 1003 );
playSe( spep_0 + 308, 1142 );
playSe( spep_0 + 309, 1143 );
setSeVolume( spep_0 + 309, 1143, 63 );
playSe( spep_0 + 309, 1172 );
setSeVolume( spep_0 + 309, 1172, 50 );
se_1175 = playSe( spep_0 + 353, 1175 );
setSeVolume( spep_0 + 353, 1175, 25 );
playSe( spep_0 + 438, 1072 );
setSeVolume( spep_0 + 438, 1072, 0 );
setSeVolume( spep_0 + 461, 1072, 20 );
setSeVolume( spep_0 + 462, 1072, 40 );
setSeVolume( spep_0 + 463, 1072, 60 );
setSeVolume( spep_0 + 464, 1072, 80 );
setSeVolume( spep_0 + 465, 1072, 100 );
playSe( spep_0 + 532, 1182 );
setSeVolume( spep_0 + 532, 1182, 0 );
setSeVolume( spep_0 + 537, 1182, 17.7 );
setSeVolume( spep_0 + 538, 1182, 35.4 );
setSeVolume( spep_0 + 539, 1182, 53.1 );
setSeVolume( spep_0 + 540, 1182, 70.8 );
setSeVolume( spep_0 + 541, 1182, 88.5 );
setSeVolume( spep_0 + 542, 1182, 106.2 );
setSeVolume( spep_0 + 543, 1182, 123.9 );
setSeVolume( spep_0 + 544, 1182, 141 );
playSe( spep_0 + 541, 1003 );
playSe( spep_0 + 541, 1126 );
setSeVolume( spep_0 + 541, 1126, 40 );
se_1116 = playSe( spep_0 + 547, 1116 );
playSe( spep_0 + 695, 1062 );
playSe( spep_0 + 695, 1182 );
playSe( spep_0 + 695, 1011 );
stopSe( spep_0 + 65, se_1026, 25 );
stopSe( spep_0 + 196, se_1056, 0 );
stopSe( spep_0 + 547, se_1175, 34 );
stopSe( spep_0 + 570, se_1116, 14 );

--ボイス
--「この痛みがまたオレを強くする！」
playVoice(spep_0,144);
setVoiceVolume(spep_0,144,168);
setVoiceVolume(spep_0,215,168);
setVoiceVolume(spep_0,244,222);
setVoiceVolume(spep_0+217,144,376);
setVoiceVolume(spep_0+255,144,376);
setVoiceVolume(spep_0+256,144,168);

--「神の怒りの強さがいかほどのものなのか」
playVoice(spep_0+364,145);
setVoiceVolume(spep_0+364,145,168);

--「その身に刻み込め！」
playVoice(spep_0+638,146);
setVoiceVolume(spep_0+638,146,168);

--終わり
endPhase( spep_0 + 798 );

else end