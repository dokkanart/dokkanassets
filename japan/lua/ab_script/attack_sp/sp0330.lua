

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

SP_01 = 109095; --みぞおちパンチ
SP_02 = 109096; --溜め直前
SP_03 = 109097; --溜め
SP_04 = 109098; --バーズト
SP_05 = 109099; --花火
SP_06 = 109100; --みぞおちパンチ(敵)
SP_07 = 109101; --花火(敵)

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

setVisibleUI(0, 0);

setMoveKey( 70,  0,  0, -54,  0);

setScaleKey(   70,   0, 1.5, 1.5);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);


entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
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

spep_1 = 70;

------------------------------------------------------
-- 腹パンしちゃうぞ！！
------------------------------------------------------

setDisp( spep_1, 0, 0);
setDisp( spep_1, 1, 1);

changeAnime( spep_1, 1, 100);
setAnimeLoop( spep_1, 1, 1);
changeAnime( spep_1+54, 1, 108);
setAnimeLoop( spep_1+54, 1, 1);   

setMoveKey( spep_1, 1, 1000, 20, 0);
setMoveKey( spep_1+10, 1, 120, 60, 0);
setMoveKey( spep_1+54, 1, 100, 50, 0);
setMoveKey( spep_1+64, 1, 100, 50, 0);
setMoveKey( spep_1+120, 1, 450, 500, 0);

setScaleKey( spep_1,   1, 1.5, 1.5);
setScaleKey( spep_1+64,   1, 1.5, 1.5);
setScaleKey( spep_1+120,   1, 0, 0);

setRotateKey( spep_1+53, 1, 0);
setRotateKey( spep_1+54, 1, -20);
setRotateKey( spep_1+120, 1, -20);

setShakeChara( spep_1+54, 1 , 66, 8);

-- ** エフェクト等 ** --

entryEffect(  spep_1+39,  SP_01,  0x100, -1,  0,  0,  0); --みぞおちパンチ

ryusen_1 = entryEffectLife( spep_1, 920, 52, 0x80,  -1,  0,  0,  0);
setEffRotateKey(spep_1,ryusen_1,-15);
setEffScaleKey(spep_1, ryusen_1, 1.3, 1.3);

ryusen_b = entryEffectLife( spep_1+53, 924, 67, 0x80,  -1,  0,  0,  0); -- ぶっ飛び流線
setEffRotateKey( spep_1+53, ryusen_b, -45);
setEffScaleKey( spep_1+53, ryusen_b, 1.3, 1.3);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+39, 10011, 10, 0, -1, 0, -80, 150); -- シュン
setEffShake( spep_1+39, ct, 10, 5);
setEffAlphaKey( spep_1+39, ct, 255);
setEffScaleKey( spep_1+39, ct, 1.3, 1.3);

ct = entryEffectLife( spep_1+54, 10021, 20, 0, -1, 0, 80, 150); -- バゴォッ
setEffShake( spep_1+54, ct, 20, 5);
setEffAlphaKey( spep_1+54, ct, 255);
setEffScaleKey( spep_1+54, ct, 1.3, 1.3);

entryFadeBg(  spep_1, 0, 120, 0, 10, 10, 10, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 81; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+9, 0,  -1500, 0,   0);

endPhase(SP_dodge+10);

do return end
else end

playSe( spep_1, SE_05);
playSe( spep_1+39, 43);--瞬間移動
playSe( spep_1+54, 1009);--腹パンの音
playSe( spep_1+64, 1053);--飛ばされる音

entryFade( spep_1+115, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+120;

------------------------------------------------------
-- とことん、むかつく人ですね☆
------------------------------------------------------
setDisp( spep_2, 1, 0);

-- ** エフェクト等 ** --

entryEffect(  spep_2,  SP_02,  0x100, -1,  0,  0,  0); --溜め直前

speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_2, SE_04);

