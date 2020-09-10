
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

SP_01 = 103091;--登場
SP_02 = 103092;--カットイン(光輪)
SP_03 = 103093;--発射
SP_04 = 103094;--迫る（前面）
SP_05 = 103095;--迫る（背面）
SP_06 = 190002;--ギャン
SP_07 = 1583;   --大爆発with火炎

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

--setMoveKey(   0,   0,    0, -54,   0);
--setMoveKey(   1,   0,    0, -54,   0);
--setScaleKey(   0,   0, 0.8, 0.8);
--setScaleKey(   1,   0, 0.8, 0.8);

------------------------------------------------------
-- 光輪(40F)
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
setEffScaleKey( 77, kame_hand, 1.0, 1.0);
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

spep_7 =170;

------------------------------------------------------
-- カードカットイン(90F)(共通)
------------------------------------------------------
setScaleKey( spep_7,   0, 1.7, 1.7);
setScaleKey( spep_7+1,   0, 1.7, 1.7);

playSe( spep_7, SE_05);
speff = entryEffect(  spep_7,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_7+85, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_7+64, SE_06);

spep_3 = spep_7+90; --211 260

------------------------------------------------------
-- 刃登場(110F)
------------------------------------------------------

playSe( spep_3, SE_05);
playSe( spep_3+65, 1015);
playSe( spep_3+75, 1015);
playSe( spep_3+85, 1015);
playSe( spep_3+95, 1015);
playSe( spep_3+105, 1015);
playSe( spep_3+115, 1015);
playSe( spep_3+125, 1015);
playSe( spep_3+135, 1015);

entryEffect( spep_3, SP_03,   0,  -1,  0,  0,  0);--発射

entryFadeBg( spep_3, 0, 65, 0, 10, 10, 10, 200);  -- ベース暗め　背景
entryFadeBg( spep_3+65, 0, 75, 0, 10, 10, 10, 180);  -- ベース暗め　背景

shuchusen1 = entryEffectLife( spep_3, 906, 40, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen1, 1.5, 1.5);

shuchusen2 = entryEffectLife( spep_3+65, 906, 75, 0x00,  -1, 0,  0,  300);   -- 集中線
setEffScaleKey( spep_3+65, shuchusen2, 1.5, 1.5);

entryFade( spep_3+135, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( spep_3+65, 10012, 32, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_3+65, ct, 32, 5);
setEffAlphaKey( spep_3+65, ct, 255);
setEffAlphaKey(spep_3+89, ct, 255);
setEffAlphaKey(spep_3+98, ct, 0);
setEffScaleKey(spep_3+65, ct, 0.0, 0.0);
setEffScaleKey(spep_3+69, ct, 2, 2);
setEffScaleKey(spep_3+89, ct, 2, 2);
setEffScaleKey(spep_3+98, ct, 6.0, 6.0);

spep_5 = spep_3+140;

------------------------------------------------------
-- 刃が迫る (110F)
------------------------------------------------------

playSe( spep_5, SE_07);
--playSe( spep_5+80, 1045);
--playSe( spep_5+90, 1041);
playSe( spep_5+95, 1014);

setDisp( spep_5, 1, 1);

changeAnime( spep_5, 1, 104);  
--setRotateKey( spep_5, 1, -75);
       
setMoveKey(  spep_5,1, 200, -800,   0);
setMoveKey(  spep_5+50,1, 200, -800,   0);
setMoveKey(  spep_5+60,1, 0, 0,   0);
setMoveKey(  spep_5+130,1, 0, 0,   0);

setScaleKey(  spep_5,   1, 1.5, 1.5);
setScaleKey(  spep_5+130,   1, 1.5, 1.5);

-- ** エフェクト等 ** --

entryEffect( spep_5, SP_04,   0x100,  -1,  0,  -200, 300);--迫る（前面）
entryEffect( spep_5, SP_05,   0x80,  -1,  0,  -200,  300);--迫る（背面)

ryusen = entryEffectLife(spep_5-1, 921, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5-1, ryusen, 70);
setEffScaleKey(spep_5-1, ryusen, 2, 2);

shuchusen3 = entryEffectLife( spep_5+70, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5+70, shuchusen3, 1.5, 1.5);

entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_5+115, 3, 4, 3, 255, 0, 0, 255);     -- white fade

