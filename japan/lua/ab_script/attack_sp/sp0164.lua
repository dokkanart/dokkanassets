print ("[lua]sp0034");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;


SP_01 = 109047
SP_02 = 109048
SP_03 = 109049

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



multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start = -60;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景


--気を貯める
playSe( 0, SE_01);


-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   341, 170, 0x40+0x80,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 49, 5);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300,  -90,  -140);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand, 1.0, 1.0);

entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
setMoveKey(   170,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -600,  0,   0);
setMoveKey( SP_start+  261,    0,   -600,  0,   0);
setMoveKey( SP_start+  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  -370);   -- 伸びるかめはめ波

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start+  299,    0,   -100,  0,   0);
setMoveKey( SP_start+  300,    0,   -100,  0,   0);
setMoveKey( SP_start+  308,    0,   -1100,  0,   0);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  0,   0);
setMoveKey( SP_start+  370,    1,  235,  0,   0);
setMoveKey( SP_start+  371,    1,  235,  0,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   -155,  0,   0);
setScaleKey( SP_start+  400,   1,   1.8,  1.8);

playSe( SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+453-55, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+455-55, kamehame_beam2, 2.0, 2.0);
setDamage( SP_start+ 452-55, 1, 0);  -- ダメージ振動等
setEffShake( SP_start+370, kamehame_beam2, 99, 30);


setEffMoveKey( SP_start+  380,    kamehame_beam2,   0,  0);

setEffMoveKey( SP_start+  399,    kamehame_beam2,   0,  0);
setEffMoveKey( SP_start+  425,    kamehame_beam2,   1250,  0);


playSe( SP_start+ 455-50, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455-50, 1, 108);
setMoveKey( SP_start+  455-50, 1,  -155,    0,  0);
setMoveKey( SP_start+  469-50, 1,  1600,    0,  0);
setScaleKey( SP_start+ 455-50, 1,  1.8, 1.8);
setScaleKey( SP_start+ 458-50, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468-50, 1,  0.2, 0.2);


-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 53, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, 70);
setEffAlphaKey( SP_start+370, ct, 255);
--setEffAlphaKey( SP_start+430, ct, 255);
setEffAlphaKey( SP_start+450-50, ct, 0);

entryFade( SP_start+ 462-45-7, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 450-25-7, 1, 0);
removeAllEffect( SP_start+450-25-7);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 331; --エンドフェイズのフレーム数を置き換える

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
setMoveKey( SP_start+  469-30-7,    1,  100,  0,   0);
setScaleKey( SP_start+ 469-30-7,    1,  1.0, 1.0);
setMoveKey( SP_start+  470-30-7,    1,    0,   0,   128);
setScaleKey( SP_start+ 470-30-7,    1,  0.1, 0.1);

changeAnime( SP_start+ 470-30-7, 1, 107);                         -- 手前ダメージ
setDisp( SP_start+ 469-30-7, 1, 1);

entryEffect( SP_start+ 478-35-7, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ 478-35-7, SE_10);

setMoveKey( SP_start+  478-42,   1,    0,   0,   128);
setMoveKey( SP_start+  485-42,   1,  -60,  -200,  -100);

setDamage( SP_start+ 486-42, 1, 0);  -- ダメージ振動等
setShake( SP_start+477-42,6,15);
setShake( SP_start+483-42,15,10);

setRotateKey( SP_start+ 470-42,  1,  30 );
setRotateKey( SP_start+ 472-42,  1,  80 );
setRotateKey( SP_start+ 474-42,  1, 120 );
setRotateKey( SP_start+ 476-42,  1, 160 );
setRotateKey( SP_start+ 478-42,  1, 200 );
setRotateKey( SP_start+ 480-42,  1, 260 );
setRotateKey( SP_start+ 482-42,  1, 320 );
setRotateKey( SP_start+ 484-42,  1,   0 );

setShakeChara( SP_start+ 485-42, 1, 5,  10);
setShakeChara( SP_start+ 490-42, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 485-42, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+485-42, ct, 30, 10);
setEffRotateKey( SP_start+ 485-42, ct, -40);
setEffScaleKey( SP_start+ 485-42, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 486-42, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ 487-42, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 488-42, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 489-42, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 490-42, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ 580-42, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ 485-42, ct, 255);
setEffAlphaKey( SP_start+ 575-42, ct, 255);
setEffAlphaKey( SP_start+ 585-42, ct, 0);

playSe( SP_start+ 473-42, SE_11);
shuchusen = entryEffectLife( SP_start+ 473-42, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ 473-42, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+486-42);

