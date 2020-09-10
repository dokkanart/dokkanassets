

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
SE_13 = 1030;

parX = 27;

--SP_01 = 100186;
SP_02 = 108011;
SP_03 = 108017;
SP_04 = 108012; --ムズムズ
SP_05 = 108013; --「はっ...」のテキスト文字
SP_06 = 108014; --「はっ...」の吹き出し
SP_07 = 108015; --「へっくしょい！」のテキスト文字
SP_08 = 108016; --「へっくしょい！」の吹き出し


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
changeAnime( 70, 0, 0);                       -- 溜め!
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
setMoveKey(  300,    0,   -250,  0,   0);  --マシンガン止まる
setMoveKey(  310,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 40, 0x40,  0,  0,  100,  90);   -- 伸びるかめはめ波

playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 書き文字エントリー
ct1 = entryEffectLife( 310, SP_04, 55, 0, -1, 0, -130, 350); -- ムズムズ・・
setEffRotateKey( 310, ct1, -20);
setEffShake(310, ct1, 32, 5);
setEffAlphaKey(310, ct1, 0);
setEffAlphaKey(320, ct1, 255);
setEffAlphaKey(365, ct1, 0);
setEffScaleKey(310, ct1, 0.0, 0.0);
setEffScaleKey(314, ct1, 1.3, 1.3);
setEffScaleKey(334, ct1, 1.3, 1.3);
setEffScaleKey(360, ct1, 6.0, 6.0);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 259, 0, 60, 15);

