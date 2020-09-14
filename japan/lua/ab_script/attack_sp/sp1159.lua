--sp1159 孫悟空(身勝手の極意“兆”) 超極限かめはめ波

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
SP_01 = 151398;--通り抜け打撃
SP_02 = 151399;--岩着地〜手前に
SP_03 = 151400;--パンチ移動
SP_04 = 151401;--放つ
SP_05 = 151402;--着弾
SP_06 = 151403;--手前にパンチ
SP_07 = 151404;--45度　
SP_08 = 151405;--パンチ着弾　

--敵側は味方側に1xをつけてます
SP_01x =151406;--	敵用：通り抜け打撃	ef_001r
SP_02x =151407;--	敵用：岩着地〜手前に	ef_002r
SP_03x =151408;--	敵用：パンチ移動	ef_003r
SP_04x =151409;--	敵用：パンチ着弾	ef_004r
SP_05x =151410;--	敵用：構え	ef_005r
SP_06x =151411;--	敵用：正面に放つ	ef_006r
SP_07x =151412;--	敵用：45度発射	ef_007r




multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   0,   1,    550, -500,   0);
setMoveKey(   1,   0,    0, 0,   0);
setMoveKey(   1,   1,    550, -500,   0);
setMoveKey(   2,   0,    0, 0,   0);
setMoveKey(   2,   1,    550, -500,   0);
setMoveKey(   3,   0,    0, 0,   0);
setMoveKey(   3,   1,    550, -500,   0);
setMoveKey(   4,   0,    0, 0,   0);
setMoveKey(   4,   1,    550, -500,   0);
setMoveKey(   5,   0,    0, 0,   0);
setMoveKey(   5,   1,    550, -500,   0);

setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   1,   1, 2.8, 2.8);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 通り抜け打撃(220F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 106, 0, 0, 0, 0, 210); -- ベース暗め　背景
entryFadeBg( spep_0+106, 0, 114, 0, 0, 0, 0, 230); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffect( spep_0, SP_01, 0, -1, 0, 0, 60);   --気溜め１　19f
setEffScaleKey( spep_0, kidame, 1.0, 1.0);
--setEffScaleKey( spep_0+20, kidame, 0.0, 0.0);
--setEffScaleKey( spep_0+21, kidame, 0.0, 0.0);
setEffScaleKey( spep_0+200, kidame, 1.0, 1.0);
setEffAlphaKey( spep_0, kidame, 255);

setDisp( spep_0, 1, 1);
changeAnime( spep_0, 1, 102);
changeAnime( spep_0+104, 1, 106);

setMoveKey(   spep_0+20,   1,    250, -250,   0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0, 906, 65, 0x100,  -1, -200,  200,  0); -- 集中線
setEffMoveKey( spep_0, shuchusen, -200, 200, 0);
setEffScaleKey( spep_0, shuchusen, 1.6, 1.6);
setEffAlphaKey( spep_0, shuchusen, 255);
setEffRotateKey( spep_0, shuchusen, 0);

shuchusen_a = entryEffectLife( spep_0+66, 906, 38, 0x100,  -1, 50,  0,  0); -- 集中線
setEffMoveKey( spep_0+66, shuchusen_a, 0, 0, 0);
setEffScaleKey( spep_0+66, shuchusen_a, 1.7, 1.7);
setEffAlphaKey( spep_0+66, shuchusen_a, 255);
setEffRotateKey( spep_0+66, shuchusen_a, 0);

shuchusen_b = entryEffectLife( spep_0+104, 906, 114, 0x100,  -1, -200,  200,  0); -- 集中線
setEffMoveKey( spep_0+104, shuchusen_b, -200, 200, 0);
setEffScaleKey( spep_0+104, shuchusen_b, 1.6, 1.6);
setEffAlphaKey( spep_0+104, shuchusen_b, 255);
setEffRotateKey( spep_0+104, shuchusen_b, 0);

