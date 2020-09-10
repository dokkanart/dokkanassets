

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

SP_01 = 100000
SP_02 = 100001
SP_03 = 100002

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

playSe( 50, SE_03);
playSe( 70, SE_03);

--entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 17);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
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
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 30);                                    -- かめはめ発射ポーズ

setScaleKey( 259,   0, 0.7, 0.7);
setMoveKey(  258,    0,      0,  0,   0);
setMoveKey(  259,    0,      -600,  -600,   0);
setMoveKey(  265,    0,   -600,  -600,   0);
setMoveKey(  266,    0,   -600,  -600,   0);
setMoveKey(  280,    0,   -100,  100,   0);
setMoveKey(  304,    0,   -100,  100,   0);
setMoveKey(  309,    0,   -150,  0,   0);
setMoveKey(  322,    0,   200,  500,   0);


playSe( 260, SE_07);

spname = entryEffectLife( 260, 1508,98,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffScaleKey( 260,spname,1.0,1.0);
setEffScaleKey( 358,spname,1.0,1.0);
setEffMoveKey( 260,spname, 0,0, 0);
setEffMoveKey( 358,spname, 0,0, 0);
setEffAlphaKey( 260,spname,255);
setEffAlphaKey( 358,spname,255);

--entryEffectLife( SP_start+370, SP_02, 55, 0x40+0x80,  0,  300,  -320,  -1050);

-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   600,  600,   0);

