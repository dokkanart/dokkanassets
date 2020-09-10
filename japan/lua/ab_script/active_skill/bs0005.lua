--1019400:ナッパ/ベジータ_ナッパよけろーっ！！！(アクティブスキル)
--sp_effect_b4_00138

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
SP_01=	155211;

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
setEffMoveKey( spep_0 + 300, effct, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, effct, 1.0, 1.0 );
setEffScaleKey( spep_0 + 300, effct, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, effct, 0 );
setEffRotateKey( spep_0 + 300, effct, 0 );
setEffAlphaKey( spep_0 + 0, effct, 255 );
setEffAlphaKey( spep_0 + 300, effct, 255 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_0 -3 + 112,  10001, 56, 0x100, -1, 0, 143.5, 350.9 );--!?

a=55;
b=65;

setEffMoveKey( spep_0 -3 + 112, ctbikkuri, 143.5+a, 350.9-b , 0 );
setEffMoveKey( spep_0 -3 + 114, ctbikkuri, 136.1+a, 384.5-b , 0 );
setEffMoveKey( spep_0 -3 + 116, ctbikkuri, 113.8+a, 485-b , 0 );
setEffMoveKey( spep_0 -3 + 118, ctbikkuri, 114.8+a, 480.6-b , 0 );
setEffMoveKey( spep_0 -3 + 120, ctbikkuri, 117.7+a, 467.5-b , 0 );
setEffMoveKey( spep_0 -3 + 122, ctbikkuri, 122.6+a, 445.5-b , 0 );
setEffMoveKey( spep_0 -3 + 168, ctbikkuri, 122.6+a, 445.5-b , 0 );

setEffScaleKey( spep_0 -3 + 112, ctbikkuri, 2.38, 2.55 );
setEffScaleKey( spep_0 -3 + 114, ctbikkuri, 3.01, 3.22 );
setEffScaleKey( spep_0 -3 + 116, ctbikkuri, 4.9, 5.24 );
setEffScaleKey( spep_0 -3 + 118, ctbikkuri, 4.82, 5.16 );
setEffScaleKey( spep_0 -3 + 120, ctbikkuri, 4.57, 4.89 );
setEffScaleKey( spep_0 -3 + 122, ctbikkuri, 3.82, 4.75 );
setEffScaleKey( spep_0 -3 + 168, ctbikkuri, 3.82, 4.75 );

setEffRotateKey( spep_0 -3 + 112, ctbikkuri,30 );
setEffRotateKey( spep_0 -3 + 168, ctbikkuri, 30 );

setEffAlphaKey( spep_0 -3 + 112, ctbikkuri, 255 );
setEffAlphaKey( spep_0 -3 + 168, ctbikkuri, 255 );


-- ** 音 ** --
se_1116 = playSe( spep_0 + 4, 1116 );
setSeVolume( spep_0 + 4, 1116, 126 );
playSe( spep_0 + 15, 20 );
setSeVolume( spep_0 + 15, 20, 40 );
playSe( spep_0 + 15, 1237 );
setSeVolume( spep_0 + 15, 1237, 56 );
playSe( spep_0 + 106, 1042 );
setSeVolume( spep_0 + 106, 1042, 89 );
playSe( spep_0 + 111, 48 );
playSe( spep_0 + 182, 1003 );
playSe( spep_0 + 217, 1072 );
playSe( spep_0 + 251, 1114 );
setSeVolume( spep_0 + 251, 1114, 89 );
playSe( spep_0 + 253, 1062 );
setSeVolume( spep_0 + 253, 1062, 112 );
playSe( spep_0 + 253, 1033 );
setSeVolume( spep_0 + 253, 1033, 89 );

stopSe( spep_0 + 23, se_1116, 10 );

-- ** ボイス ** --
--ナッパよけろーっ！！！
playVoice(spep_0  +4, 157 );
setVoiceVolume(spep_0  +4, 157, 158 );

-- ** ダメージ表示 ** --
endPhase( spep_0 + 300  );

else end