-- ** 音 ** --
playSe( spep_0+46, 43);
--[[
playSe( spep_0+100, 1009);
playSe( spep_0+105, 1009);
playSe( spep_0+110, 1009);
playSe( spep_0+115, 1009);
playSe( spep_0+120, 1009);
playSe( spep_0+125, 1009);
playSe( spep_0+130, 1009);
playSe( spep_0+135, 1009);
playSe( spep_0+140, 1009);
]]
--4.11調整
SE001 = playSe( spep_0+100, 1009);
stopSe(spep_0+110,SE001,6);
SE002 = playSe( spep_0+105, 1009);
stopSe(spep_0+115,SE002,6);
SE003 = playSe( spep_0+110, 1009);
stopSe(spep_0+120,SE003,6);
SE004 = playSe( spep_0+115, 1009);
stopSe(spep_0+125,SE004,6);
SE005 = playSe( spep_0+120, 1009);
stopSe(spep_0+130,SE005,6);
SE006 = playSe( spep_0+125, 1009);
stopSe(spep_0+135,SE006,6);
SE007 = playSe( spep_0+130, 1009);
stopSe(spep_0+140,SE007,6);
SE008 = playSe( spep_0+135, 1009);
stopSe(spep_0+145,SE008,6);
SE009 = playSe( spep_0+140, 1009);


playSe( spep_0+170, SE_09);

entryFade( spep_0+104, 0, 3, 8, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade
entryFade( spep_0+160, 0, 3, 8, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 21; --エンドフェイズのフレーム数を置き換える

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

setMoveKey(  SP_dodge,    1,  250, -250,   0);
setScaleKey(  SP_dodge,   1,   1.7,  1.7);

setMoveKey(   SP_dodge+8,   1,   250, -250,  0);
setScaleKey(   SP_dodge+8,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+8,   1, 0);

setDisp(  SP_dodge+9,    1,  0);
--changeAnime(  SP_dodge+9,    1,  102);
setMoveKey(  SP_dodge+9,    1,  0,  -60000,   0);
setScaleKey( SP_dodge+9,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+9,   1, 0);

setDisp(  SP_dodge+10,    1,  0);
setMoveKey(  SP_dodge+10,    1,  0,  -60000,   0);
setScaleKey( SP_dodge+10,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+10,   1, 0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避じゃない
------------------------------------------------------
setMoveKey(   spep_0+40,   1,    250, -250,   0);
setMoveKey(   spep_0+70,   1,    -200, 300,   0);

setMoveKey(   spep_0+106,   1,    -210, 290,   0);
setMoveKey(   spep_0+108,   1,    -200, 300,   0);
setMoveKey(   spep_0+111,   1,    -210, 310,   0);
setMoveKey(   spep_0+112,   1,    -200, 300,   0);
setMoveKey(   spep_0+115,   1,    -210, 290,   0);
setMoveKey(   spep_0+118,   1,    -200, 300,   0);
setMoveKey(   spep_0+120,   1,    -210, 310,   0);
setMoveKey(   spep_0+123,   1,    -200, 300,   0);
setMoveKey(   spep_0+125,   1,    -210, 290,   0);
setMoveKey(   spep_0+128,   1,    -200, 300,   0);
setMoveKey(   spep_0+130,   1,    -210, 310,   0);
setMoveKey(   spep_0+133,   1,    -200, 300,   0);
setMoveKey(   spep_0+137,   1,    -210, 290,   0);
setMoveKey(   spep_0+139,   1,    -200, 300,   0);
setMoveKey(   spep_0+142,   1,    -210, 310,   0);
setMoveKey(   spep_0+143,   1,    -200, 300,   0);
setMoveKey(   spep_0+146,   1,    -210, 290,   0);
setMoveKey(   spep_0+148,   1,    -200, 300,   0);
setMoveKey(   spep_0+150,   1,    -210, 310,   0);
setMoveKey(   spep_0+153,   1,    -200, 300,   0);
setMoveKey(   spep_0+154,   1,    -210, 290,   0);
setMoveKey(   spep_0+152,   1,    -220, 300,   0);
setMoveKey(   spep_0+164,   1,    -230, 310,   0);

setScaleKey(   spep_0+39,   1, 2.5, 2.5);
setScaleKey(   spep_0+70,   1, 1.0, 1.0);

setScaleKey(   spep_0+152,   1, 1.0, 1.0);
setScaleKey(   spep_0+164,   1, 0.8, 0.8); --

setRotateKey(   spep_0,   1, 0);
setRotateKey(   spep_0+105,   1, 0);
setRotateKey(   spep_0+106,   1, -20);
setRotateKey(   spep_0+220,   1, -20);
setShakeChara(spep_0+107,   1, 113, 20);

setDisp( spep_0+220, 1, 0);

-- ** 次の準備 ** --
spep_1 = spep_0+220;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 210); -- ベース暗め　背景


------------------------------------------------------
-- 岩着地〜手前に(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_1 = entryEffect( spep_1, SP_02, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_1, kidame_1, 1, 1);
setEffAlphaKey( spep_1, kidame_1, 255);
setEffShake(spep_1+40, kidame_1, 60, 10);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.8, 1.8);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- 書き文字エントリー --

-- ** 音 ** --
playSe( spep_1+42, 1002);
playSe( spep_1+42, 1012);

playSe( spep_1+70, 8);

entryFade( spep_1+38, 2, 3, 6, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1+100;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- パンチ移動(80F)　
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_2 = entryEffect( spep_2, SP_03, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_2, kidame_2, 1, 1);
setEffAlphaKey( spep_2, kidame_2, 255);
setEffShake(spep_2, kidame_2, 80, 15);


-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_2, 920, 80, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_2, ryusen2, 1.8, 1.8);
setEffRotateKey( spep_2, ryusen2, 40);

-- ** 音 ** --
playSe( spep_2+11, SE_04);


-- ** 次の準備 ** --
spep_4 = spep_2+80;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 150, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- パンチ着弾(150F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi4 = entryEffect( spep_4, SP_04, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_4, hasi4, 1, 1);
setEffAlphaKey( spep_4, hasi4, 255);
setEffShake(spep_4, hasi4, 68, 5);
setEffShake(spep_4+68, hasi4, 62, 30);


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 56, 0x100,  -1, 0,  300,  -300); -- 集中線
setEffMoveKey( spep_4, shuchusen4, 300, -300, 0);
setEffScaleKey( spep_4, shuchusen4, 2.0, 2.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

shuchusen4a = entryEffectLife( spep_4+70, 906, 80, 0x100,  -1, 0,  300,  -300); -- 集中線
setEffMoveKey( spep_4+70, shuchusen4a, 300, -300, 0);
setEffScaleKey( spep_4+70, shuchusen4a, 2.0, 2.0);
setEffAlphaKey( spep_4+70, shuchusen4a, 255);
setEffRotateKey( spep_4+70, shuchusen4a, 0);


entryFade( spep_4+62, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade


-- ** 音 ** --
playSe( spep_4+23, SE_06);
playSe( spep_4+68, 1068);


-- ** 次の準備 ** --
spep_3 = spep_4+150;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- カードカットイン
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3+5, SE_05);

-- ** 次の準備 ** --
spep_5 = spep_3+90;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 正面(120F)
------------------------------------------------------
-- ** エフェクト等 ** --
tama5 = entryEffect( spep_5, SP_05, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_5, tama5, 1, 1);
setEffMoveKey( spep_5, stama5, 0, 0, 0);
setEffAlphaKey( spep_5, tama5, 255);
setEffShake(spep_5, tama5, 120, 10);


-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.8, 1.8);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);


speff = entryEffect(  spep_5+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_5+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_5+20, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep_5+20, ctgogo, 70, 10);
setEffScaleKey(spep_5+20, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_5+20, ctgogo, 0);
setEffAlphaKey( spep_5+20, ctgogo, 255);


-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_5+10, SE_04);

