print ("[lua]exec a0012");


ATK_01 = 12;
ATK_02 = ATK_01+46;
ATK_03 = ATK_02+5;
ATK_end = ATK_03+30;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 58, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01+21, 906, 55, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01+21, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_02+3, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

----------------------------------------------
--パンチの応手鵜
setEnvZoomEnable( ATK_01,1);--ズーム
-------------------------------------------
--アタック
-------------------------------------------
entryEffectLife( ATK_01, 914, 80, 0x80,  -1,  0,  0,  0);--移動線
setDrawFront( ATK_01, 1, 0);

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
setMoveKey(  SP_dodge+5, 0, -700,  0,  -50);-- 中央位置から

setDisp(  SP_dodge+5, 0, 0); --味方非表示20170607

setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------

--P移動
setMoveKey(  ATK_01,  0,  -700,  100, 0);
setMoveKey(  ATK_01+1,  0,  -700,  0,  -50);--位置

--E移動
changeAnime(  0,   1,   101);
setLastPosKey( 0, 1);

changeAnime(  ATK_01,   1,   101);--ふっとばされ
-- setMoveKey(  ATK_01,    1,  -660,  -200, -50);
setMoveKey(  ATK_01+5,  1,  -200,  0,     0);--位置
setMoveKey(  ATK_01+10,  1,   130,  0,    0);

changeAnime(  ATK_01+18,  0,  12);--キック１
--攻撃に向かう
setMoveKey(  ATK_01+18,  0,  -700,  0,  -50);
setMoveKey(  ATK_01+21,  0,  -130,  0,  -50);--位置

setMoveKey(  ATK_01+15, 1,     0,  0,    -50);

--ヒット時移動
setMoveKey(  ATK_01+21,  1,  0,  0,  -50);--位置
setMoveKey(  ATK_01+22,  1,  15,  0,  -50);--位置

--ダメージ
entryEffect( ATK_01+21,  23,  0x40,   1,  0,-100,  0);
playSe( ATK_01+21,1010);--SE
entryEffect( ATK_01+21,  908,  0,  1,  0,  0,  0);
entryEffect( ATK_01+21,  906,  0,  -1,  0,  0, 0);

--Eやられ
changeAnime( ATK_01+22,  1,  104);--ダメージ

pauseChara(  ATK_01+22,  3);--硬直

setBgScroll(ATK_01+26,30);

changeAnime(  ATK_01+26,  0,  0);--P 待機
--Eふっ飛ばされ
setMoveKey(  ATK_01+26,  1,  15,  0,  -50);
setMoveKey(  ATK_01+35,  1,  600,  0,  -50);--画面外へ

changeAnime(  ATK_01+36,  0,  3);--P 待機
setMoveKey(  ATK_01+37,  0,  -120,  0, -50);
setMoveKey(  ATK_01+40,  0,  800,  0,  0);    --画面外へ


setMoveKey(  ATK_01+45,  0,  800,  0,  0);    --画面外へ
setMoveKey(  ATK_01+46,  0,  600,  0,  0);    --画面外へ

setMoveKey(  ATK_01+45,  1,  500,  0,  0);--画面外へ
setMoveKey(  ATK_01+46,  1,  600,  0,  0);--画面外へ


------------------
else
--P移動
setMoveKey(  ATK_01,  0,  -700,  100, 0);
setMoveKey(  ATK_01+1,  0,  -700,  0,  -50);--位置

--E移動
changeAnime(  0,   1,   101);
setLastPosKey( 0, 1);

changeAnime(  ATK_01,   1,   104);--ふっとばされ
-- setMoveKey(  ATK_01,    1,  -660,  -200, -50);
setMoveKey(  ATK_01+5,  1,  -200,  0,    -50);--位置
setMoveKey(  ATK_01+10,  1,   130,  0,    0);


changeAnime(  ATK_01+18,  0,  12);--キック１
--攻撃に向かう
setMoveKey(  ATK_01+18,  0,  -700,  0,  -50);
setMoveKey(  ATK_01+21,  0,  -180,  0,  -50);--位置

setMoveKey(  ATK_01+15, 1,     0,  0,    -50);
--ヒット時移動
setMoveKey(  ATK_01+21,  1,  0,  0,  -50);--位置
setMoveKey(  ATK_01+22,  1,  15,  0,  -50);--位置

