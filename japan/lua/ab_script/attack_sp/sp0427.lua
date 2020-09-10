--悟空＆ベジータ　かめはめ波＆ビッグ・バン・アタック

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--味方側
SP_01 = 151085;--溜め
SP_02 = 151086;--構え
SP_03 = 151087;--ベジータ放ち
SP_04 = 151088;--悟空瞬間移動
SP_05 = 151089;--かめはめ波正面
SP_06 = 151090;--爆発


SP_01r = 151091;--溜め
SP_02r = 151092;--構え
SP_03r = 151093;--ベジータ放ち
SP_04r = 151094;--悟空瞬間移動
SP_05r = 151089;--かめはめ波正面
SP_06r = 151090;--爆発


multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

-- ** 背景 ** --
--entryFadeBg( spep_0, 0, 120, 0, 0, 0, 0, 210);  -- 黒　背景　
entryEffect(  spep_0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

-- ** キャラクター ** --
-- ** エフェクト等 ** --
kidame = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 140, 5);


-- 書き文字エントリー --
ctzuzun = entryEffectLife( spep_0, 10013, 39, 0, -1, 0, 0, 250); -- ズズンッ
setEffShake(spep_0, ctzuzun, 40, 10);
setEffAlphaKey(spep_0, ctzuzun, 255);
setEffAlphaKey(spep_0+40, ctzuzun, 255);
setEffAlphaKey(spep_0+40, ctzuzun, 0);
setEffScaleKey( spep_0, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0+10, ctzuzun, 2.3, 2.3);
setEffScaleKey( spep_0+40, ctzuzun, 2.3, 2.3);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_0+3, SE_01);

-- ** 次の準備 ** --
spep_1 = spep_0+40;
entryFade( spep_1-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_1, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------
-- カットイン（100F）
------------------------------------------------------

-- ** エフェクト等 ** --
yoru = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_1, yoru, 1, 1);
setEffAlphaKey( spep_1, yoru, 255);
setEffShake(spep_1, yoru, 140, 5);

entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー --
gogogo = entryEffectLife( spep_1+14, 190006, 70, 0x100, -1, 0, 100, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+14, gogogo, 0.8, 0.8);
setEffAlphaKey( spep_1+14, gogogo, 255);
setEffRotateKey( spep_1+14, gogogo, 20);


-- ** 音 ** --
playSe( spep_1+1, SE_04);


-- ** 次の準備 ** --
spep_2 = spep_1+90;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 210); -- ベース暗め　背景


------------------------------------------------------
-- カードカットイン（90F）
------------------------------------------------------

-- ** エフェクト等 ** --
speff2 = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff2, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenct2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_2, shuchusenct2, 2, 2);
setEffAlphaKey( spep_2, shuchusenct2, 255);


-- ** 音 ** --
playSe( spep_2, SE_05);


-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 100, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- ビッグバンアタック（130F）
------------------------------------------------------
-- ** 奥行き流線斜め ** --
ryuusen3 = entryEffectLife( spep_3, 921, 100, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_3, ryuusen3, 1.7, 1.7);
setEffAlphaKey( spep_3, ryuusen3, 255);
setEffRotateKey(spep_3, ryuusen3, -130);

-- ** エフェクト等 ** --
hassya3 = entryEffectLife(  spep_3,   SP_03, 100,  0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_3, hassya3, 1, 1);
setEffAlphaKey( spep_3, hassya3, 255);
setEffShake(spep_3, hassya3, 140, 5);

-- ** 集中線 ** --
shuchusenct3 = entryEffectLife( spep_3+8, 906, 22, 0x100,  -1, 0,  300,  -200);   -- 集中線 
setEffScaleKey( spep_3+8, shuchusenct3, 1.5, 1.5);
setEffAlphaKey( spep_3+8, shuchusenct3, 255);

-- 書き文字エントリー
ctZuo4 = entryEffectLife( spep_3, 10012, 50, 0x100, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_3, ctZuo4, 92, 5);
setEffRotateKey(spep_3, ctZuo4, 31);
setEffShake(spep_3, ctZuo4, 71, 30);
setEffAlphaKey(spep_3, ctZuo4, 255);
setEffAlphaKey(spep_3+20, ctZuo4, 255);
setEffAlphaKey(spep_3+30, ctZuo4, 0);
setEffScaleKey(spep_3, ctZuo4, 0.0, 0.0);
setEffScaleKey(spep_3+10, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_3+25, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_3+30, ctZuo4, 8.0, 8.0);

