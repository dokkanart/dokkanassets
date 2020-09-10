

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 150842;--ef_001
SP_02 = 150843;--ef_002
SP_03 = 150844;--ef_003
SP_04 = 150845;--ef_004
SP_05 = 150846;--ef_005


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
SE_13 = 1042; --!?

SE_205 = 205;
SE_208 = 208;


multi_frm = 2;
                   

------------------------------------------------------
------------------------------------------------------
setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey( 0, 0,    0, 0,   0);
setMoveKey( 1, 0,    0, 0,   0);
setMoveKey( 2, 0,    0, 0,   0);
setMoveKey( 3, 0,    0, 0,   0);
setMoveKey( 0, 1,    0, 0,   0);
setMoveKey( 1, 1,    0, 0,   0);
setMoveKey( 2, 1,    0, 0,   0);
setMoveKey( 3, 1,    0, 0,   0);

setScaleKey(   0-1,   0, 1.3, 1.3);
setScaleKey(   0,   0, 1.3, 1.3);
setScaleKey(   1,   0, 1.3, 1.3);
setScaleKey(   2,   0, 1.3, 1.3);
setScaleKey(   70,   0, 1.3, 1.3);


setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!


--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

kouka2=entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 30, kouka2, 0, 0, 0);
setEffScaleKey( 30, kouka2, 1.0, 1.0);
setEffAlphaKey( 30, kouka2, 255);
setEffRotateKey( 30, kouka2, 0);

kouka1=entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 30, kouka1, 0, 0, 0);
setEffScaleKey( 30, kouka1, 1.0, 1.0);
setEffAlphaKey( 30, kouka1, 255);
setEffRotateKey( 30, kouka1, 0);

--entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.3, 1.3);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

-- ** ホワイトフェード ** --
entryFade( 60, 3, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setDisp( 69, 0, 0);
--playSe( 73, SE_03);

-- ** オーラエフェクト ** --
ef = entryEffect( 70, SP_01, 0x100, -1, 0, 0, 0); --
setEffMoveKey( 70, ef, 0, 0, 0);
setEffScaleKey( 70, ef, 1.0, 1.0);
setEffAlphaKey( 70, ef, 255);
setEffRotateKey( 70, ef, 0);
setEffShake(70, ef, 100, 15);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 70, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x100,      0,  300,  0,  0);   -- 手のカメハメ波部
--kame_hand = entryEffect( 70, SP_01, 0x100,      0,  400,  150,  0);   -- 手のカメハメ波部
--kame_hand = entryEffect( 70, SP_01, 0x100,      0,  300,  120,  200);   -- 手のカメハメ波部

--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);
]]--
-- 書き文字エントリー
-- 書き文字エントリー
ctgogo = entryEffectLife( 80, 190006, 72, 0x100, -1, 0,00, 530);    -- ゴゴゴゴ
setEffScaleKey(80, ctgogo, 0.7, 0.7);
setEffRotateKey(80, ctgogo, 10);
setEffAlphaKey( 80, ctgogo, 255);

entryFade( 164, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1 = 170;

speff1 = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff1, 1, 1);
setEffReplaceTexture( speff1, 2, 0); -- カード差し替え
setEffReplaceTexture( speff1, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_1+83, 5, 9, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1, SE_05);


------------------------------------------------------
-- 槍を投げる(100f)
------------------------------------------------------

spep_2 = spep_1+95; --

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 100, 0, 10, 10, 10, 255); -- ベース暗め　背景

--entryFade( spep_2+6, 1, 1, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** オーラエフェクト ** --
ef2 = entryEffect( spep_2, SP_03, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_2, ef2, 0, 0, 0);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);
setEffAlphaKey( spep_2, ef2, 255);
setEffRotateKey( spep_2, ef2, 0);
setEffShake(spep_2, ef2, 100, 15);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2+5, 906, 100, 0x100,  -1, 0,  -100,  0);   -- 集中線
setEffScaleKey( spep_2+5, shuchusen2, 1.8, 1.8);

