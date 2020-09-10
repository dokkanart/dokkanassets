

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
spep_5 = SP_ATK_3+45;

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

SP_01 = 100267;
SP_02 = 150308;
SP_03 = 150309;
--SP_02 = 100268;
--SP_03 = 100269;
SP_04 = 1565;

multi_frm = 2;

changeAnime( 0, 0, 30);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    100, -64,   0);
setMoveKey(   1,   0,    100, -64,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start = -69;

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
playSe( SP_start+ 73, SE_03);

entryEffectLife( SP_start+  69,   1503, 100,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife( SP_start+  69,   1502,  100, 0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

kame_hand1 = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300,  -100,  240);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand1, 1.2, 1.2);

setShakeChara( SP_start+ 70, 0, 100, 10);
setShake( SP_start+ 70, 100, 15);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

--entryEffect( SP_start+  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect( SP_start+  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

setMoveKey(   SP_start+170,   0,    100, -64,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start+  174,    0,      0,  0,   0);
setMoveKey( SP_start+  175,    0,      0,  200,   0);
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 245, 3, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);

--removeAllEffect(SP_start+ 257);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start+  260,    0,      0,  0,   -20);
setMoveKey( SP_start+  270,    0,      0,  0,   -10);
setMoveKey( SP_start+  290,    0,   -30,  0,   0);

posx= 300;
kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 112, 0x100,  0,  0,  160,  20);   -- 伸びるかめはめ波
--kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 112, 0x40,  0,  -1,  1000,  0);   -- 伸びるかめはめ波
--kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 112, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( SP_start+ 260, SE_06);

setEffMoveKey(SP_start+  260, kamehame_beam,   0, 0, 0);
setEffScaleKey( SP_start+  260, kamehame_beam, 1.0, 1.0);

setEffAlphaKey( SP_start+260, kamehame_beam, 0);
setEffAlphaKey( SP_start+262, kamehame_beam, 0);
setEffAlphaKey( SP_start+263, kamehame_beam, 255);

spname = entryEffect( SP_start+ 257, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffMoveKey(SP_start+  260, kamehame_beam,   160,  20, 0);
setEffMoveKey(SP_start+  270, kamehame_beam,   160,  20, 0);
setEffMoveKey(SP_start+  290, kamehame_beam,   120,  20, 0);
--[[
setEffMoveKey(SP_start+  300, kamehame_beam,   -250+posx,  50, 0);
setEffMoveKey(SP_start+  305, kamehame_beam,   -850+posx,  180, 0);
setEffMoveKey(SP_start+  310, kamehame_beam,   -450+posx,  180, 0);
]]
setEffMoveKey(SP_start+  303, kamehame_beam,   posx-250-200,  50, 0);
setEffMoveKey(SP_start+  305, kamehame_beam,   posx-850-200,  180, 0);
--setEffMoveKey(SP_start+  310, kamehame_beam,   posx-450-50,  180, 0);
setEffScaleKey( SP_start+  305, kamehame_beam, 0.8, 0.8);

setEffAlphaKey( SP_start+300, kamehame_beam, 255);
setEffAlphaKey( SP_start+257, spname, 255);
setEffAlphaKey( SP_start+310, spname, 0);

--setEffMoveKey(SP_start+  305, kamehame_beam,   -850,  70, 0);
--setEffMoveKey(SP_start+  308, kamehame_beam,   -450,  70, 0);

-- 途中からカメハメハが伸びる
--[[
setEffMoveKey(SP_start+  260, kamehame_beam,   350,  0, 0);
setEffMoveKey(SP_start+  300, kamehame_beam,   300,  0, 0);
]]
setMoveKey( SP_start+  300,    0,   -250,  40,   50);
setMoveKey( SP_start+  305,    0,   -850,  180,   80);
--setMoveKey( SP_start+  305,    0,   -850,  70,   80);
setDisp( SP_start+  305, 0, 0);
--setMoveKey( SP_start+  308,    0,   -450,  70,   80);
setMoveKey( SP_start+  310,    0,   -450,  180,   80);
--setMoveKey( SP_start+  310,    0,   -450,  180,   80);
-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 119, 0, 10, 10, 10, 200);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+ 260, 921, 119, 0x80,  -1,  0,  0,  0); -- 流線921
setEffRotateKey( SP_start+260, sen2, 180);
setShakeChara( SP_start+ 305, 0, 54, 50);
setEffScaleKey( SP_start+ 260, sen2, 1.6, 1.6);


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
playSe( SP_start+ 300, SE_07);

