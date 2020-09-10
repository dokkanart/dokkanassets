print ("[lua]sp0021");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 100369;
SP_02 = 100370;
SP_03 = 100371;
SP_04 = 100372;
SP_05 = 100373;
SP_06 = 100374;
SP_07 = 100375;
SP_08 = 100376;

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



multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   10,   0,    -104, -134,   0);
setMoveKey(   99,   0,    -154, -184,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   10,   0, 2.3, 2.3);
setScaleKey(   99,   0, 3.0, 3.0);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

--[[

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
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

]]--

------------------------------------------------------
-- かめはめ波溜めからの発射(100F)
------------------------------------------------------
setVisibleUI(0, 0);
--changeAnime( 0, 0, 2);                       -- 溜め!
--playSe( 3, SE_03);

setShakeChara( 0, 0, 54, 50);

playSe( 5, SE_04);

playSe( 30, SE_03);
playSe( 40, SE_03);
playSe( 50, SE_03);

playSe( 85, SE_07);

kame_hand = entryEffect( 1, SP_01, 0x80,      0,  300,  70,  0);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, 1.0, 1.0);
setEffShake(1, kame_hand, 155, 8);

entryFade( 150, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  1,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 1, aura, 1.5, 1.5);
setShakeChara( 1, 0, 99, 5);
entryFadeBg( 1, 0, 154, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--ryu = entryEffectLife( 1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 1, ryu, -90);
--setEffScaleKey( 1, ryu, 2.0, 2.0);
shuchusen = entryEffectLife( 1, 906, 155, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 1, shuchusen, 1.0, 1.0);
setEffScaleKey( 41, shuchusen, 1.0, 1.0);
--setEffScaleKey( 50, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 21, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(21, ct, 40, 8);
setEffScaleKey(21, ct, 1.4, 1.4);

 --書き文字エントリー
ct = entryEffectLife( 90, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(90, ct, 32, 5);
setEffAlphaKey(90, ct, 255);
setEffAlphaKey(112, ct, 255);
setEffAlphaKey(122, ct, 0);
setEffScaleKey(90, ct, 0.0, 0.0);
setEffScaleKey(94, ct, 1.3, 1.3);
setEffScaleKey(114, ct, 1.3, 1.3);
setEffScaleKey(145, ct, 6.0, 6.0);


--155
------------------------------------------------------
-- 相手に迫ってガード(110F)
------------------------------------------------------
changeAnime( 253, 1, 102);
setAnimeLoop( 254, 1, 1);
setDisp( 253, 1, 1);
setDisp( 351, 1, 0);
--changeAnime( 191, 0, 31);                                    -- かめはめ発射ポーズ

--setMoveKey(  190,    1,      0,  0,   0);
setMoveKey(  255,    1,   600,  -600,   0);
setMoveKey(  256,    1,   600,  -600,   0);
setMoveKey(  270,    1,   150,  -100,   0);
setMoveKey(  351,    1,   150,  -100,   0);

setScaleKey(   255,   1, 2.0, 2.0);
setScaleKey(   256,   1, 2.0, 2.0);
setScaleKey(   270,   1, 1.5, 1.5);
setScaleKey(   351,   1, 1.5, 1.5);

setShakeChara( 253, 1, 100, 10);

kamehame_beam = entryEffect( 155, SP_02,  0x80,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffShake(155, kamehame_beam, 155, 8);
--setEffAlphaKey( 191, kamehame_beam, 0);
--setEffAlphaKey( 192, kamehame_beam, 0);
--setEffAlphaKey( 193, kamehame_beam, 255);

playSe( 156, SE_04);
playSe( 175, SE_07);
--playSe( 191, SE_07);

--spname = entryEffect( 156, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( 195, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 245, 3, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 345, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--350

-- ** エフェクト等 ** --
entryFadeBg( 155, 0, 198, 0, 0,0, 0, 255);       -- 暗め　背景
--entryFadeBg( 155, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 191, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 231, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


-- 書き文字エントリー
ct = entryEffectLife( 155, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(155, ct, 99, 20);
setEffScaleKey( 155, ct, 2.4, 2.4);
setEffRotateKey(155, ct, 70);
setEffAlphaKey(155, ct, 255);
setEffAlphaKey(215, ct, 255);
setEffAlphaKey(235, ct, 0);


-- 書き文字エントリー
--ct = entryEffectLife( 199, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(199, ct, 32, 5);
--setEffAlphaKey(199, ct, 255);
--setEffAlphaKey(221, ct, 255);
--setEffAlphaKey(231, ct, 0);
--setEffScaleKey(199, ct, 0.0, 0.0);
--setEffScaleKey(203, ct, 1.3, 1.3);
--setEffScaleKey(223, ct, 1.3, 1.3);
--setEffScaleKey(231, ct, 6.0, 6.0);
playSe( 260, SE_07);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 261; --エンドフェイズのフレーム数を置き換える

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
-- ベジータ(100F)
------------------------------------------------------

playSe( 318, SE_04);
--playSe( 321, SE_06);

kamehame_beam2 = entryEffect( 351, SP_03,   0x100, -1,  0,  0,  0);   -- ベジータが打つ
setEffScaleKey(301, kamehame_beam2, 1, 1);
setEffScaleKey(383, kamehame_beam2, 1, 1);
--setEffScaleKey(385, kamehame_beam2, 2.5, 2.5);
setDamage( 383, 1, 0);  -- ダメージ振動等

setDisp( 369, 1, 0);

entryFadeBg( 351, 0, 69, 0, 10, 10, 10, 150);          -- ベース暗め　背景

ryu2 = entryEffectLife( 351, 920, 159, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 351, ryu2,  -40);
setEffScaleKey(351, ryu2, 2, 2);


entryFade( 500, 3,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



kamehame_beam8 = entryEffect( 505, SP_04,   0x100, -1,  0,  -170,  0);   -- 弾が当たる

entryFadeBg( 370, 0,165, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 426, 0, 67, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景

playSe( 355, SE_03);
playSe( 426, SE_07);


--entryFade( 484, 1,  2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam3 = entryEffect( 505, SP_05,   0x80, - 1,  0,  0,  0);   -- 再びガード

setDisp( 505, 1, 1);
setDisp( 720, 1, 0);
setMoveKey(  505,    1,   -150,  -200,   0);
setMoveKey(  550,    1,   -70,  -150,   0);
setMoveKey(  580,    1,   -20,  -20,   0);
setMoveKey(  720,    1,   20,  -20,   0);
--setMoveKey(  256,    1,   600,  -600,   0);
--setMoveKey(  270,    1,   200,  -100,   0);
--setMoveKey(  351,    1,   200,  -100,   0);

setScaleKey(  505,   1,   1.2,  1.2);
setScaleKey(  550,   1,   1.2,  1.2);
setScaleKey(  550,   1,   1.7,  1.7);
setScaleKey(  720,   1,   1.7,  1.7);

setShakeChara( 505, 1, 215, 15);

shuchusen2 = entryEffectLife( 485, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 485, shuchusen2, 1.0, 1.0);
setEffScaleKey( 526, shuchusen2, 1.0, 1.0);
setEffScaleKey( 536, shuchusen2, 2.0, 2.0);

ct = entryEffectLife( 351, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(351, ct, 40, 8);
setEffScaleKey(351, ct, 1.4, 1.4);

-- 書き文字エントリー
ct = entryEffectLife( 430, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(430, ct, 32, 5);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(452, ct, 255);
setEffAlphaKey(452, ct, 0);
setEffScaleKey(430, ct, 0.0, 0.0);
setEffScaleKey(434, ct, 1.3, 1.3);
setEffScaleKey(450, ct, 1.3, 1.3);
setEffScaleKey(458, ct, 6.0, 6.0);

entryFadeBg( 505, 0, 234, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( 485, SE_07);


entryFade( 535, 8,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setDisp( 543, 1, 0);


shuchusen3 = entryEffectLife( 542, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 542, shuchusen3, 1.0, 1.0);
setEffScaleKey( 582, shuchusen3, 1.0, 1.0);
setEffScaleKey( 592, shuchusen3, 2.0, 2.0);

playSe( 525, SE_09);

entryFadeBg( 542, 0, 60, 0, 10, 10, 10, 180);       -- ベース暗め　背景


-- 書き文字エントリー
--ct = entryEffectLife( 301, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
--setEffShake(301, ct, 99, 20);
--setEffScaleKey( 301, ct, 2.4, 2.4);
--setEffRotateKey(301, ct, 70);
--setEffAlphaKey(301, ct, 255);
--setEffAlphaKey(361, ct, 255);
--setEffAlphaKey(381, ct, 0);

------------------------------------------------------
--かめはめ波を押し切る
------------------------------------------------------

--entryFade( 599, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam4 = entryEffect( 515, SP_06,   0x100, -1,  0,  0,  0);   -- いまだ！！
setEffScaleKey(383, kamehame_beam4, 1.0, 1.0);
--setEffShake(602, kamehame_beam4, 134, 15);

speff = entryEffect(  631,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  631,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 30, SE_03);
--playSe( 40, SE_03);
--playSe( 50, SE_03);


playSe( 570, SE_04);
playSe( 650, SE_04);

-- 書き文字エントリー
ct = entryEffectLife( 660, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(660, ct, 32, 5);
setEffAlphaKey(660, ct, 255);
setEffAlphaKey(682, ct, 255);
setEffAlphaKey(692, ct, 0);
setEffScaleKey(660, ct, 0.0, 0.0);
setEffScaleKey(664, ct, 1.3, 1.3);
setEffScaleKey(684, ct, 1.3, 1.3);
setEffScaleKey(691, ct, 6.0, 6.0);
--playSe( 231, SE_04);

-- 書き文字エントリー
--ct = entryEffectLife( 199, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(199, ct, 32, 5);
--setEffAlphaKey(199, ct, 255);
--setEffAlphaKey(221, ct, 255);
--setEffAlphaKey(231, ct, 0);
--setEffScaleKey(199, ct, 0.0, 0.0);
--setEffScaleKey(203, ct, 1.3, 1.3);
--setEffScaleKey(223, ct, 1.3, 1.3);
--setEffScaleKey(231, ct, 6.0, 6.0);
--playSe( 231, SE_04);

entryFadeBg( 602, 0, 136, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen4 = entryEffectLife( 602, 906, 136, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 602, shuchusen4, 1.0, 1.0);
setEffScaleKey( 642, shuchusen4, 1.0, 1.0);
--setEffScaleKey( 652, shuchusen4, 2.0, 2.0);

--ryu2 = entryEffectLife( 602, 921, 136, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 602, ryu2, 90);
--setEffScaleKey( 602, ryu2, 2.0, 2.0);

--entryFade( 733, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 719,   0, 1.5, 1.5);
setScaleKey( 720,   0, 1.0, 1.0);

playSe( 720, SE_05);
speff = entryEffect(  720,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 805, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 790+64-69, SE_06);


------------------------------------------------------
-- 悟飯が歩く
------------------------------------------------------

kamehame_beam5 = entryEffect( 810, SP_07,   0, -1,  0,  0,  0);   -- 悟飯が歩く
setEffShake(810, kamehame_beam5, 155, 8);
--playSe( 738, SE_05);
playSe( 803, SE_06);
playSe( 860, SE_06);
playSe( 921, SE_06);
playSe( 921, SE_06);
playSe( 978, SE_06);

entryFade( 1020, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  505,    1,   -150,  -200,   0);
setMoveKey(  550,    1,   -70,  -150,   0);

ryu7 = entryEffectLife( 1030, 921, 200, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 1030, ryu7, 40);
setEffScaleKey(1030, ryu7, 1.7, 1.7);

kamehame_beam6 = entryEffect( 1030, SP_08,   0x80, -1,  0,  0,  0);   -- かめはめ波が敵を押す
setEffShake(832, kamehame_beam6, 134, 15);

setDisp( 1030, 1, 1);
setDisp( 1150, 1, 0);

changeAnime( 1070, 1, 108);
setAnimeLoop( 1071, 1, 1);

setScaleKey( 1030,   1, 1.5, 1.5);
setScaleKey( 1125,   1, 1.5, 1.5);

setMoveKey(  1030,    1,   -80,  -90,   0);
setMoveKey(  1070,    1,   50,  50,   0);
setMoveKey(  1125,    1,  3750,  150,   0);
--setMoveKey(  550,    1,   -70,  -150,   0);

setShakeChara( 1030, 1, 215, 10);

entryFadeBg( 1030, 0, 198, 0, 0,0, 0, 255);       -- 暗め　背景

kamehame_beam5 = entryEffect( 1105, 190000,   0x80, -1,  0,  0,  0);   -- ぎゃんエフェクト

ct = entryEffectLife( 1115, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(1115, ct, 99, 20);
setEffScaleKey( 1115, ct, 0.1, 0.1);
setEffScaleKey( 1157, ct, 2.4, 2.4);
setEffScaleKey( 1170, ct, 2.8, 2.8);
setEffAlphaKey(1115, ct, 255);
setEffAlphaKey(1140, ct, 255);
setEffAlphaKey(1160, ct, 0);


playSe( 1052, 1024);
playSe( 1120, 1024);



SP_test = 800;


------------------------------------------------------
-- 爆発
------------------------------------------------------

--entryFade( 1095, 5,  4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--bom = entryEffect( 1100, 1556, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波

entryEffect( 1153,1569,0,-1,0,0,0);

--setDisp( spep_5, 1, 0);

playSe( 1153+4, 1022);

--playSe( 1107, 1024);

-- ダメージ表示
dealDamage(1153+17);

entryFade( 1153+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(1153+111);

else

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

--[[

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40+0x80,  0,  1,  0,  0); -- オーラ
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

]]--

------------------------------------------------------
-- かめはめ波溜めからの発射(100F)
------------------------------------------------------
setVisibleUI(0, 0);
--changeAnime( 0, 0, 2);                       -- 溜め!
--playSe( 3, SE_03);

setShakeChara( 0, 0, 54, 50);

playSe( 5, SE_04);

playSe( 30, SE_03);
playSe( 40, SE_03);
playSe( 50, SE_03);

playSe( 85, SE_07);

kame_hand = entryEffect( 1, SP_01, 0x80,      0,  300,  -70,  0);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, -1.0, 1.0);
setEffShake(1, kame_hand, 155, 8);

entryFade( 150, 3, 9, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  1,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 1, aura, 1.5, 1.5);
setShakeChara( 1, 0, 99, 5);
entryFadeBg( 1, 0, 154, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--ryu = entryEffectLife( 1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 1, ryu, -90);
--setEffScaleKey( 1, ryu, 2.0, 2.0);
shuchusen = entryEffectLife( 1, 906, 155, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 1, shuchusen, 1.0, 1.0);
setEffScaleKey( 41, shuchusen, 1.0, 1.0);
--setEffScaleKey( 50, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 21, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(21, ct, 40, 8);
setEffScaleKey(21, ct, 1.4, 1.4);

 --書き文字エントリー
ct = entryEffectLife( 90, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(90, ct, 32, 5);
setEffAlphaKey(90, ct, 255);
setEffAlphaKey(112, ct, 255);
setEffAlphaKey(122, ct, 0);
setEffScaleKey(90, ct, 0.0, 0.0);
setEffScaleKey(94, ct, 1.3, 1.3);
setEffScaleKey(114, ct, 1.3, 1.3);
setEffScaleKey(145, ct, 6.0, 6.0);


--155
------------------------------------------------------
-- 相手に迫ってガード(110F)
------------------------------------------------------
changeAnime( 253, 1, 102);
setAnimeLoop( 254, 1, 1);
setDisp( 253, 1, 1);
setDisp( 351, 1, 0);
--changeAnime( 191, 0, 31);                                    -- かめはめ発射ポーズ

--setMoveKey(  190,    1,      0,  0,   0);
setMoveKey(  255,    1,   600,  -600,   0);
setMoveKey(  256,    1,   600,  -600,   0);
setMoveKey(  270,    1,   150,  -100,   0);
setMoveKey(  351,    1,   150,  -100,   0);

setScaleKey(   255,   1, 2.0, 2.0);
setScaleKey(   256,   1, 2.0, 2.0);
setScaleKey(   270,   1, 1.5, 1.5);
setScaleKey(   351,   1, 1.5, 1.5);

setShakeChara( 253, 1, 100, 10);

kamehame_beam = entryEffect( 155, SP_02,  0x80,  -1,  300,  0,  0);   -- 伸びるかめはめ波
setEffShake(155, kamehame_beam, 155, 8);
--setEffAlphaKey( 191, kamehame_beam, 0);
--setEffAlphaKey( 192, kamehame_beam, 0);
--setEffAlphaKey( 193, kamehame_beam, 255);

playSe( 156, SE_04);
playSe( 175, SE_07);
--playSe( 191, SE_07);

--spname = entryEffect( 156, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( 195, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 245, 3, 5, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( 345, 3, 5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
--350

-- ** エフェクト等 ** --
entryFadeBg( 155, 0, 198, 0, 0,0, 0, 255);       -- 暗め　背景
--entryFadeBg( 155, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 191, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 231, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


-- 書き文字エントリー
ct = entryEffectLife( 155, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(155, ct, 99, 20);
setEffScaleKey( 155, ct, 2.4, 2.4);
setEffRotateKey(155, ct, -70);
setEffAlphaKey(155, ct, 255);
setEffAlphaKey(215, ct, 255);
setEffAlphaKey(235, ct, 0);


-- 書き文字エントリー
--ct = entryEffectLife( 199, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(199, ct, 32, 5);
--setEffAlphaKey(199, ct, 255);
--setEffAlphaKey(221, ct, 255);
--setEffAlphaKey(231, ct, 0);
--setEffScaleKey(199, ct, 0.0, 0.0);
--setEffScaleKey(203, ct, 1.3, 1.3);
--setEffScaleKey(223, ct, 1.3, 1.3);
--setEffScaleKey(231, ct, 6.0, 6.0);
playSe( 260, SE_07);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 261; --エンドフェイズのフレーム数を置き換える

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
-- ベジータ(100F)
------------------------------------------------------

playSe( 318, SE_04);
--playSe( 321, SE_06);

kamehame_beam2 = entryEffect( 351, SP_03,   0x100, -1,  0,  0,  0);   -- ベジータが打つ
setEffScaleKey(301, kamehame_beam2, 1, 1);
setEffScaleKey(383, kamehame_beam2, 1, 1);
--setEffScaleKey(385, kamehame_beam2, 2.5, 2.5);
setDamage( 383, 1, 0);  -- ダメージ振動等

setDisp( 369, 1, 0);

entryFadeBg( 351, 0, 69, 0, 10, 10, 10, 150);          -- ベース暗め　背景

ryu2 = entryEffectLife( 351, 920, 159, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 351, ryu2,  -40);
setEffScaleKey(351, ryu2, 2, 2);


entryFade( 500, 3,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade



kamehame_beam8 = entryEffect( 505, SP_04,   0x100, -1,  0,  -170,  0);   -- 弾が当たる

entryFadeBg( 370, 0,165, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 426, 0, 67, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景

playSe( 355, SE_03);
playSe( 426, SE_07);


--entryFade( 484, 1,  2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam3 = entryEffect( 505, SP_05,   0x80, - 1,  0,  0,  0);   -- 再びガード

setDisp( 505, 1, 1);
setDisp( 720, 1, 0);
setMoveKey(  505,    1,   -150,  -200,   0);
setMoveKey(  550,    1,   -70,  -150,   0);
setMoveKey(  580,    1,   -20,  -20,   0);
setMoveKey(  720,    1,   20,  -20,   0);
--setMoveKey(  256,    1,   600,  -600,   0);
--setMoveKey(  270,    1,   200,  -100,   0);
--setMoveKey(  351,    1,   200,  -100,   0);

setScaleKey(  505,   1,   1.2,  1.2);
setScaleKey(  550,   1,   1.2,  1.2);
setScaleKey(  550,   1,   1.7,  1.7);
setScaleKey(  720,   1,   1.7,  1.7);

setShakeChara( 505, 1, 215, 15);

shuchusen2 = entryEffectLife( 485, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 485, shuchusen2, 1.0, 1.0);
setEffScaleKey( 526, shuchusen2, 1.0, 1.0);
setEffScaleKey( 536, shuchusen2, 2.0, 2.0);

ct = entryEffectLife( 351, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(351, ct, 40, 8);
setEffScaleKey(351, ct, 1.4, 1.4);

-- 書き文字エントリー
ct = entryEffectLife( 430, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(430, ct, 32, 5);
setEffAlphaKey(430, ct, 255);
setEffAlphaKey(452, ct, 255);
setEffAlphaKey(452, ct, 0);
setEffScaleKey(430, ct, 0.0, 0.0);
setEffScaleKey(434, ct, 1.3, 1.3);
setEffScaleKey(450, ct, 1.3, 1.3);
setEffScaleKey(458, ct, 6.0, 6.0);

entryFadeBg( 505, 0, 234, 0, 0, 0, 0, 255);       -- ベース暗め　背景

playSe( 485, SE_07);


entryFade( 535, 8,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setDisp( 543, 1, 0);


shuchusen3 = entryEffectLife( 542, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 542, shuchusen3, 1.0, 1.0);
setEffScaleKey( 582, shuchusen3, 1.0, 1.0);
setEffScaleKey( 592, shuchusen3, 2.0, 2.0);

playSe( 525, SE_09);

entryFadeBg( 542, 0, 60, 0, 10, 10, 10, 180);       -- ベース暗め　背景


-- 書き文字エントリー
--ct = entryEffectLife( 301, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
--setEffShake(301, ct, 99, 20);
--setEffScaleKey( 301, ct, 2.4, 2.4);
--setEffRotateKey(301, ct, 70);
--setEffAlphaKey(301, ct, 255);
--setEffAlphaKey(361, ct, 255);
--setEffAlphaKey(381, ct, 0);

------------------------------------------------------
--かめはめ波を押し切る
------------------------------------------------------

--entryFade( 599, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--kamehame_beam4 = entryEffect( 515, SP_06,   0x100, -1,  0,  0,  0);   -- いまだ！！
--setEffScaleKey(383, kamehame_beam4, 1.0, 1.0);
--setEffShake(602, kamehame_beam4, 134, 15);

--speff = entryEffect(  631,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  631,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 30, SE_03);
--playSe( 40, SE_03);
--playSe( 50, SE_03);


--playSe( 570, SE_04);
--playSe( 650, SE_04);

-- 書き文字エントリー
--ct = entryEffectLife( 660, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(660, ct, 32, 5);
--setEffAlphaKey(660, ct, 255);
--setEffAlphaKey(682, ct, 255);
--setEffAlphaKey(692, ct, 0);
--setEffScaleKey(660, ct, 0.0, 0.0);
--setEffScaleKey(664, ct, 1.3, 1.3);
--setEffScaleKey(684, ct, 1.3, 1.3);
--setEffScaleKey(691, ct, 6.0, 6.0);
--playSe( 231, SE_04);

-- 書き文字エントリー
--ct = entryEffectLife( 199, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
--setEffShake(199, ct, 32, 5);
--setEffAlphaKey(199, ct, 255);
--setEffAlphaKey(221, ct, 255);
--setEffAlphaKey(231, ct, 0);
--setEffScaleKey(199, ct, 0.0, 0.0);
--setEffScaleKey(203, ct, 1.3, 1.3);
--setEffScaleKey(223, ct, 1.3, 1.3);
--setEffScaleKey(231, ct, 6.0, 6.0);
--playSe( 231, SE_04);

entryFadeBg( 602, 0, 136, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen4 = entryEffectLife( 602, 906, 136, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 602, shuchusen4, 1.0, 1.0);
setEffScaleKey( 642, shuchusen4, 1.0, 1.0);
--setEffScaleKey( 652, shuchusen4, 2.0, 2.0);

--ryu2 = entryEffectLife( 602, 921, 136, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 602, ryu2, 90);
--setEffScaleKey( 602, ryu2, 2.0, 2.0);

--entryFade( 733, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade




------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 719,   0, 1.5, 1.5);
setScaleKey( 720,   0, 1.0, 1.0);

playSe( 720, SE_05);
speff = entryEffect(  720,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 805, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 790+64-69, SE_06);


------------------------------------------------------
-- 悟飯が歩く
------------------------------------------------------

kamehame_beam5 = entryEffect( 810, SP_07,   0, -1,  0,  0,  0);   -- 悟飯が歩く
setEffScaleKey( 810, kamehame_beam5, -1.0, 1.0);
setEffShake(810, kamehame_beam5, 155, 8);
--playSe( 738, SE_05);
playSe( 803, SE_06);
playSe( 860, SE_06);
playSe( 921, SE_06);
playSe( 921, SE_06);
playSe( 978, SE_06);

entryFade( 1020, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(  505,    1,   -150,  -200,   0);
setMoveKey(  550,    1,   -70,  -150,   0);

ryu7 = entryEffectLife( 1030, 921, 200, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 1030, ryu7, 40);
setEffScaleKey(1030, ryu7, 1.7, 1.7);

kamehame_beam6 = entryEffect( 1030, SP_08,   0x80, -1,  0,  0,  0);   -- かめはめ波が敵を押す
setEffShake(832, kamehame_beam6, 134, 15);

setDisp( 1030, 1, 1);
setDisp( 1150, 1, 0);

changeAnime( 1070, 1, 108);
setAnimeLoop( 1071, 1, 1);

setScaleKey( 1030,   1, 1.5, 1.5);
setScaleKey( 1125,   1, 1.5, 1.5);

setMoveKey(  1030,    1,   -80,  -90,   0);
setMoveKey(  1070,    1,   50,  50,   0);
setMoveKey(  1125,    1,  3750,  150,   0);
--setMoveKey(  550,    1,   -70,  -150,   0);

setShakeChara( 1030, 1, 215, 10);

entryFadeBg( 1030, 0, 198, 0, 0,0, 0, 255);       -- 暗め　背景

kamehame_beam5 = entryEffect( 1105, 190000,   0x80, -1,  0,  0,  0);   -- ぎゃんエフェクト

ct = entryEffectLife( 1115, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(1115, ct, 99, 20);
setEffScaleKey( 1115, ct, 0.1, 0.1);
setEffScaleKey( 1157, ct, 2.4, 2.4);
setEffScaleKey( 1170, ct, 2.8, 2.8);
setEffAlphaKey(1115, ct, 255);
setEffAlphaKey(1140, ct, 255);
setEffAlphaKey(1160, ct, 0);


playSe( 1052, 1024);
playSe( 1120, 1024);



SP_test = 800;


------------------------------------------------------
-- 爆発
------------------------------------------------------

--entryFade( 1095, 5,  4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--bom = entryEffect( 1100, 1556, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波

entryEffect( 1153,1569,0,-1,0,0,0);

--setDisp( spep_5, 1, 0);

playSe( 1153+4, 1022);

--playSe( 1107, 1024);

-- ダメージ表示
dealDamage(1153+17);

entryFade( 1153+101, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(1153+111);

end
