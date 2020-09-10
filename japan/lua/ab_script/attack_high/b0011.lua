print(  "[lua]execa002");

rn_01 = 0;
ATK_00 = rn_01+18;
ATK_01 = ATK_00+8;
ATK_02 = ATK_01+8;
ATK_03 = ATK_02+5;
ATK_04 = ATK_03+4;
ATK_05 = ATK_04+4;
ATK_06 = ATK_05+6;
---------------
rn_02 = ATK_06+50;
--------------
ATK_D_04 = rn_02+43;
ATK_D_05 = ATK_D_04+10;
ATK_D_06 = ATK_D_05+5;
ATK_D_07 = ATK_D_06+6;
ATK_D_08 = ATK_D_07+10;
ATK_D_09 = ATK_D_08+4;
ATK_D_10 = ATK_D_09+5;
ATK_D_11 = ATK_D_10+5;
ATK_D_12 = ATK_D_11+5;
ATK_D_13 = ATK_D_12+6;

---------------
ATK_end = ATK_D_13+14;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

setMoveKey(  0,  1,  -700,  0,  -128);

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 202, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_00, 906, 202, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_D_07, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入向かう
-------------------------
--背景スクロール
setBgScroll( 0,30);

--P初期位置
setMoveKey(  0,  0,  -700,  0,  -128);
setLastPosKey( 0, 1);
-- setMoveKey(  0,  1,  -700,  0,  -128);
changeAnime(  rn_01,  0,  3);

--E初期位置
setMoveKey(  rn_01+5,  0,  -40,  0,  -128);
setMoveKey(  rn_01+8,  0,  -18,  0,  -128);

entryEffectLife(  rn_01+3, 914,  15,  0x80,  -1,  0,  0,  0);

setMoveKey(  rn_01+10,  0,  -170,  0,  -128);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 10; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え


kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

	if (_IS_PLAYER_SIDE_ == 1) then

		setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

	else

		setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

	end

setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5, 0, 800,  100,  -128);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

entryKakimoji(  rn_01+11,  6,  4,  0,  -1,  -50,  200);

setMoveKey(  rn_01+15,  0,  800,  100,  -128);
playSe(rn_01+15,1018);
-------------------------------------------
--連打応酬
-------------------------------------------

--P 連打初期位置
setMoveKey( ATK_00, 0,  800,   100, -128);
setMoveKey( ATK_00+1,   0,  -420, -150, -100);
setRotateKey( ATK_00+1, 0,  -10);--角度
changeAnime( ATK_00+1,  0,  9);--パンチ
playSe( ATK_00+1,1000);
--E 初期位置
setMoveKey(  ATK_00,  1,  -700,  0,  -128);
setMoveKey(  ATK_00+1,  1,  -320,  -120,  -100);
setRotateKey( ATK_00+1,  1,  -10);--角度
changeAnime(  ATK_00+1,  1,  104);--ダメージ

--線
naname1 = entryEffectLife( ATK_00, 914, 90, 0x80,  -1,  0,  0,  -400);
setEffRotateKey(ATK_00, naname1, -21);
setEffScaleKey( ATK_00, naname1, 2, 0.5);

naname2 = entryEffectLife( ATK_00, 914, 90, 0x80,  -1,  0,  0,  460);
setEffRotateKey(ATK_00, naname2, -21);
setEffScaleKey( ATK_00, naname2, 2, 0.5);

---------移動位置調整
entryEffect( ATK_00+4,  1,  0,  1,  0,  0, 0);--HIT
setMoveKey(  ATK_00+3,  1,  -280,  -100,  -50);--E 中央に近づく

setMoveKey(  ATK_00+2,  0,  -420,  -150,  -100);
setMoveKey(  ATK_00+5,  0,  -340,  -130,  -50);--P 中央に近づく

------------一撃目攻撃

setMoveKey(  ATK_00+5,  1,  -280,  -100, -50);
setMoveKey(  ATK_00+8,  1,  -250,  -85,  -30);--E 中央に近づく