removeAllEffect(spep_5+120);
--stopSe(spep_5+120,1044);

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 60, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake( spep_5, ct, 60, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey( spep_5, ct, 70);
setEffAlphaKey( spep_5, ct, 255);
setEffAlphaKey( spep_5+60, ct, 255);
--setEffAlphaKey( spep_5+80, ct, 0);

spep_4 =  spep_5+120;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 483; --エンドフェイズのフレーム数を置き換える

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
-- ギャン (110F)
------------------------------------------------------

entryEffect( spep_4, 190002,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+5, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン文字
setEffShake(spep_4+5, ct, 99, 20);
setEffScaleKey( spep_4+5, ct, 0.1, 0.1);
setEffScaleKey( spep_4+37, ct, 2.4, 2.4);
setEffScaleKey( spep_4+45, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+5, ct, 255);
setEffAlphaKey(spep_4+25, ct, 255);
setEffAlphaKey(spep_4+45, ct, 0);

playSe( spep_4+8, 1024);

entryFade( spep_4+40, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4, 1, 0);

--removeAllEffect(spep_4+50);

spep_2 = spep_4+40+10 --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_2,SP_07,0,-1,0,0,0);

setDisp( spep_2, 1, 0);

-- 書き文字エントリー

playSe( spep_2, SE_10);
--playSe( spep_2+4, 1022);

-- ダメージ表示
dealDamage(spep_2+17);

entryFade( spep_2+120, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_2+130);

else

------------------------------------------------------
-- 光輪 (100F)
------------------------------------------------------

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

--[[
speff = entryEffect(  81,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  81,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

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

spep_7 =170;

------------------------------------------------------
-- カードカットイン(90F)(共通)
------------------------------------------------------
setScaleKey( spep_7,   0, 1.7, 1.7);
setScaleKey( spep_7+1,   0, 1.7, 1.7);

playSe( spep_7, SE_05);
speff = entryEffect(  spep_7,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_7+85, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_7+64, SE_06);

spep_3 = spep_7+90; --211 260

------------------------------------------------------
-- 刃登場(110F)
------------------------------------------------------

playSe( spep_3, SE_05);
playSe( spep_3+65, 1015);
playSe( spep_3+75, 1015);
playSe( spep_3+85, 1015);
playSe( spep_3+95, 1015);
playSe( spep_3+105, 1015);
playSe( spep_3+115, 1015);
playSe( spep_3+125, 1015);
playSe( spep_3+135, 1015);

zamasu1 = entryEffect( spep_3, SP_03,   0,  -1,  0,  0,  0);--発射
setEffScaleKey( spep_3, zamasu1, -1.0, 1.0);

entryFadeBg( spep_3, 0, 65, 0, 10, 10, 10, 200);  -- ベース暗め　背景
entryFadeBg( spep_3+65, 0, 75, 0, 10, 10, 10, 180);  -- ベース暗め　背景

shuchusen1 = entryEffectLife( spep_3, 906, 40, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen1, 1.5, 1.5);

shuchusen2 = entryEffectLife( spep_3+65, 906, 75, 0x00,  -1, 0,  0,  300);   -- 集中線
setEffScaleKey( spep_3+65, shuchusen2, 1.5, 1.5);

entryFade( spep_3+135, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( spep_3+65, 10012, 32, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_3+65, ct, 32, 5);
setEffAlphaKey( spep_3+65, ct, 255);
setEffAlphaKey(spep_3+89, ct, 255);
setEffAlphaKey(spep_3+98, ct, 0);
setEffScaleKey(spep_3+65, ct, 0.0, 0.0);
setEffScaleKey(spep_3+69, ct, 2, 2);
setEffScaleKey(spep_3+89, ct, 2, 2);
setEffScaleKey(spep_3+98, ct, 6.0, 6.0);

spep_5 = spep_3+140;

------------------------------------------------------
-- 刃が迫る (110F)
------------------------------------------------------

playSe( spep_5, SE_07);
--playSe( spep_5+80, 1045);
--playSe( spep_5+90, 1041);
playSe( spep_5+95, 1014);

setDisp( spep_5, 1, 1);

changeAnime( spep_5, 1, 104);  
--setRotateKey( spep_5, 1, -75);
       
setMoveKey(  spep_5,1, 200, -800,   0);
setMoveKey(  spep_5+50,1, 200, -800,   0);
setMoveKey(  spep_5+60,1, 0, 0,   0);
setMoveKey(  spep_5+130,1, 0, 0,   0);

setScaleKey(  spep_5,   1, 1.5, 1.5);
setScaleKey(  spep_5+130,   1, 1.5, 1.5);

-- ** エフェクト等 ** --

entryEffect( spep_5, SP_04,   0x100,  -1,  0,  -200, 300);--迫る（前面）
entryEffect( spep_5, SP_05,   0x80,  -1,  0,  -200,  300);--迫る（背面)

ryusen = entryEffectLife(spep_5-1, 921, 61, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5-1, ryusen, 70);
setEffScaleKey(spep_5-1, ryusen, 2, 2);

shuchusen3 = entryEffectLife( spep_5+70, 906, 20, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5+70, shuchusen3, 1.5, 1.5);

entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_5+115, 3, 4, 3, 255, 0, 0, 255);     -- white fade

removeAllEffect(spep_5+120);
--stopSe(spep_5+120,1044);

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 60, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake( spep_5, ct, 60, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey( spep_5, ct, -70);
setEffAlphaKey( spep_5, ct, 255);
setEffAlphaKey( spep_5+60, ct, 255);
--setEffAlphaKey( spep_5+80, ct, 0);

spep_4 =  spep_5+120;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 483; --エンドフェイズのフレーム数を置き換える

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
-- ギャン (110F)
------------------------------------------------------

entryEffect( spep_4, 190002,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+5, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン文字
setEffShake(spep_4+5, ct, 99, 20);
setEffScaleKey( spep_4+5, ct, 0.1, 0.1);
setEffScaleKey( spep_4+37, ct, 2.4, 2.4);
setEffScaleKey( spep_4+45, ct, 2.8, 2.8);
setEffAlphaKey(spep_4+5, ct, 255);
setEffAlphaKey(spep_4+25, ct, 255);
setEffAlphaKey(spep_4+45, ct, 0);

playSe( spep_4+8, 1024);

entryFade( spep_4+40, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4, 1, 0);

--removeAllEffect(spep_4+50);

spep_2 = spep_4+40+10 --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_2,SP_07,0,-1,0,0,0);

setDisp( spep_2, 1, 0);

-- 書き文字エントリー

playSe( spep_2, SE_10);
--playSe( spep_2+4, 1022);

-- ダメージ表示
dealDamage(spep_2+17);

entryFade( spep_2+120, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_2+130);

end
