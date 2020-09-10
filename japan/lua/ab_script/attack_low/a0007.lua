print ("[lua]exec a001");

ATK_01 = 10
ATK_02 = ATK_01+15
ATK_03 = ATK_02+15
ATK_END = ATK_03+45


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 10, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 32, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_02, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


-- ズーム許可
setEnvZoomEnable(0, 1);

-- 味方登場
--                f  eid,life, attr, tgt, tag,  x, y
changeAnime( 0,  0,  3);               -- モーション（ダッシュ）
setMoveKey( 0,   0, -700,  200,   0);   -- 画面外
setMoveKey( 5,   0, -700,  200,   0);   -- 画面外
changeAnime( 5,  0,  11);               -- モーション（ダッシュ）

-- 敵登場
setLastPosKey( 0, 1);
--setMoveKey( 0,   1,  800,  -20,   0);      -- 画面外
changeAnime( 0,  1,    101);               -- モーション(立ち)
entryEffectLife( 5, 913,  60,   0x80,     -1,  0,  0,  0);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 5; --エンドフェイズのフレーム数を置き換える

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
setMoveKey( 15,  0, -50,  20,   0);      -- 画面中央 ＆ 元サイズ

-------------------------------------------------------
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------
setEnvZoomEnable(25, 0);
-- 攻撃
entryFadeBg( ATK_01, 5, 10, 5, 0,  0,  0, 80);

changeAnime( ATK_01,   0, 11);
setShake( ATK_01, 10, 20);

entryEffect( ATK_01+1,   23,   0x40,   1,  0, -100,0);
SE1=playSe( ATK_01,1013);--SE

--Eダメージ
changeAnime( ATK_01+1,  1,   104);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

--移動
setMoveKey( ATK_01+4, 0, -45,  50,  30);-- 中央位置から
setMoveKey( ATK_01+4, 1, 65,  50,  30);-- 中央位置から
changeAnime( ATK_01+4,   0, 13);
SE2=playSe( ATK_01+4,1012);--SE

--移動
setMoveKey( ATK_01+5, 0, -45,  50,  30);-- 中央位置から
setMoveKey( ATK_01+5, 1, 65,  50,  30);-- 中央位置から
setMoveKey( ATK_01+8, 0, -60,  50,  30);-- 中央位置から
setMoveKey( ATK_01+8, 1, 150,  50,  30);-- 中央位置から

--突っ込む

setMoveKey( ATK_01+10, 0, -60,  50,   30);-- 中央位置から
setMoveKey( ATK_01+10, 1, 150,  50,  30);-- 中央位置から

setMoveKey( ATK_02, 0, 50,  30,   35);-- 中央位置から
setMoveKey( ATK_02, 1, 140,  30,  35);-- 中央位置から

--entryFlashBg( ATK_02, 1, 0,  0,  0);
-- 攻撃
changeAnime( ATK_02,   0, 9);
entryEffect( ATK_02, 23, 0x40,   1,  0, -100,0);
playSe( ATK_01,1011);--SE
stopSe( ATK_01, SE1, 6 );
--ダメージ
setDamage( ATK_02+2, 1, 0);  -- ダメージ振動等


-- 攻撃
changeAnime( ATK_02+4, 0, 11);
playSe( ATK_02+4, 1012);--SE
stopSe( ATK_02+4, SE2, 6 );
--ダメージ
setDamage( ATK_02+5, 1, 0);  -- ダメージ振動等
--entryFlashBg( ATK_02+4, 1, 255,  255,  255);

dealDamage( ATK_02+4);
----------------------------
else
-- 攻撃
entryFadeBg( ATK_01, 5, 10, 5, 0,  0,  0, 100);

changeAnime( ATK_01,   0, 11);
setShake( ATK_01, 10, 20);
SE1=playSe( ATK_01,1010);--SE
entryEffect( ATK_01+1,   2,   0x40,   1,  0, 0,0);

--Eダメージ
changeAnime( ATK_01+1,  1,   106);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

--移動
setMoveKey( ATK_01+4, 0, -45,  50,  30);-- 中央位置から
setMoveKey( ATK_01+4, 1, 65,  50,  30);-- 中央位置から
changeAnime( ATK_01+4,   0, 13);
changeAnime( ATK_01+4,   1, 108);
entryEffect( ATK_01+4,   1,   0x40,    1,  -180,  0,0);
SE2=playSe( ATK_01+4,1009);--SE

entryKakimoji( ATK_01+5, 2,1,-1,0,-50,200);--ガガガガガガ
--移動
setMoveKey( ATK_01+5, 0, -45,  50,  30);-- 中央位置から
setMoveKey( ATK_01+5, 1, 65,  50,  30);-- 中央位置から
changeAnime( ATK_01+6, 1, 105);
setMoveKey( ATK_01+8, 0, -60,  50,  30);-- 中央位置から
setMoveKey( ATK_01+8, 1, 150,  50,  30);-- 中央位置から

--突っ込む

setMoveKey( ATK_01+10, 0, -60,  50,   30);-- 中央位置から
setMoveKey( ATK_01+10, 1, 150,  50,  30);-- 中央位置から

setMoveKey( ATK_02, 0, 50,  30,   35);-- 中央位置から
setMoveKey( ATK_02, 1, 140,  30,  35);-- 中央位置から

--entryFlashBg( ATK_02, 1, 0,  0,  0);
-- 攻撃
changeAnime( ATK_02,   0, 9);
playSe( ATK_02,1009);--SE
stopSe( ATK_02, SE1, 6 );
entryEffect( ATK_02, 1,  0x40,   1,  0, 0,0);

--ダメージ
changeAnime( ATK_02+1, 1,  106);-- モーション
setDamage( ATK_02+2, 1, 0);  -- ダメージ振動等


-- 攻撃
changeAnime( ATK_02+4, 0, 11);
changeAnime( ATK_02+5, 1, 108);
playSe( ATK_02+4, 1009);--SE
stopSe( ATK_02+4, SE2, 6 );
entryEffect( ATK_02+5, 3,  0,  1,   0,  -20,  0);

--ダメージ
setDamage( ATK_02+5, 1, 0);  -- ダメージ振動等
--entryFlashBg( ATK_02+4, 1, 255,  255,  255);

dealDamage( ATK_02+4);

end
setEnvZoomEnable(ATK_02+5, 0);
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_02+6;	
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,255); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-- 受け------------------------------------------
-- 味方移動（画面外へ)


--P ふっとび移動
setMoveKey( ATK_02+9, 0, -50,  -10,   0);      -- 中央位置から
setMoveKey( ATK_02+18, 0, -240,  30,  0);-- 中央位置から

changeAnime( ATK_02+16, 0, 0); 

------------------
--E ふっとび移動
setMoveKey( ATK_02+9, 1, 50,  -10,   0);     -- 中央位置から
setMoveKey( ATK_02+18, 1, 700,  40,  0);-- 中央位置から

changeAnime( ATK_02+19, 1, 104); 
changeAnime( ATK_02+20, 1, 100); 

endPhase(ATK_02+20);
end



print ("[lua]exec a001");
