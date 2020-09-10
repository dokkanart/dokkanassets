--1017490:ピッコロ_神と融合
--battle_300352

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
SP_01=	3079	;

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
-- アイドリング
------------------------------------------------------
spep_1 = 0;

-- ** エフェクト等 ** --
effct = entryEffect( spep_1 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, effct, 0, 0 , 0 );
setEffMoveKey( spep_1 + 786, effct, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, effct, 1.0, 1.0 );
setEffScaleKey( spep_1 + 786, effct, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, effct, 0 );
setEffRotateKey( spep_1 + 786, effct, 0 );
setEffAlphaKey( spep_1 + 0, effct, 255 );
setEffAlphaKey( spep_1 + 786, effct, 255 );

-- ** 音 ** --
playSe( spep_1 + 20, 1018 );  --カットイン
playSe( spep_1 + 120, 1022 );  --ため
SE1=playSe( spep_1 + 170, 1122 );  --飲み込まれる
--setSeVolume(spep_1 + 170, 1122,140);
--stopSe( spep_1 + 220, SE1, 38 );
playSe( spep_1 + 539, 1013 );  --マントを上にあげる
setSeVolume(spep_1 + 539, 1013,100);
playSe( spep_1 + 583, 8 );  --マントをとる
setSeVolume(spep_1 + 583, 8,300);
--playSe( spep_1 + 641, 1012 );  --マントなげる
--setSeVolume(spep_1 + 641, 1012,250);

--声
playVoice(spep_1+270,123);

setVoiceVolume(spep_1+270,123,224);
setVoiceVolume(spep_1+307,123,224);
setVoiceVolume(spep_1+308,123,126);
setVoiceVolume(spep_1+387,123,126);
setVoiceVolume(spep_1+388,123,118.4);
setVoiceVolume(spep_1+389,123,113.8);
setVoiceVolume(spep_1+390,123,109.2);
setVoiceVolume(spep_1+391,123,104.6);
setVoiceVolume(spep_1+392,123,100);

setVoiceVolume(spep_1+451,123,398);
setVoiceVolume(spep_1+452,123,338.4);
setVoiceVolume(spep_1+453,123,278.8);
setVoiceVolume(spep_1+454,123,219.2);
setVoiceVolume(spep_1+455,123,159.6);
setVoiceVolume(spep_1+456,123,100);

setVoiceVolume(spep_1+467,123,126);
setVoiceVolume(spep_1+468,123,200);
setVoiceVolume(spep_1+492,123,126);
setVoiceVolume(spep_1+563,123,126);
setVoiceVolume(spep_1+564,123,224);
setVoiceVolume(spep_1+591,123,224);
setVoiceVolume(spep_1+592,123,126);
setVoiceVolume(spep_1+620,123,126);

setVoiceVolume(spep_1+621,123,282);
setVoiceVolume(spep_1+622,123,288.15);
setVoiceVolume(spep_1+623,123,294.3);
setVoiceVolume(spep_1+624,123,300.45);
setVoiceVolume(spep_1+625,123,306.6);
setVoiceVolume(spep_1+626,123,312.75);
setVoiceVolume(spep_1+627,123,318.9);
setVoiceVolume(spep_1+628,123,325.05);
setVoiceVolume(spep_1+629,123,331.2);
setVoiceVolume(spep_1+630,123,337.35);
setVoiceVolume(spep_1+631,123,343.5);
setVoiceVolume(spep_1+632,123,349.65);
setVoiceVolume(spep_1+633,123,355.8);
setVoiceVolume(spep_1+634,123,361.95);
setVoiceVolume(spep_1+635,123,368.1);
setVoiceVolume(spep_1+636,123,374.25);
setVoiceVolume(spep_1+637,123,380.4);
setVoiceVolume(spep_1+638,123,386.55);
setVoiceVolume(spep_1+639,123,392.7);
setVoiceVolume(spep_1+640,123,398.85);
setVoiceVolume(spep_1+641,123,405);
setVoiceVolume(spep_1+642,123,411.15);
setVoiceVolume(spep_1+643,123,417.29);
setVoiceVolume(spep_1+644,123,423.44);
setVoiceVolume(spep_1+645,123,429.59);
setVoiceVolume(spep_1+646,123,435.74);
setVoiceVolume(spep_1+647,123,441.89);
setVoiceVolume(spep_1+648,123,448.04);
setVoiceVolume(spep_1+649,123,454.19);
setVoiceVolume(spep_1+650,123,460.34);
setVoiceVolume(spep_1+651,123,466.49);
setVoiceVolume(spep_1+652,123,472.64);
setVoiceVolume(spep_1+653,123,478.79);
setVoiceVolume(spep_1+654,123,484.94);
setVoiceVolume(spep_1+655,123,491.09);
setVoiceVolume(spep_1+656,123,497.24);
setVoiceVolume(spep_1+657,123,503.39);
setVoiceVolume(spep_1+658,123,509.54);
setVoiceVolume(spep_1+659,123,515.69);
setVoiceVolume(spep_1+660,123,552);



