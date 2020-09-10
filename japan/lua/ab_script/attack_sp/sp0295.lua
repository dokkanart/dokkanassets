

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

tyo = -30;
tyo2 = -40;

--SP_01 = 100159;
--SP_02 = 100160;
--SP_03 = 100161;
--SP_04 = 1551;

--SP_01 = 100362;
--SP_02 = 100354;
--SP_02 = 160024;
--SP_03 = 100355;

SP_01 = 100362;
--SP_02 = 100354;
SP_02 = 100363;
SP_03 = 100364;
SP_04 = 100365;
SP_05 = 100366;


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

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
--changeAnime(  30, 0, 17);                       -- 溜め!
--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
--playSe( 30, SE_01);

playSe( 5, SE_04);

speff = entryEffect(  40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

kame_hand = entryEffect( 1, SP_01, 0x40,      0,  300,  50,  0);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, 1.0, 1.0);

entryFade( 24, 1, 9, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
playSe( 36, SE_03);
playSe( 46, SE_03);
playSe( 56, SE_03);
playSe( 76, SE_03);
playSe( 86, SE_03);
playSe( 96, SE_03);
]]
--v4.11調整
SE001 = playSe( 36, SE_03);
stopSe(51,SE001,5);
SE002 = playSe( 46, SE_03);
stopSe(61,SE002,5);
SE003 = playSe( 56, SE_03);
stopSe(81,SE003,5);
SE004 = playSe( 76, SE_03);
stopSe(91,SE004,5);
SE005 = playSe( 86, SE_03);
stopSe(101,SE005,5);
SE006 = playSe( 96, SE_03);


shuchusen = entryEffectLife( 0, 906, 149, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 2.0, 2.0);
setEffScaleKey( 40, shuchusen, 2.0, 2.0);
setEffScaleKey( 49, shuchusen, 2.0, 2.0);

