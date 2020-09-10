 --sp0443 1013470 リブリアンスーパーアモーレシャワー

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

SE_12 = 09;


SP_01 = 151380;--溜め
SP_02 = 151381;--構え
SP_03 = 151382;--発射
SP_04 = 151383;--追い討ち
SP_05 = 151384;--追い討ち

SP_02e = 151385;--構え

setVisibleUI( 0, 0);

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
-- 気溜め(40F)(0-70F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep1=0;
------------------------------------------------------
-- かめはめ波溜め！(100F)(70-170F)
------------------------------------------------------

entryEffect(  spep1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

Tame2 = entryEffect( spep1, SP_01, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep1, Tame2, 1.0, 1.0);
setEffMoveKey( spep1, Tame2, 0, 0,0);
--[[
shuchusen2 = entryEffectLife( spep2+28, 906, 112, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2+28, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep2+140, shuchusen2, 1.0, 1.0);
]]--
speff = entryEffect(  spep1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep1+10, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+10, 190006, 60, 0x100, -1, 0, 0,500, 0);    -- ゴゴゴゴ
setEffShake(spep1+10, ctgogo, 60, 10);
setEffScaleKey(spep1+10, ctgogo, 0.7, 0.7);
setEffRotateKey(spep1+10, ctgogo, 0);
setEffAlphaKey( spep1+10, ctgogo, 255);

-- ** エフェクト等 ** --
entryFadeBg( spep1+0, 0, 147, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep1+95, 2, 7, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)(170-260F)
------------------------------------------------------
spep2=spep1+100;


--[[playSe( spep2, SE_05);
speff = entryEffect(  spep2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep2, SE_05);
speff = entryEffect( spep2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep2, SE_05);
speff = entryEffect( spep2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep2, SE_05);
speff = entryEffect( spep2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep2+82, 2, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep3+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F) (260-350F)
------------------------------------------------------
spep_3=spep2+90;

Hanatsu= entryEffectLife( spep_3, SP_02, 110, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep_3, Hanatsu, 0, 0, 0);
setEffScaleKey( spep_3, Hanatsu, 1.0, 1.0);

playSe( spep_3, 1016);
playSe( spep_3+18, 1016);
playSe( spep_3+25, 1016);
--playSe( spep_3+21, 1016);
playSe( spep_3+38, 1016);
playSe( spep_3+43, 1016);
--playSe( spep_3+39, 1016);
playSe( spep_3+55, 1016);
playSe( spep_3+61, 1016);
--playSe( spep_3+65, 1016);
playSe( spep_3+80, 1016);
playSe( spep_3+84, 1016);
playSe( spep_3+90, 1016);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen3, 210);
setEffScaleKey( spep_3, sen3, 1.6, 1.6);
setEffScaleKey( spep_3+109, sen3, 1.6, 1.6);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen3 = entryEffectLife( spep_3, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.7, 1.7);


-- 書き文字エントリー
ct3 = entryEffectLife( spep_3, 10014, 60, 0, -1, 0, 100, 350); -- ズドドッ
setEffShake(spep_3, ct3, 75, 20);
setEffScaleKey( spep_3, ct3, 2.0, 2.0);
setEffRotateKey(spep_3, ct3, 40);
setEffAlphaKey(spep_3, ct3, 255);
setEffAlphaKey(spep_3+59, ct3, 255);
setEffAlphaKey(spep_3+60, ct3, 0);

--playSe( spep4+40, SE_07);
entryFade( spep_3+100, 10,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_4=spep_3+120;
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);


-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 85, 20);

entryFadeBg( spep_4, 0, 85, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 85, 0x80,  -1,  0,  0,  0); -- 流線斜め

setShake(spep_4, 30, 8);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 315; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_dodge, 0, 0);
setMoveKey(   SP_dodge,   0,    0, 0,  0);
setScaleKey(   SP_dodge,   0, 1.5, 1.5);
setMoveKey(   SP_dodge+1,   0,    2235, 0,  0);
setScaleKey(   SP_dodge+1,   0, 1.5, 1.5);


setMoveKey(   SP_dodge,   1,    235, 0,  0);
setScaleKey(   SP_dodge,   1, 1.5, 1.5);

setMoveKey(   SP_dodge+8,   1,    235, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.5, 1.5);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.2, 1.2);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end

