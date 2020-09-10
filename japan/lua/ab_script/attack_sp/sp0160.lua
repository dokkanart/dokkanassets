

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = 247;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 09; --発射
SE_07 = 08; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1006; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;
SE_13 = 1030;

parX = 27;

SP_01 = 106000; --３つの斬撃を発車
SP_02 = 106001; --３つの斬撃が敵に飛んでいく
SP_03 = 106002; --下からの斬り上げ。大きいたての斬撃


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, 0,   0);
setMoveKey(   1,   0,    0, 0,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

--setQuake(30,39,15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 150, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
setEffScaleKey( 70, ct, 6.0, 6.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--entryFadeBg( 40, 30, 109, 10, 0, 0, 0, 255);       -- ベース暗め　背景

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  70,   311, 99, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura1, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);

setMoveKey(   255,   0,    0, 0,   0);

spep_2 = 260;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 0.6, 0.6);
changeAnime( spep_2, 0, 31);      -- かめはめ発射ポーズ

kamehame_beam = entryEffect( spep_2+73, SP_01, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_2+73, 1015);
playSe( spep_2+93, 1015);
playSe( spep_2+113, 1015);

--setMoveKey(  spep_2-2,  0, -900, 0,   0);
--setMoveKey(  spep_2+70,    0,   -900,  0,   0);

setShake(spep_2, 90, 20);
setShake(spep_2+91, 66, 7);

--setMoveKey(  spep_2+100,    0,   -150,  0,   0);

setMoveKey(  spep_2-2,    0,   900,  0,   0);
setMoveKey(  spep_2,    0,   550,  0,   0);
setMoveKey(  spep_2+10,    0,   50,  0,   0);
setMoveKey(  spep_2+40,    0,   0,  0,   0);
setMoveKey(  spep_2+60,    0,   -900,  0,   0);


playSe( spep_2, 1018);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 155, 0, 10, 10, 10, 190);       -- ベース暗め　背景

entryEffectLife( spep_2, 920, 155, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_2-1, 0, 156, 15);

--shuchusen = entryEffectLife( spep_2+103, 906, 28, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_2+103, shuchusen, 1.0, 1.0);
--setEffScaleKey( spep_2+155, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+70, 10009, 95, 0, -1, 0, 150, 300); -- ザザザンッ
setEffShake(spep_2+70, ct, 100, 10);
setEffAlphaKey(spep_2+70, ct, 255);
setEffAlphaKey(spep_2+80, ct, 255);
setEffAlphaKey(spep_2+95, ct, 0);
setEffScaleKey(spep_2+70, ct, 0.0, 0.0);
setEffScaleKey(spep_2+75, ct, 2.0, 2.0);
setEffScaleKey(spep_2+80, ct, 2.0, 2.0);
setEffScaleKey(spep_2+95, ct, 6.0, 6.0);

playSe( spep_2, SE_13);

setScaleKey( spep_2+155,   0, 0.6, 0.6);

