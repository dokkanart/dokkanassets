

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

SP_01 = 100168;
SP_02 = 100169;
SP_03 = 100170;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI(0, 0);
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

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x80,  0,  0,  0,  0,-160); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
setEffMoveKey(  30,  aura,  0,  -160);   

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
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--***カットイン***32
spep=40;
speff = entryEffect(  spep+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep+52, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep + 52, ctgogo, 255 );
setEffAlphaKey( spep + 82, ctgogo, 255 );
setEffAlphaKey( spep + 83, ctgogo, 255 );
setEffAlphaKey( spep + 84, ctgogo, 191 );
setEffAlphaKey( spep + 86, ctgogo, 128 );
setEffAlphaKey( spep + 121, ctgogo, 64 );
setEffAlphaKey( spep + 122, ctgogo, 0 );
setEffRotateKey(  spep+52,  ctgogo,  0);
setEffRotateKey(  spep+122,  ctgogo,  0);
setEffScaleKey(  spep+52,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep+82,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep + 122, ctgogo, 1.07, 1.07 );
setEffMoveKey(  spep+52,  ctgogo,  0,  530);
setEffMoveKey(  spep+122,  ctgogo,  0,  530);                      -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 162, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);


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


entryFade( 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

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
--setShakeChara( 370, 1, 99, 20);

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
--***敵の動き***--
SP_ATK=469
setDisp( SP_ATK + 0, 1, 1 );
changeAnime( SP_ATK + 0, 1, 107 );

setMoveKey( SP_ATK + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( SP_ATK + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( SP_ATK + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( SP_ATK + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( SP_ATK + 0, 1, 0.22, 0.22 );
setScaleKey( SP_ATK + 2, 1, 0.35, 0.35 );
setScaleKey( SP_ATK + 4, 1, 0.51, 0.51 );
setScaleKey( SP_ATK + 6, 1, 0.7, 0.7 );
setScaleKey( SP_ATK + 8, 1, 0.93, 0.93 );
setScaleKey( SP_ATK + 10, 1, 1.2, 1.2 );
setScaleKey( SP_ATK + 12, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 14, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 16, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 18, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 20, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 22, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 24, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 26, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 120, 1, 1.6, 1.6 );

setRotateKey( SP_ATK + 0, 1, 0 );
setRotateKey( SP_ATK + 2, 1, 105 );
setRotateKey( SP_ATK + 4, 1, 240 );
setRotateKey( SP_ATK + 6, 1, 405 );
setRotateKey( SP_ATK + 8, 1, 600 );
setRotateKey( SP_ATK + 10, 1, 825 );
setRotateKey( SP_ATK + 12, 1, 1080 );
setRotateKey( SP_ATK + 120, 1, 1080 );

--爆発エフェクト
entryEffect( SP_ATK+4, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK+4, SE_10);

setDamage( SP_ATK +16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+8,6,15);
setShake(SP_ATK+14,15,10);

--書き文字--
ctGa = entryEffectLife( SP_ATK + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( SP_ATK + 14, ctGa, 30, 10);

setEffMoveKey( SP_ATK + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK + 14, ctGa, 2, 2 );
setEffScaleKey( SP_ATK+16, ctGa, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, cGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ctGa, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ctGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ctGa, 3.8, 3.8);
setEffScaleKey( SP_ATK+112, ctGa, 3.8, 3.8);

setEffRotateKey( SP_ATK + 14, ctGa, -40 );
setEffRotateKey( SP_ATK + 16, ctGa, -31 );
setEffRotateKey( SP_ATK + 18, ctGa, -40 );
setEffRotateKey( SP_ATK + 20, ctGa, -31 );
setEffRotateKey( SP_ATK + 22, ctGa, -40 );
setEffRotateKey( SP_ATK + 24, ctGa, -31);
setEffRotateKey( SP_ATK + 26, ctGa, -40 );
setEffRotateKey( SP_ATK + 28, ctGa, -31);
setEffRotateKey( SP_ATK + 30, ctGa, -40 );

setEffAlphaKey( SP_ATK + 14, ctGa, 255 );

entryFadeBg( SP_ATK,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( SP_ATK+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( SP_ATK+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( SP_ATK+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  SP_ATK+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(SP_ATK+6);
--entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK + 90);
else


------------------------------------------------------
-- 敵側
------------------------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x80,  0,  0,  0,  0,-160); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
setEffMoveKey(  30,  aura,  0,  -160);   

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
--setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--***カットイン***32
spep=40;
--[[
speff = entryEffect(  spep+40,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep+40,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep+52, 190006, 70, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffAlphaKey( spep + 52, ctgogo, 255 );
setEffAlphaKey( spep + 82, ctgogo, 255 );
setEffAlphaKey( spep + 83, ctgogo, 255 );
setEffAlphaKey( spep + 84, ctgogo, 191 );
setEffAlphaKey( spep + 86, ctgogo, 128 );
setEffAlphaKey( spep + 121, ctgogo, 64 );
setEffAlphaKey( spep + 122, ctgogo, 0 );
setEffRotateKey(  spep+52,  ctgogo,  0);
setEffRotateKey(  spep+122,  ctgogo,  0);
setEffScaleKey(  spep+52,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep+82,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep + 122, ctgogo, -1.07, 1.07 );
setEffMoveKey(  spep+52,  ctgogo,  0,  530);
setEffMoveKey(  spep+122,  ctgogo,  0,  530);     

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40+0x80,      0,  300,  -10,  10);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.6, 0.6);

entryFade( 162, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);



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


entryFade( 255, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 257, SP_02, 112, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( 257, SE_07);
setEffAlphaKey(257, kamehame_beam, 0);
setEffAlphaKey(259, kamehame_beam, 0);
setEffAlphaKey(260, kamehame_beam, 255);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -650,  0,   80);
--setMoveKey(  308,    0,   -1100,  0,   0);


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
--setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 0);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 185+235; --エンドフェイズのフレーム数を置き換える

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
--***敵の動き***--
SP_ATK=469
setDisp( SP_ATK + 0, 1, 1 );
changeAnime( SP_ATK + 0, 1, 107 );

setMoveKey( SP_ATK + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_ATK + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( SP_ATK + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_ATK + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_ATK + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_ATK + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( SP_ATK + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( SP_ATK + 120, 1, -1.9, -124.1 , 0 );

setScaleKey( SP_ATK + 0, 1, 0.22, 0.22 );
setScaleKey( SP_ATK + 2, 1, 0.35, 0.35 );
setScaleKey( SP_ATK + 4, 1, 0.51, 0.51 );
setScaleKey( SP_ATK + 6, 1, 0.7, 0.7 );
setScaleKey( SP_ATK + 8, 1, 0.93, 0.93 );
setScaleKey( SP_ATK + 10, 1, 1.2, 1.2 );
setScaleKey( SP_ATK + 12, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 14, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 16, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 18, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 20, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 22, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 24, 1, 1.5, 1.5 );
setScaleKey( SP_ATK + 26, 1, 1.6, 1.6 );
setScaleKey( SP_ATK + 120, 1, 1.6, 1.6 );

setRotateKey( SP_ATK + 0, 1, 0 );
setRotateKey( SP_ATK + 2, 1, 105 );
setRotateKey( SP_ATK + 4, 1, 240 );
setRotateKey( SP_ATK + 6, 1, 405 );
setRotateKey( SP_ATK + 8, 1, 600 );
setRotateKey( SP_ATK + 10, 1, 825 );
setRotateKey( SP_ATK + 12, 1, 1080 );
setRotateKey( SP_ATK + 120, 1, 1080 );

--爆発エフェクト
entryEffect( SP_ATK+4, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK+4, SE_10);

setDamage( SP_ATK +16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+8,6,15);
setShake(SP_ATK+14,15,10);

--書き文字--
ctGa = entryEffectLife( SP_ATK + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );
setEffShake( SP_ATK + 14, ctGa, 30, 10);

setEffMoveKey( SP_ATK + 14, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 16, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 18, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 20, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 22, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 24, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 26, ctGa, 3.9, 316.1 , 0 );
setEffMoveKey( SP_ATK + 28, ctGa, 4, 316.1 , 0 );
setEffMoveKey( SP_ATK + 30, ctGa, 3.9, 316.1 , 0 );

setEffScaleKey( SP_ATK + 14, ctGa, 2, 2 );
setEffScaleKey( SP_ATK+16, ctGa, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, cGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ctGa, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ctGa, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ctGa, 3.8, 3.8);
setEffScaleKey( SP_ATK+112, ctGa, 3.8, 3.8);

setEffRotateKey( SP_ATK + 14, ctGa, -40 );
setEffRotateKey( SP_ATK + 16, ctGa, -31 );
setEffRotateKey( SP_ATK + 18, ctGa, -40 );
setEffRotateKey( SP_ATK + 20, ctGa, -31 );
setEffRotateKey( SP_ATK + 22, ctGa, -40 );
setEffRotateKey( SP_ATK + 24, ctGa, -31);
setEffRotateKey( SP_ATK + 26, ctGa, -40 );
setEffRotateKey( SP_ATK + 28, ctGa, -31);
setEffRotateKey( SP_ATK + 30, ctGa, -40 );

setEffAlphaKey( SP_ATK + 14, ctGa, 255 );

entryFadeBg( SP_ATK,  0,  120,  0,  21,  36,  51, 200);  -- ネイビー


--集中線（白）
shuchusen = entryEffectLife( SP_ATK+2, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

--集中線（黒）
shuchusenkuro = entryEffectLife( SP_ATK+14, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線

--ひび割れ
hibi = entryEffect( SP_ATK+2, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
playSe(  SP_ATK+2,  SE_11);  --ひび割れ


-- ダメージ表示
dealDamage(SP_ATK+6);
--entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_ATK + 90);

end