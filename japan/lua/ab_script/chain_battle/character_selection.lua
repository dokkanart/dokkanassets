-- chara select


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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

multi_frm = 2;

setDisp(  0,  0,  0);
changeAnime(  0,  0,  100);
setMoveKey(   0,   0,   0, 7000 , 0 );
setMoveKey(   1,   0,   0, 7000 , 0 );
setMoveKey(   2,   0,   0, 7000 , 0 );
setMoveKey(   3,   0,   0, 7000 , 0 );
setMoveKey(   4,   0,   0, 7000 , 0 );
setMoveKey(   5,   0,   0, 7000 , 0 );
setMoveKey(   6,   0,   0, 7000 , 0 );
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

--setEnableAura( 0,  1,  0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;

spep_0 = 0;

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0,  906, 1800, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1800, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen, 0.89, 1.34 );
setEffScaleKey( spep_0 + 1800, shuchusen, 0.89, 1.34 );
setEffRotateKey( spep_0 + 0, shuchusen, 0 );
setEffRotateKey( spep_0 + 1800, shuchusen, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen, 255 );
setEffAlphaKey( spep_0 + 1800, shuchusen, 255 );

-- ** 敵 ** --
setDisp( spep_0 + 0, 1, 1 );
--setDisp( spep_0 + 1800, 1, 0 );
changeAnime( spep_0 + 0, 1, 116 );
setMoveKey( spep_0 + 0, 1, 0, 91.9 , 0 );
setMoveKey( spep_0 + 1800, 1, 0, 91.9 , 0 );
setScaleKey( spep_0 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 1800, 1, 2.5, 2.5 );
setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1800, 1, 0 );

entryFadeBg( spep_0 + 0,  0, 1800,  0,  40,  6,  6,  255);  --茶色

-- ** SE ** --
playSe( spep_0 + 0,  1019);
setSeVolume( spep_0 + 0,  1019,  141);

-- end phaseに到達するまでに各種キーが尽きると初期化されてしまうので、キーの寿命よりもend phaseを短くする
endPhase(spep_0 + 1700);
