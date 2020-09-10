

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

SP_01 = 100159;
SP_02 = 100160;
SP_03 = 100161;
SP_04 = 1551;


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   4,   0,    0, -54,   0);

setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);
setMoveKey(   4,   1,    0, -54,   0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);
setScaleKey(   2,   0, 1.5, 1.5);
setScaleKey(   3,   0, 1.5, 1.5);
setScaleKey(   4,   0, 1.5, 1.5);

setScaleKey(   0,   1, 1.5, 1.5);
setScaleKey(   1,   1, 1.5, 1.5);
setScaleKey(   2,   1, 1.5, 1.5);
setScaleKey(   3,   1, 1.5, 1.5);
setScaleKey(   4,   1, 1.5, 1.5);

setVisibleUI(0, 0);
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
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -30); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

entryEffect(  61,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  61,   1500,   0,    -1,  0,  0,  0);    -- eff_001

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  80,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  80,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ctgogo = entryEffectLife( 80 + 12, 190006, 72, 0x100, -1, 0, 120, 520);    --ゴゴゴゴ

setEffMoveKey( 80 + 12, ctgogo, 120, 520, 0 );
setEffMoveKey( 80 + 84, ctgogo, 120, 520, 0 );

setEffAlphaKey( 80 + 12, ctgogo, 0 );
setEffAlphaKey( 80 + 13, ctgogo, 255 );
setEffAlphaKey( 80 + 14, ctgogo, 255 );
setEffAlphaKey( 80 + 76, ctgogo, 255 );
setEffAlphaKey( 80 + 78, ctgogo, 255 );
setEffAlphaKey( 80 + 80, ctgogo, 191 );
setEffAlphaKey( 80 + 82, ctgogo, 112 );
setEffAlphaKey( 80 + 84, ctgogo, 64 );

setEffRotateKey( 80 + 12, ctgogo, 0);
setEffRotateKey( 80 + 84, ctgogo, 0);

setEffScaleKey( 80 + 12, ctgogo, 0.7, 0.7);
setEffScaleKey( 80 + 72, ctgogo, 0.7, 0.7);
setEffScaleKey( 80 + 84, ctgogo, 1.07, 1.07 );

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_x=170;

setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);


-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_x + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_x + 0, SE_05 );]]

-- ** 集中線 ** --
shuchusenx = entryEffectLife( spep_x + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_x + 0, shuchusenx, 90, 20 );

setEffMoveKey( spep_x + 0, shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_x + 90, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_x + 0, shuchusenx, 1.6, 1.6 );
setEffScaleKey( spep_x + 90, shuchusenx, 1.6, 1.6 );

setEffRotateKey( spep_x + 0, shuchusenx, 0 );
setEffRotateKey( spep_x + 90, shuchusenx, 0 );

setEffAlphaKey( spep_x + 0, shuchusenx, 255 );
setEffAlphaKey( spep_x + 90, shuchusenx, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_x, SE_05);
speff = entryEffect( spep_x, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_x, SE_05);
speff = entryEffect( spep_x, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_x, SE_05);
speff = entryEffect( spep_x, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

playSe( 170+64, SE_06);

-- ** 次の準備 ** --
entryFade( spep_x + 80, 4,12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 305, 0, 0);
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  260,    0,   -600,  0,   0);
setMoveKey(  261,    0,   -600,  0,   0);
setMoveKey(  270,    0,   -100,  0,   0);
--]]
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffect( 260, SP_02, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   -1100,  0,   0);
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -550,  0,   80);

