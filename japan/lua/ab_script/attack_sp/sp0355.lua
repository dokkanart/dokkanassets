

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1020; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 150293;
SP_02 = 150294;

--[[
SP_03 = 100002
]]

SP_03 = 150295;
SP_04 = 150306;

SP_05 = 108054;


multi_frm = 2;

changeAnime( 0, 0, 17);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    -25, -30,   0);
setMoveKey(   1,   0,   -25,   -30,  0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);


entryFade( 0, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setVisibleUI(0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


entryFadeBg( 0, 0, 220, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 30, SE_04);

--playSe( 30+2, SE_01);

playSe( 30, SE_01);
playSe( 30+25, SE_02);
playSe( 30+45, SE_02);
playSe( 30+65, SE_02);
playSe( 30+85, SE_02);


--[[
playSe( 40, SE_03);
playSe( 60, SE_03);
playSe( 80, SE_03);
playSe( 100, SE_03);
]]

--[[
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

playSe( 50, SE_03);　
playSe( 70, SE_03);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x80,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.0, 1.0);
setShakeChara( 30, 0, 19, 5);]]

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, -200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 90, 0, 17);                       -- 溜め!


setMoveKey(   155,   0,    -25,   -30,  0);
setMoveKey(   213,   0,    -25,   -30,  0);
setScaleKey(   155,   0, 1.5, 1.5);
setScaleKey(   300,   0, 1.5, 1.5);


--[[
entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);


playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);
]]




entryFade( 120-2, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 120-1, 0, 0);

kame_hand = entryEffect( 120, SP_01, 0x40,      0,  0,  -10,  150);   -- 手のカメハメ波部
setEffScaleKey( 120, kame_hand, 1.5, 1.5);
setEffScaleKey( 150, kame_hand, 1.5, 1.5);
setEffMoveKey( 150, kame_hand, -10, 150);
setEffMoveKey( 170, kame_hand, -10, 150);

playSe( 135, SE_03);
playSe( 165, SE_03)
playSe( 195, SE_03)



--[[
entryFade( 185, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]

--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);



-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);
]]

