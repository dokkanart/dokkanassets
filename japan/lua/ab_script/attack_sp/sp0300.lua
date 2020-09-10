print ("[lua]sp0001");

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

SP_01 = 100021
SP_02 = 104029
SP_03 = 100023

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

spep_1 = -69;

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(spep_1, 0);
changeAnime(spep_1+1, 0, 30);                       -- 溜め!

setMoveKey( spep_1+155,   0,    0, -54,   0);
setScaleKey( spep_1+155,   0, 1.5, 1.5);

aura = entryEffectLife(  spep_1+1,   351, 164, 0x40,  0,  300,  0,  -200); -- オーラ
setEffScaleKey( spep_1+1, aura, 1.8, 1.8);
setShakeChara( spep_1+1, 0, 164, 5);

playSe( spep_1, SE_04);
playSe(spep_1+80, SE_03);
playSe(spep_1+100, SE_03);
playSe(spep_1+120, SE_03);
playSe(spep_1+140, SE_03);
--playSe(spep_1+160, SE_03);

kame_hand = entryEffectLife( spep_1+1, SP_01,155, 0x40,   0,  300,  -50,  30);   -- 手のカメハメ波部
setEffScaleKey( spep_1+1, kame_hand, 0.5, 0.5);

entryFade( spep_1+150, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryFadeBg( spep_1, 0, 155, 0, 0, 0, 0, 190);       -- ベース暗め　背景

shuchusen5 = entryEffectLife( spep_1+1, 906, 155, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+1, shuchusen5, 1.5, 1.5);
setEffAlphaKey(spep_1+1, ct, 255);

-- 書き文字エントリー
ct = entryEffectLife( spep_1, 10008, 150, 0x100, -1, 0, -190, 200);    -- ゴゴゴ・・・
setEffShake( spep_1, ct, 155, 8);
setEffScaleKey( spep_1, ct, 1.4, 1.4);

entryFade( spep_1+150, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+155 ;--169

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_2,   0, 1.5, 1.5);
setScaleKey( spep_2+1,   0, 1.0, 1.0);

playSe( spep_2+1, SE_05);
speff = entryEffect(  spep_2+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+89, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_2+1+64, SE_06);

spep_3 = spep_2+93;--262

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  2,  2);
setScaleKey(  spep_3+10,  0,  1,  1);

setMoveKey(  spep_3-1,     0,    0, -54,   0);
setMoveKey(  spep_3,    0,   -50,  -100,   0);
--setMoveKey(  spep_3+10,    0,      -250,  -80,   0);
setMoveKey(  spep_3+25,    0,   -250,  -200,   0);

sen2 = entryEffectLife( spep_3, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -50);
setEffScaleKey( spep_3, sen2, 1.8, 1.8);

setShakeChara( spep_3, 0, 90, 30);
setShake( spep_3, 90, 20);
aura = entryEffectLife(  spep_3,   351, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura, 5.4, 5.4);
setEffScaleKey( spep_3+10, aura, 3.7,  3.7);
--setEffRotateKey(spep_3, aura,  -10);
setEffMoveKey(  spep_3,   aura,    0,  -680);
setEffMoveKey(  spep_3+10,   aura,    0,  -200);
setEffAlphaKey(spep_3, aura, 255);


kamehame_beam_st = entryEffect( spep_3, SP_02, 0x40+0x100,  0,  300,  250,  300);   -- 伸びるかめはめ波oku
setEffRotateKey(spep_3, kamehame_beam_st, -50 );
setEffScaleKey( spep_3, kamehame_beam_st, 1.5, 1.5);
setEffScaleKey( spep_3+49, kamehame_beam_st, 1.0, 1.0);
--setEffScaleKey( spep_3+50, kamehame_beam_st, 2.0, 2.0);

--setEffMoveKey(  spep_3,   kamehame_beam_st,    480,  520);
--setEffMoveKey(  spep_3+10,   kamehame_beam_st,    80,  120);


