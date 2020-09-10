

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

SE_01 = 1035; --気を貯める＆カットイン
SE_02 = 1036; --気が広がる
SE_03 = 1034; --催眠術
SE_04 = 1009; --パンチ強
SE_05 = 1000; --パンチ
SE_06 = 1006; --パンチ弱
SE_07 = 1010; --キック強
SE_08 = 1013; --キック弱
SE_09 = 1001; --キック弱
SE_10 = 1027; --催眠術飛ばし
SE_11 = 1038; --封印系ビリビリ
SE_12 = 15; --キラ
SE_13 = 1053; --飛んでく
SE_14 = 1047; --ぼふん
SE_15 = 1043; --ビリビリ



SP_01 = 150525; --溜め
SP_02 = 150527; --催眠術
SP_03 = 150528;	--波紋1
SP_04 = 150529; --波紋2
SP_05 = 150530; --連打
SP_06 = 150526; --SP_01の敵用
SP_07 = 150531; --SP_05の敵用
SP_08 = 150534; --もや背景


--setMoveKey(   0,   0,    0, -1000,   0);
--setMoveKey(   1,   0,    0, 0,   0);

------------------------------------------------------
-- 気溜め
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);

-- ** キャラクター指定 ** --
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 17); --溜めポーズ
setMoveKey( 0, 0, 0, 0, 0);
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);
setScaleKey( 0, 0, 1.7, 1.7);
setScaleKey( 1, 0, 1.7, 1.7);
setScaleKey( 2, 0, 1.7, 1.7);
setScaleKey( 3, 0, 1.7, 1.7);
setScaleKey( 4, 0, 1.7, 1.7);
setScaleKey( 5, 0, 1.7, 1.7);
setScaleKey( 87, 0, 1.7, 1.7);

-- ** エフェクト等 ** --
entryEffect( 0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect( 0,   1500,   0,    -1,  0,  0,  0);    -- eff_001


aura = entryEffectLife( 0,  311, 87, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 87, 10);



-- ** 溜めエフェクト ** --
--tame = entryEffectLife( 0, SP_01, 87, 0x100, -1, 0, 0, 0); --溜め

-- ** 顔＆セリフカットイン ** --
speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** オーラ&集中線エフェクト ** --
entryEffectLife( 0, 1503, 87, 0x80, -1, 0, 0, 0); -- eff_004 (気)
entryEffectLife( 0, 1502, 87, 0x80, -1, 0, 0, 0); -- eff_003 (気)

-- ** ホワイトフェード ** --
entryFade( 80, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --
playSe( 0, SE_01);

spep_1 = 90;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- ** キャラクター指定 ** --
setDisp( spep_1, 0, 0); --味方非表示
setMoveKey( spep_1-1, 0, 0, 0);
setMoveKey( spep_1, 0, 2000, 2000);

speff2 = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線

-- ** ホワイトフェード ** --
entryFade( spep_1+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1, SE_01);

spep_2 = (spep_1+92);

------------------------------------------------------
-- 催眠術(182F)
------------------------------------------------------
-- ** 催眠エフェクト ** --
saimin = entryEffect( spep_2, SP_02, 0, -1, 0, -470, 600); --催眠術
setEffScaleKey( spep_2, saimin, 1, 1);
setEffShake( spep_2+69, saimin, 38, 15);

-- ** 集中線 ** --
syutyu = entryEffectLife( spep_2, 906, 100, 0x100, -1, 0, 0, 0); -- 集中線
setEffScaleKey( spep_2, syutyu, 2, 2);
setEffScaleKey( spep_2+68, syutyu, 2, 2);
setEffScaleKey( spep_2+69, syutyu, 1, 1);

-- ** ホワイトフェード ** --
entryFade( spep_2+65, 4, 2, 3, fcolor_r, fcolor_g, fcolor_b, 200); -- white fade
entryFade( spep_2+98, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
--stop1 = playSe( spep_2, SE_12);

playSe( spep_2+2, SE_03);
playSe( spep_2+52, SE_03);
playSe( spep_2+69, SE_14);


spep_3 = (spep_2+107);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 240; --エンドフェイズのフレーム数を置き換える
stopSe(182, stop1, 7);

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge+4, seID, 5);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);

endPhase(SP_dodge+10);

do return end
else end



------------------------------------------------------
-- やられ(289F)
------------------------------------------------------

-- ** 波紋エフェクト1 ** --
moya = entryEffectLife( spep_3, SP_08, 100, 0x80, -1, 0, 0, 0); --もや背景
hamon = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0); --波紋1

