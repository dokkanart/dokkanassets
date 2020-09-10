

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

--SP_01 = 100168;
--SP_02 = 100169;
--SP_03 = 100170;

SP_01 = 100309;
SP_02 = 100310;
SP_03 = 100311;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

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

entryFade( 60, 4, 8, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  130,  155);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -180,  150);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--カットイン
ctgogo = entryEffectLife( 90, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(s90, ctgogo, 70, 8);
setEffScaleKey(90, ctgogo, 0.7, 0.7);

entryFade( 160, 4, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
--speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--極限Z用に改修
spep_2 = 170;

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


entryFade( 250, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  200,  100);   -- 伸びるかめはめ波
setEffMoveKey(290,kamehame_beam,   200   ,  100  ,  0);
setEffMoveKey(300,kamehame_beam,   110   ,  100  ,  0);
setEffMoveKey(305,kamehame_beam,   80   ,  100  ,  0);
playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -750,  0,   80);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setShakeChara( 305, 0, 54, 50);
setEffScaleKey(  260, sen2, 1.3, 1.3);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

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


kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

-- 敵吹っ飛ぶモーション
changeAnime( 455-10, 1, 108);
setMoveKey(  455-10, 1,  120,    0,  0);
setMoveKey(  469-10, 1,  400,    0,  0);
setScaleKey( 455-10, 1,  1.6, 1.6);
setScaleKey( 458-10, 1,  1.5, 1.5);
setScaleKey( 468-10, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( 370, 1, 99, 20);

entryFadeBg( 370, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

entryEffectLife( 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, 70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 452, 6,  20, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 385; --エンドフェイズのフレーム数を置き換える


--entryEffect( SP_dodge-13, SP_03,   0x80, -1,  0,  0,  0);

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);

do return end
else end

playSe( 390, SE_06);

playSe( 455-10, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

SP_ATK=469;

changeAnime( SP_ATK, 1, 107);                         -- 手前ダメージ
setMoveKey(  SP_ATK,    1,  100,  0,   0);
setScaleKey( SP_ATK,    1,  1.0, 1.0);
entryEffect( SP_ATK+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK+8, SE_10);

setMoveKey(  SP_ATK+8,   1,    0,   0,   128);
setMoveKey(  SP_ATK+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK+16,   1,  -60,  -200,  -100);
setDamage( SP_ATK+16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+7,6,15);
setShake(SP_ATK+13,15,10);

setRotateKey( SP_ATK,  1,  30 );
setRotateKey( SP_ATK+2,  1,  80 );
setRotateKey( SP_ATK+4,  1, 120 );
setRotateKey( SP_ATK+6,  1, 160 );
setRotateKey( SP_ATK+8,  1, 200 );
setRotateKey( SP_ATK+10,  1, 260 );
setRotateKey( SP_ATK+12,  1, 320 );
setRotateKey( SP_ATK+14,  1,   0 );

setShakeChara( SP_ATK+15, 1, 5,  10);
setShakeChara( SP_ATK+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK+15, ct, 30, 10);
setEffRotateKey( SP_ATK+15, ct, -40);
setEffScaleKey( SP_ATK+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK+15, ct, 255);
setEffAlphaKey( SP_ATK+105, ct, 255);
setEffAlphaKey( SP_ATK+110, ct, 0);

playSe( SP_ATK+14, SE_11);
shuchusen = entryEffectLife( SP_ATK+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( SP_ATK+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(SP_ATK+16);
--entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( SP_ATK+106);
else

------------------------------------------------------
-- 敵側
------------------------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 60, 4, 8, 8, fcolor_r, fcolor_g, fcolor_b,  255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ct = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ct, 40, 7);
setEffAlphaKey(30, ct, 255);
setEffAlphaKey(50, ct, 255);
setEffAlphaKey(70, ct, 0);
setEffScaleKey( 30, ct, 0.1, 0.1);
setEffScaleKey( 40, ct, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40+0x80,      0,  300,  -10,  10);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.6, 0.6);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  130,  155);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  -180,  150);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);

--entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -50); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
--カットイン
ctgogo = entryEffectLife( 90, 190006, 70, 0x100, -1, 0, -40, 510);    -- ゴゴゴ・・・
setEffShake(s90, ctgogo, 70, 8);
setEffScaleKey(90, ctgogo, -0.7, 0.7);

