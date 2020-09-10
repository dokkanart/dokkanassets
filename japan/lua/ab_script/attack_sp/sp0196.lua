

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
--SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_2+130;

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
SE_13 = 43; --瞬間移動

SP_01 = 100186
SP_02 = 100187
--SP_03 = 100188
SP_03 = 100274
SP_04 = 1557;--命中後の地球から放出
SP_05= 190000;--ギャン

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
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.6, 1.6);
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

entryEffect(  69,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  69,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  80,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 162, 3,11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.6, 1.6);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

--entryEffect(  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

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
-- カメハメハ発射(130F)
------------------------------------------------------
kame_hand = entryEffect( 259, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 259, kame_hand, 0.5, 0.5);
setEffAlphaKey( 259, kame_hand, 255);

setScaleKey( 259,   0, 1.0, 1.0);
setScaleKey( 260,   0, 1.5, 1.5);

setScaleKey( 260,   1, 2.0, 2.0);

setScaleKey( 315,   0, 1.5, 1.5);
setScaleKey( 316,   0, 2.0, 2.0);

--背景を暗くする
entryFadeBg( 260, 0, 129, 0, 10, 10, 10, 255);       -- ベース暗め　背景

--プレイヤー中央

setMoveKey(  259,    0,      0,  0,   0);
--setScaleKey( 259,   0, 1.0, 1.0);

entryEffectLife( 259, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( 270, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade


--瞬間移動エフェクト
playSe(270,43);
shun = entryEffect(  270,  SP_02,  0,  0,  0,  0,  0);

--P消える
setDisp ( 275, 0, 0);
setMoveKey(  275,    0,      0,  0,   0);
setEffAlphaKey( 274, kame_hand, 255);
setEffAlphaKey( 275, kame_hand, 0);

-- 書き文字エントリー
ct = entryEffectLife( 272, 10011, 14, 0x100, -1, 0, 0, 100);    -- シュンッ
setEffScaleKey(272, ct, 1.4, 1.4);

entryFade( 284, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade

--画面に相手を表示
 setDisp(286, 1, 1);
setMoveKey(   286,   1,      700, 150,   0);
setMoveKey(   294,   1,      250, 150,   0);
setScaleKey( 286,   1, 2.3, 2.3);

changeAnime( 286, 1, 102);                                    -- 後ろ向きポーズ

entryFade( 298, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade
entryFadeBg( 300, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--瞬間移動エフェクト
playSe(316,43);
shun = entryEffect(  310,  SP_02,  0x80,  0,  0,  -100,  100);
--setEffScaleKey(320, shun, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 316, 10011, 14, 0x100, -1, 0, 80, 220);    -- シュンッ
setEffScaleKey(316, ct, 1.4, 1.4);
--setMoveKey(  313,    0,      0,  0,   0);

setMoveKey(  314,    0,      -100,  -100,   0);
setMoveKey(  315,    0,      -150,  -150,   0);


sen7 = entryEffectLife( 316, 921, 133, 0x80+0x100,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 316, sen7, 170);
setEffScaleKey( 316, sen7, 1.6, 1.6);

kamehame_beam = entryEffectLife( 290, SP_03, 107, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffAlphaKey( 290, kamehame_beam, 0);
setEffAlphaKey( 315, kamehame_beam, 0);
setEffAlphaKey( 316, kamehame_beam, 255);


setEffScaleKey( 290, kamehame_beam, 0.8, 0.8);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge+9,   1, 2.3, 2.3);

setMoveKey(  SP_dodge+8,   0,       -150,  -150,   0);
setMoveKey(  SP_dodge+9,    0,      -1500,  -150,   0);

endPhase(SP_dodge+10);
do return end
else end


SP_start=25; 

setMoveKey(  336,    0,       -150,  -150,   0);
setMoveKey(  350,    0,      -150,  -150,   0);
setMoveKey(  358,    0,      -950,  -200,   0);

setMoveKey(   336,   1,      250, 150,   0);
setMoveKey(   348,   1,      250, 150,   0);
setMoveKey(   360,   1,      450, 150,   0);

changeAnime( 348, 1, 106);                                    -- 後ろ向きポーズ

setEffScaleKey( 349, kamehame_beam, 0.8, 0.8);
setEffScaleKey( 350, kamehame_beam, 1.5, 1.5);

playSe( 360, 1022);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 298, 10012, 57, 0, -1, 0, -100, 70); -- ズオッ
setEffRotateKey( SP_start+298, ct, 15);
setEffShake( SP_start+298, ct, 32, 5);
setEffAlphaKey( SP_start+298, ct, 255);
setEffAlphaKey( SP_start+340, ct, 255);
setEffAlphaKey( SP_start+350, ct, 0);

setEffScaleKey(SP_start+ 298, ct, 0.0, 0.0);
setEffScaleKey(SP_start+ 320, ct, 1.3, 1.3);
setEffScaleKey(SP_start+342, ct, 1.3, 1.3);
setEffScaleKey(SP_start+350, ct, 6.0, 6.0);


setEffScaleKey( SP_start+334, ct, 3.0, 3.0);
setEffShake( SP_start+334, ct, 55, 10);

playSe( SP_start+324, SE_06);
setDisp( SP_start+354, 1, 0);

kamehame_beam = entryEffect( SP_start+ 372, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( SP_start+403, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン413
setEffShake(SP_start+403, ct, 99, 20);
setEffScaleKey( SP_start+403, ct, 0.1, 0.1);
setEffScaleKey( SP_start+408, ct, 2.4, 2.4);
setEffScaleKey( SP_start+430, ct, 2.8, 2.8);
setEffAlphaKey(SP_start+403, ct, 255);
setEffAlphaKey(SP_start+418, ct, 255);
setEffAlphaKey(SP_start+430, ct, 0);

SP_start2=53; 

setScaleKey( SP_start2+ SP_start+ 372,   1, 2.3, 2.3);

entryFade( SP_start2+ SP_start+ 372, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
kamehame_beam2 = entryEffect( SP_start2+ SP_start+ 388, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( SP_start2+ SP_start+388, kamehame_beam2, -1.0, 1.0);

setDisp( SP_start2+ SP_start+ 389, 0, 0);
setDisp( SP_start2+ SP_start+ 389, 1, 1);


changeAnime( SP_start2+ SP_start+ 390, 1, 107);                         -- 手前ダメージ
playSe( SP_start2+ SP_start+ 398, SE_10);

-- ダメージ表示
dealDamage( SP_start2+ SP_start+406);

entryFade( SP_start2+ SP_start+ 490, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start2+ SP_start+500);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--気を貯める
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.6, 1.6);
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

entryEffect(  69,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  69,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40+0x80,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.6, 1.6);
setShakeChara( 70, 0, 49, 5);


-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

entryEffect(  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
kame_hand = entryEffect( 160, SP_01, 0x40+0x80,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 160, kame_hand, 0.5, 0.5);
setEffAlphaKey( 160, kame_hand, 255);

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
-- カメハメハ発射(130F)
------------------------------------------------------
setScaleKey( 259,   0, 1.0, 1.0);
setScaleKey( 260,   0, 1.5, 1.5);

setScaleKey( 260,   1, 2.0, 2.0);

setScaleKey( 315,   0, 1.5, 1.5);
setScaleKey( 316,   0, 2.0, 2.0);

--背景を暗くする
entryFadeBg( 260, 0, 129, 0, 10, 10, 10, 255);       -- ベース暗め　背景

--プレイヤー中央

setMoveKey(  259,    0,      0,  0,   0);
--setScaleKey( 259,   0, 1.0, 1.0);

entryEffectLife( 259, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( 270, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade


--瞬間移動エフェクト
playSe(270,43);
shun = entryEffect(  270,  SP_02,  0,  0,  0,  0,  0);

--P消える
setDisp ( 275, 0, 0);
setMoveKey(  275,    0,      0,  0,   0);
setEffAlphaKey( 274, kame_hand, 255);
setEffAlphaKey( 275, kame_hand, 0);

-- 書き文字エントリー
ct = entryEffectLife( 272, 10011, 14, 0x100, -1, 0, 0, 100);    -- シュンッ
setEffScaleKey(272, ct, 1.4, 1.4);

entryFade( 284, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade

--画面に相手を表示
 setDisp(286, 1, 1);
setMoveKey(   286,   1,      700, 150,   0);
setMoveKey(   294,   1,      250, 150,   0);
setScaleKey( 286,   1, 2.3, 2.3);

changeAnime( 286, 1, 102);                                    -- 後ろ向きポーズ

entryFade( 298, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade
entryFadeBg( 300, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--瞬間移動エフェクト
playSe(316,43);
shun = entryEffect(  310,  SP_02,  0x80,  0,  0,  -100,  100);
--setEffScaleKey(320, shun, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 316, 10011, 14, 0x100, -1, 0, -80, 220);    -- シュンッ
setEffScaleKey(316, ct, 1.4, 1.4);
--setMoveKey(  313,    0,      0,  0,   0);

setMoveKey(  314,    0,      -100,  -100,   0);
setMoveKey(  315,    0,      -150,  -150,   0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 315; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge+9,   1, 2.3, 2.3);

setMoveKey(  SP_dodge+8,   0,       -150,  -150,   0);
setMoveKey(  SP_dodge+9,    0,      -1500,  -150,   0);

endPhase(SP_dodge+10);
do return end
else end


SP_start=25; 

setMoveKey(  336-30,    0,       -150,  -150,   0);
setMoveKey(  350-30,    0,      -150,  -150,   0);
setMoveKey(  358-30,    0,      -950,  -200,   0);

setMoveKey(   336-30,   1,      250, 150,   0);
setMoveKey(   348-30,   1,      250, 150,   0);
setMoveKey(   360-30,   1,      450, 150,   0);

changeAnime( 348-30, 1, 106);                                    -- 後ろ向きポーズ

sen7 = entryEffectLife( 316, 921, 133, 0x80+0x100,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 316, sen7, 170);
setEffScaleKey( 316, sen7, 1.6, 1.6);

kamehame_beam = entryEffectLife( 290-30, SP_03, 107, 0x40+0x100,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffAlphaKey( 290-30, kamehame_beam, 0);
setEffAlphaKey( 315, kamehame_beam, 0);
setEffAlphaKey( 316, kamehame_beam, 255);


setEffScaleKey( 290, kamehame_beam, 0.8, 0.8);
setEffScaleKey( 349-30, kamehame_beam, 0.8, 0.8);
setEffScaleKey( 350-30, kamehame_beam, 1.5, 1.5);

playSe( 360-30, 1022);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 298, 10012, 57, 0, -1, 0, -100, 70); -- ズオッ
setEffRotateKey( SP_start+298, ct, 15);
setEffShake( SP_start+298, ct, 32, 5);
setEffAlphaKey( SP_start+298, ct, 255);
setEffAlphaKey( SP_start+340-30, ct, 255);
setEffAlphaKey( SP_start+350-30, ct, 0);

setEffScaleKey(SP_start+ 298, ct, 0.0, 0.0);
setEffScaleKey(SP_start+ 320-30, ct, 1.3, 1.3);
setEffScaleKey(SP_start+342-30, ct, 1.3, 1.3);
setEffScaleKey(SP_start+350-30, ct, 6.0, 6.0);


setEffScaleKey( SP_start+334-30, ct, 3.0, 3.0);
setEffShake( SP_start+334-30, ct, 55, 10);

playSe( SP_start+324-30, SE_06);
setDisp( SP_start+354-30, 1, 0);

kamehame_beam = entryEffect( SP_start+ 372-30, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( SP_start+403-30, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン413
setEffShake(SP_start+403-30, ct, 99, 20);
setEffScaleKey( SP_start+403-30, ct, 0.1, 0.1);
setEffScaleKey( SP_start+408-30, ct, 2.4, 2.4);
setEffScaleKey( SP_start+430-30, ct, 2.8, 2.8);
setEffAlphaKey(SP_start+403-30, ct, 255);
setEffAlphaKey(SP_start+418-30, ct, 255);
setEffAlphaKey(SP_start+430-30, ct, 0);

SP_start2=53-30; 

setScaleKey( SP_start2+ SP_start+ 372,   1, 2.3, 2.3);

entryFade( SP_start2+ SP_start+ 372, 6, 17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
kamehame_beam2 = entryEffect( SP_start2+ SP_start+ 388, SP_04, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( SP_start2+ SP_start+388, kamehame_beam2, -1.0, 1.0);

setDisp( SP_start2+ SP_start+ 389, 0, 0);
setDisp( SP_start2+ SP_start+ 389, 1, 1);


changeAnime( SP_start2+ SP_start+ 390, 1, 107);                         -- 手前ダメージ
playSe( SP_start2+ SP_start+ 398, SE_10);

-- ダメージ表示
dealDamage( SP_start2+ SP_start+406);

entryFade( SP_start2+ SP_start+ 490, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start2+ SP_start+500);

end
