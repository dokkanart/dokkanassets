
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

SP_01 = 100357; --溜め1
SP_02 = 100358; --地球
SP_03 = 100359; --溜め2
SP_04 = 100360; --発射
SP_05 = 100361; --迫る
SP_06 = 190002; --ギャン
SP_07 = 1585; --大爆発(赤)

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

--[[
setMoveKey(   0,   0,    0, -300,   0);
setMoveKey(   1,   0,    0, -300,   0);
setScaleKey(   0,   0, 2.0, 2.0);
setScaleKey(   1,   0, 2.0, 2.0);
]]--

------------------------------------------------------
-- かめはめ波溜め_01(40F)
------------------------------------------------------

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

setMoveKey(   0,   0,    0, -300,   0);
setMoveKey(   1,   0,    0, -300,   0);
setMoveKey(   20,   0,    0, -70,   0);
setMoveKey(   80,   0,    0,  0,   0);

setScaleKey( 0,   0, 2.0, 2.0);
setScaleKey( 80,   0, 2.0, 2.0);

changeAnime( 0, 0, 0);                  -- かめはめ波溜め_01

entryEffect(  0,   SP_02,   0x80, -1,  0,  0,  0);    -- 地球
entryEffect(  30,   SP_01,   0x40, 0,  300,  -150,  0);    --  気玉1
entryEffect(  40,   SP_01,   0x40, 0,  300,  130,  0);    -- 気玉2

playSe( 0, SE_04);
playSe( 30, SE_03);
playSe( 40, SE_03);

entryFade( 75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 80, 0, 0);

spep_1 = 80;

------------------------------------------------------
-- かめはめ波溜め_02(100F)
------------------------------------------------------

playSe( spep_1, SE_04);
playSe( spep_1+20, SE_03);
playSe( spep_1+50, SE_03);
playSe( spep_1+80, SE_03);

entryFade( spep_1+80, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** 

shuchusen_1 = entryEffectLife( spep_1+1, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+1, shuchusen_1, 1.5, 1.5);
setEffAlphaKey( spep_1+1, shuchusen_1, 255);

entryEffect( spep_1, SP_03, 0x00,  -1,  0,  0,  0);   -- 手のカメハメ波部

speff = entryEffect( spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct = entryEffectLife( spep_1, 10008, 45, 0x100, -1, 0, -190, 200);    -- ゴゴゴ・・・
setEffShake(spep_1, ct, 80, 8);
setEffScaleKey(spep_1, ct, 1.4, 1.4);

spep_2 = spep_1+85;--165

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
--playSe( spep_2+64, SE_06);

spep_3 = spep_2+85+2; --252

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setShake(spep_3,110, 8);

kamehame_beam3=entryEffect( spep_3, SP_04, 0x100,  -1,  0,  0, 0);   -- 伸びるかめはめ波
setEffMoveKey(spep_3+1, kamehame_beam3,0,0,0);
--setEffShake(spep_3, kamehame_beam, 170, 20);

shuchusen = entryEffectLife( spep_3, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.5, 1.5);

-- ** エフェクト等 ** --

playSe(spep_3, SE_06);
playSe(spep_3+48, SE_07);

entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_3+110, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+133);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+48, 10012, 72, 0, -1, 0, 150, 300); -- ズオッ
setEffShake(spep_3+48, ct, 72, 5);
setEffAlphaKey(spep_3+48, ct, 255);
setEffAlphaKey(spep_3+90, ct, 255);
setEffAlphaKey(spep_3+110, ct, 0);
setEffScaleKey(spep_3+48, ct, 0.0, 0.0);
setEffScaleKey(spep_3+52, ct, 2.0, 2.0);
setEffScaleKey(spep_3+92, ct, 2.0, 2.0);
setEffScaleKey(spep_3+110, ct, 6.0, 6.0);

--playSe( spep_3+40, SE_07);

spep_4 = spep_3+110+10; --372

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

--[[
playSe( spep_4, SE_07);
playSe( spep_4+80, SE_07);
playSe( spep_4+160, SE_09);
]]--

setDisp( spep_4, 0, 0);
setMoveKey(  spep_4,    0,  -2000, 0,   0);
setDisp( spep_4, 1, 1);

changeAnime( spep_4, 1, 102);                        -- 後ろ姿