entryFade( 160, 4, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
--speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
--setEffReplaceTexture( speff, 1, 1);
--setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

--極限Z用に改修
spep_2 = 170;

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


entryFade( 250, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
playSe( 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  259,    0,      0,  0,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey(  290,    0,   -30,  0,   20);

kamehame_beam = entryEffectLife( 257, SP_02, 112, 0x40,  0,  300,  230,  100);   -- 伸びるかめはめ波

--エフェクトの動きを制御
setEffMoveKey(290,kamehame_beam,   200   ,  100  ,  0);
setEffMoveKey(300,kamehame_beam,   110   ,  100  ,  0);
setEffMoveKey(305,kamehame_beam,   80   ,  100  ,  0);


playSe( 257, SE_07);
setEffAlphaKey(257, kamehame_beam, 0);
setEffAlphaKey(259, kamehame_beam, 0);
setEffAlphaKey(260, kamehame_beam, 255);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  300,    0,   -150,  0,   50);
setMoveKey(  305,    0,   -750,  0,   80);
--setMoveKey(  308,    0,   -1100,  0,   0);


entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(260, sen2, 190);
setShakeChara( 305, 0, 54, 50);
setEffScaleKey(  260, sen2, 1.3, 1.3);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

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


kamehame_beam2 = entryEffect( 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(370, kamehame_beam2, 1, 1);
setEffScaleKey(452, kamehame_beam2, 1, 1);
setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

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

-- 書き文字エントリー
ct = entryEffectLife( 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(370, ct, 99, 20);
setEffScaleKey( 370, ct, 2.4, 2.4);
setEffRotateKey(370, ct, -70);
setEffAlphaKey(370, ct, 255);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(450, ct, 0);

entryFade( 452, 6,  20, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 385; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end

playSe( 390, SE_06);

playSe( 455, SE_09);

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

SP_ATK=469;

changeAnime( SP_ATK, 1, 107);                         -- 手前ダメージ
setMoveKey(  SP_ATK,    1,  100,  0,   0);
setScaleKey( SP_ATK,    1,  1.0, 1.0);
entryEffect( SP_ATK+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK+8, SE_10);

setMoveKey(  SP_ATK+8,   1,    0,   0,   128);
setMoveKey(  SP_ATK+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_ATK+16,   1,  -60,  -200,  -100);
setDamage( SP_ATK+16, 1, 0);  -- ダメージ振動等
setShake(SP_ATK+7,6,15);
setShake(SP_ATK+13,15,10);

setRotateKey( SP_ATK,  1,  30 );
setRotateKey( SP_ATK+2,  1,  80 );
setRotateKey( SP_ATK+4,  1, 120 );
setRotateKey( SP_ATK+6,  1, 160 );
setRotateKey( SP_ATK+8,  1, 200 );
setRotateKey( SP_ATK+10,  1, 260 );
setRotateKey( SP_ATK+12,  1, 320 );
setRotateKey( SP_ATK+14,  1,   0 );

setShakeChara( SP_ATK+15, 1, 5,  10);
setShakeChara( SP_ATK+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK+15, 10005, 95, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK+15, ct, 30, 10);
setEffRotateKey( SP_ATK+15, ct, -40);
setEffScaleKey( SP_ATK+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK+15, ct, 255);
setEffAlphaKey( SP_ATK+105, ct, 255);
setEffAlphaKey( SP_ATK+110, ct, 0);

playSe( SP_ATK+14, SE_11);
shuchusen = entryEffectLife( SP_ATK+3,906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

shuchusenkuro = entryEffectLife( SP_ATK+15, 1657, 120, 0x80,  -1, 0,  0,  0);   -- 集中線



-- ダメージ表示
dealDamage(SP_ATK+16);
--entryFade( SP_ATK+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase( SP_ATK+106);

end