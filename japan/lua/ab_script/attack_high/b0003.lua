print(  "[lua]execa002");

rn_01 = 0;
ATK_01 = rn_01+55;
ATK_02 = ATK_01+8;
ATK_03 = ATK_02+30;
---------------
ATK_end = ATK_03+30;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 93, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( rn_01+36, 906, 75, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( rn_01+36, shuchusen, 1.0, 1.0)
setEffAlphaKey( rn_01+36, shuchusen, 255);

kaisinn = entryEffect( ATK_02+27, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入
-------------------------
--背景スクロール
setBgScroll( 0,30);

setDrawFront( 0, 1, 1);

--P&E　初期位置
setLastPosKey( 0, 1);
setMoveKey(  0,  0,  -700,  20,  -128);
-- setMoveKey(  0,  1,  700,  120,  -66);
changeAnime(  rn_01,  0,  3);

setMoveKey(  rn_01+5,  0,  -40,  0,  0);
setMoveKey(  rn_01+8,  0,  -18,  0,  0);
changeAnime(  rn_01,  1,  118);

entryEffectLife(  rn_01+3, 914,  15,  0x80,  -1,  0,  0,  0);
--entryKakimoji(  rn_01+11,  6,  4,  0,  -1,  -50,  200);
playSe(rn_01+15,1015);
setMoveKey(  rn_01+10,  0,  -170,  40,  30);
setMoveKey(  rn_01+15,  0,  -180,  80,  100);
changeAnime(  rn_01+18,  0,  16);
setMoveKey(  rn_01+20,  0,  -100,  -35,  80);
setMoveKey(  rn_01+20,  1,  700,  120,  -66);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 25; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, -50,  25,  50);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


setMoveKey(  rn_01+30,  0,  -50,  25,  50);
--changeAnime(  rn_01+33,  0,  0);
setMoveKey(  rn_01+30,  1,  25,  0,  50);


setEnvZoomEnable( rn_01+30,  1);--カメラON
changeAnime(  rn_01+32,  0,  0);
setMoveKey(  rn_01+35,  0,  -25,  30,  50);
--entryFlashBg( rn_01+36,  1,  0,  0,  0);
setMoveKey(  rn_01+37,  0,  -25,  40,  50);
setMoveKey(  rn_01+45,  0,  -25,  10,  50);
changeAnime( rn_01+35,  0,  15);
pauseChara( rn_01+35,10)

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
changeAnime(  rn_01+36,  1,  104);--モーション
entryEffect(  rn_01+36,  23,  0x40,   1,  0,-100,  0);
SE1=playSe(rn_01+37,1008);

pauseAll(  rn_01+45, 4);

setMoveKey(  rn_01+49,  0,  -25,  0,  50);
setMoveKey(  rn_01+55,  0,  -100,  30,  0);

setMoveKey(  rn_01+49,  1,  25,  0,  50);
setMoveKey(  rn_01+55,  1,  45,  -30,  0);

-----------------------------
--setDrawFront( ATK_01, 1, 1);
--setDrawFront( ATK_01, 1, 0);

changeAnime(  ATK_01,  1,  101);--モーション
setEnvZoomEnable( ATK_01,  0);--カメラOFF

changeAnime(  ATK_01,  0,  1);
setMoveKey(  ATK_01,  0,  -100,  30,  0);
setMoveKey(  ATK_01+4,  0,  -70,  50,  0);
setMoveKey(  ATK_01+9,  0,  -30,  0,  0);

entryEffectLife( ATK_01+7, 913, 60, 0x80,  -1,  0,  0,  0);--移動線

-------------------
--追撃
-------------------
changeAnime(  ATK_02-1,  0,  13);
entryEffect(  ATK_02+1,  23,  0,    1,  0,-100,  0);
SE2=playSe(ATK_02+1,1012);
--entryEffect(  ATK_02+1,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+1,  1,  0);--ダメージ振動等

changeAnime(  ATK_02+1,  1,  104);--モーション
setRotateKey( ATK_02, 1, -45);
setRotateKey( ATK_02+1, 1, 0);

setMoveKey(  ATK_02+1,  0,  -35,  -35,  0);
setMoveKey(  ATK_02+3,  0,  -45,  -10,  0);

changeAnime(  ATK_02+4,  0,  12);--キック
--entryEffect(  ATK_02+4,  23,  0,    1,  0,-100,  0);
SE3=playSe(ATK_02+4,1004);
stopSe( ATK_02+4, SE1, 8 );
--entryEffect(  ATK_02+4,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+4,  1,  0);--ダメージ振動等


changeAnime(  ATK_02+7,  0,  10);--パンチ
entryEffect(  ATK_02+7,  23,  0,   1,  0,-100,  0);
SE4=playSe(ATK_02+7,1003);
stopSe( ATK_02+7, SE2, 8 );
--entryFlashBg( ATK_02+7,  1,  0,  0,  0);
--entryEffect(  ATK_02+7,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_02+7,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+7,  1,  0);--ダメージ振動等

setMoveKey(  ATK_02+4,  0,  -45,  10,  0);
setMoveKey(  ATK_02+9,  0,  -45,  -10,  0);
setMoveKey(  ATK_02+6, 1,  35,   0,  0);

changeAnime(  ATK_02+10,  0,  9);--パンチ
--entryEffect(  ATK_02+10,  23,  0,    1,  0,-100,  0);
SE6=playSe(ATK_02+10,1003);
stopSe( ATK_02+10, SE3, 8 );
--entryEffect(  ATK_02+10,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_02+10,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+10,  1,  0);--ダメージ振動等

setMoveKey(  ATK_02+10,  0, -45,  -10,  0);    
setMoveKey(  ATK_02+10,  1,  35,   0,  0);
setMoveKey(  ATK_02+13,  0,  50,  0,  0);    
setMoveKey(  ATK_02+13,  1,  150,  0,  0);


changeAnime(  ATK_02+12,  0,  12);--パンチ

entryEffect(  ATK_02+12,  23,  0,   1,  0,-100,  0);
SE7=playSe(ATK_02+12,1004);
stopSe( ATK_02+12, SE4, 8 );
--entryEffect(  ATK_02+12,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_02+12,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+12,  1,  0);--ダメージ振動等

changeAnime(  ATK_02+14,  0,  9);--パンチ
--entryEffect(  ATK_02+14, 23,  0,    1,  0,-100,  0);
SE8=playSe(ATK_02+14,1003);
stopSe( ATK_02+14, SE5, 8 );
--entryEffect(  ATK_02+14,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_02+14,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+14,  1,  0);--ダメージ振動等

setMoveKey(  ATK_02+18,  0,  50,  0,  0);    
setMoveKey(  ATK_02+18,  1,  150,  0,  0);
setMoveKey(  ATK_02+21,  0,  -50,  0,  0);    
setMoveKey(  ATK_02+21,  1,  50,  0,  0);

changeAnime(  ATK_02+18,  0,  13);--パンチ
entryEffect(  ATK_02+18,  23,  0,   1,  0,-100,  0);
SE9=playSe(ATK_02+18,1004);
stopSe( ATK_02+18, SE6, 8 );
--entryFlashBg( ATK_02+18,  1,  0,  0,  0);
--entryEffect(  ATK_02+18,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_02+18,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+18,  1,  0);--ダメージ振動等

changeAnime(  ATK_02+20,  0,  10);--パンチ
--entryEffect(  ATK_02+20,  23,  0,   1,  0,-100,  0);
SE10=playSe(ATK_02+20,1003);
stopSe( ATK_02+28, SE7, 8 );
--entryEffect(  ATK_02+20,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_02+20,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+20,  1,  0);--ダメージ振動等

changeAnime(  ATK_02+24,  0,  9);--パンチ
--entryEffect(  ATK_02+24,  23,  0,   1,  0,-100,  0);
playSe(ATK_02+24,1003);
stopSe( ATK_02+24, SE8, 8 );
--entryEffect(  ATK_02+24,  906,  1,  -1,  0,  0,  0);
--entryEffect(  ATK_02+24,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_02+24,  1,  0);--ダメージ振動等

changeAnime(  ATK_02+27,  0,  13);--パンチ
dealDamage(  ATK_02+28);
playSe(ATK_02+27,1012);
stopSe( ATK_02+27, SE9, 8 );
entryEffect(  ATK_02+27,  23,  0x40,    1,  0,-100,  0);

playSe(ATK_02+28,1008);
stopSe( ATK_02+28, SE10, 8 );
--entryEffect(  ATK_02+28,  906,  0,  -1,  0,  0,  0);
--entryEffect(  ATK_02+28,  908,  0,  1,  0,  0,  0);
setDrawFront( ATK_02+28, 1, 0);
setDrawFront( ATK_02+28, 1, 1);


--------
else

entryEffect(  rn_01+36,  908,  0,  1,  0,  0,  0);

setDamage(  rn_01+35,  1,  0);--ダメージ振動等
changeAnime(  rn_01+36,  1,  108);--モーション
setRotateKey( rn_01+35, 1, 0);
setRotateKey( rn_01+36, 1, -45);
entryEffect(  rn_01+36,  1,  0,  1,  0,  0,  0);
SE1=playSe(rn_01+36,1009);

entryEffect(  rn_01+36,  908,  0,  1,  0,  0,  0);
entryKakimoji( rn_01+36,  19,  4,  1,  0,  0,  -150);--どん

pauseAll(  rn_01+45, 4);

setMoveKey(  rn_01+49,  0,  -25,  0,  50);
setMoveKey(  rn_01+55,  0,  -100,  30,  0);
setMoveKey(  rn_01+49,  1,  25,  0,  50);
setMoveKey(  rn_01+55,  1,  45,  -30,  0);

-----------------------------
--setDrawFront( ATK_01, 1, 1);
--setDrawFront( ATK_01, 1, 0);

setEnvZoomEnable( ATK_01,  0);--カメラOFF

changeAnime(  ATK_01,  0,  1);
setMoveKey(  ATK_01,  0,  -100,  30,  0);
setMoveKey(  ATK_01+4,  0,  -70,  50,  0);
setMoveKey(  ATK_01+9,  0,  -30,  0,  0);

entryEffectLife( ATK_01+7, 913, 60, 0x80,  -1,  0,  0,  0);--移動線

-------------------
--追撃
-------------------
changeAnime(  ATK_02-1,  0,  13);
entryEffect(  ATK_02+1,  1,  0,  1,  0,  0,  0);
SE2=playSe(ATK_02+1,1009);
entryEffect(  ATK_02+1,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+1,  1,  0);--ダメージ振動等

changeAnime(  ATK_02+1,  1,  105);--モーション
setRotateKey( ATK_02, 1, -45);
setRotateKey( ATK_02+1, 1, 0);

setMoveKey(  ATK_02+1,  0,  -35,  -35,  0);
setMoveKey(  ATK_02+3,  0,  -45,  -10,  0);

changeAnime(  ATK_02+4,  0,  12);--キック
entryEffect(  ATK_02+4,  1,  0,   1,  0,  0,  3);
SE3=playSe(ATK_02+4,1001);
stopSe( ATK_02+4, SE1, 8 );
entryEffect(  ATK_02+4,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+4,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+4,  1,  108);--モーション

changeAnime(  ATK_02+7,  0,  10);--パンチ
entryEffect(  ATK_02+7,  2,   1,  0,  -5,  -3);
SE4=playSe(ATK_02+7,1000);
stopSe( ATK_02+7, SE2, 8 );
--entryFlashBg( ATK_02+7,  1,  0,  0,  0);
entryEffect(  ATK_02+7,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+7,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+7,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+7,  1,  105);--モーション

setMoveKey(  ATK_02+4,  0,  -45,  10,  0);
setMoveKey(  ATK_02+9,  0,  -45,  -10,  0);
setMoveKey(  ATK_02+6, 1,  35,   0,  0);

changeAnime(  ATK_02+10,  0,  9);--パンチ
entryEffect(  ATK_02+10,  1,  0, 1,  0,  0,  5);
SE5=playSe(ATK_02+10,1000);
stopSe( ATK_02+10, SE3, 8 );
entryEffect(  ATK_02+10,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+10,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+10,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+10,  1,  108);--モーション

setMoveKey(  ATK_02+10,  0, -45,  -10,  0);    
setMoveKey(  ATK_02+10,  1,  35,   0,  0);
setMoveKey(  ATK_02+13,  0,  50,  0,  0);    
setMoveKey(  ATK_02+13,  1,  150,  0,  0);


changeAnime(  ATK_02+12,  0,  12);--パンチ

entryEffect(  ATK_02+12,  2,  0,  1,  0,  -5,  0);
SE6=playSe(ATK_02+12,1001);
stopSe( ATK_02+12, SE4, 8 );
entryEffect(  ATK_02+12,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+12,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+12,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+12,  1,  105);--モーション

changeAnime(  ATK_02+14,  0,  9);--パンチ
entryEffect(  ATK_02+14,  3,  0,  1,  0,  -5,  0);
SE7=playSe(ATK_02+14,1000);
stopSe( ATK_02+14, SE5, 8 );
entryEffect(  ATK_02+14,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+14,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+14,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+14,  1,  106);--モーション

setMoveKey(  ATK_02+18,  0,  50,  0,  0);    
setMoveKey(  ATK_02+18,  1,  150,  0,  0);
setMoveKey(  ATK_02+21,  0,  -50,  0,  0);    
setMoveKey(  ATK_02+21,  1,  50,  0,  0);

changeAnime(  ATK_02+18,  0,  13);--パンチ
entryEffect(  ATK_02+18,  1, 0,1,  0,  -5,  0);
SE8=playSe(ATK_02+18,1001);
stopSe( ATK_02+18, SE6, 8 );
--entryFlashBg( ATK_02+18,  1,  0,  0,  0);
entryEffect(  ATK_02+18,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+18,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+18,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+18,  1,  105);--モーション

changeAnime(  ATK_02+20,  0,  10);--パンチ
entryEffect(  ATK_02+20,  2,  0,  1,  0,  0,  0);
SE9=playSe(ATK_02+20,1000);
stopSe( ATK_02+20, SE7, 8 );
entryEffect(  ATK_02+20,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+20,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+20,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+20,  1,  108);--モーション

changeAnime(  ATK_02+24,  0,  9);--パンチ
entryEffect(  ATK_02+24,  1,  0,  1,  0,  -5,  0);
SE10=playSe(ATK_02+24,1000);
stopSe( ATK_02+24, SE8, 8 );
entryEffect(  ATK_02+24,  906,  1,  -1,  0,  0,  0);
entryEffect(  ATK_02+24,  908,  1,  1,  0,  0,  0);
setDamage(  ATK_02+24,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+24,  1,  105);--モーション

changeAnime(  ATK_02+27,  0,  13);--パンチ
dealDamage(  ATK_02+28);
playSe(ATK_02+27,1010);
stopSe( ATK_02+27, SE9, 8 );

entryEffect(  ATK_02+27,  4,  0,  1,  0,  0,  0);
entryEffect(  ATK_02+28,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+28,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+28,  1,  0);--ダメージ振動等
setDrawFront( ATK_02+28, 1, 0);
setDrawFront( ATK_02+28, 1, 1);
changeAnime(  ATK_02+28,  1,  107);--モーション
setScaleKey(ATK_02+27,  1,  1,1);
setScaleKey(ATK_02+28,  1,  0.4,0.4);

end
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_02+30;
	
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-----------------------------ふっ飛ばし
setEnvZoomEnable(  ATK_03,  0);
setMoveKey(  ATK_03,  0,  -25,  0,  0);--P 中央に近づく
setMoveKey(  ATK_03+13, 0,  -500,  120,  50);

setMoveKey(  ATK_03,     1,  50,  20,  0);--E 中央に近づく
setMoveKey(  ATK_03+7,  1,  280,  -150,  -30);

--playSe(ATK_03+11,38);
--entryEffect(  ATK_03+20,  700,  0,  0,  0,  0,  0);
setDisp ( ATK_03+12, 0, 0);
--setDisp ( ATK_03+15, 0, 1);
setDisp ( ATK_03+16, 0,0);
stopBgScroll ( ATK_03+17, 1);
changeAnime(  ATK_03+15,  1,  118);--
setScaleKey(ATK_03+14,  1,  0.4,0.4);
setScaleKey(ATK_03+15,  1,  1,1);
setMoveKey(  ATK_03+15,  1,  250,  -120,  -30);
setMoveKey(  ATK_03+17,  1,  230,  -110,  -30);

--------------------

endPhase( ATK_end+20 );
end


print(  "[lua]execa001");