kamehame_beam4 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam4, 1, 1);

setEffScaleKey(spep_4+82, kamehame_beam4, 1, 1);
setEffScaleKey(spep_4+84, kamehame_beam4, 2.5, 2.5);


-- 敵吹っ飛ぶモーション

changeAnime( spep_4+57, 1, 108);
setMoveKey(  spep_4+60,    1,   120,  0,   0);
setMoveKey(  spep_4+63,    1,   120,  0,   0);
setMoveKey(  spep_4+64,    1,   120,  50,   0);
setMoveKey(  spep_4+65,    1,   120,  50,   0);
setMoveKey(  spep_4+66,    1,   120,  0,   0);
setMoveKey(  spep_4+68,    1,   120,  0,   0);
setMoveKey(  spep_4+84,    1,   300,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);
setScaleKey( spep_4+60,    1,  2.0, 2.0);
setScaleKey( spep_4+72,    1,  2.0, 2.0);
setScaleKey( spep_4+73,    1,  1.3, 1.3);
setScaleKey( spep_4+84,    1,  1.3, 1.3);
setScaleKey( spep_4,    1,  1.5, 1.5);
setRotateKey(   spep_4,   1, 0);
setRotateKey(   spep_4+63,   1, 0);
setRotateKey(   spep_4+64,   1, -20);
setRotateKey(   spep_4+65,   1, -20);
setRotateKey(   spep_4+66,   1, 0);
setRotateKey(   spep_4+84,   1, 0);

setDisp( spep_4+84, 1, 0);

--setEffShake(spep_2+16, 64,15);

playSe( spep_4, 1016);
playSe( spep_4+8, 1016);
playSe( spep_4+15, 1016);
--playSe( spep_4+21, 1016);
playSe( spep_4+28, 1016);
playSe( spep_4+33, 1016);
--playSe( spep_4+39, 1016);
playSe( spep_4+45, 1016);
playSe( spep_4+51, 1016);
playSe( spep_4+57, 1011);
--playSe( spep_4+65, 1016);
playSe( spep_4+70, 1016);
playSe( spep_4+74, 1016);
playSe( spep_4+80, 1016);



-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 10014, 86, 0, -1, 0, 0, 305); -- ズドドッ
setEffShake(spep_4, ct4, 75, 20);
setEffScaleKey( spep_4, ct4, 2.6, 2.6);
setEffRotateKey(spep_4, ct4, 80);
setEffAlphaKey(spep_4, ct4, 255);
setEffAlphaKey(spep_4+60, ct4, 255);
setEffAlphaKey(spep_4+75, ct4, 0);

entryFade(spep_4+75,3, 8, 7, fcolor_r, fcolor_g, fcolor_b, 255); 


spep_5 = spep_4+85;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

zimenusiro5 = entryEffect(  spep_5,   SP_04,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 5);
setMoveKey(  spep_5+1, 1,  0,  0,  -100);
--setMoveKey(  spep_5+20, 1,  0,  0,  -60);
--setMoveKey(  spep_5+40, 1,  0,  0,  -20);
--setMoveKey(  spep_5+60, 1,  0,  0,  10);
setMoveKey(  spep_5+99, 1,  0,  0,  80);

setShakeChara( spep_5+5, 1, 30, 25);
setShakeChara( spep_5+45, 1, 40, 15);

--[[
playSe( spep_5+15, 1011);
playSe( spep_5+20, 1011);
playSe( spep_5+35, 1011);
playSe( spep_5+40, 1011);
--playSe( spep_5+30, 1008);
playSe( spep_5+55, 1011);
playSe( spep_5+60, 1011);
playSe( spep_5+80, 1011);
]]
--v4.11調整
SE001 = playSe( spep_5+15, 1011);
stopSe(spep_5+30,SE001,5);
SE002 = playSe( spep_5+20, 1011);
stopSe(spep_5+45,SE002,5);
SE003 = playSe( spep_5+35, 1011);
stopSe(spep_5+50,SE003,5);
SE004 = playSe( spep_5+40, 1011);
stopSe(spep_5+65,SE004,5);
SE005 = playSe( spep_5+55, 1011);
stopSe(spep_5+70,SE005,5);
SE006 = playSe( spep_5+60, 1011);
stopSe(spep_5+90,SE006,5);
playSe( spep_5+80, 1011);


