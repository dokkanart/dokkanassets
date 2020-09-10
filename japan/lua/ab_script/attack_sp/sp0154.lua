--超サイヤ人トランクス(幼年期)_ファイナルキャノン

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
SP_start = -60;

SP_01 = 100239;--共通溜め
SP_02 = 100241;--共通発射（キャラ含む）
SP_03 = 100242;--共通命中
SP_04 = 1557;--命中後の地球から放出
SP_05 = 100240;--相方登場

SP_02e = 100244;--敵側での発射
SP_05e = 100243;--敵側での相方登場

--changeAnime( 0, 0, 0);                       -- 立ち
setDisp( 0, 1, 0);

setScaleKey(   0,   0, 1.5, 1.5);
setScaleKey(   1,   0, 1.5, 1.5);

------------------------------------------------------
-- 気溜め(40F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( SP_start+69, 0);
changeAnime( SP_start+ 70, 0, 30);                       -- 溜め!
playSe( SP_start+ 73, SE_03);

entryEffect( SP_start+  70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 (気)
entryEffect( SP_start+  70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 (気)
speff = entryEffect( SP_start+  80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect( SP_start+  80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

playSe( SP_start+ 80, SE_04);

kame_hand = entryEffect( SP_start+ 70, SP_01, 0x40,      0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( SP_start+ 70, kame_hand, 1.0, 1.0);
--setEffScaleKey( SP_start+ 70, kame_hand, 1.0, 1.0);

-- ** エフェクト等 ** --
aura = entryEffectLife( SP_start+  70,   311, 99, 0x80+0x40,  0,  1,  0,  0); -- オーラ
setEffScaleKey( SP_start+ 30, aura, 1.5, 1.5);
setShakeChara( SP_start+ 70, 0, 49, 5);

syutsugen=entryEffect( SP_start+  70,   SP_05,  0x80, -1,  300,  0,  0);    --悟天出現
setEffAlphaKey( SP_start+70, syutsugen, 255);
setEffScaleKey( SP_start+ 70, syutsugen, 1.4, 1.4);

entryFade( SP_start+ 170 -6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 90, 10008, 80, 0x100, -1, 0, -190, 350);    -- ゴゴゴ・・・
setEffShake( SP_start+90, ct, 40, 8);
setEffScaleKey( SP_start+90, ct, 1.4, 1.4);
--setEffAlphaKey( SP_start+90, syutsugen, 255);

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
--setDisp( SP_start+ 176, 0, 1);
--setEffAlphaKey( SP_start+176, syutsugen, 0);--相方のキャラ削除


entryFade( SP_start+ 255, 3, 2+4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
--entryFlash( SP_start+ (170+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (170+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (170+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (170+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (170+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
playSe( SP_start+ 170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(110F)
------------------------------------------------------
setDisp( SP_start+ 260, 0, 0);
changeAnime( SP_start+ 260, 0, 31);                                    -- かめはめ発射ポーズ
setMoveKey( SP_start+  259,    0,      0,  0,   0);
setMoveKey( SP_start+  259,    0,      1000,  0,   0);
--setMoveKey( SP_start+  270,    0,      0,  0,   0);
--setMoveKey( SP_start+  290,    0,   -30,  0,   20);

kamehame_beam = entryEffect( SP_start+ 260, SP_02, 0x100,  0,  0,  0,  0);   -- 伸びるかめはめ波

setEffScaleKey(SP_start+ 260, kamehame_beam, 1, 1);
setEffScaleKey(SP_start+ 260+96, kamehame_beam, 1.3, 1.3);

playSe( SP_start+ 260, SE_07);

--spname = entryEffect( SP_start+ 260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture( spname, 7, 4);                                  -- 技名テクスチャ差し替え

--setMoveKey( SP_start+  300,    0,   -150,  0,   50);
--setMoveKey( SP_start+  305,    0,   -550,  0,   80);
setMoveKey(  SP_start+ 260+29,    0,   -550,  300,   70);
setMoveKey(  SP_start+ 260+39,    0,   -900,  350,   120);


entryFade( SP_start+ 365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg( SP_start+ 260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg( SP_start+ 260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg( SP_start+ 300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg( SP_start+ 300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife( SP_start+ 260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey( SP_start+260, sen2, 190);
setEffScaleKey( SP_start+ 260, sen2, 1.25, 1.25);

setShakeChara( SP_start+ 305, 0, 54, 50);

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
entryFade( SP_start+ 355, 10,  5, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade]

removeAllEffect( SP_start+365);--エフェクト全削除

------------------------------------------------------
-- かめはめは迫る(100F)
------------------------------------------------------
setDisp( SP_start+ 370, 0, 0);
setDisp( SP_start+ 370, 1, 1);
--[[
changeAnime( SP_start+ 370, 1, 104);                        -- ガード
setMoveKey( SP_start+  369,    1,  235,  0,   0);
setMoveKey( SP_start+  370,    1,  235,  0,   0);
setMoveKey( SP_start+  371,    1,  235,  0,   0);
setScaleKey( SP_start+ 369,    1,  0.7, 0.7);
setScaleKey( SP_start+ 370,    1,  0.7, 0.7);

setMoveKey( SP_start+  400,    1,   120,  0,   0);
setScaleKey( SP_start+  400,   1,   1.6,  1.6);
--]]

--敵が攻撃を受ける角度を変更
changeAnime( SP_start+ 370, 1, 118);                        -- 気ダメ後ろ

setMoveKey( SP_start+  369,    1,   120,  0,   0);
setMoveKey( SP_start+  370,    1,  400,  -400,   0);
setMoveKey( SP_start+  371,    1,  400,  -400,   0);
setMoveKey( SP_start+  399,    1,   120,  -270,   0);

setScaleKey( SP_start+  370,   1,   1.5,  1.5);
setScaleKey( SP_start+  444,   1,   1.5,  1.5);

playSe( SP_start+ 390, SE_06);

kamehame_beam2 = entryEffect( SP_start+ 370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey( SP_start+370, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+452, kamehame_beam2, 1, 1);
setEffScaleKey( SP_start+454, kamehame_beam2, 2.5, 2.5);
setDamage( SP_start+ 452, 1, 0);  -- ダメージ振動等

--speff = entryEffect( SP_start+ 370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture( speff, 6, 3);                       -- カットイン差し替え
--playSe( SP_start+ 370, SE_08);

playSe( SP_start+ 455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime( SP_start+ 455, 1, 108);
setMoveKey( SP_start+  455, 1,  120,    0,  0);
setMoveKey( SP_start+  469, 1,  400,    0,  0);
--[[
setScaleKey( SP_start+ 455, 1,  1.6, 1.6);
setScaleKey( SP_start+ 458, 1,  1.5, 1.5);
setScaleKey( SP_start+ 468, 1,  0.2, 0.2);
--]]
-- ** エフェクト等 ** --
setShakeChara( SP_start+ 370, 1, 99, 20);

--entryFadeBg( SP_start+ 370, 0, 99, 0,0, 0, 0, 255);          -- ベース真っ暗　背景
entryFadeBg( SP_start+ 370, 0, 60, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--entryEffectLife( SP_start+ 370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
ryusen = entryEffectLife( SP_start+ 370, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( SP_start+ 370, ryusen, 230);
setEffScaleKey( SP_start+ 370, ryusen, 1.7, 1.7);

--entryFlash( SP_start+ (370+10), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (370+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (370+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (370+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (370+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash( SP_start+ (370+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ 370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake( SP_start+370, ct, 99, 20);
setEffScaleKey( SP_start+ 370, ct, 2.4, 2.4);
setEffRotateKey( SP_start+370, ct, 70);
setEffAlphaKey( SP_start+370, ct, 255);
--setEffAlphaKey( SP_start+430, ct, 255);
setEffAlphaKey( SP_start+409, ct, 0);

ct = entryEffectLife( SP_start+ 408, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake( SP_start+408, ct, 99, 20);
setEffScaleKey( SP_start+ 408, ct, 0.1, 0.1);
setEffScaleKey( SP_start+ 421, ct, 2.4, 2.4);
setEffScaleKey( SP_start+ 431, ct, 2.8, 2.8);
setEffAlphaKey( SP_start+408, ct, 255);
setEffAlphaKey( SP_start+441, ct, 255);
setEffAlphaKey( SP_start+450, ct, 0);

entryFade( SP_start+ 450, 6,  14, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 320; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 343; --エンドフェイズのフレーム数を置き換える

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
SP_ATK_4 = 462;


setDisp( SP_start+ SP_ATK_4, 1, 0);
setDisp( SP_start+ SP_ATK_4+9, 1, 1); --411


--setDisp( SP_start+ SP_ATK_4+6, 1, 1);
setMoveKey(  SP_start+ SP_ATK_4-1,    1,  100,  0,   0);
setScaleKey( SP_start+ SP_ATK_4-1,    1,  1.0, 1.0);
setMoveKey(  SP_start+ SP_ATK_4,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_4,    1,  0.1, 0.1);

changeAnime( SP_start+ SP_ATK_4, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ SP_ATK_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ SP_ATK_4+8, SE_10);

setMoveKey(  SP_start+ SP_ATK_4+8,   1,    0,   0,   128);
setMoveKey(  SP_start+ SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_start+ SP_ATK_4+16,   1,  -60,  -200,  -100);
setDamage( SP_start+ SP_ATK_4+16, 1, 0);  -- ダメージ振動等
setShake(SP_start+ SP_ATK_4+7,6,15);
setShake(SP_start+ SP_ATK_4+13,15,10);

setRotateKey( SP_start+ SP_ATK_4,  1,  30 );
setRotateKey( SP_start+ SP_ATK_4+2,  1,  80 );
setRotateKey( SP_start+ SP_ATK_4+4,  1, 120 );
setRotateKey( SP_start+ SP_ATK_4+6,  1, 160 );
setRotateKey( SP_start+ SP_ATK_4+8,  1, 200 );
setRotateKey( SP_start+ SP_ATK_4+10,  1, 260 );
setRotateKey( SP_start+ SP_ATK_4+12,  1, 320 );
setRotateKey( SP_start+ SP_ATK_4+14,  1,   0 );

setShakeChara( SP_start+ SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+115, ct, 0);

playSe( SP_start+ SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_start+ SP_ATK_4+16);

entryFade( SP_start+ SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+ SP_ATK_4+110);
else

------------------------------------------------------
-- 気溜め( tyo+40F)
------------------------------------------------------

setMoveKey(0,    0,    -140,  -40,   0);
setMoveKey(1,    0,    -140,  -40,   0);

--気を貯める
entryEffect(5,   1501,   0x80, -1,  0,  0,  0);    -- eff_002
entryEffect(5,   1500,   0,    -1,  0,  0,  0);    -- eff_001
playSe(5, SE_01);

-- ** エフェクト等 ** --
aura = entryEffectLife(5,   311, 39, 0x40+0x80,  0,  1,  160,  -15); -- オーラ
setEffScaleKey(5, aura, 1.5, 1.5);
setShakeChara(5, 0, 19, 5);

kame_hand = entryEffect( 5, SP_01, 0x40+0x100,   0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( 5, kame_hand, 1.0, 1.0);

syutsugen=entryEffect( 15,   SP_05e,  0x100, -1,  300,  40,   80);    --悟天出現
setEffAlphaKey( 15, syutsugen, 255);
setEffScaleKey( 15, syutsugen, 1.4, 1.4);

-- 書き文字エントリー
ct = entryEffectLife(5, 10013, 39, 0, -1, 0, 0, 200); -- ズズンッ
setEffShake(5, ct, 40, 7);
setEffAlphaKey(5, ct, 255);
setEffAlphaKey(5, ct, 255);
setEffAlphaKey(30, ct, 0);
setEffScaleKey(30, ct, 0.1, 0.1);
setEffScaleKey(15, ct, 2.0, 2.0);
playSe(5, SE_02);

------------------------------------------------------
-- かめはめ波溜め！(100F)
------------------------------------------------------
setVisibleUI( tyo+69, 0);
changeAnime(0, 0, 30);                       -- 溜め!
playSe( tyo+73, SE_03);

entryEffect( tyo+70,   1503,   0x80,  -1,  0,  0,  0);   -- eff_004 ( tyo2+気)
entryEffect( tyo+70,   1502,   0,     -1,  0,  0,  0);   -- eff_003 ( tyo2+気)

--speff = entryEffect(80,   1504,   0,     -1,  0,  0,  0);   -- eff_005 ( tyo2+カットイン)
--setEffReplaceTexture(speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(80,   1505,   0,     -1,  0,  0,  0);   -- eff_006 ( tyo2+セリフ)
--setEffReplaceTexture(speff, 4, 5);                           -- セリフ差し替え

playSe( tyo+80, SE_04);

kame_hand = entryEffect( tyo+71, SP_01, 0x40+0x100,   0,  300,  0,  0);   -- 手のカメハメ波部
setEffScaleKey( tyo+71, kame_hand, 1.0, 1.0);

--entryFade( tyo+165, 3, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
aura = entryEffectLife( tyo+70,   311, 99, 0x40+0x80,  0,  1,  160,  -15); -- オーラ
setEffScaleKey( tyo+30, aura, 1.5, 1.5);
setShakeChara( tyo2+70, 0, 49, 5);

-- 書き文字エントリー
ct = entryEffectLife( tyo2+90, 10008, 39, 0x100, -1, 0, -190, 300);    -- ゴゴゴ・・・
setEffShake( tyo2+90, ct, 40, 8);
setEffScaleKey( tyo2+90, ct, 1.4, 1.4);

entryFade(tyo2+170 -6, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

setMoveKey(tyo2+169,    0,    -140,  -40,   0);

------------------------------------------------------
-- カードカットイン(tyo2+90F)
------------------------------------------------------
setScaleKey(tyo2+169,   0, 1.5, 1.5);
setScaleKey(tyo2+170,   0, 1.0, 1.0);

playSe(tyo2+170, SE_05);
speff = entryEffect(tyo2+170,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture(speff, 1, 1);
setEffReplaceTexture(speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture(speff, 5, 4);                                  -- 技名テクスチャ差し替え


entryFade(tyo2+255, 3, 2+4, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

playSe(tyo2+170+64, SE_06);
------------------------------------------------------
-- カメハメハ発射(tyo2+110F)
------------------------------------------------------
changeAnime(tyo2+260, 0, 31);                                    -- かめはめ発射ポーズ
setDisp(tyo2+260, 0, 0);

--[[
setMoveKey(tyo2+259,    0,      0,  0,   0);
setMoveKey(tyo2+260,    0,   -600,  0,   0);
setMoveKey(tyo2+261,    0,   -600,  0,   0);
setMoveKey(tyo2+270,    0,   -100,  0,   0);
--]]
setMoveKey(tyo2+259,    0,      0,  0,   0);
--setMoveKey(tyo2+260,    0,      1000,  0,   0);
--setMoveKey(tyo2+270,    0,      0,  0,   0);
--setMoveKey(tyo2+290,    0,   -30,  0,   20);

kamehame_beam = entryEffect(tyo2+260, SP_02e, 0x100,  0,  0,  0,  0);   -- 伸びるかめはめ波
setEffScaleKey(tyo2+ 260, kamehame_beam, 1, 1);
setEffScaleKey(tyo2+ 260+96, kamehame_beam, 1.3, 1.3);

playSe(tyo2+260, SE_07);

--spname = entryEffect(tyo2+260, 1508,  0,  -1,  0,  0,  0);               -- かめはめ波文字
--setEffReplaceTexture(spname, 7, 4);                                  -- 技名テクスチャ差し替え

-- 途中からカメハメハが伸びる
--setMoveKey(tyo2+299,    0,   -100,  0,   0);
--setMoveKey(tyo2+300,    0,   -100,  0,   0);
--setMoveKey(tyo2+308,    0,   -1100,  0,   0);
--setMoveKey(tyo2+300,    0,   -150,  0,   50);
--setMoveKey(tyo2+305,    0,   -500,  0,   80);
--setMoveKey(tyo2+308,    0,   -1100,  0,   0);
setMoveKey(  tyo2+ 260+29,    0,   -550,  300,   70);
setMoveKey(  tyo2+ 260+39,    0,   -900,  350,   120);


entryFade(tyo2+365, 3, 2, 5, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** エフェクト等 ** --
entryFadeBg(tyo2+260, 0, 109, 0, 255, 255, 255, 255);       -- ベース暗め　背景
entryFadeBg(tyo2+260, 0, 40, 0, 230, 230, 230, 255);    -- 最初だけ明るい　背景
--entryFadeBg(tyo2+300, 0, 2, 8, 100, 140, 250, 250);     -- 青い　背景
entryFadeBg(tyo2+300, 0, 2, 8, 0, 0, 0, 250);     -- 青い　背景

sen2 = entryEffectLife(tyo2+260, 921, 109, 0x80,  -1,  0,  0,  0); -- 流線
setEffRotateKey(tyo2+260, sen2, 180);
setShakeChara(tyo2+305, 0, 54, 50);

shuchusen = entryEffectLife(tyo2+260, 906, 49, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey(tyo2+260, shuchusen, 1.0, 1.0);
setEffScaleKey(tyo2+300, shuchusen, 1.0, 1.0);
setEffScaleKey(tyo2+309, shuchusen, 2.0, 2.0);

--entryFlash(tyo2+(tyo2+260+10), 1,  fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+22), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+36), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+50), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+64), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+80), 1, fcolor_r, fcolor_g, fcolor_b, 200);
--entryFlash(tyo2+(tyo2+260+92), 1, fcolor_r, fcolor_g, fcolor_b, 200);

-- 書き文字エントリー
ct = entryEffectLife(tyo2+268, 10012, 32, 0, -1, 0, 200, 300); -- ズオッ
setEffShake(tyo2+268, ct, 32, 5);
setEffAlphaKey(tyo2+268, ct, 255);
setEffAlphaKey(tyo2+290, ct, 255);
setEffAlphaKey(tyo2+300, ct, 0);
setEffScaleKey(tyo2+268, ct, 0.0, 0.0);
setEffScaleKey(tyo2+272, ct, 1.3, 1.3);
setEffScaleKey(tyo2+292, ct, 1.3, 1.3);
setEffScaleKey(tyo2+300, ct, 6.0, 6.0);
playSe(tyo2+300, SE_07);

removeAllEffect( tyo2+365);--エフェクト全削除

------------------------------------------------------
-- かめはめは迫る(tyo2+100F)
------------------------------------------------------
setDisp(tyo2+370, 0, 0);
setDisp(tyo2+370, 1, 1);
--[[
changeAnime(tyo2+370, 1, 104);                        -- ガード
setMoveKey(tyo2+369,    1,  235,  0,   0);
setMoveKey(tyo2+370,    1,  235,  0,   0);
setMoveKey(tyo2+371,    1,  235,  0,   0);
setScaleKey(tyo2+369,    1,  0.7, 0.7);
setScaleKey(tyo2+370,    1,  0.7, 0.7);

setMoveKey(tyo2+400,    1,   120,  0,   0);
setScaleKey(tyo2+400,   1,   1.6,  1.6);
--]]

--敵が攻撃を受ける角度を変更
changeAnime( tyo2+ 370, 1, 118);                        -- 気ダメ後ろ

setMoveKey( tyo2+  369,    1,   120,  0,   0);
setMoveKey( tyo2+  370,    1,  400,  -400,   0);
setMoveKey( tyo2+  371,    1,  400,  -400,   0);
setMoveKey( tyo2+  399,    1,   120,  -270,   0);

setScaleKey( tyo2+  370,   1,   1.5,  1.5);
setScaleKey( tyo2+  444,   1,   1.5,  1.5);

playSe(tyo2+390, SE_06);

kamehame_beam2 = entryEffect(tyo2+370, SP_03,   0, -1,  0,  0,  0);   -- 迫るかめはめ波
setEffScaleKey(tyo2+370, kamehame_beam2, 1, 1);
setEffScaleKey(tyo2+452, kamehame_beam2, 1, 1);
setEffScaleKey(tyo2+454, kamehame_beam2, 2.5, 2.5);
setDamage(tyo2+452, 1, 0);  -- ダメージ振動等

--speff = entryEffect(tyo2+370, 1506,   0,  -1,  0,  0,  0);    -- カットイン
--setEffReplaceTexture(tyo2+speff, 6, 3);                       -- カットイン差し替え
--playSe(tyo2+370, SE_08);

playSe(tyo2+455, SE_09);
-- 敵吹っ飛ぶモーション
changeAnime(tyo2+455, 1, 108);
setMoveKey(tyo2+455, 1,  120,    0,  0);
setMoveKey(tyo2+469, 1,  400,    0,  0);
--[[
setScaleKey(tyo2+455, 1,  1.6, 1.6);
setScaleKey(tyo2+458, 1,  1.5, 1.5);
setScaleKey(tyo2+468, 1,  0.2, 0.2);
--]]
-- ** エフェクト等 ** --
setShakeChara(tyo2+370, 1, 99, 20);

--entryFadeBg(tyo2+370, 0, 99, 0,255, 255, 255, 255);          -- ベース真っ暗　背景
entryFadeBg( tyo2+ 370, 0, 60, 0, 10, 10, 10, 180);       -- ベース暗め　背景

--entryEffectLife(tyo2+370, 921, 99, 0x80,  -1,  0,  0,  0); -- 流線斜め
ryusen = entryEffectLife( tyo2+ 370, 921, 70, 0x80,  -1,  0,  0,  0); -- 流線斜め
setEffRotateKey( tyo2+ 370, ryusen, 230);
setEffScaleKey( tyo2+ 370, ryusen, 1.7, 1.7);

-- 書き文字エントリー
ct = entryEffectLife(tyo2+370, 10014, 99, 0, -1, 0, -100, 255); -- ズドドッ
setEffShake(tyo2+370, ct, 99, 20);
setEffScaleKey(tyo2+370, ct, 2.4, 2.4);
setEffRotateKey(tyo2+370, ct, 10);
setEffAlphaKey(tyo2+370, ct, 255);
--setEffAlphaKey(tyo2+430, ct, 255);
setEffAlphaKey(tyo2+408, ct, 0);

ct = entryEffectLife( tyo2+ 408, 10006, 45, 0x100, -1, 0, 0, 255); -- ギャン
setEffShake( tyo2+408, ct, 99, 20);
setEffScaleKey( tyo2+ 408, ct, 0.1, 0.1);
setEffScaleKey( tyo2+ 421, ct, 2.4, 2.4);
setEffScaleKey( tyo2+ 431, ct, 2.8, 2.8);
setEffAlphaKey( tyo2+408, ct, 255);
setEffAlphaKey( tyo2+441, ct, 255);
setEffAlphaKey( tyo2+450, ct, 0);

entryFade( tyo2+ 450, 6,  14, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

--entryFade(tyo2+452, 6,  17, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 340; --エンドフェイズのフレーム数を置き換える
--SP_dodge = 363; --エンドフェイズのフレーム数を置き換える

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
-- 爆発 (tyo2+110F)
------------------------------------------------------
SP_ATK_4 = 482;


setDisp( SP_start+ SP_ATK_4, 1, 0);
setDisp( SP_start+ SP_ATK_4+9, 1, 1); --411 431にしたい


--setDisp( SP_start+ SP_ATK_4+6, 1, 1);
setMoveKey(  SP_start+ SP_ATK_4-1,    1,  100,  0,   0);
setScaleKey( SP_start+ SP_ATK_4-1,    1,  1.0, 1.0);
setMoveKey(  SP_start+ SP_ATK_4,    1,    0,   0,   128);
setScaleKey( SP_start+ SP_ATK_4,    1,  0.1, 0.1);

changeAnime( SP_start+ SP_ATK_4, 1, 107);                         -- 手前ダメージ
entryEffect( SP_start+ SP_ATK_4+8, 1509,  0x80,  -1,  0,  0,  0);   -- 爆発
playSe( SP_start+ SP_ATK_4+8, SE_10);

setMoveKey(  SP_start+ SP_ATK_4+8,   1,    0,   0,   128);
setMoveKey(  SP_start+ SP_ATK_4+15,   1,  -60,  -200,  -100);
setMoveKey(  SP_start+ SP_ATK_4+16,   1,  -60,  -200,  -100);
setDamage( SP_start+ SP_ATK_4+16, 1, 0);  -- ダメージ振動等
setShake(SP_start+ SP_ATK_4+7,6,15);
setShake(SP_start+ SP_ATK_4+13,15,10);

setRotateKey( SP_start+ SP_ATK_4,  1,  30 );
setRotateKey( SP_start+ SP_ATK_4+2,  1,  80 );
setRotateKey( SP_start+ SP_ATK_4+4,  1, 120 );
setRotateKey( SP_start+ SP_ATK_4+6,  1, 160 );
setRotateKey( SP_start+ SP_ATK_4+8,  1, 200 );
setRotateKey( SP_start+ SP_ATK_4+10,  1, 260 );
setRotateKey( SP_start+ SP_ATK_4+12,  1, 320 );
setRotateKey( SP_start+ SP_ATK_4+14,  1,   0 );

setShakeChara( SP_start+ SP_ATK_4+15, 1, 5,  10);
setShakeChara( SP_start+ SP_ATK_4+20, 1, 10, 20);

-- 書き文字エントリー
ct = entryEffectLife( SP_start+ SP_ATK_4+15, 10005, 100, 0, -1, 0, -50, 230); -- ガッ
setEffShake( SP_start+ SP_ATK_4+15, ct, 30, 10);
setEffRotateKey( SP_start+ SP_ATK_4+15, ct, -40);
setEffScaleKey( SP_start+ SP_ATK_4+15, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+16, ct, 2.0, 2.0);
setEffScaleKey( SP_start+ SP_ATK_4+17, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+18, ct, 4.0, 4.0);
setEffScaleKey( SP_start+ SP_ATK_4+19, ct, 2.6, 2.6);
setEffScaleKey( SP_start+ SP_ATK_4+20, ct, 3.8, 3.8);
setEffScaleKey( SP_start+ SP_ATK_4+110, ct, 3.8, 3.8);
setEffAlphaKey( SP_start+ SP_ATK_4+15, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+105, ct, 255);
setEffAlphaKey( SP_start+ SP_ATK_4+115, ct, 0);

playSe( SP_start+ SP_ATK_4+3, SE_11);
shuchusen = entryEffectLife( SP_start+ SP_ATK_4+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( SP_start+ SP_ATK_4+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(SP_start+ SP_ATK_4+16);

entryFade( SP_start+ SP_ATK_4+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( SP_start+ SP_ATK_4+110);
end
