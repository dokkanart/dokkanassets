
-- 4017130 合体ザマスアクティブ変身演出

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
SP_01 = 1946;  --

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
-- 変身
------------------------------------------------------
spep_0 = 0 ;

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 16, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- 終始黒背景
entryFadeBg( spep_0, 0, spep_0 + 862, 0, 0, 0, 0, 255);

-- ザマス変身 エフェクト
zamasuhenshin = entryEffect( spep_0,  SP_01, 0x100, -1, 0, 0, 0);
setEffMoveKey( spep_0,zamasuhenshin,  0,  0);
setEffMoveKey( spep_0 + 858,zamasuhenshin,  0,  0);

setEffScaleKey( spep_0, zamasuhenshin, 1.0, 1.0);
setEffScaleKey( spep_0 + 858, zamasuhenshin, 1.0, 1.0);

setEffAlphaKey( spep_0, zamasuhenshin, 255);
setEffAlphaKey( spep_0 + 858, zamasuhenshin, 255);

setEffRotateKey( spep_0, zamasuhenshin, 0);
setEffRotateKey( spep_0 + 858, zamasuhenshin, 0);

-- 集中線
shuchusen_1 = entryEffectLife( spep_0,  906, 118, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0, shuchusen_1, 16, 25 );

setEffMoveKey( spep_0, shuchusen_1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 118, shuchusen_1, 0, 0 , 0 );

setEffScaleKey( spep_0, shuchusen_1, 1.8, 1.8 );
setEffScaleKey( spep_0 + 118, shuchusen_1, 1.8, 1.8 );

setEffRotateKey( spep_0, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 118, shuchusen_1, 0 );

setEffAlphaKey( spep_0, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 110, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 118, shuchusen_1, 0 );

-- 集中線
shuchusen_2 = entryEffectLife( spep_0 + 448,  906, 30, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 448, shuchusen_2, 34, 25 );

setEffMoveKey( spep_0 + 448, shuchusen_2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 478, shuchusen_2, 0, 0 , 0 );

setEffScaleKey( spep_0 + 448, shuchusen_2, 1.8, 1.8 );
setEffScaleKey( spep_0 + 478, shuchusen_2, 1.8, 1.8 );

setEffRotateKey( spep_0 + 448, shuchusen_2, 0 );
setEffRotateKey( spep_0 + 478, shuchusen_2, 0 );

setEffAlphaKey( spep_0 + 448, shuchusen_2, 255 );
setEffAlphaKey( spep_0 + 478, shuchusen_2, 255 );


-- 集中線
shuchusen_3 = entryEffectLife( spep_0 + 488,  906, 112, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 488, shuchusen_3, 112, 25 );

setEffMoveKey( spep_0 + 488, shuchusen_3, 0, 0 , 0 );
setEffMoveKey( spep_0 + 604, shuchusen_3, 0, 0 , 0 );

setEffScaleKey( spep_0 + 488, shuchusen_3, 1.8, 1.8 );
setEffScaleKey( spep_0 + 604, shuchusen_3, 1.8, 1.8 );

setEffRotateKey( spep_0 + 488, shuchusen_3, 0 );
setEffRotateKey( spep_0 + 604, shuchusen_3, 0 );

setEffAlphaKey( spep_0 + 488, shuchusen_3, 255 );
setEffAlphaKey( spep_0 + 604, shuchusen_3, 255 );

-- 集中線
shuchusen_4 = entryEffectLife( spep_0 + 656,  906, 30, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 656, shuchusen_4, 30, 25 );

setEffMoveKey( spep_0 + 656, shuchusen_4, 0, -300 , 0 );
setEffMoveKey( spep_0 + 686, shuchusen_4, 0, -300 , 0 );

setEffScaleKey( spep_0 + 656, shuchusen_4, 1.8, 1.8 );
setEffScaleKey( spep_0 + 686, shuchusen_4, 1.8, 1.8 );

setEffRotateKey( spep_0 + 656, shuchusen_4, 0 );
setEffRotateKey( spep_0 + 686, shuchusen_4, 0 );

setEffAlphaKey( spep_0 + 656, shuchusen_4, 255 );
setEffAlphaKey( spep_0 + 686, shuchusen_4, 255 );

-- 集中線
shuchusen_5 = entryEffectLife( spep_0 + 722,  906, 10, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 722, shuchusen_5, 10, 25 );

setEffMoveKey( spep_0 + 722, shuchusen_5, 0, 0 , 0 );
setEffMoveKey( spep_0 + 732, shuchusen_5, 0, 0 , 0 );

setEffScaleKey( spep_0 + 722, shuchusen_5, 1.8, 1.8 );
setEffScaleKey( spep_0 + 732, shuchusen_5, 1.8, 1.8 );

setEffRotateKey( spep_0 + 722, shuchusen_5, 0 );
setEffRotateKey( spep_0 + 732, shuchusen_5, 0 );

setEffAlphaKey( spep_0 + 722, shuchusen_5, 255 );
setEffAlphaKey( spep_0 + 732, shuchusen_5, 255 );

-- 集中線
shuchusen_6 = entryEffectLife( spep_0 + 742,  906, 58, 0x100, -1, 0, 0, 0 ); 
setEffShake( spep_0 + 742, shuchusen_6, 58, 25 );

setEffMoveKey( spep_0 + 742, shuchusen_6, 0, 0 , 0 );
setEffMoveKey( spep_0 + 800, shuchusen_6, 0, 0 , 0 );

setEffScaleKey( spep_0 + 742, shuchusen_6, 1.8, 1.8 );
setEffScaleKey( spep_0 + 800, shuchusen_6, 1.8, 1.8 );

setEffRotateKey( spep_0 + 742, shuchusen_6, 0 );
setEffRotateKey( spep_0 + 800, shuchusen_6, 0 );

setEffAlphaKey( spep_0 + 742, shuchusen_6, 255 );
setEffAlphaKey( spep_0 + 800, shuchusen_6, 255 );

-- SEとボイス

--正義の光よ我を討て！ 悪を滅せぬ弱き神は… 不要なり！ー
playVoice(spep_0,117);
setVoiceVolume(spep_0,117,500);
setVoiceVolume(spep_0+ 220,117,700);
setVoiceVolume(spep_0+ 407,117,600);


playSe(  spep_0 + 50,  1055);
setSeVolume( spep_0 + 50,  1055,  50);
playSe(  spep_0 + 120,  1056);
setSeVolume( spep_0 + 120,  1056,  50);
playSe(  spep_0 + 300,  1038);

--playSe(spep_0 + 484 ,1056); -- 雷
playSe(spep_0 + 500 ,1068); -- 雷

playSe(spep_0 + 534,1018); -- カットイン

playSe(spep_0 + 620,1008); -- 着地
playSe(spep_0 + 660,1002); -- 拳ドスン

playSe(spep_0 + 706,1034); -- 気を貯める
playSe(spep_0 + 726,1034); -- 気を貯める

playSe(spep_0 + 742,1052); -- 最後のオーラ
playSe(spep_0 + 750,1047); -- 最後のオーラ
playSe(spep_0 + 760,1055); -- 最後のオーラ
playSe(spep_0 + 762,1024);
--seID_2 = playSe(spep_0 + 794,12); -- 最後のオーラ
stopSe( spep_0 + 794, seID_2, 60);

entryFade( spep_0+860, 2,  2, 2, fcolor_r, fcolor_g, fcolor_b, 255); 
endPhase(spep_0+ 862);

else end

