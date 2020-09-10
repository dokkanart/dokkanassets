--超サイヤ人孫悟空/超サイヤ人孫悟飯（少年期）_交代アクティブスキル


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
SP_01 = 153897; --悟空気溜め
SP_02 = 153898; --悟空悟飯会話
SP_03 = 153899; --悟飯気溜め


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI(0, 0);

changeAnime( 0, 0, 1);                       -- 立ち
changeAnime( 0, 1, 101);                       -- 立ち
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
--悟空気溜め(76F)
------------------------------------------------------
spep_0 = 0;
-- ** エフェクト等 ** -- 
goku = entryEffectLife( spep_0 + 0, SP_01, 76, 0x80, -1, 2, 4, 0 ); --悟空気溜め(ef_001)

setEffMoveKey( spep_0 + 0, goku, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, goku, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, goku, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, goku, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, goku, 0 );
setEffRotateKey( spep_0 + 76, goku, 0 );
setEffAlphaKey( spep_0 + 0, goku, 255 );
setEffAlphaKey( spep_0 + 76, goku, 255 );

-- ** 音 ** --
playSe( spep_0 + 5, 1018 );

-- ** 白フェード ** --
entryFade( spep_0 + 70, 4, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_0,  55);
setSeVolume( spep_0,  55,  100);
setSeVolume(  spep_0+60,  55,  80);
setSeVolume(  spep_0+62,  55,  70);
setSeVolume(  spep_0+64,  55,  60);
setSeVolume(  spep_0+66,  55,  50);
setSeVolume(  spep_0+68,  55,  40);
setSeVolume(  spep_0+70,  55,  30);
--setSeVolume(  spep_0+72,  55,  60);
--setSeVolume(  spep_0+74,  55,  40);

stopSe( spep_0 +74,  SE1,  10);

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
--悟空と悟飯(88F)
------------------------------------------------------
-- ** エフェクト等 ** -- 
kaiwa = entryEffectLife( spep_1 + 0, SP_02, 160, 0x80, -1, 2, 4, 0 ); --悟空と悟飯の会話(ef_002)

setEffMoveKey( spep_1 + 0, kaiwa, 0, 0, 0 );
setEffMoveKey( spep_1 + 160, kaiwa, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kaiwa, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, kaiwa, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kaiwa, 0 );
setEffRotateKey( spep_1 + 160, kaiwa, 0 );
setEffAlphaKey( spep_1 + 0, kaiwa, 255 );
setEffAlphaKey( spep_1 + 160, kaiwa, 255 );


-- ** 音 ** --
playSe( spep_1 +0 , 8 );
setSeVolume( spep_1 + 0,  8,  80);


-- ** 白フェード ** --
entryFade( spep_1 + 154, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 160;

------------------------------------------------------
--悟飯気溜め(240F)
------------------------------------------------------
-- ** エフェクト等 ** -- 
gohan = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 2, 4, 0 ); --悟飯気溜め(ef_003)

setEffMoveKey( spep_2 + 0, gohan, 0, 0, 0 );
setEffMoveKey( spep_2 + 240, gohan, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, gohan, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, gohan, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, gohan, 0 );
setEffRotateKey( spep_2 + 240, gohan, 0 );
setEffAlphaKey( spep_2 + 0, gohan, 255 );
setEffAlphaKey( spep_2 + 240, gohan, 255 );

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 - 3 + 60,  906, 178, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 - 3 + 60, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 146, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 148, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 150, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 152, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 154, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 156, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 - 3 + 238, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 - 3 + 60, shuchusen, 2.26, 2.7 );
setEffScaleKey( spep_2 - 3 + 146, shuchusen, 2.26, 2.7 );
setEffScaleKey( spep_2 - 3 + 148, shuchusen, 1.25, 1.5 );
setEffScaleKey( spep_2 - 3 + 150, shuchusen, 1.34, 1.6 );
setEffScaleKey( spep_2 - 3 + 152, shuchusen, 1.43, 1.7 );
setEffScaleKey( spep_2 - 3 + 154, shuchusen, 1.52, 1.8 );
setEffScaleKey( spep_2 - 3 + 156, shuchusen, 1.25, 1.5 );
setEffScaleKey( spep_2 - 3 + 238, shuchusen, 1.25, 1.5 );

setEffRotateKey( spep_2 + 60 - 3, shuchusen, 0 );
setEffRotateKey( spep_2 + 238 - 3, shuchusen, 0 );

setEffAlphaKey( spep_2 - 3 + 60, shuchusen, 51 );
setEffAlphaKey( spep_2 - 3 + 62, shuchusen, 102 );
setEffAlphaKey( spep_2 - 3 + 64, shuchusen, 153 );
setEffAlphaKey( spep_2 - 3 + 66, shuchusen, 204 );
setEffAlphaKey( spep_2 - 3 + 68, shuchusen, 255 );
setEffAlphaKey( spep_2 - 3 + 238, shuchusen, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 148, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 30 -3,  1003);  --頷く
setSeVolume(  spep_2 + 30 -3,  1003,  50);
playSe( spep_2 + 60 - 3, 1018 );  --カットイン
playSe( spep_2 + 148 -3,  1035);  --気溜め
SE2 = playSe( spep_2 + 158,  55);
stopSe( spep_2+240,  SE2,  0);

endPhase(spep_2 + 228);
else end