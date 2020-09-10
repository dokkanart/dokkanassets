

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
SP_01 = 151165;--ef_001
SP_01e = 151166;--ef_001r
SP_02 = 151167;--ef_002
SP_02e = 151168;--ef_002r
SP_03 = 151169;--ef_003
SP_03e = 151170;--ef_003r
SP_04 = 151171;--ef_004
SP_05 = 151172;--ef_005

--[[
SP_08 = 151029;--床2
SP_09 = 151030;--出現
SP_10 = 151032;--爆発
]]


multi_frm = 2;


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
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
-- オーラ溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

entryFadeBg( spep_0, 0, 50, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
tame = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, tame, 1, 1);
setEffAlphaKey( spep_0, tame, 255);

--entryEffect(  spep_0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  spep_0+20,   1500,   0,    -1,  0,  0,  0);    -- eff_001

-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen0, 1.0, 1.0);
setEffScaleKey( spep_0+40, shuchusen0, 1.0, 1.0);


-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

zuzuzun0 = entryEffectLife( spep_0+2, 10013, 47, 0x100, -1, 0, 0, 0); -- ズズズン
setEffMoveKey( spep_0+2, zuzuzun0, 0, 250, 0);
setEffMoveKey( spep_0+10, zuzuzun0, 0, 350, 0);
setEffScaleKey( spep_0+2, zuzuzun0, 1, 1);
setEffScaleKey( spep_0+10, zuzuzun0, 2.4, 2.4);
setEffAlphaKey( spep_0+2, zuzuzun0, 255);
setEffRotateKey( spep_0+2, zuzuzun0, 0);
setEffShake( spep_0+10, zuzuzun0, 30, 15);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_0+10, SE_01);

-- ** 次の準備 ** --
spep_1 = spep_0+50;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 130, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------
-- 技溜め～アップ
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
--[[
kidame = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_1, kidame, 1, 1);
setEffAlphaKey( spep_1, kidame, 255);
]]

-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
--playSe( spep_1, SE_02);


-- ** 次の準備 ** --
spep_2 = spep_1;
--entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 技溜め
------------------------------------------------------
bityousei = 40;
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
kidameUp = entryEffect(  spep_2,   SP_02,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_2, kidameUp, 1, 1);
setEffAlphaKey( spep_2, kidameUp, 255);
--[[
aura2 = entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_2, aura2, 1, 1);
setEffAlphaKey( spep_2, aura2, 255);
]]
speff = entryEffect(  spep_2+bityousei,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+bityousei,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

ctGogogo = entryEffectLife( spep_2+14+bityousei, 190006, 66, 0x100, -1, 0, 100, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+14+bityousei, ctGogogo, 0.8, 0.8);
setEffAlphaKey( spep_2+14+bityousei, ctGogogo, 255);
setEffRotateKey( spep_2+14+bityousei, ctGogogo, 10);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_2+4, SE_03);
playSe( spep_2+24, SE_03);
playSe( spep_2+40, SE_04);

-- ** 次の準備 ** --
spep_3 = spep_2+130;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- カートカットイン
------------------------------------------------------

-- ** エフェクト等 ** --
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --

shuchusenct3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusenct3, 2, 2);
setEffAlphaKey( spep_3, shuchusenct3, 255);

-- ** 音 ** --
playSe( spep_3, SE_05);

-- ** 次の準備 ** --
spep_4 = spep_3+90;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 160, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- ビーム放ち
------------------------------------------------------
tyousei =45;

-- ** エフェクト等 ** --
beamHanatu = entryEffect(  spep_4,   SP_03,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_4, beamHanatu, 1, 1);
setEffAlphaKey( spep_4, beamHanatu, 255);

-- ** 奥行き流線斜め ** --
ryuusenn4 = entryEffectLife( spep_4, 921, 160, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4,  ryuusenn4,  -120 );
setEffScaleKey( spep_4, ryuusenn4, 1.7, 1.7);
-- ** 集中線 ** --

shuchusenct4 = entryEffectLife( spep_4+20+tyousei, 906, 94, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4+20, shuchusenct4, 1.6, 1.6);
setEffAlphaKey( spep_4+20, shuchusenct4, 255);

-- ** 背景 ** --
entryFadeBg( spep_4+20, 20, 20, 20, 44, 252, 254, 255); -- ベース暗め　背景

