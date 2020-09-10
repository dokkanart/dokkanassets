

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_1 = 36;
SP_ATK_2 = SP_ATK_1+ 20;
SP_ATK_3 = SP_ATK_2+76;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;
SE_13 = 43; --瞬間移動

SP_01 = 150013;
SP_02 = 100187;
SP_03 = 1555;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
--setScaleKey( 0,   0, 1.5, 1.5);
--setScaleKey( 0,   0, 1.5, 1.5);


if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 65, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( SP_ATK_1, 906, 29, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( SP_ATK_1, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( SP_ATK_2+23, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end

------------------------------------------------------
-- 出現(50F)
------------------------------------------------------
changeAnime( 0, 0, 0); 


--画面に相手を表示
 setDisp(6, 1, 1);
 setLastPosKey( 0, 1);

setMoveKey(   6,   1,      700, 0,   0);
setMoveKey(   24,   1,      150, 0,   0);

changeAnime( 6, 1, 101);
--瞬間移動エフェクト
playSe( 30, 43);
shun = entryEffect(  28,  SP_02,  0x80, -1, -50, 50, 50);
--setEffScaleKey( 22, shun, 1, 1.3);

--setEffScaleKey( 30, shun, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 36, 10011, 14, 0x100, -1, 0, 130, 220);    -- シュンッ
setEffScaleKey( 36, ct, 1.4, 1.4);

entryKakimoji(  30,  0,  2,  1,  0,  20,  150);--!!

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 30; --エンドフェイズのフレーム数を置き換える

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
setMoveKey(  SP_dodge+5, 0, 0,  0,  0,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end




setMoveKey(  34,    0,      0,  0,   0);
--setMoveKey(  35,    0,      -200,  20,   0);
setMoveKey( 35,   0,  50, 0,   0);
setDisp ( 36, 0, 1);

ki_ido = entryEffectLife( 36, 311, 100, 0x40,  0,  0,  0,  -100); 
--setEffRotateKey( 36,ki_ido,270);
setEffScaleKey(  36, ki_ido, 1.5, 1.5);

--w/o
entryFade( 32, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryEffectLife( 36, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線


----------------------------------------
--突進部分
----------------------------------------
setDrawFront( SP_ATK_1, 0, 1);
setDrawFront( SP_ATK_1, 1, 0);
--ズーム
setEnvZoomEnable(SP_ATK_1, 1);
setEnvZoomEnable(SP_ATK_1+6, 0);

--Pダッシュ
--changeAnime( SP_ATK_1, 0,  3);  -- 右上向き
-- setScaleKey( SP_ATK_1, 0, 1.2, 1.2);--サイズ変更（大）
--playSe( SP_ATK_1+5,1035);

--移動
--setMoveKey(  SP_ATK_1,    0,      -200,  20,   0);
--setMoveKey( SP_ATK_1+4,   0,  0, 0,   0);
setMoveKey( SP_ATK_1,   0,  50, 0,   0);
setMoveKey( SP_ATK_1+5,   0,  -100, 0,   0);



--P攻撃（パンチ）
changeAnime( SP_ATK_1, 0,  11);
-- setRotateKey( SP_ATK_1+9,0,0);--角度調整
-- setRotateKey( SP_ATK_1+10,0,20);
-- setScaleKey( SP_ATK_1+20, 0, 1,1);--サイズ戻し
 
 --P攻撃後の移動
-- setRotateKey( SP_ATK_2+17, 0, 20);
--setRotateKey( SP_ATK_2+18, 0, 0);

  setMoveKey( SP_ATK_1+8,  0,  -100, 0,   0);
  setMoveKey( SP_ATK_1+15,  0,  -150, 0,   0);
 
setShake(SP_ATK_1+10, 5, 20 );--シュエイク

if (_IS_GUARD_ == 1) then
--ガード
changeAnime( SP_ATK_1, 1,  104);  -- 右上向き
--HIT(当たりました)
 entryEffect( SP_ATK_1+5,  908,  1,  1,  0,  0,  -30);
 --entryKakimoji( SP_ATK_1+5, 21, 1, 1, 100, -200);--バゴォッ
 playSe( SP_ATK_1+5,1013);
else
--HIT(当たりました)
 entryEffect( SP_ATK_1+5,  4,  0x40,  1,  0,  0,  -30);--大　HIT
 entryKakimoji( SP_ATK_1+5, 21, 1, 1, 100, -200);--バゴォッ
 playSe( SP_ATK_1+5,1010);
 setShake(SP_ATK_1+5, 20, 11);--シュエイク
end



--調整
pauseChara(SP_ATK_1, 30);--硬直調整

--演出
--entryEffect( SP_ATK_1+13, 1500,  0,  -1,  0,  0,  0);

--aura2 = entryEffectLife( SP_ATK_1+10,  311,  28,  0x40+0x80, 0,  0,  0,  -120);--オーラ
--setEffScaleKey( SP_ATK_1+10, aura2, 1.3, 1.3);
--setEffScaleKey( SP_ATK_1+26, aura2, 1.3, 1.3);
--setEffScaleKey( SP_ATK_1+27, aura2, 1.3, 1.6);
if (_IS_GUARD_ == 1) then
else
--Eダメージ（ふっ飛び奥へ）
changeAnime( SP_ATK_1+1, 1,  105);  -- 右上向き
-- setRotateKey( SP_ATK_1+9,1,0);
-- setRotateKey( SP_ATK_1+10,1,20);--角度20ど
end

 --Eダメージ後の移動
--  setMoveKey(   SP_ATK_1+5,   1,      100, 0,   0);
  setMoveKey( SP_ATK_1,  1,  150, 0,   0);
  setMoveKey( SP_ATK_1+5,  1,  100, 0,   0);

  setMoveKey( SP_ATK_1+8,  1,  100, 0,   0);
  setMoveKey( SP_ATK_1+15,  1,  200, 0,   0);
--  changeAnime( SP_ATK_1+15, 1, 117);


--[[
if (_IS_GUARD_ == 1) then
-----------------------


( SP_ATK_2+70, 1, 101);

-- 攻撃
changeAnime( SP_ATK_2+70,   0, 9);
entryEffect( SP_ATK_2+70, 23, 0x40,   1,  0, -100,0);
playSe( SP_ATK_2+70,1011);--SE
--ダメージ
setDamage( SP_ATK_2+72, 1, 0);  -- ダメージ振動等

--entryFlashBg( SP_ATK_2, 1, 0,  0,  0);
changeAnime( SP_ATK_2+70, 1, 101);

-- 攻撃
changeAnime( SP_ATK_2+74,   0, 10);
entryEffect( SP_ATK_2+74, 23, 0x40,   1,  0, -100,0);
playSe( SP_ATK_2+74,1011);--SE
--ダメージ
setDamage( SP_ATK_2+76, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( SP_ATK_2+80,   0, 9);
entryEffect( SP_ATK_2+80, 23, 0x40,   1,  0, -100,0);
playSe( SP_ATK_2+80,1011);--SE
--ダメージ
setDamage( SP_ATK_2+82, 1, 0);  -- ダメージ振動等

--entryFlashBg( SP_ATK_2, 1, 0,  0,  0);
changeAnime( SP_ATK_2+80, 1, 101);

-- 攻撃
changeAnime( SP_ATK_2+84,   0, 11);
entryEffect( SP_ATK_2+84, 23, 0x40,   1,  0, -100,0);
playSe( SP_ATK_2+84,1011);--SE
--ダメージ
setDamage( SP_ATK_2+86, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( SP_ATK_2+90, 0, 12);
playSe( SP_ATK_2+90, 1012);--SE

--ダメージ
setDamage( SP_ATK_2+91, 1, 0);  -- ダメージ振動等
--entryFlashBg( SP_ATK_2+4, 1, 255,  255,  255);

dealDamage( SP_ATK_2+90);
----------------------------
else

--entryFlashBg( SP_ATK_2, 1, 0,  0,  0);
-- 攻撃
changeAnime( SP_ATK_2+70,   0, 9);
playSe( SP_ATK_2+70,1009);--SE
entryEffect( SP_ATK_2+70,   1,  0x40,  1,   0,  0,  -10);
entryEffect( SP_ATK_2+70,   908,   0,  1,   0,  0,  0);
entryEffect( SP_ATK_2+70,   906,   0,  -1,   0,  0,  0);

--ダメージ
changeAnime( SP_ATK_2+71, 1,  106);-- モーション
setDamage( SP_ATK_2+72, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( SP_ATK_2+74,   0, 10);
playSe( SP_ATK_2+74,1009);--SE
entryEffect( SP_ATK_2+74,   1,  0x40,  1,   0,  0,  -10);
entryEffect( SP_ATK_2+74,   908,   0,  1,   0,  0,  0);
entryEffect( SP_ATK_2+74,   906,   0,  -1,   0,  0,  0);

--ダメージ
setDamage( SP_ATK_2+76, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( SP_ATK_2+80,   0, 9);
playSe( SP_ATK_2+80,1009);--SE
entryEffect( SP_ATK_2+80,   1,  0x40,  1,   0,  0,  -10);
entryEffect( SP_ATK_2+80,   908,   0,  1,   0,  0,  0);
entryEffect( SP_ATK_2+80,   906,   0,  -1,   0,  0,  0);

--ダメージ
setDamage( SP_ATK_2+82, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( SP_ATK_2+84,   0, 11);
playSe( SP_ATK_2+84, 1009);--SE
entryEffect( SP_ATK_2+84,   1,  0x40,  1,   0,  0,  -10);
entryEffect( SP_ATK_2+84,   908,   0,  1,   0,  0,  0);
entryEffect( SP_ATK_2+84,   906,   0,  -1,   0,  0,  0);

--ダメージ
changeAnime( SP_ATK_2+85, 1,  106);-- モーション
setDamage( SP_ATK_2+86, 1, 0);  -- ダメージ振動等

-- 攻撃
changeAnime( SP_ATK_2+90, 0, 12);
changeAnime( SP_ATK_2+91, 1, 108);
playSe( SP_ATK_2+90, 1009);--SE
entryEffect( SP_ATK_2+91, 4,  0,  1,   0,  -20,  0);

--ダメージ
setDamage( SP_ATK_2+91, 1, 0);  -- ダメージ振動等
--entryFlashBg( ATK_02+4, 1, 255,  255,  255);

dealDamage( SP_ATK_2+90);

end


--setEnvZoomEnable(SP_ATK_2+94, 0);

setMoveKey(   SP_ATK_2+94,   1,      50,  0,   0);
setMoveKey(   SP_ATK_2+96,   1,      250,  0,   0);

setMoveKey(  SP_ATK_2+96,    0,      -100,  20,   0);
setMoveKey(  SP_ATK_2+100,    0,      -150,  20,   0);
]]--
--changeAnime( SP_ATK_2+101, 0, 1);                                    -- かめはめ発射ポーズ
----------------------------------
-- エネルギー波
-----------------------------------
--entryFade( SP_ATK_2, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( SP_ATK_2+2, 16, 2, 6, 0, 252, 255, 255);       -- ベース青　背景

setMoveKey( SP_ATK_2+12,  0,  -150, 0,   0);
setMoveKey( SP_ATK_2+13,  0,  -150, 0,   10);
setMoveKey( SP_ATK_2+20,  0,  -200, 0,   10);
setMoveKey( SP_ATK_2+28,  0,  -200, 0,   10);
setMoveKey( SP_ATK_2+35,  0,  -250, 0,   20);


--setMoveKey(  SP_ATK_2+12,    0,      -150,  20,   0);

--2発目かめはめ波が当たったら相手消す
setEnvZoomEnable(SP_ATK_2+14, 1);
setEnvZoomEnable(SP_ATK_2+36, 0);
--setMoveKey(   SP_ATK_2+31,   1,      250,  0,   0);
setMoveKey( SP_ATK_2+14,  1,  200, 0,   0);
setMoveKey( SP_ATK_2+21,  1,  250, 0,   10);

changeAnime( SP_ATK_2+31, 1,  106);  -- ダメージ
setMoveKey( SP_ATK_2+31,  1,  250, 0,   10);
setMoveKey(  SP_ATK_2+36,    1,      700,  0,   20);


-- setRotateKey( SP_ATK_2+8,0,20);
-- setRotateKey( SP_ATK_2+9,0,0);--角度調整
 
changeAnime( SP_ATK_2+9, 0, 19);                                    -- かめはめ発射ポーズ
if (_IS_GUARD_ == 1) then
else
changeAnime( SP_ATK_2+14, 1, 106);
end
--pauseChara( SP_ATK_2+16, 20);
--delayChara( SP_ATK_2+16, 20, 20);                                    -- 手を出した状態で40f止める

amehame_beam = entryEffectLife( SP_ATK_2+13, SP_03, 7, 0x40,  0,  300,  200,  0);   -- 伸びるかめはめ波
playSe( SP_ATK_2+13, SE_07);

dealDamage(SP_ATK_2+13);


-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+13, 10012, 57, 0, -1, 0, 100, 170); -- ズオッ
setEffRotateKey(SP_ATK_2+13, ct, 15);
setEffShake(SP_ATK_2+13, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+13, ct, 255);
setEffAlphaKey(SP_ATK_2+19, ct, 255);
setEffAlphaKey(SP_ATK_2+20, ct, 0);
setEffScaleKey(SP_ATK_2+13, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+15, ct, 3.0, 3.0);
setEffShake(SP_ATK_2+15, ct, 55, 10);

--pauseChara( SP_ATK_2+31, 20);
--delayChara( SP_ATK_2+31, 20, 20);                                    -- 手を出した状態で40f止める
entryFadeBg( SP_ATK_2+18, 16, 2, 6, 0, 252, 255, 255);       -- ベース青　背景
amehame_beam = entryEffect( SP_ATK_2+28, SP_03, 0x40,  0,  300,  200,  0);   -- 伸びるかめはめ波
playSe( SP_ATK_2+28, SE_07);

dealDamage(SP_ATK_2+28);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+28, 10012, 57, 0, -1, 0, 100, 270); -- ズオッ
setEffRotateKey(SP_ATK_2+28, ct, 15);
setEffShake(SP_ATK_2+28, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+28, ct, 255);
setEffAlphaKey(SP_ATK_2+34, ct, 255);
setEffAlphaKey(SP_ATK_2+45, ct, 0);
setEffScaleKey(SP_ATK_2+28, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+35, ct, 3.0, 3.0);
setEffShake(SP_ATK_2+35, ct, 55, 10);

--playSe( 400, SE_07);

--entryFade( SP_ATK_2+94, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFade( SP_ATK_2+108, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)
ATK_dead = SP_ATK_3+6;	
setBgScroll(ATK_dead,8);
        entryFade( ATK_dead, 5, 5, 17, 119,3,16,0); -- カット接続用
   endPhase( ATK_dead+6);
else
--changeAnime( SP_ATK_3, 0, 1);                                    -- かめはめ発射ポーズ



endPhase(SP_ATK_3+40);
end
--[[
setDisp( SP_ATK_3-2, 0, 0);
setDisp( SP_ATK_3-1, 0, 0);
setDisp( SP_ATK_3, 1, 1);
setMoveKey(  SP_ATK_3,    1,  120,    0,  128);
setScaleKey( SP_ATK_3,    1,  2.5, 2.5);
setMoveKey(  SP_ATK_3+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_3+1,    1,  0.1, 0.1);
setMoveKey(  SP_ATK_3,    0,      700,  0,   0);

changeAnime( SP_ATK_3+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_3+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_3+1, SE_10);

setMoveKey(  SP_ATK_3+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_3+15,   1,  -60,  -200,  -100);
setShake(SP_ATK_3+10,6,15);
setShake(SP_ATK_3+17,15,9);

setRotateKey( SP_ATK_3,  1,  30 );
setRotateKey( SP_ATK_3+2,  1,  80 );
setRotateKey( SP_ATK_3+4,  1, 120 );
setRotateKey( SP_ATK_3+6,  1, 160 );
setRotateKey( SP_ATK_3+8,  1, 200 );
setRotateKey( SP_ATK_3+10,  1, 260 );
setRotateKey( SP_ATK_3+12,  1, 320 );
setRotateKey( SP_ATK_3+14,  1,   0 );

setShakeChara( SP_ATK_3+14, 1, 5,  10);
setShakeChara( SP_ATK_3+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_3+15, ct, 30, 10);
setEffRotateKey( SP_ATK_3+15, ct, -40);
setEffScaleKey( SP_ATK_3+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_3+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_3+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_3+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_3+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_3+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_3+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_3+15, ct, 255);
setEffAlphaKey( SP_ATK_3+105, ct, 255);
setEffAlphaKey( SP_ATK_3+115, ct, 0);

playSe( SP_ATK_3+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_3+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_3+15);

entryFade( SP_ATK_3+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_3+120);

]]--