entryFade( spep_2+29, 1, 1, 6, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2, 920, 100, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_2, ryusen2, 0, 0, 0);
setEffScaleKey( spep_2, ryusen2, 1.7, 1.7);
setEffAlphaKey( spep_2, ryusen2, 255);
setEffRotateKey( spep_2, ryusen2, -20);

ctzuo = entryEffectLife( spep_2+29, 10012, 60, 0x100, -1, 0, 100, 300);    -- ズオッ
setEffAlphaKey( spep_2+29, ctzuo, 255);
setEffScaleKey( spep_2+29, ctzuo, 0.3, 0.3);
setEffScaleKey( spep_2+33, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_2+70, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_2+81, ctzuo, 5.0, 5.0);
setEffAlphaKey( spep_2+29, ctzuo, 255);
setEffAlphaKey( spep_2+70, ctzuo, 255);
setEffAlphaKey( spep_2+81, ctzuo, 0);
setEffShake( spep_2+33, ctzuo, 50, 20);
setEffRotateKey(spep_2+29, ctzuo, 20);


-- ** 音 ** --
playSe( spep_2+29, 1022);--102110421062
playSe( spep_2+60, 1021);


-- ** ホワイトフェード ** --
entryFade( spep_2+94, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 陣(120F)
------------------------------------------------------
spep_3 = spep_2+100; --
setDisp( spep_3, 0, 0);
setDisp( spep_3, 1, 1);

changeAnime( spep_3, 1, 104); -- 立ち
setMoveKey(  spep_3,    1,  650,  300,   0);
setMoveKey(  spep_3+10,    1,  150,  80,   0);
setMoveKey(  spep_3+40,    1,  150,  80,   0);
setScaleKey( spep_3,    1,  2.5, 2.5);
setScaleKey( spep_3+10,    1,  1.8, 1.8);
setScaleKey( spep_3+40,    1,  1.8, 1.8);
setRotateKey(spep_3, 1, -10);
setRotateKey(spep_3+35, 1, -10);
setRotateKey(spep_3+36, 1, -20);
setRotateKey(spep_3+37, 1, -10);
setRotateKey(spep_3+73, 1, -10);

changeAnime( spep_3+35, 1, 108); -- 立ち
setMoveKey(  spep_3+63,    1,  600,  300,   0);
setScaleKey( spep_3+73,    1,  0.8, 0.8);
setShakeChara( spep_3+10, 1, 70, 10);
setDisp( spep_3+63, 1, 0);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 80, 0, 10, 10, 10,180); -- ベース暗め　背景

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3, 921, 80, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffRotateKey( spep_3, ryusen3, -20);

-- ** オーラエフェクト ** --
ef3 = entryEffect( spep_3, SP_05, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_3, ef3, 0, 0, 0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffAlphaKey( spep_3, ef3, 255);
setEffRotateKey( spep_3, ef3, 0);

-- 書き文字エントリー
ct3 = entryEffectLife( spep_3, 10014, 80, 0, -1, 0, -100, 355); -- ズドドッ
setEffShake(spep_3, ct3, 80, 20);
setEffScaleKey( spep_3, ct3, 2.4, 2.4);
setEffRotateKey(spep_3, ct3, 20);
setEffAlphaKey(spep_3, ct3, 255);



-- ** 音 ** --
playSe( spep_3+35, 1025);


entryFade( spep_3+70, 5,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 345; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  SP_dodge-1,    0,  0,  0,   0);
setMoveKey(  SP_dodge,    0,  1000,  0,   0);
setScaleKey(   SP_dodge-2,   0, 1.3, 1.3);
setScaleKey(   SP_dodge-1,   0, 1.3, 1.3);
setScaleKey(   SP_dodge,   0, 1.3, 1.3);
setScaleKey(   SP_dodge+5,   0, 1.3, 1.3);

endPhase(SP_dodge+10);

do return end
else end




------------------------------------------------------
-- バリン(553F開始)
------------------------------------------------------
spep_7 = spep_3+75; --

-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);

setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

else

------------------------------------------------------
-- 敵
------------------------------------------------------
setVisibleUI(0, 0);

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey( 0, 0,    0, 0,   0);
setMoveKey( 1, 0,    0, 0,   0);
setMoveKey( 2, 0,    0, 0,   0);
setMoveKey( 3, 0,    0, 0,   0);
setMoveKey( 0, 1,    0, 0,   0);
setMoveKey( 1, 1,    0, 0,   0);
setMoveKey( 2, 1,    0, 0,   0);
setMoveKey( 3, 1,    0, 0,   0);

setScaleKey(   0,   0, 1.3, 1.3);
setScaleKey(   70,   0, 1.3, 1.3);

setRotateKey( 0,  1,  0 );
setRotateKey( 1,  1,  0 );

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!


--entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
--entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

kouka2=entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
setEffMoveKey( 30, kouka2, 0, 0, 0);
setEffScaleKey( 30, kouka2, 1.0, 1.0);
setEffAlphaKey( 30, kouka2, 255);
setEffRotateKey( 30, kouka2, 0);

kouka1=entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffMoveKey( 30, kouka1, 0, 0, 0);
setEffScaleKey( 30, kouka1, 1.0, 1.0);
setEffAlphaKey( 30, kouka1, 255);
setEffRotateKey( 30, kouka1, 0);

--entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.3, 1.3);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
--playSe( 30, SE_02);

-- ** ホワイトフェード ** --
entryFade( 60, 3, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

setDisp( 69, 0, 0);
--playSe( 73, SE_03);

-- ** オーラエフェクト ** --
ef = entryEffect( 70, SP_02, 0x100, -1, 0, 0, 0); --
setEffMoveKey( 70, ef, 0, 0, 0);
setEffScaleKey( 70, ef, 1.0, 1.0);
setEffAlphaKey( 70, ef, 255);
setEffRotateKey( 70, ef, 0);
setEffShake(70, ef, 100, 15);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  70,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  70,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]--
playSe( 70, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x100,      0,  300,  0,  0);   -- 手のカメハメ波部
--kame_hand = entryEffect( 70, SP_01, 0x100,      0,  400,  150,  0);   -- 手のカメハメ波部
--kame_hand = entryEffect( 70, SP_01, 0x100,      0,  300,  120,  200);   -- 手のカメハメ波部

--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);
]]--
-- 書き文字エントリー
-- 書き文字エントリー
ctgogo = entryEffectLife( 80, 190006, 72, 0x100, -1, 0,00, 490);    -- ゴゴゴゴ
setEffScaleKey(80, ctgogo, -0.7, 0.7);
setEffRotateKey(80, ctgogo, 10);
setEffAlphaKey( 80, ctgogo, 255);

entryFade( 164, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1 = 170;

speff1 = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff1, 1, 1);
setEffReplaceTexture( speff1, 2, 0); -- カード差し替え
setEffReplaceTexture( speff1, 5, 4); -- 技名テクスチャ差し替え

-- ** 集中線 ** --
entryEffectLife( spep_1, 906, 90, 0x100, -1, 0, 0, 0); -- 集中線3

