

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

SP_01 = 102109;
SP_02 = 102111;
SP_03 = 102113;

SP_01e = 102110;
SP_02e = 102112;
SP_03e = 102114;


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

setVisibleUI(0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

entryFadeBg( 0, 0, 200, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--気を貯める

bils = entryEffectLife( 0, SP_01, 69, 0x100, -1, 0, 0, 0); -- ズズンッ

playSe( 20, 1037);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 100, 400); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

shuchusen = entryEffectLife( 0, 906, 69, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.0, 1.0);

entryFade( 65, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------


changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, 1034);

kame_hand = entryEffect( 70, SP_02, 0x40+0x100,      0,  -1,  0,  100);   -- 手のカメハメ波部

SP_start = 25;

playSe( SP_start+ 90, SE_04);

shuchusen = entryEffectLife( SP_start+ 80, 906, 110, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffAlphaKey( SP_start+ 80, shuchusen,0);
setEffAlphaKey( SP_start+ 89, shuchusen,0);
setEffAlphaKey( SP_start+ 90, shuchusen,255);
setEffScaleKey( SP_start+ 90, shuchusen, 1.0, 1.0);

speff = entryEffect(  SP_start+ 80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  SP_start+ 80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

--entryEffect( SP_start+  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect( SP_start+  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
setEffScaleKey( SP_start+ 170, speff, 1.0, 1.0);

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
setEffScaleKey( SP_start+ 170, speff, 1.0, 1.0);
end

entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+257);

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
kamehame_beam = entryEffectLife( SP_start+ 257, SP_03, 149, 0x40+0x100, -1, 0, 200, 550);    -- ゴゴゴ・・・

playSe( SP_start+ 270, 1010);
setShake( SP_start+ 270,10,25);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 257, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+ 257, 921, 149, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+257, sen2, 30);
setEffScaleKey( SP_start+ 257, sen2, 1.6, 1.6);

setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 257, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 257, shuchusen, 1.0, 1.0);
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

SP_start2 = -55;

setEffMoveKey( SP_start2+ SP_start+ 350, kamehame_beam, 200, 550);
setEffMoveKey( SP_start2+ SP_start+ 370, kamehame_beam, 350, 580);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( SP_start2+ SP_start+ 370, 1, 1);
changeAnime( SP_start2+ SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start2+ SP_start+  369,    1,  435,  0,   0);
setMoveKey( SP_start2+ SP_start+  370,    1,  435,  0,   0);
setMoveKey( SP_start2+ SP_start+  371,    1,  435,  0,   0);
setScaleKey( SP_start2+ SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start2+ SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start2+ SP_start+  400,    1,   0,  0,   0);
setScaleKey( SP_start2+ SP_start+  400,   1,   1.6,  1.6);

setDisp( SP_start2+ SP_start+ 370, 0, 0);

playSe( SP_start2+ SP_start+ 390, SE_06);

playSe( 376, 1024);
playSe( 386, 1024);
playSe( 396, 1024);
playSe( 406, 1024);



setDamage( SP_start2+ SP_start+ 452, 1, 0);  -- ダメージ振動等


playSe( SP_start2+ SP_start+ 455, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ SP_start+ 370, 1, 99, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ SP_start+ 370, 10014, 99, 0, -1, 0, 220, 305); -- ズドドッ
setEffShake( SP_start2+ SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+ SP_start+370, ct, 70);
setEffAlphaKey( SP_start2+ SP_start+370, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+430, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+450, ct, 0);

entryFade( SP_start2+ SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 361; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------
spep_5 =SP_start2+SP_start+469;

setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setDisp( spep_5, 1, 1);

entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( SP_start2+spep_5+7,6,15);
setShake( SP_start2+spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_5+16);


--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade


endPhase( spep_5+102);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
entryFadeBg( 0, 0, 200, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--気を貯める

bils = entryEffectLife( 0, SP_01e, 69, 0x100, -1, 0, 0, 0); -- ズズンッ

playSe( 20, 1037);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 100, 400); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

shuchusen = entryEffectLife( 0, 906, 69, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.0, 1.0);

entryFade( 65, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

--setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, 1034);

kame_hand = entryEffect( 70, SP_02e, 0x40+0x100,      0,  -1,  0,  100);   -- 手のカメハメ波部

SP_start = 25;

playSe( SP_start+ 90, SE_04);

shuchusen = entryEffectLife( SP_start+ 80, 906, 110, 0x00,  -1, 0,  0,  0);   -- 集中線

setEffAlphaKey( SP_start+ 80, shuchusen,0);
setEffAlphaKey( SP_start+ 89, shuchusen,0);
setEffAlphaKey( SP_start+ 90, shuchusen,255);
setEffScaleKey( SP_start+ 90, shuchusen, 1.0, 1.0);

--[[
speff = entryEffect(  SP_start+ 80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  SP_start+ 80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

--entryEffect( SP_start+  160,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect( SP_start+  160,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
setEffScaleKey( SP_start+ 170, speff, 1.0, 1.0);

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
setEffScaleKey( SP_start+ 170, speff, 1.0, 1.0);
end

entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+257);

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
kamehame_beam = entryEffectLife( SP_start+ 257, SP_03e, 149, 0x40+0x100, -1, 0, -450, 550);    -- ゴゴゴ・・・

playSe( SP_start+ 270, 1010);
setShake( SP_start+ 270,10,25);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 257, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+ 257, 921, 149, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+257, sen2, 30);
setEffScaleKey( SP_start+ 257, sen2, 1.6, 1.6);

setShakeChara( SP_start+ 305, 0, 54, 50);

shuchusen = entryEffectLife( SP_start+ 257, 906, 52, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 257, shuchusen, 1.0, 1.0);
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

SP_start2 = -55;

setEffMoveKey( SP_start2+ SP_start+ 350, kamehame_beam, -450, 550);
setEffMoveKey( SP_start2+ SP_start+ 370, kamehame_beam, -350, 580);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( SP_start2+ SP_start+ 370, 1, 1);
changeAnime( SP_start2+ SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start2+ SP_start+  369,    1,  435,  0,   0);
setMoveKey( SP_start2+ SP_start+  370,    1,  435,  0,   0);
setMoveKey( SP_start2+ SP_start+  371,    1,  435,  0,   0);
setScaleKey( SP_start2+ SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start2+ SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start2+ SP_start+  400,    1,   0,  0,   0);
setScaleKey( SP_start2+ SP_start+  400,   1,   1.6,  1.6);

setDisp( SP_start2+ SP_start+ 370, 0, 0);

playSe( SP_start2+ SP_start+ 390, SE_06);

playSe( 376, 1024);
playSe( 386, 1024);
playSe( 396, 1024);
playSe( 406, 1024);



setDamage( SP_start2+ SP_start+ 452, 1, 0);  -- ダメージ振動等


playSe( SP_start2+ SP_start+ 455, SE_09);

-- ** エフェクト等 ** --
setShakeChara( SP_start2+ SP_start+ 370, 1, 99, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start2+ SP_start+ 370, 10014, 99, 0, -1, 0, 140, 375); -- ズドドッ
setEffShake( SP_start2+ SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start2+ SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start2+ SP_start+370, ct, 0);
setEffAlphaKey( SP_start2+ SP_start+370, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+430, ct, 255);
setEffAlphaKey( SP_start2+ SP_start+450, ct, 0);

entryFade( SP_start2+ SP_start+ 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 361; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------
spep_5 =SP_start2+SP_start+469;

setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setDisp( spep_5, 1, 1);

entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( SP_start2+spep_5+7,6,15);
setShake( SP_start2+spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_5+16);


--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade


endPhase( spep_5+100);
end
