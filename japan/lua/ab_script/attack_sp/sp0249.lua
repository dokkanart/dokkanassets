

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
SE_06 = 1043; --発射
SE_07 = 1056; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 103080
SP_02 = 103081
SP_03 = 103082

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

entryFadeBg( 0, 0, 240, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);

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

speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);
playSe( 170, SE_03);
playSe( 190, SE_03);
playSe( 210, SE_03);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  -50);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 1.0, 1.0);

entryFade( 165, 3, 2, 4, 225, 50, 50, 255);     -- white fade
setMoveKey(   170,   0,    0, -54,   0);
setMoveKey(   171,   0,    50, -54,   0);

entryFade( 165+70, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

-- ** エフェクト等 ** --

shuchusen = entryEffectLife( 70, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 70, shuchusen, 1.0, 1.0);

setShakeChara( 70, 0, 170, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(90, ct, 70, 8);
setEffScaleKey(90, ct, 0.7, 0.7);

SP_start2 = 70

setMoveKey(   SP_start2+ 169,   0,    50, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start2+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start2+ 170,   0, 1.0, 1.0);

playSe( SP_start2+ 170, SE_05);
speff = entryEffect( SP_start2+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start2+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start2+ 170+64, 1021);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start2+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start2+  259,    0,      0,  0,   0);
setMoveKey( SP_start2+  260,    0,   -600,  0,   0);
setMoveKey( SP_start2+  261,    0,   -600,  0,   0);
setMoveKey( SP_start2+  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_start2+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( SP_start2+ 260, SE_07);
playSe( SP_start2+ 280, SE_07);
playSe( SP_start2+ 300, SE_07);
playSe( SP_start2+ 320, SE_07);
playSe( SP_start2+ 340, SE_07);
playSe( SP_start2+ 360, SE_07);

spname = entryEffect( SP_start2+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start2+  299,    0,   -100,  0,   0);
setMoveKey( SP_start2+  300,    0,   -100,  0,   0);
setMoveKey( SP_start2+  308,    0,   -1100,  0,   0);

entryFade( SP_start2+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start2+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start2+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start2+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start2+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start2+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start2+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start2+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start2+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start2+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start2+268, ct, 32, 5);
setEffAlphaKey( SP_start2+268, ct, 255);
setEffAlphaKey( SP_start2+290, ct, 255);
setEffAlphaKey( SP_start2+300, ct, 0);
setEffScaleKey( SP_start2+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start2+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start2+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start2+300, ct, 6.0, 6.0);
--playSe( SP_start2+ 400, SE_07);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( SP_start2+ 370, 0, 0);
setDisp( SP_start2+ 370, 1, 1);
changeAnime( SP_start2+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start2+  369,    1,  235,  0,   0);
setMoveKey( SP_start2+  370,    1,  235,  0,   0);
setMoveKey( SP_start2+  371,    1,  235,  0,   0);
setScaleKey( SP_start2+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start2+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start2+  400,    1,   120,  0,   0);
setScaleKey( SP_start2+  400,   1,   1.6,  1.6);

playSe( SP_start2+ 370, SE_06);
playSe( SP_start2+ 390, SE_07);
playSe( SP_start2+ 410, SE_07);
--playSe( SP_start2+ 430, SE_07);

kamehame_beam2 = entryEffect( SP_start2+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start2+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+452-35, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+454-35, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start2+ 452-35, 1, 0);  -- ダメージ振動等

playSe( SP_start2+ 455-35, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start2+ 455-35, 1, 108);
setMoveKey( SP_start2+  455-35, 1,  120,    0,  0);
setMoveKey( SP_start2+  469-35, 1,  400,    0,  0);
setScaleKey( SP_start2+ 455-35, 1,  1.6, 1.6);
setScaleKey( SP_start2+ 458-35, 1,  1.5, 1.5);
setScaleKey( SP_start2+ 468-35, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ 370, 1, 74, 20);

entryFadeBg( SP_start2+ 370, 0, 69, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start2+ 370, 921, 74, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start2+370, ct, 99, 20);
setEffScaleKey( SP_start2+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+370, ct, 70);
setEffAlphaKey( SP_start2+370, ct, 255);
setEffAlphaKey( SP_start2+430-35, ct, 255);
setEffAlphaKey( SP_start2+450-35, ct, 0);

SP_start = -35+SP_start2

entryFade( SP_start+ 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+ 470 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 460; --エンドフェイズのフレーム数を置き換える

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
setDisp( SP_start+ 469, 1, 1);
setMoveKey( SP_start+  469,    1,  100,  0,   0);
setScaleKey( SP_start+ 469,    1,  1.0, 1.0);
setMoveKey( SP_start+  470,    1,    0,   0,   128);
setScaleKey( SP_start+ 470,    1,  0.1, 0.1);

changeAnime( SP_start+ 470, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ 478, SE_10);

setMoveKey( SP_start+  478,   1,    0,   0,   128);
setMoveKey( SP_start+  485,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+  486,   1,  -60,  -200,  -100);
setDamage( SP_start+ 486, 1, 0);  -- ダメージ振動等
setShake( SP_start+477,6,15);
setShake( SP_start+483,15,10);

setRotateKey( SP_start+ 470,  1,  30 );
setRotateKey( SP_start+ 472,  1,  80 );
setRotateKey( SP_start+ 474,  1, 120 );
setRotateKey( SP_start+ 476,  1, 160 );
setRotateKey( SP_start+ 478,  1, 200 );
setRotateKey( SP_start+ 480,  1, 260 );
setRotateKey( SP_start+ 482,  1, 320 );
setRotateKey( SP_start+ 484,  1,   0 );

setShakeChara( SP_start+ 485, 1, 5,  10);
setShakeChara( SP_start+ 490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+485, ct, 30, 10);
setEffRotateKey( SP_start+ 485, ct, -40);
setEffScaleKey( SP_start+ 485, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 486, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ 487, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 488, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 489, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 490, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ 580, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ 485, ct, 255);
setEffAlphaKey( SP_start+ 575, ct, 255);
setEffAlphaKey( SP_start+ 585, ct, 0);

playSe( SP_start+ 473, SE_11);
shuchusen = entryEffectLife( SP_start+ 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+486);

entryFade( SP_start+ 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+580);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
entryFadeBg( 0, 0, 240, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);

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

--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);
playSe( 170, SE_03);
playSe( 190, SE_03);
playSe( 210, SE_03);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  -50);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 1.0, 1.0);