-- ** 音 ** --
playSe( spep_3+5, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_3+30, 2, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- ビッグバンアタック迫る（F）
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_3+31, 1, 1);
changeAnime( spep_3+31, 1, 102);  --待機

setMoveKey(   spep_3+31,   1,   800, -800,   0);
setMoveKey(   spep_3+32,   1,    800, -800,   0);
setMoveKey(   spep_3+88,   1,    148, -148,   0);
setMoveKey(   spep_3+89,   1,    149, -149,   0);
setMoveKey(   spep_3+90,   1,    150, -150,   0);
setMoveKey(   spep_3+91,   1,    150, -150,   0);
setMoveKey(   spep_3+92,   1,    150, -150,   0);
setMoveKey(   spep_3+93,   1,    150, -150,   0);
setMoveKey(   spep_3+150,   1,    150, -150,   0);
setScaleKey(   spep_3+30,   1, 2.0, 2.0);
setScaleKey(   spep_3+70,   1, 1.5, 1.5);
setScaleKey(   spep_3+95,   1, 1.5, 1.5);
setShakeChara(spep_3+32,  1,  64,  10);

setDisp( spep_3+95, 1, 0);


-- ** 集中線 ** --
shuchusenct3a = entryEffectLife( spep_3+30, 906, 70, 0x100,  -1, 0,  -200,  400);   -- 集中線 
setEffScaleKey( spep_3+30, shuchusenct3a, 2, 2);
setEffAlphaKey( spep_3+30, shuchusenct3a, 255);


-- ** 音 ** --
--playSe( spep_3+30, SE_07);
playSe( spep_3+96, SE_09); -- ヒット音

-- ** 次の準備 ** --
spep_5 = spep_3+100;
entryFade( spep_5-7, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 55, 0, 0, 0, 0, 210); -- ベース暗め　背景

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
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);
setMoveKey(   SP_dodge,   1,    150, -15000,   0);
setMoveKey(   SP_dodge+135,   1,    150, -15000,   0);



endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 瞬間移動（60F）
------------------------------------------------------
-- ** 奥行き流線斜め ** --
ryuusen5 = entryEffectLife( spep_5, 921, 55, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_5, ryuusen5, 1.7, 1.7);
setEffAlphaKey( spep_5, ryuusen5, 255);
setEffRotateKey(spep_5, ryuusen5, -130);


-- ** エフェクト等 ** --
semaru5 = entryEffect(  spep_5,   SP_04,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_5, semaru5, 1, 1);
setEffAlphaKey( spep_5, semaru5, 255);
setEffShake(spep_5, semaru5, 140, 5);


-- ** 音 ** --
playSe( spep_5+20, 43);

-- ** 次の準備 ** --
spep_6 = spep_5+55;
entryFade( spep_6-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 140, 0, 0, 0, 0, 210); -- ベース暗め　背景
setDisp( spep_6-1, 1, 1);
setMoveKey(   spep_6-1,   1,    0,  0,   0);
setScaleKey(   spep_6-1,   1, 1.6, 1.6);
------------------------------------------------------
-- かめはめ波(140F)
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_6-1, 1, 1);
changeAnime( spep_6-1, 1, 107);  --待機

setMoveKey(   spep_6-1,   1,   0, -150,  0);
setMoveKey(   spep_6,   1,    0, -150,   0);
setMoveKey(   spep_6+10,   1,    0, -700,   0);
setMoveKey(   spep_6+50,   1,    0, -700,   0);
setScaleKey(   spep_6,   1, 0.3, 0.3);
setScaleKey(   spep_6+10,   1, 1.0, 1.0);
setDisp( spep_6+10, 1, 0);

-- ** 奥行き流線斜め ** --
ryuusen6 = entryEffectLife( spep_6, 921, 140, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_6, ryuusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, ryuusen6, 255);
setEffRotateKey(spep_6, ryuusen6, -90);

-- ** エフェクト等 ** --
semaru6 = entryEffect(  spep_6,   SP_05,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_6, semaru6, 1, 1);
setEffAlphaKey( spep_6, semaru6, 255);
setEffShake(spep_6, semaru6, 140, 5);

-- ** 集中線 ** --
shuchusenct6 = entryEffectLife( spep_6, 906, 25, 0x100,  -1, 0,  0,  -300);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusenct6, 255);