setMoveKey(  ATK_01+6,  0,  -340,  -130,  -50);
setMoveKey(  ATK_01+9,  0,  -300,  -105,  -30);--P 中央に近づく
changeAnime(  ATK_01+7,  0,  10);--パンチ
playSe( ATK_01+7,1000);
--ダメージ処理
entryEffect( ATK_01+7,  2,  0,  1,  0,  0, 0);--HIT
entryEffect( ATK_01+7,  908,  0,  1,  0,  0,  0);
entryEffect( ATK_01+8,  906,  0,  -1,  0,  0, 0);

--Eやられ
changeAnime( ATK_01+8,  1,  106);--ダメージ
setDamage(  ATK_01+8,  1,  0);--ダメージ振動等

--------------二撃目
setMoveKey(  ATK_02,   1, -250,  -85,  -20);
setMoveKey(  ATK_02+4, 1, -180,  -70, 0);--E 中央に近づく

changeAnime( ATK_02+3,  0,  9);--パンチ
setMoveKey(  ATK_02+3,  0,  -300,  -105,  -30);
setMoveKey(  ATK_02+5,  0,  -230,  -95,  0);--P 中央に近づく

--ダメージ処理
entryEffect( ATK_02+3,  2,  0,  1,  0,  30, 0);--HIT
playSe(ATK_02+3,1000);--SE
entryEffect( ATK_02+3, 908,  0,   1,  0,  0, 0);
entryEffect( ATK_02+3, 906,  0,  -1,  0,  0, 0);

--Eやられ
changeAnime( ATK_02+4,  1,  105);--ダメージ
setDamage( ATK_02+4,  1,  0);--ダメージ振動等

--------------三撃目
setMoveKey(  ATK_03,    1,  -180, -70,  0);
setMoveKey(  ATK_03+4,  1,  -80,  -50,  0);--E 中央に近づく

changeAnime( ATK_03+3,  0,  12);--キック
setMoveKey(  ATK_03+2,  0,  -230, -95,  0);
setMoveKey(  ATK_03+6,  0,  -130, -70,   0);--P 中央に近づく

--ダメージ処理
entryEffect( ATK_03+3,  3,  0,  1,  0,  -20, 0);--HIT
playSe(ATK_03+3,1001);--SE
entryEffect( ATK_03+3,  908,  0,  1,  0,  0, 0);
entryEffect( ATK_03+3, 906,  0, -1,  0,  0, 0);

--Eやられ
changeAnime( ATK_03+4,  1,  108);--ダメージ
setDamage( ATK_03+4,  1,  0);--ダメージ振動等

--------------4撃目

setMoveKey(  ATK_04,    1,  -80,  -50,  0);
setMoveKey(  ATK_04+5,  1,  0,     0,   0);--E 中央に近づく
changeAnime( ATK_04+3,  0,  13);--キック
setMoveKey(  ATK_04+2,  0,  -130, -70,  0);
setMoveKey(  ATK_04+6,  0,  -80,  -31,  0);--P 中央に近づく

--ダメージ処理
entryEffect( ATK_04+3,  1,  0,  1,  0,  -20, 0);--HIT
playSe(ATK_04+3,1001);--SE
entryEffect( ATK_04+3, 908,  0,  1,  0,  0, 0);
entryEffect( ATK_04+3, 906,  0,  -1,  0,  0, 0);


--Eやられ
changeAnime( ATK_04+4,  1,  105);--ダメージ
setDamage( ATK_04+4,  1,  0);--ダメージ振動等

---------------5撃目
setMoveKey(  ATK_05,  1,  0,  0,  0);
setMoveKey(  ATK_05+5,  1,  50,  20,  10);--E 中央に近づく

changeAnime(  ATK_05+3,  0,  11);--パンチ
playSe(ATK_05+3,1009);--SE
setMoveKey(  ATK_05+2,  0,  -80,  -31,  0);
setMoveKey(  ATK_05+4,  0,  -25,  0,  10);--P 中央に近づく

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------

--ダメージ処理
entryEffect( ATK_05+5,  23,  0, 1,  0,-100,  0);
playSe(ATK_05+3,1012);--SE

--Eやられ
changeAnime( ATK_05+6,  1,  104);--ダメージ

