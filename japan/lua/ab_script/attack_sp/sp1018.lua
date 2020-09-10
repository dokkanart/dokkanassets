print ("[lua]sp1001");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150018;
SP_03 = 150019;
SP_04 = 3;
SP_05 = 2;
SP_06 = 3;
SP_07 = 4;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 43; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1010; --huru
SE_09 = 1009; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1004;

------------------
multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setMoveKey(  0,    1,  700,  0,   0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
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

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
--changeAnime( 70, 0, 30);                       -- 溜め!

entryEffectLife( 70, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryEffectLife( 70, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff1, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_03);
playSe( 80, SE_04);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--[[
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);
]]--

--changeAnime( 170, 0, 30);   -- 溜め!
cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);
--[[
setEffScaleKey(	90,cr, 1,1);
setEffScaleKey(	240,cr, 1,1);
setEffShake( 240, ct, 3, 12);
setEffScaleKey(	243,cr, 1.2,1.2);
setEffScaleKey(	248,cr, 1.2,1.2);
setEffShake( 248, ct, 3, 8);
setEffScaleKey(	250,cr, 1.4,1.4);
setEffScaleKey(	256,cr, 1.4,1.4);
setEffShake( 255, ct, 8, 15);
setEffScaleKey(	258,cr, 2,2);
]]--
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
entryFadeBg( 257, 0, 129, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 255, 0, 0, 250);     -- 青い　背景

setDisp( 0, 1, 0);
playSe(260,1018);
--setEnvZoomEnable(  260,  0);
entryEffect( 260+2, 908, 0x80,  -1,  0,  0);
naname=entryEffectLife( 260+5, 908, 15, 0x80,  -1,  0,  0,  0);
--setEffRotateKey(260+5,naname,45);
--setEffScaleKey(260+5,naname,1.2,1.2);
entryEffectLife(  260+5, SP_01, 20, 0x40+0x80,  0,  0,  0,  0);   --オーラ
changeAnime(  260,  0,  116);
changeAnime(  260,  1,  102);
setDrawFront( 260, 0, 0);

setMoveKey(  260,  0,  -20,  -30,  0);
entryFadeBg(260+10,  5,  8,  1,  255,255,255,255);
--setEnvZoomEnable(  260+10,  1);
entryEffect(  260+18,  4,  0, -1,  0,  0,  0);
setMoveKey(  260+10,  0,  -200,  -80,  0);
setMoveKey(  260+13,  0,  -15,  -20,  -60);
entryFade( 260+16,  5,  4,  3,  0,0,0,255);
entryEffect( 260+16, 908, 0,  -1,  0,  0);
setMoveKey(  260+21,  0,  -30,  0,  -70);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade(260+21, 3, 4, 2, 255, 255, 255, 255);     -- white fade
----------------------------------------------------
playSe( 300, SE_07);

------------------------------------------------------
-- 攻撃(100F)
------------------------------------------------------
SP_ATK01 = 290;
SP_ATK02 = SP_ATK01+112;

