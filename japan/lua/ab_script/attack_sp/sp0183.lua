

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
SP_02 = 108025;
SP_03 = 108026;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start = -60;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
--playSe( SP_start+ 73, SE_03);
playSe( SP_start+ 73, 1035);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, 17);


entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture(  speff, 1, 1);
setEffReplaceTexture(  speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -600,  0,   0);
setMoveKey( SP_start+  261,    0,   -600,  0,   0);
setMoveKey( SP_start+  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 84, 0x40,  0,  300,  50,  150);   -- 伸びるかめはめ波

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start+  299,    0,   -100,  0,   0);
setMoveKey( SP_start+  300,    0,   -100,  0,   0);
setMoveKey( SP_start+  308,    0,   -1100,  0,   0);

entryFade( SP_start+ 340, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+344);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 84, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start+ 260, 920, 84, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

--entryFlash( SP_start+ (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
--playSe( SP_start+ 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

SP_ATK_31=350;

setDisp( SP_start+ 350, 0, 0);
setDisp( SP_start+ 350, 1, 1);
setDisp( SP_start+ 351, 1, 1);
changeAnime( SP_start+ 350, 1, 104);                        -- ガード

setMoveKey( SP_start+  SP_ATK_31,    1,   700,  0,   0);
setScaleKey( SP_start+ SP_ATK_31, 1,  1.8, 1.8);

kamehame_beam3 = entryEffectLife( SP_start+ SP_ATK_31+24, SP_03, 15, 0x40+0x80, 0, 0, 0, 0);

setEffScaleKey( SP_start+  SP_ATK_31+24, kamehame_beam3, 0.6, 0.6 );
setEffMoveKey( SP_start+  SP_ATK_31+24,  kamehame_beam3, -400,  0,   5);

entryFadeBg( SP_start+ SP_ATK_31, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start+ SP_ATK_31, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め

setMoveKey( SP_start+  SP_ATK_31+39,  1,  200,  0,   0);
setScaleKey( SP_start+ SP_ATK_31+39, 1,  1.8, 1.8);

setEffScaleKey( SP_start+  SP_ATK_31+39, kamehame_beam3, 0.6, 0.6 );

setEffMoveKey( SP_start+  SP_ATK_31+29,  kamehame_beam3, -200,  0,   5);
setEffMoveKey( SP_start+  SP_ATK_31+34,  kamehame_beam3, 0,  0,   5);
setEffMoveKey( SP_start+  SP_ATK_31+39,  kamehame_beam3, 200,  0,   5);
--setEffMoveKey( SP_start+  SP_ATK_31+39+5,  kamehame_beam3, 200,  0,   5);

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

endPhase(SP_dodge+10);
do return end
else end




entryEffect( SP_start+ SP_ATK_31+40, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setDisp( SP_start+ SP_ATK_31+40, 1, 0);

--end

playSe( SP_start+ SP_ATK_31+33, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ SP_ATK_31+20+5, 1, 99, 20);



-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_31, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+SP_ATK_31, ct, 99, 20);
setEffScaleKey( SP_start+ SP_ATK_31, ct, 2.4, 2.4);
setEffRotateKey( SP_start+SP_ATK_31, ct, 70);
setEffAlphaKey( SP_start+SP_ATK_31, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_31+20+5, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_31+25+5, ct, 0);


-- ヒットエフェクト

entryFade( SP_start+ SP_ATK_31+39, 4,  5, 3, 255, 255, 255, 255);     -- white fade

removeAllEffect( SP_start+SP_ATK_31+44);



SP_ATK_41=SP_ATK_31+39+5;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ SP_ATK_41, 1, 1);
setMoveKey( SP_start+  SP_ATK_41,    1,  100,  0,   0);
setScaleKey( SP_start+ SP_ATK_41,    1,  1.0, 1.0);
setMoveKey( SP_start+  SP_ATK_41+1,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_41+1,    1,  0.1, 0.1);

changeAnime( SP_start+ SP_ATK_41+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ SP_ATK_41+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ SP_ATK_41+9, SE_10);

setMoveKey( SP_start+  SP_ATK_41+9,   1,    0,   0,   128);
setMoveKey( SP_start+  SP_ATK_41+16,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+  486,   1,  -60,  -200,  -100);
setDamage( SP_start+ SP_ATK_41+17, 1, 0);  -- ダメージ振動等
setShake( SP_start+SP_ATK_41+8,6,15);
setShake( SP_start+SP_ATK_41+14,15,10);

setRotateKey( SP_start+ SP_ATK_41+1,  1,  30 );
setRotateKey( SP_start+ SP_ATK_41+3,  1,  80 );
setRotateKey( SP_start+ SP_ATK_41+5,  1, 120 );
setRotateKey( SP_start+ SP_ATK_41+7,  1, 160 );
setRotateKey( SP_start+ SP_ATK_41+9,  1, 200 );
setRotateKey( SP_start+ SP_ATK_41+11,  1, 260 );
setRotateKey( SP_start+ SP_ATK_41+13,  1, 320 );
setRotateKey( SP_start+ SP_ATK_41+15,  1,   0 );

setShakeChara( SP_start+ SP_ATK_41+16, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_41+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_41+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+SP_ATK_41+16, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_41+16, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_41+16, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_41+17, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_41+18, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_41+19, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_41+20, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_41+21, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_41+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_41+16, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_41+106, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_41+116, ct, 0);

playSe( SP_start+ SP_ATK_41+4, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_41+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_41+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+SP_ATK_41+17);

entryFade( SP_start+ SP_ATK_41+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+SP_ATK_41+111);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
--playSe( SP_start+ 73, SE_03);
playSe( SP_start+ 73, 1035);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start+ 80, 17);


entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture(  speff, 1, 1);
setEffReplaceTexture(  speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -600,  0,   0);
setMoveKey( SP_start+  261,    0,   -600,  0,   0);
setMoveKey( SP_start+  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 84, 0x40,  0,  300,  50,  150);   -- 伸びるかめはめ波

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start+  299,    0,   -100,  0,   0);
setMoveKey( SP_start+  300,    0,   -100,  0,   0);
setMoveKey( SP_start+  308,    0,   -1100,  0,   0);

entryFade( SP_start+ 340, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+344);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 84, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start+ 260, 920, 84, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
--playSe( SP_start+ 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

SP_ATK_31=350;

setDisp( SP_start+ 350, 0, 0);
setDisp( SP_start+ 350, 1, 1);
setDisp( SP_start+ 351, 1, 1);
changeAnime( SP_start+ 350, 1, 104);                        -- ガード

setMoveKey( SP_start+  SP_ATK_31,    1,   700,  0,   0);
setScaleKey( SP_start+ SP_ATK_31, 1,  1.8, 1.8);

kamehame_beam3 = entryEffectLife( SP_start+ SP_ATK_31+24, SP_03, 15, 0x40+0x80, 0, 0, 0, 0);

setEffScaleKey( SP_start+  SP_ATK_31+24, kamehame_beam3, 0.6, 0.6 );
setEffMoveKey( SP_start+  SP_ATK_31+24,  kamehame_beam3, -400,  0,   5);

entryFadeBg( SP_start+ SP_ATK_31, 4, 40, 4, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start+ SP_ATK_31, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め

setMoveKey( SP_start+  SP_ATK_31+39,  1,  200,  0,   0);
setScaleKey( SP_start+ SP_ATK_31+39, 1,  1.8, 1.8);

setEffScaleKey( SP_start+  SP_ATK_31+39, kamehame_beam3, 0.6, 0.6 );

setEffMoveKey( SP_start+  SP_ATK_31+29,  kamehame_beam3, -200,  0,   5);
setEffMoveKey( SP_start+  SP_ATK_31+34,  kamehame_beam3, 0,  0,   5);
setEffMoveKey( SP_start+  SP_ATK_31+39,  kamehame_beam3, 200,  0,   5);
--setEffMoveKey( SP_start+  SP_ATK_31+39+5,  kamehame_beam3, 200,  0,   5);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 330; --エンドフェイズのフレーム数を置き換える

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



entryEffect( SP_start+ SP_ATK_31+40, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

setDisp( SP_start+ SP_ATK_31+40, 1, 0);

--end

playSe( SP_start+ SP_ATK_31+33, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ SP_ATK_31+20+5, 1, 99, 20);



-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_31, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+SP_ATK_31, ct, 99, 20);
setEffScaleKey( SP_start+ SP_ATK_31, ct, 2.4, 2.4);
setEffRotateKey( SP_start+SP_ATK_31, ct, -70);
setEffAlphaKey( SP_start+SP_ATK_31, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_31+20+5, ct, 255);
setEffAlphaKey( SP_start+SP_ATK_31+25+5, ct, 0);


-- ヒットエフェクト

entryFade( SP_start+ SP_ATK_31+39, 4,  5, 3, 255, 255, 255, 255);     -- white fade

removeAllEffect( SP_start+SP_ATK_31+44);


SP_ATK_41=SP_ATK_31+39+5;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ SP_ATK_41, 1, 1);
setMoveKey( SP_start+  SP_ATK_41,    1,  100,  0,   0);
setScaleKey( SP_start+ SP_ATK_41,    1,  1.0, 1.0);
setMoveKey( SP_start+  SP_ATK_41+1,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_41+1,    1,  0.1, 0.1);

changeAnime( SP_start+ SP_ATK_41+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ SP_ATK_41+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ SP_ATK_41+9, SE_10);

setMoveKey( SP_start+  SP_ATK_41+9,   1,    0,   0,   128);
setMoveKey( SP_start+  SP_ATK_41+16,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+  486,   1,  -60,  -200,  -100);
setDamage( SP_start+ SP_ATK_41+17, 1, 0);  -- ダメージ振動等
setShake( SP_start+SP_ATK_41+8,6,15);
setShake( SP_start+SP_ATK_41+14,15,10);

setRotateKey( SP_start+ SP_ATK_41+1,  1,  30 );
setRotateKey( SP_start+ SP_ATK_41+3,  1,  80 );
setRotateKey( SP_start+ SP_ATK_41+5,  1, 120 );
setRotateKey( SP_start+ SP_ATK_41+7,  1, 160 );
setRotateKey( SP_start+ SP_ATK_41+9,  1, 200 );
setRotateKey( SP_start+ SP_ATK_41+11,  1, 260 );
setRotateKey( SP_start+ SP_ATK_41+13,  1, 320 );
setRotateKey( SP_start+ SP_ATK_41+15,  1,   0 );

setShakeChara( SP_start+ SP_ATK_41+16, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_41+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_41+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+SP_ATK_41+16, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_41+16, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_41+16, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_41+17, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_41+18, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_41+19, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_41+20, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_41+21, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_41+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_41+16, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_41+106, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_41+116, ct, 0);

playSe( SP_start+ SP_ATK_41+4, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_41+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_41+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+SP_ATK_41+17);

entryFade( SP_start+ SP_ATK_41+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+SP_ATK_41+111);

end
