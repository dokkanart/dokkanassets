print ("[lua]sp1138");

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

SP_01 = 150930;--味方飛翔シーン
SP_02 = 150931;--味方奥へ突っ込むシーン
SP_03 = 150932;--斬撃
SP_04 = 150933;--味方被弾

SP_05 = 150958;--敵側飛翔シーン
SP_06 = 150959;--敵側奥へ突っ込むシーン
SP_07 = 150960;--敵側被弾
SP_08 = 150965;--敵側斬撃

--[[
150930
150931
150932
150933
]]


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 1);
setDisp( 0, 1, 0);
setAnimeLoop( 0, 0, 1);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   0,   1,    3000, -54,   0);
setMoveKey(   1,   1,    3000, -54,   0);
setScaleKey(   0,   0, 1.4, 1.4);
setScaleKey(   1,   0, 1.4, 1.4);
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

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

setShakeChara(30, 0, 40, 10);

entryFade( 62-4, 5, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 30, 0, 39, 5);

-- 書き文字エントリー
ctzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 250); -- ズズンッ
setEffShake(30, ctzuzun, 40, 7);
setEffAlphaKey(30, ctzuzun, 255);
setEffAlphaKey(50, ctzuzun, 255);
setEffAlphaKey(70, ctzuzun, 0);
setEffScaleKey( 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzun, 2.0, 2.0);

-- ** 音 ** --
playSe( 30, SE_01);
--playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 17);                       -- 溜め!
setShakeChara(70, 0, 100, 10);

-- ** 音 ** --
--playSe( 70, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)


speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 音 ** --
playSe( 84, SE_04);

-- ** エフェクト等 ** --

aura2 = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 70, aura2, 1.2, 1.2);
--setShakeChara( 70, 0, 49, 5);



-- ** 書き文字エントリ ** --
gogogo = entryEffectLife( 90, 190006, 71, 0x100, -1, 0, -100, 500); -- ゴゴゴゴゴ
setEffScaleKey( 90, gogogo, 0.8, 0.8);
setEffAlphaKey( 90, gogogo, 255);
setEffRotateKey( 90, gogogo, 0);



-- ** 次の準備 ** --

spep_1 = 170;
entryFade( spep_1-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景


setDisp( spep_1, 0, 0);
setMoveKey(   spep_1,   0,    0, -54,   0);
setScaleKey(   spep_1,   0, 1.4, 1.4);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1;
--entryFade( spep_2-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_2, 0, 100, 0, 0, 30, 0, 255); -- ベース暗め　背景

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);



setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


-- ** 音 ** --
playSe( spep_2, SE_05);



-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景


setDisp( spep_3, 0, 0);
setMoveKey(   spep_3,   0,    -200, -250,   0);
setScaleKey(   spep_3,   0, 1.7, 1.7);

changeAnime( spep_3, 0, 30); 
------------------------------------------------------
--飛翔 
------------------------------------------------------

-- ** 奥行き流線斜め ** --
okuyuki4 = entryEffectLife( spep_3, 921, 66, 0x80, -1, 0, 0, -50); -- 奥行き流線斜め
setEffMoveKey( spep_3, okuyuki4, 0, 50, 0);
setEffRotateKey( spep_3, okuyuki4, 125);
setEffScaleKey( spep_3, okuyuki4, 1.7, 1.7);
setEffAlphaKey( spep_3, okuyuki4, 255);

-- ** エフェクト等 ** --
hisyo = entryEffect( spep_3, SP_01, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_3, hisyo, 0, 0, 0);
setEffScaleKey( spep_3, hisyo, 1.0, 1.0);
setEffAlphaKey( spep_3, hisyo, 255);
setEffRotateKey( spep_3, hisyo, 0);


setMoveKey(   spep_3+20,   0,    200, 250,   0);
setMoveKey(   spep_3+50,   0,     -200, -250,   0);
setScaleKey(   spep_3+50,   0, 1.7, 1.7);


-- ** 音 ** --
playSe( spep_3+6, 43);

playSe( spep_3+50, 1018);


-- ** 次の準備 ** --
spep_4 = spep_3+66;
entryFade( spep_4-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 44, 0, 0, 0, 0, 255); -- ベース暗め　背景

