--sp0447 クリリン_かめはめ波

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

tyo = -30;
tyo2 = -40;

SP_01 = 151422;
SP_02 = 151423;
SP_03 = 151424;
SP_01e = 151425;
SP_02e = 151426;
SP_05 = 1551;

setVisibleUI(0, 0);
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    0,  -800,   0);
setMoveKey(   1,   0,    0,  -800,   0);
setMoveKey(   2,   0,    0,  -800,   0);
setMoveKey(   3,   0,    0,  -800,   0);
setMoveKey(   4,   0,    0,  -800,   0);
setMoveKey(   5,   0,    0,  -800,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0=0;

-- 書き文字エントリー
entryFadeBg( spep_0+17,0,153,0,10,10,10,190);

ctZuzun = entryEffectLife( spep_0+17, 10013, 43, 0, -1, 0, 0, 300); -- ズズンッ

setEffShake(spep_0+17, ctZuzun, 43, 10);
setEffAlphaKey(spep_0+17, ctZuzun, 255);
setEffAlphaKey(spep_0+50, ctZuzun, 255);
setEffAlphaKey(spep_0+70, ctZuzun, 0);

setEffScaleKey(spep_0+17, ctZuzun, 0.2, 0.2);
setEffScaleKey( spep_0+22, ctZuzun, 2.5, 2.5);
playSe( spep_0+17, SE_02);

entryFade(spep_0+46,7,8,17,255,255,255,255);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

--playSe( spep_0+73, SE_03);

speff = entryEffect(  spep_0+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_0+80, SE_04);

kame_hand = entryEffect( spep_0+0, SP_01, 0x100,     -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_0+0, kame_hand, 1.0, 1.0);

setEffShake( spep_0+17, kame_hand,153,10);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_0+90, 190006, 77, 0x100, -1, 0, -200,500, 0);    -- ゴゴゴゴ
setEffShake(spep_0+90, ctgogo, 77, 10);
setEffScaleKey(spep_0+90, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_0+90, ctgogo, 0);
setEffAlphaKey( spep_0+90, ctgogo, 255);


entryFade(spep_0+160,7,4,7,255,255,255,255);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1=spep_0+170;

setScaleKey( spep_1-1,   0, 1.5, 1.5);
setScaleKey( spep_1,   0, 1.0, 1.0);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_1+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_2=spep_1+90;

kamehame_beam = entryEffect( spep_2, SP_02, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_2, kamehame_beam, 1.0, 1.0);

setEffShake( spep_2,kamehame_beam,100,10);

playSe( spep_2, SE_07);

spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect(369);

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 109, 0, 10, 10, 10, 255);       -- ベース暗め　背景
--entryFadeBg( spep_2, 0, 40, 0, 10, 10, 10, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_2, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2, sen2, 190);
setEffScaleKey( spep_2, sen2, 1.25, 1.25);

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( spep_2, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_2+8, ctZuo, 32, 10);
setEffAlphaKey(spep_2+8, ctZuo, 255);
setEffAlphaKey(spep_2+30, ctZuo, 255);
setEffAlphaKey(spep_2+40, ctZuo, 0);
setEffScaleKey(spep_2+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_2+12, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_2+32, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_2+40, ctZuo, 6.0, 6.0);
playSe( spep_2+40, SE_07);
entryFade( spep_2+95, 10,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_3=spep_2+110;

setDisp( spep_3, 0, 0);
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104);                        -- ガード
setMoveKey(  spep_3-1,    1,  235,  0,   0);
setMoveKey(  spep_3,    1,  235,  0,   0);
setMoveKey(  spep_3+1,    1,  235,  0,   0);
setScaleKey( spep_3-1,    1,  0.7, 0.7);
setScaleKey( spep_3,    1,  0.7, 0.7);

setMoveKey(  spep_3+30,    1,   120,  0,   0);
setScaleKey(  spep_3+30,   1,   1.6,  1.6);

playSe( spep_3, SE_06);

kamehame_beam2 = entryEffectLife( spep_3, SP_03, 99,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_3, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+84, kamehame_beam2, 1, 1);