-- ** キャラクター指定 ** --
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 101);
setMoveKey( spep_3, 1, 140, 0, 0);
setScaleKey( spep_3, 1, 2.5, 2.5);
setScaleKey( spep_3+10, 1, 2, 2);
setScaleKey( spep_3+35, 1, 1.7, 1.7);

-- ** 集中線 ** --
syutyu = entryEffectLife( spep_3, 906, 36, 0x100, -1, 0, 0, 0); -- 集中線
setEffScaleKey( spep_3, syutyu, 2, 2);

-- ** 集中線 ** --
syutyu2 = entryEffectLife( spep_3+38, 906, 63, 0x100, -1, 0, 0, 0); -- 集中線
setEffScaleKey( spep_3+38, syutyu2, 1.5, 1.5);
setEffMoveKey( spep_3+38, syutyu2, 50, 0);


-- ** キャラクター指定 ** --
--changeAnime( spep_3+38, 1, 108);
--setRotateKey( spep_3+38, 1, -20);
--setRotateKey( spep_3+39, 1, 0);
--setRotateKey( spep_3+42, 1, 0);
changeAnime( spep_3+38, 1, 106);
setRotateKey( spep_3+38, 1, -20);
setRotateKey( spep_3+101, 1, -17);

setMoveKey( spep_3+38, 1, 140, 0, 0);
setMoveKey( spep_3+43, 1, 140, 0, 0);
setMoveKey( spep_3+101, 1, 145, -10, 0);

setScaleKey( spep_3+38, 1, 1.7, 1.7);
setScaleKey( spep_3+101, 1, 1.7, 1.7);


-- ** ホワイトフェード ** --
entryFade( spep_3+34, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_3+86, 10, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_03);
--playSe( spep_3+30, SE_03);
playSe( spep_3+41, SE_15);

spep_4 = (spep_3+103);


------------------------------------------------------
-- 連撃
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_4, 0, 203, 0, 0, 0, 0, 150); -- ベース暗め　背景

-- ** キャラクター指定 ** --
setScaleKey( spep_4-1, 1, 1.7, 1.7);
setScaleKey( spep_4+87, 1, 1.7, 1.7);


setMoveKey( spep_4-1, 1, 145, -5, 0);
setRotateKey( spep_4+25, 1, -17);

setMoveKey( spep_4, 1, -70, 0, 0);
setMoveKey( spep_4+6, 1, 50, 0, 0); --やられ移動
setMoveKey( spep_4+24, 1, 70, 0, 0); --やられ移動

changeAnime( spep_4+25, 1, 108); --くの字
setMoveKey( spep_4+25, 1, 100, 0, 0);
setRotateKey( spep_4+25, 1, 0);
setMoveKey( spep_4+61, 1, 160, 0, 0);
setShakeChara( spep_4+25, 1, 55, 15);

setMoveKey( spep_4+87, 1, 160, 0, 0);
setMoveKey( spep_4+88, 1, 170, 70, 0);

setMoveKey( spep_4+115, 1, 265, 362, 0);
setScaleKey( spep_4+115, 1, 0.01, 0.01);

setDisp( spep_4+115, 1, 0);


-- ** 波紋エフェクト1 ** --
rengeki = entryEffect( spep_4, SP_05, 0, -1, 0, 0, 0); --連撃

