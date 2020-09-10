--トランクス_アクティブスキル


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
SP_01 = 1947;  --全部
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
-- 全部
------------------------------------------------------
spep_0=0;
--エフェクト
all = entryEffect( spep_0,   SP_01,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  all,  0,  0,  0);
setEffMoveKey( spep_0+1022,  all,  0,  0,  0);
setEffScaleKey( spep_0,  all,  1.0,  1.0);
setEffScaleKey( spep_0+1022,  all,  1.0,  1.0);
setEffRotateKey(  spep_0,  all,  0);
setEffRotateKey(  spep_0+1022,  all,  0);
setEffAlphaKey( spep_0,  all,  255);
setEffAlphaKey( spep_0+1022,  all,  255);

--SE
playSe(spep_0,1072); --子供達が空を眺める

playSe(spep_0+60,8); --流れ星のおと
setSeVolume(spep_0+60,8,40);

playSe(spep_0+80,8); --流れ星のおと
setSeVolume(spep_0+80,8,40);

playSe(spep_0+100,8); --流れ星のおと
setSeVolume(spep_0+100,8,40);

playSe(spep_0+124,1013); --マイが振り返る音

playSe( spep_0+184 , 3 );--光が集まる
setSeVolume(spep_0+184,3,60);

playSe(spep_0+451,1012); --ジャンプする

playSe(spep_0+568,1073); --球が大きくなる
setSeVolume(spep_0+568,1073,150);

playSe(spep_0+656,1018); --カットイン

SE=playSe( spep_0+714 , 15 );--光が集まる
stopSe( spep_0+776, SE, 0 );

playSe(spep_0+778,1022); --気がたまる
setSeVolume(spep_0+778,1022,90);

playSe(spep_0+840,55); --気を貯める
setSeVolume(spep_0+840,55,50);

playSe(spep_0+866,1062); --気がたまる

playSe(spep_0+900,9); --気がたまる
setSeVolume(spep_0+900,9,65);


--ボイス
--これは…
playVoice(spep_0+197,111);
setVoiceVolume(spep_0+197,111,500);

--この星に生きるみんなの気だ…!
playVoice(spep_0+267,112);
setVoiceVolume(spep_0+267,112,500);

--みんなの力を
playVoice(spep_0+515,113);
setVoiceVolume(spep_0+515,113,500);

--オレに貸してくれ！
playVoice(spep_0+590,114);
setVoiceVolume(spep_0+590,114,500);

--行くぞみんな
--オレに貸してくれ！
playVoice(spep_0+907,115);
setVoiceVolume(spep_0+907,115,500);

entryFade( spep_0+1010, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_0+ 1020);

else end