print(  "[lua]execa002");

rn_00 = 0;
--rn_01 = rn_00+29;
--rn_02 = rn_01+23;
--rn_03 = rn_02+15;

ATK_01 = rn_00+25;
ATK_02 = ATK_01+16;
ATK_03 = ATK_02+40;
ATK_04 = ATK_03+20;
ATK_05 = ATK_04+11;
---------------
ATK_end = ATK_03+30;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 84, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 89, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_03+33, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入
-------------------------
--P　初期位置
setMoveKey(  rn_00,  0,  -700,  0,  100);
setMoveKey(  rn_00,  1,  700,  0,  0);

changeAnime(  rn_00,  0,  3);

-- setMoveKey(  rn_00+3,  0,  -700,  100,  100);
SE1=playSe( rn_00+3,1018);--ダッシュSE
setMoveKey(  rn_00+15,  0,  100,  30,  100);

setMoveKey(  rn_00+15,  0,  100,  120,  80);
setMoveKey(  rn_00+25,  0,  130,  0,  50);
---------------------
changeAnime(  ATK_01, 0, 19);



--entryFlashBg( ATK_01+2,  1,  0,  0,  0);
entryEffect( ATK_01+2, 200, 0x40,  0, 100, 50, 0);
SE2=playSe(ATK_02+8,1015);
--entryFlashBg( ATK_01+8,  1,  255,  255,  255);
entryEffect( ATK_01+8, 200,   0x40,  0, 100, 50, 0);
SE3=playSe(ATK_02+8,1015);
stopSe( ATK_02+8, SE1, 6 );

