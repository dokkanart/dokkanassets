print ("[lua]sp0043");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 103053;
SP_02 = 103054;
SP_03 = 103055;

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

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);


entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

kame_hand = entryEffect( 70, SP_01, 0x40,  0,  300,  -70,  150);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

entryEffect(  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

setMoveKey(   170,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

--setScaleKey( 260,   0, 0.6, 0.6);
setScaleKey( 260,   0, 1.0, 1.0);

setMoveKey(  259,    0,      -100,  0,   0);

kamehame_beam = entryEffectLife( 257, SP_02, 112, 0x40,  0,  300,  170,  400);   -- 伸びるかめはめ波
setEffAlphaKey(257, kamehame_beam, 0);
setEffAlphaKey(262, kamehame_beam, 0);
setEffAlphaKey(263, kamehame_beam, 255);

playSe( 260, SE_07);

spname = entryEffect( 257, 1508,  0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  318,    0,   -100,  0,   0);
setMoveKey(  328,    0,   -1100,  0,   0);


entryFade( 350-15, 20, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(354);

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 255);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 260, 0, 84, 25);

shuchusen = entryEffectLife( 260, 906, 109, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);


-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);
playSe( 312, 1042);

SP_start2 = -15;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--setScaleKey( 375,   0, 0.3, 0.3);
setScaleKey( SP_start2+ 375,   0, 1.0, 1.0);

setDisp( SP_start2+ 370, 0, 0);
setDisp( SP_start2+ 370, 1, 1);
changeAnime( SP_start2+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start2+  369,    1,  235,  150,   0);
setMoveKey( SP_start2+  370,    1,  235,  150,   0);
setMoveKey( SP_start2+  371,    1,  235,  150,   0);

setScaleKey( SP_start2+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start2+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start2+  400,    1,   0,  0,   0);
setScaleKey( SP_start2+  400,   1,   1.6,  1.6);

playSe( SP_start2+ 400, 1034);

