

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

SP_01 = 100386;--溜め_虎
SP_02 = 100388;--発射_虎
SP_03 = 100394;--迫る
SP_04 = 1587;--爆発
SP_01e = 100387;--溜め_虎（敵）
SP_02e = 100389;--発射_虎（敵）

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

SPstart = -69
setVisibleUI( SPstart+69, 0);
playSe( SPstart+73, SE_03);
playSe( SPstart+103, SE_03);
playSe( SPstart+133, SE_03);
playSe( SPstart+163, SE_03);

entryEffect( SPstart+70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 ( 気)
entryEffect( SPstart+70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SPstart+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SPstart+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SPstart+80, SE_04);

tame = entryEffect( SPstart+70, SP_01, 0x00, -1,  0,  -150,  0);   --溜め
setEffShake( SPstart+70, tame,100,8)
--setEffScaleKey( SPstart+70, kame_hand, 0.5, 0.5);

entryFade( SPstart+165, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SPstart+70,   311, 99, 0x40,  0,  1,  0,  -150); -- オーラ
setEffScaleKey( SPstart+70, aura, 1.1, 1.1);
setShakeChara( SPstart+70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SPstart+90, 190006, 80, 0x100, -1, 0, 0 -100, 500 +20);    -- ゴゴゴ・・・
setEffShake( SPstart+90, ct, 80, 8);
setEffScaleKey( SPstart+90, ct, 0.8, 0.8);

-- 背景
entryFadeBg( 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

spep_1 = SPstart+170;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 1.5, 1.5);
setScaleKey( spep_1+1,   0, 1.0, 1.0);

playSe( spep_1+1, SE_05);
speff = entryEffect( spep_1+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_1+86, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade255

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_1+65, SE_06);

spep_2 = spep_1+90;
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

kamehame_beam = entryEffect( spep_2, SP_02, 0x100,  0,  0,  0,  0);   -- 伸びるかめはめ波
playSe( spep_2, SE_07);
playSe( spep_2+36, 43);
--playSe( spep_2+48, SE_03);
playSe( spep_2+58, SE_07);
playSe( spep_2+120, SE_06);

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 175, 0, 10, 10, 10, 255);       -- ベース暗め　背景
entryFadeBg( spep_2, 0, 45, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景

sen2 = entryEffectLife( spep_2, 912, 47, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_2, sen2, 165);
setEffScaleKey( spep_2, sen2, 1.25, 1.25);

sen2 = entryEffectLife( spep_2+48, 913, 127, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_2+48, sen2, 167);
setEffScaleKey( spep_2+48, sen2, 1.25, 1.25);

shuchusen = entryEffectLife( spep_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+78, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+98, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 100, 100); -- ズオッ
setEffShake( spep_2+8, ct, 32, 5);
setEffAlphaKey( spep_2+8, ct, 255);
setEffAlphaKey( spep_2+30, ct, 255);
setEffAlphaKey( spep_2+40, ct, 0);
setEffScaleKey( spep_2+8, ct, 0.0, 0.0);
setEffScaleKey( spep_2+12, ct, 1.3, 1.3);--272
setEffScaleKey( spep_2+32, ct, 1.3, 1.3);
setEffScaleKey( spep_2+40, ct, 6.0, 6.0);
playSe( spep_2+40, SE_07);
entryFade( spep_2+170, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+175;
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104);                        -- ガード

setMoveKey(  spep_3, 1,  20,  0,   0);
setMoveKey(  spep_3+50, 1,  30,  0,   0);

setScaleKey( spep_3,    1,  0.3, 0.3);
setScaleKey( spep_3+50,    1,  1.5, 1.5);

SE0=playSe( spep_3, SE_06);

kamehame_beam2 = entryEffect( spep_3, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
--[[
setEffScaleKey(spep_3, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_3+82, 1, 0);  -- ダメージ振動等
]]--

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--playSe( spep_3+85, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_3, 1, 99, 20);

shuchusen_1 = entryEffectLife( spep_3, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen_1, 1.5, 1.5);

entryFadeBg( spep_3, 0, 50, 0,10, 10, 10, 180);          -- ベース暗め　背景


-- 書き文字エントリー
--[[
ct = entryEffectLife( spep_3, 10014, 50, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_3, ct, 99, 20);
setEffScaleKey( spep_3, ct, 2.4, 2.4);
setEffRotateKey(spep_3, ct, 70);
setEffAlphaKey(spep_3, ct, 255);
setEffAlphaKey(spep_3+40, ct, 255);
setEffAlphaKey(spep_3+50, ct, 0);
]]--

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 385; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-12, SE0,0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

entryFade( spep_3+45, 3,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+50;

------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------

setDisp( spep_4, 1, 0);

kamehame_beam = entryEffect( spep_4, 190000,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+5, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+5, ct, 99, 20);
setEffScaleKey( spep_4+5, ct, 0.1, 0.1);
setEffScaleKey( spep_4+37, ct, 3.4, 3.4);
setEffScaleKey( spep_4+50, ct, 3.8, 3.8);
setEffAlphaKey(spep_4+5, ct, 255);
setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+50, ct, 0);

playSe( spep_4+8, 1024);

entryFade( spep_4+50, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+50, 1, 0);

--removeAllEffect(spep_4+95);

spep_5=spep_4+52+10 --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_5, bakuhatu, 1.1, 1.1);

--entryEffect( 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, 1022);
--playSe( spep_5+9, SE_10);

--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_5+8,6,15);
setShake( spep_5+14,15,10);

-- 書き文字エントリー

shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5+4, shuchusen, 1.3, 1.3);

