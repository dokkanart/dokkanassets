print ("[lua]sp1140");

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

SP_01 = 150922;
SP_02 = 150923;
SP_03 = 150924;
SP_04 = 150925;
SP_104 = 150957;--


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);
setAnimeLoop( 0, 0, 1);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   0,   1,    3000, -54,   0);
setMoveKey(   1,   1,    3000, -54,   0);
setScaleKey(   0,   0, 1.7, 1.7);
setScaleKey(   1,   0, 1.7, 1.7);
setScaleKey(   0,   1, 1.7, 1.7);
setScaleKey(   1,   1, 1.7, 1.7);

setVisibleUI(0, 0);


------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 17);                       -- 溜め!
playSe( 3, SE_03);
setShakeChara(0, 0, 100, 5);
entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 10, SE_04);




-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( 19, 190006, 71, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( 19, gogogo, 0.6, 0.6);
setEffAlphaKey( 19, gogogo, 255);
setEffRotateKey( 19, gogogo, 0);


spep_1 = 100;
entryFade( spep_1-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 0, 30, 0, 255); -- ベース暗め　背景
setScaleKey(  spep_1,   0, 1.7, 1.7);
setMoveKey(   spep_1,   0,    0, -54,   0);
setDisp( spep_1, 0, 0);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+0;

------------------------------------------------------
-- 突進(50F)
------------------------------------------------------
-- ** 奥行き流線斜め ** --
okuyuki2 = entryEffectLife( spep_2, 921, 50, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2, okuyuki2, 0, 0, 0);
setEffRotateKey( spep_2, okuyuki2, 90);
setEffScaleKey( spep_2, okuyuki2, 1.6, 1.6);
setEffAlphaKey( spep_2, okuyuki2, 255);

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_2, SP_01, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_2, tosshin, 0, 0, 0);
setEffScaleKey( spep_2, tosshin, 1.0, 1.0);
setEffAlphaKey( spep_2, tosshin, 255);
setEffRotateKey( spep_2, tosshin, 0);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 50, 0x100,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 100, 0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);
-- ** 音 ** --
playSe( spep_2+10, 1018);