-- ** 次の準備 ** --
spep_6 = spep_5+120;
entryFade( spep_6-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 正面に放つ(80F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi6 = entryEffect( spep_6, SP_06, 0x00, -1, 0, 0, 0);   --発射　50f
setEffMoveKey( spep_6, hasi6, 0, 0, 0);
setEffScaleKey( spep_6, hasi6, 1, 1);
setEffAlphaKey( spep_6, hasi6, 255);
setEffShake(spep_6, hasi6, 80, 20);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.8, 1.8);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 音 ** --
playSe( spep_6+5, SE_06);

-- ** 次の準備 ** --
spep_7 = spep_6+80;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 100, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- 45度発射(100F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi7 = entryEffect( spep_7, SP_07, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_7, hasi7, 1, 1);
setEffAlphaKey( spep_7, hasi7, 255);
setEffShake(spep_7, hasi7, 100, 20);



-- ** 流線(横) ** --
ryusen7 = entryEffectLife( spep_7, 921, 100, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_7, ryusen7, 1.8, 1.8);
setEffRotateKey( spep_7, ryusen7, -120);

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_7, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen7, 2.0, 2.0);
setEffAlphaKey( spep_7, shuchusen7, 255);
setEffRotateKey( spep_7, shuchusen7, 0);

-- 書き文字エントリー
ctZuo7 = entryEffectLife( spep_7, 10014, 100, 0x100, -1, 0, 200, 400); -- ズオッ
setEffRotateKey(spep_7, ctZuo7, 60);
setEffShake(spep_7, ctZuo7, 100, 30);
setEffAlphaKey(spep_7, ctZuo7, 255);
setEffScaleKey(spep_7, ctZuo7, 	2.5, 2.5);
setEffScaleKey(spep_7+100, ctZuo7, 2.5, 2.5);

-- ** 音 ** --
playSe( spep_7+5, SE_06);

-- ** 次の準備 ** --
spep_8 = spep_7+100;
entryFade( spep_8-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 70, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- ビーム着弾(70F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi8 = entryEffect( spep_8, SP_08, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_8, hasi8, 1, 1);
setEffAlphaKey( spep_8, hasi8, 255);
setEffShake(spep_8, hasi8, 70, 20);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_8, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_8, shuchusen8, 2.0, 2.0);
setEffAlphaKey( spep_8, shuchusen8, 255);
setEffRotateKey( spep_8, shuchusen8, 0);

-- ** 音 ** --
playSe( spep_8, SE_07);
playSe( spep_8+40, SE_09);

-- ** 次の準備 ** --
spep_9 = spep_8+70;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 100, 0, 0, 0, 0, 210); -- ベース暗め　背景


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

-- ** エフェクト等 ** --
hasi9 = entryEffect( spep_9, 1589, 0x80, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_9, hasi9, 1, 1);
setEffAlphaKey( spep_9, hasi9, 255);

-- ** 音 ** --
playSe( spep_9+10, SE_10);

-- ダメージ表示
dealDamage( spep_9+26);
entryFade( spep_9+130, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+140);

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

-- ** 背景 ** --
entryFadeBg( spep_0, 0, 106, 0, 0, 0, 0, 210); -- ベース暗め　背景
entryFadeBg( spep_0+106, 0, 114, 0, 0, 0, 0, 230); -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffect( spep_0, SP_01x, 0, -1, 0, 0, 60);   --気溜め１　19f
setEffScaleKey( spep_0, kidame, 1.0, 1.0);
--setEffScaleKey( spep_0+20, kidame, 0.0, 0.0);
--setEffScaleKey( spep_0+21, kidame, 0.0, 0.0);
setEffScaleKey( spep_0+200, kidame, 1.0, 1.0);
setEffAlphaKey( spep_0, kidame, 255);

setDisp( spep_0, 1, 1);
changeAnime( spep_0, 1, 102);
changeAnime( spep_0+104, 1, 106);

setMoveKey(   spep_0+20,   1,    250, -250,   0);

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0, 906, 65, 0x100,  -1, -200,  200,  0); -- 集中線
setEffMoveKey( spep_0, shuchusen, -200, 200, 0);
setEffScaleKey( spep_0, shuchusen, 1.6, 1.6);
setEffAlphaKey( spep_0, shuchusen, 255);
setEffRotateKey( spep_0, shuchusen, 0);