-- ** 流線 ** --
entryEffectLife( spep_4, 920, 86, 0x80, -1, 0, 0, 0); -- 流線


okushuchusen = entryEffectLife( spep_4+86, 924, 30, 0x80, -1, 0, -200, -100);   -- 奥行き線
setEffScaleKey( spep_4+86, okushuchusen, 1.2, 1.2);
setEffRotateKey( spep_4+86, okushuchusen, -45);

--[[
naname = entryEffectLife( spep_4+86, 921, 29, 0x80,  -1,  0,  0,  0); -- 斜め流線
setEffRotateKey( spep_4+86, naname, -45);
setEffScaleKey( spep_4+86, naname, 1.6, 1.6);
setEffAlphaKey ( spep_4+86, naname, 255);
setEffAlphaKey ( spep_4+114, naname, 255);
setEffAlphaKey ( spep_4+120, naname, 0);
]]--

-- ** 集中線 ** --
syutyu3 = entryEffectLife( spep_4, 906, 183, 0x100, -1, 0, 0, 0); -- 集中線
setEffScaleKey( spep_4, syutyu3, 2, 2);
setEffScaleKey( spep_4+86, syutyu3, 2, 2);
setEffScaleKey( spep_4+87, syutyu3, 1.5, 1.5);


-- ** 書き文字エントリ ** --
dogaga = entryEffectLife( spep_4+25, 10017, 58, 0x100, -1, 0, 0, 270); --ドガガ
setEffScaleKey( spep_4+25, dogaga, 2, 2);
setEffRotateKey( spep_4+25, dogaga, 20);
setEffRotateKey( spep_4+83, dogaga, 20);
setEffScaleKey( spep_4+83, dogaga, 3, 3);
setEffShake( spep_4+25, dogaga, 83, 15);

baki = entryEffectLife( spep_4+84, 10020, 20, 0x100, -1, 0, 0, 280); --バキ
setEffScaleKey( spep_4+87, baki, 1, 1);
setEffScaleKey( spep_4+88, baki, 1, 1);
setEffRotateKey( spep_4+87, baki, 0);
setEffRotateKey( spep_4+88, baki, 0);

setEffRotateKey( spep_4+89, baki, 15);
setEffScaleKey( spep_4+89, baki, 2, 2);
setEffRotateKey( spep_4+91, baki, 15);
setEffScaleKey( spep_4+91, baki, 2, 2);

setEffRotateKey( spep_4+92, baki, 10);
setEffScaleKey( spep_4+92, baki, 1.8, 1.8);
setEffRotateKey( spep_4+93, baki, 10);
setEffScaleKey( spep_4+93, baki, 1.8, 1.8);
setEffRotateKey( spep_4+95, baki, 15);
setEffScaleKey( spep_4+95, baki, 1.8, 1.8);
setEffRotateKey( spep_4+96, baki, 15);
setEffScaleKey( spep_4+96, baki, 1.8, 1.8);
setEffRotateKey( spep_4+97, baki, 10);
setEffScaleKey( spep_4+97, baki, 1.8, 1.8);
setEffRotateKey( spep_4+102, baki, 10);
setEffScaleKey( spep_4+102, baki, 1.8, 1.8);

setEffAlphaKey ( spep_4+84, baki, 255);
setEffAlphaKey ( spep_4+104, baki, 0);


