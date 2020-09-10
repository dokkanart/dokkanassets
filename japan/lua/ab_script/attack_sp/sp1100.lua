

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
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

SP_01 = 100105
SP_02 = 150307

---SP_03 = 100107



--[[
SP_01 = 150237;--ef_101
SP_02 = 150238;--ef_102
SP_02e = 150239;--ef_102e
SP_03 = 150240;--ef_103 
SP_04 = 150241;--ef_104 
SP_04e = 150256;--ef_104 
SP_05 = 150242;--ef_105 
SP_07 = 150233;--ef_07 


SP_01 = 150243;
SP_02 = 150244;
SP_03 = 150245;
SP_04 = 150246;

SP_05 = 150247;


SP_01 = 150248;
SP_02 = 150249;
SP_03 = 150250;
SP_04 = 150251;

SP_01 = 150252;
SP_02 = 150253;
SP_03 = 150254;
SP_04 = 150255;
]]

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 100);                       -- 立ち
setAnimeLoop( 0, 0, 1);
setAnimeLoop( 0, 1, 1);

setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);


------------------------------------------------------
-- 構え(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
	

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setScaleKey(  30, 0, 1.5, 1.5);




playSe( 30, SE_01);


entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  10); -- オーラ
setEffScaleKey( 30, aura, 0.5, 0.5);
setShakeChara( 30, 0, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);


setVisibleUI( 0, 0);

--setBgScroll(0,100);

setMoveKey(   90,   0,    0, -54,   0);

spep_1=60;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
--溜め(60F)
------------------------------------------------------
setVisibleUI(spep_1-1, 0);
changeAnime( spep_1, 0, 17);                       -- 溜め!
playSe( spep_1+3, SE_03);

entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)


speff = entryEffect(  spep_1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


playSe( spep_1+10, SE_04);



playSe( spep_1+25, SE_03);
playSe( spep_1+45, SE_03);
playSe( spep_1+65, SE_03);
playSe( spep_1+85, SE_03);


--[[
playSe( spep_1+30, SE_03);
playSe( spep_1+60, SE_03);
playSe( spep_1+80, SE_03);
]]

--[[
kame_hand = entryEffect( spep_1, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_1, kame_hand, 0.5, 0.5);
]]



-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1,   311, 99, 0x40,  0,  1,  0,  10); -- オーラ
setEffScaleKey( spep_1, aura, 0.5, 0.5);
setShakeChara( spep_1, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+20, 10008, 39, 0x100, -1, 0, -230, 300);    -- ゴゴゴ・・・
setEffShake(spep_1+20, ct, 40, 8);
setEffScaleKey(spep_1+20, ct, 1.4, 1.4);


setMoveKey(  spep_1+100,   0,    0, -54,   0);
setScaleKey( spep_1+95, 0, 1.5, 1.5);