entryFade( SP_start+ 570-42, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+580-42);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景


--気を貯める
playSe( 0, SE_01);


-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   341, 170, 0x40+0x80,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 49, 5);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300,  -90,  -140);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand, 1.0, 1.0);

entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** エフェクト等 ** --


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
setMoveKey(   170,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -600,  0,   0);
setMoveKey( SP_start+  261,    0,   -600,  0,   0);
setMoveKey( SP_start+  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  -370);   -- 伸びるかめはめ波

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start+  299,    0,   -100,  0,   0);
setMoveKey( SP_start+  300,    0,   -100,  0,   0);
setMoveKey( SP_start+  308,    0,   -1100,  0,   0);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  0,   0);
setMoveKey( SP_start+  370,    1,  235,  0,   0);
setMoveKey( SP_start+  371,    1,  235,  0,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   -155,  0,   0);
setScaleKey( SP_start+  400,   1,   1.8,  1.8);

playSe( SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+453-55, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+455-55, kamehame_beam2, 2.0, 2.0);
setDamage( SP_start+ 452-55, 1, 0);  -- ダメージ振動等
setEffShake( SP_start+370, kamehame_beam2, 99, 30);


setEffMoveKey( SP_start+  380,    kamehame_beam2,   0,  0);

setEffMoveKey( SP_start+  399,    kamehame_beam2,   0,  0);
setEffMoveKey( SP_start+  425,    kamehame_beam2,   1250,  0);


playSe( SP_start+ 455-50, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455-50, 1, 108);
setMoveKey( SP_start+  455-50, 1,  -155,    0,  0);
setMoveKey( SP_start+  469-50, 1,  1600,    0,  0);
setScaleKey( SP_start+ 455-50, 1,  1.8, 1.8);
setScaleKey( SP_start+ 458-50, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468-50, 1,  0.2, 0.2);


-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 53, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, -70);
setEffAlphaKey( SP_start+370, ct, 255);
--setEffAlphaKey( SP_start+430, ct, 255);
setEffAlphaKey( SP_start+450-50, ct, 0);

entryFade( SP_start+ 462-45-7, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 450-25-7, 1, 0);
removeAllEffect( SP_start+450-25-7);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 331; --エンドフェイズのフレーム数を置き換える

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
setMoveKey( SP_start+  469-30-7,    1,  100,  0,   0);
setScaleKey( SP_start+ 469-30-7,    1,  1.0, 1.0);
setMoveKey( SP_start+  470-30-7,    1,    0,   0,   128);
setScaleKey( SP_start+ 470-30-7,    1,  0.1, 0.1);

changeAnime( SP_start+ 470-30-7, 1, 107);                         -- 手前ダメージ
setDisp( SP_start+ 469-30-7, 1, 1);

entryEffect( SP_start+ 478-35-7, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ 478-35-7, SE_10);

setMoveKey( SP_start+  478-42,   1,    0,   0,   128);
setMoveKey( SP_start+  485-42,   1,  -60,  -200,  -100);

setDamage( SP_start+ 486-42, 1, 0);  -- ダメージ振動等
setShake( SP_start+477-42,6,15);
setShake( SP_start+483-42,15,10);

setRotateKey( SP_start+ 470-42,  1,  30 );
setRotateKey( SP_start+ 472-42,  1,  80 );
setRotateKey( SP_start+ 474-42,  1, 120 );
setRotateKey( SP_start+ 476-42,  1, 160 );
setRotateKey( SP_start+ 478-42,  1, 200 );
setRotateKey( SP_start+ 480-42,  1, 260 );
setRotateKey( SP_start+ 482-42,  1, 320 );
setRotateKey( SP_start+ 484-42,  1,   0 );

setShakeChara( SP_start+ 485-42, 1, 5,  10);
setShakeChara( SP_start+ 490-42, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 485-42, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+485-42, ct, 30, 10);
setEffRotateKey( SP_start+ 485-42, ct, -40);
setEffScaleKey( SP_start+ 485-42, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 486-42, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ 487-42, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 488-42, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 489-42, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 490-42, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ 580-42, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ 485-42, ct, 255);
setEffAlphaKey( SP_start+ 575-42, ct, 255);
setEffAlphaKey( SP_start+ 585-42, ct, 0);

playSe( SP_start+ 473-42, SE_11);
shuchusen = entryEffectLife( SP_start+ 473-42, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ 473-42, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+486-42);

entryFade( SP_start+ 570-42, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+580-42);

end