shuchusenct6a = entryEffectLife( spep_6+26, 906, 114, 0x100,  -1, 0,  0,  300);   -- 集中線 
setEffScaleKey( spep_6+26, shuchusenct6a, 1.5, 1.5);
setEffAlphaKey( spep_6+26, shuchusenct6a, 255);

-- ** ホワイトフェード ** --
entryFade( spep_6+40, 1, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctZuo6 = entryEffectLife( spep_6+45, 10012, 50, 0x100, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_6+45, ctZuo6, 92, 5);
setEffRotateKey(spep_6+45, ctZuo6, 31);
setEffShake(spep_6+45, ctZuo6, 71, 30);
setEffAlphaKey(spep_6+45, ctZuo6, 255);
setEffAlphaKey(spep_6+60, ctZuo6, 255);
setEffAlphaKey(spep_6+102, ctZuo6, 0);
setEffScaleKey(spep_6+45, ctZuo6, 0.0, 0.0);
setEffScaleKey(spep_6+60, ctZuo6, 2.8, 2.8);
setEffScaleKey(spep_6+75, ctZuo6, 2.8, 2.8);
setEffScaleKey(spep_6+92, ctZuo6, 8.0, 8.0);

-- ** 音 ** --
playSe( spep_6, 43);
playSe( spep_6+40, SE_07);


-- ** 次の準備 ** --
spep_7 = spep_6+140;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 
------------------------------------------------------
-- ** エフェクト等 ** --
last = entryEffect(  spep_7,   SP_06,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_7, last, 1.2, 1.2);
setEffAlphaKey( spep_7, last, 255);
--setEffShake(spep_7, last, 140, 5);

-- ** 集中線 ** --
shuchusenct7 = entryEffectLife( spep_7+10, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_7+10, shuchusenct7, 1, 1);
setEffAlphaKey( spep_7+10, shuchusenct7, 255);

-- ** 音 ** --
playSe( spep_7, SE_07);
playSe( spep_7+40, SE_10);

-- ダメージ表示
dealDamage( spep_7+16);
--entryFade( spep_7+158, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+158);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
spep_0 = 0;

-- ** 背景 ** --
--entryFadeBg( spep_0, 0, 120, 0, 0, 0, 0, 210);  -- 黒　背景　
entryEffect(  spep_0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  spep_0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

-- ** キャラクター ** --
-- ** エフェクト等 ** --
kidame = entryEffect(  spep_0,   SP_01r,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, kidame, 1, 1);
setEffAlphaKey( spep_0, kidame, 255);
setEffShake(spep_0, kidame, 140, 5);


-- 書き文字エントリー --
ctzuzun = entryEffectLife( spep_0, 10013, 39, 0, -1, 0, 0, 250); -- ズズンッ
setEffShake(spep_0, ctzuzun, 40, 10);
setEffAlphaKey(spep_0, ctzuzun, 255);
setEffAlphaKey(spep_0+40, ctzuzun, 255);
setEffAlphaKey(spep_0+40, ctzuzun, 0);
setEffScaleKey( spep_0, ctzuzun, 0.1, 0.1);
setEffScaleKey( spep_0+10, ctzuzun, 2.3, 2.3);
setEffScaleKey( spep_0+40, ctzuzun, 2.3, 2.3);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_0+3, SE_01);

-- ** 次の準備 ** --
spep_1 = spep_0+40;
entryFade( spep_1-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_1, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------
-- カットイン（100F）
------------------------------------------------------

-- ** エフェクト等 ** --
yoru = entryEffect(  spep_1,   SP_02r,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_1, yoru, 1, 1);
setEffAlphaKey( spep_1, yoru, 255);
setEffShake(spep_1, yoru, 140, 5);

entryEffect(  spep_1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep_1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

-- 書き文字エントリー --
gogogo = entryEffectLife( spep_1+14, 190006, 70, 0x100, -1, 0, 100, 450); -- ゴゴゴゴゴ
setEffScaleKey( spep_1+14, gogogo, -0.8, 0.8);
setEffAlphaKey( spep_1+14, gogogo, 255);
setEffRotateKey( spep_1+14, gogogo, 0);


-- ** 音 ** --
playSe( spep_1+1, SE_04);


-- ** 次の準備 ** --
spep_2 = spep_1+90;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 210); -- ベース暗め　背景


------------------------------------------------------
-- カードカットイン（90F）
------------------------------------------------------

-- ** エフェクト等 ** --
speff2 = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff2, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenct2 = entryEffectLife( spep_2, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_2, shuchusenct2, 2, 2);
setEffAlphaKey( spep_2, shuchusenct2, 255);


-- ** 音 ** --
playSe( spep_2, SE_05);


-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 100, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- ビッグバンアタック（130F）
------------------------------------------------------
-- ** 奥行き流線斜め ** --
ryuusen3 = entryEffectLife( spep_3, 921, 100, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_3, ryuusen3, 1.7, 1.7);
setEffAlphaKey( spep_3, ryuusen3, 255);
setEffRotateKey(spep_3, ryuusen3, -130);

-- ** エフェクト等 ** --
hassya3 = entryEffectLife(  spep_3,   SP_03r, 100,  0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_3, hassya3, 1, 1);
setEffAlphaKey( spep_3, hassya3, 255);
setEffShake(spep_3, hassya3, 140, 5);

-- ** 集中線 ** --
shuchusenct3 = entryEffectLife( spep_3+8, 906, 22, 0x100,  -1, 0,  300,  -200);   -- 集中線 
setEffScaleKey( spep_3+8, shuchusenct3, 1.5, 1.5);
setEffAlphaKey( spep_3+8, shuchusenct3, 255);

-- 書き文字エントリー
ctZuo4 = entryEffectLife( spep_3, 10012, 50, 0x100, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_3, ctZuo4, 92, 5);
setEffRotateKey(spep_3, ctZuo4, -11);
setEffShake(spep_3, ctZuo4, 71, 30);
setEffAlphaKey(spep_3, ctZuo4, 255);
setEffAlphaKey(spep_3+20, ctZuo4, 255);
setEffAlphaKey(spep_3+30, ctZuo4, 0);
setEffScaleKey(spep_3, ctZuo4, 0.0, 0.0);
setEffScaleKey(spep_3+10, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_3+25, ctZuo4, 2.8, 2.8);
setEffScaleKey(spep_3+30, ctZuo4, 8.0, 8.0);

-- ** 音 ** --
playSe( spep_3+5, SE_07);

-- ** ホワイトフェード ** --
entryFade( spep_3+30, 2, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- ビッグバンアタック迫る（F）
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_3+31, 1, 1);
changeAnime( spep_3+31, 1, 102);  --待機

setMoveKey(   spep_3+31,   1,   800, -800,   0);
setMoveKey(   spep_3+32,   1,    800, -800,   0);
setMoveKey(   spep_3+88,   1,    148, -148,   0);
setMoveKey(   spep_3+89,   1,    149, -149,   0);
setMoveKey(   spep_3+90,   1,    150, -150,   0);
setMoveKey(   spep_3+91,   1,    150, -150,   0);
setMoveKey(   spep_3+92,   1,    150, -150,   0);
setMoveKey(   spep_3+93,   1,    150, -150,   0);
setMoveKey(   spep_3+150,   1,    150, -150,   0);
setScaleKey(   spep_3+30,   1, 2.0, 2.0);
setScaleKey(   spep_3+70,   1, 1.5, 1.5);
setScaleKey(   spep_3+95,   1, 1.5, 1.5);
setShakeChara(spep_3+32,  1,  64,  10);

setDisp( spep_3+95, 1, 0);


-- ** 集中線 ** --
shuchusenct3a = entryEffectLife( spep_3+30, 906, 70, 0x100,  -1, 0,  -200,  400);   -- 集中線 
setEffScaleKey( spep_3+30, shuchusenct3a, 2, 2);
setEffAlphaKey( spep_3+30, shuchusenct3a, 255);


-- ** 音 ** --
--playSe( spep_3+30, SE_07);
playSe( spep_3+96, SE_09); -- ヒット音

-- ** 次の準備 ** --
spep_5 = spep_3+100;
entryFade( spep_5-7, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 55, 0, 0, 0, 0, 210); -- ベース暗め　背景

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
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);
setMoveKey(   SP_dodge,   1,    150, -15000,   0);
setMoveKey(   SP_dodge+135,   1,    150, -15000,   0);



endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 瞬間移動（60F）
------------------------------------------------------
-- ** 奥行き流線斜め ** --
ryuusen5 = entryEffectLife( spep_5, 921, 55, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_5, ryuusen5, 1.7, 1.7);
setEffAlphaKey( spep_5, ryuusen5, 255);
setEffRotateKey(spep_5, ryuusen5, -130);


-- ** エフェクト等 ** --
semaru5 = entryEffect(  spep_5,   SP_04r,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_5, semaru5, 1, 1);
setEffAlphaKey( spep_5, semaru5, 255);
setEffShake(spep_5, semaru5, 140, 5);


-- ** 音 ** --
playSe( spep_5+20, 43);

-- ** 次の準備 ** --
spep_6 = spep_5+55;
entryFade( spep_6-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 140, 0, 0, 0, 0, 210); -- ベース暗め　背景
setDisp( spep_6-1, 1, 1);
setMoveKey(   spep_6-1,   1,    0,  0,   0);
setScaleKey(   spep_6-1,   1, 1.6, 1.6);
------------------------------------------------------
-- かめはめ波(140F)
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_6-1, 1, 1);
changeAnime( spep_6-1, 1, 107);  --待機