SP_start2 = 10;

entryFade( SP_start2+ SP_start+ 350, 4, 17, 15, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_start2+ SP_start+ 350,    1,   120,  0,   0);

--entryFade( SP_start2+ SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(SP_start2+ SP_start+ 370);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start2+ SP_start+ 370, 0, 0);
setDisp( SP_start2+ SP_start+ 370, 1, 1);
changeAnime( SP_start2+ SP_start+ 370, 1, 118);                        -- ガード

setMoveKey(  SP_start2+ SP_start+ 370-5,    1,   120,  0,   0);
setMoveKey(  SP_start2+ SP_start+ 370-5,    1,  400,  -400,   0);
setMoveKey(  SP_start2+ SP_start+ 370,    1,  400,  -400,   0);
setScaleKey(  SP_start2+ SP_start+ 370-5,   1,   1.6,  1.6);
setScaleKey( SP_start2+ SP_start+ 370-5,    1,  1, 1);

setMoveKey(  SP_start2+ SP_start+ 370+30,    1,   120,  -270,   0);
setScaleKey(  SP_start2+ SP_start+ 370+30,   1,   1.6,  1.6);

playSe( SP_start2+ SP_start+ 390, SE_06);

entryFade( SP_start2+ SP_start+ 370+32, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start2+ SP_start+ 370+38, 1, 0);

ryusen = entryEffectLife( SP_start2+ SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(SP_start2+ SP_start+ 370, ryusen, 230);
setEffScaleKey( SP_start2+ SP_start+ 370, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( SP_start2+ SP_start+ 370, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start2+ SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+ SP_start+452, kamehame_beam2, 1, 1);
--setEffScaleKey( SP_start2+ SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start2+ SP_start+ 452, 1, 0);  -- ダメージ振動等

playSe( SP_start2+ SP_start+ 455, SE_09);
-- 敵吹っ飛ぶモーション

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start2+ SP_start+ 370, 0, 99, 0,10, 10, 10, 200);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start2+ SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+ SP_start+370, ct, 70);
setEffAlphaKey( SP_start2+ SP_start+370, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+395, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+405, ct, 0);

