

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

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

--味方側
SP_01 = 151216;--気溜め１　19f
--SP_02 = 151305;--気溜め２　50f
SP_03 = 151217;--発射　50f
SP_04 = 151218;--迫る〜命中　30f
SP_05 = 151032;--爆発　


--敵側は味方側に1xをつけてます

SP_06 = 151328;--発射敵側　50f

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);
setDisp( 0, 0, 1);
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   23,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setScaleKey(   23,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め１(60F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

-- ** キャラクター ** --
setDisp( spep_0+23, 0, 0);

-- ** 背景 ** --

-- ** エフェクト等 ** --
kidame_1 = entryEffectLife( spep_0+23, SP_01, 37, 0, -1, 0, 0, 0);   --気溜め１　19f
setEffScaleKey( spep_0+23, kidame_1, 1, 1);
setEffAlphaKey( spep_0+23, kidame_1, 255);

entryEffect(  spep_0+23,   1501,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_0+23,   1502,  0,     -1,  0,  0,  0);   -- eff_003 (気)
--entryEffect(  spep_0+23,   1500,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_0+32,   1500,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)


-- ** 集中線 ** --

-- 書き文字エントリー --
ct_01 = entryEffectLife( spep_0+30, 10013, 40, 0, -1, 0, 0, 100); -- ズズズンッ
setEffShake( spep_0+30, ct_01, 40, 20);
setEffAlphaKey( spep_0+30, ct_01, 255);
setEffAlphaKey( spep_0+50, ct_01, 255);
setEffAlphaKey( spep_0+60, ct_01, 0);
setEffScaleKey( spep_0+30, ct_01, 0.1, 0.1);
setEffScaleKey( spep_0+40, ct_01, 3.0, 3.0);
--setEffMoveKey( spep_0+30, ct_01, 50, 0)
setEffMoveKey( spep_0+40, ct_01, 0, 300)

-- ** 音 ** --
playSe( spep_0+23, SE_05);

-- ** 次の準備 ** --
spep_1 = spep_0+60;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 気溜め２(50F)　台詞カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_2 = entryEffect( spep_1, SP_01, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_1, kidame_2, 1, 1);
setEffAlphaKey( spep_1, kidame_2, 255);

entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 集中線 ** --



-- 書き文字エントリー --

ctGogogo = entryEffectLife( spep_1+20, 190006, 90, 0x100, -1, 0, 100, 500); -- ゴゴゴゴゴ
setEffAlphaKey( spep_1+20, ctGogogo, 255);
setEffRotateKey( spep_1+20, ctGogogo, 0);
setEffScaleKey( spep_1+20, ctGogogo, 0.1, 0.1);
setEffScaleKey( spep_1+30, ctGogogo, 0.7, 0.7);
setEffShake( spep_1+3, ctGogogo, 90, 20)


-- ** 音 ** --
playSe( spep_1+11, SE_04);

-- ** 次の準備 ** --
spep_2 = spep_1+100;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- カードカットイン
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** 音 ** --
playSe( spep_2, SE_05);

-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 95, 0, 30, 30, 30, 210); -- ベース暗め　背景

------------------------------------------------------
-- 発射(95F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi = entryEffect( spep_3, SP_03, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_3, hasi, 1, 1);
setEffAlphaKey( spep_3, hasi, 255);
--[[
speff2 = entryEffect( spep_3, 1508, 0x100, -1, 0, 0, 0); -- 必殺技
setEffReplaceTexture( speff2, 7, 4); -- 技名テクスチャ差し替え
setEffAlphaKey( spep_3,speff2,255);
setEffAlphaKey( spep_3+94,speff2,255);
setEffAlphaKey( spep_3+95,speff2,0);   
]]--

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.8, 1.8);
setEffScaleKey( spep_3+40, shuchusen3, 1.0, 1.0);

-- ** 流線(横) ** --
entryEffectLife( spep_3, 920, 95, 0x80,  -1,  0,  0,  0); -- 流線

-- 書き文字エントリー --
ct_02 = entryEffectLife( spep_3+35, 10012, 32, 0, -1, 0, 10, 300); -- ズオッ
setEffShake( spep_3+35, ct_02, 44, 20);
setEffMoveKey( spep_3+40, ct_02, 200, 300)
setEffRotateKey( spep_3+35, ct_02, 25)
setEffAlphaKey( spep_3+35, ct_02, 255);
setEffAlphaKey( spep_3+57, ct_02, 255);
setEffAlphaKey( spep_3+67, ct_02, 0);
setEffScaleKey( spep_3+35, ct_02, 0.0, 0.0);
setEffScaleKey( spep_3+39, ct_02, 3.0, 3.0);
setEffScaleKey( spep_3+59, ct_02, 3.0, 3.0);
setEffScaleKey( spep_3+79, ct_02, 14.0, 14.0);


-- ** 音 ** --
playSe( spep_3+15, SE_06);

-- ** 次の準備 ** --
spep_4 = spep_3+90;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 30, 30, 30, 210); -- ベース暗め　背景


