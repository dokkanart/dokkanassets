--1020000:トッポ_ジャスティスパワーボール
--sp_effect_a2_00138

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
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01=  155560  ;-- 気溜め
SP_02=  155561  ;-- 降下キック
SP_03=  155562  ;-- キック　HIT
SP_04=  155563  ;-- 気弾　溜め
SP_05=  155564  ;-- ギャン
SP_06=  155565  ;-- 遠景　爆発
SP_07=  155566  ;-- 背景

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(154F)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 154, 0, -1, 0, 0, 0 ); --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 154, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 154, first_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 153, first_f, 255 );
setEffAlphaKey( spep_0 + 154, first_f, 0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 154, first_f, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 26,  906, 128, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 26, shuchusen1, 128, 25 );

setEffMoveKey( spep_0 + 26, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 154, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 26, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 154, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 26, shuchusen1, 0 );
setEffRotateKey( spep_0 + 154, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 154, shuchusen1, 255 );

spep_x = spep_0 + 40;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 -3 + 32,  10013, 40, 0x100, -1, 0, 20.1, 249.8 );--ズズズンッ
setEffShake( spep_0 -3 + 42, ctzuzun, 40, 10 );

setEffMoveKey( spep_0 -3 + 32, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzun, 30.9, 354.4 , 0 );
--[[setEffMoveKey( spep_0 -3 + 44, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctzuzun, 40.9, 364.4 , 0 );]]
setEffMoveKey( spep_0 -3 + 70, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0 -3 + 32, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 34, ctzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 36, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 38, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 72, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 32, ctzuzun, -5 );
setEffRotateKey( spep_0 -3 + 72, ctzuzun, -5 );