ct2 = entryEffectLife( SP_start2+ SP_start+ 370+60, 10006, 30, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(SP_start2+ SP_start+ 370+60, ct2, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ 370+60, ct2, 0.1, 0.1);
setEffScaleKey( SP_start2+ SP_start+ 370+65, ct2, 2.4, 2.4);
setEffScaleKey( SP_start2+ SP_start+ 370+90, ct2, 2.8, 2.8);
setEffAlphaKey(SP_start2+ SP_start+ 370+60, ct2, 255);
setEffAlphaKey(SP_start2+ SP_start+ 370+75, ct2, 255);
setEffAlphaKey(SP_start2+ SP_start+ 370+90, ct2, 0);

entryFade( SP_start2+ SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 339; --エンドフェイズのフレーム数を置き換える

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

spep_5 = 475;
spep_9 = SP_start2+ SP_start+ spep_5;
SP_05 = 1563;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setMoveKey( spep_9-5, 0, -500, 0, 0);

entryFade( spep_9-10, 5, 20, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setScaleKey(  spep_9,   1,   1.6,  1.6);

crater = entryEffect(  spep_9-5,   SP_05,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9-5, crater, 1.0, 1.0);
setEffAlphaKey( spep_9-5, crater, 255);



--playSe( spep_9, 1042);
playSe( spep_9+59, SE_10);

-- ダメージ表示
dealDamage(spep_9+16+70);

entryFade( spep_9+100+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110+70);
--[[

hinoumi1 = entryEffect( SP_start2+ SP_start+ spep_5, SP_04, 0x80,  -1,  0,  0,  0);  
hinoumi2 = entryEffect( SP_start2+ SP_start+ spep_5, SP_04, 0x100,  -1,  0,  0,  0);  
--setDisp( SP_start2+ SP_start+ spep_5, 1, 0);
setEffAlphaKey( SP_start2+ SP_start+ spep_5, hinoumi1, 255);
setEffAlphaKey( SP_start2+ SP_start+ spep_5, hinoumi2, 0);


setVisibleUI( SP_start2+ SP_start+ spep_5, 0);

setDisp( SP_start2+ SP_start+ spep_5, 0, 0);
setDisp( SP_start2+ SP_start+ spep_5, 1, 1);
setMoveKey( SP_start2+ SP_start+  spep_5,    1,  120,    0,  128);
setScaleKey( SP_start2+ SP_start+ spep_5,    1,  1.0, 1.0);
setMoveKey( SP_start2+ SP_start+  spep_5+1,    1,    0,   0,   128);
setScaleKey( SP_start2+ SP_start+ spep_5+1,    1,  0.1, 0.1);

changeAnime( SP_start2+ SP_start+ spep_5+1, 1, 107);                         -- 手前ダメージ
--entryEffect( SP_start2+ SP_start+ spep_5+1, SP_08,  0x80,  -1,  0,  0,  0);   -- 全体攻撃用爆発
playSe( SP_start2+ SP_start+ spep_5+1, SE_10);
playSe( SP_start2+ SP_start+ spep_5+41, SE_10);
playSe( SP_start2+ SP_start+ spep_5+61, SE_10);

setMoveKey( SP_start2+ SP_start+  spep_5+8,    1,    -120,    200,   128);
setMoveKey( SP_start2+ SP_start+  spep_5+15,   1,  60,    -200,  -100);
setMoveKey( SP_start2+ SP_start+  spep_5+20,   1,  400,    -600,  -120);

setScaleKey( SP_start2+ SP_start+ spep_5+21,    0,  0.3, 0.3);
setMoveKey( SP_start2+ SP_start+  spep_5+21,    0,  -120,    200,  0);
setDisp( SP_start2+ SP_start+ spep_5+21, 0, 1);
setMoveKey( SP_start2+ SP_start+  spep_5+60,    0,  -120,    150,  0);

setEffAlphaKey( SP_start2+ SP_start+ spep_5+20, hinoumi1, 255);
setEffAlphaKey( SP_start2+ SP_start+ spep_5+21, hinoumi1, 0);
setEffAlphaKey( SP_start2+ SP_start+ spep_5+20, hinoumi2, 0);
setEffAlphaKey( SP_start2+ SP_start+ spep_5+21, hinoumi2, 185);

setDisp( SP_start2+ SP_start+ spep_5+20, 1, 0);

setShake( SP_start2+ SP_start+spep_5+10,6,15);
setShake( SP_start2+ SP_start+spep_5+17,15,9);

setRotateKey( SP_start2+ SP_start+ spep_5,  1,  30 );
setRotateKey( SP_start2+ SP_start+ spep_5+2,  1,  80 );
setRotateKey( SP_start2+ SP_start+ spep_5+4,  1, 120 );
setRotateKey( SP_start2+ SP_start+ spep_5+6,  1, 160 );
setRotateKey( SP_start2+ SP_start+ spep_5+8,  1, 200 );
setRotateKey( SP_start2+ SP_start+ spep_5+10,  1, 260 );
setRotateKey( SP_start2+ SP_start+ spep_5+12,  1, 320 );
setRotateKey( SP_start2+ SP_start+ spep_5+14,  1,   0 );

setShakeChara( SP_start2+ SP_start+ spep_5+14, 1, 5,  10);
setShakeChara( SP_start2+ SP_start+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー

shuchusen = entryEffectLife( SP_start2+ SP_start+ spep_5, 911, 80, 0x00,  -1, 0,  0,  0);   -- 集中線906
--entryEffect( SP_start2+ SP_start+ spep_5+20, 1600,  0x00,  -1,  0,30, -70);   -- ひび割れ
setEffScaleKey( SP_start2+ SP_start+ spep_5, shuchusen, 1.2, 1.2);

entryFadeBg( SP_start2+ SP_start+ spep_5, 0, 120, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDamage( SP_start2+ SP_start+ spep_5+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage( SP_start2+ SP_start+spep_5+33);

entryFade( SP_start2+ SP_start+ spep_5+110, 9,  10, 1, 8, 8, 8, 255);             -- black fade
setScaleKey( SP_start2+ SP_start+ spep_5+120,    0,  0.3, 0.3);

endPhase( SP_start2+ SP_start+spep_5+120);
]]

else

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  69,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  69,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( SP_start+ 80, SE_04);

kame_hand1 = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300,  -100,  240);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand1, 1.2, 1.2);

setShakeChara( SP_start+ 70, 0, 100, 10);
setShake( SP_start+ 70, 100, 15);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

entryEffect( SP_start+  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

setMoveKey(   SP_start+170,   0,    100, -64,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start+  174,    0,      0,  0,   0);
setMoveKey( SP_start+  175,    0,      0,  200,   0);
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 245, 3, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);

--removeAllEffect(SP_start+ 257);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start+  260,    0,      0,  0,   -20);
setMoveKey( SP_start+  270,    0,      0,  0,   -10);
setMoveKey( SP_start+  290,    0,   -30,  0,   0);

posx= 300;
kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 112, 0x100,  0,  0,  160,  20);   -- 伸びるかめはめ波
--kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 112, 0x40,  0,  -1,  1000,  0);   -- 伸びるかめはめ波
--kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 112, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( SP_start+ 260, SE_06);

setEffMoveKey(SP_start+  260, kamehame_beam,   0, 0, 0);
setEffScaleKey( SP_start+  260, kamehame_beam, 1.0, 1.0);

setEffAlphaKey( SP_start+260, kamehame_beam, 0);
setEffAlphaKey( SP_start+262, kamehame_beam, 0);
setEffAlphaKey( SP_start+263, kamehame_beam, 255);

spname = entryEffect( SP_start+ 257, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffMoveKey(SP_start+  260, kamehame_beam,   160,  20, 0);
setEffMoveKey(SP_start+  270, kamehame_beam,   160,  20, 0);
setEffMoveKey(SP_start+  290, kamehame_beam,   120,  20, 0);
--[[
setEffMoveKey(SP_start+  300, kamehame_beam,   -250+posx,  50, 0);
setEffMoveKey(SP_start+  305, kamehame_beam,   -850+posx,  180, 0);
setEffMoveKey(SP_start+  310, kamehame_beam,   -450+posx,  180, 0);
]]
setEffMoveKey(SP_start+  303, kamehame_beam,   posx-250-200,  50, 0);
setEffMoveKey(SP_start+  305, kamehame_beam,   posx-850-200,  180, 0);
--setEffMoveKey(SP_start+  310, kamehame_beam,   posx-450-50,  180, 0);
setEffScaleKey( SP_start+  305, kamehame_beam, 0.8, 0.8);

setEffAlphaKey( SP_start+300, kamehame_beam, 255);
setEffAlphaKey( SP_start+257, spname, 255);
setEffAlphaKey( SP_start+310, spname, 0);

--setEffMoveKey(SP_start+  305, kamehame_beam,   -850,  70, 0);
--setEffMoveKey(SP_start+  308, kamehame_beam,   -450,  70, 0);

-- 途中からカメハメハが伸びる
--[[
setEffMoveKey(SP_start+  260, kamehame_beam,   350,  0, 0);
setEffMoveKey(SP_start+  300, kamehame_beam,   300,  0, 0);
]]
setMoveKey( SP_start+  300,    0,   -250,  40,   50);
setMoveKey( SP_start+  305,    0,   -850,  180,   80);
--setMoveKey( SP_start+  305,    0,   -850,  70,   80);
setDisp( SP_start+  305, 0, 0);
--setMoveKey( SP_start+  308,    0,   -450,  70,   80);
setMoveKey( SP_start+  310,    0,   -450,  180,   80);
--setMoveKey( SP_start+  310,    0,   -450,  180,   80);
-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 119, 0, 10, 10, 10, 200);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+ 260, 921, 119, 0x80,  -1,  0,  0,  0); -- 流線921
setEffRotateKey( SP_start+260, sen2, 180);
setShakeChara( SP_start+ 305, 0, 54, 50);
setEffScaleKey( SP_start+ 260, sen2, 1.6, 1.6);


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
playSe( SP_start+ 300, SE_07);

