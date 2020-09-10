

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

tyo = -40;
tyo2 = -60;


--SP_01 = 103077; --溜め
--SP_02 = 103078; --発射
--SP_03 = 103079; --迫る

SP_01 = 103077; --溜め
SP_02 = 103083; --発射
SP_02e = 103088; --発射
SP_03 = 103084; --命中
SP_04 = 103085; --大爆発
SP_05 = 103086; --決めポーズ
SP_05e = 103087; --決めポーズ

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

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --

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

entryFadeBg( 69, 0, 109, 0, 0, 0, 0, 200);       -- ベース暗め　背景

setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
setShakeChara( 70, 0, 100, 10);
--playSe( 73, SE_03);
playSe( 70, 1018);

--playSe( 100, 1018);

--playSe( 130, 1018);

--entryEffect(  70,   357,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
roze = entryEffectLife( 70, 357, 90, 0x40+0x80,  0, 0,  -30,  -280);
setEffScaleKey( 70, roze, 2.0, 2.0);
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 80, SE_04);

--kame_hand1 = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--kame_hand1 = entryEffectLife(  70,   SP_01, 100, 0x40,  0,  1,  0,  -100); -- オーラ
--setEffScaleKey( 70, kame_hand1, 1.0, 1.0);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

shuchusen = entryEffectLife( 70, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 70, shuchusen, 1.0, 1.0);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

setMoveKey(  169,    0,      0,  0,   0);
setMoveKey(  170,    0,      0,  200,   0);

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

--setEffAlphaKey(170, speff, 255);
--setEffScaleKey(170, speff, 1.0, 1.0);


entryFade( 255, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEffScaleKey(259, speff, 1.0, 1.0);
--setEffScaleKey(260, speff, 0.0, 0.0);

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);

spep_1 = 260 ;
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_1, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( spep_1,   0, 0.5, 0.5);

--setEffScaleKey(spep_1, kamehame_beam, 0.4, 0.4);
--setEffScaleKey(spep_1+30, kamehame_beam, 1.0, 1.0);

setMoveKey(  spep_1-1,    0,  -550, 350,   0);
setMoveKey(  spep_1+30,    0,   -100,  100,  0);

setMoveKey(  spep_1+40,    0,   -100,  100, 0);
setScaleKey( spep_1+40,   0, 0.8, 0.8);

roze2 = entryEffectLife( spep_1, 357, 90, 0x40+0x80,  0, 0,  20,  -310);
setEffScaleKey( spep_1, roze2, 2.9, 2.9);
setEffRotateKey(spep_1, roze2, -30);

kamehame_beam = entryEffectLife( spep_1, SP_02, 109, 0x40,  0, 300,  100, 200);   -- 伸びるかめはめ波
setEffRotateKey(spep_1, kamehame_beam, -5);
setEffScaleKey(spep_1, kamehame_beam, 0.5, 0.5);
setEffScaleKey(spep_1+30, kamehame_beam, 1.0, 1.0);


--setEffMoveKey(spep_1,kamehame_beam,   100   ,  50  ,  0);
--setEffMoveKey(spep_1+25,kamehame_beam,   200   ,  100  ,  0);
--setEffMoveKey(spep_1+39,kamehame_beam,   260   ,  100  ,  0);
--setEffMoveKey(305,kamehame_beam,   80   ,  100  ,  0);



--setEffMoveKey( spep_1+65,kamehame_beam,150,150);
--setEffMoveKey( spep_1+80,kamehame_beam,250,0);

playSe( spep_1, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_1+65,    0,   -680,  350,  0);
setScaleKey( spep_1+66,   0, 0.5, 0.5);

setDisp( spep_1+66, 0, 0);

