

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
--[[
SP_01 = 100168;
SP_02 = 100169;
SP_03 = 100170;
]]
SP_01 = 100159;
SP_02 = 100160;
SP_03 = 100161;

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
entryFadeBg( 30, 10, 140, 0,  10, 10, 10, 180);          -- ベース暗め　背景

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
syuA =entryEffectLife(  30,   906,  40, 0,     -1,  0,  0,  0);   -- eff_003 (気)
playSe( 30, SE_01);

entryFade( 62, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setShakeChara( 30, 0, 30, 5);

--[[
-- ** エフェクト等 ** --
aura = entryEffectLife( 30, 362, 39, 0x80, 0, 1, 0, -220); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
]]--

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
setScaleKey( 69, 0, 1.5, 1.5);

playSe( 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
syuB =entryEffectLife(  70,   906,  100, 0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300, 0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  70,   362, 99, 0x80,  0,  1,  0,  -60); -- オーラ
setEffScaleKey( 30, aura2, 1.5, 1.5);
setShakeChara( 70, 0, 100, 5);

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


entryFade( 255, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  250,    0,      0,  -54,   0);
setMoveKey(  251,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

tyousei = 80;
kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x100,  0,  -1,  250,  80);   -- 伸びるかめはめ波
setEffMoveKey( 270, kamehame_beam, 250, 0+tyousei);
setEffMoveKey( 290, kamehame_beam, 210, 0+tyousei, 20);
setEffMoveKey( 300, kamehame_beam,  0, 70, 50);
setEffMoveKey( 305, kamehame_beam, -550, -10, 80);

setEffScaleKey( 260, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 290, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 300, kamehame_beam, 0.5, 0.5);
setEffScaleKey( 340, kamehame_beam, 0.5, 0.5);


playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -600,  0,   80);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setShakeChara( 305, 0, 54, 50);
setEffScaleKey(  260, sen2, 1.3, 1.3);

shuchusen = entryEffectLife( 260, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
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
playSe( 300, SE_07);
entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


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

playSe( 390, SE_06);

kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 455, 1, 108);
setMoveKey(  455, 1,  120,    0,  0);
setMoveKey(  469, 1,  400,    0,  0);
setScaleKey( 455, 1,  1.6, 1.6);
setScaleKey( 458, 1,  1.5, 1.5);
setScaleKey( 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


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

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( 469-3, 1, 1);
setMoveKey(  469-3,    1,  100,  0,   0);
setScaleKey( 469-3,    1,  1.0, 1.0);
setMoveKey(  470-3,    1,    0,   0,   128);
setScaleKey( 470-3,    1,  0.1, 0.1);

changeAnime( 470-3, 1, 107);                         -- 手前ダメージ
entryEffect( 478-3, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478-3, SE_10);

setMoveKey(  478-3,   1,    0,   0,   128);
setMoveKey(  485-3,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486-3, 1, 0);  -- ダメージ振動等
setShake(477-3,6,15);
setShake(483-3,15,10);

setRotateKey( 470-3,  1,  30 );
setRotateKey( 472-3,  1,  80 );
setRotateKey( 474-3,  1, 120 );
setRotateKey( 476-3,  1, 160 );
setRotateKey( 478-3,  1, 200 );
setRotateKey( 480-3,  1, 260 );
setRotateKey( 482-3,  1, 320 );
setRotateKey( 484-3,  1,   0 );

setShakeChara( 485-3, 1, 5,  10);
setShakeChara( 490-3, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485-3, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485-3, ct, 30, 10);
setEffRotateKey( 485-3, ct, -40);
setEffScaleKey( 485-3, ct, 4.0, 4.0);
setEffScaleKey( 486-3, ct, 2.0, 2.0);
setEffScaleKey( 487-3, ct, 2.6, 2.6);
setEffScaleKey( 488-3, ct, 4.0, 4.0);
setEffScaleKey( 489-3, ct, 2.6, 2.6);
setEffScaleKey( 490-3, ct, 3.8, 3.8);
setEffScaleKey( 580-3, ct, 3.8, 3.8);
setEffAlphaKey( 485-3, ct, 255);
setEffAlphaKey( 575-3, ct, 255);
setEffAlphaKey( 585-3, ct, 0);

playSe( 473-3, SE_11);
shuchusen = entryEffectLife( 473-3, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473-3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486-3);

entryFade( 570-3, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580-3);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
entryFadeBg( 30, 10, 140, 0,  10, 10, 10, 180);          -- ベース暗め　背景

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
syuA =entryEffectLife(  30,   906,  40, 0,     -1,  0,  0,  0);   -- eff_003 (気)
playSe( 30, SE_01);

entryFade( 62, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

setShakeChara( 30, 0, 30, 5);

--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   362, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
]]--

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
setScaleKey( 69, 0, 1.5, 1.5);

playSe( 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--syuB =entryEffectLife(  70,   906,  100, 0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x80,  0,  300, -43, 23);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura2 = entryEffectLife(  70,   362, 99, 0x80,  0,  1,  0,  -60); -- オーラ
setEffScaleKey( 30, aura2, 1.5, 1.5);
setShakeChara( 70, 0, 100, 5);

shuchusen = entryEffectLife( 70, 906, 120, 0x100,  -1, 0,  0,  0);   -- 集中線

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 70, 8);
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


entryFade( 255, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  250,    0,      0,  -54,   0);
setMoveKey(  251,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

tyousei = 80;
kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x100,  0,  -1,  190,  80);   -- 伸びるかめはめ波
setEffMoveKey( 270, kamehame_beam, 190, 0+tyousei);
setEffMoveKey( 290, kamehame_beam, 140, 0+tyousei, 20);
setEffMoveKey( 300, kamehame_beam,  -80, 70, 50);
setEffMoveKey( 305, kamehame_beam, -550, -10, 80);

setEffScaleKey( 260, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 290, kamehame_beam, 1.0, 1.0);
setEffScaleKey( 300, kamehame_beam, 0.5, 0.5);
setEffScaleKey( 340, kamehame_beam, 0.5, 0.5);


playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え


-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -600,  0,   80);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setShakeChara( 305, 0, 54, 50);
setEffScaleKey(  260, sen2, 1.3, 1.3);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
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
playSe( 300, SE_07);
entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


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

