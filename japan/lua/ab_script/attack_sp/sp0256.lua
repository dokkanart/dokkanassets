

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = 247;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1016; --発射
SE_07 = 1017; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

parX = 27;

SP_01 = 108039;
SP_02 = 108040;
SP_03 = 108041;

SP_01e = 108042;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 2, 2);
SP_start =-69

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryFadeBg( SP_start+ 40, 30, 109, 10, 0, 0, 0, 255);       -- ベース暗め　背景
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start+ 69, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( SP_start+ 70, kame_hand, 0.5, 0.5);

--entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

spep =-20
setMoveKey(   spep+ SP_start+ 169,   0,    0, 0,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep+ SP_start+ 169,   0, 2, 2);
setScaleKey( spep+ SP_start+ 170,   0, 1.0, 1.0);

playSe( spep+ SP_start+ 170, SE_05);
speff = entryEffect( spep+ SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
--playSe( spep+ SP_start+ 265, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
--changeAnime( spep+ SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( spep+ SP_start+  259,    0,      0,  0,   0);
setMoveKey( spep+ SP_start+  260,    0,   -600,  0,   0);
setMoveKey( spep+ SP_start+  261,    0,   -600,  0,   0);
setMoveKey( spep+ SP_start+  270,    0,   100,  0,   0);

kamehame_beam = entryEffectLife( spep+ SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep+ SP_start+ 265, 1003);

spname = entryEffect( spep+  SP_start+ 257, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( spep+ SP_start+  299,    0,   100,  0,   0);
setMoveKey( spep+ SP_start+  300,    0,   100,  0,   0);
--setMoveKey( spep+ SP_start+  308,    0,   -1100,  0,   0);

entryFade( spep+ SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep+ SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep+ SP_start+ 260, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep+ SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep+ SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

--setShakeChara( spep+ SP_start+ 305, 0, 54, 50);
setEffShake( spep+ SP_start+305, kamehame_beam, 54, 50);

shuchusen = entryEffectLife( spep+ SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep+ SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( spep+ SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( spep+ SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep+ SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep+ SP_start+268, ct, 32, 5);
setEffAlphaKey( spep+ SP_start+268, ct, 255);
setEffAlphaKey( spep+ SP_start+290, ct, 255);
setEffAlphaKey( spep+ SP_start+300, ct, 0);
setEffScaleKey( spep+ SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( spep+ SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( spep+ SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( spep+ SP_start+300, ct, 6.0, 6.0);
playSe( spep+ SP_start+ 310, 1053);--1019
--playSe( spep+ SP_start+ 330, 1019);--1019

setMoveKey( spep+ SP_start+ 370-2,    0,   100,  0,   0);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
playSe( spep+ SP_start+ 370, 1053);--1019

setDisp( spep+ SP_start+ 370, 0, 0);
setDisp( 290, 0, 0);
setDisp( spep+ SP_start+ 370, 1, 1);
changeAnime( spep+ SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( spep+ SP_start+  369,    1,  235,  0,   0);
setMoveKey( spep+ SP_start+  370,    1,  235,  0,   0);
setMoveKey( spep+ SP_start+  371,    1,  235,  0,   0);
setScaleKey( spep+ SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( spep+ SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( spep+ SP_start+ 370,    0,   -1100,  0,   0);
setMoveKey( 295,    0,   -1100,  0,   0);

setMoveKey( spep+ SP_start+  400,    1,   120,  0,   0);
setScaleKey( spep+ SP_start+  400,   1,   1.6,  1.6);

--playSe( spep+ SP_start+ 390, 1043);

kamehame_beam2 = entryEffect( spep+ SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
--[[
setEffScaleKey( spep+ SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( spep+ SP_start+452-parX, kamehame_beam2, 1, 1);
setEffScaleKey( spep+ SP_start+454-parX, kamehame_beam2, 2.5, 2.5);
--]]

setDamage( spep+ SP_start+ 452-parX, 1, 0);  -- ダメージ振動等

playSe( spep+ SP_start+ 455-parX, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep+ SP_start+ 455-parX, 1, 108);
entryEffectLife( spep+ SP_start+ 455-parX, 10016, 10, 0, 0, 0, 60, 90); -- ズドドッ
setMoveKey( spep+ SP_start+  455-parX, 1,  120,    0,  0);
setMoveKey( spep+ SP_start+  469-parX, 1,  400,    0,  0);
setScaleKey( spep+ SP_start+ 455-parX, 1,  1.6, 1.6);
setScaleKey( spep+ SP_start+ 458-parX, 1,  1.5, 1.5);
setScaleKey( spep+ SP_start+ 468-parX, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep+ SP_start+ 370, 1, 99, 20);

entryFadeBg( spep+ SP_start+ 370, 0, 99-parX, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep+ SP_start+ 370, 921, 99-parX, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep+ SP_start+ 370, 10014, 99-parX, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep+ SP_start+370, ct, 99, 20);
setEffScaleKey( spep+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( spep+ SP_start+370, ct, 10);
setEffAlphaKey( spep+ SP_start+370, ct, 255);
setEffAlphaKey( spep+ SP_start+430-parX, ct, 255);
setEffAlphaKey( spep+ SP_start+450-parX, ct, 0);

entryFade( spep+ SP_start+ 462-parX, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( 292, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 295; --エンドフェイズのフレーム数を置き換える

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
setDisp( spep+ SP_start+ 469-parX, 1, 1);
setMoveKey( spep+ SP_start+  469-parX,    1,  100,  0,   0);
setScaleKey( spep+ SP_start+ 469-parX,    1,  1.0, 1.0);
setMoveKey( spep+ SP_start+  470-parX,    1,    0,   0,   128);
setScaleKey( spep+ SP_start+ 470-parX,    1,  0.1, 0.1);

changeAnime( spep+ SP_start+ 470-parX, 1, 107);                         -- 手前ダメージ
entryEffect( spep+ SP_start+ 478-parX, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep+ SP_start+ 478-parX, SE_10);

setMoveKey( spep+ SP_start+  478-parX,   1,    0,   0,   128);
setMoveKey( spep+ SP_start+  485-parX,   1,  -60,  -200,  -100);
--setMoveKey( spep+ SP_start+  486-parX,   1,  -60,  -200,  -100);
setDamage( spep+ SP_start+ 486-parX, 1, 0);  -- ダメージ振動等
setShake( spep+ SP_start+477-parX,6,15);
setShake( spep+ SP_start+483-parX,15,10);

setRotateKey( spep+ SP_start+ 470-parX,  1,  30 );
setRotateKey( spep+ SP_start+ 472-parX,  1,  80 );
setRotateKey( spep+ SP_start+ 474-parX,  1, 120 );
setRotateKey( spep+ SP_start+ 476-parX,  1, 160 );
setRotateKey( spep+ SP_start+ 478-parX,  1, 200 );
setRotateKey( spep+ SP_start+ 480-parX,  1, 260 );
setRotateKey( spep+ SP_start+ 482-parX,  1, 320 );
setRotateKey( spep+ SP_start+ 484-parX,  1,   0 );

setShakeChara( spep+ SP_start+ 485-parX, 1, 5,  10);
setShakeChara( spep+ SP_start+ 490-parX, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep+ SP_start+ 485-parX, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep+ SP_start+485-parX, ct, 30, 10);
setEffRotateKey( spep+ SP_start+ 485-parX, ct, -40);
setEffScaleKey( spep+ SP_start+ 485-parX, ct, 4.0, 4.0);
setEffScaleKey( spep+ SP_start+ 486-parX, ct, 2.0, 2.0);
setEffScaleKey( spep+ SP_start+ 487-parX, ct, 2.6, 2.6);
setEffScaleKey( spep+ SP_start+ 488-parX, ct, 4.0, 4.0);
setEffScaleKey( spep+ SP_start+ 489-parX, ct, 2.6, 2.6);
setEffScaleKey( spep+ SP_start+ 490-parX, ct, 3.8, 3.8);
setEffScaleKey( spep+ SP_start+ 580-parX, ct, 3.8, 3.8);
setEffAlphaKey( spep+ SP_start+ 485-parX, ct, 255);
setEffAlphaKey( spep+ SP_start+ 575-parX, ct, 255);
setEffAlphaKey( spep+ SP_start+ 585-parX, ct, 0);

playSe( spep+ SP_start+ 473-parX, SE_11);
shuchusen = entryEffectLife( spep+ SP_start+ 473-parX, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep+ SP_start+ 473-parX, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep+ SP_start+486-parX);

entryFade( spep+ SP_start+ 570-parX, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep+ SP_start+580-parX);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryFadeBg( SP_start+ 40, 30, 109, 10, 0, 0, 0, 255);       -- ベース暗め　背景
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start+ 69, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( SP_start+ 70, kame_hand, 0.5, 0.5);

--entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

spep =-20
setMoveKey(   spep+ SP_start+ 169,   0,    0, 0,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep+ SP_start+ 169,   0, 2, 2);
setScaleKey( spep+ SP_start+ 170,   0, 1.0, 1.0);

playSe( spep+ SP_start+ 170, SE_05);
speff = entryEffect( spep+ SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
--playSe( spep+ SP_start+ 265, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
--changeAnime( spep+ SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( spep+ SP_start+  259,    0,      0,  0,   0);
setMoveKey( spep+ SP_start+  260,    0,   -600,  0,   0);
setMoveKey( spep+ SP_start+  261,    0,   -600,  0,   0);
setMoveKey( spep+ SP_start+  270,    0,   100,  0,   0);

kamehame_beam = entryEffectLife( spep+ SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep+ SP_start+ 265, 1003);

spname = entryEffect( spep+  SP_start+ 257, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( spep+ SP_start+  299,    0,   100,  0,   0);
setMoveKey( spep+ SP_start+  300,    0,   100,  0,   0);
--setMoveKey( spep+ SP_start+  308,    0,   -1100,  0,   0);

entryFade( spep+ SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( spep+ SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( spep+ SP_start+ 260, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
entryFadeBg( spep+ SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( spep+ SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

--setShakeChara( spep+ SP_start+ 305, 0, 54, 50);
setEffShake( spep+ SP_start+305, kamehame_beam, 54, 50);

shuchusen = entryEffectLife( spep+ SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep+ SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( spep+ SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( spep+ SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep+ SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep+ SP_start+268, ct, 32, 5);
setEffAlphaKey( spep+ SP_start+268, ct, 255);
setEffAlphaKey( spep+ SP_start+290, ct, 255);
setEffAlphaKey( spep+ SP_start+300, ct, 0);
setEffScaleKey( spep+ SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( spep+ SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( spep+ SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( spep+ SP_start+300, ct, 6.0, 6.0);
playSe( spep+ SP_start+ 310, 1053);--1019
--playSe( spep+ SP_start+ 330, 1019);--1019

setMoveKey( spep+ SP_start+ 370-2,    0,   100,  0,   0);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
playSe( spep+ SP_start+ 370, 1053);--1019

setDisp( spep+ SP_start+ 370, 0, 0);
setDisp( 290, 0, 0);
setDisp( spep+ SP_start+ 370, 1, 1);
changeAnime( spep+ SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( spep+ SP_start+  369,    1,  235,  0,   0);
setMoveKey( spep+ SP_start+  370,    1,  235,  0,   0);
setMoveKey( spep+ SP_start+  371,    1,  235,  0,   0);
setScaleKey( spep+ SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( spep+ SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( spep+ SP_start+ 370,    0,   -1100,  0,   0);
setMoveKey( 295,    0,   -1100,  0,   0);

setMoveKey( spep+ SP_start+  400,    1,   120,  0,   0);
setScaleKey( spep+ SP_start+  400,   1,   1.6,  1.6);

--playSe( spep+ SP_start+ 390, 1043);

kamehame_beam2 = entryEffect( spep+ SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
--[[
setEffScaleKey( spep+ SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( spep+ SP_start+452-parX, kamehame_beam2, 1, 1);
setEffScaleKey( spep+ SP_start+454-parX, kamehame_beam2, 2.5, 2.5);
--]]

setDamage( spep+ SP_start+ 452-parX, 1, 0);  -- ダメージ振動等

playSe( spep+ SP_start+ 455-parX, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep+ SP_start+ 455-parX, 1, 108);
entryEffectLife( spep+ SP_start+ 455-parX, 10016, 10, 0, 0, 0, 60, 90); -- ズドドッ
setMoveKey( spep+ SP_start+  455-parX, 1,  120,    0,  0);
setMoveKey( spep+ SP_start+  469-parX, 1,  400,    0,  0);
setScaleKey( spep+ SP_start+ 455-parX, 1,  1.6, 1.6);
setScaleKey( spep+ SP_start+ 458-parX, 1,  1.5, 1.5);
setScaleKey( spep+ SP_start+ 468-parX, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep+ SP_start+ 370, 1, 99, 20);

entryFadeBg( spep+ SP_start+ 370, 0, 99-parX, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep+ SP_start+ 370, 921, 99-parX, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep+ SP_start+ 370, 10014, 99-parX, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( spep+ SP_start+370, ct, 99, 20);
setEffScaleKey( spep+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( spep+ SP_start+370, ct, 10);
setEffAlphaKey( spep+ SP_start+370, ct, 255);
setEffAlphaKey( spep+ SP_start+430-parX, ct, 255);
setEffAlphaKey( spep+ SP_start+450-parX, ct, 0);

entryFade( spep+ SP_start+ 462-parX, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( 292, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 295; --エンドフェイズのフレーム数を置き換える

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
setDisp( spep+ SP_start+ 469-parX, 1, 1);
setMoveKey( spep+ SP_start+  469-parX,    1,  100,  0,   0);
setScaleKey( spep+ SP_start+ 469-parX,    1,  1.0, 1.0);
setMoveKey( spep+ SP_start+  470-parX,    1,    0,   0,   128);
setScaleKey( spep+ SP_start+ 470-parX,    1,  0.1, 0.1);

changeAnime( spep+ SP_start+ 470-parX, 1, 107);                         -- 手前ダメージ
entryEffect( spep+ SP_start+ 478-parX, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep+ SP_start+ 478-parX, SE_10);

setMoveKey( spep+ SP_start+  478-parX,   1,    0,   0,   128);
setMoveKey( spep+ SP_start+  485-parX,   1,  -60,  -200,  -100);
--setMoveKey( spep+ SP_start+  486-parX,   1,  -60,  -200,  -100);
setDamage( spep+ SP_start+ 486-parX, 1, 0);  -- ダメージ振動等
setShake( spep+ SP_start+477-parX,6,15);
setShake( spep+ SP_start+483-parX,15,10);

setRotateKey( spep+ SP_start+ 470-parX,  1,  30 );
setRotateKey( spep+ SP_start+ 472-parX,  1,  80 );
setRotateKey( spep+ SP_start+ 474-parX,  1, 120 );
setRotateKey( spep+ SP_start+ 476-parX,  1, 160 );
setRotateKey( spep+ SP_start+ 478-parX,  1, 200 );
setRotateKey( spep+ SP_start+ 480-parX,  1, 260 );
setRotateKey( spep+ SP_start+ 482-parX,  1, 320 );
setRotateKey( spep+ SP_start+ 484-parX,  1,   0 );

setShakeChara( spep+ SP_start+ 485-parX, 1, 5,  10);
setShakeChara( spep+ SP_start+ 490-parX, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep+ SP_start+ 485-parX, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep+ SP_start+485-parX, ct, 30, 10);
setEffRotateKey( spep+ SP_start+ 485-parX, ct, -40);
setEffScaleKey( spep+ SP_start+ 485-parX, ct, 4.0, 4.0);
setEffScaleKey( spep+ SP_start+ 486-parX, ct, 2.0, 2.0);
setEffScaleKey( spep+ SP_start+ 487-parX, ct, 2.6, 2.6);
setEffScaleKey( spep+ SP_start+ 488-parX, ct, 4.0, 4.0);
setEffScaleKey( spep+ SP_start+ 489-parX, ct, 2.6, 2.6);
setEffScaleKey( spep+ SP_start+ 490-parX, ct, 3.8, 3.8);
setEffScaleKey( spep+ SP_start+ 580-parX, ct, 3.8, 3.8);
setEffAlphaKey( spep+ SP_start+ 485-parX, ct, 255);
setEffAlphaKey( spep+ SP_start+ 575-parX, ct, 255);
setEffAlphaKey( spep+ SP_start+ 585-parX, ct, 0);

playSe( spep+ SP_start+ 473-parX, SE_11);
shuchusen = entryEffectLife( spep+ SP_start+ 473-parX, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep+ SP_start+ 473-parX, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep+ SP_start+486-parX);

entryFade( spep+ SP_start+ 570-parX, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep+ SP_start+580-parX);
end

