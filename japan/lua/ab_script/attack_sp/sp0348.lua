

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_3+50;

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

SP_01 = 150227;--ef_001
SP_02 = 150228;--ef_002 (40f)
SP_03 = 150229;--ef_003 (40f)
SP_04 = 150230;--ef_004 (8f)
SP_05 = 150231;--ef_005 (50f)
SP_06 = 150232;--ef_006 (30f)
SP_07 = 150233;--ef_007 (30f)
SP_08 = 150234;--ef_008 (20f)
SP_09 = 150235;--ef_009 (80f)
SP_10 = 150236;--ef_010 (35f)

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


setVisibleUI( 0, 0);

--setBgScroll(0,100);

setRotateKey( 0, 0, -25); 
setScaleKey( 0,   0, 1.7, 1.7);
changeAnime( 0, 0, 3); 
--changeAnime( 0, 0, 3); 

entryFade( 0, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

entryFadeBg( 3, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景


-- ** エフェクト等 ** --
aura = entryEffectLife(  3,   311, 55, 0x100,  -1,  0,  30,  -230); -- オーラ
setEffScaleKey( 3, aura, 2.2, 2.2);
setEffAlphaKey( 3, aura, 255);

kamae = entryEffectLife( 3, SP_01, 55, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( 3, kamae, 1.7, 1.7);
setEffAlphaKey( 3, kamae, 255);

--[[
tame = entryEffectLife( 3, 1501, 47, 0,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, tame, 1.5, 1.5);
setEffAlphaKey( 3, tame, 255);
]]
shuchusen = entryEffectLife( 3, 906, 55, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen, 255);
playSe( 3, SE_02);
playSe( 3+20, SE_02);
playSe( 3+40, SE_02);
-- 書き文字エントリー
ct = entryEffectLife(  10, 10013, 89, 0x100, -1, 0, 0, 300);    -- ゴゴゴゴゴ
setEffShake( 10, ct, 40, 8);
setEffScaleKey( 10, ct, 3.0, 3.0);

setScaleKey( 10,   0, 1.7, 1.7);



entryFade( 55, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

setEffAlphaKey( 55, kamae, 255);
setEffAlphaKey( 55, aura, 255);
setEffAlphaKey( 55, tame, 255);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--[[playSe( 60, SE_05);
speff = entryEffect(  60,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 60, SE_05);
speff = entryEffect( 60, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 60, SE_05);
speff = entryEffect( 60, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 60, SE_05);
speff = entryEffect( 60, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

spep_1=90 +60;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--投げる(80F)
------------------------------------------------------

entryFadeBg( spep_1, 0, 200, 0, 10, 10, 10, 180);          -- ベース暗め　背景

ryusen1 = entryEffectLife( spep_1, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1, ryusen1, -30);
setEffScaleKey( spep_1, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusen1, 255);

nageru = entryEffect( spep_1,   SP_02,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_1, nageru, 1.0, 1.0);

shuchusen1 = entryEffectLife( spep_1, 906, 70, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);

playSe( spep_1+ 0, 1003);
SE000x = playSe( spep_1+ 40, 1053);--1019

-- 書き文字エントリー
--[[
ct1 = entryEffectLife( spep_1, 10014, 39, 0x100, -1, 0, 100, 350);    -- ズオッ
setEffShake(spep_1, ct1, 40, 28);
setEffScaleKey(spep_1, ct1, 2.4, 2.4);
setEffRotateKey(spep_1, ct1, 30);
]]



entryFade( spep_1+77, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ct1 = entryEffectLife( spep_1+77, 10014, 60, 0x100, -1, 0, 0, 320);    -- ズドドドっ
setEffShake(spep_1+77, ct1, 40, 28);
setEffScaleKey(spep_1+77, ct1, 3.4, 3.4);
--setEffScaleKey(spep_1+77, ct1, 2.4, 2.4);
setEffRotateKey(spep_1+77, ct1, 70);
--setEffRotateKey(spep_1+77, ct1, 30);



ryusen11 = entryEffectLife( spep_1+79, 921, 92, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1+80, ryusen1, 225);
setEffScaleKey( spep_1+79, ryusen11, 1.6, 1.6);
setEffAlphaKey( spep_1+79, ryusen11, 255);


--40fから爆発
meicyu = entryEffect( spep_1+80,   SP_03,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_1+80, meicyu, 1.0, 1.0);
--changeAnime( spep_1+80, 1, 103);                       -- 立ち
changeAnime( spep_1+80, 1, 101);                        -- ガード

setDisp( spep_1+80, 1, 1);
--[[
setMoveKey(  spep_1+79,    1,  235,  0,   0);
setMoveKey(  spep_1+80,    1,  235,  0,   0);
setMoveKey(  spep_1+81,    1,  235,  0,   0);
]]
setMoveKey(  spep_1+79,    1,  255,  0,   0);
setMoveKey(  spep_1+80,    1,  255,  0,   0);
setMoveKey(  spep_1+81,    1,  255,  0,   0);
setScaleKey( spep_1+79,    1,  0.7, 0.7);
setScaleKey( spep_1+80,    1,  0.7, 0.7);

setMoveKey(  spep_1+110,    1,   120,  0,   0);
setScaleKey(  spep_1+110,   1,   1.6,  1.6);


setDisp( spep_1+110, 1, 0);

sunkan = entryEffect( spep_1+100,   SP_04,   0,     -1,  0,  100,  0);   -- ef_002
setEffScaleKey( spep_1+100, sunkan, 1.0, 1.0);

playSe( spep_1+ 100, 43);
playSe( spep_1+ 120, SE_10);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 215; --エンドフェイズのフレーム数を置き換える(spep_1+65)

entryFadeBg( SP_dodge, 0, 225, 0, 10, 10, 10, 180);          -- ベース暗め　背景

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE000x, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,  -1000,  0,   0);
endPhase(SP_dodge+10);
do return end
else end



------------------------------------------------------
--サタン笑いと爆発(F)
------------------------------------------------------

spep_2=spep_1 +160;
entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景


shuchusen2 = entryEffectLife( spep_2, 906, 130, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);


playSe( spep_2, SE_04);
warabaku1 = entryEffect( spep_2,   SP_05,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_2, warabaku1, 1.0, 1.0);

speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー
ct4 = entryEffectLife( spep_2, 190006, 100, 0x100, -1, 0, -100, 480);    -- ゴゴゴゴ
setEffShake(spep_2, ct4, 40, 28);
setEffScaleKey(spep_2, ct4, 0.8, 0.8);
setEffRotateKey(spep_2, ct4, 10);
setEffAlphaKey( spep_2, ct4, 255);


spep_3=spep_2 +100;
entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 50, 10, 10, 10, 180);          -- ベース暗め　背景



warabaku2 = entryEffect( spep_3,   SP_06,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, warabaku2, 1.0, 1.0);

changeAnime( spep_3+30, 1, 101); 

sunkan3 = entryEffect( spep_3+30,   SP_04,   0x100,     -1,  0,  100,  300);   -- ef_002
setEffScaleKey( spep_3+30, sunkan3, 0.7, 0.7);
playSe( spep_3+30, 43);
setDisp( spep_3+30, 1, 1);

setMoveKey(  spep_3+29,    1,  180,  300,   0);
setMoveKey(  spep_3+30,    1,  180,  300,   0);
setScaleKey( spep_3+29,    1,  0.7, 0.7);
setScaleKey( spep_3+30,    1,  0.7, 0.7);

changeAnime( spep_3+35, 1, 103); 
setMoveKey(  spep_3+60,    1,  120,  200,   0);

setMoveKey(  spep_3+61,    1,   120,  200,   0);
setScaleKey(  spep_3+61,   1,   1.6,  1.6);


setDisp( spep_3+60, 1, 0);






------------------------------------------------------
--ブウ出現(80F)
------------------------------------------------------


spep_4=spep_3 +60;

playSe( spep_4+10, 1042);
shuchusen3 = entryEffectLife( spep_4-1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen3, 255);

entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);          -- ベース暗め　背景


shutugn = entryEffect( spep_4+10,   SP_07,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_4, shutugen, 1.0, 1.0);

------------------------------------------------------
--ブウ突進(70F)
------------------------------------------------------

spep_5=spep_4 +70;



entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 70, 0, 0, 0, 0, 250);          -- ベース暗め　背景
playSe( spep_5, 1042);

changeAnime( spep_5, 0, 31); 
setMoveKey(  spep_5,   0,  -200,  -250,   0);
setScaleKey( spep_5+1,    0,  0.8, 0.8);
--setScaleKey( spep_5,    0,  2.7, 2.7);
setRotateKey(spep_5+1,  0,  0 );
setDisp( spep_5+1, 0, 1);
setDisp( spep_5+1, 1, 1);


changeAnime( spep_5, 1, 103);
setMoveKey(  spep_5,   1,  120,  200,   0);
setScaleKey( spep_5,    1,  0.7, 0.7);
setScaleKey( spep_5+10,    1,  1.2, 1.2);





buttobashi5 = entryEffectLife( spep_5, 924, 40, 0x80,  -1, 0,  -100,  -200);   -- 集中線
setEffScaleKey( spep_5, buttobashi5, 1.2, 1.2);
setEffAlphaKey( spep_5, buttobashi5, 255);
setEffRotateKey( spep_5, buttobashi5, -90);


tosshin = entryEffect( spep_5,   SP_08,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_5, tosshin, 1.0, 1.0);



spep_6=spep_5+40; --410 469
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey(spep_6-1,  0,  0 );
setScaleKey( spep_6-1,    0,  0.8, 0.8);
setEffRotateKey( spep_6-1, buttobashi5, -90);
setEffRotateKey( spep_6, buttobashi5, 0);

entryFadeBg( spep_6, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(  spep_6,   0,  -200,  -250,   0);
setScaleKey( spep_6,    0,  2.0, 2.0);

setMoveKey(  spep_6,   1,  110,  100,   0);
setScaleKey( spep_6,    1,  1.9, 1.9);

setMoveKey(  spep_6+1,   1,  110,  100,   0);
setDisp( spep_6+1, 0, 0);

setScaleKey( spep_6,    1,  1.6, 1.6);

------------------------------------------------------
-- 連撃 (110F)
------------------------------------------------------

changeAnime( spep_6+1, 1, 106); 
setMoveKey(  spep_6+1,   1, 80,  0,   0);
setMoveKey(  spep_6+10,   1, 100,  0,   0);
setScaleKey( spep_6+1,    1,  1.5, 1.5);

playSe( spep_6+22, 1000);
playSe( spep_6+32, 1001);
playSe( spep_6+41, 1000);
playSe( spep_6+51, 1001);
playSe( spep_6+61, 1000);
playSe( spep_6+81, 1001);
playSe( spep_6+91, 1000);
playSe( spep_6+101, 1001);
playSe( spep_6+111, 1000);
playSe( spep_6+131, 1000);

setRotateKey( spep_6+32, 1, -80);
setRotateKey( spep_6+40, 1, -80);



setRotateKey( spep_6+41, 1, -60);
setRotateKey( spep_6+50, 1, -60);

--[[
setDisp( spep_6+50, 1, 0);
setDisp( spep_6+51, 1, 1);
]]

setRotateKey( spep_6+51, 1, -80);
setRotateKey( spep_6+60, 1, -80);

--[[
setDisp( spep_6+60, 1, 0);
setDisp( spep_6+61, 1, 1);
]]

setRotateKey( spep_6+61, 1, -60);
setRotateKey( spep_6+70, 1, -60);

--[[
setDisp( spep_6+70, 1, 0);
setDisp( spep_6+71, 1, 1);
]]

setRotateKey( spep_6+71, 1, -80);
setRotateKey( spep_6+80, 1, -80);

--[[
setDisp( spep_6+80, 1, 0);
setDisp( spep_6+81, 1, 1);
]]

setRotateKey( spep_6+81, 1, -60);
setRotateKey( spep_6+90, 1, -60);

--[[
setDisp( spep_6+90, 1, 0);
setDisp( spep_6+91, 1, 1);
]]

setRotateKey( spep_6+91, 1, -80);
setRotateKey( spep_6+100, 1, -80);

--[[
setDisp( spep_6+100, 1, 0);
setDisp( spep_6+101, 1, 1);
]]

setRotateKey( spep_6+101, 1, -60);
setRotateKey( spep_6+110, 1, -60);

--[[
setDisp( spep_6+110, 1, 0);
setDisp( spep_6+111, 1, 1);
]]

setRotateKey( spep_6+111, 1, -60);
setRotateKey( spep_6+120, 1,-60);




entryFadeBg( spep_6, 0, 230, 0, 0, 0, 0, 250);          -- ベース暗め　背景

ryusen2 = entryEffectLife( spep_6, 920, 160, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1, ryusen1, -30);
setEffScaleKey( spep_6, ryusen2, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusen2, 255);

shuchusen6 = entryEffectLife( spep_6+3, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen6, 255);

renngeki = entryEffect( spep_6,   SP_09,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_6, renngeki, 1.0, 1.0);



------------------------------------------------------
-- 
------------------------------------------------------

spep_7=spep_6+160; --410 469
entryFade( spep_7-20, 12, 3, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景



setScaleKey( spep_7-1,    1,  1.5, 1.5);

changeAnime( spep_7-10, 1, 108); 
setMoveKey(  spep_7-10,   1, 100,  0,   0);
setMoveKey(  spep_7-5,   1, 500,  0,   0);


setRotateKey( spep_7-20, 1, -60);



setScaleKey( spep_7-1,    1,  1.5, 1.5);


------------------------------------------------------
-- 連撃 (110F)
------------------------------------------------------
--[[
renngeki = entryEffect( spep_7,   SP_09,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_7, renngeki, 1.0, 1.0);

]]


spep_8=spep_7; --410 469
--[[
entryFade( spep_8-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景

]]

setMoveKey(  spep_8,   1, -300,  -30,   0);


shuchusen8 = entryEffectLife( spep_8-5, 906, 70, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_8-5, shuchusen8, 1.5, 1.5);
setEffAlphaKey( spep_8-5, shuchusen8, 255);

changeAnime( spep_8+5, 1, 108); 
--setMoveKey(  spep_8+5,   1, -300,  -30,   0);
setMoveKey(  spep_8+5,   1, 0,  -30,   0);
setMoveKey(  spep_8+15,   1, 100,  -30,   0);
setScaleKey( spep_8+15,   1,  1.5, 1.5);


setRotateKey( spep_8+5, 1, 0);



last = entryEffect( spep_8,   SP_10,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_8, last, 1.0, 1.0);

hit = entryEffect( spep_8+28, 3, 0x100,  -1, 0,  -0,  0);   -- 集中線
--hit = entryEffect( spep_8+28, 6, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_8+28, hit, 2.0, 2.0);
setEffAlphaKey( spep_8+28, hit, 255);


buttobashi5 = entryEffectLife( spep_8+25, 924, 40, 0x80,  -1, 0,  -100,  -200);   -- 集中線
setEffScaleKey( spep_8+25, buttobashi5, 1.2, 1.2);
setEffAlphaKey( spep_8+25, buttobashi5, 255);
setEffRotateKey( spep_8+25, buttobashi5, -90);
playSe( spep_8+25, SE_09);
--[[
shuchusen88 = entryEffectLife( spep_8+25,  3, 50, 0x100,  -1,  0,  30,  0);
setEffScaleKey( spep_8+25, shuchusen88, 4.0, 4.0);
playSe( spep_8+25, SE_09);
]]

changeAnime( spep_8+28, 1, 107); 
setMoveKey(  spep_8+28,   1, 100,  -30,   0);
setScaleKey( spep_8+28,   1,  1.5, 1.5);
setScaleKey( spep_8+65,   1,  1.8, 1.8);
setMoveKey(  spep_8+65,   1, 130,  -150,   0);


setRotateKey( spep_8+28, 1, 0);
setRotateKey( spep_8+65, 1, 0);
------------------------------------------------------
-- ダメージ (110F)
------------------------------------------------------


spep_9=spep_8+70; --410 469



entryFade( spep_9-10, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setEffAlphaKey( spep_9, shuchusen8, 255);

setMoveKey(  spep_9-1,   1, 130,  -150,   0);


--470
setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);



setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);


changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);



setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9+8,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+115, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

shuchusen6 = entryEffectLife( spep_9-5, 911, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9-5, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_9-5, shuchusen4, 255);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ




--playSe( spep_9+4, SE_07);
--shuchusen = entryEffectLife( spep_9+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
--[[
-- ダメージ表示
dealDamage(spep_9+17);

entryFade( spep_9+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+111);

else
	]]

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);
else


-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
--setMoveKey( 0,    0,      0,  0,   0);

setVisibleUI( 0, 0);

--setBgScroll(0,100);

setRotateKey( 0, 0, -25); 
setScaleKey( 0,   0, 1.7, 1.7);
changeAnime( 0, 0, 3); 
--changeAnime( 0, 0, 3); 

entryFade( 0, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

entryFadeBg( 3, 0, 160, 0, 10, 10, 10, 180);          -- ベース暗め　背景


-- ** エフェクト等 ** --
aura = entryEffectLife(  3,   311, 55, 0x100,  -1,  0,  30,  -230); -- オーラ
setEffScaleKey( 3, aura, 2.2, 2.2);
setEffAlphaKey( 3, aura, 255);

kamae = entryEffectLife( 3, SP_01, 55, 0x100,  -1, 0,  0,  0); 
setEffScaleKey( 3, kamae, 1.7, 1.7);
setEffAlphaKey( 3, kamae, 255);

--[[
tame = entryEffectLife( 3, 1501, 47, 0,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, tame, 1.5, 1.5);
setEffAlphaKey( 3, tame, 255);
]]
shuchusen = entryEffectLife( 3, 906, 55, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 3, shuchusen, 1.5, 1.5);
setEffAlphaKey( 3, shuchusen, 255);
playSe( 3, SE_02);
playSe( 3+20, SE_02);
playSe( 3+40, SE_02);
-- 書き文字エントリー
ct = entryEffectLife(  10, 10013, 89, 0x100, -1, 0, 0, 300);    -- ゴゴゴゴゴ
setEffShake( 10, ct, 40, 8);
setEffScaleKey( 10, ct, 3.0, 3.0);

setScaleKey( 10,   0, 1.7, 1.7);



entryFade( 55, 2,  6, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 355

setEffAlphaKey( 55, kamae, 255);
setEffAlphaKey( 55, aura, 255);
setEffAlphaKey( 55, tame, 255);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
--[[playSe( 60, SE_05);
speff = entryEffect(  60,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え]]

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( 60, SE_05);
speff = entryEffect( 60, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( 60, SE_05);
speff = entryEffect( 60, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( 60, SE_05);
speff = entryEffect( 60, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

spep_1=90 +60;
entryFade( spep_1-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_1, 0, 80, 0, 10, 10, 10, 180);          -- ベース暗め　背景

------------------------------------------------------
--投げる(80F)
------------------------------------------------------

entryFadeBg( spep_1, 0, 200, 0, 10, 10, 10, 180);          -- ベース暗め　背景

ryusen1 = entryEffectLife( spep_1, 920, 90, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1, ryusen1, -30);
setEffScaleKey( spep_1, ryusen1, 1.6, 1.6);
setEffAlphaKey( spep_1, ryusen1, 255);

nageru = entryEffect( spep_1,   SP_02,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_1, nageru, 1.0, 1.0);

shuchusen1 = entryEffectLife( spep_1, 906, 70, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen1, 1.5, 1.5);
setEffAlphaKey( spep_1, shuchusen1, 255);

playSe( spep_1+ 0, 1003);
SE000x = playSe( spep_1+ 40, 1053);--1019

-- 書き文字エントリー
--[[
ct1 = entryEffectLife( spep_1, 10014, 39, 0x100, -1, 0, 100, 350);    -- ズオッ
setEffShake(spep_1, ct1, 40, 28);
setEffScaleKey(spep_1, ct1, 2.4, 2.4);
setEffRotateKey(spep_1, ct1, 30);
]]



entryFade( spep_1+77, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ct1 = entryEffectLife( spep_1+77, 10014, 60, 0x100, -1, 0, 0, 320);    -- ズドドドっ
setEffShake(spep_1+77, ct1, 40, 28);
setEffScaleKey(spep_1+77, ct1, 3.4, 3.4);
--setEffScaleKey(spep_1+77, ct1, 2.4, 2.4);
setEffRotateKey(spep_1+77, ct1, -70);
--setEffRotateKey(spep_1+77, ct1, 30);



ryusen11 = entryEffectLife( spep_1+79, 921, 92, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1+80, ryusen1, 225);
setEffScaleKey( spep_1+79, ryusen11, 1.6, 1.6);
setEffAlphaKey( spep_1+79, ryusen11, 255);


--40fから爆発
meicyu = entryEffect( spep_1+80,   SP_03,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_1+80, meicyu, 1.0, 1.0);
--changeAnime( spep_1+80, 1, 103);                       -- 立ち
changeAnime( spep_1+80, 1, 101);                        -- ガード

setDisp( spep_1+80, 1, 1);
--[[
setMoveKey(  spep_1+79,    1,  235,  0,   0);
setMoveKey(  spep_1+80,    1,  235,  0,   0);
setMoveKey(  spep_1+81,    1,  235,  0,   0);
]]
setMoveKey(  spep_1+79,    1,  255,  0,   0);
setMoveKey(  spep_1+80,    1,  255,  0,   0);
setMoveKey(  spep_1+81,    1,  255,  0,   0);
setScaleKey( spep_1+79,    1,  0.7, 0.7);
setScaleKey( spep_1+80,    1,  0.7, 0.7);

setMoveKey(  spep_1+110,    1,   120,  0,   0);
setScaleKey(  spep_1+110,   1,   1.6,  1.6);


setDisp( spep_1+110, 1, 0);

sunkan = entryEffect( spep_1+100,   SP_04,   0,     -1,  0,  100,  0);   -- ef_002
setEffScaleKey( spep_1+100, sunkan, 1.0, 1.0);

playSe( spep_1+ 100, 43);
playSe( spep_1+ 120, SE_10);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 215; --エンドフェイズのフレーム数を置き換える

entryFadeBg( SP_dodge, 0, 225, 0, 10, 10, 10, 180);          -- ベース暗め　背景

playSe( SP_dodge-12, 1042);
stopSe( SP_dodge-12, SE000x, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+5,    0,  -1000,  0,   0);

endPhase(SP_dodge+10);
do return end
else end



------------------------------------------------------
--サタン笑いと爆発(F)
------------------------------------------------------

spep_2=spep_1 +160;
entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 100, 0, 10, 10, 10, 180);          -- ベース暗め　背景


shuchusen2 = entryEffectLife( spep_2, 906, 130, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.5, 1.5);
setEffAlphaKey( spep_2, shuchusen2, 255);


playSe( spep_2, SE_04);
warabaku1 = entryEffect( spep_2,   SP_05,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_2, warabaku1, 1.0, 1.0);
--[[
speff = entryEffect(  spep_2,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_2,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
-- 書き文字エントリー
ct4 = entryEffectLife( spep_2, 190006, 100, 0x100, -1, 0, -100, 480);    -- ゴゴゴゴ
setEffShake(spep_2, ct4, 40, 28);
setEffScaleKey(spep_2, ct4, -0.8, 0.8);
setEffRotateKey(spep_2, ct4, 10);
setEffAlphaKey( spep_2, ct4, 255);


spep_3=spep_2 +100;
entryFade( spep_3-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 60, 50, 10, 10, 10, 180);          -- ベース暗め　背景



warabaku2 = entryEffect( spep_3,   SP_06,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_3, warabaku2, 1.0, 1.0);

changeAnime( spep_3+30, 1, 101); 

sunkan3 = entryEffect( spep_3+30,   SP_04,   0x100,     -1,  0,  100,  300);   -- ef_002
setEffScaleKey( spep_3+30, sunkan3, 0.7, 0.7);
playSe( spep_3+30, 43);
setDisp( spep_3+30, 1, 1);

setMoveKey(  spep_3+29,    1,  180,  300,   0);
setMoveKey(  spep_3+30,    1,  180,  300,   0);
setScaleKey( spep_3+29,    1,  0.7, 0.7);
setScaleKey( spep_3+30,    1,  0.7, 0.7);

changeAnime( spep_3+35, 1, 103); 
setMoveKey(  spep_3+60,    1,  120,  200,   0);

setMoveKey(  spep_3+61,    1,   120,  200,   0);
setScaleKey(  spep_3+61,   1,   1.6,  1.6);


setDisp( spep_3+60, 1, 0);






------------------------------------------------------
--ブウ出現(80F)
------------------------------------------------------


spep_4=spep_3 +60;

playSe( spep_4+10, 1042);
shuchusen3 = entryEffectLife( spep_4-1, 906, 70, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen3, 1.5, 1.5);
setEffAlphaKey( spep_4, shuchusen3, 255);

entryFade( spep_4-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 70, 0, 0, 0, 0, 255);          -- ベース暗め　背景


shutugn = entryEffect( spep_4+10,   SP_07,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_4, shutugen, 1.0, 1.0);

------------------------------------------------------
--ブウ突進(70F)
------------------------------------------------------

spep_5=spep_4 +70;



entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_5, 0, 70, 0, 0, 0, 0, 250);          -- ベース暗め　背景
playSe( spep_5, 1042);

changeAnime( spep_5, 0, 31); 
setMoveKey(  spep_5,   0,  -200,  -250,   0);
setScaleKey( spep_5+1,    0,  0.8, 0.8);
--setScaleKey( spep_5,    0,  2.7, 2.7);
setRotateKey(spep_5+1,  0,  0 );
setDisp( spep_5+1, 0, 1);
setDisp( spep_5+1, 1, 1);


changeAnime( spep_5, 1, 103);
setMoveKey(  spep_5,   1,  120,  200,   0);
setScaleKey( spep_5,    1,  0.7, 0.7);
setScaleKey( spep_5+10,    1,  1.2, 1.2);





buttobashi5 = entryEffectLife( spep_5, 924, 40, 0x80,  -1, 0,  -100,  -200);   -- 集中線
setEffScaleKey( spep_5, buttobashi5, 1.2, 1.2);
setEffAlphaKey( spep_5, buttobashi5, 255);
setEffRotateKey( spep_5, buttobashi5, -90);


tosshin = entryEffect( spep_5,   SP_08,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_5, tosshin, 1.0, 1.0);



spep_6=spep_5+40; --410 469
entryFade( spep_6-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setRotateKey(spep_6-1,  0,  0 );
setScaleKey( spep_6-1,    0,  0.8, 0.8);
setEffRotateKey( spep_6-1, buttobashi5, -90);
setEffRotateKey( spep_6, buttobashi5, 0);

entryFadeBg( spep_6, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景
setMoveKey(  spep_6,   0,  -200,  -250,   0);
setScaleKey( spep_6,    0,  2.0, 2.0);

setMoveKey(  spep_6,   1,  110,  100,   0);
setScaleKey( spep_6,    1,  1.9, 1.9);

setMoveKey(  spep_6+1,   1,  110,  100,   0);
setDisp( spep_6+1, 0, 0);

setScaleKey( spep_6,    1,  1.6, 1.6);

------------------------------------------------------
-- 連撃 (110F)
------------------------------------------------------

changeAnime( spep_6+1, 1, 106); 
setMoveKey(  spep_6+1,   1, 80,  0,   0);
setMoveKey(  spep_6+10,   1, 100,  0,   0);
setScaleKey( spep_6+1,    1,  1.5, 1.5);

playSe( spep_6+22, 1000);
playSe( spep_6+32, 1001);
playSe( spep_6+41, 1000);
playSe( spep_6+51, 1001);
playSe( spep_6+61, 1000);
playSe( spep_6+81, 1001);
playSe( spep_6+91, 1000);
playSe( spep_6+101, 1001);
playSe( spep_6+111, 1000);
playSe( spep_6+131, 1000);

setRotateKey( spep_6+32, 1, -80);
setRotateKey( spep_6+40, 1, -80);



setRotateKey( spep_6+41, 1, -60);
setRotateKey( spep_6+50, 1, -60);

--[[
setDisp( spep_6+50, 1, 0);
setDisp( spep_6+51, 1, 1);
]]

setRotateKey( spep_6+51, 1, -80);
setRotateKey( spep_6+60, 1, -80);

--[[
setDisp( spep_6+60, 1, 0);
setDisp( spep_6+61, 1, 1);
]]

setRotateKey( spep_6+61, 1, -60);
setRotateKey( spep_6+70, 1, -60);

--[[
setDisp( spep_6+70, 1, 0);
setDisp( spep_6+71, 1, 1);
]]

setRotateKey( spep_6+71, 1, -80);
setRotateKey( spep_6+80, 1, -80);

--[[
setDisp( spep_6+80, 1, 0);
setDisp( spep_6+81, 1, 1);
]]

setRotateKey( spep_6+81, 1, -60);
setRotateKey( spep_6+90, 1, -60);

--[[
setDisp( spep_6+90, 1, 0);
setDisp( spep_6+91, 1, 1);
]]

setRotateKey( spep_6+91, 1, -80);
setRotateKey( spep_6+100, 1, -80);

--[[
setDisp( spep_6+100, 1, 0);
setDisp( spep_6+101, 1, 1);
]]

setRotateKey( spep_6+101, 1, -60);
setRotateKey( spep_6+110, 1, -60);

--[[
setDisp( spep_6+110, 1, 0);
setDisp( spep_6+111, 1, 1);
]]

setRotateKey( spep_6+111, 1, -60);
setRotateKey( spep_6+120, 1,-60);




entryFadeBg( spep_6, 0, 230, 0, 0, 0, 0, 250);          -- ベース暗め　背景

ryusen2 = entryEffectLife( spep_6, 920, 160, 0x80,  -1,  0,  0,  0); -- 流線斜め
--setEffRotateKey( spep_1, ryusen1, -30);
setEffScaleKey( spep_6, ryusen2, 1.6, 1.6);
setEffAlphaKey( spep_6, ryusen2, 255);

shuchusen6 = entryEffectLife( spep_6+3, 906, 40, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_6, shuchusen6, 1.5, 1.5);
setEffAlphaKey( spep_6, shuchusen6, 255);

renngeki = entryEffect( spep_6,   SP_09,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_6, renngeki, 1.0, 1.0);



------------------------------------------------------
-- 
------------------------------------------------------

spep_7=spep_6+160; --410 469
entryFade( spep_7-20, 12, 3, 7, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_7, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景



setScaleKey( spep_7-1,    1,  1.5, 1.5);

changeAnime( spep_7-10, 1, 108); 
setMoveKey(  spep_7-10,   1, 100,  0,   0);
setMoveKey(  spep_7-5,   1, 500,  0,   0);


setRotateKey( spep_7-20, 1, -60);



setScaleKey( spep_7-1,    1,  1.5, 1.5);


------------------------------------------------------
-- 連撃 (110F)
------------------------------------------------------
--[[
renngeki = entryEffect( spep_7,   SP_09,   0,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_7, renngeki, 1.0, 1.0);

]]


spep_8=spep_7; --410 469
--[[
entryFade( spep_8-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_8, 0, 70, 0, 10, 10, 10, 180);          -- ベース暗め　背景

]]

setMoveKey(  spep_8,   1, -300,  -30,   0);


shuchusen8 = entryEffectLife( spep_8-5, 906, 70, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_8-5, shuchusen8, 1.5, 1.5);
setEffAlphaKey( spep_8-5, shuchusen8, 255);

changeAnime( spep_8+5, 1, 108); 
--setMoveKey(  spep_8+5,   1, -300,  -30,   0);
setMoveKey(  spep_8+5,   1, 0,  -30,   0);
setMoveKey(  spep_8+15,   1, 100,  -30,   0);
setScaleKey( spep_8+15,   1,  1.5, 1.5);


setRotateKey( spep_8+5, 1, 0);



last = entryEffect( spep_8,   SP_10,   0x80,     -1,  0,  0,  0);   -- ef_002
setEffScaleKey( spep_8, last, 1.0, 1.0);

hit = entryEffect( spep_8+28, 3, 0x100,  -1, 0,  -0,  0);   -- 集中線
--hit = entryEffect( spep_8+28, 6, 0x100,  -1, 0,  -0,  0);   -- 集中線
setEffScaleKey( spep_8+28, hit, 2.0, 2.0);
setEffAlphaKey( spep_8+28, hit, 255);

buttobashi5 = entryEffectLife( spep_8+25, 924, 40, 0x80,  -1, 0,  -100,  -200);   -- 集中線
setEffScaleKey( spep_8+25, buttobashi5, 1.2, 1.2);
setEffAlphaKey( spep_8+25, buttobashi5, 255);
setEffRotateKey( spep_8+25, buttobashi5, -90);
playSe( spep_8+25, SE_09);


changeAnime( spep_8+28, 1, 107); 
setMoveKey(  spep_8+28,   1, 100,  -30,   0);
setScaleKey( spep_8+28,   1,  1.5, 1.5);
setScaleKey( spep_8+65,   1,  1.8, 1.8);
setMoveKey(  spep_8+65,   1, 130,  -150,   0);


setRotateKey( spep_8+28, 1, 0);
setRotateKey( spep_8+65, 1, 0);
------------------------------------------------------
-- ダメージ (110F)
------------------------------------------------------


spep_9=spep_8+70; --410 469



entryFade( spep_9-10, 5, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


setEffAlphaKey( spep_9, shuchusen8, 255);

setMoveKey(  spep_9-1,   1, 130,  -150,   0);


--470
setDisp( spep_9-1, 1, 1);
setMoveKey(  spep_9-1,    1,  100,  0,   0);
setScaleKey( spep_9-1,    1,  1.0, 1.0);



setMoveKey(  spep_9,    1,    0,   0,   128);
setScaleKey( spep_9,    1,  0.1, 0.1);


changeAnime( spep_9, 1, 107);                         -- 手前ダメージ
entryEffect( spep_9+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_9+8, SE_10);



setMoveKey(  spep_9+8,   1,    0,   0,   128);
setMoveKey(  spep_9+15,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_9+16, 1, 0);  -- ダメージ振動等
setShake(spep_9+7,6,15);
setShake(spep_9+13,15,10);

setRotateKey( spep_9+8,  1,  30 );
setRotateKey( spep_9+2,  1,  80 );
setRotateKey( spep_9+4,  1, 120 );
setRotateKey( spep_9+6,  1, 160 );
setRotateKey( spep_9+8,  1, 200 );
setRotateKey( spep_9+10,  1, 260 );
setRotateKey( spep_9+12,  1, 320 );
setRotateKey( spep_9+14,  1,   0 );

setShakeChara( spep_9+15, 1, 5,  10);
setShakeChara( spep_9+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_9+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_9+15, ct, 30, 10);
setEffRotateKey( spep_9+15, ct, -40);
setEffScaleKey( spep_9+15, ct, 4.0, 4.0);
setEffScaleKey( spep_9+16, ct, 2.0, 2.0);
setEffScaleKey( spep_9+17, ct, 2.6, 2.6);
setEffScaleKey( spep_9+18, ct, 4.0, 4.0);
setEffScaleKey( spep_9+19, ct, 2.6, 2.6);
setEffScaleKey( spep_9+20, ct, 3.8, 3.8);
setEffScaleKey( spep_9+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_9+15, ct, 255);
setEffAlphaKey( spep_9+115, ct, 255);
setEffAlphaKey( spep_9+115, ct, 0);

shuchusen6 = entryEffectLife( spep_9-5, 911, 65, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_9-5, shuchusen4, 1.5, 1.5);
setEffAlphaKey( spep_9-5, shuchusen4, 255);

playSe( spep_9+3, SE_11);
shuchusen = entryEffectLife( spep_9+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_9+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ




--playSe( spep_9+4, SE_07);
--shuchusen = entryEffectLife( spep_9+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( 473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
--[[
-- ダメージ表示
dealDamage(spep_9+17);

entryFade( spep_9+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+111);

else
	]]

-- ダメージ表示
dealDamage(spep_9+16);

entryFade( spep_9+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+110);

end