kamehame_beam2 = entryEffect( SP_start2+ 400, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffRotateKey( SP_start2+400,kamehame_beam2,-45);
setEffScaleKey( SP_start2+400, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start2+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( SP_start2+ 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( SP_start2+ speff, 6, 3);                       -- カットイン差し替え
--playSe( SP_start2+ 370, SE_08);

SP_start = -7;

playSe( SP_start2+ SP_start+ 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start2+ SP_start+ 455, 1, 108);
setMoveKey( SP_start2+ SP_start+  455, 1,  0,    0,  0);
setMoveKey( SP_start2+ SP_start+  469, 1,  400,    150,  0);
setScaleKey( SP_start2+ SP_start+ 455, 1,  1.6, 1.6);
setScaleKey( SP_start2+ SP_start+ 458, 1,  1.5, 1.5);
setScaleKey( SP_start2+ SP_start+ 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ 370, 1, 99, 20);

entryFadeBg( SP_start2+ 370, 0, 92, 0, 10, 10, 10, 150);          -- ベース暗め　背景

sen3 = entryEffectLife( SP_start2+ 370, 921, 92, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( SP_start2+370,sen3,45);


-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start2+370, ct, 99, 20);
setEffScaleKey( SP_start2+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+370, ct, 70);
setEffAlphaKey( SP_start2+370, ct, 255);
setEffAlphaKey( SP_start2+430, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+450, ct, 0);

entryFade( SP_start2+ SP_start+ 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 391; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- ガッ
------------------------------------------------------
SP_ATK =  SP_start2+ SP_start+ 469;

--***敵の動き***--
setDisp( SP_ATK + 0, 1, 1 );
changeAnime( SP_ATK + 0, 1, 107 );

setMoveKey( SP_ATK + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( SP_ATK + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( SP_ATK + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( SP_ATK + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( SP_ATK + 0, 1, 0.22, 0.22 );
setScaleKey( SP_ATK + 2, 1, 0.35, 0.35 );
setScaleKey( SP_ATK + 4, 1, 0.51, 0.51 );
setScaleKey( SP_ATK + 6, 1, 0.7, 0.7 );
setScaleKey( SP_ATK + 8, 1, 0.93, 0.93 );
setScaleKey( SP_ATK + 10, 1, 1.2, 1.2 );
setScaleKey( SP_ATK + 12, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 14, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 16, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 18, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 20, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 22, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 24, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 26, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 120, 1, 1.6, 1.6 );

setRotateKey( SP_ATK + 0, 1, 0 );
setRotateKey( SP_ATK + 2, 1, 105 );
setRotateKey( SP_ATK + 4, 1, 240 );
setRotateKey( SP_ATK + 6, 1, 405 );
setRotateKey( SP_ATK + 8, 1, 600 );
setRotateKey( SP_ATK + 10, 1, 825 );
setRotateKey( SP_ATK + 12, 1, 1080 );
setRotateKey( SP_ATK + 120, 1, 1080 );

--爆発エフェクト
entryEffect( SP_ATK, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK, SE_10);

setDamage( SP_ATK +16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+8,6,15);
setShake(SP_ATK+14,15,10);

--書き文字--
ctGa = entryEffectLife( SP_ATK + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( SP_ATK + 14, ctGa, 30, 10);

setEffMoveKey( SP_ATK + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK + 14, ctGa, 2, 2 );
setEffScaleKey( SP_ATK+16, ctGa, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, cGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ctGa, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ctGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ctGa, 3.8, 3.8);
setEffScaleKey( SP_ATK+112, ctGa, 3.8, 3.8);

setEffRotateKey( SP_ATK + 14, ctGa, -40 );
setEffRotateKey( SP_ATK + 16, ctGa, -31 );
setEffRotateKey( SP_ATK + 18, ctGa, -40 );
setEffRotateKey( SP_ATK + 20, ctGa, -31 );
setEffRotateKey( SP_ATK + 22, ctGa, -40 );
setEffRotateKey( SP_ATK + 24, ctGa, -31);
setEffRotateKey( SP_ATK + 26, ctGa, -40 );
setEffRotateKey( SP_ATK + 28, ctGa, -31);
setEffRotateKey( SP_ATK + 30, ctGa, -40 );

setEffAlphaKey( SP_ATK + 14, ctGa, 255 );

--entryFadeBg( SP_ATK,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( SP_ATK+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( SP_ATK+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( SP_ATK+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  SP_ATK+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(SP_ATK+16);
entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK + 104);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);


entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

kame_hand = entryEffect( 70, SP_01, 0x40,  0,  300,  -70,  150);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

entryEffect(  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

setMoveKey(   170,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

--setScaleKey( 260,   0, 0.6, 0.6);
setScaleKey( 260,   0, 1.0, 1.0);

setMoveKey(  259,    0,      -100,  0,   0);

kamehame_beam = entryEffectLife( 257, SP_02, 112, 0x40,  0,  300,  170,  400);   -- 伸びるかめはめ波
setEffAlphaKey(257, kamehame_beam, 0);
setEffAlphaKey(262, kamehame_beam, 0);
setEffAlphaKey(263, kamehame_beam, 255);

playSe( 260, SE_07);

spname = entryEffect( 257, 1508,  0x100,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  318,    0,   -100,  0,   0);
setMoveKey(  328,    0,   -1100,  0,   0);


entryFade( 350-15, 20, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(354);

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 255);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 260, 0, 84, 25);

shuchusen = entryEffectLife( 260, 906, 109, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);


-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);
playSe( 312, 1042);

SP_start2 = -15;


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--setScaleKey( 375,   0, 0.3, 0.3);
setScaleKey( SP_start2+ 375,   0, 1.0, 1.0);

setDisp( SP_start2+ 370, 0, 0);
setDisp( SP_start2+ 370, 1, 1);
changeAnime( SP_start2+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start2+  369,    1,  235,  150,   0);
setMoveKey( SP_start2+  370,    1,  235,  150,   0);
setMoveKey( SP_start2+  371,    1,  235,  150,   0);

setScaleKey( SP_start2+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start2+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start2+  400,    1,   0,  0,   0);
setScaleKey( SP_start2+  400,   1,   1.6,  1.6);

playSe( SP_start2+ 400, 1034);

kamehame_beam2 = entryEffect( SP_start2+ 400, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffRotateKey( SP_start2+400,kamehame_beam2,-45);
setEffScaleKey( SP_start2+400, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start2+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( SP_start2+ 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( SP_start2+ speff, 6, 3);                       -- カットイン差し替え
--playSe( SP_start2+ 370, SE_08);

SP_start = -7;

playSe( SP_start2+ SP_start+ 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start2+ SP_start+ 455, 1, 108);
setMoveKey( SP_start2+ SP_start+  455, 1,  0,    0,  0);
setMoveKey( SP_start2+ SP_start+  469, 1,  400,    150,  0);
setScaleKey( SP_start2+ SP_start+ 455, 1,  1.6, 1.6);
setScaleKey( SP_start2+ SP_start+ 458, 1,  1.5, 1.5);
setScaleKey( SP_start2+ SP_start+ 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ 370, 1, 99, 20);

entryFadeBg( SP_start2+ 370, 0, 92, 0, 10, 10, 10, 150);          -- ベース暗め　背景

sen3 = entryEffectLife( SP_start2+ 370, 921, 92, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( SP_start2+370,sen3,45);


-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start2+370, ct, 99, 20);
setEffScaleKey( SP_start2+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+370, ct, -70);
setEffAlphaKey( SP_start2+370, ct, 255);
setEffAlphaKey( SP_start2+430, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+450, ct, 0);

entryFade( SP_start2+ SP_start+ 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 391; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- ガッ
------------------------------------------------------
SP_ATK =  SP_start2+ SP_start+ 469;

--***敵の動き***--
setDisp( SP_ATK + 0, 1, 1 );
changeAnime( SP_ATK + 0, 1, 107 );

setMoveKey( SP_ATK + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( SP_ATK + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( SP_ATK + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( SP_ATK + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( SP_ATK + 0, 1, 0.22, 0.22 );
setScaleKey( SP_ATK + 2, 1, 0.35, 0.35 );
setScaleKey( SP_ATK + 4, 1, 0.51, 0.51 );
setScaleKey( SP_ATK + 6, 1, 0.7, 0.7 );
setScaleKey( SP_ATK + 8, 1, 0.93, 0.93 );
setScaleKey( SP_ATK + 10, 1, 1.2, 1.2 );
setScaleKey( SP_ATK + 12, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 14, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 16, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 18, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 20, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 22, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 24, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 26, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 120, 1, 1.6, 1.6 );

setRotateKey( SP_ATK + 0, 1, 0 );
setRotateKey( SP_ATK + 2, 1, 105 );
setRotateKey( SP_ATK + 4, 1, 240 );
setRotateKey( SP_ATK + 6, 1, 405 );
setRotateKey( SP_ATK + 8, 1, 600 );
setRotateKey( SP_ATK + 10, 1, 825 );
setRotateKey( SP_ATK + 12, 1, 1080 );
setRotateKey( SP_ATK + 120, 1, 1080 );

--爆発エフェクト
entryEffect( SP_ATK, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK, SE_10);

setDamage( SP_ATK +16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+8,6,15);
setShake(SP_ATK+14,15,10);

--書き文字--
ctGa = entryEffectLife( SP_ATK + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( SP_ATK + 14, ctGa, 30, 10);

setEffMoveKey( SP_ATK + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK + 14, ctGa, 2, 2 );
setEffScaleKey( SP_ATK+16, ctGa, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, cGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ctGa, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ctGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ctGa, 3.8, 3.8);
setEffScaleKey( SP_ATK+112, ctGa, 3.8, 3.8);

setEffRotateKey( SP_ATK + 14, ctGa, -40 );
setEffRotateKey( SP_ATK + 16, ctGa, -31 );
setEffRotateKey( SP_ATK + 18, ctGa, -40 );
setEffRotateKey( SP_ATK + 20, ctGa, -31 );
setEffRotateKey( SP_ATK + 22, ctGa, -40 );
setEffRotateKey( SP_ATK + 24, ctGa, -31);
setEffRotateKey( SP_ATK + 26, ctGa, -40 );
setEffRotateKey( SP_ATK + 28, ctGa, -31);
setEffRotateKey( SP_ATK + 30, ctGa, -40 );

setEffAlphaKey( SP_ATK + 14, ctGa, 255 );

--entryFadeBg( SP_ATK,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( SP_ATK+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( SP_ATK+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( SP_ATK+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  SP_ATK+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(SP_ATK+16);
entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK + 104);
end