-- ** 次の準備 ** --
spep_3 = spep_2+50;
entryFade( spep_3-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 40, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- 振り下ろし(40F)
------------------------------------------------------
-- ** ぶっ飛ばし流線 ** --
buttobashi3 = entryEffectLife( spep_3, 924, 40, 0x80,  -1, 0,  0,  -200);   -- 集中線
setEffScaleKey( spep_3, buttobashi3, 1.5, 1.5);
setEffAlphaKey( spep_3, buttobashi3, 255);
setEffRotateKey( spep_3, buttobashi3, -90);

-- ** エフェクト等 ** --
oroshi = entryEffect( spep_3, SP_02, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_3, oroshi, 0, 0, 0);
setEffScaleKey( spep_3, oroshi, 1.0, 1.0);
setEffAlphaKey( spep_3, oroshi, 255);
setEffRotateKey( spep_3, oroshi, 0);

-- ** 音 ** --
playSe( spep_3+10, 43);

-- ** 次の準備 ** --
spep_4 = spep_3+40;
entryFade( spep_4-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 90, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- カットイン(90F)
------------------------------------------------------


speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);


-- ** 音 ** --
playSe( spep_4, SE_04);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 290; --エンドフェイズのフレーム数を置き換える
setMoveKey(   SP_dodge,   1,    100, -200,   0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+9,   1,    100, -200,   0);
setMoveKey(   SP_dodge+9,   0,    -3000, -200,   0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避外
------------------------------------------------------


-- ** 次の準備 ** --
spep_5 = spep_4+90;
entryFade( spep_5-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 40, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 斬(40F)
------------------------------------------------------
-- ** エフェクト等 ** --
zan = entryEffect( spep_5, SP_03, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_5, zan, 0, 0, 0);
setEffScaleKey( spep_5, zan, 1.0, 1.0);
setEffAlphaKey( spep_5, zan, 255);
setEffRotateKey( spep_5, zan, 0);

-- 書き文字エントリー
ctzan = entryEffectLife(spep_5+10, 10010, 25, 0, -1, 0, 100, 200); -- ザンッ
setEffShake(spep_5+11, ctzan, 49, 5);
setEffAlphaKey(spep_5+10, ctzan, 255);
setEffAlphaKey(spep_5+34, ctzan, 255);
setEffAlphaKey(spep_5+35, ctzan, 0);
setEffScaleKey(spep_5+10, ctzan, 1.8, 1.8);
setEffScaleKey(spep_5+35, ctzan, 1.8, 1.8);
setEffRotateKey(spep_5+10, ctzan,30);--角度
setEffRotateKey(spep_5+35, ctzan,30);--角度


-- ** 音 ** --
playSe( spep_5+10, 1032);


-- ** 次の準備 ** --
spep_6 = spep_5+40;
entryFade( spep_6-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 50, 0, 0, 0, 0, 180); -- ベース暗め　背景

setDisp( spep_6, 1, 1);
changeAnime(spep_6, 1, 107);                       -- 溜め!
setMoveKey(   spep_6,   1,    3000, -54,   0);
setMoveKey(   spep_6+1,   1,    100, -200,   0);
setScaleKey(   spep_6,   1, 1.7, 1.7);
setScaleKey(   spep_6+1,   1, 1.0, 1.0);

------------------------------------------------------
-- zan2 (110F)
------------------------------------------------------
-- ** 奥行き流線斜め ** --
okuyuki6 = entryEffectLife( spep_6, 921, 50, 0x80, -1, 0, 0, -50); -- 奥行き流線斜め
setEffMoveKey( spep_6, okuyuki6, 0, 50, 0);
setEffRotateKey( spep_6, okuyuki6, 220);
setEffScaleKey( spep_6, okuyuki6, 1.7, 1.7);
setEffAlphaKey( spep_6, okuyuki6, 255);

-- ** エフェクト等 ** --
zan2 = entryEffect( spep_6, SP_04, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_6, zan2, 0, 0, 0);
setEffScaleKey( spep_6, zan2, 1.0, 1.0);
setEffAlphaKey( spep_6, zan2, 255);
setEffRotateKey( spep_6, zan2, 0);


setMoveKey(   spep_6+48,   1,    200, -300,   0);
setScaleKey(   spep_6+48,   1, 1.6, 1.6);

-- ** 音 ** --
playSe( spep_6+10, 1026);


-- ** 次の準備 ** --
spep_7 = spep_6+50;
entryFade( spep_7-6, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_7, 0, 62, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- last (110F)
------------------------------------------------------


-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);


else

-----------------------------------------
--敵側の攻撃
-----------------------------------------



------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
changeAnime( 0, 0, 17);                       -- 溜め!
playSe( 3, SE_03);
setShakeChara(0, 0, 100, 5);
entryEffect(  0,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  0,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( 10, SE_04);




-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( 19, 190006, 71, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffScaleKey( 19, gogogo, -0.6, 0.6);
setEffAlphaKey( 19, gogogo, 255);
setEffRotateKey( 19, gogogo, 0);


spep_1 = 100;
entryFade( spep_1-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 0, 30, 0, 255); -- ベース暗め　背景
setScaleKey(  spep_1,   0, 1.7, 1.7);
setMoveKey(   spep_1,   0,    0, -54,   0);
setDisp( spep_1, 0, 0);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1+0;

------------------------------------------------------
-- 突進(50F)
------------------------------------------------------
-- ** 奥行き流線斜め ** --
okuyuki2 = entryEffectLife( spep_2, 921, 50, 0x80, -1, 0, 0, 0); -- 奥行き流線斜め
setEffMoveKey( spep_2, okuyuki2, 0, 0, 0);
setEffRotateKey( spep_2, okuyuki2, 90);
setEffScaleKey( spep_2, okuyuki2, 1.6, 1.6);
setEffAlphaKey( spep_2, okuyuki2, 255);

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_2, SP_01, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_2, tosshin, 0, 0, 0);
setEffScaleKey( spep_2, tosshin, -1.0, 1.0);
setEffAlphaKey( spep_2, tosshin, 255);
setEffRotateKey( spep_2, tosshin, 0);


-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 50, 0x100,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_2, shuchusen2, 0, 100, 0);
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);
-- ** 音 ** --
playSe( spep_2+10, 1018);

-- ** 次の準備 ** --
spep_3 = spep_2+50;
entryFade( spep_3-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 40, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- 振り下ろし(40F)
------------------------------------------------------
-- ** ぶっ飛ばし流線 ** --
buttobashi3 = entryEffectLife( spep_3, 924, 40, 0x80,  -1, 0,  0,  -200);   -- 集中線
setEffScaleKey( spep_3, buttobashi3, 1.5, 1.5);
setEffAlphaKey( spep_3, buttobashi3, 255);
setEffRotateKey( spep_3, buttobashi3, -90);

-- ** エフェクト等 ** --
oroshi = entryEffect( spep_3, SP_02, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_3, oroshi, 0, 0, 0);
setEffScaleKey( spep_3, oroshi, -1.0, 1.0);
setEffAlphaKey( spep_3, oroshi, 255);
setEffRotateKey( spep_3, oroshi, 0);

-- ** 音 ** --
playSe( spep_3+10, 43);

-- ** 次の準備 ** --
spep_4 = spep_3+40;
entryFade( spep_4-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 90, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- カットイン(90F)
------------------------------------------------------


speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_4, shuchusen4, 0, 0, 0);
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);


-- ** 音 ** --
playSe( spep_4, SE_04);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 290; --エンドフェイズのフレーム数を置き換える
setMoveKey(   SP_dodge,   1,    100, -200,   0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+9,   1,    100, -200,   0);
setMoveKey(   SP_dodge+9,   0,    -3000, -200,   0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避外
------------------------------------------------------


-- ** 次の準備 ** --
spep_5 = spep_4+90;
entryFade( spep_5-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 40, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 斬(40F)
------------------------------------------------------
-- ** エフェクト等 ** --
zan = entryEffect( spep_5, SP_03, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_5, zan, 0, 0, 0);
setEffScaleKey( spep_5, zan, 1.0, 1.0);
setEffAlphaKey( spep_5, zan, 255);
setEffRotateKey( spep_5, zan, 0);

-- 書き文字エントリー
ctzan = entryEffectLife(spep_5+10, 10010, 25, 0, -1, 0, 100, 200); -- ザンッ
setEffShake(spep_5+11, ctzan, 49, 5);
setEffAlphaKey(spep_5+10, ctzan, 255);
setEffAlphaKey(spep_5+34, ctzan, 255);
setEffAlphaKey(spep_5+35, ctzan, 0);
setEffScaleKey(spep_5+10, ctzan, 1.8, 1.8);
setEffScaleKey(spep_5+35, ctzan, 1.8, 1.8);
setEffRotateKey(spep_5+10, ctzan,30);--角度
setEffRotateKey(spep_5+35, ctzan,30);--角度


-- ** 音 ** --
playSe( spep_5+10, 1032);


-- ** 次の準備 ** --
spep_6 = spep_5+40;
entryFade( spep_6-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 50, 0, 0, 0, 0, 180); -- ベース暗め　背景

setDisp( spep_6, 1, 1);
changeAnime(spep_6, 1, 107);                       -- 溜め!
setMoveKey(   spep_6,   1,    3000, -54,   0);
setMoveKey(   spep_6+1,   1,    100, -200,   0);
setScaleKey(   spep_6,   1, 1.7, 1.7);
setScaleKey(   spep_6+1,   1, 1.0, 1.0);

------------------------------------------------------
-- zan2 (110F)
------------------------------------------------------
-- ** 奥行き流線斜め ** --
okuyuki6 = entryEffectLife( spep_6, 921, 50, 0x80, -1, 0, 0, -50); -- 奥行き流線斜め
setEffMoveKey( spep_6, okuyuki6, 0, 50, 0);
setEffRotateKey( spep_6, okuyuki6, 220);
setEffScaleKey( spep_6, okuyuki6, 1.7, 1.7);
setEffAlphaKey( spep_6, okuyuki6, 255);

-- ** エフェクト等 ** --
zan2 = entryEffect( spep_6, SP_104, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_6, zan2, 0, 0, 0);
setEffScaleKey( spep_6, zan2, 1.0, 1.0);
setEffAlphaKey( spep_6, zan2, 255);
setEffRotateKey( spep_6, zan2, 0);


setMoveKey(   spep_6+48,   1,    200, -300,   0);
setScaleKey(   spep_6+48,   1, 1.6, 1.6);

-- ** 音 ** --
playSe( spep_6+10, 1026);


-- ** 次の準備 ** --
spep_7 = spep_6+50;
entryFade( spep_7-6, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_7, 0, 62, 0, 0, 0, 0, 180); -- ベース暗め　背景

------------------------------------------------------
-- last (110F)
------------------------------------------------------


-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);
setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);



end
