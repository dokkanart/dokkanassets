print ("[lua]sp0021");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 103096;
SP_02 = 103097;
SP_03 = 103098;
SP_04 = 103099;
SP_05 = 103100;
--SP_06 = 102169;
--SP_07 = 102170;
--SP_08 = 102171;
--SP_09 = 102172;

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

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   10,   0,    -104, -134,   0);
setMoveKey(   99,   0,    -154, -184,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   10,   0, 2.3, 2.3);
setScaleKey(   99,   0, 3.0, 3.0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--[[

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
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

]]--

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 2);                       -- 溜め!
--playSe( 3, SE_03);

setShakeChara( 0, 0, 54, 50);

--entryEffect(  1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--カットインは元のフレームから+70にしておく ＊フェードやゴゴゴも同じく
speff = entryEffect(  81,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  81,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 81, 1042);

--ryu = entryEffectLife( 1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 1, ryu, -90);
--setEffScaleKey( 1, ryu, 2.0, 2.0);
shuchusen = entryEffectLife( 1, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 1, shuchusen, 1.0, 1.0);
setEffScaleKey( 41, shuchusen, 1.0, 1.0);
setEffScaleKey( 50, shuchusen, 2.0, 2.0);

shuchusen = entryEffectLife( 77, 906, 93, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 77, shuchusen, 1.0, 1.0);
setEffScaleKey( 111, shuchusen, 1.0, 1.0);
--setEffScaleKey( 120, shuchusen, 2.0, 2.0);

kame_hand = entryEffect( 1, SP_01, 0x80,      -1,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, 1.0, 1.0);

kame_hand2 = entryEffect( 77, SP_02 ,0x80,      -1,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 77, kame_hand2, 1.0, 1.0);
setEffShake(77, kame_hand2, 93, 15);

entryFade( 166, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  1,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 1, aura, 1.5, 1.5);
setShakeChara( 1, 0, 99, 5);
entryFadeBg( 1, 0, 169, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( 91, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(91, ct, 40, 8);
setEffScaleKey(91, ct, 1.4, 1.4);

--以下の演出は元のフレームから+70盛っておく

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 170,   0, 1.5, 1.5);
setScaleKey( 171,   0, 1.0, 1.0);

playSe( 171, SE_05);
speff = entryEffect(  171,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 256, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 240+64-69, SE_06);  ---69  --165


--kamehame_beam = entryEffectLife( 261, SP_03, 109, 0,  0,  300,  0,  0);   -- 伸びるかめはめ波


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 260, 0, 0);
changeAnime( 261, 0, 31);                                    -- かめはめ発射ポーズ

--setMoveKey(  190,    0,      0,  0,   0);
--setMoveKey(  191,    0,   -600,  0,   0);
--setMoveKey(  192,    0,   -600,  0,   0);
--setMoveKey(  201,    0,   -100,  0,   0);

kamehame_beam = entryEffect( 261, SP_03, 0,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffAlphaKey( 261, kamehame_beam, 0);
setEffAlphaKey( 262, kamehame_beam, 0);
setEffAlphaKey( 263, kamehame_beam, 255);

kamehame_beam = entryEffect( 407, SP_04, 0,  -1,  300,  0,  0);   -- 伸びるかめはめ波
--setEffAlphaKey( 261, kamehame_beam, 0);
--setEffAlphaKey( 262, kamehame_beam, 0);
--setEffAlphaKey( 263, kamehame_beam, 255);

playSe( 261, SE_04);
--playSe( 191, SE_07);

--spname = entryEffect( 261, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -100,  0,   0);
setMoveKey(  301,    0,   -100,  0,   0);
setMoveKey(  309,    0,   -1100,  0,   0);

entryFade( 519, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 261, 0, 309, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 261, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 301, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


--ryu = entryEffectLife( 261, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 261, ryu, -90);
--setEffScaleKey( 261, ryu, 2.0, 2.0);

--setShakeChara( 306, 0, 54, 50);

shuchusen = entryEffectLife( 261, 906, 262, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 261, shuchusen, 1.0, 1.0);
setEffScaleKey( 301, shuchusen, 1.0, 1.0);
setEffScaleKey( 310, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 269, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(269, ct, 32, 5);
setEffAlphaKey(269, ct, 255);
setEffAlphaKey(291, ct, 255);
setEffAlphaKey(301, ct, 0);
setEffScaleKey(269, ct, 0.0, 0.0);
setEffScaleKey(273, ct, 1.3, 1.3);
setEffScaleKey(293, ct, 1.3, 1.3);
setEffScaleKey(301, ct, 6.0, 6.0);
playSe( 301, SE_04);

playSe( 409, 1043);
playSe( 425, 1043);
playSe( 435, 1043);
playSe( 480, 1043);


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( 522, 1, 1);
setDisp( 615, 1, 0);
changeAnime( 522, 1, 102);                        -- ガード
setMoveKey(  522,    1,  500,  -500,   0);
--setMoveKey(  568,    1,  850,  -850,   0);
setMoveKey(  575,    1,  200,  -200,   0);
setMoveKey(  615,    1,  200,  -200,   0);
--setMoveKey(  301,    1,  0,  0,   0);
--setMoveKey(  302,    1,  0,  0,   0);
--setMoveKey(  544,    1,  0,  0,   0);
setScaleKey( 522,    1,  1.5, 1.5);
setScaleKey( 615,    1,  1.5, 1.5);

setShakeChara( 522, 1, 154, 20);

playSe( 537, 1043);


kamehamebeam2 = entryEffect( 523, SP_05,   0, -1,  0,  0,  0);   -- 
setEffScaleKey(523, kamehamebeam2, 1, 1);
setEffScaleKey(605, kamehamebeam2, 1, 1);
--setEffShake(523, kame_hand2, 100, 20);
--setEffScaleKey(607, kamehame_beam2, 2.5, 2.5);
setDamage( 607, 1, 0);  -- ダメージ振動等


-- ** エフェクト等 ** --
entryFadeBg( 523, 0, 309, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 523, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 563, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


 shuchusen2 = entryEffectLife( 523, 906, 177, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 523, shuchusen2, 1.0, 1.0);
setEffScaleKey( 561, shuchusen2, 1.0, 1.0);
setEffScaleKey( 571, shuchusen2, 2.0, 2.0);

ryu3 = entryEffectLife( 523, 921, 117, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 523, ryu3, 40);
setEffScaleKey(523, ryu3, 2, 2);


-- 書き文字エントリー
ct = entryEffectLife( 523, 10014, 99, 0, -1, 0, -50, 305); -- ズドドッ
setEffShake(523, ct, 99, 20);
setEffScaleKey( 523, ct, 2.4, 2.4);
setEffRotateKey(523, ct, 70);
setEffAlphaKey(523, ct, 255);
setEffAlphaKey(583, ct, 255);
setEffAlphaKey(603, ct, 0);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 550; --エンドフェイズのフレーム数を置き換える

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

playSe( 555, 1043);

playSe( 588, 1023);
playSe( 625, 1023);

entryFade( 636, 5,  4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 爆発
------------------------------------------------------



bom = entryEffect( 640, 1567, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波

playSe( 649, 1023);
playSe( 689, 1024);
playSe( 757, 1024);

-- ダメージ表示
dealDamage(657);

entryFade( 811, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(821);

else



--敵だよ
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

--[[

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
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

]]--

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 2);                       -- 溜め!
--playSe( 3, SE_03);

setShakeChara( 0, 0, 54, 50);

--entryEffect(  1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--カットインは元のフレームから+70にしておく ＊フェードやゴゴゴも同じく
--speff = entryEffect(  81,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  81,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 81, 1042);

--ryu = entryEffectLife( 1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 1, ryu, -90);
--setEffScaleKey( 1, ryu, 2.0, 2.0);
shuchusen = entryEffectLife( 1, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 1, shuchusen, 1.0, 1.0);
setEffScaleKey( 41, shuchusen, 1.0, 1.0);
setEffScaleKey( 50, shuchusen, 2.0, 2.0);

shuchusen = entryEffectLife( 77, 906, 93, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 77, shuchusen, 1.0, 1.0);
setEffScaleKey( 111, shuchusen, 1.0, 1.0);
--setEffScaleKey( 120, shuchusen, 2.0, 2.0);

kame_hand = entryEffect( 1, SP_01, 0x80,      -1,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, -1.0, 1.0);

kame_hand2 = entryEffect( 77, SP_02 ,0x80,      -1,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 77, kame_hand2, -1.0, 1.0);
setEffShake(77, kame_hand2, 93, 15);

entryFade( 166, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  1,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 1, aura, 1.5, 1.5);
setShakeChara( 1, 0, 99, 5);
entryFadeBg( 1, 0, 169, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( 91, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(91, ct, 40, 8);
setEffScaleKey(91, ct, 1.4, 1.4);

--以下の演出は元のフレームから+70盛っておく

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 170,   0, 1.5, 1.5);
setScaleKey( 171,   0, 1.0, 1.0);

playSe( 171, SE_05);
speff = entryEffect(  171,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 256, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 240+64-69, SE_06);  ---69  --165


--kamehame_beam = entryEffectLife( 261, SP_03, 109, 0,  0,  300,  0,  0);   -- 伸びるかめはめ波


------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 260, 0, 0);
changeAnime( 261, 0, 31);                                    -- かめはめ発射ポーズ

--setMoveKey(  190,    0,      0,  0,   0);
--setMoveKey(  191,    0,   -600,  0,   0);
--setMoveKey(  192,    0,   -600,  0,   0);
--setMoveKey(  201,    0,   -100,  0,   0);

kamehame_beam = entryEffect( 261, SP_03, 0,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffAlphaKey( 261, kamehame_beam, 0);
setEffAlphaKey( 262, kamehame_beam, 0);
setEffAlphaKey( 263, kamehame_beam, 255);
setEffScaleKey( 261, kamehame_beam, -1.0, 1.0);

kamehame_beam = entryEffect( 407, SP_04, 0,  -1,  300,  0,  0);   -- 伸びるかめはめ波
--setEffAlphaKey( 261, kamehame_beam, 0);
--setEffAlphaKey( 262, kamehame_beam, 0);
--setEffAlphaKey( 263, kamehame_beam, 255);

playSe( 261, SE_04);
--playSe( 191, SE_07);

--spname = entryEffect( 261, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -100,  0,   0);
setMoveKey(  301,    0,   -100,  0,   0);
setMoveKey(  309,    0,   -1100,  0,   0);

entryFade( 519, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 261, 0, 309, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 261, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 301, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


--ryu = entryEffectLife( 261, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 261, ryu, -90);
--setEffScaleKey( 261, ryu, 2.0, 2.0);

--setShakeChara( 306, 0, 54, 50);

shuchusen = entryEffectLife( 261, 906, 262, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 261, shuchusen, 1.0, 1.0);
setEffScaleKey( 301, shuchusen, 1.0, 1.0);
setEffScaleKey( 310, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 269, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(269, ct, 32, 5);
setEffAlphaKey(269, ct, 255);
setEffAlphaKey(291, ct, 255);
setEffAlphaKey(301, ct, 0);
setEffScaleKey(269, ct, 0.0, 0.0);
setEffScaleKey(273, ct, 1.3, 1.3);
setEffScaleKey(293, ct, 1.3, 1.3);
setEffScaleKey(301, ct, 6.0, 6.0);
playSe( 301, SE_04);

playSe( 409, 1043);
playSe( 425, 1043);
playSe( 435, 1043);
playSe( 480, 1043);


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( 522, 1, 1);
setDisp( 615, 1, 0);
changeAnime( 522, 1, 102);                        -- ガード
setMoveKey(  522,    1,  500,  -500,   0);
--setMoveKey(  568,    1,  850,  -850,   0);
setMoveKey(  575,    1,  200,  -200,   0);
setMoveKey(  615,    1,  200,  -200,   0);
--setMoveKey(  301,    1,  0,  0,   0);
--setMoveKey(  302,    1,  0,  0,   0);
--setMoveKey(  544,    1,  0,  0,   0);
setScaleKey( 522,    1,  1.5, 1.5);
setScaleKey( 615,    1,  1.5, 1.5);

setShakeChara( 522, 1, 154, 20);

playSe( 537, 1043);



kamehamebeam2 = entryEffect( 523, SP_05,   0, -1,  0,  0,  0);   -- ザーボンドドリアが敵を挟む
setEffScaleKey(523, kamehamebeam2, 1, 1);
setEffScaleKey(605, kamehamebeam2, 1, 1);
--setEffShake(523, kame_hand2, 100, 20);
--setEffScaleKey(607, kamehame_beam2, 2.5, 2.5);
setDamage( 607, 1, 0);  -- ダメージ振動等


-- ** エフェクト等 ** --
entryFadeBg( 523, 0, 309, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 523, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 563, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


 shuchusen2 = entryEffectLife( 523, 906, 177, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 523, shuchusen2, 1.0, 1.0);
setEffScaleKey( 561, shuchusen2, 1.0, 1.0);
setEffScaleKey( 571, shuchusen2, 2.0, 2.0);

ryu3 = entryEffectLife( 523, 921, 117, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 523, ryu3, 40);
setEffScaleKey(523, ryu3, 2, 2);


-- 書き文字エントリー
ct = entryEffectLife( 523, 10014, 99, 0, -1, 0, -50, 305); -- ズドドッ
setEffShake(523, ct, 99, 20);
setEffScaleKey( 523, ct, 2.4, 2.4);
setEffRotateKey(523, ct, -70);
setEffAlphaKey(523, ct, 255);
setEffAlphaKey(583, ct, 255);
setEffAlphaKey(603, ct, 0);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 550; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
setEffScaleKey( SP_dodge, speff, 1.0, 1.0);
setEffAlphaKey( SP_dodge, speff, 255);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------

playSe( 555, 1043);

playSe( 588, 1023);
playSe( 625, 1023);

entryFade( 636, 5,  4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



------------------------------------------------------
-- 爆発
------------------------------------------------------



bom = entryEffect( 640, 1567, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波

playSe( 649, 1023);
playSe( 689, 1024);
playSe( 757, 1024);

-- ダメージ表示
dealDamage(657);

entryFade( 811, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(821);

end