setMoveKey(   spep_6-1,   1,   0, -150,  0);
setMoveKey(   spep_6,   1,    0, -150,   0);
setMoveKey(   spep_6+10,   1,    0, -700,   0);
setMoveKey(   spep_6+50,   1,    0, -700,   0);
setScaleKey(   spep_6,   1, 0.3, 0.3);
setScaleKey(   spep_6+10,   1, 1.0, 1.0);
setDisp( spep_6+10, 1, 0);

-- ** 奥行き流線斜め ** --
ryuusen6 = entryEffectLife( spep_6, 921, 140, 0x80,  -1, 0,  0,  0);   -- 流線斜め
setEffScaleKey( spep_6, ryuusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, ryuusen6, 255);
setEffRotateKey(spep_6, ryuusen6, -90);

-- ** エフェクト等 ** --
semaru6 = entryEffect(  spep_6,   SP_05,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_6, semaru6, -1, 1);
setEffAlphaKey( spep_6, semaru6, 255);
setEffShake(spep_6, semaru6, 140, 5);

-- ** 集中線 ** --
shuchusenct6 = entryEffectLife( spep_6, 906, 25, 0x100,  -1, 0,  0,  -300);   -- 集中線 
setEffScaleKey( spep_6, shuchusenct6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusenct6, 255);