-----------------------------
entryFadeBg( ATK_06,  3,  93,  10, 2,7,69,255);

setMoveKey(  ATK_06+2,  0,  -25,  0,  10);
setMoveKey(  ATK_06+8,  0,  -25,  -10,  20);

setMoveKey(  ATK_06,  1,  50,  20,  10);--E 中央に近づく
setMoveKey(  ATK_06+15,  1,  600,  250, -30);

changeAnime( ATK_06+8,  0,  1);--ダメージ
-----------------------
else

--ダメージ処理
entryEffect( ATK_05+5,  4,  0,  1,  0,  0, 0);--HIT
entryEffect( ATK_05+5,  908,  0,  1,  0,  0,  0);
entryEffect( ATK_05+5,  906,  0,  -1,  0,  0, 0);

setMoveKey(  ATK_05+2,  0,  -25,  0,  40);
setMoveKey(  ATK_05+8,  0,  -25,  -10,  50);

--Eやられ
changeAnime( ATK_05+6,  1,  106);--ダメージ
setDamage( ATK_05+6,  1,  0);--ダメージ振動等

-----------------------------
entryFadeBg( ATK_06,  3,  93,  10, 2,7,69.255);

setMoveKey(  ATK_06,  1,  50,  20,  40);--E 中央に近づく
setMoveKey(  ATK_06+10,  1,  800,  250, -30);
end


--entryFlash( ATK_06+25,1,255,255,255);
changeAnime( ATK_06+25,  0,  0);
setMoveKey(  ATK_06+25,  0, -25,  -10,  20);
setMoveKey(  ATK_06+30,  0, -120, 140,  60);
setMoveKey(  ATK_06+35,  0, -50,  60,  70);
setMoveKey(  ATK_06+43,  0, 25,  10,  100);
changeAnime( ATK_06+40,  0,  17);--パンチ

------------------------------
playSe(rn_02,1018);
setEnvZoomEnable(  rn_02,  0);

entryEffect( rn_02+2, 908, 0x80,  -1,  0,  0);
naname=entryEffectLife( rn_02+5, 906, 30, 0x80,  -1,  0,  0,  0);
--setEffRotateKey(rn_02+5,naname,45);
setEffScaleKey(rn_02+5,naname,1.2,1.2);

changeAnime(  rn_02,  0,  116);

setDrawFront( rn_02, 0, 0);
setMoveKey(  rn_02,  0, 25,  10,  100);
setEnvZoomEnable(  rn_02+10,  1);
setMoveKey(  rn_02+10,  0,  -100,  -250,  0);
setMoveKey(  rn_02+13,  0,  -15,  -20,  -60);
--entryFade( rn_02+10,  5,  4,  3,  255,255,255,105);
entryEffect( rn_02+16, 908, 0,  -1,  0,  0);

entryFade( rn_02+25,  5,  15,  10, 0,0,0,255);
setDisp( rn_02+42, 0, 0);

setMoveKey(  rn_02+25,  0,  260,  200, -100);
setMoveKey(  rn_02+30,  0,  300,  250, -128);

----------------------------
entryFadeBg( ATK_D_04-1,  1,  120,  10, 2,7,69,255);
playSe(ATK_D_04,1019);
tate=entryEffectLife( ATK_D_04, 914, 120, 0x80,  -1,  0,  0,  0);
setEffRotateKey(ATK_D_04,tate,-90);
setEffScaleKey(ATK_D_04,tate,1.7,1);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
changeAnime(  ATK_D_04+1,  1,  104);--モーション
playSe(ATK_D_04+1,1003);
playSe(ATK_D_05+1,1004);
playSe(ATK_D_06+1,1012);
playSe(ATK_D_07+1,1003);
playSe(ATK_D_08+3,1013);
-----------------------
else
changeAnime(  ATK_D_04+1,  1,  108);--モーション
playSe(ATK_D_04+1,1000);
changeAnime(  ATK_D_05+2,  1,  108);--モーション
playSe(ATK_D_05+1,1001);
changeAnime(  ATK_D_06+2,  1,  106);--モーション
playSe(ATK_D_06+1,1010);
playSe(ATK_D_07+1,1009);
changeAnime(  ATK_D_07+2,  1,  105);--モーション
changeAnime(  ATK_D_08+5,  1,  106);--モーション
playSe(ATK_D_08+3,1010);
-----------------------
end

