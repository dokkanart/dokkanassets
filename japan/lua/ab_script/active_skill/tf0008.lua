--人造人間17号&18号/人造人間16号_アクティブスキル：交代

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
SP_01 = 3092;

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
-- 交代
------------------------------------------------------
spep_1 = 0;

-- ** エフェクト等 ** --
effct = entryEffect( spep_1 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, effct, 0, 0 , 0 );
setEffMoveKey( spep_1 + 644, effct, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, effct, 1.0, 1.0 );
setEffScaleKey( spep_1 + 644, effct, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, effct, 0 );
setEffRotateKey( spep_1 + 644, effct, 0 );
setEffAlphaKey( spep_1 + 0, effct, 255 );
setEffAlphaKey( spep_1 + 644, effct, 255 );

-- ** 音 ** --
playSe( spep_1 + 20, 1108 );  --足音
playSe( spep_1 + 50, 1108 );  --足音
playSe( spep_1 + 82, 1108 );  --足音
playSe( spep_1 + 110, 1108 );  --足音
playSe( spep_1 + 140, 1108 );  --足音
playSe( spep_1 + 170, 1108 );  --足音
playSe( spep_1 + 200, 1108 );  --足音

playSe( spep_1 + 240, 1108 );  --足音
playSe( spep_1 + 274, 1108 );  --足音
playSe( spep_1 + 322, 1108 );  --足音

playSe( spep_1 + 0, 8 );  --迫る音
setSeVolume( spep_1 + 0,  8,  75);

playSe( spep_1 + 242, 1018 );  --カットイン
playSe( spep_1 + 558, 9 );  --顔アップ
setSeVolume( spep_1 + 558,  9,  80);

-- ** ボイス ** --
--やるじゃないか
playVoice(spep_1+0,126);
setVoiceVolume(spep_1+0,126,130);

--16号!?
playVoice(spep_1+106,127);
setVoiceVolume(spep_1+106,127,130);

--闘う時がきた
playVoice(spep_1+362,128);
setVoiceVolume(spep_1+362,128,220);

-- ** 最後 ** --
endPhase( spep_1 + 644 );

else end