shuchusenct6a = entryEffectLife( spep_6+26, 906, 114, 0x100,  -1, 0,  0,  300);   -- 集中線 
setEffScaleKey( spep_6+26, shuchusenct6a, 1.5, 1.5);
setEffAlphaKey( spep_6+26, shuchusenct6a, 255);

-- ** ホワイトフェード ** --
entryFade( spep_6+40, 1, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctZuo6 = entryEffectLife( spep_6+45, 10012, 50, 0x100, -1, 0, 200, 350); -- ズオッ
setEffShake(spep_6+45, ctZuo6, 92, 5);
setEffRotateKey(spep_6+45, ctZuo6, 31);
setEffShake(spep_6+45, ctZuo6, 71, 30);
setEffAlphaKey(spep_6+45, ctZuo6, 255);
setEffAlphaKey(spep_6+60, ctZuo6, 255);
setEffAlphaKey(spep_6+102, ctZuo6, 0);
setEffScaleKey(spep_6+45, ctZuo6, 0.0, 0.0);
setEffScaleKey(spep_6+60, ctZuo6, 2.8, 2.8);
setEffScaleKey(spep_6+75, ctZuo6, 2.8, 2.8);
setEffScaleKey(spep_6+92, ctZuo6, 8.0, 8.0);

-- ** 音 ** --
playSe( spep_6, 43);
playSe( spep_6+40, SE_07);


-- ** 次の準備 ** --
spep_7 = spep_6+140;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 
------------------------------------------------------
-- ** エフェクト等 ** --
last = entryEffect(  spep_7,   SP_06,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_7, last, 1.2, 1.2);
setEffAlphaKey( spep_7, last, 255);
--setEffShake(spep_7, last, 140, 5);

-- ** 集中線 ** --
shuchusenct7 = entryEffectLife( spep_7+10, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_7+10, shuchusenct7, 1, 1);
setEffAlphaKey( spep_7+10, shuchusenct7, 255);

-- ** 音 ** --
playSe( spep_7, SE_07);
playSe( spep_7+40, SE_10);

-- ダメージ表示
dealDamage( spep_7+16);
--entryFade( spep_7+158, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+158);

end