------------------------------------------------------
-- 迫る〜命中(50F)
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  350,  0,   0);
setMoveKey(  spep_4,    1,  350,  0,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.8, 0.8);
setScaleKey( spep_4,    1,  0.8, 0.8);
setRotateKey( spep_4,  1,  0);

--setMoveKey(  spep_4+30,    1,   120,  0,   0);
setScaleKey(  spep_4+50,   1,   1.8,  1.8);
setShakeChara( spep_4, 1, 100, 30)

setMoveKey( spep_4+60, 1, 350, 0, 0)
setMoveKey( spep_4+80, 1, 350, 0, 0)
changeAnime( spep_4+90, 1, 108);
-- ** 背景 ** --
--entryFadeBg( spep_4, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

-- ** エフェクト等 ** --
tama = entryEffect( spep_4, SP_04, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_4, tama, 1, 1);
setEffAlphaKey( spep_4, tama, 255);


-- ** 集中線 ** --

-- ** 奥行き流線斜め ** --
ryusen = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー --
ct_03 = entryEffectLife( spep_4, 10014, 100, 0, -1, 0, 70, 350); -- ズドドッ
setEffShake( spep_4, ct_03, 100, 20);
setEffScaleKey( spep_4, ct_03, 2.5, 2.5);
setEffRotateKey( spep_4, ct_03, 80)

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_4, SE_07);

playSe( spep_4+90, SE_09);
-- ** 次の準備 ** --
spep_5 = spep_4+100;
entryFade( spep_5-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 0, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 370; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);



setDisp( SP_dodge, 0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
--setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);
--setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge-1,   0,    0,  0,   0);
setMoveKey(   SP_dodge,   0,    0, -5400,   0);
setMoveKey(   SP_dodge+1,   0,    0, -5400,   0);


setMoveKey(  SP_dodge,    1,  350,  0,   0);
setScaleKey(  SP_dodge,   1,   1.7,  1.7);

setMoveKey(   SP_dodge+1,    1,  350,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+9,   1,   250, 0,  0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+9,   1, 0);

changeAnime(  SP_dodge+10,    1,  100);
setMoveKey(  SP_dodge+10,    1,  250,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+10,   1, 0);


endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

-- ** キャラクター ** --
setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-2,    1,  235,  0,   0);
setScaleKey( spep_5-2,    1,  3.0, 3.0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);

setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7,6,15);
setShake( spep_5+13,15,10);

setRotateKey( spep_5-2,  1,  0 );
setRotateKey( spep_5-1,  1,  30 );
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

-- ** エフェクト等 ** --
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- 書き文字エントリー --
ct_04 = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct_04, 30, 10);
setEffRotateKey( spep_5+15, ct_04, -40);
setEffScaleKey( spep_5+15, ct_04, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct_04, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct_04, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct_04, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct_04, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct_04, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct_04, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct_04, 255);
setEffAlphaKey( spep_5+105, ct_04, 255);
setEffAlphaKey( spep_5+115, ct_04, 0);


-- ** 音 ** --
playSe( spep_5+3, SE_11);

playSe( spep_5+8, SE_10);


-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め１(60F)
------------------------------------------------------

