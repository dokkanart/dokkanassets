--パン_アクティブスキル
--sp_effect_a2_00100

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
SP_01 = 152836;  --
SP_02 = 152776;  --クリリン攻撃

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
-- 羽ばたくとこ
------------------------------------------------------
spep_0=0;
--エフェクト
jump = entryEffect( spep_0,   SP_01,   0x100,  -1,  0,  0,  0);

setEffMoveKey( spep_0,  jump,  0,  0,  0);
setEffMoveKey( spep_0+244,  jump,  0,  0,  0);
setEffScaleKey( spep_0,  jump,  1.0,  1.0);
setEffScaleKey( spep_0+244,  jump,  1.0,  1.0);
setEffRotateKey(  spep_0,  jump,  0);
setEffRotateKey(  spep_0+244,  jump,  0);
setEffAlphaKey( spep_0,  jump,  255);
setEffAlphaKey( spep_0+244,  jump,  255);
setEffAlphaKey( spep_0+266,  jump,  255);

--entryFade(  spep_0+234,  4,  8,  4,  fcolor_r,  fcolor_b,  fcolor_g,  255);  --white fade

--行くわよー
--playSe(spep_0,1074);
--setSeVolume(spep_0,1074,150);
playVoice(spep_0,93);
setVoiceVolume(spep_0,93,200);


--私だってやるときはやるんだから…
--playSe(spep_0+85,1075);
--setSeVolume(spep_0+85,1075,150);
playVoice(spep_0+85,94);
setVoiceVolume(spep_0+85,94,200);


--キラキラ
--playSe(  spep_0+2, 46);
--setSeVolume(spep_0+2,46,110);

--spep_1=spep_0+244;
-- ダメージ表示
--dealDamage(spep_1+16);
entryFade( spep_0+255, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(spep_0+ 265);

else end