setDisp( spep_4, 0, 0);

setMoveKey(   spep_4,   0,     200, 250,   0);
setScaleKey(   spep_4,   0, 2.7, 2.7);

------------------------------------------------------
-- 奥へ突っ込む※豪華版のみ (44F)
------------------------------------------------------

--44Fで別シーンへ

-- ** 集中線 ** --
shuchusen41 = entryEffectLife( spep_4, 906, 44, 0x80,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_4, shuchusen41, 0, 100, 0);
setEffScaleKey( spep_4, shuchusen41, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen41, 255);
setEffRotateKey( spep_4, shuchusen41, 0);


-- ** エフェクト等 ** --
tukkomu = entryEffect( spep_4, SP_02, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_4, tukkomu, 100, 0, 0);
setEffMoveKey( spep_4+44, tukkomu, 100, 0, 0);
setEffScaleKey( spep_4, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_4, tukkomu, 255);
setEffAlphaKey( spep_4+44, tukkomu, 255);
setEffRotateKey( spep_4, tukkomu, 0);

--entryFade( spep_4+38, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_4+6, 43);
--playSe( spep_4+6, 1005);


--次の斬撃エフェクトへ移行


-- ** 次の準備 ** --

--こっちは豪華版用
spep_5 = spep_4+44;

--こっちは廉価版用
--spep_6 = spep_5+0;

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 100); 


--entryFade( spep_5-6, 3, 9, 4, 0, 0, 0, 255);     -- white fade
entryFade( spep_5-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 32, 0, 0, 0, 0, 255); -- ベース暗め　背景
entryFadeBg( spep_5, 0, 43, 0, 30, 30, 30, 180); -- ベース暗め　背景

setMoveKey(   spep_5,   1,    0, 250,   0);
setScaleKey(   spep_5,   1, 1.0, 1.0);



------------------------------------------------------
-- 斬撃 (70F)
------------------------------------------------------


-- ** エフェクト等 ** --
zangeki = entryEffect( spep_5, SP_03, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_5, zangeki, 0, 0, 0);
setEffScaleKey( spep_5, zangeki, 1.0, 1.0);
setEffAlphaKey( spep_5, zangeki, 255);
setEffRotateKey( spep_5, zangeki, 0);


-- ** 集中線 ** --
shuchusen42 = entryEffectLife( spep_5, 906, 44, 0x80,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_5, shuchusen42, 0, 100, 0);
setEffScaleKey( spep_5, shuchusen42, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusen42, 255);
setEffRotateKey( spep_5, shuchusen42, 0);


setDisp( spep_5+44, 1, 1);
setMoveKey(   spep_5+44,   1,    0, 50,   0);
setScaleKey(   spep_5+44,   1, 1.6, 1.6);


-- ** 音 ** --
playSe( spep_5+11, 1018);


-- ** 音 ** --
playSe( spep_5+44, 1032);