-- 途中からカメハメハが伸びる 

setMoveKey(  spep_3+30,    0,   -850,  -850,    0); --650 --292
--setMoveKey(  spep_3+49,    0,   -900,  -850,   0); --1000 600 --322
setMoveKey(  spep_3+80,    0,   -1000,  -950,   0); --1000 600 --322
--setMoveKey(  spep_3+50,    0,   -1400,  -1550,   0); --1000 600 --322
--[[
setMoveKey(  spep_3+30,    0,   -550,  -450,   -60); --650
setMoveKey(  spep_3+60,    0,   -1250,  -650,   -90); --1000 600
]]--
setDisp( spep_3+60, 0, 0);

-- ** エフェクト等 ** --

playSe( spep_3, SE_07);
--playSe( spep_3+50, SE_06);

entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 220);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);

playSe( spep_3+70, SE_07);

entryFade( spep_3+85, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect (spep_3+89);

spep_4=spep_3+90; --382

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_4+1, 0, 0);
setDisp( spep_4+1, 1, 1);
changeAnime( spep_4+1 ,1, 104);                        -- ガード
setMoveKey(  spep_4,    1,  235,  300,   0);
setMoveKey(  spep_4+80,    1,  185,  250,   0);
setScaleKey( spep_4,    1,  0.7, 0.7);
--setScaleKey( spep_4+1,    1,  0.7, 0.7);
setScaleKey( spep_4+80,    1,  1.0, 1.0);

--setMoveKey(  spep_4+31,    1,   120,  200,   0);
--setMoveKey(  spep_4+80,    1,   120,  200,   0);
--setScaleKey(  spep_4+31,   1,   1.6,  1.6);
--setScaleKey(  spep_4+80,   1,   1.6,  1.6);

-- ** エフェクト等 ** --

playSe( spep_4, SE_06);
--playSe( spep_4+80, SE_09);

ryusen = entryEffectLife( spep_4+1, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4+1, ryusen, -60 );
setEffScaleKey(spep_4+1, ryusen, 2.0, 2.0);

kamehame_beam2 = entryEffectLife( spep_4+1, SP_03, 80, 0x00, -1,  0,  -200,  0);   -- 迫るかめはめ波
setEffRotateKey(spep_4+1, kamehame_beam2, -80 );
setEffScaleKey(spep_4+1, kamehame_beam2, 0.7, 0.7);
setEffScaleKey(spep_4+80, kamehame_beam2, 0.7, 0.7);
--setEffScaleKey(spep_4+85, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+83, 1, 0);  -- ダメージ振動等

setShakeChara( spep_4+1, 1, 99, 20);

entryFadeBg( spep_4+1, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_4+1, 10014, 80, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4+1, ct, 80, 20);
setEffScaleKey( spep_4+1, ct, 2.4, 2.4);
setEffRotateKey(spep_4+1, ct, 70);
setEffAlphaKey(spep_4+1, ct, 255);
setEffAlphaKey(spep_4+80, ct, 255);
--setEffAlphaKey(spep_4+80, ct, 0);