shuchusen_a = entryEffectLife( spep_0+66, 906, 38, 0x100,  -1, 50,  0,  0); -- 集中線
setEffMoveKey( spep_0+66, shuchusen_a, 0, 0, 0);
setEffScaleKey( spep_0+66, shuchusen_a, 1.7, 1.7);
setEffAlphaKey( spep_0+66, shuchusen_a, 255);
setEffRotateKey( spep_0+66, shuchusen_a, 0);

shuchusen_b = entryEffectLife( spep_0+104, 906, 114, 0x100,  -1, -200,  200,  0); -- 集中線
setEffMoveKey( spep_0+104, shuchusen_b, -200, 200, 0);
setEffScaleKey( spep_0+104, shuchusen_b, 1.6, 1.6);
setEffAlphaKey( spep_0+104, shuchusen_b, 255);
setEffRotateKey( spep_0+104, shuchusen_b, 0);

-- ** 音 ** --
playSe( spep_0+46, 43);
--[[
playSe( spep_0+100, 1009);
playSe( spep_0+105, 1009);
playSe( spep_0+110, 1009);
playSe( spep_0+115, 1009);
playSe( spep_0+120, 1009);
playSe( spep_0+125, 1009);
playSe( spep_0+130, 1009);
playSe( spep_0+135, 1009);
playSe( spep_0+140, 1009);
]]
--4.11調整
SE001 = playSe( spep_0+100, 1009);
stopSe(spep_0+110,SE001,6);
SE002 = playSe( spep_0+105, 1009);
stopSe(spep_0+115,SE002,6);
SE003 = playSe( spep_0+110, 1009);
stopSe(spep_0+120,SE003,6);
SE004 = playSe( spep_0+115, 1009);
stopSe(spep_0+125,SE004,6);
SE005 = playSe( spep_0+120, 1009);
stopSe(spep_0+130,SE005,6);
SE006 = playSe( spep_0+125, 1009);
stopSe(spep_0+135,SE006,6);
SE007 = playSe( spep_0+130, 1009);
stopSe(spep_0+140,SE007,6);
SE008 = playSe( spep_0+135, 1009);
stopSe(spep_0+145,SE008,6);
SE009 = playSe( spep_0+140, 1009);
playSe( spep_0+170, SE_09);

