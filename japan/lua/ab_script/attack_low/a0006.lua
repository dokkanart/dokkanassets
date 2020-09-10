print ("[lua]exec a001");

ATK_01 = 16


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 5, 10, 10, 10, 10, 180);          -- ベース暗め　背景
--shuchusen = entryEffectLife( ATK_01, 906, 32, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_01, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


-- ズーム許可
setEnvZoomEnable(0, 1);

-- 味方登場
--                f  eid,life, attr, tgt, tag,  x, y
changeAnime( 0,  0,  3);               -- モーション（ダッシュ）
setMoveKey( 0,   0, -700,  400,   0);   -- 画面外
setMoveKey( 5,   0, -700,  400,   0);   -- 画面外
changeAnime( 5,  0,  13);               -- モーション（ダッシュ）


-- 敵登場
setLastPosKey( 0, 1);
-- setMoveKey( 0,   1,  800,  -20,   0);      -- 画面外
changeAnime( 0,  1,    101);               -- モーション(立ち)

--集中線
dead_sen=entryEffectLife( 5, 913, 30+20, 0x80,  -1,  0,  0,  0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 7; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, -50,  20,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end


setMoveKey( 10,  1,  50,  0,   0);      -- 画面中央



setMoveKey( 13,  0, -50,  20,   0);      -- 画面中央 ＆ 元サイズ

--setEffRotateKey( 5,dead_sen,25);
-------------------------------------------------------
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
-- 攻撃

----entryFlashBg( ATK_01, 1, 255,  255,  255);
----entryFlashBg( ATK_01+2, 1, 0,  0,  0);
setShake( ATK_01, 10, 20);
playSe( ATK_01,1013);--SE
entryEffect( ATK_01+1,   23,   0x40,  1,   0,  -100,  0);
entryEffect( ATK_01+1,   908,   0,  -1,   0,  0,  0);

--Eダメージ
changeAnime( ATK_01,  1,   104);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

 pauseAll(  ATK_01+1, 5);
 dealDamage(ATK_01+1);

----------------------------
else
-- 攻撃
setBgScroll(ATK_01,44);
----entryFlashBg( ATK_01, 1, 255,  255,  255, 200);
----entryFlashBg( ATK_01+2, 1, 0,  0,  0, 200);
setShake( ATK_01, 10, 20);
playSe( ATK_01,1009);--SE
entryEffect( ATK_01+1,   1,   0x40,  1,   0,  0,  0);
entryEffect( ATK_01+1,   908,   0,  -1,   0,  0,  0);
entryEffect( ATK_01+1,   906,   0,  1,   0,  0,  0);

--Eダメージ
changeAnime( ATK_01+1,  1,   108);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

    pauseAll(  ATK_01+1, 5);
    dealDamage(ATK_01+1);

end
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)


ATK_dead = ATK_01+6;	
setBgScroll(ATK_dead,8);
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-- 受け------------------------------------------
-- 味方移動（画面外へ)
setEnvZoomEnable(ATK_01+9, 0);

--P ふっとび移動
setMoveKey( ATK_01+6, 0, -50,  20,   0);      -- 中央位置から
setMoveKey( ATK_01+12, 0, -700,  70,  0);-- 中央位置から

changeAnime( ATK_01+11, 0, 4); 
changeAnime( ATK_01+13, 0, 0); 

------------------
--E ふっとび移動
setMoveKey( ATK_01+6, 1, 50,  -10,   0);     -- 中央位置から
setMoveKey( ATK_01+10, 1, 220,  -60,  0);-- 中央位置から

changeAnime( ATK_01+17+15, 1, 104); 
changeAnime( ATK_01+19+15, 1, 100); 
setBgScroll(ATK_01+17+15,8);
endPhase(ATK_01+20+15);
end

print ("[lua]exec a001");
