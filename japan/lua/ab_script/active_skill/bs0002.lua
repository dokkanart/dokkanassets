--ブロリー アクティブスキル_カカロット

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
SP_01 = 153504;  --


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
-- 叫ぶ
------------------------------------------------------
spep_0=0;
--エフェクト
scream = entryEffect( spep_0,   SP_01,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  scream,  0,  0,  0);
setEffMoveKey( spep_0+420,  scream,  0,  0,  0);
setEffScaleKey( spep_0,  scream,  1.0,  1.0);
setEffScaleKey( spep_0+420,  scream,  1.0,  1.0);
setEffRotateKey(  spep_0,  scream,  0);
setEffRotateKey(  spep_0+420,  scream,  0);
setEffAlphaKey( spep_0,  scream,  255);
setEffAlphaKey( spep_0+420,  scream,  255);


--entryFade(  spep_0+234,  4,  8,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--地鳴り
playSe(spep_0+20,  1044);
setSeVolume(  spep_0+20,  1044,  100);
setSeVolume(  spep_0+38,  1044,  60);
setSeVolume(  spep_0+66,  1044,  20);
stopSe( spep_0+68,  1044);
--ぐうううう
playVoice(spep_0+40,109);
setVoiceVolume(spep_0+40,109,1000);

--オーラを作る
playSe( spep_0+70,  17);
setSeVolume(  spep_0+70,  17,  50);  --小さめ

--全体
--playSe(  spep_0+188,  1002);
--setSeVolume(  spep_0+188,  1002,  100);

--地面割れ
playSe(  spep_0+180,  64);
setSeVolume(  spep_0+180,  64,  200);
setSeVolume(  spep_0+210,  64,  150);

--カカロット
playVoice(spep_0+214,110);
setVoiceVolume(spep_0+214,110,1000);
setVoiceVolume(spep_0+220,110,900);
setVoiceVolume(spep_0+320,110,1000);

--最後
playSe(spep_0+310,  1068);
setSeVolume(  spep_0+310,  1068,  200);

--playSe(spep_0+324,  1024);
--setSeVolume(  spep_0+324,  1024,  100);

--spep_1=spep_0+244;
-- ダメージ表示
--dealDamage(spep_1+16);
entryFade( spep_0+400, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_0+ 420);

else end