--entryFade( spep_1+48, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryFadeBg( spep_1, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--entryFadeBg( spep_1, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( spep_1+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

--sen5 = entryEffectLife( spep_1, 920, 49, 0x80,  -1,  0,  0,  0); -- 流線
--setShakeChara( spep_1+50, 0, 50, 10);

sen2 = entryEffectLife( spep_1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 210);
setEffScaleKey( spep_1, sen2, 1.7, 1.7);
--setEffScaleKey( spep_1, sen2, 1.3, 1.3);

setShakeChara( spep_1, 0, 50, 30);

shuchusen = entryEffectLife( spep_1, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_1+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_1+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_1+8, ct, 32, 5);
setEffAlphaKey(spep_1+8, ct, 255);
setEffAlphaKey(spep_1+30, ct, 255);
setEffAlphaKey(spep_1+40, ct, 0);
setEffScaleKey(spep_1+8, ct, 0.0, 0.0);
setEffScaleKey(spep_1+12, ct, 1.3, 1.3);
setEffScaleKey(spep_1+32, ct, 1.3, 1.3);
setEffScaleKey(spep_1+40, ct, 6.0, 6.0);

--playSe( spep_1+30, SE_07);
--playSe( spep_1+80,1026);

setScaleKey( spep_1+95,  0,  0.8, 0.8);
setMoveKey(  spep_1+95,    0,   -680,  350,  0);

entryFade( spep_1+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = 370;
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_2, 0, 0);
setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 104);                        -- ガード
setMoveKey(  spep_2-1,    1,  235,  0,   0);
setMoveKey(  spep_2,    1,  235,  0,   0);
setMoveKey(  spep_2+1,    1,  235,  0,   0);
setScaleKey( spep_2-1,    1,  1.5, 1.5);
--setScaleKey( spep_2,    1,  0.7, 0.7);

--setMoveKey(  400,    1,   120,  0,   -128);
--setScaleKey(  spep_2+30,   1,   2,  2);

--playSe( spep_2+20, SE_06);

kamehame_beam2 = entryEffect( spep_2, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_2, kamehame_beam2, 1, 1);
setEffScaleKey(spep_2+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_2+84, kamehame_beam2, 2.5, 2.5);
setEffAlphaKey(spep_2, kamehame_beam2, 255);


--entryFade( spep_2+65, 6,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_2+55, SE_09);

-- 敵吹っ飛ぶモーション

--setMoveKey(  spep_2+30,    1,   120,  0,   0);
--changeAnime( spep_2+30, 1, 106);
--entryEffect( spep_2+30, 2, 0x100, 1,  300,  -40,  0);
--setShakeChara( spep_2+30, 1, 10, 10);
--entryFade( spep_2+28, 0, 6, 0, 255, 0, 0, 50);     -- red fade
--playSe( spep_2+30, 1008);


--changeAnime( spep_2+40, 1, 108);
--entryEffect( spep_2+40, 1, 0x100, 1,  300,  -80,  -50);
--setShakeChara( spep_2+40, 1, 15, 15);
--entryFade( spep_2+38, 0, 3, 0, 255, 0, 0, 180);     -- red fade
--setMoveKey(  spep_2+40,    1,   120,  -50,   -20);

----------------------
--entryEffect( spep_2+50, 3, 0x100, 1,  300,  20,  50);
--setShakeChara( spep_2+50, 1, 15, 15);
--entryFade( spep_2+48, 0, 6, 0, 255, 0, 0, 50);     -- red fade
setMoveKey(  spep_2+52,    1,   150,  0,   -20);
setMoveKey(  spep_2+80,    1,   150,  0,   -20);
--playSe( spep_2+50, 1011);

--changeAnime( spep_2+60, 1, 106);
--entryEffect( spep_2+60, 2, 0x100, 1,  300,  -20,  -40);
--setShakeChara( spep_2+60, 1, 15, 15);
--entryFade( spep_2+58, 0, 3, 0, 255, 0, 0, 180);     -- red fade
--setMoveKey(  spep_2+60,    1,   120,  0,  -20);

-----------------------

--changeAnime( spep_2+70, 1, 108);
--entryEffect( spep_2+70, 3, 0x100, 1,  300,  50,  -30);
--setShakeChara( spep_2+70, 1, 11, 20);
--entryFade( spep_2+70, 0, 10, 0, 255, 0, 0, 50);     -- red fade
--setMoveKey(  spep_2+70,    1,   110,  40,    -50);
playSe( spep_2+55, 1011);

--setMoveKey(  spep_2+77,    1,   550,  0,   50);
setDisp( spep_2+85, 1, 0);

setShake(spep_2, 30, 8);
setShake(spep_2+30, 48, 15);

--setEffShake(spep_2+16, 64,15);

--playSe( spep_2, 1016);
playSe( spep_2+8, 1016);
playSe( spep_2+15, 1016);
--playSe( spep_2+21, 1016);
--playSe( spep_2+28, 1016);
--playSe( spep_2+33, 1016);
--playSe( spep_2+39, 1016);
--playSe( spep_2+45, 1016);
--playSe( spep_2+51, 1016);
--playSe( spep_2+65, 1016);
--playSe( spep_2+70, 1016);
--playSe( spep_2+74, 1016);
--playSe( spep_2+80, 1016);


-- ** エフェクト等 ** --
setShakeChara( spep_2, 1, 30, 20);

entryFadeBg( spep_2, 0, 85, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_2, 921, 85, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_2, 10014, 86, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_2, ct, 75, 20);
setEffScaleKey( spep_2, ct, 2.4, 2.4);
setEffRotateKey(spep_2, ct, 70);
setEffAlphaKey(spep_2, ct, 255);
setEffAlphaKey(spep_2+60, ct, 255);
setEffAlphaKey(spep_2+75, ct, 0);

entryFade(spep_2+75,3, 8, 7, fcolor_r, fcolor_g, fcolor_b, 255); 

--entryFade( spep_2+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 352+17

setScaleKey( spep_2+80,    1,  1.5, 1.5);
setMoveKey(  spep_2+80, 1,  0,    0,   0);
removeAllEffect( spep_2+80);

--setEffAlphaKey(spep_2+80, kamehame_beam2, 255);
--setEffAlphaKey(spep_2+81, kamehame_beam2, 0);

spep_5 = spep_2+83;


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then

SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);


entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+4,    0,   -550,  -60,  0);
setMoveKey(  SP_dodge+5,    0,   -1100,  -60,  0);

endPhase(SP_dodge+10);

do return end
else end

changeAnime( spep_2+52, 1, 106);
setRotateKey( spep_2+52,  1,  -65 );

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep_5, 0, 1);

setMoveKey(  spep_5, 0,  -750,    0,   0);


entryEffect( spep_5,SP_04,0,-1, 0, 0, 100);


roze3 = entryEffectLife( spep_5, 357, 140, 0x40,  0, 200,  400,  -200);
setEffScaleKey( spep_5, roze3, 4.0, 4.0);
setEffScaleKey( spep_5+15, roze3, 2.0, 2.0);
setEffMoveKey(spep_5+15,  roze3, 600,  -200, 0);
--setEffMoveKey(spep_5+120,  roze3, 300,  350, 0);
setEffRotateKey(spep_5, roze3, -10);
setEffAlphaKey(spep_5, roze3, 255);

entryEffect( spep_5,SP_05,0x100,-1, 0, -250, 100);


playSe( spep_5+3, 1018);
playSe( spep_5+70, SE_10);

entryFadeBg( spep_5, 0, 110, 0, 0, 0, 0, 200);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);



