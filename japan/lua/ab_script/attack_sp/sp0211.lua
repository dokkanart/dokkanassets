
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

tyo = -40;
tyo2 = -60;

SP_01 = 100284; --登場時
SP_02 = 100285; --光弾発射
SP_03 = 100286; --迫る
SP_04 = 1569; --地球から波動砲


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 2.0, 2.0);
setScaleKey(   1,   0, 2.0, 2.0);
setVisibleUI(0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 17);                  -- かめはめ波溜め

entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 0, SE_01);

--playSe( 20, SE_03);
--playSe( 50, SE_03);

entryFade( 35, 7, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 47, 0, 0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 47, 0x40,  0,  1,  0,  -20); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 19, 5);

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

--changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 53, SE_03);

entryEffect(  50,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  50,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  60,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  60,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 60, SE_04);

playSe( 70, SE_03);
playSe( 90, SE_03);
playSe( 110, SE_03);
--playSe( 130, SE_03);

entryFade( 145, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(   149,   0, 2.5, 2.5);

-- ** エフェクト等 ** 
aura = entryEffectLife(  50,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setShakeChara( 50, 0, 49, 5);

setEffRotateKey( 50,aura,-40);
setEffRotateKey( 65,aura, 0);
setEffScaleKey( 50, aura, 10.0, 10.0);
setEffScaleKey( 65, aura, 2.0, 2.0);
setEffScaleKey( 150, aura, 1.7, 1.7);

setEffMoveKey( 50, aura, 0,  -530, 0);
setEffMoveKey( 65, aura, 0,  -130, 0);
setEffMoveKey( 141, aura, 0,  -110, 0);

kame_hand = entryEffect( 50, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffShake(50, kame_hand, 100, 15);

-- 書き文字エントリー
ct = entryEffectLife( 70, 10008, 39, 0x100, -1, 0, -230, 300);    -- ゴゴゴ・・・
setEffShake(70, ct, 40, 8);
setEffScaleKey(70, ct, 1.4, 1.4);


spep_2 = 150;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setMoveKey(  spep_3-2,    0,  0,  0,   0);

--playSe( spep_3, SE_04);

setShake(spep_3,38, 8);
setShake(spep_3+38,137, 20);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  0, 50);   -- 伸びるかめはめ波
playSe( spep_3+10, SE_04);

playSe( spep_3+10, SE_03);
playSe( spep_3+30, SE_03);
playSe( spep_3+50, SE_03);
playSe( spep_3+70, SE_03);
playSe( spep_3+90, SE_03);

setEffShake(spep_3, kamehame_beam, 170, 20);

--playSe( spep_3+70, SE_03);
--playSe( spep_3+95, SE_03);

shuchusen = entryEffectLife( spep_3, 906, 175, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+166, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+175, shuchusen, 2.0, 2.0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 186, 0, 0, 0, 0, 200);       -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_3+125, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+125, ct, 32, 5);
setEffAlphaKey(spep_3+125, ct, 255);
setEffAlphaKey(spep_3+145, ct, 255);
setEffAlphaKey(spep_3+175, ct, 0);
setEffScaleKey(spep_3+125, ct, 0.0, 0.0);
setEffScaleKey(spep_3+165, ct, 1.3, 1.3);
setEffScaleKey(spep_3+175, ct, 6.0, 6.0);

playSe( spep_3+105, SE_07);

entryFade( spep_3+170, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+133);

spep_4=spep_3+170+10; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-5, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  spep_4-5,    1,   120,  0,   0);
setMoveKey(  spep_4-5,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setScaleKey(  spep_4-5,   1,   1.6,  1.6);
setScaleKey( spep_4-5,    1,  1, 1);

setMoveKey(  spep_4+38,    1,   120,  -270,   0);
setScaleKey(  spep_4+38,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);
entryFade( spep_4+32, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_4+38, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+72, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+72, 1, 0);  -- ダメージ振動等

--setEffShake(spep_3, kamehame_beam2, 90, 20);

playSe( spep_4+75, SE_09);
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4-1, 0, 100, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+25, ct, 255);
setEffAlphaKey(spep_4+35, ct, 0);

ct = entryEffectLife( spep_4+60, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+60, ct, 99, 20);
setEffScaleKey( spep_4+60, ct, 0.1, 0.1);
setEffScaleKey( spep_4+65, ct, 2.4, 2.4);
setEffScaleKey( spep_4+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+60, ct, 255);
setEffAlphaKey(spep_4+75, ct, 255);
setEffAlphaKey(spep_4+90, ct, 0);

entryFade( spep_4+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+82+17 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 447; --エンドフェイズのフレーム数を置き換える

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

entryEffect( spep_5,SP_04,0,-1,0,0,0);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

playSe( spep_5+4, 1022);


-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+98, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);
else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 17);                  -- かめはめ波溜め

entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 0, SE_01);

--playSe( 20, SE_03);
--playSe( 50, SE_03);

entryFade( 35, 7, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 47, 0, 0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 47, 0x40,  0,  1,  0,  -20); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 19, 5);

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
--setVisibleUI(49, 0);
--changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 53, SE_03);

entryEffect(  50,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  50,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  60,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  60,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]
playSe( 60, SE_04);

playSe( 70, SE_03);
playSe( 90, SE_03);
playSe( 110, SE_03);
--playSe( 130, SE_03);

entryFade( 145, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey(   149,   0, 2.5, 2.5);

-- ** エフェクト等 ** 
aura = entryEffectLife(  50,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setShakeChara( 50, 0, 49, 5);
setEffRotateKey( 50,aura,-40);
setEffRotateKey( 65,aura, 0);
setEffScaleKey( 50, aura, 10.0, 10.0);
setEffScaleKey( 65, aura, 2.0, 2.0);
setEffScaleKey( 150, aura, 1.7, 1.7);

setEffMoveKey( 50, aura, 0,  -530, 0);
setEffMoveKey( 65, aura, 0,  -130, 0);
setEffMoveKey( 141, aura, 0,  -110, 0);

kame_hand = entryEffect( 50, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffShake(50, kame_hand, 100, 15);
setEffScaleKey(50, kame_hand, -1.0, 1.0);


-- 書き文字エントリー
ct = entryEffectLife( 70, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(70, ct, 40, 8);
setEffScaleKey(70, ct, 1.4, 1.4);


spep_2 = 150;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_2+85, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_3=spep_2+85+2; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setMoveKey(  spep_3-2,    0,  0,  0,   0);

--playSe( spep_3, SE_04);

setShake(spep_3,38, 8);
setShake(spep_3+38,137, 20);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  0, 50);   -- 伸びるかめはめ波
playSe( spep_3+10, SE_04);
setEffScaleKey(50, kamehame_beam, -1.0, 1.0);

playSe( spep_3+10, SE_03);
playSe( spep_3+30, SE_03);
playSe( spep_3+50, SE_03);
playSe( spep_3+70, SE_03);
playSe( spep_3+90, SE_03);

setEffShake(spep_3, kamehame_beam, 170, 20);

--playSe( spep_3+70, SE_03);
--playSe( spep_3+95, SE_03);

shuchusen = entryEffectLife( spep_3, 906, 175, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+166, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+175, shuchusen, 2.0, 2.0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 186, 0, 0, 0, 0, 200);       -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_3+125, 10012, 40, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+125, ct, 32, 5);
setEffAlphaKey(spep_3+125, ct, 255);
setEffAlphaKey(spep_3+145, ct, 255);
setEffAlphaKey(spep_3+175, ct, 0);
setEffScaleKey(spep_3+125, ct, 0.0, 0.0);
setEffScaleKey(spep_3+165, ct, 1.3, 1.3);
setEffScaleKey(spep_3+175, ct, 6.0, 6.0);

playSe( spep_3+105, SE_07);

entryFade( spep_3+170, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+133);

spep_4=spep_3+170+10; --311 370


------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-5, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  spep_4-5,    1,   120,  0,   0);
setMoveKey(  spep_4-5,    1,  400,  -400,   0);
setMoveKey(  spep_4,    1,  400,  -400,   0);
setScaleKey(  spep_4-5,   1,   1.6,  1.6);
setScaleKey( spep_4-5,    1,  1, 1);

setMoveKey(  spep_4+38,    1,   120,  -270,   0);
setScaleKey(  spep_4+38,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);
entryFade( spep_4+32, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_4+38, 1, 0);

ryusen = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4-1, ryusen, 190);
setEffScaleKey( spep_4-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+72, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+72, 1, 0);  -- ダメージ振動等

playSe( spep_4+75, SE_09);
-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4-1, 0, 100, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+25, ct, 255);
setEffAlphaKey(spep_4+35, ct, 0);

ct = entryEffectLife( spep_4+60, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+60, ct, 99, 20);
setEffScaleKey( spep_4+60, ct, 0.1, 0.1);
setEffScaleKey( spep_4+65, ct, 2.4, 2.4);
setEffScaleKey( spep_4+90, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+60, ct, 255);
setEffAlphaKey(spep_4+75, ct, 255);
setEffAlphaKey(spep_4+90, ct, 0);

entryFade( spep_4+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+82+17 --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 447; --エンドフェイズのフレーム数を置き換える

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

entryEffect( spep_5,SP_04,0,-1,0,0,0);

setDisp( spep_5, 1, 0);

-- 書き文字エントリー

playSe( spep_5+4, 1022);


-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+98, 8,  20, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);

end
