print(  "[lua]execa001");


rn_01 = 0;
rn_02 = 11;

ATK_01 = 22;--205
ATK_02 = ATK_01+15;--211
ATK_03 = ATK_02+16;--218
ATK_04 = ATK_03+36;--228
ATK_05 = ATK_04+33;--236
ATK_06 = ATK_05+5;--250
ATK_07 = ATK_06+5;--256
ATK_08 = ATK_07+13;--256
ATK_09 = ATK_08+16;--256
ATK_10 = ATK_09+13;--256
ATK_11 = ATK_10+10;--256
ATK_12 = ATK_11+8;--256
ATK_13 = ATK_12+43;--256
ATK_end = ATK_13+130;--256;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 246, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 274, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_13+40, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

playSe(rn_01,1019);
setEnvZoomEnable(  rn_01,  0);
entryEffect( rn_01+2, 908, 0x80,  -1,  0,  0);
naname=entryEffectLife( rn_01+5, 914, 15, 0x80,  -1,  0,  0,  0);
setEffRotateKey(rn_01+5,naname,45);
setEffScaleKey(rn_01+5,naname,1.6,1.6);
changeAnime(  rn_01,  0,  116);
changeAnime(  rn_01,  1,  102);
setDrawFront( rn_01, 0, 0);

setMoveKey(  rn_01,  0,  -20,  -30,  128);
setLastPosKey( rn_01, 1);
-- setMoveKey(  rn_01,  1,  500,  50,  -128);
entryFadeBg(rn_01+10,  5,  8,  1,  2,7,69,255);
setEnvZoomEnable(  rn_01+10,  1);
setMoveKey(  rn_01+10,  0,  -200,  -80,  0);

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
setMoveKey(  SP_dodge+5, 0, -15,  -20,  -60);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

entryEffect(  rn_01+18,  4,  0, -1,  0,  0,  0);
setMoveKey(  rn_01+13,  0,  -15,  -20,  -60);
entryFade( rn_01+16,  5,  4,  3,  0,0,0,255);
entryEffect( rn_01+16, 908, 0,  -1,  0,  0);
setMoveKey(  rn_01+21,  0,  -30,  0,  -70);
setMoveKey(  rn_01+16,  1,  150,  50,  -128);
entryKakimoji( rn_01+16,  19,  4,  -1,  0,  -25,  -250);--どん

---------------
setDrawFront( ATK_01, 0, 1);
changeAnime(  ATK_01,  1,  100);
changeAnime(  ATK_01,  0,  3);
changeAnime(  ATK_01+1,  0,  14);
playSe( ATK_01+1,1010);

entryEffectLife( ATK_01+1, 906, 14, 0x80,  -1,  0,  0,  0);
--entryFlashBg(  ATK_01+3,  2,  255,  255,  255);
setMoveKey(  ATK_01,  0,  -30,  0,  -70);
setMoveKey(  ATK_01,  1, 150,  50,  -128);
setMoveKey(  ATK_01+1,  0,  -50,  -10,  0);
setMoveKey(  ATK_01+1,  1,  50,  35,  0);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
playSe(ATK_01+3,1013);
entryEffect(  ATK_01+3,  23,  0x40,  1,  0,-100,  0);
entryEffect(  ATK_01+4,  908,  0,  1,  0,  0,  0);
changeAnime(  ATK_01+3,  1,  104);
pauseAll(  ATK_01+3, 10);

dealDamage(  ATK_01+3);
setBgScroll(ATK_01+3,3);



endPhase( ATK_01+30 );
-----------------------
else

entryEffect(  ATK_01+3,  4,  0,  1,  0,  0,  0);
entryEffect(  ATK_01+4,  908,  0,  1,  0,  0,  0);
entryKakimoji( ATK_01+4,  19,  4,  -1,  0,  -25,  -250);--どん
changeAnime(  ATK_01+3,  1,  108);
setDamage(  ATK_01+5,  1,  0);     --ダメージ振動等
pauseChara(  ATK_01+7, 6);
--pauseAll(  ATK_01+7, 10);