-- ** 次の準備 ** --
spep_6 = spep_5+64;
entryFade( spep_6-6, 2, 4, 4, 0, 0, 0, 255);     -- white fade
entryFadeBg( spep_6, 0, 110, 0, 10, 10, 10, 200); -- ベース暗め　背景




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
setMoveKey(   SP_dodge+9,   1,    0, 300,   0);
setMoveKey(   SP_dodge+9,   0,    -3000, -200,   0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避外
------------------------------------------------------


------------------------------------------------------
-- 被弾
------------------------------------------------------

changeAnime( spep_6, 1, 108); 
setMoveKey(   spep_6,   1,    -200, -50,   0);
setScaleKey(   spep_6,   1, 1.6, 1.6);
setDisp( spep_6, 1, 1);


-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_6, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線7
setEffMoveKey( spep_6, ryusen6, 0, 0, 0);
setEffRotateKey( spep_6, ryusen6, -20);
setEffScaleKey( spep_6, ryusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusen6, 255);



-- ** エフェクト等 ** --
hidan = entryEffect( spep_6, SP_04, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_6, hidan, 0, 0, 0);
setEffScaleKey( spep_6, hidan, 1.0, 1.0);
setEffAlphaKey( spep_6, hidan, 255);
setEffRotateKey( spep_6, hidan, 0);


setMoveKey(   spep_6+1,   1,    -180, -50,   0);

setMoveKey(   spep_6+10,   1,    -200, -70,   0);
setScaleKey(   spep_6+10,   1, 1.6, 1.6);


setMoveKey(   spep_6+110,   1,    -200, -70,   0);
setScaleKey(   spep_6+110,   1, 1.0, 1.0);
setDisp( spep_6+110, 1, 0);

-- ** 音 ** --
playSe( spep_6+4, 1034);
playSe( spep_6+20, 1034);
playSe( spep_6+40, 1034);
playSe( spep_6+60, 1034);
playSe( spep_6+80, 1034);



------------------------------------------------------
-- last (110F)
------------------------------------------------------

-- ** 次の準備 ** --

spep_8=spep_6+110;

entryFade( spep_8-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 0, 0, 255, 255, 255, 255);          -- ベース暗め　背景


--playSe( spep_9, SE_10);
playSe( spep_8+10, SE_09);
playSe( spep_8+60, SE_10);

--eff = entryEffect(  spep_8,   1585,   0,     -1,  0,  0,  0);--導入
eff = entryEffect(  spep_8,   1658,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_8, eff, 0, 0, 0);
setEffScaleKey( spep_8, eff, 1.1, 1.1);
setEffAlphaKey( spep_8, eff, 255);
setEffRotateKey( spep_8, eff, 0);

-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+1, 906, 139, 0x100,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_8+1, shuchusen8, 0, 100, 0);
setEffScaleKey( spep_8+1, shuchusen8, 1.5, 1.5);
setEffAlphaKey( spep_8+1, shuchusen8, 255);
setEffRotateKey( spep_8+1, shuchusen8, 0);

-- ダメージ表示
dealDamage(spep_8+16);

entryFade( spep_8+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+140);



else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

setShakeChara(30, 0, 40, 10);

entryFade( 62-4, 5, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.2, 1.2);
setShakeChara( 30, 0, 39, 5);

-- 書き文字エントリー
ctzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 250); -- ズズンッ
setEffShake(30, ctzuzun, 40, 7);
setEffAlphaKey(30, ctzuzun, 255);
setEffAlphaKey(50, ctzuzun, 255);
setEffAlphaKey(70, ctzuzun, 0);
setEffScaleKey( 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzun, 2.0, 2.0);

-- ** 音 ** --
playSe( 30, SE_01);
--playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 17);                       -- 溜め!
setShakeChara(70, 0, 100, 10);

-- ** 音 ** --
--playSe( 70, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)


--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- ** 音 ** --
playSe( 84, SE_04);

-- ** エフェクト等 ** --

aura2 = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 70, aura2, 1.2, 1.2);
--setShakeChara( 70, 0, 49, 5);



-- ** 書き文字エントリ ** --
--gogogo = entryEffectLife( 90, 190006, 71, 0x100, -1, 0, 0, 500); -- ゴゴゴゴゴ
--setEffScaleKey( 90, gogogo, 0.6, 0.6);
--setEffAlphaKey( 90, gogogo, 255);
--setEffRotateKey( 90, gogogo, 0);



-- ** 次の準備 ** --

spep_1 = 170;
entryFade( spep_1-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景


setDisp( spep_1, 0, 0);
setMoveKey(   spep_1,   0,    0, -54,   0);
setScaleKey(   spep_1,   0, 1.4, 1.4);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

-- ** 次の準備 ** --
spep_2 = spep_1;
--entryFade( spep_2-6, 3, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_2, 0, 100, 0, 0, 30, 0, 255); -- ベース暗め　背景

speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 91, 0x100,  -1, 0,  0,  0);   -- 集中線4
setEffMoveKey( spep_2, shuchusen2, 0, 0, 0);
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);
setEffAlphaKey( spep_2, shuchusen2, 255);
setEffRotateKey( spep_2, shuchusen2, 0);



setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


-- ** 音 ** --
playSe( spep_2, SE_05);



-- ** 次の準備 ** --
spep_3 = spep_2+90;
entryFade( spep_3-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 90, 0, 0, 0, 0, 255); -- ベース暗め　背景