entryFade( 220, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

--[[setScaleKey( 214,   0, 1.5, 1.5);
setScaleKey( 215,   0, 1.0, 1.0);]]

playSe( 215, SE_05);
speff = entryEffect(  215,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 300, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------


changeAnime( 305, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( 305, 0, 1);
setScaleKey(   305,   0, 0.8, 0.8);
setScaleKey(   370,   0, 0.8, 0.8);
setMoveKey(  312,    0,      0,  0,   0);
setMoveKey(  313,    0,   -100,  0,   0);
setMoveKey(  315,    0,   -100,  0,   0);
setMoveKey(  360,    0,   -100,  0,   0);


kamehame_beam = entryEffectLife( 311, SP_02, 50, 0x100,  0,  300,  100,  140);   -- 伸びるかめはめ波



spname = entryEffectLife( 305, 1508,  55,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--[[setMoveKey(  346,    0,   -100,  0,   0);
setMoveKey(  350,    0,   -100,  0,   0);
setMoveKey(  360,    0,   -1100,  0,   0);]]

playSe( 315, SE_06);


--[[
entryFade( 330, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]

--[[
-- ** エフェクト等 ** --
entryFadeBg( 318, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 318, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg(  358, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
]]



entryFadeBg( 305, 0, 220, 0, 10, 10, 10, 150);          -- ベース暗め　背景

setShakeChara( 305, 0, 100, 30);

ryuusen = entryEffectLife( 305, 921, 60, 0x80,  -1, 0,  120,  0);   -- 流線
setEffScaleKey( 305, ryuusen, 2.0, 2.0);
setEffScaleKey( 353, ryuusen, 2.0, 2.0);
setEffRotateKey( 305, ryuusen, 180);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

--[[
-- 書き文字エントリー
ct = entryEffectLife( 321, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(321, ct, 32, 5);
setEffAlphaKey(321, ct, 255);
setEffAlphaKey(343, ct, 255);
setEffAlphaKey(353, ct, 0);
setEffScaleKey(321, ct, 0.0, 0.0);
setEffScaleKey(325, ct, 1.3, 1.3);
setEffScaleKey(345, ct, 1.3, 1.3);
setEffScaleKey(353, ct, 6.0, 6.0);
playSe( 353, SE_07);
]]

entryFade( 361, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード
setMoveKey(  369,    1,  235,  0,   0);
setMoveKey(  370,    1,  235,  0,   0);
setMoveKey(  371,    1,  235,  0,   0);
setScaleKey( 369,    1,  0.7, 0.7);
setScaleKey( 370,    1,  0.7, 0.7);

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   1.6,  1.6);



kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--playSe( 370, 1016);
playSe( 370+20, 1016);
playSe( 370+27, 1016);
playSe( 370+39, 1016);
playSe( 370+51, 1016);
playSe( 370+65, 1016);
playSe( 370+73, 1016);
playSe( 370+88, 1016);


--[[playSe( 400+96, 1016);
playSe( 400+109, 1016);
playSe( 400+117, 1016);
playSe( 400+128, 1016);
playSe( 400+140, 1016);]]





--playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 430, 1, 108);
setMoveKey(  455, 1,  120,    0,  0);
setMoveKey(  469, 1,  400,    0,  0);
setScaleKey( 455, 1,  1.6, 1.6);
setScaleKey( 458, 1,  1.5, 1.5);
setScaleKey( 468, 1,  0.2, 0.2);

playSe( 430, 1008);
--playSe( 435, 1011);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);


entryFadeBg( 370, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 280); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 60);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);


entryFade( 468, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 380; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-10, 1042);

speff = entryEffectUnpausable(  SP_dodge-10,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10,    0,   2000,  0,   0);


endPhase(SP_dodge+10);

do return end
else end



------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = 470;


entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);
entryEffect( spep_5, SP_05, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 5);


setMoveKey(  spep_5+1, 1,  0,  0,  -100);

entryEffect( spep_5+10, 2, 0x40+0x100, 1,  300,  -150,  100);
entryEffect( spep_5+16, 1, 0x40+0x100, 1,  300,  80,  -30);
entryFade( spep_5+13, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_5+10, 1, 3, 20);
setShakeChara( spep_5+16, 1, 3, 10);
--playSe( spep_5+13, 1008);

setMoveKey(  spep_5+20, 1,  0,  0,  -50);

entryEffect( spep_5+25, 3, 0x40+0x100, 1,  300,  70,  150);
entryEffect( spep_5+35, 2, 0x40+0x100, 1,  300,  -70,  -80);
entryFade( spep_5+35, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_5+25, 1, 3, 25);
setShakeChara( spep_5+35, 1, 3, 15);
--playSe( spep_5+45, 1011);


setMoveKey(  spep_5+35, 1,  0,  0,  0);

entryEffect( spep_5+42, 1, 0x40+0x100, 1,  300,  -120,  30);
entryEffect( spep_5+46, 3, 0x40+0x100, 1,  300,  -120,  30);
entryFade( spep_5+50, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_5+42, 1, 3, 15);
setShakeChara( spep_5+46, 1, 3, 25);
--playSe( spep_5+66, 1011);


entryFade( spep_5+70, 0, 8, 0, 255, 0, 0, 50);     -- red fade


--playSe( spep_5+92, 1008);

entryFade( spep_5+85, 0, 8, 0, 255, 0, 0, 50);     -- red fade

--playSe( spep_5+115, 1002);

--playSe( spep_5+129, 1011);

setMoveKey(  spep_5+75, 1,  0,  0,  120);

setDisp( spep_5+70, 1, 0);

setShake(spep_5, 140, 17);

--[[
playSe( spep_5, SE_09);
playSe( spep_5+15, SE_09);
playSe( spep_5+27, SE_09);
playSe( spep_5+39, SE_09);
playSe( spep_5+51, SE_09);
playSe( spep_5+65, SE_09);
playSe( spep_5+73, SE_09);
playSe( spep_5+88, SE_09);
playSe( spep_5+96, SE_09);
playSe( spep_5+109, SE_09);
playSe( spep_5+117, SE_09);
]]
SE001 = playSe( spep_5, SE_09);
stopSe(spep_5+25,SE001,10);
SE002 = playSe( spep_5+15, SE_09);
stopSe(spep_5+37,SE002,10);
SE003 = playSe( spep_5+27, SE_09);
stopSe(spep_5+49,SE003,10);
SE004 = playSe( spep_5+39, SE_09);
stopSe(spep_5+61,SE004,10);
SE005 = playSe( spep_5+51, SE_09);
stopSe(spep_5+75,SE005,10);
SE006 = playSe( spep_5+65, SE_09);
stopSe(spep_5+83,SE006,10);
SE007 = playSe( spep_5+73, SE_09);
stopSe(spep_5+98,SE007,10);
SE008 = playSe( spep_5+88, SE_09);
stopSe(spep_5+106,SE008,10);
SE009 = playSe( spep_5+96, SE_09);
stopSe(spep_5+119,SE009,10);
SE010 = playSe( spep_5+109, SE_09);
stopSe(spep_5+127,SE010,10);
SE011 = playSe( spep_5+117, SE_09);


playSe( spep_5+118, 1011);

--playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5, 906, 140, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFadeBg( spep_5+35, 40, 65, 0,255, 255, 255, 255);          -- ベース暗め　背景

entryFade( spep_5+130, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_5+145);


else




-----------------------------------------
--敵側の攻撃
-----------------------------------------
entryFadeBg( 0, 0, 220, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffect(  30,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  30,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[[
speff = entryEffect(  30,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  30,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 30, SE_04);

--playSe( 30+2, SE_01);
]]

playSe( 30, SE_01);
playSe( 30+25, SE_02);
playSe( 30+45, SE_02);
playSe( 30+65, SE_02);
playSe( 30+85, SE_02);


--[[
playSe( 40, SE_03);
playSe( 60, SE_03);
playSe( 80, SE_03);
playSe( 100, SE_03);
]]

--[[
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

playSe( 50, SE_03);　
playSe( 70, SE_03);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x80,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.0, 1.0);
setShakeChara( 30, 0, 19, 5);]]

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, -200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 90, 0, 17);                       -- 溜め!


setMoveKey(   155,   0,    -25,   -30,  0);
setMoveKey(   213,   0,    -25,   -30,  0);
setScaleKey(   155,   0, 1.5, 1.5);
setScaleKey(   300,   0, 1.5, 1.5);


--[[
entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);


playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);
]]




entryFade( 120-2, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 120-1, 0, 0);

kame_hand = entryEffect( 120, SP_01, 0x40,      0,  0,  -10,  150);   -- 手のカメハメ波部
setEffScaleKey( 120, kame_hand, 1.5, 1.5);
setEffScaleKey( 150, kame_hand, 1.5, 1.5);
setEffMoveKey( 150, kame_hand, -10, 150);
setEffMoveKey( 170, kame_hand, -10, 150);

playSe( 135, SE_03);
playSe( 165, SE_03)
playSe( 195, SE_03)



--[[
entryFade( 185, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]

--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);



-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);
]]