setMoveKey(  spep_4,    1,  500, -900,   0);
setMoveKey(  spep_4+30,    1,  150,  -300,   0);
setMoveKey(  spep_4+100,    1,  150,  -300,   0);

setScaleKey(  spep_4,   1,   1.5,  1.5);
setScaleKey(  spep_4+100,   1,   1.5,  1.5);
--setScaleKey( spep_4-5,    1,  1, 1);

--setDisp( spep_4+60, 1, 0);

ryusen = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4, ryusen, -130);
setEffScaleKey( spep_4, ryusen, 2.0, 2.0);

kamehame_beam2 = entryEffect( spep_4, SP_05,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波

--setDamage( spep_4+160, 1, 0);  -- ダメージ振動等

--setEffShake(spep_3, kamehame_beam2, 90, 20);

-- ** エフェクト等 ** --

playSe( spep_4, 1042);
playSe( spep_4+58, SE_07);


setShakeChara( spep_4, 1, 100, 20);

entryFadeBg( spep_4, 0, 100, 0,10, 10, 10, 180);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 100, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake(spep_4, ct, 100, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+95, ct, 255);
setEffAlphaKey(spep_4+100, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 445; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+10,    0,  2500, -900,   0);

endPhase(SP_dodge+10);
do return end
else end

entryFade( spep_4+85, 3, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+100; --472

------------------------------------------------------
-- ギャン
------------------------------------------------------

setDisp( spep_5, 1, 0);

playSe( spep_5, 1024);

gyan = entryEffect( spep_5,SP_06,0x80,-1,0,0,0);
setEffAlphaKey( spep_5,gyan,255);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+30, 10006, 60, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+30, ct, 99, 20);
setEffScaleKey( spep_5+30, ct, 0.1, 0.1);
setEffScaleKey( spep_5+35, ct, 2.4, 2.4);
setEffScaleKey( spep_5+30, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+45, ct, 255);
--setEffAlphaKey(spep_5+50, ct, 0);

spep_6=spep_5+50; --522

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_6,SP_07,0,-1,0,0,0);

setDisp( spep_6, 1, 0);

-- 書き文字エントリー

playSe( spep_6+4, SE_07);
playSe( spep_6+60, SE_10);
playSe( spep_6+100, SE_10);
playSe( spep_6+135, SE_10);

-- ダメージ表示
dealDamage(spep_6+135);

entryFade( spep_6+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+180);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め_01(40F)
------------------------------------------------------

setVisibleUI(0, 0);

setMoveKey(   0,   0,    0, -300,   0);
setMoveKey(   1,   0,    0, -300,   0);
setMoveKey(   20,   0,    0, -70,   0);
setMoveKey(   80,   0,    0,  0,   0);

setScaleKey( 0,   0, 2.0, 2.0);
setScaleKey( 80,   0, 2.0, 2.0);

changeAnime( 0, 0, 0);                  -- かめはめ波溜め_01

entryEffect(  0,   SP_02,   0x80, -1,  0,  0,  0);    -- 地球
entryEffect(  30,   SP_01,   0x40, 0,  300,  150,  0);    --  気玉1
entryEffect(  40,   SP_01,   0x40, 0,  300,  -130,  0);    -- 気玉2

playSe( 0, SE_04);
playSe( 30, SE_03);
playSe( 40, SE_03);

entryFade( 75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 80, 0, 0);

spep_1 = 80;

------------------------------------------------------
-- かめはめ波溜め_02(100F)
------------------------------------------------------

playSe( spep_1, SE_04);
playSe( spep_1+20, SE_03);
playSe( spep_1+50, SE_03);
playSe( spep_1+80, SE_03);

