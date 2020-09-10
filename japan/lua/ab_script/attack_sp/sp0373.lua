

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 1066;
SE_13 = 1068; --爆煙
--1011
--1068


SP_01 = 150623;  --溜め
SP_02 = 150624;  --ef_001の敵用
SP_03 = 150625;  --構え→放つ
SP_04 = 150626;  --ef_002の敵用
SP_05 = 150627;  --ビーム移動
SP_06 = 150628;  --ビーム迫る

SP_07 = 190012;--ギャン
SP_08 = 1598;--


multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

------------------------------------------------------
-- 気溜め(120F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);


playSe( 34, SE_04);

ef = entryEffectLife( 0, SP_01,  120, 0x80,  -1,  0,  0,  -20);
setEffMoveKey(  0,  ef,  0,  -20,   0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);
setEffShake(0, ef, 120, 10);


shuchusen = entryEffectLife( 18, 906, 159, 0x80, -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.8, 1.8);

setDisp( 0, 1, 0);
speff = entryEffect(  35,   1504,   0x80,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  35,   1505,   0x80,  -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
speff = entryEffectLife( 120, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景


ct = entryEffectLife( 49, 190006, 80, 0x80, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(13, ct, 71, 8);
setEffScaleKey(13, ct, 0.7, 0.7);


entryFade( 17, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 115, 2, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 0, 0, 130, 0, 10, 10, 10, 210);       -- ベース暗め　背景
spep_1 = 120;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setMoveKey(   spep_1,   0,    0, 0,   0);
--setEffMoveKey(  spep_1,  ef,  0,  0,   0);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
--speff = entryEffectLife( spep_1, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景

shuchusen22 = entryEffectLife( spep_1, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen22, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFade( spep_1+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2=spep_1+90; --120

------------------------------------------------------
-- 構え→放つ…110
------------------------------------------------------
--setDisp( 0, 0, 0);
--setMoveKey(   spep_2,   0,    0, 0,   0);


ef2 = entryEffect( spep_2, SP_03, 0x100, -1,  0,  0,  0);
setEffAlphaKey(spep_2, ef2, 255);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);


shuchusen2 = entryEffectLife( spep_2, 906, 240, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);

sen2 = entryEffectLife( spep_2+54, 921, 67, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2, sen2, -130);
setEffScaleKey( spep_2, sen2, 1.8, 1.8);
--[[
sen22 = entryEffectLife( spep_2+71, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2+71, sen22, 10);
setEffScaleKey( spep_2+71, sen22, 1.6, 1.6);
]]--


playSe( spep_2, SE_06);

entryFadeBg( spep_2, 0, 110, 0, 10, 10, 10, 210);       -- ベース暗め　背景

ct3 = entryEffectLife( spep_2+53, 10012, 70, 0x100, -1, 0, 120, 350); -- ズオッ
setEffShake(spep_2+53, ct3, 92, 25);
setEffRotateKey(spep_2+53, ct3, 31);
setEffShake(spep_2+53, ct3, 35, 20);
setEffAlphaKey(spep_2+53, ct3, 255);
setEffAlphaKey(spep_2+75, ct3, 255);
setEffAlphaKey(spep_2+85, ct3, 0);
setEffMoveKey(  spep_2+53,  ct3,  150,  350,   0);
setEffMoveKey(  spep_2+75,  ct3,  150,  350,   0);
setEffMoveKey(  spep_2+85, ct3,  220,  450,   0);
setEffScaleKey(spep_2+52, ct3, 0.0, 0.0);
setEffScaleKey(spep_2+53, ct3, 0.8, 0.8);
setEffScaleKey(spep_2+54, ct3, 2.8, 2.8);
setEffScaleKey(spep_2+75, ct3, 2.8, 2.8);
setEffScaleKey(spep_2+85, ct3, 8.0, 8.0);

playSe( spep_2+53, SE_07);

entryFade( spep_2+50, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+105, 2, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_3=spep_2+110; --120+90

------------------------------------------------------
-- ビーム移動！70
------------------------------------------------------
--setDisp( spep_3, 0, 0);

ef3 = entryEffectLife( spep_3, SP_05, 70, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

--playSe( spep_3, SE_06);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 70, 0, 10, 10, 10, 210);       -- ベース暗め　背景

ryusen3 = entryEffectLife( spep_3, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, ryusen3, 30);
setEffScaleKey(spep_3, ryusen3, 1.8, 1.8);
setEffAlphaKey(spep_3, ryusen3, 0);
setEffAlphaKey(spep_3+1, ryusen3, 255);


entryFade( spep_3+63, 3,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_4=spep_3+70; --120+90+110

------------------------------------------------------
-- 迫る(60F)
------------------------------------------------------

--setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 102);                        -- 気ダメ後ろ
setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  450,  -450,   0);
setMoveKey(  spep_4,    1,  450,  -450,   0);
setMoveKey(  spep_4+15,    1,   280,  -220,   0);
setMoveKey(  spep_4+30,    1,   280,  -220,   0);
setScaleKey(  spep_4-1,   1,   1.6,  1.6);
setScaleKey(  spep_4+60,   1,   1.6,  1.6);


playSe( spep_4, SE_07);


setDisp( spep_4+60, 1, 0);

sen4 = entryEffectLife( spep_4, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen4, -130);
setEffScaleKey( spep_4, sen4, 1.6, 1.6);

ef4 = entryEffect( spep_4, SP_06,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, ef4, 1, 1);
setEffScaleKey(spep_4+80, ef4, 1, 1);

setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

--playSe( spep_4+60, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 210);       -- ベース暗め　背景


-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 10014, 58, 0x100, -1, 0, 150, 355); -- ズドドッ
setEffShake(spep_4, ct4, 99, 20);
setEffScaleKey( spep_4, ct4, 3, 3);
setEffRotateKey(spep_4, ct4, 70);
setEffAlphaKey(spep_4, ct4, 255);

entryFade( spep_4+50, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_5=spep_4+60; --120+90+110+70

------------------------------------------------------
-- ギャン(60F)
------------------------------------------------------
playSe( spep_5, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

entryFadeBg( spep_5, 0, 200, 0, 10, 10, 10, 210);       -- ベース暗め　背景

--entryFade( spep_5-8, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
gyan = entryEffect( spep_5, SP_07,   0x80, -1,  0,  0,  0);   -- ギャン

ctg = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 300); -- ギャン
setEffShake(spep_5, ctg, 99, 20);
setEffScaleKey( spep_5, ctg, 2.8, 2.8);
--setEffScaleKey( spep_6+10, ct3, 2.4, 2.4);
setEffScaleKey( spep_5+64, ctg, 4, 4);
setEffAlphaKey(spep_5, ctg, 255);
setEffAlphaKey(spep_5+10, ctg, 255);
setEffAlphaKey(spep_5+64, ctg, 0);

entryFade( spep_5+51, 6,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--[[
gyan = entryEffectLife( spep_5, SP_07, 75,  0x80, -1,  0,  0,  0);   -- ギャン

playSe( spep_5, SE_09);

ctg = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ctg, 0.1, 0.1);
setEffScaleKey( spep_5+40, ctg, 3.4, 3.4);
setEffScaleKey( spep_5+64, ctg, 3.8, 3.8);
setEffAlphaKey(spep_5, ctg, 255);
setEffAlphaKey(spep_5+60, ctg, 255);
setEffAlphaKey(spep_5+64, ctg, 0);
]]--
--entryFade( spep_5+65, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5+40, 1, 0);


removeAllEffect(spep_5+62);

spep_6=spep_5+63; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 405; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffectLife( spep_6, SP_08, 175,  0,  -1,  0,  0,  0);  

setDisp( spep_6, 1, 0);

playSe( spep_6+4, SE_10);


-- ダメージ表示
dealDamage(spep_6+17);

entryFade( spep_6+170, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+177);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
setMoveKey(   0,  0,  0,  0,  0);


playSe( 34, SE_04);

ef = entryEffectLife( 0, SP_02,  120, 0x80,  -1,  0,  0,  -20);
setEffMoveKey(  0,  ef,  0,  -20,   0);
setEffScaleKey( 0, ef, 1.0, 1.0);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);
setEffShake(0, ef, 120, 10);

setDisp( 0, 1, 0);
--[[
speff = entryEffect(  35,   1504,   0x80,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  35,   1505,   0x80,  -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--speff = entryEffectLife( 0, 1503, 115, 0x80,  -1, 0,  0,  0);   -- 背景
]]--

ct = entryEffectLife( 49, 190006, 80, 0x80, -1, 0, 0, 450);    -- ゴゴゴ・・・
setEffShake(13, ct, 71, 8);
setEffScaleKey(13, ct, -0.8, 0.8);

shuchusen = entryEffectLife( 18, 906, 159, 0x100, -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.8, 1.8);

entryFade( 17, 0, 0, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 115, 2, 3, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFadeBg( 0, 0, 130, 0, 10, 10, 10, 210);       -- ベース暗め　背景
spep_1 = 120;

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--setMoveKey(   spep_1,   0,    0, 0,   0);
--setEffMoveKey(  spep_1,  ef,  0,  0,   0);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
speff = entryEffectLife( spep_1, 1503, 90, 0x80,  -1, 0,  0,  0);   -- 背景

shuchusen22 = entryEffectLife( spep_1, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen22, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFade( spep_1+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2=spep_1+90; --120

------------------------------------------------------
-- 構え→放つ…110
------------------------------------------------------
--setDisp( 0, 0, 0);
--setMoveKey(   spep_2,   0,    0, 0,   0);


ef2 = entryEffect( spep_2, SP_04, 0x100, -1,  0,  0,  0);
setEffAlphaKey(spep_2, ef2, 255);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);


shuchusen2 = entryEffectLife( spep_2, 906, 240, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);

sen2 = entryEffectLife( spep_2+54, 921, 67, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2, sen2, -130);
setEffScaleKey( spep_2, sen2, 1.8, 1.8);
--[[
sen22 = entryEffectLife( spep_2+71, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2+71, sen22, 10);
setEffScaleKey( spep_2+71, sen22, 1.6, 1.6);
]]--


playSe( spep_2, SE_06);

entryFadeBg( spep_2, 0, 110, 0, 10, 10, 10, 210);       -- ベース暗め　背景

ct3 = entryEffectLife( spep_2+53, 10012, 70, 0x100, -1, 0, 120, 350); -- ズオッ
setEffShake(spep_2+53, ct3, 92, 25);
setEffRotateKey(spep_2+53, ct3, 31);
setEffShake(spep_2+53, ct3, 35, 20);
setEffAlphaKey(spep_2+53, ct3, 255);
setEffAlphaKey(spep_2+75, ct3, 255);
setEffAlphaKey(spep_2+85, ct3, 0);
setEffMoveKey(  spep_2+53,  ct3,  150,  350,   0);
setEffMoveKey(  spep_2+75,  ct3,  150,  350,   0);
setEffMoveKey(  spep_2+85, ct3,  220,  450,   0);
setEffScaleKey(spep_2+52, ct3, 0.0, 0.0);
setEffScaleKey(spep_2+53, ct3, 0.8, 0.8);
setEffScaleKey(spep_2+54, ct3, 2.8, 2.8);
setEffScaleKey(spep_2+75, ct3, 2.8, 2.8);
setEffScaleKey(spep_2+85, ct3, 8.0, 8.0);

playSe( spep_2+53, SE_07);

entryFade( spep_2+50, 0, 2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+105, 2, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_3=spep_2+110; --120+90

------------------------------------------------------
-- ビーム移動！70
------------------------------------------------------
--setDisp( spep_3, 0, 0);

ef3 = entryEffectLife( spep_3, SP_05, 70, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

--playSe( spep_3, SE_06);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 70, 0, 10, 10, 10, 210);       -- ベース暗め　背景

ryusen3 = entryEffectLife( spep_3, 920, 70, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, ryusen3, 30);
setEffScaleKey(spep_3, ryusen3, 1.8, 1.8);
setEffAlphaKey(spep_3, ryusen3, 0);
setEffAlphaKey(spep_3+1, ryusen3, 255);


entryFade( spep_3+63, 3,  5, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_4=spep_3+70; --120+90+110

------------------------------------------------------
-- 迫る(60F)
------------------------------------------------------

--setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 102);                        -- 気ダメ後ろ
setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  450,  -450,   0);
setMoveKey(  spep_4,    1,  450,  -450,   0);
setMoveKey(  spep_4+15,    1,   280,  -220,   0);
setMoveKey(  spep_4+30,    1,   280,  -220,   0);
setScaleKey(  spep_4-1,   1,   1.6,  1.6);
setScaleKey(  spep_4+60,   1,   1.6,  1.6);


playSe( spep_4, SE_07);


setDisp( spep_4+60, 1, 0);

sen4 = entryEffectLife( spep_4, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_4, sen4, -130);
setEffScaleKey( spep_4, sen4, 1.6, 1.6);

ef4 = entryEffect( spep_4, SP_06,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, ef4, 1, 1);
setEffScaleKey(spep_4+80, ef4, 1, 1);

setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

--playSe( spep_4+60, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 60, 0, 10, 10, 10, 210);       -- ベース暗め　背景


-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 10014, 58, 0x100, -1, 0, 150, 355); -- ズドドッ
setEffShake(spep_4, ct4, 99, 20);
setEffScaleKey( spep_4, ct4, 3, 3);
setEffRotateKey(spep_4, ct4, 10);
setEffAlphaKey(spep_4, ct4, 255);

entryFade( spep_4+50, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_5=spep_4+60; --120+90+110+70

------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------
playSe( spep_5, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_5, 1, 99, 20);

entryFadeBg( spep_5, 0, 200, 0, 10, 10, 10, 210);       -- ベース暗め　背景

--entryFade( spep_5-8, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
gyan = entryEffect( spep_5, SP_07,   0x80, -1,  0,  0,  0);   -- ギャン

ctg = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 300); -- ギャン
setEffShake(spep_5, ctg, 99, 20);
setEffScaleKey( spep_5, ctg, 2.8, 2.8);
--setEffScaleKey( spep_6+10, ct3, 2.4, 2.4);
setEffScaleKey( spep_5+64, ctg, 4, 4);
setEffAlphaKey(spep_5, ctg, 255);
setEffAlphaKey(spep_5+10, ctg, 255);
setEffAlphaKey(spep_5+64, ctg, 0);

entryFade( spep_5+51, 6,  6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--[[
gyan = entryEffectLife( spep_5, SP_07, 75,  0x80, -1,  0,  0,  0);   -- ギャン

playSe( spep_5, SE_09);

ctg = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep_5, ct, 99, 20);
setEffScaleKey( spep_5, ctg, 0.1, 0.1);
setEffScaleKey( spep_5+40, ctg, 3.4, 3.4);
setEffScaleKey( spep_5+64, ctg, 3.8, 3.8);
setEffAlphaKey(spep_5, ctg, 255);
setEffAlphaKey(spep_5+60, ctg, 255);
setEffAlphaKey(spep_5+64, ctg, 0);
]]--
--entryFade( spep_5+65, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5+40, 1, 0);


removeAllEffect(spep_5+62);

spep_6=spep_5+63; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 405; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey( SP_dodge+6,   0,   0, -54,   0);
setMoveKey( SP_dodge+7,   0,   3000, 0,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

bakuhatu = entryEffectLife( spep_6, SP_08, 175,  0,  -1,  0,  0,  0);  

setDisp( spep_6, 1, 0);

playSe( spep_6+4, SE_10);


-- ダメージ表示
dealDamage(spep_6+17);

entryFade( spep_6+170, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+177);

end