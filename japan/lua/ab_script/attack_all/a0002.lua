

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SP_ATK_1 = 0;
SP_ATK_2 = SP_ATK_1+60;
SP_ATK_3 = SP_ATK_2+30;
SP_ATK_4 = SP_ATK_3+50;



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


SP_02 = 100187;
SP_03 = 150013;


multi_frm = 2;

if ((_IS_CRITICAL_ == 1) ) then --会心の場合

entryFadeBg( 0, 30, 90, 10, 10, 10, 10, 180);          -- ベース暗め　背景
shuchusen = entryEffectLife( SP_ATK_1+33, 906, 57, 0x00,  -1, 0,  0,  0);   -- 集中線　61
setEffScaleKey( SP_ATK_1+33, shuchusen, 1.0, 1.0);

kaisinn = entryEffect( SP_ATK_3+12, 1110, 0x80,      -1,  0,  0,  0);   -- 会心の最後のエフェクト

else

end


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 1);

setMoveKey(   0,   0,    -700, 0,   0);
setMoveKey(   1,   1,    700, 0,   0);
setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);


------------------------------------------------------
-- 全体攻撃２高速移動現れパンチ
------------------------------------------------------
changeAnime( SP_ATK_1, 0, 0); 


-- 敵登場
setLastPosKey( 0, 1);
--setMoveKey( 0,   1,  800,  -20,   0);      -- 画面外
changeAnime( 0,  1,    101);               -- モーション(立ち)
--setMoveKey( 10,  1,  50,  0,   -20);      -- 画面中央
--entryEffectLife( 5, 913,  60,   0x80,     -1,  0,  0,  0);



setMoveKey( SP_ATK_1+14,  1,  700,  0,  0);--

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
setMoveKey(  SP_dodge+5, 0, 0,  -50,  0,  0);-- 中央位置から
setMoveKey(  SP_dodge+9, 0, -1000,  0,   0);-- 中央位置から
--setDisp( SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

setEnvZoomEnable(  SP_ATK_1+16,  1);

setMoveKey( SP_ATK_1+25,  1,  120,  0,  0);--

entryEffect(  SP_ATK_1+26,  700,  0,  0,  -50,  0,  0);
--playSe(SP_ATK_1+26,38);
setMoveKey(  SP_ATK_1+28,  0,  -50,  0,  0);--
setMoveKey(  SP_ATK_1+33,  0,  -50,  0,  0);--
setDisp (SP_ATK_1+28, 0, 1);
setDisp (SP_ATK_1+29, 0, 0);
setDisp (SP_ATK_1+30, 0, 1);
entryKakimoji(  SP_ATK_1+27,  0,  2,  1,  0,  20,  150);--!!

-- エフェクト
aura = entryEffectLife( SP_ATK_1+28,  311,  28,  0x40+0x80, 0,  0,  0,  -120);--オーラ
setEffScaleKey( SP_ATK_1+28, aura, 1.3, 1.3);


setDisp (SP_ATK_1+31, 0, 0);
setDisp (SP_ATK_1+32, 0, 1);

--演出
entryEffect( SP_ATK_1+33, 1500,  0,  -1,  0,  0,  0);

--連撃
----------------------------------------------------
changeAnime(  SP_ATK_1+33,  0,  11);--パンチ3

kame_flag = 0x00;
if (_IS_GUARD_ == 1) then
-----------------------
playSe(SP_ATK_1+35,1013);
entryEffect(  SP_ATK_1+36,  908,  1,  1,  0,  0,  0);

changeAnime(  SP_ATK_1+37,  1,  104);--モーション
----------------------------
else
entryKakimoji(  SP_ATK_1+37,  20,  4,  -1,  0,  -90,  -230);--baki

entryEffect(  SP_ATK_1+36,  4,  0,  1,  0,  0,  0);
playSe(SP_ATK_1+35,1000);
entryEffect(  SP_ATK_1+35,  906,  1,  -1,  0,  0,  0);
entryEffect(  SP_ATK_1+36,  908,  1,  1,  0,  0,  0);

changeAnime(  SP_ATK_1+37,  1,  106);--モーション
setShake(  SP_ATK_1+36,  10,  21);
end


----------------------------------------------------
changeAnime(  SP_ATK_1+38,  0,  12);--キック1
kame_flag = 0x00;
if (_IS_GUARD_ == 1) then
-----------------------
playSe(SP_ATK_1+40,1007);
entryEffect(  SP_ATK_1+41,  908,  1,  1,  0,  0,  0);

changeAnime(  SP_ATK_1+42,  1,  104);--モーション
setShake(  SP_ATK_1+41,  10,  21);
----------------------------
else
entryEffect(  SP_ATK_1+41,  2,  0,  1,  0,  0,  0);
playSe(SP_ATK_1+40,1009);
entryEffect(  SP_ATK_1+40,  906,  1,  -1,  0,  0,  0);
entryEffect(  SP_ATK_1+41,  908,  1,  1,  0,  0,  0);

changeAnime(  SP_ATK_1+42,  1,  106);--モーション
end

----------------------------------------------------
changeAnime(  SP_ATK_1+43,  0,  13);--キック2

kame_flag = 0x00;
if (_IS_GUARD_ == 1) then
-----------------------
playSe(SP_ATK_1+45, 1007);
entryEffect(  SP_ATK_1+46,  908,  1,  1,  0,  0,  0);

changeAnime(  SP_ATK_1+47,  1,  104);--モーション
----------------------------
else
entryEffect(  SP_ATK_1+46,  3,  0,  1,  0,  0,  0);
playSe(SP_ATK_1+45, 1009);
entryEffect(  SP_ATK_1+45,  906,  1,  -1,  0,  0,  0);
entryEffect(  SP_ATK_1+46,  908,  1,  1,  0,  0,  0);

changeAnime(  SP_ATK_1+47,  1,  106);--モーション
setShake(  SP_ATK_1+46,  10,  21);
end

----------------------------------------------------
changeAnime(  SP_ATK_1+48,  0,  14);--キック3
dealDamage(  SP_ATK_1+51);
kame_flag = 0x00;
if (_IS_GUARD_ == 1) then
-----------------------
playSe(SP_ATK_1+55,1014);
entryEffect(  SP_ATK_1+56,  908,  1,  1,  0,  0,  0);

changeAnime(  SP_ATK_1+57,  1,  104);--モーション
setShake(  SP_ATK_1+56,  10,  21);
----------------------------
else
entryEffect(  SP_ATK_1+51,  5,  0,  1,  0,  0,  0);
playSe(SP_ATK_1+55,1010);
entryEffect(  SP_ATK_1+55,  906,  1,  -1,  0,  0,  0);
entryEffect(  SP_ATK_1+56,  908,  1,  1,  0,  0,  0);

changeAnime(  SP_ATK_1+57,  1,  106);--モーション
setShake(  SP_ATK_1+56,  10,  21);
entryKakimoji(  SP_ATK_1+52,  19,  4,  -1,  0,  -90,  230);--baki

end
--pauseChara(  SP_ATK_1+63,  10);


-------------------------------------------------
--	吹っ飛び補完
-------------------------------------------------


-- 味方移動（画面外へ)
setBgScroll(SP_ATK_2+5,80);
setEnvZoomEnable(SP_ATK_2+9, 0);
--entryEffectLife( SP_ATK_2+9, 913, 30, 0x80,  -1,  0,  0,  0); -- 流線
entryFadeBg( SP_ATK_2+9,  1,  70,  10, 2,7,69,255);