-- ダメージ表示
dealDamage( spep_5+18);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+111);

else
------------------------------------------------------
-- 敵側(100F)
------------------------------------------------------

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

SPstart = -69
setVisibleUI( SPstart+69, 0);
playSe( SPstart+73, SE_03);
playSe( SPstart+103, SE_03);
playSe( SPstart+133, SE_03);
playSe( SPstart+163, SE_03);

entryEffect( SPstart+70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 ( 気)
entryEffect( SPstart+70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect( SPstart+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SPstart+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( SPstart+80, SE_04);

tame = entryEffect( SPstart+70, SP_01e, 0x00, -1,  0,  -150,  0);   --溜め
setEffShake( SPstart+70, tame,100,8)
--setEffScaleKey( SPstart+70, kame_hand, 0.5, 0.5);

entryFade( SPstart+165, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SPstart+70,   311, 99, 0x40,  0,  1,  0,  -150); -- オーラ
setEffScaleKey( SPstart+70, aura, 1.1, 1.1);
setShakeChara( SPstart+70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SPstart+90, 190006, 80, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake( SPstart+90, ct, 80, 8);
setEffScaleKey( SPstart+90, ct, -0.8, 0.8);

-- 背景
entryFadeBg( 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

spep_1 = SPstart+170;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 1.5, 1.5);
setScaleKey( spep_1+1,   0, 1.0, 1.0);

playSe( spep_1+1, SE_05);
speff = entryEffect( spep_1+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( spep_1+86, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade255

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_1+65, SE_06);

spep_2 = spep_1+90;
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

kamehame_beam = entryEffect( spep_2, SP_02e, 0x100,  0,  0,  0,  0);   -- 伸びるかめはめ波
playSe( spep_2, SE_07);
playSe( spep_2+36, 43);
--playSe( spep_2+48, SE_03);
playSe( spep_2+58, SE_07);
playSe( spep_2+120, SE_06);

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 175, 0, 10, 10, 10, 255);       -- ベース暗め　背景
entryFadeBg( spep_2, 0, 45, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景

sen2 = entryEffectLife( spep_2, 912, 47, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_2, sen2, 165);
setEffScaleKey( spep_2, sen2, 1.25, 1.25);

sen2 = entryEffectLife( spep_2+48, 913, 127, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_2+48, sen2, 167);
setEffScaleKey( spep_2+48, sen2, 1.25, 1.25);

shuchusen = entryEffectLife( spep_2, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+78, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+98, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 100, 100); -- ズオッ
setEffShake( spep_2+8, ct, 32, 5);
setEffAlphaKey( spep_2+8, ct, 255);
setEffAlphaKey( spep_2+30, ct, 255);
setEffAlphaKey( spep_2+40, ct, 0);
setEffScaleKey( spep_2+8, ct, 0.0, 0.0);
setEffScaleKey( spep_2+12, ct, 1.3, 1.3);--272
setEffScaleKey( spep_2+32, ct, 1.3, 1.3);
setEffScaleKey( spep_2+40, ct, 6.0, 6.0);
playSe( spep_2+40, SE_07);
entryFade( spep_2+170, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+175;
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104);                        -- ガード

setMoveKey(  spep_3, 1,  20,  0,   0);
setMoveKey(  spep_3+50, 1,  30,  0,   0);

setScaleKey( spep_3,    1,  0.3, 0.3);
setScaleKey( spep_3+50,    1,  1.5, 1.5);

SE0=playSe( spep_3, SE_06);

kamehame_beam2 = entryEffect( spep_3, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
--[[
setEffScaleKey(spep_3, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_3+82, 1, 0);  -- ダメージ振動等
]]--

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--playSe( spep_3+85, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_3, 1, 99, 20);

shuchusen_1 = entryEffectLife( spep_3, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen_1, 1.5, 1.5);

entryFadeBg( spep_3, 0, 50, 0,10, 10, 10, 180);          -- ベース暗め　背景


-- 書き文字エントリー
--[[
ct = entryEffectLife( spep_3, 10014, 50, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_3, ct, 99, 20);
setEffScaleKey( spep_3, ct, 2.4, 2.4);
setEffRotateKey(spep_3, ct, 70);
setEffAlphaKey(spep_3, ct, 255);
setEffAlphaKey(spep_3+40, ct, 255);
setEffAlphaKey(spep_3+50, ct, 0);
]]--

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 385; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe(SP_dodge-12, SE0,0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,  0,   0);

endPhase(SP_dodge+10);
do return end
else end

entryFade( spep_3+45, 3,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+50;

------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------

setDisp( spep_4, 1, 0);

kamehame_beam = entryEffect( spep_4, 190000,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+5, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_4+5, ct, 99, 20);
setEffScaleKey( spep_4+5, ct, 0.1, 0.1);
setEffScaleKey( spep_4+37, ct, 3.4, 3.4);
setEffScaleKey( spep_4+50, ct, 3.8, 3.8);
setEffAlphaKey(spep_4+5, ct, 255);
setEffAlphaKey(spep_4+30, ct, 255);
setEffAlphaKey(spep_4+50, ct, 0);

playSe( spep_4+8, 1024);

entryFade( spep_4+50, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+50, 1, 0);

--removeAllEffect(spep_4+95);

spep_5=spep_4+52+10 --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_5, bakuhatu, 1.1, 1.1);

--entryEffect( 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, 1022);
--playSe( spep_5+9, SE_10);

--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_5+8,6,15);
setShake( spep_5+14,15,10);

-- 書き文字エントリー

shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5+4, shuchusen, 1.3, 1.3);

-- ダメージ表示
dealDamage( spep_5+18);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+111);
end