spep_0 = 0;

-- ** キャラクター ** --
setDisp( spep_0+23, 0, 0);

-- ** 背景 ** --

-- ** エフェクト等 ** --
kidame_1 = entryEffectLife( spep_0+23, SP_01, 37, 0, -1, 0, 0, 0);   --気溜め１　19f
setEffScaleKey( spep_0+23, kidame_1, 1, 1);
setEffAlphaKey( spep_0+23, kidame_1, 255);

entryEffect(  spep_0+23,   1501,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_0+23,   1502,  0,     -1,  0,  0,  0);   -- eff_003 (気)
--entryEffect(  spep_0+23,   1500,  0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_0+32,   1500,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)


-- ** 集中線 ** --

-- 書き文字エントリー --
ct_01 = entryEffectLife( spep_0+30, 10013, 40, 0, -1, 0, 0, 100); -- ズズズンッ
setEffShake( spep_0+30, ct_01, 40, 20);
setEffAlphaKey( spep_0+30, ct_01, 255);
setEffAlphaKey( spep_0+50, ct_01, 255);
setEffAlphaKey( spep_0+60, ct_01, 0);
setEffScaleKey( spep_0+30, ct_01, 0.1, 0.1);
setEffScaleKey( spep_0+40, ct_01, 3.0, 3.0);
--setEffMoveKey( spep_0+30, ct_01, 50, 0)
setEffMoveKey( spep_0+40, ct_01, 0, 300)

-- ** 音 ** --
playSe( spep_0+23, SE_05);

-- ** 次の準備 ** --
spep_1 = spep_0+60;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 気溜め２(50F)　台詞カットイン
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_2 = entryEffect( spep_1, SP_01, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_1, kidame_2, 1, 1);
setEffAlphaKey( spep_1, kidame_2, 255);

entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  spep_1+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- ** 集中線 ** --



-- 書き文字エントリー --

ctGogogo = entryEffectLife( spep_1+20, 190006, 90, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
setEffAlphaKey( spep_1+20, ctGogogo, 255);
setEffRotateKey( spep_1+20, ctGogogo, 0);
setEffScaleKey( spep_1+20, ctGogogo, -0.1, 0.1);
setEffScaleKey( spep_1+30, ctGogogo, -0.7, 0.7);
setEffShake( spep_1+3, ctGogogo, 90, 20)


-- ** 音 ** --
playSe( spep_1+11, SE_04);

-- ** 次の準備 ** --
spep_2 = spep_1+100;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- カードカットイン
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.8, 1.8);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);

-- ** 音 ** --
playSe( spep_2, SE_05);

-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 95, 0, 30, 30, 30, 210); -- ベース暗め　背景

------------------------------------------------------
-- 発射(95F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi = entryEffect( spep_3, SP_06, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_3, hasi, 1, 1);
setEffAlphaKey( spep_3, hasi, 255);
--[[
speff2 = entryEffect( spep_3, 1508, 0x100, -1, 0, 0, 0); -- 必殺技
setEffReplaceTexture( speff2, 7, 4); -- 技名テクスチャ差し替え
setEffAlphaKey( spep_3,speff2,255);
setEffAlphaKey( spep_3+94,speff2,255);
setEffAlphaKey( spep_3+95,speff2,0);   
]]--

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.8, 1.8);
setEffScaleKey( spep_3+40, shuchusen3, 1.0, 1.0);

-- ** 流線(横) ** --
entryEffectLife( spep_3, 920, 95, 0x80,  -1,  0,  0,  0); -- 流線

-- 書き文字エントリー --
ct_02 = entryEffectLife( spep_3+35, 10012, 32, 0, -1, 0, 10, 300); -- ズオッ
setEffShake( spep_3+35, ct_02, 44, 20);
setEffMoveKey( spep_3+40, ct_02, 200, 300)
setEffRotateKey( spep_3+35, ct_02, 25)
setEffAlphaKey( spep_3+35, ct_02, 255);
setEffAlphaKey( spep_3+57, ct_02, 255);
setEffAlphaKey( spep_3+67, ct_02, 0);
setEffScaleKey( spep_3+35, ct_02, 0.0, 0.0);
setEffScaleKey( spep_3+39, ct_02, 3.0, 3.0);
setEffScaleKey( spep_3+59, ct_02, 3.0, 3.0);
setEffScaleKey( spep_3+79, ct_02, 14.0, 14.0);