tate=entryEffectLife( SP_ATK_2+9, 914, 70, 0x80,  -1,  0,  0,  0);
setEffRotateKey(SP_ATK_2+9,tate,-45);
setEffScaleKey(SP_ATK_2+9,tate,1.7,1.3);

--P ふっとび移動
setMoveKey( SP_ATK_2+6, 0, -100, -40,   0);      -- 中央位置から
setMoveKey( SP_ATK_2+12, 0, -700,  70,  0);-- 中央位置から

changeAnime( SP_ATK_2+11, 0, 4); 
changeAnime( SP_ATK_2+13, 0, 0); 

------------------
--E ふっとび移動
setMoveKey( SP_ATK_2+6, 1, 50,  -10,   0);     -- 中央位置から
setMoveKey( SP_ATK_2+10, 1, 220,  140,  32);-- 中央位置から
--setMoveKey( SP_ATK_2+20, 1, 120,  30,  -20);-- 中央位置から


-- 追撃------------------------------------------
--P パンチ3
--setMoveKey( SP_ATK_2+25, 0, -700,  70,  -80);-- 中央位置から
--setMoveKey( SP_ATK_2+30, 0, -120,  -20,  -30);-- 中央位置から

--changeAnime( SP_ATK_2+25, 0, 11); 

-- E 当たる位置調整
--setMoveKey( SP_ATK_2+30, 1, 20,  20,  -30);-- 中央位置から


-------------------------------------------------
--	追撃パンチ
-------------------------------------------------
aura_atk = entryEffectLife( SP_ATK_3+3,  311,  108,  0x40, 0,  0,  100,  -35);--気力
setEffScaleKey( SP_ATK_3+3, aura_atk, 1.5, 1.5);
setEffRotateKey(SP_ATK_3+3, aura_atk, 305);

setMoveKey( SP_ATK_3+3, 0,  -250, -1100,   0);
--setMoveKey( SP_ATK_3+8, 0,  -150, -150,   0);
setMoveKey( SP_ATK_3+12, 0,  -100, -40,   0);

changeAnime(  SP_ATK_3, 0, 11);

entryEffect( SP_ATK_3+20,   1500, 0,  -1,  0,  0,  0); -- オーラ
--setEffScaleKey(SP_ATK_3+20, db,  2,2);


setEnvZoomEnable( SP_ATK_3+15,  1);

