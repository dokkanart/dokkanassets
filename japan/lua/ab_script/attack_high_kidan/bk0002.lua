print ("[lua]exec a0012");


ATK_01 = 10;
ATK_02 = ATK_01+67;
ATK_03 = ATK_02+30;
ATK_04 = ATK_03+12;
ATK_05 = ATK_04+13;
ATK_06 = ATK_05+13;
ATK_07 = ATK_06+12;
ATK_08 = ATK_07+11;
ATK_09 = ATK_08+11;
ATK_end = ATK_09+30;


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 165, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01+2, 906, 173, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01+2, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_09+10, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

-------------------------
--導入向かう
-------------------------

--P初期位置
setMoveKey(  0,  0,  -700,  0,  0);
setLastPosKey( 0, 1);
-- setMoveKey(  0,  1,  700,  0,  0);
changeAnime(  0,  0,  0);
changeAnime(  0,  1,  100);
--初期位置
changeAnime(  1,  0,  3);
setMoveKey(  5,  0,  -130,  0,  0);

---------------------------------------------
--瞬間移動
---------------------------------------------
playSe(ATK_01+5,43)

--Pモーション
changeAnime(  ATK_01+2,  0,  17);

--エフェクト
entryEffect(  ATK_01+5,  700,  0,  0,  0,  0,  0);
entryEffect(  ATK_01+4,  906,  0,  0,  0,  0,  0);


--消える
setDisp ( ATK_01+6, 0, 0);
setDisp ( ATK_01+7, 0, 1);
changeAnime(  ATK_01+7,  0,  0);
setDisp ( ATK_01+8, 0,0);
setDisp ( ATK_01+9, 0, 1);
entryKakimoji(  ATK_01+7,  11,  1,  -1,  0,  -120,  180);
setDisp ( ATK_01+10, 0, 0);
entryEffectLife(  ATK_01+18, 913,  55,   0x80,  -1,  0,  0,  0);
--背景スクロール
setBgScroll(  ATK_01+17, 8);
setBgScroll(  ATK_01+18, 32);

setScaleKey( ATK_01+19, 0,  1.5, 1.5);
setScaleKey( ATK_01+20, 0,  1, 1);
setMoveKey(  ATK_01+15,  0,  -200,  0,  0);--
setMoveKey(  ATK_01+16,  0,  -50,  50,  0);--

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 40; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, -50,  50,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


setMoveKey( ATK_01+25,  1,  700,  0,  0);--
setMoveKey( ATK_01+35,  1,  120,  0,  0);--
--setBgScroll(  ATK_01+24, 20);
--setBgScroll(  ATK_01+25, 8);

B_01=25

entryEffect(  ATK_01+26+B_01,  700,  0,  0,  0,  0,  0);
setMoveKey(  ATK_01+28+B_01,  0,  -50,  50,  0);--
setMoveKey(  ATK_01+33+B_01,  0,  -50,  0,  0);--
setDisp (ATK_01+28+B_01, 0, 1);
setDisp (ATK_01+29+B_01, 0, 0);
setDisp (ATK_01+30+B_01, 0, 1);
setDisp (ATK_01+31+B_01, 0, 0);
setDisp (ATK_01+32+B_01, 0, 1);
entryKakimoji(  ATK_01+27+B_01,  0,  2,  1,  0,  20,  150);--!!

changeAnime(  ATK_01+33+B_01,  0,  12);--蹴り
playSe( ATK_01+33+B_01,1010);
setShake( ATK_01+33+B_01,  7,  15);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
entryEffect(  ATK_01+36+B_01,  23,  0,  1,  0,-100,  0);
playSe(ATK_01+35+B_01,1011);
entryEffectLife( ATK_01+36+B_01,  908,  10,  0, -1,  0,  0,  0);

changeAnime(  ATK_01+37+B_01,  1,  104);--モーション

-----------------------
else

entryKakimoji(  ATK_01+37+B_01,  20,  4,  -1,  0,  -90,  -200);--baki
--entryFlashBg(  ATK_01+35+B_01,  5,  255,  255,  255);
entryEffect(  ATK_01+36+B_01,  3,  0,  1,  0,  -30,  0);
entryEffect( ATK_01+35+B_01,  906,  1,  -1,  0,  0,  0);
entryEffectLife( ATK_01+36+B_01,  908,  10,  0, -1,  0,  0,  0);

changeAnime(  ATK_01+37+B_01,  1,  106);--モーション
pauseChara( ATK_01+38+B_01,  5);