entryFade( spep_2+150, 3, 7, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 370

setDisp( spep_2+155, 0, 0);
setDisp( spep_2+155, 1, 1);

spep_3 = spep_2+157; --370起点 --417

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

changeAnime( spep_3, 1, 100);                        -- ガード
setScaleKey( spep_3-1,   1, 1.5, 1.5);
setMoveKey(  spep_3-1,    1,  650,  0,   0);

setMoveKey(  spep_3+50,    1,   50,  0,   0); --467

--playSe( spep_3+20, 1043);

kamehame_beam2 = entryEffect( spep_3+50, SP_02, 0, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(spep_3+50, kamehame_beam2, 1, 1);
--setEffScaleKey(452-parX, kamehame_beam2, 1, 1);
--setEffScaleKey(454-parX, kamehame_beam2, 2.5, 2.5);
setDamage( spep_3+40, 1, 0);  -- ダメージ振動等

changeAnime( spep_3+55, 1, 106);  
setShakeChara( spep_3+55, 1, 7, 10);
zangeki1=entryEffect( spep_3+55, 7, 0x100, 1,  300,  -70,  50);
setEffScaleKey( spep_3+55, zangeki1, 1.5, 1.5);
setEffRotateKey(spep_3+55, zangeki1, 50);
entryFade( spep_3+55, 0, 6, 0, 255, 0, 0, 50);     -- red fade
setMoveKey(  spep_3+55,    1,   50,  0,   0);
playSe( spep_3+55, 1032);

changeAnime( spep_3+75, 1, 106);  
setShakeChara( spep_3+75, 1, 8, 6);
zangeki2=entryEffect( spep_3+75, 7, 0x100, 1,  300,  100,  -70);
setEffScaleKey( spep_3+75, zangeki2, 1.0, 1.0);
setEffRotateKey(spep_3+75, zangeki2, 120);
entryFade( spep_3+75, 0, 6, 0, 255, 0, 0, 50);     -- red fade
setMoveKey(  spep_3+75,   1,   90,  0,   -10);
playSe( spep_3+75, 1031);


changeAnime( spep_3+95, 1, 108);  
setShakeChara( spep_3+95, 1, 10, 15);
zangeki3=entryEffect( spep_3+95, 7, 0x100, 1,  300,  -30,  0);
setEffScaleKey( spep_3+95, zangeki3, 2.0, 2.0);
setEffRotateKey(spep_3+95, zangeki3, 90);
entryFade( spep_3+95, 0, 6, 0, 255, 0, 0, 50);     -- red fade
setMoveKey(  spep_3+95,   1,   170,  10,   -30);
playSe( spep_3+95, 1032);

setShakeChara( spep_3+105, 1, 40, 7);

setShake(spep_3, 105, 10);
setShake(spep_3+106, 89, 20);

setMoveKey(  spep_3+145,  1, 50,  0,   0);

setDisp( spep_3+150, 1, 0);


kamehame_beam3 = entryEffect( spep_3+145, SP_03, 0, -1,  0,  0,  0);   -- 下からの斬り上げ。
setEffScaleKey(spep_3+145, kamehame_beam3, 0.4, 1.0);
setEffScaleKey(spep_3+180, kamehame_beam3, 1.0, 1.0);
setEffScaleKey(spep_3+195, kamehame_beam3, 2.0, 2.0);

playSe( spep_3+152, 1024);

--playSe( spep_3, SE_09);


-- ** エフェクト等 ** --
setShakeChara( spep_3, 1, 40, 20);

entryFadeBg( spep_3, 0, 195, 0, 10, 10, 10, 190);          -- ベース暗め　背景

entryEffectLife( spep_3, 920, 146, 0x80,  -1,  0,  0,  0); -- 横流線
tatesen=entryEffectLife( spep_3+147, 920, 88, 0x80,  -1,  0,  0,  0); -- 横流線
setEffRotateKey(spep_3+147, tatesen, 90);

-- 書き文字エントリー
--ct = entryEffectLife( spep_3+50, 10015, 130, 0, -1, 0, 100, 255); -- ズバババッ
--setEffShake(spep_3+50, ct, 40, 20);
--setEffScaleKey( spep_3+50, ct, 2.0, 2.0);
--setEffRotateKey(spep_3+50, ct, 10);
--setEffAlphaKey(spep_3+50, ct, 255);
--setEffAlphaKey(spep_3+110, ct, 255);
--setEffAlphaKey(spep_3+130, ct, 0);

--ct = entryEffectLife( spep_3+80, 10008, 40, 0, -1, 0, 250, 355); -- ゴゴゴゴ・・・
--setEffShake(spep_3+80, ct, 40, 20);
--setEffScaleKey( spep_3+80, ct, 2.4, 2.4);
--setEffRotateKey(spep_3, ct, 10);
--setEffAlphaKey(spep_3+80, ct, 255);
--setEffAlphaKey(spep_3+90, ct, 255);
--setEffAlphaKey(spep_3+120, ct, 0);

ct = entryEffectLife( spep_3+145, 10012, 50, 0, -1, 0, -100, 155); -- ズオッ
setEffShake(spep_3+145, ct, 40, 20);
setEffScaleKey( spep_3+145, ct, 2.6, 2.6);
setEffScaleKey( spep_3+155, ct, 2.6, 2.6);
setEffScaleKey( spep_3+170, ct, 6, 6);
setEffRotateKey(spep_3+145, ct, 10);
setEffAlphaKey(spep_3+145, ct, 255);
setEffAlphaKey(spep_3+155, ct, 255);
setEffAlphaKey(spep_3+170, ct, 0);


entryFade( spep_3+190, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  spep_3+197,    1,   0,  0,   0);

setScaleKey( spep_3+197,  1, 1.5, 1.5);

removeAllEffect(spep_3+197);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 427; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(  SP_dodge+6,    1,  650,  0,   0);
setMoveKey(  SP_dodge+8,    1,  1100,  0,   0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

spep_4 = spep_3+200;

------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_4+110);

else


--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

--setQuake(30,39,15);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 50, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
setEffScaleKey( 70, ct, 6.0, 6.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

--entryFadeBg( 40, 30, 109, 10, 0, 0, 0, 255);       -- ベース暗め　背景

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)

--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  70,   311, 99, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura1, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);

setMoveKey(   255,   0,    0, 0,   0);

spep_2 = 260;

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setScaleKey( spep_2-1,   0, 0.6, 0.6);
changeAnime( spep_2, 0, 31);      -- かめはめ発射ポーズ

kamehame_beam = entryEffect( spep_2+73, SP_01, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( spep_2+73, 1015);
playSe( spep_2+93, 1015);
playSe( spep_2+113, 1015);

--setMoveKey(  spep_2-2,  0, -900, 0,   0);
--setMoveKey(  spep_2+70,    0,   -900,  0,   0);

setShake(spep_2, 90, 20);
setShake(spep_2+91, 66, 7);

--setMoveKey(  spep_2+100,    0,   -150,  0,   0);

setMoveKey(  spep_2-2,    0,   900,  0,   0);
setMoveKey(  spep_2,    0,   550,  0,   0);
setMoveKey(  spep_2+10,    0,   50,  0,   0);
setMoveKey(  spep_2+40,    0,   0,  0,   0);
setMoveKey(  spep_2+60,    0,   -900,  0,   0);


playSe( spep_2, 1018);

--spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 155, 0, 10, 10, 10, 190);       -- ベース暗め　背景

entryEffectLife( spep_2, 920, 155, 0x80,  -1,  0,  0,  0); -- 流線

setShakeChara( spep_2-1, 0, 156, 15);

--shuchusen = entryEffectLife( spep_2+103, 906, 28, 0x00,  -1, 0,  0,  0);   -- 集中線
--setEffScaleKey( spep_2+103, shuchusen, 1.0, 1.0);
--setEffScaleKey( spep_2+155, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_2+70, 10009, 95, 0, -1, 0, 100, 300); -- ザザザンッ
setEffShake(spep_2+70, ct, 100, 10);
setEffAlphaKey(spep_2+70, ct, 255);
setEffAlphaKey(spep_2+80, ct, 255);
setEffAlphaKey(spep_2+95, ct, 0);
setEffScaleKey(spep_2+70, ct, 0.0, 0.0);
setEffScaleKey(spep_2+75, ct, 2.0, 2.0);
setEffScaleKey(spep_2+80, ct, 2.0, 2.0);
setEffScaleKey(spep_2+95, ct, 6.0, 6.0);

playSe( spep_2, SE_13);

setScaleKey( spep_2+155,   0, 0.6, 0.6);

entryFade( spep_2+150, 3, 7, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 370

setDisp( spep_2+155, 0, 0);
setDisp( spep_2+155, 1, 1);

spep_3 = spep_2+157; --370起点

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------

changeAnime( spep_3, 1, 100);                        -- ガード
setScaleKey( spep_3-1,   1, 1.5, 1.5);
setMoveKey(  spep_3-1,    1,  650,  0,   0);

setMoveKey(  spep_3+50,    1,   50,  0,   0);

--playSe( spep_3+20, 1043);

kamehame_beam2 = entryEffect( spep_3+50, SP_02, 0, -1,  0,  0,  0);   -- 迫るかめはめ波
--setEffScaleKey(spep_3+50, kamehame_beam2, 1, 1);
--setEffScaleKey(452-parX, kamehame_beam2, 1, 1);
--setEffScaleKey(454-parX, kamehame_beam2, 2.5, 2.5);
setDamage( spep_3+40, 1, 0);  -- ダメージ振動等

changeAnime( spep_3+55, 1, 106);  
setShakeChara( spep_3+55, 1, 7, 10);
zangeki1=entryEffect( spep_3+55, 7, 0x100, 1,  300,  -70,  50);
setEffScaleKey( spep_3+55, zangeki1, 1.5, 1.5);
setEffRotateKey(spep_3+55, zangeki1, 50);
entryFade( spep_3+55, 0, 6, 0, 255, 0, 0, 50);     -- red fade
setMoveKey(  spep_3+55,    1,   50,  0,   0);
playSe( spep_3+55, 1032);

changeAnime( spep_3+75, 1, 106);  
setShakeChara( spep_3+75, 1, 8, 6);
zangeki2=entryEffect( spep_3+75, 7, 0x100, 1,  300,  100,  -70);
setEffScaleKey( spep_3+75, zangeki2, 1.0, 1.0);
setEffRotateKey(spep_3+75, zangeki2, 120);
entryFade( spep_3+75, 0, 6, 0, 255, 0, 0, 50);     -- red fade
setMoveKey(  spep_3+75,   1,   90,  0,   -10);
playSe( spep_3+75, 1031);


changeAnime( spep_3+95, 1, 108);  
setShakeChara( spep_3+95, 1, 10, 15);
zangeki3=entryEffect( spep_3+95, 7, 0x100, 1,  300,  -30,  0);
setEffScaleKey( spep_3+95, zangeki3, 2.0, 2.0);
setEffRotateKey(spep_3+95, zangeki3, 90);
entryFade( spep_3+95, 0, 6, 0, 255, 0, 0, 50);     -- red fade
setMoveKey(  spep_3+95,   1,   170,  10,   -30);
playSe( spep_3+95, 1032);

setShakeChara( spep_3+105, 1, 40, 7);

setShake(spep_3, 105, 10);
setShake(spep_3+106, 89, 20);

setMoveKey(  spep_3+145,  1, 50,  0,   0);

setDisp( spep_3+150, 1, 0);


kamehame_beam3 = entryEffect( spep_3+145, SP_03, 0, -1,  0,  0,  0);   -- 下からの斬り上げ。
setEffScaleKey(spep_3+145, kamehame_beam3, 0.4, 1.0);
setEffScaleKey(spep_3+180, kamehame_beam3, 1.0, 1.0);
setEffScaleKey(spep_3+195, kamehame_beam3, 2.0, 2.0);

playSe( spep_3+152, 1024);

--playSe( spep_3, SE_09);

-- ** エフェクト等 ** --
setShakeChara( spep_3, 1, 40, 20);

entryFadeBg( spep_3, 0, 195, 0, 10, 10, 10, 190);          -- ベース暗め　背景

entryEffectLife( spep_3, 920, 146, 0x80,  -1,  0,  0,  0); -- 横流線
tatesen=entryEffectLife( spep_3+147, 920, 88, 0x80,  -1,  0,  0,  0); -- 横流線
setEffRotateKey(spep_3+147, tatesen, 90);

-- 書き文字エントリー
--ct = entryEffectLife( spep_3+50, 10015, 130, 0, -1, 0, 100, 255); -- ズバババッ
--setEffShake(spep_3+50, ct, 40, 20);
--setEffScaleKey( spep_3+50, ct, 2.0, 2.0);
--setEffRotateKey(spep_3+50, ct, 10);
--setEffAlphaKey(spep_3+50, ct, 255);
--setEffAlphaKey(spep_3+110, ct, 255);
--setEffAlphaKey(spep_3+130, ct, 0);

--ct = entryEffectLife( spep_3+80, 10008, 40, 0, -1, 0, 250, 355); -- ゴゴゴゴ・・・
--setEffShake(spep_3+80, ct, 40, 20);
--setEffScaleKey( spep_3+80, ct, 2.4, 2.4);
--setEffRotateKey(spep_3, ct, 10);
--setEffAlphaKey(spep_3+80, ct, 255);
--setEffAlphaKey(spep_3+90, ct, 255);
--setEffAlphaKey(spep_3+120, ct, 0);

ct = entryEffectLife( spep_3+145, 10012, 50, 0, -1, 0, -100, 155); -- ズオッ
setEffShake(spep_3+145, ct, 40, 20);
setEffScaleKey( spep_3+145, ct, 2.6, 2.6);
setEffScaleKey( spep_3+155, ct, 2.6, 2.6);
setEffScaleKey( spep_3+170, ct, 6, 6);
setEffRotateKey(spep_3+145, ct, 10);
setEffAlphaKey(spep_3+145, ct, 255);
setEffAlphaKey(spep_3+155, ct, 255);
setEffAlphaKey(spep_3+170, ct, 0);


entryFade( spep_3+190, 6,  10, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  spep_3+197,    1,   0,  0,   0);

setScaleKey( spep_3+197,  1, 1.5, 1.5);

removeAllEffect(spep_3+197);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 427; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

setMoveKey(  SP_dodge+6,    1,  650,  0,   0);
setMoveKey(  SP_dodge+8,    1,  1100,  0,   0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

spep_4 = spep_3+200;

------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
setDisp( spep_4-1, 1, 1);
setMoveKey(  spep_4-1,    1,  100,  0,   0);
setScaleKey( spep_4-1,    1,  1.0, 1.0);
setMoveKey(  spep_4,    1,    0,   0,   128);
setScaleKey( spep_4,    1,  0.1, 0.1);

changeAnime( spep_4, 1, 107);                         -- 手前ダメージ
entryEffect( spep_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_4+8, SE_10);

setMoveKey(  spep_4+8,   1,    0,   0,   128);
setMoveKey(  spep_4+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_4+16,   1,  -60,  -200,  -100);
setDamage( spep_4+16, 1, 0);  -- ダメージ振動等
setShake(spep_4+7,6,15);
setShake(spep_4+13,15,10);

setRotateKey( spep_4,  1,  30 );
setRotateKey( spep_4+2,  1,  80 );
setRotateKey( spep_4+4,  1, 120 );
setRotateKey( spep_4+6,  1, 160 );
setRotateKey( spep_4+8,  1, 200 );
setRotateKey( spep_4+10,  1, 260 );
setRotateKey( spep_4+12,  1, 320 );
setRotateKey( spep_4+14,  1,   0 );

setShakeChara( spep_4+15, 1, 5,  10);
setShakeChara( spep_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_4+15, ct, 30, 10);
setEffRotateKey( spep_4+15, ct, -40);
setEffScaleKey( spep_4+15, ct, 4.0, 4.0);
setEffScaleKey( spep_4+16, ct, 2.0, 2.0);
setEffScaleKey( spep_4+17, ct, 2.6, 2.6);
setEffScaleKey( spep_4+18, ct, 4.0, 4.0);
setEffScaleKey( spep_4+19, ct, 2.6, 2.6);
setEffScaleKey( spep_4+20, ct, 3.8, 3.8);
setEffScaleKey( spep_4+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_4+15, ct, 255);
setEffAlphaKey( spep_4+105, ct, 255);
setEffAlphaKey( spep_4+115, ct, 0);

playSe( spep_4+3, SE_11);
shuchusen = entryEffectLife( spep_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_4+16);

entryFade( spep_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_4+110);

end