entryFade( spep_0+104, 0, 3, 8, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade
entryFade( spep_0+160, 0, 3, 8, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 21; --エンドフェイズのフレーム数を置き換える

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

setMoveKey(  SP_dodge,    1,  250, -250,   0);
setScaleKey(  SP_dodge,   1,   1.7,  1.7);

setMoveKey(   SP_dodge+8,   1,   250, -250,  0);
setScaleKey(   SP_dodge+8,   1, 1.7, 1.7);
setRotateKey(   SP_dodge+8,   1, 0);

setDisp(  SP_dodge+9,    1,  0);
--changeAnime(  SP_dodge+9,    1,  102);
setMoveKey(  SP_dodge+9,    1,  0,  -60000,   0);
setScaleKey( SP_dodge+9,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+9,   1, 0);

setDisp(  SP_dodge+10,    1,  0);
setMoveKey(  SP_dodge+10,    1,  0,  -60000,   0);
setScaleKey( SP_dodge+10,    1,  1.7, 1.7);
setRotateKey(   SP_dodge+10,   1, 0);

endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避じゃない
------------------------------------------------------
setMoveKey(   spep_0+40,   1,    250, -250,   0);
setMoveKey(   spep_0+70,   1,    -200, 300,   0);

setMoveKey(   spep_0+106,   1,    -210, 290,   0);
setMoveKey(   spep_0+108,   1,    -200, 300,   0);
setMoveKey(   spep_0+111,   1,    -210, 310,   0);
setMoveKey(   spep_0+112,   1,    -200, 300,   0);
setMoveKey(   spep_0+115,   1,    -210, 290,   0);
setMoveKey(   spep_0+118,   1,    -200, 300,   0);
setMoveKey(   spep_0+120,   1,    -210, 310,   0);
setMoveKey(   spep_0+123,   1,    -200, 300,   0);
setMoveKey(   spep_0+125,   1,    -210, 290,   0);
setMoveKey(   spep_0+128,   1,    -200, 300,   0);
setMoveKey(   spep_0+130,   1,    -210, 310,   0);
setMoveKey(   spep_0+133,   1,    -200, 300,   0);
setMoveKey(   spep_0+137,   1,    -210, 290,   0);
setMoveKey(   spep_0+139,   1,    -200, 300,   0);
setMoveKey(   spep_0+142,   1,    -210, 310,   0);
setMoveKey(   spep_0+143,   1,    -200, 300,   0);
setMoveKey(   spep_0+146,   1,    -210, 290,   0);
setMoveKey(   spep_0+148,   1,    -200, 300,   0);
setMoveKey(   spep_0+150,   1,    -210, 310,   0);
setMoveKey(   spep_0+153,   1,    -200, 300,   0);
setMoveKey(   spep_0+154,   1,    -210, 290,   0);
setMoveKey(   spep_0+152,   1,    -220, 300,   0);
setMoveKey(   spep_0+164,   1,    -230, 310,   0);

setScaleKey(   spep_0+39,   1, 2.5, 2.5);
setScaleKey(   spep_0+70,   1, 1.0, 1.0);

setScaleKey(   spep_0+152,   1, 1.0, 1.0);
setScaleKey(   spep_0+164,   1, 0.8, 0.8); --

setRotateKey(   spep_0,   1, 0);
setRotateKey(   spep_0+105,   1, 0);
setRotateKey(   spep_0+106,   1, -20);
setRotateKey(   spep_0+220,   1, -20);
setShakeChara(spep_0+107,   1, 113, 20);

setDisp( spep_0+220, 1, 0);

-- ** 次の準備 ** --
spep_1 = spep_0+220;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 100, 0, 0, 0, 0, 210); -- ベース暗め　背景


------------------------------------------------------
-- 岩着地〜手前に(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_1 = entryEffect( spep_1, SP_02x, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_1, kidame_1, 1, 1);
setEffAlphaKey( spep_1, kidame_1, 255);
setEffShake(spep_1+40, kidame_1, 60, 10);

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_1, shuchusen1, 0, 0, 0);
setEffScaleKey( spep_1, shuchusen1, 1.8, 1.8);
setEffAlphaKey( spep_1, shuchusen1, 255);
setEffRotateKey( spep_1, shuchusen1, 0);

-- 書き文字エントリー --

-- ** 音 ** --
playSe( spep_1+42, 1002);
playSe( spep_1+42, 1012);

playSe( spep_1+70, 8);

entryFade( spep_1+38, 2, 3, 6, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1+100;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 80, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- パンチ移動(80F)　
------------------------------------------------------
-- ** エフェクト等 ** --
kidame_2 = entryEffect( spep_2, SP_03x, 0, -1, 0, 0, 0);   --気溜め２　50f
setEffScaleKey( spep_2, kidame_2, 1, 1);
setEffAlphaKey( spep_2, kidame_2, 255);
setEffShake(spep_2, kidame_2, 80, 15);


-- ** 流線(横) ** --
ryusen2 = entryEffectLife( spep_2, 920, 80, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_2, ryusen2, 1.8, 1.8);
setEffRotateKey( spep_2, ryusen2, 40);

-- ** 音 ** --
playSe( spep_2+11, SE_04);


-- ** 次の準備 ** --
spep_4 = spep_2+80;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 150, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- パンチ着弾(150F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi4 = entryEffect( spep_4, SP_04x, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_4, hasi4, 1, 1);
setEffAlphaKey( spep_4, hasi4, 255);
setEffShake(spep_4, hasi4, 68, 5);
setEffShake(spep_4+68, hasi4, 62, 30);


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 56, 0x100,  -1, 0,  300,  -300); -- 集中線
setEffMoveKey( spep_4, shuchusen4, 300, -300, 0);
setEffScaleKey( spep_4, shuchusen4, 2.0, 2.0);
setEffAlphaKey( spep_4, shuchusen4, 255);
setEffRotateKey( spep_4, shuchusen4, 0);

shuchusen4a = entryEffectLife( spep_4+70, 906, 80, 0x100,  -1, 0,  300,  -300); -- 集中線
setEffMoveKey( spep_4+70, shuchusen4a, 300, -300, 0);
setEffScaleKey( spep_4+70, shuchusen4a, 2.0, 2.0);
setEffAlphaKey( spep_4+70, shuchusen4a, 255);
setEffRotateKey( spep_4+70, shuchusen4a, 0);


entryFade( spep_4+62, 2, 4, 4, fcolor_r, fcolor_g, fcolor_b, 240);     -- white fade


-- ** 音 ** --
playSe( spep_4+23, SE_06);
playSe( spep_4+68, 1068);

-- ** 次の準備 ** --
spep_3 = spep_4+150;
entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- カードカットイン
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_3, shuchusen3, 0, 0, 0);
setEffScaleKey( spep_3, shuchusen3, 1.8, 1.8);
setEffAlphaKey( spep_3, shuchusen3, 255);
setEffRotateKey( spep_3, shuchusen3, 0);

-- ** 音 ** --
playSe( spep_3+5, SE_05);

-- ** 次の準備 ** --
spep_5 = spep_3+90;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 正面(120F)
------------------------------------------------------
-- ** エフェクト等 ** --
tama5 = entryEffect( spep_5, SP_05x, 0, -1, 0, 0, 0);   --迫る〜命中　50f
setEffScaleKey( spep_5, tama5, -1, 1);
setEffMoveKey( spep_5, stama5, 0, 0, 0);
setEffAlphaKey( spep_5, tama5, 255);
setEffShake(spep_5, tama5, 120, 10);


-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5, 906, 120, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_5, shuchusen5, 0, 0, 0);
setEffScaleKey( spep_5, shuchusen5, 1.8, 1.8);
setEffAlphaKey( spep_5, shuchusen5, 255);
setEffRotateKey( spep_5, shuchusen5, 0);


