print ("[lua]exec a0009");



ATK_01 = 26
ATK_02 = ATK_01+30
ATK_03 = ATK_02+35
ATK_END = ATK_03+45

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 101, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( ATK_01, 906, 65, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( ATK_01, shuchusen, 1.0, 1.0);
kaisinn = entryEffect( ATK_03+34, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


-- ズーム許可
setEnvZoomEnable(0, 1);

-- 味方登場
--                f  eid,life, attr, tgt, tag,  x, y
changeAnime( 0,  0,  3);               -- モーション（ダッシュ）
setMoveKey( 0,   0, -700,  0,   0);   -- 画面外
setMoveKey( 7,   0, -200, 30,   0);   -- 中央に近づく
stopBgScroll(15, 45);
-- 敵登場
setLastPosKey( 0, 1);
setLastPosKey( 10, 1);
-- setMoveKey( 0,   1,  800,  50,   0);      -- 画面外
-- setMoveKey( 10,  1,  800,  100,   0);      --
changeAnime( 0,  1,    101);               -- モーション(立ち)
setMoveKey( 20,  1,  180,  100,   0);      -- 画面中央

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 20; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, 75,  100,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

setMoveKey( 25,  0, 75,  100,   0);      -- 画面中央 ＆ 元サイズ

-------------------------------------------------------
-----------------------------------------------------
kame_flag = 0x00;
if ((_IS_GUARD_ == 1) or (_IS_FINISH_SPECIAL_ONLY_ == 1)) then
-----------------------

setEnvZoomEnable(25, 0);
entryEffectLife( ATK_01, 907,  60,   0x80,     -1,  0,  0,  0);
-- 攻撃
entryFadeBg( ATK_01, 5, 10, 5, 0,  0,  0, 80);

changeAnime( ATK_01,   0, 9);
setShake( ATK_01, 10, 20);
SE1=playSe( ATK_01,1006);--SE
setSeVolume( ATK_01,1006, 70 );
entryEffect( ATK_01,   23,   0x40,   1,  0,-100,  0);
pauseAll(ATK_01+1,5);
--Eダメージ
changeAnime( ATK_01,  1,   104);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

--[[
--攻撃
changeAnime( ATK_01+4,   0, 10);
--entryEffect( ATK_01+4,   23,   0x40,    1,  0,-100,  0);
playSe( ATK_01+4,1006);--SE

changeAnime( ATK_01+6,   0, 9);
setShake( ATK_01+6, 10, 20);
playSe( ATK_01+6,1006);--SE

entryEffect( ATK_01+6,   23,   0x40,    1,  0,-100,  0);

--Eダメージ
setDamage( ATK_01+7, 1, 0);  -- ダメージ振動等

--攻撃
changeAnime( ATK_01+10,   0, 10);
--entryEffect( ATK_01+10,   23,   0x40,   1,  0,-100,  0);
playSe( ATK_01+10,1006);--SE
--]]
setMoveKey( ATK_01+6,  1,  180,  100,   0);      -- 画面中央
setMoveKey( ATK_01+6,  0, 75,  100,   0);      -- 画面中央 ＆ 元サイズ
--移動
setMoveKey( ATK_01+10, 0, -200,  50,  0);-- 中央位置から
setMoveKey( ATK_01+8, 1, 700,  100,  0);-- 中央位置から


--突っ込む
changeAnime( ATK_01+9,   0, 0);
setMoveKey( ATK_01+25, 0, -230,  0,   0);-- 中央位置から

------------------------------------------
--移動
changeAnime( ATK_02,   0, 3);
setMoveKey( ATK_02+10, 0, 70,  -80,  0);-- 中央位置から

changeAnime( ATK_02,   1, 100);
setMoveKey( ATK_02+4, 1, 700,  100,  0);-- 中央位置から
setMoveKey( ATK_02+5, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_02+9, 1, 180,  -80,  0);-- 中央位置から

-- 攻撃
changeAnime( ATK_02+8,   0, 12);
SE2=playSe( ATK_02+8,1007);--SE
setSeVolume( ATK_02+8,1007, 70 );
entryEffect( ATK_02+8, 23,  0x40,    1,  0,-100,  0);
--ダメージ
changeAnime( ATK_02+8, 1,  104);-- モーション
setDamage( ATK_02+9, 1, 0);  -- ダメージ振動等
pauseAll(ATK_02+9,5);
--[[
changeAnime( ATK_02+11, 0, 0);

-- 攻撃
changeAnime( ATK_02+11, 0, 13);
playSe( ATK_02+11, 1001);--SE

--entryEffect( ATK_02+11, 1,  0x40,  1,   0,  0,  0);

--ダメージ
setDamage( ATK_02+12, 1, 0);  -- ダメージ振動等
--entryFlashBg( ATK_02+12, 1, 255,  255,  255, 255);

-- 攻撃
changeAnime( ATK_02+16,   0, 12);
playSe( ATK_02+16,1001);--SE

entryEffect( ATK_02+16,   23,  0x40,    1,  0,-100,  0);

--ダメージ
setDamage( ATK_02+17, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( ATK_02+20,   0, 13);
playSe( ATK_02+20,1006);--SE

--entryEffect( ATK_02+20,   23,  0x40,     1,  0,-100,  0);

--ダメージ
setDamage( ATK_02+21, 1, 0);  -- ダメージ振動等
--]]
--移動
setMoveKey( ATK_02+14, 1, 180,  -80,  0);-- 中央位置から
setMoveKey( ATK_02+14, 0, 70,  -80,  0);-- 中央位置から

setMoveKey( ATK_02+17, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_02+16, 0, -200,  -30,  0);-- 中央位置から

--突っ込む
changeAnime( ATK_02+17,   0, 0);
setMoveKey( ATK_02+30, 0, -230,  0,   0);-- 中央位置から

------------------------------------------
--移動
changeAnime( ATK_03,   0, 3);

changeAnime( ATK_03,   1, 100);

--移動
setMoveKey( ATK_03, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_03, 0, -230,  -30,  0);-- 中央位置から

setMoveKey( ATK_03+5, 0, -80,  0,   0);-- 中央位置から
setMoveKey( ATK_03+5, 1, 80,  0,   0);-- 中央位置から

setEnvZoomEnable(ATK_03+4, 1);
changeAnime( ATK_03+3,   0, 9);
SE3=playSe( ATK_03+5,1006);--SE
setSeVolume( ATK_03+5,1006, 70 );
stopSe( ATK_03+5, SE1, 6 );

entryEffect( ATK_03+5,   23,   0x40,     1,  0,-100,  0);

--Eダメージ
changeAnime( ATK_03+6,  1,   104);-- モーション

--攻撃
changeAnime( ATK_03+10,   0, 10);
--entryEffect( ATK_03+10,   23,   0x40,    1,  0,-100,  0);
SE4=playSe( ATK_03+10,1006);--SE
setSeVolume( ATK_03+10,1006, 70 );
stopSe( ATK_03+10, SE2, 6 );

changeAnime( ATK_03+14,   0, 12);
setShake( ATK_03+14, 10, 20);
SE5=playSe( ATK_03+14,1007);--SE
setSeVolume( ATK_03+14,1007, 70 );
stopSe( ATK_03+14, SE3, 6 );

entryEffect( ATK_03+14,   23,   0x40,     1,  0,-100,  0);

--攻撃
changeAnime( ATK_03+18,   0, 13);
--entryEffect( ATK_03+18,   23,   0x40,    1,  0,-100,  0);
SE6=playSe( ATK_03+18,1007);--SE
setSeVolume( ATK_03+18,1007, 70 );
stopSe( ATK_03+18, SE4, 6 );

changeAnime( ATK_03+21,   0, 9);
setShake( ATK_03+21, 10, 20);
SE7=playSe( ATK_03+21,1006);--SE
setSeVolume( ATK_03+21,1006, 70 );
stopSe( ATK_03+21, SE5, 6 );
--entryEffect( ATK_03+21,   23,   0x40,    1,  0,-100,  0);

--攻撃
changeAnime( ATK_03+25,   0, 12);
entryEffect( ATK_03+25,   23,   0x40,    1,  0,-100,  0);
SE8=playSe( ATK_03+25,1007);--SE
setSeVolume( ATK_03+25,1007, 70 );
stopSe( ATK_03+21, SE6, 6 );

changeAnime( ATK_03+29, 0, 10);
setShake( ATK_03+29, 10, 20);
SE9=playSe( ATK_03+29,1007);--SE
setSeVolume( ATK_03+29,1007, 70 );
stopSe( ATK_03+29, SE7, 6 );

entryEffect( ATK_03+29,  23,   0x40,    1,  0,-100,  0);
--entryEffect( ATK_03+29,   908,   0,  -1,   0,  0,  0);
--entryEffect( ATK_03+29,   906,   0,  1,   0,  0,  0);

--Eダメージ
setDamage( ATK_03+30, 1, 0);  -- ダメージ振動等

--P ぱんち
changeAnime( ATK_03+34, 0,  13);  -- 蹴り
playSe( ATK_03+34, 1008);--SE
setSeVolume( ATK_03+34,1008, 70 );
--entryEffect( ATK_03+34,   23,   0x40,    1,  0,-100,  0);
dealDamage( ATK_03+34);
----------------------------
else

setEnvZoomEnable(25, 0);
entryEffectLife( ATK_01, 907,  60,  0x80,  -1,  0,  0,  0);
-- 攻撃
entryFadeBg( ATK_01, 5, 10, 5, 0,  0,  0, 80);

changeAnime( ATK_01,   0, 9);
setShake( ATK_01, 10, 20);
SE1=playSe( ATK_01,1000);--SE
setSeVolume( ATK_01,1000, 70 );

entryEffect( ATK_01+1,   1,   0x40,  1,   0,  0,  0);
entryEffect( ATK_01+1,   908,   0,  1,   0,  0,  0);
entryEffect( ATK_01+1,   906,   0,  -1,   0,  0,  0);

--Eダメージ
changeAnime( ATK_01+1,  1,   106);-- モーション
setDamage( ATK_01+1, 1, 0);  -- ダメージ振動等

--攻撃
changeAnime( ATK_01+4,   0, 10);
entryEffect( ATK_01+4,   2,   0x40,  1,   0,  0,  -20);
SE2=playSe( ATK_01+4,1000);--SE
setSeVolume( ATK_01+4,1000, 70 );

changeAnime( ATK_01+6,   0, 9);
setShake( ATK_01+6, 10, 20);
SE3=playSe( ATK_01+6,1000);--SE
setSeVolume( ATK_01+6,1000, 70 );
stopSe( ATK_01+6, SE1, 6 );

entryEffect( ATK_01+6,   1,   0x40,  1,   0,  0,  0);
entryEffect( ATK_01+7,   908,   0,  1,   0,  0,  0);
entryEffect( ATK_01+7,   906,   0,  -1,   0,  0,  0);

--Eダメージ
setDamage( ATK_01+7, 1, 0);  -- ダメージ振動等

--攻撃
changeAnime( ATK_01+10,   0, 10);
entryEffect( ATK_01+10,   2,   0x40,  1,   0,  0,  -10);
SE4=playSe( ATK_01+10,1000);--SE
setSeVolume( ATK_01+10,1000, 70 );
stopSe( ATK_01+10, SE2, 6 );

setMoveKey( ATK_01+15,  1,  180,  100,   0);      -- 画面中央
setMoveKey( ATK_01+15,  0, 70,  100,   0);      -- 画面中央 ＆ 元サイズ
--移動
setMoveKey( ATK_01+20, 0, -200,  50,  0);-- 中央位置から
setMoveKey( ATK_01+18, 1, 700,  100,  0);-- 中央位置から

--突っ込む
changeAnime( ATK_01+20,   0, 0);
setMoveKey( ATK_01+25, 0, -230,  0,   0);-- 中央位置から

------------------------------------------
--移動
changeAnime( ATK_02,   0, 3);
setMoveKey( ATK_02+10, 0, 70,  -80,  0);-- 中央位置から

changeAnime( ATK_02,   1, 100);
setMoveKey( ATK_02+4, 1, 700,  100,  0);-- 中央位置から
setMoveKey( ATK_02+5, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_02+9, 1, 180,  -80,  0);-- 中央位置から

-- 攻撃
changeAnime( ATK_02+8,   0, 12);
SE5=playSe( ATK_02+8,1001);--SE
setSeVolume( ATK_02+8,1001, 70 );
stopSe( ATK_02+8, SE3, 6 );

entryEffect( ATK_02+8, 1,  0x40,  1,   0,  0,  0);
entryEffect( ATK_02+8,   908,   0,  1,   0,  0,  0);
entryEffect( ATK_02+8,   906,   0,  -1,   0,  0,  0);

--ダメージ
changeAnime( ATK_02+8, 1,  106);-- モーション
setDamage( ATK_02+9, 1, 0);  -- ダメージ振動等


-- 攻撃
changeAnime( ATK_02+11, 0, 13);
SE6=playSe( ATK_02+11, 1001);--SE
setSeVolume( ATK_02+11,1001, 70 );
stopSe( ATK_02+11, SE4, 6 );

entryEffect( ATK_02+11, 1,  0x40,  1,   0,  0,  -15);
entryEffect( ATK_02+11,   908,   0,  1,   0,  0,  0);
entryEffect( ATK_02+11,   906,   0,  -1,   0,  0,  0);
--ダメージ
setDamage( ATK_02+12, 1, 0);  -- ダメージ振動等
--entryFlashBg( ATK_02+12, 1, 255,  255,  255);


-- 攻撃
changeAnime( ATK_02+16,   0, 12);
SE7=playSe( ATK_02+16,1001);--SE
setSeVolume( ATK_02+16,1001, 70 );
stopSe( ATK_02+16, SE5, 6 );

entryEffect( ATK_02+16,   2,  0x40,  1,   0,  0,  0);

--ダメージ
setDamage( ATK_02+17, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( ATK_02+20,   0, 13);
SE8=playSe( ATK_02+20,1010);--SE
setSeVolume( ATK_02+20,1010, 70 );
stopSe( ATK_02+20, SE6, 6 );

entryEffect( ATK_02+20,   1,  0x40,  1,   0,  0,  -10);
entryEffect( ATK_02+20,   908,   0,  1,   0,  0,  0);
entryEffect( ATK_02+20,   906,   0,  -1,   0,  0,  0);

--ダメージ
setDamage( ATK_02+21, 1, 0);  -- ダメージ振動等


--移動
setMoveKey( ATK_02+25, 1, 180,  -80,  0);-- 中央位置から
setMoveKey( ATK_02+25, 0, 70,  -80,  0);-- 中央位置から

setMoveKey( ATK_02+27, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_02+27, 0, -200,  -30,  0);-- 中央位置から

--突っ込む
changeAnime( ATK_02+30,   0, 0);
setMoveKey( ATK_02+30, 0, -230,  0,   0);-- 中央位置から

------------------------------------------
--移動
changeAnime( ATK_03,   0, 3);

changeAnime( ATK_03,   1, 100);

--移動
setMoveKey( ATK_03, 1, 700,  0,  0);-- 中央位置から
setMoveKey( ATK_03, 0, -230,  -30,  0);-- 中央位置から

setMoveKey( ATK_03+5, 0, -50,  0,   0);-- 中央位置から
setMoveKey( ATK_03+5, 1, 50,  0,   0);-- 中央位置から

setEnvZoomEnable(ATK_03+4, 1);
changeAnime( ATK_03+3,   0, 9);
SE9=playSe( ATK_03+5,1000);--SE
setSeVolume( ATK_03+5,1000, 70 );
stopSe( ATK_03+5, SE7, 6 );

entryKakimoji( ATK_03+3, 17,1,-1,0,-50,200);--ガガガガガガ
entryEffect( ATK_03+5,   1,   0x40,  1,   0,  0,  0);
entryEffectLife( ATK_03+5,   908,   30,  0,   -1,  0,  0,0);
entryEffectLife( ATK_03+5,   906,   30,  0,   -1,  0,  0,0);

--Eダメージ
changeAnime( ATK_03+6,  1,   106);-- モーション
setDamage( ATK_03+6, 1, 0);  -- ダメージ振動等


--攻撃
changeAnime( ATK_03+10,   0, 10);
entryEffect( ATK_03+10,   2,   0x40,  1,   0,  0,  -12);
SE10=playSe( ATK_03+10,1000);--SE
setSeVolume( ATK_03+10,1000, 70 );
stopSe( ATK_03+10, SE8, 6 );

setMoveKey( ATK_03+14, 0, -80,  0,   0);-- 中央位置から
setMoveKey( ATK_03+14, 1, 60,  0,   0);-- 中央位置から

changeAnime( ATK_03+14,   0, 12);
setShake( ATK_03+14, 10, 20);
SE11=playSe( ATK_03+14,1001);--SE
setSeVolume( ATK_03+14,1001, 70 );
stopSe( ATK_03+14, SE9, 6 );

entryEffect( ATK_03+14,   1,   0x40,  1,   0,  0,  10);
entryEffect( ATK_03+14,   908,   0,  -1,   0,  0,  0);
entryEffect( ATK_03+14,   906,   0,  1,   0,  0,  0);

--Eダメージ
setDamage( ATK_03+14, 1, 0);  -- ダメージ振動等

setMoveKey( ATK_03+18, 0, -60,  0,   0);-- 中央位置から
setMoveKey( ATK_03+18, 1, 50,  0,   0);-- 中央位置から
--攻撃
changeAnime( ATK_03+18,   0, 13);
entryEffect( ATK_03+18,   2,   0x40,  1,   0,  0,  -10);
SE12=playSe( ATK_03+18,1001);--SE
setSeVolume( ATK_03+18,1001, 70 );
stopSe( ATK_03+18, SE10, 6 );

changeAnime( ATK_03+21,   0, 9);
setShake( ATK_03+21, 10, 20);
SE13=playSe( ATK_03+21,1000);--SE
setSeVolume( ATK_03+21,1000, 70 );
stopSe( ATK_03+21, SE11, 6 );

entryEffect( ATK_03+21,   1,   0x40,  1,   0,  0,  5);
entryEffect( ATK_03+21,   908,   0,  -1,   0,  0,  0);
entryEffect( ATK_03+21,   906,   0,  1,   0,  0,  0);

--Eダメージ
setDamage( ATK_03+21, 1, 0);  -- ダメージ振動等

setMoveKey( ATK_03+21, 0, -50,  0,   0);-- 中央位置から
setMoveKey( ATK_03+21, 1, 50,  0,   0);-- 中央位置から
--攻撃
changeAnime( ATK_03+25,   0, 12);
entryEffect( ATK_03+25,   2,   0x40,  1,   0,  0,  3);
SE14=playSe( ATK_03+25,1001);--SE
setSeVolume( ATK_03+25,1001, 70 );
stopSe( ATK_03+25, SE12, 6 );

changeAnime( ATK_03+29,   0, 10);
setShake( ATK_03+29, 10, 20);
SE15=playSe( ATK_03+29,1000);--SE
setSeVolume( ATK_03+29,1000, 70 );
stopSe( ATK_03+29, SE13, 6 );

entryEffect( ATK_03+29,   1,   0x40,  1,   0,  0,  -5);
entryEffect( ATK_03+29,   908,   0,  -1,   0,  0,  0);
entryEffect( ATK_03+29,   906,   0,  1,   0,  0,  0);

--Eダメージ
setDamage( ATK_03+30, 1, 0);  -- ダメージ振動等


--P ぱんち

changeAnime( ATK_03+34, 0,  13);  -- 蹴り


changeAnime( ATK_03+35, 1,  108);  -- 吹っ飛び
playSe( ATK_03+34, 1001);--SE
setSeVolume( ATK_03+34,1001, 70 );
stopSe( ATK_03+34, SE14, 6 );
entryEffect( ATK_03+34,   3,   0,  1,   0,  0,  -20);
setDamage( ATK_03+34, 1, 0);  -- ダメージ振動等

pauseChara( ATK_03+34, 5);
dealDamage( ATK_03+34);

--[[
setMoveKey( ATK_03+39, 0, -80,  0,   0);-- 中央位置から
setMoveKey( ATK_03+39, 1, 80,  0,   0);-- 中央位置から
--ふっとび移動
setMoveKey( ATK_03+45, 1, 230,  0,   0);      -- 中央位置から
setMoveKey( ATK_03+45, 0, -700,  0,  0);-- 中央位置から
--]]

end
--------------------------------
--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

ATK_dead = ATK_03+34;	
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
   endPhase( ATK_dead+6);
   
else
-- 受け------------------------------------------
-- 味方移動（画面外へ)
entryEffectLife( ATK_03+37, 913, 30, 0x80,  -1,  0,  0,  0); -- 流線
setMoveKey( ATK_03+39, 0, -80,  0,   0);-- 中央位置から
setMoveKey( ATK_03+39, 1, 80,  0,   0);-- 中央位置から
--ふっとび移動
setMoveKey( ATK_03+45, 1, 230,  0,   0);      -- 中央位置から
setMoveKey( ATK_03+45, 0, -700,  0,  0);-- 中央位置から


setMoveKey( ATK_END, 0, -700,  0,   0);      -- 画面外へ
setDisp( ATK_END, 0, 0);--味方非表示20170607

setMoveKey( ATK_END+37, 1, 250,  0,   0);      -- 吹っ飛び中
changeAnime( ATK_END+38, 1, 100);               -- モーション(立ち)
setMoveKey( ATK_END+48, 1, 100,  0,   0);      -- 敵画面中央へゆっくり戻す

stopBgScroll(  ATK_END+38, 8);

endPhase(ATK_END+48+20);
end


print ("[lua]exec a001");
