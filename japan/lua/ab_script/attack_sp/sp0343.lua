

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

SP_01 = 150346;
SP_01e = 150366;
SP_02 = 150347;
SP_03 = 150348;
SP_03e = 150349;
SP_04 = 150350;
SP_05 = 150351;
SP_05e = 150352;
SP_06 = 150353;
SP_06e= 150354;



multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
changeAnime( 0, 1, 0);                       -- 立ち

setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);

setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);


------------------------------------------------------
-- 突進(60F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
entryFade( 1, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 4, 0, 140, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--test = entryEffect(  0,   SP_01,   0,  -1,  0,  0,  0);   -- カード

setDisp( 4, 0, 1);
changeAnime( 4, 0, 17);                       -- 立ち
setVisibleUI( 4, 0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   4,   1,    0, -54,   0);
setScaleKey(   4,   0, 1.0, 1.0);


shuchusenkougeki=entryEffectLife( 4, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 4, shuchusenkougeki, 1.5, 1.5);
setEffAlphaKey( 4, shuchusenkougeki, 255);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
--changeAnime(  30, 0, 17);                       -- 溜め!
--[[
efftame1=entryEffect(  4,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey( 4, efftame1, 1.0, 1.0);
efftame2=entryEffect(  4,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey( 4, efftame2, 1.0, 1.0);
]]
playSe( 4, SE_01);
--[[
playSe( 24, SE_03);
playSe( 44, SE_03);
]]

--entryFade( 62-26, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30-26,   341, 140, 0x100,  0,  1,  0,  -100); -- オーラ
--aura = entryEffectLife(  30-26,   331, 140, 0x100,  0,  1,  0,  -54); -- オーラ
--aura = entryEffectLife(  30-26,   356, 140, 0x100,  0,  1,  0,  -54); -- オーラ
--aura = entryEffectLife(  30-26,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30-26, aura, 2.0, 2.0);
setShakeChara( 30-26, 0, 136, 8);
setEffScaleKey( 80-26, aura, 2.5, 2.5);
setScaleKey(   80-26,   0, 1.6, 1.6);
--[[
-- 書き文字エントリー
ctzun = entryEffectLife( 30-26, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30-26, ctzun, 40, 7);
setEffAlphaKey(30-26, ctzun, 255);
setEffAlphaKey(50-26, ctzun, 255);
setEffAlphaKey(70-26, ctzun, 0);
setEffScaleKey( 30-26, ctzun, 0.1, 0.1);
setEffScaleKey( 40-26, ctzun, 2.0, 2.0);
playSe( 30-26, SE_02);
]]
--changeAnime( 70-26, 0, 30);                       -- 溜め!
--playSe( 73-26, SE_03);
--[[
eff1=entryEffect(  70-26,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
eff2=entryEffect(  70-26,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
]]
speff = entryEffect(  80-26,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80-26,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80-26, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( 90-26, 190006, 39, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(90-26, ctgogo, 40, 8);
setEffScaleKey(90-26, ctgogo, 0.8, 0.8);
setEffRotateKey(90-26, ctgogo, 10);
setEffAlphaKey( 90-26, ctgogo, 255);


------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_1=140;
entryFade( spep_1-5, 3, 4, 3, 255, 255, 255, 255);     -- white fade
--entryFade( spep_1-5, 3, 5, 10, 185, 30, 230, 255);     -- white fade
--entryFade( spep_1-32, 30, 5, 10, 185, 30, 230, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setDisp( spep_1, 0, 0);
setEffScaleKey( spep_1, aura, 3.0, 3.0);
setScaleKey(   spep_1,   0,1.6, 1.6);

setMoveKey(   spep_1,   0,    0, -54,   0);
setMoveKey(   spep_1,   1,    0, -54,   0);

tame = entryEffect(  spep_1,   SP_01,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_1, tame, 1.0, 1.0);
setEffAlphaKey( spep_1, tame, 255);


shuchusenkougeki= entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusenkougeki, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusenkougeki, 255);
playSe( spep_1+10, SE_01);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


--entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_2+64, SE_06);



------------------------------------------------------
--ため(100F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-15, 10, 8, 15, fcolor_r, fcolor_g, fcolor_b,255);     -- white fade
entryFadeBg( spep_3, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景
changeAnime( spep_3, 1, 102);                       -- 溜め!
--setQuake(spep_3,160,8);
playSe( spep_3+10, 1021);
--playSe( spep_2+10, SE_05);
--playSe( spep_4+20, 1021);

ryuusenn= entryEffectLife( spep_3, 921, 160, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_3, ryuusenn, 1.6, 1.6);
setEffAlphaKey( spep_3, ryuusenn, 255);
setEffRotateKey(spep_3, ryuusenn, -150);

--[[
playSe( spep_3+60, 1018);
playSe( spep_3+70, 1018);
playSe( spep_3+78, 1018);
playSe( spep_3+108, 1018);
playSe( spep_3+116, 1018);
playSe( spep_3+126, 1018);
]]
--v4.11調整
SE001 = playSe( spep_3+60, 1018);
setSeVolume(spep_3+60,1018,130);
stopSe(spep_3 + 80,SE001,5);
SE002 = playSe( spep_3+70, 1018);
setSeVolume(spep_3+70,1018,130);
stopSe(spep_3 + 88,SE002,5);
SE003 = playSe( spep_3+78, 1018);
setSeVolume(spep_3+78,1018,130);
stopSe(spep_3 + 118,SE003,5);
SE004 = playSe( spep_3+108, 1018);
setSeVolume(spep_3+108,1018,130);
stopSe(spep_3 + 126,SE004,5);
SE005 = playSe( spep_3+116, 1018);
setSeVolume(spep_3+116,1018,130);
stopSe(spep_3 + 136,SE005,5);
SE006 = playSe( spep_3+126, 1018);
setSeVolume(spep_3+126,1018,130);

effmae = entryEffect(  spep_3,   SP_02,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, effmae, 1.0, 1.0);
setEffAlphaKey( spep_3, effmae, 255);

effushiro = entryEffect(  spep_3,   SP_03,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, effushiro, 1.0, 1.0);
setEffAlphaKey( spep_3, effushiro, 255);

spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep_3, spname, 255);
setEffAlphaKey( spep_3+38, spname, 255);
setEffAlphaKey( spep_3+40, spname, 0);

shuchusenkougekidayo=entryEffectLife( spep_3, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenkougekidayo, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenkougekidayo, 255);


setMoveKey(   spep_3,   1,    500, -250,   0);
setScaleKey(   spep_3,   1, 2.2, 2.2);

setDisp( spep_3+40, 1, 1);
setShakeChara( spep_3+40, 1, 120, 10);

setMoveKey(   spep_3+40,   1,    500, -250,   0);
setScaleKey(   spep_3+40,   1, 2.2, 2.2);


setScaleKey(   spep_3+60,   1, 1.2, 1.2);
setMoveKey(   spep_3+60,   1,    100, -50,   0);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 375; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+160;

entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);          -- ベース暗め　背景
--setQuake(spep_4,120,8);
setShakeChara( spep_4, 1, 20, 8);

ryuusenndane= entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_4, ryuusenndane, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusenndane, 255);
setEffRotateKey(spep_4, ryuusenndane, -150);

playSe( spep_4+20, 1021);

setScaleKey(   spep_4,   1, 1.2, 1.2);
setMoveKey(   spep_4,   1,    100, -50,   0);
setScaleKey(   spep_4+19,   1, 1.2, 1.2);

setScaleKey(   spep_4+20,   1, 0.6, 0.6);
setMoveKey(   spep_4+20,   1,    100, -50,   0);
  changeAnime( spep_4+20, 1, 107);  
                   -- 溜め!
playSe( spep_4+20, 1046);

shuchusenatari=entryEffectLife( spep_4+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+20, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4+20, shuchusenatari, 255);
setScaleKey(   spep_4+21,   1, 0.6, 0.6);
setScaleKey(   spep_4+22,   1, 1.0, 1.0);
setScaleKey(   spep_4+23,   1, 1.4, 1.4);
setScaleKey(   spep_4+24,   1, 1.8, 1.8);

--setScaleKey(   spep_4+23,   1, 1.5, 1.5);
--setScaleKey(   spep_4+25,   1, 2.0, 2.0);
setMoveKey(   spep_4+20,   1,    100, -100,   0);
setMoveKey(   spep_4+25,   1,    120, 120,   0);

setRotateKey( spep_4+25,  1,  0 );
setRotateKey( spep_4+27,  1,  10 );
setRotateKey( spep_4+29,  1,  0 );
setRotateKey( spep_4+31,  1,  -10 );
setRotateKey( spep_4+33,  1,  0 );
setRotateKey( spep_4+35,  1,  10 );
setRotateKey( spep_4+37,  1,  0 );
setRotateKey( spep_4+39,  1,  10 );
setRotateKey( spep_4+41,  1,  0 );
setRotateKey( spep_4+43,  1,  -10 );
setRotateKey( spep_4+45,  1,  0 );
setRotateKey( spep_4+47,  1,  10 );
setRotateKey( spep_4+49,  1,  0 );
--playSe( spep_4+20, 1046);

setRotateKey( spep_4+51,  1,  0 );
setRotateKey( spep_4+53,  1,  10 );
setRotateKey( spep_4+55,  1,  0 );
setRotateKey( spep_4+57,  1,  -10 );
setRotateKey( spep_4+59,  1,  0 );
setRotateKey( spep_4+61,  1,  10 );
setRotateKey( spep_4+63,  1,  0 );
setRotateKey( spep_4+65,  1,  10 );
setRotateKey( spep_4+67,  1,  0 );
setRotateKey( spep_4+69,  1,  -10 );
setRotateKey( spep_4+71,  1,  0 );
setRotateKey( spep_4+73,  1,  10 );
setRotateKey( spep_4+75,  1,  0 );
--playSe( spep_4+20, 1046);

setRotateKey( spep_4+77,  1,  0 );
setRotateKey( spep_4+79,  1,  10 );
setRotateKey( spep_4+81,  1,  0 );
setRotateKey( spep_4+83,  1,  -10 );
setRotateKey( spep_4+85,  1,  0 );
setRotateKey( spep_4+87,  1,  10 );
setRotateKey( spep_4+89,  1,  0 );
setRotateKey( spep_4+91,  1,  10 );
setRotateKey( spep_4+93,  1,  0 );
setRotateKey( spep_4+95,  1,  -10 );
setRotateKey( spep_4+97,  1,  0 );
setRotateKey( spep_4+99,  1,  10 );
setRotateKey( spep_4+101,  1,  0 );
--playSe( spep_4+20, 1046);

setRotateKey( spep_4+103,  1,  0 );
setRotateKey( spep_4+105,  1,  10 );
setRotateKey( spep_4+107,  1,  0 );
setRotateKey( spep_4+109,  1,  -10 );
setRotateKey( spep_4+111,  1,  0 );
setRotateKey( spep_4+113,  1,  10 );
setRotateKey( spep_4+115,  1,  0 );
setRotateKey( spep_4+117,  1,  10 );
setRotateKey( spep_4+119,  1,  0 );



maedayo = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, maedayo, 1.0, 1.0);
setEffAlphaKey( spep_4, maedayo, 255);

ushirodayo = entryEffect(  spep_4,   SP_05,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, ushirodayo, 1.0, 1.0);
setEffAlphaKey( spep_4, ushirodayo, 255);



------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_9=spep_4+120;


--entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景
entryFade( spep_9-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setDisp( spep_9, 1, 0);
playSe( spep_9, 1021);

playSe( spep_9+30, 1018);
playSe( spep_9+60, 1018);
--playSe( spep_9+90, 1018);
playSe( spep_9+90, SE_09);
playSe( spep_9+110, SE_10);
--playSe( spep_9+150, SE_10);


shuchusenfuttobi= entryEffectLife( spep_9, 921, 180, 0x80,  -1, 0,  0,  -300);   -- 集中線
setEffScaleKey( spep_9, shuchusenfuttobi, 2.0, 2.0);
setEffAlphaKey( spep_9, shuchusenfuttobi, 255);
setEffRotateKey( spep_9, shuchusenfuttobi, -45);

last = entryEffect(  spep_9,   SP_06,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9, last, 1.0, 1.0);
setEffAlphaKey( spep_9, last, 255);



-- ダメージ表示

dealDamage(spep_9+86);

entryFade( spep_9+165, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+175);

else



-----------------------------------------
--敵側の攻撃
-----------------------------------------
entryFade( 1, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 4, 0, 140, 0, 0, 0, 0, 255);          -- ベース暗め　背景

--test = entryEffect(  0,   SP_01,   0,  -1,  0,  0,  0);   -- カード

setDisp( 4, 0, 1);
changeAnime( 4, 0, 17);                       -- 立ち
setVisibleUI( 4, 0);
setMoveKey(   4,   0,    0, -54,   0);
setMoveKey(   4,   1,    0, -54,   0);
setScaleKey(   4,   0, 1.0, 1.0);


shuchusenkougeki=entryEffectLife( 4, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 4, shuchusenkougeki, 1.5, 1.5);
setEffAlphaKey( 4, shuchusenkougeki, 255);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
--changeAnime(  30, 0, 17);                       -- 溜め!
--[[
efftame1=entryEffect(  4,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey( 4, efftame1, 1.0, 1.0);
efftame2=entryEffect(  4,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffScaleKey( 4, efftame2, 1.0, 1.0);
]]
playSe( 4, SE_01);
--[[
playSe( 24, SE_03);
playSe( 44, SE_03);
]]

--entryFade( 62-26, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30-26,   341, 140, 0x100,  0,  1,  0,  -100); -- オーラ
--aura = entryEffectLife(  30-26,   331, 140, 0x100,  0,  1,  0,  -54); -- オーラ
--aura = entryEffectLife(  30-26,   356, 140, 0x100,  0,  1,  0,  -54); -- オーラ
--aura = entryEffectLife(  30-26,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30-26, aura, 2.0, 2.0);
setShakeChara( 30-26, 0, 136, 8);
setEffScaleKey( 80-26, aura, 2.5, 2.5);
setScaleKey(   80-26,   0, 1.6, 1.6);
--[[
-- 書き文字エントリー
ctzun = entryEffectLife( 30-26, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30-26, ctzun, 40, 7);
setEffAlphaKey(30-26, ctzun, 255);
setEffAlphaKey(50-26, ctzun, 255);
setEffAlphaKey(70-26, ctzun, 0);
setEffScaleKey( 30-26, ctzun, 0.1, 0.1);
setEffScaleKey( 40-26, ctzun, 2.0, 2.0);
playSe( 30-26, SE_02);
]]
--changeAnime( 70-26, 0, 30);                       -- 溜め!
--playSe( 73-26, SE_03);
--[[
eff1=entryEffect(  70-26,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
eff2=entryEffect(  70-26,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
]]
--[[
speff = entryEffect(  80-26,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80-26,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( 80-26, SE_04);

-- 書き文字エントリー
ctgogo = entryEffectLife( 90-26, 190006, 39, 0x100, -1, 0, 0, 500);    -- ゴゴゴゴ
setEffShake(90-26, ctgogo, 40, 8);
setEffScaleKey(90-26, ctgogo, -0.8, 0.8);
setEffRotateKey(90-26, ctgogo, 10);
setEffAlphaKey( 90-26, ctgogo, 255);


------------------------------------------------------
-- タックル(80F)
------------------------------------------------------
spep_1=140;

entryFade( spep_1-5, 3, 4, 3, 255, 255, 255, 255);     -- white fade
--entryFade( spep_1-5, 3, 5, 10, 185, 30, 230, 255);     -- white fade
--entryFade( spep_1-15, 3, 15, 4, 255, 0, 255, 255);     -- white fade
entryFadeBg( spep_1, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setDisp( spep_1, 0, 0);
setEffScaleKey( spep_1, aura, 3.0, 3.0);
setScaleKey(   spep_1,   0,1.6, 1.6);

setMoveKey(   spep_1,   0,    0, -54,   0);
setMoveKey(   spep_1,   1,    0, -54,   0);

tame = entryEffect(  spep_1,   SP_01e,   0,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_1, tame, 1.0, 1.0);
setEffAlphaKey( spep_1, tame, 255);


shuchusenkougeki= entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusenkougeki, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusenkougeki, 255);
playSe( spep_1+10, SE_01);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_2=spep_1+90;

entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_2, 0, 90, 0, 0, 0, 0, 255);          -- ベース暗め　背景

playSe( spep_2, SE_05);
speff = entryEffect(  spep_2,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


--entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_2+64, SE_06);



------------------------------------------------------
--ため(100F)
------------------------------------------------------
spep_3=spep_2+90;

entryFade( spep_3-25, 10, 15, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 160, 0, 0, 0, 0, 255);          -- ベース暗め　背景
changeAnime( spep_3, 1, 102);                       -- 溜め!
--setQuake(spep_3,160,8);
playSe( spep_3+10, 1021);
--playSe( spep_2+10, SE_05);
--playSe( spep_4+20, 1021);

ryuusenn= entryEffectLife( spep_3, 921, 160, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_3, ryuusenn, 1.6, 1.6);
setEffAlphaKey( spep_3, ryuusenn, 255);
setEffRotateKey(spep_3, ryuusenn, -150);

--[[
playSe( spep_3+60, 1018);
playSe( spep_3+70, 1018);
playSe( spep_3+78, 1018);
playSe( spep_3+108, 1018);
playSe( spep_3+116, 1018);
playSe( spep_3+126, 1018);
]]
--v4.11調整
SE001 = playSe( spep_3+60, 1018);
setSeVolume(spep_3+60,1018,130);
stopSe(spep_3 + 80,SE001,5);
SE002 = playSe( spep_3+70, 1018);
setSeVolume(spep_3+70,1018,130);
stopSe(spep_3 + 88,SE002,5);
SE003 = playSe( spep_3+78, 1018);
setSeVolume(spep_3+78,1018,130);
stopSe(spep_3 + 118,SE003,5);
SE004 = playSe( spep_3+108, 1018);
setSeVolume(spep_3+108,1018,130);
stopSe(spep_3 + 126,SE004,5);
SE005 = playSe( spep_3+116, 1018);
setSeVolume(spep_3+116,1018,130);
stopSe(spep_3 + 136,SE005,5);
SE006 = playSe( spep_3+126, 1018);
setSeVolume(spep_3+126,1018,130);

effmae = entryEffect(  spep_3,   SP_02,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, effmae, 1.0, 1.0);
setEffAlphaKey( spep_3, effmae, 255);

effushiro = entryEffect(  spep_3,   SP_03e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_3, effushiro, 1.0, 1.0);
setEffAlphaKey( spep_3, effushiro, 255);

spname = entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffAlphaKey( spep_3, spname, 255);
setEffAlphaKey( spep_3+38, spname, 255);
setEffAlphaKey( spep_3+40, spname, 0);

shuchusenkougekidayo=entryEffectLife( spep_3, 906, 20, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusenkougekidayo, 1.5, 1.5);
setEffAlphaKey( spep_3, shuchusenkougekidayo, 255);


setMoveKey(   spep_3,   1,    500, -250,   0);
setScaleKey(   spep_3,   1, 2.2, 2.2);

setDisp( spep_3+40, 1, 1);
setShakeChara( spep_3+40, 1, 120, 10);

setMoveKey(   spep_3+40,   1,    500, -250,   0);
setScaleKey(   spep_3+40,   1, 2.2, 2.2);


setScaleKey(   spep_3+60,   1, 1.2, 1.2);
setMoveKey(   spep_3+60,   1,    100, -50,   0);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 375; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_4=spep_3+160;

entryFade( spep_4-15, 3, 15, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 120, 0, 0, 0, 0, 255);          -- ベース暗め　背景
--setQuake(spep_4,120,8);
setShakeChara( spep_4, 1, 20, 8);

ryuusenndane= entryEffectLife( spep_4, 921, 120, 0x80,  -1, 0,  0,  -100);   -- 集中線
setEffScaleKey( spep_4, ryuusenndane, 1.6, 1.6);
setEffAlphaKey( spep_4, ryuusenndane, 255);
setEffRotateKey(spep_4, ryuusenndane, -150);

playSe( spep_4+20, 1021);
--[[
setScaleKey(   spep_4,   1, 1.2, 1.2);
setMoveKey(   spep_4,   1,    100, -50,   0);

setScaleKey(   spep_4+20,   1, 2.5, 2.5);
setMoveKey(   spep_4+20,   1,    100, -100,   0);
changeAnime( spep_4+20, 1, 107);                       -- 溜め!
playSe( spep_4+20, 1046);

shuchusenatari=entryEffectLife( spep_4+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+20, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4+20, shuchusenatari, 255);

setScaleKey(   spep_4+21,   1, 2.5, 2.5);
setMoveKey(   spep_4+21,   1,    100, -100,   0);
setMoveKey(   spep_4+25,   1,    120, 120,   0);

]]

setScaleKey(   spep_4,   1, 1.2, 1.2);
setMoveKey(   spep_4,   1,    100, -50,   0);
setScaleKey(   spep_4+19,   1, 1.2, 1.2);

setScaleKey(   spep_4+20,   1, 0.6, 0.6);
setMoveKey(   spep_4+20,   1,    100, -50,   0);
  changeAnime( spep_4+20, 1, 107);  
                   -- 溜め!
playSe( spep_4+20, 1046);

shuchusenatari=entryEffectLife( spep_4+20, 906, 100, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4+20, shuchusenatari, 1.5, 1.5);
setEffAlphaKey( spep_4+20, shuchusenatari, 255);
setScaleKey(   spep_4+21,   1, 0.6, 0.6);
setScaleKey(   spep_4+22,   1, 1.0, 1.0);
setScaleKey(   spep_4+23,   1, 1.4, 1.4);
setScaleKey(   spep_4+24,   1, 1.8, 1.8);

--setScaleKey(   spep_4+23,   1, 1.5, 1.5);
setScaleKey(   spep_4+25,   1, 2.0, 2.0);
setMoveKey(   spep_4+20,   1,    100, -100,   0);
setMoveKey(   spep_4+25,   1,    120, 120,   0);

setRotateKey( spep_4+25,  1,  0 );
setRotateKey( spep_4+27,  1,  10 );
setRotateKey( spep_4+29,  1,  0 );
setRotateKey( spep_4+31,  1,  -10 );
setRotateKey( spep_4+33,  1,  0 );
setRotateKey( spep_4+35,  1,  10 );
setRotateKey( spep_4+37,  1,  0 );
setRotateKey( spep_4+39,  1,  10 );
setRotateKey( spep_4+41,  1,  0 );
setRotateKey( spep_4+43,  1,  -10 );
setRotateKey( spep_4+45,  1,  0 );
setRotateKey( spep_4+47,  1,  10 );
setRotateKey( spep_4+49,  1,  0 );
--playSe( spep_4+20, 1046);

setRotateKey( spep_4+51,  1,  0 );
setRotateKey( spep_4+53,  1,  10 );
setRotateKey( spep_4+55,  1,  0 );
setRotateKey( spep_4+57,  1,  -10 );
setRotateKey( spep_4+59,  1,  0 );
setRotateKey( spep_4+61,  1,  10 );
setRotateKey( spep_4+63,  1,  0 );
setRotateKey( spep_4+65,  1,  10 );
setRotateKey( spep_4+67,  1,  0 );
setRotateKey( spep_4+69,  1,  -10 );
setRotateKey( spep_4+71,  1,  0 );
setRotateKey( spep_4+73,  1,  10 );
setRotateKey( spep_4+75,  1,  0 );
--playSe( spep_4+20, 1046);

setRotateKey( spep_4+77,  1,  0 );
setRotateKey( spep_4+79,  1,  10 );
setRotateKey( spep_4+81,  1,  0 );
setRotateKey( spep_4+83,  1,  -10 );
setRotateKey( spep_4+85,  1,  0 );
setRotateKey( spep_4+87,  1,  10 );
setRotateKey( spep_4+89,  1,  0 );
setRotateKey( spep_4+91,  1,  10 );
setRotateKey( spep_4+93,  1,  0 );
setRotateKey( spep_4+95,  1,  -10 );
setRotateKey( spep_4+97,  1,  0 );
setRotateKey( spep_4+99,  1,  10 );
setRotateKey( spep_4+101,  1,  0 );
--playSe( spep_4+20, 1046);

setRotateKey( spep_4+103,  1,  0 );
setRotateKey( spep_4+105,  1,  10 );
setRotateKey( spep_4+107,  1,  0 );
setRotateKey( spep_4+109,  1,  -10 );
setRotateKey( spep_4+111,  1,  0 );
setRotateKey( spep_4+113,  1,  10 );
setRotateKey( spep_4+115,  1,  0 );
setRotateKey( spep_4+117,  1,  10 );
setRotateKey( spep_4+119,  1,  0 );



maedayo = entryEffect(  spep_4,   SP_04,   0x100,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, maedayo, 1.0, 1.0);
setEffAlphaKey( spep_4, maedayo, 255);

ushirodayo = entryEffect(  spep_4,   SP_05e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_4, ushirodayo, 1.0, 1.0);
setEffAlphaKey( spep_4, ushirodayo, 255);



------------------------------------------------------
--発射(180F)
------------------------------------------------------
spep_9=spep_4+120;


--entryFade( spep_5-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--entryFadeBg( spep_5, 0, 180, 0, 10, 10, 10, 180);          -- ベース暗め　背景
entryFade( spep_9-45, 43, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_9, 0, 180, 0, 0, 0, 0, 255);          -- ベース暗め　背景
setDisp( spep_9, 1, 0);
playSe( spep_9, 1021);

playSe( spep_9+30, 1018);
playSe( spep_9+60, 1018);
--playSe( spep_9+90, 1018);
playSe( spep_9+90, SE_09);
playSe( spep_9+110, SE_10);
--playSe( spep_9+150, SE_10);
--playSe( spep_9+150, SE_10);


shuchusenfuttobi= entryEffectLife( spep_9, 921, 180, 0x80,  -1, 0,  0,  -300);   -- 集中線
setEffScaleKey( spep_9, shuchusenfuttobi, 2.0, 2.0);
setEffAlphaKey( spep_9, shuchusenfuttobi, 255);
setEffRotateKey( spep_9, shuchusenfuttobi, -45);

last = entryEffect(  spep_9,   SP_06e,   0x80,  -1,  0,  0,  0);   -- 
setEffScaleKey( spep_9, last, 1.0, 1.0);
setEffAlphaKey( spep_9, last, 255);



-- ダメージ表示

dealDamage(spep_9+86);

entryFade( spep_9+165, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_9+175);


end
