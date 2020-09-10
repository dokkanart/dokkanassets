

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

SP_01 = 103101; --溜め
SP_02 = 103102; --はなつ
SP_03 = 103103; --手前に迫る
SP_04 = 103104; --命中の前面
SP_05 = 103105; --命中の背面
SP_06 = 103106; --爆発

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setAnimeLoop( 1, 0, 1);
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
setAnimeLoop( 31, 0, 1);
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
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
setScaleKey(   69,   0, 1.5, 1.5);
setScaleKey(   70,   0, 0.5, 0.5);
setVisibleUI(69, 0);
changeAnime( 70, 0, 31);                       -- 溜め!
setAnimeLoop( 71, 0, 1);
playSe( 73, SE_03);

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

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  120,  95);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 0.5, 0.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setAnimeLoop( 261, 0, 1);

setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 20,0x40,  0,  300,  220,  150);   -- 伸びるかめはめ波

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);

entryFade( 282, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
 --entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 30, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);



------------------------------------------------------
--手前に迫る
------------------------------------------------------
setMoveKey(  289,    0,   -100,  0,   0);
setMoveKey(  290,    0,   -700,  0,   0);

setDisp( 289, 0, 0);
entryFadeBg(290, 0, 75, 0, 0, 0, 0, 255);       -- ベース暗い　背景

kamehame_beam = entryEffect( 290, SP_03,  0x80,  -1,  300,  0,  0);   -- 伸びるかめはめ波


shuchusen = entryEffectLife( 325, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 325, shuchusen, 1.0, 1.0);
setEffScaleKey( 325, shuchusen, 1.0, 1.0);

