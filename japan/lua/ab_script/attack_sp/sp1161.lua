--sp1161 孫悟空 太陽拳


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

--味方側
SP_01 = 151413;--溜め
SP_02 = 151414;--太陽拳発射
SP_03 = 151415;--敵に迫る
SP_04 = 151416;--突進パンチ
SP_05 = 151417;--パンチ時背景


--敵側は味方側に1xをつけてます

SP_11 = 151418;--敵用：溜め
--SP_12 = 151419;--敵用：太陽拳発射
SP_13 = 151420;--敵用：敵に迫る
SP_14= 151421;--敵用：突進パンチ

multi_frm = 2;

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -54,   0);
setMoveKey(   0,   1,    0, -54,   0);
setMoveKey(   1,   0,    0, -54,   0);
setMoveKey(   1,   1,    0, -54,   0);
setMoveKey(   2,   0,    0, -54,   0);
setMoveKey(   2,   1,    0, -54,   0);
setMoveKey(   3,   0,    0, -54,   0);
setMoveKey(   3,   1,    0, -54,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(110F)
------------------------------------------------------
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

spep_0 = 0;

entryFadeBg( spep_0, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_0, SP_01, 110, 0x100, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_0, kidame, 0, 0, 0);
setEffScaleKey( spep_0, kidame, 1.0, 1.0);
setEffShake( spep_0, kidame, 110, 10)

--entryEffect(  spep_0,   1501,   0x80,    -1,  0,  0,  0);    -- eff_001
--entryEffect(  spep_0,   1502,   0,    -1,  0,  0,  0);    -- eff_002
speff = entryEffect(  spep_0+20,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff = entryEffect(  spep_0+20,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ct = entryEffectLife( spep_0, 10013, 30, 0, -1, 0, 50, 300); -- ズズンッ
setEffShake( spep_0, ct, 40, 10);
setEffRotateKey( spep_0, ct, 0)
setEffAlphaKey( spep_0, ct, 0);
setEffAlphaKey( spep_0+5, ct, 255);
setEffAlphaKey( spep_0+15, ct, 255);
setEffAlphaKey( spep_0+20, ct, 255);
setEffAlphaKey( spep_0+25, ct, 0);
setEffScaleKey( spep_0, ct, 0.1, 0.1);
setEffScaleKey( spep_0+5, ct, 3.5, 3.5);
setEffScaleKey( spep_0+25, ct, 3.5, 3.5);

ctgogo = entryEffectLife( spep_0+34, 190006, 76, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake(spep_0+34, ctgogo, 76, 10);
setEffScaleKey(spep_0+34, ctgogo, 0.8, 0.8);
setEffRotateKey(spep_0+34, ctgogo, 0);
setEffAlphaKey( spep_0+34, ctgogo, 255);

-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0, 906, 110, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen0, 1.2, 1.2);

-- ** 音 ** --
playSe( spep_0+10, SE_01);
playSe( spep_0+10, SE_02);


-- ** 次の準備 ** --
spep_1 = spep_0+110;
entryFade( spep_1-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


-- ** カードエフェクト ** --
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenct = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線ct
setEffMoveKey( spep_1, shuchusenct, 0, 0, 0);
setEffScaleKey( spep_1, shuchusenct, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusenct, 255);
setEffRotateKey( spep_1, shuchusenct, 0);

-- ** 音 ** --
playSe( spep_1, SE_05);


-- ** 次の準備 ** --
spep_2 = spep_1+90;
entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 太陽拳(80F)
------------------------------------------------------

-- ** エフェクト ** --

taiyoken = entryEffectLife( spep_2, SP_02, 80, 0x100, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_2, taiyoken, 0, 0, 0);
setEffScaleKey( spep_2, taiyoken, 1.0, 1.0);
setEffShake( spep_2, taiyoken, 60, 10);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 40, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);

-- ** 背景エフェクト ** --
taiyokenhaikei = entryEffectLife( spep_2-38, SP_05, 140, 0x80, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_2, taiyokenhaikei, 0, 0, 0);
setEffScaleKey( spep_2, taiyokenhaikei, 1.0, 1.0);

playSe( spep_2+4, 1062);

-- 書き文字エントリー --
ct = entryEffectLife( spep_2, 10012, 60, 0, -1, 0, 150, 350); -- ズオッ
setEffShake( spep_2, ct, 60, 20);
setEffRotateKey( spep_2, ct, 30)
setEffAlphaKey( spep_2, ct, 255);
setEffAlphaKey( spep_2+40, ct, 255);
setEffAlphaKey( spep_2+60, ct, 0);
setEffScaleKey( spep_2, ct, 0.1, 0.1);
setEffScaleKey( spep_2+10, ct, 3.0, 3.0);
setEffScaleKey( spep_2+40, ct, 3.0, 3.0);
setEffScaleKey( spep_2+60, ct, 6.0, 6.0);

-- ** 音 ** --


-- ** 次の準備 ** --
spep_3 = spep_2+80;
entryFade( spep_3-50, 30, 50, 30, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 80, 0, fcolor_r, fcolor_g, fcolor_b, 150); -- ベース暗め　背景


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 220; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 悟空迫る(80F)
------------------------------------------------------

-- ** キャラクター ** --


-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_3, SP_03, 75, 0x100, -1, 0, 0, 0); -- 迫る悟空
setEffMoveKey( spep_3, semaru, 0, 0, 0);
setEffScaleKey( spep_3, semaru, 1.0, 1.0);
setEffShake( spep_3, semaru, 40, 10)


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 80, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);

-- ** 音 ** --

playSe( spep_3+30, 8);

-- ** 次の準備 ** --
spep_4 = spep_3+80;
entryFade( spep_4-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 38, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- 悟空殴る(100F)
------------------------------------------------------


-- ** キャラクター ** --

setDisp( spep_4, 1, 1);
setScaleKey( spep_4-1,    1,  1.4, 1.4);
changeAnime( spep_4, 1, 106);
changeAnime( spep_4+38, 1, 108);

setMoveKey(  spep_4,    1,  -300, 0,   10);
setMoveKey(  spep_4+15,    1,  100, 0,   10);
setMoveKey(  spep_4+25,    1,  100, 0,   10);
setMoveKey(  spep_4+38,    1,  140, 0,   10);
setMoveKey(  spep_4+98,    1,  140, 0,   10);

setScaleKey( spep_4,    1,  1.4, 1.4);
setScaleKey( spep_4+98,    1,  1.4, 1.4);

setRotateKey( spep_4-1,  1, -30 );
setRotateKey( spep_4,  1, -30 );
setRotateKey( spep_4+37,  1, -30 );
setRotateKey( spep_4+38,  1, -10 );
setRotateKey( spep_4+98,  1, -10 );

setShakeChara( spep_4, 1, 100, 20);


-- ** エフェクト等 ** --
naguru = entryEffectLife( spep_4, SP_04, 100, 0x100, -1, 0, 0, 0); -- 迫る悟空
setEffMoveKey( spep_4, naguru, 0, 0, 0);
setEffScaleKey( spep_4, naguru, 1.0, 1.0);
setEffShake( spep_4, naguru, 100, 10)

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_4, 920, 38, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, ryusen, 1.0, 1.0);

-- ** 白フェード ** --
entryFade( spep_4+38, 0,  1, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景エフェクト等 ** --
haikei = entryEffectLife( spep_4, SP_05, 100, 0x80, -1, 0, 0, 0); -- 迫る悟空
setEffMoveKey( spep_4, naguru, 0, 0, 0);
setEffScaleKey( spep_4, naguru, 1.0, 1.0);
setEffShake( spep_4, naguru, 42, 10)

-- 書き文字エントリー --
ct = entryEffectLife( spep_4+38, 10018, 62, 0, -1, 0, 0, 350); -- ドゴォンッ
setEffShake( spep_4+38, ct, 60, 20);
setEffRotateKey( spep_4+38, ct, 0)
setEffAlphaKey( spep_4+38, ct, 255);
setEffScaleKey( spep_4+38, ct, 4.0, 4.0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);

-- ** 音 ** --

playSe( spep_4+40, 1011);

-- ** 次の準備 ** --
spep_5 = spep_4+100;
entryFade( spep_5-8, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
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

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(110F)
------------------------------------------------------

spep_0 = 0;

entryFadeBg( spep_0, 0, 110, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** エフェクト等 ** --
kidame = entryEffectLife( spep_0, SP_11, 110, 0x100, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_0, kidame, 0, 0, 0);
setEffScaleKey( spep_0, kidame, 1.0, 1.0);
setEffShake( spep_0, kidame, 110, 10)

--entryEffect(  spep_0,   1501,   0x80,    -1,  0,  0,  0);    -- eff_001
--entryEffect(  spep_0,   1502,   0,    -1,  0,  0,  0);    -- eff_002
--speff = entryEffect(  spep_0+20,   1504,   0x100,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff = entryEffect(  spep_0+20,   1505,   0x100,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ct = entryEffectLife( spep_0, 10013, 30, 0, -1, 0, 50, 300); -- ズズンッ
setEffShake( spep_0, ct, 40, 10);
setEffRotateKey( spep_0, ct, 0)
setEffAlphaKey( spep_0, ct, 0);
setEffAlphaKey( spep_0+5, ct, 255);
setEffAlphaKey( spep_0+15, ct, 255);
setEffAlphaKey( spep_0+20, ct, 255);
setEffAlphaKey( spep_0+25, ct, 0);
setEffScaleKey( spep_0, ct, 0.1, 0.1);
setEffScaleKey( spep_0+5, ct, 3.5, 3.5);
setEffScaleKey( spep_0+25, ct, 3.5, 3.5);

ctgogo = entryEffectLife( spep_0+34, 190006, 76, 0x100, -1, 0, 0, 500);    -- ゴゴゴ・・・
setEffShake(spep_0+34, ctgogo, 76, 10);
setEffScaleKey(spep_0+34, ctgogo, -0.8, 0.8);
setEffRotateKey(spep_0+34, ctgogo, 0);
setEffAlphaKey( spep_0+34, ctgogo, 255);

-- ** 集中線 ** --
shuchusen0 = entryEffectLife( spep_0, 906, 110, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_0, shuchusen0, 1.2, 1.2);

-- ** 音 ** --
playSe( spep_0+10, SE_01);
playSe( spep_0+10, SE_02);


-- ** 次の準備 ** --
spep_1 = spep_0+110;
entryFade( spep_1-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

------------------------------------------------------
-- カードカットイン(90F)
------------------------------------------------------


-- ** カードエフェクト ** --
speff = entryEffect(  spep_1,   1507,   0,  -1,  0,  0,  0);   -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0);                         -- カード差し替え
setEffReplaceTexture( speff, 5, 4);                                  -- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusenct = entryEffectLife( spep_1, 906, 90, 0x100,  -1, 0,  0,  0); -- 集中線ct
setEffMoveKey( spep_1, shuchusenct, 0, 0, 0);
setEffScaleKey( spep_1, shuchusenct, 1.2, 1.2);
setEffAlphaKey( spep_1, shuchusenct, 255);
setEffRotateKey( spep_1, shuchusenct, 0);

-- ** 音 ** --
playSe( spep_1, SE_05);


-- ** 次の準備 ** --
spep_2 = spep_1+90;
entryFade( spep_2-5, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 太陽拳(80F)
------------------------------------------------------

-- ** エフェクト ** --

taiyoken = entryEffectLife( spep_2, SP_02, 80, 0x100, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_2, taiyoken, 0, 0, 0);
setEffScaleKey( spep_2, taiyoken, -1.0, 1.0);
setEffShake( spep_2, taiyoken, 60, 10);

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2, 906, 40, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_2, shuchusen2, 1.0, 1.0);

-- ** 背景エフェクト ** --
taiyokenhaikei = entryEffectLife( spep_2-38, SP_05, 140, 0x80, -1, 0, 0, 0); -- 放つエフェクト
setEffMoveKey( spep_2, taiyokenhaikei, 0, 0, 0);
setEffScaleKey( spep_2, taiyokenhaikei, 1.0, 1.0);

playSe( spep_2+4, 1062);

-- 書き文字エントリー --
ct = entryEffectLife( spep_2, 10012, 60, 0, -1, 0, 150, 350); -- ズオッ
setEffShake( spep_2, ct, 60, 20);
setEffRotateKey( spep_2, ct, 30)
setEffAlphaKey( spep_2, ct, 255);
setEffAlphaKey( spep_2+40, ct, 255);
setEffAlphaKey( spep_2+60, ct, 0);
setEffScaleKey( spep_2, ct, 0.1, 0.1);
setEffScaleKey( spep_2+10, ct, 3.0, 3.0);
setEffScaleKey( spep_2+40, ct, 3.0, 3.0);
setEffScaleKey( spep_2+60, ct, 6.0, 6.0);

-- ** 音 ** --


-- ** 次の準備 ** --
spep_3 = spep_2+80;
entryFade( spep_3-50, 30, 50, 30, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_3, 0, 80, 0, fcolor_r, fcolor_g, fcolor_b, 150); -- ベース暗め　背景


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 220; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge-12, 1042);

speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
setMoveKey(   SP_dodge+10,   0,    -2500, -250,   0);

endPhase(SP_dodge+10);
do return end
else end


------------------------------------------------------
-- 悟空迫る(80F)
------------------------------------------------------

-- ** キャラクター ** --


-- ** エフェクト等 ** --
semaru = entryEffectLife( spep_3, SP_13, 75, 0x100, -1, 0, 0, 0); -- 迫る悟空
setEffMoveKey( spep_3, semaru, 0, 0, 0);
setEffScaleKey( spep_3, semaru, 1.0, 1.0);
setEffShake( spep_3, semaru, 40, 10)


-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3, 906, 80, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_3, shuchusen3, 1.0, 1.0);

-- ** 音 ** --

playSe( spep_3+30, 8);

-- ** 次の準備 ** --
spep_4 = spep_3+80;
entryFade( spep_4-8, 3, 5, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFadeBg( spep_4, 0, 38, 0, 0, 0, 0, 210); -- ベース暗め　背景

------------------------------------------------------
-- 悟空殴る(100F)
------------------------------------------------------


-- ** キャラクター ** --

setDisp( spep_4, 1, 1);
setScaleKey( spep_4-1,    1,  1.4, 1.4);
changeAnime( spep_4, 1, 106);
changeAnime( spep_4+38, 1, 108);

setMoveKey(  spep_4,    1,  -300, 0,   10);
setMoveKey(  spep_4+15,    1,  100, 0,   10);
setMoveKey(  spep_4+25,    1,  100, 0,   10);
setMoveKey(  spep_4+38,    1,  140, 0,   10);
setMoveKey(  spep_4+98,    1,  140, 0,   10);

setScaleKey( spep_4,    1,  1.4, 1.4);
setScaleKey( spep_4+98,    1,  1.4, 1.4);

setRotateKey( spep_4-1,  1, -30 );
setRotateKey( spep_4,  1, -30 );
setRotateKey( spep_4+37,  1, -30 );
setRotateKey( spep_4+38,  1, -10 );
setRotateKey( spep_4+98,  1, -10 );

setShakeChara( spep_4, 1, 100, 20);


-- ** エフェクト等 ** --
naguru = entryEffectLife( spep_4, SP_14, 100, 0x100, -1, 0, 0, 0); -- 迫る悟空
setEffMoveKey( spep_4, naguru, 0, 0, 0);
setEffScaleKey( spep_4, naguru, 1.0, 1.0);
setEffShake( spep_4, naguru, 100, 10)

-- ** 流線(横) ** --
ryusen = entryEffectLife( spep_4, 920, 38, 0x80,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, ryusen, 1.0, 1.0);

-- ** 白フェード ** --
entryFade( spep_4+38, 0,  1, 10, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 背景エフェクト等 ** --
haikei = entryEffectLife( spep_4, SP_05, 100, 0x80, -1, 0, 0, 0); -- 迫る悟空
setEffMoveKey( spep_4, naguru, 0, 0, 0);
setEffScaleKey( spep_4, naguru, 1.0, 1.0);
setEffShake( spep_4, naguru, 42, 10)

-- 書き文字エントリー --
ct = entryEffectLife( spep_4+38, 10018, 62, 0, -1, 0, 0, 350); -- ドゴォンッ
setEffShake( spep_4+38, ct, 60, 20);
setEffRotateKey( spep_4+38, ct, 0)
setEffAlphaKey( spep_4+38, ct, 255);
setEffScaleKey( spep_4+38, ct, 4.0, 4.0);

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4, 906, 100, 0x00,  -1, 0,  0,  0);   -- 集中線
setEffScaleKey( spep_4, shuchusen4, 1.0, 1.0);

-- ** 音 ** --

playSe( spep_4+40, 1011);

-- ** 次の準備 ** --
spep_5 = spep_4+100;
entryFade( spep_5-8, 3, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


------------------------------------------------------
-- 爆発 (110F)
------------------------------------------------------

setDisp( spep_5-1, 1, 1);
setMoveKey(  spep_5-1,    1,  100,  0,   0);
setScaleKey( spep_5-1,    1,  1.0, 1.0);
setMoveKey(  spep_5,    1,    0,   0,   128);
setScaleKey( spep_5,    1,  0.1, 0.1);

changeAnime( spep_5, 1, 107);                         -- 手前ダメージ
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

playSe( spep_5+3, SE_11);
shuchusen = entryEffectLife( spep_5+3, 906, 120, 0x00,  -1, 0,  0,  0);   -- 集中線
entryEffect( spep_5+3, 1600,  0x00,  -1,  0,30, -130);   -- ひび割れ

-- ダメージ表示
dealDamage(spep_5+16);

entryFade( spep_5+100, 9,  10, 1, 8, 8, 8, 255);             -- black fade

endPhase( spep_5+110);
end

