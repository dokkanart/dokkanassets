

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
SE_09 = 1025; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

tyo = -40;
tyo2 = -60;

SP_01 = 108018;
SP_02 = 108019;
SP_03 = 108020;
SP_04 = 1556;--爆発

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    40, -34,   0);
setMoveKey(   1,   0,    40, -34,   0);
setScaleKey(   0,   0, 1.6, 1.6);
setScaleKey(   1,   0, 1.6, 1.6);

SP_start = -60;


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kame_hand1 = entryEffectLife( 0, SP_01, 170, 0x40,  0,  300,  -26,  0);   -- 手のカメハメ波部
setEffScaleKey( 0, kame_hand1, 0.5, 0.5);
setEffAlphaKey(0, kame_hand1, 255);

changeAnime(  0, 0, 30);                       -- 溜め!
-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   341, 170, 0x40+0x80,  0,  1,  0,  -70); -- オーラ
setEffScaleKey( 0, aura, 1.7, 1.7);
setShakeChara( 0, 0, 49, 5);
--気を貯める
playSe( 0, SE_01);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI( SP_start+69, 0);
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
setEffAlphaKey( SP_start+170, kame_hand1, 255);
setMoveKey(   SP_start+170,   0,    40, -34,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.6, 1.6);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start+  174,    0,      0,  0,   0);
setMoveKey( SP_start+  175,    0,      0,  200,   0);
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture(  speff, 1, 1);
setEffReplaceTexture(  speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start+  259,    0,      0,  30,   -20);
setMoveKey( SP_start+  270,    0,      0,  30,   -10);
setMoveKey( SP_start+  290,    0,   -30,  30,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( SP_start+ 260, SE_07);
setEffScaleKey(SP_start+240, kamehame_beam, 1.8, 1.8);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setDisp( SP_start+ 300, 0, 0);
setMoveKey( SP_start+  300,    0,   -250,  30,   50);--110
setMoveKey( SP_start+  305,    0,   -350,  60,   80);--140
setEffMoveKey( SP_start+  305, kamehame_beam, -85, 0);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, 190);
setShakeChara( SP_start+305, 0, 54, 50);
setEffScaleKey(SP_start+260, sen2, 1.3, 1.3);
setEffAlphaKey( SP_start+260, sen2, 255);


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
entryFade( SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  0,   0);
setMoveKey( SP_start+  370,    1,  235,  0,   0);
setMoveKey( SP_start+  371,    1,  235,  0,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   120,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

playSe( SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1.5, 1.5);
setEffScaleKey( SP_start+452, kamehame_beam2, 1.5, 1.5);
--setEffScaleKey( SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+ 452, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 455-25, SE_09);
-- 敵吹っ飛ぶモーション

changeAnime( SP_start+ 455-25, 1, 108);
setMoveKey( SP_start+  455-25, 1,  120,    0,  0);
setMoveKey( SP_start+  469-25, 1,  400,    0,  0);
setScaleKey( SP_start+ 455-25, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458-25, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468-25, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, 70);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+430, ct, 255);
setEffAlphaKey( SP_start+450, ct, 0);

entryFade( SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 459, 1, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 331; --エンドフェイズのフレーム数を置き換える

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


spep_5 = 469;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ spep_5, 1, 1);
setMoveKey( SP_start+  spep_5,    1,  120,    0,  128);
setScaleKey( SP_start+ spep_5,    1,  1.0, 1.0);
setMoveKey( SP_start+  spep_5+1,    1,    0,   0,   128);
setScaleKey( SP_start+ spep_5+1,    1,  0.1, 0.1);

changeAnime( SP_start+ spep_5+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ spep_5+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ spep_5+1, SE_10);

setMoveKey( SP_start+  spep_5+8,    1,    0,   0,   128);
setMoveKey( SP_start+  spep_5+15,   1,  -60,  -200,  -100);
setShake( SP_start+spep_5+10,6,15);
setShake( SP_start+spep_5+17,15,9);

setRotateKey( SP_start+ spep_5,  1,  30 );
setRotateKey( SP_start+ spep_5+2,  1,  80 );
setRotateKey( SP_start+ spep_5+4,  1, 120 );
setRotateKey( SP_start+ spep_5+6,  1, 160 );
setRotateKey( SP_start+ spep_5+8,  1, 200 );
setRotateKey( SP_start+ spep_5+10,  1, 260 );
setRotateKey( SP_start+ spep_5+12,  1, 320 );
setRotateKey( SP_start+ spep_5+14,  1,   0 );

setShakeChara( SP_start+ spep_5+14, 1, 5,  10);
setShakeChara( SP_start+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ spep_5+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ spep_5+15, ct, 30, 10);
setEffRotateKey( SP_start+ spep_5+15, ct, -40);
setEffScaleKey( SP_start+ spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ spep_5+15, ct, 255);
setEffAlphaKey( SP_start+ spep_5+105, ct, 255);
setEffAlphaKey( SP_start+ spep_5+115, ct, 0);

playSe( SP_start+ spep_5+3, SE_11);
shuchusen = entryEffectLife( SP_start+ spep_5, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+spep_5+15);

