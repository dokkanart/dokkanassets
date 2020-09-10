print ("[lua]sp0407");

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
--[[[
SP_01 = 100021
SP_02 = 100022
SP_03 = 100023
]]
SP_01 = 150926;
SP_02 = 150927;
SP_03 = 150928;
SP_04 = 150929;

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setAnimeLoop( 0, 0, 1);
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

entryFade( 62-4, 5, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 39, 5);
]]
-- 書き文字エントリー
ctzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ctzuzun, 40, 7);
setEffAlphaKey(30, ctzuzun, 255);
setEffAlphaKey(50, ctzuzun, 255);
setEffAlphaKey(70, ctzuzun, 0);
setEffScaleKey( 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzun, 2.0, 2.0);
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

kame_hand = entryEffect( 70, SP_01, 0x100,      0,  300,  -100,  120);   -- 手のカメハメ波部
--kame_hand = entryEffect( 70, SP_01, 0x40+0x80,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);
setEffRotateKey( 70, kame_hand, -20);


entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49+50, 5);
]]
-- 書き文字エントリー
ctgogo = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -212, 300);    -- ゴゴゴ・・・
setEffShake(90, ctgogo, 40, 8);
setEffScaleKey(90, ctgogo, 1.4, 1.4);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
entryFade( 165, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(   170,   0,    0, -54,   0);
setScaleKey(   170,   0, 1.5, 1.5);


playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=260; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  spep_3-1,    0,      -500,  250,   0);
setMoveKey(  spep_3+10,    0,   -150,  150,   0);
setMoveKey(  spep_3+20,    0,   -150,  150,   0);


kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
SE00 = playSe( spep_3+0, SE_07);

spname= entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_3+30,    0,   -300,  200,   70);
setMoveKey(  spep_3+45,    0,   -450,  220,   120);
setDisp( spep_3+45, 0, 0);

--setMoveKey(  spep_3+70,    0,   -250,  220,   120);
setMoveKey(  spep_3+70,    0,   -250,  0,   0);
setMoveKey(  spep_3+90,    0,   -500,  0,   0);
--setMoveKey(  spep_3+98,    0,   -500,  0,   0);
setMoveKey(  spep_3+105,    0,   300,  0,   0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

shuchusen3 = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen3, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen3, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ctzuo, 32, 5);
setEffAlphaKey(spep_3+8, ctzuo, 255);
setEffAlphaKey(spep_3+30, ctzuo, 255);
setEffAlphaKey(spep_3+40, ctzuo, 0);
setEffScaleKey(spep_3+8, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_3+12, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3+32, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3+40, ctzuo, 6.0, 6.0);
SE01 = playSe( spep_3+40, SE_07);

entryFade( spep_3+95, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+98);

spep_4=spep_3+95+10; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
--setMoveKey(  spep_4-1,    1,  500,  -450,   0);
--setMoveKey(  spep_4,    1,  500,  -450,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
setMoveKey( spep_4-1,    1,  235,  0,   0);
setMoveKey( spep_4,    1,  235,  0,   0);
setMoveKey( spep_4+1,    1,  235,  0,   0);

setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

--setRotateKey(spep_4,1,10);

--setMoveKey(  spep_4+30,    1,   180, -250,   -20);
setMoveKey( spep_4+30,    1,   120,  0,   0);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  -90,  0);   -- 迫るかめはめ波 376で画面いっぱい
setEffScaleKey(spep_4, kamehame_beam2, 0.8, 0.8);
setEffAlphaKey(spep_4, kamehame_beam2, 255);

setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

cut = entryEffect( spep_4+55, SP_04,   0x80, -1,  60,  0,  0);   -- 切れ痕
setEffScaleKey(spep_4+55, cut, 0.8, 0.8);
setEffRotateKey(spep_4+55, cut, 25);
setEffAlphaKey(spep_4+55, cut, 255);

playSe( spep_4+55, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_4+55, 1, 108);
setMoveKey( spep_4+55, 1,  120,    0,  0);
setMoveKey( spep_4+69, 1,  400,    0,  0);

--setMoveKey( spep_4+60, 1,  180,   -250,  -20);
--setMoveKey(  spep_4+76, 1,  400,    -500,  0);
setScaleKey( spep_4+55, 1,  1.6, 1.6);
setScaleKey( spep_4+58, 1,  1.5, 1.5);
setScaleKey( spep_4+76, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 77, 0,0, 0, 0, 180);          -- ベース暗め　背景

