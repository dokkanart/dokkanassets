
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

tyo = -40;
tyo2 = -60;

SP_01 = 100340; --登場時
SP_02 = 100341; --光弾発射
SP_03 = 100342; --迫る
SP_04 = 1551; --地球から波動砲
SP_07 = 190000;--ギャン
SP_06 = 100343;--地面

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 2.0, 2.0);
setScaleKey(   1,   0, 2.0, 2.0);

setVisibleUI(0, 0);
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setScaleKey( 0,   0, 2.0, 2.0);
setScaleKey( 49,   0, 2.0, 2.0);

changeAnime( 0, 0, 17);                  -- かめはめ波溜め

entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 0, SE_01);

--playSe( 20, SE_03);
--playSe( 50, SE_03);

entryFade( 35, 7, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 47, 0, 0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 47, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setEffScaleKey( 49,aura, 1.5, 1.5);
setShakeChara( 0, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 0, 10013, 39, 0, -1, 0, 0, 300); -- ズズンッ
setEffShake(0, ct, 40, 7);
setEffAlphaKey(0, ct, 255);
setEffAlphaKey(20, ct, 255);
setEffAlphaKey(20, ct, 0);
setEffScaleKey( 0, ct, 0.1, 0.1);
setEffScaleKey( 10, ct, 2.0, 2.0);
playSe( 0, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------



playSe( 60, SE_04);

playSe( 70, SE_03);
playSe( 100, SE_03);
--playSe( 110, SE_03);
playSe( 120, SE_06);

entryFade( 221, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( 225,   0, 2.5, 2.5);

-- ** エフェクト等 ** 

entryFade( 225, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffectLife(  49,   1503, 180,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffectLife(  49,   1502, 200,   0x00,  -1,  0,  0,  0);   -- eff_003 (気)


kame_hand = entryEffect( 50, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffShake(50, kame_hand, 100, 15);

spep_3 = 230;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setMoveKey(  spep_3-2,    0,  0,  0,   0);

--playSe( spep_3, SE_04);

--setShake(spep_3,38, 8);
--setShake(spep_3+38,137, 20);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  0, 50);   -- 伸びるかめはめ波
setEffScaleKey( spep_3, kamehame_beam, 0.8, 0.8);


playSe( spep_3, SE_06);

--playSe( spep_3+20, SE_07);

--[[
playSe( spep_3+10, SE_03);
playSe( spep_3+30, SE_03);
playSe( spep_3+50, SE_03);
playSe( spep_3+70, SE_03);
playSe( spep_3+90, SE_03);
]]--

setEffShake(spep_3, kamehame_beam, 170, 20);

--playSe( spep_3+70, SE_03);
--playSe( spep_3+95, SE_03);

shuchusen = entryEffectLife( spep_3, 906, 175, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+166, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+175, shuchusen, 2.0, 2.0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 186, 0, 200, 200, 230, 255);       -- ベース暗め　背景

--entryEffectLife(spep_3,   1503, 186,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)

--playSe(spep_3+10, SE_04);

--entryEffect(  spep_3,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_3,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  spep_3+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_3+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー
--[[ct = entryEffectLife( spep_3+20, 10008, 45, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_3+20, ct, 40, 8);
setEffScaleKey(spep_3+20, ct, 1.4, 1.4);]]

spep_x = spep_3+10;
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

playSe( spep_x + 16, SE_04 );  --ゴゴゴ

playSe( spep_3+105, SE_07);

entryFade( spep_3+170, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+133);

spep_2=spep_3+170+10; --311 370

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

--極限Z用に改修
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

entryFade( spep_2+82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_4=spep_2+85+2; --211 260

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

playSe( spep_4, SE_07);
playSe( spep_4+80, SE_07);
playSe( spep_4+160, SE_09);
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ
--setMoveKey(  spep_4-5,    1,   120,  0,   0);
setMoveKey(  spep_4,    1,  600, -400,   0);
setMoveKey(  spep_4+140,    1,  600,  -400,   0);
setMoveKey(  spep_4+150,    1,  300,  -300,   0);
setMoveKey(  spep_4+160,    1,  300,  -300,   0);
setScaleKey(  spep_4,   1,   1.6,  1.6);
setScaleKey(  spep_4+160,   1,   1.6,  1.6);
--setScaleKey( spep_4-5,    1,  1, 1);

--setMoveKey(  spep_4+30,    1,   120,  250,   0);
setScaleKey(  spep_4,   1,   1.6,  1.6);

--entryFade( spep_4+115, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_4+160, 1, 0);

ryusen = entryEffectLife( spep_4, 921, 160, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4, ryusen, 210);
setEffScaleKey( spep_4, ryusen, 2.0, 2.0);

jimen = entryEffect(spep_4,SP_06,0x80,-1,0,0,0);
setEffAlphaKey( spep_4,jimen,255);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+160, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+160, 1, 0);  -- ダメージ振動等

--setEffShake(spep_3, kamehame_beam2, 90, 20);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 170, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 120, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, 70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+155, ct, 255);
setEffAlphaKey(spep_4+160, ct, 0);

spep_5=spep_4+160; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 646; --エンドフェイズのフレーム数を置き換える


--setDisp( SP_dodge+9, 0, 0);
setMoveKey(  SP_dodge,    0,  6000, -4000,   0);
setMoveKey(  SP_dodge+9,    0,  6000,  -4000,   0);

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

entryFade( spep_4+150, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン
------------------------------------------------------

gyan = entryEffect( spep_5,SP_07,0x80,-1,0,0,0);
setEffAlphaKey( spep_5,gyan,255);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+30, 10006, 60, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+30, ct, 99, 20);
setEffScaleKey( spep_5+30, ct, 0.1, 0.1);
setEffScaleKey( spep_5+35, ct, 2.4, 2.4);
setEffScaleKey( spep_5+30, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+45, ct, 255);
setEffAlphaKey(spep_5+60, ct, 0);

entryFade( spep_5+55, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_5+60

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_6,SP_04,0,-1,0,0,0);

setDisp( spep_6, 1, 0);

-- 書き文字エントリー

playSe( spep_6, SE_11);
playSe( spep_6+4, 1022);


-- ダメージ表示
dealDamage(spep_6+17);

--entryFade( spep_6+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+101);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め！(100F)
------------------------------------------------------
setScaleKey( 0,   0, 2.0, 2.0);
setScaleKey( 49,   0, 2.0, 2.0);

changeAnime( 0, 0, 17);                  -- かめはめ波溜め

entryEffect(  0,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  0,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 0, SE_01);

--playSe( 20, SE_03);
--playSe( 50, SE_03);

entryFade( 35, 7, 7, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( 47, 0, 0);

-- ** エフェクト等 ** --
aura = entryEffectLife(  0,   311, 47, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 0, aura, 1.5, 1.5);
setEffScaleKey( 49,aura, 1.5, 1.5);
setShakeChara( 0, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 0, 10013, 39, 0, -1, 0, 0, 300); -- ズズンッ
setEffShake(0, ct, 40, 7);
setEffAlphaKey(0, ct, 255);
setEffAlphaKey(20, ct, 255);
setEffAlphaKey(20, ct, 0);
setEffScaleKey( 0, ct, 0.1, 0.1);
setEffScaleKey( 10, ct, 2.0, 2.0);
playSe( 0, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

--setVisibleUI(49, 0);

playSe( 60, SE_04);

playSe( 70, SE_03);
playSe( 100, SE_03);
--playSe( 110, SE_03);
playSe( 120, SE_06);

entryFade( 221, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( 225,   0, 2.5, 2.5);

-- ** エフェクト等 ** 

entryFade( 225, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffectLife(  49,   1503, 180,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffectLife(  49,   1502, 200,   0x00,  -1,  0,  0,  0);   -- eff_003 (気)


kame_hand = entryEffect( 50, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 50, kame_hand, -1, 1);
setEffShake(50, kame_hand, 100, 15);

spep_3 = 230;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setMoveKey(  spep_3-2,    0,  0,  0,   0);

--playSe( spep_3, SE_04);

--setShake(spep_3,38, 8);
--setShake(spep_3+38,137, 20);

kamehame_beam = entryEffect( spep_3, SP_02, 0x40,  0,  300,  0, 50);   -- 伸びるかめはめ波
setEffScaleKey( spep_3, kamehame_beam, -0.8, 0.8);

playSe( spep_3, SE_06);

--playSe( spep_3+20, SE_07);

--[[
playSe( spep_3+10, SE_03);
playSe( spep_3+30, SE_03);
playSe( spep_3+50, SE_03);
playSe( spep_3+70, SE_03);
playSe( spep_3+90, SE_03);
]]--

setEffShake(spep_3, kamehame_beam, 170, 20);

--playSe( spep_3+70, SE_03);
--playSe( spep_3+95, SE_03);

shuchusen = entryEffectLife( spep_3, 906, 175, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+166, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_3+175, shuchusen, 2.0, 2.0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 186, 0, 200, 200, 230, 255);       -- ベース暗め　背景

--entryEffectLife(spep_3,   1503, 186,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)

--playSe(spep_3+10, SE_04);

--entryEffect(  spep_3,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  spep_3,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  spep_3+10,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_3+10,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え


-- 書き文字エントリー
--[[ct = entryEffectLife( spep_3+20, 10008, 45, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(spep_3+20, ct, 40, 8);
setEffScaleKey(spep_3+20, ct, 1.4, 1.4);]]

spep_x = spep_3+10;
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

playSe( spep_x + 16, SE_04 );  --ゴゴゴ

playSe( spep_3+105, SE_07);

entryFade( spep_3+170, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+133);

spep_2=spep_3+170+10; --311 370

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setMoveKey(  spep_2,    0,      0,  0,   0);

--極限Z用に改修
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end
    
    

entryFade( spep_2+82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( spep_2+64, SE_06);

spep_4=spep_2+85+2; --211 260

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

playSe( spep_4, SE_07);
playSe( spep_4+80, SE_07);
playSe( spep_4+160, SE_09);
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 118);                        -- 気ダメ後ろ
--setMoveKey(  spep_4-5,    1,   120,  0,   0);
setMoveKey(  spep_4,    1,  600, -400,   0);
setMoveKey(  spep_4+140,    1,  600,  -400,   0);
setMoveKey(  spep_4+150,    1,  300,  -300,   0);
setMoveKey(  spep_4+160,    1,  300,  -300,   0);
setScaleKey(  spep_4,   1,   1.6,  1.6);
setScaleKey(  spep_4+160,   1,   1.6,  1.6);
--setScaleKey( spep_4-5,    1,  1, 1);

--setMoveKey(  spep_4+30,    1,   120,  250,   0);
setScaleKey(  spep_4,   1,   1.6,  1.6);

--entryFade( spep_4+115, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_4+160, 1, 0);

ryusen = entryEffectLife( spep_4, 921, 160, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4, ryusen, 210);
setEffScaleKey( spep_4, ryusen, 2.0, 2.0);

jimen = entryEffect(spep_4,SP_06,0x80,-1,0,0,0);
setEffAlphaKey( spep_4,jimen,255);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_4, kamehame_beam2, 1, 1);
setEffScaleKey(spep_4+160, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( spep_4+160, 1, 0);  -- ダメージ振動等

--setEffShake(spep_3, kamehame_beam2, 90, 20);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 170, 0,0, 0, 0, 255);          -- ベース暗め　背景

-- 書き文字エントリー
ct = entryEffectLife( spep_4, 10014, 120, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ct, 99, 20);
setEffScaleKey( spep_4, ct, 2.4, 2.4);
setEffRotateKey(spep_4, ct, -70);
setEffAlphaKey(spep_4, ct, 255);
setEffAlphaKey(spep_4+155, ct, 255);
setEffAlphaKey(spep_4+160, ct, 0);

spep_5=spep_4+160; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 646; --エンドフェイズのフレーム数を置き換える

setMoveKey(  SP_dodge,    0,  6000, -4000,   0);
setMoveKey(  SP_dodge+9,    0,  6000,  -4000,   0);

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

entryFade( spep_4+150, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- ギャン
------------------------------------------------------

gyan = entryEffect( spep_5,SP_07,0x80,-1,0,0,0);
setEffAlphaKey( spep_5,gyan,255);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+30, 10006, 60, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake(spep_5+30, ct, 99, 20);
setEffScaleKey( spep_5+30, ct, 0.1, 0.1);
setEffScaleKey( spep_5+35, ct, 2.4, 2.4);
setEffScaleKey( spep_5+30, ct, 2.8, 2.8);
setEffAlphaKey(spep_5+30, ct, 255);
setEffAlphaKey(spep_5+45, ct, 255);
setEffAlphaKey(spep_5+60, ct, 0);

entryFade( spep_5+55, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_6=spep_5+60

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

entryEffect( spep_6,SP_04,0,-1,0,0,0);

setDisp( spep_6, 1, 0);

-- 書き文字エントリー

playSe( spep_6, SE_11);
playSe( spep_6+4, 1022);


-- ダメージ表示
dealDamage(spep_6+17);

--entryFade( spep_6+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+101);


end