-- ** 音 ** --
playSe( spep_3+15, SE_06);

-- ** 次の準備 ** --
spep_4 = spep_3+90;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 100, 0, 30, 30, 30, 210); -- ベース暗め　背景


------------------------------------------------------
-- 迫る〜命中(50F)
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  350,  0,   0);
setMoveKey(  spep_4,    1,  350,  0,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  0.8, 0.8);
setScaleKey( spep_4,    1,  0.8, 0.8);
setRotateKey( spep_4,  1,  0);

--setMoveKey(  spep_4+30,    1,   120,  0,   0);
setScaleKey(  spep_4+50,   1,   1.8,  1.8);
setShakeChara( spep_4, 1, 100, 30)

setMoveKey( spep_4+60, 1, 350, 0, 0)
setMoveKey( spep_4+80, 1, 350, 0, 0)
changeAnime( spep_4+90, 1, 108);
-- ** 背景 ** --
--entryFadeBg( spep_4, 0, 99, 0, 10, 10, 10, 150);          -- ベース暗め　背景

-- ** エフェクト等 ** --
tama = entryEffect( spep_4, SP_04, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_4, tama, 1, 1);
setEffAlphaKey( spep_4, tama, 255);


-- ** 集中線 ** --

-- ** 奥行き流線斜め ** --
ryusen = entryEffectLife( spep_4, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー --
ct_03 = entryEffectLife( spep_4, 10014, 100, 0, -1, 0, 70, 350); -- ズドドッ
setEffShake( spep_4, ct_03, 100, 20);
setEffScaleKey( spep_4, ct_03, 2.5, 2.5);
setEffRotateKey( spep_4, ct_03, -20)

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_4, SE_07);

playSe( spep_4+90, SE_09);
-- ** 次の準備 ** --
spep_5 = spep_4+100;
entryFade( spep_5-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 0, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 370; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);



setDisp( SP_dodge, 0, 0);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
--setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);
--setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge-1,   0,    0,  0,   0);
setMoveKey(   SP_dodge,   0,    0, -5400,   0);
setMoveKey(   SP_dodge+1,   0,    0, -5400,   0);


setMoveKey(  SP_dodge,    1,  350,  0,   0);
setScaleKey(  SP_dodge,   1,   1.7,  1.7);

setMoveKey(   SP_dodge+1,    1,  350,  0, 0);
setScaleKey(   SP_dodge+1,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+1,   1, 0);

setMoveKey(   SP_dodge+9,   1,   250, 0,  0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+9,   1, 0);

changeAnime(  SP_dodge+10,    1,  100);
setMoveKey(  SP_dodge+10,    1,  250,  0,   0);
setScaleKey( SP_dodge+10,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+10,   1, 0);


endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

-- ** キャラクター ** --
setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-2,    1,  235,  0,   0);
setScaleKey( spep_5-2,    1,  3.0, 3.0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);

setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake( spep_5+7,6,15);
setShake( spep_5+13,15,10);

setRotateKey( spep_5-2,  1,  0 );
setRotateKey( spep_5-1,  1,  30 );
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

-- ** エフェクト等 ** --
entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- 書き文字エントリー --
ct_04 = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct_04, 30, 10);
setEffRotateKey( spep_5+15, ct_04, -40);
setEffScaleKey( spep_5+15, ct_04, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct_04, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct_04, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct_04, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct_04, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct_04, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct_04, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct_04, 255);
setEffAlphaKey( spep_5+105, ct_04, 255);
setEffAlphaKey( spep_5+115, ct_04, 0);


-- ** 音 ** --
playSe( spep_5+3, SE_11);

playSe( spep_5+8, SE_10);


-- ダメージ表示
dealDamage( spep_5+16);
entryFade( spep_5+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_5+110);


end