entryFade( 165, 3, 2, 4, 225, 50, 50, 255);     -- white fade
setMoveKey(   170,   0,    0, -54,   0);
setMoveKey(   171,   0,    50, -54,   0);

entryFade( 165+70, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200);     -- white fade

-- ** エフェクト等 ** --

shuchusen = entryEffectLife( 70, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 70, shuchusen, 1.0, 1.0);

setShakeChara( 70, 0, 170, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(90, ct, 70, 8);
setEffScaleKey(90, ct, -0.7, 0.7);

SP_start2 = 70

setMoveKey(   SP_start2+ 169,   0,    50, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start2+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start2+ 170,   0, 1.0, 1.0);

playSe( SP_start2+ 170, SE_05);
speff = entryEffect( SP_start2+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start2+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start2+ 170+64, 1021);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start2+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start2+  259,    0,      0,  0,   0);
setMoveKey( SP_start2+  260,    0,   -600,  0,   0);
setMoveKey( SP_start2+  261,    0,   -600,  0,   0);
setMoveKey( SP_start2+  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_start2+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( SP_start2+ 260, SE_07);
playSe( SP_start2+ 280, SE_07);
playSe( SP_start2+ 300, SE_07);
playSe( SP_start2+ 320, SE_07);
playSe( SP_start2+ 340, SE_07);
playSe( SP_start2+ 360, SE_07);

spname = entryEffect( SP_start2+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start2+  299,    0,   -100,  0,   0);
setMoveKey( SP_start2+  300,    0,   -100,  0,   0);
setMoveKey( SP_start2+  308,    0,   -1100,  0,   0);

entryFade( SP_start2+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start2+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start2+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start2+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start2+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start2+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start2+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start2+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start2+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start2+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start2+268, ct, 32, 5);
setEffAlphaKey( SP_start2+268, ct, 255);
setEffAlphaKey( SP_start2+290, ct, 255);
setEffAlphaKey( SP_start2+300, ct, 0);
setEffScaleKey( SP_start2+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start2+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start2+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start2+300, ct, 6.0, 6.0);
--playSe( SP_start2+ 400, SE_07);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( SP_start2+ 370, 0, 0);
setDisp( SP_start2+ 370, 1, 1);
changeAnime( SP_start2+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start2+  369,    1,  235,  0,   0);
setMoveKey( SP_start2+  370,    1,  235,  0,   0);
setMoveKey( SP_start2+  371,    1,  235,  0,   0);
setScaleKey( SP_start2+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start2+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start2+  400,    1,   120,  0,   0);
setScaleKey( SP_start2+  400,   1,   1.6,  1.6);

playSe( SP_start2+ 370, SE_06);
playSe( SP_start2+ 390, SE_07);
playSe( SP_start2+ 410, SE_07);
--playSe( SP_start2+ 430, SE_07);

kamehame_beam2 = entryEffect( SP_start2+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start2+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+452-35, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+454-35, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start2+ 452-35, 1, 0);  -- ダメージ振動等

playSe( SP_start2+ 455-35, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start2+ 455-35, 1, 108);
setMoveKey( SP_start2+  455-35, 1,  120,    0,  0);
setMoveKey( SP_start2+  469-35, 1,  400,    0,  0);
setScaleKey( SP_start2+ 455-35, 1,  1.6, 1.6);
setScaleKey( SP_start2+ 458-35, 1,  1.5, 1.5);
setScaleKey( SP_start2+ 468-35, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ 370, 1, 74, 20);

entryFadeBg( SP_start2+ 370, 0, 69, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start2+ 370, 921, 74, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start2+370, ct, 99, 20);
setEffScaleKey( SP_start2+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+370, ct, -70);
setEffAlphaKey( SP_start2+370, ct, 255);
setEffAlphaKey( SP_start2+430-35, ct, 255);
setEffAlphaKey( SP_start2+450-35, ct, 0);

SP_start = -35+SP_start2

entryFade( SP_start+ 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+ 470 );


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 460; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

dodge = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ 469, 1, 1);
setMoveKey( SP_start+  469,    1,  100,  0,   0);
setScaleKey( SP_start+ 469,    1,  1.0, 1.0);
setMoveKey( SP_start+  470,    1,    0,   0,   128);
setScaleKey( SP_start+ 470,    1,  0.1, 0.1);