SP_start2 = 10;

entryFade( SP_start2+ SP_start+ 350, 4, 17, 15, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_start2+ SP_start+ 350,    1,   120,  0,   0);

--entryFade( SP_start2+ SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(SP_start2+ SP_start+ 370);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start2+ SP_start+ 370, 0, 0);
setDisp( SP_start2+ SP_start+ 370, 1, 1);
changeAnime( SP_start2+ SP_start+ 370, 1, 118);                        -- ガード

setMoveKey(  SP_start2+ SP_start+ 370-5,    1,   120,  0,   0);
setMoveKey(  SP_start2+ SP_start+ 370-5,    1,  400,  -400,   0);
setMoveKey(  SP_start2+ SP_start+ 370,    1,  400,  -400,   0);
setScaleKey(  SP_start2+ SP_start+ 370-5,   1,   1.6,  1.6);
setScaleKey( SP_start2+ SP_start+ 370-5,    1,  1, 1);

setMoveKey(  SP_start2+ SP_start+ 370+30,    1,   120,  -270,   0);
setScaleKey(  SP_start2+ SP_start+ 370+30,   1,   1.6,  1.6);

playSe( SP_start2+ SP_start+ 390, SE_06);

entryFade( SP_start2+ SP_start+ 370+32, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start2+ SP_start+ 370+38, 1, 0);

