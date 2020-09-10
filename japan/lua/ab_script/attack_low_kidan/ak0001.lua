print(  "[lua]execa002");

rn_00 = 0;
--rn_01 = rn_00+29;
--rn_02 = rn_01+23;
--rn_03 = rn_02+15;

ATK_01 = rn_00+36;
rn_01 = ATK_01+18;
ATK_02 = rn_01+25;
ATK_03 = ATK_02+35;
ATK_04 = ATK_03+20;
ATK_05 = ATK_04+11;
---------------
ATK_end = ATK_03+30;

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 151, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( 36, 906, 135, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( 36, shuchusen, 1.0, 1.0);
--setEffScaleKey( ATK_04+44+40, shuchusen, 1.3, 1.3);

kaisinn = entryEffect( ATK_04+37, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入
-------------------------
--P　初期位置
setMoveKey(  rn_00,  0,  -700,  0,  50);
setMoveKey(  rn_00,  1,  700,  0,  0);
SE1=playSe(rn_00,1019);

changeAnime(  rn_00,  0,  3);

setMoveKey(  rn_00+3,  0,  -700,  100,  50);
setMoveKey(  rn_00+15,  0,  100,  30,  50);

setMoveKey(  rn_00+25,  0,  180,  0,  100);



changeAnime(  rn_00+35,  0,  2);
setMoveKey(  rn_00+35,  0,  100,  -30,  75);


---------------------
changeAnime(  ATK_01, 0, 19);
--entryFlashBg( ATK_01+1,  1,  0,  0,  0);
entryEffect( ATK_01+1, 200, 0x40,  0, 100, 50, 0);
SE2=playSe( ATK_01+1, 1015);
--entryFlashBg( ATK_01+8,  1,  255,  255,  255);
entryEffect( ATK_01+8, 200,   0x40,  0, 100, 50, 0);
SE3=playSe( ATK_01+8, 1015);
stopSe( ATK_01+8, SE2, 8 );

ef1 = entryEffectLife( ATK_01+2, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
ef2 = entryEffectLife( ATK_01+9, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
setEffMoveKey( ATK_01+5, ef1,   -100, 0, 0);
setEffMoveKey( ATK_01+10, ef2,   0, 0, 0);

setEffMoveKey( ATK_01+13, ef1, 700, 30, 0);
setEffMoveKey( ATK_01+17, ef2, 700, -20, 0);

setMoveKey(  ATK_01+13,  0,  80,  -35,  50);
-------------------
--changeAnime(  rn_01,  0,  1);
changeAnime(  rn_01+4,  0,  0);
setMoveKey(  rn_01+10,  0,  0,  -40,  0);
setMoveKey(  rn_01+30,  0,  -150,  100,  -50);

------------
changeAnime(  ATK_02, 0, 19);
--setMoveKey(  ATK_02+30,  0,  -120,  200,  0);
--entryFlashBg( ATK_02+3,  1,  255,  255,  255);
entryEffect( ATK_02+2, 200,   0x40,  0, 100, 50, 0);
--entryFlashBg( ATK_02+9,  1,  0,  0,  0);
entryEffect( ATK_02+8, 200,   0x40,  0, 100, 50, 0);
SE4=playSe( ATK_02+2, 1015);
--stopSe( ATK_02+2, SE2, 4 );
SE5=playSe( ATK_02+8, 1015);
stopSe( ATK_02+8, SE4, 8 );

ef3 = entryEffectLife( ATK_02+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_02+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
setEffMoveKey( ATK_02+4, ef3,   0, 0, 0);
setEffMoveKey( ATK_02+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_02+13, ef3, 730, 35, 0);
setEffMoveKey( ATK_02+16, ef4, 700, -30, 0);

entryFade( ATK_02+15, 5, 5, 4, 0,0,0,0);
--------------------
changeAnime(  ATK_02+23,  1,  101);
setMoveKey(  ATK_02+15,  0,  -200,  150,  -70);
setMoveKey(  ATK_02+22,  1,  700,  0, -70);

setDisp(ATK_02+22,0,0); --味方非表示20170607

setMoveKey(  ATK_02+23,  0,  -700, 0, 0);
setMoveKey(  ATK_02+23,  1,  -20, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = ATK_03; --エンドフェイズのフレーム数を置き換える

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
--setMoveKey(  SP_dodge+5, 0, 100,  -30,  75);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
ef1_atk = entryEffectLife( ATK_03, 202, 8, 0x40, 1, 0, -520,  12);    -- 気弾
ef2_atk = entryEffectLife( ATK_03+15, 202, 6, 0x80, 1, 0, -480,  220);    -- 気弾
setEffScaleKey( ATK_03+15, ef2_atk,  0.5, 0.6);
ef1_atk1 = entryEffectLife( ATK_03+18, 202, 8, 0, 1, 0, -520,  -190);    -- 気弾
setEffScaleKey( ATK_03+18, ef1_atk1,  0.5, 0.6);
ef2_atk2 = entryEffectLife( ATK_03+25, 202, 6, 0, 1, 0, -480,  40);    -- 気弾
setEffMoveKey( ATK_03+7, ef1_atk, 0,  12, 0);
setEffMoveKey( ATK_03+20, ef2_atk, 700,  220, 0);
setEffMoveKey( ATK_03+23, ef1_atk1, 700,  -190, 0);
setEffMoveKey( ATK_03+33, ef2_atk2, 40,  40, 0);

--爆破
entryEffect( ATK_03+8, 23, 0x40,  1, 0, -100, 5);
--entryEffect( ATK_03+21, 23, 0x40, 1, 0, -100, -17);
entryEffect( ATK_03+33, 23, 0x40,  1, 0, -100, -15);

playSe( ATK_03+8, 1008);
playSe( ATK_03+33, 1008);

--entryFlashBg( ATK_03+9,  1,  255,  255,  255);
changeAnime(  ATK_03+8,  1,  104);
setMoveKey(  ATK_03+8, 1,  -20,  0,  0);
setMoveKey(  ATK_03+11,  1,  0,  12,  0);

--entryFlashBg( ATK_03+34,  1,  0,  0,  0);
changeAnime(  ATK_03+33,  1,  104);
setMoveKey(  ATK_03+33, 1,  0,  12,  0);
setMoveKey(  ATK_03+35,  1,  40,  40,  0);

ef3_atk = entryEffectLife( ATK_04,    202, 8, 0, 1, 0, -550,  250);    -- 気弾
ef4_atk = entryEffectLife( ATK_04+18, 202, 6, 0, 1, 0, -500,  -200);   -- 気弾
setEffScaleKey( ATK_04+18, ef4_atk,  0.5, 0.6);
ef3_atk1 = entryEffectLife( ATK_04+22, 202, 8, 0x80, 1, 0, -550,  -50);    -- 気弾
setEffScaleKey( ATK_04+18, ef3_atk1, 0.5, 0.6);
ef4_atk2 = entryEffectLife( ATK_04+29, 202, 6, 0, 1, 0, -500,  0);   -- 気弾
setEffMoveKey( ATK_04+7, ef3_atk, 500, 250, 0);
setEffMoveKey( ATK_04+24, ef4_atk, 500, -200, 0);
setEffMoveKey( ATK_04+29, ef3_atk1, 120,  -50, 0);
setEffMoveKey( ATK_04+36, ef4_atk2, 250,  0, 0);

--爆破
entryEffect( ATK_04+30, 23,  0x40,  1,  -100,  0,0);
entryEffect( ATK_04+37, 23,  0x40,  1,  -100,  0,0);
entryEffect( ATK_04+30, 11,  0x40, 1, 0, -50, 0);
entryEffect( ATK_04+37, 11,  0x40, 1, 0, -50, 0);


playSe( ATK_04+30, 1008);
playSe( ATK_04+37, 1008);

--entryFlashBg( ATK_04+30,  1,  255,  255,  255);
changeAnime(  ATK_04+30,  1,  104);
setMoveKey(  ATK_04+31,  1,  40,  40,  5);
setMoveKey(  ATK_04+35, 1,  120,  -50,  5);

--entryFlashBg( ATK_04+37,  1,  255,  255,  255);
dealDamage(  ATK_04+36);


---------------
else

ef1_atk = entryEffectLife( ATK_03, 202, 8, 0x40+0x80, 1, 0, -520,  12);    -- 気弾

ef2_atk = entryEffectLife( ATK_03+15, 202, 6, 0x80, 1, 0, -480,  220);    -- 気弾
setEffScaleKey( ATK_03+15, ef2_atk,  0.5, 0.6);
ef1_atk1 = entryEffectLife( ATK_03+18, 202, 8, 0, 1, 0, -520,  -190);    -- 気弾
setEffScaleKey( ATK_03+18, ef1_atk1,  0.5, 0.6);
ef2_atk2 = entryEffectLife( ATK_03+25, 202, 6, 0, 1, 0, -480,  40);    -- 気弾
setEffMoveKey( ATK_03+7, ef1_atk, 0,  12, 0);
setEffMoveKey( ATK_03+20, ef2_atk, 700,  220, 0);
setEffMoveKey( ATK_03+23, ef1_atk1, 700,  -190, 0);
setEffMoveKey( ATK_03+33, ef2_atk2, 40,  40, 0);





--爆破
entryEffect( ATK_03+8, 11,   0,  1, 0, 0, 5);
--entryEffect( ATK_03+21, 11,   0, 1, 0, 0, -17);
entryEffect( ATK_03+33, 11,   0x80,  1, 0, 0, -15);

playSe( ATK_03+8, 1002);
playSe( ATK_03+33, 1011);

--entryFlashBg( ATK_03+9,  1,  255,  255,  255);
changeAnime(  ATK_03+8,  1,  106);
setMoveKey(  ATK_03+8, 1,  -20,  0,  0);
setMoveKey(  ATK_03+11,  1,  0,  12,  0);

entryFlashBg( ATK_03+34,  1,  0,  0,  0);
changeAnime(  ATK_03+33,  1,  108);
setMoveKey(  ATK_03+33, 1,  0,  12,  0);
setMoveKey(  ATK_03+35,  1,  40,  40,  0);
-----------------------------------------------------


ef3_atk = entryEffectLife( ATK_04,    202, 8, 0, 1, 0, -550,  250);    -- 気弾
ef4_atk = entryEffectLife( ATK_04+18, 202, 6, 0, 1, 0, -500,  -200);   -- 気弾
setEffScaleKey( ATK_04+18, ef4_atk,  0.5, 0.6);
ef3_atk1 = entryEffectLife( ATK_04+22, 202, 8, 0x80, 1, 0, -550,  -50);    -- 気弾
setEffScaleKey( ATK_04+18, ef3_atk1, 0.5, 0.6);
ef4_atk2 = entryEffectLife( ATK_04+29, 202, 6, 0, 1, 0, -500,  0);   -- 気弾
setEffMoveKey( ATK_04+7, ef3_atk, 500, 250, 0);
setEffMoveKey( ATK_04+24, ef4_atk, 500, -200, 0);
setEffMoveKey( ATK_04+29, ef3_atk1, 120,  -50, 0);
setEffMoveKey( ATK_04+36, ef4_atk2, 250,  0, 0);

--爆破
entryEffect( ATK_04+30, 11,   0, 1, 0, 0, 0);
entryEffect( ATK_04+37, 11,  0, 1, 0, 0, 0);

--entryFlashBg( ATK_04+30,  1,  255,  255,  255);
changeAnime(  ATK_04+30,  1,  106);
setMoveKey(  ATK_04+31,  1,  40,  40,  5);
setMoveKey(  ATK_04+35, 1,  120,  -50,  5);

entryFlashBg( ATK_04+37,  1,  255,  255,  255);
changeAnime(  ATK_04+36,  1,  108);
dealDamage(  ATK_04+36);
end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_04+36;	
        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
   
else
------------

setMoveKey(  ATK_04+36,  1,  120,  -50,  10);
setMoveKey(  ATK_04+40, 1,  250,  0,  10);
endPhase(  ATK_04+44+40);

end