--[[
setVoiceVolume(spep_1+280,123,278);
setVoiceVolume(spep_1+317,123,278);
setVoiceVolume(spep_1+318,123,200);

setVoiceVolume(spep_1+397,123,236);
setVoiceVolume(spep_1+398,123,272);
setVoiceVolume(spep_1+399,123,308);
setVoiceVolume(spep_1+400,123,344);
setVoiceVolume(spep_1+401,123,380);
setVoiceVolume(spep_1+402,123,416);

setVoiceVolume(spep_1+461,123,416);
setVoiceVolume(spep_1+462,123,373);
setVoiceVolume(spep_1+463,123,330);
setVoiceVolume(spep_1+464,123,287);
setVoiceVolume(spep_1+465,123,244);
setVoiceVolume(spep_1+466,123,200);
setVoiceVolume(spep_1+477,123,200);
setVoiceVolume(spep_1+478,123,258);
setVoiceVolume(spep_1+501,123,258);
setVoiceVolume(spep_1+502,123,200);
setVoiceVolume(spep_1+573,123,258);
setVoiceVolume(spep_1+574,123,278);
setVoiceVolume(spep_1+601,123,278);
setVoiceVolume(spep_1+602,123,200);
setVoiceVolume(spep_1+630,123,200);
setVoiceVolume(spep_1+631,123,324);

setVoiceVolume(spep_1+631,123,324);
setVoiceVolume(spep_1+632,123,329.9);
setVoiceVolume(spep_1+633,123,335.8);
setVoiceVolume(spep_1+634,123,341.7);
setVoiceVolume(spep_1+635,123,347.6);
setVoiceVolume(spep_1+636,123,353.5);
setVoiceVolume(spep_1+637,123,359.4);
setVoiceVolume(spep_1+638,123,365.3);
setVoiceVolume(spep_1+639,123,371.2);
setVoiceVolume(spep_1+640,123,377.1);
setVoiceVolume(spep_1+641,123,383);
setVoiceVolume(spep_1+642,123,388.9);
setVoiceVolume(spep_1+643,123,394.8);
setVoiceVolume(spep_1+644,123,400.7);
setVoiceVolume(spep_1+645,123,406.6);
setVoiceVolume(spep_1+646,123,412.5);
setVoiceVolume(spep_1+647,123,418.4);
setVoiceVolume(spep_1+648,123,424.3);
setVoiceVolume(spep_1+649,123,430.2);
setVoiceVolume(spep_1+650,123,436.1);
setVoiceVolume(spep_1+651,123,442);
setVoiceVolume(spep_1+652,123,447.9);
setVoiceVolume(spep_1+653,123,453.7);
setVoiceVolume(spep_1+654,123,459.6);
setVoiceVolume(spep_1+655,123,465.5);
setVoiceVolume(spep_1+656,123,471.4);
setVoiceVolume(spep_1+657,123,477.3);
setVoiceVolume(spep_1+658,123,483.2);
setVoiceVolume(spep_1+659,123,489.1);
setVoiceVolume(spep_1+660,123,495.0);
setVoiceVolume(spep_1+661,123,500.9);
setVoiceVolume(spep_1+662,123,506.8);
setVoiceVolume(spep_1+663,123,512.7);
setVoiceVolume(spep_1+664,123,518.6);
setVoiceVolume(spep_1+665,123,524.5);
setVoiceVolume(spep_1+666,123,530.4);
setVoiceVolume(spep_1+667,123,536.3);
setVoiceVolume(spep_1+668,123,542.2);
setVoiceVolume(spep_1+669,123,548.1);
setVoiceVolume(spep_1+670,123,562);
]]
-- ** ダメージ表示 ** --
endPhase( spep_1 + 780 );

else end