entryFade( spep_1+95, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1+96, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景 



------------------------------------------------------
--迫る(260F)
------------------------------------------------------
spep_2=spep_1+100;


playSe( spep_2, 1019);




changeAnime( spep_2, 0, 16);
setMoveKey(  spep_2, 0, 0,  0,  0);
setMoveKey(  spep_2+30, 0, 0,  0);
setScaleKey(  spep_2, 0, 1.0, 1.0);
setScaleKey(  spep_2+30, 0, 3.5, 3.5);

shuchusen = entryEffectLife( spep_2, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 0.8, 0.8);
setEffScaleKey( spep_2+30, shuchusen, 1.2, 1.2);
setEffShake( spep_2, shuchusen, 45, 5);


setShakeChara( spep_2, 0, 45, 10);



--[[
entryFade(  spep_2+50, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+51, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景 
]]

spep_3=spep_2+35;
entryFade( spep_3-8, 5, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3-5, 0, 120, 0, 0, 0, 0, 255);          -- ベース暗め　背景
------------------------------------------------------
--飛びかかりから丸くなる(60F)
------------------------------------------------------
changeAnime( spep_3, 0, 3);
setMoveKey(  spep_3, 0, -1500,  -40,  0);
--setMoveKey(  spep_3+68, 0, -98, 190, 0);
setMoveKey(  spep_3+70, 0, -100,  200,  0);

setScaleKey(  spep_3, 0, 2.0, 2.0);
setScaleKey(  spep_3+59, 0, 2.0, 2.0);
setRotateKey(  spep_3, 0, -5);
setRotateKey(  spep_3+59, 0,  -5);

changeAnime( spep_3+60, 0, 30);
setScaleKey(  spep_3+60, 0, 0.7, 0.7);
setScaleKey(  spep_3+60+51, 0, 0.7, 0.7);
setRotateKey(  spep_3+60, 0, 0);
setRotateKey(  spep_3+60+51, 0, 0);

setMoveKey(  spep_3+70+10, 0, -85,  185,  0);
setMoveKey(  spep_3+70+40, 0, -70,  170,  0);

setShakeChara( spep_3, 0, 70, 8);
setShakeChara( spep_3+70, 0, 50, 20);

kame_hand1 = entryEffectLife( spep_3+72, SP_01, 130, 0x40,      0,  300,  8, -5);   -- 手のカメハメ波部

setEffScaleKey( spep_3+72, kame_hand1, 0.8, 0.8);
setEffScaleKey( spep_3+72+40, kame_hand1, 2.0, 2.0);
--[[setEffMoveKey( spep_3+72+20, kame_hand1, 17, -10);
setEffMoveKey( spep_3+72+30, kame_hand1, 20, -13);
setEffMoveKey( spep_3+72+40, kame_hand1, 22, -16);]]


ryuusen=entryEffectLife( spep_3, 921, 108, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_3, ryuusen, -220);
setEffScaleKey( spep_3, ryuusen, 2.0, 2.0);
setEffMoveKey( spep_3, ryuusen, 0, 0);
setEffMoveKey( spep_3+90, ryuusen, 70, 30);

shuchusen = entryEffectLife( spep_3+71, 906, 50, 0x100,  -1, 0,  -60,  250);   -- 集中線
setEffScaleKey( spep_3+71, shuchusen, 1.0, 1.0);
setEffShake( spep_3, shuchusen, 45, 5);

playSe( spep_3, 1018);
playSeLife( spep_3+72, 1037, 45, 8);



--敵
setDisp( spep_3 , 1, 1);

changeAnime( spep_3, 1, 102);
setMoveKey(  spep_3, 1, 1000,  -200,  0);
setMoveKey(  spep_3+50, 1, 150,  -200,  0);
setScaleKey(  spep_3, 1, 2.3, 2.3);
setScaleKey(  spep_3+50, 1, 2.3, 2.3);

setShakeChara( spep_3, 1, 120, 5);





spep_4=spep_3+120
entryFade( spep_4-13, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4-8, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
-- 回避
------------------------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = 250; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+9, 0, -85,  185,  0);
setMoveKey(  SP_dodge+10, 0, 2000,  0,  0);


setScaleKey(  SP_dodge+10, 1, 2.3, 2.3);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_4-9,   0, 1.5, 1.5);
setScaleKey( spep_4-8,   0, 1.0, 1.0);

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_4+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);