--speff = entryEffect(  spep_5+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_5+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_5+20, 190006, 70, 0x100, -1, 0, 0,530, 0);    -- ゴゴゴゴ
setEffShake(spep_5+20, ctgogo, 70, 10);
setEffScaleKey(spep_5+20, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_5+20, ctgogo, 0);
setEffAlphaKey( spep_5+20, ctgogo, 255);


-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_5+10, SE_04);

-- ** 次の準備 ** --
spep_6 = spep_5+120;
entryFade( spep_6-6, 3, 11, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景

------------------------------------------------------
-- 正面に放つ(80F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi6 = entryEffect( spep_6, SP_06x, 0x00, -1, 0, 0, 0);   --発射　50f
setEffMoveKey( spep_6, hasi6, 0, 0, 0);
setEffScaleKey( spep_6, hasi6, -1, 1);
setEffAlphaKey( spep_6, hasi6, 255);
setEffShake(spep_6, hasi6, 80, 20);

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6, 906, 80, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_6, shuchusen6, 0, 0, 0);
setEffScaleKey( spep_6, shuchusen6, 1.8, 1.8);
setEffAlphaKey( spep_6, shuchusen6, 255);
setEffRotateKey( spep_6, shuchusen6, 0);

-- ** 音 ** --
playSe( spep_6+5, SE_06);

-- ** 次の準備 ** --
spep_7 = spep_6+80;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 100, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- 45度発射(100F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi7 = entryEffect( spep_7, SP_07x, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_7, hasi7, 1, 1);
setEffAlphaKey( spep_7, hasi7, 255);
setEffShake(spep_7, hasi7, 100, 20);



-- ** 流線(横) ** --
ryusen7 = entryEffectLife( spep_7, 921, 100, 0x80,  -1,  0,  0,  0); -- 横線
setEffScaleKey( spep_7, ryusen7, 1.8, 1.8);
setEffRotateKey( spep_7, ryusen7, -120);

-- ** 集中線 ** --
shuchusen7 = entryEffectLife( spep_7, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_7, shuchusen7, 0, 0, 0);
setEffScaleKey( spep_7, shuchusen7, 2.0, 2.0);
setEffAlphaKey( spep_7, shuchusen7, 255);
setEffRotateKey( spep_7, shuchusen7, 0);

-- 書き文字エントリー
ctZuo7 = entryEffectLife( spep_7, 10014, 100, 0x100, -1, 0, 200, 400); -- ズオッ
setEffRotateKey(spep_7, ctZuo7, 0);
setEffShake(spep_7, ctZuo7, 100, 30);
setEffAlphaKey(spep_7, ctZuo7, 255);
setEffScaleKey(spep_7, ctZuo7, 	2.5, 2.5);
setEffScaleKey(spep_7+100, ctZuo7, 2.5, 2.5);

-- ** 音 ** --
playSe( spep_7+5, SE_06);

-- ** 次の準備 ** --
spep_8 = spep_7+100;
entryFade( spep_8-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 70, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- ビーム着弾(70F)　
------------------------------------------------------
-- ** エフェクト等 ** --
hasi8 = entryEffect( spep_8, SP_08, 0x00, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_8, hasi8, 1, 1);
setEffAlphaKey( spep_8, hasi8, 255);
setEffShake(spep_8, hasi8, 70, 20);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8, 906, 100, 0x100,  -1, 0,  0,  0); -- 集中線
setEffMoveKey( spep_8, shuchusen8, 0, 0, 0);
setEffScaleKey( spep_8, shuchusen8, 2.0, 2.0);
setEffAlphaKey( spep_8, shuchusen8, 255);
setEffRotateKey( spep_8, shuchusen8, 0);

-- ** 音 ** --
playSe( spep_8, SE_07);
playSe( spep_8+40, SE_09);
-- ** 次の準備 ** --
spep_9 = spep_8+70;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 100, 0, 0, 0, 0, 210); -- ベース暗め　背景


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

-- ** エフェクト等 ** --
hasi9 = entryEffect( spep_9, 1589, 0x80, -1, 0, 0, 0);   --発射　50f
setEffScaleKey( spep_9, hasi9, 1, 1);
setEffAlphaKey( spep_9, hasi9, 255);

-- ** 音 ** --
playSe( spep_9+10, SE_10);

-- ダメージ表示
dealDamage( spep_9+26);
entryFade( spep_9+130, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_9+140);

end