setBgScroll(ATK_01+3,3);
end
---------------
ker=entryEffectLife( ATK_02+1, 913, 10, 0x80,  -1,  0,  0,  0);
setEffRotateKey( ATK_02+1,ker,-45)
setEffScaleKey( ATK_02+1,ker,1.5,1.2);
setEnvZoomEnable(  ATK_02+10,  0);
setMoveKey(  ATK_02,  1,  50,  35,  0);
setMoveKey(  ATK_02+5,  1,  100,  70,  -70);
entryFadeBg( ATK_02+3,  5,  20,  18, 2,7,69,255);

setMoveKey(  ATK_02,  0,  -50,  -10,  0);
setMoveKey(  ATK_02+5,  0,  -800,  -100,  -80);
setMoveKey(  ATK_02+10,  1,  100,  70,  -10);

entryEffectLife( ATK_02+5, 906, 25, 0x80,  -1,  0,  0,  0);
setDisp ( ATK_02+5, 0,1);

--53
-------------------------------------
--changeAnime(  ATK_03+3,  0,  100);
setMoveKey(  ATK_03+4,  1,  100,  70,  -10);
setMoveKey(  ATK_03+13,  1,  110,  85,  40);

setMoveKey(  ATK_03+12,  0,   -800,  -100,  50);
setMoveKey(  ATK_03+13,  0,   200,  90,  40);

id01=entryEffect(  ATK_03+14,  700,  0,  0,  0,  0,  0);
setEffScaleKey(ATK_03+14,id01,0.5,1.2);
setDisp (ATK_03+22, 0, 0);
setDisp (ATK_03+24, 0, 1);
setDisp (ATK_03+5, 0, 0);

setEnvZoomEnable( ATK_03+20,  1);

setMoveKey(  ATK_03+23,  0,   200,  90,  40);
setMoveKey(  ATK_03+30,  0,   160,  90,  30);

entryFadeBg( ATK_03+33,  3,  111,  1, 2,7,69,255);
changeAnime(  ATK_03+22,  0,  113);
setMoveKey(  ATK_03+29,  1,  110,  85,  40);
setMoveKey(  ATK_03+30,  1,  90,  85,  40);
entryKakimoji(  ATK_03+16,  0,  2,  1,  0,  20,  150);--!!
entryEffect(  ATK_03+30,  4,  0,  1,  0,  0,  0);
entryEffect(  ATK_03+31,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_03+31,  908,  0,  1,  0,  0,  0);
playSe( ATK_03+30,1001);
oi=entryEffectLife( ATK_03+30, 913, 115, 0x80, -1,  0,  0,  0);
setEffScaleKey( ATK_03+33,oi,-1,1);
entryKakimoji( ATK_03+31,  12,  4,  -1,  0,  80,  150);--どん
changeAnime(  ATK_03+31,  1,  8);
setDamage(  ATK_03+31,  1,  0);--ダメージ振動等

--entryFlashBg(  ATK_03+30,  2,  255,  255,  255);
pauseChara(  ATK_03+35, 8);

---------------
setMoveKey(  ATK_04,  1,  85,  45,  40);
setMoveKey(  ATK_04+5,  1,   -50,  39,  50);
setMoveKey(  ATK_04+15,  1,   -200,  35,  30);
setMoveKey(  ATK_04+23,  1,   -200,  35,  30);
setMoveKey(  ATK_04+29,  1,   -150,  35,  5);


changeAnime(  ATK_04+23,  0,  103);
entryKakimoji(  ATK_04+24,  6,  4,  0,  1,  30,  120)
--setEnvZoomEnable(  ATK_04,  1);
setMoveKey(  ATK_04+23,  0,   160,  39,  30);
setMoveKey(  ATK_04+30,  0,   30,  39,  0);
-----------------

changeAnime(  ATK_06,  0,  112);--キック
--setShake(  ATK_06,  10,  50);
entryEffect(  ATK_06,  2,  0,  1,  0,  0,  50);
playSe(ATK_06,1001);
entryEffect(  ATK_06+1,  908,  0,  1,  0,  0,  50);
entryEffect(  ATK_06+1,  906,  0,  -1,  0,  0,  50);
entryKakimoji(  ATK_06+1,  20,  4,  -1, 0,  -20,  -240);--baki
changeAnime(  ATK_06+1,  1,  6);--モーション
setDamage(  ATK_06+1,  1,  0);--ダメージ振動等
pauseChara(  ATK_06+2,  2);