playSe( 390, SE_06);

kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 455, 1, 108);
setMoveKey(  455, 1,  120,    0,  0);
setMoveKey(  469, 1,  400,    0,  0);
setScaleKey( 455, 1,  1.6, 1.6);
setScaleKey( 458, 1,  1.5, 1.5);
setScaleKey( 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255); -- ベース暗め　背景

entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, -50);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


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

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( 469-3, 1, 1);
setMoveKey(  469-3,    1,  100,  0,   0);
setScaleKey( 469-3,    1,  1.0, 1.0);
setMoveKey(  470-3,    1,    0,   0,   128);
setScaleKey( 470-3,    1,  0.1, 0.1);

changeAnime( 470-3, 1, 107);                         -- 手前ダメージ
entryEffect( 478-3, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478-3, SE_10);

setMoveKey(  478-3,   1,    0,   0,   128);
setMoveKey(  485-3,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486-3, 1, 0);  -- ダメージ振動等
setShake(477-3,6,15);
setShake(483-3,15,10);

setRotateKey( 470-3,  1,  30 );
setRotateKey( 472-3,  1,  80 );
setRotateKey( 474-3,  1, 120 );
setRotateKey( 476-3,  1, 160 );
setRotateKey( 478-3,  1, 200 );
setRotateKey( 480-3,  1, 260 );
setRotateKey( 482-3,  1, 320 );
setRotateKey( 484-3,  1,   0 );

setShakeChara( 485-3, 1, 5,  10);
setShakeChara( 490-3, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485-3, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485-3, ct, 30, 10);
setEffRotateKey( 485-3, ct, -40);
setEffScaleKey( 485-3, ct, 4.0, 4.0);
setEffScaleKey( 486-3, ct, 2.0, 2.0);
setEffScaleKey( 487-3, ct, 2.6, 2.6);
setEffScaleKey( 488-3, ct, 4.0, 4.0);
setEffScaleKey( 489-3, ct, 2.6, 2.6);
setEffScaleKey( 490-3, ct, 3.8, 3.8);
setEffScaleKey( 580-3, ct, 3.8, 3.8);
setEffAlphaKey( 485-3, ct, 255);
setEffAlphaKey( 575-3, ct, 255);
setEffAlphaKey( 585-3, ct, 0);

playSe( 473-3, SE_11);
shuchusen = entryEffectLife( 473-3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473-3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486-3);

entryFade( 570-3, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580-3);

end
