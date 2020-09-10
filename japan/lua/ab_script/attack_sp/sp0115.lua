

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

SP_01 = 100195;
SP_02 = 100196;
SP_03 = 100197;

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

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
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

setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  300,    0,   -100,  0,   0);
setMoveKey(  308,    0,   -1100,  0,   0);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 305, 0, 54, 50);

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

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   1.6,  1.6);

playSe( 390, SE_06);

kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

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

entryFadeBg( 370, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


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
--キャラ位置
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);


entryFade( 0, 2, 4, 8, 254, 157, 18, 100);     -- white fade
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_ATK_0, 0);
changeAnime( SP_ATK_0, 0, 30);                       -- 溜め!
playSe( SP_ATK_0, SE_01);


entryEffect( SP_ATK_0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_ATK_0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

kame_hand = entryEffect( SP_ATK_0, SP_01, 0x40+0x80, 0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_ATK_0, kame_hand, 0.5, 0.5);

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_ATK_0,   311, 100, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( SP_ATK_0, aura, 1.5, 1.5);
setShakeChara( SP_ATK_0+40, 0, 49, 5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff = entryEffect(  SP_ATK_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_ATK_1+22, SE_12);

spname = entryEffect( SP_ATK_1+10, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( SP_ATK_1, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 90);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (SP_ATK_1+10), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+22), 1, fcolor_r, fcolor_g, fcolor_b, 100);

--entryFlash( (SP_ATK_1+36), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffAlphaKey( (SP_ATK_1+36), speff, 255);
setEffAlphaKey( (SP_ATK_1+64), speff, 0);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
removeAllEffect( SP_ATK_2 );

changeAnime( SP_ATK_2, 0, 31); 
setScaleKey( SP_ATK_2-1,   0, 1.5, 1.5);
setScaleKey( SP_ATK_2,   0, 1.0, 1.0);

setMoveKey(  SP_ATK_2+5,    0,      0,  0,   0);
setMoveKey(  SP_ATK_2+10,   0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_ATK_2+1, SP_02, 90, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波


playSe(SP_ATK_2+1, SE_07);

--spname = entryEffect( SP_ATK_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  SP_ATK_2+21,    0,   -100,  0,   0);
setMoveKey(  SP_ATK_2+22,    0,   -100,  0,   0);
setMoveKey(  SP_ATK_2+33,    0,   -1100,  0,   0);

setMoveKey(  SP_ATK_2+75,    0,   -1100,  0,   0);
--setMoveKey(  SP_ATK_2+80,    0,   -900,  0,   -50);

entryFade( SP_ATK_2+5, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_ATK_2, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_ATK_2, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_ATK_2+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_ATK_2, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_ATK_2+5, 0, 54, 50);

shuchusen = entryEffectLife( SP_ATK_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_ATK_2, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_ATK_2+46, shuchusen, 2.0, 2.0);

--entryFlash( (SP_ATK_2+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_2+90), 1, fcolor_r, fcolor_g, fcolor_b, 255);
playSe( SP_ATK_2+90, SE_06);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_ATK_2+8, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+8, ct, 255);
setEffAlphaKey(SP_ATK_2+30, ct, 255);
setEffAlphaKey(SP_ATK_2+40, ct, 0);
setEffScaleKey(SP_ATK_2+8, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+12, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+32, ct, 1.3, 1.3);
setEffScaleKey(SP_ATK_2+40, ct, 6.0, 6.0);


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
kamehame_beam3 = entryEffect( SP_ATK_3, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_ATK_3, kamehame_beam3, 1, 1);
setEffScaleKey(SP_ATK_3+28, kamehame_beam3, 1, 1);
setEffScaleKey(SP_ATK_3+31, kamehame_beam3, 3, 3);
setDamage( SP_ATK_3+28, 1, 0);  -- ダメージ振動等
playSe( SP_ATK_3, SE_08);

--end

setDisp( SP_ATK_3, 0, 0);
setDisp( SP_ATK_3, 1, 1);
changeAnime( SP_ATK_3, 1, 104);                        -- ガード

setMoveKey(  SP_ATK_3-1,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3,    1,  235,  0,   0);
setMoveKey(  SP_ATK_3+1,    1,  235,  0,   0);
setScaleKey( SP_ATK_3-1,    1,  0.7, 0.7);
setScaleKey( SP_ATK_3,    1,  0.7, 0.7);

setMoveKey(  SP_ATK_3+15,    1,   120,  0,   0);
setScaleKey( SP_ATK_3+15,   1,   1.6,  1.6);

entryFadeBg( SP_ATK_3, 0, 34, 4, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_ATK_3, 921, 34, 0x80,  -1,  0,  0,  0); -- 流線斜め

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 185; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

playSe( SP_ATK_3+12, SE_01);


-- 敵吹っ飛ぶモーション
changeAnime( SP_ATK_3+27+5, 1, 108);
setMoveKey(  SP_ATK_3+27+5, 1,  120,    0,  0);
--entryFlash( (SP_ATK_3+25), 2, 0, 0, 0, 200);
setMoveKey(  SP_ATK_3+38, 1,  200,    0,  128);
setScaleKey( SP_ATK_3+27+5, 1,  1.6, 1.6);
setScaleKey( SP_ATK_3+27+5, 1,  1, 1);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_3+20+5, 1, 99, 20);


--entryFlash( (SP_ATK_3+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_3+15), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (SP_ATK_3+28), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_3, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK_3, ct, 99, 20);
setEffScaleKey( SP_ATK_3, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK_3, ct, -70);
setEffAlphaKey(SP_ATK_3, ct, 255);
setEffAlphaKey(SP_ATK_3+20+5, ct, 255);
setEffAlphaKey(SP_ATK_3+25+5, ct, 0);

--エフェクト消滅
setEffAlphaKey( (SP_ATK_3), kamehame_beam3,255);
setEffAlphaKey( (SP_ATK_3+28), kamehame_beam3,255);
--entryFlash( (SP_ATK_3+28), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setEffAlphaKey( (SP_ATK_3+34), kamehame_beam3,0);

entryFade( SP_ATK_3+27, 10,  3, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( SP_ATK_3+27, SE_09);


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4, 1, 1);
setMoveKey(  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_ATK_4,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setShake(SP_ATK_4+10,6,15);
setShake(SP_ATK_4+17,15,9);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+14, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+15);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+120);

end
