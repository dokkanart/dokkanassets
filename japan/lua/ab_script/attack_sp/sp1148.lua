

print ("[lua]sp1148");
print ("sp_effect_a9_00035");

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
SE_13 = 09;
SE_14 = 09;
SE_15 = 09;
SE_16 = 09;
SE_17 = 09;

--味方側
SP_01 = 151144;--ef_001
SP_02 = 151145;--ef_002
SP_03 = 151146;--ef_003
SP_04 = 151147;--ef_004
SP_05 = 151148;--ef_005
SP_06 = 151149;--ef_006
SP_07 = 151150;--ef_007
SP_08 = 151151;--ef_008
SP_08e = 151152;--ef_008r
SP_09 = 151153;--ef_009
SP_10 = 151154;--ef_010
SP_11 = 151155;--ef_011
SP_12 = 151156;--ef_012
SP_13 = 151158;--ef_013逆だった
SP_13e = 151157;--ef_013r逆だった
SP_14 = 151159;--ef_014
SP_15 = 151160;--ef_015
SP_16 = 151161;--ef_016
SP_17 = 151162;--ef_017
SP_17e = 151163;--ef_017r

SP_18 = 1668;--最後



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
-- 瞬間移動
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
--冒頭
spep_0 = 0;
entryFadeBg( spep_0, 0, 30, 0, 30, 30, 30, 180); -- ベース暗め　背景

shunkanIdo = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --瞬間移動
setEffScaleKey( spep_0, shunkanIdo, 1.6, 1.6);
setEffAlphaKey( spep_0, shunkanIdo, 255);
--entryFadeBg( spep_0, 10, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** 音 ** --
playSe( spep_0+10, 43);


-- ** 次の準備 ** --
spep_1 = spep_0+30;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 60, 0, 30, 30, 30, 180); -- ベース暗め　背景
setMoveKey(   spep_1-1,   0,    0, -54,   0);
setMoveKey(   spep_1-1,   1,    0, -54,   0);
setScaleKey(   spep_1-1,   0, 1.6, 1.6);
setScaleKey(   spep_1-1,   1, 1.5, 1.5);


------------------------------------------------------
-- 蹴り～追撃
------------------------------------------------------
-- ** キャラクター ** --
changeAnime( spep_1, 1, 100);
setDisp( spep_1, 1, 1);
setMoveKey(   spep_1,   1,    100, 0,   0);
setScaleKey(   spep_1,   1, 1.5, 1.5);


tyousei1= 4;
setRotateKey(   spep_1+19+tyousei1,   1, 0);
setScaleKey(   spep_1+219+tyousei1,   1, 1.5, 1.5);

changeAnime( spep_1+20+tyousei1, 1, 108);
setMoveKey(   spep_1+20+tyousei1,   1,    100, 0,   0);
setScaleKey(   spep_1+20+tyousei1,   1, 1.5, 1.5);
setRotateKey(   spep_1+20+tyousei1,   1, 0);
setRotateKey(   spep_1+20+tyousei1,   1, -30);
setMoveKey(   spep_1+40,   1,   400, 400,   0);
setDisp( spep_1+40, 1, 0);

-- ** 背景 ** --

-- ** エフェクト等 ** --
tuigeki = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --蹴り～追撃
setEffScaleKey( spep_1, tuigeki, 1, 1);
setEffAlphaKey( spep_1, tuigeki, 255);
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1+4, 906, 18, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+4, shuchusen1, 1.0, 1.0);
setEffScaleKey( spep_1+40, shuchusen1, 1.0, 1.0);
-- ** 流線(横) ** --
ryuusenn1 = entryEffectLife( spep_1+20+tyousei1, 921, 39, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_1+20+tyousei1,  ryuusenn1,  -50 );
setEffScaleKey( spep_1+20+tyousei1, ryuusenn1, 1.7, 1.7);

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctBaki = entryEffectLife( spep_1+22+tyousei1, 10020, 14, 0, -1, 0, 0, 200); -- バキッ
setEffRotateKey(spep_1+22+tyousei1, ctBaki, -10);
setEffRotateKey(spep_1+36+tyousei1, ctBaki, -10);
setEffAlphaKey(spep_1+22+tyousei1, ctBaki, 255);
setEffAlphaKey(spep_1+35+tyousei1, ctBaki, 255);
setEffAlphaKey(spep_1+36+tyousei1, ctBaki, 0);
setEffScaleKey(spep_1+22+tyousei1, ctBaki, 1.3, 1.3);
setEffScaleKey(spep_1+36+tyousei1, ctBaki, 1.5, 1.5);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_1+0, 1013);
playSe( spep_1+20+tyousei1, 1012);




-- ** 次の準備 ** --
spep_2 = spep_1+60;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 32+48, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_2-1,   1,    300, 200,   0);
setRotateKey(   spep_2-1,   1, -30);
setScaleKey(   spep_2-1,   1, 1.7, 1.7);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 43; --エンドフェイズのフレーム数を置き換える
setMoveKey(   SP_dodge,   1,    100, 0,   0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);
setMoveKey(   SP_dodge+10,   1,    0, 0,   0);
setMoveKey(   SP_dodge+9,   1,    100, 0,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 蹴り
------------------------------------------------------

-- ** キャラクター ** --

setDisp( spep_2, 1, 1);
tyousei2 = -4;

setMoveKey(   spep_2,   1,    -100, -200,   0);
setRotateKey(   spep_2,   1, -30);
setMoveKey(   spep_2+8+tyousei2,   1,    20, 20,   0);
setRotateKey(   spep_2+8+tyousei2,   1, -30);
setMoveKey(   spep_2+10+tyousei2,   1,    100, 50,   0);
setRotateKey(   spep_2+10+tyousei2,   1, -60);
setMoveKey(   spep_2+30,   1,    100, 800,   0);
setDisp( spep_2+30, 1, 0);
-- ** 背景 ** --

-- ** エフェクト等 ** --
keri = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   --蹴り
setEffScaleKey( spep_2, keri, 1, 1);
setEffAlphaKey( spep_2, keri, 255);


-- ** 奥行き流線斜め ** --
ryuusenn2 = entryEffectLife( spep_2+0, 921, 6, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2+0,  ryuusenn2,  -50 );
setEffScaleKey( spep_2+0, ryuusenn2, 1.6, 1.6);
--[[
setEffAlphaKey( spep_2, ryuusenn2, 255);
setEffAlphaKey( spep_2+3, ryuusenn2, 255);
setEffAlphaKey( spep_2+4, ryuusenn2, 0);
]]
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2+7, 906, 8, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+7, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_2+7, shuchusen2, 1.0, 1.0);

-- ** 流線(横) ** --
yokosen2 = entryEffectLife( spep_2+11, 914, 22+48, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_2+11, yokosen2, 1.6, 1.6);
setEffAlphaKey( spep_2+11, yokosen2, 255);
setEffRotateKey(spep_2+11, yokosen2, 90);
setEffMoveKey( spep_2+11, yokosen2, 0, 0, 0);
-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctGa = entryEffectLife( spep_2+7, 10005, 4, 0, -1, 0, -50, 230); -- ガッ
setEffRotateKey( spep_2+7, ctGa, -20);
setEffScaleKey( spep_2+7, ctGa, 1.0, 1.0);
setEffScaleKey( spep_2+8, ctGa, 2.0, 2.0);
setEffScaleKey( spep_2+10, ctGa, 1.0, 1.0);
setEffAlphaKey( spep_2+7, ctGa, 255);
setEffAlphaKey( spep_2+19, ctGa, 255);
setEffAlphaKey( spep_2+20, ctGa, 0);
-- ** ホワイトフェード ** --

-- ** 音 ** --

playSe( spep_2+6, 1013);
playSe( spep_2+24, 43);


