--超サイヤ人孫悟飯_アクティブスキル：覚醒

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
SP_01=	3090	;

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
-- 覚醒
------------------------------------------------------
spep_1 = 0;

-- ** エフェクト等 ** --
effct = entryEffect( spep_1 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 

-- ** 音 ** --
playSe( spep_1 + 14, 1126 );  --プツン
setSeVolume( spep_1 + 14,  1126,  80);
SE = playSe( spep_1 + 254,  1125); --咆哮
setSeVolume( spep_1 + 254, 1125, 80);
stopSe( spep_1 + 390,  SE,  50);
playSe( spep_1 + 302,  20);  --地割れ

SE1=playSe( spep_1 + 304,  1044);
setSeVolume(  spep_1 +440,  1044,  50);
--setSeVolume(  spep_1 +820,  1044,  50);
--stopSe( spep_1 + 440,  SE1,  0);
stopSe( spep_1 + 820,  SE1,  0);

SE2=playSe( spep_1 + 440,  55);  --気溜め
stopSe( spep_1 + 820,  SE2,  0);

playSe( spep_1 +612,  1027);  --ピキーン

-- ** ボイス ** --
--うわぁああああああ
playVoice(spep_1+206,131);
setVoiceVolume(spep_1+206,131,500);

--もう許さないぞお前たち
playVoice(spep_1+614, 132);
setVoiceVolume( spep_1+614,  132,  500);

-- ** ダメージ表示 ** --
endPhase( spep_1 + 820 );

else end