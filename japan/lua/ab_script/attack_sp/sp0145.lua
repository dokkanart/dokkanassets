

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

SP_01 = 103041;--溜め
SP_02 = 103042; --発射
SP_03 = 103043;--迫る
SP_04 = 4;--暗転後のヒットエフェクト
SP_05 = 103044;--煙
SP_13 = 103045;--チョコ

--[[
SP_12 = 30;
SP_06 = 100002;
SP_07 = 5;
SP_08 = 103037; --グルグルガム巻きつく全面
SP_09 = 103038; --グルグルガム巻きつく後面
SP_10 = 103039; --「ギュバーッ」テキスト文字
SP_11 = 103040; --「ぎゅっ」テキスト文字
--]]

multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
--[[
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);
--]]
--changeAnime(  0, 0, 17);                       -- 溜め!
--[[
entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 0, SE_01);

--entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 19, 5);
--]]
--[[
-- 書き文字エントリー
--ct = entryEffectLife( 30, 10013, 39, 0, -1, -150, 0, 350); -- ズズンッ
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);
--]]
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
SP_start =-69;
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);

setVisibleUI(69+SP_start, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300,  0,  0);   -- 触覚部
setEffScaleKey( SP_start+ 70, kame_hand, 0.5, 0.5);

entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start+  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( SP_start+ 30, aura, 1.5, 1.5);
setShakeChara( SP_start+ 70, 0, 49, 5);

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
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( SP_start+ (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  260,    0,   -800,  0,   0);
setMoveKey( SP_start+  261,    0,   -800,  0,   0);
setMoveKey( SP_start+  270,    0,   -300,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる

setMoveKey( SP_start+  299,    0,   -300,  0,   0);--250
setMoveKey( SP_start+  300,    0,   -300,  0,   0);--250
setMoveKey( SP_start+  308,    0,   -1000,  0,   0);
--[[
setMoveKey( SP_start+  299,    0,   -300,  0,   0);
setMoveKey( SP_start+  300,    0,   -300,  0,   0);
setMoveKey( SP_start+  308,    0,   -1100,  0,   0);
--]]
entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

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

playSe( SP_start+ 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード

setMoveKey( SP_start+  369,    1,  0,  0,   0);
setMoveKey( SP_start+  370,    1,  0,  0,   0);
setMoveKey( SP_start+  371,    1,  0,  0,   0);
setScaleKey( SP_start+ 369,    1,  1.5, 1.5);
setScaleKey( SP_start+ 370,    1,  1.5, 1.5);

--[[
setMoveKey( SP_start+  369,    1,  235,  0,   0);
setMoveKey( SP_start+  370,    1,  235,  0,   0);
setMoveKey( SP_start+  371,    1,  235,  0,   0);ß
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  394,    1,   0,  0,   0);
setScaleKey( SP_start+  394,   1,   1.6,  1.6);
--]]
playSe( SP_start+ 390, SE_06);
--[[
gurumae = entryEffectLife( SP_start+ 370, SP_08, 46 ,  0x100 , -1,  0,  0,  -30);--グルグルガム前
gurugo = entryEffectLife( SP_start+ 370, SP_09, 46 ,  0x80 , -1,  0,  0,  -30);--グルグルガム後
--gurumae = entryEffect( SP_start+ 370, SP_10,   0, -1,  0,  0,  -30);--グルグルガム前

setEffScaleKey( SP_start+ 370, gurugo, 0.8, 0.8);
setEffScaleKey( SP_start+ 370, gurumae, 0.8, 0.8 ); --416できれる
--]]
kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+454, kamehame_beam2, 2.5, 2.5);
--setDamage( SP_start+ 425, 1, 0);  -- ダメージ振動等


entryEffect( SP_start+ 420, SP_05,  0x40,  1,  0,  0,  0); --煙
setDisp( SP_start+ 425, 1, 0);

cte = entryEffectLife( SP_start+ 435, SP_13, 30, 0, -1, 0, 0, 0);-- チョコ 366~396
setEffScaleKey( SP_start+435, cte, 1, 1);
setEffAlphaKey( SP_start+435, cte, 255);

playSe( SP_start+ 418, 1008);

eff09 = entryEffectLife( SP_start+ 441, 906, 99, 0, -1, 0, 0, 0); -- 白集中線
setEffAlphaKey( SP_start+441, eff09, 255);

SP_ATK012=444;--416

entryFade( SP_start+ SP_ATK012+10, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 410

setEffAlphaKey( SP_start+SP_ATK012+20, eff09, 0);

SP_ATK011=SP_ATK012+50;--416

--setEffAlphaKey( SP_start+SP_ATK012+43, cte, 0);

--SP_ATK011=SP_ATK012;--416

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 293; --エンドフェイズのフレーム数を置き換える

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
-- 暗転後攻撃(100F)
------------------------------------------------------
setDisp( SP_start+ SP_ATK011, 0, 0);
--setDisp( SP_start+ SP_ATK011, 1, 0);
--[[
changeAnime( SP_start+ SP_ATK011, 1, 104);                     -- ガード
setMoveKey( SP_start+  SP_ATK011,    1,  700,  0,   50);
setMoveKey( SP_start+  SP_ATK011+30,  1,  0,  0,   -128);
--]]
--playSe( SP_start+ SP_ATK011+30, SE_07);
diff01 = 10;
diff02 = -35;--ギュッの分の時間を短縮
diff04 = 0;

--[[
setRotateKey( SP_start+ SP_ATK011+35, 1, 0); --504
setRotateKey( SP_start+ SP_ATK011+36+diff01, 1, 15); --505
setRotateKey( SP_start+ SP_ATK011+39+diff01, 1, 15); --508
setRotateKey( SP_start+ SP_ATK011+40+diff01, 1, -10); --509
setRotateKey( SP_start+ SP_ATK011+49+diff01, 1, -10); --518
setRotateKey( SP_start+ SP_ATK011+48+diff01, 1, 5); --517
setRotateKey( SP_start+ SP_ATK011+60+diff01, 1, 0); --529

-- 敵吹っ飛ぶモーション

setMoveKey( SP_start+  SP_ATK011+110+diff01+10, 1, 0,  0,  -128); --599
--changeAnime( SP_start+ SP_ATK011+92+diff01+7, 1, 108);
setScaleKey( SP_start+SP_ATK011+93+diff01+7, 1, 1,1);
setScaleKey( SP_start+SP_ATK011+94+diff01+7, 1, 2,2);
setScaleKey( SP_start+SP_ATK011+95+diff01+7, 1, 1,1);

entryEffectLife( SP_start+ SP_ATK011+110+diff01+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey( SP_start+  SP_ATK011+118+diff01+10, 1, 400,    0,  50);
setDamage( SP_start+  SP_ATK011+92+17,  1,  0);   --ダメージ振動等
--]]


--攻撃演出--

-- ** エフェクト等 ** --
--setShakeChara( SP_start+ SP_ATK011, 1, 99, 20);
entryFadeBg( SP_start+ SP_ATK011+diff02, 0, 115+diff01+10+12, 0, 0, 0, 0, 255);          -- ベース暗 背景 469 ~ 505
entryEffectLife( SP_start+ SP_ATK011+diff02, 921, 115+diff01+10+12, 0x80,  -1,  0,  0,  0); -- 流線斜め ~505
--entryFlash( SP_start+ (SP_ATK011+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage( SP_start+  SP_ATK011+64+diff01+diff02,  1,  0);   --ダメージ振動等 ~543

--[[
cte = entryEffectLife( SP_start+ SP_ATK011, SP_11, 30, 0, -1, 0, -100, 255); -- ぎゅっ
setEffScaleKey( SP_start+ SP_ATK011, cte, 2.4, 2.4);
setEffRotateKey( SP_start+SP_ATK011, cte, -30);
setEffAlphaKey( SP_start+SP_ATK011, cte, 255);
setEffAlphaKey( SP_start+SP_ATK011+20, cte, 255);
setEffAlphaKey( SP_start+SP_ATK011+30, cte, 0);
--]]
--entryEffectLife( SP_start+ SP_ATK011+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線 504~509

eff01 = entryEffect( diff04+ SP_start+ SP_ATK011+35+diff02, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト 
setEffScaleKey( diff04+ SP_start+ SP_ATK011+35+diff02, eff01,2,2);--サイズ
setEffRotateKey( diff04+ SP_start+SP_ATK011+35+diff02, eff01,-10);--角度
--entryFlashBg( diff04+ SP_start+ (SP_ATK011+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( diff04+ SP_start+ SP_ATK011+36+diff02, 1, 106);--やられ   
playSe( diff04+ SP_start+ SP_ATK011+35+diff02, SE_09);
entryFadeBg( diff04+ SP_start+ SP_ATK011+35+diff02, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll( diff04+ SP_start+SP_ATK011+36+diff02,10);

--2撃目--
entryEffectLife( diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( diff04+ SP_start+ SP_ATK011+50+diff01+diff02, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( diff04+ SP_start+ SP_ATK011+50+diff01+diff02, eff02,2,3);--サイズ
setEffRotateKey( diff04+ SP_start+SP_ATK011+50+diff01+diff02, eff02,-70);--角度
--entryFlashBg( diff04+ SP_start+ (SP_ATK011+50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( diff04+ SP_start+ SP_ATK011+50+diff01+diff02, SE_08);
changeAnime( diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 1, 105);--やられ 
setShake( diff04+ SP_start+ SP_ATK011+50+diff01+diff02, 3, 14);
setMoveKey( diff04+ SP_start+  SP_ATK011+50+diff01+diff02, 1, 0,  0,  0);
setMoveKey( diff04+ SP_start+  SP_ATK011+51+diff01+diff02, 1, 50,  -50,  0);

eff03 = entryEffect( diff04+ SP_start+ SP_ATK011+57+diff01+diff02, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( diff04+ SP_start+ SP_ATK011+57+diff01+diff02, eff03, 3,3);--サイズ
setEffRotateKey( diff04+ SP_start+SP_ATK011+57+diff01+diff02, eff03, 70);--角度
playSe( diff04+ SP_start+ SP_ATK011+57+diff01+diff02, SE_09);
changeAnime( diff04+ SP_start+ SP_ATK011+57+diff01+diff02, 1, 108);--やられ 
setShake( diff04+ SP_start+ SP_ATK011+57+diff01+diff02, 3, 14);
setMoveKey( diff04+ SP_start+  SP_ATK011+57+diff01+diff02, 1, 50,  -50,  -128);
setMoveKey( diff04+ SP_start+  SP_ATK011+58+diff01+diff02, 1, -80,  30,  -128);

eff04 = entryEffect( diff04+ SP_start+ SP_ATK011+65+diff01+diff02, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( diff04+ SP_start+ SP_ATK011+65+diff01+diff02, eff04, 3,2);--サイズ
setEffRotateKey( diff04+ SP_start+SP_ATK011+65+diff01+diff02, eff04, -80);--角度
playSe( diff04+ SP_start+ SP_ATK011+65+diff01+diff02, SE_08);
changeAnime( diff04+ SP_start+ SP_ATK011+65+diff01+diff02, 1, 106);--やられ 
setShake( diff04+ SP_start+ SP_ATK011+65+diff01+diff02, 3, 14);
setMoveKey( diff04+ SP_start+  SP_ATK011+65+diff01+diff02, 1, -80,  30,  -128);
setMoveKey( diff04+ SP_start+  SP_ATK011+66+diff01+diff02, 1, 40,  -35,  -128);

eff05 = entryEffect( diff04+ SP_start+ SP_ATK011+72+diff01+diff02, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( diff04+ SP_start+ SP_ATK011+72+diff01+diff02, eff05, 0.4,3);--サイズ
setEffRotateKey( diff04+ SP_start+SP_ATK011+72+diff01+diff02, eff05, 45);--角度
--entryFlashBg( diff04+ SP_start+ (SP_ATK011+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( diff04+ SP_start+ SP_ATK011+72+diff01+diff02, SE_09);
setShake( diff04+ SP_start+ SP_ATK011+72+diff01+diff02, 3, 14);
setMoveKey( diff04+ SP_start+  SP_ATK011+72+diff01+diff02, 1, 40,  -35,  -128);
setMoveKey( diff04+ SP_start+  SP_ATK011+73+diff01+diff02, 1, -90,  -90,  -128);

eff06 = entryEffect( diff04+ SP_start+ SP_ATK011+76+diff01+diff02, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( diff04+ SP_start+ SP_ATK011+76+diff01+diff02, eff06, 1,2);--サイズ
setEffRotateKey( diff04+ SP_start+SP_ATK011+76+diff01+diff02, eff06, -100);--角度
playSe( diff04+ SP_start+ SP_ATK011+76+diff01+diff02, SE_08);
changeAnime( diff04+ SP_start+ SP_ATK011+76+diff01+diff02, 1, 105);--やられ 
setShake( diff04+ SP_start+ SP_ATK011+76+diff01+diff02, 3, 14);
setMoveKey( diff04+ SP_start+  SP_ATK011+76+diff01+diff02, 1, 90,  -90,  -128);
setMoveKey( diff04+ SP_start+  SP_ATK011+77+diff01+diff02, 1, -60, 80,  -128);

eff07 = entryEffect( diff04+ SP_start+ SP_ATK011+80+diff01+diff02, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( diff04+ SP_start+ SP_ATK011+80+diff01+diff02, eff07, 2,1.5);--サイズ
setEffRotateKey( diff04+ SP_start+SP_ATK011+80+diff01+diff02, eff07, 130);--角度
playSe( diff04+ SP_start+ SP_ATK011+80+diff01+diff02, SE_08);
--entryFlashBg( diff04+ SP_start+ (SP_ATK011+80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( diff04+ SP_start+ SP_ATK011+80+diff01+diff02, 1, 106);--やられ 
setShake( diff04+ SP_start+ SP_ATK011+80+diff01+diff02, 3, 14);
setMoveKey( diff04+ SP_start+  SP_ATK011+80+diff01+diff02, 1, -60, 80,  -128);
setMoveKey( diff04+ SP_start+  SP_ATK011+81+diff01+diff02, 1, 80,  60,  -128);

diff03 = 7

eff08 = entryEffect( diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, eff08, 2,4);--サイズ
setEffRotateKey( diff04+ SP_start+SP_ATK011+91+diff01+diff02+diff03, eff08, -15);--角度
playSe( diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, SE_09);
setShake( diff04+ SP_start+ SP_ATK011+91+diff01+diff02+diff03, 3, 14);
--entryFadeBg( diff04+ SP_start+ SP_ATK011+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( diff04+ SP_start+ SP_ATK011+92+diff01+diff02+diff03, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( diff04+ SP_start+ SP_ATK011+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( diff04+ SP_start+ SP_ATK011+94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey( diff04+ SP_start+  SP_ATK011+92+diff01+diff02+diff03, 1, 0,  0,  -128);
pauseAll( diff04+ SP_start+SP_ATK011+92+diff01+diff02+diff03,5);

-- 書き文字エントリー
ct = entryEffectLife( diff04+ SP_start+ SP_ATK011+35+diff02, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( diff04+ SP_start+SP_ATK011+35+diff02, ct, 81, 20);
setEffScaleKey( diff04+ SP_start+ SP_ATK011+35+diff02, ct, 2.4, 2.4);
setEffRotateKey( diff04+ SP_start+SP_ATK011+35+diff02, ct, 70);
setEffAlphaKey( diff04+ SP_start+SP_ATK011+35+diff02, ct, 255);
setEffAlphaKey( diff04+ SP_start+SP_ATK011+103+diff01+diff02, ct, 255);
setEffAlphaKey( diff04+ SP_start+SP_ATK011+127+diff01+diff02, ct, 0);

--entryFade( diff04+ SP_start+ SP_ATK011+100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 100); 

entryFade( diff04+ SP_start+ SP_ATK011+115+diff01+10+diff02, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

setDisp( diff04+SP_start+ SP_ATK011+115+diff01+10+12+diff02, 1, 0);

SP_ATK022=diff04+SP_ATK011+115+diff01+10+12+diff02;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ SP_ATK022, 1, 1);
setMoveKey(  SP_start+  SP_ATK022,    1,  400,    0,  50);
setMoveKey(  SP_start+  SP_ATK022+1,    1,    0,   0,   128);

setScaleKey(  SP_start+ SP_ATK022,    1,  2.5, 2.5);
setScaleKey(  SP_start+ SP_ATK022+1,    1,  1, 1);

changeAnime(  SP_start+ SP_ATK022+1, 1, 107);                         -- 手前ダメージ
entryEffect(  SP_start+ SP_ATK022+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe(  SP_start+ SP_ATK022+9, SE_10);

setMoveKey(  SP_start+  SP_ATK022+8,    1,    0,   0,   128);
setMoveKey(  SP_start+  SP_ATK022+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_start+  SP_ATK022+16,   1,  -60,  -200,  -100);

setShakeChara(  SP_start+ SP_ATK022+16, 1, 5,  10);
setShakeChara(  SP_start+ SP_ATK022+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife(  SP_start+ SP_ATK022+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(  SP_start+SP_ATK022+16, ct, 30, 10);
setEffRotateKey(  SP_start+ SP_ATK022+16, ct, -40);
setEffScaleKey(  SP_start+ SP_ATK022+16, ct, 4.0, 4.0);
setEffScaleKey(  SP_start+ SP_ATK022+17, ct, 2.0, 2.0);
setEffScaleKey(  SP_start+ SP_ATK022+18, ct, 2.6, 2.6);
setEffScaleKey(  SP_start+ SP_ATK022+19, ct, 4.0, 4.0);
setEffScaleKey(  SP_start+ SP_ATK022+20, ct, 2.6, 2.6);
setEffScaleKey(  SP_start+ SP_ATK022+21, ct, 3.8, 3.8);
setEffScaleKey(  SP_start+ SP_ATK022+111, ct, 3.8, 3.8);
setEffAlphaKey(  SP_start+ SP_ATK022+16, ct, 255);
setEffAlphaKey(  SP_start+ SP_ATK022+106, ct, 255);
setEffAlphaKey(  SP_start+ SP_ATK022+116, ct, 0);

playSe(  SP_start+ SP_ATK022+4, SE_11);
shuchusen = entryEffectLife(  SP_start+ SP_ATK022+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect(  SP_start+ SP_ATK022+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(  SP_start+SP_ATK022+4);
entryFade(  SP_start+ SP_ATK022+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

SP_end = SP_ATK022+110;

endPhase(  SP_start+SP_end);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);

--[[
entryFade( 0, 2, 4, 8, 254, 157, 18, 100);     -- white fade
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, -150, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);
--]]
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
SP_start =-69

setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( SP_start+ speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( SP_start+ speff, 4, 5);                           -- セリフ差し替え

SP_start02 =0

playSe( SP_start02+ SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start02+ SP_start+ 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_start02+ SP_start+ 70, kame_hand, 0.5, 0.5);

entryFade( SP_start02+ SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start02+ SP_start+  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( SP_start02+ SP_start+ 30, aura, 1.5, 1.5);
setShakeChara( SP_start02+ SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start02+ SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start02+ SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start02+ SP_start+90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start02+ SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start02+ SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start02+ SP_start+ 170, SE_05);
speff = entryEffect( SP_start02+ SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( SP_start02+ speff, 1, 1);
setEffReplaceTexture( SP_start02+ speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( SP_start02+ speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start02+ SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( SP_start02+ SP_start+ (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( SP_start02+ SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start02+ SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey( SP_start02+ SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start02+ SP_start+  260,    0,   -800,  0,   0);
setMoveKey( SP_start02+ SP_start+  261,    0,   -800,  0,   0);
setMoveKey( SP_start02+ SP_start+  270,    0,   -300,  0,   0);

kamehame_beam = entryEffectLife( SP_start02+ SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( SP_start02+ SP_start+ 260, SE_07);

spname = entryEffect( SP_start02+ SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey( SP_start02+ SP_start+  299,    0,   -300,  0,   0);
setMoveKey( SP_start02+ SP_start+  300,    0,   -300,  0,   0);
setMoveKey( SP_start02+ SP_start+  308,    0,   -1000,  0,   0);

entryFade( SP_start02+ SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start02+ SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( SP_start02+ SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( SP_start02+ SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

entryEffectLife( SP_start02+ SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( SP_start02+ SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start02+ SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start02+ SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start02+ SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start02+ SP_start+ 309, shuchusen, 2.0, 2.0);

--entryFlash( SP_start02+ SP_start+ (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_start02+ SP_start+  268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start02+ SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start02+ SP_start+268, ct, 255);
setEffAlphaKey( SP_start02+ SP_start+290, ct, 255);
setEffAlphaKey( SP_start02+ SP_start+300, ct, 0);
--if (_IS_PLAYER_SIDE_ == 0) then
--setEffScaleKey( SP_start02+ SP_start+268, ct, 0.0, 0.0);
--setEffScaleKey( SP_start02+ SP_start+272, ct, -1.3, 1.3);
--setEffScaleKey( SP_start02+ SP_start+292, ct, -1.3, 1.3);
--setEffScaleKey( SP_start02+ SP_start+300, ct, -6.0, 6.0);
--else
setEffScaleKey( SP_start02+ SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start02+ SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start02+ SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start02+ SP_start+300, ct, 6.0, 6.0);
--end
playSe( SP_start02+ SP_start+ 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start02+ SP_start+ 370, 0, 0);
setDisp( SP_start02+ SP_start+ 370, 1, 1);
changeAnime( SP_start02+ SP_start+ 370, 1, 104);                        -- ガード
--[[
setMoveKey( SP_start02+ SP_start+  369,    1,  0,  0,   0);
setMoveKey( SP_start02+ SP_start+  370,    1,  0,  0,   0);
setMoveKey( SP_start02+ SP_start+  371,    1,  0,  0,   0);
setScaleKey( SP_start02+ SP_start+ 369,    1,  1.5, 1.5);
setScaleKey( SP_start02+ SP_start+ 370,    1,  1.5, 1.5);
--]]
setMoveKey( SP_start02+ SP_start+  369,    1,  0,  0,   0);
setMoveKey( SP_start02+ SP_start+  370,    1,  0,  0,   0);
setMoveKey( SP_start02+ SP_start+  371,    1,  0,  0,   0);
setScaleKey( SP_start02+ SP_start+  369,    1,  1.5, 1.5);
setScaleKey( SP_start02+ SP_start+  370,    1,  1.5, 1.5);

--[[
setMoveKey( SP_start02+ SP_start+  394,    1,   0,  0,   0);
setScaleKey( SP_start02+ SP_start+  394,   1,   1.6,  1.6);


gurumae = entryEffectLife( SP_start02+ SP_start+ 370, SP_08, 46 ,  0x100 , -1,  0,  0,  -30);--グルグルガム前
gurugo = entryEffectLife( SP_start02+ SP_start+ 370, SP_09, 46 ,  0x80 , -1,  0,  0,  -30);--グルグルガム後
--gurumae = entryEffect( SP_start02+ SP_start+ 370, SP_10,   0, -1,  0,  0,  -30);--グルグルガム前

setEffScaleKey( SP_start02+ SP_start+ 370, gurugo, 0.8, 0.8);
setEffScaleKey( SP_start02+ SP_start+ 370, gurumae, 0.8, 0.8 ); --416できれる
--]]

--[[
entryFade( SP_start02+ SP_start+ 410, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
setShakeChara( SP_start02+ SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start02+ SP_start+ 370, 0, 40, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start02+ SP_start+ 370, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( SP_start02+ SP_start+ (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start02+ SP_start+ (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_start02+ SP_start+ 370, 10014, 65, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start02+ SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start02+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start02+ SP_start+370, ct, -30);
setEffAlphaKey( SP_start02+ SP_start+370, ct, 255);
setEffAlphaKey( SP_start02+ SP_start+390, ct, 255);
setEffAlphaKey( SP_start02+ SP_start+410, ct, 0);

--]]

playSe( SP_start02+ SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start02+ SP_start+  370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start02+ SP_start+ 370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start02+ SP_start+ 452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start02+ SP_start+ 454, kamehame_beam2, 2.5, 2.5);
--setDamage( SP_start02+ SP_start+  425, 1, 0);  -- ダメージ振動等

cte = entryEffectLife( SP_start02+ SP_start+  435, SP_13, 30, 0x1000, -1, 0, 0, 0);-- チョコ
setEffScaleKey( SP_start02+ SP_start+ 435, cte, 1, 1);
setEffAlphaKey( SP_start02+ SP_start+ 435, cte, 255);

entryEffect( SP_start02+ SP_start+  420, SP_05,  0x40,  1,  0,  0,  0); --煙
setDisp( SP_start02+ SP_start+  425, 1, 0);

playSe( SP_start+ 418, 1008);

eff09 = entryEffectLife( SP_start02+ SP_start+  441, 906, 99, 0, -1, 0, 0, 0); -- 白集中線
setEffAlphaKey( SP_start02+ SP_start+ 441, eff09, 255);

SP_ATK012=444;--416

entryFade( SP_start02+ SP_start+  SP_ATK012+10, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 410

setEffAlphaKey( SP_start02+ SP_start+ SP_ATK012+20, eff09, 0);

SP_ATK011=SP_ATK012+50;--416

--setEffAlphaKey( SP_start02+ SP_start+ SP_ATK012+43, cte, 0);


--setMoveKey( SP_start02+ SP_start+  416,    1,   0,  0,   0);
--setScaleKey( SP_start02+ SP_start+  416,   1,   1.6,  1.6);

--SP_ATK011=416;
SP_ATK011=SP_ATK012+50;--416

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 293; --エンドフェイズのフレーム数を置き換える

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
-- 暗転後攻撃(100F)
------------------------------------------------------
setDisp( SP_start02+ SP_start+ SP_ATK011, 0, 0);
--[[
setDisp( SP_start02+ SP_start+ SP_ATK011, 1, 0);
changeAnime( SP_start02+ SP_start+ SP_ATK011, 1, 104);                     -- ガード
setMoveKey( SP_start02+ SP_start+  SP_ATK011,    1,  700,  0,   50);
setMoveKey( SP_start02+ SP_start+  SP_ATK011+30,  1,  0,  0,   -128);
--]]
--playSe( SP_start02+ SP_start+ SP_ATK011+30, SE_07);
diff01 = 10;
diff03 = -35;--ギュッの分の時間を短縮
diff04 = 0;

--[[
setRotateKey( SP_start02+ SP_start+ SP_ATK011+35, 1, 0); --504
setRotateKey( SP_start02+ SP_start+ SP_ATK011+36+diff01, 1, 15); --505
setRotateKey( SP_start02+ SP_start+ SP_ATK011+39+diff01, 1, 15); --508
setRotateKey( SP_start02+ SP_start+ SP_ATK011+40+diff01, 1, -10); --509
setRotateKey( SP_start02+ SP_start+ SP_ATK011+49+diff01, 1, -10); --518
setRotateKey( SP_start02+ SP_start+ SP_ATK011+48+diff01, 1, 5); --517
setRotateKey( SP_start02+ SP_start+ SP_ATK011+60+diff01, 1, 0); --529

-- 敵吹っ飛ぶモーション

setMoveKey( SP_start02+ SP_start+  SP_ATK011+110+diff01+10, 1, 0,  0,  -128); --599
--changeAnime( SP_start02+ SP_start+ SP_ATK011+92+diff01+7, 1, 108);
setScaleKey( SP_start02+ SP_start+SP_ATK011+93+diff01+7, 1, 1,1);
setScaleKey( SP_start02+ SP_start+SP_ATK011+94+diff01+7, 1, 2,2);
setScaleKey( SP_start02+ SP_start+SP_ATK011+95+diff01+7, 1, 1,1);
entryEffectLife( SP_start02+ SP_start+ SP_ATK011+110+diff01+10, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey( SP_start02+ SP_start+  SP_ATK011+118+diff01+10, 1, 400,    0,  50);
setDamage( SP_start02+ SP_start+  SP_ATK011+92+17,  1,  0);   --ダメージ振動等
--]]

--攻撃演出--

-- ** エフェクト等 ** --
--setShakeChara( SP_start02+ SP_start+ SP_ATK011, 1, 99, 20);
entryFadeBg( SP_start02+ SP_start+ diff03+ SP_ATK011, 0, 115+diff01+10+12, 0, 0, 0, 0, 255);          -- ベース暗 背景 469 ~ 505
entryEffectLife( SP_start02+ SP_start+ diff03+ SP_ATK011, 921, 115+diff01+10+12, 0x80,  -1,  0,  0,  0); -- 流線斜め ~505
--entryFlash( SP_start02+ SP_start+ diff03+ (SP_ATK011+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage( SP_start02+ SP_start+ diff03+  SP_ATK011+64+diff01,  1,  0);   --ダメージ振動等 ~543

--[[
cte = entryEffectLife( SP_start02+ SP_start+ diff03+ SP_ATK011, SP_11, 30, 0, -1, 0, -100, 255); -- ぎゅっ
if (_IS_PLAYER_SIDE_ == 0) then
setEffScaleKey( SP_start02+ SP_start+ diff03+ SP_ATK011, cte, -2.4, 2.4);
else
setEffScaleKey( SP_start02+ SP_start+ diff03+ SP_ATK011, cte, 2.4, 2.4);
end
setEffRotateKey( SP_start02+ SP_start+ diff03+SP_ATK011, cte, -30);
setEffAlphaKey( SP_start02+ SP_start+ diff03+SP_ATK011, cte, 255);
setEffAlphaKey( SP_start02+ SP_start+ diff03+SP_ATK011+20, cte, 255);
setEffAlphaKey( SP_start02+ SP_start+ diff03+SP_ATK011+30, cte, 0);
--]]

--entryEffectLife( SP_start02+ SP_start+ diff03+ SP_ATK011+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線 504~509

eff01 = entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト 
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+35, eff01,2,2);--サイズ
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+35, eff01,-10);--角度
--entryFlashBg( SP_start02+ SP_start+ diff04+ diff03+ (SP_ATK011+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+36, 1, 106);--やられ   
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+35, SE_09);
entryFadeBg( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+36,10);

--2撃目--
entryEffectLife( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+50+diff01, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+50+diff01, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+50+diff01, eff02,2,3);--サイズ
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+50+diff01, eff02,-70);--角度
--entryFlashBg( SP_start02+ SP_start+ diff04+ diff03+ (SP_ATK011+50+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+50+diff01, SE_08);
changeAnime( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+50+diff01, 1, 105);--やられ 
setShake( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+50+diff01, 3, 14);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+50+diff01, 1, 0,  0,  0);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+51+diff01, 1, 50,  -50,  0);

eff03 = entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+57+diff01, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+57+diff01, eff03, 3,3);--サイズ
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+57+diff01, eff03, 70);--角度
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+57+diff01, SE_09);
changeAnime( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+57+diff01, 1, 108);--やられ 
setShake( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+57+diff01, 3, 14);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+57+diff01, 1, 50,  -50,  -128);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+58+diff01, 1, -80,  30,  -128);

eff04 = entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+65+diff01, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+65+diff01, eff04, 3,2);--サイズ
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+65+diff01, eff04, -80);--角度
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+65+diff01, SE_08);
changeAnime( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+65+diff01, 1, 106);--やられ 
setShake( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+65+diff01, 3, 14);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+65+diff01, 1, -80,  30,  -128);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+66+diff01, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+72+diff01, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+72+diff01, eff05, 0.4,3);--サイズ
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+72+diff01, eff05, 45);--角度
--entryFlashBg( SP_start02+ SP_start+ diff04+ diff03+ (SP_ATK011+72+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+72+diff01, SE_09);
setShake( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+72+diff01, 3, 14);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+72+diff01, 1, 40,  -35,  -128);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+73+diff01, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+76+diff01, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+76+diff01, eff06, 1,2);--サイズ
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+76+diff01, eff06, -100);--角度
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+76+diff01, SE_08);
changeAnime( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+76+diff01, 1, 105);--やられ 
setShake( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+76+diff01, 3, 14);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+76+diff01, 1, 90,  -90,  -128);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+77+diff01, 1, -60, 80,  -128);

eff07 = entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+80+diff01, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+80+diff01, eff07, 2,1.5);--サイズ
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+80+diff01, eff07, 130);--角度
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+80+diff01, SE_08);
--entryFlashBg( SP_start02+ SP_start+ diff04+ diff03+ (SP_ATK011+80+diff01), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+80+diff01, 1, 106);--やられ 
setShake( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+80+diff01, 3, 14);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+80+diff01, 1, -60, 80,  -128);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+81+diff01, 1, 80,  60,  -128);

diff02 = 7

eff08 = entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+91+diff01+diff02, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+91+diff01+diff02, eff08, 2,4);--サイズ
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+91+diff01+diff02, eff08, -15);--角度
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+91+diff01+diff02, SE_09);
setShake( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+91+diff01+diff02, 3, 14);
--entryFadeBg( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+92+diff01+diff02, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+92+diff01+diff02, 908, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryFlashBg( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+92+diff01+diff02, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+94+diff01+diff02, 1, 255, 255, 255, 100);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK011+92+diff01+diff02, 1, 0,  0,  -128);
pauseAll( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+92+diff01+diff02,5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+35, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+35, ct, 81, 20);
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+35, ct, 2.4, 2.4);
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+35, ct, -30);
setEffAlphaKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+35, ct, 255);
setEffAlphaKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+103+diff01, ct, 255);
setEffAlphaKey( SP_start02+ SP_start+ diff04+ diff03+SP_ATK011+127+diff01, ct, 0);

--entryFade( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+100+diff01+10, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 100); 

entryFade( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+115+diff01+10, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

setDisp( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK011+115+diff01+10+12, 1, 0);

SP_ATK022=SP_ATK011+115+diff01+10+12;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022, 1, 1);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK022,    1,  400,    0,  50);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK022+1,    1,    0,   0,   128);

setScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022,    1,  2.5, 2.5);
setScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+1,    1,  1, 1);

changeAnime( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+9, SE_10);

setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK022+8,    1,    0,   0,   128);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK022+15,   1,  -60,  -200,  -100);
setMoveKey( SP_start02+ SP_start+ diff04+ diff03+  SP_ATK022+16,   1,  -60,  -200,  -100);

setShakeChara( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+16, 1, 5,  10);
setShakeChara( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start02+ SP_start+ diff04+ diff03+SP_ATK022+16, ct, 30, 10);
setEffRotateKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+16, ct, -40);
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+16, ct, 4.0, 4.0);
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+17, ct, 2.0, 2.0);
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+18, ct, 2.6, 2.6);
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+19, ct, 4.0, 4.0);
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+20, ct, 2.6, 2.6);
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+21, ct, 3.8, 3.8);
setEffScaleKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+111, ct, 3.8, 3.8);
setEffAlphaKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+16, ct, 255);
setEffAlphaKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+106, ct, 255);
setEffAlphaKey( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+116, ct, 0);

playSe( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+4, SE_11);
shuchusen = entryEffectLife( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start02+ SP_start+ diff04+ diff03+SP_ATK022+4);
entryFade( SP_start02+ SP_start+ diff04+ diff03+ SP_ATK022+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

SP_end = SP_ATK022+116;

endPhase( SP_start02+ SP_start+ diff04+ diff03+SP_end+15);

end