setEffAlphaKey(spep_3, kamehame_beam2, 255);
setEffAlphaKey(spep_3+98, kamehame_beam2, 255);
setEffAlphaKey(spep_3+99, kamehame_beam2, 0);

setDamage( spep_3+82, 1, 0);  -- ダメージ振動等

playSe( spep_3+85, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_3+85, 1, 108);
setMoveKey(  spep_3+85, 1,  120,    0,  0);
setMoveKey(  spep_3+98, 1,  400,    0,  0);
setScaleKey( spep_3+85, 1,  1.6, 1.6);
setScaleKey( spep_3+88, 1,  1.5, 1.5);
setScaleKey( spep_3+98, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_3+0, 1, 99, 20);

entryFadeBg( spep_3+0, 0, 99, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryEffectLife( spep_3+0, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_3+0, 10014, 99, 0, -1, 0, 0, 350); -- ズドドッ
setEffShake(spep_3+0, ctZudodo, 99, 20);
setEffScaleKey( spep_3+0, ctZudodo, 2.4, 2.4);
setEffRotateKey(spep_3+0, ctZudodo, 70);
setEffAlphaKey(spep_3+0, ctZudodo, 255);
setEffAlphaKey(spep_3+60, ctZudodo, 255);
setEffAlphaKey(spep_3+80, ctZudodo, 0);

entryFade( spep_3+82, 7,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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
spep_5 = spep_3+99;

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
ctGa = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ctGa, 30, 10);
setEffRotateKey( spep_5+15, ctGa, -40);
setEffScaleKey( spep_5+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctGa, 255);
setEffAlphaKey( spep_5+105, ctGa, 255);
setEffAlphaKey( spep_5+115, ctGa, 0);

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

else

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;

spep_0=0;

-- 書き文字エントリー
entryFadeBg( spep_0+17,0,153,0,10,10,10,190);

ctZuzun = entryEffectLife( spep_0+17, 10013, 43, 0, -1, 0, 0, 300); -- ズズンッ

setEffShake(spep_0+17, ctZuzun, 43, 10);
setEffAlphaKey(spep_0+17, ctZuzun, 255);
setEffAlphaKey(spep_0+50, ctZuzun, 255);
setEffAlphaKey(spep_0+70, ctZuzun, 0);

setEffScaleKey(spep_0+17, ctZuzun, 0.2, 0.2);
setEffScaleKey( spep_0+22, ctZuzun, 2.5, 2.5);
playSe( spep_0+17, SE_02);

entryFade(spep_0+46,7,8,17,255,255,255,255);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------

--playSe( spep_0+73, SE_03);

--speff = entryEffect(  spep_0+80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( spep_0+80, SE_04);

kame_hand = entryEffect( spep_0+0, SP_01e, 0x100,     -1,  0,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( spep_0+0, kame_hand, 1.0, 1.0);

setEffShake( spep_0+17, kame_hand,153,10);

-- 書き文字エントリー
ctgogo = entryEffectLife( spep_0+90, 190006, 77, 0x100, -1, 0, -200,500, 0);    -- ゴゴゴゴ
setEffShake(spep_0+90, ctgogo, 77, 10);
setEffScaleKey(spep_0+90, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_0+90, ctgogo, 0);
setEffAlphaKey( spep_0+90, ctgogo, 255);


entryFade(spep_0+160,7,4,7,255,255,255,255);
------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
spep_1=spep_0+170;

setScaleKey( spep_1-1,   0, 1.5, 1.5);
setScaleKey( spep_1,   0, 1.0, 1.0);

playSe( spep_1, SE_05);
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_1+85, 3, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe( spep_1+64, SE_06);

------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
spep_2=spep_1+90;

kamehame_beam = entryEffect( spep_2, SP_02e, 0x100,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( spep_2, kamehame_beam, 1.0, 1.0);

setEffShake( spep_2,kamehame_beam,100,10);

playSe( spep_2, SE_07);

spname = entryEffect( spep_2, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( spep_2+105, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--removeAllEffect(369);

-- ** エフェクト等 ** --
entryFadeBg( spep_2, 0, 109, 0, 10, 10, 10, 255);       -- ベース暗め　背景
--entryFadeBg( spep_2, 0, 40, 0, 10, 10, 10, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( spep_2, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_2, sen2, 190);
setEffScaleKey( spep_2, sen2, 1.25, 1.25);

setShakeChara( 305, 0, 54, 50);

shuchusen = entryEffectLife( spep_2, 906, 49, 0x100,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_2+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ctZuo = entryEffectLife( spep_2+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_2+8, ctZuo, 32, 10);
setEffAlphaKey(spep_2+8, ctZuo, 255);
setEffAlphaKey(spep_2+30, ctZuo, 255);
setEffAlphaKey(spep_2+40, ctZuo, 0);
setEffScaleKey(spep_2+8, ctZuo, 0.0, 0.0);
setEffScaleKey(spep_2+12, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_2+32, ctZuo, 2.0, 2.0);
setEffScaleKey(spep_2+40, ctZuo, 6.0, 6.0);
playSe( spep_2+40, SE_07);
entryFade( spep_2+95, 10,  10, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
spep_3=spep_2+110;

setDisp( spep_3, 0, 0);
setDisp( spep_3, 1, 1);
changeAnime( spep_3, 1, 104);                        -- ガード
setMoveKey(  spep_3-1,    1,  235,  0,   0);
setMoveKey(  spep_3,    1,  235,  0,   0);
setMoveKey(  spep_3+1,    1,  235,  0,   0);
setScaleKey( spep_3-1,    1,  0.7, 0.7);
setScaleKey( spep_3,    1,  0.7, 0.7);

setMoveKey(  spep_3+30,    1,   120,  0,   0);
setScaleKey(  spep_3+30,   1,   1.6,  1.6);

playSe( spep_3, SE_06);

kamehame_beam2 = entryEffectLife( spep_3, SP_03, 99,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_3, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_3+84, kamehame_beam2, 1, 1);

setEffAlphaKey(spep_3, kamehame_beam2, 255);
setEffAlphaKey(spep_3+98, kamehame_beam2, 255);
setEffAlphaKey(spep_3+99, kamehame_beam2, 0);

setDamage( spep_3+82, 1, 0);  -- ダメージ振動等

playSe( spep_3+85, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( spep_3+85, 1, 108);
setMoveKey(  spep_3+85, 1,  120,    0,  0);
setMoveKey(  spep_3+98, 1,  400,    0,  0);
setScaleKey( spep_3+85, 1,  1.6, 1.6);
setScaleKey( spep_3+88, 1,  1.5, 1.5);
setScaleKey( spep_3+98, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( spep_3+0, 1, 99, 20);

entryFadeBg( spep_3+0, 0, 99, 0,0, 0, 0, 180);          -- ベース暗め　背景

entryEffectLife( spep_3+0, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ctZudodo = entryEffectLife( spep_3+0, 10014, 99, 0, -1, 0, 0, 350); -- ズドドッ
setEffShake(spep_3+0, ctZudodo, 99, 20);
setEffScaleKey( spep_3+0, ctZudodo, 2.4, 2.4);
setEffRotateKey(spep_3+0, ctZudodo, 0);
setEffAlphaKey(spep_3+0, ctZudodo, 255);
setEffAlphaKey(spep_3+60, ctZudodo, 255);
setEffAlphaKey(spep_3+80, ctZudodo, 0);

entryFade( spep_3+82, 7,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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
spep_5 = spep_3+99;

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
ctGa = entryEffectLife( spep_5+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_5+15, ctGa, 30, 10);
setEffRotateKey( spep_5+15, ctGa, -40);
setEffScaleKey( spep_5+15, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+16, ctGa, 2.0, 2.0);
setEffScaleKey( spep_5+17, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+18, ctGa, 4.0, 4.0);
setEffScaleKey( spep_5+19, ctGa, 2.6, 2.6);
setEffScaleKey( spep_5+20, ctGa, 3.8, 3.8);
setEffScaleKey( spep_5+110, ctGa, 3.8, 3.8);
setEffAlphaKey( spep_5+15, ctGa, 255);
setEffAlphaKey( spep_5+105, ctGa, 255);
setEffAlphaKey( spep_5+115, ctGa, 0);

playSe( spep_5+13, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+7, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

end


