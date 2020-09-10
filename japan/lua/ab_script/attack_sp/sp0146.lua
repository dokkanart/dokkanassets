

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

--SP_01 = 100141;
SP_02 = 109030;
SP_03 = 1559;
SP_04 = 109031;

SP_ATK = -90

multi_frm = 2;

changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め( 40F)
------------------------------------------------------
kame_flag = 0x00;
if ( _IS_PLAYER_SIDE_ == 1) then

setVisibleUI( 0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setMoveKey(29, 0,0, -54,   0);
setMoveKey(30, 0,50,0,0);
setMoveKey(170,0,50,0,0);
eff_ki1=entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
setEffScaleKey(30,eff_ki1,1.5,1.5);
eff_ki2=entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 61, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura1, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ctzuzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake( 30, ctzuzuzun, 40, 7);
setEffAlphaKey( 30, ctzuzuzun, 255);
setEffAlphaKey( 50, ctzuzuzun, 255);
setEffAlphaKey( 70, ctzuzuzun, 0);
setEffScaleKey( 30, ctzuzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzuzun, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！( 100F)
------------------------------------------------------
--setVisibleUI( 69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 ( 気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 ( 気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 ( カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff1 = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 ( セリフ)
setEffReplaceTexture( speff1, 4, 5);                           -- セリフ差し替え

playSe( 90, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  70,   311, 99, 0x80,  0,  1,  0,  -150); -- オーラ
setEffScaleKey( 30, aura1, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ctgogogo = entryEffectLife( 90, 10008, 44, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( 90, ctgogogo, 40, 8);
setEffScaleKey( 90, ctgogogo, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン( 90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff2 = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff2, 5, 4);                                  -- 技名テクスチャ差し替え

setMoveKey(  258,    0,      0,  0,   0);

entryFade( 255, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( ( 170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( 170+64, SE_06);

------------------------------------------------------
-- カメハメハ発射( 110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259,    0,      0,  -500,   0);
--setMoveKey(  260,    0,      0,  -600,   0);
--setMoveKey(  261,    0,      0,  -600,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey( 310,    0,      0,  0,   0);
-- 途中からカメハメハが伸びる
setMoveKey( 365,    0,      0,  -650,   0);

--setScaleKey( 259,   0, 1.5, 1.5);
--setScaleKey( 368,   0, 1.5, 1.5);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え
--setEffScaleKey( 268, spname, 1, 1);
--setEffScaleKey( 272, spname, 1, 1);
--setEffScaleKey( 292, spname, 1.8, 1.8);
--setEffScaleKey( 300, spname, 4.0, 4.0);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen1 = entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 260,sen1,90);
setEffScaleKey( 260,sen1, 1.5, 1);

setShakeChara( 260, 0, 105, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( ( 260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFlashBg( 320, 30, fcolor_r, 0, 0, 100);

-- 書き文字エントリー
ctzuo = entryEffectLife( 268, 10012, 40, 0, -1, 0, 120, 400); -- ズオッ
setEffShake( 268, ctzuo, 32, 25);
setEffAlphaKey( 268, ctzuo, 255);
setEffAlphaKey( 290, ctzuo, 255);
setEffAlphaKey( 300, ctzuo, 50);
setEffScaleKey( 268, ctzuo, 2, 2);
setEffScaleKey( 272, ctzuo, 2.4, 2.4);
setEffScaleKey( 292, ctzuo, 2.4, 2.4);
setEffScaleKey( 300, ctzuo, 4.0, 4.0);
setEffRotateKey(268,ctzuo,20);
playSe( 300, SE_07);

------------------------------------------------------
-- 地球周りぐるぐる (110F)
------------------------------------------------------

guruguru = entryEffect( 370, SP_03, 0,  -1,  0,  0,  0);
setEffScaleKey( 370, guruguru, 1.1, 1.1);
setDisp( 370, 1, 0);

playSe( 374, SE_07);
shuchusen1 = entryEffectLife( 374, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( 370+80, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(370+88);

spep_2=370+80+10; --460 370

------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------
setDisp( spep_2, 0, 0);
setDisp( spep_2, 1, 1);
changeAnime( spep_2-5, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  spep_2-5,    1,   120,  0,   0);
setMoveKey(  spep_2-4,    1,  400,  -400,   0);
setMoveKey(  spep_2,    1,  400,  -400,   0);
setScaleKey(  spep_2-5,   1,   1.6,  1.6);
setScaleKey( spep_2-4,    1,  1, 1);

setMoveKey(  spep_2+20,    1,   200,  -350,   0);  --到着
setScaleKey(  spep_2+20,   1,   2,  2);

--entryFade( spep_2+45, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_2+35, 1, 0);

ryusen = entryEffectLife( spep_2-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2-1, ryusen, 190);
setEffScaleKey( spep_2-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_2, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_2, kamehame_beam2, 1, 1);
setEffScaleKey(spep_2+72, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_2+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_2+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_2, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_2, SE_08);

-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_2+85, 1, 108);
setMoveKey(  spep_2+85, 1,  120,    -150,  0);
setMoveKey(  spep_2+99, 1,  400,    0,  0);
setScaleKey( spep_2+85, 1,  1.6, 1.6);
setScaleKey( spep_2+88, 1,  1.5, 1.5);
setScaleKey( spep_2+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_2, 1, 99, 20);

entryFadeBg( spep_2, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_2+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_2, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_2, ctzudodo, 99, 20);
setEffScaleKey( spep_2, ctzudodo, 2.4, 2.4);
setEffRotateKey(spep_2, ctzudodo, 70);
setEffAlphaKey(spep_2, ctzudodo, 255);
setEffAlphaKey(spep_2+20, ctzudodo, 255);
setEffAlphaKey(spep_2+30, ctzudodo, 0);

entryFade( spep_2+27, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ctgyan = entryEffectLife( spep_2+40, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_2+40, ctgyan, 99, 20);
setEffScaleKey( spep_2+40, ctgyan, 0.1, 0.1);
setEffScaleKey( spep_2+45, ctgyan, 2.4, 2.4);
setEffScaleKey( spep_2+70, ctgyan, 2.8, 2.8);
setEffAlphaKey(spep_2+40, ctgyan, 255);
setEffAlphaKey(spep_2+55, ctgyan, 255);
setEffAlphaKey(spep_2+70, ctgyan, 0);
setMoveKey( spep_2+70,    0,      0,  -650,   0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 480; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 475; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff3 = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff3, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,    0,      0,  -1000,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_2, SE_06);
playSe( spep_2+55, SE_09);

entryFade( spep_2+75, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_3=spep_2+72+17; --559 470

------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
setDisp( spep_3-1, 1, 1);
setMoveKey(  spep_3-1,    1,  100,  0,   0);
setScaleKey( spep_3-1,    1,  1.0, 1.0);
setMoveKey(  spep_3,    1,    0,   0,   128);
setScaleKey( spep_3,    1,  0.1, 0.1);

changeAnime( spep_3, 1, 107);                         -- 手前ダメージ
entryEffect( spep_3+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_3+8, SE_10);

setMoveKey(  spep_3+8,   1,    0,   0,   128);
setMoveKey(  spep_3+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_3+16,   1,  -60,  -200,  -100);
setDamage( spep_3+16, 1, 0);  -- ダメージ振動等
setShake(spep_3+7,6,15);
setShake(spep_3+13,15,10);

setRotateKey( spep_3,  1,  30 );
setRotateKey( spep_3+2,  1,  80 );
setRotateKey( spep_3+4,  1, 120 );
setRotateKey( spep_3+6,  1, 160 );
setRotateKey( spep_3+8,  1, 200 );
setRotateKey( spep_3+10,  1, 260 );
setRotateKey( spep_3+12,  1, 320 );
setRotateKey( spep_3+14,  1,   0 );

setShakeChara( spep_3+15, 1, 5,  10);
setShakeChara( spep_3+20, 1, 10, 20);

-- 書き文字エントリー
ctgaltu = entryEffectLife( spep_3+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_3+15, ctgaltu, 30, 10);
setEffRotateKey( spep_3+15, ctgaltu, -40);
setEffScaleKey( spep_3+15, ctgaltu, 4.0, 4.0);
setEffScaleKey( spep_3+16, ctgaltu, 2.0, 2.0);
setEffScaleKey( spep_3+17, ctgaltu, 2.6, 2.6);
setEffScaleKey( spep_3+18, ctgaltu, 4.0, 4.0);
setEffScaleKey( spep_3+19, ctgaltu, 2.6, 2.6);
setEffScaleKey( spep_3+20, ctgaltu, 3.8, 3.8);
setEffScaleKey( spep_3+110, ctgaltu, 3.8, 3.8);
setEffAlphaKey( spep_3+15, ctgaltu, 255);
setEffAlphaKey( spep_3+105, ctgaltu, 255);
setEffAlphaKey( spep_3+115, ctgaltu, 0);

playSe( spep_3+6, SE_11);
shuchusen2 = entryEffectLife( spep_3+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_3+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_3+16);

entryFade( spep_3+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_3+110);

else

----------------------------------------------------------------
--敵側
----------------------------------------------------------------
changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め( 40F)
------------------------------------------------------

setVisibleUI( 0, 0);

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
setMoveKey(29, 0,0, -54,   0);
setMoveKey(30, 0,50,0,0);
setMoveKey(170,0,50,0,0);
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe( 30, SE_01);

entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  30,   311, 39, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura, 1.5, 1.5);
setShakeChara( 30, 0, 19, 5);

-- 書き文字エントリー
ctzuzuzun = entryEffectLife( 30, 10013, 39, 0, -1, 0, 0, 350); -- ズズンッ
setEffShake( 30, ctzuzuzun, 40, 7);
setEffAlphaKey( 30, ctzuzuzun, 255);
setEffAlphaKey( 50, ctzuzuzun, 255);
setEffAlphaKey( 70, ctzuzuzun, 0);
setEffScaleKey( 30, ctzuzuzun, 0.1, 0.1);
setEffScaleKey( 40, ctzuzuzun, 2.0, 2.0);
playSe( 30, SE_02);

------------------------------------------------------
-- かめはめ波溜め！( 100F)
------------------------------------------------------
--setVisibleUI( 69, 0);
changeAnime( 70, 0, 30);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 ( 気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 ( 気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 ( カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff1 = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 ( セリフ)
--setEffReplaceTexture( speff1, 4, 5);                           -- セリフ差し替え

playSe( 90, SE_04);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura1 = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( 30, aura1, 1.5, 1.5);
setShakeChara( 70, 0, 49, 5);

-- 書き文字エントリー
ctgogogo = entryEffectLife( 90, 10008, 44, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( 90, ctgogogo, 40, 8);
setEffScaleKey( 90, ctgogogo, 1.4, 1.4);

------------------------------------------------------
-- カードカットイン( 90F)
------------------------------------------------------
setScaleKey( 169,   0, 1.5, 1.5);
setScaleKey( 170,   0, 1.0, 1.0);

playSe( 170, SE_05);
speff2 = entryEffect(  170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff2, 5, 4);                                  -- 技名テクスチャ差し替え

setMoveKey(  258,    0,      0,  0,   0);

entryFade( 255, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( ( 170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--playSe( 170+64, SE_06);

------------------------------------------------------
-- カメハメハ発射( 110F)
------------------------------------------------------
changeAnime( 260, 0, 31);                                    -- かめはめ発射ポーズ

setMoveKey(  259,    0,      0,  -500,   0);
--setMoveKey(  260,    0,      0,  -600,   0);
--setMoveKey(  261,    0,      0,  -600,   0);
setMoveKey(  270,    0,      0,  0,   0);
setMoveKey( 310,    0,      0,  0,   0);
-- 途中からカメハメハが伸びる
setMoveKey( 365,    0,      0,  -650,   0);

--setScaleKey( 259,   0, 1.5, 1.5);
--setScaleKey( 368,   0, 1.5, 1.5);

kamehame_beam = entryEffectLife( 260, SP_02, 109, 0x40,  0,  300,  0,  0);   -- 伸びるかめはめ波

playSe( 260, SE_07);

--spname = entryEffect( 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え
--setEffScaleKey( 268, spname, 1, 1);
--setEffScaleKey( 272, spname, 1, 1);
--setEffScaleKey( 292, spname, 1.8, 1.8);
--setEffScaleKey( 300, spname, 4.0, 4.0);

entryFade( 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

sen1 = entryEffectLife( 260, 920, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( 260,sen1,90);
setEffScaleKey( 260,sen1, 1.5, 1);

setShakeChara( 260, 0, 105, 50);

shuchusen = entryEffectLife( 260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

--entryFlash( ( 260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( ( 260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

entryFlashBg( 320, 30, fcolor_r, 0, 0, 100);

-- 書き文字エントリー
ctzuo = entryEffectLife( 268, 10012, 40, 0, -1, 0, 150, 400); -- ズオッ
setEffShake( 268, ctzuo, 32, 25);
setEffAlphaKey( 268, ctzuo, 255);
setEffAlphaKey( 290, ctzuo, 255);
setEffAlphaKey( 300, ctzuo, 0);
setEffScaleKey( 268, ctzuo, 2, 2);
setEffScaleKey( 272, ctzuo, 2.4, 2.4);
setEffScaleKey( 292, ctzuo, 2.4, 2.4);
setEffScaleKey( 300, ctzuo, 4.0, 4.0);
setEffRotateKey(268,ctzuo,20);
playSe( 300, SE_07);

------------------------------------------------------
-- 地球周りぐるぐる (110F)
------------------------------------------------------

guruguru = entryEffect( 370, SP_03, 0,  -1,  0,  0,  0);
setEffScaleKey( 370, guruguru, 1.1, 1.1);
setDisp( 370, 1, 0);

playSe( 374, SE_07);
shuchusen1 = entryEffectLife( 374, 906, 116, 0x00,  -1, 0,  0,  0);   -- 集中線

entryFade( 370+80, 5, 10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

removeAllEffect(370+88);

spep_2=370+80+10; --460 370

------------------------------------------------------
-- かめはめは迫る( 100F)
------------------------------------------------------
setDisp( spep_2, 0, 0);
setDisp( spep_2, 1, 1);
changeAnime( spep_2-5, 1, 118);                        -- 気ダメ後ろ
setMoveKey(  spep_2-5,    1,   120,  0,   0);
setMoveKey(  spep_2-4,    1,  400,  -400,   0);
setMoveKey(  spep_2,    1,  400,  -400,   0);
setScaleKey(  spep_2-5,   1,   1.6,  1.6);
setScaleKey( spep_2-4,    1,  1, 1);

setMoveKey(  spep_2+20,    1,   200,  -350,   0);  --到着
setScaleKey(  spep_2+20,   1,   2,  2);

--entryFade( spep_2+45, 5,  5, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setDisp( spep_2+35, 1, 0);

ryusen = entryEffectLife( spep_2-1, 921, 50, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( spep_2-1, ryusen, 190);
setEffScaleKey( spep_2-1, ryusen, 1.4, 1.4);

kamehame_beam2 = entryEffect( spep_2, SP_04,   0x80, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(spep_2, kamehame_beam2, 1, 1);
setEffScaleKey(spep_2+72, kamehame_beam2, 1, 1);
--setEffScaleKey(spep_2+84, kamehame_beam2, 2.5, 2.5);
setDamage( spep_2+82, 1, 0);  -- ダメージ振動等

--speff = entryEffect( spep_2, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( spep_2, SE_08);

-- 敵吹っ飛ぶモーション
--[[
changeAnime( spep_2+85, 1, 108);
setMoveKey(  spep_2+85, 1,  120,    -150,  0);
setMoveKey(  spep_2+99, 1,  400,    0,  0);
setScaleKey( spep_2+85, 1,  1.6, 1.6);
setScaleKey( spep_2+88, 1,  1.5, 1.5);
setScaleKey( spep_2+98, 1,  0.2, 0.2);
]]--
-- ** エフェクト等 ** --
setShakeChara( spep_2, 1, 99, 20);

entryFadeBg( spep_2, 0, 99, 0,0, 0, 0, 255);          -- ベース暗め　背景

--entryFlash( (spep_2+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (spep_2+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ctzudodo = entryEffectLife( spep_2, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(spep_2, ctzudodo, 99, 20);
setEffScaleKey( spep_2, ctzudodo, 2.4, 2.4);
setEffRotateKey(spep_2, ctzudodo, 10);
setEffAlphaKey(spep_2, ctzudodo, 255);
setEffAlphaKey(spep_2+20, ctzudodo, 255);
setEffAlphaKey(spep_2+30, ctzudodo, 0);

entryFade( spep_2+27, 5,  10, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

ctgyan = entryEffectLife( spep_2+40, 10006, 30, 0x80, -1, 0, 0, 255); -- ギャン
setEffShake(spep_2+40, ctgyan, 99, 20);
setEffScaleKey( spep_2+40, ctgyan, 0.1, 0.1);
setEffScaleKey( spep_2+45, ctgyan, 2.4, 2.4);
setEffScaleKey( spep_2+70, ctgyan, 2.8, 2.8);
setEffAlphaKey(spep_2+40, ctgyan, 255);
setEffAlphaKey(spep_2+55, ctgyan, 255);
setEffAlphaKey(spep_2+70, ctgyan, 0);
setMoveKey( spep_2+70,    0,      0,  -650,   0);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 480; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 475; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff3 = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff3, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey( SP_dodge+5,    0,      0,  -1000,   0);

endPhase(SP_dodge+10);
do return end
else end

playSe( spep_2, SE_06);
playSe( spep_2+55, SE_09);

entryFade( spep_2+75, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


spep_3=spep_2+72+17; --559 470

------------------------------------------------------
-- 爆発 ( 110F)
------------------------------------------------------
setDisp( spep_3-1, 1, 1);
setMoveKey(  spep_3-1,    1,  100,  0,   0);
setScaleKey( spep_3-1,    1,  1.0, 1.0);
setMoveKey(  spep_3,    1,    0,   0,   128);
setScaleKey( spep_3,    1,  0.1, 0.1);

changeAnime( spep_3, 1, 107);                         -- 手前ダメージ
entryEffect( spep_3+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( spep_3+8, SE_10);

setMoveKey(  spep_3+8,   1,    0,   0,   128);
setMoveKey(  spep_3+15,   1,  -60,  -200,  -100);
setMoveKey(  spep_3+16,   1,  -60,  -200,  -100);
setDamage( spep_3+16, 1, 0);  -- ダメージ振動等
setShake(spep_3+7,6,15);
setShake(spep_3+13,15,10);

setRotateKey( spep_3,  1,  30 );
setRotateKey( spep_3+2,  1,  80 );
setRotateKey( spep_3+4,  1, 120 );
setRotateKey( spep_3+6,  1, 160 );
setRotateKey( spep_3+8,  1, 200 );
setRotateKey( spep_3+10,  1, 260 );
setRotateKey( spep_3+12,  1, 320 );
setRotateKey( spep_3+14,  1,   0 );

setShakeChara( spep_3+15, 1, 5,  10);
setShakeChara( spep_3+20, 1, 10, 20);

-- 書き文字エントリー
ctgaltu = entryEffectLife( spep_3+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( spep_3+15, ctgaltu, 30, 10);
setEffRotateKey( spep_3+15, ctgaltu, -40);
setEffScaleKey( spep_3+15, ctgaltu, 4.0, 4.0);
setEffScaleKey( spep_3+16, ctgaltu, 2.0, 2.0);
setEffScaleKey( spep_3+17, ctgaltu, 2.6, 2.6);
setEffScaleKey( spep_3+18, ctgaltu, 4.0, 4.0);
setEffScaleKey( spep_3+19, ctgaltu, 2.6, 2.6);
setEffScaleKey( spep_3+20, ctgaltu, 3.8, 3.8);
setEffScaleKey( spep_3+110, ctgaltu, 3.8, 3.8);
setEffAlphaKey( spep_3+15, ctgaltu, 255);
setEffAlphaKey( spep_3+105, ctgaltu, 255);
setEffAlphaKey( spep_3+115, ctgaltu, 0);

playSe( spep_3+6, SE_11);
shuchusen2 = entryEffectLife( spep_3+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_3+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_3+16);

entryFade( spep_3+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_3+110);	

end