entryFade( spep_4+58, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_4+20+tyousei, 10012, 90, 0, -1, 0, 150, 300); -- ズオッ
setEffRotateKey(spep_4+20+tyousei, ctZuo, 30);
setEffShake(spep_4+21+tyousei, ctZuo, 90, 25);
setEffAlphaKey(spep_4+20+tyousei, ctZuo, 255);
setEffAlphaKey(spep_4+90+tyousei, ctZuo, 255);
setEffAlphaKey(spep_4+100+tyousei, ctZuo, 0);
setEffScaleKey(spep_4+10+tyousei, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_4+14+tyousei, ctZuo, 2.5, 2.5);
setEffScaleKey(spep_4+90+tyousei, ctZuo, 2.5, 2.5);
setEffScaleKey(spep_4+100+tyousei, ctZuo, 6.0, 6.0);

-- ** 音 ** --
playSe( spep_4+20+tyousei, SE_06);
playSe( spep_4, SE_06);


-- ** 次の準備 ** --
spep_5 = spep_4+160;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 92, 0, 0, 0, 0, 255); -- ベース暗め　背景

setMoveKey(   spep_5-1,   0,    0, -54,   0);
setMoveKey(   spep_5-1,   1,    0, -54,   0);
setScaleKey(   spep_5-1,   0, 1.6, 1.6);
setScaleKey(   spep_5-1,   1, 1.6, 1.6);

------------------------------------------------------
-- 迫るかめはめ波
------------------------------------------------------
-- ** キャラクター ** --
changeAnime( spep_5, 1, 102);
setDisp( spep_5, 1, 1);
setScaleKey(   spep_5,   1, 3.2, 3.2);
setScaleKey(   spep_5+40,   1, 2.0, 2.0);
setScaleKey(   spep_5+90,   1, 1.5, 1.5);
setMoveKey(   spep_5,   1,    300, -300,   0);
setMoveKey(   spep_5+40,   1,    100, -100,   0);
setMoveKey(   spep_5+90,   1,    50, -50,   0);
--setMoveKey(   spep_5+40,   1,    50, -50,   0);
setShakeChara( spep_5+40, 1, 60, 10);

--[[
changeAnime( spep_6, 1, 100);
setDisp( spep_6, 1, 1);
setMoveKey(   spep_6,   1,    200, -300,   0);
setScaleKey(   spep_6,   1, 2.4, 2.4);
setMoveKey(   spep_6+40,   1,    100, -100,   0);
setScaleKey(   spep_6+40,   1, 1.6, 1.6);
setShakeChara( spep_6+40, 1, 29, 5);
]]

-- ** エフェクト等 ** --
semaru = entryEffect(  spep_5,   SP_04,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_5, semaru, 1, 1);
setEffAlphaKey( spep_5, semaru, 255);


-- ** 集中線 ** --

shuchusen5 = entryEffectLife( spep_5+0, 906, 100, 0x100,  -1, 0,  -100,  100);   -- 集中線 
setEffScaleKey( spep_5+0, shuchusen5, 2, 2);
setEffAlphaKey( spep_5+0, shuchusen5, 255);

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_5, 10014, 92, 0x100, -1, 0, 100, 300);    -- ズドドドッ
setEffRotateKey( spep_5, ctzudo, 60);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffScaleKey( spep_5, ctzudo, 3.5, 3.5);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffAlphaKey( spep_5+100, ctzudo, 255);
setEffShake( spep_5, ctzudo, 100, 20);
setEffRotateKey( spep_5+100, ctzudo, 60);

-- ** 音 ** --
playSe( spep_5+20, SE_07);


-- ** 次の準備 ** --
spep_6 = spep_5+92;
entryFade( spep_6-16, 13, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景
setDisp( spep_6-1, 1, 0);
setMoveKey(   spep_6-1,   1,    140, -140,   0);
--setMoveKey(   spep_6-1,   1,    50, -50,   0);
setScaleKey(   spep_6-1,   1, 2.0, 2.0);
------------------------------------------------------
-- 
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 460; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+8,   1,    170,  -50,  0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 敵やられ
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffect(  spep_6,   SP_05,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_6, hidan, 1, 1);
setEffAlphaKey( spep_6, hidan, 255);

-- ** 音 ** --
playSe( spep_6+20, SE_09);

-- ** 次の準備 ** --
spep_9 = spep_6+120;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 148, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_9,   1,    100, -100,   0);
setScaleKey(   spep_9,   1, 1.6, 1.6);

------------------------------------------------------
-- 地球からかめはめ波
------------------------------------------------------

-- ** エフェクト等 ** --
last = entryEffect(  spep_9,   1669,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_9, last, 1, 1);
setEffAlphaKey( spep_9, last, 255);

-- ** 音 ** --
playSe( spep_9+20, SE_10);

-- ダメージ表示
dealDamage( spep_9+16);
--entryFade( spep_9+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+120);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

