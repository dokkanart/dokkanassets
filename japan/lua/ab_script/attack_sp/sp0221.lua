--超サイヤ人3ゴテンクス_連続死ね死ねミサイル

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_star02 = SP_ATK_3+45;

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

SP_01 = 109071
SP_02 = 109072
SP_03 = 109072

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.8, 1.8);
setScaleKey(   1,   0, 1.8, 1.8);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setDrawFront(  0, 0, 1);
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 30, 0, 19, 5);
setEffAlphaKey(30, aura, 180);

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
entryFadeBg( 69, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -40,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 1.2, 1.2);

kame_hand02 = entryEffect( 70, SP_01, 0x40,      0,  300,  100,  -40);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand02, 1.2, 1.2);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 70, 0, 49, 5);
setEffAlphaKey(70, aura, 100);

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( 92,  190006, 72, 0x100, -1, 0, 130.9, 535.5 ); --ゴゴゴ
setEffShake( 92, ctgogo, 72, 10 );
 
setEffMoveKey( 92, ctgogo, -130.9, 532.8 , 0 );
setEffMoveKey( 92 +72, ctgogo, -130.9, 535.5 , 0 );

setEffScaleKey( 92, ctgogo, 0.84, 0.84 );
setEffScaleKey( 92 +64, ctgogo, 0.84, 0.84 );
setEffScaleKey( 92 +66, ctgogo, 1.0, 1.0 );
setEffScaleKey( 92 +68, ctgogo, 1.08, 1.08 );
setEffScaleKey( 92 +70, ctgogo, 1.44, 1.44 );
setEffScaleKey( 92 +72, ctgogo, 1.8, 1.8 );
 
setEffRotateKey( 92, ctgogo, 0 );
setEffRotateKey( 92 +72, ctgogo, 0 );

