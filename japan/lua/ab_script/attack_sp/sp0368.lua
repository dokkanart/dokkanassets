

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


SP_01 = 150489; --溜め
SP_02 = 150490; --構え→投げる
SP_03 = 150491; --敵にヒット
SP_04 = 150492; --溜め（敵）
SP_05 = 150493; --構え→投げる（敵）

SP_06 = 190001;--ギャン

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

playSe( 0, SE_06);

ef = entryEffectLife( 0, SP_01,  120, 0x100,  -1,  0,  0,  150);
setEffMoveKey(  0,  ef,  0,  150,   0);
setEffScaleKey( 0, ef, 0.5, 0.5);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);

setDisp( 0, 1, 0);
speff = entryEffect(  35,   1504,   0x100,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  35,   1505,   0x100,  -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
speff = entryEffectLife( 0, 1503, 115, 0x80,  -1, 0,  0,  0);   -- 背景

--playSe( 50, SE_04);


shuchusen = entryEffectLife( 0, 906, 159, 0x80, -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.8, 1.8);

ct = entryEffectLife( 49, 190006, 80, 0x100, -1, 0, 0, 510);    -- ゴゴゴ・・・
setEffShake(13, ct, 71, 8);
setEffScaleKey(13, ct, 0.7, 0.7);

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

shuchusen22 = entryEffectLife( spep_1, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen22, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFade( spep_1+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2=spep_1+93; --120

------------------------------------------------------
-- 投げる…180
------------------------------------------------------
--setDisp( 0, 0, 0);
--setMoveKey(   spep_2,   0,    0, 0,   0);


ef2 = entryEffect( spep_2, SP_02, 0x100, -1,  0,  0,  0);
setEffAlphaKey(spep_2, ef2, 255);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);

sen2 = entryEffectLife( spep_2, 921, 68, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2, sen2, -130);
setEffScaleKey( spep_2, sen2, 1.6, 1.6);

sen22 = entryEffectLife( spep_2+71, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2+71, sen22, 10);
setEffScaleKey( spep_2+71, sen22, 1.6, 1.6);



shuchusen2 = entryEffectLife( spep_2, 906, 178, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);


playSe( spep_2, SE_04);

entryFadeBg( spep_2, 0, 180, 0, 10, 10, 10, 210);       -- ベース暗め　背景

ct3 = entryEffectLife( spep_2+130, 10012, 150, 0x100, -1, 0, 120, 350); -- ズオッ
setEffShake(spep_2+130, ct3, 92, 25);
setEffRotateKey(spep_2+130, ct3, 31);
setEffShake(spep_2+130, ct3, 35, 20);
setEffAlphaKey(spep_2+130, ct3, 255);
setEffAlphaKey(spep_2+160, ct3, 255);
setEffAlphaKey(spep_2+170, ct3, 0);
setEffMoveKey(  spep_2+135,  ct3,  120,  350,   0);
setEffMoveKey(  spep_2+155,  ct3,  120,  350,   0);
setEffMoveKey(  spep_2+170, ct3,  220,  450,   0);
setEffScaleKey(spep_2+130, ct3, 0.0, 0.0);
setEffScaleKey(spep_2+135, ct3, 2.8, 2.8);
setEffScaleKey(spep_2+160, ct3, 2.8, 2.8);
setEffScaleKey(spep_2+170, ct3, 8.0, 8.0);


playSe( spep_2+65, SE_04);
playSe( spep_2+125, SE_12);

entryFade( spep_2+65, 2, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+165, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+180; --120+90

------------------------------------------------------
-- 敵にヒット！120
------------------------------------------------------
--setDisp( spep_3, 0, 0);

ef3 = entryEffectLife( spep_3, SP_03, 110, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

--playSe( spep_3, SE_06);

-- 相手が画面に現れる

setDisp( spep_3+60, 1, 1);                             --敵
changeAnime( spep_3+60, 1, 104);
setScaleKey( spep_3,  1,  1.0, 1.0);
setScaleKey( spep_3+108,  1,  1.0, 1.0);
setMoveKey(  spep_3+60,    1,   625,  -15,   0);
setMoveKey(  spep_3+75,    1,  210,  -15,   0);
setMoveKey(  spep_3+105,   1,  210,  -15,   0);
setShakeChara( spep_3+60, 1, 45, 15);
--setShakeChara( spep_3+101, 1, 20, 10);

setDisp( spep_3+110, 1, 0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 120, 0, 10, 10, 10, 170);       -- ベース暗め　背景

ryusen3 = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, ryusen3, 10);
setEffScaleKey(spep_3, ryusen3, 1.3, 1.3);
setEffAlphaKey(spep_3, ryusen3, 0);
setEffAlphaKey(spep_3+1, ryusen3, 255);


-- 書き文字エントリー
--shuchusen3 = entryEffectLife( spep_3, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffRotateKey(spep_3, shuchusen3, 255);
--setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);


entryFade( spep_3+101, 5,  5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ct4 = entryEffectLife( spep_3, 10014, 120, 0x100, -1, 0, 80, 355); -- ズドドッ
setEffShake(spep_3, ct4, 119, 20);
setEffScaleKey( spep_3, ct4, 3, 3);
setEffRotateKey(spep_3, ct4, 70);
setEffAlphaKey(spep_3, ct4, 255);
setEffAlphaKey(spep_3+108, ct4, 255);
setEffAlphaKey(spep_3+109, ct4, 0);


spep_5=spep_3+110; --120+90+80

------------------------------------------------------
-- 迫る(40F)
------------------------------------------------------
--[[
--setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  450,  -450,   0);
setMoveKey(  spep_4,    1,  450,  -450,   0);
setMoveKey(  spep_4+15,    1,   130,  -220,   0);
setMoveKey(  spep_4+30,    1,   130,  -220,   0);
setScaleKey(  spep_4-1,   1,   1.6,  1.6);
setScaleKey(  spep_4+75,   1,   1.6,  1.6);


playSe( spep_4, SE_07);

entryFade( spep_4+35, 2,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+41, 1, 0);

ryusen4 = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen4, 190);
setEffScaleKey( spep_4-1, ryusen4, 1.4, 1.4);

ef4 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, ef4, 1, 1);
setEffScaleKey(spep_4+80, ef4, 1, 1);

setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

--playSe( spep_4+60, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 40, 0, 10, 10, 10, 210);       -- ベース暗め　背景


-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 10014, 75, 0x100, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct4, 99, 20);
setEffScaleKey( spep_4, ct4, 3, 3);
setEffRotateKey(spep_4, ct4, 70);
setEffAlphaKey(spep_4, ct4, 255);
setEffAlphaKey(spep_4+35, ct4, 255);
setEffAlphaKey(spep_4+39, ct4, 0);

spep_5=spep_4+40; --130+90+80
]]--
------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------