entryFadeBg( spep_0, 0, 50, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
tame = entryEffect(  spep_0,   SP_01e,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_0, tame, 1, 1);
setEffAlphaKey( spep_0, tame, 255);

--entryEffect(  spep_0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  spep_0+20,   1500,   0,    -1,  0,  0,  0);    -- eff_001

-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen0, 1.0, 1.0);
setEffScaleKey( spep_0+40, shuchusen0, 1.0, 1.0);


-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

zuzuzun0 = entryEffectLife( spep_0+2, 10013, 47, 0x100, -1, 0, 0, 0); -- ズズズン
setEffMoveKey( spep_0+2, zuzuzun0, 0, 250, 0);
setEffMoveKey( spep_0+10, zuzuzun0, 0, 350, 0);
setEffScaleKey( spep_0+2, zuzuzun0, 1, 1);
setEffScaleKey( spep_0+10, zuzuzun0, 2.4, 2.4);
setEffAlphaKey( spep_0+2, zuzuzun0, 255);
setEffRotateKey( spep_0+2, zuzuzun0, 0);
setEffShake( spep_0+10, zuzuzun0, 30, 15);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_0+10, SE_01);

-- ** 次の準備 ** --
spep_1 = spep_0+50;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 130, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------
-- 技溜め～アップ
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
--[[
kidame = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_1, kidame, 1, 1);
setEffAlphaKey( spep_1, kidame, 255);
]]

-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
--playSe( spep_1, SE_02);


-- ** 次の準備 ** --
spep_2 = spep_1;
--entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_2, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 技溜め
------------------------------------------------------
bityousei = 40;
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
kidameUp = entryEffect(  spep_2,   SP_02e,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_2, kidameUp, 1, 1);
setEffAlphaKey( spep_2, kidameUp, 255);
--[[
aura2 = entryEffect(  spep_2,   1503,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_2, aura2, 1, 1);
setEffAlphaKey( spep_2, aura2, 255);
]]
--[[
speff = entryEffect(  spep_2+bityousei,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2+bityousei,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

ctGogogo = entryEffectLife( spep_2+14+bityousei, 190006, 66, 0x100, -1, 0, 100, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_2+14+bityousei, ctGogogo, -0.8, 0.8);
setEffAlphaKey( spep_2+14+bityousei, ctGogogo, 255);
setEffRotateKey( spep_2+14+bityousei, ctGogogo, 10);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_2+4, SE_03);
playSe( spep_2+24, SE_03);
playSe( spep_2+40, SE_04);

-- ** 次の準備 ** --
spep_3 = spep_2+130;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- カートカットイン
------------------------------------------------------

-- ** エフェクト等 ** --
speff = entryEffect(  spep_3,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --

shuchusenct3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_3, shuchusenct3, 2, 2);
setEffAlphaKey( spep_3, shuchusenct3, 255);

-- ** 音 ** --
playSe( spep_3, SE_05);

-- ** 次の準備 ** --
spep_4 = spep_3+90;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 160, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- ビーム放ち
------------------------------------------------------
tyousei =45;

-- ** エフェクト等 ** --
beamHanatu = entryEffect(  spep_4,   SP_03e,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_4, beamHanatu, 1, 1);
setEffAlphaKey( spep_4, beamHanatu, 255);

-- ** 奥行き流線斜め ** --
ryuusenn4 = entryEffectLife( spep_4, 921, 160, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4,  ryuusenn4,  -120 );
setEffScaleKey( spep_4, ryuusenn4, 1.7, 1.7);
-- ** 集中線 ** --

shuchusenct4 = entryEffectLife( spep_4+20+tyousei, 906, 94, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_4+20, shuchusenct4, 1.6, 1.6);
setEffAlphaKey( spep_4+20, shuchusenct4, 255);

-- ** 背景 ** --
entryFadeBg( spep_4+20, 20, 20, 20, 44, 252, 254, 255); -- ベース暗め　背景

entryFade( spep_4+58, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_4+20+tyousei, 10012, 90, 0, -1, 0, 150, 300); -- ズオッ
setEffRotateKey(spep_4+20+tyousei, ctZuo, 30);
setEffShake(spep_4+21+tyousei, ctZuo, 90, 25);
setEffAlphaKey(spep_4+20+tyousei, ctZuo, 255);
setEffAlphaKey(spep_4+90+tyousei, ctZuo, 255);
setEffAlphaKey(spep_4+100+tyousei, ctZuo, 0);
setEffScaleKey(spep_4+10+tyousei, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_4+14+tyousei, ctZuo, 2.5, 2.5);
setEffScaleKey(spep_4+90+tyousei, ctZuo, 2.5, 2.5);
setEffScaleKey(spep_4+100+tyousei, ctZuo, 6.0, 6.0);

-- ** 音 ** --
playSe( spep_4+20+tyousei, SE_06);
playSe( spep_4, SE_06);


-- ** 次の準備 ** --
spep_5 = spep_4+160;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 92, 0, 0, 0, 0, 255); -- ベース暗め　背景

setMoveKey(   spep_5-1,   0,    0, -54,   0);
setMoveKey(   spep_5-1,   1,    0, -54,   0);
setScaleKey(   spep_5-1,   0, 1.6, 1.6);
setScaleKey(   spep_5-1,   1, 1.6, 1.6);

------------------------------------------------------
-- 迫るかめはめ波
------------------------------------------------------
-- ** キャラクター ** --
changeAnime( spep_5, 1, 102);
setDisp( spep_5, 1, 1);
setScaleKey(   spep_5,   1, 3.2, 3.2);
setScaleKey(   spep_5+40,   1, 2.0, 2.0);
setScaleKey(   spep_5+90,   1, 1.5, 1.5);
setMoveKey(   spep_5,   1,    300, -300,   0);
setMoveKey(   spep_5+40,   1,    100, -100,   0);
setMoveKey(   spep_5+90,   1,    50, -50,   0);
--setMoveKey(   spep_5+40,   1,    50, -50,   0);
setShakeChara( spep_5+40, 1, 60, 10);

--[[
changeAnime( spep_6, 1, 100);
setDisp( spep_6, 1, 1);
setMoveKey(   spep_6,   1,    200, -300,   0);
setScaleKey(   spep_6,   1, 2.4, 2.4);
setMoveKey(   spep_6+40,   1,    100, -100,   0);
setScaleKey(   spep_6+40,   1, 1.6, 1.6);
setShakeChara( spep_6+40, 1, 29, 5);
]]

-- ** エフェクト等 ** --
semaru = entryEffect(  spep_5,   SP_04,   0x80,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_5, semaru, 1, 1);
setEffAlphaKey( spep_5, semaru, 255);


-- ** 集中線 ** --

shuchusen5 = entryEffectLife( spep_5+0, 906, 100, 0x100,  -1, 0,  -100,  100);   -- 集中線 
setEffScaleKey( spep_5+0, shuchusen5, 2, 2);
setEffAlphaKey( spep_5+0, shuchusen5, 255);

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_5, 10014, 92, 0x100, -1, 0, 50, 300);    -- ズドドドッ
setEffRotateKey( spep_5, ctzudo, -10);
setEffRotateKey( spep_5+100, ctzudo, -10);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffScaleKey( spep_5, ctzudo, 3.5, 3.5);
setEffAlphaKey( spep_5, ctzudo, 255);
setEffAlphaKey( spep_5+100, ctzudo, 255);
setEffShake( spep_5, ctzudo, 100, 20);