ryu1 = entryEffectLife( spep_4, 921, 77, 0x80,  -1,  0,  0,  0); -- 流線斜め
ryu2 = entryEffectLife( spep_4+56, 921, 77, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffAlphaKey(spep_4, ryu1, 255);
setEffAlphaKey(spep_4+55, ryu1, 255);
setEffAlphaKey(spep_4+56, ryu1, 255);

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ctzudo, 99, 20);
setEffScaleKey( spep_4, ctzudo, 2.4, 2.4);
setEffRotateKey(spep_4, ctzudo, 70);
setEffAlphaKey(spep_4, ctzudo, 255);
setEffAlphaKey(spep_4+60, ctzudo, 255);
setEffAlphaKey(spep_4+70, ctzudo, 0);

entryFade( spep_4+70, 6,  20, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_4+80);
setEffAlphaKey(spep_4+90, cut, 255);
setEffAlphaKey(spep_4+91, cut, 0);
setEffAlphaKey(spep_4+90, ryu2, 255);
setEffAlphaKey(spep_4+91, ryu2, 0);
setEffAlphaKey(spep_4+90, kamehame_beam2, 255);
setEffAlphaKey(spep_4+91, kamehame_beam2, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 353; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

stopSe( SP_dodge - 12, SE00, 0 );
stopSe( SP_dodge - 12, SE01, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge, 0,  2000,    -500,  0);
setMoveKey(  SP_dodge+9, 0,  2000,    -500,  0);

endPhase(SP_dodge+10);
do return end
else end

spep_5=spep_4+70+17 --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

--entryEffect( spep_5,1553,0,-1,0,0,0);
setMoveKey( spep_5-1, 1,  400,    0,  0);

setDisp( spep_5, 1, 0);

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ 470
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等
setShake(spep_5+8);
setShake(spep_5+13,15,10);

setRotateKey( spep_5+1,  1,  30 );
setRotateKey( spep_5+3,  1,  80 );
setRotateKey( spep_5+5,  1, 120 );
setRotateKey( spep_5+7,  1, 160 );
setRotateKey( spep_5+9,  1, 200 );
setRotateKey( spep_5+11,  1, 260 );
setRotateKey( spep_5+13,  1, 320 );
setRotateKey( spep_5+15,  1,   0 );

setShakeChara( spep_5+16, 1, 5,  10);
setShakeChara( spep_5+21, 1, 10, 20);

-- 書き文字エントリー
ctga = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+16, ctga, 30, 10);
setEffRotateKey( spep_5+16, ctga, -40);
setEffScaleKey( spep_5+16, ctga, 4.0, 4.0);
setEffScaleKey( spep_5+17, cctgat, 2.0, 2.0);
setEffScaleKey( spep_5+18, ctga, 2.6, 2.6);
setEffScaleKey( spep_5+19, ctga, 4.0, 4.0);
setEffScaleKey( spep_5+20, ctga, 2.6, 2.6);
setEffScaleKey( spep_5+21, ctga, 3.8, 3.8);
setEffScaleKey( spep_5+111, ctga, 3.8, 3.8);
setEffAlphaKey( spep_5+16, ctga, 255);
setEffAlphaKey( spep_5+106, ctga, 255);
setEffAlphaKey( spep_5+116, ctga, 0);

playSe( spep_5+4, SE_11);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62-4, 5, 8, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 39, 5);
]]
-- 書き文字エントリー
ctzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(30, ctzuzun, 40, 7);
setEffAlphaKey(30, ctzuzun, 255);
setEffAlphaKey(50, ctzuzun, 255);
setEffAlphaKey(70, ctzuzun, 0);
setEffScaleKey( 30, ctzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzun, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--[[
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
]]
playSe( 80, SE_04);

kame_hand = entryEffect( 70, SP_01, 0x100,      0,  300,  -50,  170);   -- 手のカメハメ波部
--kame_hand = entryEffect( 70, SP_01, 0x40+0x80,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 70, kame_hand, 0.5, 0.5);
setEffRotateKey( 70, kame_hand, -20);


entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--[[
-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 70, 0, 49+50, 5);
]]
-- 書き文字エントリー
ctgogo = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ctgogo, 40, 8);
setEffScaleKey(90, ctgogo, 1.4, 1.4);


