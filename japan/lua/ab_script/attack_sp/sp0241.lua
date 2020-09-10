

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

SP_01 = 100303;
SP_02 = 100304;
SP_03 = 100305;


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start = -69;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

--entryFadeBg( 0, 0, 170, 0,10, 10, 10, 150);          -- ベース暗め　背景

setVisibleUI(SP_start+69, 0);
changeAnime(SP_start+ 70, 0, 17);                       -- 溜め!
playSe(SP_start+ 73, SE_03);

entryEffect(SP_start+  69,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(SP_start+  69,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(SP_start+ 70, SE_04);

--kame_hand = entryEffect(SP_start+ 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey(SP_start+ 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(SP_start+  70,   311, 99, 0x40+0x100,  0,  1,  0,  -50); -- オーラ
setEffScaleKey(SP_start+ 30, aura, 1.5, 1.5);
setShakeChara(SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_start+90, ct, 40, 8);
setEffScaleKey(SP_start+90, ct, 1.4, 1.4);

setMoveKey(   SP_start+ 159,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey(SP_start+ 159,   0, 1.5, 1.5);
setScaleKey(SP_start+ 160,   0, 1.0, 1.0);

playSe(SP_start+ 160, SE_05);
speff = entryEffect(SP_start+  160,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade(SP_start+ 245, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe(SP_start+ 160+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp(SP_start+ 325, 0, 0);
changeAnime(SP_start+ 250, 0, 30);                                    -- かめはめ発射ポーズ
kame_hand = entryEffect(SP_start+ 250, SP_01, 0x40,      0,  300,  200,  140);
setEffScaleKey(SP_start+ 250, kame_hand, 2.0, 2.0);
changeAnime(SP_start+ 280, 0, 31); 
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(SP_start+  200,    0,     -50,  0,   0);
setMoveKey(SP_start+  279,    0,     -50,  0,   0);
setMoveKey(SP_start+  290,    0,     -50,  0,   0);
setMoveKey(SP_start+  300,    0,   -80,  0,   20);


kamehame_beam = entryEffect(SP_start+ 280, SP_02, 0x40,  0,  300,  200,  140);   -- 伸びるかめはめ波
playSe(SP_start+ 280, SE_07);

--spname = entryEffect(SP_start+ 280, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(SP_start+  320,    0,   -350,  0,   50);
setMoveKey(SP_start+  325,    0,   -750,  0,   80);

setEffMoveKey(SP_start+300, kamehame_beam , 300, 140);
setEffMoveKey(SP_start+305, kamehame_beam , 260, 80); --251
--setEffMoveKey(SP_start+324, kamehame_beam , 50, 50); --253


--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade(SP_start+ 385, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(SP_start+389);

-- ** エフェクト等 ** --
entryFadeBg(SP_start+ 250, 0, 139, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(SP_start+ 250, 0, 70, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(SP_start+ 290, 0, 32, 8, 10,10, 10, 150);     -- 青い　背景

sen2 = entryEffectLife(SP_start+ 260, 921, 139, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_start+250, sen2, 190);
setEffScaleKey(SP_start+ 250, sen2, 1.25, 1.25);

setShakeChara(SP_start+ 325, 0, 54, 50);

shuchusen = entryEffectLife(SP_start+ 250, 906, 79, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(SP_start+ 250, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 290, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 299, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 288, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_start+288, ct, 32, 5);
setEffAlphaKey(SP_start+288, ct, 255);
setEffAlphaKey(SP_start+310, ct, 255);
setEffAlphaKey(SP_start+320, ct, 0);
setEffScaleKey(SP_start+288, ct, 0.0, 0.0);
setEffScaleKey(SP_start+292, ct, 1.3, 1.3);
setEffScaleKey(SP_start+302, ct, 1.3, 1.3);
setEffScaleKey(SP_start+320, ct, 6.0, 6.0);
playSe(SP_start+ 320, SE_07);
entryFade(SP_start+ 375, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp(SP_start+ 390, 0, 0);
setDisp(SP_start+ 390, 1, 1);
changeAnime(SP_start+ 390, 1, 104);                        -- ガード
setMoveKey(SP_start+  390,    1,  235,  0,   0);
setMoveKey(SP_start+  390,    1,  235,  0,   0);
setMoveKey(SP_start+  391,    1,  235,  0,   0);
setScaleKey(SP_start+ 389,    1,  0.7, 0.7);
setScaleKey(SP_start+ 390,    1,  0.7, 0.7);

setMoveKey(SP_start+  420,    1,   120,  0,   0);
setScaleKey(SP_start+  420,   1,   1.6,  1.6);

playSe(SP_start+ 400, SE_06);

kamehame_beam2 = entryEffect(SP_start+390, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_start+390, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+472, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+474, kamehame_beam2, 2.5, 2.5);
setDamage(SP_start+ 472, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe(SP_start+ 475, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime(SP_start+ 475, 1, 108);
setMoveKey(SP_start+  475, 1,  120,    0,  0);
setMoveKey(SP_start+  489, 1,  400,    0,  0);
setScaleKey(SP_start+ 475, 1,  1.6, 1.6);
setScaleKey(SP_start+ 478, 1,  1.5, 1.5);
setScaleKey(SP_start+ 488, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara(SP_start+ 390, 1, 99, 20);

entryFadeBg(SP_start+ 390, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

entryEffectLife(SP_start+ 390, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 390, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_start+390, ct, 99, 20);
setEffScaleKey(SP_start+ 390, ct, 2.4, 2.4);
setEffRotateKey(SP_start+390, ct, 70);
setEffAlphaKey(SP_start+390, ct, 255);
setEffAlphaKey(SP_start+450, ct, 255);
setEffAlphaKey(SP_start+470, ct, 0);

entryFade(SP_start+ 472, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 335; --エンドフェイズのフレーム数を置き換える

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
spep_5 = 489;

setDisp(SP_start+ spep_5-1, 0, 0);
setMoveKey(SP_start+  spep_5-1,    1,  100,  0,   0);
setScaleKey(SP_start+ spep_5-1,    1,  1, 1);
setMoveKey(SP_start+  spep_5,    1,    0,   0,   128);
setScaleKey(SP_start+ spep_5,    1,  0.1, 0.1);

changeAnime(SP_start+ spep_5, 1, 107);                         -- 手前ダメージ
setDisp(SP_start+ spep_5, 1, 1);

entryEffect(SP_start+ spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe(SP_start+ spep_5+8, SE_10);

setMoveKey(SP_start+  spep_5+8,   1,    0,   0,   128);
setMoveKey(SP_start+  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(SP_start+  spep_5+16,   1,  -60,  -200,  -100);
setDamage(SP_start+ spep_5+16, 1, 0);  -- ダメージ振動等
setShake(SP_start+spep_5+7,6,15);
setShake(SP_start+spep_5+13,15,10);

setRotateKey(SP_start+ spep_5,  1,  30 );
setRotateKey(SP_start+ spep_5+2,  1,  80 );
setRotateKey(SP_start+ spep_5+4,  1, 120 );
setRotateKey(SP_start+ spep_5+6,  1, 160 );
setRotateKey(SP_start+ spep_5+8,  1, 200 );
setRotateKey(SP_start+ spep_5+10,  1, 260 );
setRotateKey(SP_start+ spep_5+12,  1, 320 );
setRotateKey(SP_start+ spep_5+14,  1,   0 );

setShakeChara(SP_start+ spep_5+15, 1, 5,  10);
setShakeChara(SP_start+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_start+ spep_5+15, ct, 30, 10);
setEffRotateKey(SP_start+ spep_5+15, ct, -40);
setEffScaleKey(SP_start+ spep_5+15, ct, 4.0, 4.0);
setEffScaleKey(SP_start+ spep_5+16, ct, 2.0, 2.0);
setEffScaleKey(SP_start+ spep_5+17, ct, 2.6, 2.6);
setEffScaleKey(SP_start+ spep_5+18, ct, 4.0, 4.0);
setEffScaleKey(SP_start+ spep_5+19, ct, 2.6, 2.6);
setEffScaleKey(SP_start+ spep_5+20, ct, 3.8, 3.8);
setEffScaleKey(SP_start+ spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey(SP_start+ spep_5+15, ct, 255);
setEffAlphaKey(SP_start+ spep_5+105, ct, 255);
setEffAlphaKey(SP_start+ spep_5+115, ct, 0);

playSe(SP_start+ spep_5+13, SE_11);
shuchusen = entryEffectLife(SP_start+ spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect(SP_start+ spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_start+spep_5+16);


entryFade(SP_start+spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_start+spep_5+110);
else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

--entryFadeBg( 0, 0, 170, 0,10, 10, 10, 150);          -- ベース暗め　背景

setVisibleUI(SP_start+69, 0);
changeAnime(SP_start+ 70, 0, 17);                       -- 溜め!
playSe(SP_start+ 73, SE_03);

entryEffect(SP_start+  69,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(SP_start+  69,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--speff = entryEffect(SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(SP_start+ 70, SE_04);

--kame_hand = entryEffect(SP_start+ 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey(SP_start+ 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(SP_start+  70,   311, 99, 0x40+0x100,  0,  1,  0,  -50); -- オーラ
setEffScaleKey(SP_start+ 30, aura, 1.5, 1.5);
setShakeChara(SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_start+90, ct, 40, 8);
setEffScaleKey(SP_start+90, ct, 1.4, 1.4);

setMoveKey(   SP_start+ 159,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey(SP_start+ 159,   0, 1.5, 1.5);
setScaleKey(SP_start+ 160,   0, 1.0, 1.0);

playSe(SP_start+ 160, SE_05);
speff = entryEffect(SP_start+  160,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade(SP_start+ 245, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe(SP_start+ 160+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp(SP_start+ 325, 0, 0);
changeAnime(SP_start+ 250, 0, 30);                                    -- かめはめ発射ポーズ
kame_hand = entryEffect(SP_start+ 250, SP_01, 0x40,      0,  300,  200,  140);
setEffScaleKey(SP_start+ 250, kame_hand, 2.0, 2.0);
changeAnime(SP_start+ 280, 0, 31); 
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(SP_start+  200,    0,     -50,  0,   0);
setMoveKey(SP_start+  279,    0,     -50,  0,   0);
setMoveKey(SP_start+  290,    0,     -50,  0,   0);
setMoveKey(SP_start+  300,    0,   -80,  0,   20);


kamehame_beam = entryEffect(SP_start+ 280, SP_02, 0x40,  0,  300,  200,  140);   -- 伸びるかめはめ波
playSe(SP_start+ 280, SE_07);

--spname = entryEffect(SP_start+ 280, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(SP_start+  320,    0,   -350,  0,   50);
setMoveKey(SP_start+  325,    0,   -750,  0,   80);

setEffMoveKey(SP_start+300, kamehame_beam , 300, 140);
setEffMoveKey(SP_start+305, kamehame_beam , 260, 80); --251
--setEffMoveKey(SP_start+324, kamehame_beam , 50, 50); --253


--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade(SP_start+ 385, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(SP_start+389);

-- ** エフェクト等 ** --
entryFadeBg(SP_start+ 250, 0, 139, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(SP_start+ 250, 0, 70, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(SP_start+ 290, 0, 32, 8, 10,10, 10, 150);     -- 青い　背景

sen2 = entryEffectLife(SP_start+ 260, 921, 139, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_start+250, sen2, 190);
setEffScaleKey(SP_start+ 250, sen2, 1.25, 1.25);

setShakeChara(SP_start+ 325, 0, 54, 50);

shuchusen = entryEffectLife(SP_start+ 250, 906, 79, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(SP_start+ 250, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 290, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 299, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 288, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_start+288, ct, 32, 5);
setEffAlphaKey(SP_start+288, ct, 255);
setEffAlphaKey(SP_start+310, ct, 255);
setEffAlphaKey(SP_start+320, ct, 0);
setEffScaleKey(SP_start+288, ct, 0.0, 0.0);
setEffScaleKey(SP_start+292, ct, 1.3, 1.3);
setEffScaleKey(SP_start+302, ct, 1.3, 1.3);
setEffScaleKey(SP_start+320, ct, 6.0, 6.0);
playSe(SP_start+ 320, SE_07);
entryFade(SP_start+ 375, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp(SP_start+ 390, 0, 0);
setDisp(SP_start+ 390, 1, 1);
changeAnime(SP_start+ 390, 1, 104);                        -- ガード
setMoveKey(SP_start+  390,    1,  235,  0,   0);
setMoveKey(SP_start+  390,    1,  235,  0,   0);
setMoveKey(SP_start+  391,    1,  235,  0,   0);
setScaleKey(SP_start+ 389,    1,  0.7, 0.7);
setScaleKey(SP_start+ 390,    1,  0.7, 0.7);

setMoveKey(SP_start+  420,    1,   120,  0,   0);
setScaleKey(SP_start+  420,   1,   1.6,  1.6);

playSe(SP_start+ 400, SE_06);

kamehame_beam2 = entryEffect(SP_start+390, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_start+390, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+472, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+474, kamehame_beam2, 2.5, 2.5);
setDamage(SP_start+ 472, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe(SP_start+ 475, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime(SP_start+ 475, 1, 108);
setMoveKey(SP_start+  475, 1,  120,    0,  0);
setMoveKey(SP_start+  489, 1,  400,    0,  0);
setScaleKey(SP_start+ 475, 1,  1.6, 1.6);
setScaleKey(SP_start+ 478, 1,  1.5, 1.5);
setScaleKey(SP_start+ 488, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara(SP_start+ 390, 1, 99, 20);

entryFadeBg(SP_start+ 390, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

entryEffectLife(SP_start+ 390, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 390, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_start+390, ct, 99, 20);
setEffScaleKey(SP_start+ 390, ct, 2.4, 2.4);
setEffRotateKey(SP_start+390, ct, -70);
setEffAlphaKey(SP_start+390, ct, 255);
setEffAlphaKey(SP_start+450, ct, 255);
setEffAlphaKey(SP_start+470, ct, 0);

entryFade(SP_start+ 472, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 335; --エンドフェイズのフレーム数を置き換える

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
spep_5 = 489;

setDisp(SP_start+ spep_5-1, 0, 0);
setMoveKey(SP_start+  spep_5-1,    1,  100,  0,   0);
setScaleKey(SP_start+ spep_5-1,    1,  1, 1);
setMoveKey(SP_start+  spep_5,    1,    0,   0,   128);
setScaleKey(SP_start+ spep_5,    1,  0.1, 0.1);

changeAnime(SP_start+ spep_5, 1, 107);                         -- 手前ダメージ
setDisp(SP_start+ spep_5, 1, 1);

entryEffect(SP_start+ spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe(SP_start+ spep_5+8, SE_10);

setMoveKey(SP_start+  spep_5+8,   1,    0,   0,   128);
setMoveKey(SP_start+  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(SP_start+  spep_5+16,   1,  -60,  -200,  -100);
setDamage(SP_start+ spep_5+16, 1, 0);  -- ダメージ振動等
setShake(SP_start+spep_5+7,6,15);
setShake(SP_start+spep_5+13,15,10);

setRotateKey(SP_start+ spep_5,  1,  30 );
setRotateKey(SP_start+ spep_5+2,  1,  80 );
setRotateKey(SP_start+ spep_5+4,  1, 120 );
setRotateKey(SP_start+ spep_5+6,  1, 160 );
setRotateKey(SP_start+ spep_5+8,  1, 200 );
setRotateKey(SP_start+ spep_5+10,  1, 260 );
setRotateKey(SP_start+ spep_5+12,  1, 320 );
setRotateKey(SP_start+ spep_5+14,  1,   0 );

setShakeChara(SP_start+ spep_5+15, 1, 5,  10);
setShakeChara(SP_start+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_start+ spep_5+15, ct, 30, 10);
setEffRotateKey(SP_start+ spep_5+15, ct, -40);
setEffScaleKey(SP_start+ spep_5+15, ct, 4.0, 4.0);
setEffScaleKey(SP_start+ spep_5+16, ct, 2.0, 2.0);
setEffScaleKey(SP_start+ spep_5+17, ct, 2.6, 2.6);
setEffScaleKey(SP_start+ spep_5+18, ct, 4.0, 4.0);
setEffScaleKey(SP_start+ spep_5+19, ct, 2.6, 2.6);
setEffScaleKey(SP_start+ spep_5+20, ct, 3.8, 3.8);
setEffScaleKey(SP_start+ spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey(SP_start+ spep_5+15, ct, 255);
setEffAlphaKey(SP_start+ spep_5+105, ct, 255);
setEffAlphaKey(SP_start+ spep_5+115, ct, 0);

playSe(SP_start+ spep_5+13, SE_11);
shuchusen = entryEffectLife(SP_start+ spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect(SP_start+ spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_start+spep_5+16);


entryFade(SP_start+spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_start+spep_5+120);
end