setDisp( spep_5+99, 1, 0);

zimenusiro5 = entryEffect(  spep_5,   SP_05,   0x80,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);

shuchusenct5 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_5, shuchusenct5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenct5, 255);


ct5 = entryEffectLife( spep_5, 10014, 86, 0x100, -1, 0, 0, 305); -- ズドドッ
setEffShake(spep_5, ct5, 75, 45);
setEffScaleKey( spep_5, ct5, 1.5, 1.5);
setEffScaleKey( spep_5+10, ct5, 2.8, 2.8);
setEffRotateKey(spep_5, ct5, 70);
setEffAlphaKey(spep_5, ct5, 255);
setEffAlphaKey(spep_5+40, ct5, 255);
setEffAlphaKey(spep_5+50, ct5, 0);

-- ダメージ表示
dealDamage(spep_5+5 -5);

entryFadeBg( spep_5+35, 40, 65, 0,255, 255, 255, 255);          -- ベース暗め　背景

--entryFade( spep_5+70, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_5+80 -10);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(40F)(0-70F)
------------------------------------------------------
kame_flag = 0x00;

spep1=0;

------------------------------------------------------
-- かめはめ波溜め！(100F)(70-170F)
------------------------------------------------------

entryEffect(  spep1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  spep1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

Tame2 = entryEffect( spep1, SP_01, 0x100,      -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep1, Tame2, 1.0, 1.0);
setEffMoveKey( spep1, Tame2, 0, 0,0);
--[[
shuchusen2 = entryEffectLife( spep2+28, 906, 112, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep2+28, shuchusen2, 1.0, 1.0);
setEffScaleKey( spep2+140, shuchusen2, 1.0, 1.0);

speff = entryEffect(  spep1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( spep1+10, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep1+10, 190006, 60, 0x100, -1, 0, 0,500, 0);    -- ゴゴゴゴ
setEffShake(spep1+10, ctgogo, 60, 10);
setEffScaleKey(spep1+10, ctgogo, -0.7, 0.7);
setEffRotateKey(spep1+10, ctgogo, 0);
setEffAlphaKey( spep1+10, ctgogo, 255);

-- ** エフェクト等 ** --
entryFadeBg( spep1+0, 0, 147, 0, 0, 0, 0, 255);       -- ベース暗め　背景

entryFade( spep1+95, 2, 7, 4, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)(170-260F)
------------------------------------------------------
spep2=spep1+100;


--[[playSe( spep2, SE_05);
speff = entryEffect(  spep2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep2, SE_05);
speff = entryEffect( spep2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep2, SE_05);
speff = entryEffect( spep2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep2, SE_05);
speff = entryEffect( spep2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep2+82, 2, 6, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep3+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F) (260-350F)
------------------------------------------------------
spep_3=spep2+90;

Hanatsu= entryEffectLife( spep_3, SP_02, 110, 0x100,  0,  -1,  0,  0);   -- 伸びるかめはめ波
setEffMoveKey( spep_3, Hanatsu, 0, 0, 0);
setEffScaleKey( spep_3, Hanatsu, 1.0, 1.0);

playSe( spep_3, 1016);
playSe( spep_3+18, 1016);
playSe( spep_3+25, 1016);
--playSe( spep_3+21, 1016);
playSe( spep_3+38, 1016);
playSe( spep_3+43, 1016);
--playSe( spep_3+39, 1016);
playSe( spep_3+55, 1016);
playSe( spep_3+61, 1016);
--playSe( spep_3+65, 1016);
playSe( spep_3+80, 1016);
playSe( spep_3+84, 1016);
playSe( spep_3+90, 1016);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 120, 0, 0, 0, 0, 255);       -- ベース暗め　背景

sen3 = entryEffectLife( spep_3, 921, 120, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen3, 210);
setEffScaleKey( spep_3, sen3, 1.6, 1.6);
setEffScaleKey( spep_3+109, sen3, 1.6, 1.6);

--setShakeChara( spep4+45, 0, 54, 50);

shuchusen3 = entryEffectLife( spep_3, 906, 50, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.7, 1.7);


-- 書き文字エントリー
ct3 = entryEffectLife( spep_3, 10014, 60, 0, -1, 0, 100, 350); -- ズドドッ
setEffShake(spep_3, ct3, 75, 20);
setEffScaleKey( spep_3, ct3, 2.0, 2.0);
setEffRotateKey(spep_3, ct3, 0);
setEffAlphaKey(spep_3, ct3, 255);
setEffAlphaKey(spep_3+59, ct3, 255);
setEffAlphaKey(spep_3+60, ct3, 0);

--playSe( spep4+40, SE_07);
entryFade( spep_3+100, 10,  12, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_4=spep_3+120;
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
setMoveKey(  spep_4-1,    1,  235,  0,   0);
setMoveKey(  spep_4,    1,  235,  0,   0);
setMoveKey(  spep_4+1,    1,  235,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);


-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 85, 20);

entryFadeBg( spep_4, 0, 85, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_4, 921, 85, 0x80,  -1,  0,  0,  0); -- 流線斜め

setShake(spep_4, 30, 8);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 315; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( SP_dodge, 0, 0);
setMoveKey(   SP_dodge,   0,    0, 0,  0);
setScaleKey(   SP_dodge,   0, 1.5, 1.5);
setMoveKey(   SP_dodge+1,   0,    2235, 0,  0);
setScaleKey(   SP_dodge+1,   0, 1.5, 1.5);


setMoveKey(   SP_dodge,   1,    235, 0,  0);
setScaleKey(   SP_dodge,   1, 1.5, 1.5);

setMoveKey(   SP_dodge+8,   1,    235, 0,  0);
setScaleKey(   SP_dodge+8,   1, 1.5, 1.5);

setMoveKey(  SP_dodge+9,    1,  0,  0,   0);
setScaleKey( SP_dodge+9,    1,  1.2, 1.2);
setRotateKey(   SP_dodge+9,   1, 0);

endPhase(SP_dodge+10);
do return end
else end

kamehame_beam4 = entryEffect( spep_4, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam4, 1, 1);

setEffScaleKey(spep_4+82, kamehame_beam4, 1, 1);
setEffScaleKey(spep_4+84, kamehame_beam4, 2.5, 2.5);


-- 敵吹っ飛ぶモーション

changeAnime( spep_4+57, 1, 108);
setMoveKey(  spep_4+60,    1,   120,  0,   0);
setMoveKey(  spep_4+63,    1,   120,  0,   0);
setMoveKey(  spep_4+64,    1,   120,  50,   0);
setMoveKey(  spep_4+65,    1,   120,  50,   0);
setMoveKey(  spep_4+66,    1,   120,  0,   0);
setMoveKey(  spep_4+68,    1,   120,  0,   0);
setMoveKey(  spep_4+84,    1,   300,  0,   0);
setScaleKey( spep_4,    1,  1.0, 1.0);
setScaleKey( spep_4+60,    1,  2.0, 2.0);
setScaleKey( spep_4+72,    1,  2.0, 2.0);
setScaleKey( spep_4+73,    1,  1.3, 1.3);
setScaleKey( spep_4+84,    1,  1.3, 1.3);
setScaleKey( spep_4,    1,  1.5, 1.5);
setRotateKey(   spep_4,   1, 0);
setRotateKey(   spep_4+63,   1, 0);
setRotateKey(   spep_4+64,   1, -20);
setRotateKey(   spep_4+65,   1, -20);
setRotateKey(   spep_4+66,   1, 0);
setRotateKey(   spep_4+84,   1, 0);

setDisp( spep_4+84, 1, 0);

--setEffShake(spep_2+16, 64,15);

playSe( spep_4, 1016);
playSe( spep_4+8, 1016);
playSe( spep_4+15, 1016);
--playSe( spep_4+21, 1016);
playSe( spep_4+28, 1016);
playSe( spep_4+33, 1016);
--playSe( spep_4+39, 1016);
playSe( spep_4+45, 1016);
playSe( spep_4+51, 1016);
playSe( spep_4+57, 1011);
--playSe( spep_4+65, 1016);
playSe( spep_4+70, 1016);
playSe( spep_4+74, 1016);
playSe( spep_4+80, 1016);



-- 書き文字エントリー
ct4 = entryEffectLife( spep_4, 10014, 86, 0, -1, 0, 0, 305); -- ズドドッ
setEffShake(spep_4, ct4, 75, 20);
setEffScaleKey( spep_4, ct4, 2.6, 2.6);
setEffRotateKey(spep_4, ct4, -30);
setEffAlphaKey(spep_4, ct4, 255);
setEffAlphaKey(spep_4+60, ct4, 255);
setEffAlphaKey(spep_4+75, ct4, 0);

entryFade(spep_4+75,3, 8, 7, fcolor_r, fcolor_g, fcolor_b, 255); 


spep_5 = spep_4+85;


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryFade( spep_5-8, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景

zimenusiro5 = entryEffect(  spep_5,   SP_04,   0x100,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);

setDisp( spep_5, 1, 1);
changeAnime( spep_5, 1, 5);
setMoveKey(  spep_5+1, 1,  0,  0,  -100);
--setMoveKey(  spep_5+20, 1,  0,  0,  -60);
--setMoveKey(  spep_5+40, 1,  0,  0,  -20);
--setMoveKey(  spep_5+60, 1,  0,  0,  10);
setMoveKey(  spep_5+99, 1,  0,  0,  80);

setShakeChara( spep_5+5, 1, 30, 25);
setShakeChara( spep_5+45, 1, 40, 15);

--[[
playSe( spep_5+15, 1011);
playSe( spep_5+20, 1011);
playSe( spep_5+35, 1011);
playSe( spep_5+40, 1011);
--playSe( spep_5+30, 1008);
playSe( spep_5+55, 1011);
playSe( spep_5+60, 1011);
playSe( spep_5+80, 1011);
]]
--v4.11調整
SE001 = playSe( spep_5+15, 1011);
stopSe(spep_5+30,SE001,5);
SE002 = playSe( spep_5+20, 1011);
stopSe(spep_5+45,SE002,5);
SE003 = playSe( spep_5+35, 1011);
stopSe(spep_5+50,SE003,5);
SE004 = playSe( spep_5+40, 1011);
stopSe(spep_5+65,SE004,5);
SE005 = playSe( spep_5+55, 1011);
stopSe(spep_5+70,SE005,5);
SE006 = playSe( spep_5+60, 1011);
stopSe(spep_5+90,SE006,5);
playSe( spep_5+80, 1011);




setDisp( spep_5+99, 1, 0);

zimenusiro5 = entryEffect(  spep_5,   SP_05,   0x80,  -1,  0,  0,  0);   --床
setEffScaleKey( spep_5, zimenusiro5, 1.0, 1.0);
setEffAlphaKey( spep_5, zimenusiro5, 255);

shuchusenct5 = entryEffectLife( spep_5, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線 
setEffScaleKey( spep_5, shuchusenct5, 1.5, 1.5);
setEffAlphaKey( spep_5, shuchusenct5, 255);


ct5 = entryEffectLife( spep_5, 10014, 86, 0x100, -1, 0, 0, 305); -- ズドドッ
setEffShake(spep_5, ct5, 75, 45);
setEffScaleKey( spep_5, ct5, 1.5, 1.5);
setEffScaleKey( spep_5+10, ct5, 2.8, 2.8);
setEffRotateKey(spep_5, ct5, 0);
setEffAlphaKey(spep_5, ct5, 255);
setEffAlphaKey(spep_5+40, ct5, 255);
setEffAlphaKey(spep_5+50, ct5, 0);

-- ダメージ表示
dealDamage(spep_5+5 -5);

entryFadeBg( spep_5+35, 40, 65, 0,255, 255, 255, 255);          -- ベース暗め　背景

--entryFade( spep_5+70, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);      -- white fade

endPhase(spep_5+80 -10);

end
