

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = 247;

parX = 27;

SE_01 = 1035; --気を貯める
SE_02 = 1038; --気が広がる
SE_03 = 03; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 40; --発射
SE_07 = 45; --のびる発射
SE_08 = 1001; --カットイン
SE_09 = 1011; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01 = 100153;
SP_02 = 100157;
SP_03 = 100158;
SP_04 = 100331;
SP_05 = 4;--暗転後のヒットエフェクト

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
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

setQuake(30,39,15);

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
entryFadeBg( 69, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryFadeBg( 40, 30, 109, 10, 250, 250, 250, 255);       -- ベース暗め　背景
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -5,  -5);   -- 手のカメハメ波部
-- ** エフェクト等 ** --
setShakeChara( 70, 0, 100, 5);

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


playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 257, SP_02, 112, 0x40,  0,  300,  300,  200);   -- 伸びるかめはめ波
setEffAlphaKey(257, kamehame_beam, 0);
setEffAlphaKey(259, kamehame_beam, 0);
setEffAlphaKey(260, kamehame_beam, 255);

--playSe( 260, SE_07);

spname = entryEffect( 257, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  300,    0,   -100,  0,   0);
setMoveKey(  308,    0,   -1100,  0,   0);
setDisp(  308, 0, 0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 250, 250, 250, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

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

SP_start = -20;

setDisp(  260, 1, 1);
changeAnime( 260, 1, 104);                        -- ガード
setScaleKey( 260,    1,  1.6,  1.6);

setMoveKey( 260,    1,  600,  0,   0);
setMoveKey( SP_start+  340,    1,  600,  0,   0);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  0,  0,   0);
setMoveKey( SP_start+  370,    1,  0,  0,   0);
setMoveKey( SP_start+  371,    1,  0,  0,   0);
setScaleKey( SP_start+ 369,    1,  1.6,  1.6);
setScaleKey( SP_start+ 370,    1,  1.6,  1.6);

setMoveKey( SP_start+  400,    1,   0,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

--playSe( SP_start+ 390, SE_07);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
kamehame_beam3 = entryEffect( SP_start+ 370, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波

setDamage( SP_start+ 452-parX, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 370, 1040);
changeAnime( SP_start+ 370, 1, 106);

setRotateKey( SP_start+ 369 , 1 , 0);
setRotateKey( SP_start+ 370 , 1 , -80);

-- 敵吹っ飛ぶモーション

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99-parX, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, 10);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+430-parX, ct, 255);
setEffAlphaKey( SP_start+450-parX, ct, 0);

