print ("[lua]sp0021");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150252;--導入
SP_02 = 150253;--溜め
SP_03 = 150254;--ビーム発射
SP_04 = 150255;--ビーム敵に迫る
SP_05 = 190001;--ギャン
SP_06 = 1588;--爆発

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

setMoveKey( 0, 0,    0, -54,   0);
setMoveKey( 1, 0,    0, -54,   0);

setScaleKey( 0,   0, 1.5, 1.5);
setScaleKey( 1,   0, 1.5, 1.5);

------------------------------------------------------
--バイオブロリー登場
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

donyu = entryEffect(  0,   SP_01,   0,     -1,  0,  0,  0);--導入
setEffShake( 0, donyu,87,8)

shuchusen = entryEffectLife( 0, 906, 14, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.4, 1.4);

entryFadeBg( 0, 0, 14, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFade( 9, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1 = 14;

------------------------------------------------------
-- 気溜め(100F)
------------------------------------------------------

speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_04);

shuchusen = entryEffectLife( spep_1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.4, 1.4);

entryFadeBg( spep_1, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_1, 190006, 85, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake( spep_1, ct, 85, 8);
setEffScaleKey( spep_1, ct, 0.8, 0.8);

entryFade( spep_1+80, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+85;

------------------------------------------------------
-- ゲノム溜め(110F)
------------------------------------------------------

tame = entryEffect(  spep_2,  SP_02,   0x80,     -1,  0,  0,  0);--溜め
setEffShake( spep_2, tame,146,8)

-- ** エフェクト等 ** --

playSe( spep_2, SE_03);
playSe( spep_2+30, SE_03);
playSe( spep_2+60, SE_03);
playSe( spep_2+90, SE_03);
playSe( spep_2+120, SE_04);

entryFadeBg(  spep_2, 0, 146, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife(  spep_2, 906, 146, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_2, shuchusen, 1.4, 1.4);

entryFade( spep_2+135, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+140;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_3,   0, 1.5, 1.5);
setScaleKey( spep_3+1,   0, 1.0, 1.0);

playSe( spep_3+1, SE_05);
speff = entryEffect( spep_3+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--entryFade( spep_3+86, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_3+65, SE_06);

spep_4 = spep_3+90;

------------------------------------------------------
-- ゲノム発射(100F)
------------------------------------------------------

hassya = entryEffect(  spep_4,  SP_03,   0x00,     -1,  0,  0,  0);--発射
setEffShake( spep_4, hassya,123,8)

-- ** エフェクト等 ** --

playSe( spep_4+5, SE_07);
playSe( spep_4+35, 1043);
playSe( spep_4+55, 1043);
playSe( spep_4+75, 1043);
playSe( spep_4+95, 1043);
playSe( spep_4+115, 1043);

entryFadeBg( spep_4, 0, 123, 0, 10, 10, 10, 180);       -- ベース暗め　背景

 shuchusen2 = entryEffectLife( spep_4, 906, 123, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen2, 1.4, 1.4);

ryu3 = entryEffectLife( spep_4, 921, 123, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryu3, 230);
setEffScaleKey(spep_4, ryu3, 2, 2);


--[[
-- 書き文字エントリー
ct = entryEffectLife( 523, 10014, 99, 0, -1, 0, -50, 305); -- ズドドッ
setEffShake(523, ct, 99, 20);
setEffScaleKey( 523, ct, 2.4, 2.4);
setEffRotateKey(523, ct, 70);
setEffAlphaKey(523, ct, 255);
setEffAlphaKey(583, ct, 255);
setEffAlphaKey(603, ct, 0);
]]--

entryFade( spep_4+5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+113, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+123;

------------------------------------------------------
-- ゲノム迫る(100F)
------------------------------------------------------

setDisp( spep_5, 1, 1);--522

changeAnime( spep_5, 1, 102); 
setAnimeLoop( spep_5, 1, 1);

setMoveKey( spep_5,    1,  800,  -800,   0);
setMoveKey( spep_5+53,    1,  200,  -200,   0);--575
setMoveKey( spep_5+73,    1,  200,  -200,   0);

setScaleKey( spep_5,    1,  1.5, 1.5);
setScaleKey( spep_5+93,    1,  1.5, 1.5);

setShakeChara( spep_5, 1, 154, 20);

-- ** エフェクト等 ** --

playSe( spep_5, 1043);

entryEffect( spep_5, SP_04,   0x00, -1,  0,  0,  0);

entryFadeBg( spep_5, 0, 73, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen5 = entryEffectLife( spep_5, 906, 73, 0x00,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);

ryu3 = entryEffectLife( spep_5, 921, 73, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5, ryu3, 230);
setEffScaleKey(spep_5, ryu3, 1.7, 1.7);

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 73, 0, -1, 0, 50, 305); -- ズドドッ
setEffShake(spep_5, ct, 73, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, 70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+61, ct, 255);--583
setEffAlphaKey(spep_5+73, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 475; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_5+30, 1043);
--playSe( spep_5+60, 1043);

entryFade( spep_5+68, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+73;

------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------

setDisp( spep_6, 1, 0);

gyan = entryEffect( spep_6, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_6+5, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_6+5, ct, 99, 20);
setEffScaleKey( spep_6+5, ct, 0.1, 0.1);
setEffScaleKey( spep_6+37, ct, 3.4, 3.4);
setEffScaleKey( spep_6+50, ct, 3.8, 3.8);
setEffAlphaKey(spep_6+5, ct, 255);
setEffAlphaKey(spep_6+30, ct, 255);
setEffAlphaKey(spep_6+50, ct, 0);

playSe( spep_6+8, 1024);

entryFade( spep_6+50, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6+50, 1, 0);

spep_7=spep_6+52+10 --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffectLife( spep_7, SP_06, 111, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_7, bakuhatu, 1.1, 1.1);
setEffAlphaKey( spep_7, bakuhatu, 255);

playSe( spep_7+9, 1022);

setDamage( spep_7+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_7+8,6,15);
setShake( spep_7+14,15,10);

-- 書き文字エントリー

shuchusen = entryEffectLife( spep_7+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7+4, shuchusen, 1.3, 1.3);

-- ダメージ表示
dealDamage( spep_7+18);

entryFade( spep_7+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_7+111);

else
------------------------------------------------------
--敵側
------------------------------------------------------
------------------------------------------------------
--バイオブロリー登場
------------------------------------------------------

setVisibleUI(0, 0);

donyu = entryEffect(  0,   SP_01,   0,     -1,  0,  0,  0);--導入
setEffShake( 0, donyu,87,8)

shuchusen = entryEffectLife( 0, 906, 14, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.4, 1.4);

entryFadeBg( 0, 0, 14, 0, 10, 10, 10, 180);       -- ベース暗め　背景

entryFade( 9, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1 = 14;

------------------------------------------------------
-- 気溜め(100F)
------------------------------------------------------

--[[
speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_1, SE_04);

shuchusen = entryEffectLife( spep_1, 906, 85, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.4, 1.4);

entryFadeBg( spep_1, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_1, 190006, 85, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake( spep_1, ct, 85, 8);
setEffScaleKey( spep_1, ct, -0.8, 0.8);

entryFade( spep_1+80, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+85;

------------------------------------------------------
-- ゲノム溜め(110F)
------------------------------------------------------

tame = entryEffect(  spep_2,  SP_02,   0x80,     -1,  0,  0,  0);--溜め
setEffShake( spep_2, tame,146,8)

-- ** エフェクト等 ** --

playSe( spep_2, SE_03);
playSe( spep_2+30, SE_03);
playSe( spep_2+60, SE_03);
playSe( spep_2+90, SE_03);
playSe( spep_2+120, SE_04);

entryFadeBg(  spep_2, 0, 146, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife(  spep_2, 906, 146, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(  spep_2, shuchusen, 1.4, 1.4);

entryFade( spep_2+135, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+140;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_3,   0, 1.5, 1.5);
setScaleKey( spep_3+1,   0, 1.0, 1.0);

playSe( spep_3+1, SE_05);
speff = entryEffect( spep_3+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--entryFade( spep_3+86, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( spep_3+65, SE_06);

spep_4 = spep_3+90;

------------------------------------------------------
-- ゲノム発射(100F)
------------------------------------------------------

hassya = entryEffect(  spep_4,  SP_03,   0x00,     -1,  0,  0,  0);--発射
setEffShake( spep_4, hassya,123,8)

-- ** エフェクト等 ** --

playSe( spep_4+5, SE_07);
playSe( spep_4+35, 1043);
playSe( spep_4+55, 1043);
playSe( spep_4+75, 1043);
playSe( spep_4+95, 1043);
playSe( spep_4+115, 1043);

entryFadeBg( spep_4, 0, 123, 0, 10, 10, 10, 180);       -- ベース暗め　背景

 shuchusen2 = entryEffectLife( spep_4, 906, 123, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen2, 1.4, 1.4);

ryu3 = entryEffectLife( spep_4, 921, 123, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryu3, 230);
setEffScaleKey(spep_4, ryu3, 2, 2);


--[[
-- 書き文字エントリー
ct = entryEffectLife( 523, 10014, 99, 0, -1, 0, -50, 305); -- ズドドッ
setEffShake(523, ct, 99, 20);
setEffScaleKey( 523, ct, 2.4, 2.4);
setEffRotateKey(523, ct, 70);
setEffAlphaKey(523, ct, 255);
setEffAlphaKey(583, ct, 255);
setEffAlphaKey(603, ct, 0);
]]--

entryFade( spep_4+5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_4+113, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+123;

------------------------------------------------------
-- ゲノム迫る(100F)
------------------------------------------------------

setDisp( spep_5, 1, 1);--522

changeAnime( spep_5, 1, 102); 
setAnimeLoop( spep_5, 1, 1);

setMoveKey( spep_5,    1,  800,  -800,   0);
setMoveKey( spep_5+53,    1,  200,  -200,   0);--575
setMoveKey( spep_5+73,    1,  200,  -200,   0);

setScaleKey( spep_5,    1,  1.5, 1.5);
setScaleKey( spep_5+93,    1,  1.5, 1.5);

setShakeChara( spep_5, 1, 154, 20);

-- ** エフェクト等 ** --

playSe( spep_5, 1043);

entryEffect( spep_5, SP_04,   0x00, -1,  0,  0,  0);

entryFadeBg( spep_5, 0, 73, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen5 = entryEffectLife( spep_5, 906, 73, 0x00,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey( spep_5, shuchusen5, 1.0, 1.0);

ryu3 = entryEffectLife( spep_5, 921, 73, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5, ryu3, 230);
setEffScaleKey(spep_5, ryu3, 1.7, 1.7);

-- 書き文字エントリー
ct = entryEffectLife( spep_5, 10014, 73, 0, -1, 0, 50, 305); -- ズドドッ
setEffShake(spep_5, ct, 73, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, -70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5+61, ct, 255);--583
setEffAlphaKey(spep_5+73, ct, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 475; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+8, 0,    0, -54,   0);
setMoveKey( SP_dodge+9, 0,  -1500,   -54,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_5+30, 1043);
--playSe( spep_5+60, 1043);

entryFade( spep_5+68, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+73;

------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------

setDisp( spep_6, 1, 0);

gyan = entryEffect( spep_6, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_6+5, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_6+5, ct, 99, 20);
setEffScaleKey( spep_6+5, ct, 0.1, 0.1);
setEffScaleKey( spep_6+37, ct, 3.4, 3.4);
setEffScaleKey( spep_6+50, ct, 3.8, 3.8);
setEffAlphaKey(spep_6+5, ct, 255);
setEffAlphaKey(spep_6+30, ct, 255);
setEffAlphaKey(spep_6+50, ct, 0);

playSe( spep_6+8, 1024);

entryFade( spep_6+50, 5, 15, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_6+50, 1, 0);

spep_7=spep_6+52+10 --410 469

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffectLife( spep_7, SP_06, 111, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_7, bakuhatu, 1.1, 1.1);
setEffAlphaKey( spep_7, bakuhatu, 255);

--entryEffect( 478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_7+9, 1022);
--playSe( spep_7+9, SE_10);

--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_7+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_7+8,6,15);
setShake( spep_7+14,15,10);

-- 書き文字エントリー

shuchusen = entryEffectLife( spep_7+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_7+4, shuchusen, 1.3, 1.3);

-- ダメージ表示
dealDamage( spep_7+18);

entryFade( spep_7+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_7+111);

end