setEffAlphaKey( spep_0 -3 + 32, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzun, 212 );
setEffAlphaKey( spep_0 -3 + 64, ctzuzun, 170 );
setEffAlphaKey( spep_0 -3 + 66, ctzuzun, 128 );
setEffAlphaKey( spep_0 -3 + 68, ctzuzun, 85 );
setEffAlphaKey( spep_0 -3 + 70, ctzuzun, 43 );
setEffAlphaKey( spep_0 -3 + 72, ctzuzun, 0 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--気ダメ
playSe( spep_0 + 34, 1035 );

--顔カットイン
playSe( spep_0 + 50, 1018 );

--瞬間移動
playSe( spep_0 + 136, 43 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 154, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 26, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 144, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 154;

------------------------------------------------------
-- 降下キック(37)
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffectLife( spep_1 + 0, SP_02, 37, 0, -1, 0, 0, 0 ); --降下キック(ef_002)
setEffMoveKey( spep_1 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 37, kick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 37, kick, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, kick, 255 );
setEffAlphaKey( spep_1 + 36, kick, 255 );
setEffAlphaKey( spep_1 + 37, kick, 0 );
setEffRotateKey( spep_1 + 0, kick, 0 );
setEffRotateKey( spep_1 + 37, kick, 0 );

-- ** 音 ** --
--ライダーキック1
SE0 = playSe( spep_1 + 4, 1116 );

--ライダーキック2
SE01 = playSe( spep_1 + 4, 1183 );
setSeVolume( spep_1 + 4, 1183, 65 );

--ライダーキック3
SE02 = playSe( spep_1 + 4, 1182 );
setSeVolume( spep_1 + 4, 1182, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 37, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE01, 0 );
stopSe( SP_dodge - 12, SE02, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--ライダーキック1
setSeVolume( spep_1 + 37 + 6,  1116, 100 );
setSeVolume( spep_1 + 37 + 7,  1116, 94 );
setSeVolume( spep_1 + 37 + 9,  1116, 86);
setSeVolume( spep_1 + 37 + 11, 1116, 79 );
setSeVolume( spep_1 + 37 + 13, 1116, 72 );
setSeVolume( spep_1 + 37 + 15, 1116, 61 );
setSeVolume( spep_1 + 37 + 17, 1116, 59 );
setSeVolume( spep_1 + 37 + 19, 1116, 48 );
setSeVolume( spep_1 + 37 + 21, 1116, 39 );
setSeVolume( spep_1 + 37 + 23, 1116, 27 );
setSeVolume( spep_1 + 37 + 25, 1116, 19 );
setSeVolume( spep_1 + 37 + 26, 1116, 9 );
setSeVolume( spep_1 + 37 + 27, 1116, 0 );
stopSe( spep_1 + 37 + 27, SE0, 0 );

--ライダーキック2
stopSe( spep_1 + 37 + 16, SE01, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 37;

------------------------------------------------------
-- キック　HIT(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_2 + 0, SP_07, 56, 0x80, -1, 0, 0, 0 ); --背景(ef_007)
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 56, hit_f, 255 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffectLife( spep_2 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 ); --キック　HIT(ef_003)
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hit_b, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 56, hit_b, 255 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 56, hit_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 2,  906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 2, shuchusen2, 16, 25 );

setEffMoveKey( spep_2 + 2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 18, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 2, shuchusen2, 2.0, 2.0 );
setEffScaleKey( spep_2 + 18, shuchusen2, 2.0, 2.0 );

setEffRotateKey( spep_2 + 2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 18, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 2, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 7, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_2 + 2,  10020, 26, 0x100, -1, 0, -77.4, -117 ); --バキッ
setEffMoveKey( spep_2 + 2, ctbaki, -77.4, -117 , 0 );
setEffMoveKey( spep_2 + 4, ctbaki, -80.4, -195.7 , 0 );
setEffMoveKey( spep_2 + 6, ctbaki, -67.1, -284.4 , 0 );
setEffMoveKey( spep_2 + 8, ctbaki, -75.2, -292.4 , 0 );
setEffMoveKey( spep_2 + 10, ctbaki, -63.3, -289.8 , 0 );
setEffMoveKey( spep_2 + 12, ctbaki, -57, -310.2 , 0 );
setEffMoveKey( spep_2 + 14, ctbaki, -57.1, -301.4 , 0 );
setEffMoveKey( spep_2 + 16, ctbaki, -45.3, -318.1 , 0 );
setEffMoveKey( spep_2 + 18, ctbaki, -48.2, -320.5 , 0 );
setEffMoveKey( spep_2 + 20, ctbaki, -32.9, -329.1 , 0 );
setEffMoveKey( spep_2 + 22, ctbaki, -38.2, -342.7 , 0 );
setEffMoveKey( spep_2 + 24, ctbaki, -12.5, -376.5 , 0 );
setEffMoveKey( spep_2 + 26, ctbaki, -24.4, -402.6 , 0 );
setEffMoveKey( spep_2 + 28, ctbaki, -17.9, -426.5 , 0 );

setEffScaleKey( spep_2 + 2, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_2 + 4, ctbaki, 1.36, 1.36 );
setEffScaleKey( spep_2 + 6, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_2 + 8, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_2 + 10, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_2 + 12, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_2 + 14, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_2 + 16, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_2 + 18, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_2 + 20, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_2 + 22, ctbaki, 2.74, 2.74 );
setEffScaleKey( spep_2 + 24, ctbaki, 3.07, 3.07 );
setEffScaleKey( spep_2 + 26, ctbaki, 3.4, 3.4 );
setEffScaleKey( spep_2 + 28, ctbaki, 3.73, 3.73 );

setEffRotateKey( spep_2 + 2, ctbaki, -3 );
setEffRotateKey( spep_2 + 4, ctbaki, -3 );
setEffRotateKey( spep_2 + 6, ctbaki, -2.9 );
setEffRotateKey( spep_2 + 10, ctbaki, -2.9 );
setEffRotateKey( spep_2 + 12, ctbaki, -3 );
setEffRotateKey( spep_2 + 28, ctbaki, -3 );

setEffAlphaKey( spep_2 + 2, ctbaki, 255 );
setEffAlphaKey( spep_2 + 20, ctbaki, 255 );
setEffAlphaKey( spep_2 + 22, ctbaki, 191 );
setEffAlphaKey( spep_2 + 24, ctbaki, 128 );
setEffAlphaKey( spep_2 + 26, ctbaki, 64 );
setEffAlphaKey( spep_2 + 28, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 60 + 0, 1, 0 );
changeAnime( spep_2 + 0, 1, 108 );

setMoveKey( spep_2 + 0, 1, 24.9, -31.9 , 0 );
setMoveKey( spep_2 + 2, 1, 26.7, -43.8 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 54.7, -27.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 13.9, -68.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 23.7, -7.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 11.3, -23.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 48.4, -12.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 45.9, -30.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 178.2, -241.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 179.6, -272.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 194.9, -315.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 204, -347.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 210.8, -378.8 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 223.5, -401.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 225.9, -422.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 229.7, -437.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 238.1, -451.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 236.4, -464.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 241.9, -472.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 238.4, -480.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 242.2, -487.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 236.9, -490.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 240.6, -494.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 240, -498.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 234.8, -501.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 237.4, -504.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 231.9, -505.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 236, -508.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 232.9, -513.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 238, -517.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 238, -517.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 2, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 4, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 6, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 56, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 60, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 0, 1, 55 );
setRotateKey( spep_2 -3 + 56, 1, 55 );
setRotateKey( spep_2 -3 + 60, 1, 55 );

-- ** 音 ** --
--敵飛んでいく
playSe( spep_2 + 7, 1072 );
setSeVolume( spep_2 + 7, 1072, 0 );
setSeVolume( spep_2 + 14, 1072, 0 );
setSeVolume( spep_2 + 15, 1072, 1 );
setSeVolume( spep_2 + 17, 1072, 5 );
setSeVolume( spep_2 + 19, 1072, 11 );
setSeVolume( spep_2 + 21, 1072, 17 );
setSeVolume( spep_2 + 23, 1072, 25 );
setSeVolume( spep_2 + 26, 1072, 21 );
setSeVolume( spep_2 + 29, 1072, 39 );
setSeVolume( spep_2 + 31, 1072, 46 );
setSeVolume( spep_2 + 33, 1072, 50 );

--蹴りヒット1
playSe( spep_2 + 11, 1001 );
setSeVolume( spep_2 + 11, 1001, 66 );

--蹴りヒット2
playSe( spep_2 + 11, 1010 );

--蹴りヒット3
playSe( spep_2 + 13, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 49, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾　溜め(78F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_04, 78, 0, -1, 0, 0, 0 ); --気弾　溜め(ef_004)
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, tame, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 78, tame, 255 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 78, tame, 0 );

-- ** 音 ** --
--気弾溜め1
SE03 = playSe( spep_4 + 7, 1227 );
setSeVolume( spep_4 + 7, 1227, 200 );
stopSe( spep_4 + 63, SE03, 0 );

--気弾溜め2
SE04 = playSe( spep_4 + 7, 1158 );
--setSeVolume( spep_4 + 7, 1158, 100 );
stopSe( spep_4 + 63, SE04, 0 );

--気弾溜め3
SE05 = playSe( spep_4 + 9, 1240 );
setSeVolume( spep_4 + 9, 1240, 158 );
stopSe( spep_4 + 63, SE05, 0 );

--気弾溜め4
SE06 = playSe( spep_4 + 9, 1191 );
setSeVolume( spep_4 + 9, 1191, 126 );
setSeVolume( spep_4 + 45, 1191, 126 );
setSeVolume( spep_4 + 46, 1191, 115 );
setSeVolume( spep_4 + 49, 1191, 104 );
setSeVolume( spep_4 + 51, 1191, 93 );
setSeVolume( spep_4 + 53, 1191, 82 );
setSeVolume( spep_4 + 55, 1191, 71 );
setSeVolume( spep_4 + 57, 1191, 60 );
setSeVolume( spep_4 + 60, 1191, 49 );
setSeVolume( spep_4 + 62, 1191, 38 );
setSeVolume( spep_4 + 64, 1191, 27 );
setSeVolume( spep_4 + 66, 1191, 16 );
setSeVolume( spep_4 + 67, 1191, 8 );
setSeVolume( spep_4 + 69, 1191, 0 );
stopSe( spep_4 + 69, SE06, 0 );

--気弾溜め5
SE07 = playSe( spep_4 + 13, 1252 );
setSeVolume( spep_4 + 13, 1252, 117 );
stopSe( spep_4 + 63, SE07, 0 );

--気弾発射1
playSe( spep_4 + 53, 1027 );
setSeVolume( spep_4 + 53, 1027, 89 );

--気弾発射2
playSe( spep_4 + 55, 1145 );
setSeVolume( spep_4 + 55, 1145, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒 背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 68, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 78;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5 + 0, SP_05, 58, 0x80, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_5 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_5 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_5 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_5 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_5 + 6, ctgyan, 3.5, 3.5 );
--[[setEffScaleKey( spep_5 + 8, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_5 -3 + 10, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_5 -3 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_5 -3 + 14, ctgyan, 2.42, 2.42 );
setEffScaleKey( spep_5 -3 + 16, ctgyan, 2.43, 2.43 );
setEffScaleKey( spep_5 -3 + 18, ctgyan, 2.44, 2.44 );
setEffScaleKey( spep_5 -3 + 20, ctgyan, 2.45, 2.45 );
setEffScaleKey( spep_5 -3 + 22, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_5 -3 + 24, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_5 -3 + 26, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_5 -3 + 28, ctgyan, 2.48, 2.48 );
setEffScaleKey( spep_5 -3 + 30, ctgyan, 2.49, 2.49 );
setEffScaleKey( spep_5 -3 + 32, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_5 -3 + 34, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_5 -3 + 36, ctgyan, 2.51, 2.51 );
setEffScaleKey( spep_5 -3 + 38, ctgyan, 2.52, 2.52 );
setEffScaleKey( spep_5 -3 + 40, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_5 -3 + 42, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_5 -3 + 44, ctgyan, 2.54, 2.54 );
setEffScaleKey( spep_5 -3 + 46, ctgyan, 2.55, 2.55 );
setEffScaleKey( spep_5 -3 + 48, ctgyan, 2.56, 2.56 );
setEffScaleKey( spep_5 -3 + 50, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_5 -3 + 52, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_5 -3 + 54, ctgyan, 2.58, 2.58 );
setEffScaleKey( spep_5 -3 + 56, ctgyan, 2.59, 2.59 );
setEffScaleKey( spep_5 -3 + 58, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_5 + 57, ctgyan, 3.8, 3.8 );]]
setEffScaleKey( spep_5 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

-- ** 音 ** --
--ギャン
playSe( spep_5 + 17, 1023 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 18, 39, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;

------------------------------------------------------
-- 遠景　爆発(208)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatu = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); --遠景　爆発(ef_006)
setEffMoveKey( spep_6 + 0, bakuhatu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 208, bakuhatu, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuhatu, 1.0, 1.0 );
setEffScaleKey( spep_6 + 208, bakuhatu, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, bakuhatu, 255 );
setEffAlphaKey( spep_6 + 208, bakuhatu, 255 );
setEffRotateKey( spep_6 + 0, bakuhatu, 0 );
setEffRotateKey( spep_6 + 208, bakuhatu, 0 );

-- ** 音 ** --
--爆発１-1
playSe( spep_6 + 19, 1137 );
setSeVolume( spep_6 + 19, 1137, 47 );

--爆発１-2
playSe( spep_6 + 19, 20 );
setSeVolume( spep_6 + 19, 20, 55 );

--爆発２-1
playSe( spep_6 + 55, 1023 );

--爆発２-2
playSe( spep_6 + 55, 1024 );
setSeVolume( spep_6 + 55, 1024, 74 );

--爆発３-1
SE08 = playSe( spep_6 + 93, 1137 );
setSeVolume( spep_6 + 93, 1137, 74 );
setSeVolume( spep_6 + 126, 1137, 74 );
setSeVolume( spep_6 + 130, 1137, 67 );
setSeVolume( spep_6 + 134, 1137, 54 );
setSeVolume( spep_6 + 138, 1137, 48);
setSeVolume( spep_6 + 142, 1137, 42 );
setSeVolume( spep_6 + 146, 1137, 36 );
setSeVolume( spep_6 + 150, 1137, 28 );
setSeVolume( spep_6 + 154, 1137, 16 );
setSeVolume( spep_6 + 158, 1137, 9 );
setSeVolume( spep_6 + 162, 1137, 3 );
setSeVolume( spep_6 + 165, 1137, 0 );
stopSe( spep_6 + 165, SE08, 0 );

--爆発３-2
playSe( spep_6 + 101, 1024 );

--爆発３-3
playSe( spep_6 + 101, 1168 );
setSeVolume( spep_6 + 101, 1168, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒 背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 79, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);

--終わり
dealDamage( spep_6 +16 );
endPhase( spep_6 + 202 );--685

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(154F)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 154, 0, -1, 0, 0, 0 ); --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 154, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 154, first_f, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 153, first_f, 255 );
setEffAlphaKey( spep_0 + 154, first_f, 0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 154, first_f, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 26,  906, 128, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 26, shuchusen1, 128, 25 );

setEffMoveKey( spep_0 + 26, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 154, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 26, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 154, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 26, shuchusen1, 0 );
setEffRotateKey( spep_0 + 154, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 26, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 154, shuchusen1, 255 );

spep_x = spep_0 + 40;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_0 -3 + 32,  10013, 40, 0x100, -1, 0, 20.1, 249.8 );--ズズズンッ
setEffShake( spep_0 -3 + 42, ctzuzun, 40, 10 );

setEffMoveKey( spep_0 -3 + 32, ctzuzun, 20.1, 249.8 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctzuzun, 29.2, 317.4 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctzuzun, 51.2, 394.7 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctzuzun, 38.3, 377.6 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctzuzun, 43.3, 371.9 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctzuzun, 30.9, 354.4 , 0 );
--[[setEffMoveKey( spep_0 -3 + 44, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctzuzun, 40.9, 364.4 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctzuzun, 40.9, 364.4 , 0 );]]
setEffMoveKey( spep_0 -3 + 70, ctzuzun, 30.9, 354.4 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctzuzun, 30.9, 354.4 , 0 );

setEffScaleKey( spep_0 -3 + 32, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_0 -3 + 34, ctzuzun, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 36, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 38, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 72, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_0 -3 + 32, ctzuzun, -5 );
setEffRotateKey( spep_0 -3 + 72, ctzuzun, -5 );

setEffAlphaKey( spep_0 -3 + 32, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 60, ctzuzun, 255 );
setEffAlphaKey( spep_0 -3 + 62, ctzuzun, 212 );
setEffAlphaKey( spep_0 -3 + 64, ctzuzun, 170 );
setEffAlphaKey( spep_0 -3 + 66, ctzuzun, 128 );
setEffAlphaKey( spep_0 -3 + 68, ctzuzun, 85 );
setEffAlphaKey( spep_0 -3 + 70, ctzuzun, 43 );
setEffAlphaKey( spep_0 -3 + 72, ctzuzun, 0 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );

setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );

setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--気ダメ
playSe( spep_0 + 34, 1035 );

--顔カットイン
playSe( spep_0 + 50, 1018 );

--瞬間移動
playSe( spep_0 + 136, 43 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 154, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 26, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 144, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 154;

------------------------------------------------------
-- 降下キック(37)
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffectLife( spep_1 + 0, SP_02, 37, 0, -1, 0, 0, 0 ); --降下キック(ef_002)
setEffMoveKey( spep_1 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 37, kick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 37, kick, 1.0, 1.0 );
setEffAlphaKey( spep_1 + 0, kick, 255 );
setEffAlphaKey( spep_1 + 36, kick, 255 );
setEffAlphaKey( spep_1 + 37, kick, 0 );
setEffRotateKey( spep_1 + 0, kick, 0 );
setEffRotateKey( spep_1 + 37, kick, 0 );

-- ** 音 ** --
--ライダーキック1
SE0 = playSe( spep_1 + 4, 1116 );

--ライダーキック2
SE01 = playSe( spep_1 + 4, 1183 );
setSeVolume( spep_1 + 4, 1183, 65 );

--ライダーキック3
SE02 = playSe( spep_1 + 4, 1182 );
setSeVolume( spep_1 + 4, 1182, 63 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 37, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 18; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE01, 0 );
stopSe( SP_dodge - 12, SE02, 0 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

-- ** 白フェード ** --
entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
--ライダーキック1
setSeVolume( spep_1 + 37 + 6,  1116, 100 );
setSeVolume( spep_1 + 37 + 7,  1116, 94 );
setSeVolume( spep_1 + 37 + 9,  1116, 86);
setSeVolume( spep_1 + 37 + 11, 1116, 79 );
setSeVolume( spep_1 + 37 + 13, 1116, 72 );
setSeVolume( spep_1 + 37 + 15, 1116, 61 );
setSeVolume( spep_1 + 37 + 17, 1116, 59 );
setSeVolume( spep_1 + 37 + 19, 1116, 48 );
setSeVolume( spep_1 + 37 + 21, 1116, 39 );
setSeVolume( spep_1 + 37 + 23, 1116, 27 );
setSeVolume( spep_1 + 37 + 25, 1116, 19 );
setSeVolume( spep_1 + 37 + 26, 1116, 9 );
setSeVolume( spep_1 + 37 + 27, 1116, 0 );
stopSe( spep_1 + 37 + 27, SE0, 0 );

--ライダーキック2
stopSe( spep_1 + 37 + 16, SE01, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 37;

------------------------------------------------------
-- キック　HIT(56F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_2 + 0, SP_07, 56, 0x80, -1, 0, 0, 0 ); --背景(ef_007)
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hit_f, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 56, hit_f, 255 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 56, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffectLife( spep_2 + 0, SP_03, 56, 0x100, -1, 0, 0, 0 ); --キック　HIT(ef_003)
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 56, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, hit_b, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 56, hit_b, 255 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 56, hit_b, 0 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 2,  906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 2, shuchusen2, 16, 25 );

setEffMoveKey( spep_2 + 2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 18, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 2, shuchusen2, 2.0, 2.0 );
setEffScaleKey( spep_2 + 18, shuchusen2, 2.0, 2.0 );

setEffRotateKey( spep_2 + 2, shuchusen2, 0 );
setEffRotateKey( spep_2 + 18, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 2, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 7, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 18, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_2 + 2,  10020, 26, 0x100, -1, 0, -77.4, -117 ); --バキッ
setEffMoveKey( spep_2 + 2, ctbaki, -77.4, -117 , 0 );
setEffMoveKey( spep_2 + 4, ctbaki, -80.4, -195.7 , 0 );
setEffMoveKey( spep_2 + 6, ctbaki, -67.1, -284.4 , 0 );
setEffMoveKey( spep_2 + 8, ctbaki, -75.2, -292.4 , 0 );
setEffMoveKey( spep_2 + 10, ctbaki, -63.3, -289.8 , 0 );
setEffMoveKey( spep_2 + 12, ctbaki, -57, -310.2 , 0 );
setEffMoveKey( spep_2 + 14, ctbaki, -57.1, -301.4 , 0 );
setEffMoveKey( spep_2 + 16, ctbaki, -45.3, -318.1 , 0 );
setEffMoveKey( spep_2 + 18, ctbaki, -48.2, -320.5 , 0 );
setEffMoveKey( spep_2 + 20, ctbaki, -32.9, -329.1 , 0 );
setEffMoveKey( spep_2 + 22, ctbaki, -38.2, -342.7 , 0 );
setEffMoveKey( spep_2 + 24, ctbaki, -12.5, -376.5 , 0 );
setEffMoveKey( spep_2 + 26, ctbaki, -24.4, -402.6 , 0 );
setEffMoveKey( spep_2 + 28, ctbaki, -17.9, -426.5 , 0 );

setEffScaleKey( spep_2 + 2, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_2 + 4, ctbaki, 1.36, 1.36 );
setEffScaleKey( spep_2 + 6, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_2 + 8, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_2 + 10, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_2 + 12, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_2 + 14, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_2 + 16, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_2 + 18, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_2 + 20, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_2 + 22, ctbaki, 2.74, 2.74 );
setEffScaleKey( spep_2 + 24, ctbaki, 3.07, 3.07 );
setEffScaleKey( spep_2 + 26, ctbaki, 3.4, 3.4 );
setEffScaleKey( spep_2 + 28, ctbaki, 3.73, 3.73 );

setEffRotateKey( spep_2 + 2, ctbaki, -3 );
setEffRotateKey( spep_2 + 4, ctbaki, -3 );
setEffRotateKey( spep_2 + 6, ctbaki, -2.9 );
setEffRotateKey( spep_2 + 10, ctbaki, -2.9 );
setEffRotateKey( spep_2 + 12, ctbaki, -3 );
setEffRotateKey( spep_2 + 28, ctbaki, -3 );

setEffAlphaKey( spep_2 + 2, ctbaki, 255 );
setEffAlphaKey( spep_2 + 20, ctbaki, 255 );
setEffAlphaKey( spep_2 + 22, ctbaki, 191 );
setEffAlphaKey( spep_2 + 24, ctbaki, 128 );
setEffAlphaKey( spep_2 + 26, ctbaki, 64 );
setEffAlphaKey( spep_2 + 28, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 60 + 0, 1, 0 );
changeAnime( spep_2 + 0, 1, 108 );

setMoveKey( spep_2 + 0, 1, 24.9, -31.9 , 0 );
setMoveKey( spep_2 + 2, 1, 26.7, -43.8 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 54.7, -27.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 13.9, -68.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 23.7, -7.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 11.3, -23.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 48.4, -12.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 45.9, -30.2 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 178.2, -241.5 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 179.6, -272.9 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 194.9, -315.4 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 204, -347.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 210.8, -378.8 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 223.5, -401.2 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 225.9, -422.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 229.7, -437.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 238.1, -451.6 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 236.4, -464.3 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 241.9, -472.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 238.4, -480.4 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 242.2, -487.4 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 236.9, -490.8 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 240.6, -494.8 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 240, -498.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 234.8, -501.4 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 237.4, -504.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 231.9, -505.7 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 236, -508.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 232.9, -513.6 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 238, -517.8 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 238, -517.8 , 0 );

setScaleKey( spep_2 + 0, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 2, 1, 1.32, 1.32 );
setScaleKey( spep_2 -3 + 4, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 6, 1, 1.17, 1.17 );
setScaleKey( spep_2 -3 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 56, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 60, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 0, 1, 55 );
setRotateKey( spep_2 -3 + 56, 1, 55 );
setRotateKey( spep_2 -3 + 60, 1, 55 );

-- ** 音 ** --
--敵飛んでいく
playSe( spep_2 + 7, 1072 );
setSeVolume( spep_2 + 7, 1072, 0 );
setSeVolume( spep_2 + 14, 1072, 0 );
setSeVolume( spep_2 + 15, 1072, 1 );
setSeVolume( spep_2 + 17, 1072, 5 );
setSeVolume( spep_2 + 19, 1072, 11 );
setSeVolume( spep_2 + 21, 1072, 17 );
setSeVolume( spep_2 + 23, 1072, 25 );
setSeVolume( spep_2 + 26, 1072, 21 );
setSeVolume( spep_2 + 29, 1072, 39 );
setSeVolume( spep_2 + 31, 1072, 46 );
setSeVolume( spep_2 + 33, 1072, 50 );

--蹴りヒット1
playSe( spep_2 + 11, 1001 );
setSeVolume( spep_2 + 11, 1001, 66 );

--蹴りヒット2
playSe( spep_2 + 11, 1010 );

--蹴りヒット3
playSe( spep_2 + 13, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 49, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾　溜め(78F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_04, 78, 0, -1, 0, 0, 0 ); --気弾　溜め(ef_004)
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, tame, 1.0, 1.0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 78, tame, 255 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 78, tame, 0 );

-- ** 音 ** --
--気弾溜め1
SE03 = playSe( spep_4 + 7, 1227 );
setSeVolume( spep_4 + 7, 1227, 200 );
stopSe( spep_4 + 63, SE03, 0 );

--気弾溜め2
SE04 = playSe( spep_4 + 7, 1158 );
--setSeVolume( spep_4 + 7, 1158, 100 );
stopSe( spep_4 + 63, SE04, 0 );

--気弾溜め3
SE05 = playSe( spep_4 + 9, 1240 );
setSeVolume( spep_4 + 9, 1240, 158 );
stopSe( spep_4 + 63, SE05, 0 );

--気弾溜め4
SE06 = playSe( spep_4 + 9, 1191 );
setSeVolume( spep_4 + 9, 1191, 126 );
setSeVolume( spep_4 + 45, 1191, 126 );
setSeVolume( spep_4 + 46, 1191, 115 );
setSeVolume( spep_4 + 49, 1191, 104 );
setSeVolume( spep_4 + 51, 1191, 93 );
setSeVolume( spep_4 + 53, 1191, 82 );
setSeVolume( spep_4 + 55, 1191, 71 );
setSeVolume( spep_4 + 57, 1191, 60 );
setSeVolume( spep_4 + 60, 1191, 49 );
setSeVolume( spep_4 + 62, 1191, 38 );
setSeVolume( spep_4 + 64, 1191, 27 );
setSeVolume( spep_4 + 66, 1191, 16 );
setSeVolume( spep_4 + 67, 1191, 8 );
setSeVolume( spep_4 + 69, 1191, 0 );
stopSe( spep_4 + 69, SE06, 0 );

--気弾溜め5
SE07 = playSe( spep_4 + 13, 1252 );
setSeVolume( spep_4 + 13, 1252, 117 );
stopSe( spep_4 + 63, SE07, 0 );

--気弾発射1
playSe( spep_4 + 53, 1027 );
setSeVolume( spep_4 + 53, 1027, 89 );

--気弾発射2
playSe( spep_4 + 55, 1145 );
setSeVolume( spep_4 + 55, 1145, 56 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒 背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 68, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 78;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_5 + 0, SP_05, 58, 0x80, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_5 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_5 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_5 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_5 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_5 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_5 + 6, ctgyan, 3.5, 3.5 );
--[[setEffScaleKey( spep_5 + 8, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_5 -3 + 10, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_5 -3 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_5 -3 + 14, ctgyan, 2.42, 2.42 );
setEffScaleKey( spep_5 -3 + 16, ctgyan, 2.43, 2.43 );
setEffScaleKey( spep_5 -3 + 18, ctgyan, 2.44, 2.44 );
setEffScaleKey( spep_5 -3 + 20, ctgyan, 2.45, 2.45 );
setEffScaleKey( spep_5 -3 + 22, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_5 -3 + 24, ctgyan, 2.46, 2.46 );
setEffScaleKey( spep_5 -3 + 26, ctgyan, 2.47, 2.47 );
setEffScaleKey( spep_5 -3 + 28, ctgyan, 2.48, 2.48 );
setEffScaleKey( spep_5 -3 + 30, ctgyan, 2.49, 2.49 );
setEffScaleKey( spep_5 -3 + 32, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_5 -3 + 34, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_5 -3 + 36, ctgyan, 2.51, 2.51 );
setEffScaleKey( spep_5 -3 + 38, ctgyan, 2.52, 2.52 );
setEffScaleKey( spep_5 -3 + 40, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_5 -3 + 42, ctgyan, 2.53, 2.53 );
setEffScaleKey( spep_5 -3 + 44, ctgyan, 2.54, 2.54 );
setEffScaleKey( spep_5 -3 + 46, ctgyan, 2.55, 2.55 );
setEffScaleKey( spep_5 -3 + 48, ctgyan, 2.56, 2.56 );
setEffScaleKey( spep_5 -3 + 50, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_5 -3 + 52, ctgyan, 2.57, 2.57 );
setEffScaleKey( spep_5 -3 + 54, ctgyan, 2.58, 2.58 );
setEffScaleKey( spep_5 -3 + 56, ctgyan, 2.59, 2.59 );
setEffScaleKey( spep_5 -3 + 58, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_5 + 57, ctgyan, 3.8, 3.8 );]]
setEffScaleKey( spep_5 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

-- ** 音 ** --
--ギャン
playSe( spep_5 + 17, 1023 );

-- ** ホワイトフェード ** --
entryFade( spep_5 + 18, 39, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;

------------------------------------------------------
-- 遠景　爆発(208)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatu = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --遠景　爆発(ef_006)
setEffMoveKey( spep_6 + 0, bakuhatu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 208, bakuhatu, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, bakuhatu, 1.0, 1.0 );
setEffScaleKey( spep_6 + 208, bakuhatu, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, bakuhatu, 255 );
setEffAlphaKey( spep_6 + 208, bakuhatu, 255 );
setEffRotateKey( spep_6 + 0, bakuhatu, 0 );
setEffRotateKey( spep_6 + 208, bakuhatu, 0 );

-- ** 音 ** --
--爆発１-1
playSe( spep_6 + 19, 1137 );
setSeVolume( spep_6 + 19, 1137, 47 );

--爆発１-2
playSe( spep_6 + 19, 20 );
setSeVolume( spep_6 + 19, 20, 55 );

--爆発２-1
playSe( spep_6 + 55, 1023 );

--爆発２-2
playSe( spep_6 + 55, 1024 );
setSeVolume( spep_6 + 55, 1024, 74 );

--爆発３-1
SE08 = playSe( spep_6 + 93, 1137 );
setSeVolume( spep_6 + 93, 1137, 74 );
setSeVolume( spep_6 + 126, 1137, 74 );
setSeVolume( spep_6 + 130, 1137, 67 );
setSeVolume( spep_6 + 134, 1137, 54 );
setSeVolume( spep_6 + 138, 1137, 48);
setSeVolume( spep_6 + 142, 1137, 42 );
setSeVolume( spep_6 + 146, 1137, 36 );
setSeVolume( spep_6 + 150, 1137, 28 );
setSeVolume( spep_6 + 154, 1137, 16 );
setSeVolume( spep_6 + 158, 1137, 9 );
setSeVolume( spep_6 + 162, 1137, 3 );
setSeVolume( spep_6 + 165, 1137, 0 );
stopSe( spep_6 + 165, SE08, 0 );

--爆発３-2
playSe( spep_6 + 101, 1024 );

--爆発３-3
playSe( spep_6 + 101, 1168 );
setSeVolume( spep_6 + 101, 1168, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 78, 0, 0, 0, 0, 255 );  --黒 背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 79, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255);

--終わり
dealDamage( spep_6 +16 );
endPhase( spep_6 + 202 );--685

end