-- ** ホワイトフェード ** --
entryFade( spep_1+83, 5, 9, 3, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-- ** 音 ** --
playSe( spep_1, SE_05);


------------------------------------------------------
-- 槍を投げる(100f)
------------------------------------------------------

spep_2 = spep_1+95; --

-- ** 背景 ** --
entryFadeBg( spep_2, 0, 100, 0, 10, 10, 10, 255); -- ベース暗め　背景

--entryFade( spep_2+6, 1, 1, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** オーラエフェクト ** --
ef2 = entryEffect( spep_2, SP_04, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_2, ef2, 0, 0, 0);
setEffScaleKey( spep_2, ef2, 1.0, 1.0);
setEffAlphaKey( spep_2, ef2, 255);
setEffRotateKey( spep_2, ef2, 0);
setEffShake(spep_2, ef2, 100, 15);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2+5, 906, 100, 0x100,  -1, 0,  -100,  0);   -- 集中線
setEffScaleKey( spep_2+5, shuchusen2, 1.8, 1.8);

entryFade( spep_2+29, 1, 1, 6, fcolor_r, fcolor_g, fcolor_b, 210);     -- white fade

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2, 920, 100, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_2, ryusen2, 0, 0, 0);
setEffScaleKey( spep_2, ryusen2, 1.7, 1.7);
setEffAlphaKey( spep_2, ryusen2, 255);
setEffRotateKey( spep_2, ryusen2, -20);

ctzuo = entryEffectLife( spep_2+29, 10012, 60, 0x100, -1, 0, 100, 300);    -- ズオッ
setEffAlphaKey( spep_2+29, ctzuo, 255);
setEffScaleKey( spep_2+29, ctzuo, 0.3, 0.3);
setEffScaleKey( spep_2+33, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_2+70, ctzuo, 2.0, 2.0);
setEffScaleKey( spep_2+81, ctzuo, 5.0, 5.0);
setEffAlphaKey( spep_2+29, ctzuo, 255);
setEffAlphaKey( spep_2+70, ctzuo, 255);
setEffAlphaKey( spep_2+81, ctzuo, 0);
setEffShake( spep_2+33, ctzuo, 50, 20);
setEffRotateKey(spep_2+29, ctzuo, 20);


-- ** 音 ** --
playSe( spep_2+29, 1022);--102110421062
playSe( spep_2+60, 1021);


-- ** ホワイトフェード ** --
entryFade( spep_2+94, 3, 4, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 陣(120F)
------------------------------------------------------
spep_3 = spep_2+100; --
setDisp( spep_3, 0, 0);
setDisp( spep_3, 1, 1);

changeAnime( spep_3, 1, 104); -- 立ち
setMoveKey(  spep_3,    1,  650,  300,   0);
setMoveKey(  spep_3+10,    1,  150,  80,   0);
setMoveKey(  spep_3+40,    1,  150,  80,   0);
setScaleKey( spep_3,    1,  2.5, 2.5);
setScaleKey( spep_3+10,    1,  1.8, 1.8);
setScaleKey( spep_3+40,    1,  1.8, 1.8);
setRotateKey(spep_3, 1, -10);
setRotateKey(spep_3+35, 1, -10);
setRotateKey(spep_3+36, 1, -20);
setRotateKey(spep_3+37, 1, -10);
setRotateKey(spep_3+73, 1, -10);

changeAnime( spep_3+35, 1, 108); -- 立ち
setMoveKey(  spep_3+63,    1,  600,  300,   0);
setScaleKey( spep_3+73,    1,  0.8, 0.8);
setShakeChara( spep_3+10, 1, 70, 10);
setDisp( spep_3+63, 1, 0);

-- ** 背景 ** --
entryFadeBg( spep_3, 0, 80, 0, 10, 10, 10,180); -- ベース暗め　背景

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3, 921, 80, 0x80, -1, 0, -50, 0); -- 流線
setEffMoveKey( spep_3, ryusen3, 0, 0, 0);
setEffScaleKey( spep_3, ryusen3, 1.6, 1.6);
setEffAlphaKey( spep_3, ryusen3, 255);
setEffRotateKey( spep_3, ryusen3, -20);

-- ** オーラエフェクト ** --
ef3 = entryEffect( spep_3, SP_05, 0x100, -1, 0, 0, 0); --
setEffMoveKey( spep_3, ef3, 0, 0, 0);
setEffScaleKey( spep_3, ef3, 1.0, 1.0);
setEffAlphaKey( spep_3, ef3, 255);
setEffRotateKey( spep_3, ef3, 0);