end
setMoveKey( ATK_01+38+B_01,  1,  120,  0,  0);--
setMoveKey( ATK_02+28,  1,  128,  5,  0);--
--------------------------------------------
--追撃気弾
--------------------------------------------

--P 移動
setMoveKey( ATK_02,  0,  -50,  0,  0);
changeAnime(  ATK_02+12,  0,  0);
setMoveKey( ATK_02+10,  0,  -100,  -20,  0);

changeAnime(  ATK_02+15,  0,  17);


setEnvZoomEnable(ATK_03-4,1);
--------------------------------------------

setMoveKey( ATK_03,  0,  -100,  -20,  0);
setMoveKey( ATK_04+16,  0,  -180,  -20,  0);
--気弾連打
changeAnime(  ATK_03, 0, 19);
--entryFlashBg( ATK_03+2,  1,  0,  0,  0);
entryEffect( ATK_03+3, 200, 0x40,  0, 100, 50, 0);
--entryFlashBg( ATK_03+8,  1,  255,  255,  255);
entryEffect( ATK_03+8, 200,   0x40,  0, 100, 50, 0);

entryEffectLife( ATK_03+8,  908,  66,  0, -1,  0,  0,  0);


ef1 = entryEffectLife( ATK_03+4, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
ef2 = entryEffectLife( ATK_03+9, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
SE1=playSe(ATK_03+4,1015);
SE2=playSe(ATK_03+9,1015);
--setEffMoveKey( ATK_03+7, ef1,   0, 0, 0);
--setEffMoveKey( ATK_03+10, ef2,   0, 0, 0);
setMoveKey( ATK_03+4,  1,  128,  5,  0);
setMoveKey( ATK_03+5,  1,  130,  5,  0);
changeAnime(  ATK_03+5,  1,  108);

setEffMoveKey( ATK_03+5, ef1, 100, 0, 0);
setEffMoveKey( ATK_03+10, ef2, 100, 10, 0);
setEnvZoomEnable(ATK_03+10,1);
--気弾HIT
entryEffect(ATK_03+5, 203, 0, 1, 0,-30,0);
hit_ef1 = entryEffect( ATK_03+6, 11, 0,  1, 0, 0, 5);
setEffScaleKey( ATK_03+6, hit_ef1,  2, 2);
SE3=playSe(ATK_03+6,1011);
setSeVolume( ATK_03+6, 1011, 80 );
--stopSe( ATK_03+4, SE1, 6 );

entryEffect(ATK_03+10, 203, 0, 1, 0,-30,10);
hit_ef2 = entryEffect( ATK_03+11, 11, 0,  1, -50, 80, 5);
setEffScaleKey( ATK_03+11, hit_ef2,  1.3, 1.3);
--SE4=playSe(ATK_03+11,1011);
--stopSe( ATK_03+11, SE2, 6 );
------------
changeAnime(  ATK_04, 0, 19);
--entryFlashBg( ATK_04+3,  1,  255,  255,  255);
entryEffect( ATK_04+2, 200,   0x40,  0, 100, 50, 0);
--entryFlashBg( ATK_04+9,  1,  0,  0,  0);
entryEffect( ATK_04+8, 200,   0x40,  0, 100, 50, 0);

ef3 = entryEffectLife( ATK_04+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_04+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
SE5=playSe(ATK_04+3,1015);
--stopSe( ATK_04+3, SE2, 6 );
SE6=playSe(ATK_04+8,1015);
--stopSe( ATK_04+8, SE4, 6 );
--setEffMoveKey( ATK_04+4, ef3,   0, 0, 0);
--setEffMoveKey( ATK_04+9, ef4,   0, 0, 0);

setMoveKey( ATK_03+4,  1,  130,  5,  0);
setMoveKey( ATK_03+5,  1,  135,  5,  0);

setEffMoveKey( ATK_04+4, ef3, 100, 0, 0);
setEffMoveKey( ATK_04+9, ef4, 100, 10, 0);


--気弾HIT
entryEffect(ATK_04+5, 203, 0, 1, 0,-30,0);
hit_ef3 = entryEffect( ATK_04+6, 11, 0,  1, 50, 50, 5);
setEffScaleKey( ATK_04+6, hit_ef3,  1, 1);
entryEffect(ATK_04+10, 203, 0, 1, 0,-30,10);
hit_ef4 = entryEffect( ATK_04+11, 11, 0,  1, 0, -34, 5);
setEffScaleKey( ATK_04+11, hit_ef4,  2, 2);
--SE7=playSe(ATK_04+6,1002);
--stopSe( ATK_04+6, SE3, 6 );
--SE8=playSe(ATK_04+11,1011);
--stopSe( ATK_04+11, SE5, 6 );

--気弾連打
changeAnime(  ATK_05, 0, 19);
--entryFlashBg( ATK_05+2,  1,  0,  0,  0);
entryEffect( ATK_05+3, 200, 0x40,  0, 100, 50, 0);
--entryFlashBg( ATK_05+8,  1,  255,  255,  255);
entryEffect( ATK_05+8, 200,   0x40,  0, 100, 50, 0);

ef1 = entryEffectLife( ATK_05+4, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
ef2 = entryEffectLife( ATK_05+9, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
--SE9=playSe(ATK_05+4,1011);
--stopSe( ATK_05+4, SE7, 6 );
--SE10=playSe(ATK_05+9,1011);
--stopSe( ATK_05+9, SE8, 6 );
--setEffMoveKey( ATK_05+7, ef1,   0, 0, 0);
--setEffMoveKey( ATK_05+10, ef2,   0, 0, 0);
setMoveKey( ATK_05+4,  1,  135,  5,  0);
setMoveKey( ATK_05+5,  1,  140,  5,  0);
changeAnime(  ATK_05+5,  1,  108);
setEffMoveKey( ATK_05+5, ef1, 100, 0, 0);
setEffMoveKey( ATK_05+10, ef2, 100, 10, 0);

--気弾HIT
entryEffect(ATK_05+5, 203, 0, 1, 0,-30,0);
hit_ef5 = entryEffect( ATK_05+6, 11, 0,  1, -40, 40, 5);
setEffScaleKey( ATK_05+6, hit_ef5,  1.1, 1.1);

entryEffect(ATK_05+10, 203, 0, 1, 0,-30,10);
hit_ef6 = entryEffect( ATK_05+11, 11, 0,  1, -30, 40, 5);
setEffScaleKey( ATK_05+11, hit_ef6,  2, 2);
SE11=playSe(ATK_05+5,1011);
setSeVolume( ATK_05+5, 1011, 80 );
--stopSe( ATK_05+5, SE8, 6 );
--SE12=playSe(ATK_05+10,1002);
--stopSe( ATK_05+10, SE10, 6 );
------------
changeAnime(  ATK_06, 0, 19);
--entryFlashBg( ATK_06+3,  1,  255,  255,  255);
entryEffect( ATK_06+2, 200,   0x40,  0, 100, 50, 0);
--entryFlashBg( ATK_06+9,  1,  0,  0,  0);
entryEffect( ATK_06+8, 200,   0x40,  0, 100, 50, 0);

ef3 = entryEffectLife( ATK_06+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_06+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
--setEffMoveKey( ATK_06+4, ef3,   0, 0, 0);
--setEffMoveKey( ATK_06+9, ef4,   0, 0, 0);

setMoveKey( ATK_05+4,  1,  140,  5,  0);
setMoveKey( ATK_05+5,  1,  145,  5,  0);

setEffMoveKey( ATK_06+4, ef3, 100, 0, 0);
setEffMoveKey( ATK_06+9, ef4, 100, 10, 0);

--気弾HIT
entryEffect(ATK_06+5, 203, 0, 1, 0,-30,0);
hit_ef7 = entryEffect( ATK_06+6, 11, 0,  1, 0, 0, 5);
setEffScaleKey( ATK_06+6, hit_ef7,  1, 1);

entryEffect(ATK_06+10, 203, 0, 1, 0,-30,10);
hit_ef8 = entryEffect( ATK_06+11, 11, 0,  1, 30, 40, 5);
setEffScaleKey( ATK_06+11, hit_ef8,  1.2, 1.2);

--SE13=playSe(ATK_06+4,1011);
--stopSe( ATK_06+4, SE9, 6 );
--SE15=playSe(ATK_06+9,1011);
--stopSe( ATK_06+9, SE13, 6 );
--SE14=playSe(ATK_06+5,1011);
--stopSe( ATK_06+9, SE11, 6 );
SE16=playSe(ATK_06+10,1011);
--stopSe( ATK_06+10, SE14, 6 );

-------------------

--気弾連打
changeAnime(  ATK_08, 0, 19);
--entryFlashBg( ATK_08+2,  1,  0,  0,  0);
entryEffect( ATK_08+3, 200, 0x40,  0, 100, 50, 0);
--entryFlashBg( ATK_08+8,  1,  255,  255,  255);
entryEffect( ATK_08+8, 200,   0x40,  0, 100, 50, 0);

ef1 = entryEffectLife( ATK_08+4, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
ef2 = entryEffectLife( ATK_08+9, 202, 16, 0x40, 0, 100, 100,  0);    -- 気弾
--setEffMoveKey( ATK_08+7, ef1,   0, 0, 0);
--setEffMoveKey( ATK_08+10, ef2,   0, 0, 0);
changeAnime(  ATK_08+5,  1,  108);
setEffMoveKey( ATK_08+5, ef1, 100, 0, 0);
setEffMoveKey( ATK_08+10, ef2, 100, 10, 0);

--気弾HIT
entryEffect(ATK_08+5, 203, 0, 1, 0,-30,0);
hit_ef9 = entryEffect( ATK_08+6, 11, 0,  1, 0, 0, 5);
setEffScaleKey( ATK_08+6, hit_ef9,  1.4, 1.4);
entryEffect(ATK_08+10, 203, 0, 1, 0,-30,10);

hit_ef10 = entryEffect( ATK_08+11, 11, 0,  1, 30, 70, 5);
setEffScaleKey( ATK_08+11, hit_ef10,  1, 1);

--SE17=playSe(ATK_08+4,1011);
--stopSe( ATK_08+4, SE13, 6 );
--SE19=playSe(ATK_08+9,1011);
--stopSe( ATK_08+9, SE17, 6 );
--SE18=playSe(ATK_08+5,1011);
--stopSe( ATK_08+5, SE14, 6 );
SE20=playSe(ATK_08+11,1011);
stopSe( ATK_08+11, SE16, 6 );
------------
changeAnime(  ATK_09, 0, 19);
--entryFlashBg( ATK_09+3,  1,  255,  255,  255);
entryEffect( ATK_09+2, 200,   0x40,  0, 100, 50, 0);
--entryFlashBg( ATK_09+9,  1,  0,  0,  0);
entryEffect( ATK_09+8, 200,   0x40,  0, 100, 50, 0);

ef3 = entryEffectLife( ATK_09+3, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
ef4 = entryEffectLife( ATK_09+8, 202, 16, 0x40, 0, 100, 0,  0);    -- 気弾
--setEffMoveKey( ATK_09+4, ef3,   0, 0, 0);
--setEffMoveKey( ATK_09+9, ef4,   0, 0, 0);

setEffMoveKey( ATK_09+4, ef3, 100, 0, 0);
setEffMoveKey( ATK_09+9, ef4, 100, 10, 0);

dealDamage( ATK_09+10);
--気弾HIT
entryEffect(ATK_09+5, 203, 0, 1, 0,-30,0);
hit_ef11 = entryEffect( ATK_09+6, 11, 0,  1, -40, -40, 5);
setEffScaleKey( ATK_09+6, hit_ef11,  1, 1);
setEnvZoomEnable(ATK_09+9,0);

--SE21=playSe(ATK_09+4,1011);
--stopSe( ATK_09+4, SE18, 6 );
--SE22=playSe(ATK_09+5,1011);
--stopSe( ATK_09+5, SE20, 6 );
--SE23=playSe(ATK_09+6,1052);
--stopSe( ATK_09+12, SE20, 6 );
--SE24=playSe(ATK_09+9,1011);
--stopSe( ATK_09+9, SE21, 6 );
setShake( ATK_09+10,  10,  	33);

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------

changeAnime(  ATK_09+10,  1,  104);
playSe(ATK_09+10,1014);
stopSe( ATK_09+10, SE23, 6 );
------------------
else
changeAnime(  ATK_09+10,  1,  106);

end


entryEffect(ATK_09+10, 203, 0, 1, 0,-30,10);
hit_ef12 = entryEffect( ATK_09+11, 11, 0,  1, 0, 0, 5);
setEffScaleKey( ATK_09+11, hit_ef12,  3, 3);
playSe(ATK_09+10,1011);
stopSe( ATK_09+10, SE23, 6 );
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

	ATK_dead = ATK_09+11;
        entryFade( ATK_dead, 5, 5, 17, 64,32,32,80); -- カット接続用
   endPhase( ATK_dead+6);
   
else
setShake( ATK_09+18,  4,  	12);
changeAnime(  ATK_09+25+38,  1,  104);
changeAnime(  ATK_09+25+40,  1,  100);
endPhase(  ATK_09+25+40);
end


