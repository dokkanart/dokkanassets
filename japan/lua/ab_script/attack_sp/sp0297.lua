

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

SP_01 = 100003;
SP_02 = 160024;
SP_03 = 100005;
SP_04 = 1566;

multi_frm = 2;

--changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 1);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.0, 1.0);
setScaleKey(   1,   0, 1.0, 1.0);

SP_start = -69;
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_start+69, 0);
changeAnime(SP_start+ 70, 0, 30);                       -- 溜め!
playSe(SP_start+ 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe(SP_start+ 80, SE_04);

kame_hand = entryEffect(SP_start+ 69, SP_01, 0x40+0x80, 0,  300,  -70,  180);   -- 手のカメハメ波部
setEffScaleKey(SP_start+ 69, kame_hand, 1.0, 1.0);
setEffMoveKey(SP_start+ 69, kame_hand,-70,200);

entryFade( SP_start+165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

setShakeChara( SP_start+69, 0, 170, 10);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 90, 10008, 39, 0x100, -1, 0, 190, 250);    -- ゴゴゴ・・・
setEffShake(SP_start+90, ct, 40, 8);
setEffScaleKey(SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey(SP_start+ 169,   0, 1.0, 1.0);
setScaleKey(SP_start+ 170,   0, 1.0, 1.0);

playSe(SP_start+ 170, SE_05);
speff = entryEffect(SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade(SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe(SP_start+ 170+64, SE_06);
entryFadeBg(0, 0, 109, 0, 10, 10, 10, 200);       -- ベース暗め　背景
shuchusen = entryEffectLife(0, 906, 109, 0x00,  -1, 0,  0,  0);   -- 集中線
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime(SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(SP_start+  259,    0,      0,  0,   0);
setMoveKey(SP_start+  260,    0, -400,  0,   0);
setMoveKey(SP_start+  270,    0,      0,  0,   0);
setMoveKey(SP_start+  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife(SP_start+ 260, SP_02, 109, 0x40,  0,  300,  550, 150);   -- 伸びるかめはめ波
setEffScaleKey(SP_start+ 260, kamehame_beam, 1.5, 1.5);


playSe(SP_start+ 260, SE_07);

setEffMoveKey(SP_start+ 290,kamehame_beam,400,150 );--221
setEffMoveKey(SP_start+ 300,kamehame_beam,230,80 );--231
setEffMoveKey(SP_start+ 305,kamehame_beam,130,70 );--236

spname = entryEffect(SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(SP_start+  300,    0,   -150,  0,   50);
setMoveKey(SP_start+  305,    0,   -600,  0,   80);


entryFade(SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg(SP_start+ 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife(SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_start+260, sen2, 190);
setShakeChara(SP_start+ 305, 0, 54, 50);
setEffScaleKey(SP_start+  260, sen2, 1.3, 1.3);

shuchusen = entryEffectLife(SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_start+268, ct, 32, 5);
setEffAlphaKey(SP_start+268, ct, 255);
setEffAlphaKey(SP_start+290, ct, 255);
setEffAlphaKey(SP_start+300, ct, 0);
setEffScaleKey(SP_start+268, ct, 0.0, 0.0);
setEffScaleKey(SP_start+272, ct, 1.3, 1.3);
setEffScaleKey(SP_start+292, ct, 1.3, 1.3);
setEffScaleKey(SP_start+300, ct, 6.0, 6.0);
playSe(SP_start+ 300, SE_07);
entryFade(SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp(SP_start+ 370, 0, 0);
setDisp(SP_start+ 370, 1, 1);
changeAnime(SP_start+ 370, 1, 104);                        -- ガード
setMoveKey(SP_start+  369,    1,  235,  0,   0);
setMoveKey(SP_start+  370,    1,  235,  0,   0);
setMoveKey(SP_start+  371,    1,  235,  0,   0);
setScaleKey(SP_start+ 369,    1,  0.7, 0.7);
setScaleKey(SP_start+ 370,    1,  0.7, 0.7);

setMoveKey(SP_start+  400,    1,   120,  0,   0);
setScaleKey(SP_start+  400,   1,   1.6,  1.6);


kamehame_beam2 = entryEffect(SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+452, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage(SP_start+ 452, 1, 0);  -- ダメージ振動等

-- 敵吹っ飛ぶモーション
changeAnime(SP_start+ 455, 1, 108);
setMoveKey(SP_start+  455, 1,  120,    0,  0);
setMoveKey(SP_start+  469, 1,  400,    0,  0);
setScaleKey(SP_start+ 455, 1,  1.6, 1.6);
setScaleKey(SP_start+ 458, 1,  1.5, 1.5);
setScaleKey(SP_start+ 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara(SP_start+ 370, 1, 99, 20);

entryFadeBg(SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife(SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_start+370, ct, 99, 20);
setEffScaleKey(SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey(SP_start+370, ct, 70);
setEffAlphaKey(SP_start+370, ct, 255);
setEffAlphaKey(SP_start+430, ct, 255);
setEffAlphaKey(SP_start+450, ct, 0);

entryFade(SP_start+ 452, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 315; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

playSe(SP_start+ 390, SE_06);

playSe(SP_start+ 455, SE_09);

removeAllEffect(SP_start+ 456);

spep_4 = SP_start+ 457;

------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------

entryEffect( spep_4, 190001,   0x80, -1,  0,  0,  0);   -- ギャン

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

spep_5 = spep_4+40+10;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）

playSe( spep_5+3, SE_07);--57

-- ダメージ表示
dealDamage(spep_5+13);--70

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
entryFade( spep_5+106, 5,  10, 5, 245, 245, 245, 255);      -- white fade

endPhase(spep_5+112);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------

setMoveKey(   0,   0,    70, -54,   0);
setMoveKey(   1,   0,    70, -54,   0);
setScaleKey(   0,   0, 1.0, 1.0);
setScaleKey(   1,   0, 1.0, 1.0);

SP_start = -69;
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_start+69, 0);
changeAnime(SP_start+ 70, 0, 30);                       -- 溜め!
playSe(SP_start+ 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe(SP_start+ 80, SE_04);

kame_hand = entryEffect(SP_start+ 69, SP_01, 0x40+0x100, 0,  300,  -180,  130);   -- 手のカメハメ波部
setEffScaleKey(SP_start+ 69, kame_hand, 1.0, 1.0);
setEffMoveKey(SP_start+ 69, kame_hand,-180,150);

entryFade( SP_start+165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

setShakeChara( SP_start+69, 0, 170, 10);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 90, 10008, 39, 0x100, -1, 0, 190, 250);    -- ゴゴゴ・・・
setEffShake(SP_start+90, ct, 40, 8);
setEffScaleKey(SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey(SP_start+ 169,   0, 1.0, 1.0);
setScaleKey(SP_start+ 170,   0, 1.0, 1.0);

playSe(SP_start+ 170, SE_05);
speff = entryEffect(SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade(SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe(SP_start+ 170+64, SE_06);
entryFadeBg(0, 0, 109, 0, 10, 10, 10, 200);       -- ベース暗め　背景
shuchusen = entryEffectLife(0, 906, 109, 0x00,  -1, 0,  0,  0);   -- 集中線
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime(SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(SP_start+  259,    0,      0,  0,   0);
setMoveKey(SP_start+  260,    0, -400,  0,   0);
setMoveKey(SP_start+  270,    0,      0,  0,   0);
setMoveKey(SP_start+  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife(SP_start+ 260, SP_02, 109, 0x40,  0,  300,  300, 170);   -- 伸びるかめはめ波
setEffScaleKey(SP_start+ 260, kamehame_beam, 1.5, 1.5);


playSe(SP_start+ 260, SE_07);

setEffMoveKey(SP_start+ 290,kamehame_beam,200,170 );--221
setEffMoveKey(SP_start+ 300,kamehame_beam,130,80 );--231
setEffMoveKey(SP_start+ 305,kamehame_beam,-20,70 );--236

spname = entryEffect(SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(SP_start+  300,    0,   -150,  0,   50);
setMoveKey(SP_start+  305,    0,   -600,  0,   80);


entryFade(SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg(SP_start+ 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife(SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(SP_start+260, sen2, 190);
setShakeChara(SP_start+ 305, 0, 54, 50);
setEffScaleKey(SP_start+  260, sen2, 1.3, 1.3);

shuchusen = entryEffectLife(SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey(SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(SP_start+268, ct, 32, 5);
setEffAlphaKey(SP_start+268, ct, 255);
setEffAlphaKey(SP_start+290, ct, 255);
setEffAlphaKey(SP_start+300, ct, 0);
setEffScaleKey(SP_start+268, ct, 0.0, 0.0);
setEffScaleKey(SP_start+272, ct, 1.3, 1.3);
setEffScaleKey(SP_start+292, ct, 1.3, 1.3);
setEffScaleKey(SP_start+300, ct, 6.0, 6.0);
playSe(SP_start+ 300, SE_07);
entryFade(SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp(SP_start+ 370, 0, 0);
setDisp(SP_start+ 370, 1, 1);
changeAnime(SP_start+ 370, 1, 104);                        -- ガード
setMoveKey(SP_start+  369,    1,  235,  0,   0);
setMoveKey(SP_start+  370,    1,  235,  0,   0);
setMoveKey(SP_start+  371,    1,  235,  0,   0);
setScaleKey(SP_start+ 369,    1,  0.7, 0.7);
setScaleKey(SP_start+ 370,    1,  0.7, 0.7);

setMoveKey(SP_start+  400,    1,   120,  0,   0);
setScaleKey(SP_start+  400,   1,   1.6,  1.6);


kamehame_beam2 = entryEffect(SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+452, kamehame_beam2, 1, 1);
setEffScaleKey(SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage(SP_start+ 452, 1, 0);  -- ダメージ振動等

-- 敵吹っ飛ぶモーション
changeAnime(SP_start+ 455, 1, 108);
setMoveKey(SP_start+  455, 1,  120,    0,  0);
setMoveKey(SP_start+  469, 1,  400,    0,  0);
setScaleKey(SP_start+ 455, 1,  1.6, 1.6);
setScaleKey(SP_start+ 458, 1,  1.5, 1.5);
setScaleKey(SP_start+ 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara(SP_start+ 370, 1, 99, 20);

entryFadeBg(SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife(SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife(SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_start+370, ct, 99, 20);
setEffScaleKey(SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey(SP_start+370, ct,  -70);
setEffAlphaKey(SP_start+370, ct, 255);
setEffAlphaKey(SP_start+430, ct, 255);
setEffAlphaKey(SP_start+450, ct, 0);

entryFade(SP_start+ 452, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 315; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

playSe(SP_start+ 390, SE_06);

playSe(SP_start+ 455, SE_09);

removeAllEffect(SP_start+ 456);

spep_4 = SP_start+ 457;

------------------------------------------------------
-- ギャン (110F)
------------------------------------------------------

entryEffect( spep_4, 190001,   0x80, -1,  0,  0,  0);   -- ギャン

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

spep_5 = spep_4+40+10;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_5, SP_04, 0,  -1,  0,  0,  0);   -- 宇宙からの俯瞰視点で地球が光弾で爆発する演出（青）

playSe( spep_5+3, SE_07);--57

-- ダメージ表示
dealDamage(spep_5+13);--70

--entryFade( spep_5+200, 9,  10, 1, 8, 8, 8, 255);             -- black fade
entryFade( spep_5+106, 5,  10, 5, 245, 245, 245, 255);      -- white fade

endPhase(spep_5+112);

end