entryFade( SP_start+ spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
entryFadeBg( 0, 0, 170, 0, 10, 10, 10, 180);       -- ベース暗め　背景


kame_hand1 = entryEffectLife( 0, SP_01, 170, 0x40,  0,  300,  -32,  0);   -- 手のカメハメ波部
setEffScaleKey( 0, kame_hand1, 0.5, 0.5);
setEffAlphaKey(0, kame_hand1, 255);

changeAnime(  0, 0, 30);                       -- 溜め!
-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   341, 170, 0x40+0x80,  0,  1,  0,  -70); -- オーラ
setEffScaleKey( 0, aura, 1.7, 1.7);
setShakeChara( 0, 0, 49, 5);
--気を貯める
playSe( 0, SE_01);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI( SP_start+69, 0);
--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture(  speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture(  speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start+ 80, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
setEffAlphaKey( SP_start+170, kame_hand1, 255);
setMoveKey(   SP_start+170,   0,    40, -34,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.6, 1.6);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);
setMoveKey( SP_start+  174,    0,      0,  0,   0);
setMoveKey( SP_start+  175,    0,      0,  200,   0);
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture(  speff, 1, 1);
setEffReplaceTexture(  speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture(  speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start+  259,    0,      0,  30,   -20);
setMoveKey( SP_start+  270,    0,      0,  30,   -10);
setMoveKey( SP_start+  290,    0,   -30,  30,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( SP_start+ 260, SE_07);
setEffScaleKey(SP_start+240, kamehame_beam, 1.8, 1.8);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setDisp( SP_start+ 300, 0, 0);
setMoveKey( SP_start+  300,    0,   -250,  30,   50);--110
setMoveKey( SP_start+  305,    0,   -350,  60,   80);--140
setEffMoveKey( SP_start+  305, kamehame_beam, -85, 0);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, 190);
setShakeChara( SP_start+305, 0, 54, 50);
setEffScaleKey(SP_start+260, sen2, 1.3, 1.3);
setEffAlphaKey( SP_start+260, sen2, 255);


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
entryFade( SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  0,   0);
setMoveKey( SP_start+  370,    1,  235,  0,   0);
setMoveKey( SP_start+  371,    1,  235,  0,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   120,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

playSe( SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1.5, 1.5);
setEffScaleKey( SP_start+452, kamehame_beam2, 1.5, 1.5);
--setEffScaleKey( SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+ 452, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 455-25, SE_09);
-- 敵吹っ飛ぶモーション

changeAnime( SP_start+ 455-25, 1, 108);
setMoveKey( SP_start+  455-25, 1,  120,    0,  0);
setMoveKey( SP_start+  469-25, 1,  400,    0,  0);
setScaleKey( SP_start+ 455-25, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458-25, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468-25, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 99, 0,10, 10, 10, 180);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, -70);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+430, ct, 255);
setEffAlphaKey( SP_start+450, ct, 0);

entryFade( SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( SP_start+ 459, 1, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 331; --エンドフェイズのフレーム数を置き換える

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

spep_5 = 469;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ spep_5, 1, 1);
setMoveKey( SP_start+  spep_5,    1,  120,    0,  128);
setScaleKey( SP_start+ spep_5,    1,  1.0, 1.0);
setMoveKey( SP_start+  spep_5+1,    1,    0,   0,   128);
setScaleKey( SP_start+ spep_5+1,    1,  0.1, 0.1);

changeAnime( SP_start+ spep_5+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ spep_5+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ spep_5+1, SE_10);

setMoveKey( SP_start+  spep_5+8,    1,    0,   0,   128);
setMoveKey( SP_start+  spep_5+15,   1,  -60,  -200,  -100);
setShake( SP_start+spep_5+10,6,15);
setShake( SP_start+spep_5+17,15,9);

setRotateKey( SP_start+ spep_5,  1,  30 );
setRotateKey( SP_start+ spep_5+2,  1,  80 );
setRotateKey( SP_start+ spep_5+4,  1, 120 );
setRotateKey( SP_start+ spep_5+6,  1, 160 );
setRotateKey( SP_start+ spep_5+8,  1, 200 );
setRotateKey( SP_start+ spep_5+10,  1, 260 );
setRotateKey( SP_start+ spep_5+12,  1, 320 );
setRotateKey( SP_start+ spep_5+14,  1,   0 );

setShakeChara( SP_start+ spep_5+14, 1, 5,  10);
setShakeChara( SP_start+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ spep_5+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ spep_5+15, ct, 30, 10);
setEffRotateKey( SP_start+ spep_5+15, ct, -40);
setEffScaleKey( SP_start+ spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ spep_5+15, ct, 255);
setEffAlphaKey( SP_start+ spep_5+105, ct, 255);
setEffAlphaKey( SP_start+ spep_5+115, ct, 0);

playSe( SP_start+ spep_5+3, SE_11);
shuchusen = entryEffectLife( SP_start+ spep_5, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+spep_5+15);

entryFade( SP_start+ spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+spep_5+120);

end