entryEffectLife( SP_ATK_3+14, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
setDisp( SP_ATK_3, 1, 1);
--setMoveKey( SP_ATK_3+8, 1,  120, -50,   0);
--setMoveKey( SP_ATK_3+12, 1,  100, 0,   0);
setMoveKey( SP_ATK_3+12, 1, 50,  -10,   0);  

if (_IS_GUARD_ == 1) then
changeAnime(  SP_ATK_3+12, 1, 104);
entryEffect( SP_ATK_3+12,   23,   0x40,  1,   0,  -100,  0);
entryEffect( SP_ATK_3+12,   908,   0,  -1,   0,  0,  0);
playSe( SP_ATK_3+12, 1014);
else
changeAnime(  SP_ATK_3+12, 1, 108);
entryEffect( SP_ATK_3+12,   5,   0x40,  1,   0,  0,  0);
entryEffect( SP_ATK_3+12,   908,   0,  -1,   0,  0,  0);
entryEffect( SP_ATK_3+12,   906,   0,  1,   0,  0,  0);
playSe( SP_ATK_3+12, SE_09);
end
aura = entryEffectLife( SP_ATK_3+15,   1500, 39, 0x80,  -1,  0,  0,  0); -- オーラ

--playSe( SP_ATK_3+25, SE_05);
--playSe( SP_ATK_3+20, 1052);
-----------------------------------------

--setZanzou(Card+6, 0,  0);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3+17, 10020, 99, 0, -1, 0, -30, 130); 
setEffShake(SP_ATK_3+17, ct, 99, 35);
setEffScaleKey( SP_ATK_3+17, ct, 2.4, 2.4);
setEffAlphaKey(SP_ATK_3+17, ct, 255);
setEffAlphaKey(SP_ATK_3+17+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+17+25+5, ct, 0);

setQuake( SP_ATK_3+12, 20, 50);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+35, 1, 60, 20);
--entryFadeBg( SP_ATK_3+30, 0, 64, 4, 0, 0, 0, 255);          -- ベース暗め　背景


-- ダメージ表示
dealDamage(SP_ATK_3+40);


--[[
entryFadeBg(SP_ATK_3+66,0,43,3,0,0,0);
setQuake(SP_ATK_3+66,30,20);

setDisp( SP_ATK_3+66, 0, 1);

setShakeChara(SP_ATK_3+70,0,30,14);
setShakeChara(SP_ATK_3+70,1,30,11);

entryEffectLife( SP_ATK_3+70, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFade( SP_ATK_3+70, 30,  10, 1, 255, 255, 255, 255);     -- white fade

]]--




--------------------------------死亡
kame_flag = 0x00;

if (_IS_DEAD_ == 1) then
    -- 死亡フェーズ (sys0002 / sys0003)

-- 味方移動（画面外へ)
setEnvZoomEnable(SP_ATK_4+9, 0);
entryEffectLife( SP_ATK_4+9, 913, 30, 0x80,  -1,  0,  0,  0); -- 流線
--P ふっとび移動
setMoveKey( SP_ATK_4+6, 0, -100, -40,   0);      -- 中央位置から
setMoveKey( SP_ATK_4+12, 0, -700,  70,  0);-- 中央位置から

changeAnime( SP_ATK_4+11, 0, 4); 
changeAnime( SP_ATK_4+13, 0, 0); 

------------------
--E ふっとび移動
changeAnime(  SP_ATK_4+6, 1, 108);
setMoveKey( SP_ATK_4+6, 1, 50,  -10,   0);     -- 中央位置から
setMoveKey( SP_ATK_4+10, 1, 220,  260,  0);-- 中央位置から
-- ダメージ表示
dealDamage(SP_ATK_4+10);



entryFade( SP_ATK_4+10, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+20);

   
else
-- 受け------------------------------------------
-- 味方移動（画面外へ)






-- 味方移動（画面外へ)
setEnvZoomEnable(SP_ATK_4+9, 0);
entryEffectLife( SP_ATK_4+9, 913, 30, 0x80,  -1,  0,  0,  0); -- 流線
--P ふっとび移動
setMoveKey( SP_ATK_4+6, 0, -100, -40,   0);      -- 中央位置から
setMoveKey( SP_ATK_4+12, 0, -700,  70,  0);-- 中央位置から

changeAnime( SP_ATK_4+11, 0, 4); 
changeAnime( SP_ATK_4+13, 0, 0); 

------------------
--E ふっとび移動
setMoveKey( SP_ATK_4+6, 1, 50,  -10,   0);     -- 中央位置から
setMoveKey( SP_ATK_4+10, 1, 220,  160,  0);-- 中央位置から


changeAnime( SP_ATK_4+17+15, 1, 104); 
changeAnime( SP_ATK_4+19+15, 1, 100); 
setBgScroll(SP_ATK_4+17+15,8);
wipeInOut(SP_ATK_4+34);
entryFade( SP_ATK_4+34, 20, 10, 1, 0, 0, 0, 0); -- カット接続用
setMoveKey( SP_ATK_4+54, 1, 220,  160,  0);-- 中央位置から
setMoveKey( SP_ATK_4+55, 1, 700,  160,  0);-- 画面外に

endPhase(SP_ATK_4+56);
end

print ("[lua]exec a001");