-- ** ホワイトフェード ** --
entryFade( spep_4+25, 0, 5, 5, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
entryFade( spep_4+84, 0, 2, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+25, SE_04);
playSe( spep_4+37, SE_05);
playSe( spep_4+45, SE_06);
playSe( spep_4+61, SE_07); --453
playSe( spep_4+66, SE_08); --458
playSe( spep_4+69, SE_09); --461
playSe( spep_4+73, SE_08); --465
playSe( spep_4+88, SE_07); --480
playSe( spep_4+95, SE_13);


dealDamage( spep_4+117);
endPhase( spep_4+183);

else


------------------------------------------------------
-- 気溜め
------------------------------------------------------

setVisibleUI(0, 0);

-- ** キャラクター指定 ** --
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 17); --溜めポーズ
setMoveKey( 0, 0, 0, 0, 0);
setMoveKey( 1, 0, 0, 0, 0);
setMoveKey( 2, 0, 0, 0, 0);
setMoveKey( 3, 0, 0, 0, 0);
setMoveKey( 4, 0, 0, 0, 0);
setMoveKey( 5, 0, 0, 0, 0);
setScaleKey( 0, 0, 1.7, 1.7);
setScaleKey( 1, 0, 1.7, 1.7);
setScaleKey( 2, 0, 1.7, 1.7);
setScaleKey( 3, 0, 1.7, 1.7);
setScaleKey( 4, 0, 1.7, 1.7);
setScaleKey( 5, 0, 1.7, 1.7);
setScaleKey( 87, 0, 1.7, 1.7);