entryFade( 360, 3, 5, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 290, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(290, ct, 32, 5);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(312, ct, 255);
setEffAlphaKey(322, ct, 0);
setEffScaleKey(290, ct, 0.0, 0.0);
setEffScaleKey(294, ct, 1.3, 1.3);
setEffScaleKey(314, ct, 1.3, 1.3);
setEffScaleKey(322, ct, 6.0, 6.0);
playSe( 300, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 340; --エンドフェイズのフレーム数を置き換える

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
--敵に当たる
------------------------------------------------------
setEnvZoomEnable(365, 1);

--setDisp( 364, 0, 1);
setMoveKey(  364,    0,   -700,  0,   0);
setMoveKey(  365,    0,   -700,  0,   0);
setMoveKey(  380,    0,   0,  0,   0);

setDisp( 365, 1, 1);
changeAnime(  365, 1, 100);
changeAnime(  380, 1, 108);

setAnimeLoop( 366, 1, 1);
setAnimeLoop( 381, 1, 1);

setScaleKey(   365,   1, 1.5, 1.5);
setScaleKey(   465,   1, 1.5, 1.5);

setMoveKey(  365,    1,   100,  0,   0);

entryFadeBg( 365, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( 374, 920, 10, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen = entryEffectLife( 377, 906, 88, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 380, shuchusen, 1.0, 1.0);
setEffScaleKey( 380, shuchusen, 1.0, 1.0);

kamehame_beam = entryEffect( 365, SP_04,  0x40+0x100,  1,  300,  -100,  0);   -- 伸びるかめはめ波
kamehame_beam = entryEffect( 379, SP_05,  0x40+0x80,  1,  300,  -100,  0);   -- 伸びるかめはめ波
kamehame_beam = entryEffect( 439, SP_06,  0x40+0x100,  1,  300,  -100,  0);   -- 伸びるかめはめ波

entryFade( 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setEnvZoomEnable(469, 0);

playSe( 365, 1018);
playSe( 380, SE_09);
playSe( 439, SE_10);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( 469, 1, 1);
setMoveKey(  469,    1,  100,  0,   0);
setScaleKey( 469,    1,  1.0, 1.0);
setMoveKey(  470,    1,    0,   0,   128);
setScaleKey( 470,    1,  0.1, 0.1);

changeAnime( 470, 1, 107);                         -- 手前ダメージ
entryEffect( 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478, SE_10);

setMoveKey(  478,   1,    0,   0,   128);
setMoveKey(  485,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486, 1, 0);  -- ダメージ振動等
setShake(477,6,15);
setShake(483,15,10);

setRotateKey( 470,  1,  30 );
setRotateKey( 472,  1,  80 );
setRotateKey( 474,  1, 120 );
setRotateKey( 476,  1, 160 );
setRotateKey( 478,  1, 200 );
setRotateKey( 480,  1, 260 );
setRotateKey( 482,  1, 320 );
setRotateKey( 484,  1,   0 );

setShakeChara( 485, 1, 5,  10);
setShakeChara( 490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485, ct, 30, 10);
setEffRotateKey( 485, ct, -40);
setEffScaleKey( 485, ct, 4.0, 4.0);
setEffScaleKey( 486, ct, 2.0, 2.0);
setEffScaleKey( 487, ct, 2.6, 2.6);
setEffScaleKey( 488, ct, 4.0, 4.0);
setEffScaleKey( 489, ct, 2.6, 2.6);
setEffScaleKey( 490, ct, 3.8, 3.8);
setEffScaleKey( 580, ct, 3.8, 3.8);
setEffAlphaKey( 485, ct, 255);
setEffAlphaKey( 575, ct, 255);
setEffAlphaKey( 585, ct, 0);

playSe( 473, SE_11);
shuchusen = entryEffectLife( 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486);

entryFade( 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setAnimeLoop( 31, 0, 1);
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
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
setScaleKey(   69,   0, 1.5, 1.5);
setScaleKey(   70,   0, 0.5, 0.5);
setVisibleUI(69, 0);
changeAnime( 70, 0, 31);                       -- 溜め!
setAnimeLoop( 71, 0, 1);
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  120,  95);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 0.5, 0.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setAnimeLoop( 261, 0, 1);

setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);


kamehame_beam = entryEffectLife( 260, SP_02, 20,0x40,  0,  300,  220,  150);   -- 伸びるかめはめ波

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);

entryFade( 282, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
 --entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 30, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 30, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);



------------------------------------------------------
--手前に迫る
------------------------------------------------------

setMoveKey(  289,    0,   -100,  0,   0);
setMoveKey(  290,    0,   -700,  0,   0);


setDisp( 289, 0, 0);
entryFadeBg(290, 0, 75, 0, 0, 0, 0, 255);       -- ベース暗い　背景

kamehame_beam = entryEffect( 290, SP_03,  0x80,  -1,  300,  0,  0);   -- 伸びるかめはめ波


shuchusen = entryEffectLife( 325, 906, 35, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 325, shuchusen, 1.0, 1.0);
setEffScaleKey( 325, shuchusen, 1.0, 1.0);

entryFade( 360, 3, 5, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 290, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(290, ct, 32, 5);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(312, ct, 255);
setEffAlphaKey(322, ct, 0);
setEffScaleKey(290, ct, 0.0, 0.0);
setEffScaleKey(294, ct, 1.3, 1.3);
setEffScaleKey(314, ct, 1.3, 1.3);
setEffScaleKey(322, ct, 6.0, 6.0);
playSe( 300, SE_07);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 340; --エンドフェイズのフレーム数を置き換える

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
--敵に当たる
------------------------------------------------------
setEnvZoomEnable(365, 1);

--setDisp( 364, 0, 1);
setMoveKey(  364,    0,   -700,  0,   0);
setMoveKey(  365,    0,   -700,  0,   0);
setMoveKey(  380,    0,   0,  0,   0);

setDisp( 365, 1, 1);
changeAnime(  365, 1, 100);
changeAnime(  380, 1, 108);

setAnimeLoop( 366, 1, 1);
setAnimeLoop( 381, 1, 1);

setScaleKey(   365,   1, 1.5, 1.5);
setScaleKey(   465,   1, 1.5, 1.5);

setMoveKey(  365,    1,   100,  0,   0);

entryFadeBg( 365, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( 374, 920, 10, 0x80,  -1,  0,  0,  0); -- 流線

shuchusen = entryEffectLife( 377, 906, 88, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 380, shuchusen, 1.0, 1.0);
setEffScaleKey( 380, shuchusen, 1.0, 1.0);

kamehame_beam = entryEffect( 365, SP_04,  0x40+0x100,  1,  300,  -100,  0);   -- 伸びるかめはめ波
kamehame_beam = entryEffect( 379, SP_05,  0x40+0x80,  1,  300,  -100,  0);   -- 伸びるかめはめ波
kamehame_beam = entryEffect( 439, SP_06,  0x40+0x100,  1,  300,  -100,  0);   -- 伸びるかめはめ波

entryFade( 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setEnvZoomEnable(469, 0);

playSe( 365, 1018);
playSe( 380, SE_09);
playSe( 439, SE_10);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( 469, 1, 1);
setMoveKey(  469,    1,  100,  0,   0);
setScaleKey( 469,    1,  1.0, 1.0);
setMoveKey(  470,    1,    0,   0,   128);
setScaleKey( 470,    1,  0.1, 0.1);

changeAnime( 470, 1, 107);                         -- 手前ダメージ
entryEffect( 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478, SE_10);

setMoveKey(  478,   1,    0,   0,   128);
setMoveKey(  485,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 486, 1, 0);  -- ダメージ振動等
setShake(477,6,15);
setShake(483,15,10);

setRotateKey( 470,  1,  30 );
setRotateKey( 472,  1,  80 );
setRotateKey( 474,  1, 120 );
setRotateKey( 476,  1, 160 );
setRotateKey( 478,  1, 200 );
setRotateKey( 480,  1, 260 );
setRotateKey( 482,  1, 320 );
setRotateKey( 484,  1,   0 );

setShakeChara( 485, 1, 5,  10);
setShakeChara( 490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485, ct, 30, 10);
setEffRotateKey( 485, ct, -40);
setEffScaleKey( 485, ct, 4.0, 4.0);
setEffScaleKey( 486, ct, 2.0, 2.0);
setEffScaleKey( 487, ct, 2.6, 2.6);
setEffScaleKey( 488, ct, 4.0, 4.0);
setEffScaleKey( 489, ct, 2.6, 2.6);
setEffScaleKey( 490, ct, 3.8, 3.8);
setEffScaleKey( 580, ct, 3.8, 3.8);
setEffAlphaKey( 485, ct, 255);
setEffAlphaKey( 575, ct, 255);
setEffAlphaKey( 585, ct, 0);

playSe( 473, SE_11);
shuchusen = entryEffectLife( 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486);

entryFade( 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580);

end
