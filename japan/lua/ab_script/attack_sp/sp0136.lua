

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = 247;

SE_01 = 1035; --気を貯める
SE_02 = 17; --気が広がる
SE_03 = 19; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 09; --発射
SE_07 = 08; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1006; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;
SE_13 = 1028;

parX = 27;

--SP_01 = 100186;
SP_02 = 108007;
SP_03 = 108008;


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
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

--setQuake(30,39,15);

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

--entryFadeBg( 40, 30, 109, 10, 0, 0, 0, 255);       -- ベース暗め　背景
entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

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


--entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

setMoveKey(  258,   0,    0, -54,   0);
setMoveKey(  259,   0,    0, -54,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  -80,  -50);   -- 伸びるかめはめ波

playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  349,    0,   -100,  0,   0);
setMoveKey(  350,    0,   -100,  0,   0);
setMoveKey(  360,    0,   -1100,  0,   0);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 259, 0, 60, 15);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

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
for cnt = 0, 174, 10 do
playSe( 260+cnt, SE_13);
end


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

--playSe( 390, 1043);

kamehame_beam2 = entryEffectLife( 370, SP_03, 70,  0, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(370, kamehame_beam2, 1, 1);
--setEffScaleKey(452-parX, kamehame_beam2, 1, 1);
--setEffScaleKey(454-parX, kamehame_beam2, 2.5, 2.5);
setDamage( 452-parX, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( 455-parX, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 455-parX, 1, 108);
entryEffectLife( 455-parX, 10016, 10, 0, 0, 0, 60, 90); -- ズドドッ
setMoveKey(  455-parX, 1,  120,    0,  0);
setMoveKey(  469-parX, 1,  400,    0,  0);
setScaleKey( 455-parX, 1,  1.6, 1.6);
setScaleKey( 458-parX, 1,  1.5, 1.5);
setScaleKey( 468-parX, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99-parX, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99-parX, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99-parX, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 10);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430-parX, ct, 255);
setEffAlphaKey(450-parX, ct, 0);

entryFade( 462-parX, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------
setDisp( 469-parX, 1, 1);
setMoveKey(  469-parX,    1,  100,  0,   0);
setScaleKey( 469-parX,    1,  1.0, 1.0);
setMoveKey(  470-parX,    1,    0,   0,   128);
setScaleKey( 470-parX,    1,  0.1, 0.1);

changeAnime( 470-parX, 1, 107);                         -- 手前ダメージ
entryEffect( 478-parX, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478-parX, SE_10);

setMoveKey(  478-parX,   1,    0,   0,   128);
setMoveKey(  485-parX,   1,  -60,  -200,  -100);
--setMoveKey(  486-parX,   1,  -60,  -200,  -100);
setDamage( 486-parX, 1, 0);  -- ダメージ振動等
setShake(477-parX,6,15);
setShake(483-parX,15,10);

setRotateKey( 470-parX,  1,  30 );
setRotateKey( 472-parX,  1,  80 );
setRotateKey( 474-parX,  1, 120 );
setRotateKey( 476-parX,  1, 160 );
setRotateKey( 478-parX,  1, 200 );
setRotateKey( 480-parX,  1, 260 );
setRotateKey( 482-parX,  1, 320 );
setRotateKey( 484-parX,  1,   0 );

setShakeChara( 485-parX, 1, 5,  10);
setShakeChara( 490-parX, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485-parX, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485-parX, ct, 30, 10);
setEffRotateKey( 485-parX, ct, -40);
setEffScaleKey( 485-parX, ct, 4.0, 4.0);
setEffScaleKey( 486-parX, ct, 2.0, 2.0);
setEffScaleKey( 487-parX, ct, 2.6, 2.6);
setEffScaleKey( 488-parX, ct, 4.0, 4.0);
setEffScaleKey( 489-parX, ct, 2.6, 2.6);
setEffScaleKey( 490-parX, ct, 3.8, 3.8);
setEffScaleKey( 580-parX, ct, 3.8, 3.8);
setEffAlphaKey( 485-parX, ct, 255);
setEffAlphaKey( 575-parX, ct, 255);
setEffAlphaKey( 585-parX, ct, 0);

playSe( 473-parX, SE_11);
shuchusen = entryEffectLife( 473-parX, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473-parX, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486-parX);

entryFade( 570-parX, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580-parX);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);


entryFade( 0, 2, 4, 8, 254, 157, 18, 100);     -- white fade
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

--setQuake(30,39,15);

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

--entryFadeBg( 40, 30, 109, 10, 0, 0, 0, 255);       -- ベース暗め　背景
entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

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


--entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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
removeAllEffect( 260 );

changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  258,   0,    0, -54,   0);
setMoveKey(  259,   0,    0, -54,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  -75,  0);   -- 伸びるかめはめ波

playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  349,    0,   -100,  0,   0);
setMoveKey(  350,    0,   -100,  0,   0);
setMoveKey(  360,    0,   -1100,  0,   0);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 259, 0, 60, 15);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

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
for cnt = 0, 174, 10 do
playSe( 260+cnt, SE_13);
end

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

--playSe( 390, 1043);

kamehame_beam2 = entryEffectLife( 370, SP_03, 70,  0, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(370, kamehame_beam2, 1, 1);
--setEffScaleKey(452-parX, kamehame_beam2, 1, 1);
--setEffScaleKey(454-parX, kamehame_beam2, 2.5, 2.5);
setDamage( 452-parX, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( 455-parX, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 455-parX, 1, 108);
entryEffectLife( 455-parX, 10016, 10, 0, 0, 0, 60, 90); -- ズドドッ
setMoveKey(  455-parX, 1,  120,    0,  0);
setMoveKey(  469-parX, 1,  400,    0,  0);
setScaleKey( 455-parX, 1,  1.6, 1.6);
setScaleKey( 458-parX, 1,  1.5, 1.5);
setScaleKey( 468-parX, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99-parX, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99-parX, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99-parX, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 10);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430-parX, ct, 255);
setEffAlphaKey(450-parX, ct, 0);

entryFade( 462-parX, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------
setDisp( 469-parX, 1, 1);
setMoveKey(  469-parX,    1,  100,  0,   0);
setScaleKey( 469-parX,    1,  1.0, 1.0);
setMoveKey(  470-parX,    1,    0,   0,   128);
setScaleKey( 470-parX,    1,  0.1, 0.1);

changeAnime( 470-parX, 1, 107);                         -- 手前ダメージ
entryEffect( 478-parX, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 478-parX, SE_10);

setMoveKey(  478-parX,   1,    0,   0,   128);
setMoveKey(  485-parX,   1,  -60,  -200,  -100);
--setMoveKey(  486-parX,   1,  -60,  -200,  -100);
setDamage( 486-parX, 1, 0);  -- ダメージ振動等
setShake(477-parX,6,15);
setShake(483-parX,15,10);

setRotateKey( 470-parX,  1,  30 );
setRotateKey( 472-parX,  1,  80 );
setRotateKey( 474-parX,  1, 120 );
setRotateKey( 476-parX,  1, 160 );
setRotateKey( 478-parX,  1, 200 );
setRotateKey( 480-parX,  1, 260 );
setRotateKey( 482-parX,  1, 320 );
setRotateKey( 484-parX,  1,   0 );

setShakeChara( 485-parX, 1, 5,  10);
setShakeChara( 490-parX, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 485-parX, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(485-parX, ct, 30, 10);
setEffRotateKey( 485-parX, ct, -40);
setEffScaleKey( 485-parX, ct, 4.0, 4.0);
setEffScaleKey( 486-parX, ct, 2.0, 2.0);
setEffScaleKey( 487-parX, ct, 2.6, 2.6);
setEffScaleKey( 488-parX, ct, 4.0, 4.0);
setEffScaleKey( 489-parX, ct, 2.6, 2.6);
setEffScaleKey( 490-parX, ct, 3.8, 3.8);
setEffScaleKey( 580-parX, ct, 3.8, 3.8);
setEffAlphaKey( 485-parX, ct, 255);
setEffAlphaKey( 575-parX, ct, 255);
setEffAlphaKey( 585-parX, ct, 0);

playSe( 473-parX, SE_11);
shuchusen = entryEffectLife( 473-parX, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 473-parX, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(486-parX);

entryFade( 570-parX, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(580-parX);

end