entryFade( spep_1+80, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** 

shuchusen_1 = entryEffectLife( spep_1+1, 906, 95, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+1, shuchusen_1, 1.5, 1.5);
setEffAlphaKey( spep_1+1, shuchusen_1, 255);

kame_1 = entryEffect( spep_1, SP_03, 0x00,  -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_1, kame_1, -1.0, 1.0);

--[[
speff = entryEffect( spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

-- 書き文字エントリー
ct = entryEffectLife( spep_1, 10008, 45, 0x100, -1, 0, -190, 200);    -- ゴゴゴ・・・
setEffShake(spep_1, ct, 80, 8);
setEffScaleKey(spep_1, ct, 1.4, 1.4);

spep_2 = spep_1+85;--165

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
--playSe( spep_2+64, SE_06);

spep_3 = spep_2+85+2; --252

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setShake(spep_3,110, 8);

kame_2 =entryEffect( spep_3, SP_04,0x100,  -1,  0,  0, 0);   -- 伸びるかめはめ波
setEffScaleKey( spep_3, kame_2, -1.0, 1.0);

--setEffShake(spep_3, kamehame_beam, 170, 20);

shuchusen = entryEffectLife( spep_3, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.5, 1.5);

-- ** エフェクト等 ** --

playSe(spep_3, SE_06);
playSe(spep_3+48, SE_07);

entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_3+110, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+133);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+48, 10012, 72, 0, -1, 0, 150, 300); -- ズオッ
setEffShake(spep_3+48, ct, 72, 5);
setEffAlphaKey(spep_3+48, ct, 255);
setEffAlphaKey(spep_3+90, ct, 255);
setEffAlphaKey(spep_3+110, ct, 0);
setEffScaleKey(spep_3+48, ct, 0.0, 0.0);
setEffScaleKey(spep_3+52, ct, 2.0, 2.0);
setEffScaleKey(spep_3+92, ct, 2.0, 2.0);
setEffScaleKey(spep_3+110, ct, 6.0, 6.0);

--playSe( spep_3+40, SE_07);

spep_4 = spep_3+110+10; --372

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

--[[
playSe( spep_4, SE_07);
playSe( spep_4+80, SE_07);
playSe( spep_4+160, SE_09);
]]--

setDisp( spep_4, 0, 0);
setMoveKey(  spep_4,    0,  2000, 0,   0);
setDisp( spep_4, 1, 1);

changeAnime( spep_4, 1, 102);                        -- 後ろ姿

setMoveKey(  spep_4,    1,  500, -900,   0);
setMoveKey(  spep_4+30,    1,  150,  -300,   0);
setMoveKey(  spep_4+100,    1,  150,  -300,   0);

setScaleKey(  spep_4,   1,   1.5,  1.5);
setScaleKey(  spep_4+100,   1,   1.5,  1.5);
--setScaleKey( spep_4-5,    1,  1, 1);

--setDisp( spep_4+60, 1, 0);

ryusen = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4, ryusen, -130);
setEffScaleKey( spep_4, ryusen, 2.0, 2.0);

kamehame_beam2 = entryEffect( spep_4, SP_05,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波

--setDamage( spep_4+160, 1, 0);  -- ダメージ振動等

--setEffShake(spep_3, kamehame_beam2, 90, 20);

-- ** エフェクト等 ** --

playSe( spep_4, 1042);
playSe( spep_4+58, SE_07);


setShakeChara( spep_4, 1, 100, 20);

entryFadeBg( spep_4, 0, 100, 0,10, 10, 10, 180);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 100, 0, -1, 0, 100, 255); -- ズドドッ
setEffShake(spep_4, ct, 100, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+95, ct, 255);
setEffAlphaKey(spep_4+100, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 445; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+10,    0,  2500, -900,   0);

endPhase(SP_dodge+10);
do return end
else end

entryFade( spep_4+85, 3, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5=spep_4+100; --472

------------------------------------------------------
-- ギャン
------------------------------------------------------

setDisp( spep_5, 1, 0);

playSe( spep_5, 1024);

gyan = entryEffect( spep_5,SP_06,0x80,-1,0,0,0);
setEffAlphaKey( spep_5,gyan,255);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+30, 10006, 60, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+30, ct, 99, 20);
setEffScaleKey( spep_5+30, ct, 0.1, 0.1);
setEffScaleKey( spep_5+35, ct, 2.4, 2.4);
setEffScaleKey( spep_5+30, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+45, ct, 255);
--setEffAlphaKey(spep_5+50, ct, 0);

spep_6=spep_5+50; --522

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_6,SP_07,0,-1,0,0,0);

setDisp( spep_6, 1, 0);

-- 書き文字エントリー

playSe( spep_6+4, SE_07);
playSe( spep_6+60, SE_10);
playSe( spep_6+100, SE_10);
playSe( spep_6+135, SE_10);

-- ダメージ表示
dealDamage(spep_6+135);

entryFade( spep_6+170, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+180);

end
