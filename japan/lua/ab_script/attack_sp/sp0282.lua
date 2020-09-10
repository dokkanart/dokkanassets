print ("[lua]sp0021");

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_01 = 102164;
SP_02 = 102165;
SP_03 = 102166;
SP_04 = 102167;
SP_05 = 102168;
SP_06 = 102169;
SP_07 = 102170;
SP_08 = 102171;
SP_09 = 102172;

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
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 2);                       -- 溜め!
--playSe( 3, SE_03);

setShakeChara( 0, 0, 54, 50);

--entryEffect(  1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  11,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  11,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 11, SE_04);

kame_hand = entryEffect( 1, SP_01, 0x40+0x80,      0,  300,  100,  50);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, 1.0, 1.0);

entryFade( 96, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  1,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 1, aura, 1.5, 1.5);
setShakeChara( 1, 0, 99, 5);
entryFadeBg( 1, 0, 99, 0, 10, 10, 10, 180);       -- ベース暗め　背景
ryu = entryEffectLife( 1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 1, ryu, -90);
--setEffScaleKey( 1, ryu, 2.0, 2.0);
shuchusen = entryEffectLife( 1, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 1, shuchusen, 1.0, 1.0);
setEffScaleKey( 41, shuchusen, 1.0, 1.0);
setEffScaleKey( 50, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 21, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(21, ct, 40, 8);
setEffScaleKey(21, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 100,   0, 1.5, 1.5);
setScaleKey( 101,   0, 1.0, 1.0);

playSe( 101, SE_05);
speff = entryEffect(  101,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 186, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64-69, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 190, 0, 0);
changeAnime( 191, 0, 31);                                    -- かめはめ発射ポーズ

--setMoveKey(  190,    0,      0,  0,   0);
--setMoveKey(  191,    0,   -600,  0,   0);
--setMoveKey(  192,    0,   -600,  0,   0);
--setMoveKey(  201,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 191, SP_02, 109, 0,  0,  300,  -384,  -240);   -- 伸びるかめはめ波
setEffAlphaKey( 191, kamehame_beam, 0);
setEffAlphaKey( 192, kamehame_beam, 0);
setEffAlphaKey( 193, kamehame_beam, 255);

playSe( 191, SE_04);
--playSe( 191, SE_07);

spname = entryEffect( 191, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  230,    0,   -100,  0,   0);
setMoveKey(  231,    0,   -100,  0,   0);
setMoveKey(  239,    0,   -1100,  0,   0);

entryFade( 296, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 191, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 191, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 231, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


ryu = entryEffectLife( 191, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 191, ryu, -90);
setEffScaleKey( 191, ryu, 2.0, 2.0);

setShakeChara( 236, 0, 54, 50);

shuchusen = entryEffectLife( 191, 906, 109, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 191, shuchusen, 1.0, 1.0);
setEffScaleKey( 231, shuchusen, 1.0, 1.0);
setEffScaleKey( 240, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 199, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(199, ct, 32, 5);
setEffAlphaKey(199, ct, 255);
setEffAlphaKey(221, ct, 255);
setEffAlphaKey(231, ct, 0);
setEffScaleKey(199, ct, 0.0, 0.0);
setEffScaleKey(203, ct, 1.3, 1.3);
setEffScaleKey(223, ct, 1.3, 1.3);
setEffScaleKey(231, ct, 6.0, 6.0);
playSe( 231, SE_04);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 301, 0, 0);
setDisp( 301, 1, 1);
changeAnime( 301, 1, 101);                        -- ガード
setMoveKey(  300,    1,  0,  0,   0);
setMoveKey(  301,    1,  0,  0,   0);
setMoveKey(  302,    1,  0,  0,   0);
setMoveKey(  544,    1,  0,  0,   0);
setScaleKey( 300,    1,  1.6, 1.6);
setScaleKey( 301,    1,  1.6, 1.6);

--setMoveKey(  331,    1,   120,  0,   0);
setScaleKey(  331,   1,   1.2,  1.2);
setScaleKey(  484,   1,   1.2,  1.2);

playSe( 318, SE_04);
--playSe( 321, SE_06);

kamehame_beam2 = entryEffect( 301, SP_03,   0, -1,  0,  0,  0);   -- ザーボンドドリアが敵を挟む
setEffScaleKey(301, kamehame_beam2, 1, 1);
setEffScaleKey(383, kamehame_beam2, 1, 1);
setEffScaleKey(385, kamehame_beam2, 2.5, 2.5);
setDamage( 383, 1, 0);  -- ダメージ振動等

setDisp( 369, 1, 0);

entryFadeBg( 301, 0, 69, 0, 10, 10, 10, 150);          -- ベース暗め　背景

ryu2 = entryEffectLife( 301, 920, 69, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 301, ryu2, 40);
setEffScaleKey(301, ryu2, 2, 2);


entryFade( 367, 1,  2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam3 = entryEffect( 370, SP_04,   0, -1,  0,  0,  0);   -- ザーボンドドリアが光弾発射
entryFadeBg( 370, 0, 63, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 426, 0, 67, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景

playSe( 372, SE_03);
playSe( 426, SE_07);


entryFade( 484, 1,  2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam3 = entryEffect( 486, SP_05,   0x40, 1,  0,  0,  0);   -- 光弾が迫る

setDisp( 485, 1, 1);
setScaleKey(  485,   1,   1.2,  1.2);
setScaleKey(  542,   1,   1.8,  1.8);
setShakeChara( 485, 1, 52, 10);

shuchusen2 = entryEffectLife( 485, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 485, shuchusen2, 1.0, 1.0);
setEffScaleKey( 526, shuchusen2, 1.0, 1.0);
setEffScaleKey( 536, shuchusen2, 2.0, 2.0);

ryu3 = entryEffectLife( 485, 920, 55, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 485, ryu3, 40);
setEffScaleKey(485, ryu3, 2, 2);

entryFadeBg( 485, 0, 55, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( 493, SE_07);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 510; --エンドフェイズのフレーム数を置き換える

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




entryFade( 535, 8,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( 543, 1, 0);

ryu4 = entryEffectLife( 542, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 542, ryu4, 40);
setEffScaleKey(542, ryu4, 2, 2);

baku = entryEffectLife( 542, 1509, 60, 0x80,  -1,  0,  0,  0);   -- 爆発
setEffShake(542, baku, 60, 15);
setEffScaleKey(542, baku, 1.3, 1.3);
setEffScaleKey(601, baku, 1.5, 1.5);

shuchusen3 = entryEffectLife( 542, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 542, shuchusen3, 1.0, 1.0);
setEffScaleKey( 582, shuchusen3, 1.0, 1.0);
setEffScaleKey( 592, shuchusen3, 2.0, 2.0);

playSe( 545, SE_09);

entryFadeBg( 542, 0, 60, 0, 10, 10, 10, 180);       -- ベース暗め　背景


--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--entryFade( 393, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--playSe( 386, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( 386, 1, 108);
--setMoveKey(  386, 1,  120,    0,  0);
--setMoveKey(  400, 1,  400,    0,  0);
--setScaleKey( 386, 1,  1.6, 1.6);
--setScaleKey( 389, 1,  1.5, 1.5);
--setScaleKey( 399, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
--setShakeChara( 301, 1, 99, 20);



--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
--ct = entryEffectLife( 301, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
--setEffShake(301, ct, 99, 20);
--setEffScaleKey( 301, ct, 2.4, 2.4);
--setEffRotateKey(301, ct, 70);
--setEffAlphaKey(301, ct, 255);
--setEffAlphaKey(361, ct, 255);
--setEffAlphaKey(381, ct, 0);

------------------------------------------------------
-- デスボール溜め 
------------------------------------------------------

entryFade( 599, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam4 = entryEffect( 602, SP_06,   0, -1,  0,  0,  0);   -- デスボール
setEffShake(602, kamehame_beam4, 134, 15);

playSe( 603, SE_04);
playSe( 660, SE_04);

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
setEffScaleKey( 652, shuchusen4, 2.0, 2.0);

ryu2 = entryEffectLife( 602, 921, 136, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 602, ryu2, 90);
setEffScaleKey( 602, ryu2, 2.0, 2.0);

entryFade( 733, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam5 = entryEffect( 738, SP_07,   0, -1,  0,  0,  0);   -- カットイン
playSe( 738, SE_05);
playSe( 803, SE_06);

entryFade( 827, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam6 = entryEffect( 832, SP_08,   0, -1,  0,  0,  0);   -- デスボール投げ
setEffShake(832, kamehame_beam6, 134, 15);

setDisp( 832, 0, 1);
setDisp( 945, 0, 0);
changeAnime( 832, 0, 30);  
setMoveKey(  831,    0,  800,  300,   0);
setMoveKey(  848,    0,  -10,  -100,   0);
setMoveKey(  877,    0,  -150,  -200,   0);
setMoveKey(  945,    0,  -1000,  0,   0);
setScaleKey(  831,   0,   1.7,  1.7);
setScaleKey(  848,   0,   1.2,  1.2);
setShakeChara( 831, 0, 52, 15);

playSe( 887, SE_07);

entryFade( 887, 1,  1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 一瞬


shuchusen5 = entryEffectLife( 832, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 832, shuchusen5, 1.0, 1.0);
setEffScaleKey( 872, shuchusen5, 1.0, 1.0);
setEffScaleKey( 882, shuchusen5, 2.0, 2.0);

ryu3 = entryEffectLife( 832, 921, 116, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 832, ryu3, 90);
--setEffScaleKey( 832, ryu3, 2.0, 2.0);

entryFadeBg( 832, 0, 116, 0, 10, 10, 10, 180);       -- ベース暗め　背景


entryFade( 943, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen6 = entryEffectLife( 948, 906, 91, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 948, shuchusen6, 1.0, 1.0);
setEffScaleKey( 988, shuchusen6, 1.0, 1.0);
setEffScaleKey( 998, shuchusen6, 2.0, 2.0);

ryu4 = entryEffectLife( 948, 921, 91, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 832, ryu3, 90);
--setEffScaleKey( 832, ryu3, 2.0, 2.0);

entryFadeBg( 948, 0, 91, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kamehame_beam7 = entryEffect( 948, SP_09,   0x80, 1,  0,  0,  0);   -- デスボール迫る
changeAnime( 948, 1, 106);
setDisp( 948, 1, 1);
setDisp( 1044, 1, 0);
setMoveKey(  948,    1,  300,  -250,   0);
setMoveKey(  963,    1,  200,  -100,   0);
setScaleKey(  948,   1,   2.7,  2.7);
setScaleKey(  963,   1,   2.2,  2.2);
setScaleKey(  1044,   1,   2.2,  2.2);
setShakeChara( 948, 1, 102, 15);

-- 書き文字エントリー
ct = entryEffectLife( 948, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(948, ct, 99, 20);
setEffScaleKey( 948, ct, 2.4, 2.4);
setEffRotateKey(948, ct, 70);
setEffAlphaKey(948, ct, 255);
setEffAlphaKey(1008, ct, 255);
setEffAlphaKey(1028, ct, 0);

playSe( 950, SE_06);

entryFade( 1039, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


kamehame_beam = entryEffect( 1043, 190003,   0x80, -1,  0,  0,  0);   -- ギャン --40

ct = entryEffectLife( 1054, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(1049, ct, 99, 20);
setEffScaleKey( 1049, ct, 0.1, 0.1);
setEffScaleKey( 1080, ct, 2.4, 2.4);
setEffScaleKey( 1094, ct, 2.8, 2.8);
setEffAlphaKey(1049, ct, 255);
setEffAlphaKey(1074, ct, 255);
setEffAlphaKey(1094, ct, 0);

playSe( 1052, 1024);


SP_test = 700;

--[[
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( 400, 1, 1);
setMoveKey(  400,    1,  100,  0,   0);
setScaleKey( 400,    1,  1.0, 1.0);
setMoveKey(  401,    1,    0,   0,   128);
setScaleKey( 401,    1,  0.1, 0.1);

changeAnime( 401, 1, 107);                         -- 手前ダメージ
entryEffect( 409, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 409, SE_10);

setMoveKey(  409,   1,    0,   0,   128);
setMoveKey(  416,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 417, 1, 0);  -- ダメージ振動等
setShake(408,6,15);
setShake(414,15,10);

setRotateKey( 401,  1,  30 );
setRotateKey( 403,  1,  80 );
setRotateKey( 405,  1, 120 );
setRotateKey( 407,  1, 160 );
setRotateKey( 409,  1, 200 );
setRotateKey( 411,  1, 260 );
setRotateKey( 413,  1, 320 );
setRotateKey( 415,  1,   0 );

setShakeChara( 416, 1, 5,  10);
setShakeChara( 421, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 416, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(416, ct, 30, 10);
setEffRotateKey( 416, ct, -40);
setEffScaleKey( 416, ct, 4.0, 4.0);
setEffScaleKey( 417, ct, 2.0, 2.0);
setEffScaleKey( 418, ct, 2.6, 2.6);
setEffScaleKey( 419, ct, 4.0, 4.0);
setEffScaleKey( 420, ct, 2.6, 2.6);
setEffScaleKey( 421, ct, 3.8, 3.8);
setEffScaleKey( 511, ct, 3.8, 3.8);
setEffAlphaKey( 416, ct, 255);
setEffAlphaKey( 506, ct, 255);
setEffAlphaKey( 516, ct, 0);

playSe( 404, SE_11);
shuchusen = entryEffectLife( 404, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 404, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
]]--

entryFade( 1095, 5,  4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


bom = entryEffect( 1100, 1556, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波

playSe( 1107, 1024);

-- ダメージ表示
dealDamage(SP_test+417);

entryFade( SP_test+501, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_test+511);

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
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(0, 0);
changeAnime( 0, 0, 2);                       -- 溜め!
--playSe( 3, SE_03);

setShakeChara( 0, 0, 54, 50);

--entryEffect(  1,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
--entryEffect(  1,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  11,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  11,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 11, SE_04);

kame_hand = entryEffect( 1, SP_01, 0x40+0x80,      0,  300,  100,  50);   -- 手のカメハメ波部
setEffScaleKey( 1, kame_hand, 1.0, 1.0);

entryFade( 96, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  1,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 1, aura, 1.5, 1.5);
setShakeChara( 1, 0, 99, 5);
entryFadeBg( 1, 0, 99, 0, 10, 10, 10, 180);       -- ベース暗め　背景
ryu = entryEffectLife( 1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 1, ryu, -90);
--setEffScaleKey( 1, ryu, 2.0, 2.0);
shuchusen = entryEffectLife( 1, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 1, shuchusen, 1.0, 1.0);
setEffScaleKey( 41, shuchusen, 1.0, 1.0);
setEffScaleKey( 50, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 21, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(21, ct, 40, 8);
setEffScaleKey(21, ct, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------
setScaleKey( 100,   0, 1.5, 1.5);
setScaleKey( 101,   0, 1.0, 1.0);

playSe( 101, SE_05);
speff = entryEffect(  101,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade( 186, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64-69, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( 190, 0, 0);
changeAnime( 191, 0, 31);                                    -- かめはめ発射ポーズ

--setMoveKey(  190,    0,      0,  0,   0);
--setMoveKey(  191,    0,   -600,  0,   0);
--setMoveKey(  192,    0,   -600,  0,   0);
--setMoveKey(  201,    0,   -100,  0,   0);

kamehame_beam = entryEffectLife( 191, SP_02, 109, 0,  0,  300,  584,  -240);   -- 伸びるかめはめ波
setEffScaleKey( 191, kamehame_beam, -1.0, 1.0);
setEffAlphaKey( 191, kamehame_beam, 0);
setEffAlphaKey( 192, kamehame_beam, 0);
setEffAlphaKey( 193, kamehame_beam, 255);

playSe( 191, SE_04);
--playSe( 191, SE_07);

spname = entryEffect( 191, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
setMoveKey(  230,    0,   -100,  0,   0);
setMoveKey(  231,    0,   -100,  0,   0);
setMoveKey(  239,    0,   -1100,  0,   0);

entryFade( 296, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 191, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 191, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 231, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


ryu = entryEffectLife( 191, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 191, ryu, -90);
setEffScaleKey( 191, ryu, 2.0, 2.0);

setShakeChara( 236, 0, 54, 50);

shuchusen = entryEffectLife( 191, 906, 109, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 191, shuchusen, 1.0, 1.0);
setEffScaleKey( 231, shuchusen, 1.0, 1.0);
setEffScaleKey( 240, shuchusen, 2.0, 2.0);

--entryFlash( (260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( 199, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(199, ct, 32, 5);
setEffAlphaKey(199, ct, 255);
setEffAlphaKey(221, ct, 255);
setEffAlphaKey(231, ct, 0);
setEffScaleKey(199, ct, 0.0, 0.0);
setEffScaleKey(203, ct, 1.3, 1.3);
setEffScaleKey(223, ct, 1.3, 1.3);
setEffScaleKey(231, ct, 6.0, 6.0);
playSe( 231, SE_04);

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( 301, 0, 0);
setDisp( 301, 1, 1);
changeAnime( 301, 1, 101);                        -- ガード
setMoveKey(  300,    1,  0,  0,   0);
setMoveKey(  301,    1,  0,  0,   0);
setMoveKey(  302,    1,  0,  0,   0);
setMoveKey(  544,    1,  0,  0,   0);
setScaleKey( 300,    1,  1.6, 1.6);
setScaleKey( 301,    1,  1.6, 1.6);

--setMoveKey(  331,    1,   120,  0,   0);
setScaleKey(  331,   1,   1.2,  1.2);
setScaleKey(  484,   1,   1.2,  1.2);

playSe( 318, SE_04);
--playSe( 321, SE_06);

kamehame_beam2 = entryEffect( 301, SP_03,   0, -1,  0,  0,  0);   -- ザーボンドドリアが敵を挟む
setEffScaleKey(301, kamehame_beam2, 1, 1);
setEffScaleKey(383, kamehame_beam2, 1, 1);
setEffScaleKey(385, kamehame_beam2, 2.5, 2.5);
setDamage( 383, 1, 0);  -- ダメージ振動等

setDisp( 369, 1, 0);

entryFadeBg( 301, 0, 69, 0, 10, 10, 10, 150);          -- ベース暗め　背景

ryu2 = entryEffectLife( 301, 920, 69, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 301, ryu2, 40);
setEffScaleKey(301, ryu2, 2, 2);


entryFade( 367, 1,  2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam3 = entryEffect( 370, SP_04,   0, -1,  0,  0,  0);   -- ザーボンドドリアが光弾発射
entryFadeBg( 370, 0, 63, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 426, 0, 67, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景

playSe( 372, SE_03);
playSe( 426, SE_07);


entryFade( 484, 1,  2, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam3 = entryEffect( 486, SP_05,   0x40, 1,  0,  0,  0);   -- 光弾が迫る

setDisp( 485, 1, 1);
setScaleKey(  485,   1,   1.2,  1.2);
setScaleKey(  542,   1,   1.8,  1.8);
setShakeChara( 485, 1, 52, 10);

shuchusen2 = entryEffectLife( 485, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 485, shuchusen2, 1.0, 1.0);
setEffScaleKey( 526, shuchusen2, 1.0, 1.0);
setEffScaleKey( 536, shuchusen2, 2.0, 2.0);

ryu3 = entryEffectLife( 485, 920, 55, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 485, ryu3, 40);
setEffScaleKey(485, ryu3, 2, 2);

entryFadeBg( 485, 0, 55, 0, 10, 10, 10, 180);       -- ベース暗め　背景

playSe( 493, SE_07);



------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 510; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
setEffScaleKey( SP_dodge, speff, 1.0, 1.0);
setEffAlphaKey( SP_dodge, speff, 255);

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

endPhase(SP_dodge+10);
do return end
else end


entryFade( 535, 8,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setDisp( 543, 1, 0);

ryu4 = entryEffectLife( 542, 920, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( 542, ryu4, 40);
setEffScaleKey(542, ryu4, 2, 2);

baku = entryEffectLife( 542, 1509, 60, 0x80,  -1,  0,  0,  0);   -- 爆発
setEffShake(542, baku, 60, 15);
setEffScaleKey(542, baku, 1.3, 1.3);
setEffScaleKey(601, baku, 1.5, 1.5);

shuchusen3 = entryEffectLife( 542, 906, 60, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 542, shuchusen3, 1.0, 1.0);
setEffScaleKey( 582, shuchusen3, 1.0, 1.0);
setEffScaleKey( 592, shuchusen3, 2.0, 2.0);

playSe( 545, SE_09);

entryFadeBg( 542, 0, 60, 0, 10, 10, 10, 180);       -- ベース暗め　背景


--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

--entryFade( 393, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


--playSe( 386, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( 386, 1, 108);
--setMoveKey(  386, 1,  120,    0,  0);
--setMoveKey(  400, 1,  400,    0,  0);
--setScaleKey( 386, 1,  1.6, 1.6);
--setScaleKey( 389, 1,  1.5, 1.5);
--setScaleKey( 399, 1,  0.2, 0.2);

-- ** エフェクト等 ** --
--setShakeChara( 301, 1, 99, 20);



--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
--ct = entryEffectLife( 301, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
--setEffShake(301, ct, 99, 20);
--setEffScaleKey( 301, ct, 2.4, 2.4);
--setEffRotateKey(301, ct, 70);
--setEffAlphaKey(301, ct, 255);
--setEffAlphaKey(361, ct, 255);
--setEffAlphaKey(381, ct, 0);

------------------------------------------------------
-- デスボール溜め 
------------------------------------------------------

entryFade( 599, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam4 = entryEffect( 602, SP_06,   0, -1,  0,  0,  0);   -- デスボール
setEffScaleKey( 602, kamehame_beam4, -1.0, 1.0);
setEffShake(602, kamehame_beam4, 134, 15);

playSe( 603, SE_04);
playSe( 660, SE_04);

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

entryFadeBg( 602, 0, 136, 0, 10, 10, 10, 180);       -- ベース暗め　背景

shuchusen4 = entryEffectLife( 602, 906, 136, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 602, shuchusen4, 1.0, 1.0);
setEffScaleKey( 642, shuchusen4, 1.0, 1.0);
setEffScaleKey( 652, shuchusen4, 2.0, 2.0);

ryu2 = entryEffectLife( 602, 921, 136, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 602, ryu2, 90);
setEffScaleKey( 602, ryu2, 2.0, 2.0);

entryFade( 733, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam5 = entryEffect( 738, SP_07,   0, -1,  0,  0,  0);   -- カットイン
setEffScaleKey( 738, kamehame_beam5, -1.0, 1.0);
playSe( 738, SE_05);
playSe( 803, SE_06);

entryFade( 827, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

kamehame_beam6 = entryEffect( 832, SP_08,   0, -1,  0,  0,  0);   -- デスボール投げ
setEffShake(832, kamehame_beam6, 134, 15);

setDisp( 832, 0, 1);
setDisp( 945, 0, 0);
changeAnime( 832, 0, 30);  
setMoveKey(  831,    0,  800,  300,   0);
setMoveKey(  848,    0,  -10,  -100,   0);
setMoveKey(  877,    0,  -150,  -200,   0);
setMoveKey(  945,    0,  -1000,  0,   0);
setScaleKey(  831,   0,   1.7,  1.7);
setScaleKey(  848,   0,   1.2,  1.2);
setShakeChara( 831, 0, 52, 15);

playSe( 887, SE_07);

entryFade( 887, 1,  1, 1, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 一瞬


shuchusen5 = entryEffectLife( 832, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 832, shuchusen5, 1.0, 1.0);
setEffScaleKey( 872, shuchusen5, 1.0, 1.0);
setEffScaleKey( 882, shuchusen5, 2.0, 2.0);

ryu3 = entryEffectLife( 832, 921, 116, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 832, ryu3, 90);
--setEffScaleKey( 832, ryu3, 2.0, 2.0);

entryFadeBg( 832, 0, 116, 0, 10, 10, 10, 180);       -- ベース暗め　背景


entryFade( 943, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

shuchusen6 = entryEffectLife( 948, 906, 91, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 948, shuchusen6, 1.0, 1.0);
setEffScaleKey( 988, shuchusen6, 1.0, 1.0);
setEffScaleKey( 998, shuchusen6, 2.0, 2.0);

ryu4 = entryEffectLife( 948, 921, 91, 0x80,  -1,  0,  0,  0); -- 流線
--setEffRotateKey( 832, ryu3, 90);
--setEffScaleKey( 832, ryu3, 2.0, 2.0);

entryFadeBg( 948, 0, 91, 0, 10, 10, 10, 180);       -- ベース暗め　背景

kamehame_beam7 = entryEffect( 948, SP_09,   0x80, 1,  0,  0,  0);   -- デスボール迫る
changeAnime( 948, 1, 106);
setDisp( 948, 1, 1);
setDisp( 1044, 1, 0);
setMoveKey(  948,    1,  300,  -250,   0);
setMoveKey(  963,    1,  200,  -100,   0);
setScaleKey(  948,   1,   2.7,  2.7);
setScaleKey(  963,   1,   2.2,  2.2);
setScaleKey(  1044,   1,   2.2,  2.2);
setShakeChara( 948, 1, 102, 15);

-- 書き文字エントリー
ct = entryEffectLife( 948, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(948, ct, 99, 20);
setEffScaleKey( 948, ct, 2.4, 2.4);
setEffRotateKey(948, ct, -70);
setEffAlphaKey(948, ct, 255);
setEffAlphaKey(1008, ct, 255);
setEffAlphaKey(1028, ct, 0);

playSe( 950, SE_06);

entryFade( 1039, 4,  2, 3, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


kamehame_beam = entryEffect( 1043, 190003,   0x80, -1,  0,  0,  0);   -- ギャン --40

ct = entryEffectLife( 1054, 10006, 45, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(1049, ct, 99, 20);
setEffScaleKey( 1049, ct, 0.1, 0.1);
setEffScaleKey( 1080, ct, 2.4, 2.4);
setEffScaleKey( 1094, ct, 2.8, 2.8);
setEffAlphaKey(1049, ct, 255);
setEffAlphaKey(1074, ct, 255);
setEffAlphaKey(1094, ct, 0);

playSe( 1052, 1024);


SP_test = 700;

--[[
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( 400, 1, 1);
setMoveKey(  400,    1,  100,  0,   0);
setScaleKey( 400,    1,  1.0, 1.0);
setMoveKey(  401,    1,    0,   0,   128);
setScaleKey( 401,    1,  0.1, 0.1);

changeAnime( 401, 1, 107);                         -- 手前ダメージ
entryEffect( 409, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 409, SE_10);

setMoveKey(  409,   1,    0,   0,   128);
setMoveKey(  416,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( 417, 1, 0);  -- ダメージ振動等
setShake(408,6,15);
setShake(414,15,10);

setRotateKey( 401,  1,  30 );
setRotateKey( 403,  1,  80 );
setRotateKey( 405,  1, 120 );
setRotateKey( 407,  1, 160 );
setRotateKey( 409,  1, 200 );
setRotateKey( 411,  1, 260 );
setRotateKey( 413,  1, 320 );
setRotateKey( 415,  1,   0 );

setShakeChara( 416, 1, 5,  10);
setShakeChara( 421, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 416, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(416, ct, 30, 10);
setEffRotateKey( 416, ct, -40);
setEffScaleKey( 416, ct, 4.0, 4.0);
setEffScaleKey( 417, ct, 2.0, 2.0);
setEffScaleKey( 418, ct, 2.6, 2.6);
setEffScaleKey( 419, ct, 4.0, 4.0);
setEffScaleKey( 420, ct, 2.6, 2.6);
setEffScaleKey( 421, ct, 3.8, 3.8);
setEffScaleKey( 511, ct, 3.8, 3.8);
setEffAlphaKey( 416, ct, 255);
setEffAlphaKey( 506, ct, 255);
setEffAlphaKey( 516, ct, 0);

playSe( 404, SE_11);
shuchusen = entryEffectLife( 404, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 404, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ
]]--

entryFade( 1095, 5,  4, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


bom = entryEffect( 1100, 1556, 0,  -1,  0,  0,  0);   -- 伸びるかめはめ波

playSe( 1107, 1024);

-- ダメージ表示
dealDamage(SP_test+417);

entryFade( SP_test+501, 9,  10, 1, 8, 8, 8, 255);             -- black fade
endPhase(SP_test+511);

end