-- 書き文字エントリー
ct3 = entryEffectLife( spep_3, 10014, 80, 0, -1, 0, -100, 355); -- ズドドッ
setEffShake(spep_3, ct3, 80, 20);
setEffScaleKey( spep_3, ct3, 2.4, 2.4);
setEffRotateKey(spep_3, ct3, -20);
setEffAlphaKey(spep_3, ct3, 255);



-- ** 音 ** --
playSe( spep_3+35, 1025);


entryFade( spep_3+70, 5,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 345; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade(SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  SP_dodge-1,    0,  0,  0,   0);
setMoveKey(  SP_dodge,    0,  1000,  0,   0);
setScaleKey(   SP_dodge-2,   0, 1.3, 1.3);
setScaleKey(   SP_dodge-1,   0, 1.3, 1.3);
setScaleKey(   SP_dodge,   0, 1.3, 1.3);
setScaleKey(   SP_dodge+5,   0, 1.3, 1.3);

endPhase(SP_dodge+10);

do return end
else end




------------------------------------------------------
-- バリン(553F開始)
------------------------------------------------------
spep_7 = spep_3+75; --

-- ** 敵キャラの動き ** --
setDisp( spep_7-1, 1, 1);

setMoveKey(  spep_7-1, 1, 350, -300, 0);
setScaleKey( spep_7-1, 1, 0.5, 0.5);
setRotateKey( spep_7-1, 1, 60);
setMoveKey(  spep_7, 1, 0, 0, 128);
setScaleKey( spep_7, 1, 0.1, 0.1);
changeAnime( spep_7, 1, 107);                         -- 手前ダメージ
entryEffect( spep_7+8, 1509, 0x80, -1, 0, 0, 0);   -- 爆発
playSe( spep_7+8, SE_10);

setMoveKey( spep_7+8, 1, 0, 0, 128); --478
setMoveKey( spep_7+15, 1, -60, -200, -100);
setDamage( spep_7+16, 1, 0);  -- ダメージ振動等
setShake( spep_7+7, 6, 15);
setShake( spep_7+13, 15, 10);

setRotateKey( spep_7, 1, 30 );
setRotateKey( spep_7+2, 1, 80 );
setRotateKey( spep_7+4, 1, 120 );
setRotateKey( spep_7+6, 1, 160 );
setRotateKey( spep_7+8, 1, 200 );
setRotateKey( spep_7+10, 1, 260 );
setRotateKey( spep_7+12, 1, 320 );
setRotateKey( spep_7+14, 1, 0 );

setShakeChara( spep_7+15, 1, 5,  10);
setShakeChara( spep_7+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_7+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_7+15, ct, 30, 10);
setEffRotateKey( spep_7+15, ct, -40);
setEffScaleKey( spep_7+15, ct, 4.0, 4.0);
setEffScaleKey( spep_7+16, ct, 2.0, 2.0);
setEffScaleKey( spep_7+17, ct, 2.6, 2.6);
setEffScaleKey( spep_7+18, ct, 4.0, 4.0);
setEffScaleKey( spep_7+19, ct, 2.6, 2.6);
setEffScaleKey( spep_7+20, ct, 3.8, 3.8);
setEffScaleKey( spep_7+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_7+15, ct, 255);
setEffAlphaKey( spep_7+105, ct, 255);
setEffAlphaKey( spep_7+115, ct, 0);

playSe( spep_7+3, SE_11);
shuchusen = entryEffectLife( spep_7+3, 906, 120, 0x00, -1, 0, 0, 0);   -- 集中線
entryEffect( spep_7+3, 1600, 0x00, -1, 0, 30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( spep_7+16);
entryFade( spep_7+100, 9, 10, 1, 8, 8, 8, 255); -- black fade
endPhase( spep_7+110);

end
