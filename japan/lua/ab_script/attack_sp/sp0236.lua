

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

tyo = -30;
tyo2 = -40;
SP_start = -69;

SP_01 = 100295;--溜め
SP_02 = 100297;--発射
SP_03 = 100299;--共通命中
SP_05 = 190000;--ギャン

SP_01e = 100296;--敵ver溜め
SP_02e = 100298;--敵ver発射

--changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setScaleKey(   0,   0, 1.0, 1.0);
setScaleKey(   1,   0, 1.0, 1.0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
--setRotateKey( 0,  0,  20 );

entryFadeBg( 0, 0, 101, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 17);                       -- 溜め!

speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 69, SE_04);


playSe( SP_start+ 93, SE_03);
playSe( SP_start+ 113, SE_03);
playSe( SP_start+ 133, SE_03);
playSe( SP_start+ 153, SE_03);


-- ** エフェクト等 ** --

kame_hand = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand, 1.0, 1.0);

setShakeChara( SP_start+ 70, 0, 90, 5);
setEffShake( SP_start+70, kame_hand, 90, 5);
setShake( SP_start+ 70,90, 10);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 80, 0x100, -1, 0, -190, 350);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

setMoveKey(   SP_start+ 170,   0,    0, 0,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

--[[playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]


--極限Z--
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+257);--エフェクト全削除

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 257, 0, 30);                                    -- かめはめ発射ポーズ
setDisp( SP_start+ 257, 0, 1);
setRotateKey( SP_start+ 257,  0,  20 );

setMoveKey( SP_start+  257,    0,      30,  10,   0);
setMoveKey( SP_start+  270,    0,      30,  10,   0);
setMoveKey( SP_start+  280,    0,   30,  10,   0);

changeAnime( SP_start+ 277, 0, 31);                                    -- かめはめ発射ポーズ

kamehame_beam = entryEffect( SP_start+ 257, SP_02, 0x40+0x100,  0,  0,  0,  0);   -- 伸びるかめはめ波
setEffAlphaKey( SP_start+257, kamehame_beam, 255);
--setEffAlphaKey( SP_start+260, kamehame_beam, 0);
setEffAlphaKey( SP_start+261, kamehame_beam, 255);

setEffScaleKey(SP_start+ 257, kamehame_beam, 1, 1);
--setEffScaleKey(SP_start+ 257+96, kamehame_beam, 1.3, 1.3);

playSe( SP_start+ 257, SE_07);

setMoveKey(  SP_start+ 257+74,    0,   -750,  260,   0);
setMoveKey(  SP_start+ 257+84,    0,   -1200,  360,   120);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setScaleKey( SP_start+ 369,   0, 0.5, 0.5);
setScaleKey( SP_start+ 369,   0, 1.0, 1.0);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 257, 0, 109, 0, 10, 10, 10, 200);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+ 257, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+257, sen2, 205);
setEffScaleKey( SP_start+ 257, sen2, 1.6, 1.6);

setShakeChara( SP_start+ 257, 0, 54, 10);
setEffShake( SP_start+257, kamehame_beam, 30, 10);
setShake( SP_start+ 305,60, 10);

shuchusen = entryEffectLife( SP_start+ 257, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 257, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);
entryFade( SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_start+ 366,    0,   -900,  350,   120);

removeAllEffect( SP_start+365);--エフェクト全削除

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);

--敵が攻撃を受ける角度を変更
changeAnime( SP_start+ 370, 1, 118);                        -- 気ダメ後ろ

setMoveKey( SP_start+  369,    1,   120,  0,   0);
setMoveKey( SP_start+  370,    1,  400,  -400,   0);
setMoveKey( SP_start+  371,    1,  400,  -400,   0);
setMoveKey( SP_start+  399,    1,   120,  -270,   0);

setScaleKey( SP_start+  370,   1,   1.5,  1.5);
setScaleKey( SP_start+  444,   1,   1.5,  1.5);

playSe( SP_start+ 370, SE_06);
playSe( SP_start+ 380, SE_06);
playSe( SP_start+ 390, SE_06);
playSe( SP_start+ 400, SE_06);

ryusen = entryEffectLife( SP_start+ 370, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start+ 370, ryusen, 230);
setEffScaleKey( SP_start+ 370, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+ 452, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 435, SE_09);
setDisp( SP_start+ 430, 1, 0);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

--entryFadeBg( SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース真っ暗　背景
entryFadeBg( SP_start+ 370, 0, 110, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, 70);
setEffAlphaKey( SP_start+370, ct, 255);
--setEffAlphaKey( SP_start+430, ct, 255);
setEffAlphaKey( SP_start+409, ct, 0);

kamehame_beam = entryEffect( SP_start+ 430, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( SP_start+ 438, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start+438, ct, 99, 20);
setEffScaleKey( SP_start+ 438, ct, 0.1, 0.1);
setEffScaleKey( SP_start+ 451, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ 461, ct, 2.8, 2.8);
setEffAlphaKey( SP_start+438, ct, 255);
setEffAlphaKey( SP_start+471, ct, 255);
setEffAlphaKey( SP_start+480, ct, 0);

entryFade( SP_start+ 480, 6,  13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 347; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

SP_ATK_4 = SP_start+499;

bakuhatu = entryEffect( SP_ATK_4,1574,0,-1,0,0,-100);
setEffScaleKey( SP_ATK_4, bakuhatu, 1.4, 1.4);

setDisp( SP_ATK_4, 1, 0);

-- 書き文字エントリー

playSe( SP_ATK_4+4, SE_10);

-- ダメージ表示
dealDamage(SP_ATK_4+17);

entryFade( SP_ATK_4+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+111);

else

------------------------------------------------------
--敵側
------------------------------------------------------
setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
--setRotateKey( 0,  0,  20 );

entryFadeBg( 0, 0, 101, 0, 10, 10, 10, 180);       -- ベース暗め　背景

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 17);                       -- 溜め!

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start+ 69, SE_04);


playSe( SP_start+ 93, SE_03);
playSe( SP_start+ 113, SE_03);
playSe( SP_start+ 133, SE_03);
playSe( SP_start+ 153, SE_03);

-- ** エフェクト等 ** --

kame_hand = entryEffect( SP_start+ 70, SP_01e, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand, 1.0, 1.0);


setShakeChara( SP_start+ 70, 0, 90, 5);
setEffShake( SP_start+70, kame_hand, 90, 5);
setShake( SP_start+ 70,90, 10);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 80, 0x100, -1, 0, -190, 350);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

