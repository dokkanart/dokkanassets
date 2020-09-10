print ("[lua]sp0023");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SP_01 = 103019
SP_02 = 103020
SP_03 = 103021

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45+10;

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

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
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

entryEffect(  61,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  61,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

kame_hand = entryEffect( 70, SP_01, 0x100,   0,  300,  175,  173);   -- 手のカメハメ波部

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

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

playSe( 170+64, SE_06);

removeAllEffect( 257);

sen = entryEffectLife( 257, 920, 112, 0x80,  -1,  0,  0,  0); -- 流線

setEffAlphaKey(257, sen, 255);
setEffAlphaKey(262, sen, 255);
setEffAlphaKey(263, sen, 255);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 257, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  254,    0,      0,  0,   0);
setMoveKey(  257,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 257, SP_02, 109, 0x40,  0,  300,  500,  200);   -- 伸びるかめはめ波
setEffAlphaKey(260, kamehame_beam, 0);
setEffAlphaKey(262, kamehame_beam, 0);
setEffAlphaKey(263, kamehame_beam, 255);

setEffScaleKey( 260, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 428, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 432, kamehame_beam, 3.0, 3.0);
playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  300,    0,   -250,  0,   0);
setMoveKey(  305,    0,   -1300,  0,   0); --1300
setMoveKey(  308,    0,   -1300,  0,   0); --1300

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 257, 0, 112, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 257, 0, 43, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

--sen = entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

--sen = entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 257, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 257, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);
setEffAlphaKey(260, shuchusen, 255);
setEffAlphaKey(262, shuchusen, 255);

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
playSe( 300, SE_07);



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

setMoveKey(  425,    1,   120,  0,   0);
setScaleKey(  425,   1,   1.6,  1.6);

playSe( 390, SE_06);

--[[
hit_eff_1 = entryEffect( 432,  4,  0,  -1,  0,  100, 0);--HIT
hit_eff_2 = entryEffect( 432,  906,  0,  -1,  0,  100, 0);
hit_eff_3 = entryEffect( 432,  908,  0,  -1,  0,  100, 0);

setEffScaleKey( 432, hit_eff_1, 1.5, 1.5);
setEffScaleKey( 432, hit_eff_2, 1.5, 1.5);
setEffScaleKey( 432, hit_eff_3, 1.5, 1.5);
--]]

kamehame_beam2 = entryEffectLife( 370, SP_03, 55,   0, -1,  0,  -30,  0);   -- 迫るかめはめ波
--setEffScaleKey(370, kamehame_beam3, 1, 1);
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(425, kamehame_beam2, 1, 1);