shuchusen = entryEffectLife( 310, 906, 55, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 310, shuchusen, 1.0, 1.0);
setEffScaleKey( 320, shuchusen, 1.0, 1.0);
setEffScaleKey( 365, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 260, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(260, ct, 32, 5);
setEffAlphaKey(260, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(260, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);


playSe( 260, SE_13);
playSe( 260+3, SE_13);
playSe( 260+6, SE_13);
playSe( 260+9, SE_13);
playSe( 260+12, SE_13);
playSe( 260+15, SE_13);
playSe( 260+18, SE_13);
playSe( 260+21, SE_13);
playSe( 260+24, SE_13);
playSe( 260+27, SE_13);
playSe( 260+30, SE_13);
playSe( 260+33, SE_13);
playSe( 260+36, SE_13);
playSe( 260+39, SE_13);

setScaleKey( 365,  1,  1.0, 1.0);

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

kamehame_beam2 = entryEffectLife( 370, SP_03, 40,  0x80, -1,  0,  0,  0);   -- 迫るかめはめ波

-- 敵吹っ飛ぶモーション
--changeAnime( 455-parX, 1, 108);
--entryEffectLife( 455-parX, 10016, 10, 0, 0, 0, 60, 90); -- ズドドッ
--setMoveKey(  455-parX, 1,  120,    0,  0);
--setMoveKey(  469-parX, 1,  400,    0,  0);
--setScaleKey( 455-parX, 1,  1.6, 1.6);
--setScaleKey( 458-parX, 1,  1.5, 1.5);
--setScaleKey( 468-parX, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 40, 20);

entryFadeBg( 370, 0, 215, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 370, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 40, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 10);
setEffAlphaKey(370, ct, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 375; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+4,    0,   -100,  0,   0);
setMoveKey(  SP_dodge+5,    0,   -1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( 370, SE_09);

playSe( 370, SE_13);
playSe( 370+3, SE_13);
playSe( 370+6, SE_13);
playSe( 370+9, SE_13);
playSe( 370+12, SE_13);
playSe( 370+15, SE_13);
playSe( 370+18, SE_13);
playSe( 370+21, SE_13);
playSe( 370+24, SE_13);
playSe( 370+27, SE_13);
playSe( 370+30, SE_13);
playSe( 370+33, SE_13);
playSe( 370+36, SE_13);
playSe( 370+39, SE_13);

setEffAlphaKey(380, ct, 255);
setEffAlphaKey(410, ct, 0);

--setEffScaleKey(370, kamehame_beam2, 1, 1);
--setEffScaleKey(452-parX, kamehame_beam2, 1, 1);
--setEffScaleKey(454-parX, kamehame_beam2, 2.5, 2.5);
setDamage( 410, 1, 0);  -- ダメージ振動等
changeAnime( 410, 1, 108);                        -- ダメージ
setMoveKey(  410, 1,  120,    0,  0);
setMoveKey(  424, 1,  400,    0,  0);
setScaleKey( 410, 1,  1.6, 1.6);
setScaleKey( 413, 1,  1.5, 1.5);
setScaleKey( 423, 1,  0.2, 0.2);
setDisp( 425, 1, 0);

-- ダメージ表示
dealDamage(410);

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);


-- 書き文字エントリー
ctaa = entryEffectLife( 420, SP_06, 40, 0, -1, 0, -350, 150); -- はっ　吹き出し　１回目
--setEffShake(420, ctaa, 50, 20);
setEffMoveKey(470, ctaa, -50, 150);
setEffScaleKey( 420, ctaa, 1, 1);
setEffRotateKey(420, ctaa, 10);
setEffAlphaKey(420, ctaa, 0);
setEffAlphaKey(440, ctaa, 255);
setEffAlphaKey(460, ctaa, 0);

-- 書き文字エントリー
cta = entryEffectLife( 420, SP_05, 40, 0, -1, 0, -350, 150); -- はっ　テキスト文字　１回目
--setEffShake(420, cta, 50, 20);
setEffMoveKey(470, cta, -50, 150);
setEffScaleKey( 420, cta, 1, 1);
setEffRotateKey(420, cta, 10);
setEffAlphaKey(420, cta, 0);
setEffAlphaKey(440, cta, 255);
setEffAlphaKey(460, cta, 0);

-- 書き文字エントリー
ctbb = entryEffectLife( 480, SP_06, 40, 0, -1, 0, -300, -255); -- はっ　吹き出し　２回目
--setEffShake(480, ctbb, 50, 20);
setEffMoveKey(530, ctbb, 0, -255);
setEffScaleKey( 480, ctbb, 1, 1);
setEffRotateKey(480, ctbb, 10);
setEffAlphaKey(480, ctbb, 0);
setEffAlphaKey(490, ctbb, 255);
setEffAlphaKey(530, ctbb, 0);

-- 書き文字エントリー
ctb = entryEffectLife( 480, SP_05, 40, 0, -1, 0, -300, -255); -- はっ　テキスト文字２回目
--setEffShake(480, ctb, 50, 20);
setEffMoveKey(530, ctb, 0, -255);
setEffScaleKey( 480, ctb, 1, 1);
setEffRotateKey(480, ctb, 10);
setEffAlphaKey(480, ctb, 0);
setEffAlphaKey(490, ctb, 255);
setEffAlphaKey(530, ctb, 0);

-- 書き文字エントリー
--ctc = entryEffectLife( 550, SP_08, 30, 0, -1, 0, 0, 0); -- へっくしょい！　吹き出し
--setEffShake(550, ctc, 100, 90);
--setEffScaleKey( 550, ctc, 0.8, 0.8);
--setEffRotateKey(550, ctc, 10);
--setEffAlphaKey(550, ctc, 255);
--setEffAlphaKey(570, ctc, 255);
--setEffAlphaKey(580, ctc, 100);

-- 書き文字エントリー
ctc = entryEffectLife( 550, SP_07, 30, 0, -1, 0, 0, 0); -- へっくしょい！　テキスト文字
setEffShake(550, ctc, 100, 20);
setEffScaleKey( 550, ctc, 1, 1);
setEffRotateKey(550, ctc, 10);
setEffAlphaKey(550, ctc, 255);
setEffAlphaKey(570, ctc, 255);
setEffAlphaKey(580, ctc, 100);

entryFade( 580, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey(  588,   1,   1.6,  1.6);
setMoveKey(  588,    1,   120,  0,   0);

removeAllEffect(589);


------------------------------------------------------
-- 青髪ランチさん登場
------------------------------------------------------

setDisp( 589, 1, 0);
setDisp( 589, 0, 1);
setScaleKey(  589,  0,  2, 2);
setScaleKey(  675,  0,  2, 2);
--setScaleKey(  687,   0,  1, 1);
changeAnime( 588, 0, 30);
setMoveKey(  587,  0,  -20,  -65,   0);
--setMoveKey(  687,  0,  0,  0,   0);

--setScaleKey(  695,   0,  1.7, 1.7);
--setScaleKey(  750,   0,  1.5, 1.5);

entryEffectLife( 617, 906, 50, 0, -1, 0, 0, 0); 

entryFade( 667, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(677);

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
changeAnime( 70, 0, 0);                       -- 溜め!
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
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  258,   0,    0, -54,   0);
setMoveKey(  259,   0,    0, -54,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  300,    0,   -250,  0,   0);  --マシンガン止まる
setMoveKey(  310,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 40, 0x40,  0,  0,  100,  90);   -- 伸びるかめはめ波

playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 書き文字エントリー
ct1 = entryEffectLife( 310, SP_04, 55, 0, -1, 0, -130, 350); -- ムズムズ・・
setEffRotateKey( 310, ct1, -20);
setEffShake(310, ct1, 32, 5);
setEffAlphaKey(310, ct1, 0);
setEffAlphaKey(320, ct1, 255);
setEffAlphaKey(365, ct1, 0);
if (_IS_PLAYER_SIDE_ == 0) then
setEffScaleKey(310, ct1, 0.0, 0.0);
setEffScaleKey(314, ct1, -1.3, 1.3);
setEffScaleKey(334, ct1, -1.3, 1.3);
setEffScaleKey(360, ct1, -6.0, 6.0);
else
setEffScaleKey(310, ct1, 0.0, 0.0);
setEffScaleKey(314, ct1, 1.3, 1.3);
setEffScaleKey(334, ct1, 1.3, 1.3);
setEffScaleKey(360, ct1, 6.0, 6.0);
end

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 259, 0, 60, 15);

shuchusen = entryEffectLife( 310, 906, 55, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 310, shuchusen, 1.0, 1.0);
setEffScaleKey( 320, shuchusen, 1.0, 1.0);
setEffScaleKey( 365, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 260, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(260, ct, 32, 5);
setEffAlphaKey(260, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(260, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);


playSe( 260, SE_13);
playSe( 260+3, SE_13);
playSe( 260+6, SE_13);
playSe( 260+9, SE_13);
playSe( 260+12, SE_13);
playSe( 260+15, SE_13);
playSe( 260+18, SE_13);
playSe( 260+21, SE_13);
playSe( 260+24, SE_13);
playSe( 260+27, SE_13);
playSe( 260+30, SE_13);
playSe( 260+33, SE_13);
playSe( 260+36, SE_13);
playSe( 260+39, SE_13);

setScaleKey( 365,  1,  1.0, 1.0);

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

--playSe( 390, 1043);

kamehame_beam2 = entryEffectLife( 370, SP_03, 40,  0x80, -1,  0,  0,  0);   -- 迫るかめはめ波


setShakeChara( 370, 1, 40, 20);

entryFadeBg( 370, 0, 215, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 370, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 40, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 40, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 10);
setEffAlphaKey(370, ct, 255);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 375; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+4,    0,   -100,  0,   0);
setMoveKey(  SP_dodge+5,    0,   -1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( 370, SE_09);

playSe( 370, SE_13);
playSe( 370+3, SE_13);

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   1.6,  1.6);



--setEffScaleKey(370, kamehame_beam2, 1, 1);
--setEffScaleKey(452-parX, kamehame_beam2, 1, 1);
--setEffScaleKey(454-parX, kamehame_beam2, 2.5, 2.5);
setDamage( 410, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage(410);
changeAnime( 410, 1, 108);                        -- ダメージ
setMoveKey(  410, 1,  120,    0,  0);
setMoveKey(  424, 1,  400,    0,  0);
setScaleKey( 410, 1,  1.6, 1.6);
setScaleKey( 413, 1,  1.5, 1.5);
setScaleKey( 423, 1,  0.2, 0.2);
setDisp( 425, 1, 0);

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

-- 敵吹っ飛ぶモーション
--changeAnime( 455-parX, 1, 108);
--entryEffectLife( 455-parX, 10016, 10, 0, 0, 0, 60, 90); -- ズドドッ
--setMoveKey(  455-parX, 1,  120,    0,  0);
--setMoveKey(  469-parX, 1,  400,    0,  0);
--setScaleKey( 455-parX, 1,  1.6, 1.6);
--setScaleKey( 458-parX, 1,  1.5, 1.5);
--setScaleKey( 468-parX, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setEffAlphaKey(380, ct, 255);
setEffAlphaKey(410, ct, 0);

-- 書き文字エントリー
ctaa = entryEffectLife( 420, SP_06, 40, 0, -1, 0, -350, 150); -- はっ　吹き出し　１回目
--setEffShake(420, ctaa, 50, 20);
setEffMoveKey(470, ctaa, -50, 150);
setEffScaleKey( 420, ctaa, 1, 1);
setEffRotateKey(420, ctaa, 10);
setEffAlphaKey(420, ctaa, 0);
setEffAlphaKey(440, ctaa, 255);
setEffAlphaKey(460, ctaa, 0);

-- 書き文字エントリー
cta = entryEffectLife( 420, SP_05, 40, 0, -1, 0, -350, 150); -- はっ　テキスト文字　１回目
--setEffShake(420, cta, 50, 20);
setEffMoveKey(470, cta, -50, 150);
if (_IS_PLAYER_SIDE_ == 0) then
setEffScaleKey( 420, cta, -1, 1);
else
setEffScaleKey( 420, cta, 1, 1);
end
setEffRotateKey(420, cta, 10);
setEffAlphaKey(420, cta, 0);
setEffAlphaKey(440, cta, 255);
setEffAlphaKey(460, cta, 0);

-- 書き文字エントリー
ctbb = entryEffectLife( 480, SP_06, 40, 0, -1, 0, -300, -255); -- はっ　吹き出し　２回目
--setEffShake(480, ctbb, 50, 20);
setEffMoveKey(530, ctbb, 0, -255);
setEffScaleKey( 480, ctbb, 1, 1);
setEffRotateKey(480, ctbb, 10);
setEffAlphaKey(480, ctbb, 0);
setEffAlphaKey(490, ctbb, 255);
setEffAlphaKey(530, ctbb, 0);

-- 書き文字エントリー
ctb = entryEffectLife( 480, SP_05, 40, 0, -1, 0, -300, -255); -- はっ　テキスト文字２回目
--setEffShake(480, ctb, 50, 20);
setEffMoveKey(530, ctb, 0, -255);
if (_IS_PLAYER_SIDE_ == 0) then
setEffScaleKey( 480, ctb, -1, 1);
else
setEffScaleKey( 480, ctb, 1, 1);
end
setEffRotateKey(480, ctb, 10);
setEffAlphaKey(480, ctb, 0);
setEffAlphaKey(490, ctb, 255);
setEffAlphaKey(530, ctb, 0);

-- 書き文字エントリー
--ctc = entryEffectLife( 550, SP_08, 30, 0, -1, 0, 0, 0); -- へっくしょい！　吹き出し
--setEffShake(550, ctc, 100, 90);
--setEffScaleKey( 550, ctc, 0.8, 0.8);
--setEffRotateKey(550, ctc, 10);
--setEffAlphaKey(550, ctc, 255);
--setEffAlphaKey(570, ctc, 255);
--setEffAlphaKey(580, ctc, 100);

-- 書き文字エントリー
ctc = entryEffectLife( 550, SP_07, 30, 0, -1, 0, 0, 0); -- へっくしょい！　テキスト文字
setEffShake(550, ctc, 100, 20);
if (_IS_PLAYER_SIDE_ == 0) then
setEffScaleKey( 550, ctc, -1, 1);
else
setEffScaleKey( 550, ctc, 1, 1);
end
setEffRotateKey(550, ctc, 10);
setEffAlphaKey(550, ctc, 255);
setEffAlphaKey(570, ctc, 255);
setEffAlphaKey(580, ctc, 100);

playSe( 370+6, SE_13);
playSe( 370+9, SE_13);
playSe( 370+12, SE_13);
playSe( 370+15, SE_13);
playSe( 370+18, SE_13);
playSe( 370+21, SE_13);
playSe( 370+24, SE_13);
playSe( 370+27, SE_13);
playSe( 370+30, SE_13);
playSe( 370+33, SE_13);
playSe( 370+36, SE_13);
playSe( 370+39, SE_13);

entryFade( 580, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey(  588,   1,   1.6,  1.6);
setMoveKey(  588,    1,   0,  0,   0);

removeAllEffect(589);


------------------------------------------------------
-- 青髪ランチさん登場
------------------------------------------------------

setDisp( 589, 1, 0);
setDisp( 589, 0, 1);
setScaleKey(  589,  0,  2, 2);
setScaleKey(  675,  0,  2, 2);
--setScaleKey(  687,   0,  1, 1);
changeAnime( 588, 0, 30);
setMoveKey(  587,  0,  -20,  -65,   0);
--setMoveKey(  687,  0,  0,  0,   0);

--setScaleKey(  695,   0,  1.7, 1.7);
--setScaleKey(  750,   0,  1.5, 1.5);

entryEffectLife( 617, 906, 50, 0, -1, 0, 0, 0); 

entryFade( 667, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(677);

end