-- ** 次の準備 ** --
spep_3 = spep_2+32;
--entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_3-1,   1,    0, 800,   0);
setRotateKey(   spep_3-1,   1, -30);
------------------------------------------------------
-- 見えない攻撃
------------------------------------------------------
-- ** キャラクター ** --
setMoveKey(   spep_3,   1,    0, -400,   0);
setDisp( spep_3, 1, 1);
setRotateKey(   spep_3,   1, -60);

setRotateKey(   spep_3+4,   1, -60);
setMoveKey(   spep_3+4,   1,    0, -300,   0);

setRotateKey(   spep_3+6,   1, -30);
setRotateKey(   spep_3+7,   1, -30);
setMoveKey(   spep_3+7,   1,    250, -130,   0);

setRotateKey(   spep_3+10,   1, -90);
setRotateKey(   spep_3+22,   1, -90);
setMoveKey(   spep_3+22,   1,    -230, 200,   0);

setRotateKey(   spep_3+25,   1, -60);
setRotateKey(   spep_3+30,   1, -60);
setMoveKey(   spep_3+30,   1,    0, 450,   0);
setMoveKey(   spep_3+32,   1,    0, 900,   0);

setRotateKey(   spep_3+33,   1, -30);

-- ** 背景 ** --

-- ** エフェクト等 ** --
mienaiAttc = entryEffect(  spep_3,   SP_04,   0,  -1,  0,  0,  0);   --見えない攻撃
setEffScaleKey( spep_3, mienaiAttc, 1, 1);
setEffAlphaKey( spep_3, mienaiAttc, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_3+10, 1006);
playSe( spep_3+20, 1006);
playSe( spep_3+30, 1006);
playSe( spep_3+40, 1006);


-- ** 次の準備 ** --
spep_4 = spep_3+48;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

setRotateKey(   spep_4-1,   1, -30);
setMoveKey(   spep_4-1,   1,    0, 900,   0);
setDisp( spep_4-1, 1, 0);
setScaleKey(   spep_4-1,   1, 1.6, 1.6);

------------------------------------------------------
-- かかと落とし
------------------------------------------------------
-- ** キャラクター ** --
setRotateKey(   spep_4,   1, -30);
setMoveKey(   spep_4,   1,    0, -800,   0);
setDisp( spep_4, 1, 1);
setScaleKey(   spep_4,   1, 1.8, 1.8);

setMoveKey(   spep_4+13,   1,    0, -100,   0);
setRotateKey(   spep_4+13,   1, -30);
setRotateKey(   spep_4+14,   1, 30);
setMoveKey(   spep_4+15,   1,    50, -100,   0);

setMoveKey(   spep_4+32,   1,    400, -600,   0);
setDisp( spep_4+32, 1, 0);

-- ** 背景 ** --

-- ** エフェクト等 ** --
kakato = entryEffect(  spep_4,   SP_05,   0x80,  -1,  0,  0,  0);   --かかと落とし
setEffScaleKey( spep_4, kakato, 1, 1);
setEffAlphaKey( spep_4, kakato, 255);
-- ** 集中線 ** --
--[[
shuchusen4 = entryEffectLife( spep_4+20, 906, 39, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+20, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+20, shuchusen4, 1.0, 1.0);
]]
-- ** 流線(横) ** --
yokosen4 = entryEffectLife( spep_4-1, 914, 18, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_4-1, yokosen4, 1.6, 1.6);
setEffAlphaKey( spep_4-1, yokosen4, 255);
setEffRotateKey(spep_4-1, yokosen4, 90);
setEffMoveKey( spep_4-1, yokosen4, 0, 0, 0);

-- ** 奥行き流線斜め ** --
ryuusenn4 = entryEffectLife( spep_4-1, 921, 55, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1,  ryuusenn4,  -110 );
setEffScaleKey( spep_4-1, ryuusenn4, 1.6, 1.6);
setEffAlphaKey( spep_4-1, ryuusenn4, 0);

setEffAlphaKey( spep_4+17, ryuusenn4, 0);
setEffAlphaKey( spep_4+18, ryuusenn4, 255);
setEffAlphaKey( spep_4+58, ryuusenn4, 255);
setEffAlphaKey( spep_4+59, ryuusenn4, 0);

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctBaki2 = entryEffectLife( spep_4+14, 10020, 18, 0x100, -1, 0, 100, 70); -- バキッ
setEffRotateKey( spep_4+14, ctBaki2 , 20);
setEffAlphaKey( spep_4+14, ctBaki2 , 255);
setEffAlphaKey( spep_4+30+14, ctBaki2 , 255);
setEffScaleKey( spep_4+14, ctBaki2 , 1.0, 1.0);
setEffScaleKey( spep_4+10+14, ctBaki2 , 2.0, 2.0);
setEffScaleKey( spep_4+20+14, ctBaki2 , 1.0, 1.0);
setEffShake( spep_4+14, ctBaki2 , 100, 20);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_4+10, 1025);

-- ** 次の準備 ** --
spep_5 = spep_4+54;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 20, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_5-1,   1,    200, -400,   0);
setScaleKey(   spep_5-1,   1, 1.8, 1.8);
setRotateKey(   spep_5-1,   1, 30);
setEffAlphaKey( spep_5-1, kakato, 255);
setEffAlphaKey( spep_5, kakato, 0);

------------------------------------------------------
-- 敵落下
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_5, 1, 1);
setMoveKey(   spep_5,   1,    -300, 400,   0);
setScaleKey(   spep_5,   1, 1.2, 1.2);
setRotateKey(   spep_5,   1, 40);

setMoveKey(   spep_5+18,   1,    100, -600,   0);
setScaleKey(   spep_5+20,   1, 1.2, 1.2);
setRotateKey(   spep_5+20,   1, 40);
setDisp( spep_5+20, 1, 0);
-- ** 背景 ** --
-- ** 流線(横) ** --
ryuusenn5 = entryEffectLife( spep_5+0, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5+0,  ryuusenn5,  -120 );
setEffScaleKey( spep_5+0, ryuusenn5, 1.6, 1.6);

-- ** エフェクト等 ** --
tekirakka = entryEffect(  spep_5,   SP_06,   0x80,  -1,  0,  0,  50);   --敵落下
setEffScaleKey( spep_5, tekirakka, 1.1, 1.1);
setEffAlphaKey( spep_5, tekirakka, 255);
-- ** 集中線 ** --


-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_5+10, 1018);


-- ** 次の準備 ** --
spep_6 = spep_5+20;
entryFade( spep_6-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 落下衝撃
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
rakka = entryEffect(  spep_6,   SP_07,   0,  -1,  0,  0,  0);   --落下衝撃
setEffScaleKey( spep_6, rakka, 1.2, 1.2);
setEffAlphaKey( spep_6, rakka, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
tyouseix6 = 30;
tyouseiy6 = -100;
ctDogon = entryEffectLife( spep_6+0, 10018, 40, 0, -1, 0, 50+tyouseix6, 50+tyouseiy6); -- ドゴォンッ
setEffAlphaKey( spep_6+0, ctDogon, 255);
setEffAlphaKey( spep_6+38, ctDogon, 255);--290
setEffAlphaKey( spep_6+40, ctDogon, 0);--300
setEffScaleKey( spep_6+0, ctDogon, 0.0, 0.0);
setEffScaleKey( spep_6+1, ctDogon, 1.0, 1.0);
setEffScaleKey( spep_6+10, ctDogon, 1.5, 1.5);
setEffScaleKey( spep_6+30, ctDogon, 2.0, 2.0);
setEffMoveKey( spep_6+0, ctDogon, 50+tyouseix6, 100+tyouseiy6, 0);
setEffMoveKey( spep_6+10, ctDogon, -50+tyouseix6, 200+tyouseiy6, 0);
setEffMoveKey( spep_6+30, ctDogon, -100+tyouseix6, 250+tyouseiy6, 0);
setEffRotateKey( spep_6+0, ctDogon, -20);
setEffRotateKey( spep_6+30, ctDogon, -20);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_6+0,SE_09);

-- ** 次の準備 ** --
spep_7 = spep_6+60;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- ソード伸ばす
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
nobasuSword = entryEffect(  spep_7,   SP_08,   0,  -1,  0,  0,  0);   --ソード伸ばす
setEffScaleKey( spep_7, nobasuSword, 1, 1);
setEffAlphaKey( spep_7, nobasuSword, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --
ryuusenn7 = entryEffectLife( spep_7+0, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_7+0,  ryuusenn7,  -130 );
setEffScaleKey( spep_7+0, ryuusenn7, 1.7, 1.7);-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_7+10, 1026);

-- ** 次の準備 ** --
spep_8 = spep_7+60;
entryFade( spep_8-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 70, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------
-- 煙に伸びてくソード
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
kemuriSword = entryEffect(  spep_8,   SP_09,   0,  -1,  0,  0,  0);   --煙に伸びてくソード
setEffScaleKey( spep_8, kemuriSword, 1, 1);
setEffAlphaKey( spep_8, kemuriSword, 255);
-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+0, 906, 39, 0x100,  -1, 0,  0,  -200);   -- 集中線
setEffScaleKey( spep_8+0, shuchusen8, 2.0, 2.0);
setEffScaleKey( spep_8+0, shuchusen8, 2.0, 2.0);
shuchusen8 = entryEffectLife( spep_8+0, 906, 39, 0x100,  -1, 0,  0,  -200);   -- 集中線
setEffScaleKey( spep_8+0, shuchusen8, 2.0, 2.0);
setEffScaleKey( spep_8+0, shuchusen8, 2.0, 2.0);

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_8+10, 1032);