ryusen = entryEffectLife( SP_start2+ SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(SP_start2+ SP_start+ 370, ryusen, 230);
setEffScaleKey( SP_start2+ SP_start+ 370, ryusen, 1.6, 1.6);

kamehame_beam2 = entryEffect( SP_start2+ SP_start+ 370, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start2+ SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start2+ SP_start+452, kamehame_beam2, 1, 1);
--setEffScaleKey( SP_start2+ SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start2+ SP_start+ 452, 1, 0);  -- ダメージ振動等

playSe( SP_start2+ SP_start+ 455, SE_09);
-- 敵吹っ飛ぶモーション

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start2+ SP_start+ 370, 0, 99, 0,10, 10, 10, 200);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start2+ SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+ SP_start+370, ct, -70);
setEffAlphaKey( SP_start2+ SP_start+370, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+395, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+405, ct, 0);

ct2 = entryEffectLife( SP_start2+ SP_start+ 370+60, 10006, 30, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(SP_start2+ SP_start+ 370+60, ct2, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ 370+60, ct2, 0.1, 0.1);
setEffScaleKey( SP_start2+ SP_start+ 370+65, ct2, 2.4, 2.4);
setEffScaleKey( SP_start2+ SP_start+ 370+90, ct2, 2.8, 2.8);
setEffAlphaKey(SP_start2+ SP_start+ 370+60, ct2, 255);
setEffAlphaKey(SP_start2+ SP_start+ 370+75, ct2, 255);
setEffAlphaKey(SP_start2+ SP_start+ 370+90, ct2, 0);

entryFade( SP_start2+ SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 339; --エンドフェイズのフレーム数を置き換える

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

spep_5 = 475;
spep_9 = SP_start2+ SP_start+ spep_5;
SP_05 = 1563;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setMoveKey( spep_9-5, 0, -500, 0, 0);

entryFade( spep_9-10, 5, 20, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setScaleKey(  spep_9,   1,   1.6,  1.6);

crater = entryEffect(  spep_9-5,   SP_05,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9-5, crater, 1.0, 1.0);
setEffAlphaKey( spep_9-5, crater, 255);



--playSe( spep_9, 1042);
playSe( spep_9+59, SE_10);

-- ダメージ表示
dealDamage(spep_9+16+70);

entryFade( spep_9+100+70, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110+70);
--[[

hinoumi1 = entryEffect( SP_start2+ SP_start+ spep_5, SP_04, 0x80,  -1,  0,  0,  0);  
hinoumi2 = entryEffect( SP_start2+ SP_start+ spep_5, SP_04, 0x100,  -1,  0,  0,  0);  
--setDisp( SP_start2+ SP_start+ spep_5, 1, 0);
setEffAlphaKey( SP_start2+ SP_start+ spep_5, hinoumi1, 255);
setEffAlphaKey( SP_start2+ SP_start+ spep_5, hinoumi2, 0);


setVisibleUI( SP_start2+ SP_start+ spep_5, 0);

setDisp( SP_start2+ SP_start+ spep_5, 0, 0);
setDisp( SP_start2+ SP_start+ spep_5, 1, 1);
setMoveKey( SP_start2+ SP_start+  spep_5,    1,  120,    0,  128);
setScaleKey( SP_start2+ SP_start+ spep_5,    1,  1.0, 1.0);
setMoveKey( SP_start2+ SP_start+  spep_5+1,    1,    0,   0,   128);
setScaleKey( SP_start2+ SP_start+ spep_5+1,    1,  0.1, 0.1);

changeAnime( SP_start2+ SP_start+ spep_5+1, 1, 107);                         -- 手前ダメージ
--entryEffect( SP_start2+ SP_start+ spep_5+1, SP_08,  0x80,  -1,  0,  0,  0);   -- 全体攻撃用爆発
playSe( SP_start2+ SP_start+ spep_5+1, SE_10);
playSe( SP_start2+ SP_start+ spep_5+41, SE_10);
playSe( SP_start2+ SP_start+ spep_5+61, SE_10);

setMoveKey( SP_start2+ SP_start+  spep_5+8,    1,    -120,    200,   128);
setMoveKey( SP_start2+ SP_start+  spep_5+15,   1,  60,    -200,  -100);
setMoveKey( SP_start2+ SP_start+  spep_5+20,   1,  400,    -600,  -120);

setScaleKey( SP_start2+ SP_start+ spep_5+21,    0,  0.3, 0.3);
setMoveKey( SP_start2+ SP_start+  spep_5+21,    0,  -120,    200,  0);
setDisp( SP_start2+ SP_start+ spep_5+21, 0, 1);
setMoveKey( SP_start2+ SP_start+  spep_5+60,    0,  -120,    150,  0);

setEffAlphaKey( SP_start2+ SP_start+ spep_5+20, hinoumi1, 255);
setEffAlphaKey( SP_start2+ SP_start+ spep_5+21, hinoumi1, 0);
setEffAlphaKey( SP_start2+ SP_start+ spep_5+20, hinoumi2, 0);
setEffAlphaKey( SP_start2+ SP_start+ spep_5+21, hinoumi2, 185);

setDisp( SP_start2+ SP_start+ spep_5+20, 1, 0);

setShake( SP_start2+ SP_start+spep_5+10,6,15);
setShake( SP_start2+ SP_start+spep_5+17,15,9);

setRotateKey( SP_start2+ SP_start+ spep_5,  1,  30 );
setRotateKey( SP_start2+ SP_start+ spep_5+2,  1,  80 );
setRotateKey( SP_start2+ SP_start+ spep_5+4,  1, 120 );
setRotateKey( SP_start2+ SP_start+ spep_5+6,  1, 160 );
setRotateKey( SP_start2+ SP_start+ spep_5+8,  1, 200 );
setRotateKey( SP_start2+ SP_start+ spep_5+10,  1, 260 );
setRotateKey( SP_start2+ SP_start+ spep_5+12,  1, 320 );
setRotateKey( SP_start2+ SP_start+ spep_5+14,  1,   0 );

setShakeChara( SP_start2+ SP_start+ spep_5+14, 1, 5,  10);
setShakeChara( SP_start2+ SP_start+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー

shuchusen = entryEffectLife( SP_start2+ SP_start+ spep_5, 911, 80, 0x00,  -1, 0,  0,  0);   -- 集中線906
--entryEffect( SP_start2+ SP_start+ spep_5+20, 1600,  0x00,  -1,  0,30, -70);   -- ひび割れ
setEffScaleKey( SP_start2+ SP_start+ spep_5, shuchusen, 1.2, 1.2);

entryFadeBg( SP_start2+ SP_start+ spep_5, 0, 120, 0, 10, 10, 10, 200);          -- ベース暗め　背景

setDamage( SP_start2+ SP_start+ spep_5+33, 1, 0);  -- ダメージ振動等

-- ダメージ表示
dealDamage( SP_start2+ SP_start+spep_5+33);

entryFade( SP_start2+ SP_start+ spep_5+110, 9,  10, 1, 8, 8, 8, 255);             -- black fade
setScaleKey( SP_start2+ SP_start+ spep_5+120,    0,  0.3, 0.3);

endPhase( SP_start2+ SP_start+spep_5+120);
]]


end