ef1 = entryEffectLife( ATK_01+4, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
ef2 = entryEffectLife( ATK_01+9, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
setEffMoveKey( ATK_01+7, ef1,   0, 0, 0);
setEffMoveKey( ATK_01+10, ef2,   0, 0, 0);

setEffMoveKey( ATK_01+13, ef1, 700, 30, 0);
setEffMoveKey( ATK_01+17, ef2, 700, -20, 0);

------------
changeAnime(  ATK_02, 0, 19);
--setMoveKey(  ATK_02+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_02+3,  1,  255,  255,  255);
entryEffect( ATK_02+2, 200,   0x40,  0, 100, 50, 0);
--entryFlashBg( ATK_02+9,  1,  0,  0,  0);
SE4=playSe(ATK_02+3,1015);
stopSe( ATK_02+3, SE2, 6 );
entryEffect( ATK_02+8, 200,   0x40,  0, 100, 50, 0);

ef3 = entryEffectLife( ATK_02+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_02+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_02+4, ef3,   0, 0, 0);

setEffMoveKey( ATK_02+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_02+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_02+16, ef4, 700, -30, 0);

--------------------

setMoveKey(  ATK_02+23,  0,  -240,  50,  -128);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 68; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, 130,  0,  50);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

entryFade( ATK_02+30, 5, 7, 4, 0,0,0,0);


setMoveKey(  ATK_02+30,  0,  -700,  0,  -100);
setDisp( ATK_02+36, 0, 0);
changeAnime(  ATK_02+40,  1,  117);

setMoveKey(  ATK_03,  1,  700,  0,  0);
setMoveKey(  ATK_03+1,  1,  120,  30,  -100);

ef1_atk = entryEffectLife( ATK_03, 202, 8, 0x40, 1, 0, -520,  12);    -- 気弾
ef2_atk = entryEffectLife( ATK_03+15, 202, 6, 0x80, 1, 0, -480,  0);    -- 気弾
ef1_atk1 = entryEffectLife( ATK_03+18, 202, 8, 0, 1, 0, -520,  -20);    -- 気弾
ef2_atk2 = entryEffectLife( ATK_03+25, 202, 6, 0, 1, 0, -480,  0);    -- 気弾
setEffMoveKey( ATK_03+7, ef1_atk, -40,  -12, 0);
setEffMoveKey( ATK_03+20, ef2_atk, -40,  0, 0);
setEffMoveKey( ATK_03+23, ef1_atk1, -40,  -20, 0);
setEffMoveKey( ATK_03+33, ef2_atk2, -40,  0, 0);

-----------------------------------------------------ガード
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
--爆破
entryEffect( ATK_03+8, 23,   0x40,   1,  0,-100,  0);
entryEffect( ATK_03+20, 23,   0x40,  1,  0,-100,  0);
--entryEffect( ATK_03+23, 23,   0x40,  1,  0,-100,  0);
entryEffect( ATK_03+23,  11,  0x40,  1,  0,  0,  0);
entryEffect( ATK_03+33, 23,   0x40,  1,  0,-100,  0);
SE5=playSe(ATK_03+8,1008);
stopSe( ATK_03+8, SE3, 6 );
SE6=playSe(ATK_03+20,1005);
stopSe( ATK_03+20, SE4, 6 );
SE7=playSe(ATK_03+23,1005);
stopSe( ATK_03+23, SE5, 6 );
SE8=playSe(ATK_03+33,1008);
stopSe( ATK_03+33, SE6, 6 );

--entryFlashBg( ATK_03+9,  1,  255,  255,  255);
changeAnime(  ATK_03+8,  1,  104);
setMoveKey(  ATK_03+8,1,  120,  30,  -100);
setMoveKey(  ATK_03+10,  1,  130,  12, -100);

setDamage(  ATK_03+8,  1,  0);
setDamage(  ATK_03+20,  1,  0);
setDamage(  ATK_03+23,  1,  0);
setDamage(  ATK_03+33,  1,  0);

setMoveKey(  ATK_03+20, 1, 130,  12,  -100);
setMoveKey(  ATK_03+23,  1,  150,  0, -100);
--entryFlashBg( ATK_04+33,  1,  255,  255,  255);
setMoveKey(  ATK_03+33,  1,  150,  0,  -100);
setMoveKey(  ATK_03+36, 1,  180,  0,  -100);
dealDamage(  ATK_03+33);

---------------
else
--爆破
entryEffect( ATK_03+8, 11,   0,  1, -40, 0, 0);
entryEffect(  ATK_03+8,  906,  0,  -1,  0,  0, 0);
entryEffect( ATK_03+20, 11,   0, 1, -30, 30, 0);
entryEffect( ATK_03+20,  906,  0,  -1,  0,  0, 0);
entryEffect( ATK_03+23, 11,   0, 1, 20, -20, 0);
entryEffect(  ATK_03+23,  906,  0,  -1,  0,  0, 0);
entryEffect( ATK_03+33, 11,   0x80,  1, 0, 0, 0);
entryEffect(  ATK_03+33,  906,  0,  -1,  0,  0, 0);
playSe(ATK_03+8,1002);
playSe(ATK_03+20,10011);
playSe(ATK_03+23,1002);
playSe(ATK_03+33,1011);

--ダメージ振動等
setDamage(  ATK_03+8,  1,  0);
setDamage(  ATK_03+20,  1,  0);
setDamage(  ATK_03+23,  1,  0);
setDamage(  ATK_03+33,  1,  0);

--entryFlashBg( ATK_03+8,  1,  255,  255,  255);
changeAnime(  ATK_03+8,  1,  106);
setMoveKey(  ATK_03+8,1,  120,  30,  -100);
setMoveKey(  ATK_03+10,  1,  140,  12, -100);

changeAnime(  ATK_03+20,  1,  108);
--entryFlashBg( ATK_03+20,  1, 0,  0,  0);
setMoveKey(  ATK_03+20, 1, 140,  12,  -100);
setMoveKey(  ATK_03+23,  1,  180,  0, -100);
changeAnime(  ATK_03+23,  1,  106);
entryFlashBg( ATK_03+33,  1,  255,  255,  255);
setMoveKey(  ATK_03+33,  1,  180,  0,  -100);
changeAnime(  ATK_03+33,  1,  108);
setMoveKey(  ATK_03+36, 1,  230,  0,  -100);
dealDamage(  ATK_03+33);
-----------------------------------------------------
end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_04+36;	
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,255); -- カット接続用
   endPhase( ATK_dead+6);
   
else
------------

setMoveKey(  ATK_04+36,  1,  230,  0,  -100);
setMoveKey(  ATK_04+40, 1,  210,  0,  -100);
changeAnime(  ATK_04+45,  1,  104);
changeAnime(  ATK_04+48,  1,  100);
endPhase(  ATK_04+44+20);

end