setMoveKey(   SP_start+ 170,   0,    0, 0,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

--[[playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]


--極限Z--
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+ 170, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end


entryFade( SP_start+ 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+257);--エフェクト全削除

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 257, 0, 30);                                    -- かめはめ発射ポーズ
setDisp( SP_start+ 257, 0, 1);
setRotateKey( SP_start+ 257,  0,  20 );

setMoveKey( SP_start+  257,    0,      30,  10,   0);
setMoveKey( SP_start+  270,    0,      30,  10,   0);
setMoveKey( SP_start+  280,    0,   30,  10,   0);

changeAnime( SP_start+ 277, 0, 31);                                    -- かめはめ発射ポーズ

kamehame_beam = entryEffect( SP_start+ 257, SP_02e, 0x40+0x100,  0,  0,  0,  0);   -- 伸びるかめはめ波
setEffAlphaKey( SP_start+257, kamehame_beam, 255);
--setEffAlphaKey( SP_start+260, kamehame_beam, 0);
setEffAlphaKey( SP_start+261, kamehame_beam, 255);

setEffScaleKey(SP_start+ 257, kamehame_beam, 1, 1);
--setEffScaleKey(SP_start+ 257+96, kamehame_beam, 1.3, 1.3);

playSe( SP_start+ 257, SE_07);

setMoveKey(  SP_start+ 257+74,    0,   -750,  260,   0);
setMoveKey(  SP_start+ 257+84,    0,   -1200,  360,   120);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--setScaleKey( SP_start+ 369,   0, 0.5, 0.5);
setScaleKey( SP_start+ 369,   0, 1.0, 1.0);

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 257, 0, 109, 0, 10, 10, 10, 200);       -- ベース暗め　背景

sen2 = entryEffectLife( SP_start+ 257, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+257, sen2, 205);
setEffScaleKey( SP_start+ 257, sen2, 1.6, 1.6);

setShakeChara( SP_start+ 257, 0, 54, 10);
setEffShake( SP_start+257, kamehame_beam, 30, 10);
setShake( SP_start+ 305,60, 10);

shuchusen = entryEffectLife( SP_start+ 257, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 257, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);
entryFade( SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_start+ 366,    0,   -900,  350,   120);

removeAllEffect( SP_start+365);--エフェクト全削除

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);

--敵が攻撃を受ける角度を変更
changeAnime( SP_start+ 370, 1, 118);                        -- 気ダメ後ろ

setMoveKey( SP_start+  369,    1,   120,  0,   0);
setMoveKey( SP_start+  370,    1,  400,  -400,   0);
setMoveKey( SP_start+  371,    1,  400,  -400,   0);
setMoveKey( SP_start+  399,    1,   120,  -270,   0);

setScaleKey( SP_start+  370,   1,   1.5,  1.5);
setScaleKey( SP_start+  444,   1,   1.5,  1.5);

playSe( SP_start+ 370, SE_06);
playSe( SP_start+ 380, SE_06);
playSe( SP_start+ 390, SE_06);
playSe( SP_start+ 400, SE_06);

ryusen = entryEffectLife( SP_start+ 370, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start+ 370, ryusen, 230);
setEffScaleKey( SP_start+ 370, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+ 452, 1, 0);  -- ダメージ振動等

playSe( SP_start+ 435, SE_09);
setDisp( SP_start+ 430, 1, 0);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

--entryFadeBg( SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース真っ暗　背景
entryFadeBg( SP_start+ 370, 0, 110, 0, 10, 10, 10, 180);       -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, -70);
setEffAlphaKey( SP_start+370, ct, 255);
--setEffAlphaKey( SP_start+430, ct, 255);
setEffAlphaKey( SP_start+409, ct, 0);

kamehame_beam = entryEffect( SP_start+ 430, SP_05,   0x80, -1,  0,  0,  0);   -- ギャン

ct = entryEffectLife( SP_start+ 438, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start+438, ct, 99, 20);
setEffScaleKey( SP_start+ 438, ct, 0.1, 0.1);
setEffScaleKey( SP_start+ 451, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ 461, ct, 2.8, 2.8);
setEffAlphaKey( SP_start+438, ct, 255);
setEffAlphaKey( SP_start+471, ct, 255);
setEffAlphaKey( SP_start+480, ct, 0);

entryFade( SP_start+ 480, 6,  13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 347; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

SP_ATK_4 = SP_start+499;

bakuhatu = entryEffect( SP_ATK_4,1574,0,-1,0,0,0);
setEffScaleKey( SP_ATK_4, bakuhatu, 1.4, 1.4);

setDisp( SP_ATK_4, 1, 0);

-- 書き文字エントリー

playSe( SP_ATK_4+4, SE_10);

-- ダメージ表示
dealDamage(SP_ATK_4+17);

entryFade( SP_ATK_4+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+111);

end