--setDamage( 429, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--playSe( 425, SE_09);
-- 敵吹っ飛ぶモーション
entryFade( 425, 0, 13, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--changeAnime( 432, 1, 108);
--setMoveKey(  432, 1,  120,    0,  0);
--setMoveKey(  446, 1,  500,    0,  0);
--setScaleKey( 432, 1,  1.6, 1.6);
--setScaleKey( 435, 1,  1.5, 1.5);
--setScaleKey( 446, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 55, 20);

entryFadeBg( 370, 0, 55, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 370, 921, 55, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);


-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 55, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 55, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(425, ct, 255);

--entryFade( 462-5, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+20, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( 469-36, 1, 1);
setMoveKey(  469-36,    1,  500,  0,   0);
setScaleKey( 469-36,    1,  1.0, 1.0);
setMoveKey(  470-36,    1,    0,   0,   128);
setScaleKey( 470-36,    1,  0.1, 0.1);

changeAnime( 470-36, 1, 107);                         -- 手前ダメージ
entryEffect( 478-36, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478-36, SE_10);

setMoveKey(  478-36,   1,    0,   0,   128);
setMoveKey(  485-36,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486-36, 1, 0);  -- ダメージ振動等
setShake(477-36,6,15);
setShake(483-36,15,10);

setRotateKey( 470-36,  1,  30 );
setRotateKey( 472-36,  1,  80 );
setRotateKey( 474-36,  1, 120 );
setRotateKey( 476-36,  1, 160 );
setRotateKey( 478-36,  1, 200 );
setRotateKey( 480-36,  1, 260 );
setRotateKey( 482-36,  1, 320 );
setRotateKey( 484-36,  1,   0 );

setShakeChara( 485-36, 1, 5,  10);
setShakeChara( 490-36, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485-36, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485-36, ct, 30, 10);
setEffRotateKey( 485-36, ct, -40);
setEffScaleKey( 485-36, ct, 4.0, 4.0);
setEffScaleKey( 486-36, ct, 2.0, 2.0);
setEffScaleKey( 487-36, ct, 2.6, 2.6);
setEffScaleKey( 488-36, ct, 4.0, 4.0);
setEffScaleKey( 489-36, ct, 2.6, 2.6);
setEffScaleKey( 490-36, ct, 3.8, 3.8);
setEffScaleKey( 580-36, ct, 3.8, 3.8);
setEffAlphaKey( 485-36, ct, 255);
setEffAlphaKey( 575-36, ct, 255);
setEffAlphaKey( 585-36, ct, 0);

playSe( 473-36, SE_11);
shuchusen = entryEffectLife( 473-36, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473-36, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486-36);
entryFade( 570-36, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(580-36);

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

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
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

entryEffect(  61,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  61,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( 80, SE_04);

--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

kame_hand = entryEffect( 70, SP_01, 0x40+0x100,      0,  300,  175,  173);   -- 手のカメハメ波部

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

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

playSe( 170+64, SE_06);

removeAllEffect( 257);

sen = entryEffectLife( 257, 920, 112, 0x80,  -1,  0,  0,  0); -- 流線

setEffAlphaKey(257, sen, 255);
setEffAlphaKey(262, sen, 255);
setEffAlphaKey(263, sen, 255);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 257, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  254,    0,      0,  0,   0);
setMoveKey(  257,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 257, SP_02, 109, 0x40,  0,  300,  500,  200);   -- 伸びるかめはめ波
setEffAlphaKey(260, kamehame_beam, 0);
setEffAlphaKey(262, kamehame_beam, 0);
setEffAlphaKey(263, kamehame_beam, 255);

setEffScaleKey( 260, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 428, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 432, kamehame_beam, 3.0, 3.0);
playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  300,    0,   -250,  0,   0);
setMoveKey(  305,    0,   -1300,  0,   0); --1300
setMoveKey(  308,    0,   -1300,  0,   0);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 257, 0, 112, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 257, 0, 43, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

--sen = entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

--sen = entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 257, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 257, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);
setEffAlphaKey(260, shuchusen, 255);
setEffAlphaKey(262, shuchusen, 255);

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
playSe( 300, SE_07);



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

setMoveKey(  425,    1,   120,  0,   0);
setScaleKey(  425,   1,   1.6,  1.6);

playSe( 390, SE_06);

--[[
hit_eff_1 = entryEffect( 432,  4,  0,  -1,  0,  100, 0);--HIT
hit_eff_2 = entryEffect( 432,  906,  0,  -1,  0,  100, 0);
hit_eff_3 = entryEffect( 432,  908,  0,  -1,  0,  100, 0);

setEffScaleKey( 432, hit_eff_1, 1.5, 1.5);
setEffScaleKey( 432, hit_eff_2, 1.5, 1.5);
setEffScaleKey( 432, hit_eff_3, 1.5, 1.5);
--]]

kamehame_beam2 = entryEffectLife( 370, SP_03, 55,   0, -1,  0,  -30,  0);   -- 迫るかめはめ波
--setEffScaleKey(370, kamehame_beam3, 1, 1);
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(425, kamehame_beam2, 1, 1);

--setDamage( 429, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--playSe( 425, SE_09);
-- 敵吹っ飛ぶモーション
entryFade( 425, 0, 13, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--changeAnime( 432, 1, 108);
--setMoveKey(  432, 1,  120,    0,  0);
--setMoveKey(  446, 1,  500,    0,  0);
--setScaleKey( 432, 1,  1.6, 1.6);
--setScaleKey( 435, 1,  1.5, 1.5);
--setScaleKey( 446, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 55, 20);

entryFadeBg( 370, 0, 55, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 370, 921, 55, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);


-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 55, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 55, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, -70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(425, ct, 255);

--entryFade( 462-5, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+20, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( 469-36, 1, 1);
setMoveKey(  469-36,    1,  500,  0,   0);
setScaleKey( 469-36,    1,  1.0, 1.0);
setMoveKey(  470-36,    1,    0,   0,   128);
setScaleKey( 470-36,    1,  0.1, 0.1);

changeAnime( 470-36, 1, 107);                         -- 手前ダメージ
entryEffect( 478-36, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478-36, SE_10);

setMoveKey(  478-36,   1,    0,   0,   128);
setMoveKey(  485-36,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486-36, 1, 0);  -- ダメージ振動等
setShake(477-36,6,15);
setShake(483-36,15,10);

setRotateKey( 470-36,  1,  30 );
setRotateKey( 472-36,  1,  80 );
setRotateKey( 474-36,  1, 120 );
setRotateKey( 476-36,  1, 160 );
setRotateKey( 478-36,  1, 200 );
setRotateKey( 480-36,  1, 260 );
setRotateKey( 482-36,  1, 320 );
setRotateKey( 484-36,  1,   0 );

setShakeChara( 485-36, 1, 5,  10);
setShakeChara( 490-36, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485-36, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485-36, ct, 30, 10);
setEffRotateKey( 485-36, ct, -40);
setEffScaleKey( 485-36, ct, 4.0, 4.0);
setEffScaleKey( 486-36, ct, 2.0, 2.0);
setEffScaleKey( 487-36, ct, 2.6, 2.6);
setEffScaleKey( 488-36, ct, 4.0, 4.0);
setEffScaleKey( 489-36, ct, 2.6, 2.6);
setEffScaleKey( 490-36, ct, 3.8, 3.8);
setEffScaleKey( 580-36, ct, 3.8, 3.8);
setEffAlphaKey( 485-36, ct, 255);
setEffAlphaKey( 575-36, ct, 255);
setEffAlphaKey( 585-36, ct, 0);

playSe( 473-36, SE_11);
shuchusen = entryEffectLife( 473-36, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473-36, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486-36);
entryFade( 570-36, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(580-36);


end