entryEffectLife( 0, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線

entryFadeBg( 0, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( 40, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(40, ct, 40, 8);
setEffScaleKey(40, ct, 1.4, 1.4);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(1, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
--playSe( 73, SE_03);

--playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -100,  100);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(90, ct, 40, 8);
--setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 124,   0, 1.5, 1.5);
setScaleKey( 125,   0, 1.0, 1.0);

playSe( 125, SE_05);
speff = entryEffect(  125,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 210, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 125+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

playSe( 217, SE_04);

shuchusen = entryEffectLife( 217, 906, 51, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 217, shuchusen, 1.0, 1.0);
setEffScaleKey( 257, shuchusen, 1.0, 1.0);
--setEffScaleKey( 266, shuchusen, 2.0, 2.0);

sen2 = entryEffectLife( 258, 921, 8, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(258, sen2, 310);
setEffScaleKey( 258, sen2, 2.0, 2.0);

sen2 = entryEffectLife( 287, 921, 82, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(287, sen2, 310);
setEffScaleKey( 287, sen2, 2.0, 2.0);

shuchusen = entryEffectLife( 286, 906, 83, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 286, shuchusen, 1.0, 1.0);
setEffScaleKey( 326, shuchusen, 1.0, 1.0);
--setEffScaleKey( 266, shuchusen, 2.0, 2.0);

kamehame_beam = entryEffect( 217, SP_02, 0x100,  0,  300,  -50,  0);   -- 伸びるかめはめ波
setEffShake(286, kamehame_beam, 100, 8);

playSe( 260, SE_07);

entryFadeBg( 215, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景



--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(369);

--書き文字エントリー
ct = entryEffectLife( 286, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(286, ct, 32, 5);
setEffAlphaKey(286, ct, 255);
setEffAlphaKey(308, ct, 255);
setEffAlphaKey(318, ct, 0);
setEffScaleKey(286, ct, 0.0, 0.0);
setEffScaleKey(290, ct, 1.3, 1.3);
setEffScaleKey(310, ct, 1.3, 1.3);
setEffScaleKey(318, ct, 6.0, 6.0);

playSe( 287, SE_07);

entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 0);
setMoveKey(   371,   0,    0, -54,   0);

--changeAnime( 370, 1, 104);                        -- ガード
--setMoveKey(  369,    1,  235,  0,   0);
--setMoveKey(  370,    1,  235,  0,   0);
--setMoveKey(  371,    1,  235,  0,   0);
--setScaleKey( 369,    1,  0.7, 0.7);
--setScaleKey( 370,    1,  0.7, 0.7);

--setMoveKey(  400,    1,   120,  0,   0);
--setScaleKey(  400,   1,   1.6,  1.6);

playSe( 375, SE_07);

playSe( 535, SE_07);

kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  -750,  -200);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--entryFadeBg( 370, 0, 209, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 370, 0, 30, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 400, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen3 = entryEffectLife( 369, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(369, sen3, 130);
setEffScaleKey(369, sen3, 2.0, 2.0);

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( 455, 1, 108);
--setMoveKey(  455, 1,  120,    0,  0);
--setMoveKey(  469, 1,  400,    0,  0);
--setScaleKey( 455, 1,  1.6, 1.6);
--setScaleKey( 458, 1,  1.5, 1.5);
--setScaleKey( 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
--setShakeChara( 370, 1, 99, 20);

--entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, 200, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 520, 4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 迫る(110F)
------------------------------------------------------

setDisp( 526, 1, 0);
setDisp( 526, 1, 1);
setDisp( 612, 1, 0);
changeAnime( 526, 1, 104);                        -- ガード
setMoveKey(  526,    1,  700,  700,   0);
setMoveKey(  535,    1,  700,  700,   0);
setMoveKey(  550,    1,  50, 50,   0);
setMoveKey(  612,    1,  -50, -50,   0);
--setMoveKey(  626,    1,  0,  0,   0);
setScaleKey( 527,    1,  2.5, 2.5);
setScaleKey( 535,    1,  2.5, 2.5);
setScaleKey( 550,    1,  1.5, 1.5);
setScaleKey( 645,    1,  1.5, 1.5);
--setScaleKey( 526,    1,  2.5, 2.5);

setShakeChara( 526, 1, 199, 10);

entryFadeBg( 526, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFade( 600, 1,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

sen5 = entryEffectLife( 526, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(526, sen5, 130);
setEffScaleKey(526, sen5, 2.0, 2.0);

kamehame_beam5 = entryEffect( 526, SP_04,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波

--書き文字エントリー
ct = entryEffectLife( 612, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(612, ct, 32, 5);
setEffAlphaKey(612, ct, 255);
setEffAlphaKey(624, ct, 255);
setEffAlphaKey(634, ct, 0);
setEffScaleKey(612, ct, 0.0, 0.0);
setEffScaleKey(616, ct, 1.3, 1.3);
setEffScaleKey(626, ct, 1.3, 1.3);
setEffScaleKey(634, ct, 6.0, 6.0);

entryFade( 667, 4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 566; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+10,    0,   2100,  1060,  0);

endPhase(SP_dodge+10);
do return end
else end

playSe( 612, SE_06);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

sen2 = entryEffectLife( 672, 921, 122, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(672, sen2, 310);
setEffScaleKey( 672, sen2, 2.0, 2.0);

shuchusen = entryEffectLife( 672, 906, 123, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 672, shuchusen, 1.0, 1.0);
setEffScaleKey( 712, shuchusen, 1.0, 1.0);

entryFadeBg( 672, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kamehame_beam5 = entryEffect( 672, SP_05,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波

playSe( 680, 1018);
playSe( 692, SE_10);

-- ダメージ表示
dealDamage(695);


entryFade( 770, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(780);
else



--敵
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
--changeAnime(  30, 0, 17);                       -- 溜め!
--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
--playSe( 30, SE_01);

playSe( 5, SE_04);

--speff = entryEffect(  40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

kame_hand = entryEffect( 1, SP_01, 0x40,      0,  300,  50,  0);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, 1.0, 1.0);

entryFade( 24, 1, 9, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--[[
playSe( 36, SE_03);
playSe( 46, SE_03);
playSe( 56, SE_03);
playSe( 76, SE_03);
playSe( 86, SE_03);
playSe( 96, SE_03);
]]
--v4.11調整
SE001 = playSe( 36, SE_03);
stopSe(51,SE001,5);
SE002 = playSe( 46, SE_03);
stopSe(61,SE002,5);
SE003 = playSe( 56, SE_03);
stopSe(81,SE003,5);
SE004 = playSe( 76, SE_03);
stopSe(91,SE004,5);
SE005 = playSe( 86, SE_03);
stopSe(101,SE005,5);
SE006 = playSe( 96, SE_03);

shuchusen = entryEffectLife( 0, 906, 149, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 2.0, 2.0);
setEffScaleKey( 40, shuchusen, 2.0, 2.0);
setEffScaleKey( 49, shuchusen, 2.0, 2.0);

entryEffectLife( 0, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線

entryFadeBg( 0, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( 40, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(40, ct, 40, 8);
setEffScaleKey(40, ct, 1.4, 1.4);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(1, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
--playSe( 73, SE_03);

--playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -100,  100);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
--setEffShake(90, ct, 40, 8);
--setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 124,   0, 1.5, 1.5);
setScaleKey( 125,   0, 1.0, 1.0);

playSe( 125, SE_05);
speff = entryEffect(  125,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 210, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 125+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

playSe( 217, SE_04);

shuchusen = entryEffectLife( 217, 906, 51, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 217, shuchusen, 1.0, 1.0);
setEffScaleKey( 257, shuchusen, 1.0, 1.0);
--setEffScaleKey( 266, shuchusen, 2.0, 2.0);

sen2 = entryEffectLife( 258, 921, 8, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(258, sen2, 310);
setEffScaleKey( 258, sen2, 2.0, 2.0);

sen2 = entryEffectLife( 287, 921, 82, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(287, sen2, 310);
setEffScaleKey( 287, sen2, 2.0, 2.0);

shuchusen = entryEffectLife( 286, 906, 83, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 286, shuchusen, 1.0, 1.0);
setEffScaleKey( 326, shuchusen, 1.0, 1.0);
--setEffScaleKey( 266, shuchusen, 2.0, 2.0);

kamehame_beam = entryEffect( 217, SP_02, 0x100,  0,  300,  -50,  0);   -- 伸びるかめはめ波
setEffShake(286, kamehame_beam, 100, 8);

playSe( 260, SE_07);

entryFadeBg( 215, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景



--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(369);

--書き文字エントリー
ct = entryEffectLife( 286, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(286, ct, 32, 5);
setEffAlphaKey(286, ct, 255);
setEffAlphaKey(308, ct, 255);
setEffAlphaKey(318, ct, 0);
setEffScaleKey(286, ct, 0.0, 0.0);
setEffScaleKey(290, ct, 1.3, 1.3);
setEffScaleKey(310, ct, 1.3, 1.3);
setEffScaleKey(318, ct, 6.0, 6.0);

playSe( 287, SE_07);

entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 0);
setMoveKey(   371,   0,    0, -54,   0);

--changeAnime( 370, 1, 104);                        -- ガード
--setMoveKey(  369,    1,  235,  0,   0);
--setMoveKey(  370,    1,  235,  0,   0);
--setMoveKey(  371,    1,  235,  0,   0);
--setScaleKey( 369,    1,  0.7, 0.7);
--setScaleKey( 370,    1,  0.7, 0.7);

--setMoveKey(  400,    1,   120,  0,   0);
--setScaleKey(  400,   1,   1.6,  1.6);

playSe( 375, SE_07);

playSe( 535, SE_07);

kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  -750,  -200);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--entryFadeBg( 370, 0, 209, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 370, 0, 30, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 400, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen3 = entryEffectLife( 369, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(369, sen3, 130);
setEffScaleKey(369, sen3, 2.0, 2.0);

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( 455, 1, 108);
--setMoveKey(  455, 1,  120,    0,  0);
--setMoveKey(  469, 1,  400,    0,  0);
--setScaleKey( 455, 1,  1.6, 1.6);
--setScaleKey( 458, 1,  1.5, 1.5);
--setScaleKey( 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
--setShakeChara( 370, 1, 99, 20);

--entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, 200, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, -70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 520, 4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 迫る(110F)
------------------------------------------------------

setDisp( 526, 1, 0);
setDisp( 526, 1, 1);
setDisp( 612, 1, 0);
changeAnime( 526, 1, 104);                        -- ガード
setMoveKey(  526,    1,  700,  700,   0);
setMoveKey(  535,    1,  700,  700,   0);
setMoveKey(  550,    1,  50, 50,   0);
setMoveKey(  612,    1,  -50, -50,   0);
--setMoveKey(  626,    1,  0,  0,   0);
setScaleKey( 527,    1,  2.5, 2.5);
setScaleKey( 535,    1,  2.5, 2.5);
setScaleKey( 550,    1,  1.5, 1.5);
setScaleKey( 645,    1,  1.5, 1.5);
--setScaleKey( 526,    1,  2.5, 2.5);

setShakeChara( 526, 1, 199, 10);

entryFadeBg( 526, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFade( 600, 1,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

sen5 = entryEffectLife( 526, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(526, sen5, 130);
setEffScaleKey(526, sen5, 2.0, 2.0);

kamehame_beam5 = entryEffect( 526, SP_04,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波

--書き文字エントリー
ct = entryEffectLife( 612, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(612, ct, 32, 5);
setEffAlphaKey(612, ct, 255);
setEffAlphaKey(624, ct, 255);
setEffAlphaKey(634, ct, 0);
setEffScaleKey(612, ct, 0.0, 0.0);
setEffScaleKey(616, ct, 1.3, 1.3);
setEffScaleKey(626, ct, 1.3, 1.3);
setEffScaleKey(634, ct, 6.0, 6.0);

entryFade( 667, 4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 566; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+10,    0,   2100,  1060,  0);

endPhase(SP_dodge+10);
do return end
else end

playSe( 612, SE_06);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

sen2 = entryEffectLife( 672, 921, 122, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(672, sen2, 310);
setEffScaleKey( 672, sen2, 2.0, 2.0);

shuchusen = entryEffectLife( 672, 906, 123, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 672, shuchusen, 1.0, 1.0);
setEffScaleKey( 712, shuchusen, 1.0, 1.0);

entryFadeBg( 672, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kamehame_beam5 = entryEffect( 672, SP_05,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波

playSe( 680, 1018);
playSe( 692, SE_10);

-- ダメージ表示
dealDamage(695);


entryFade( 770, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(780);
end
