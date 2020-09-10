--1019490:グレートサイヤマン2号/1号_交代演出
--sp_effect_a9_00065

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

--エフェクト(味方)
SP_01=	155567	;--	２号→１号へ交代

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 360, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 360, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 360, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 360, active, 255 );

-------------------------------------------
--SE
-------------------------------------------
--１号着地
playSe( spep_0 + 10, 38 );
SE0=playSe( spep_0 + 10, 44 );
setSeVolume( spep_0 + 10, 44, 40 );
playSe( spep_0 + 30, 1106 );
setSeVolume( spep_0 + 30, 1106, 141 );
playSe( spep_0 + 32, 1107 );
setSeVolume( spep_0 + 32, 1107, 158 );

stopSe( spep_0 + 27, SE0, 7 );

--２号かけよる
playSe( spep_0 + 48, 1108 );
setSeVolume( spep_0 + 48, 1108, 52 );
playSe( spep_0 + 64, 1108 );
playSe( spep_0 + 78, 1108 );
playSe( spep_0 + 94, 1108 );
setSeVolume( spep_0 + 94, 1108, 44 );
playSe( spep_0 + 108, 1108 );
setSeVolume( spep_0 + 108, 1108, 32 );
playSe( spep_0 + 124, 1108 );
setSeVolume( spep_0 + 124, 1108, 21 );

--悟飯くんいけー！
playSe( spep_0 + 148, 1003 );
setSeVolume( spep_0 + 148, 1003, 88 );
playSe( spep_0 + 154, 1062 );
setSeVolume( spep_0 + 154, 1062, 89 );
playSe( spep_0 + 154, 1051 );
setSeVolume( spep_0 + 154, 1051, 54 );
playSe( spep_0 + 154, 46 );
setSeVolume( spep_0 + 154, 46, 50 );

--目線カットイン
playSe( spep_0 + 222, 1018 );

--悟飯くん本気モード
playSe( spep_0 + 270, 1197 );
setSeVolume( spep_0 + 270, 1197, 90 );
playSe( spep_0 + 272, 1232 );
setSeVolume( spep_0 + 272, 1232, 71 );
playSe( spep_0 + 272, 1035 );
playSe( spep_0 + 274, 1197 );
setSeVolume( spep_0 + 274, 1197, 100 );

endPhase( spep_0 + 350 );
else end