entryFade( spep_4+75, 2,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+78; 

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setDisp( spep_5, 1, 0);
setDisp( spep_5, 0, 1);
changeAnime( spep_5, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_5,  0,  2,  2);
setScaleKey(  spep_5,  0,  2,  2);

setMoveKey(  spep_5,    0,   -250,  -200,   0);
setMoveKey(  spep_5+80,    0,   -250,  -200,   0);
setMoveKey(  spep_5+100,    0,   -350,  -300,   0);
setMoveKey(  spep_5+110,    0,   -350,  -300,   0);

sen2 = entryEffectLife( spep_5, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5, sen2, -50);
setEffScaleKey( spep_5, sen2, 1.8, 1.8);

setShakeChara( spep_5, 0, 130, 30);
setShake( spep_5, 110, 20);

aura = entryEffectLife(  spep_5,   351, 110, 0x40+0x100,  0,  300,  0,  -200); -- オーラ

setEffScaleKey( spep_5, aura, 3.7,  3.7);

setEffAlphaKey(spep_5, aura, 255);

kamehame_beam_st = entryEffectLife( spep_5, SP_02, 110, 0x40+0x100,  0,  300,  250,  300);   -- 伸びるかめはめ波oku
setEffRotateKey(spep_5, kamehame_beam_st, -50 );
setEffScaleKey( spep_5, kamehame_beam_st, 1.0, 1.0);
setEffScaleKey( spep_5+80, kamehame_beam_st, 1.0, 1.0);
setEffScaleKey( spep_5+100, kamehame_beam_st, 2.5, 2.5);
setEffScaleKey( spep_5+110, kamehame_beam_st, 2.5, 2.5);

-- ** エフェクト等 ** --

speff = entryEffect(spep_5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep_5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_5, SE_04);
playSe( spep_5+80, SE_10);

entryFadeBg( spep_5, 0, 110, 0, 10, 10, 10, 220);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_5-1, 906, 110, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_5-1, shuchusen, 145);
setEffScaleKey( spep_5-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー

--playSe( spep_5+70, SE_07);

entryFade( spep_5+105, 3,  13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_7 = spep_5+110; --382

------------------------------------------------------
-- 迫る(110F)
------------------------------------------------------

setDisp( spep_7, 0, 0);--526
setDisp( spep_7, 1, 1);
setDisp( spep_7+86, 1, 0);--612

changeAnime( spep_7, 1, 104);                        -- ガード

setMoveKey(  spep_7,    1,  700,  700,   0);
setMoveKey(  spep_7+9,    1,  700,  700,   0);--535
setMoveKey(  spep_7+24,    1,  50, 50,   0);--550
setMoveKey(  spep_7+86,    1,  -50, -50,   0);
--setMoveKey(  626,    1,  0,  0,   0);

setScaleKey( spep_7+1,    1,  2.5, 2.5);
setScaleKey( spep_7+9,    1,  2.5, 2.5);
setScaleKey( spep_7+24,    1,  1.5, 1.5);
setScaleKey( spep_7+119,    1,  1.5, 1.5);--645
--setScaleKey( 526,    1,  2.5, 2.5);

setShakeChara( spep_7, 1, 148, 10);

entryFadeBg( spep_7, 0, 148, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--entryFade( spep_7+74, 1,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

sen5 = entryEffectLife( spep_7, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_7, sen5, 130);
setEffScaleKey(spep_7, sen5, 2.0, 2.0);

kamehame_beam6 = entryEffect( spep_7, 100368,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_7, kamehame_beam6, 1.2, 1.2);

--書き文字エントリー
ct = entryEffectLife( spep_7+86, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_7+86, ct, 32, 5);
setEffAlphaKey(spep_7+86, ct, 255);
setEffAlphaKey(spep_7+98, ct, 255);--624
setEffAlphaKey(spep_7+108, ct, 0);
setEffScaleKey(spep_7+86, ct, 0.0, 0.0);
setEffScaleKey(spep_7+88, ct, 1.3, 1.3);
setEffScaleKey(spep_7+98, ct, 1.3, 1.3);--624
setEffScaleKey(spep_7+108, ct, 6.0, 6.0);--634

entryFade( spep_7+143 ,4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade--667

spep_6 = spep_7+148; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 485; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_7+86, SE_06);

-----------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_6, 1, 1);
setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6,    1,  1.0, 1.0);
setMoveKey(  spep_6+1,    1,    0,   0,   128);
setScaleKey( spep_6+1,    1,  0.1, 0.1);

changeAnime( spep_6+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+9, SE_10);

setMoveKey(  spep_6+9,   1,    0,   0,   128);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_6+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_6+8,6,15);
setShake(spep_6+14,15,10);

setRotateKey( spep_6+1,  1,  30 );
setRotateKey( spep_6+3,  1,  80 );
setRotateKey( spep_6+5,  1, 120 );
setRotateKey( spep_6+7,  1, 160 );
setRotateKey( spep_6+9,  1, 200 );
setRotateKey( spep_6+11,  1, 260 );
setRotateKey( spep_6+13,  1, 320 );
setRotateKey( spep_6+15,  1,   0 );

setShakeChara( spep_6+16, 1, 5,  10);
setShakeChara( spep_6+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_6+16, ct, 30, 10);
setEffRotateKey( spep_6+16, ct, -40);
setEffScaleKey( spep_6+16, ct, 4.0, 4.0);
setEffScaleKey( spep_6+17, ct, 2.0, 2.0);
setEffScaleKey( spep_6+18, ct, 2.6, 2.6);
setEffScaleKey( spep_6+19, ct, 4.0, 4.0);
setEffScaleKey( spep_6+20, ct, 2.6, 2.6);
setEffScaleKey( spep_6+21, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+16, ct, 255);
setEffAlphaKey( spep_6+106, ct, 255);
setEffAlphaKey( spep_6+116, ct, 0);

playSe( spep_6+15, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+111);

else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
spep_1 = -69;

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setVisibleUI(spep_1, 0);
changeAnime(spep_1+1, 0, 30);                       -- 溜め!

setMoveKey( spep_1+155,   0,    0, -54,   0);
setScaleKey( spep_1+155,   0, 1.5, 1.5);

aura = entryEffectLife(  spep_1+1,   351, 164, 0x40,  0,  300,  0,  -200); -- オーラ
setEffScaleKey( spep_1+1, aura, 1.8, 1.8);
setShakeChara( spep_1+1, 0, 164, 5);

--[[
speff = entryEffect(spep_1,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep_1,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_1, SE_04);
playSe(spep_1+80, SE_03);
playSe(spep_1+100, SE_03);
playSe(spep_1+120, SE_03);
playSe(spep_1+140, SE_03);
--playSe(spep_1+160, SE_03);

kame_hand = entryEffect( spep_1+1, SP_01, 0x40+0x80,   0,  300,  -40,  30);   -- 手のカメハメ波部
setEffScaleKey( spep_1+1, kame_hand, 0.5, 0.5);

entryFade( spep_1+150, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryFadeBg( spep_1, 0, 155, 0, 0, 0, 0, 190);       -- ベース暗め　背景

shuchusen5 = entryEffectLife( spep_1+1, 906, 155, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1+1, shuchusen5, 1.5, 1.5);
setEffAlphaKey(spep_1+1, ct, 255);

-- 書き文字エントリー
ct = entryEffectLife( spep_1, 10008, 150, 0x100, -1, 0, -190, 200);    -- ゴゴゴ・・・
setEffShake( spep_1, ct, 155, 8);
setEffScaleKey( spep_1, ct, 1.4, 1.4);

entryFade( spep_1+150, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = spep_1+155 ;--169

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

setScaleKey( spep_2,   0, 1.5, 1.5);
setScaleKey( spep_2+1,   0, 1.0, 1.0);

playSe( spep_2+1, SE_05);
speff = entryEffect(  spep_2+1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+89, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

playSe( spep_2+1+64, SE_06);

spep_3 = spep_2+93;--262

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_3,  0,  2,  2);
setScaleKey(  spep_3+10,  0,  1,  1);

setMoveKey(  spep_3-1,     0,    0, -54,   0);
setMoveKey(  spep_3,    0,   -50,  -100,   0);
--setMoveKey(  spep_3+10,    0,      -250,  -80,   0);
setMoveKey(  spep_3+25,    0,   -250,  -200,   0);

sen2 = entryEffectLife( spep_3, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, -50);
setEffScaleKey( spep_3, sen2, 1.8, 1.8);

setShakeChara( spep_3, 0, 90, 30);
setShake( spep_3, 90, 20);
aura = entryEffectLife(  spep_3,   351, 60, 0x40+0x100,  0,  300,  0,  0); -- オーラ
setEffScaleKey( spep_3, aura, 5.4, 5.4);
setEffScaleKey( spep_3+10, aura, 3.7,  3.7);
--setEffRotateKey(spep_3, aura,  -10);
setEffMoveKey(  spep_3,   aura,    0,  -680);
setEffMoveKey(  spep_3+10,   aura,    0,  -200);
setEffAlphaKey(spep_3, aura, 255);


kamehame_beam_st = entryEffect( spep_3, SP_02, 0x40+0x100,  0,  300,  250,  300);   -- 伸びるかめはめ波oku
setEffRotateKey(spep_3, kamehame_beam_st, -50 );
setEffScaleKey( spep_3, kamehame_beam_st, 1.5, 1.5);
setEffScaleKey( spep_3+49, kamehame_beam_st, 1.0, 1.0);
--setEffScaleKey( spep_3+50, kamehame_beam_st, 2.0, 2.0);

--setEffMoveKey(  spep_3,   kamehame_beam_st,    480,  520);
--setEffMoveKey(  spep_3+10,   kamehame_beam_st,    80,  120);


-- 途中からカメハメハが伸びる 

setMoveKey(  spep_3+30,    0,   -850,  -850,    0); --650 --292
--setMoveKey(  spep_3+49,    0,   -900,  -850,   0); --1000 600 --322
setMoveKey(  spep_3+80,    0,   -1000,  -950,   0); --1000 600 --322
--setMoveKey(  spep_3+50,    0,   -1400,  -1550,   0); --1000 600 --322
--[[
setMoveKey(  spep_3+30,    0,   -550,  -450,   -60); --650
setMoveKey(  spep_3+60,    0,   -1250,  -650,   -90); --1000 600
]]--
setDisp( spep_3+60, 0, 0);

-- ** エフェクト等 ** --

playSe( spep_3, SE_07);
--playSe( spep_3+50, SE_06);

entryFadeBg( spep_3, 0, 90, 0, 10, 10, 10, 220);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_3-1, 906, 109, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_3-1, shuchusen, 145);
setEffScaleKey( spep_3-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー
ct = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ct, 32, 5);
setEffAlphaKey(spep_3+8, ct, 255);
setEffAlphaKey(spep_3+30, ct, 255);
setEffAlphaKey(spep_3+40, ct, 0);
setEffScaleKey(spep_3+8, ct, 0.0, 0.0);
setEffScaleKey(spep_3+12, ct, 1.3, 1.3);
setEffScaleKey(spep_3+32, ct, 1.3, 1.3);
setEffScaleKey(spep_3+40, ct, 6.0, 6.0);

playSe( spep_3+70, SE_07);

entryFade( spep_3+85, 3,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect (spep_3+89);

spep_4=spep_3+90; --382

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

setDisp( spep_4+1, 0, 0);
setDisp( spep_4+1, 1, 1);
changeAnime( spep_4+1 ,1, 104);                        -- ガード
setMoveKey(  spep_4,    1,  235,  300,   0);
setMoveKey(  spep_4+80,    1,  185,  250,   0);
setScaleKey( spep_4,    1,  0.7, 0.7);
--setScaleKey( spep_4+1,    1,  0.7, 0.7);
setScaleKey( spep_4+80,    1,  1.0, 1.0);

--setMoveKey(  spep_4+31,    1,   120,  200,   0);
--setMoveKey(  spep_4+80,    1,   120,  200,   0);
--setScaleKey(  spep_4+31,   1,   1.6,  1.6);
--setScaleKey(  spep_4+80,   1,   1.6,  1.6);

-- ** エフェクト等 ** --

playSe( spep_4, SE_06);
--playSe( spep_4+80, SE_09);

ryusen = entryEffectLife( spep_4+1, 921, 100, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(spep_4+1, ryusen, -60 );
setEffScaleKey(spep_4+1, ryusen, 2.0, 2.0);

kamehame_beam2 = entryEffectLife( spep_4+1, SP_03, 80, 0x00, -1,  0,  -200,  0);   -- 迫るかめはめ波
setEffRotateKey(spep_4+1, kamehame_beam2, -80 );
setEffScaleKey(spep_4+1, kamehame_beam2, 0.7, 0.7);
setEffScaleKey(spep_4+80, kamehame_beam2, 0.7, 0.7);
--setEffScaleKey(spep_4+85, kamehame_beam2, 2.5, 2.5);
--setDamage( spep_4+83, 1, 0);  -- ダメージ振動等

setShakeChara( spep_4+1, 1, 99, 20);

entryFadeBg( spep_4+1, 0, 100, 0, 10, 10, 10, 150);          -- ベース暗め　背景


-- 書き文字エントリー
ct = entryEffectLife( spep_4+1, 10014, 80, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4+1, ct, 80, 20);
setEffScaleKey( spep_4+1, ct, 2.4, 2.4);
setEffRotateKey(spep_4+1, ct, -70);
setEffAlphaKey(spep_4+1, ct, 255);
setEffAlphaKey(spep_4+80, ct, 255);
--setEffAlphaKey(spep_4+80, ct, 0);

entryFade( spep_4+75, 2,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_5 = spep_4+78; 

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

setDisp( spep_5, 1, 0);
setDisp( spep_5, 0, 1);
changeAnime( spep_5, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey(  spep_5,  0,  2,  2);
setScaleKey(  spep_5,  0,  2,  2);

setMoveKey(  spep_5,    0,   -250,  -200,   0);
setMoveKey(  spep_5+80,    0,   -250,  -200,   0);
setMoveKey(  spep_5+100,    0,   -350,  -300,   0);
setMoveKey(  spep_5+110,    0,   -350,  -300,   0);

sen2 = entryEffectLife( spep_5, 920, 110, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_5, sen2, -50);
setEffScaleKey( spep_5, sen2, 1.8, 1.8);

setShakeChara( spep_5, 0, 130, 30);
setShake( spep_5, 110, 20);

aura = entryEffectLife(  spep_5,   351, 110, 0x40+0x100,  0,  300,  0,  -200); -- オーラ

setEffScaleKey( spep_5, aura, 3.7,  3.7);

setEffAlphaKey(spep_5, aura, 255);

kamehame_beam_st = entryEffectLife( spep_5, SP_02, 110, 0x40+0x100,  0,  300,  250,  300);   -- 伸びるかめはめ波oku
setEffRotateKey(spep_5, kamehame_beam_st, -50 );
setEffScaleKey( spep_5, kamehame_beam_st, 1.0, 1.0);
setEffScaleKey( spep_5+80, kamehame_beam_st, 1.0, 1.0);
setEffScaleKey( spep_5+100, kamehame_beam_st, 2.5, 2.5);
setEffScaleKey( spep_5+110, kamehame_beam_st, 2.5, 2.5);

-- ** エフェクト等 ** --

--[[
speff = entryEffect(spep_5,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(spep_5,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--

playSe( spep_5, SE_04);
playSe( spep_5+80, SE_10);

entryFadeBg( spep_5, 0, 110, 0, 10, 10, 10, 220);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_5-1, 906, 110, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffRotateKey(spep_5-1, shuchusen, 145);
setEffScaleKey( spep_5-1, shuchusen, 2.8, 2.8);

-- 書き文字エントリー

--playSe( spep_5+70, SE_07);

entryFade( spep_5+105, 3,  13, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_7 = spep_5+110; --382

------------------------------------------------------
-- 迫る(110F)
------------------------------------------------------

setDisp( spep_7, 0, 0);--526
setDisp( spep_7, 1, 1);
setDisp( spep_7+86, 1, 0);--612

changeAnime( spep_7, 1, 104);                        -- ガード

setMoveKey(  spep_7,    1,  700,  700,   0);
setMoveKey(  spep_7+9,    1,  700,  700,   0);--535
setMoveKey(  spep_7+24,    1,  50, 50,   0);--550
setMoveKey(  spep_7+86,    1,  -50, -50,   0);
--setMoveKey(  626,    1,  0,  0,   0);

setScaleKey( spep_7+1,    1,  2.5, 2.5);
setScaleKey( spep_7+9,    1,  2.5, 2.5);
setScaleKey( spep_7+24,    1,  1.5, 1.5);
setScaleKey( spep_7+119,    1,  1.5, 1.5);--645
--setScaleKey( 526,    1,  2.5, 2.5);

setShakeChara( spep_7, 1, 148, 10);

entryFadeBg( spep_7, 0, 148, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--entryFade( spep_7+74, 1,  10, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

sen5 = entryEffectLife( spep_7, 920, 149, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_7, sen5, 130);
setEffScaleKey(spep_7, sen5, 2.0, 2.0);

kamehame_beam6 = entryEffect( spep_7, 100368,   0x100, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( spep_7, kamehame_beam6, 1.2, 1.2);

--書き文字エントリー
ct = entryEffectLife( spep_7+86, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_7+86, ct, 32, 5);
setEffAlphaKey(spep_7+86, ct, 255);
setEffAlphaKey(spep_7+98, ct, 255);--624
setEffAlphaKey(spep_7+108, ct, 0);
setEffScaleKey(spep_7+86, ct, 0.0, 0.0);
setEffScaleKey(spep_7+88, ct, 1.3, 1.3);
setEffScaleKey(spep_7+98, ct, 1.3, 1.3);--624
setEffScaleKey(spep_7+108, ct, 6.0, 6.0);--634

entryFade( spep_7+143 ,4,  5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade--667

spep_6 = spep_7+148; --410 469

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 485; --エンドフェイズのフレーム数を置き換える

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

playSe( spep_7+86, SE_06);

-----------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_6, 1, 1);
setMoveKey(  spep_6,    1,  100,  0,   0);
setScaleKey( spep_6,    1,  1.0, 1.0);
setMoveKey(  spep_6+1,    1,    0,   0,   128);
setScaleKey( spep_6+1,    1,  0.1, 0.1);

changeAnime( spep_6+1, 1, 107);                         -- 手前ダメージ
entryEffect( spep_6+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_6+9, SE_10);

setMoveKey(  spep_6+9,   1,    0,   0,   128);
setMoveKey(  spep_6+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_6+17, 1, 0);  -- ダメージ振動等--486
setShake( spep_6+8,6,15);
setShake(spep_6+14,15,10);

setRotateKey( spep_6+1,  1,  30 );
setRotateKey( spep_6+3,  1,  80 );
setRotateKey( spep_6+5,  1, 120 );
setRotateKey( spep_6+7,  1, 160 );
setRotateKey( spep_6+9,  1, 200 );
setRotateKey( spep_6+11,  1, 260 );
setRotateKey( spep_6+13,  1, 320 );
setRotateKey( spep_6+15,  1,   0 );

setShakeChara( spep_6+16, 1, 5,  10);
setShakeChara( spep_6+21, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_6+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_6+16, ct, 30, 10);
setEffRotateKey( spep_6+16, ct, -40);
setEffScaleKey( spep_6+16, ct, 4.0, 4.0);
setEffScaleKey( spep_6+17, ct, 2.0, 2.0);
setEffScaleKey( spep_6+18, ct, 2.6, 2.6);
setEffScaleKey( spep_6+19, ct, 4.0, 4.0);
setEffScaleKey( spep_6+20, ct, 2.6, 2.6);
setEffScaleKey( spep_6+21, ct, 3.8, 3.8);
setEffScaleKey( spep_6+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_6+16, ct, 255);
setEffAlphaKey( spep_6+106, ct, 255);
setEffAlphaKey( spep_6+116, ct, 0);

playSe( spep_6+15, SE_11);
shuchusen = entryEffectLife( spep_6+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_6+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_6+16);

entryFade( spep_6+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_6+111);

end
