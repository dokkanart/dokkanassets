

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SP_ATK_0 = 6;
SP_ATK_1 = SP_ATK_0+10;
SP_ATK_2 = SP_ATK_1+63;
--SP_ATK_3 = SP_ATK_2+92;
SP_ATK_4 = SP_ATK_2+130;

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
SE_13 = 43; --瞬間移動

SP_01 = 100186
SP_02 = 100187
SP_03 = 100188

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

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
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

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
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
------------------------------------------------------
-- カメハメハ発射(130F)
------------------------------------------------------
setScaleKey( 259,   0, 1.0, 1.0);
setScaleKey( 260,   0, 1.5, 1.5);

setScaleKey( 260,   1, 2.5, 2.5);

setScaleKey( 315,   0, 1.5, 1.5);
setScaleKey( 316,   0, 2.0, 2.0);


spname = entryEffectLife( 260, 1508, 128, 0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

--背景を暗くする
entryFadeBg( 260, 0, 129, 0, 10, 10, 10, 255);       -- ベース暗め　背景

--プレイヤー中央

setMoveKey(  259,    0,      0,  0,   0);
--setScaleKey( 259,   0, 1.0, 1.0);

--kame_hand2 = entryEffectLife( 259, SP_01, 16, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 259, kame_hand2, 0.5, 0.5);

entryEffectLife( 259, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( 270, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade


--瞬間移動エフェクト
playSe(270,43);
shun = entryEffect(  270,  SP_02,  0,  0,  0,  0,  0);
--setEffScaleKey(278, shun, 1.5, 1.5);

--P消える
setDisp ( 275, 0, 0);

-- 書き文字エントリー
ct = entryEffectLife( 272, 10011, 14, 0x100, -1, 0, 0, 100);    -- シュンッ
setEffScaleKey(272, ct, 1.4, 1.4);
--entryKakimoji(  ATK3_02+22,  11,  1,  -1,  0,  40,  -50);

--w/o
entryFade( 284, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade
entryFadeBg( 286, 1, 1, 8, 0, 252, 255, 255);       -- ベース青　背景


--画面に相手を表示
 setDisp(286, 1, 1);
setMoveKey(   286,   1,      700, 0,   0);
setMoveKey(   294,   1,      150, 0,   0);

changeAnime( 286, 1, 118);                                    -- 後ろ向きポーズ

entryFadeBg( 296, 14, 2, 16, 0, 252, 255, 255);       -- ベース青　背景
--w/o
entryFade( 298, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade
entryFadeBg( 300, 0, 59, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--瞬間移動エフェクト
playSe(320,43);
shun = entryEffect(  310,  SP_02,  0,  0,  0,  -100,  100);
--setEffScaleKey(320, shun, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( 316, 10011, 14, 0x100, -1, 0, -80, 220);    -- シュンッ
setEffScaleKey(316, ct, 1.4, 1.4);

setMoveKey(  314,    0,      0,  0,   0);
setMoveKey(  315,    0,      -100,  0,   0);

setDisp ( 316, 0, 1);


--kame_hand2 = entryEffectLife( 316, SP_01, 25, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 316, kame_hand2, 0.5, 0.5);

--w/o
entryFade( 312, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


entryFade( 326, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( 328, 16, 2, 6, 0, 252, 255, 255);       -- ベース青　背景

--横線エフェクト
--かめはめ波を打ちながら下がる
setScaleKey( 330,   0, 2.0, 2.0);
setScaleKey( 331,   0, 0.65, 0.65);
setScaleKey( 389,   0, 0.65, 0.65);

setMoveKey(  350,    0,      -100,  0,   0);
setMoveKey(  388,    0,      -200,  0,   0);

--かめはめ波が当たったら相手消す
setMoveKey(   332,   1,      150,  0,   0);
setMoveKey(  348,    1,      700,  0,   0);



changeAnime( 331, 0, 31);                                    -- かめはめ発射ポーズ

kamehame_beam = entryEffectLife( 332, SP_03, 57, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey( 332, kamehame_beam, 0.65, 0.65);

playSe( 332, SE_07);

entryFade( 340, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade

-- ** エフェクト等 ** --
--entryFadeBg( 320, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 315, 0, 2, 8, 65, 140, 250, 250);     -- 青い　背景

entryEffectLife( 320, 920, 68, 0x80,  -1,  0,  0,  0); -- 流線

--setShakeChara( 335, 0, 54, 50);


-- 書き文字エントリー
ct = entryEffectLife( 332, 10012, 57, 0, -1, 0, 100, 370); -- ズオッ
setEffRotateKey(332, ct, 15);
setEffShake(332, ct, 32, 5);
setEffAlphaKey(332, ct, 255);
setEffAlphaKey(387, ct, 255);
setEffAlphaKey(388, ct, 0);
setEffScaleKey(332, ct, 0.0, 0.0);
--setEffScaleKey(334, ct, 1.3, 1.3);
--setEffScaleKey(348, ct, 1.3, 1.3);
setEffScaleKey(334, ct, 3.0, 3.0);
setEffShake(334, ct, 55, 10);

--playSe( 400, SE_07);

entryFade( 354, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( 368, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 321; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge+5,    1,  2.5, 2.5);
setMoveKey( SP_dodge+5,    0,      -200,  0,   0);
setMoveKey( SP_dodge+9,    0,      -1000,  0,   0);
setDisp (SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( 388, 0, 0);
setDisp( 389, 0, 0);
setDisp( 389, 1, 1);
setMoveKey(  389,    1,      700,  0,   0);
setScaleKey( 389,    1,  2.5, 2.5);
setMoveKey(  390,    1,    0,   0,   128);
setScaleKey( 390,    1,  0.1, 0.1);
setMoveKey(  390,    0,      700,  0,   0);

changeAnime( 390, 1, 107);                         -- 手前ダメージ
entryEffect( 398, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( 398, SE_10);

setMoveKey(  398,   1,    0,   0,   128);
setMoveKey(  405,   1,  -60,  -200,  -100);
--setMoveKey(  406,   1,  -60,  -200,  -100);
setDamage( 406, 1, 0);  -- ダメージ振動等
setShake(397,6,15);
setShake(403,15,10);

setRotateKey( 390,  1,  30 );
setRotateKey( 392,  1,  80 );
setRotateKey( 394,  1, 120 );
setRotateKey( 396,  1, 160 );
setRotateKey( 398,  1, 200 );
setRotateKey( 400,  1, 260 );
setRotateKey( 402,  1, 320 );
setRotateKey( 404,  1,   0 );

setShakeChara( 405, 1, 5,  10);
setShakeChara( 410, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( 405, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(405, ct, 30, 10);
setEffRotateKey( 405, ct, -40);
setEffScaleKey( 405, ct, 4.0, 4.0);
setEffScaleKey( 406, ct, 2.0, 2.0);
setEffScaleKey( 407, ct, 2.6, 2.6);
setEffScaleKey( 408, ct, 4.0, 4.0);
setEffScaleKey( 409, ct, 2.6, 2.6);
setEffScaleKey( 410, ct, 3.8, 3.8);
setEffScaleKey( 500, ct, 3.8, 3.8);
setEffAlphaKey( 405, ct, 255);
setEffAlphaKey( 495, ct, 255);
setEffAlphaKey( 505, ct, 0);

playSe( 393, SE_11);
shuchusen = entryEffectLife( 393, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( 393, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(406);

entryFade( 490, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(500);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
--キャラ位置
setMoveKey( 0,    0,      0,  0,   0);
setMoveKey( 0,    1,      800,  0,   0);


entryFade( 0, 2, 4, 8, 254, 157, 18, 100);     -- white fade
------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(SP_ATK_0, 0);
changeAnime( SP_ATK_0, 0, 30);                       -- 溜め!
playSe( SP_ATK_0, SE_01);


entryEffectLife( SP_ATK_0,   1503,  55, 0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffectLife( SP_ATK_0,   1502,  55, 0,     -1,  0,  0,  0);   -- eff_003 (気)

--kame_hand = entryEffectLife( SP_ATK_0, SP_01, 88, 0x40+0x80, 0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( SP_ATK_0, kame_hand, 0.5, 0.5);

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_ATK_0,   311, 55, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( SP_ATK_0, aura, 1.5, 1.5);
setShakeChara( SP_ATK_0+40, 0, 9, 5);

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------

speff = entryEffect(  SP_ATK_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
--setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え
playSe( SP_ATK_1+22, SE_12);

spname = entryEffect( SP_ATK_1+10, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

entryFade( SP_ATK_1, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 90);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( (SP_ATK_1+10), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+22), 1, fcolor_r, fcolor_g, fcolor_b, 100);

--entryFlash( (SP_ATK_1+36), 1, fcolor_r, fcolor_g, fcolor_b, 100);
--entryFlash( (SP_ATK_1+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);

setEffAlphaKey( (SP_ATK_1+36), speff, 255);
setEffAlphaKey( (SP_ATK_1+64), speff, 0);

--画面明けには暗くしておく
entryFadeBg( SP_ATK_1+50, 0, 145, 0, 10, 10, 10, 255);       -- ベース暗め　背景

------------------------------------------------------
-- カメハメハ発射(130F)
------------------------------------------------------
--changeAnime( SP_ATK_2, 0, 31); 
--setScaleKey( SP_ATK_2-1,   0, 1.0, 1.0);
--setScaleKey( SP_ATK_2,   0, 1.5, 1.5);

setScaleKey( SP_ATK_2-1,   1, 2.5, 2.5);
setScaleKey( SP_ATK_2,   1, 2.5, 2.5);


setScaleKey( SP_ATK_2+55,   0, 1.5, 1.5);
setScaleKey( SP_ATK_2+56,   0, 2.0, 2.0);


--背景を暗くする
--entryFadeBg( SP_ATK_2, 0, 129, 0, 10, 10, 10, 255);       -- ベース暗め　背景


--プレイヤー中央
setMoveKey(  SP_ATK_2,    0,      0,  0,   0);

--kame_hand2 = entryEffectLife( SP_ATK_2-1, SP_01, 16, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部

--setEffScaleKey( SP_ATK_2-1, kame_hand2, 0.5, 0.5);

entryEffectLife( SP_ATK_2-1, 906, 50, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( SP_ATK_2+10, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade


--瞬間移動エフェクト
playSe(SP_ATK_2+10,43);
shun = entryEffect(  SP_ATK_2+10,  SP_02,  0,  0,  0,  0,  0);

--P消える
setDisp (SP_ATK_2+15, 0, 0);


--画面に相手を表示
 setDisp(SP_ATK_2+26, 1, 1);
setMoveKey(   SP_ATK_2+26,   1,      700, 0,   0);
setMoveKey(   SP_ATK_2+34,   1,      150, 0,   0);

changeAnime( SP_ATK_2+26, 1, 118);                                    -- 後ろ向きポーズ

entryFadeBg( SP_ATK_2+36, 14, 2, 16, 0, 252, 255, 255);       -- ベース青　背景
--w/o
entryFade( SP_ATK_2+38, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade
entryFadeBg( SP_ATK_2+40, 0, 59, 0, 10, 10, 10, 180);       -- ベース暗め　背景


shun = entryEffect(  SP_ATK_2+50,  SP_02,  0x80,  0,  0,  -200,  100);


setMoveKey(  SP_ATK_2+54,    0,      0,  0,   0);
setMoveKey(  SP_ATK_2+55,    0,      -200,  0,   0);


setDisp ( SP_ATK_2+56, 0, 1);
--kame_hand2 = entryEffectLife( SP_ATK_2+56, SP_01, 25, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( SP_ATK_2+56, kame_hand2, 0.5, 0.5);

--w/o
entryFade( SP_ATK_2+52, 1,  1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryEffectLife( SP_ATK_2+57, 920, 71, 0x80,  -1,  0,  0,  0); -- 流線

--横線エフェクト
--かめはめ波を打ちながら下がる
setScaleKey( SP_ATK_2+70,   0, 2.0, 2.0);
setScaleKey( SP_ATK_2+71,   0, 0.65, 0.65);


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setScaleKey( SP_dodge+5,    1,  2.5, 2.5);
setMoveKey( SP_dodge+5,    0,      -200,  0,   0);
setMoveKey( SP_dodge+9,    0,      -1000,  0,   0);
setDisp (SP_dodge+5, 0, 0);

endPhase(SP_dodge+10);
do return end
else end

--瞬間移動エフェクト
playSe(SP_ATK_2+60, 43);
--setEffScaleKey(SP_ATK_2+60, shun, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+56, 10011, 14, 0x100, -1, 0, -130, 220);    -- シュンッ


entryFade( SP_ATK_2+66, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( SP_ATK_2+68, 16, 2, 6, 0, 252, 255, 255);       -- ベース青　背景


setMoveKey(  SP_ATK_2+90,    0,      -200,  0,   0);

--かめはめ波が当たったら相手消す
setMoveKey(   SP_ATK_2+72,   1,      150,  0,   0);



changeAnime( SP_ATK_2+71, 0, 31);                                    -- かめはめ発射ポーズ



kamehame_beam = entryEffectLife( SP_ATK_2+72, SP_03, 56, 0x40,  0,  300,  100,  0);   -- 伸びるかめはめ波
setEffScaleKey( SP_ATK_2+72, kamehame_beam, 0.65, 0.65);

playSe( SP_ATK_2+72, SE_07);

entryFade( SP_ATK_2+80, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 192);     -- white fade

-- ** エフェクト等 ** --
--entryFadeBg( SP_ATK_2+60, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_ATK_2+55, 0, 2, 8, 65, 140, 250, 250);     -- 青い　背景


--setShakeChara( SP_ATK_2+75, 0, 54, 50);
setEffScaleKey(SP_ATK_2+56, ct, 1.4, 1.4);


-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_2+72, 10012, 57, 0, -1, 0, 100, 370); -- ズオッ
setEffRotateKey(SP_ATK_2+72, ct, 15);
setEffShake(SP_ATK_2+72, ct, 32, 5);
setEffAlphaKey(SP_ATK_2+72, ct, 255);
setEffScaleKey(SP_ATK_2+72, ct, 0.0, 0.0);
setEffScaleKey(SP_ATK_2+74, ct, 3.0, 3.0);
setEffShake(SP_ATK_2+74, ct, 55, 10);

setEffAlphaKey(SP_ATK_2+127, ct, 255);
setEffAlphaKey(SP_ATK_2+128, ct, 0);

setMoveKey(  SP_ATK_2+128,    1,      700,  0,   0);
setMoveKey(  SP_ATK_2+128,    0,      -250,  0,   0);
setScaleKey( SP_ATK_2+129,   0, 0.65, 0.65);

--playSe( 400, SE_07);

entryFade( SP_ATK_2+94, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

entryFade( SP_ATK_2+108, 1, 1, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_ATK_4-2, 0, 0);
setDisp( SP_ATK_4-1, 0, 0);
setDisp( SP_ATK_4, 1, 1);
setMoveKey(  SP_ATK_4,    1,  120,    0,  128);
setScaleKey( SP_ATK_4,    1,  2.5, 2.5);
setMoveKey(  SP_ATK_4+1,    1,    0,   0,   128);
setScaleKey( SP_ATK_4+1,    1,  0.1, 0.1);
setMoveKey(  SP_ATK_4,    0,      700,  0,   0);

changeAnime( SP_ATK_4+1, 1, 107);                         -- 手前ダメージ
entryEffect( SP_ATK_4+1, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_ATK_4+1, SE_10);

setMoveKey(  SP_ATK_4+8,    1,    0,   0,   128);
setMoveKey(  SP_ATK_4+15,   1,  -60,  -200,  -100);
setShake(SP_ATK_4+10,6,15);
setShake(SP_ATK_4+17,15,9);

setRotateKey( SP_ATK_4,  1,  30 );
setRotateKey( SP_ATK_4+2,  1,  80 );
setRotateKey( SP_ATK_4+4,  1, 120 );
setRotateKey( SP_ATK_4+6,  1, 160 );
setRotateKey( SP_ATK_4+8,  1, 200 );
setRotateKey( SP_ATK_4+10,  1, 260 );
setRotateKey( SP_ATK_4+12,  1, 320 );
setRotateKey( SP_ATK_4+14,  1,   0 );

setShakeChara( SP_ATK_4+14, 1, 5,  10);
setShakeChara( SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_ATK_4+14, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_ATK_4+115, ct, 0);

playSe( SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_ATK_4, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_ATK_4+15);

entryFade( SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_ATK_4+120);

end