entryFade( spep_2+82, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ryusen_2 = entryEffectLife( spep_2, 921, 87, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2, ryusen_2 ,90);
setEffScaleKey(spep_2, ryusen_2, 2, 2);

entryFadeBg(  spep_2, 0, 87, 0, 10, 10, 10, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_2+10, 10008, 70, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_2+10, ct, 70, 8);
setEffScaleKey( spep_2+10, ct, 1.4, 1.4);

spep_3 = spep_2+87;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_3,   0, 1.5, 1.5);
setScaleKey( spep_3+1,   0, 1.0, 1.0);--70

playSe( spep_3+1, SE_05);
speff = entryEffect(  spep_3+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_3+86, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_3+65, SE_06);

spep_4 = spep_3+90;

------------------------------------------------------
-- くっらえ〜！！　
------------------------------------------------------

entryEffect(  spep_4,  SP_03,  0x100, -1,  0,  0,  0); --溜め

ryusen_3 = entryEffectLife( spep_4, 921, 75, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen_3 ,90);
setEffScaleKey(spep_4, ryusen_3, 2, 2);

playSe( spep_4, SE_03);
playSe( spep_4+20, SE_06);

shuchusen_1 = entryEffectLife( spep_4+47, 906, 23, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4+47, shuchusen_1, 1.3, 1.3);

entryFadeBg( spep_4, 0, 75, 0, 10, 10, 10, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4+8, 10012, 32, 0, -1, 0, 100, 300); -- ズオッ--268
setEffShake( spep_4+8, ct, 32, 5);
setEffAlphaKey( spep_4+8, ct, 255);
setEffAlphaKey( spep_4+30, ct, 255);--290
setEffAlphaKey( spep_4+40, ct, 0);--300
setEffScaleKey( spep_4+8, ct, 0.0, 0.0);
setEffScaleKey( spep_4+12, ct, 1.3, 1.3);
setEffScaleKey( spep_4+32, ct, 1.3, 1.3);
setEffScaleKey( spep_4+40, ct, 6.0, 6.0);