--ダメージ
entryEffect( ATK_01+21,  1,  0,  1,  0,  0, 0);--HIT
playSe( ATK_01+21,1001);--SE
entryEffect( ATK_01+21,  908,  0,  1,  0,  0,  0);
entryEffect( ATK_01+21,  906,  0,  -1,  0,  0, 0);

--文字
entryKakimoji(  ATK_01+21,  20,  4,  1,  -1,  -20,  -240);--baki
--Eやられ
changeAnime( ATK_01+22,  1,  108);--ダメージ
setDamage(  ATK_01+22,  1,  0);--ダメージ振動等
pauseChara(  ATK_01+22,  3);--硬直

setBgScroll(ATK_01+26,30);

changeAnime(  ATK_01+26,  0,  0);--P 待機
--Eふっ飛ばされ
setMoveKey(  ATK_01+26,  1,  15,  0,  -50);
setMoveKey(  ATK_01+35,  1,  600,  0,  -50);--画面外へ

changeAnime(  ATK_01+36,  0,  3);--P 待機
setMoveKey(  ATK_01+37,  0,  -180,  0, -50);
setMoveKey(  ATK_01+40,  0, -150,  0,  0);    --画面外へ

setMoveKey(  ATK_01+45,  1,  500,  0,  0);--画面外へ
setMoveKey(  ATK_01+46,  1,  600,  0,  0);--画面外へ

end

-------------------
--追撃
-------------------
setMoveKey(  ATK_02+1,  0,  -100,  0,  0);    --画面外へ
setMoveKey(  ATK_02+1,  1,  220,  0,  0);--画面外へ

changeAnime(  ATK_02,  0,  19);--パンチ
entryEffect( ATK_02+1, 200, 0x40,  0, 100, 50, 0);
ef1 = entryEffectLife( ATK_02+1, 202, 3, 0x40, 0, 100, 100,  0);    -- 気弾
setEffMoveKey( ATK_02+1, ef1, 100, 0, 0);
--気弾HIT
entryEffect(ATK_02+2, 203, 0, 1, 0,-30,0);
playSe(ATK_02+1,1015);
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
dealDamage(  ATK_02+1);
playSe(ATK_02+1,1007);
entryEffect(  ATK_02+3,  23,  0x40,   1,  0,-100,  0);
entryEffect(  ATK_02+3,  11,  0x40,  1,  0,  0,  0);
--entryEffect(  ATK_02+1,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+3,  908,  0,  1,  0,  0,  0);
changeAnime(  ATK_02+3,  1,  104);--モーション
------------------
else

setShake(  ATK_02+3,  8,  21);
dealDamage(  ATK_02+3);
playSe(ATK_02+3,1011);

entryEffect(  ATK_02+3,  11,  0x40,  1,  0,  0,  0);
entryEffect(  ATK_02+3,  906,  0,  -1,  0,  0,  0);
entryEffect(  ATK_02+3,  908,  0,  1,  0,  0,  0);
setDamage(  ATK_02+3,  1,  0);--ダメージ振動等
changeAnime(  ATK_02+3,  1,  108);--モーション


end
-----------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)
ATK_dead = ATK_02+4;

        entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
   endPhase( ATK_dead+6);
else

------------

stopBgScroll ( ATK_02+4, -16);
------------------------
setEnvZoomEnable(  ATK_03,  0);
setMoveKey(  ATK_03,  0,  -25,  0,  0);--P 中央に近づく
setMoveKey(  ATK_03+13, 0,  -700,  0,  -50);

setDisp(  ATK_03+13, 0, 0); --味方非表示20170607

setMoveKey(  ATK_03,     1,  50,  20,  0);--E 中央に近づく
setMoveKey(  ATK_03+15,  1,  280,  -10,  0);

entryEffect(  ATK_03+20,  700,  0,  0,  0,  0,  0);
setDisp ( ATK_03+23, 0, 0);
stopBgScroll ( ATK_03+28, 1);
changeAnime(  ATK_03+25+10,  1,  117);

setMoveKey(  ATK_03+28+10,  1,  250,  -10,  0);
setMoveKey(  ATK_03+30+10,  1,  230,  0,  0);

endPhase(  ATK_end+15+10);
end


print ("[lua]exec a0012");
