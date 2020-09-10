--sp0319 100580　ヘルファイター17号　ヘルブレイカー
--ラスト演出の差し替え

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

SP_01 = 102189;
SP_02 = 102190;
--SP_03 = 100002

multi_frm = 2;

changeAnime(  0, 0, 17);-- 溜め!
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 7.0, 7.0);
setScaleKey(   1,   0, 7.0, 7.0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);

changeAnime(  25, 0, 30); 

setShakeChara( 25, 0, 150, 8);

setScaleKey(  25,  0, 2.0, 2.0);
setScaleKey(  150,  0, 2.0, 2.0);

--setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   25,   0,    0, -54,   0);
setMoveKey(  150,   0,   -70, 0,   0);

speff = entryEffect(  60,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  60,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** エフェクト等 ** --

playSe( 0, SE_04);

playSe( 30, SE_03);

playSe( 60, SE_04);

--playSe( 90, SE_03);
playSe( 110, SE_03);
--playSe( 140, SE_03);

entryFadeBg( 0, 0, 150, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( 0, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.3, 1.3);

kame_hand = entryEffect( 25, SP_01, 0x40,  0,  300,  30,  -35);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);
setEffMoveKey(100,kame_hand,35,-45)
setEffMoveKey(130,kame_hand,40,-50)
setEffMoveKey(140,kame_hand,45,-55)

entryFade( 23, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 143, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( 70, 10008, 80, 0x100, -1, 0, 190, 230);    -- ゴゴゴ・・・
setEffShake(70, ct, 80, 8);
setEffScaleKey(70, ct, 1.4, 1.4);

spep_1 =150;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 1.5, 1.5);--169
setScaleKey( spep_1+1,  0, 1.0, 1.0);

playSe( spep_1+1, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+86, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_1+65, SE_06);

spep_2 =spep_1+90;

------------------------------------------------------
--ヘルブレイカー発射
------------------------------------------------------

changeAnime(  spep_2, 0, 31); 

setShakeChara( spep_2, 0, 230, 8);

setMoveKey(  spep_2,  0,  -70, 0,   0);
setMoveKey(  spep_2+50,  0,  -70, 0,   0);
setMoveKey(  spep_2+80,  0,  -800, 800,   0);
setMoveKey(  spep_2+230,  0,  -800, 800,   0);

setScaleKey( spep_2,  0, 0.8, 0.8);
setScaleKey( spep_2+50,  0, 1.0, 1.0);
setScaleKey( spep_2+80,  0, 0.5, 0.5);
setScaleKey( spep_2+230,  0, 0.5, 0.5);

playSe( spep_2, SE_03);
playSe( spep_2+50, SE_06);

sen2 = entryEffectLife( spep_2, 921, 230, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_2, sen2, 230);
setEffScaleKey( spep_2, sen2, 1.7, 1.7);

shuchusen = entryEffectLife( spep_2, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);

kame_beam = entryEffect( spep_2, SP_02, 0x00,  -1,  0,  0,  -50);   -- 手のカメハメ波部

entryFadeBg( spep_2, 0, 230, 0, 10, 10, 10, 180);       -- ベース暗め　背景


-- 書き文字エントリー

ct = entryEffectLife( spep_2+50, 10012, 90, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_2+50, ct, 170, 5);
setEffAlphaKey( spep_2+50, ct, 255);
setEffAlphaKey( spep_2+130, ct, 255);--290
setEffAlphaKey( spep_2+140, ct, 0);--300
setEffScaleKey( spep_2+50, ct, 0.0, 0.0);
setEffScaleKey( spep_2+72, ct, 2.3, 2.3);
setEffScaleKey( spep_2+130, ct, 2.3, 2.3);
setEffScaleKey( spep_2+140, ct, 6.0, 6.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 390; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_2+130, SE_07);

entryFade( spep_2+225, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+230;

------------------------------------------------------
-- ギャン
------------------------------------------------------

setDisp( spep_3, 0, 0);

entryEffect( spep_3, 190001,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_3+15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( spep_3+5, ct, 99, 20);
setEffScaleKey( spep_3+5, ct, 0.1, 0.1);
setEffScaleKey( spep_3+30, ct, 2.4, 2.4);
setEffScaleKey( spep_3+57, ct, 2.8, 2.8);
setEffAlphaKey( spep_3+5, ct, 255);
setEffAlphaKey( spep_3+30, ct, 255);
setEffAlphaKey( spep_3+47, ct, 0);

playSe( spep_3+8, 1024);

entryFade( spep_3+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_3+47, 1, 0);

removeAllEffect( spep_3+49);

spep_4 = spep_3+51; --410 469

------------------------------------------------------
-- 最後のふっとばし演出(110F)　
------------------------------------------------------
setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+110);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);

changeAnime(  25, 0, 30); 

setShakeChara( 25, 0, 150, 8);

setScaleKey(  25,  0, 2.0, 2.0);
setScaleKey(  150,  0, 2.0, 2.0);

--setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   25,   0,    0, -54,   0);
setMoveKey(  150,   0,   -70, 0,   0);