------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
entryFade( 165, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(   170,   0,    0, -54,   0);
setScaleKey(   170,   0, 1.5, 1.5);


playSe( 170, SE_05);
speff = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 255, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_3=260; --211 260

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( spep_3, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey(  spep_3-1,    0,      -500,  250,   0);
setMoveKey(  spep_3+10,    0,   -150,  150,   0);
setMoveKey(  spep_3+20,    0,   -150,  150,   0);


kamehame_beam = entryEffectLife( spep_3, SP_02, 109, 0x40,  0,  300,  0,  -100);   -- 伸びるかめはめ波
SE00 = playSe( spep_3+0, SE_07);

spname= entryEffect( spep_3, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  spep_3+30,    0,   -300,  200,   70);
setMoveKey(  spep_3+45,    0,   -450,  220,   120);
setDisp( spep_3+45, 0, 0);

--setMoveKey(  spep_3+70,    0,   -250,  220,   120);
setMoveKey(  spep_3+70,    0,   -250,  0,   0);
setMoveKey(  spep_3+90,    0,   -500,  0,   0);
--setMoveKey(  spep_3+98,    0,   -500,  0,   0);
setMoveKey(  spep_3+105,    0,   300,  0,   0);

-- ** エフェクト等 ** --
entryFadeBg( spep_3, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
entryFadeBg( spep_3, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( spep_3+40, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( spep_3+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_3, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_3, sen2, 190);
setEffScaleKey(spep_3, sen2, 1.3, 1.3);
setShakeChara( spep_3+45, 0, 54, 50);

shuchusen3 = entryEffectLife( spep_3, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);
setEffScaleKey( spep_3+40, shuchusen3, 1.0, 1.0);
setEffScaleKey( spep_3+49, shuchusen3, 2.0, 2.0);

-- 書き文字エントリー
ctzuo = entryEffectLife( spep_3+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_3+8, ctzuo, 32, 5);
setEffAlphaKey(spep_3+8, ctzuo, 255);
setEffAlphaKey(spep_3+30, ctzuo, 255);
setEffAlphaKey(spep_3+40, ctzuo, 0);
setEffScaleKey(spep_3+8, ctzuo, 0.0, 0.0);
setEffScaleKey(spep_3+12, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3+32, ctzuo, 1.3, 1.3);
setEffScaleKey(spep_3+40, ctzuo, 6.0, 6.0);
SE01 = playSe( spep_3+40, SE_07);

entryFade( spep_3+95, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_3+98);

spep_4=spep_3+95+10; --311 370

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_4, 0, 0);
setDisp( spep_4, 1, 1);
changeAnime( spep_4, 1, 104);                        -- ガード
--setMoveKey(  spep_4-1,    1,  500,  -450,   0);
--setMoveKey(  spep_4,    1,  500,  -450,   0);
--setMoveKey(  spep_4+1,    1,  235,  0,   0);
setMoveKey( spep_4-1,    1,  235,  0,   0);
setMoveKey( spep_4,    1,  235,  0,   0);
setMoveKey( spep_4+1,    1,  235,  0,   0);

setScaleKey( spep_4-1,    1,  0.7, 0.7);
setScaleKey( spep_4,    1,  0.7, 0.7);

--setRotateKey(spep_4,1,10);

--setMoveKey(  spep_4+30,    1,   180, -250,   -20);
setMoveKey( spep_4+30,    1,   120,  0,   0);
setScaleKey(  spep_4+30,   1,   1.6,  1.6);

playSe( spep_4+20, SE_06);

kamehame_beam2 = entryEffect( spep_4, SP_03,   0, -1,  0,  -90,  0);   -- 迫るかめはめ波 376で画面いっぱい
setEffScaleKey(spep_4, kamehame_beam2, 0.8, 0.8);
setEffAlphaKey(spep_4, kamehame_beam2, 255);

setDamage( spep_4+82, 1, 0);  -- ダメージ振動等

cut = entryEffect( spep_4+55, SP_04,   0x80, -1,  60,  0,  0);   -- 切れ痕
setEffScaleKey(spep_4+55, cut, 0.8, 0.8);
setEffRotateKey(spep_4+55, cut, 25);
setEffAlphaKey(spep_4+55, cut, 255);

playSe( spep_4+55, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_4+55, 1, 108);
setMoveKey( spep_4+55, 1,  120,    0,  0);
setMoveKey( spep_4+69, 1,  400,    0,  0);

--setMoveKey( spep_4+60, 1,  180,   -250,  -20);
--setMoveKey(  spep_4+76, 1,  400,    -500,  0);
setScaleKey( spep_4+55, 1,  1.6, 1.6);
setScaleKey( spep_4+58, 1,  1.5, 1.5);
setScaleKey( spep_4+76, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_4, 1, 99, 20);

entryFadeBg( spep_4, 0, 77, 0,0, 0, 0, 180);          -- ベース暗め　背景

ryu1 = entryEffectLife( spep_4, 921, 77, 0x80,  -1,  0,  0,  0); -- 流線斜め
ryu2 = entryEffectLife( spep_4+56, 921, 77, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffAlphaKey(spep_4, ryu1, 255);
setEffAlphaKey(spep_4+55, ryu1, 255);
setEffAlphaKey(spep_4+56, ryu1, 255);

-- 書き文字エントリー
ctzudo = entryEffectLife( spep_4, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_4, ctzudo, 99, 20);
setEffScaleKey( spep_4, ctzudo, 2.4, 2.4);
setEffRotateKey(spep_4, ctzudo, 0);
setEffAlphaKey(spep_4, ctzudo, 255);
setEffAlphaKey(spep_4+60, ctzudo, 255);
setEffAlphaKey(spep_4+70, ctzudo, 0);

entryFade( spep_4+70, 6,  20, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--removeAllEffect(spep_4+80);
setEffAlphaKey(spep_4+90, cut, 255);
setEffAlphaKey(spep_4+91, cut, 0);
setEffAlphaKey(spep_4+90, ryu2, 255);
setEffAlphaKey(spep_4+91, ryu2, 0);
setEffAlphaKey(spep_4+90, kamehame_beam2, 255);
setEffAlphaKey(spep_4+91, kamehame_beam2, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 353; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

stopSe( SP_dodge - 12, SE00, 0 );
stopSe( SP_dodge - 12, SE01, 0 );

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge, 0,  2000,    -500,  0);
setMoveKey(  SP_dodge+9, 0,  2000,    -500,  0);

endPhase(SP_dodge+10);
do return end
else end

spep_5=spep_4+70+17 --410 469
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

--entryEffect( spep_5,1553,0,-1,0,0,0);
setMoveKey( spep_5-1, 1,  400,    0,  0);

setDisp( spep_5, 1, 0);

setDisp( spep_5, 1, 1);
setMoveKey(  spep_5,    1,  100,  0,   0);
setScaleKey( spep_5,    1,  1.0, 1.0);
setMoveKey(  spep_5+1,    1,    0,   0,   128);
setScaleKey( spep_5+1,    1,  0.1, 0.1);

changeAnime( spep_5+1, 1, 107);                         -- 手前ダメージ 470
entryEffect( spep_5+9, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_5+9, SE_10);

setMoveKey(  spep_5+9,   1,    0,   0,   128);
setMoveKey(  spep_5+16,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( spep_5+17, 1, 0);  -- ダメージ振動等
setShake(spep_5+8);
setShake(spep_5+13,15,10);

setRotateKey( spep_5+1,  1,  30 );
setRotateKey( spep_5+3,  1,  80 );
setRotateKey( spep_5+5,  1, 120 );
setRotateKey( spep_5+7,  1, 160 );
setRotateKey( spep_5+9,  1, 200 );
setRotateKey( spep_5+11,  1, 260 );
setRotateKey( spep_5+13,  1, 320 );
setRotateKey( spep_5+15,  1,   0 );

setShakeChara( spep_5+16, 1, 5,  10);
setShakeChara( spep_5+21, 1, 10, 20);

-- 書き文字エントリー
ctga = entryEffectLife( spep_5+16, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(spep_5+16, ctga, 30, 10);
setEffRotateKey( spep_5+16, ctga, -40);
setEffScaleKey( spep_5+16, ctga, 4.0, 4.0);
setEffScaleKey( spep_5+17, cctgat, 2.0, 2.0);
setEffScaleKey( spep_5+18, ctga, 2.6, 2.6);
setEffScaleKey( spep_5+19, ctga, 4.0, 4.0);
setEffScaleKey( spep_5+20, ctga, 2.6, 2.6);
setEffScaleKey( spep_5+21, ctga, 3.8, 3.8);
setEffScaleKey( spep_5+111, ctga, 3.8, 3.8);
setEffAlphaKey( spep_5+16, ctga, 255);
setEffAlphaKey( spep_5+106, ctga, 255);
setEffAlphaKey( spep_5+116, ctga, 0);

playSe( spep_5+4, SE_11);
shuchusen = entryEffectLife( spep_5+4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+4, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+17);

entryFade( spep_5+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+111);

end
