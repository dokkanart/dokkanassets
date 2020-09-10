--クウラ_アクティブスキル：変身

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
SP_01=	3094;

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

-- ** 音 ** --
--最初から流れてる滝
SE1 = playSe( spep_1 + 0, 1164 );
setSeVolume( spep_1 + 0,  1164,  150);
stopSe( spep_1 + 1130, SE1, 0 );

--最後だぁ…あたりの水しぶき
playSe( spep_1 + 354,  1165);
setSeVolume( spep_1 + 354, 1165, 124);

--白目になるあたりの音(胸膨らむ)
playSe( spep_1 + 480,  1125);
setSeVolume( spep_1 + 480, 1125, 140);
playSe( spep_1 + 480 +4,  1002);
setSeVolume( spep_1 + 480 +4, 1002, 120 + 20);
playSe( spep_1 + 480 +4,  1014);

--足大きくなる
playSe( spep_1 + 560,  1169);
setSeVolume( spep_1 + 560, 1169, 120);

--頭
playSe( spep_1 + 610,  1170);
setSeVolume( spep_1 + 610, 1170, 120);

--手元
playSe( spep_1 + 706 +6,  1171);
setSeVolume( spep_1 + 706 +6, 1171, 120);
playSe( spep_1 + 706,  1169);
setSeVolume( spep_1 + 706, 1169, 90);

--マスクの音
playSe( spep_1 + 1028 -10,  1150);
setSeVolume( spep_1 + 1028 -10, 1150, 116);

--カットイン
playSe( spep_1 + 292, 1018 );

-- ** ボイス ** --
--光栄に思うが良い
playVoice(spep_1 + 6 -1, 133 );
setVoiceVolume(spep_1 + 6 -1, 133, 260 );

--さあはじめようか！
playVoice(spep_1 + 880 -3, 134);
setVoiceVolume( spep_1 + 880 -3, 134, 260 );

-- ** ダメージ表示 ** --
endPhase( spep_1 + 1130 );

else end