setMoveKey(  ATK_D_04,  0,  300,  250, -128);
setMoveKey(  ATK_D_04+1,  0,  -700,  0, 0);

--ふっとばし　　移動
setMoveKey(  ATK_D_04-1,  1,  800,  250, -30);
setMoveKey(  ATK_D_04,  1,  -50,  -600,  -128);
setMoveKey(  ATK_D_04+10,  1,  -150,  -600,  -128);


entryEffect(  ATK_D_04+1,  906,  0,  -1,  0,  0,  0);


setDamage(  ATK_D_04+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_04+2,  3);


appa = entryEffectLife( ATK_D_05, 703, 120, 0,  -1,  0,  0,  -700);
setEffRotateKey(ATK_D_05,appa,-90);
setEffAlphaKey( ATK_D_05, appa, 255);
setEffMoveKey( ATK_D_11+25,appa, 0, 0, 0);


--ふっ飛ばし２
setMoveKey(  ATK_D_05,  1,  50,  -600,  -128);
setMoveKey(  ATK_D_05+3,  1,  80,  -450, -128);


entryEffect(  ATK_D_05+2,  908,  0,  1,  0,  -30,  -20);

setDamage(  ATK_D_05+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_05+3,  2);

-----------------
setMoveKey( ATK_D_06,  1,  80,  -450, -128);
setMoveKey( ATK_D_06+5,  1,  20,  -350, -128);

entryEffect(  ATK_D_06+2,  908,  0,  1,  10,  15,  20);

setDamage(  ATK_D_06+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_06+3,  2);
-----------------
setMoveKey(  ATK_D_07+2,  1,  20,  -350, -128);
setMoveKey(  ATK_D_07+5,  1,  -6,  -200,  -128);

--entryFlashBg(  ATK_D_07+1,  1,  0,  0,  0);
entryEffect(  ATK_D_07+2,  908,  0,  1,  0,  -50,  -30);

setDamage(  ATK_D_07+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_07+4,  2);
------------------
--setMoveKey(  ATK_D_08+3,  1,  -6,  -200,  -50);
--setMoveKey(  ATK_D_08+6,  1,  0,  -80, -30);
setMoveKey(  ATK_D_08+3,  1,  -6,  -200,  -128);
setMoveKey(  ATK_D_08+6,  1,  0,  -80, -128);
entryEffect(  ATK_D_08+3,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_D_08+4,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_08+7,  3);



-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
setMoveKey(  ATK_D_09,  1,  0,  30,  -128);
setMoveKey(  ATK_D_09+4,  1,  0,  30,  -128);

playSe(ATK_D_09+1,1006);
entryEffect(  ATK_D_09+1,  908,  0,  1,  0,  0,  50);
changeAnime(  ATK_D_09+1,  1,  104);--モーション
setDamage(  ATK_D_09+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_09+2,  2);

------------------------------------

setMoveKey(  ATK_D_10,   1,  0,  30,  -128);
setMoveKey(  ATK_D_10+5,  1,  0,  50, -100);

playSe(ATK_D_10+2,1007);
entryEffect(  ATK_D_10+2,  908,  0,  1,  0,  -30,  0);
setDamage(  ATK_D_10+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_10+3,  2);

-----------------------------------

setMoveKey(  ATK_D_11,  1,  0,  50,  -100);
setMoveKey(  ATK_D_11+4,  1,  10,  120,  -50);

playSe(ATK_D_11+1,1013);
entryEffect(  ATK_D_11+1,  908,  0,  1,  10,  15,  20);
setDamage(  ATK_D_11+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_11+3,  2);

----------------------------------
setMoveKey(  ATK_D_12,  1,  10,  120,  -50);
setMoveKey(  ATK_D_12+4,  1,  -20,  190,  0);
dealDamage(  ATK_D_12+4);
--entryFlash( ATK_D_12+2,1,255,255,255);
playSe(ATK_D_12+1,1014);
entryEffect(  ATK_D_12+1,  908,  0,  1,  0,  -25,  -20);
setDamage(  ATK_D_12+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_12+4,  2);