entryFade( 365-49, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景


shuchusen = entryEffectLife( 260, 906, 49, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);


entryEffectLife( 260, 920, 65, 0x80,  -1,  0,  0,  0); -- 流線

kamehame_beam = entryEffectLife( 260, SP_02, 69, 0x40+0x80,  0,  300,  -310,  -1050);   -- 伸びるかめはめ波
setEffRotateKey(260, kamehame_beam, -70);

setShakeChara( 260, 0, 54, 30);


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

SP_start = -45;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setScaleKey( SP_start+370,   0, 0.7, 0.7);
setScaleKey( SP_start+430,   0, 0.7, 0.7);
--setScaleKey( SP_start+415,   0, 1.5, 1.5);
changeAnime( SP_start+370, 0, 31);
setDisp( SP_start+370, 0, 1);
setShakeChara( SP_start+405, 0, 54, 15);


setMoveKey(  SP_start+369,    0,      -300,  -1300,   0);
setMoveKey(  SP_start+370,    0,      -300,  -1300,   0);
--setMoveKey(  SP_start+390,    0,   -100,  -250,   0);
setMoveKey(  SP_start+420-15,    0,   0,  -60,   0);
--setMoveKey(  460,    0,   300,  800,   0);

-- 敵吹っ飛ぶモーション
setDisp( SP_start+370, 1, 1);
changeAnime( SP_start+370, 1, 104); --ガード
changeAnime( SP_start+405, 1, 106);

setMoveKey(  SP_start+369,    1,  235,  0,   0);
setMoveKey(  SP_start+370,    1,  80,  200,   0);
setMoveKey(  SP_start+404,    1,  80,  200,   0);
setMoveKey(  SP_start+417,    1,  150,  600,   0);

setScaleKey( SP_start+369,    1,  1.5, 1.5);
setScaleKey( SP_start+370,    1,  1.5, 1.5);
setScaleKey( SP_start+404,    1,  1.5, 1.5);

--setMoveKey(  SP_start+400,    1,   120,  0,   0);
setScaleKey(  SP_start+415,   1,   0.5,  0.5);

ryusen = entryEffectLife( SP_start+370, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(SP_start+370, ryusen, -80);
setEffScaleKey(spep_8, ryusen, 2, 2);


kamehame_beam2 = entryEffectLife( SP_start+370, SP_02, 55, 0x40+0x80,  0,  300,  -320,  -1050);   -- 迫るかめはめ波
setEffScaleKey(SP_start+370, kamehame_beam2, 1, 1);
setEffRotateKey(SP_start+370, kamehame_beam2, -70);
--setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+405, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( SP_start+455, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( 455, 1, 108);
--setMoveKey(  455, 1,  120,    0,  0);
--setMoveKey(  469, 1,  400,    0,  0);
--setScaleKey( 455, 1,  1.6, 1.6);
--setScaleKey( 458, 1,  1.5, 1.5);
--setScaleKey( 468, 1,  0.2, 0.2);




-- ** エフェクト等 ** --
setShakeChara( SP_start+370, 1, 99, 20);

entryFadeBg( SP_start+370, 0, 60, 0, 10, 10, 10, 150);          -- ベース暗め　背景


--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

bago = entryEffectLife(SP_start+405,10021,10,0x100,0,-1,-200,250);--バゴォッ
setEffAlphaKey( SP_start+405, bago, 255);
setEffScaleKey(SP_start+405, bago, 2, 2);

-- 書き文字エントリー
--ct = entryEffectLife( SP_start+370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
--setEffShake(SP_start+370, ct, 99, 20);
--setEffScaleKey( SP_start+370, ct, 2.4, 2.4);
--setEffRotateKey(SP_start+370, ct, 70);
--setEffAlphaKey(SP_start+370, ct, 255);
--setEffAlphaKey(SP_start+430, ct, 255);
--setEffAlphaKey(SP_start+450, ct, 0);

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 348; --エンドフェイズのフレーム数を置き換える

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

hit_eff_1 = entryEffect( SP_start+404,  4,  0x40,  0,  0,  10, 200);--HIT
hit_eff_2 = entryEffect( SP_start+404,  906,  0x40,  0,  0,  10, 200);
hit_eff_3 = entryEffect( SP_start+404,  908,  0x40,  0,  0,  10, 200);

playSe( SP_start+404, SE_06);

entryFade( SP_start+415, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_end = -45
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_end+SP_start+469, 0, 0);
setDisp( SP_end+SP_start+469, 1, 1);
setMoveKey(  SP_end+SP_start+469,    1,  100,  0,   0);
setScaleKey( SP_end+SP_start+469,    1,  1.0, 1.0);
setMoveKey(  SP_end+SP_start+470,    1,    0,   0,   128);
setScaleKey( SP_end+SP_start+470,    1,  0.1, 0.1);

changeAnime( SP_end+SP_start+470, 1, 107);                         -- 手前ダメージ
entryEffect( SP_end+SP_start+478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_end+SP_start+478, SE_10);

setMoveKey(  SP_end+SP_start+478,   1,    0,   0,   128);
setMoveKey(  SP_end+SP_start+485,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( SP_end+SP_start+486, 1, 0);  -- ダメージ振動等
setShake(SP_end+SP_start+477,6,15);
setShake(SP_end+SP_start+483,15,10);

setRotateKey( SP_end+SP_start+470,  1,  30 );
setRotateKey( SP_end+SP_start+472,  1,  80 );
setRotateKey( SP_end+SP_start+474,  1, 120 );
setRotateKey( SP_end+SP_start+476,  1, 160 );
setRotateKey( SP_end+SP_start+478,  1, 200 );
setRotateKey( SP_end+SP_start+480,  1, 260 );
setRotateKey( SP_end+SP_start+482,  1, 320 );
setRotateKey( SP_end+SP_start+484,  1,   0 );

setShakeChara( SP_end+SP_start+485, 1, 5,  10);
setShakeChara( SP_end+SP_start+490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_end+SP_start+485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_end+SP_start+485, ct, 30, 10);
setEffRotateKey( SP_end+SP_start+485, ct, -40);
setEffScaleKey( SP_end+SP_start+485, ct, 4.0, 4.0);
setEffScaleKey( SP_end+SP_start+486, ct, 2.0, 2.0);
setEffScaleKey( SP_end+SP_start+487, ct, 2.6, 2.6);
setEffScaleKey( SP_end+SP_start+488, ct, 4.0, 4.0);
setEffScaleKey( SP_end+SP_start+489, ct, 2.6, 2.6);
setEffScaleKey( SP_end+SP_start+490, ct, 3.8, 3.8);
setEffScaleKey( SP_end+SP_start+580, ct, 3.8, 3.8);
setEffAlphaKey( SP_end+SP_start+485, ct, 255);
setEffAlphaKey( SP_end+SP_start+575, ct, 255);
setEffAlphaKey( SP_end+SP_start+585, ct, 0);

playSe( SP_end+SP_start+473, SE_11);
shuchusen = entryEffectLife( SP_end+SP_start+473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_end+SP_start+473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_end+SP_start+486);

entryFade( SP_end+SP_start+570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_end+SP_start+580);
else

-----------------------------------------
--敵側の攻撃
-----------------------------------------
------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
--kame_flag = 0x00;
--if (_IS_PLAYER_SIDE_ == 1) then

--気を貯める
--         frame, eff, atr,tgt, tag,  x, y
changeAnime(  30, 0, 17);                       -- 溜め!
entryEffect(  30,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(  30,   1500,   0,    -1,  0,  0,  0);    -- eff_001

playSe( 30, SE_01);

playSe( 50, SE_03);
playSe( 70, SE_03);

--entryFade( 62, 5, 4, 8, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

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

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI(69, 0);
changeAnime( 70, 0, 17);                       -- 溜め!
playSe( 73, SE_03);

entryEffect(  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect(  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
--speff = entryEffect(  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( 80, SE_04);

playSe( 90, SE_03);
playSe( 110, SE_03);
playSe( 130, SE_03);
playSe( 150, SE_03);

--kame_hand = entryEffect( 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
--setEffScaleKey( 70, kame_hand, 0.5, 0.5);

entryFade( 165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife(  70,   311, 99, 0x40,  0,  1,  0,  -30); -- オーラ
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
-- カメハメハ発射(110F)
------------------------------------------------------
changeAnime( 260, 0, 30);                                    -- かめはめ発射ポーズ

setScaleKey( 259,   0, 0.7, 0.7);
setMoveKey(  258,    0,      0,  0,   0);
setMoveKey(  259,    0,      -600,  -600,   0);
setMoveKey(  265,    0,   -600,  -600,   0);
setMoveKey(  266,    0,   -600,  -600,   0);
setMoveKey(  280,    0,   -100,  100,   0);
setMoveKey(  304,    0,   -100,  100,   0);
setMoveKey(  309,    0,   -150,  0,   0);
setMoveKey(  322,    0,   200,  500,   0);


playSe( 260, SE_07);

spname = entryEffectLife( 260, 1508,98,  0,  -1,  0,  0,  0);               -- かめはめ波文字
setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え
setEffScaleKey( 260,spname,1.0,1.0);
setEffScaleKey( 358,spname,1.0,1.0);
setEffMoveKey( 260,spname, 0,0, 0);
setEffMoveKey( 358,spname, 0,0, 0);
setEffAlphaKey( 260,spname,255);
setEffAlphaKey( 358,spname,255);


-- 途中からカメハメハが伸びる
--setMoveKey(  299,    0,   -100,  0,   0);
--setMoveKey(  300,    0,   -100,  0,   0);
--setMoveKey(  308,    0,   600,  600,   0);

entryFade( 365-49, 3, 6, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( 260, 0, 109, 0, 10, 10, 10, 180);       -- ベース暗め　背景
--entryFadeBg( 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景

shuchusen = entryEffectLife( 260, 906, 49, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( 260, shuchusen, 1.0, 1.0);
setEffScaleKey( 300, shuchusen, 1.0, 1.0);
setEffScaleKey( 309, shuchusen, 2.0, 2.0);

entryEffectLife( 260, 920, 65, 0x80,  -1,  0,  0,  0); -- 流線

kamehame_beam = entryEffectLife( 260, SP_02, 69, 0x40+0x80,  0,  300,  -310,  -1050);   -- 伸びるかめはめ波
setEffRotateKey(260, kamehame_beam, -70);

setShakeChara( 260, 0, 54, 30);

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

SP_start = -45;

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setScaleKey( SP_start+370,   0, 0.7, 0.7);
setScaleKey( SP_start+430,   0, 0.7, 0.7);
--setScaleKey( SP_start+415,   0, 1.5, 1.5);
changeAnime( SP_start+370, 0, 31);
setDisp( SP_start+370, 0, 1);
setShakeChara( SP_start+405, 0, 54, 15);


setMoveKey(  SP_start+369,    0,      -300,  -1300,   0);
setMoveKey(  SP_start+370,    0,      -300,  -1300,   0);
--setMoveKey(  SP_start+390,    0,   -100,  -250,   0);
setMoveKey(  SP_start+420-15,    0,   0,  -60,   0);
--setMoveKey(  460,    0,   300,  800,   0);

-- 敵吹っ飛ぶモーション
setDisp( SP_start+370, 1, 1);
changeAnime( SP_start+370, 1, 104); --ガード
changeAnime( SP_start+405, 1, 106);

setMoveKey(  SP_start+369,    1,  235,  0,   0);
setMoveKey(  SP_start+370,    1,  80,  200,   0);
setMoveKey(  SP_start+404,    1,  80,  200,   0);
setMoveKey(  SP_start+417,    1,  150,  600,   0);

setScaleKey( SP_start+369,    1,  1.5, 1.5);
setScaleKey( SP_start+370,    1,  1.5, 1.5);
setScaleKey( SP_start+404,    1,  1.5, 1.5);

--setMoveKey(  SP_start+400,    1,   120,  0,   0);
setScaleKey(  SP_start+415,   1,   0.5,  0.5);

ryusen = entryEffectLife( SP_start+370, 921, 60, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey(SP_start+370, ryusen, -80);
setEffScaleKey(spep_8, ryusen, 2, 2);


kamehame_beam2 = entryEffectLife( SP_start+370, SP_02, 55, 0x40+0x80,  0,  300,  -320,  -1050);   -- 迫るかめはめ波
setEffScaleKey(SP_start+370, kamehame_beam2, 1, 1);
setEffRotateKey(SP_start+370, kamehame_beam2, -70);
--setEffScaleKey(452, kamehame_beam2, 1, 1);
--setEffScaleKey(454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+405, 1, 0);  -- ダメージ振動等

--speff = entryEffect( 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( 370, SE_08);

playSe( SP_start+455, SE_09);
-- 敵吹っ飛ぶモーション
--changeAnime( 455, 1, 108);
--setMoveKey(  455, 1,  120,    0,  0);
--setMoveKey(  469, 1,  400,    0,  0);
--setScaleKey( 455, 1,  1.6, 1.6);
--setScaleKey( 458, 1,  1.5, 1.5);
--setScaleKey( 468, 1,  0.2, 0.2);





-- ** エフェクト等 ** --
setShakeChara( SP_start+370, 1, 99, 20);

entryFadeBg( SP_start+370, 0, 60, 0, 10, 10, 10, 150);          -- ベース暗め　背景



--entryFlash( (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

bago = entryEffectLife(SP_start+405,10021,10,0x100,0,-1,-200,250);--バゴォッ
setEffAlphaKey( SP_start+405, bago, 255);
setEffScaleKey(SP_start+405, bago, 2, 2);

-- 書き文字エントリー
--ct = entryEffectLife( SP_start+370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
--setEffShake(SP_start+370, ct, 99, 20);
--setEffScaleKey( SP_start+370, ct, 2.4, 2.4);
--setEffRotateKey(SP_start+370, ct, 70);
--setEffAlphaKey(SP_start+370, ct, 255);
--setEffAlphaKey(SP_start+430, ct, 255);
--setEffAlphaKey(SP_start+450, ct, 0);

------------------------------------------------------
-- 回避 (110F)
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 348; --エンドフェイズのフレーム数を置き換える

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

hit_eff_1 = entryEffect( SP_start+404,  4,  0x40,  0,  0,  10, 200);--HIT
hit_eff_2 = entryEffect( SP_start+404,  906,  0x40,  0,  0,  10, 200);
hit_eff_3 = entryEffect( SP_start+404,  908,  0x40,  0,  0,  10, 200);

playSe( SP_start+404, SE_06);

entryFade( SP_start+415, 6,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

SP_end = -45
------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------
setDisp( SP_end+SP_start+469, 0, 0);
setDisp( SP_end+SP_start+469, 1, 1);
setMoveKey(  SP_end+SP_start+469,    1,  100,  0,   0);
setScaleKey( SP_end+SP_start+469,    1,  1.0, 1.0);
setMoveKey(  SP_end+SP_start+470,    1,    0,   0,   128);
setScaleKey( SP_end+SP_start+470,    1,  0.1, 0.1);

changeAnime( SP_end+SP_start+470, 1, 107);                         -- 手前ダメージ
entryEffect( SP_end+SP_start+478, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_end+SP_start+478, SE_10);

setMoveKey(  SP_end+SP_start+478,   1,    0,   0,   128);
setMoveKey(  SP_end+SP_start+485,   1,  -60,  -200,  -100);
--setMoveKey(  486,   1,  -60,  -200,  -100);
setDamage( SP_end+SP_start+486, 1, 0);  -- ダメージ振動等
setShake(SP_end+SP_start+477,6,15);
setShake(SP_end+SP_start+483,15,10);

setRotateKey( SP_end+SP_start+470,  1,  30 );
setRotateKey( SP_end+SP_start+472,  1,  80 );
setRotateKey( SP_end+SP_start+474,  1, 120 );
setRotateKey( SP_end+SP_start+476,  1, 160 );
setRotateKey( SP_end+SP_start+478,  1, 200 );
setRotateKey( SP_end+SP_start+480,  1, 260 );
setRotateKey( SP_end+SP_start+482,  1, 320 );
setRotateKey( SP_end+SP_start+484,  1,   0 );

setShakeChara( SP_end+SP_start+485, 1, 5,  10);
setShakeChara( SP_end+SP_start+490, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_end+SP_start+485, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake(SP_end+SP_start+485, ct, 30, 10);
setEffRotateKey( SP_end+SP_start+485, ct, -40);
setEffScaleKey( SP_end+SP_start+485, ct, 4.0, 4.0);
setEffScaleKey( SP_end+SP_start+486, ct, 2.0, 2.0);
setEffScaleKey( SP_end+SP_start+487, ct, 2.6, 2.6);
setEffScaleKey( SP_end+SP_start+488, ct, 4.0, 4.0);
setEffScaleKey( SP_end+SP_start+489, ct, 2.6, 2.6);
setEffScaleKey( SP_end+SP_start+490, ct, 3.8, 3.8);
setEffScaleKey( SP_end+SP_start+580, ct, 3.8, 3.8);
setEffAlphaKey( SP_end+SP_start+485, ct, 255);
setEffAlphaKey( SP_end+SP_start+575, ct, 255);
setEffAlphaKey( SP_end+SP_start+585, ct, 0);

playSe( SP_end+SP_start+473, SE_11);
shuchusen = entryEffectLife( SP_end+SP_start+473, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_end+SP_start+473, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_end+SP_start+486);

entryFade( SP_end+SP_start+570, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase(SP_end+SP_start+580);

end