spep_5=spep_4+90;
entryFadeBg( spep_5, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--ブウ登場(100F)
------------------------------------------------------
changeAnime( spep_5, 0, 31);
setMoveKey(  spep_5, 0, -70,  170,  0);
setScaleKey(  spep_5, 0, 0.7, 0.7);
setScaleKey(  spep_5+79, 0, 0.7, 0.7);

setShakeChara( spep_5, 0, 65, 20);

changeAnime( spep_5+80, 0, 31);
setMoveKey(  spep_5+120, 0, -70,  170,  0);
setScaleKey(  spep_5+80, 0, 0.7, 0.7);
setScaleKey(  spep_5+210, 0, 0.7, 0.7);

playSe( spep_5, 1037);


--[[kame_hand2 = entryEffectLife( spep_5, SP_01, 130,  0x100,      0,  300,  -30,  60);   -- 手のカメハメ波部
setEffScaleKey( spep_5, kame_hand2, 1.5, 1.5);
setEffScaleKey( spep_5+120, kame_hand2, 15.0, 15.0);
setEffMoveKey( spep_5+120, kame_hand2, -50, 80);]]


bakuhatsu1 = entryEffectLife( spep_5, SP_01, 20,  0x40,      0,  0,  8,  -5);
setEffScaleKey( spep_5, bakuhatsu1, 3.0, 3.0);
bakuhatsu2 = entryEffectLife( spep_5+21, SP_02, 100,  0x40,      0,  0,  85,  -180);   -- 手のカメハメ波部

--[[setEffScaleKey( spep_5, bakuhatsu, 1.5, 1.5);
setEffScaleKey( spep_5+120, bakuhatsu, 15.0, 15.0);
setEffMoveKey( spep_5+120, bakuhatsu, -50, 80);]]
playSe( spep_5+10, SE_10);
playSe( spep_5+20, SE_10);
playSe( spep_5+30, SE_10);
playSe( spep_5+40, SE_10);
playSe( spep_5+50, SE_10);
playSe( spep_5+60, SE_10);


shuchusen = entryEffectLife( spep_5, 906, 50, 0x100,  -1, 0,  -60,  250);   -- 集中線
setEffScaleKey( spep_5, shuchusen, 1.0, 1.0);
setEffShake( spep_5, shuchusen, 45, 5);


--[[
changeAnime( spep_5+53, 0, 31);
setMoveKey(  spep_5+53, 0, 300,  -100,  200);
setMoveKey(  spep_5+100, 0, 300,  -100,  200);
setScaleKey(  spep_5+53, 0, 1.5, 1.5);
setScaleKey(  spep_5+100, 0, 1.5, 1.5);
]]



changeAnime( spep_5+110, 1, 107);
setMoveKey(  spep_5+109, 1, 150,  -200,  0);
setMoveKey(  spep_5+120,   1,     -60,  -200,  -100);
setScaleKey(  spep_5+109, 1, 2.0, 2.0);
setScaleKey(  spep_5+110, 1, 0.4, 0.4);
setScaleKey(  spep_5+115, 1, 1.2, 1.2);

setShakeChara( spep_5, 1, 120, 5);


setShake(  spep_5+70, 120,  8);


entryFade( spep_5+90, 30, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




spep_6=spep_5 +120;

--[[
-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 190006, 100, 0x100, -1, 0, 0, 450);    -- ゴゴゴゴ
setEffShake(spep_4, ct4, 40, 28);
setEffScaleKey(spep_4, ct4, 0.8, 0.8);
setEffRotateKey(spep_4, ct4, 10);
setEffAlphaKey( spep_4, ct4, 255);


spep_5=spep_4 +80;
entryFade( spep_5-10, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景


------------------------------------------------------
--出現(256F)
------------------------------------------------------

spep_6=spep_5 +200;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 256, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--サタン＆ブウのラッシュ(256F)
------------------------------------------------------




spep_7=spep_6 +256;
entryFade( spep_7-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
--サタン＆ブウのラッシュ(256F)
------------------------------------------------------


spep_9=spep_7; --410 469
]]





------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_6, 0, 0);
setDisp( spep_6+20, 1, 1);
setRotateKey( spep_6,  1,  0 );
--setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6+10,    1,  1.0, 1.0);
setScaleKey( spep_6+100,    1,  1.0, 1.0);
--[[setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);]]

changeAnime( spep_6+20, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+7, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+7, SE_10);

setMoveKey(  spep_6+20,   1,     -60,  -200,  -100);
setMoveKey(  spep_6+100,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_6+20, 1, 0);  -- ダメージ振動等
setShake( spep_6+7+20,6,15);
setShake( spep_6+13+20,15,10);

--[[setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);]]

-- 書き文字エントリー
ct = entryEffectLife( spep_6+4, 10005, 100, 0, -1, 0, -40, 210); -- ガッ
setEffShake(spep_6+4, ct, 30, 10);
setEffRotateKey( spep_6+4, ct, -40);
--setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
--setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
--setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
--setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+20, ct, 2.6, 2.6);
setEffScaleKey( spep_6+21, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+20, ct, 255);
setEffAlphaKey( spep_6+145, ct, 255);
setEffAlphaKey( spep_6+155, ct, 0);

playSe( spep_6+20, SE_11);
shuchusen = entryEffectLife( spep_6+7, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ



--[[
-- ダメージ表示
dealDamage(486);

entryFade( 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580);
else
]]

-- ダメージ表示
dealDamage( spep_6+20);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+110);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setScaleKey(  30, 0, 1.5, 1.5);




playSe( 30, SE_01);


entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  10); -- オーラ
setEffScaleKey( 30, aura, 0.5, 0.5);
setShakeChara( 30, 0, 125, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);


setVisibleUI( 0, 0);

--setBgScroll(0,100);

setMoveKey(   90,   0,    0, -54,   0);

spep_1=60;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
--溜め(60F)
------------------------------------------------------
setVisibleUI(spep_1-1, 0);
changeAnime( spep_1, 0, 17);                       -- 溜め!
playSe( spep_1+3, SE_03);

entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(  spep_1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]

playSe( spep_1+10, SE_04);



playSe( spep_1+25, SE_03);
playSe( spep_1+45, SE_03);
playSe( spep_1+65, SE_03);
playSe( spep_1+85, SE_03);


--[[
playSe( spep_1+30, SE_03);
playSe( spep_1+60, SE_03);
playSe( spep_1+80, SE_03);
]]

--[[
kame_hand = entryEffect( spep_1, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_1, kame_hand, 0.5, 0.5);
]]



-- ** エフェクト等 ** --
aura = entryEffectLife(  spep_1,   311, 99, 0x40,  0,  1,  0,  10); -- オーラ
setEffScaleKey( spep_1, aura, 0.5, 0.5);
setShakeChara( spep_1, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+20, 10008, 39, 0x100, -1, 0, -230, 300);    -- ゴゴゴ・・・
setEffShake(spep_1+20, ct, 40, 8);
setEffScaleKey(spep_1+20, ct, 1.4, 1.4);


setMoveKey(  spep_1+100,   0,    0, -54,   0);
setScaleKey( spep_1+95, 0, 1.5, 1.5);