changeAnime( SP_start+ 470, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ 478, SE_10);

setMoveKey( SP_start+  478,   1,    0,   0,   128);
setMoveKey( SP_start+  485,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+  486,   1,  -60,  -200,  -100);
setDamage( SP_start+ 486, 1, 0);  -- ダメージ振動等
setShake( SP_start+477,6,15);
setShake( SP_start+483,15,10);

setRotateKey( SP_start+ 470,  1,  30 );
setRotateKey( SP_start+ 472,  1,  80 );
setRotateKey( SP_start+ 474,  1, 120 );
setRotateKey( SP_start+ 476,  1, 160 );
setRotateKey( SP_start+ 478,  1, 200 );
setRotateKey( SP_start+ 480,  1, 260 );
setRotateKey( SP_start+ 482,  1, 320 );
setRotateKey( SP_start+ 484,  1,   0 );

setShakeChara( SP_start+ 485, 1, 5,  10);
setShakeChara( SP_start+ 490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+485, ct, 30, 10);
setEffRotateKey( SP_start+ 485, ct, -40);
setEffScaleKey( SP_start+ 485, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 486, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ 487, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 488, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 489, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 490, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ 580, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ 485, ct, 255);
setEffAlphaKey( SP_start+ 575, ct, 255);
setEffAlphaKey( SP_start+ 585, ct, 0);

playSe( SP_start+ 473, SE_11);
shuchusen = entryEffectLife( SP_start+ 473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+486);

entryFade( SP_start+ 570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+580);
end