--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(369);

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setEffScaleKey( 260, sen2, 1.25, 1.25);

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(268, ct, 32, 5);
setEffAlphaKey(268, ct, 255);
setEffAlphaKey(290, ct, 255);
setEffAlphaKey(300, ct, 0);
setEffScaleKey(268, ct, 0.0, 0.0);
setEffScaleKey(272, ct, 1.3, 1.3);
setEffScaleKey(292, ct, 1.3, 1.3);
setEffScaleKey(300, ct, 6.0, 6.0);
playSe( 300, SE_07);
entryFade( 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 370, 0, 0);
setDisp( 370, 1, 1);
changeAnime( 370, 1, 104);                        -- ガード
setMoveKey(  369,    1,  235,  0,   0);
setMoveKey(  370,    1,  235,  0,   0);
setMoveKey(  371,    1,  235,  0,   0);
setScaleKey( 369,    1,  0.7, 0.7);
setScaleKey( 370,    1,  0.7, 0.7);

setMoveKey(  400,    1,   120,  0,   0);
setScaleKey(  400,   1,   1.6,  1.6);

playSe( 390, SE_06);

kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( 455, 1, 108);
setMoveKey(  455, 1,  120,    0,  0);
setMoveKey(  469, 1,  400,    0,  0);
setScaleKey( 455, 1,  1.6, 1.6);
setScaleKey( 458, 1,  1.5, 1.5);
setScaleKey( 468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 420; --エンドフェイズのフレーム数を置き換える

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
spep_5 = 469;

setDisp( spep_5-1, 0, 0);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1, 1);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
setDisp( spep_5, 1, 1);

entryEffect( spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+8, SE_10);

setMoveKey(  spep_5+8,   1,    0,   0,   128);
setMoveKey(  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
setDamage( spep_5+16, 1, 0);  -- ダメージ振動等
setShake(spep_5+7,6,15);
setShake(spep_5+13,15,10);

setRotateKey( spep_5,  1,  30 );
setRotateKey( spep_5+2,  1,  80 );
setRotateKey( spep_5+4,  1, 120 );
setRotateKey( spep_5+6,  1, 160 );
setRotateKey( spep_5+8,  1, 200 );
setRotateKey( spep_5+10,  1, 260 );
setRotateKey( spep_5+12,  1, 320 );
setRotateKey( spep_5+14,  1,   0 );

setShakeChara( spep_5+15, 1, 5,  10);
setShakeChara( spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ct, 30, 10);
setEffRotateKey( spep_5+15, ct, -40);
setEffScaleKey( spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ct, 255);
setEffAlphaKey( spep_5+105, ct, 255);
setEffAlphaKey( spep_5+115, ct, 0);

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);


--entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+100);
else

