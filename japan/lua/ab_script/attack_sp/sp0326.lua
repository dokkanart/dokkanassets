

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

SP_01 = 102211;--登場
SP_02 = 102212;--射つ
SP_03 = 102213;--爆撃〜格闘
SP_04 = 102214;--溜め
SP_05 = 102215;--迫る
SP_06 = 102216;--射つ(敵)
SP_07 = 102217;--爆撃〜格闘(敵)
SP_08 = 102218;--溜め(敵)
SP_09 = 1906;--地球消滅(黄緑)

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- マグマからブロリー(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setVisibleUI(0, 0);
setDisp( 0, 0, 0);

setMoveKey(   10,   0,    -1100, -54,   0);
setMoveKey(   240,   0,    -1100, -54,   0);

toujyou = entryEffect(  0,   SP_01,   0x80,  -1,  0,  0,  -200);   -- ブロリー登場
setEffScaleKey( 0, toujyou, 1.2, 1.2);

speff = entryEffect(  10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 10, SE_04);

gogogo = playSe( 0, 1044);
stopSe( 115, gogogo,5);

-- 書き文字エントリー

ct = entryEffectLife( 11, 190006, 100, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake(11, ct, 135, 8);
setEffScaleKey(11, ct, 0.8, 0.8);

entryFade( 0, 0, 1, 25, 255, 0, 0, 255);     -- red fade

entryFade( 1155, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1 = 120;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 0.7, 0.7);--169
--setScaleKey( 1,   0, 1.0, 1.0);--170

playSe( spep_1, SE_05);--170
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spname = entryEffectLife( spep_1, 1508, 90 ,0x00,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( spep_1+75, SE_06);

spep_2 = spep_1+89;

------------------------------------------------------
--ブロリー射つ(110F)
------------------------------------------------------

entryEffect(  spep_2,   SP_02,   0x00,  -1,  0,  0,  0);   -- ブロリー射つ

playSe( spep_2, 1021);

ryusen_1 = entryEffectLife( spep_2, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(spep_2, ryusen_1, 2.0, 2.0);
setEffRotateKey(spep_2, ryusen_1, -150);

entryFadeBg( spep_2, 0, 40, 0,0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 230; --エンドフェイズのフレーム数を置き換える

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

entryFade( spep_2+32, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+40;

------------------------------------------------------
-- 爆撃〜格闘(100F)
------------------------------------------------------

setDisp( spep_3, 1, 1);

setShakeChara( spep_3, 1, 230, 8);

changeAnime( spep_3, 1, 117);
setAnimeLoop( spep_3, 1, 1);
changeAnime( spep_3+12, 1, 108);
changeAnime( spep_3+85, 1, 106);
changeAnime( spep_3+115, 1, 108);

setMoveKey(  spep_3,    1,  350, -180,   0);
setMoveKey(  spep_3+10,    1,   250, -180,   0);
setMoveKey(  spep_3+84,    1,   250, -180,   0);
setMoveKey(  spep_3+85,    1,   100, -50,   0);
setMoveKey(  spep_3+90,    1,   100, -50,   0);
setMoveKey(  spep_3+114,    1,   100, -59,   0);
setMoveKey(  spep_3+115,    1,   200, -60,   0);
setMoveKey(  spep_3+190,    1,   200, -60,   0);
setMoveKey(  spep_3+200,    1,   300, -50,   0);
setMoveKey(  spep_3+230,    1,   300, -50,   0);

setScaleKey(  spep_3,   1, 0.5, 0.5);
setScaleKey(  spep_3+10,   1, 1.5, 1.5);
setScaleKey(  spep_3+115,   1, 1.5, 1.5);
setScaleKey(  spep_3+190,   1, 3.0, 3.0);
setScaleKey(  spep_3+200,   1, 0.5, 0.5);
setScaleKey(  spep_3+230,   1, 0.5, 0.5);

-- ** エフェクト等 ** --

playSe( spep_3+13, 1008);
playSe( spep_3+25, 1008);
playSe( spep_3+39, 1008);
playSe( spep_3+47, 1008);
playSe( spep_3+54, 1008);
playSe( spep_3+58, SE_10);

playSe( spep_3+115, SE_03);
playSe( spep_3+135, SE_03);
playSe( spep_3+155, SE_03);
playSe( spep_3+175, SE_03);
playSe( spep_3+190, SE_06);

entryFadeBg( spep_3, 0, 250, 0,0, 0, 0, 255);          -- ベース暗め　背景

shuchusen = entryEffectLife( spep_3+13, 906, 63, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+13, shuchusen, 1.3, 1.3);
setEffScaleKey(  spep_3+76, shuchusen, 1.3, 1.3);

shuchusen_2 = entryEffectLife( spep_3+115, 906,115, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+115, shuchusen_2, 1.3, 1.3);
setEffScaleKey(  spep_3+230, shuchusen_2, 1.3, 1.3);

entryEffect( spep_3, SP_03,  0x100, -1,  0,  0,  0);   --爆撃〜格闘

ryusen_2 = entryEffectLife( spep_3, 921, 85, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(spep_3, ryusen_2, 2.0, 2.0);
setEffRotateKey(spep_3, ryusen_2, 20);

ryusen_3 = entryEffectLife( spep_3+190, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(spep_3+190, ryusen_3, 2.0, 2.0);
setEffRotateKey(spep_3+190, ryusen_3, 20);

entryFade( spep_3+225, 3,  2, 10, 0, 255, 0, 255);     -- gleen fade

spep_4 = spep_3+230;

------------------------------------------------------
--オメガブラスター(溜め&発射)
------------------------------------------------------

setDisp( spep_4, 1, 0);

-- ** エフェクト等 ** --

playSe( spep_4, SE_03);
playSe( spep_4+20, SE_03);
playSe( spep_4+40, SE_03);
playSe( spep_4+77, SE_06);
playSe( spep_4+100, SE_07);

entryEffect( spep_4, SP_04,   0, -1,  0,  0,  0);   --溜め&発射

shuchusen = entryEffectLife( spep_4, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+36, shuchusen, 1.3, 1.3);
setEffScaleKey(  spep_4+76, shuchusen, 1.3, 1.3);

ryusen_3 = entryEffectLife(  spep_4+77, 921, 83, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4+77, ryusen_3, 190);
setEffScaleKey(  spep_4+77, ryusen_3, 1.6, 1.6);

entryFadeBg( spep_4, 0, 190, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4+77, 10012, 83, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+77, ct, 100, 5);
setEffAlphaKey(spep_4+77, ct, 255);--268
setEffAlphaKey(spep_4+150, ct, 255);--290
setEffAlphaKey(spep_4+160, ct, 0);
setEffScaleKey(spep_4+77, ct, 0.0, 0.0);--67
setEffScaleKey(spep_4+81, ct, 2.5, 2.5);--71
setEffScaleKey(spep_4+150, ct, 2.5, 2.5);
setEffScaleKey(spep_4+160, ct, 6.0, 6.0);

entryFade( spep_4+185, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+190;

------------------------------------------------------
--オメガブラスター(迫る)
------------------------------------------------------

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 106);

setShakeChara( spep_5, 1, 50, 8);

setMoveKey(  spep_5, 1,  0, 200,   0);
setMoveKey(  spep_5+50, 1,  300, -200,   0);

setScaleKey(  spep_5,  1, 0.8, 0.8);
setScaleKey(  spep_5+50,  1, 0.8, 0.8);

-- ** エフェクト等 ** --

playSe( spep_5, SE_07);

entryEffect( spep_5, SP_05,   0, -1,  0,  0,  0);   --溜め&発射

ryusen_4 = entryEffectLife( spep_5, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(spep_5, ryusen_4, 2.0, 2.0);
setEffRotateKey(spep_5, ryusen_4, -140);

entryFadeBg( spep_5, 0, 50, 0,0, 0, 0, 180);          -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( spep_5, 10014, 50, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 50, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, 70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5, ct, 255);

entryFade( spep_5+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+50;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

--[[
sen2 = entryEffectLife( 941, 921, 152, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 941, sen2, 310);
setEffScaleKey( 941, sen2, 2.0, 2.0);
]]--


entryFadeBg( spep_6, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景 941

tikyuuhakai = entryEffect( spep_6, SP_09,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_6, tikyuuhakai , 180, 8);
setEffScaleKey( spep_6, tikyuuhakai , 1.1, 1.1);

--[[
shuchusen = entryEffectLife( spep_5, 906, 153, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen, 1.0, 1.0);
setEffScaleKey(  spep_5+40, shuchusen, 1.0, 1.0);
]]--

--playSe( 733, 1018);
playSe( spep_6+10, SE_10);

-- ダメージ表示
dealDamage(spep_6+20);

entryFade( spep_6+96, 9,  10, 1, 8, 8, 8, 255); -- black fade

endPhase(spep_6+114);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- マグマからブロリー(40F)
------------------------------------------------------

setVisibleUI(0, 0);
setDisp( 0, 0, 0);

setMoveKey(   10,   0,    -1100, -54,   0);
setMoveKey(   240,   0,    -1100, -54,   0);

toujyou = entryEffect(  0,   SP_01,   0x80,  -1,  0,  0,  -200);   -- ブロリー登場
setEffScaleKey( 0, toujyou, -1.2, 1.2);

--[[
speff = entryEffect(  10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( 10, SE_04);

gogogo = playSe( 0, 1044);
stopSe( 115, gogogo,5);

-- 書き文字エントリー

ct = entryEffectLife( 11, 190006, 100, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake(11, ct, 135, 8);
setEffScaleKey(11, ct, -0.8, 0.8);

entryFade( 0, 0, 1, 25, 255, 0, 0, 255);     -- red fade

entryFade( 1155, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_1 = 120;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_1,   0, 0.7, 0.7);--169
--setScaleKey( 1,   0, 1.0, 1.0);--170

playSe( spep_1, SE_05);--170
speff = entryEffect( spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

spname = entryEffectLife( spep_1, 1508, 90 ,0x00,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+85, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( spep_1+75, SE_06);

spep_2 = spep_1+89;

------------------------------------------------------
--ブロリー射つ(110F)
------------------------------------------------------

entryEffect(  spep_2,   SP_06,   0x00,  -1,  0,  0,  0);   -- ブロリー射つ

playSe( spep_2, 1021);

ryusen_1 = entryEffectLife( spep_2, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(spep_2, ryusen_1, 2.0, 2.0);
setEffRotateKey(spep_2, ryusen_1, -150);

entryFadeBg( spep_2, 0, 40, 0,0, 0, 0, 255);          -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 230; --エンドフェイズのフレーム数を置き換える

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

entryFade( spep_2+32, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3 = spep_2+40;

------------------------------------------------------
-- 爆撃〜格闘(100F)
------------------------------------------------------

setDisp( spep_3, 1, 1);

setShakeChara( spep_3, 1, 230, 8);

changeAnime( spep_3, 1, 117);
setAnimeLoop( spep_3, 1, 1);
changeAnime( spep_3+12, 1, 108);
changeAnime( spep_3+85, 1, 106);
changeAnime( spep_3+115, 1, 108);

setMoveKey(  spep_3,    1,  350, -180,   0);
setMoveKey(  spep_3+10,    1,   250, -180,   0);
setMoveKey(  spep_3+84,    1,   250, -180,   0);
setMoveKey(  spep_3+85,    1,   100, -50,   0);
setMoveKey(  spep_3+90,    1,   100, -50,   0);
setMoveKey(  spep_3+114,    1,   100, -59,   0);
setMoveKey(  spep_3+115,    1,   200, -60,   0);
setMoveKey(  spep_3+190,    1,   200, -60,   0);
setMoveKey(  spep_3+200,    1,   300, -50,   0);
setMoveKey(  spep_3+230,    1,   300, -50,   0);

setScaleKey(  spep_3,   1, 0.5, 0.5);
setScaleKey(  spep_3+10,   1, 1.5, 1.5);
setScaleKey(  spep_3+115,   1, 1.5, 1.5);
setScaleKey(  spep_3+190,   1, 3.0, 3.0);
setScaleKey(  spep_3+200,   1, 0.5, 0.5);
setScaleKey(  spep_3+230,   1, 0.5, 0.5);

-- ** エフェクト等 ** --

playSe( spep_3+13, 1008);
playSe( spep_3+25, 1008);
playSe( spep_3+39, 1008);
playSe( spep_3+47, 1008);
playSe( spep_3+54, 1008);
playSe( spep_3+58, SE_10);

playSe( spep_3+115, SE_03);
playSe( spep_3+135, SE_03);
playSe( spep_3+155, SE_03);
playSe( spep_3+175, SE_03);
playSe( spep_3+190, SE_06);

entryFadeBg( spep_3, 0, 250, 0,0, 0, 0, 255);          -- ベース暗め　背景

shuchusen = entryEffectLife( spep_3+13, 906, 63, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+13, shuchusen, 1.3, 1.3);
setEffScaleKey(  spep_3+76, shuchusen, 1.3, 1.3);

shuchusen_2 = entryEffectLife( spep_3+115, 906,115, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3+115, shuchusen_2, 1.3, 1.3);
setEffScaleKey(  spep_3+230, shuchusen_2, 1.3, 1.3);

entryEffect( spep_3, SP_07,  0x100, -1,  0,  0,  0);   --爆撃〜格闘

ryusen_2 = entryEffectLife( spep_3, 921, 85, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(spep_3, ryusen_2, 2.0, 2.0);
setEffRotateKey(spep_3, ryusen_2, 20);

ryusen_3 = entryEffectLife( spep_3+190, 921, 40, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(spep_3+190, ryusen_3, 2.0, 2.0);
setEffRotateKey(spep_3+190, ryusen_3, 20);

entryFade( spep_3+225, 3,  2, 10, 0, 255, 0, 255);     -- gleen fade

spep_4 = spep_3+230;

------------------------------------------------------
--オメガブラスター(溜め&発射)
------------------------------------------------------

setDisp( spep_4, 1, 0);

-- ** エフェクト等 ** --

playSe( spep_4, SE_03);
playSe( spep_4+20, SE_03);
playSe( spep_4+40, SE_03);
playSe( spep_4+77, SE_06);
playSe( spep_4+100, SE_07);

entryEffect( spep_4, SP_04,   0, -1,  0,  0,  0);   --溜め&発射

shuchusen = entryEffectLife( spep_4, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+36, shuchusen, 1.3, 1.3);
setEffScaleKey(  spep_4+76, shuchusen, 1.3, 1.3);

ryusen_3 = entryEffectLife(  spep_4+77, 921, 83, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( spep_4+77, ryusen_3, 190);
setEffScaleKey(  spep_4+77, ryusen_3, 1.6, 1.6);

entryFadeBg( spep_4, 0, 190, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4+77, 10012, 83, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_4+77, ct, 100, 5);
setEffAlphaKey(spep_4+77, ct, 255);--268
setEffAlphaKey(spep_4+150, ct, 255);--290
setEffAlphaKey(spep_4+160, ct, 0);
setEffScaleKey(spep_4+77, ct, 0.0, 0.0);--67
setEffScaleKey(spep_4+81, ct, 2.5, 2.5);--71
setEffScaleKey(spep_4+150, ct, 2.5, 2.5);
setEffScaleKey(spep_4+160, ct, 6.0, 6.0);

entryFade( spep_4+185, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+190;

------------------------------------------------------
--オメガブラスター(迫る)
------------------------------------------------------

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 106);

setShakeChara( spep_5, 1, 50, 8);

setMoveKey(  spep_5, 1,  0, 200,   0);
setMoveKey(  spep_5+50, 1,  300, -200,   0);

setScaleKey(  spep_5,  1, 0.8, 0.8);
setScaleKey(  spep_5+50,  1, 0.8, 0.8);

-- ** エフェクト等 ** --

playSe( spep_5, SE_07);

entryEffect( spep_5, SP_05,   0, -1,  0,  0,  0);   --溜め&発射

ryusen_4 = entryEffectLife( spep_5, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffScaleKey(spep_5, ryusen_4, 2.0, 2.0);
setEffRotateKey(spep_5, ryusen_4, -140);

entryFadeBg( spep_5, 0, 50, 0,0, 0, 0, 180);          -- ベース暗め　背景

-- 書き文字エントリー

ct = entryEffectLife( spep_5, 10014, 50, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_5, ct, 50, 20);
setEffScaleKey( spep_5, ct, 2.4, 2.4);
setEffRotateKey(spep_5, ct, -70);
setEffAlphaKey(spep_5, ct, 255);
setEffAlphaKey(spep_5, ct, 255);

entryFade( spep_5+45, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+50;

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

--[[
sen2 = entryEffectLife( 941, 921, 152, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 941, sen2, 310);
setEffScaleKey( 941, sen2, 2.0, 2.0);
]]--


entryFadeBg( spep_6, 0, 149, 0, 10, 10, 10, 180);       -- ベース暗め　背景 941

tikyuuhakai = entryEffect( spep_6, SP_09,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffShake( spep_6, tikyuuhakai , 180, 8);
setEffScaleKey( spep_6, tikyuuhakai , 1.1, 1.1);

--[[
shuchusen = entryEffectLife( spep_5, 906, 153, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_5, shuchusen, 1.0, 1.0);
setEffScaleKey(  spep_5+40, shuchusen, 1.0, 1.0);
]]--

--playSe( 733, 1018);
playSe( spep_6+10, SE_10);

-- ダメージ表示
dealDamage(spep_6+20);

entryFade( spep_6+96, 9,  10, 1, 8, 8, 8, 255); -- black fade

endPhase(spep_6+114);
end
