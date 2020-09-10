

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

SP_01  = 104020; --ギニュー溜め
SP_02  = 104021; --ギニュー発射
SP_03  = 190001; --ギャン

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
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

entryFade( 60, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 35, 0x40,  0,  1,  0,  -30); -- オーラ
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

spep_1 = 65;

------------------------------------------------------
--ミルキーキャノン溜め
------------------------------------------------------

setVisibleUI(spep_1, 0);

setDisp( spep_1, 1, 0);
setDisp( spep_1, 0, 0);

shuchusen = entryEffectLife( spep_1, 906, 95, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.5, 1.5);--260

entryEffect( spep_1, SP_01 , 0x00, -1,  0,  0,  0);   -- ギニュー溜め

speff = entryEffect( spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_1, SE_04);
playSe( spep_1+20, SE_03);
playSe( spep_1+40, SE_03);
playSe( spep_1+60, SE_03);
playSe( spep_1+80, SE_03);

-- 書き文字エントリー

ct = entryEffectLife( spep_1, 10008, 90, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_1, ct, 90, 8);
setEffScaleKey( spep_1, ct, 1.4, 1.4);

entryFadeBg( spep_1, 0, 95, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_1+90, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+95;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_2,   0, 1.5, 1.5);
setScaleKey( spep_2+1,   0, 1.0, 1.0);

playSe( spep_2+1, SE_05);
speff = entryEffect(  spep_2+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_2+1+64, SE_06);

spep_3 = spep_2+90;--262

------------------------------------------------------
--ミルキーキャノン発射
------------------------------------------------------

playSe( spep_3, SE_07);

entryEffect( spep_3, SP_02 , 0x00, -1,  0,  0,  0);   -- ギニュー発射

shuchusen = entryEffectLife( spep_3, 906, 80, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.5, 1.5);--260

ct = entryEffectLife( spep_3, 10012, 62, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3, ct, 62, 5);
setEffAlphaKey( spep_3, ct, 255);
setEffAlphaKey( spep_3+52, ct, 255);--290
setEffAlphaKey( spep_3+62, ct, 0);--300
setEffScaleKey( spep_3, ct, 0.0, 0.0);
setEffScaleKey( spep_3+12, ct, 2.3, 2.3);
setEffScaleKey( spep_3+52, ct, 2.3, 2.3);
setEffScaleKey( spep_3+62, ct, 6.0, 6.0);