entryFade( SP_start+ 442-parX, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6= SP_start+ 442-parX+13; --211 260
setRotateKey( spep_6 , 1 , -80);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 340; --エンドフェイズのフレーム数を置き換える

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

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setDisp( spep_6, 0, 1);
setDisp( spep_6, 1, 0);
setScaleKey( spep_6,    0,  1.6,  1.6);

changeAnime( spep_6, 0, 3);                  -- ダッシュ
entryFadeBg( spep_6, 0, 130, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--playSe( 0, 1018);
setMoveKey(  spep_6+10,   0,  -800,  0,   0);
setMoveKey(  spep_6+60,   0,  0, 0,  0);
setMoveKey(  spep_6+65,   0,  -150, 0,  -10);
setMoveKey(  spep_6+75,   0,  1050, 0,  -20);

setBgScroll(spep_6+65,100);

playSe( spep_6, 1018);
playSe( spep_6+60, 1018);

--playSe( 30, 1035); --かめはめ波


-- ** エフェクト等 ** --

entryFade( spep_6+80, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setBgScroll(spep_6+85,0);
setScaleKey( spep_6+85,    0,  1.6,  1.6);
setRotateKey( spep_6+85 , 1 , 0);
setDisp( spep_6+85, 1, 1);

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( spep_6+30, 85, 15);

-- 書き文字エントリー
--[[
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);
--]]

shuchusen5 = entryEffectLife( spep_6, 906, 85, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_6+60, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_6+85, shuchusen5, 1.0, 1.0);


ryusen_1=entryEffectLife( spep_6, 920, 88, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

------------------------------------------------------
-- 暗転後攻撃(100F)
------------------------------------------------------

diff01 = 10;
diff02 = 85;
diff04 = 0;

--攻撃演出--

-- ** エフェクト等 ** --
--setShakeChara( SP_start+ SP_ATK011, 1, 99, 20);
entryFadeBg( spep_6+ diff02, 0, 115+diff01+10+12, 0, 0, 0, 0, 255);          -- ベース暗 背景 469 ~ 505
entryEffectLife( spep_6+ diff02, 921, 115+diff01+10+12, 0x80,  -1,  0,  0,  0); -- 流線斜め ~505
--entryFlash( spep_6+ (10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage( spep_6+  64+diff01+diff02,  1,  0);   --ダメージ振動等 ~543

eff01 = entryEffect( diff04+ spep_6+ 35+diff02, SP_05, 0, 1,  0,  0,  0);   -- ヒットエフェクト 
setEffScaleKey( diff04+ spep_6+ 35+diff02, eff01,2,2);--サイズ
setEffRotateKey( diff04+ spep_6+35+diff02, eff01,-10);--角度
--entryFlashBg( diff04+ spep_6+ (35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( diff04+ spep_6+ 36+diff02, 1, 106);--やられ   
playSe( diff04+ spep_6+ 35+diff02, SE_09);
entryFadeBg( diff04+ spep_6+ 35+diff02, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll( diff04+ spep_6+36+diff02,10);

--2撃目--
entryEffectLife( diff04+ spep_6+ 50+diff01+diff02, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( diff04+ spep_6+ 50+diff01+diff02, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 50+diff01+diff02, eff02,2,3);--サイズ
setEffRotateKey( diff04+ spep_6+50+diff01+diff02, eff02,-70);--角度
--entryFlashBg( diff04+ spep_6+ (50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( diff04+ spep_6+ 50+diff01+diff02, SE_08);
changeAnime( diff04+ spep_6+ 50+diff01+diff02, 1, 105);--やられ 
setShake( diff04+ spep_6+ 50+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  50+diff01+diff02, 1, 0,  0,  0);
setMoveKey( diff04+ spep_6+  51+diff01+diff02, 1, 50,  -50,  0);

eff03 = entryEffect( diff04+ spep_6+ 57+diff01+diff02, SP_05,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( diff04+ spep_6+ 57+diff01+diff02, eff03, 3,3);--サイズ
setEffRotateKey( diff04+ spep_6+57+diff01+diff02, eff03, 70);--角度
playSe( diff04+ spep_6+ 57+diff01+diff02, SE_09);
changeAnime( diff04+ spep_6+ 57+diff01+diff02, 1, 108);--やられ 
setShake( diff04+ spep_6+ 57+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  57+diff01+diff02, 1, 50,  -50,  -128);
setMoveKey( diff04+ spep_6+  58+diff01+diff02, 1, -80,  30,  -128);

eff04 = entryEffect( diff04+ spep_6+ 65+diff01+diff02, SP_05,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( diff04+ spep_6+ 65+diff01+diff02, eff04, 3,2);--サイズ
setEffRotateKey( diff04+ spep_6+65+diff01+diff02, eff04, -80);--角度
playSe( diff04+ spep_6+ 65+diff01+diff02, SE_08);
changeAnime( diff04+ spep_6+ 65+diff01+diff02, 1, 106);--やられ 
setShake( diff04+ spep_6+ 65+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  65+diff01+diff02, 1, -80,  30,  -128);
setMoveKey( diff04+ spep_6+  66+diff01+diff02, 1, 40,  -35,  -128);

eff05 = entryEffect( diff04+ spep_6+ 72+diff01+diff02, SP_05,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 72+diff01+diff02, eff05, 0.4,3);--サイズ
setEffRotateKey( diff04+ spep_6+72+diff01+diff02, eff05, 45);--角度
--entryFlashBg( diff04+ spep_6+ (72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( diff04+ spep_6+ 72+diff01+diff02, SE_09);
setShake( diff04+ spep_6+ 72+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  72+diff01+diff02, 1, 40,  -35,  -128);
setMoveKey( diff04+ spep_6+  73+diff01+diff02, 1, -90,  -90,  -128);

eff06 = entryEffect( diff04+ spep_6+ 76+diff01+diff02, SP_05,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 76+diff01+diff02, eff06, 1,2);--サイズ
setEffRotateKey( diff04+ spep_6+76+diff01+diff02, eff06, -100);--角度
playSe( diff04+ spep_6+ 76+diff01+diff02, SE_08);
changeAnime( diff04+ spep_6+ 76+diff01+diff02, 1, 105);--やられ 
setShake( diff04+ spep_6+ 76+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  76+diff01+diff02, 1, 90,  -90,  -128);
setMoveKey( diff04+ spep_6+  77+diff01+diff02, 1, -60, 80,  -128);

eff07 = entryEffect( diff04+ spep_6+ 80+diff01+diff02, SP_05,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 80+diff01+diff02, eff07, 2,1.5);--サイズ
setEffRotateKey( diff04+ spep_6+80+diff01+diff02, eff07, 130);--角度
playSe( diff04+ spep_6+ 80+diff01+diff02, SE_08);
--entryFlashBg( diff04+ spep_6+ (80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( diff04+ spep_6+ 80+diff01+diff02, 1, 106);--やられ 
setShake( diff04+ spep_6+ 80+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  80+diff01+diff02, 1, -60, 80,  -128);
setMoveKey( diff04+ spep_6+  81+diff01+diff02, 1, 80,  60,  -128);

diff03 = 7

eff08 = entryEffect( diff04+ spep_6+ 91+diff01+diff02+diff03, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 91+diff01+diff02+diff03, eff08, 2,4);--サイズ
setEffRotateKey( diff04+ spep_6+91+diff01+diff02+diff03, eff08, -15);--角度
playSe( diff04+ spep_6+ 91+diff01+diff02+diff03, SE_09);
setShake( diff04+ spep_6+ 91+diff01+diff02+diff03, 3, 14);
--entryFadeBg( diff04+ spep_6+ 92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( diff04+ spep_6+ 92+diff01+diff02+diff03, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( diff04+ spep_6+ 92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( diff04+ spep_6+ 94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey( diff04+ spep_6+  92+diff01+diff02+diff03, 1, 0,  0,  -128);
pauseAll( diff04+ spep_6+92+diff01+diff02+diff03,5);

-- 書き文字エントリー
ct = entryEffectLife( diff04+ spep_6+ 35+diff02, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( diff04+ spep_6+35+diff02, ct, 81, 20);
setEffScaleKey( diff04+ spep_6+ 35+diff02, ct, 2.4, 2.4);
setEffRotateKey( diff04+ spep_6+35+diff02, ct, 70);
setEffAlphaKey( diff04+ spep_6+35+diff02, ct, 255);
setEffAlphaKey( diff04+ spep_6+103+diff01+diff02, ct, 255);
setEffAlphaKey( diff04+ spep_6+127+diff01+diff02, ct, 0);

--entryFade( diff04+ spep_6+ 100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 100); 

entryFade( diff04+ spep_6+ 110+diff01+10+diff02, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 
setMoveKey( diff04+ spep_6+ 110+diff01+10+diff02, 1, 0,  0,  -128);
setDisp( diff04+spep_6+ 110+diff01+10+12+diff02, 1, 0);

SP_ATK022=spep_6+diff04+110+diff01+10+12+diff02;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setMoveKey( SP_ATK022,    1,  100,  0,   0);
setScaleKey( SP_ATK022,    1,  1.0, 1.0);
setDisp( SP_ATK022+1, 1, 1);
setMoveKey( SP_ATK022+1,    1,    0,   0,   128);
setScaleKey( SP_ATK022+1,    1,  0.1, 0.1);

changeAnime( SP_ATK022+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK022+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK022+9, SE_10);

setMoveKey( SP_ATK022+9,   1,    0,   0,   128);
setMoveKey( SP_ATK022+16,   1,  -60,  -200,  -100);
--setMoveKey( SP_ATK022+  486-parX,   1,  -60,  -200,  -100);
setDamage( SP_ATK022+17, 1, 0);  -- ダメージ振動等
setShake( SP_ATK022+8,6,15);
setShake( SP_ATK022+14,15,10);

setRotateKey( SP_ATK022+1,  1,  30 );
setRotateKey( SP_ATK022+3,  1,  80 );
setRotateKey( SP_ATK022+5,  1, 120 );
setRotateKey( SP_ATK022+7,  1, 160 );
setRotateKey( SP_ATK022+9,  1, 200 );
setRotateKey( SP_ATK022+11,  1, 260 );
setRotateKey( SP_ATK022+13,  1, 320 );
setRotateKey( SP_ATK022+15,  1,   0 );

setShakeChara( SP_ATK022+16, 1, 5,  10);
setShakeChara( SP_ATK022+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK022+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK022+16, ct, 30, 10);
setEffRotateKey( SP_ATK022+16, ct, -40);
setEffScaleKey( SP_ATK022+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK022+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK022+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK022+29, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK022+30, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK022+31, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK022+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK022+16, ct, 255);
setEffAlphaKey( SP_ATK022+106, ct, 255);
setEffAlphaKey( SP_ATK022+116, ct, 0);

playSe( SP_ATK022+4, SE_11);
shuchusen = entryEffectLife( SP_ATK022+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK022+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_ATK022+17);

entryFade( SP_ATK022+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_ATK022+111);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

setQuake(30,39,15);

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
entryFadeBg( 69, 0, 100, 0, 10, 10, 10, 180);       -- ベース暗め　背景 260

setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryFadeBg( 40, 30, 109, 10, 250, 250, 250, 255);       -- ベース暗め　背景
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -5,  -5);   -- 手のカメハメ波部
-- ** エフェクト等 ** --
setShakeChara( 70, 0, 100, 5);

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


playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 257, SP_02, 112, 0x40,  0,  300,  300,  200);   -- 伸びるかめはめ波
setEffAlphaKey(257, kamehame_beam, 0);
setEffAlphaKey(259, kamehame_beam, 0);
setEffAlphaKey(260, kamehame_beam, 255);

--playSe( 260, SE_07);

spname = entryEffect( 257, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  299,    0,   -100,  0,   0);
setMoveKey(  300,    0,   -100,  0,   0);
setMoveKey(  308,    0,   -1100,  0,   0);
setDisp(  308, 0, 0);

--entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 250, 250, 250, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

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

SP_start = -20;

setDisp(  260, 1, 1);
changeAnime( 260, 1, 104);                        -- ガード
setScaleKey( 260,    1,  1.6,  1.6);

setMoveKey( 260,    1,  600,  0,   0);
setMoveKey( SP_start+  340,    1,  600,  0,   0);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  0,  0,   0);
setMoveKey( SP_start+  370,    1,  0,  0,   0);
setMoveKey( SP_start+  371,    1,  0,  0,   0);
setScaleKey( SP_start+ 369,    1,  1.6,  1.6);
setScaleKey( SP_start+ 370,    1,  1.6,  1.6);

setMoveKey( SP_start+  400,    1,   0,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

--playSe( SP_start+ 390, SE_07);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
kamehame_beam3 = entryEffect( SP_start+ 370, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波

setDamage( SP_start+ 452-parX, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 370, 1040);
changeAnime( SP_start+ 370, 1, 106);

setRotateKey( SP_start+ 369 , 1 , 0);
setRotateKey( SP_start+ 370 , 1 , -80);

-- 敵吹っ飛ぶモーション

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99-parX, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, -10);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+430-parX, ct, 255);
setEffAlphaKey( SP_start+450-parX, ct, 0);

entryFade( SP_start+ 442-parX, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6= SP_start+ 442-parX+13; --211 260
setRotateKey( spep_6 , 1 , -80);


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 340; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setDisp( spep_6, 0, 1);
setDisp( spep_6, 1, 0);
setScaleKey( spep_6,    0,  1.6,  1.6);

changeAnime( spep_6, 0, 3);                  -- ダッシュ
entryFadeBg( spep_6, 0, 85, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--playSe( 0, 1018);
setMoveKey(  spep_6+10,   0,  -800,  0,   0);
setMoveKey(  spep_6+60,   0,  0, 0,  0);
setMoveKey(  spep_6+65,   0,  -150, 0,  -10);
setMoveKey(  spep_6+75,   0,  1050, 0,  -20);

setBgScroll(spep_6+65,100);

playSe( spep_6+20, 1018);
playSe( spep_6+70, 1018);

--playSe( 30, 1035); --かめはめ波


-- ** エフェクト等 ** --

entryFade( spep_6+80, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setBgScroll(spep_6+85,0);
setScaleKey( spep_6+85,    0,  1.6,  1.6);
setRotateKey( spep_6+85 , 1 , 0);
setDisp( spep_6+85, 1, 1);

-- ** 揺れ等 ** --
--setShakeChara( 30, 0, 95, 7);
setShake( spep_6+30, 83, 15);

-- 書き文字エントリー
--[[
ct = entryEffectLife( 30, 10008, 95, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(30, ct, 95, 8);
setEffScaleKey(30, ct, 1.4, 1.4);
--]]

shuchusen5 = entryEffectLife( spep_6, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_6+60, shuchusen5, 1.0, 1.0);
setEffScaleKey( spep_6+85, shuchusen5, 1.0, 1.0);


ryusen_1=entryEffectLife( spep_6, 920, 83, 0x80,  -1,  0,  0,  0); -- 流線 90-30
--setEffRotateKey(spep_6,ryusen_1,-10);
setEffScaleKey(  spep_6, ryusen_1, 1.3, 1.3);

------------------------------------------------------
-- 暗転後攻撃(100F)
------------------------------------------------------

diff01 = 10;
diff02 = 80;
diff04 = 0;

--攻撃演出--

-- ** エフェクト等 ** --
--setShakeChara( SP_start+ SP_ATK011, 1, 99, 20);
entryFadeBg( spep_6+ diff02, 0, 115+diff01+10+12, 0, 0, 0, 0, 255);          -- ベース暗 背景 469 ~ 505
entryEffectLife( spep_6+ diff02, 921, 115+diff01+10+12, 0x80,  -1,  0,  0,  0); -- 流線斜め ~505
--entryFlash( spep_6+ (10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage( spep_6+  64+diff01+diff02,  1,  0);   --ダメージ振動等 ~543

eff01 = entryEffect( diff04+ spep_6+ 35+diff02, SP_05, 0, 1,  0,  0,  0);   -- ヒットエフェクト 
setEffScaleKey( diff04+ spep_6+ 35+diff02, eff01,2,2);--サイズ
setEffRotateKey( diff04+ spep_6+35+diff02, eff01,-10);--角度
--entryFlashBg( diff04+ spep_6+ (35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( diff04+ spep_6+ 36+diff02, 1, 106);--やられ   
playSe( diff04+ spep_6+ 35+diff02, SE_09);
entryFadeBg( diff04+ spep_6+ 35+diff02, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll( diff04+ spep_6+36+diff02,10);

--2撃目--
entryEffectLife( diff04+ spep_6+ 50+diff01+diff02, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( diff04+ spep_6+ 50+diff01+diff02, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 50+diff01+diff02, eff02,2,3);--サイズ
setEffRotateKey( diff04+ spep_6+50+diff01+diff02, eff02,-70);--角度
--entryFlashBg( diff04+ spep_6+ (50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( diff04+ spep_6+ 50+diff01+diff02, SE_08);
changeAnime( diff04+ spep_6+ 50+diff01+diff02, 1, 105);--やられ 
setShake( diff04+ spep_6+ 50+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  50+diff01+diff02, 1, 0,  0,  0);
setMoveKey( diff04+ spep_6+  51+diff01+diff02, 1, 50,  -50,  0);

eff03 = entryEffect( diff04+ spep_6+ 57+diff01+diff02, SP_05,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( diff04+ spep_6+ 57+diff01+diff02, eff03, 3,3);--サイズ
setEffRotateKey( diff04+ spep_6+57+diff01+diff02, eff03, 70);--角度
playSe( diff04+ spep_6+ 57+diff01+diff02, SE_09);
changeAnime( diff04+ spep_6+ 57+diff01+diff02, 1, 108);--やられ 
setShake( diff04+ spep_6+ 57+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  57+diff01+diff02, 1, 50,  -50,  -128);
setMoveKey( diff04+ spep_6+  58+diff01+diff02, 1, -80,  30,  -128);

eff04 = entryEffect( diff04+ spep_6+ 65+diff01+diff02, SP_05,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( diff04+ spep_6+ 65+diff01+diff02, eff04, 3,2);--サイズ
setEffRotateKey( diff04+ spep_6+65+diff01+diff02, eff04, -80);--角度
playSe( diff04+ spep_6+ 65+diff01+diff02, SE_08);
changeAnime( diff04+ spep_6+ 65+diff01+diff02, 1, 106);--やられ 
setShake( diff04+ spep_6+ 65+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  65+diff01+diff02, 1, -80,  30,  -128);
setMoveKey( diff04+ spep_6+  66+diff01+diff02, 1, 40,  -35,  -128);

eff05 = entryEffect( diff04+ spep_6+ 72+diff01+diff02, SP_05,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 72+diff01+diff02, eff05, 0.4,3);--サイズ
setEffRotateKey( diff04+ spep_6+72+diff01+diff02, eff05, 45);--角度
--entryFlashBg( diff04+ spep_6+ (72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( diff04+ spep_6+ 72+diff01+diff02, SE_09);
setShake( diff04+ spep_6+ 72+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  72+diff01+diff02, 1, 40,  -35,  -128);
setMoveKey( diff04+ spep_6+  73+diff01+diff02, 1, -90,  -90,  -128);

eff06 = entryEffect( diff04+ spep_6+ 76+diff01+diff02, SP_05,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 76+diff01+diff02, eff06, 1,2);--サイズ
setEffRotateKey( diff04+ spep_6+76+diff01+diff02, eff06, -100);--角度
playSe( diff04+ spep_6+ 76+diff01+diff02, SE_08);
changeAnime( diff04+ spep_6+ 76+diff01+diff02, 1, 105);--やられ 
setShake( diff04+ spep_6+ 76+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  76+diff01+diff02, 1, 90,  -90,  -128);
setMoveKey( diff04+ spep_6+  77+diff01+diff02, 1, -60, 80,  -128);

eff07 = entryEffect( diff04+ spep_6+ 80+diff01+diff02, SP_05,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 80+diff01+diff02, eff07, 2,1.5);--サイズ
setEffRotateKey( diff04+ spep_6+80+diff01+diff02, eff07, 130);--角度
playSe( diff04+ spep_6+ 80+diff01+diff02, SE_08);
--entryFlashBg( diff04+ spep_6+ (80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( diff04+ spep_6+ 80+diff01+diff02, 1, 106);--やられ 
setShake( diff04+ spep_6+ 80+diff01+diff02, 3, 14);
setMoveKey( diff04+ spep_6+  80+diff01+diff02, 1, -60, 80,  -128);
setMoveKey( diff04+ spep_6+  81+diff01+diff02, 1, 80,  60,  -128);

diff03 = 7

eff08 = entryEffect( diff04+ spep_6+ 91+diff01+diff02+diff03, SP_05,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( diff04+ spep_6+ 91+diff01+diff02+diff03, eff08, 2,4);--サイズ
setEffRotateKey( diff04+ spep_6+91+diff01+diff02+diff03, eff08, -15);--角度
playSe( diff04+ spep_6+ 91+diff01+diff02+diff03, SE_09);
setShake( diff04+ spep_6+ 91+diff01+diff02+diff03, 3, 14);
--entryFadeBg( diff04+ spep_6+ 92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( diff04+ spep_6+ 92+diff01+diff02+diff03, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( diff04+ spep_6+ 92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( diff04+ spep_6+ 94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey( diff04+ spep_6+  92+diff01+diff02+diff03, 1, 0,  0,  -128);
pauseAll( diff04+ spep_6+92+diff01+diff02+diff03,5);

-- 書き文字エントリー
ct = entryEffectLife( diff04+ spep_6+ 35+diff02, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( diff04+ spep_6+35+diff02, ct, 81, 20);
setEffScaleKey( diff04+ spep_6+ 35+diff02, ct, 2.4, 2.4);
setEffRotateKey( diff04+ spep_6+35+diff02, ct, -70);
setEffAlphaKey( diff04+ spep_6+35+diff02, ct, 255);
setEffAlphaKey( diff04+ spep_6+103+diff01+diff02, ct, 255);
setEffAlphaKey( diff04+ spep_6+127+diff01+diff02, ct, 0);

--entryFade( diff04+ spep_6+ 100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 100); 

entryFade( diff04+ spep_6+ 115+diff01+10+diff02, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

setDisp( diff04+spep_6+ 115+diff01+10+12+diff02, 1, 0);

SP_ATK022=spep_6+diff04+115+diff01+10+12+diff02;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setMoveKey( SP_ATK022,    1,  100,  0,   0);
setScaleKey( SP_ATK022,    1,  1.0, 1.0);
setDisp( SP_ATK022+1, 1, 1);
setMoveKey( SP_ATK022+1,    1,    0,   0,   128);
setScaleKey( SP_ATK022+1,    1,  0.1, 0.1);

changeAnime( SP_ATK022+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK022+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK022+9, SE_10);

setMoveKey( SP_ATK022+9,   1,    0,   0,   128);
setMoveKey( SP_ATK022+16,   1,  -60,  -200,  -100);
--setMoveKey( SP_ATK022+  486-parX,   1,  -60,  -200,  -100);
setDamage( SP_ATK022+17, 1, 0);  -- ダメージ振動等
setShake( SP_ATK022+8,6,15);
setShake( SP_ATK022+14,15,10);

setRotateKey( SP_ATK022+1,  1,  30 );
setRotateKey( SP_ATK022+3,  1,  80 );
setRotateKey( SP_ATK022+5,  1, 120 );
setRotateKey( SP_ATK022+7,  1, 160 );
setRotateKey( SP_ATK022+9,  1, 200 );
setRotateKey( SP_ATK022+11,  1, 260 );
setRotateKey( SP_ATK022+13,  1, 320 );
setRotateKey( SP_ATK022+15,  1,   0 );

setShakeChara( SP_ATK022+16, 1, 5,  10);
setShakeChara( SP_ATK022+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK022+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK022+16, ct, 30, 10);
setEffRotateKey( SP_ATK022+16, ct, -40);
setEffScaleKey( SP_ATK022+16, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK022+17, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK022+18, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK022+29, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK022+30, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK022+31, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK022+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK022+16, ct, 255);
setEffAlphaKey( SP_ATK022+106, ct, 255);
setEffAlphaKey( SP_ATK022+116, ct, 0);

playSe( SP_ATK022+4, SE_11);
shuchusen = entryEffectLife( SP_ATK022+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK022+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_ATK022+17);

entryFade( SP_ATK022+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_ATK022+111);
end