setMoveKey(  ATK_07+1,  1,  -45,  0,  0);--中央位置から
setMoveKey(  ATK_07,  0,  60,  0,  0);
setMoveKey(  ATK_07+1,  0,  80,  0,  0);
changeAnime(  ATK_07+1,  0,  113);--キック
entryEffect(  ATK_07+1,  3,  0,  1,  0,  -30,  0);
playSe(ATK_07+1,1001);
entryEffect(  ATK_07+2,  908,  0,  1,  0,  -30,  0);
entryEffect(  ATK_07+2,  906,  0,  -1,  0,  -30,  0);
entryKakimoji(  ATK_07+1,  2,  4,  1,  -1,  -30,  240);--gagaga
changeAnime(  ATK_07+1,  1,  8);--モーション
setDamage(  ATK_07+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_07+3,  2);
setMoveKey(  ATK_07+5,  1,  -45,  0,  0);--中央位置から
setMoveKey(  ATK_07+9,  1,  -120,  0,  20);--中央位置から

setEnvZoomEnable(  ATK_08,  0);
setMoveKey(  ATK_08,  0,  60,  0,  0);
setMoveKey(  ATK_08,  0,  -50,  0,  0);
changeAnime(  ATK_08+1,  0,  112);--キック
--entryFlashBg(  ATK_08+1,  1,  0,  0,  0);
playSe(ATK_08+1,1001);
entryKakimoji(  ATK_08+2,  14,  4,  -1,  0,  -70,  220);--baki
fe1 = entryEffect(  ATK_08+1,  2,  0,  1,  -10,  -15,  20);
fe2 = entryEffect(  ATK_08+1,  906,  0,  -1,  -10,  -15,  20);
fe3 = entryEffect(  ATK_08+1,  908,  0,  1,  -10,  -15,  20);

setEffMoveKey(  ATK_08+6,  fe1, 300,  -20,  20);
setEffMoveKey(  ATK_08+6,  fe2, 300,  -20,  20);

changeAnime(  ATK_08+2,  1,  6);--モーション
setDamage(  ATK_08+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_08+3,  2);
setMoveKey(  ATK_08+6,  0,  -40,  0,  0);
setMoveKey(  ATK_08+15,  0,  200,  -30,  0);
setMoveKey(  ATK_08+6,   1,  -120,  0,  20);
setMoveKey(  ATK_08+15,  1,  100,  -28,  0);

changeAnime(  ATK_08+6,  0,  113);--キック
--setShake(  ATK_08+7,  11,  58);
playSe(ATK_08+6,1001);
entryKakimoji(  ATK_08+6,  15,  4,  -1,  0,  -20,  -230);--baki
fe4=entryEffect(  ATK_08+6,  2,  0,  1,  -10,  -15,  20);
fe5=entryEffect(  ATK_08+7,  906,  0,  -1,  -10,  -15,  20);
fe6=entryEffect(  ATK_08+7,  908,  0,  1,  -10,  -15,  20);

setEffMoveKey(  ATK_08+10,  fe4, 250,  -10,  20);
setEffMoveKey(  ATK_08+10,  fe5, 250,  -10,  20);

setDamage(  ATK_08+7,  1,  0);--ダメージ振動等
pauseChara(  ATK_08+7,  2);
changeAnime(  ATK_08+10,  0,  112);--キック
playSe(ATK_08+11,1001);
fe7=entryEffect(  ATK_08+10,  2,  0,  1,  -10,  -15,  20);
fe8=entryEffect(  ATK_08+11,  906,  0,  -1,  -10,  -15,  20);
fe9=entryEffect(  ATK_08+11,  908,  0,  1,  -10,  -15,  20);
setDamage(  ATK_08+11,  1,  0);--ダメージ振動等
pauseChara(  ATK_08+11,  2);
setEffMoveKey(  ATK_09+1,  fe7,  600,  -13,  10);
setEffMoveKey(  ATK_09+1,  fe8,  600,  -13,  10);
--setEffMoveKey(  ATK_09+1,  fe9,  600,  -13,  10);