entryFade( spep_4+70, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+75;

------------------------------------------------------
-- な、何！？　体が光に包まれっ…！！
------------------------------------------------------

setDisp( spep_5, 1, 1);
setDisp( spep_5+49, 1, 0);
changeAnime( spep_5, 1, 108);   
setAnimeLoop( spep_5, 1, 1);

setMoveKey( spep_5, 1, -1000, -1000, 0);
setMoveKey( spep_5+20, 1, 0, 0, 0);
setMoveKey( spep_5+115, 1, 0, 0, 0);

setScaleKey( spep_5,   1, 1.7, 1.7);
setScaleKey( spep_5+20,   1, 2.0, 2.0);
setScaleKey( spep_5+115,   1, 2.0, 2.0);

setRotateKey( spep_5, 1, -40);
setRotateKey( spep_5+115, 1, -40);

setShakeChara( spep_5, 1 , 120, 8);

-- ** エフェクト等 ** --

entryEffect(  spep_5,  SP_04,  0x100+0x40, 1,  300,  0,  -100); --バーズト

playSe( spep_5+20, SE_03);
playSe( spep_5+49, SE_02);
playSe( spep_5+80, SE_07);

shuchusen_2 = entryEffectLife( spep_5+45, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_5+45, shuchusen_2, 1.3, 1.3);

ryusen_4 = entryEffectLife( spep_5, 921, 45, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5, ryusen_4 ,-45);
setEffScaleKey(spep_5, ryusen_4, 2, 2);

entryFadeBg(  spep_5, 0, 115, 0, 10, 10, 10, 255);       -- ベース暗め　背景

entryFade( spep_5+49, 2, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_5+110, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+115;

------------------------------------------------------
-- わーい、きたない花火だぁ！！
------------------------------------------------------

setDisp( spep_6, 1, 0);

-- ** エフェクト等 ** --

entryEffect(  spep_6,  SP_05,  0x100, -1,  0,  0,  0); --バーズト

entryFadeBg(  spep_6, 0, 120, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen_3 = entryEffectLife( spep_6, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_6, shuchusen_3, 200,250);
setEffScaleKey( spep_6, shuchusen_3, 1.5, 1.5);

playSe( spep_6+30, SE_10);

-- ダメージ表示
dealDamage( spep_6+30);

entryFade( spep_6+110, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+120);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
setVisibleUI(0, 0);

setMoveKey( 70,  0,  0, -54,  0);

setScaleKey(   70,   0, 1.5, 1.5);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);


entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
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

spep_1 = 70;

------------------------------------------------------
-- 腹パンしちゃうぞ！！
------------------------------------------------------

setDisp( spep_1, 0, 0);
setDisp( spep_1, 1, 1);

changeAnime( spep_1, 1, 100);
setAnimeLoop( spep_1, 1, 1);
changeAnime( spep_1+54, 1, 108);
setAnimeLoop( spep_1+54, 1, 1);   

setMoveKey( spep_1, 1, 1000, 20, 0);
setMoveKey( spep_1+10, 1, 120, 60, 0);
setMoveKey( spep_1+54, 1, 100, 50, 0);
setMoveKey( spep_1+64, 1, 100, 50, 0);
setMoveKey( spep_1+120, 1, 450, 500, 0);

setScaleKey( spep_1,   1, 1.5, 1.5);
setScaleKey( spep_1+64,   1, 1.5, 1.5);
setScaleKey( spep_1+120,   1, 0, 0);

setRotateKey( spep_1+53, 1, 0);
setRotateKey( spep_1+54, 1, -20);
setRotateKey( spep_1+120, 1, -20);

setShakeChara( spep_1+54, 1 , 66, 8);

-- ** エフェクト等 ** --

entryEffect(  spep_1+39,  SP_06,  0x100, -1,  0,  0,  0); --みぞおちパンチ

ryusen_1 = entryEffectLife( spep_1, 920, 52, 0x80,  -1,  0,  0,  0);
setEffRotateKey(spep_1,ryusen_1,-15);
setEffScaleKey(spep_1, ryusen_1, 1.3, 1.3);

ryusen_b = entryEffectLife( spep_1+53, 924, 67, 0x80,  -1,  0,  0,  0); -- ぶっ飛び流線
setEffRotateKey( spep_1+53, ryusen_b, -45);
setEffScaleKey( spep_1+53, ryusen_b, 1.3, 1.3);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+39, 10011, 10, 0, -1, 0, -80, 150); -- シュン
setEffShake( spep_1+39, ct, 10, 5);
setEffAlphaKey( spep_1+39, ct, 255);
setEffScaleKey( spep_1+39, ct, 1.3, 1.3);

ct = entryEffectLife( spep_1+54, 10021, 20, 0, -1, 0, 80, 150); -- バゴォッ
setEffShake( spep_1+54, ct, 20, 5);
setEffAlphaKey( spep_1+54, ct, 255);
setEffScaleKey( spep_1+54, ct, 1.3, 1.3);

entryFadeBg(  spep_1, 0, 120, 0, 10, 10, 10, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 81; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+9, 0,  -1500, 0,   0);

endPhase(SP_dodge+10);

do return end
else end

playSe( spep_1, SE_05);
playSe( spep_1+39, 43);--瞬間移動
playSe( spep_1+54, 1009);--腹パンの音
playSe( spep_1+64, 1053);--飛ばされる音

entryFade( spep_1+115, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+120;

------------------------------------------------------
-- とことん、むかつく人ですね☆
------------------------------------------------------
setDisp( spep_2, 1, 0);

-- ** エフェクト等 ** --

tametyoku = entryEffect(  spep_2,  SP_02,  0x100, -1,  0,  0,  0); --溜め直前
setEffScaleKey( spep_2, tametyoku, -1.0, 1.0);

--[[
speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_2, SE_04);

entryFade( spep_2+82, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ryusen_2 = entryEffectLife( spep_2, 921, 87, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2, ryusen_2 ,90);
setEffScaleKey(spep_2, ryusen_2, 2, 2);

entryFadeBg(  spep_2, 0, 87, 0, 10, 10, 10, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_2+10, 10008, 70, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( spep_2+10, ct, 70, 8);
setEffScaleKey( spep_2+10, ct, 1.4, 1.4);

spep_3 = spep_2+87;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( spep_3,   0, 1.5, 1.5);
setScaleKey( spep_3+1,   0, 1.0, 1.0);--70

playSe( spep_3+1, SE_05);
speff = entryEffect(  spep_3+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_3+86, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_3+65, SE_06);

spep_4 = spep_3+90;

------------------------------------------------------
-- くっらえ〜！！　
------------------------------------------------------

tame = entryEffect(  spep_4,  SP_03,  0x100, -1,  0,  0,  0); --溜め
setEffScaleKey( spep_4, tame, -1.0, 1.0);


ryusen_3 = entryEffectLife( spep_4, 921, 75, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4, ryusen_3 ,90);
setEffScaleKey(spep_4, ryusen_3, 2, 2);

playSe( spep_4, SE_03);
playSe( spep_4+20, SE_06);

shuchusen_1 = entryEffectLife( spep_4+47, 906, 23, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_4+47, shuchusen_1, 1.3, 1.3);

entryFadeBg( spep_4, 0, 75, 0, 10, 10, 10, 255);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4+8, 10012, 32, 0, -1, 0, 100, 300); -- ズオッ--268
setEffShake( spep_4+8, ct, 32, 5);
setEffAlphaKey( spep_4+8, ct, 255);
setEffAlphaKey( spep_4+30, ct, 255);--290
setEffAlphaKey( spep_4+40, ct, 0);--300
setEffScaleKey( spep_4+8, ct, 0.0, 0.0);
setEffScaleKey( spep_4+12, ct, 1.3, 1.3);
setEffScaleKey( spep_4+32, ct, 1.3, 1.3);
setEffScaleKey( spep_4+40, ct, 6.0, 6.0);

entryFade( spep_4+70, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+75;

------------------------------------------------------
-- な、何！？　体が光に包まれっ…！！
------------------------------------------------------

setDisp( spep_5, 1, 1);
setDisp( spep_5+49, 1, 0);
changeAnime( spep_5, 1, 108);   
setAnimeLoop( spep_5, 1, 1);

setMoveKey( spep_5, 1, -1000, -1000, 0);
setMoveKey( spep_5+20, 1, 0, 0, 0);
setMoveKey( spep_5+115, 1, 0, 0, 0);

setScaleKey( spep_5,   1, 1.7, 1.7);
setScaleKey( spep_5+20,   1, 2.0, 2.0);
setScaleKey( spep_5+115,   1, 2.0, 2.0);

setRotateKey( spep_5, 1, -40);
setRotateKey( spep_5+115, 1, -40);

setShakeChara( spep_5, 1 , 120, 8);

-- ** エフェクト等 ** --

entryEffect(  spep_5,  SP_04,  0x100+0x40, 1,  300,  0,  -100); --バーズト

playSe( spep_5+20, SE_03);
playSe( spep_5+49, SE_02);
playSe( spep_5+80, SE_07);

shuchusen_2 = entryEffectLife( spep_5+45, 906, 45, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(spep_5+45, shuchusen_2, 1.3, 1.3);

ryusen_4 = entryEffectLife( spep_5, 921, 45, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_5, ryusen_4 ,-45);
setEffScaleKey(spep_5, ryusen_4, 2, 2);

entryFadeBg(  spep_5, 0, 115, 0, 10, 10, 10, 255);       -- ベース暗め　背景

entryFade( spep_5+49, 2, 5, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( spep_5+110, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6 = spep_5+115;

------------------------------------------------------
-- わーい、きたない花火だぁ！！
------------------------------------------------------

setDisp( spep_6, 1, 0);

-- ** エフェクト等 ** --

hanabi = entryEffect(  spep_6,  SP_07,  0x100, -1,  0,  0,  0); --バーズト
setEffScaleKey( spep_6, hanabi, -1.0, 1.0);

entryFadeBg(  spep_6, 0, 120, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen_3 = entryEffectLife( spep_6, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffMoveKey( spep_6, shuchusen_3, 200,250);
setEffScaleKey( spep_6, shuchusen_3, 1.5, 1.5);

playSe( spep_6+30, SE_10);

-- ダメージ表示
dealDamage( spep_6+30);

entryFade( spep_6+110, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_6+120);

end