entryFade( spep_1+95, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1+96, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景 



------------------------------------------------------
--迫る(260F)
------------------------------------------------------
spep_2=spep_1+100;


playSe( spep_2, 1019);




changeAnime( spep_2, 0, 16);
setMoveKey(  spep_2, 0, 0,  0,  0);
setMoveKey(  spep_2+30, 0, 0,  0);
setScaleKey(  spep_2, 0, 1.0, 1.0);
setScaleKey(  spep_2+30, 0, 3.5, 3.5);

shuchusen = entryEffectLife( spep_2, 906, 30, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 0.8, 0.8);
setEffScaleKey( spep_2+30, shuchusen, 1.2, 1.2);
setEffShake( spep_2, shuchusen, 45, 5);


setShakeChara( spep_2, 0, 45, 10);



--[[
entryFade(  spep_2+50, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2+51, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景 
]]

spep_3=spep_2+35;
entryFade( spep_3-8, 5, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3-5, 0, 120, 0, 0, 0, 0, 255);          -- ベース暗め　背景
------------------------------------------------------
--飛びかかりから丸くなる(60F)
------------------------------------------------------
changeAnime( spep_3, 0, 3);
setMoveKey(  spep_3, 0, -1500,  -40,  0);
--setMoveKey(  spep_3+68, 0, -98, 190, 0);
setMoveKey(  spep_3+70, 0, -100,  200,  0);

setScaleKey(  spep_3, 0, 2.0, 2.0);
setScaleKey(  spep_3+59, 0, 2.0, 2.0);
setRotateKey(  spep_3, 0, -5);
setRotateKey(  spep_3+59, 0,  -5);

changeAnime( spep_3+60, 0, 30);
setScaleKey(  spep_3+60, 0, 0.7, 0.7);
setScaleKey(  spep_3+60+51, 0, 0.7, 0.7);
setRotateKey(  spep_3+60, 0, 0);
setRotateKey(  spep_3+60+51, 0, 0);

setMoveKey(  spep_3+70+10, 0, -85,  185,  0);
setMoveKey(  spep_3+70+40, 0, -70,  170,  0);

setShakeChara( spep_3, 0, 70, 8);
setShakeChara( spep_3+70, 0, 50, 20);

kame_hand1 = entryEffectLife( spep_3+72, SP_01, 130, 0x40,      0,  300,  8, -5);   -- 手のカメハメ波部

setEffScaleKey( spep_3+72, kame_hand1, 0.8, 0.8);
setEffScaleKey( spep_3+72+40, kame_hand1, 2.0, 2.0);
--[[setEffMoveKey( spep_3+72+20, kame_hand1, 17, -10);
setEffMoveKey( spep_3+72+30, kame_hand1, 20, -13);
setEffMoveKey( spep_3+72+40, kame_hand1, 22, -16);]]


ryuusen=entryEffectLife( spep_3, 921, 108, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_3, ryuusen, -220);
setEffScaleKey( spep_3, ryuusen, 2.0, 2.0);
setEffMoveKey( spep_3, ryuusen, 0, 0);
setEffMoveKey( spep_3+90, ryuusen, 70, 30);

shuchusen = entryEffectLife( spep_3+71, 906, 50, 0x100,  -1, 0,  -60,  250);   -- 集中線
setEffScaleKey( spep_3+71, shuchusen, 1.0, 1.0);
setEffShake( spep_3, shuchusen, 45, 5);

playSe( spep_3, 1018);
playSeLife( spep_3+72, 1037, 45, 8);



--敵
setDisp( spep_3 , 1, 1);

changeAnime( spep_3, 1, 102);
setMoveKey(  spep_3, 1, 1000,  -200,  0);
setMoveKey(  spep_3+50, 1, 150,  -200,  0);
setScaleKey(  spep_3, 1, 2.3, 2.3);
setScaleKey(  spep_3+50, 1, 2.3, 2.3);

setShakeChara( spep_3, 1, 120, 5);





spep_4=spep_3+120
entryFade( spep_4-13, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4-8, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景


------------------------------------------------------
-- 回避
------------------------------------------------------


if(_IS_DODGE_ == 1) then

SP_dodge = 250; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+9, 0, -85,  185,  0);
setMoveKey(  SP_dodge+10, 0, 2000,  0,  0);


setScaleKey(  SP_dodge+10, 1, 2.3, 2.3);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_4-9,   0, 1.5, 1.5);
setScaleKey( spep_4-8,   0, 1.0, 1.0);

playSe( spep_4, SE_05);
speff = entryEffect(  spep_4,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_4+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);






spep_5=spep_4+90;
entryFadeBg( spep_5, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--ブウ登場(100F)
------------------------------------------------------
changeAnime( spep_5, 0, 31);
setMoveKey(  spep_5, 0, -70,  170,  0);
setScaleKey(  spep_5, 0, 0.7, 0.7);
setScaleKey(  spep_5+79, 0, 0.7, 0.7);

setShakeChara( spep_5, 0, 65, 20);

changeAnime( spep_5+80, 0, 31);
setMoveKey(  spep_5+120, 0, -70,  170,  0);
setScaleKey(  spep_5+80, 0, 0.7, 0.7);
setScaleKey(  spep_5+210, 0, 0.7, 0.7);

playSe( spep_5, 1037);


--[[kame_hand2 = entryEffectLife( spep_5, SP_01, 130,  0x100,      0,  300,  -30,  60);   -- 手のカメハメ波部
setEffScaleKey( spep_5, kame_hand2, 1.5, 1.5);
setEffScaleKey( spep_5+120, kame_hand2, 15.0, 15.0);
setEffMoveKey( spep_5+120, kame_hand2, -50, 80);]]


bakuhatsu1 = entryEffectLife( spep_5, SP_01, 20,  0x40,      0,  0,  8,  -5);
setEffScaleKey( spep_5, bakuhatsu1, 3.0, 3.0);
bakuhatsu2 = entryEffectLife( spep_5+21, SP_02, 100,  0x40,      0,  0,  85,  -180);   -- 手のカメハメ波部

--[[setEffScaleKey( spep_5, bakuhatsu, 1.5, 1.5);
setEffScaleKey( spep_5+120, bakuhatsu, 15.0, 15.0);
setEffMoveKey( spep_5+120, bakuhatsu, -50, 80);]]
playSe( spep_5+10, SE_10);
playSe( spep_5+20, SE_10);
playSe( spep_5+30, SE_10);
playSe( spep_5+40, SE_10);
playSe( spep_5+50, SE_10);
playSe( spep_5+60, SE_10);


shuchusen = entryEffectLife( spep_5, 906, 50, 0x100,  -1, 0,  -60,  250);   -- 集中線
setEffScaleKey( spep_5, shuchusen, 1.0, 1.0);
setEffShake( spep_5, shuchusen, 45, 5);


--[[
changeAnime( spep_5+53, 0, 31);
setMoveKey(  spep_5+53, 0, 300,  -100,  200);
setMoveKey(  spep_5+100, 0, 300,  -100,  200);
setScaleKey(  spep_5+53, 0, 1.5, 1.5);
setScaleKey(  spep_5+100, 0, 1.5, 1.5);
]]



changeAnime( spep_5+110, 1, 107);
setMoveKey(  spep_5+109, 1, 150,  -200,  0);
setMoveKey(  spep_5+120,   1,     -60,  -200,  -100);
setScaleKey(  spep_5+109, 1, 2.0, 2.0);
setScaleKey(  spep_5+110, 1, 0.4, 0.4);
setScaleKey(  spep_5+115, 1, 1.2, 1.2);

setShakeChara( spep_5, 1, 120, 5);


setShake(  spep_5+70, 120,  8);


entryFade( spep_5+90, 30, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




spep_6=spep_5 +120;

--[[
-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 190006, 100, 0x100, -1, 0, 0, 450);    -- ゴゴゴゴ
setEffShake(spep_4, ct4, 40, 28);
setEffScaleKey(spep_4, ct4, 0.8, 0.8);
setEffRotateKey(spep_4, ct4, 10);
setEffAlphaKey( spep_4, ct4, 255);


spep_5=spep_4 +80;
entryFade( spep_5-10, 8, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 65, 0, 0, 0, 0, 255);          -- ベース暗め　背景


------------------------------------------------------
--出現(256F)
------------------------------------------------------

spep_6=spep_5 +200;
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 256, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--サタン＆ブウのラッシュ(256F)
------------------------------------------------------




spep_7=spep_6 +256;
entryFade( spep_7-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
--サタン＆ブウのラッシュ(256F)
------------------------------------------------------


spep_9=spep_7; --410 469
]]





------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_6, 0, 0);
setDisp( spep_6+20, 1, 1);
setRotateKey( spep_6,  1,  0 );
--setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6+10,    1,  1.0, 1.0);
setScaleKey( spep_6+100,    1,  1.0, 1.0);
--[[setMoveKey(  spep_6,    1,    0,   0,   128);
setScaleKey( spep_6,    1,  0.1, 0.1);]]

changeAnime( spep_6+20, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+7, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+7, SE_10);

setMoveKey(  spep_6+20,   1,     -60,  -200,  -100);
setMoveKey(  spep_6+100,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_6+20, 1, 0);  -- ダメージ振動等
setShake( spep_6+7+20,6,15);
setShake( spep_6+13+20,15,10);

--[[setRotateKey( spep_6,  1,  30 );
setRotateKey( spep_6+2,  1,  80 );
setRotateKey( spep_6+4,  1, 120 );
setRotateKey( spep_6+6,  1, 160 );
setRotateKey( spep_6+8,  1, 200 );
setRotateKey( spep_6+10,  1, 260 );
setRotateKey( spep_6+12,  1, 320 );
setRotateKey( spep_6+14,  1,   0 );

setShakeChara( spep_6+15, 1, 5,  10);
setShakeChara( spep_6+20, 1, 10, 20);]]

-- 書き文字エントリー
ct = entryEffectLife( spep_6+4, 10005, 100, 0, -1, 0, -40, 210); -- ガッ
setEffShake(spep_6+4, ct, 30, 10);
setEffRotateKey( spep_6+4, ct, -40);
--setEffScaleKey( spep_6+15, ct, 4.0, 4.0);
--setEffScaleKey( spep_6+16, ct, 2.0, 2.0);
--setEffScaleKey( spep_6+17, ct, 2.6, 2.6);
--setEffScaleKey( spep_6+18, ct, 4.0, 4.0);
setEffScaleKey( spep_6+20, ct, 2.6, 2.6);
setEffScaleKey( spep_6+21, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+20, ct, 255);
setEffAlphaKey( spep_6+145, ct, 255);
setEffAlphaKey( spep_6+155, ct, 0);

playSe( spep_6+20, SE_11);
shuchusen = entryEffectLife( spep_6+7, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ



--[[
-- ダメージ表示
dealDamage(486);

entryFade( 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580);
else
]]

-- ダメージ表示
dealDamage( spep_6+20);

entryFade( spep_6+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+110);
end