-- ** エフェクト等 ** --
entryEffect( 0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect( 0,   1500,   0,    -1,  0,  0,  0);    -- eff_001


aura = entryEffectLife( 0,  311, 87, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setShakeChara( 0, 0, 87, 10);



-- ** 溜めエフェクト ** --
--tame = entryEffectLife( 0, SP_01, 87, 0x100, -1, 0, 0, 0); --溜め

-- ** 顔＆セリフカットイン ** --
--speff = entryEffect( 0, 1504, 0, -1, 0, 0, 0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                     -- カットイン差し替え
--speff = entryEffect( 0, 1505, 0, -1, 0, 0, 0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                     -- セリフ差し替え

-- ** オーラ&集中線エフェクト ** --
entryEffectLife( 0, 1503, 87, 0x80, -1, 0, 0, 0); -- eff_004 (気)
entryEffectLife( 0, 1502, 87, 0x80, -1, 0, 0, 0); -- eff_003 (気)

-- ** ホワイトフェード ** --
entryFade( 80, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade


-- ** 音 ** --
playSe( 0, SE_01);

spep_1 = 90;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
-- ** キャラクター指定 ** --
setDisp( spep_1, 0, 0); --味方非表示
setMoveKey( spep_1-1, 0, 0, 0);
setMoveKey( spep_1, 0, 2000, 2000);

speff2 = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線

-- ** ホワイトフェード ** --
entryFade( spep_1+83, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1, SE_01);

spep_2 = (spep_1+92);

------------------------------------------------------
-- 催眠術(182F)
------------------------------------------------------
-- ** 催眠エフェクト ** --
saimin = entryEffect( spep_2, SP_02, 0, -1, 0, 470, 600); --催眠術
setEffScaleKey( spep_2, saimin, -1, 1);
setEffShake( spep_2+69, saimin, 38, 15);

-- ** 集中線 ** --
syutyu = entryEffectLife( spep_2, 906, 100, 0x100, -1, 0, 0, 0); -- 集中線
setEffScaleKey( spep_2, syutyu, 2, 2);
setEffScaleKey( spep_2+68, syutyu, 2, 2);
setEffScaleKey( spep_2+69, syutyu, 1, 1);

-- ** ホワイトフェード ** --
entryFade( spep_2+65, 4, 2, 3, fcolor_r, fcolor_g, fcolor_b, 200); -- white fade
entryFade( spep_2+98, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_2+2, SE_03);
playSe( spep_2+52, SE_03);
playSe( spep_2+69, SE_14);

spep_3 = (spep_2+107);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 240; --エンドフェイズのフレーム数を置き換える
stopSe(182, stop1, 7);

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge+4, seID, 5);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,   -150,  -92,   0);
setMoveKey(  SP_dodge+9,    0,   -1100,  -92,   0);

endPhase(SP_dodge+10);

do return end
else end



------------------------------------------------------
-- やられ(289F)
------------------------------------------------------

-- ** 波紋エフェクト1 ** --
moya = entryEffectLife( spep_3, SP_08, 100, 0x80, -1, 0, 0, 0); --もや背景
hamon = entryEffect( spep_3, SP_04, 0x100, -1, 0, 0, 0); --波紋1

-- ** キャラクター指定 ** --
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 101);
setMoveKey( spep_3, 1, 140, 0, 0);
setScaleKey( spep_3, 1, 2.5, 2.5);
setScaleKey( spep_3+10, 1, 2, 2);
setScaleKey( spep_3+35, 1, 1.7, 1.7);

-- ** 集中線 ** --
syutyu = entryEffectLife( spep_3, 906, 36, 0x100, -1, 0, 0, 0); -- 集中線
setEffScaleKey( spep_3, syutyu, 2, 2);

-- ** 集中線 ** --
syutyu2 = entryEffectLife( spep_3+38, 906, 63, 0x100, -1, 0, 0, 0); -- 集中線
setEffScaleKey( spep_3+38, syutyu2, 1.5, 1.5);
setEffMoveKey( spep_3+38, syutyu2, 50, 0);


-- ** キャラクター指定 ** --
--changeAnime( spep_3+38, 1, 108);
--setRotateKey( spep_3+38, 1, -20);
--setRotateKey( spep_3+39, 1, 0);
--setRotateKey( spep_3+42, 1, 0);
changeAnime( spep_3+38, 1, 106);
setRotateKey( spep_3+38, 1, -20);
setRotateKey( spep_3+101, 1, -17);

setMoveKey( spep_3+38, 1, 140, 0, 0);
setMoveKey( spep_3+43, 1, 140, 0, 0);
setMoveKey( spep_3+101, 1, 145, -10, 0);

setScaleKey( spep_3+38, 1, 1.7, 1.7);
setScaleKey( spep_3+101, 1, 1.7, 1.7);


-- ** ホワイトフェード ** --
entryFade( spep_3+34, 0, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
entryFade( spep_3+86, 10, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_3, SE_03);
--playSe( spep_3+30, SE_03);
playSe( spep_3+41, SE_15);

spep_4 = (spep_3+103);


------------------------------------------------------
-- 連撃
------------------------------------------------------
-- ** 背景 ** --
entryFadeBg( spep_4, 0, 203, 0, 0, 0, 0, 150); -- ベース暗め　背景

-- ** キャラクター指定 ** --
setScaleKey( spep_4-1, 1, 1.7, 1.7);
setScaleKey( spep_4+87, 1, 1.7, 1.7);


setMoveKey( spep_4-1, 1, 145, -5, 0);
setRotateKey( spep_4+25, 1, -17);

setMoveKey( spep_4, 1, -70, 0, 0);
setMoveKey( spep_4+6, 1, 50, 0, 0); --やられ移動
setMoveKey( spep_4+24, 1, 70, 0, 0); --やられ移動

changeAnime( spep_4+25, 1, 108); --くの字
setMoveKey( spep_4+25, 1, 100, 0, 0);
setRotateKey( spep_4+25, 1, 0);
setMoveKey( spep_4+61, 1, 160, 0, 0);
setShakeChara( spep_4+25, 1, 55, 15);

setMoveKey( spep_4+87, 1, 160, 0, 0);
setMoveKey( spep_4+88, 1, 170, 70, 0);

setMoveKey( spep_4+115, 1, 265, 362, 0);
setScaleKey( spep_4+115, 1, 0.01, 0.01);

setDisp( spep_4+115, 1, 0);


-- ** 波紋エフェクト1 ** --
rengeki = entryEffect( spep_4, SP_07, 0, -1, 0, 0, 0); --連撃

-- ** 流線 ** --
entryEffectLife( spep_4, 920, 86, 0x80, -1, 0, 0, 0); -- 流線


okushuchusen = entryEffectLife( spep_4+86, 924, 30, 0x80, -1, 0, -200, -100);   -- 奥行き線
setEffScaleKey( spep_4+86, okushuchusen, 1.2, 1.2);
setEffRotateKey( spep_4+86, okushuchusen, -45);

--[[
naname = entryEffectLife( spep_4+86, 921, 29, 0x80,  -1,  0,  0,  0); -- 斜め流線
setEffRotateKey( spep_4+86, naname, -45);
setEffScaleKey( spep_4+86, naname, 1.6, 1.6);
setEffAlphaKey ( spep_4+86, naname, 255);
setEffAlphaKey ( spep_4+114, naname, 255);
setEffAlphaKey ( spep_4+120, naname, 0);
]]--

-- ** 集中線 ** --
syutyu3 = entryEffectLife( spep_4, 906, 183, 0x100, -1, 0, 0, 0); -- 集中線
setEffScaleKey( spep_4, syutyu3, 2, 2);
setEffScaleKey( spep_4+86, syutyu3, 2, 2);
setEffScaleKey( spep_4+87, syutyu3, 1.5, 1.5);


-- ** 書き文字エントリ ** --
dogaga = entryEffectLife( spep_4+25, 10017, 58, 0x100, -1, 0, 0, 270); --ドガガ
setEffScaleKey( spep_4+25, dogaga, 2, 2);
setEffRotateKey( spep_4+25, dogaga, -20);
setEffRotateKey( spep_4+83, dogaga, -20);
setEffScaleKey( spep_4+83, dogaga, 3, 3);
setEffShake( spep_4+25, dogaga, 83, 15);

baki = entryEffectLife( spep_4+84, 10020, 20, 0x100, -1, 0, 0, 280); --バキ
setEffScaleKey( spep_4+87, baki, 1, 1);
setEffScaleKey( spep_4+88, baki, 1, 1);
setEffRotateKey( spep_4+87, baki, 0);
setEffRotateKey( spep_4+88, baki, 0);

setEffRotateKey( spep_4+89, baki, -15);
setEffScaleKey( spep_4+89, baki, 2, 2);
setEffRotateKey( spep_4+91, baki, -15);
setEffScaleKey( spep_4+91, baki, 2, 2);

setEffRotateKey( spep_4+92, baki, -10);
setEffScaleKey( spep_4+92, baki, 1.8, 1.8);
setEffRotateKey( spep_4+93, baki, -10);
setEffScaleKey( spep_4+93, baki, 1.8, 1.8);
setEffRotateKey( spep_4+95, baki, -15);
setEffScaleKey( spep_4+95, baki, 1.8, 1.8);
setEffRotateKey( spep_4+96, baki, -15);
setEffScaleKey( spep_4+96, baki, 1.8, 1.8);
setEffRotateKey( spep_4+97, baki, -10);
setEffScaleKey( spep_4+97, baki, 1.8, 1.8);
setEffRotateKey( spep_4+102, baki, -10);
setEffScaleKey( spep_4+102, baki, 1.8, 1.8);

setEffAlphaKey ( spep_4+84, baki, 255);
setEffAlphaKey ( spep_4+104, baki, 0);


-- ** ホワイトフェード ** --
entryFade( spep_4+25, 0, 5, 5, fcolor_r, fcolor_g, fcolor_b, 190); -- white fade
entryFade( spep_4+84, 0, 2, 7, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_4+25, SE_04);
playSe( spep_4+37, SE_05);
playSe( spep_4+45, SE_06);
playSe( spep_4+61, SE_07); --453
playSe( spep_4+66, SE_08); --458
playSe( spep_4+69, SE_09); --461
playSe( spep_4+73, SE_08); --465
playSe( spep_4+88, SE_07); --480
playSe( spep_4+95, SE_13);


dealDamage( spep_4+117);

endPhase( spep_4+183);

end