setEffAlphaKey( 92, ctgogo, 0 );
setEffAlphaKey( 92 +1, ctgogo, 255 );
setEffAlphaKey( 92 +2, ctgogo, 255 );
setEffAlphaKey( 92 +72, ctgogo, 255 );


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.8, 1.8);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( 170 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260 + 4, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( 260 + 4,   0, 0.8, 0.8);

setMoveKey(  259 + 4,    0,      0,  0,   0);
setMoveKey(  260 + 4,    0,   -600,  100,   0);
setMoveKey(  261 + 4,    0,   -600,  100,   0);
setMoveKey(  270 + 4,    0,   -200,  100,   0);


-- 途中からカメハメハが伸びる

setMoveKey(  310 + 4,    0,   -200,  100,   0);

setMoveKey(  340 + 4,    0,   -600,  100,   -32);--800
setDisp(  340 + 4, 0, 0);

setMoveKey(  345 + 4,    0,   -400,  100,   -32);--800


-- ** エフェクト等 ** --
entryFadeBg( 260 + 4, 0, 195, 0, 10, 10, 10, 180);       -- ベース暗め　背景
ryuusenn = entryEffectLife( 260 + 4, 921, 195, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 260 + 4,  ryuusenn,  30 );
setEffScaleKey( 260 + 4, ryuusenn, 1.6, 1.6);

kamehame_beam = entryEffect( 260 + 4, SP_02,  0x40+0x100,  0,  300,  140,  -150);   -- 伸びるかめはめ波
setEffRotateKey( 260 + 4,  kamehame_beam,  10 );
setEffAlphaKey(260 + 4, kamehame_beam, 0);

kamehame_beam02 = entryEffect( 260 + 4, SP_02,  0x40+0x80,  0,  300, 140,  -150);   -- 伸びるかめはめ波
setEffRotateKey( 260 + 4,  kamehame_beam02,  10 );
setEffAlphaKey(260 + 4, kamehame_beam02, 255);

--kamehame_beam = entryEffectLife( 260, SP_02, 91, 0x40+0x80,  0,  0,  0,  0);   -- 伸びるかめはめ波

setEffAlphaKey(260 + 4, kamehame_beam, 0);
setEffAlphaKey(260 + 4, kamehame_beam02, 255);


setShakeChara( 260 + 4, 0, 80, 25);

shuchusen = entryEffectLife( 260 + 4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260 + 4, shuchusen, 1.0, 1.0);
setEffScaleKey( 300 + 4, shuchusen, 1.0, 1.0);
setEffScaleKey( 309 + 4, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 268 + 4, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268 + 4, ct, 32, 5);
setEffAlphaKey(268 + 4, ct, 255);
setEffAlphaKey(290 + 4, ct, 255);
setEffAlphaKey(300 + 4, ct, 0);
setEffScaleKey(268 + 4, ct, 0.0, 0.0);
setEffScaleKey(272 + 4, ct, 1.3, 1.3);
setEffScaleKey(292 + 4, ct, 1.3, 1.3);
setEffScaleKey(300 + 4, ct, 6.0, 6.0);

--[[
playSe( 265 + 4, SE_07);
--playSe( 270, SE_07);
playSe( 280 + 4, SE_07);
--playSe( 290, SE_07);
playSe( 300 + 4, SE_07);
--playSe( 310, SE_07);
]]
--v4.11調整
SE001 = playSe( 265 + 4, SE_07);
stopSe(290 + 4,SE001,5);
--playSe( 270, SE_07);
SE002 = playSe( 280 + 4, SE_07);
stopSe(310 + 4,SE002,5);
--playSe( 290, SE_07);
SE003 = playSe( 300 + 4, SE_07);
stopSe(330 + 4,SE003,5);
--playSe( 310, SE_07);


SE1 = playSeLife( 320 + 4, SE_07 );
--playSe( 320 + 4, SE_07);
--playSe( 330, SE_07);

setEffAlphaKey(265 + 4, kamehame_beam, 0);
setEffAlphaKey(265 + 4, kamehame_beam02, 255);

setEffAlphaKey(270 + 4, kamehame_beam, 255);
setEffAlphaKey(270 + 4, kamehame_beam02, 0);

setEffAlphaKey(280 + 4, kamehame_beam,0);
setEffAlphaKey(280 + 4, kamehame_beam02, 255);

setEffAlphaKey(290 + 4, kamehame_beam, 255);
setEffAlphaKey(290 + 4, kamehame_beam02, 0);

setEffAlphaKey(300 + 4, kamehame_beam, 0);
setEffAlphaKey(300 + 4, kamehame_beam02, 255);

setEffAlphaKey(310 + 4, kamehame_beam, 255);
setEffAlphaKey(310 + 4, kamehame_beam02, 0);

setEffAlphaKey(320 + 4, kamehame_beam, 0);
setEffAlphaKey(320 + 4, kamehame_beam02, 255);

setEffAlphaKey(330 + 4, kamehame_beam, 255);
setEffAlphaKey(330 + 4, kamehame_beam02, 0);

SP_start = -20 + 4;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 331; --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge + 0, SE1, 0 );

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge + 0,    0,   -200,  100,   0);
setMoveKey( SP_dodge + 8,    0,   -600,  100,   -32);--800

setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--setDisp( SP_start+ 370, 0, 0);
setShake( SP_start+ 375,82, 20);

setDisp( SP_start+ 365, 1, 1);
changeAnime( SP_start+ 365, 1, 104);                        -- ガード
setMoveKey( SP_start+  364,    1,  235,  -100,   0);
setMoveKey( SP_start+  365,    1,  235,  -100,   0);
setMoveKey( SP_start+  366,    1,  235,  -100,   0);
setScaleKey( SP_start+ 364,    1,  0.7, 0.7);
setScaleKey( SP_start+ 365,    1,  0.7, 0.7);

setMoveKey( SP_start+  375,    1,   70,  0,   0);
setScaleKey( SP_start+  375,   1,   1.6,  1.6);


setDamage( SP_start+ 355, 1, 0);  -- ダメージ振動等


changeAnime( SP_start+ 375, 1, 108);

--playSe( SP_start+ 355, SE_09);

