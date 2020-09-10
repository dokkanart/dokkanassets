

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
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

parX = 27;

SP_01 = 103050;
SP_02 = 103051;
SP_03 = 103052;


changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

SP_start = -60;

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--entryFadeBg( 0, 30, 109, 10, 10, 10, 10, 155);       -- ベース暗め　背景

setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
--playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryFadeBg( SP_start+  70, 30, 109, 10, 10, 10, 10, 155);       -- ベース暗め　背景

speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300, 50,  150);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand, 0.5, 0.5);

--entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--[[
aura = entryEffectLife( SP_start+  70,   311, 99, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( SP_start+ 30, aura, 1.7, 1.7);
--]]
setShakeChara( SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

setMoveKey( SP_start+   170,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( SP_start+ 260,   0, 0.8, 0.8);

setMoveKey( SP_start+  259,    0,      300,  0,   -20);
setMoveKey( SP_start+  270,    0,      0,  0,   -10);
setMoveKey( SP_start+  290,    0,   -30,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x100,  -1,  0,  0, 0);   -- 伸びるかめはめ波
--kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0, 0);   -- 伸びるかめはめ波

setEffAlphaKey( SP_start+ 260, kamehame_beam, 0);
setEffAlphaKey( SP_start+ 261, kamehame_beam, 0);
setEffAlphaKey( SP_start+ 262, kamehame_beam, 255);

setEffScaleKey( SP_start+ 260, kamehame_beam, 1.0, 1.0);
setEffMoveKey( SP_start+ 260, kamehame_beam, 120, 200);

setEffMoveKey( SP_start+ 270, kamehame_beam, -240, 180);
setEffMoveKey( SP_start+ 290, kamehame_beam, -240, 180);

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setScaleKey( SP_start+ 290,   0, 0.8, 0.8);

setMoveKey( SP_start+  300,    0,   -250,  -30,   50);--80
setEffMoveKey( SP_start+ 300, kamehame_beam, -320, 20);
--setEffMoveKey( SP_start+ 300, kamehame_beam, -460, 140);

--setEffScaleKey( SP_start+ 304, kamehame_beam, 1.0, 1.0);

--setScaleKey( SP_start+ 306,   0, 0.2, 0.2);
setScaleKey( SP_start+ 308,   0, 0.2, 0.2);
--setMoveKey( SP_start+  306,    0,   -438,  -80,   75);--50
--setMoveKey( SP_start+  307,    0,   -469,  -60,   75);--50
setMoveKey( SP_start+  308,    0,   -500,  -80,   75);--50
setDisp( SP_start+ 308, 0, 0);
setEffMoveKey( SP_start+ 307, kamehame_beam, -550, -60);
setEffScaleKey( SP_start+ 308, kamehame_beam, 0.4, 0.4);
--setEffMoveKey( SP_start+ 305, kamehame_beam, 0, 0);

--setMoveKey( SP_start+  308,    0,  0,  0,   110);
--setScaleKey( SP_start+ 308,   0, 1.0, 1.0);

setEffMoveKey( SP_start+ 325, kamehame_beam, -600, 0);
setEffScaleKey( SP_start+ 325, kamehame_beam, 1.0, 1.0);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( SP_start+ 260, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

--entryEffectLife( SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
sen2 = entryEffectLife( SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, -185);
setEffScaleKey( SP_start+ 260, sen2, 1.4, 1.4);
setShakeChara( SP_start+ 260, 0, 44, 15);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  -50,   0);
setMoveKey( SP_start+  370,    1,  235,  -50,   0);
setMoveKey( SP_start+  371,    1,  235,  -50,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   120,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

--playSe( SP_start+ 390, 1043);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setDamage( SP_start+ 452-parX, 1, 0);  -- ダメージ振動等


playSe( SP_start+ 370, 1016);
playSe( SP_start+ 370+8, 1016);
playSe( SP_start+ 370+15, 1016);
playSe( SP_start+ 370+21, 1016);
playSe( SP_start+ 370+28, 1016);
playSe( SP_start+ 370+33, 1016);
playSe( SP_start+ 370+39, 1016);
playSe( SP_start+ 370+45, 1016);
playSe( SP_start+ 370+51, 1016);
--[[
playSe( spep_2+65, 1016);
playSe( spep_2+70, 1016);
playSe( spep_2+74, 1016);
playSe( spep_2+80, 1016);
--]]

playSe( SP_start+ 455-parX, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455-parX, 1, 108);


--entryEffectLife( SP_start+ 455-parX, 10016, 10, 0, 0, 0, 60, 90); -- ズドドッ
setMoveKey( SP_start+  455-parX, 1,  120,    -50,  0);
setMoveKey( SP_start+  469-parX, 1,  400,    -50,  0);
setScaleKey( SP_start+ 455-parX, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458-parX, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468-parX, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 99-parX, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370, 921, 99-parX, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99-parX, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, 10);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+430-parX, ct, 255);
setEffAlphaKey( SP_start+450-parX, ct, 0);

entryFade( SP_start+ 462-parX, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+ 469-parX );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 357; --エンドフェイズのフレーム数を置き換える

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
setDisp( SP_start+ 469-parX, 1, 1);
setMoveKey( SP_start+  469-parX,    1,  100,  0,   0);
setScaleKey( SP_start+ 469-parX,    1,  1.0, 1.0);
setMoveKey( SP_start+  470-parX,    1,    0,   0,   128);
setScaleKey( SP_start+ 470-parX,    1,  0.1, 0.1);

changeAnime( SP_start+ 470-parX, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ 478-parX, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ 478-parX, SE_10);

setMoveKey( SP_start+  478-parX,   1,    0,   0,   128);
setMoveKey( SP_start+  485-parX,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+  486-parX,   1,  -60,  -200,  -100);
setDamage( SP_start+ 486-parX, 1, 0);  -- ダメージ振動等
setShake( SP_start+477-parX,6,15);
setShake( SP_start+483-parX,15,10);

setRotateKey( SP_start+ 470-parX,  1,  30 );
setRotateKey( SP_start+ 472-parX,  1,  80 );
setRotateKey( SP_start+ 474-parX,  1, 120 );
setRotateKey( SP_start+ 476-parX,  1, 160 );
setRotateKey( SP_start+ 478-parX,  1, 200 );
setRotateKey( SP_start+ 480-parX,  1, 260 );
setRotateKey( SP_start+ 482-parX,  1, 320 );
setRotateKey( SP_start+ 484-parX,  1,   0 );

setShakeChara( SP_start+ 485-parX, 1, 5,  10);
setShakeChara( SP_start+ 490-parX, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 485-parX, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+485-parX, ct, 30, 10);
setEffRotateKey( SP_start+ 485-parX, ct, -40);
setEffScaleKey( SP_start+ 485-parX, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 486-parX, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ 487-parX, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 488-parX, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 489-parX, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 490-parX, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ 580-parX, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ 485-parX, ct, 255);
setEffAlphaKey( SP_start+ 575-parX, ct, 255);
setEffAlphaKey( SP_start+ 585-parX, ct, 0);

playSe( SP_start+ 473-parX, SE_11);
shuchusen = entryEffectLife( SP_start+ 473-parX, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ 473-parX, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+486-parX);

entryFade( SP_start+ 570-parX, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+580-parX);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
--entryFadeBg( 0, 30, 109, 10, 10, 10, 10, 155);       -- ベース暗め　背景

setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
--playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
entryFadeBg( SP_start+  70, 30, 109, 10, 10, 10, 10, 155);       -- ベース暗め　背景

--[[
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え
--]]

playSe( SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300, 50,  150);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand, 0.5, 0.5);

--entryFade( SP_start+ 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--[[
aura = entryEffectLife( SP_start+  70,   311, 99, 0x40,  0,  1,  0,  -100); -- オーラ
setEffScaleKey( SP_start+ 30, aura, 1.7, 1.7);
--]]
setShakeChara( SP_start+ 70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);

setMoveKey( SP_start+   170,   0,    0, -54,   0);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( SP_start+ 169,   0, 1.5, 1.5);
setScaleKey( SP_start+ 170,   0, 1.0, 1.0);

playSe( SP_start+ 170, SE_05);
speff = entryEffect( SP_start+  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** エフェクト等 ** --
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( SP_start+ 260,   0, 0.8, 0.8);

setMoveKey( SP_start+  259,    0,      300,  0,   -20);
setMoveKey( SP_start+  270,    0,      0,  0,   -10);
setMoveKey( SP_start+  290,    0,   -30,  0,   0);

kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x100,  -1,  0,  0, 0);   -- 伸びるかめはめ波
--kamehame_beam = entryEffectLife( SP_start+ 260, SP_02, 109, 0x40,  0,  300,  0, 0);   -- 伸びるかめはめ波

setEffAlphaKey( SP_start+ 260, kamehame_beam, 0);
setEffAlphaKey( SP_start+ 261, kamehame_beam, 0);
setEffAlphaKey( SP_start+ 262, kamehame_beam, 255);

setEffScaleKey( SP_start+ 260, kamehame_beam, 1.0, 1.0);
setEffMoveKey( SP_start+ 260, kamehame_beam, 120, 200);

setEffMoveKey( SP_start+ 270, kamehame_beam, -240, 180);
setEffMoveKey( SP_start+ 290, kamehame_beam, -240, 180);

playSe( SP_start+ 260, SE_07);

spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setScaleKey( SP_start+ 290,   0, 0.8, 0.8);

setMoveKey( SP_start+  300,    0,   -250,  -30,   50);--80
setEffMoveKey( SP_start+ 300, kamehame_beam, -320, 20);
--setEffMoveKey( SP_start+ 300, kamehame_beam, -460, 140);

--setEffScaleKey( SP_start+ 304, kamehame_beam, 1.0, 1.0);

--setScaleKey( SP_start+ 306,   0, 0.2, 0.2);
setScaleKey( SP_start+ 308,   0, 0.2, 0.2);
--setMoveKey( SP_start+  306,    0,   -438,  -80,   75);--50
--setMoveKey( SP_start+  307,    0,   -469,  -60,   75);--50
setMoveKey( SP_start+  308,    0,   -500,  -80,   75);--50
setDisp( SP_start+ 308, 0, 0);
setEffMoveKey( SP_start+ 307, kamehame_beam, -550, -60);
setEffScaleKey( SP_start+ 308, kamehame_beam, 0.4, 0.4);
--setEffMoveKey( SP_start+ 305, kamehame_beam, 0, 0);

--setMoveKey( SP_start+  308,    0,  0,  0,   110);
--setScaleKey( SP_start+ 308,   0, 1.0, 1.0);

setEffMoveKey( SP_start+ 325, kamehame_beam, -600, 0);
setEffScaleKey( SP_start+ 325, kamehame_beam, 1.0, 1.0);

entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( SP_start+ 260, 0, 40, 0, 0, 0, 0, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

--entryEffectLife( SP_start+ 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
sen2 = entryEffectLife( SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, -185);
setEffScaleKey( SP_start+ 260, sen2, 1.4, 1.4);
setShakeChara( SP_start+ 260, 0, 44, 15);

shuchusen = entryEffectLife( SP_start+ 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( SP_start+ 260, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 300, shuchusen, 1.0, 1.0);
setEffScaleKey( SP_start+ 309, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake( SP_start+268, ct, 32, 5);
setEffAlphaKey( SP_start+268, ct, 255);
setEffAlphaKey( SP_start+290, ct, 255);
setEffAlphaKey( SP_start+300, ct, 0);
setEffScaleKey( SP_start+268, ct, 0.0, 0.0);
setEffScaleKey( SP_start+272, ct, 1.3, 1.3);
setEffScaleKey( SP_start+292, ct, 1.3, 1.3);
setEffScaleKey( SP_start+300, ct, 6.0, 6.0);
playSe( SP_start+ 300, SE_07);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  -50,   0);
setMoveKey( SP_start+  370,    1,  235,  -50,   0);
setMoveKey( SP_start+  371,    1,  235,  -50,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   120,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);

--playSe( SP_start+ 390, 1043);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setDamage( SP_start+ 452-parX, 1, 0);  -- ダメージ振動等


playSe( SP_start+ 370, 1016);
playSe( SP_start+ 370+8, 1016);
playSe( SP_start+ 370+15, 1016);
playSe( SP_start+ 370+21, 1016);
playSe( SP_start+ 370+28, 1016);
playSe( SP_start+ 370+33, 1016);
playSe( SP_start+ 370+39, 1016);
playSe( SP_start+ 370+45, 1016);
playSe( SP_start+ 370+51, 1016);
--[[
playSe( spep_2+65, 1016);
playSe( spep_2+70, 1016);
playSe( spep_2+74, 1016);
playSe( spep_2+80, 1016);
--]]

playSe( SP_start+ 455-parX, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455-parX, 1, 108);


--entryEffectLife( SP_start+ 455-parX, 10016, 10, 0, 0, 0, 60, 90); -- ズドドッ
setMoveKey( SP_start+  455-parX, 1,  120,    -50,  0);
setMoveKey( SP_start+  469-parX, 1,  400,    -50,  0);
setScaleKey( SP_start+ 455-parX, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458-parX, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468-parX, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

entryFadeBg( SP_start+ 370, 0, 99-parX, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( SP_start+ 370, 921, 99-parX, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99-parX, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, -10);
setEffAlphaKey( SP_start+370, ct, 255);
setEffAlphaKey( SP_start+430-parX, ct, 255);
setEffAlphaKey( SP_start+450-parX, ct, 0);

entryFade( SP_start+ 462-parX, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
removeAllEffect( SP_start+ 469-parX );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 357; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_start+ 469-parX, 1, 1);
setMoveKey( SP_start+  469-parX,    1,  100,  0,   0);
setScaleKey( SP_start+ 469-parX,    1,  1.0, 1.0);
setMoveKey( SP_start+  470-parX,    1,    0,   0,   128);
setScaleKey( SP_start+ 470-parX,    1,  0.1, 0.1);

changeAnime( SP_start+ 470-parX, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ 478-parX, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ 478-parX, SE_10);

setMoveKey( SP_start+  478-parX,   1,    0,   0,   128);
setMoveKey( SP_start+  485-parX,   1,  -60,  -200,  -100);
--setMoveKey( SP_start+  486-parX,   1,  -60,  -200,  -100);
setDamage( SP_start+ 486-parX, 1, 0);  -- ダメージ振動等
setShake( SP_start+477-parX,6,15);
setShake( SP_start+483-parX,15,10);

setRotateKey( SP_start+ 470-parX,  1,  30 );
setRotateKey( SP_start+ 472-parX,  1,  80 );
setRotateKey( SP_start+ 474-parX,  1, 120 );
setRotateKey( SP_start+ 476-parX,  1, 160 );
setRotateKey( SP_start+ 478-parX,  1, 200 );
setRotateKey( SP_start+ 480-parX,  1, 260 );
setRotateKey( SP_start+ 482-parX,  1, 320 );
setRotateKey( SP_start+ 484-parX,  1,   0 );

setShakeChara( SP_start+ 485-parX, 1, 5,  10);
setShakeChara( SP_start+ 490-parX, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 485-parX, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+485-parX, ct, 30, 10);
setEffRotateKey( SP_start+ 485-parX, ct, -40);
setEffScaleKey( SP_start+ 485-parX, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 486-parX, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ 487-parX, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 488-parX, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ 489-parX, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ 490-parX, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ 580-parX, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ 485-parX, ct, 255);
setEffAlphaKey( SP_start+ 575-parX, ct, 255);
setEffAlphaKey( SP_start+ 585-parX, ct, 0);

playSe( SP_start+ 473-parX, SE_11);
shuchusen = entryEffectLife( SP_start+ 473-parX, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ 473-parX, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage( SP_start+486-parX);

entryFade( SP_start+ 570-parX, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+580-parX);

end