entryFade( spep_5+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+150);
--else







else


------------------------------------------------------
-- 気溜め( tyo+40F)
------------------------------------------------------
--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b,  100);     -- white fade

-- ** エフェクト等 ** --

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

entryFadeBg( 69, 0, 109, 0, 0, 0, 0, 200);       -- ベース暗め　背景

setVisibleUI(69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
setShakeChara( 70, 0, 100, 10);
--playSe( 73, SE_03);
playSe( 70, 1018);

--playSe( 100, 1018);

--playSe( 130, 1018);

--entryEffect(  70,   357,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
roze = entryEffectLife( 70, 357, 90, 0x40+0x80,  0, 0,  -30,  -280);
setEffScaleKey( 70, roze, 2.0, 2.0);
--entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

--playSe( 80, SE_04);

--kame_hand1 = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--kame_hand1 = entryEffectLife(  70,   SP_01, 100, 0x40,  0,  1,  0,  -100); -- オーラ
--setEffScaleKey( 70, kame_hand1, 1.0, 1.0);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
--setEffScaleKey( 30, aura, 1.5, 1.5);
--setShakeChara( 70, 0, 49, 5);

shuchusen = entryEffectLife( 70, 906, 90, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 70, shuchusen, 1.0, 1.0);

-- 書き文字エントリー
ct = entryEffectLife( 90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake(90, ct, 40, 8);
setEffScaleKey(90, ct, 1.4, 1.4);

setMoveKey(  169,    0,      0,  0,   0);
setMoveKey(  170,    0,      0,  200,   0);

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

--setEffAlphaKey(170, speff, 255);
--setEffScaleKey(170, speff, 1.0, 1.0);


entryFade( 255, 3, 3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--setEffScaleKey(259, speff, 1.0, 1.0);
--setEffScaleKey(260, speff, 0.0, 0.0);

-- ** エフェクト等 ** --
--entryFlash( (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( 170+64, SE_06);

spep_1 = 260 ;
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------

changeAnime( spep_1, 0, 31);                                    -- かめはめ発射ポーズ
setScaleKey( spep_1,   0, 0.5, 0.5);

--setEffScaleKey(spep_1, kamehame_beam, 0.4, 0.4);
--setEffScaleKey(spep_1+30, kamehame_beam, 1.0, 1.0);

setMoveKey(  spep_1-1,    0,  -550, 350,   0);
setMoveKey(  spep_1+30,    0,   -100,  100,  0);

setMoveKey(  spep_1+40,    0,   -100,  100, 0);
setScaleKey( spep_1+40,   0, 0.8, 0.8);

roze2 = entryEffectLife( spep_1, 357, 90, 0x40+0x80,  0, 0,  200,  -300);
setEffScaleKey( spep_1, roze2, 2.9, 2.9);
setEffRotateKey(spep_1, roze2, -30);

kamehame_beam = entryEffectLife( spep_1, SP_02e, 109, 0x40,  0, 300,  200, 200);   -- 伸びるかめはめ波
setEffRotateKey(spep_1, kamehame_beam, 5);
setEffScaleKey(spep_1, kamehame_beam, 1.0, 1.0);
setEffScaleKey(spep_1+30, kamehame_beam, 1.0, 1.0);


--setEffMoveKey(spep_1,kamehame_beam,   100   ,  50  ,  0);
--setEffMoveKey(spep_1+25,kamehame_beam,   200   ,  100  ,  0);
--setEffMoveKey(spep_1+39,kamehame_beam,   260   ,  100  ,  0);
--setEffMoveKey(305,kamehame_beam,   80   ,  100  ,  0);



--setEffMoveKey( spep_1+65,kamehame_beam,150,150);
--setEffMoveKey( spep_1+80,kamehame_beam,250,0);

playSe( spep_1, SE_07);

-- 途中からカメハメハが伸びる
setMoveKey(  spep_1+65,    0,   -830,  350,  0);
setScaleKey( spep_1+66,   0, 0.5, 0.5);

setDisp( spep_1+66, 0, 0);

--entryFade( spep_1+48, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --

entryFadeBg( spep_1, 0, 109, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--entryFadeBg( spep_1, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
--entryFadeBg( spep_1+40, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

--sen5 = entryEffectLife( spep_1, 920, 49, 0x80,  -1,  0,  0,  0); -- 流線
--setShakeChara( spep_1+50, 0, 50, 10);

sen2 = entryEffectLife( spep_1, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(spep_1, sen2, 210);
setEffScaleKey( spep_1, sen2, 1.7, 1.7);
--setEffScaleKey( spep_1, sen2, 1.3, 1.3);

setShakeChara( spep_1, 0, 50, 30);

shuchusen = entryEffectLife( spep_1, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_1, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_1+40, shuchusen, 1.0, 1.0);
setEffScaleKey( spep_1+49, shuchusen, 2.0, 2.0);

-- 書き文字エントリー
ct = entryEffectLife( spep_1+8, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(spep_1+8, ct, 32, 5);
setEffAlphaKey(spep_1+8, ct, 255);
setEffAlphaKey(spep_1+30, ct, 255);
setEffAlphaKey(spep_1+40, ct, 0);
setEffScaleKey(spep_1+8, ct, 0.0, 0.0);
setEffScaleKey(spep_1+12, ct, 1.3, 1.3);
setEffScaleKey(spep_1+32, ct, 1.3, 1.3);
setEffScaleKey(spep_1+40, ct, 6.0, 6.0);

--playSe( spep_1+30, SE_07);
--playSe( spep_1+80,1026);

setScaleKey( spep_1+95,  0,  0.8, 0.8);

entryFade( spep_1+95, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

spep_2 = 370;
------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( spep_2, 0, 0);
setDisp( spep_2, 1, 1);
changeAnime( spep_2, 1, 104);                        -- ガード
setMoveKey(  spep_2-1,    1,  235,  0,   0);
setMoveKey(  spep_2,    1,  235,  0,   0);
setMoveKey(  spep_2+1,    1,  235,  0,   0);
setScaleKey( spep_2-1,    1,  1.5, 1.5);
--setScaleKey( spep_2,    1,  0.7, 0.7);

--setMoveKey(  400,    1,   120,  0,   -128);
--setScaleKey(  spep_2+30,   1,   2,  2);

--playSe( spep_2+20, SE_06);

kamehame_beam2 = entryEffect( spep_2, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_2, kamehame_beam2, 1, 1);
setEffScaleKey(spep_2+82, kamehame_beam2, 1, 1);
setEffScaleKey(spep_2+84, kamehame_beam2, 2.5, 2.5);
setEffAlphaKey(spep_2, kamehame_beam2, 255);


--entryFade( spep_2+65, 6,  3, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--playSe( spep_2+55, SE_09);

-- 敵吹っ飛ぶモーション

--setMoveKey(  spep_2+30,    1,   120,  0,   0);
--changeAnime( spep_2+30, 1, 106);
--entryEffect( spep_2+30, 2, 0x100, 1,  300,  -40,  0);
--setShakeChara( spep_2+30, 1, 10, 10);
--entryFade( spep_2+28, 0, 6, 0, 255, 0, 0, 50);     -- red fade
--playSe( spep_2+30, 1008);


--changeAnime( spep_2+40, 1, 108);
--entryEffect( spep_2+40, 1, 0x100, 1,  300,  -80,  -50);
--setShakeChara( spep_2+40, 1, 15, 15);
--entryFade( spep_2+38, 0, 3, 0, 255, 0, 0, 180);     -- red fade
--setMoveKey(  spep_2+40,    1,   120,  -50,   -20);

----------------------
--[[
changeAnime( spep_2+52, 1, 106);
setRotateKey( spep_2+52,  1,  -65 );
]]
--entryEffect( spep_2+50, 3, 0x100, 1,  300,  20,  50);
--setShakeChara( spep_2+50, 1, 15, 15);
--entryFade( spep_2+48, 0, 6, 0, 255, 0, 0, 50);     -- red fade
setMoveKey(  spep_2+52,    1,   150,  0,   -20);
setMoveKey(  spep_2+80,    1,   150,  0,   -20);
--playSe( spep_2+50, 1011);

--changeAnime( spep_2+60, 1, 106);
--entryEffect( spep_2+60, 2, 0x100, 1,  300,  -20,  -40);
--setShakeChara( spep_2+60, 1, 15, 15);
--entryFade( spep_2+58, 0, 3, 0, 255, 0, 0, 180);     -- red fade
--setMoveKey(  spep_2+60,    1,   120,  0,  -20);

-----------------------

--changeAnime( spep_2+70, 1, 108);
--entryEffect( spep_2+70, 3, 0x100, 1,  300,  50,  -30);
--setShakeChara( spep_2+70, 1, 11, 20);
--entryFade( spep_2+70, 0, 10, 0, 255, 0, 0, 50);     -- red fade
--setMoveKey(  spep_2+70,    1,   110,  40,    -50);
playSe( spep_2+55, 1011);

--setMoveKey(  spep_2+77,    1,   550,  0,   50);
setDisp( spep_2+85, 1, 0);

setShake(spep_2, 30, 8);
setShake(spep_2+30, 48, 15);

--setEffShake(spep_2+16, 64,15);

--playSe( spep_2, 1016);
playSe( spep_2+8, 1016);
playSe( spep_2+15, 1016);
--playSe( spep_2+21, 1016);
--playSe( spep_2+28, 1016);
--playSe( spep_2+33, 1016);
--playSe( spep_2+39, 1016);
--playSe( spep_2+45, 1016);
--playSe( spep_2+51, 1016);
--playSe( spep_2+65, 1016);
--playSe( spep_2+70, 1016);
--playSe( spep_2+74, 1016);
--playSe( spep_2+80, 1016);


-- ** エフェクト等 ** --
setShakeChara( spep_2, 1, 30, 20);

entryFadeBg( spep_2, 0, 85, 0, 10, 10, 10, 150);          -- ベース暗め　背景

entryEffectLife( spep_2, 921, 85, 0x80,  -1,  0,  0,  0); -- 流線斜め

-- 書き文字エントリー
ct = entryEffectLife( spep_2, 10014, 86, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_2, ct, 75, 20);
setEffScaleKey( spep_2, ct, 2.4, 2.4);
setEffRotateKey(spep_2, ct, -70);
setEffAlphaKey(spep_2, ct, 255);
setEffAlphaKey(spep_2+60, ct, 255);
setEffAlphaKey(spep_2+75, ct, 0);

entryFade(spep_2+75,3, 8, 7, fcolor_r, fcolor_g, fcolor_b, 255); 

--entryFade( spep_2+82, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade 352+17

setScaleKey( spep_2+80,    1,  1.5, 1.5);
setMoveKey(  spep_2+80, 1,  0,    0,   0);
removeAllEffect( spep_2+80);

--setEffAlphaKey(spep_2+80, kamehame_beam2, 255);
--setEffAlphaKey(spep_2+81, kamehame_beam2, 0);

spep_5 = spep_2+83;


------------------------------------------------------
-- 回避
------------------------------------------------------

if (_IS_DODGE_ == 1) then


SP_dodge = 410; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示

setEffScaleKey( SP_dodge, kaihi1, -1.0, 1.0);

setEffAlphaKey( SP_dodge, kaihi1, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(  SP_dodge+4,    0,   -550,  -60,  0);
setMoveKey(  SP_dodge+5,    0,   -1100,  -60,  0);

endPhase(SP_dodge+10);

do return end
else end
changeAnime( spep_2+52, 1, 106);
setRotateKey( spep_2+52,  1,  -65 );

------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( spep_5, 0, 1);

setMoveKey(  spep_5, 0,  -750,    0,   0);

entryEffect( spep_5,SP_04,0,-1, 0, 0, 100);


--roze3 = entryEffectLife( spep_5, 357, 140, 0x40,  0, 300,  500,  -200);
roze3 = entryEffectLife( spep_5, 357, 140, 0x40,  0, 300,  300,  -200);
setEffScaleKey( spep_5, roze3, 4.0, 4.0);
setEffScaleKey( spep_5+15, roze3, 2.0, 2.0);
setEffMoveKey(spep_5+15,  roze3, 500,  -200, 0);
--setEffMoveKey(spep_5+120,  roze3, -650,  350, 0);
setEffRotateKey(spep_5, roze3, 10);
setEffAlphaKey(spep_5, roze3, 255);

entryEffect( spep_5,SP_05e,0x100,-1, 0, -250, 100);


playSe( spep_5+3, 1018);
playSe( spep_5+70, SE_10);

entryFadeBg( spep_5, 0, 110, 0, 0, 0, 0, 200);       -- ベース暗め　背景

shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
--entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);



entryFade( spep_5+140, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(spep_5+150);
--else

end