--[[
playSe( SP_start+ 375, SE_09);
playSe( SP_start+ 390, SE_09);
playSe( SP_start+ 410, SE_09);
playSe( SP_start+ 430, SE_09);
playSe( SP_start+ 445, SE_10);
]]
--v4.11調整
playSe( SP_start+ 375, SE_09);
setSeVolume(SP_start+ 375,SE_09,90);
playSe( SP_start+ 390, SE_09);
setSeVolume(SP_start+ 390,SE_09,90);
playSe( SP_start+ 410, SE_09);
setSeVolume(SP_start+ 410,SE_09,90);
playSe( SP_start+ 430, SE_09);
setSeVolume(SP_start+ 430,SE_09,90);
playSe( SP_start+ 445, SE_10);
setSeVolume(SP_start+ 445,SE_09,90);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, 70);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+395, ct, 255);
setEffAlphaKey( SP_start+405, ct, 0);


SP_star02 = 458;

entryFade( SP_star02 - 8, 6, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
setDisp( SP_star02, 0, 0);
setScaleKey( SP_star02, 0, 0.8, 0.8);

-- ** エフェクト等 ** --
setShakeChara( SP_star02, 1, 10, 5);

-- ** 爆発 ** --
bakuhatsu = entryEffect( SP_star02 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( SP_star02 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( SP_star02 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( SP_star02 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( SP_star02 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( SP_star02 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( SP_star02 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( SP_star02 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( SP_star02 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( SP_star02 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( SP_star02 + 0, bakuhatsu, 0 );
setEffRotateKey( SP_star02 + 100, bakuhatsu, 0 );

setEffAlphaKey( SP_star02 + 0, bakuhatsu, 255 );
setEffAlphaKey( SP_star02 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( SP_star02 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( SP_star02 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( SP_star02 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( SP_star02 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( SP_star02 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( SP_star02 + 2, hibiware, 0 );
setEffRotateKey( SP_star02 + 100, hibiware, 0 );

setEffAlphaKey( SP_star02 + 2, hibiware, 0 );
setEffAlphaKey( SP_star02 + 13, hibiware, 0 );
setEffAlphaKey( SP_star02 + 14, hibiware, 255 );
setEffAlphaKey( SP_star02 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( SP_star02 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( SP_star02 + 14, shuchusen3, 32, 25 );

setEffMoveKey( SP_star02 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( SP_star02 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( SP_star02 + 14, shuchusen3, 1, 1 );
setEffScaleKey( SP_star02 + 46, shuchusen3, 1, 1 );

setEffRotateKey( SP_star02 + 14, shuchusen3, 0 );
setEffRotateKey( SP_star02 + 46, shuchusen3, 0 );

setEffAlphaKey( SP_star02 + 14, shuchusen3, 255 );
setEffAlphaKey( SP_star02 + 28, shuchusen3, 255 );
setEffAlphaKey( SP_star02 + 30, shuchusen3, 252 );
setEffAlphaKey( SP_star02 + 32, shuchusen3, 242 );
setEffAlphaKey( SP_star02 + 34, shuchusen3, 227 );
setEffAlphaKey( SP_star02 + 36, shuchusen3, 205 );
setEffAlphaKey( SP_star02 + 38, shuchusen3, 176 );
setEffAlphaKey( SP_star02 + 40, shuchusen3, 142 );
setEffAlphaKey( SP_star02 + 42, shuchusen3, 101 );
setEffAlphaKey( SP_star02 + 44, shuchusen3, 54 );
setEffAlphaKey( SP_star02 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( SP_star02 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( SP_star02 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( SP_star02 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( SP_star02 + 14, shuchusen4, 1, 1 );
setEffScaleKey( SP_star02 + 100, shuchusen4, 1, 1 );

setEffRotateKey( SP_star02 + 14, shuchusen4, 0 );
setEffRotateKey( SP_star02 + 100, shuchusen4, 0 );

setEffAlphaKey( SP_star02 + 14, shuchusen4, 255 );
setEffAlphaKey( SP_star02 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( SP_star02 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( SP_star02 + 14, ctga, 14, 20 );

setEffMoveKey( SP_star02 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( SP_star02 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( SP_star02 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( SP_star02 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( SP_star02 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( SP_star02 + 14, ctga, -10.9 );
setEffRotateKey( SP_star02 + 15, ctga, -10.9 );
setEffRotateKey( SP_star02 + 16, ctga, -14.9 );
setEffRotateKey( SP_star02 + 17, ctga, -14.9 );
setEffRotateKey( SP_star02 + 18, ctga, -10.9 );
setEffRotateKey( SP_star02 + 19, ctga, -10.9 );
setEffRotateKey( SP_star02 + 20, ctga, -14.9 );
setEffRotateKey( SP_star02 + 21, ctga, -14.9 );
setEffRotateKey( SP_star02 + 22, ctga, -10.9 );
setEffRotateKey( SP_star02 + 23, ctga, -10.9 );
setEffRotateKey( SP_star02 + 24, ctga, -14.9 );
setEffRotateKey( SP_star02 + 25, ctga, -14.9 );
setEffRotateKey( SP_star02 + 26, ctga, -10.9 );
setEffRotateKey( SP_star02 + 27, ctga, -10.9 );
setEffRotateKey( SP_star02 + 28, ctga, -14.9 );
setEffRotateKey( SP_star02 + 100, ctga, -14.9 );

setEffAlphaKey( SP_star02 + 14, ctga, 255 );
setEffAlphaKey( SP_star02 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( SP_star02 + 0, 1, 1 );
changeAnime( SP_star02 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( SP_star02 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_star02 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_star02 + 2, 1, 31, -3.9 , 0 );
setMoveKey( SP_star02 + 3, 1, 31, -3.9 , 0 );
setMoveKey( SP_star02 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_star02 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_star02 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_star02 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_star02 + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_star02 + 9, 1, 15, -65.4 , 0 );
setMoveKey( SP_star02 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( SP_star02 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( SP_star02 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( SP_star02 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( SP_star02 + 0, 1, 0.2, 0.2 );
setScaleKey( SP_star02 + 1, 1, 0.2, 0.2 );
setScaleKey( SP_star02 + 2, 1, 0.25, 0.25 );
setScaleKey( SP_star02 + 3, 1, 0.25, 0.25 );
setScaleKey( SP_star02 + 4, 1, 0.46, 0.46 );
setScaleKey( SP_star02 + 5, 1, 0.46, 0.46 );
setScaleKey( SP_star02 + 6, 1, 0.55, 0.55 );
setScaleKey( SP_star02 + 7, 1, 0.55, 0.55 );
setScaleKey( SP_star02 + 8, 1, 0.71, 0.71 );
setScaleKey( SP_star02 + 9, 1, 0.71, 0.71 );
setScaleKey( SP_star02 + 10, 1, 0.97, 0.97 );
setScaleKey( SP_star02 + 11, 1, 0.97, 0.97 );
setScaleKey( SP_star02 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( SP_star02 + 13, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 14, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 15, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 16, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 17, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 18, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 19, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 20, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 21, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 22, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 23, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 24, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 25, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 26, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 100, 1, 1.2, 1.2 );

setRotateKey( SP_star02 + 0, 1, -40 );
setRotateKey( SP_star02 + 1, 1, -40 );
setRotateKey( SP_star02 + 2, 1, 80 );
setRotateKey( SP_star02 + 3, 1, 80 );
setRotateKey( SP_star02 + 4, 1, 200 );
setRotateKey( SP_star02 + 5, 1, 200 );
setRotateKey( SP_star02 + 6, 1, 360 );
setRotateKey( SP_star02 + 7, 1, 360 );
setRotateKey( SP_star02 + 8, 1, 558 );
setRotateKey( SP_star02 + 9, 1, 558 );
setRotateKey( SP_star02 + 10, 1, 425 );
setRotateKey( SP_star02 + 11, 1, 425 );
setRotateKey( SP_star02 + 12, 1, -40 );
setRotateKey( SP_star02 + 100, 1, -40 );

-- ** 音 ** --
playSe( SP_star02 + 0, SE_10 );  --爆発音
playSe( SP_star02 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( SP_star02 + 10 );
entryFade( SP_star02 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( SP_star02 + 100 );

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
setDrawFront(  0, 0, 1);
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 30, 0, 19, 5);
setEffAlphaKey(30, aura, 180);

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
entryFadeBg( 69, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -40,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 1.2, 1.2);

kame_hand02 = entryEffect( 70, SP_01, 0x40,      0,  300,  100,  -40);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand02, 1.2, 1.2);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 70, 0, 49, 5);
setEffAlphaKey(70, aura, 100);

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( 92,  190006, 72, 0x100, -1, 0, 130.9, 535.5 ); --ゴゴゴ
setEffShake( 92, ctgogo, 72, 10 );
 
setEffMoveKey( 92, ctgogo, -130.9, 532.8 , 0 );
setEffMoveKey( 92 +72, ctgogo, -130.9, 535.5 , 0 );

setEffScaleKey( 92, ctgogo, -0.84, 0.84 );
setEffScaleKey( 92 +64, ctgogo, -0.84, 0.84 );
setEffScaleKey( 92 +66, ctgogo, -1.0, 1.0 );
setEffScaleKey( 92 +68, ctgogo, -1.08, 1.08 );
setEffScaleKey( 92 +70, ctgogo, -1.44, 1.44 );
setEffScaleKey( 92 +72, ctgogo, -1.8, 1.8 );
 
setEffRotateKey( 92, ctgogo, 0 );
setEffRotateKey( 92 +72, ctgogo, 0 );

setEffAlphaKey( 92, ctgogo, 0 );
setEffAlphaKey( 92 +1, ctgogo, 255 );
setEffAlphaKey( 92 +2, ctgogo, 255 );
setEffAlphaKey( 92 +72, ctgogo, 255 );


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.8, 1.8);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( 170 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 ); --white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260 + 4, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( 260 + 4,   0, 0.8, 0.8);

setMoveKey(  259 + 4,    0,      0,  0,   0);
setMoveKey(  260 + 4,    0,   -600,  100,   0);
setMoveKey(  261 + 4,    0,   -600,  100,   0);
setMoveKey(  270 + 4,    0,   -200,  100,   0);


-- 途中からカメハメハが伸びる

setMoveKey(  310 + 4,    0,   -200,  100,   0);

setMoveKey(  340 + 4,    0,   -600,  100,   -32);--800
setDisp(  340 + 4, 0, 0);

setMoveKey(  345 + 4,    0,   -400,  100,   -32);--800


-- ** エフェクト等 ** --
entryFadeBg( 260 + 4, 0, 195, 0, 10, 10, 10, 180);       -- ベース暗め　背景
ryuusenn = entryEffectLife( 260 + 4, 921, 195, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 260 + 4,  ryuusenn,  30 );
setEffScaleKey( 260 + 4, ryuusenn, 1.6, 1.6);

kamehame_beam = entryEffect( 260 + 4, SP_02,  0x40+0x100,  0,  300,  140,  -150);   -- 伸びるかめはめ波
setEffRotateKey( 260 + 4,  kamehame_beam,  10 );
setEffAlphaKey(260 + 4, kamehame_beam, 0);

kamehame_beam02 = entryEffect( 260 + 4, SP_02,  0x40+0x80,  0,  300, 140,  -150);   -- 伸びるかめはめ波
setEffRotateKey( 260 + 4,  kamehame_beam02,  10 );
setEffAlphaKey(260 + 4, kamehame_beam02, 255);

--kamehame_beam = entryEffectLife( 260, SP_02, 91, 0x40+0x80,  0,  0,  0,  0);   -- 伸びるかめはめ波

setEffAlphaKey(260 + 4, kamehame_beam, 0);
setEffAlphaKey(260 + 4, kamehame_beam02, 255);


setShakeChara( 260 + 4, 0, 80, 25);

shuchusen = entryEffectLife( 260 + 4, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260 + 4, shuchusen, 1.0, 1.0);
setEffScaleKey( 300 + 4, shuchusen, 1.0, 1.0);
setEffScaleKey( 309 + 4, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 268 + 4, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268 + 4, ct, 32, 5);
setEffAlphaKey(268 + 4, ct, 255);
setEffAlphaKey(290 + 4, ct, 255);
setEffAlphaKey(300 + 4, ct, 0);
setEffScaleKey(268 + 4, ct, 0.0, 0.0);
setEffScaleKey(272 + 4, ct, 1.3, 1.3);
setEffScaleKey(292 + 4, ct, 1.3, 1.3);
setEffScaleKey(300 + 4, ct, 6.0, 6.0);


--[[
playSe( 265 + 4, SE_07);
--playSe( 270, SE_07);
playSe( 280 + 4, SE_07);
--playSe( 290, SE_07);
playSe( 300 + 4, SE_07);
--playSe( 310, SE_07);
]]
--v4.11調整
SE001 = playSe( 265 + 4, SE_07);
stopSe(290 + 4,SE001,5);
--playSe( 270, SE_07);
SE002 = playSe( 280 + 4, SE_07);
stopSe(310 + 4,SE002,5);
--playSe( 290, SE_07);
SE003 = playSe( 300 + 4, SE_07);
stopSe(330 + 4,SE003,5);
--playSe( 310, SE_07);

SE1 = playSeLife( 320 + 4, SE_07 );
--playSe( 320 + 4, SE_07);
--playSe( 330, SE_07);

SP_start = -20 + 4;

setEffAlphaKey(265 + 4, kamehame_beam, 0);
setEffAlphaKey(265 + 4, kamehame_beam02, 255);

setEffAlphaKey(270 + 4, kamehame_beam, 255);
setEffAlphaKey(270 + 4, kamehame_beam02, 0);

setEffAlphaKey(280 + 4, kamehame_beam,0);
setEffAlphaKey(280 + 4, kamehame_beam02, 255);

setEffAlphaKey(290 + 4, kamehame_beam, 255);
setEffAlphaKey(290 + 4, kamehame_beam02, 0);

setEffAlphaKey(300 + 4, kamehame_beam, 0);
setEffAlphaKey(300 + 4, kamehame_beam02, 255);

setEffAlphaKey(310 + 4, kamehame_beam, 255);
setEffAlphaKey(310 + 4, kamehame_beam02, 0);

setEffAlphaKey(320 + 4, kamehame_beam, 0);
setEffAlphaKey(320 + 4, kamehame_beam02, 255);

setEffAlphaKey(330 + 4, kamehame_beam, 255);
setEffAlphaKey(330 + 4, kamehame_beam02, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 331; --エンドフェイズのフレーム数を置き換える
stopSe( SP_dodge + 0, SE1, 0 );

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge + 0,    0,   -200,  100,   0);
setMoveKey( SP_dodge + 8,    0,   -600,  100,   -32);--800

setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
--setDisp( SP_start+ 370, 0, 0);
setShake( SP_start+ 375,82, 20);

setDisp( SP_start+ 365, 1, 1);
changeAnime( SP_start+ 365, 1, 104);                        -- ガード
setMoveKey( SP_start+  364,    1,  235,  -100,   0);
setMoveKey( SP_start+  365,    1,  235,  -100,   0);
setMoveKey( SP_start+  366,    1,  235,  -100,   0);
setScaleKey( SP_start+ 364,    1,  0.7, 0.7);
setScaleKey( SP_start+ 365,    1,  0.7, 0.7);

setMoveKey( SP_start+  375,    1,   70,  0,   0);
setScaleKey( SP_start+  375,   1,   1.6,  1.6);


setDamage( SP_start+ 355, 1, 0);  -- ダメージ振動等


changeAnime( SP_start+ 375, 1, 108);

--playSe( SP_start+ 355, SE_09);
--[[
playSe( SP_start+ 375, SE_09);
playSe( SP_start+ 390, SE_09);
playSe( SP_start+ 410, SE_09);
playSe( SP_start+ 430, SE_09);
playSe( SP_start+ 445, SE_10);
]]
--v4.11調整
playSe( SP_start+ 375, SE_09);
setSeVolume(SP_start+ 375,SE_09,90);
playSe( SP_start+ 390, SE_09);
setSeVolume(SP_start+ 390,SE_09,90);
playSe( SP_start+ 410, SE_09);
setSeVolume(SP_start+ 410,SE_09,90);
playSe( SP_start+ 430, SE_09);
setSeVolume(SP_start+ 430,SE_09,90);
playSe( SP_start+ 445, SE_10);
setSeVolume(SP_start+ 445,SE_09,90);


-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, -70);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+395, ct, 255);
setEffAlphaKey( SP_start+405, ct, 0);

SP_star02 = 458;

entryFade( SP_star02 - 8, 6, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------
setDisp( SP_star02, 0, 0);
setScaleKey( SP_star02, 0, 0.8, 0.8);

-- ** エフェクト等 ** --
setShakeChara( SP_star02, 1, 10, 5);


-- ** 爆発 ** --
bakuhatsu = entryEffect( SP_star02 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( SP_star02 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( SP_star02 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( SP_star02 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( SP_star02 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( SP_star02 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( SP_star02 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( SP_star02 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( SP_star02 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( SP_star02 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( SP_star02 + 0, bakuhatsu, 0 );
setEffRotateKey( SP_star02 + 100, bakuhatsu, 0 );

setEffAlphaKey( SP_star02 + 0, bakuhatsu, 255 );
setEffAlphaKey( SP_star02 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( SP_star02 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( SP_star02 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( SP_star02 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( SP_star02 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( SP_star02 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( SP_star02 + 2, hibiware, 0 );
setEffRotateKey( SP_star02 + 100, hibiware, 0 );

setEffAlphaKey( SP_star02 + 2, hibiware, 0 );
setEffAlphaKey( SP_star02 + 13, hibiware, 0 );
setEffAlphaKey( SP_star02 + 14, hibiware, 255 );
setEffAlphaKey( SP_star02 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( SP_star02 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( SP_star02 + 14, shuchusen3, 32, 25 );

setEffMoveKey( SP_star02 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( SP_star02 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( SP_star02 + 14, shuchusen3, 1, 1 );
setEffScaleKey( SP_star02 + 46, shuchusen3, 1, 1 );

setEffRotateKey( SP_star02 + 14, shuchusen3, 0 );
setEffRotateKey( SP_star02 + 46, shuchusen3, 0 );

setEffAlphaKey( SP_star02 + 14, shuchusen3, 255 );
setEffAlphaKey( SP_star02 + 28, shuchusen3, 255 );
setEffAlphaKey( SP_star02 + 30, shuchusen3, 252 );
setEffAlphaKey( SP_star02 + 32, shuchusen3, 242 );
setEffAlphaKey( SP_star02 + 34, shuchusen3, 227 );
setEffAlphaKey( SP_star02 + 36, shuchusen3, 205 );
setEffAlphaKey( SP_star02 + 38, shuchusen3, 176 );
setEffAlphaKey( SP_star02 + 40, shuchusen3, 142 );
setEffAlphaKey( SP_star02 + 42, shuchusen3, 101 );
setEffAlphaKey( SP_star02 + 44, shuchusen3, 54 );
setEffAlphaKey( SP_star02 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( SP_star02 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( SP_star02 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( SP_star02 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( SP_star02 + 14, shuchusen4, 1, 1 );
setEffScaleKey( SP_star02 + 100, shuchusen4, 1, 1 );

setEffRotateKey( SP_star02 + 14, shuchusen4, 0 );
setEffRotateKey( SP_star02 + 100, shuchusen4, 0 );

setEffAlphaKey( SP_star02 + 14, shuchusen4, 255 );
setEffAlphaKey( SP_star02 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( SP_star02 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( SP_star02 + 14, ctga, 14, 20 );

setEffMoveKey( SP_star02 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( SP_star02 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( SP_star02 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( SP_star02 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( SP_star02 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( SP_star02 + 14, ctga, -10.9 );
setEffRotateKey( SP_star02 + 15, ctga, -10.9 );
setEffRotateKey( SP_star02 + 16, ctga, -14.9 );
setEffRotateKey( SP_star02 + 17, ctga, -14.9 );
setEffRotateKey( SP_star02 + 18, ctga, -10.9 );
setEffRotateKey( SP_star02 + 19, ctga, -10.9 );
setEffRotateKey( SP_star02 + 20, ctga, -14.9 );
setEffRotateKey( SP_star02 + 21, ctga, -14.9 );
setEffRotateKey( SP_star02 + 22, ctga, -10.9 );
setEffRotateKey( SP_star02 + 23, ctga, -10.9 );
setEffRotateKey( SP_star02 + 24, ctga, -14.9 );
setEffRotateKey( SP_star02 + 25, ctga, -14.9 );
setEffRotateKey( SP_star02 + 26, ctga, -10.9 );
setEffRotateKey( SP_star02 + 27, ctga, -10.9 );
setEffRotateKey( SP_star02 + 28, ctga, -14.9 );
setEffRotateKey( SP_star02 + 100, ctga, -14.9 );

setEffAlphaKey( SP_star02 + 14, ctga, 255 );
setEffAlphaKey( SP_star02 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( SP_star02 + 0, 1, 1 );
changeAnime( SP_star02 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( SP_star02 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_star02 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( SP_star02 + 2, 1, 31, -3.9 , 0 );
setMoveKey( SP_star02 + 3, 1, 31, -3.9 , 0 );
setMoveKey( SP_star02 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_star02 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( SP_star02 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_star02 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( SP_star02 + 8, 1, 15, -65.4 , 0 );
setMoveKey( SP_star02 + 9, 1, 15, -65.4 , 0 );
setMoveKey( SP_star02 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( SP_star02 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( SP_star02 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( SP_star02 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( SP_star02 + 0, 1, 0.2, 0.2 );
setScaleKey( SP_star02 + 1, 1, 0.2, 0.2 );
setScaleKey( SP_star02 + 2, 1, 0.25, 0.25 );
setScaleKey( SP_star02 + 3, 1, 0.25, 0.25 );
setScaleKey( SP_star02 + 4, 1, 0.46, 0.46 );
setScaleKey( SP_star02 + 5, 1, 0.46, 0.46 );
setScaleKey( SP_star02 + 6, 1, 0.55, 0.55 );
setScaleKey( SP_star02 + 7, 1, 0.55, 0.55 );
setScaleKey( SP_star02 + 8, 1, 0.71, 0.71 );
setScaleKey( SP_star02 + 9, 1, 0.71, 0.71 );
setScaleKey( SP_star02 + 10, 1, 0.97, 0.97 );
setScaleKey( SP_star02 + 11, 1, 0.97, 0.97 );
setScaleKey( SP_star02 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( SP_star02 + 13, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 14, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 15, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 16, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 17, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 18, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 19, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 20, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 21, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 22, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 23, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 24, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 25, 1, 1.1, 1.1 );
setScaleKey( SP_star02 + 26, 1, 1.2, 1.2 );
setScaleKey( SP_star02 + 100, 1, 1.2, 1.2 );

setRotateKey( SP_star02 + 0, 1, -40 );
setRotateKey( SP_star02 + 1, 1, -40 );
setRotateKey( SP_star02 + 2, 1, 80 );
setRotateKey( SP_star02 + 3, 1, 80 );
setRotateKey( SP_star02 + 4, 1, 200 );
setRotateKey( SP_star02 + 5, 1, 200 );
setRotateKey( SP_star02 + 6, 1, 360 );
setRotateKey( SP_star02 + 7, 1, 360 );
setRotateKey( SP_star02 + 8, 1, 558 );
setRotateKey( SP_star02 + 9, 1, 558 );
setRotateKey( SP_star02 + 10, 1, 425 );
setRotateKey( SP_star02 + 11, 1, 425 );
setRotateKey( SP_star02 + 12, 1, -40 );
setRotateKey( SP_star02 + 100, 1, -40 );

-- ** 音 ** --
playSe( SP_star02 + 0, SE_10 );  --爆発音
playSe( SP_star02 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( SP_star02 + 10 );
entryFade( SP_star02 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( SP_star02 + 100 );

end