gyan = entryEffect( spep_5, SP_06,   0x80, -1,  0,  0,  0);   -- ギャン

playSe( spep_5, SE_09);

ctg = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep_5, ctg, 99, 20);
setEffScaleKey( spep_5, ctg, 0.1, 0.1);
setEffScaleKey( spep_5+30, ctg, 3.4, 3.4);
setEffScaleKey( spep_5+54, ctg, 3.8, 3.8);
setEffAlphaKey(spep_5, ctg, 255);
setEffAlphaKey(spep_5+50, ctg, 255);
setEffAlphaKey(spep_5+54, ctg, 0);

entryFade( spep_5+50, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5+40, 1, 0);

playSe( spep_5+50, SE_09);

removeAllEffect(spep_5+54);

spep_6=spep_5+60; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 465; --エンドフェイズのフレーム数を置き換える

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

bakuhatu = entryEffectLife( spep_6, 1578, 175,  0,  -1,  0,  0,  0);  

setDisp( spep_6, 1, 0);

playSe( spep_6+4, SE_10);
playSe( spep_6+116, SE_13);


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

playSe( 0, SE_06);

ef = entryEffectLife( 0, SP_04,  120, 0x100,  -1,  0,  0,  150);
setEffMoveKey(  0,  ef,  0,  150,   0);
setEffScaleKey( 0, ef, 0.5, 0.5);
setEffRotateKey(0, ef, 0);
setEffAlphaKey( 0, ef, 255);