--setMoveKey(  ATK_09+1,  1,  -20,  0,  0);--中央位置から
changeAnime(  ATK_09+1,  0,  113);--パンチ2
playSe(ATK_09+11001);
entryKakimoji(  ATK_09+2,  12,  4,  1,  0,  -50,  150);--baki
entryEffect(  ATK_09+1,  2,  0,  1,  0,  0,  0);
entryEffect(  ATK_09+1,  908,  0,  1,  0,  0,  0);
entryEffect(  ATK_09+1,  906,  0,  -1,  0,  0,  0);
changeAnime(  ATK_09+2,  1,  5);--モーション
setDamage(  ATK_09+2,  1,  0);--ダメージ振動等
--setShake(  ATK_09+1,  8,  64);
setMoveKey(  ATK_09+6,  0,  200,  -30,  0);
setMoveKey(  ATK_09+6,  1,  80,  -28,  0);

setMoveKey(  ATK_09+12,  0,  120,  -15,  0);
setMoveKey(  ATK_09+12, 1 ,  -60,  -12,  0);
pauseChara(  ATK_09+4, 2);

changeAnime(  ATK_10+1,  0,  112);--キック
--entryFlashBg(  ATK_10+1,  1,  0,  0,  0);
playSe(ATK_10+1,1001);
entryEffect(  ATK_10+1,  2,  0,  1,  10,  15,  20);
entryEffect(  ATK_10+1,  906,  0,  -1,  10,  15,  20);
entryEffect(  ATK_10+1,  908,  0,  1,  10,  15,  20);
changeAnime(  ATK_10+2,  1,  6);--モーション
setDamage(  ATK_10+2,  1,  0);--ダメージ振動等
pauseChara(  ATK_10+3,  2);

setEnvZoomEnable(  ATK_11,  1);

setMoveKey(  ATK_10+6,  1,  -36,  0,  0);--中央位置から
setMoveKey(  ATK_10+8,  1,  -32,  0,  0);--中央位置から