entryFadeBg( spep_3, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 315; --エンドフェイズのフレーム数を置き換える

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

entryFade( spep_3+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+80;

------------------------------------------------------
-- ギャン
------------------------------------------------------

entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( spep_4+5, ct, 99, 20);
setEffScaleKey( spep_4+5, ct, 0.1, 0.1);
setEffScaleKey( spep_4+30, ct, 2.4, 2.4);
setEffScaleKey( spep_4+57, ct, 2.8, 2.8);
setEffAlphaKey( spep_4+5, ct, 255);
setEffAlphaKey( spep_4+30, ct, 255);
setEffAlphaKey( spep_4+47, ct, 0);

playSe( spep_4+8, 1024);

entryFade( spep_4+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+47, 1, 0);

removeAllEffect( spep_4+49);

spep_5 = spep_4+50; --410 469

-----------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ
setAnimeLoop( spep_5+1, 1, 1);
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_5+8,6,15);
setShake(spep_5+14,15,10);

setRotateKey( spep_5+1,  1,  30 );
setRotateKey( spep_5+3,  1,  80 );
setRotateKey( spep_5+5,  1, 120 );
setRotateKey( spep_5+7,  1, 160 );
setRotateKey( spep_5+9,  1, 200 );
setRotateKey( spep_5+11,  1, 260 );
setRotateKey( spep_5+13,  1, 320 );
setRotateKey( spep_5+15,  1,   0 );

setShakeChara( spep_5+16, 1, 5,  10);
setShakeChara( spep_5+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+16, ct, 30, 10);
setEffRotateKey( spep_5+16, ct, -40);
setEffScaleKey( spep_5+16, ct, 4.0, 4.0);
setEffScaleKey( spep_5+17, ct, 2.0, 2.0);
setEffScaleKey( spep_5+18, ct, 2.6, 2.6);
setEffScaleKey( spep_5+19, ct, 4.0, 4.0);
setEffScaleKey( spep_5+20, ct, 2.6, 2.6);
setEffScaleKey( spep_5+21, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+16, ct, 255);
setEffAlphaKey( spep_5+106, ct, 255);
setEffAlphaKey( spep_5+116, ct, 0);

playSe( spep_5+15, SE_11);
setSeVolume(spep_5+15, SE_11,90);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

entryFade( 60, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 35, 0x40,  0,  1,  0,  -30); -- オーラ
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

spep_1 = 65;

------------------------------------------------------
--ミルキーキャノン溜め
------------------------------------------------------

setVisibleUI(spep_1, 0);

setDisp( spep_1, 1, 0);
setDisp( spep_1, 0, 0);

shuchusen = entryEffectLife( spep_1, 906, 170, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.5, 1.5);--260

ginyu_01 = entryEffect( spep_1, SP_01, 0x00, -1,  0,  0,  0);   -- ギニュー溜め
setEffScaleKey( spep_1, ginyu_01, -1.0, 1.0);

--[[
speff = entryEffect( spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_1, SE_04);
playSe( spep_1+20, SE_03);
playSe( spep_1+40, SE_03);
playSe( spep_1+60, SE_03);
playSe( spep_1+80, SE_03);

-- 書き文字エントリー

ct = entryEffectLife( spep_1, 10008, 90, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_1, ct, 90, 8);
setEffScaleKey( spep_1, ct, 1.4, 1.4);

entryFadeBg( spep_1, 0, 95, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep_1+90, 2, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+95;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_2,   0, 1.5, 1.5);
setScaleKey( spep_2+1,   0, 1.0, 1.0);

playSe( spep_2+1, SE_05);
speff = entryEffect(  spep_2+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+85, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_2+1+64, SE_06);

spep_3 = spep_2+90;--262

------------------------------------------------------
--ミルキーキャノン発射
------------------------------------------------------

playSe( spep_3, SE_07);

ginyu_02 = entryEffect( spep_3, SP_02, 0x00, -1,  0,  0,  0);   -- ギニュー発射
setEffScaleKey( spep_3, ginyu_02, -1.0, 1.0);

shuchusen = entryEffectLife( spep_3, 906, 80, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.5, 1.5);--260

ct = entryEffectLife( spep_3, 10012, 62, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( spep_3, ct, 62, 5);
setEffAlphaKey( spep_3, ct, 255);
setEffAlphaKey( spep_3+52, ct, 255);--290
setEffAlphaKey( spep_3+62, ct, 0);--300
setEffScaleKey( spep_3, ct, 0.0, 0.0);
setEffScaleKey( spep_3+12, ct, 2.3, 2.3);
setEffScaleKey( spep_3+52, ct, 2.3, 2.3);
setEffScaleKey( spep_3+62, ct, 6.0, 6.0);

entryFadeBg( spep_3, 0, 80, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 315; --エンドフェイズのフレーム数を置き換える

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

entryFade( spep_3+75, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_4 = spep_3+80;

------------------------------------------------------
-- ギャン
------------------------------------------------------

entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( spep_4+15, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake( spep_4+5, ct, 99, 20);
setEffScaleKey( spep_4+5, ct, 0.1, 0.1);
setEffScaleKey( spep_4+30, ct, 2.4, 2.4);
setEffScaleKey( spep_4+57, ct, 2.8, 2.8);
setEffAlphaKey( spep_4+5, ct, 255);
setEffAlphaKey( spep_4+30, ct, 255);
setEffAlphaKey( spep_4+47, ct, 0);

playSe( spep_4+8, 1024);

entryFade( spep_4+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+47, 1, 0);

removeAllEffect( spep_4+49);

spep_5 = spep_4+50; --410 469

-----------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ
setAnimeLoop( spep_5+1, 1, 1);
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_5+8,6,15);
setShake(spep_5+14,15,10);

setRotateKey( spep_5+1,  1,  30 );
setRotateKey( spep_5+3,  1,  80 );
setRotateKey( spep_5+5,  1, 120 );
setRotateKey( spep_5+7,  1, 160 );
setRotateKey( spep_5+9,  1, 200 );
setRotateKey( spep_5+11,  1, 260 );
setRotateKey( spep_5+13,  1, 320 );
setRotateKey( spep_5+15,  1,   0 );

setShakeChara( spep_5+16, 1, 5,  10);
setShakeChara( spep_5+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+16, ct, 30, 10);
setEffRotateKey( spep_5+16, ct, -40);
setEffScaleKey( spep_5+16, ct, 4.0, 4.0);
setEffScaleKey( spep_5+17, ct, 2.0, 2.0);
setEffScaleKey( spep_5+18, ct, 2.6, 2.6);
setEffScaleKey( spep_5+19, ct, 4.0, 4.0);
setEffScaleKey( spep_5+20, ct, 2.6, 2.6);
setEffScaleKey( spep_5+21, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+16, ct, 255);
setEffAlphaKey( spep_5+106, ct, 255);
setEffAlphaKey( spep_5+116, ct, 0);

playSe( spep_5+15, SE_11);
setSeVolume(spep_5+15, SE_11,90);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);

end
