

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
SE_07 = 1030; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

--SP_01 = 100000;
SP_02 = 108009;
SP_03 = 108010;

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

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

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
--playSe( 170+64, SE_06);
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
--playSe( 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
SP_ATK_31=370;
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
setDisp( 371, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード

setMoveKey(  SP_ATK_31,    1,   700,  0,   0);
setMoveKey(  SP_ATK_31+39,  1,  0,  0,   0);
setScaleKey( SP_ATK_31, 1,  1.8, 1.8);
setScaleKey( SP_ATK_31+39, 1,  1.8, 1.8);

entryFadeBg( SP_ATK_31, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_ATK_31, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 391; --エンドフェイズのフレーム数を置き換える

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

SP_ATK_31=370;

kamehame_beam3 = entryEffectLife( SP_ATK_31+24, SP_03, 15, 0x40+0x80, 0, 0, 0, 0);

setEffScaleKey(  SP_ATK_31+24, kamehame_beam3, 0.8, 0.8 );
setEffScaleKey(  SP_ATK_31+39, kamehame_beam3, 0.8, 0.8 );
setEffMoveKey(  SP_ATK_31+24,  kamehame_beam3, -700,  0,   5);
setEffMoveKey(  SP_ATK_31+29,  kamehame_beam3, -400,  0,   5);
setEffMoveKey(  SP_ATK_31+34,  kamehame_beam3, -200,  0,   5);
setEffMoveKey(  SP_ATK_31+39,  kamehame_beam3, 0,  0,   5);

entryEffect( SP_ATK_31+40, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setDisp( SP_ATK_31+40, 1, 0);

--end

playSe( SP_ATK_31+33, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_31+20+5, 1, 99, 20);



-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_31, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK_31, ct, 99, 20);
setEffScaleKey( SP_ATK_31, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK_31, ct, 70);
setEffAlphaKey(SP_ATK_31, ct, 255);
setEffAlphaKey(SP_ATK_31+20+5, ct, 255);
setEffAlphaKey(SP_ATK_31+25+5, ct, 0);


-- ヒットエフェクト
--hit_eff_1 = entryEffect( SP_ATK_31+32,  4,  0x40,  -1,  0,  300, 600);--HIT
--hit_eff_2 = entryEffect( SP_ATK_31+32,  906,  0x40,  -1,  0,  300, 600);
--hit_eff_3 = entryEffect( SP_ATK_31+32,  908,  0x40,  -1,  0,  300, 600);

--setEffScaleKey( SP_ATK_31+32, hit_eff_1, 1.5, 1.5);
--setEffScaleKey( SP_ATK_31+32, hit_eff_2, 1.5, 1.5);
--setEffScaleKey( SP_ATK_31+32, hit_eff_3, 1.5, 1.5);

entryFade( SP_ATK_31+39, 4,  5, 3, 255, 255, 255, 255);     -- white fade

removeAllEffect(SP_ATK_31+44);


SP_ATK_41=SP_ATK_31+39+5;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_41, 1, 1);
setMoveKey(  SP_ATK_41,    1,  100,  0,   0);
setScaleKey( SP_ATK_41,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_41+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_41+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_41+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_41+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_41+9, SE_10);

setMoveKey(  SP_ATK_41+9,   1,    0,   0,   128);
setMoveKey(  SP_ATK_41+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( SP_ATK_41+17, 1, 0);  -- ダメージ振動等
setShake(SP_ATK_41+8,6,15);
setShake(SP_ATK_41+14,15,10);

setRotateKey( SP_ATK_41+1,  1,  30 );
setRotateKey( SP_ATK_41+3,  1,  80 );
setRotateKey( SP_ATK_41+5,  1, 120 );
setRotateKey( SP_ATK_41+7,  1, 160 );
setRotateKey( SP_ATK_41+9,  1, 200 );
setRotateKey( SP_ATK_41+11,  1, 260 );
setRotateKey( SP_ATK_41+13,  1, 320 );
setRotateKey( SP_ATK_41+15,  1,   0 );

setShakeChara( SP_ATK_41+16, 1, 5,  10);
setShakeChara( SP_ATK_41+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_41+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK_41+16, ct, 30, 10);
setEffRotateKey( SP_ATK_41+16, ct, -40);
setEffScaleKey( SP_ATK_41+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_41+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_41+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_41+19, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_41+20, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_41+21, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_41+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_41+16, ct, 255);
setEffAlphaKey( SP_ATK_41+106, ct, 255);
setEffAlphaKey( SP_ATK_41+116, ct, 0);

playSe( SP_ATK_41+4, SE_11);
shuchusen = entryEffectLife( SP_ATK_41+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_41+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_41+17);

entryFade( SP_ATK_41+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_41+111);
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

--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

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
--playSe( 170+64, SE_06);
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
--playSe( 300, SE_07);
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
SP_ATK_31=370;
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
setDisp( 371, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード

setMoveKey(  SP_ATK_31,    1,   700,  0,   0);
setMoveKey(  SP_ATK_31+39,  1,  0,  0,   0);
setScaleKey( SP_ATK_31, 1,  1.8, 1.8);
setScaleKey( SP_ATK_31+39, 1,  1.8, 1.8);

entryFadeBg( SP_ATK_31, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_ATK_31, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 391; --エンドフェイズのフレーム数を置き換える

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

SP_ATK_31=370;

kamehame_beam3 = entryEffectLife( SP_ATK_31+24, SP_03, 15, 0x40+0x80, 0, 0, 0, 0);

setEffScaleKey(  SP_ATK_31+24, kamehame_beam3, 0.8, 0.8 );
setEffScaleKey(  SP_ATK_31+39, kamehame_beam3, 0.8, 0.8 );
setEffMoveKey(  SP_ATK_31+24,  kamehame_beam3, -700,  0,   5);
setEffMoveKey(  SP_ATK_31+29,  kamehame_beam3, -400,  0,   5);
setEffMoveKey(  SP_ATK_31+34,  kamehame_beam3, -200,  0,   5);
setEffMoveKey(  SP_ATK_31+39,  kamehame_beam3, 0,  0,   5);

entryEffect( SP_ATK_31+40, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setDisp( SP_ATK_31+40, 1, 0);

--end

playSe( SP_ATK_31+33, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_ATK_31+20+5, 1, 99, 20);



-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_31, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK_31, ct, 99, 20);
setEffScaleKey( SP_ATK_31, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK_31, ct, 10);
setEffAlphaKey(SP_ATK_31, ct, 255);
setEffAlphaKey(SP_ATK_31+20+5, ct, 255);
setEffAlphaKey(SP_ATK_31+25+5, ct, 0);


-- ヒットエフェクト
--hit_eff_1 = entryEffect( SP_ATK_31+32,  4,  0x40,  -1,  0,  300, 600);--HIT
--hit_eff_2 = entryEffect( SP_ATK_31+32,  906,  0x40,  -1,  0,  300, 600);
--hit_eff_3 = entryEffect( SP_ATK_31+32,  908,  0x40,  -1,  0,  300, 600);

--setEffScaleKey( SP_ATK_31+32, hit_eff_1, 1.5, 1.5);
--setEffScaleKey( SP_ATK_31+32, hit_eff_2, 1.5, 1.5);
--setEffScaleKey( SP_ATK_31+32, hit_eff_3, 1.5, 1.5);

entryFade( SP_ATK_31+39, 4,  5, 3, 255, 255, 255, 255);     -- white fade

removeAllEffect(SP_ATK_31+44);



SP_ATK_41=SP_ATK_31+39+5;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_41, 1, 1);
setMoveKey(  SP_ATK_41,    1,  100,  0,   0);
setScaleKey( SP_ATK_41,    1,  1.0, 1.0);
setMoveKey(  SP_ATK_41+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_41+1,    1,  0.1, 0.1);

changeAnime( SP_ATK_41+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_41+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_41+9, SE_10);

setMoveKey(  SP_ATK_41+9,   1,    0,   0,   128);
setMoveKey(  SP_ATK_41+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( SP_ATK_41+17, 1, 0);  -- ダメージ振動等
setShake(SP_ATK_41+8,6,15);
setShake(SP_ATK_41+14,15,10);

setRotateKey( SP_ATK_41+1,  1,  30 );
setRotateKey( SP_ATK_41+3,  1,  80 );
setRotateKey( SP_ATK_41+5,  1, 120 );
setRotateKey( SP_ATK_41+7,  1, 160 );
setRotateKey( SP_ATK_41+9,  1, 200 );
setRotateKey( SP_ATK_41+11,  1, 260 );
setRotateKey( SP_ATK_41+13,  1, 320 );
setRotateKey( SP_ATK_41+15,  1,   0 );

setShakeChara( SP_ATK_41+16, 1, 5,  10);
setShakeChara( SP_ATK_41+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_41+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_ATK_41+16, ct, 30, 10);
setEffRotateKey( SP_ATK_41+16, ct, -40);
setEffScaleKey( SP_ATK_41+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_41+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_41+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_41+19, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_41+20, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_41+21, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_41+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_41+16, ct, 255);
setEffAlphaKey( SP_ATK_41+106, ct, 255);
setEffAlphaKey( SP_ATK_41+116, ct, 0);

playSe( SP_ATK_41+4, SE_11);
shuchusen = entryEffectLife( SP_ATK_41+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_41+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_41+17);

entryFade( SP_ATK_41+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_41+111);

end