------------------------------------------------------
-- 気溜め( tyo+40F)
------------------------------------------------------
--[[
--気を貯める
changeAnime( tyo+30, 0, 17);                       -- 溜め!
entryEffect( tyo+30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect( tyo+30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( tyo+30, SE_01);

entryFade( tyo+62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( tyo+30,   311, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
setEffScaleKey( tyo+30, aura, 1.5, 1.5);
setShakeChara( tyo+30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( tyo+30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake( tyo+30, ct, 40, 7);
setEffAlphaKey( tyo+30, ct, 255);
setEffAlphaKey( tyo+50, ct, 255);
setEffAlphaKey( tyo+70, ct, 0);
setEffScaleKey( tyo+30, ct, 0.1, 0.1);
setEffScaleKey( tyo+40, ct, 2.0, 2.0);
playSe( tyo+30, SE_02);
--]]

--気を貯める
entryEffect(5,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(5,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe(5, SE_01);

-- ** エフェクト等 ** --
aura = entryEffectLife(5,   311, 39, 0x40+0x80,  0,  1,  0,  -30); -- オーラ
setEffScaleKey(5, aura, 1.5, 1.5);
setShakeChara(5, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife(5, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(5, ct, 40, 7);
setEffAlphaKey(5, ct, 255);
setEffAlphaKey(5, ct, 255);
setEffAlphaKey(30, ct, 0);
setEffScaleKey(30, ct, 0.1, 0.1);
setEffScaleKey(15, ct, 2.0, 2.0);
playSe(5, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI( tyo+69, 0);
changeAnime(0, 0, 30);                       -- 溜め!
playSe( tyo+73, SE_03);

entryEffect( tyo+70,   1503,   0x80,  0,  0,  0,  40);   -- eff_004 ( tyo2+気)
entryEffect( tyo+70,   1502,   0,     0,  0,  0,  40);   -- eff_003 ( tyo2+気)

--speff = entryEffect(80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 ( tyo2+カットイン)
--setEffReplaceTexture(speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 ( tyo2+セリフ)
--setEffReplaceTexture(speff, 4, 5);                           -- セリフ差し替え

playSe( tyo+80, SE_04);

kame_hand = entryEffect( tyo+71, SP_01, 0x40+0x80,   0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( tyo+71, kame_hand, 0.5, 0.5);

--entryFade( tyo+165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( tyo+70,   311, 99, 0x40+0x80,  0,  1,  0,  -50); -- オーラ
setEffScaleKey( tyo+30, aura, 1.5, 1.5);
setShakeChara( tyo2+70, 0, 49, 5);

-- 書き文字エントリー --
ctgogo = entryEffectLife( tyo2+90 + 12, 190006, 72, 0x100, -1, 0, 120, 520);    --ゴゴゴゴ

setEffMoveKey( tyo2+90 + 12, ctgogo, 120, 520, 0 );
setEffMoveKey( tyo2+90 + 84, ctgogo, 120, 520, 0 );

setEffAlphaKey( tyo2+90 + 12, ctgogo, 0 );
setEffAlphaKey( tyo2+90 + 13, ctgogo, 255 );
setEffAlphaKey( tyo2+90 + 14, ctgogo, 255 );
setEffAlphaKey( tyo2+90 + 76, ctgogo, 255 );
setEffAlphaKey( tyo2+90 + 78, ctgogo, 255 );
setEffAlphaKey( tyo2+90 + 80, ctgogo, 191 );
setEffAlphaKey( tyo2+90 + 82, ctgogo, 112 );
setEffAlphaKey( tyo2+90 + 84, ctgogo, 64 );

setEffRotateKey( tyo2+90 + 12, ctgogo, 0);
setEffRotateKey( tyo2+90 + 84, ctgogo, 0);

setEffScaleKey( tyo2+90 + 12, ctgogo, -0.7, 0.7);
setEffScaleKey( tyo2+90 + 72, ctgogo, -0.7, 0.7);
setEffScaleKey( tyo2+90 + 84, ctgogo, -1.07, 1.07 );

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_x=tyo2+170;

setScaleKey(tyo2+169,   0, 1.5, 1.5);
setScaleKey(tyo2+170,   0, 1.0, 1.0);


-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_x + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 音 ** --
playSe( spep_x + 0, SE_05 );]]

-- ** 集中線 ** --
shuchusenx = entryEffectLife( spep_x + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_x + 0, shuchusenx, 90, 20 );

setEffMoveKey( spep_x + 0, shuchusenx, 0, 0 , 0 );
setEffMoveKey( spep_x + 90, shuchusenx, 0, 0 , 0 );

setEffScaleKey( spep_x + 0, shuchusenx, 1.6, 1.6 );
setEffScaleKey( spep_x + 90, shuchusenx, 1.6, 1.6 );

setEffRotateKey( spep_x + 0, shuchusenx, 0 );
setEffRotateKey( spep_x + 90, shuchusenx, 0 );

setEffAlphaKey( spep_x + 0, shuchusenx, 255 );
setEffAlphaKey( spep_x + 90, shuchusenx, 255 );

-- ** 極限用 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_x, SE_05);
speff = entryEffect( spep_x, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_x, SE_05);
speff = entryEffect( spep_x, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_x, SE_05);
speff = entryEffect( spep_x, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
playSe(tyo2+170+64, SE_06);
-- ** 次の準備 ** --
entryFade( spep_x + 80, 4,12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
------------------------------------------------------
-- カメハメハ発射(tyo2+110F)
------------------------------------------------------
changeAnime(tyo2+260, 0, 31);                                    -- かめはめ発射ポーズ
--[[
setMoveKey(tyo2+259,    0,      0,  0,   0);
setMoveKey(tyo2+260,    0,   -600,  0,   0);
setMoveKey(tyo2+261,    0,   -600,  0,   0);
setMoveKey(tyo2+270,    0,   -100,  0,   0);
--]]
setMoveKey(tyo2+259,    0,      0,  0,   0);
setMoveKey(tyo2+270,    0,      0,  0,   0);
setMoveKey(tyo2+290,    0,   -30,  0,   20);

kamehame_beam = entryEffect(tyo2+260, SP_02, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
playSe(tyo2+260, SE_07);

--spname = entryEffect(tyo2+260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(tyo2+299,    0,   -100,  0,   0);
--setMoveKey(tyo2+300,    0,   -100,  0,   0);
--setMoveKey(tyo2+308,    0,   -1100,  0,   0);
setMoveKey(tyo2+300,    0,   -150,  0,   50);
setMoveKey(tyo2+305,    0,   -500,  0,   80);
--setMoveKey(tyo2+308,    0,   -1100,  0,   0);


entryFade(tyo2+365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect(tyo2+369);

-- ** エフェクト等 ** --
entryFadeBg(tyo2+260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(tyo2+260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg(tyo2+300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(tyo2+300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife(tyo2+260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(tyo2+260, sen2, 180);
setShakeChara(tyo2+305, 0, 54, 50);

shuchusen = entryEffectLife(tyo2+260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(tyo2+260, shuchusen, 1.0, 1.0);
setEffScaleKey(tyo2+300, shuchusen, 1.0, 1.0);
setEffScaleKey(tyo2+309, shuchusen, 2.0, 2.0);

--entryFlash(tyo2+(tyo2+260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(tyo2+268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(tyo2+268, ct, 32, 5);
setEffAlphaKey(tyo2+268, ct, 255);
setEffAlphaKey(tyo2+290, ct, 255);
setEffAlphaKey(tyo2+300, ct, 0);
setEffScaleKey(tyo2+268, ct, 0.0, 0.0);
setEffScaleKey(tyo2+272, ct, 1.3, 1.3);
setEffScaleKey(tyo2+292, ct, 1.3, 1.3);
setEffScaleKey(tyo2+300, ct, 6.0, 6.0);
playSe(tyo2+300, SE_07);

------------------------------------------------------
-- かめはめは迫る(tyo2+100F)
------------------------------------------------------
setDisp(tyo2+370, 0, 0);
setDisp(tyo2+370, 1, 1);
changeAnime(tyo2+370, 1, 104);                        -- ガード
setMoveKey(tyo2+369,    1,  235,  0,   0);
setMoveKey(tyo2+370,    1,  235,  0,   0);
setMoveKey(tyo2+371,    1,  235,  0,   0);
setScaleKey(tyo2+369,    1,  0.7, 0.7);
setScaleKey(tyo2+370,    1,  0.7, 0.7);

setMoveKey(tyo2+400,    1,   120,  0,   0);
setScaleKey(tyo2+400,   1,   1.6,  1.6);

playSe(tyo2+390, SE_06);

kamehame_beam2 = entryEffect(tyo2+370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(tyo2+370, kamehame_beam2, 1, 1);
setEffScaleKey(tyo2+452, kamehame_beam2, 1, 1);
setEffScaleKey(tyo2+454, kamehame_beam2, 2.5, 2.5);
setDamage(tyo2+452, 1, 0);  -- ダメージ振動等

--speff = entryEffect(tyo2+370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture(tyo2+speff, 6, 3);                       -- カットイン差し替え
--playSe(tyo2+370, SE_08);

playSe(tyo2+455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime(tyo2+455, 1, 108);
setMoveKey(tyo2+455, 1,  120,    0,  0);
setMoveKey(tyo2+469, 1,  400,    0,  0);
setScaleKey(tyo2+455, 1,  1.6, 1.6);
setScaleKey(tyo2+458, 1,  1.5, 1.5);
setScaleKey(tyo2+468, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara(tyo2+370, 1, 99, 20);

entryFadeBg(tyo2+370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife(tyo2+370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife(tyo2+370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(tyo2+370, ct, 99, 20);
setEffScaleKey(tyo2+370, ct, 2.4, 2.4);
setEffRotateKey(tyo2+370, ct, -15);
setEffAlphaKey(tyo2+370, ct, 255);
setEffAlphaKey(tyo2+430, ct, 255);
setEffAlphaKey(tyo2+450, ct, 0);

entryFade(tyo2+452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 392; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (tyo2+110F)
------------------------------------------------------
spep_5 = 469;

setDisp( tyo2+ spep_5-1, 0, 0);
setMoveKey( tyo2+  spep_5-1,    1,  100,  0,   0);
setScaleKey( tyo2+ spep_5-1,    1,  1, 1);
setMoveKey( tyo2+  spep_5,    1,    0,   0,   128);
setScaleKey( tyo2+ spep_5,    1,  0.1, 0.1);

changeAnime( tyo2+ spep_5, 1, 107);                         -- 手前ダメージ
setDisp( tyo2+ spep_5, 1, 1);

entryEffect( tyo2+ spep_5+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( tyo2+ spep_5+8, SE_10);

setMoveKey( tyo2+  spep_5+8,   1,    0,   0,   128);
setMoveKey( tyo2+  spep_5+15,   1,  -60,  -200,  -100);
setMoveKey( tyo2+  spep_5+16,   1,  -60,  -200,  -100);
setDamage( tyo2+ spep_5+16, 1, 0);  -- ダメージ振動等
setShake( tyo2+spep_5+7,6,15);
setShake( tyo2+spep_5+13,15,10);

setRotateKey( tyo2+ spep_5,  1,  30 );
setRotateKey( tyo2+ spep_5+2,  1,  80 );
setRotateKey( tyo2+ spep_5+4,  1, 120 );
setRotateKey( tyo2+ spep_5+6,  1, 160 );
setRotateKey( tyo2+ spep_5+8,  1, 200 );
setRotateKey( tyo2+ spep_5+10,  1, 260 );
setRotateKey( tyo2+ spep_5+12,  1, 320 );
setRotateKey( tyo2+ spep_5+14,  1,   0 );

setShakeChara( tyo2+ spep_5+15, 1, 5,  10);
setShakeChara( tyo2+ spep_5+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( tyo2+ spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( tyo2+ spep_5+15, ct, 30, 10);
setEffRotateKey( tyo2+ spep_5+15, ct, -40);
setEffScaleKey( tyo2+ spep_5+15, ct, 4.0, 4.0);
setEffScaleKey( tyo2+ spep_5+16, ct, 2.0, 2.0);
setEffScaleKey( tyo2+ spep_5+17, ct, 2.6, 2.6);
setEffScaleKey( tyo2+ spep_5+18, ct, 4.0, 4.0);
setEffScaleKey( tyo2+ spep_5+19, ct, 2.6, 2.6);
setEffScaleKey( tyo2+ spep_5+20, ct, 3.8, 3.8);
setEffScaleKey( tyo2+ spep_5+110, ct, 3.8, 3.8);
setEffAlphaKey( tyo2+ spep_5+15, ct, 255);
setEffAlphaKey( tyo2+ spep_5+105, ct, 255);
setEffAlphaKey( tyo2+ spep_5+115, ct, 0);

playSe( tyo2+ spep_5+13, SE_11);
shuchusen = entryEffectLife( tyo2+ spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( tyo2+ spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( tyo2+spep_5+16);


--entryFade( tyo2+ spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( tyo2+ spep_5+100);
end