-- ** 次の準備 ** --
spep_9 = spep_8+60;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_9-1,   1,    200, -400,   0);
setScaleKey(   spep_9-1,   1, 1.2, 1.2);
setRotateKey(   spep_9-1,   1, 30);
setDisp( spep_9-1, 1, 1);
setEffAlphaKey( spep_9-1, kemuriSword, 255);
setEffAlphaKey( spep_9, kemuriSword, 0);

------------------------------------------------------
-- 敵を吊り上げるソード
------------------------------------------------------




-- ** キャラクター ** --
changeAnime( spep_9, 1, 106);

setMoveKey(   spep_9,   1,    -300, -200,   0);
setScaleKey(   spep_9,   1, 1.8, 1.8);
setRotateKey(   spep_9,   1, 10);

setMoveKey(   spep_9+8,   1,    -50, -33,   0);
setScaleKey(   spep_9+8,   1, 1.8, 1.8);
setRotateKey(   spep_9+8,   1, 0);

setMoveKey(   spep_9+15,   1,    54, 54,   0);
setScaleKey(   spep_9+15,   1, 1.8, 1.8);
setRotateKey(   spep_9+15,   1, -10);

setMoveKey(   spep_9+22,   1,    133, 150,   0);
setScaleKey(   spep_9+22,   1, 1.8, 1.8);
setRotateKey(   spep_9+22,   1, -20);

setMoveKey(   spep_9+30,   1,    200, 400,   0);
setScaleKey(   spep_9+30,   1, 1.8, 1.8);
setRotateKey(   spep_9+30,   1, -30);

setMoveKey(   spep_9+38,   1,    220, 600,   0);
setScaleKey(   spep_9+40,   1, 1.8, 1.8);
setRotateKey(   spep_9+40,   1, -30);
setDisp( spep_9+40, 1, 0);

-- ** 背景 ** --

-- ** 奥行き流線斜め ** --
ryuusenn9 = entryEffectLife( spep_9+0, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_9+0,  ryuusenn9,  -60 );
setEffScaleKey( spep_9+0, ryuusenn9, 1.7, 1.7);-- ** 奥行き流線斜め ** --


-- ** エフェクト等 ** --
maeSword1 = entryEffect(  spep_9,   SP_10,   0x100,  -1,  0,  0,  0);   --敵を吊り上げるソード
setEffScaleKey( spep_9, maeSword1, 1, 1);
setEffAlphaKey( spep_9, maeSword1, 255);
usiroSword1 = entryEffect(  spep_9,   SP_11,   0x80,  -1,  0,  0,  0);   --敵を吊り上げるソード
setEffScaleKey( spep_9, usiroSword1, 1, 1);
setEffAlphaKey( spep_9, usiroSword1, 255);
-- ** 集中線 ** --
shuchusen9 = entryEffectLife( spep_9+0, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9+0, shuchusen9, 1.0, 1.0);
setEffScaleKey( spep_9+0, shuchusen9, 1.0, 1.0);

-- ** 流線(横) ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_9+30, 1004);
-- ** 次の準備 ** --
spep_10 = spep_9+48;
entryFade( spep_10-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_10, 0, 106, 0, 0, 0, 0, 255); -- ベース暗め　背景
setDisp( spep_10-1, 1, 0);

------------------------------------------------------
-- 表情アップ
------------------------------------------------------

-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
hyoujouUp = entryEffect(  spep_10,   SP_12,   0,  -1,  0,  0,  0);   --表情アップ
setEffScaleKey( spep_10, hyoujouUp, 1, 1);
setEffAlphaKey( spep_10, hyoujouUp, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --
ryuusenn10 = entryEffectLife( spep_10+0, 921, 106, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_10+0,  ryuusenn10,  160 );
setEffScaleKey( spep_10+0, ryuusenn10, 1.7, 1.7);-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_10+20, 1036);
playSe( spep_10+40, 1036);
playSe( spep_10+60, 1036);
playSe( spep_10+80, 1036);