setDisp( spep_3, 0, 0);
setMoveKey(   spep_3,   0,    -200, -250,   0);
setScaleKey(   spep_3,   0, 1.7, 1.7);

changeAnime( spep_3, 0, 30); 
------------------------------------------------------
--飛翔 
------------------------------------------------------

-- ** 奥行き流線斜め ** --
okuyuki4 = entryEffectLife( spep_3, 921, 66, 0x80, -1, 0, 0, -50); -- 奥行き流線斜め
setEffMoveKey( spep_3, okuyuki4, 0, 50, 0);
setEffRotateKey( spep_3, okuyuki4, 125);
setEffScaleKey( spep_3, okuyuki4, 1.7, 1.7);
setEffAlphaKey( spep_3, okuyuki4, 255);

-- ** エフェクト等 ** --
hisyo = entryEffect( spep_3, SP_05, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_3, hisyo, 0, 0, 0);
setEffScaleKey( spep_3, hisyo, 1.0, 1.0);
setEffAlphaKey( spep_3, hisyo, 255);
setEffRotateKey( spep_3, hisyo, 0);


setMoveKey(   spep_3+20,   0,    200, 250,   0);
setMoveKey(   spep_3+50,   0,     -200, -250,   0);
setScaleKey(   spep_3+50,   0, 1.7, 1.7);


-- ** 音 ** --
playSe( spep_3+6, 43);

playSe( spep_3+50, 1018);


-- ** 次の準備 ** --
spep_4 = spep_3+66;
entryFade( spep_4-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 44, 0, 0, 0, 0, 255); -- ベース暗め　背景

setDisp( spep_4, 0, 0);

setMoveKey(   spep_4,   0,     200, 250,   0);
setScaleKey(   spep_4,   0, 2.7, 2.7);

------------------------------------------------------
-- 奥へ突っ込む※豪華版のみ (44F)
------------------------------------------------------

--44Fで別シーンへ

-- ** 集中線 ** --
shuchusen41 = entryEffectLife( spep_4, 906, 44, 0x80,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_4, shuchusen41, 0, 100, 0);
setEffScaleKey( spep_4, shuchusen41, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen41, 255);
setEffRotateKey( spep_4, shuchusen41, 0);


-- ** エフェクト等 ** --
tukkomu = entryEffect( spep_4, 150959, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_4, tukkomu, 100, 0, 0);
setEffMoveKey( spep_4+44, tukkomu, 100, 0, 0);
setEffScaleKey( spep_4, tukkomu, 1.0, 1.0);
setEffAlphaKey( spep_4, tukkomu, 255);
setEffAlphaKey( spep_4+44, tukkomu, 255);
setEffRotateKey( spep_4, tukkomu, 0);

--entryFade( spep_4+38, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_4+6, 43);
--playSe( spep_4+6, 1005);


--次の斬撃エフェクトへ移行


-- ** 次の準備 ** --

--こっちは豪華版用
spep_5 = spep_4+44;

--こっちは廉価版用
--spep_6 = spep_5+0;

setDisp( spep_5, 0, 0);
setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 100); 


--entryFade( spep_5-6, 3, 9, 4, 0, 0, 0, 255);     -- white fade
entryFade( spep_5-6, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 32, 0, 0, 0, 0, 255); -- ベース暗め　背景
entryFadeBg( spep_5, 0, 43, 0, 30, 30, 30, 180); -- ベース暗め　背景

setMoveKey(   spep_5,   1,    0, 250,   0);
setScaleKey(   spep_5,   1, 1.0, 1.0);



------------------------------------------------------
-- 斬撃 (70F)
------------------------------------------------------


-- ** エフェクト等 ** --
zangeki = entryEffect( spep_5, SP_08, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_5, zangeki, 0, 0, 0);
setEffScaleKey( spep_5, zangeki, 1.0, 1.0);
setEffAlphaKey( spep_5, zangeki, 255);
setEffRotateKey( spep_5, zangeki, 0);


-- ** 集中線 ** --
shuchusen42 = entryEffectLife( spep_5, 906, 44, 0x80,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_5, shuchusen42, 0, 100, 0);
setEffScaleKey( spep_5, shuchusen42, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusen42, 255);
setEffRotateKey( spep_5, shuchusen42, 0);


