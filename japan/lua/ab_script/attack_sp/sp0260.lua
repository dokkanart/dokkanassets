

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

SP_01 = 102157;
SP_02 = 102158;
SP_03 = 102159;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

SPstart = -69

setVisibleUI( SPstart+69, 0);
changeAnime( SPstart+ 70, 0, 30);                       -- 溜め!
playSe( SPstart+ 73, SE_03);

--[[
entryEffect( SPstart+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SPstart+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
]]--

speff = entryEffect( SPstart+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

--[[
speff = entryEffect( SPstart+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( SPstart+ 80, SE_04);

playSe( SPstart+ 90, SE_03);
playSe( SPstart+ 110, SE_03);
playSe( SPstart+ 130, SE_03);
playSe( SPstart+ 150, SE_03);


kame_hand = entryEffect( SPstart+ 70, SP_01, 0x40,      0,  300,  -200,  100);   -- 手のカメハメ波部
--setEffScaleKey( SPstart+ 70, kame_hand, 0.5, 0.5);

entryFade( SPstart+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--[[
aura = entryEffectLife( SPstart+  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( SPstart+ 30, aura, 1.5, 1.5);
setShakeChara( SPstart+ 70, 0, 49, 5);
]]--

shuchusen = entryEffectLife(SP_start, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start, shuchusen, 1.5, 1.5);

entryFadeBg(spep_6, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SPstart+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SPstart+90, ct, 40, 8);
setEffScaleKey( SPstart+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SPstart+ 169,   0, 1.5, 1.5);
setScaleKey( SPstart+ 170,   0, 1.0, 1.0);

playSe( SPstart+ 170, SE_05);
speff = entryEffect( SPstart+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SPstart+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SPstart+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( SPstart+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SPstart+  259,    0,      0,  0,   0);
setMoveKey( SPstart+  260,    0,   -600,  0,   0);
setMoveKey( SPstart+  261,    0,   -600,  0,   0);
setMoveKey( SPstart+  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SPstart+ 260, SP_02, 109, 0x40,  0,  300,  300,  250);   -- 伸びるかめはめ波

playSe( SPstart+ 260, SE_07);

spname = entryEffect( SPstart+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SPstart+  299,    0,   -100,  0,   0);
setMoveKey( SPstart+  300,    0,   -100,  0,   0);
setMoveKey( SPstart+  308,    0,   -1100,  0,   0);

entryFade( SPstart+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SPstart+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SPstart+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SPstart+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SPstart+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SPstart+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SPstart+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SPstart+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SPstart+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SPstart+ 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SPstart+ 268, 10012, 32, 0, -1, 0, 200, 400); -- ズオッ
setEffShake( SPstart+268, ct, 32, 5);
setEffAlphaKey( SPstart+268, ct, 255);
setEffAlphaKey( SPstart+290, ct, 255);
setEffAlphaKey( SPstart+300, ct, 0);
setEffScaleKey( SPstart+268, ct, 0.0, 0.0);
setEffScaleKey( SPstart+272, ct, 1.3, 1.3);
setEffScaleKey( SPstart+292, ct, 1.3, 1.3);
setEffScaleKey( SPstart+300, ct, 6.0, 6.0);
playSe( SPstart+ 300, SE_07);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SPstart+ 370, 0, 0);
setDisp( SPstart+ 370, 1, 1);
changeAnime( SPstart+ 370, 1, 104);                        -- ガード
setMoveKey( SPstart+  369,    1,  235,  0,   0);
setMoveKey( SPstart+  370,    1,  235,  0,   0);
setMoveKey( SPstart+  371,    1,  235,  0,   0);
setScaleKey( SPstart+ 369,    1,  0.7, 0.7);
setScaleKey( SPstart+ 370,    1,  0.7, 0.7);

setMoveKey( SPstart+  400,    1,   120,  0,   0);
setScaleKey( SPstart+  400,   1,   1.6,  1.6);

playSe( SPstart+ 390, SE_06);

kamehame_beam2 = entryEffect( SPstart+ 370, SP_03,   0, -1,  0,  200,  0);   -- 迫るかめはめ波


setEffScaleKey( SPstart+370, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
setShakeChara( SPstart+ 370, 1, 99, 20);

entryFadeBg( SPstart+ 370, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SPstart+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 379; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

setEffMoveKey( SPstart+453, kamehame_beam2,  200,    0,0);
setEffMoveKey( SPstart+454, kamehame_beam2,  500,    0,0);


setEffScaleKey( SPstart+452, kamehame_beam2, 1, 1);
setEffScaleKey( SPstart+454, kamehame_beam2, 2.5, 2.5);
setDamage( SPstart+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( SPstart+ 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SPstart+ 455, 1, 108);
setMoveKey( SPstart+  455, 1,  120,    0,  0);
setMoveKey( SPstart+  469, 1,  400,    0,  0);
setScaleKey( SPstart+ 455, 1,  1.6, 1.6);
setScaleKey( SPstart+ 458, 1,  1.5, 1.5);
setScaleKey( SPstart+ 468, 1,  0.2, 0.2);


--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SPstart+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SPstart+370, ct, 99, 20);
setEffScaleKey( SPstart+ 370, ct, 2.4, 2.4);
setEffRotateKey( SPstart+370, ct, 70);
setEffAlphaKey( SPstart+370, ct, 255);
setEffAlphaKey( SPstart+430, ct, 255);
setEffAlphaKey( SPstart+450, ct, 0);

entryFade( SPstart+ 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SPstart+ 469, 1, 1);
setMoveKey( SPstart+  469,    1,  100,  0,   0);
setScaleKey( SPstart+ 469,    1,  1.0, 1.0);
setMoveKey( SPstart+  470,    1,    0,   0,   128);
setScaleKey( SPstart+ 470,    1,  0.1, 0.1);

changeAnime( SPstart+ 470, 1, 107);                         -- 手前ダメージ
entryEffect( SPstart+ 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SPstart+ 478, SE_10);

setMoveKey( SPstart+  478,   1,    0,   0,   128);
setMoveKey( SPstart+  485,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( SPstart+ 486, 1, 0);  -- ダメージ振動等
setShake( SPstart+477,6,15);
setShake( SPstart+483,15,10);

setRotateKey( SPstart+ 470,  1,  30 );
setRotateKey( SPstart+ 472,  1,  80 );
setRotateKey( SPstart+ 474,  1, 120 );
setRotateKey( SPstart+ 476,  1, 160 );
setRotateKey( SPstart+ 478,  1, 200 );
setRotateKey( SPstart+ 480,  1, 260 );
setRotateKey( SPstart+ 482,  1, 320 );
setRotateKey( SPstart+ 484,  1,   0 );

setShakeChara( SPstart+ 485, 1, 5,  10);
setShakeChara( SPstart+ 490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SPstart+ 485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SPstart+485, ct, 30, 10);
setEffRotateKey( SPstart+ 485, ct, -40);
setEffScaleKey( SPstart+ 485, ct, 4.0, 4.0);
setEffScaleKey( SPstart+ 486, ct, 2.0, 2.0);
setEffScaleKey( SPstart+ 487, ct, 2.6, 2.6);
setEffScaleKey( SPstart+ 488, ct, 4.0, 4.0);
setEffScaleKey( SPstart+ 489, ct, 2.6, 2.6);
setEffScaleKey( SPstart+ 490, ct, 3.8, 3.8);
setEffScaleKey( SPstart+ 580, ct, 3.8, 3.8);
setEffAlphaKey( SPstart+ 485, ct, 255);
setEffAlphaKey( SPstart+ 575, ct, 255);
setEffAlphaKey( SPstart+ 585, ct, 0);

playSe( SPstart+ 473, SE_11);
shuchusen = entryEffectLife( SPstart+ 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SPstart+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SPstart+486);

entryFade( SPstart+ 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SPstart+580);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

SPstart = -69

setVisibleUI( SPstart+69, 0);
changeAnime( SPstart+ 70, 0, 30);                       -- 溜め!
playSe( SPstart+ 73, SE_03);

--[[
entryEffect( SPstart+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SPstart+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect( SPstart+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え

speff = entryEffect( SPstart+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( SPstart+ 80, SE_04);

playSe( SPstart+ 90, SE_03);
playSe( SPstart+ 110, SE_03);
playSe( SPstart+ 130, SE_03);
playSe( SPstart+ 150, SE_03);

kame_hand = entryEffect( SPstart+ 70, SP_01, 0x40,      0,  300,  -190,  150);   -- 手のカメハメ波部
--setEffScaleKey( SPstart+ 70, kame_hand, 0.5, 0.5);

entryFade( SPstart+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--[[
aura = entryEffectLife( SPstart+  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( SPstart+ 30, aura, 1.5, 1.5);
setShakeChara( SPstart+ 70, 0, 49, 5);
]]--

shuchusen = entryEffectLife(SP_start, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start, shuchusen, 1.5, 1.5);

entryFadeBg(spep_6, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SPstart+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SPstart+90, ct, 40, 8);
setEffScaleKey( SPstart+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SPstart+ 169,   0, 1.5, 1.5);
setScaleKey( SPstart+ 170,   0, 1.0, 1.0);

playSe( SPstart+ 170, SE_05);
speff = entryEffect( SPstart+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SPstart+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SPstart+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( SPstart+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SPstart+  259,    0,      0,  0,   0);
setMoveKey( SPstart+  260,    0,   -600,  0,   0);
setMoveKey( SPstart+  261,    0,   -600,  0,   0);
setMoveKey( SPstart+  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SPstart+ 260, SP_02, 109, 0x40,  0,  300,  300,  250);   -- 伸びるかめはめ波

playSe( SPstart+ 260, SE_07);

spname = entryEffect( SPstart+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SPstart+  299,    0,   -100,  0,   0);
setMoveKey( SPstart+  300,    0,   -100,  0,   0);
setMoveKey( SPstart+  308,    0,   -1100,  0,   0);

entryFade( SPstart+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SPstart+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SPstart+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SPstart+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SPstart+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SPstart+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SPstart+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SPstart+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SPstart+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SPstart+ 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SPstart+ 268, 10012, 32, 0, -1, 0, 200, 400); -- ズオッ
setEffShake( SPstart+268, ct, 32, 5);
setEffAlphaKey( SPstart+268, ct, 255);
setEffAlphaKey( SPstart+290, ct, 255);
setEffAlphaKey( SPstart+300, ct, 0);
setEffScaleKey( SPstart+268, ct, 0.0, 0.0);
setEffScaleKey( SPstart+272, ct, 1.3, 1.3);
setEffScaleKey( SPstart+292, ct, 1.3, 1.3);
setEffScaleKey( SPstart+300, ct, 6.0, 6.0);
playSe( SPstart+ 300, SE_07);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SPstart+ 370, 0, 0);
setDisp( SPstart+ 370, 1, 1);
changeAnime( SPstart+ 370, 1, 104);                        -- ガード
setMoveKey( SPstart+  369,    1,  235,  0,   0);
setMoveKey( SPstart+  370,    1,  235,  0,   0);
setMoveKey( SPstart+  371,    1,  235,  0,   0);
setScaleKey( SPstart+ 369,    1,  0.7, 0.7);
setScaleKey( SPstart+ 370,    1,  0.7, 0.7);

setMoveKey( SPstart+  400,    1,   120,  0,   0);
setScaleKey( SPstart+  400,   1,   1.6,  1.6);

playSe( SPstart+ 390, SE_06);

kamehame_beam2 = entryEffect( SPstart+ 370, SP_03,   0, -1,  0,  200,  0);   -- 迫るかめはめ波


setEffScaleKey( SPstart+370, kamehame_beam2, 1, 1);

-- ** エフェクト等 ** --
setShakeChara( SPstart+ 370, 1, 99, 20);

entryFadeBg( SPstart+ 370, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SPstart+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 379; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end


setEffMoveKey( SPstart+453, kamehame_beam2,  200,    0,0);
setEffMoveKey( SPstart+454, kamehame_beam2,  500,    0,0);

setEffScaleKey( SPstart+452, kamehame_beam2, 1, 1);
setEffScaleKey( SPstart+454, kamehame_beam2, 2.5, 2.5);
setDamage( SPstart+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( SPstart+ 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SPstart+ 455, 1, 108);
setMoveKey( SPstart+  455, 1,  120,    0,  0);
setMoveKey( SPstart+  469, 1,  400,    0,  0);
setScaleKey( SPstart+ 455, 1,  1.6, 1.6);
setScaleKey( SPstart+ 458, 1,  1.5, 1.5);
setScaleKey( SPstart+ 468, 1,  0.2, 0.2);


--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SPstart+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SPstart+370, ct, 99, 20);
setEffScaleKey( SPstart+ 370, ct, 2.4, 2.4);
setEffRotateKey( SPstart+370, ct, -70);
setEffAlphaKey( SPstart+370, ct, 255);
setEffAlphaKey( SPstart+430, ct, 255);
setEffAlphaKey( SPstart+450, ct, 0);

entryFade( SPstart+ 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SPstart+ 469, 1, 1);
setMoveKey( SPstart+  469,    1,  100,  0,   0);
setScaleKey( SPstart+ 469,    1,  1.0, 1.0);
setMoveKey( SPstart+  470,    1,    0,   0,   128);
setScaleKey( SPstart+ 470,    1,  0.1, 0.1);

changeAnime( SPstart+ 470, 1, 107);                         -- 手前ダメージ
entryEffect( SPstart+ 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SPstart+ 478, SE_10);

setMoveKey( SPstart+  478,   1,    0,   0,   128);
setMoveKey( SPstart+  485,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( SPstart+ 486, 1, 0);  -- ダメージ振動等
setShake( SPstart+477,6,15);
setShake( SPstart+483,15,10);

setRotateKey( SPstart+ 470,  1,  30 );
setRotateKey( SPstart+ 472,  1,  80 );
setRotateKey( SPstart+ 474,  1, 120 );
setRotateKey( SPstart+ 476,  1, 160 );
setRotateKey( SPstart+ 478,  1, 200 );
setRotateKey( SPstart+ 480,  1, 260 );
setRotateKey( SPstart+ 482,  1, 320 );
setRotateKey( SPstart+ 484,  1,   0 );

setShakeChara( SPstart+ 485, 1, 5,  10);
setShakeChara( SPstart+ 490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SPstart+ 485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SPstart+485, ct, 30, 10);
setEffRotateKey( SPstart+ 485, ct, -40);
setEffScaleKey( SPstart+ 485, ct, 4.0, 4.0);
setEffScaleKey( SPstart+ 486, ct, 2.0, 2.0);
setEffScaleKey( SPstart+ 487, ct, 2.6, 2.6);
setEffScaleKey( SPstart+ 488, ct, 4.0, 4.0);
setEffScaleKey( SPstart+ 489, ct, 2.6, 2.6);
setEffScaleKey( SPstart+ 490, ct, 3.8, 3.8);
setEffScaleKey( SPstart+ 580, ct, 3.8, 3.8);
setEffAlphaKey( SPstart+ 485, ct, 255);
setEffAlphaKey( SPstart+ 575, ct, 255);
setEffAlphaKey( SPstart+ 585, ct, 0);

playSe( SPstart+ 473, SE_11);
shuchusen = entryEffectLife( SPstart+ 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SPstart+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SPstart+486);

entryFade( SPstart+ 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SPstart+580);

end