entryFade( 220, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

--[[setScaleKey( 214,   0, 1.5, 1.5);
setScaleKey( 215,   0, 1.0, 1.0);]]

playSe( 215, SE_05);
speff = entryEffect(  215,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 300, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------


changeAnime( 305, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( 305, 0, 1);
setScaleKey(   305,   0, 0.8, 0.8);
setScaleKey(   370,   0, 0.8, 0.8);
setMoveKey(  312,    0,      0,  0,   0);
setMoveKey(  313,    0,   -100,  0,   0);
setMoveKey(  315,    0,   -100,  0,   0);
setMoveKey(  360,    0,   -100,  0,   0);


kamehame_beam = entryEffectLife( 311, SP_02, 50, 0x100,  0,  300,  100,  140);   -- 伸びるかめはめ波



spname = entryEffectLife( 305, 1508,  55,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--[[setMoveKey(  346,    0,   -100,  0,   0);
setMoveKey(  350,    0,   -100,  0,   0);
setMoveKey(  360,    0,   -1100,  0,   0);]]

playSe( 315, SE_06);


--[[
entryFade( 330, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
]]

--[[
-- ** エフェクト等 ** --
entryFadeBg( 318, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 318, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg(  358, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
]]



entryFadeBg( 305, 0, 220, 0, 10, 10, 10, 150);          -- ベース暗め　背景

setShakeChara( 305, 0, 100, 30);

ryuusen = entryEffectLife( 305, 921, 60, 0x80,  -1, 0,  120,  0);   -- 流線
setEffScaleKey( 305, ryuusen, 2.0, 2.0);
setEffScaleKey( 353, ryuusen, 2.0, 2.0);
setEffRotateKey( 305, ryuusen, 180);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

--[[
-- 書き文字エントリー
ct = entryEffectLife( 321, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(321, ct, 32, 5);
setEffAlphaKey(321, ct, 255);
setEffAlphaKey(343, ct, 255);
setEffAlphaKey(353, ct, 0);
setEffScaleKey(321, ct, 0.0, 0.0);
setEffScaleKey(325, ct, 1.3, 1.3);
setEffScaleKey(345, ct, 1.3, 1.3);
setEffScaleKey(353, ct, 6.0, 6.0);
playSe( 353, SE_07);
]]

entryFade( 361, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード
setMoveKey(  369,    1,  235,  0,   0);
setMoveKey(  370,    1,  235,  0,   0);
setMoveKey(  371,    1,  235,  0,   0);
setScaleKey( 369,    1,  0.7, 0.7);
setScaleKey( 370,    1,  0.7, 0.7);

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   1.6,  1.6);



kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--playSe( 370, 1016);
playSe( 370+20, 1016);
playSe( 370+27, 1016);
playSe( 370+39, 1016);
playSe( 370+51, 1016);
playSe( 370+65, 1016);
playSe( 370+73, 1016);
playSe( 370+88, 1016);


--[[playSe( 400+96, 1016);
playSe( 400+109, 1016);
playSe( 400+117, 1016);
playSe( 400+128, 1016);
playSe( 400+140, 1016);]]





--playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 430, 1, 108);
setMoveKey(  455, 1,  120,    0,  0);
setMoveKey(  469, 1,  400,    0,  0);
setScaleKey( 455, 1,  1.6, 1.6);
setScaleKey( 458, 1,  1.5, 1.5);
setScaleKey( 468, 1,  0.2, 0.2);

playSe( 430, 1008);
--playSe( 435, 1011);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);


entryFadeBg( 370, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 280); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, -80);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);


entryFade( 468, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 380; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-10, 1042);

speff = entryEffectUnpausable(  SP_dodge-10,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+10,    0,   2000,  0,   0);


endPhase(SP_dodge+10);

do return end
else end



------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = 470;


entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);
entryEffect( spep_5, SP_05, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 5);


setMoveKey(  spep_5+1, 1,  0,  0,  -100);

entryEffect( spep_5+10, 2, 0x40+0x100, 1,  300,  -150,  100);
entryEffect( spep_5+16, 1, 0x40+0x100, 1,  300,  80,  -30);
entryFade( spep_5+13, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_5+10, 1, 3, 20);
setShakeChara( spep_5+16, 1, 3, 10);
--playSe( spep_5+13, 1008);

setMoveKey(  spep_5+20, 1,  0,  0,  -50);

entryEffect( spep_5+25, 3, 0x40+0x100, 1,  300,  70,  150);
entryEffect( spep_5+35, 2, 0x40+0x100, 1,  300,  -70,  -80);
entryFade( spep_5+35, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_5+25, 1, 3, 25);
setShakeChara( spep_5+35, 1, 3, 15);
--playSe( spep_5+45, 1011);


setMoveKey(  spep_5+35, 1,  0,  0,  0);

entryEffect( spep_5+42, 1, 0x40+0x100, 1,  300,  -120,  30);
entryEffect( spep_5+46, 3, 0x40+0x100, 1,  300,  -120,  30);
entryFade( spep_5+50, 0, 8, 0, 255, 0, 0, 50);     -- red fade
setShakeChara( spep_5+42, 1, 3, 15);
setShakeChara( spep_5+46, 1, 3, 25);
--playSe( spep_5+66, 1011);


entryFade( spep_5+70, 0, 8, 0, 255, 0, 0, 50);     -- red fade


--playSe( spep_5+92, 1008);

entryFade( spep_5+85, 0, 8, 0, 255, 0, 0, 50);     -- red fade

--playSe( spep_5+115, 1002);

--playSe( spep_5+129, 1011);

setMoveKey(  spep_5+75, 1,  0,  0,  120);

setDisp( spep_5+70, 1, 0);

setShake(spep_5, 140, 17);

--[[
playSe( spep_5, SE_09);
playSe( spep_5+15, SE_09);
playSe( spep_5+27, SE_09);
playSe( spep_5+39, SE_09);
playSe( spep_5+51, SE_09);
playSe( spep_5+65, SE_09);
playSe( spep_5+73, SE_09);
playSe( spep_5+88, SE_09);
playSe( spep_5+96, SE_09);
playSe( spep_5+109, SE_09);
playSe( spep_5+117, SE_09);
]]
SE001 = playSe( spep_5, SE_09);
stopSe(spep_5+25,SE001,10);
SE002 = playSe( spep_5+15, SE_09);
stopSe(spep_5+37,SE002,10);
SE003 = playSe( spep_5+27, SE_09);
stopSe(spep_5+49,SE003,10);
SE004 = playSe( spep_5+39, SE_09);
stopSe(spep_5+61,SE004,10);
SE005 = playSe( spep_5+51, SE_09);
stopSe(spep_5+75,SE005,10);
SE006 = playSe( spep_5+65, SE_09);
stopSe(spep_5+83,SE006,10);
SE007 = playSe( spep_5+73, SE_09);
stopSe(spep_5+98,SE007,10);
SE008 = playSe( spep_5+88, SE_09);
stopSe(spep_5+106,SE008,10);
SE009 = playSe( spep_5+96, SE_09);
stopSe(spep_5+119,SE009,10);
SE010 = playSe( spep_5+109, SE_09);
stopSe(spep_5+127,SE010,10);
SE011 = playSe( spep_5+117, SE_09);



playSe( spep_5+118, 1011);

--playSe( spep_5+4, SE_07);
shuchusen = entryEffectLife( spep_5, 906, 140, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFadeBg( spep_5+35, 40, 65, 0,255, 255, 255, 255);          -- ベース暗め　背景

entryFade( spep_5+130, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_5+145);



end