-- ** 音 ** --
playSe( spep_5+20, SE_07);


-- ** 次の準備 ** --
spep_6 = spep_5+92;
entryFade( spep_6-16, 13, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景
setDisp( spep_6-1, 1, 0);
setMoveKey(   spep_6-1,   1,    140, -140,   0);
--setMoveKey(   spep_6-1,   1,    50, -50,   0);
setScaleKey(   spep_6-1,   1, 2.0, 2.0);
------------------------------------------------------
-- 
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 460; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

setMoveKey(   SP_dodge+8,   1,    170,  -50,  0);
setScaleKey(   SP_dodge+8,   1, 1.4, 1.4);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.5, 1.5);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end
------------------------------------------------------
-- 敵やられ
------------------------------------------------------

-- ** エフェクト等 ** --
hidan = entryEffect(  spep_6,   SP_05,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_6, hidan, 1, 1);
setEffAlphaKey( spep_6, hidan, 255);

-- ** 音 ** --
playSe( spep_6+20, SE_09);

-- ** 次の準備 ** --
spep_9 = spep_6+120;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 148, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_9,   1,    100, -100,   0);
setScaleKey(   spep_9,   1, 1.6, 1.6);

------------------------------------------------------
-- 地球からかめはめ波
------------------------------------------------------

-- ** エフェクト等 ** --
last = entryEffect(  spep_9,   1669,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_9, last, 1, 1);
setEffAlphaKey( spep_9, last, 255);

-- ** 音 ** --
playSe( spep_9+20, SE_10);

-- ダメージ表示
dealDamage( spep_9+16);
--entryFade( spep_9+136, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+120);


end


