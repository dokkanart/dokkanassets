--1020130:界王神＆キビト_合体演出
--sp_effect_b4_00153

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
SP_01=	155722	;--	合体演出

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
setEffMoveKey( spep_0 + 460, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 460, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 460, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 460, active, 255 );

-------------------------------------------
--SE
-------------------------------------------
--目線カットイン
playSe( spep_0 + 8, 1018 );

--キビトポタラつける
playSe( spep_0 + 94, 21 );
setSeVolume( spep_0 + 94, 21, 32 );

--界王神ポタラつける
playSe( spep_0 + 140, 21 );
setSeVolume( spep_0 + 140, 21, 32 );

--キビトと界王神惹かれ合う
SE0=playSe( spep_0 + 168, 1175 );
setSeVolume( spep_0 + 168, 1175, 18 );
SE1=playSe( spep_0 + 170, 1231 );
setSeVolume( spep_0 + 170, 1231, 67 );
SE2=playSe( spep_0 + 178, 44 );
SE3=playSe( spep_0 + 188, 1230 );
setSeVolume( spep_0 + 188, 1230, 76 );
SE4=playSe( spep_0 + 216, 44 );

stopSe( spep_0 + 258, SE0, 0 );
stopSe( spep_0 + 258, SE1, 0 );
stopSe( spep_0 + 258, SE2, 0 );
stopSe( spep_0 + 258, SE3, 0 );
stopSe( spep_0 + 258, SE4, 0 );

--合体
playSe( spep_0 + 244, 1017 );
setSeVolume( spep_0 + 244, 1017, 73 );
playSe( spep_0 + 250, 1188 );
setSeVolume( spep_0 + 250, 1188, 53 );
playSe( spep_0 + 254, 1059 );
setSeVolume( spep_0 + 254, 1059, 63 );
playSe( spep_0 + 262, 1273 );
setSeVolume( spep_0 + 262, 1273, 145 );
playSe( spep_0 + 270, 1274 );
setSeVolume( spep_0 + 270, 1274, 129 );
playSe( spep_0 + 270, 1275 );
setSeVolume( spep_0 + 270, 1275, 143 );

--決め
playSe( spep_0 + 354, 1062 );

entryFade( spep_0 + 460 -40, 10, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 460 );
else end