---------------
else


setMoveKey(  ATK_D_09,  1,  0,  30,  -128);
setMoveKey(  ATK_D_09+4,  1,  0,  30,  -128);

playSe(ATK_D_09+1,1009);
entryEffect(  ATK_D_09+1,  908,  0,  1,  0,  0,  50);
changeAnime(  ATK_D_09+1,  1,  106);--モーション
setDamage(  ATK_D_09+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_09+2,  2);

------------------------------------

setMoveKey(  ATK_D_10,   1,  0,  30,  -128);
setMoveKey(  ATK_D_10+5,  1,  0,  50, -128);

playSe(ATK_D_10+2,1010);
entryEffect(  ATK_D_10+2,  908,  0,  1,  0,  -30,  0);
changeAnime(  ATK_D_10+1,  1,  108);--モーション
setDamage(  ATK_D_10+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_10+3,  2);

-----------------------------------

setMoveKey(  ATK_D_11,  1,  0,  50,  0);
setMoveKey(  ATK_D_11+4,  1,  10,  120,  0);

playSe(ATK_D_11+1,1000);
entryEffect(  ATK_D_11+1,  908,  0,  1,  10,  15,  20);
changeAnime(  ATK_D_11+2,  1,  106);--モーション
setDamage(  ATK_D_11+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_11+3,  2);

----------------------------------
setMoveKey(  ATK_D_12,  1,  10,  120,  0);
setMoveKey(  ATK_D_12+4,  1,  -20,  190,  20);
dealDamage(  ATK_D_12+4);
--entryFlash( ATK_D_12+2,1,255,255,255);
playSe(ATK_D_12+1,1009);
entryEffect(  ATK_D_12+1,  908,  0,  1,  0,  -25,  -20);
changeAnime(  ATK_D_12+2,  1,  105);--モーション
setDamage(  ATK_D_12+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_D_12+4,  2);
setShake(  ATK_D_12+4,  7,  16);
end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_D_12+4+10;
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
   endPhase( ATK_dead+6);

else
--------
appa2 = entryEffect( ATK_D_11+25, 702, 0, -1, -250, 0);
setEffRotateKey( ATK_D_11+25, appa2, -90);

setEffMoveKey( ATK_D_11+30, appa,   0, 1200, 0);

-----------------------------------------------------
kame_flag = 0x00;
	if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
	-----------------------

	setMoveKey(  ATK_D_13+4,  1,  -20,  190,  0);
	setMoveKey(  ATK_D_13+10,  1,  0,  270,  0);

	playSe(ATK_D_13+4,1013);
	entryEffect(  ATK_D_13+5,  908,  1,  1,  0,  0,  0);
	setDamage(  ATK_D_13+5,  1,  0);--ダメージ振動等

	--dealDamage(  ATK_D_13+4);
	startBgScroll(  ATK_D_13+4,  30,  3);
	pauseChara(  ATK_D_13+7,  7);

	endPhase( ATK_end+75 );
	--------
	else


	setMoveKey(  ATK_D_13+4,  1,  -20,  190,  20);
	setMoveKey(  ATK_D_13+10,  1,  0,  270,  50);

	playSe(ATK_D_13+4,1025);
	entryEffect(  ATK_D_13+5,  908,  1,  1,  0,  0,  0);
	entryKakimoji(  ATK_D_13+5,  19,  4,  1,  0,  0,  -80);--どん
	setDamage(  ATK_D_13+5,  1,  0);--ダメージ振動等
	--entryFlashBg(  ATK_D_13+4,  1,  255,  255,  255);

	--dealDamage(  ATK_D_13+4);
	startBgScroll(  ATK_D_13+4,  30,  3);
	changeAnime(  ATK_D_13+5,  1,  108);--モーション
	pauseChara(  ATK_D_13+7,  7);

	changeAnime(  ATK_end+74,  1,  100);--モーション
	endPhase( ATK_end+75 );

	end


end