setDisp( 0, 1, 0);
--speff = entryEffect(  35,   1504,   0x100,  -1,  0,  0,  0);   -- eff_005 (カットイン) 117で終了
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  35,   1505,   0x100,  -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
speff = entryEffectLife( 0, 1503, 115, 0x80,  -1, 0,  0,  0);   -- 背景

--playSe( 50, SE_04);


shuchusen = entryEffectLife( 0, 906, 159, 0x80, -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 0, shuchusen, 1.8, 1.8);

ct = entryEffectLife( 49, 190006, 80, 0x100, -1, 0, 0, 480);    -- ゴゴゴ・・・
setEffShake(13, ct, 71, 8);
setEffScaleKey(13, ct, -0.7, 0.7);

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

shuchusen22 = entryEffectLife( spep_1, 906, 87, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen22, 1.5, 1.5);


-- ** エフェクト等 ** --
entryFade( spep_1+83, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2=spep_1+93; --120

------------------------------------------------------
-- 投げる…180
------------------------------------------------------
--setDisp( 0, 0, 0);
--setMoveKey(   spep_2,   0,    0, 0,   0);


ef2 = entryEffect( spep_2, SP_05, 0x100, -1,  0,  0,  0);
setEffAlphaKey(spep_2, ef2, 255);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);

sen2 = entryEffectLife( spep_2, 921, 68, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2, sen2, -130);
setEffScaleKey( spep_2, sen2, 1.6, 1.6);

sen22 = entryEffectLife( spep_2+71, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2+71, sen22, 10);
setEffScaleKey( spep_2+71, sen22, 1.6, 1.6);



shuchusen2 = entryEffectLife( spep_2, 906, 178, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);


playSe( spep_2, SE_04);

entryFadeBg( spep_2, 0, 180, 0, 10, 10, 10, 210);       -- ベース暗め　背景

ct3 = entryEffectLife( spep_2+130, 10012, 150, 0x100, -1, 0, 120, 350); -- ズオッ
setEffShake(spep_2+130, ct3, 92, 25);
setEffRotateKey(spep_2+130, ct3, -20);
setEffShake(spep_2+130, ct3, 35, 20);
setEffAlphaKey(spep_2+130, ct3, 255);
setEffAlphaKey(spep_2+160, ct3, 255);
setEffAlphaKey(spep_2+170, ct3, 0);
setEffMoveKey(  spep_2+135,  ct3,  120,  350,   0);
setEffMoveKey(  spep_2+155,  ct3,  120,  350,   0);
setEffMoveKey(  spep_2+170, ct3,  220,  450,   0);
setEffScaleKey(spep_2+130, ct3, 0.0, 0.0);
setEffScaleKey(spep_2+135, ct3, 2.8, 2.8);
setEffScaleKey(spep_2+160, ct3, 2.8, 2.8);
setEffScaleKey(spep_2+170, ct3, 8.0, 8.0);


playSe( spep_2+65, SE_04);
playSe( spep_2+125, SE_12);

