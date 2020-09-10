--怪魔王　大砲变化

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+45;

SP_ATK_MA = -20;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射

SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 108055;
SP_02 = 108056;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);

setScaleKey(   0,   0, 1.2, 1.2);
setScaleKey(   61,   0, 1.2, 1.2);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める

changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002(めエフェクト1キャラ後用)
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001(めエフェクト1キャラ前用)

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey(   62,   0,  1.2, 1.2);--12:20

-- ** エフェクト等 ** --

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
-- 顔カットイン(100F)
------------------------------------------------------


speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

setVisibleUI(70, 0);


playSe( 70, SE_04);

--playSe( 80, SE_03);
--playSe( 100, SE_03);
--playSe( 120, SE_03);
--playSe( 140, SE_03);


setScaleKey(   155+SP_ATK_MA,   0,  1.2, 1.2);--12:20
entryFade( 155+SP_ATK_MA, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setShakeChara( 60, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 80, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(80, ct, 40, 8);
setEffScaleKey(80, ct, 1.4, 1.4);

entryFadeBg( 80, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( 80, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


setScaleKey(   158+SP_ATK_MA,   0, 0.7, 0.7);
setScaleKey( 159+SP_ATK_MA,   0,  0.7, 0.7); --11:30



entryEffect(  158+SP_ATK_MA,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)溜めエフェクト前用

entryFadeBg( 158+SP_ATK_MA, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryEffect(  158+SP_ATK_MA,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)溜めエフェクト後用


playSe( 160+SP_ATK_MA, SE_05);
speff = entryEffect(  160+SP_ATK_MA,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


-- ** エフェクト等 ** --

--playSe( 160+64, SE_06);


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

entryFade( 243+SP_ATK_MA, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryFadeBg( 223+SP_ATK_MA, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景


setVisibleUI(223+SP_ATK_MA, 0);
changeAnime( 230+SP_ATK_MA, 0, 30);                       -- かめはめ波溜め!
setScaleKey(230+SP_ATK_MA,0,0.7,0.7);
--playSe( 226, SE_03);
entryEffectLife( 230, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線



entryFadeBg( 224+SP_ATK_MA, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

playSe( 254, SE_04);
playSe( 285, 1023);

setScaleKey(260+SP_ATK_MA,0,0.7,0.7);
entryFade( 265+SP_ATK_MA, 5, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(265+SP_ATK_MA,0,0.7,0.7);
changeAnime( 271+SP_ATK_MA, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(271+SP_ATK_MA,0,0.7,0.7);



setMoveKey(  257+15,    0,      0,  0,   0);
setMoveKey(  258+35,    0,   -600,  0,   0);
setMoveKey(  280+37,    0,   -1100,  0,   0);

kamehame_beam = entryEffectLife( 258+32-5, SP_01, 109, 0x40,  0,  300,  300,  70);   -- 伸びるかめはめ波


entryEffectLife( 258+42, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
entryFadeBg( 258, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 290, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景



--playSe( 232, SE_07);


entryEffectLife( 292, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
entryEffectLife( 300, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 337, 0, 54, 50);



-- 書き文字エントリー
ct = entryEffectLife( 240+40, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(240+50, ct, 32, 5);
setEffAlphaKey(240+50, ct, 255);
setEffAlphaKey(262+50, ct, 255);
setEffAlphaKey(272+50, ct, 0);
setEffScaleKey(240+50, ct, 0.0, 0.0);
setEffScaleKey(244+50, ct, 1.3, 1.3);
setEffScaleKey(264+50, ct, 1.3, 1.3);
setEffScaleKey(272+50, ct, 6.0, 6.0);
playSe( 272+50, SE_07);
setScaleKey(420,0,0.7,0.7);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

entryFade( 395, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setDisp( 390, 0, 0);
setDisp( 402, 1, 1);
setMoveKey(  402,    1,  235,  0,   0);

changeAnime( 400, 1, 104); 
setScaleKey( 400,    1,  1, 1);                       -- ガード

setMoveKey(  420,    1,  235,  0,   0);
setMoveKey(  421,    1,  235,  0,   0);

setScaleKey( 420,    1,  1, 1);

setScaleKey(  450,   1,   1.6,  1.6);


playSe( 450, SE_11);
--playSe( 440, SE_06);

kamehame_beam2 = entryEffect( 400, SP_02,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(400, kamehame_beam2, 1, 1);
setEffScaleKey(482, kamehame_beam2, 1, 1);
setEffScaleKey(484, kamehame_beam2, 2.5, 2.5);


setEffScaleKey(400, kamehame_beam2, 0.8, 0.8);
setEffScaleKey(482, kamehame_beam2, 0.8, 0.8);
setEffScaleKey(484, kamehame_beam2, 0.8, 0.8);
setDamage( 482, 1, 0);  -- ダメージ振動等

entryEffect(450,4,0x100,1,0,0,0);--ヒットエフェクト

changeAnime( 450, 1, 108); -- ダメージ（吹き飛び）
setMoveKey(  450, 1,  200,    0,  0);
setMoveKey(  460, 1,  400,    0,  0);
setMoveKey(  464, 1,  600,    0,  0);
setMoveKey(  474, 1,  800,    0,  0);


setScaleKey( 450, 1,  1.6, 1.6);
setScaleKey( 453, 1,  1.5, 1.5);
setScaleKey( 463, 1,  0.2, 0.2);

playSe( 505, SE_09);

-- 敵吹っ飛ぶモーション --


-- ** エフェクト等 ** --
setShakeChara( 400, 1, 99, 20);

entryFadeBg( 380, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

entryEffectLife( 400, 921, 85, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
--setDisp(  400, 1,  1 );
ct = entryEffectLife( 400, 10014, 99, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(400, ct, 99, 20);
setEffScaleKey( 400, ct, 2.4, 2.4);
setEffRotateKey(400, ct, 70);
setEffAlphaKey(400, ct, 255);
setEffAlphaKey(460, ct, 255);
setEffAlphaKey(480, ct, 0);

entryFade( 475, 11,  15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 425; --エンドフェイズのフレーム数を置き換える

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

playSe( 402, SE_04);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------


setDisp(  505, 1,  1);
setMoveKey(505,1,0,0,0);
changeAnime( 494+10, 1, 107);                         -- 手前ダメージ
entryEffect( 493+10,1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 495+10, SE_10);

setMoveKey(  493+10,   1,    0,   0,   128);
setMoveKey(  500+10,   1,  -60,  -200,  -100);


setDamage( 501+10, 1, 0);  -- ダメージ振動等
setShake(492+10,6,15);
setShake(558+10,10);
--setRotateKey( 485,  1,  30 );
setRotateKey( 487+10,  1,  80 );
setRotateKey( 489+10,  1, 120 );
setRotateKey( 491+10,  1, 160 );
setRotateKey( 493+10,  1, 200 );
setRotateKey( 495+10,  1, 260 );
setRotateKey( 497+10,  1, 320 );
setRotateKey( 499+10,  1,   0 );

setShakeChara( 500+10, 1, 5,  10);
setShakeChara( 505+10, 1, 10, 20);



-- 書き文字エントリー
ct = entryEffectLife( 555-40-5, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(555-40-15+10, ct, 30, 10);
setEffRotateKey( 555-40-5, ct, -40);
setEffScaleKey( 555-40-5, ct, 4.0, 4.0);
setEffScaleKey( 556-40-5, ct, 2.0, 2.0);
setEffScaleKey( 557-40-5, ct, 2.6, 2.6);
setEffScaleKey( 558-40-5, ct, 4.0, 4.0);
setEffScaleKey( 559-40-5, ct, 2.6, 2.6);
setEffScaleKey( 560-40-5, ct, 3.8, 3.8);
setEffScaleKey( 590-40-5, ct, 3.8, 3.8);
setEffAlphaKey( 555-40-5, ct, 255);
setEffAlphaKey( 645-40-5, ct, 255);
setEffAlphaKey( 655-40-5, ct, 0);

--playSe( 488, SE_11);

entryEffect( 488+10, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
entryEffectLife( 488+10, 906, 120, 0x00,  -1, 0,  0,  0);

-- ダメージ表示
dealDamage(510);

entryFade( 606, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(616);
else

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
--敵側の攻撃
-----------------------------------------

--気を貯める

changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002(めエフェクト1キャラ後用)
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001(めエフェクト1キャラ前用)

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setScaleKey(   62,   0,  1.2, 1.2);--12:20

-- ** エフェクト等 ** --

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
-- 顔カットイン(100F)
------------------------------------------------------


--speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

setVisibleUI(70, 0);


playSe( 70, SE_04);

--playSe( 80, SE_03);
--playSe( 100, SE_03);
--playSe( 120, SE_03);
--playSe( 140, SE_03);


--setScaleKey(   155,   0,  1.2, 1.2);--12:20
--entryFade( 155, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFade( 155, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(   155+SP_ATK_MA,   0,  1.2, 1.2);--12:20
entryFade( 155+SP_ATK_MA, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setShakeChara( 60, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 80, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(80, ct, 40, 8);
setEffScaleKey(80, ct, 1.4, 1.4);

entryFadeBg( 80, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryEffectLife( 80, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


setScaleKey(   158+SP_ATK_MA,   0, 0.7, 0.7);
setScaleKey( 159+SP_ATK_MA,   0,  0.7, 0.7); --11:30



entryEffect(  158+SP_ATK_MA,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)溜めエフェクト前用

entryFadeBg( 158+SP_ATK_MA, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryEffect(  158+SP_ATK_MA,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)溜めエフェクト後用


playSe( 160+SP_ATK_MA, SE_05);
speff = entryEffect(  160+SP_ATK_MA,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


-- ** エフェクト等 ** --

--playSe( 160+64, SE_06);


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

entryFade( 243+SP_ATK_MA, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryFadeBg( 223+SP_ATK_MA, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景


setVisibleUI(223+SP_ATK_MA, 0);
changeAnime( 230+SP_ATK_MA, 0, 30);                       -- かめはめ波溜め!
setScaleKey(230+SP_ATK_MA,0,0.7,0.7);
--playSe( 226, SE_03);
entryEffectLife( 230+SP_ATK_MA, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線



entryFadeBg( 224+SP_ATK_MA, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

playSe( 254, SE_04);
playSe( 285, 1023);

setScaleKey(260+SP_ATK_MA,0,0.7,0.7);
entryFade( 265+SP_ATK_MA, 5, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(265+SP_ATK_MA,0,0.7,0.7);
changeAnime( 271+SP_ATK_MA, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(271+SP_ATK_MA,0,0.7,0.7);



setMoveKey(  257+15,    0,      0,  0,   0);
setMoveKey(  258+35,    0,   -600,  0,   0);
setMoveKey(  280+37,    0,   -1100,  0,   0);

kamehame_beam = entryEffectLife( 258+32-5, SP_01, 109, 0x40,  0,  300,  300,  70);   -- 伸びるかめはめ波


entryEffectLife( 258+42, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
entryFadeBg( 258, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 290, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景



--playSe( 232, SE_07);


entryEffectLife( 292, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
entryEffectLife( 300, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( 337, 0, 54, 50);



-- 書き文字エントリー
ct = entryEffectLife( 240+40, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(240+50, ct, 32, 5);
setEffAlphaKey(240+50, ct, 255);
setEffAlphaKey(262+50, ct, 255);
setEffAlphaKey(272+50, ct, 0);
setEffScaleKey(240+50, ct, 0.0, 0.0);
setEffScaleKey(244+50, ct, 1.3, 1.3);
setEffScaleKey(264+50, ct, 1.3, 1.3);
setEffScaleKey(272+50, ct, 6.0, 6.0);
playSe( 272+50, SE_07);
setScaleKey(420,0,0.7,0.7);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
entryFade( 395, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setDisp( 390, 0, 0);
setDisp( 402, 1, 1);
setMoveKey(  402,    1,  235,  0,   0);

changeAnime( 400, 1, 104); 
setScaleKey( 400,    1,  1, 1);                       -- ガード

setMoveKey(  420,    1,  235,  0,   0);
setMoveKey(  421,    1,  235,  0,   0);

setScaleKey( 420,    1,  1, 1);

setScaleKey(  450,   1,   1.6,  1.6);


playSe( 450, SE_11);

--playSe( 440, SE_06);

kamehame_beam2 = entryEffect( 400, SP_02,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(400, kamehame_beam2, 1, 1);
setEffScaleKey(482, kamehame_beam2, 1, 1);
setEffScaleKey(484, kamehame_beam2, 2.5, 2.5);


setEffScaleKey(400, kamehame_beam2, 0.8, 0.8);
setEffScaleKey(482, kamehame_beam2, 0.8, 0.8);
setEffScaleKey(484, kamehame_beam2, 0.8, 0.8);
setDamage( 482, 1, 0);  -- ダメージ振動等

entryEffect(450,4,0x100,1,0,0,0);--ヒットエフェクト

changeAnime( 450, 1, 108); -- ダメージ（吹き飛び）
setMoveKey(  450, 1,  200,    0,  0);
setMoveKey(  460, 1,  400,    0,  0);
setMoveKey(  464, 1,  600,    0,  0);
setMoveKey(  474, 1,  800,    0,  0);


setScaleKey( 450, 1,  1.6, 1.6);
setScaleKey( 453, 1,  1.5, 1.5);
setScaleKey( 463, 1,  0.2, 0.2);

playSe( 505, SE_09);

-- 敵吹っ飛ぶモーション --


-- ** エフェクト等 ** --
setShakeChara( 400, 1, 99, 20);

entryFadeBg( 380, 0, 110, 0, 10, 10, 10, 180);          -- ベース暗め　背景

entryEffectLife( 400, 921, 85, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
--setDisp(  400, 1,  1 );
ct = entryEffectLife( 400, 10014, 99, 0x100, -1, 0, -100, 255); -- ズドドッ
setEffShake(400, ct, 99, 20);
setEffScaleKey( 400, ct, 2.4, 2.4);
setEffRotateKey(400, ct, -70);
setEffAlphaKey(400, ct, 255);
setEffAlphaKey(460, ct, 255);
setEffAlphaKey(480, ct, 0);

entryFade( 475, 11,  15, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 425; --エンドフェイズのフレーム数を置き換える

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

playSe( 402, SE_04);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------


setDisp(  505, 1,  1);
setMoveKey(505,1,0,0,0);
changeAnime( 494+10, 1, 107);                         -- 手前ダメージ
entryEffect( 493+10,1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 495+10, SE_10);

setMoveKey(  493+10,   1,    0,   0,   128);
setMoveKey(  500+10,   1,  -60,  -200,  -100);


setDamage( 501+10, 1, 0);  -- ダメージ振動等
setShake(492+10,6,15);
setShake(558+10,10);
--setRotateKey( 485,  1,  30 );
setRotateKey( 487+10,  1,  80 );
setRotateKey( 489+10,  1, 120 );
setRotateKey( 491+10,  1, 160 );
setRotateKey( 493+10,  1, 200 );
setRotateKey( 495+10,  1, 260 );
setRotateKey( 497+10,  1, 320 );
setRotateKey( 499+10,  1,   0 );

setShakeChara( 500+10, 1, 5,  10);
setShakeChara( 505+10, 1, 10, 20);



-- 書き文字エントリー
ct = entryEffectLife( 555-40-5, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(555-40-15+10, ct, 30, 10);
setEffRotateKey( 555-40-5, ct, -40);
setEffScaleKey( 555-40-5, ct, 4.0, 4.0);
setEffScaleKey( 556-40-5, ct, 2.0, 2.0);
setEffScaleKey( 557-40-5, ct, 2.6, 2.6);
setEffScaleKey( 558-40-5, ct, 4.0, 4.0);
setEffScaleKey( 559-40-5, ct, 2.6, 2.6);
setEffScaleKey( 560-40-5, ct, 3.8, 3.8);
setEffScaleKey( 590-40-5, ct, 3.8, 3.8);
setEffAlphaKey( 555-40-5, ct, 255);
setEffAlphaKey( 645-40-5, ct, 255);
setEffAlphaKey( 655-40-5, ct, 0);

--playSe( 488, SE_11);

entryEffect( 488+10, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
entryEffectLife( 488+10, 906, 120, 0x00,  -1, 0,  0,  0);

-- ダメージ表示
dealDamage(510);

entryFade( 606, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(616);

end