-- ** 次の準備 ** --
spep_11 = spep_10+106;
entryFade( spep_11-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_11, 0, 110, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 敵からソードを抜く
------------------------------------------------------
setDisp( spep_11, 1, 1);
tyouseix11= 50;
tyouseiy11= 80;
-- ** キャラクター ** --
--[[
setMoveKey(   spep_11,   1,    300, 0,   0);
setScaleKey(   spep_11,   1, 1.2, 1.2);
setRotateKey(   spep_11,   1, -20);
]]
setMoveKey(   spep_11+0,   1,    260+tyouseix11, 150+tyouseiy11,   0);
setScaleKey(   spep_11+0,   1, 1.2, 1.2);
setRotateKey(   spep_11+0,   1, -80);

setMoveKey(   spep_11+10,   1,    212+tyouseix11, 212+tyouseiy11,   0);
setScaleKey(   spep_11+10,   1, 1.2, 1.2);
setRotateKey(   spep_11+110,   1, -90);

setMoveKey(   spep_11+18,   1,    150+tyouseix11, 260+tyouseiy11,   0);
setScaleKey(   spep_11+18,   1, 1.2, 1.2);
setRotateKey(   spep_11+18,   1, -100);

setMoveKey(   spep_11+110,   1,    0+tyouseix11, 300+tyouseiy11,   0);
setScaleKey(   spep_11+120,   1, 1.2, 1.2);
setRotateKey(   spep_11+80,   1, -120);
setRotateKey(   spep_11+100,   1, -122);



-- ** 背景 ** --

-- ** エフェクト等 ** --
maeSword2 = entryEffect(  spep_11+1,   SP_13,   0,  -1,  0,  0,  0);   --敵からソードを抜く
setEffScaleKey( spep_11+1, maeSword2, 1, 1);
setEffAlphaKey( spep_11+1, maeSword2, 255);
usiroSword2 = entryEffect(  spep_11+1,   SP_14,   0x80,  -1,  0,  0,  0);   --敵からソードを抜く
setEffScaleKey( spep_11+1, usiroSword2, 1, 1);
setEffAlphaKey( spep_11+1, usiroSword2, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 流線(横) ** --
ryuusenn11 = entryEffectLife( spep_11+0, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_11+0,  ryuusenn11,  -60 );
setEffScaleKey( spep_11+0, ryuusenn11, 1.7, 1.7);-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctGyun = entryEffectLife( spep_11+2, 10007, 60, 0, -1, 0, 100, -100); -- ギュンッ
setEffScaleKey( spep_11+2, ctGyun, 0.8, 0.8);
setEffScaleKey( spep_11+30, ctGyun, 1.8, 1.8);
setEffScaleKey( spep_11+60, ctGyun, 0.0, 0.0);

setEffRotateKey( spep_11+2, ctGyun, 40);
setEffAlphaKey( spep_11+2, ctGyun, 255);
setEffAlphaKey( spep_11+40, ctGyun, 255);
setEffAlphaKey( spep_11+60, ctGyun, 0);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_11+20, 1018);


-- ** 次の準備 ** --
spep_12 = spep_11+100;
entryFade( spep_12-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_12, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   sspep_12,   1,    50, 350,   0);

setDisp( spep_12, 1, 0);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------


speff = entryEffect( spep_12, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen12 = entryEffectLife( spep_12, 906, 91, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_12, shuchusen12, 0, 0, 0);
setEffScaleKey( spep_12, shuchusen12, 1.0, 1.0);
setEffAlphaKey( spep_12, shuchusen12, 255);
setEffRotateKey( spep_12, shuchusen12, 0);

-- ** ホワイトフェード ** --
entryFade( spep_12+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_12+3, SE_05);




-- ** 次の準備 ** --
spep_13 = spep_12+90;
entryFade( spep_13-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_13, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 気溜め
------------------------------------------------------

-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
kidame = entryEffect(  spep_13,   SP_15,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_13, kidame, 1, 1);
setEffAlphaKey( spep_13, kidame, 255);

speff = entryEffect(  spep_13+6,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_13+6,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 集中線 ** --
shuchusen13 = entryEffectLife( spep_13, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_13, shuchusen13, 1.6, 1.6);
setEffAlphaKey( spep_13, shuchusen13, 255);
shuchusen13 = entryEffectLife( spep_13, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_13, shuchusen13, 1.6, 1.6);
setEffAlphaKey( spep_13, shuchusen13, 255);
-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctGogogo = entryEffectLife( spep_13+8, 190006, 76, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_13+8, ctGogogo, 0.8, 0.8);
setEffAlphaKey( spep_13+8, ctGogogo, 255);
setEffRotateKey( spep_13+8, ctGogogo, 20);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_13+8, SE_04);


-- ** 次の準備 ** --
spep_14 = spep_13+100;
entryFade( spep_14-12, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_14, 0, 84, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- ナビゲーションズーム
------------------------------------------------------

-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
naviZoom = entryEffect(  spep_14,   SP_16,   0,  -1,  0,  0,  0);   --ナビゲーションズーム
setEffScaleKey( spep_14, naviZoom, 1, 1);
setEffAlphaKey( spep_14, naviZoom, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_14+20, 1036);
playSe( spep_14+40, 1036);
playSe( spep_14+60, 1036);


-- ** 次の準備 ** --
spep_15 = spep_14+84;
entryFade( spep_15-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_15, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- かめはめ波発射
------------------------------------------------------
setRotateKey(   spep_15-1,   1, -70);
setScaleKey(   spep_15-1,   1, 1.2, 1.2);

-- ** キャラクター ** --
setDisp( spep_15, 1, 1);
setRotateKey(   spep_15,   1, -70);

setScaleKey(   spep_15,   1, 1.2, 1.2);
setMoveKey(   spep_15,   1,   150, 350,   0);
setMoveKey(   spep_15+20,   1,    100, 300,   0);
setScaleKey(   spep_15+20,   1, 1.6, 1.6);

setDisp( spep_15+20, 1, 0);
setRotateKey(   spep_15+20,   1, -70);

-- ** 背景 ** --

-- ** エフェクト等 ** --
kameBeam = entryEffect(  spep_15,   SP_17,   0,  -1,  0,  0,  0);   --かめはめ波発射
setEffScaleKey( spep_15, kameBeam, 1, 1);
setEffAlphaKey( spep_15, kameBeam, 255);


-- ** 集中線 ** --
shuchusen15 = entryEffectLife( spep_15, 906, 80, 0x100,  -1, 0,  -200,  -200); -- 集中線5
setEffMoveKey( spep_15, shuchusen15, -200, -200, 0);
setEffScaleKey( spep_15, shuchusen15, 1.8, 1.8);
setEffAlphaKey( spep_15, shuchusen15, 255);
setEffRotateKey( spep_15, shuchusen15, 0);

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --
ryuusenn15 = entryEffectLife( spep_15+0, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_15+0,  ryuusenn15,  -60 );
setEffScaleKey( spep_15+0, ryuusenn15, 1.7, 1.7);-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctZuo = entryEffectLife( spep_15+10, 10012, 50, 0x100, -1, 0, 0, -100);    -- ズオッ
setEffMoveKey( spep_15+10, ctZuo, 0, -100, 0);
setEffMoveKey( spep_15+50, ctZuo, 0, -100, 0);

setEffRotateKey(spep_15+10, ctZuo, 20);
setEffAlphaKey( spep_15+10, ctZuo, 255);
setEffScaleKey( spep_15+10, ctZuo, 0.0, 0.0);
setEffScaleKey( spep_15+20, ctZuo, 3.0, 3.0);
setEffScaleKey( spep_15+36, ctZuo, 3.0, 3.0);
setEffScaleKey( spep_15+60, ctZuo, 4.0, 4.0);
setEffAlphaKey( spep_15+10, ctZuo, 255);
setEffAlphaKey( spep_15+36, ctZuo, 255);
setEffAlphaKey( spep_15+60, ctZuo, 0);
setEffShake( spep_15+20, ctZuo, 40, 8);
setEffRotateKey(spep_15+60, ctZuo, 20);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_15+0, SE_07);
playSe( spep_15+33, 1024);
-- ** 次の準備 ** --

spep_16 = spep_15+80;
entryFade( spep_16-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_16, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- ギャン
------------------------------------------------------

setDisp( spep_16-2, 1, 0);

-- ** エフェクト等 ** --
gyan = entryEffect( spep_16, 190000, 0x80, -1, 0, 0, 0); --ギャン
setEffMoveKey( spep_16, gyan, 0, 0, 0);
setEffScaleKey( spep_16, gyan, 1.0, 1.0);
setEffAlphaKey( spep_16, gyan, 255);
setEffRotateKey( spep_16, gyan, 0);

-- 書き文字エントリー --
ctGyan = entryEffectLife( spep_16, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake( spep_16, ctGyan, 99, 20);
setEffScaleKey( spep_16, ctGyan, 0.1, 0.1);
setEffScaleKey( spep_16+30, ctGyan, 3.4, 3.4);
setEffScaleKey( spep_16+54, ctGyan, 3.8, 3.8);
setEffAlphaKey( spep_16, ctGyan, 255);
setEffAlphaKey( spep_16+50, ctGyan, 255);
setEffAlphaKey( spep_16+60, ctGyan, 0);

-- ** 音 ** --
playSe( spep_16+1, SE_09);
-- ** 次の準備 ** --
spep_17 = spep_16+60;
entryFade( spep_17-16, 14, 10, 14, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_17, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景
setEffAlphaKey( spep_17-1, gyan, 255);
setEffAlphaKey( spep_17, gyan, 0);


------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
last = entryEffect(  spep_17,   SP_18,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_17, last, 1, 1);
setEffAlphaKey( spep_17, last, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_17+30, SE_10);



-- ダメージ表示
dealDamage( spep_17+16);
entryFade( spep_17+120-12, 9, 10, 1, fcolor_r, fcolor_g, fcolor_b, 255); -- black fade
endPhase( spep_17+120);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
--冒頭
spep_0 = 0;
entryFadeBg( spep_0, 0, 30, 0, 30, 30, 30, 180); -- ベース暗め　背景

shunkanIdo = entryEffect(  spep_0,   SP_01,   0,  -1,  0,  0,  0);   --瞬間移動
setEffScaleKey( spep_0, shunkanIdo, 1.6, 1.6);
setEffAlphaKey( spep_0, shunkanIdo, 255);
--entryFadeBg( spep_0, 10, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景


-- ** 音 ** --
playSe( spep_0+10, 43);


-- ** 次の準備 ** --
spep_1 = spep_0+30;
entryFade( spep_1-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 60, 0, 30, 30, 30, 180); -- ベース暗め　背景
setMoveKey(   spep_1-1,   0,    0, -54,   0);
setMoveKey(   spep_1-1,   1,    0, -54,   0);
setScaleKey(   spep_1-1,   0, 1.6, 1.6);
setScaleKey(   spep_1-1,   1, 1.5, 1.5);


------------------------------------------------------
-- 蹴り～追撃
------------------------------------------------------
-- ** キャラクター ** --
changeAnime( spep_1, 1, 100);
setDisp( spep_1, 1, 1);
setMoveKey(   spep_1,   1,    100, 0,   0);
setScaleKey(   spep_1,   1, 1.5, 1.5);


tyousei1= 4;
setRotateKey(   spep_1+19+tyousei1,   1, 0);
setScaleKey(   spep_1+219+tyousei1,   1, 1.5, 1.5);

changeAnime( spep_1+20+tyousei1, 1, 108);
setMoveKey(   spep_1+20+tyousei1,   1,    100, 0,   0);
setScaleKey(   spep_1+20+tyousei1,   1, 1.5, 1.5);
setRotateKey(   spep_1+20+tyousei1,   1, 0);
setRotateKey(   spep_1+20+tyousei1,   1, -30);
setMoveKey(   spep_1+40,   1,   400, 400,   0);
setDisp( spep_1+40, 1, 0);

-- ** 背景 ** --

-- ** エフェクト等 ** --
tuigeki = entryEffect(  spep_1,   SP_02,   0,  -1,  0,  0,  0);   --蹴り～追撃
setEffScaleKey( spep_1, tuigeki, 1, 1);
setEffAlphaKey( spep_1, tuigeki, 255);
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1+4, 906, 18, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+4, shuchusen1, 1.0, 1.0);
setEffScaleKey( spep_1+40, shuchusen1, 1.0, 1.0);
-- ** 流線(横) ** --
ryuusenn1 = entryEffectLife( spep_1+20+tyousei1, 921, 39, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_1+20+tyousei1,  ryuusenn1,  -50 );
setEffScaleKey( spep_1+20+tyousei1, ryuusenn1, 1.7, 1.7);

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctBaki = entryEffectLife( spep_1+22+tyousei1, 10020, 14, 0, -1, 0, 0, 200); -- バキッ
setEffRotateKey(spep_1+22+tyousei1, ctBaki, -10);
setEffRotateKey(spep_1+36+tyousei1, ctBaki, -10);
setEffAlphaKey(spep_1+22+tyousei1, ctBaki, 255);
setEffAlphaKey(spep_1+35+tyousei1, ctBaki, 255);
setEffAlphaKey(spep_1+36+tyousei1, ctBaki, 0);
setEffScaleKey(spep_1+22+tyousei1, ctBaki, 1.3, 1.3);
setEffScaleKey(spep_1+36+tyousei1, ctBaki, 1.5, 1.5);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_1+0, 1013);
playSe( spep_1+20+tyousei1, 1012);




-- ** 次の準備 ** --
spep_2 = spep_1+60;
entryFade( spep_2-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 32+48, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_2-1,   1,    300, 200,   0);
setRotateKey(   spep_2-1,   1, -30);
setScaleKey(   spep_2-1,   1, 1.7, 1.7);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 43; --エンドフェイズのフレーム数を置き換える
setMoveKey(   SP_dodge,   1,    100, 0,   0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);
setMoveKey(   SP_dodge+10,   1,    0, 0,   0);
setMoveKey(   SP_dodge+9,   1,    100, 0,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 蹴り
------------------------------------------------------

-- ** キャラクター ** --

setDisp( spep_2, 1, 1);
tyousei2 = -4;

setMoveKey(   spep_2,   1,    -100, -200,   0);
setRotateKey(   spep_2,   1, -30);
setMoveKey(   spep_2+8+tyousei2,   1,    20, 20,   0);
setRotateKey(   spep_2+8+tyousei2,   1, -30);
setMoveKey(   spep_2+10+tyousei2,   1,    100, 50,   0);
setRotateKey(   spep_2+10+tyousei2,   1, -60);
setMoveKey(   spep_2+30,   1,    100, 800,   0);
setDisp( spep_2+30, 1, 0);
-- ** 背景 ** --

-- ** エフェクト等 ** --
keri = entryEffect(  spep_2,   SP_03,   0,  -1,  0,  0,  0);   --蹴り
setEffScaleKey( spep_2, keri, 1, 1);
setEffAlphaKey( spep_2, keri, 255);


-- ** 奥行き流線斜め ** --
ryuusenn2 = entryEffectLife( spep_2+0, 921, 6, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2+0,  ryuusenn2,  -50 );
setEffScaleKey( spep_2+0, ryuusenn2, 1.6, 1.6);
--[[
setEffAlphaKey( spep_2, ryuusenn2, 255);
setEffAlphaKey( spep_2+3, ryuusenn2, 255);
setEffAlphaKey( spep_2+4, ryuusenn2, 0);
]]
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2+7, 906, 8, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2+7, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep_2+7, shuchusen2, 1.0, 1.0);

-- ** 流線(横) ** --
yokosen2 = entryEffectLife( spep_2+11, 914, 22+48, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_2+11, yokosen2, 1.6, 1.6);
setEffAlphaKey( spep_2+11, yokosen2, 255);
setEffRotateKey(spep_2+11, yokosen2, 90);
setEffMoveKey( spep_2+11, yokosen2, 0, 0, 0);
-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctGa = entryEffectLife( spep_2+7, 10005, 4, 0, -1, 0, -50, 230); -- ガッ
setEffRotateKey( spep_2+7, ctGa, -20);
setEffScaleKey( spep_2+7, ctGa, 1.0, 1.0);
setEffScaleKey( spep_2+8, ctGa, 2.0, 2.0);
setEffScaleKey( spep_2+10, ctGa, 1.0, 1.0);
setEffAlphaKey( spep_2+7, ctGa, 255);
setEffAlphaKey( spep_2+19, ctGa, 255);
setEffAlphaKey( spep_2+20, ctGa, 0);
-- ** ホワイトフェード ** --

-- ** 音 ** --

playSe( spep_2+6, 1013);
playSe( spep_2+24, 43);


-- ** 次の準備 ** --
spep_3 = spep_2+32;
--entryFade( spep_3-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_3-1,   1,    0, 800,   0);
setRotateKey(   spep_3-1,   1, -30);
------------------------------------------------------
-- 見えない攻撃
------------------------------------------------------
-- ** キャラクター ** --
setMoveKey(   spep_3,   1,    0, -400,   0);
setDisp( spep_3, 1, 1);
setRotateKey(   spep_3,   1, -60);

setRotateKey(   spep_3+4,   1, -60);
setMoveKey(   spep_3+4,   1,    0, -300,   0);

setRotateKey(   spep_3+6,   1, -30);
setRotateKey(   spep_3+7,   1, -30);
setMoveKey(   spep_3+7,   1,    250, -130,   0);

setRotateKey(   spep_3+10,   1, -90);
setRotateKey(   spep_3+22,   1, -90);
setMoveKey(   spep_3+22,   1,    -230, 200,   0);

setRotateKey(   spep_3+25,   1, -60);
setRotateKey(   spep_3+30,   1, -60);
setMoveKey(   spep_3+30,   1,    0, 450,   0);
setMoveKey(   spep_3+32,   1,    0, 900,   0);

setRotateKey(   spep_3+33,   1, -30);

-- ** 背景 ** --

-- ** エフェクト等 ** --
mienaiAttc = entryEffect(  spep_3,   SP_04,   0,  -1,  0,  0,  0);   --見えない攻撃
setEffScaleKey( spep_3, mienaiAttc, 1, 1);
setEffAlphaKey( spep_3, mienaiAttc, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_3+10, 1006);
playSe( spep_3+20, 1006);
playSe( spep_3+30, 1006);
playSe( spep_3+40, 1006);


-- ** 次の準備 ** --
spep_4 = spep_3+48;
entryFade( spep_4-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景

setRotateKey(   spep_4-1,   1, -30);
setMoveKey(   spep_4-1,   1,    0, 900,   0);
setDisp( spep_4-1, 1, 0);
setScaleKey(   spep_4-1,   1, 1.6, 1.6);

------------------------------------------------------
-- かかと落とし
------------------------------------------------------
-- ** キャラクター ** --
setRotateKey(   spep_4,   1, -30);
setMoveKey(   spep_4,   1,    0, -800,   0);
setDisp( spep_4, 1, 1);
setScaleKey(   spep_4,   1, 1.8, 1.8);

setMoveKey(   spep_4+13,   1,    0, -100,   0);
setRotateKey(   spep_4+13,   1, -30);
setRotateKey(   spep_4+14,   1, 30);
setMoveKey(   spep_4+15,   1,    50, -100,   0);

setMoveKey(   spep_4+32,   1,    400, -600,   0);
setDisp( spep_4+32, 1, 0);

-- ** 背景 ** --

-- ** エフェクト等 ** --
kakato = entryEffect(  spep_4,   SP_05,   0x80,  -1,  0,  0,  0);   --かかと落とし
setEffScaleKey( spep_4, kakato, 1, 1);
setEffAlphaKey( spep_4, kakato, 255);
-- ** 集中線 ** --
--[[
shuchusen4 = entryEffectLife( spep_4+20, 906, 39, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+20, shuchusen4, 1.0, 1.0);
setEffScaleKey( spep_4+20, shuchusen4, 1.0, 1.0);
]]
-- ** 流線(横) ** --
yokosen4 = entryEffectLife( spep_4-1, 914, 18, 0x80,  -1, 0,  0,  0);   -- 横線
setEffScaleKey( spep_4-1, yokosen4, 1.6, 1.6);
setEffAlphaKey( spep_4-1, yokosen4, 255);
setEffRotateKey(spep_4-1, yokosen4, 90);
setEffMoveKey( spep_4-1, yokosen4, 0, 0, 0);

-- ** 奥行き流線斜め ** --
ryuusenn4 = entryEffectLife( spep_4-1, 921, 55, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1,  ryuusenn4,  -110 );
setEffScaleKey( spep_4-1, ryuusenn4, 1.6, 1.6);
setEffAlphaKey( spep_4-1, ryuusenn4, 0);

setEffAlphaKey( spep_4+17, ryuusenn4, 0);
setEffAlphaKey( spep_4+18, ryuusenn4, 255);
setEffAlphaKey( spep_4+58, ryuusenn4, 255);
setEffAlphaKey( spep_4+59, ryuusenn4, 0);

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctBaki2 = entryEffectLife( spep_4+14, 10020, 18, 0x100, -1, 0, 100, 70); -- バキッ
setEffRotateKey( spep_4+14, ctBaki2 , 20);
setEffAlphaKey( spep_4+14, ctBaki2 , 255);
setEffAlphaKey( spep_4+30+14, ctBaki2 , 255);
setEffScaleKey( spep_4+14, ctBaki2 , 1.0, 1.0);
setEffScaleKey( spep_4+10+14, ctBaki2 , 2.0, 2.0);
setEffScaleKey( spep_4+20+14, ctBaki2 , 1.0, 1.0);
setEffShake( spep_4+14, ctBaki2 , 100, 20);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_4+10, 1025);

-- ** 次の準備 ** --
spep_5 = spep_4+54;
entryFade( spep_5-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 20, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_5-1,   1,    200, -400,   0);
setScaleKey(   spep_5-1,   1, 1.8, 1.8);
setRotateKey(   spep_5-1,   1, 30);
setEffAlphaKey( spep_5-1, kakato, 255);
setEffAlphaKey( spep_5, kakato, 0);

------------------------------------------------------
-- 敵落下
------------------------------------------------------
-- ** キャラクター ** --
setDisp( spep_5, 1, 1);
setMoveKey(   spep_5,   1,    -300, 400,   0);
setScaleKey(   spep_5,   1, 1.2, 1.2);
setRotateKey(   spep_5,   1, 40);

setMoveKey(   spep_5+18,   1,    100, -600,   0);
setScaleKey(   spep_5+20,   1, 1.2, 1.2);
setRotateKey(   spep_5+20,   1, 40);
setDisp( spep_5+20, 1, 0);
-- ** 背景 ** --
-- ** 流線(横) ** --
ryuusenn5 = entryEffectLife( spep_5+0, 920, 20, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5+0,  ryuusenn5,  -120 );
setEffScaleKey( spep_5+0, ryuusenn5, 1.6, 1.6);

-- ** エフェクト等 ** --
tekirakka = entryEffect(  spep_5,   SP_06,   0x80,  -1,  0,  0,  50);   --敵落下
setEffScaleKey( spep_5, tekirakka, 1.1, 1.1);
setEffAlphaKey( spep_5, tekirakka, 255);
-- ** 集中線 ** --


-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_5+10, 1018);


-- ** 次の準備 ** --
spep_6 = spep_5+20;
entryFade( spep_6-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_6, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 落下衝撃
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
rakka = entryEffect(  spep_6,   SP_07,   0,  -1,  0,  0,  0);   --落下衝撃
setEffScaleKey( spep_6, rakka, 1.2, 1.2);
setEffAlphaKey( spep_6, rakka, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
tyouseix6 = 30;
tyouseiy6 = -100;
ctDogon = entryEffectLife( spep_6+0, 10018, 40, 0, -1, 0, 50+tyouseix6, 50+tyouseiy6); -- ドゴォンッ
setEffAlphaKey( spep_6+0, ctDogon, 255);
setEffAlphaKey( spep_6+38, ctDogon, 255);--290
setEffAlphaKey( spep_6+40, ctDogon, 0);--300
setEffScaleKey( spep_6+0, ctDogon, 0.0, 0.0);
setEffScaleKey( spep_6+1, ctDogon, 1.0, 1.0);
setEffScaleKey( spep_6+10, ctDogon, 1.5, 1.5);
setEffScaleKey( spep_6+30, ctDogon, 2.0, 2.0);
setEffMoveKey( spep_6+0, ctDogon, 50+tyouseix6, 100+tyouseiy6, 0);
setEffMoveKey( spep_6+10, ctDogon, -50+tyouseix6, 200+tyouseiy6, 0);
setEffMoveKey( spep_6+30, ctDogon, -100+tyouseix6, 250+tyouseiy6, 0);
setEffRotateKey( spep_6+0, ctDogon, -20);
setEffRotateKey( spep_6+30, ctDogon, -20);

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_6+0,SE_09);

-- ** 次の準備 ** --
spep_7 = spep_6+60;
entryFade( spep_7-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 60, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- ソード伸ばす
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
nobasuSword = entryEffect(  spep_7,   SP_08e,   0,  -1,  0,  0,  0);   --ソード伸ばす
setEffScaleKey( spep_7, nobasuSword, 1, 1);
setEffAlphaKey( spep_7, nobasuSword, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --
ryuusenn7 = entryEffectLife( spep_7+0, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_7+0,  ryuusenn7,  -130 );
setEffScaleKey( spep_7+0, ryuusenn7, 1.7, 1.7);-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_7+10, 1026);

-- ** 次の準備 ** --
spep_8 = spep_7+60;
entryFade( spep_8-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 70, 0, 0, 0, 0, 255); -- ベース暗め　背景


------------------------------------------------------
-- 煙に伸びてくソード
------------------------------------------------------
-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
kemuriSword = entryEffect(  spep_8,   SP_09,   0,  -1,  0,  0,  0);   --煙に伸びてくソード
setEffScaleKey( spep_8, kemuriSword, 1, 1);
setEffAlphaKey( spep_8, kemuriSword, 255);
-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+0, 906, 39, 0x100,  -1, 0,  0,  -200);   -- 集中線
setEffScaleKey( spep_8+0, shuchusen8, 2.0, 2.0);
setEffScaleKey( spep_8+0, shuchusen8, 2.0, 2.0);
shuchusen8 = entryEffectLife( spep_8+0, 906, 39, 0x100,  -1, 0,  0,  -200);   -- 集中線
setEffScaleKey( spep_8+0, shuchusen8, 2.0, 2.0);
setEffScaleKey( spep_8+0, shuchusen8, 2.0, 2.0);

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_8+10, 1032);

-- ** 次の準備 ** --
spep_9 = spep_8+60;
entryFade( spep_9-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   spep_9-1,   1,    200, -400,   0);
setScaleKey(   spep_9-1,   1, 1.2, 1.2);
setRotateKey(   spep_9-1,   1, 30);
setDisp( spep_9-1, 1, 1);
setEffAlphaKey( spep_9-1, kemuriSword, 255);
setEffAlphaKey( spep_9, kemuriSword, 0);

------------------------------------------------------
-- 敵を吊り上げるソード
------------------------------------------------------




-- ** キャラクター ** --
changeAnime( spep_9, 1, 106);

setMoveKey(   spep_9,   1,    -300, -200,   0);
setScaleKey(   spep_9,   1, 1.8, 1.8);
setRotateKey(   spep_9,   1, 10);

setMoveKey(   spep_9+8,   1,    -50, -33,   0);
setScaleKey(   spep_9+8,   1, 1.8, 1.8);
setRotateKey(   spep_9+8,   1, 0);

setMoveKey(   spep_9+15,   1,    54, 54,   0);
setScaleKey(   spep_9+15,   1, 1.8, 1.8);
setRotateKey(   spep_9+15,   1, -10);

setMoveKey(   spep_9+22,   1,    133, 150,   0);
setScaleKey(   spep_9+22,   1, 1.8, 1.8);
setRotateKey(   spep_9+22,   1, -20);

setMoveKey(   spep_9+30,   1,    200, 400,   0);
setScaleKey(   spep_9+30,   1, 1.8, 1.8);
setRotateKey(   spep_9+30,   1, -30);

setMoveKey(   spep_9+38,   1,    220, 600,   0);
setScaleKey(   spep_9+40,   1, 1.8, 1.8);
setRotateKey(   spep_9+40,   1, -30);
setDisp( spep_9+40, 1, 0);

-- ** 背景 ** --

-- ** 奥行き流線斜め ** --
ryuusenn9 = entryEffectLife( spep_9+0, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_9+0,  ryuusenn9,  -60 );
setEffScaleKey( spep_9+0, ryuusenn9, 1.7, 1.7);-- ** 奥行き流線斜め ** --


-- ** エフェクト等 ** --
maeSword1 = entryEffect(  spep_9,   SP_10,   0x100,  -1,  0,  0,  0);   --敵を吊り上げるソード
setEffScaleKey( spep_9, maeSword1, 1, 1);
setEffAlphaKey( spep_9, maeSword1, 255);
usiroSword1 = entryEffect(  spep_9,   SP_11,   0x80,  -1,  0,  0,  0);   --敵を吊り上げるソード
setEffScaleKey( spep_9, usiroSword1, 1, 1);
setEffAlphaKey( spep_9, usiroSword1, 255);
-- ** 集中線 ** --
shuchusen9 = entryEffectLife( spep_9+0, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9+0, shuchusen9, 1.0, 1.0);
setEffScaleKey( spep_9+0, shuchusen9, 1.0, 1.0);

-- ** 流線(横) ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_9+30, 1004);
-- ** 次の準備 ** --
spep_10 = spep_9+48;
entryFade( spep_10-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_10, 0, 106, 0, 0, 0, 0, 255); -- ベース暗め　背景
setDisp( spep_10-1, 1, 0);

------------------------------------------------------
-- 表情アップ
------------------------------------------------------

-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
hyoujouUp = entryEffect(  spep_10,   SP_12,   0,  -1,  0,  0,  0);   --表情アップ
setEffScaleKey( spep_10, hyoujouUp, -1, 1);
setEffAlphaKey( spep_10, hyoujouUp, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --
ryuusenn10 = entryEffectLife( spep_10+0, 921, 106, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_10+0,  ryuusenn10,  -160 );
setEffScaleKey( spep_10+0, ryuusenn10, -1.7, 1.7);-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_10+20, 1036);
playSe( spep_10+40, 1036);
playSe( spep_10+60, 1036);
playSe( spep_10+80, 1036);


-- ** 次の準備 ** --
spep_11 = spep_10+106;
entryFade( spep_11-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_11, 0, 110, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 敵からソードを抜く
------------------------------------------------------
setDisp( spep_11, 1, 1);
tyouseix11= 50;
tyouseiy11= 80;
-- ** キャラクター ** --
--[[
setMoveKey(   spep_11,   1,    300, 0,   0);
setScaleKey(   spep_11,   1, 1.2, 1.2);
setRotateKey(   spep_11,   1, -20);
]]
setMoveKey(   spep_11+0,   1,    260+tyouseix11, 150+tyouseiy11,   0);
setScaleKey(   spep_11+0,   1, 1.2, 1.2);
setRotateKey(   spep_11+0,   1, -80);

setMoveKey(   spep_11+10,   1,    212+tyouseix11, 212+tyouseiy11,   0);
setScaleKey(   spep_11+10,   1, 1.2, 1.2);
setRotateKey(   spep_11+110,   1, -90);

setMoveKey(   spep_11+18,   1,    150+tyouseix11, 260+tyouseiy11,   0);
setScaleKey(   spep_11+18,   1, 1.2, 1.2);
setRotateKey(   spep_11+18,   1, -100);

setMoveKey(   spep_11+110,   1,    0+tyouseix11, 300+tyouseiy11,   0);
setScaleKey(   spep_11+120,   1, 1.2, 1.2);
setRotateKey(   spep_11+80,   1, -120);
setRotateKey(   spep_11+100,   1, -122);



-- ** 背景 ** --

-- ** エフェクト等 ** --
maeSword2 = entryEffect(  spep_11+1,   SP_13e,   0,  -1,  0,  0,  0);   --敵からソードを抜く
setEffScaleKey( spep_11+1, maeSword2, 1, 1);
setEffAlphaKey( spep_11+1, maeSword2, 255);
usiroSword2 = entryEffect(  spep_11+1,   SP_14,   0x80,  -1,  0,  0,  0);   --敵からソードを抜く
setEffScaleKey( spep_11+1, usiroSword2, 1, 1);
setEffAlphaKey( spep_11+1, usiroSword2, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 流線(横) ** --
ryuusenn11 = entryEffectLife( spep_11+0, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_11+0,  ryuusenn11,  -60 );
setEffScaleKey( spep_11+0, ryuusenn11, 1.7, 1.7);-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctGyun = entryEffectLife( spep_11+2, 10007, 60, 0, -1, 0, 100, -100); -- ギュンッ
setEffScaleKey( spep_11+2, ctGyun, 0.8, 0.8);
setEffScaleKey( spep_11+30, ctGyun, 1.8, 1.8);
setEffScaleKey( spep_11+60, ctGyun, 0.0, 0.0);

setEffRotateKey( spep_11+2, ctGyun, 40);
setEffAlphaKey( spep_11+2, ctGyun, 255);
setEffAlphaKey( spep_11+40, ctGyun, 255);
setEffAlphaKey( spep_11+60, ctGyun, 0);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_11+20, 1018);


-- ** 次の準備 ** --
spep_12 = spep_11+100;
entryFade( spep_12-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_12, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景
setMoveKey(   sspep_12,   1,    50, 350,   0);

setDisp( spep_12, 1, 0);

------------------------------------------------------
-- カードカットイン
------------------------------------------------------


speff = entryEffect( spep_12, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen12 = entryEffectLife( spep_12, 906, 91, 0x100,  -1, 0,  0,  0); -- 集中線5
setEffMoveKey( spep_12, shuchusen12, 0, 0, 0);
setEffScaleKey( spep_12, shuchusen12, 1.0, 1.0);
setEffAlphaKey( spep_12, shuchusen12, 255);
setEffRotateKey( spep_12, shuchusen12, 0);

-- ** ホワイトフェード ** --
entryFade( spep_12+83, 5, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_12+3, SE_05);




-- ** 次の準備 ** --
spep_13 = spep_12+90;
entryFade( spep_13-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_13, 0, 100, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- 気溜め
------------------------------------------------------

-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
kidame = entryEffect(  spep_13,   SP_15,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_13, kidame, -1, 1);
setEffAlphaKey( spep_13, kidame, 255);
--[[
speff = entryEffect(  spep_13+6,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_13+6,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
-- ** 集中線 ** --
shuchusen13 = entryEffectLife( spep_13, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_13, shuchusen13, 1.6, 1.6);
setEffAlphaKey( spep_13, shuchusen13, 255);
shuchusen13 = entryEffectLife( spep_13, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_13, shuchusen13, 1.6, 1.6);
setEffAlphaKey( spep_13, shuchusen13, 255);
-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctGogogo = entryEffectLife( spep_13+8, 190006, 76, 0x100, -1, 0, 200, 500); -- ゴゴゴゴゴ
setEffScaleKey( spep_13+8, ctGogogo, -0.8, 0.8);
setEffAlphaKey( spep_13+8, ctGogogo, 255);
setEffRotateKey( spep_13+8, ctGogogo, 20);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_13+8, SE_04);


-- ** 次の準備 ** --
spep_14 = spep_13+100;
entryFade( spep_14-12, 3, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_14, 0, 84, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- ナビゲーションズーム
------------------------------------------------------

-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
naviZoom = entryEffect(  spep_14,   SP_16,   0,  -1,  0,  0,  0);   --ナビゲーションズーム
setEffScaleKey( spep_14, naviZoom, -1, 1);
setEffAlphaKey( spep_14, naviZoom, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_14+20, 1036);
playSe( spep_14+40, 1036);
playSe( spep_14+60, 1036);


-- ** 次の準備 ** --
spep_15 = spep_14+84;
entryFade( spep_15-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_15, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- かめはめ波発射
------------------------------------------------------
setRotateKey(   spep_15-1,   1, -70);
setScaleKey(   spep_15-1,   1, 1.2, 1.2);

-- ** キャラクター ** --
setDisp( spep_15, 1, 1);
setRotateKey(   spep_15,   1, -70);

setScaleKey(   spep_15,   1, 1.2, 1.2);
setMoveKey(   spep_15,   1,   150, 350,   0);
setMoveKey(   spep_15+20,   1,    100, 300,   0);
setScaleKey(   spep_15+20,   1, 1.6, 1.6);

setDisp( spep_15+20, 1, 0);
setRotateKey(   spep_15+20,   1, -70);

-- ** 背景 ** --

-- ** エフェクト等 ** --
kameBeam = entryEffect(  spep_15,   SP_17e,   0,  -1,  0,  0,  0);   --かめはめ波発射
setEffScaleKey( spep_15, kameBeam, 1, 1);
setEffAlphaKey( spep_15, kameBeam, 255);


-- ** 集中線 ** --
shuchusen15 = entryEffectLife( spep_15, 906, 80, 0x100,  -1, 0,  -200,  -200); -- 集中線5
setEffMoveKey( spep_15, shuchusen15, -200, -200, 0);
setEffScaleKey( spep_15, shuchusen15, 1.8, 1.8);
setEffAlphaKey( spep_15, shuchusen15, 255);
setEffRotateKey( spep_15, shuchusen15, 0);

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --
ryuusenn15 = entryEffectLife( spep_15+0, 921, 80, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_15+0,  ryuusenn15,  -60 );
setEffScaleKey( spep_15+0, ryuusenn15, 1.7, 1.7);-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --
ctZuo = entryEffectLife( spep_15+10, 10012, 50, 0x100, -1, 0, 0, -100);    -- ズオッ
setEffMoveKey( spep_15+10, ctZuo, 0, -100, 0);
setEffMoveKey( spep_15+50, ctZuo, 0, -100, 0);

setEffRotateKey(spep_15+10, ctZuo, 20);
setEffAlphaKey( spep_15+10, ctZuo, 255);
setEffScaleKey( spep_15+10, ctZuo, 0.0, 0.0);
setEffScaleKey( spep_15+20, ctZuo, 3.0, 3.0);
setEffScaleKey( spep_15+36, ctZuo, 3.0, 3.0);
setEffScaleKey( spep_15+60, ctZuo, 4.0, 4.0);
setEffAlphaKey( spep_15+10, ctZuo, 255);
setEffAlphaKey( spep_15+36, ctZuo, 255);
setEffAlphaKey( spep_15+60, ctZuo, 0);
setEffShake( spep_15+20, ctZuo, 40, 8);
setEffRotateKey(spep_15+60, ctZuo, 20);
-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_15+0, SE_07);
playSe( spep_15+33, 1024);
-- ** 次の準備 ** --

spep_16 = spep_15+80;
entryFade( spep_16-6, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_16, 0, 80, 0, 0, 0, 0, 255); -- ベース暗め　背景
------------------------------------------------------
-- ギャン
------------------------------------------------------

setDisp( spep_16-2, 1, 0);

-- ** エフェクト等 ** --
gyan = entryEffect( spep_16, 190000, 0x80, -1, 0, 0, 0); --ギャン
setEffMoveKey( spep_16, gyan, 0, 0, 0);
setEffScaleKey( spep_16, gyan, 1.0, 1.0);
setEffAlphaKey( spep_16, gyan, 255);
setEffRotateKey( spep_16, gyan, 0);

-- 書き文字エントリー --
ctGyan = entryEffectLife( spep_16, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake( spep_16, ctGyan, 99, 20);
setEffScaleKey( spep_16, ctGyan, 0.1, 0.1);
setEffScaleKey( spep_16+30, ctGyan, 3.4, 3.4);
setEffScaleKey( spep_16+54, ctGyan, 3.8, 3.8);
setEffAlphaKey( spep_16, ctGyan, 255);
setEffAlphaKey( spep_16+50, ctGyan, 255);
setEffAlphaKey( spep_16+60, ctGyan, 0);

-- ** 音 ** --
playSe( spep_16+1, SE_09);
-- ** 次の準備 ** --
spep_17 = spep_16+60;
entryFade( spep_17-16, 14, 10, 14, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_17, 0, 120, 0, 0, 0, 0, 255); -- ベース暗め　背景
setEffAlphaKey( spep_17-1, gyan, 255);
setEffAlphaKey( spep_17, gyan, 0);


------------------------------------------------------
-- フィニッシュ
------------------------------------------------------

-- ** キャラクター ** --

-- ** 背景 ** --

-- ** エフェクト等 ** --
last = entryEffect(  spep_17,   SP_18,   0,  -1,  0,  0,  0);   --気溜め
setEffScaleKey( spep_17, last, 1, 1);
setEffAlphaKey( spep_17, last, 255);
-- ** 集中線 ** --

-- ** 流線(横) ** --

-- ** 奥行き流線斜め ** --

-- ** ふっ飛ばし流線 ** --

-- 書き文字エントリー --

-- ** ホワイトフェード ** --

-- ** 音 ** --
playSe( spep_17+30, SE_10);



-- ダメージ表示
dealDamage( spep_17+16);
entryFade( spep_17+120-12, 9, 10, 1, fcolor_r, fcolor_g, fcolor_b, 255); -- black fade
endPhase( spep_17+120);


end


