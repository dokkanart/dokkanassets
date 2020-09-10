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

SP_01 = 100300;
SP_02 = 100301;
SP_03 = 100302;


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

entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_start+69, 0);
changeAnime(SP_start+ 70, 0, 30);                       -- 溜め!
playSe(SP_start+ 73, SE_03);

--entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(SP_start+ 80, SE_04);

kame_hand = entryEffect(SP_start+ 70, SP_01, 0x40,      0,  300,  -15,  120);   -- 手のカメハメ波部
setEffScaleKey(SP_start+ 70, kame_hand, 0.5, 0.5);

entryFade(SP_start+165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( SP_start+70, 0, 100, 10);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+90, 10008, 68, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_start+90, ct, 40, 8);
setEffScaleKey(SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey(SP_start+ 169,   0, 1.5, 1.5);
setScaleKey(SP_start+ 170,   0, 1.0, 1.0);

playSe(SP_start+ 170, SE_05);
speff = entryEffect(SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade(SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe(SP_start+ 170+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp(SP_start+ 305, 0, 0);
changeAnime(SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(SP_start+  259,    0,      0,  0,   0);
setMoveKey(SP_start+  270,    0,      0,  0,   0);
setMoveKey(SP_start+  290,    0,   -30,  0,   20);

kamehame_beam = entryEffect(SP_start+ 260, SP_02, 0x40,  0,  300,  140,  230);   -- 伸びるかめはめ波
playSe(SP_start+ 260, SE_07);

spname = entryEffect(SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(SP_start+  300,    0,   -150,  0,   50);
setMoveKey(SP_start+  305,    0,   -700,  0,   80);

setEffMoveKey( SP_start+ 293, kamehame_beam, 120, 180); --224
setEffMoveKey( SP_start+ 297, kamehame_beam, 120, 170); --228
setEffMoveKey( SP_start+ 302, kamehame_beam, 100, 120); --233

--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade(SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg(SP_start+ 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife(SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_start+260, sen2, 190);
setEffScaleKey(SP_start+ 260, sen2, 1.25, 1.25);

setShakeChara(SP_start+ 260, 0, 54, 30);

shuchusen = entryEffectLife(SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_start+268, ct, 32, 5);
setEffAlphaKey(SP_start+268, ct, 255);
setEffAlphaKey(SP_start+290, ct, 255);
setEffAlphaKey(SP_start+300, ct, 0);
setEffScaleKey(SP_start+268, ct, 0.0, 0.0);
setEffScaleKey(SP_start+272, ct, 1.3, 1.3);
setEffScaleKey(SP_start+292, ct, 1.3, 1.3);
setEffScaleKey(SP_start+300, ct, 6.0, 6.0);
playSe(SP_start+ 300, SE_07);
entryFade(SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp(SP_start+ 370, 0, 0);
setDisp(SP_start+ 370, 1, 1);
changeAnime(SP_start+ 370, 1, 104);                        -- ガード
setMoveKey(SP_start+  369,    1,  235,  0,   0);
setMoveKey(SP_start+  370,    1,  235,  0,   0);
setMoveKey(SP_start+  371,    1,  235,  0,   0);
setScaleKey(SP_start+ 369,    1,  0.7, 0.7);
setScaleKey(SP_start+ 370,    1,  0.7, 0.7);

setMoveKey(SP_start+  400,    1,   120,  0,   0);
setScaleKey(SP_start+  400,   1,   1.6,  1.6);


-- ** エフェクト等 ** --
setShakeChara(SP_start+ 370, 1, 99, 20);

entryFadeBg(SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife(SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め


kamehame_beam2 = entryEffect(SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_start+370, kamehame_beam2, 1, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 314; --エンドフェイズのフレーム数を置き換える

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

removeAllEffect(SP_start+369);

playSe(SP_start+ 390, SE_06);


setEffScaleKey(SP_start+452, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage(SP_start+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe(SP_start+ 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime(SP_start+ 455, 1, 108);
setMoveKey(SP_start+  455, 1,  120,    0,  0);
setMoveKey(SP_start+  469, 1,  400,    0,  0);
setScaleKey(SP_start+ 455, 1,  1.6, 1.6);
setScaleKey(SP_start+ 458, 1,  1.5, 1.5);
setScaleKey(SP_start+ 468, 1,  0.2, 0.2);


--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_start+370, ct, 99, 20);
setEffScaleKey(SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey(SP_start+370, ct, 70);
setEffAlphaKey(SP_start+370, ct, 255);
setEffAlphaKey(SP_start+430, ct, 255);
setEffAlphaKey(SP_start+450, ct, 0);

entryFade(SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = 469;

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


entryFade(SP_start+ spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_start+ spep_5+110);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------

entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_start+69, 0);
changeAnime(SP_start+ 70, 0, 30);                       -- 溜め!
playSe(SP_start+ 73, SE_03);

--entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(SP_start+ 80, SE_04);

kame_hand = entryEffect(SP_start+ 70, SP_01, 0x40,      0,  300,  -15,  120);   -- 手のカメハメ波部
setEffScaleKey(SP_start+ 70, kame_hand, 0.5, 0.5);

entryFade(SP_start+165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( SP_start+70, 0, 100, 10);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+90, 10008, 68, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(SP_start+90, ct, 40, 8);
setEffScaleKey(SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey(SP_start+ 169,   0, 1.5, 1.5);
setScaleKey(SP_start+ 170,   0, 1.0, 1.0);

playSe(SP_start+ 170, SE_05);
speff = entryEffect(SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade(SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe(SP_start+ 170+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp(SP_start+ 305, 0, 0);
changeAnime(SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(SP_start+  259,    0,      0,  0,   0);
setMoveKey(SP_start+  270,    0,      0,  0,   0);
setMoveKey(SP_start+  290,    0,   -30,  0,   20);

kamehame_beam = entryEffect(SP_start+ 260, SP_02, 0x40,  0,  300,  140,  230);   -- 伸びるかめはめ波
playSe(SP_start+ 260, SE_07);

spname = entryEffect(SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(SP_start+  300,    0,   -150,  0,   50);
setMoveKey(SP_start+  305,    0,   -700,  0,   80);

setEffMoveKey( SP_start+ 293, kamehame_beam, 120, 180); --224
setEffMoveKey( SP_start+ 297, kamehame_beam, 120, 170); --228
setEffMoveKey( SP_start+ 302, kamehame_beam, 100, 120); --233

--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade(SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg(SP_start+ 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife(SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_start+260, sen2, 190);
setEffScaleKey(SP_start+ 260, sen2, 1.25, 1.25);

setShakeChara(SP_start+ 260, 0, 54, 30);

shuchusen = entryEffectLife(SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_start+268, ct, 32, 5);
setEffAlphaKey(SP_start+268, ct, 255);
setEffAlphaKey(SP_start+290, ct, 255);
setEffAlphaKey(SP_start+300, ct, 0);
setEffScaleKey(SP_start+268, ct, 0.0, 0.0);
setEffScaleKey(SP_start+272, ct, 1.3, 1.3);
setEffScaleKey(SP_start+292, ct, 1.3, 1.3);
setEffScaleKey(SP_start+300, ct, 6.0, 6.0);
playSe(SP_start+ 300, SE_07);
entryFade(SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp(SP_start+ 370, 0, 0);
setDisp(SP_start+ 370, 1, 1);
changeAnime(SP_start+ 370, 1, 104);                        -- ガード
setMoveKey(SP_start+  369,    1,  235,  0,   0);
setMoveKey(SP_start+  370,    1,  235,  0,   0);
setMoveKey(SP_start+  371,    1,  235,  0,   0);
setScaleKey(SP_start+ 369,    1,  0.7, 0.7);
setScaleKey(SP_start+ 370,    1,  0.7, 0.7);

setMoveKey(SP_start+  400,    1,   120,  0,   0);
setScaleKey(SP_start+  400,   1,   1.6,  1.6);


-- ** エフェクト等 ** --
setShakeChara(SP_start+ 370, 1, 99, 20);

entryFadeBg(SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife(SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め


kamehame_beam2 = entryEffect(SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_start+370, kamehame_beam2, 1, 1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 314; --エンドフェイズのフレーム数を置き換える

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

removeAllEffect(SP_start+369);

playSe(SP_start+ 390, SE_06);


setEffScaleKey(SP_start+452, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage(SP_start+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe(SP_start+ 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime(SP_start+ 455, 1, 108);
setMoveKey(SP_start+  455, 1,  120,    0,  0);
setMoveKey(SP_start+  469, 1,  400,    0,  0);
setScaleKey(SP_start+ 455, 1,  1.6, 1.6);
setScaleKey(SP_start+ 458, 1,  1.5, 1.5);
setScaleKey(SP_start+ 468, 1,  0.2, 0.2);


--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_start+370, ct, 99, 20);
setEffScaleKey(SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey(SP_start+370, ct, -70);
setEffAlphaKey(SP_start+370, ct, 255);
setEffAlphaKey(SP_start+430, ct, 255);
setEffAlphaKey(SP_start+450, ct, 0);

entryFade(SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
spep_5 = 469;

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


entryFade(SP_start+ spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_start+ spep_5+120);
end