--[[
speff = entryEffect(  60,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  60,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

-- ** エフェクト等 ** --

playSe( 0, SE_04);

playSe( 30, SE_03);

playSe( 60, SE_04);

--playSe( 90, SE_03);
playSe( 110, SE_03);
--playSe( 140, SE_03);

entryFadeBg( 0, 0, 150, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen = entryEffectLife( 0, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.3, 1.3);

kame_hand = entryEffect( 25, SP_01, 0x40,  0,  300,  30,  -35);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);
setEffMoveKey(100,kame_hand,35,-45)
setEffMoveKey(130,kame_hand,40,-50)
setEffMoveKey(140,kame_hand,45,-55)

entryFade( 23, 1, 2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 143, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ct = entryEffectLife( 70, 10008, 80, 0x100, -1, 0, 190, 230);    -- ゴゴゴ・・・
setEffShake(70, ct, 80, 8);
setEffScaleKey(70, ct, 1.4, 1.4);

spep_1 =150;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 1.5, 1.5);--169
setScaleKey( spep_1+1,  0, 1.0, 1.0);

playSe( spep_1+1, SE_05);
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+86, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_1+65, SE_06);

spep_2 =spep_1+90;

------------------------------------------------------
--ヘルブレイカー発射
------------------------------------------------------

changeAnime(  spep_2, 0, 31); 

setShakeChara( spep_2, 0, 230, 8);

setMoveKey(  spep_2,  0,  -70, 0,   0);
setMoveKey(  spep_2+50,  0,  -70, 0,   0);
setMoveKey(  spep_2+80,  0,  -800, 800,   0);
setMoveKey(  spep_2+230,  0,  -800, 800,   0);

setScaleKey( spep_2,  0, 0.8, 0.8);
setScaleKey( spep_2+50,  0, 1.0, 1.0);
setScaleKey( spep_2+80,  0, 0.5, 0.5);
setScaleKey( spep_2+230,  0, 0.5, 0.5);

playSe( spep_2, SE_03);
playSe( spep_2+50, SE_06);

sen2 = entryEffectLife( spep_2, 921, 230, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_2, sen2, 230);
setEffScaleKey( spep_2, sen2, 1.7, 1.7);

shuchusen = entryEffectLife( spep_2, 906, 150, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.3, 1.3);

kame_beam = entryEffect( spep_2, SP_02, 0x00,  -1,  0,  0,  -50);   -- 手のカメハメ波部

entryFadeBg( spep_2, 0, 230, 0, 10, 10, 10, 180);       -- ベース暗め　背景


-- 書き文字エントリー

ct = entryEffectLife( spep_2+50, 10012, 90, 0, -1, 0, 100, 300); -- ズオッ
setEffShake( spep_2+50, ct, 170, 5);
setEffAlphaKey( spep_2+50, ct, 255);
setEffAlphaKey( spep_2+130, ct, 255);--290
setEffAlphaKey( spep_2+140, ct, 0);--300
setEffScaleKey( spep_2+50, ct, 0.0, 0.0);
setEffScaleKey( spep_2+72, ct, 2.3, 2.3);
setEffScaleKey( spep_2+130, ct, 2.3, 2.3);
setEffScaleKey( spep_2+140, ct, 6.0, 6.0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 390; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_2+130, SE_07);

entryFade( spep_2+225, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+230;

------------------------------------------------------
-- ギャン
------------------------------------------------------

setDisp( spep_3, 0, 0);

entryEffect( spep_3, 190001,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_3+15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( spep_3+5, ct, 99, 20);
setEffScaleKey( spep_3+5, ct, 0.1, 0.1);
setEffScaleKey( spep_3+30, ct, 2.4, 2.4);
setEffScaleKey( spep_3+57, ct, 2.8, 2.8);
setEffAlphaKey( spep_3+5, ct, 255);
setEffAlphaKey( spep_3+30, ct, 255);
setEffAlphaKey( spep_3+47, ct, 0);

playSe( spep_3+8, 1024);

entryFade( spep_3+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_3+47, 1, 0);

removeAllEffect( spep_3+49);

spep_4 = spep_3+51; --410 469

------------------------------------------------------
-- 最後のふっとばし演出(110F)　
------------------------------------------------------
setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( spep_4+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線


-- ダメージ表示
dealDamage(spep_4+16);
entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( spep_4+110);

end