changeAnime(  ATK_11+2,  0,  114);--キック
setMoveKey(  ATK_11+5,  1,  -43,  0,  0);--中央位置から
entryEffect(  ATK_11+4,  4,  1,  1,  0,  0,  0);
playSe(ATK_11+3,1010);
entryEffect(  ATK_11+5,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_11+5,  908,  1,  1,  0,  0,  0);
entryKakimoji(  ATK_11+5,  19,  4,  1,  -1,  -25,  -250);--どん
setDamage(  ATK_11+5,  1,  0);--ダメージ振動等
--setQuake(  ATK_11+4,  15,  100);
--entryFlashBg(  ATK_11+4,  1,  255,  255,  255);
--entryEffectLife( ATK_11+7, 913, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
startBgScroll(  ATK_11+4,  30,  3);
changeAnime(  ATK_11+5,  1,  8);--モーション

pauseChara(  ATK_11+5,  7);
setEnvZoomEnable(  ATK_11+7,  0);
---------
changeAnime(  ATK_12+10,  0,  118);--モーション

--entryEffectLife( ATK_12+14, 906, 32, 0x80,  1,  0,  0,  0); -- 流線斜め

setEnvZoomEnable(  ATK_12,  0);
setMoveKey(  ATK_12+1,  0,  80,  -28,  0);
setMoveKey(  ATK_12+13,  0,  250,  -159,  -128);

setMoveKey(  ATK_12,  1,  -43,  0,  0);
setMoveKey(  ATK_12+15,  1,  -280,  280,  66);

playSe(ATK_12+20,43);
entryEffect(  ATK_12+20,  700,  0,  0,  0,  0,  0);
--entryEffect(  ATK_12+21,  906,  0,  0,  0,  0,  0);
setDisp ( ATK_12+23, 0, 0);
setDisp ( ATK_12+24, 0, 1);
setDisp ( ATK_12+26, 0,0);
entryKakimoji(  ATK_12+22,  11,  1,  -1,  0,  40,  -50);

--entryEffect(  ATK_12+30,  910,  0,  -1,  0,  0,  0);
---------------------
stopBgScroll(ATK_13, 5);
setBgScroll(ATK_13,0);
tat=entryEffectLife( ATK_13, 914, 60, 0x80,  -1,  0,  0,  0);
setEffRotateKey(ATK_13,tat,90);
setEffScaleKey(ATK_13,tat,1.5,1);
entryFadeBg( ATK_13,  3,  60,  10, 2,7,69,255);

changeAnime(  ATK_13,  0,  0);--モーション
setDrawFront( ATK_13, 0, 0);
setDrawFront( ATK_13, 1, 1);
setEnvZoomEnable(  ATK_13,  0);

setMoveKey(  ATK_13,  0,   250,  -200,  -128);
setMoveKey(  ATK_13+1,  0,  -20,  320,  -80);
setMoveKey(  ATK_13+15,  0,  -20,  320,  -80);
setMoveKey(  ATK_13+30,  0,  -20,  285,  -80);
setMoveKey(  ATK_13+35,  0,  -20,  280,  -80);


setMoveKey(  ATK_13,  1,  -280,  280,  66);
setMoveKey(  ATK_13+1,  1,  20,  -100,  -100);
setMoveKey(  ATK_13+20,  1,  20,  135,  -100);
setMoveKey(  ATK_13+35,  1,  20,  155,  -100);


entryEffect(  ATK_13+15+5,  700,  0,  0,  0,  0,  50);
setDisp ( ATK_13+20+5, 0, 1);
setDisp ( ATK_13+21+5, 0, 0);
setDisp ( ATK_13+22+5, 0, 1);
entryKakimoji(  ATK_13+15+5,  11,  1,  -1,  0,  -110,  280);

changeAnime(  ATK_13+35,  0,  15);--モーション
pauseChara(ATK_13+35,5)
setMoveKey(  ATK_13+39,  0,  -20,  280,  -80);
setMoveKey(  ATK_13+40,  0,  -20,  270,  -80);
setDrawFront( ATK_13+40, 0, 1);    --
setDrawFront( ATK_13+40, 1, 0)
dealDamage(  ATK_13+30);
entryKakimoji(  ATK_13+41,  20,  4,  -1,  0,  -50,  0);--baki
--entryFlashBg(  ATK_13+40,  1,  255,  255,  255);
entryEffect(  ATK_13+40,  4,  0x100,  1,  0,  0,  0);
playSe(ATK_13+40,1025);
entryEffect(  ATK_13+41,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_13+41,  908,  1,  1,  0,  0,  0);
setRotateKey( ATK_13+41,  1,  0);
setRotateKey( ATK_13+42,  1,  45);
changeAnime(  ATK_13+41,  1,  108);--モーション
setMoveKey(  ATK_13+40,  1,  20,  155,  -100);
setMoveKey(  ATK_13+41,  1,  20,  90,  -90);
--setShake(  ATK_13+41,  15,  113);
pauseChara(  ATK_13+43,  10);

--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)
	
ATK_dead = ATK_13+43+10;

	
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
   endPhase( ATK_dead+6);
   
else

setMoveKey(  ATK_13+53,  0,  -20,  270,  -80);
setMoveKey(  ATK_13+66,  0,  -20,  300,  50);
setMoveKey(  ATK_13+53,  1,   20,  90,  -90);
setMoveKey(  ATK_13+63,  1,  20,  -800,  50);

--entryFlashBg(  ATK_13+53,  1,  255,  255,  180);
--entryFlashBg(  ATK_13+58,  1,  0,  0,  0);
entryEffect(  ATK_13+53,  1509,  0,  -1,  00,  -20,  -400);
--entryEffect(  ATK_13+53,  906,  0,  -1,  0,  -20,  -400);
playSe(ATK_13+53,1033);
entryKakimoji(  ATK_13+55,  19,  2,  -1,  0,  -30,  -50);
setQuake(  ATK_13+53,  10,  18);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 0) and (_IS_FINISH_SPECIAL_ONLY_ == 0)) then


endPhase( ATK_end+50);
end
-----------------------


end