changeAnime( SP_ATK01, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( SP_ATK01, 0, 0);
setScaleKey( SP_ATK01, 0, 1.5,1.5);
setDisp( SP_ATK01, 1, 1);
changeAnime( SP_ATK01, 1, 104);                     -- ガード
setMoveKey(  SP_ATK01,    1,  0,  0,   -100);
setMoveKey(  SP_ATK01+15,  1,  50,  0,   -128);

--playSe( SP_ATK01+30, SE_07);

--[[
setRotateKey( SP_ATK01+20, 1, 0);
setRotateKey( SP_ATK01+36-25, 1, 15);
setRotateKey( SP_ATK01+39-25, 1, 15);
setRotateKey( SP_ATK01+40-25, 1, -10);
setRotateKey( SP_ATK01+49-25, 1, -10);
setRotateKey( SP_ATK01+48-25, 1, 5);
setRotateKey( SP_ATK01+60-25, 1, 0);
--]]

-- 敵吹っ飛ぶモーション

setMoveKey(  SP_ATK01+95, 1, 0,  0,  -128); --136+95
changeAnime( SP_ATK01+74, 1, 108);
entryEffectLife( SP_ATK01+95, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey(  SP_ATK01+103, 1, 400,    0,  -50);
setDamage(  SP_ATK01+109,  1,  0);   --ダメージ振動等

--攻撃演出--
-- ** エフェクト等 ** --
setShakeChara( SP_ATK01, 1, 99, 20);
entryFadeBg( SP_ATK01, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( SP_ATK01, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage(  SP_ATK01+64-25,  1,  0);   --ダメージ振動等

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
--setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+36, 1, 106);--やられ   
playSe( SP_ATK01+35, SE_09);
entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,7);

--2撃目--
entryEffectLife( SP_ATK01+43-25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+43-25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+43-25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+43-25, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+43-25, SE_08);
changeAnime( SP_ATK01+43-25, 1, 105);--やられ 
setShake( SP_ATK01+43-25, 3, 14);
setMoveKey(  SP_ATK01+43-25, 1, 0,  0,  -50);
setMoveKey(  SP_ATK01+44-25, 1, 50,  -50,  -60);

--2撃目--
entryEffectLife( SP_ATK01+50-25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+50-25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+50-25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+50-25, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+50-25, SE_08);
changeAnime( SP_ATK01+50-25, 1, 105);--やられ 
setShake( SP_ATK01+50-25, 3, 14);
setMoveKey(  SP_ATK01+50-25, 1, 0,  0,  -60);
setMoveKey(  SP_ATK01+51-25, 1, 50,  -50,  -80);

eff03 = entryEffect( SP_ATK01+57-25, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
--setEffScaleKey( SP_ATK01+57-25, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+57-25, eff03, -80);--角度
playSe( SP_ATK01+57-25, SE_09);
changeAnime( SP_ATK01+57-25, 1, 108);--やられ 
setShake( SP_ATK01+57-25, 3, 14);
setMoveKey(  SP_ATK01+57-25, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+58-25, 1, -80,  30,  -128);

eff04 = entryEffect( SP_ATK01+65-25, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
--setEffScaleKey( SP_ATK01+65-25, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+65-25, eff04, 45);--角度
playSe( SP_ATK01+65-25, SE_08);
changeAnime( SP_ATK01+65-25, 1, 106);--やられ 
setShake( SP_ATK01+65-25, 3, 14);
setMoveKey(  SP_ATK01+65-25, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+66-25, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_ATK01+72-25, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+72-25, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+72-25, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+72-25, SE_09);
setShake( SP_ATK01+72-25, 3, 14);
setMoveKey(  SP_ATK01+72-25, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+73-25, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+76-25, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+76-25, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+76-25, eff06, 130);--角度
playSe( SP_ATK01+76-25, SE_08);
changeAnime( SP_ATK01+76-25, 1, 105);--やられ 
setShake( SP_ATK01+76-25, 3, 14);
setMoveKey(  SP_ATK01+76-25, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+77-25, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+80-25, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+80-25, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+80-25, eff07, 88);--角度
playSe( SP_ATK01+80-25, SE_08);
--entryFlashBg( (SP_ATK01+80-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+80-25, 1, 106);--やられ 
setShake( SP_ATK01+80-25, 3, 14);
setMoveKey(  SP_ATK01+80-25, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+81-25, 1, 80,  60,  -128);

eff08 = entryEffect( SP_ATK01+91-18, SP_07,  0, -1,  0,  0,  0);   -- 攻撃3
playSe( SP_ATK01+91-18, SE_09);
playSe( SP_ATK01+91-18, SE_08);
setShake( SP_ATK01+91-18, 3, 14);
entryFadeBg( SP_ATK01+92-18, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+91-18, 906, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( SP_ATK01+91-18, 908, 32, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+92-18, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94-18, 1, 255, 255, 255, 100);
setMoveKey(  SP_ATK01+92-18, 1, 0,  0,  -128);
pauseAll(SP_ATK01+92-18,3);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK01, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK01, ct, 81, 20);
setEffScaleKey( SP_ATK01, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK01, ct, 70);
setEffAlphaKey(SP_ATK01, ct, 255);
setEffAlphaKey(SP_ATK01+70-25, ct, 255);
setEffAlphaKey(SP_ATK01+92-25, ct, 0);

entryFadeBg( SP_ATK01+92-18, 3, 5, 4, 255, 0, 0, 255); 
entryFade( SP_ATK01+100, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

setDisp(SP_ATK01+110,1,0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0,  -30,  0,  -70);
setMoveKey(  SP_dodge+9,  0,  -1100,  0,  -70);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK02-1, 1, 1); --SP_ATK01+112 =SP_ATK_02
setMoveKey(  SP_ATK02-1,    1,  100,  0,   0);
setScaleKey( SP_ATK02-1,    1,  1.0, 1.0);
setMoveKey(  SP_ATK02,    1,    0,   0,   128);
setScaleKey( SP_ATK02,    1,  0.1, 0.1);

changeAnime( SP_ATK02, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK02+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK02+8, SE_10);

setMoveKey(  SP_ATK02+8,   1,    0,   0,   128);
setMoveKey(  SP_ATK02+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK02+16,   1,  -60,  -200,  -100);
setDamage( SP_ATK02+16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK02+7,6,15);
setShake(SP_ATK02+13,15,10);

setRotateKey(SP_ATK02,  1,  30 );
setRotateKey( SP_ATK02+2,  1,  80 );
setRotateKey( SP_ATK02+4,  1, 120 );
setRotateKey( SP_ATK02+6,  1, 160 );
setRotateKey( SP_ATK02+8,  1, 200 );
setRotateKey( SP_ATK02+10,  1, 260 );
setRotateKey( SP_ATK02+12,  1, 320 );
setRotateKey( SP_ATK02+14,  1,   0 );

setShakeChara( SP_ATK02+15, 1, 5,  10);
setShakeChara( SP_ATK02+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK02+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK02+15, ct, 30, 10);
setEffRotateKey( SP_ATK02+15, ct, -40);
setEffScaleKey( SP_ATK02+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK02+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK02+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+15, ct, 255);
setEffAlphaKey( SP_ATK02+105, ct, 255);
setEffAlphaKey( SP_ATK02+115, ct, 0);

playSe( SP_ATK02+3, SE_11);
shuchusen = entryEffectLife( SP_ATK02+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+16);

entryFade( SP_ATK02+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_ATK02+110);

else
------------------------------------------------------
-- 敵側対応
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
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

------------------------------------------------------
-- 気力解放！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
--changeAnime( 70, 0, 30);                       -- 溜め!

entryEffectLife( 70, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryEffectLife( 70, SP_01, 109, 0x40,  0,  0,  0,  0);   -- タメ

playSe( 70, SE_03);
playSe( 80, SE_04);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 95, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--[[
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);
]]--

--changeAnime( 170, 0, 30);   -- 溜め!
cr = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- eff_008
setEffReplaceTexture( cr, 1, 1);
setEffReplaceTexture( cr, 2, 0);                         -- カード差し替え
setEffReplaceTexture( cr, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( 170, SE_05);
--[[
setEffScaleKey(	90,cr, 1,1);
setEffScaleKey(	240,cr, 1,1);
setEffShake( 240, ct, 3, 12);
setEffScaleKey(	243,cr, 1.2,1.2);
setEffScaleKey(	248,cr, 1.2,1.2);
setEffShake( 248, ct, 3, 8);
setEffScaleKey(	250,cr, 1.4,1.4);
setEffScaleKey(	256,cr, 1.4,1.4);
setEffShake( 255, ct, 8, 15);
setEffScaleKey(	258,cr, 2,2);
]]--
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

-- ** エフェクト等 ** --
entryFadeBg( 257, 0, 129, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 255, 0, 0, 250);     -- 青い　背景

setDisp( 0, 1, 0);
playSe(260,1018);
--setEnvZoomEnable(  260,  0);
entryEffect( 260+2, 908, 0x80,  -1,  0,  0);
naname=entryEffectLife( 260+5, 908, 15, 0x80,  -1,  0,  0,  0);
--setEffRotateKey(260+5,naname,45);
--setEffScaleKey(260+5,naname,1.2,1.2);
entryEffectLife(  260+5, SP_01, 20, 0x40+0x80,  0,  0,  0,  0);   --オーラ
changeAnime(  260,  0,  116);
changeAnime(  260,  1,  102);
setDrawFront( 260, 0, 0);

setMoveKey(  260,  0,  -20,  -30,  0);
entryFadeBg(260+10,  5,  8,  1,  255,255,255,255);
--setEnvZoomEnable(  260+10,  1);
entryEffect(  260+18,  4,  0, -1,  0,  0,  0);
setMoveKey(  260+10,  0,  -200,  -80,  0);
setMoveKey(  260+13,  0,  -15,  -20,  -60);
entryFade( 260+16,  5,  4,  3,  0,0,0,255);
entryEffect( 260+16, 908, 0,  -1,  0,  0);
setMoveKey(  260+21,  0,  -30,  0,  -70);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade(260+21, 3, 4, 2, 255, 255, 255, 255);     -- white fade
----------------------------------------------------
playSe( 300, SE_07);

------------------------------------------------------
-- 攻撃(100F)
------------------------------------------------------
SP_ATK01 = 290;
SP_ATK02 = SP_ATK01+112;

changeAnime( SP_ATK01, 0, 31);                                    -- かめはめ発射ポーズ
setDisp( SP_ATK01, 0, 0);
setScaleKey( SP_ATK01, 0, 1.5,1.5);
setDisp( SP_ATK01, 1, 1);
changeAnime( SP_ATK01, 1, 104);                     -- ガード
setMoveKey(  SP_ATK01,    1,  0,  0,   -100);
setMoveKey(  SP_ATK01+15,  1,  50,  0,   -128);

--playSe( SP_ATK01+30, SE_07);

--[[
setRotateKey( SP_ATK01+20, 1, 0);
setRotateKey( SP_ATK01+36-25, 1, 15);
setRotateKey( SP_ATK01+39-25, 1, 15);
setRotateKey( SP_ATK01+40-25, 1, -10);
setRotateKey( SP_ATK01+49-25, 1, -10);
setRotateKey( SP_ATK01+48-25, 1, 5);
setRotateKey( SP_ATK01+60-25, 1, 0);
--]]

-- 敵吹っ飛ぶモーション

setMoveKey(  SP_ATK01+95, 1, 0,  0,  -128); --136+95
changeAnime( SP_ATK01+74, 1, 108);
entryEffectLife( SP_ATK01+95, 921, 15, 0x80,  -1,  0,  0,  0); -- 流線斜め
setMoveKey(  SP_ATK01+103, 1, 400,    0,  -50);
setDamage(  SP_ATK01+109,  1,  0);   --ダメージ振動等

--攻撃演出--
-- ** エフェクト等 ** --
setShakeChara( SP_ATK01, 1, 99, 20);
entryFadeBg( SP_ATK01, 0, 36, 0, 10, 10, 10, 150);          -- ベース暗め　背景
entryEffectLife( SP_ATK01, 921, 36, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (SP_ATK01+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
setDamage(  SP_ATK01+64-25,  1,  0);   --ダメージ振動等

entryEffectLife( SP_ATK01+35, 908, 5, 0x00,  -1, 0,  0,  0);   -- 集中線
eff01 = entryEffect( SP_ATK01+35, SP_04, 0, 1,  0,  0,  0);   -- ヒットエフェクト
--setEffScaleKey( SP_ATK01+35, eff01,1,2);--サイズ
setEffRotateKey(SP_ATK01+35, eff01,-10);--角度
--entryFlashBg( (SP_ATK01+35), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+36, 1, 106);--やられ   
playSe( SP_ATK01+35, SE_09);
entryFadeBg( SP_ATK01+35, 0, 66, 0, 0, 0, 0, 255);          -- ベース暗め　背景
pauseAll(SP_ATK01+36,7);

--2撃目--
entryEffectLife( SP_ATK01+43-25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+43-25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+43-25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+43-25, eff02,-70);--角度
--entryFlashBg( (SP_ATK01+43-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+43-25, SE_08);
changeAnime( SP_ATK01+43-25, 1, 105);--やられ 
setShake( SP_ATK01+43-25, 3, 14);
setMoveKey(  SP_ATK01+43-25, 1, 0,  0,  -50);
setMoveKey(  SP_ATK01+44-25, 1, 50,  -50,  -60);

--2撃目--
entryEffectLife( SP_ATK01+50-25, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線

eff02 = entryEffect( SP_ATK01+50-25, SP_04,  0, -1,  0,  0,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+50-25, eff02,0.4,3);--サイズ
setEffRotateKey(SP_ATK01+50-25, eff02,70);--角度
--entryFlashBg( (SP_ATK01+50-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+50-25, SE_08);
changeAnime( SP_ATK01+50-25, 1, 105);--やられ 
setShake( SP_ATK01+50-25, 3, 14);
setMoveKey(  SP_ATK01+50-25, 1, 0,  0,  -60);
setMoveKey(  SP_ATK01+51-25, 1, 50,  -50,  -80);

eff03 = entryEffect( SP_ATK01+57-25, SP_04,  0, -1,  0,  50,  0);   -- 攻撃4
--setEffScaleKey( SP_ATK01+57-25, eff03, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+57-25, eff03, -80);--角度
playSe( SP_ATK01+57-25, SE_09);
changeAnime( SP_ATK01+57-25, 1, 108);--やられ 
setShake( SP_ATK01+57-25, 3, 14);
setMoveKey(  SP_ATK01+57-25, 1, 50,  -50,  -128);
setMoveKey(  SP_ATK01+58-25, 1, -80,  30,  -128);

eff04 = entryEffect( SP_ATK01+65-25, SP_04,  0, -1,  0,  -80,  0);   -- 攻撃5
--setEffScaleKey( SP_ATK01+65-25, eff04, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+65-25, eff04, 45);--角度
playSe( SP_ATK01+65-25, SE_08);
changeAnime( SP_ATK01+65-25, 1, 106);--やられ 
setShake( SP_ATK01+65-25, 3, 14);
setMoveKey(  SP_ATK01+65-25, 1, -80,  30,  -128);
setMoveKey(  SP_ATK01+66-25, 1, 40,  -35,  -128);

eff05 = entryEffect( SP_ATK01+72-25, SP_04,  0, -1,  0,  20,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+72-25, eff05, 0.4,3);--サイズ
setEffRotateKey(SP_ATK01+72-25, eff05, -100);--角度
--entryFlashBg( (SP_ATK01+72-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_ATK01+72-25, SE_09);
setShake( SP_ATK01+72-25, 3, 14);
setMoveKey(  SP_ATK01+72-25, 1, 40,  -35,  -128);
setMoveKey(  SP_ATK01+73-25, 1, -90,  -90,  -128);

eff06 = entryEffect( SP_ATK01+76-25, SP_04,  0, -1,  0,  -60,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+76-25, eff06, 0.4,2);--サイズ
setEffRotateKey(SP_ATK01+76-25, eff06, 130);--角度
playSe( SP_ATK01+76-25, SE_08);
changeAnime( SP_ATK01+76-25, 1, 105);--やられ 
setShake( SP_ATK01+76-25, 3, 14);
setMoveKey(  SP_ATK01+76-25, 1, 90,  -90,  -128);
setMoveKey(  SP_ATK01+77-25, 1, -60, 80,  -128);

eff07 = entryEffect( SP_ATK01+80-25, SP_04,  0, -1,  0,  70,  0);   -- 攻撃3
--setEffScaleKey( SP_ATK01+80-25, eff07, 0.4,2.5);--サイズ
setEffRotateKey(SP_ATK01+80-25, eff07, 88);--角度
playSe( SP_ATK01+80-25, SE_08);
--entryFlashBg( (SP_ATK01+80-25), 1, fcolor_r, fcolor_g, fcolor_b, 200);
changeAnime( SP_ATK01+80-25, 1, 106);--やられ 
setShake( SP_ATK01+80-25, 3, 14);
setMoveKey(  SP_ATK01+80-25, 1, -60, 80,  -128);
setMoveKey(  SP_ATK01+81-25, 1, 80,  60,  -128);

eff08 = entryEffect( SP_ATK01+91-18, SP_07,  0, -1,  0,  0,  0);   -- 攻撃3
playSe( SP_ATK01+91-18, SE_09);
playSe( SP_ATK01+91-18, SE_08);
setShake( SP_ATK01+91-18, 3, 14);
entryFadeBg( SP_ATK01+92-18, 0, 35, 0, 0, 0, 0, 255);          -- ベース暗め　背景
entryEffectLife( SP_ATK01+91-18, 906, 10, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffectLife( SP_ATK01+91-18, 908, 32, 0x00,  -1, 0,  0,  0);   -- 集中線
entryFlashBg( SP_ATK01+92-18, 1, fcolor_r, 0, 0, 100);
--entryFlashBg( SP_ATK01+94-18, 1, 255, 255, 255, 100);
setMoveKey(  SP_ATK01+92-18, 1, 0,  0,  -128);
pauseAll(SP_ATK01+92-18,3);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK01, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(SP_ATK01, ct, 81, 20);
setEffScaleKey( SP_ATK01, ct, 2.4, 2.4);
setEffRotateKey(SP_ATK01, ct, 0);
setEffAlphaKey(SP_ATK01, ct, 255);
setEffAlphaKey(SP_ATK01+70-25, ct, 255);
setEffAlphaKey(SP_ATK01+92-25, ct, 0);

entryFadeBg( SP_ATK01+92-18, 3, 5, 4, 255, 0, 0, 255); 
entryFade( SP_ATK01+100, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255); 

setDisp(SP_ATK01+110,1,0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 275; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,  0,  -30,  0,  -70);
setMoveKey(  SP_dodge+9,  0,  -1100,  0,  -70);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK02-1, 1, 1); --SP_ATK01+112 =SP_ATK_02
setMoveKey(  SP_ATK02-1,    1,  100,  0,   0);
setScaleKey( SP_ATK02-1,    1,  1.0, 1.0);
setMoveKey(  SP_ATK02,    1,    0,   0,   128);
setScaleKey( SP_ATK02,    1,  0.1, 0.1);

changeAnime( SP_ATK02, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK02+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK02+8, SE_10);

setMoveKey(  SP_ATK02+8,   1,    0,   0,   128);
setMoveKey(  SP_ATK02+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK02+16,   1,  -60,  -200,  -100);
setDamage( SP_ATK02+16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK02+7,6,15);
setShake(SP_ATK02+13,15,10);

setRotateKey(SP_ATK02,  1,  30 );
setRotateKey( SP_ATK02+2,  1,  80 );
setRotateKey( SP_ATK02+4,  1, 120 );
setRotateKey( SP_ATK02+6,  1, 160 );
setRotateKey( SP_ATK02+8,  1, 200 );
setRotateKey( SP_ATK02+10,  1, 260 );
setRotateKey( SP_ATK02+12,  1, 320 );
setRotateKey( SP_ATK02+14,  1,   0 );

setShakeChara( SP_ATK02+15, 1, 5,  10);
setShakeChara( SP_ATK02+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK02+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK02+15, ct, 30, 10);
setEffRotateKey( SP_ATK02+15, ct, -40);
setEffScaleKey( SP_ATK02+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK02+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK02+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK02+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK02+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK02+15, ct, 255);
setEffAlphaKey( SP_ATK02+105, ct, 255);
setEffAlphaKey( SP_ATK02+115, ct, 0);

playSe( SP_ATK02+3, SE_11);
shuchusen = entryEffectLife( SP_ATK02+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK02+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK02+16);

entryFade( SP_ATK02+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_ATK02+110);
end

print ("[lua]sp0001 end");