entryFade( spep_2+65, 2, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2+165, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=spep_2+180; --120+90

------------------------------------------------------
-- 敵にヒット！120
------------------------------------------------------
--setDisp( spep_3, 0, 0);

ef3 = entryEffectLife( spep_3, SP_03, 110, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey(  spep_3,  ef3,  0,  0,   0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffRotateKey(spep_3, ef3, 0);
setEffAlphaKey( spep_3, ef3, 255);

--playSe( spep_3, SE_07);

-- 相手が画面に現れる

setDisp( spep_3+60, 1, 1);                             --敵
changeAnime( spep_3+60, 1, 104);
setScaleKey( spep_3,  1,  1.0, 1.0);
setScaleKey( spep_3+108,  1,  1.0, 1.0);
setMoveKey(  spep_3+60,    1,   625,  -15,   0);
setMoveKey(  spep_3+75,    1,  210,  -15,   0);
setMoveKey(  spep_3+105,   1,  210,  -15,   0);
setShakeChara( spep_3+60, 1, 45, 15);
--setShakeChara( spep_3+101, 1, 20, 10);

setDisp( spep_3+110, 1, 0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 120, 0, 10, 10, 10, 170);       -- ベース暗め　背景

ryusen3 = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, ryusen3, 10);
setEffScaleKey(spep_3, ryusen3, 1.3, 1.3);
setEffAlphaKey(spep_3, ryusen3, 0);
setEffAlphaKey(spep_3+1, ryusen3, 255);


-- 書き文字エントリー
--shuchusen3 = entryEffectLife( spep_3, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線
--setEffRotateKey(spep_3, shuchusen3, 255);
--setEffScaleKey( spep_3, shuchusen3, 1.5, 1.5);


entryFade( spep_3+111, 5,  5, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ct4 = entryEffectLife( spep_3, 10014, 120, 0x100, -1, 0, 80, 355); -- ズドドッ
setEffShake(spep_3, ct4, 119, 20);
setEffScaleKey( spep_3, ct4, 3, 3);
setEffRotateKey(spep_3, ct4, 0);
setEffAlphaKey(spep_3, ct4, 255);
setEffAlphaKey(spep_3+108, ct4, 255);
setEffAlphaKey(spep_3+109, ct4, 0);


spep_5=spep_3+110; --120+90+80

------------------------------------------------------
-- 迫る(40F)
------------------------------------------------------
--[[
--setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4-1, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  spep_4-2,    1,   120,  0,   0);
setMoveKey(  spep_4-1,    1,  450,  -450,   0);
setMoveKey(  spep_4,    1,  450,  -450,   0);
setMoveKey(  spep_4+15,    1,   130,  -220,   0);
setMoveKey(  spep_4+30,    1,   130,  -220,   0);
setScaleKey(  spep_4-1,   1,   1.6,  1.6);
setScaleKey(  spep_4+75,   1,   1.6,  1.6);


playSe( spep_4, SE_07);

entryFade( spep_4+35, 2,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_4+41, 1, 0);

ryusen4 = entryEffectLife( spep_4-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_4-1, ryusen4, 190);
setEffScaleKey( spep_4-1, ryusen4, 1.4, 1.4);

ef4 = entryEffect( spep_4, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, ef4, 1, 1);
setEffScaleKey(spep_4+80, ef4, 1, 1);

setDamage( spep_4+77, 1, 0);  -- ダメージ振動等

--playSe( spep_4+60, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 40, 0, 10, 10, 10, 210);       -- ベース暗め　背景


-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 10014, 75, 0x100, -1, 0, 100, 355); -- ズドドッ
setEffShake(spep_4, ct4, 99, 20);
setEffScaleKey( spep_4, ct4, 3, 3);
setEffRotateKey(spep_4, ct4, 70);
setEffAlphaKey(spep_4, ct4, 255);
setEffAlphaKey(spep_4+35, ct4, 255);
setEffAlphaKey(spep_4+39, ct4, 0);

spep_5=spep_4+40; --130+90+80
]]--
------------------------------------------------------
-- ギャン(100F)
------------------------------------------------------

gyan = entryEffect( spep_5, SP_06,   0x80, -1,  0,  0,  0);   -- ギャン

playSe( spep_5, SE_09);

ctg = entryEffectLife( spep_5, 10006, 70, 0x100, -1, 0, 0, 260); -- ギャン
setEffShake(spep_5, ctg, 99, 20);
setEffScaleKey( spep_5, ctg, 0.1, 0.1);
setEffScaleKey( spep_5+30, ctg, 3.4, 3.4);
setEffScaleKey( spep_5+54, ctg, 3.8, 3.8);
setEffAlphaKey(spep_5, ctg, 255);
setEffAlphaKey(spep_5+50, ctg, 255);
setEffAlphaKey(spep_5+54, ctg, 0);

entryFade( spep_5+50, 5,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( spep_5+40, 1, 0);

playSe( spep_5+50, SE_09);

removeAllEffect(spep_5+54);

spep_6=spep_5+60; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 465; --エンドフェイズのフレーム数を置き換える

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

bakuhatu = entryEffectLife( spep_6, 1578, 175,  0,  -1,  0,  0,  0);  

setDisp( spep_6, 1, 0);

playSe( spep_6+4, SE_10);
playSe( spep_6+116, SE_13);

-- ダメージ表示
dealDamage(spep_6+17);

entryFade( spep_6+170, 5,  15, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+177);

end