setDisp( spep_5+44, 1, 1);
setMoveKey(   spep_5+44,   1,    0, 50,   0);
setScaleKey(   spep_5+44,   1, 1.6, 1.6);


-- ** 音 ** --
playSe( spep_5+11, 1018);


-- ** 音 ** --
playSe( spep_5+44, 1032);


-- ** 次の準備 ** --
spep_6 = spep_5+64;
entryFade( spep_6-6, 2, 4, 4, 0, 0, 0, 255);     -- white fade
entryFadeBg( spep_6, 0, 110, 0, 10, 10, 10, 200); -- ベース暗め　背景




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
setMoveKey(   SP_dodge+9,   1,    0, 300,   0);
setMoveKey(   SP_dodge+9,   0,    -3000, -200,   0);
setScaleKey(   SP_dodge+9,   1, 1.7, 1.7);
endPhase(SP_dodge+10);

do return end
else end
------------------------------------------------------
-- 回避外
------------------------------------------------------


------------------------------------------------------
-- 被弾
------------------------------------------------------

changeAnime( spep_6, 1, 108); 
setMoveKey(   spep_6,   1,    -200, -50,   0);
setScaleKey(   spep_6,   1, 1.6, 1.6);
setDisp( spep_6, 1, 1);


-- ** 流線(横) ** --
ryusen6 = entryEffectLife( spep_6, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線7
setEffMoveKey( spep_6, ryusen6, 0, 0, 0);
setEffRotateKey( spep_6, ryusen6, -20);
setEffScaleKey( spep_6, ryusen6, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusen6, 255);



-- ** エフェクト等 ** --
hidan = entryEffect( spep_6, 150960, 0x100, -1, 0, 0, 0); --手前に突っ込む
setEffMoveKey( spep_6, hidan, 0, 0, 0);
setEffScaleKey( spep_6, hidan, 1.0, 1.0);
setEffAlphaKey( spep_6, hidan, 255);
setEffRotateKey( spep_6, hidan, 0);


setMoveKey(   spep_6+1,   1,    -180, -50,   0);

setMoveKey(   spep_6+10,   1,    -200, -70,   0);
setScaleKey(   spep_6+10,   1, 1.6, 1.6);


setMoveKey(   spep_6+110,   1,    -200, -70,   0);
setScaleKey(   spep_6+110,   1, 1.0, 1.0);
setDisp( spep_6+110, 1, 0);

-- ** 音 ** --
playSe( spep_6+4, 1034);
playSe( spep_6+20, 1034);
playSe( spep_6+40, 1034);
playSe( spep_6+60, 1034);
playSe( spep_6+80, 1034);



------------------------------------------------------
-- last (110F)
------------------------------------------------------

-- ** 次の準備 ** --

spep_8=spep_6+110;

entryFade( spep_8-5, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 0, 0, 255, 255, 255, 255);          -- ベース暗め　背景


--playSe( spep_9, SE_10);
playSe( spep_8+10, SE_09);
playSe( spep_8+60, SE_10);

--eff = entryEffect(  spep_8,   1585,   0,     -1,  0,  0,  0);--導入
eff = entryEffect(  spep_8,   1658,   0,     -1,  0,  0,  0);--導入
setEffMoveKey(spep_8, eff, 0, 0, 0);
setEffScaleKey( spep_8, eff, 1.1, 1.1);
setEffAlphaKey( spep_8, eff, 255);
setEffRotateKey( spep_8, eff, 0);
-- ** 集中線 ** --
shuchusen8 = entryEffectLife( spep_8+1, 906, 139, 0x100,  -1, 0,  0,  100);   -- 集中線
setEffMoveKey( spep_8+1, shuchusen8, 0, 100, 0);
setEffScaleKey( spep_8+1, shuchusen8, 1.5, 1.5);
setEffAlphaKey( spep_8+1, shuchusen8, 255);
setEffRotateKey( spep_8+1, shuchusen8, 0);


-- ダメージ表示
dealDamage(spep_8+16);

entryFade( spep_8+130, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_8+140);





end
