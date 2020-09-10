
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

SP_01 = 102039;
SP_02 = 102040;
SP_03 = 102005;--迫るのをフリーザのスーパーノヴァに


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -74,   0);
setMoveKey(   1,   0,    0, -74,   0);
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
setQuake(30,39,15);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 30, aura, 2.0, 2.0);
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

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40+0x100,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 70, aura, 2.0, 2.0);
setShakeChara( 70, 0, 49, 5);
setEffAlphaKey( 70, aura, 255);

kame_hand = entryEffect( 70, SP_01, 0x40+0x100,      0,  300,  50,  160);   -- 手のカメハメ波部

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
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  240,  80);   -- 伸びるかめはめ波

playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -600,  0,   85);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setEffScaleKey(260, sen2, 1.3, 1.3);
setShakeChara( 305, 0, 54, 50);

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
changeAnime( 370, 1, 102);                        -- ガード
setMoveKey(  369,    1,  235,  -100,   0);
setMoveKey(  370,    1,  235,  -100,   0);
setMoveKey(  371,    1,  235,  -100,   0);
setScaleKey( 369,    1,  0.7, 0.7);
setScaleKey( 370,    1,  0.2, 0.2);

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   0.4,  0.4);

--playSe( 390, SE_06);

kamehame_beam2 = entryEffect( 370, SP_03,   0x80, -1,  0,  160,  0);   -- 迫るかめはめ波
setEffScaleKey( 370, kamehame_beam2, 0.3, 0.3);
setEffScaleKey( 452, kamehame_beam2, 1, 1);
setEffScaleKey( 454, kamehame_beam2, 3.5, 3.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

seId = playSe( 370, 1044);

entryFade( 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( 455, SE_09);

setScaleKey( 455, 1,  0.4, 0.4);
setScaleKey( 468, 1,  0.5, 0.5);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0, 10, 10, 10, 250);          -- ベース暗め　背景

sen1 = entryEffectLife( 369, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 369,sen1,180);

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -50, 255); -- ズドドッ
setEffShake( 370, ct, 99, 20);
setEffScaleKey( 370, ct, 3.4, 3.4);
setEffRotateKey( 370, ct, 70);
setEffAlphaKey( 370, ct, 255);
setEffAlphaKey( 430, ct, 255);
setEffAlphaKey( 450, ct, 0);

entryFade( 450, 10, 8, 15, 255, 255, 255);          -- ベース暗め　背景
--setScaleKey( 461, 1,  0.4, 0.4);
stopSe( 460, seId,   4);

spep_5 = 469;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-16, seId,   4);

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
bakuhatu = entryEffect( spep_5, 1550, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 0);
--setEffScaleKey( spep_5, bakuhatu, -1, 1);

playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+126);

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
setQuake(30,39,15);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( 30, aura, 2.0, 2.0);
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

--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40+0x100,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 70, aura, 2.0, 2.0);
setShakeChara( 70, 0, 49, 5);
setEffAlphaKey( 70, aura, 255);

kame_hand = entryEffect( 70, SP_01, 0x40+0x100,      0,  300,  -30,  160);   -- 手のカメハメ波部

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
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  240,  80);   -- 伸びるかめはめ波

playSe( 260, SE_07);

spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -600,  0,   85);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setEffScaleKey(260, sen2, 1.3, 1.3);
setShakeChara( 305, 0, 54, 50);

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
changeAnime( 370, 1, 102);                        -- ガード
setMoveKey(  369,    1,  235,  -100,   0);
setMoveKey(  370,    1,  235,  -100,   0);
setMoveKey(  371,    1,  235,  -100,   0);
setScaleKey( 369,    1,  0.7, 0.7);
setScaleKey( 370,    1,  0.2, 0.2);

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   0.4,  0.4);

--playSe( 390, SE_06);

kamehame_beam2 = entryEffect( 370, SP_03,   0x80, -1,  0,  160,  0);   -- 迫るかめはめ波
setEffScaleKey( 370, kamehame_beam2, 0.3, 0.3);
setEffScaleKey( 452, kamehame_beam2, 1, 1);
setEffScaleKey( 454, kamehame_beam2, 3.5, 3.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

seId = playSe( 370, 1044);

entryFade( 462, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
playSe( 455, SE_09);

setScaleKey( 455, 1,  0.4, 0.4);
setScaleKey( 468, 1,  0.5, 0.5);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0, 10, 10, 10, 250);          -- ベース暗め　背景

sen1 = entryEffectLife( 369, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 369,sen1,180);

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -50, 255); -- ズドドッ
setEffShake( 370, ct, 99, 20);
setEffScaleKey( 370, ct, 3.4, 3.4);
setEffRotateKey( 370, ct, -70);
setEffAlphaKey( 370, ct, 255);
setEffAlphaKey( 430, ct, 255);
setEffAlphaKey( 450, ct, 0);

entryFade( 450, 10, 8, 15, 255, 255, 255);          -- ベース暗め　背景
--setScaleKey( 461, 1,  0.4, 0.4);
stopSe( 460, seId,   4);

spep_5 = 469;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-16, seId,   4);

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
bakuhatu = entryEffect( spep_5, 1550, 0,  -1,  0,  0,  0);  
setDisp( spep_5, 1, 0);
--setEffScaleKey( spep_5, bakuhatu, -1, 1);

playSe( spep_5+4, SE_10);

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+120, 5,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+126);
end
