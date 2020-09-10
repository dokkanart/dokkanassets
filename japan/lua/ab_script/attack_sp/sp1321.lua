--release/deployment_20190826_asset
--ビース_sp1321

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
SE_12 = 1031; --斬撃
SE_13 = 1032; --斬撃
SE_14 = 1048;
SE_15 = 1026;

--味方側
SP_01 =	153734; --待機
SP_02 =	153735; --気溜め
SP_03 =	153736; --気溜めカットイン
SP_04 =	153737; --体が分散する
SP_05 =	153738; --球が飛んでくる、針に変化する
SP_06 =	153739; --敵に棘が刺さる(前)
SP_07 =	153740; --敵に棘が刺さる(後)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
-- 待機(28F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
taiki = entryEffectLife( spep_0 + 0, SP_01, 28, 0x100, -1, 0, 0, -50 );  --待機(ef_001)
setEffMoveKey( spep_0 + 0, taiki, 0, -50, 0 );
setEffMoveKey( spep_0 + 28, taiki, 0, -50, 0 );

setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 28, taiki, 1.0, 1.0 );

setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 28, taiki, 255 );

setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 28, taiki, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 28;

--------------------------------------
--気溜め(42F)
--------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 36, 0x100, -1, 0, 0, 0 );  --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, tame, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 36, tame, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 36, tame, 0 );

setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 36, tame, 255 );

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_1 + 0, 10013, 36, 0x100, -1, 0, 22, 191.9 ); --ズズズンッ
setEffShake( spep_1 + 0, ctzuzun, 36, 10 );

setEffMoveKey( spep_1 + 0, ctzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_1 + 2, ctzuzun, 29.7, 246.3 , 0 );
setEffMoveKey( spep_1 + 4, ctzuzun, 49.1, 309.7 , 0 );
setEffMoveKey( spep_1 + 6, ctzuzun, 46.5, 333.1 , 0 );
setEffMoveKey( spep_1 + 8, ctzuzun, 51.6, 327.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuzun, 37.1, 303.5 , 0 );
setEffMoveKey( spep_1 + 12, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 14, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 16, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 18, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 20, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 22, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 24, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 26, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 28, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 30, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 32, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 34, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 36, ctzuzun, 46, 309.9 , 0 );

setEffScaleKey( spep_1 + 0, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_1 + 2, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_1 + 4, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_1 + 6, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_1 + 36, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_1 + 0, ctzuzun, 0 );
setEffRotateKey( spep_1 + 36, ctzuzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzuzun, 255 );
setEffAlphaKey( spep_1 + 36, ctzuzun, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 42, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 42, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 42, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 42, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 42, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 42, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 36, 6, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 28, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 0, 50 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 42;

------------------------------------------------------
-- 気溜めカットイン(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
tameCut = entryEffectLife( spep_2 + 0, SP_03, 98, 0x100, -1, 0, 0, 0 );  --気溜めカットイン(ef_003)
setEffMoveKey( spep_2 + 0, tameCut, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, tameCut, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, tameCut, 1.0, 1.0 );
setEffScaleKey( spep_2 + 98, tameCut, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, tameCut, 0 );
setEffRotateKey( spep_2 + 98, tameCut, 0 );

setEffAlphaKey( spep_2 + 0, tameCut, 255 );
setEffAlphaKey( spep_2 + 98, tameCut, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 98, 25 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 98, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 98, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen2, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 16,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 16, ctgogo, 70, 10 );

setEffMoveKey( spep_2 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2 + 86, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2 + 16, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, ctgogo, 1.0, 1.0 );

setEffRotateKey( spep_2 + 16, ctgogo, 0 );
setEffRotateKey( spep_2 + 86, ctgogo, 0 );

setEffAlphaKey( spep_2 + 16, ctgogo, 255 );
setEffAlphaKey( spep_2 + 86, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 80, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 18, SE_04 );  --カットイン

-- ** 次の準備 ** --
spep_3 = spep_2 + 98;

--------------------------------------
--カードカットイン(88F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 88, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 88, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 88, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 88, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 ); --カットイン

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;

------------------------------------------------------
-- 体が分散する(68F)
------------------------------------------------------

-- ** エフェクト等 ** --
bunsan = entryEffectLife( spep_4 + 0, SP_04, 68, 0x80, -1, 0, 0, 0 );  --体分散(ef_004)
setEffMoveKey( spep_4 + 0, bunsan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, bunsan, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bunsan, 1, 1 );
setEffScaleKey( spep_4 + 68, bunsan, 1, 1 );

setEffRotateKey( spep_4 + 0, bunsan, 0 );
setEffRotateKey( spep_4 + 68, bunsan, 0 );

setEffAlphaKey( spep_4 + 0, bunsan, 255 );
setEffAlphaKey( spep_4 + 68, bunsan, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 56, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 68, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_4 + 5, SE_15 ); --玉になる

-- ** 次の準備 ** --
spep_5 = spep_4 + 68;

------------------------------------------------------
-- 球が飛んでくる、針に変化する(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
henka = entryEffectLife( spep_5 + 0, SP_05, 58, 0x100, -1, 0, 0, 0 );  --球が飛んでくる、針に変化する(ef_005)
setEffMoveKey( spep_5 + 0, henka, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, henka, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, henka, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, henka, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, henka, 0 );
setEffRotateKey( spep_5 + 58, henka, 0 );

setEffAlphaKey( spep_5 + 0, henka, 255 );
setEffAlphaKey( spep_5 + 58, henka, 255 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_5 + 0, 921, 58, 0x80, -1, 0, 0, 0 );  --流線
setEffShake( spep_5 + 0, ryusen, 58, 25 );

setEffMoveKey( spep_5 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen, 1.58, 1.58 );
setEffScaleKey( spep_5 + 58, ryusen, 1.58, 1.58 );

setEffRotateKey( spep_5 + 0, ryusen, 22 );
setEffRotateKey( spep_5 + 58, ryusen, 22 );

setEffAlphaKey( spep_5 + 0, ryusen, 150 );
setEffAlphaKey( spep_5 + 58, ryusen, 150 );


-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 50, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_5 + 10, SE_14 ); --棘になる
playSe( spep_5 + 20, SE_14 ); --棘になる
playSe( spep_5 + 30, SE_14 ); --棘になる
playSe( spep_5 + 40, SE_14 ); --棘になる


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 86.8, 89.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 97.6, 109.2 , 0 );
setMoveKey( SP_dodge + 4, 1, 100.5, 117.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 111.6, 135.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 110.8, 140.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 126.2, 162.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.65, 1.65 );
setScaleKey( SP_dodge + 2, 1, 1.59, 1.59 );
setScaleKey( SP_dodge + 4, 1, 1.51, 1.51 );
setScaleKey( SP_dodge + 6, 1, 1.43, 1.43 );
setScaleKey( SP_dodge + 8, 1, 1.35, 1.35 );
setScaleKey( SP_dodge + 10, 1, 1.26, 1.26 );

setRotateKey( SP_dodge + 0, 1, -3.2 );
setRotateKey( SP_dodge + 2, 1, -3.3 );
setRotateKey( SP_dodge + 4, 1, -3.4 );
setRotateKey( SP_dodge + 6, 1, -3.5 );
setRotateKey( SP_dodge + 8, 1, -3.7 );
setRotateKey( SP_dodge + 10, 1, -3.8 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;

------------------------------------------------------
-- 敵に棘が刺さる(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
hitf = entryEffectLife( spep_6 + 0, SP_06, 57, 0x100, -1, 0, 0, 0 );  --敵に棘が刺さる・前(ef_006)
setEffMoveKey( spep_6 + 0, hitf, 0, 0 , 0 );
setEffMoveKey( spep_6 + 57, hitf, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, hitf, 1.0, 1.0 );
setEffScaleKey( spep_6 + 57, hitf, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, hitf, 0 );
setEffRotateKey( spep_6 + 57, hitf, 0 );

setEffAlphaKey( spep_6 + 0, hitf, 255 );
setEffAlphaKey( spep_6 + 57, hitf, 255 );

hitb = entryEffectLife( spep_6 + 0, SP_07, 57, 0x80, -1, 0, 0, 0 );  --敵に棘が刺さる・奥(ef_007)
setEffMoveKey( spep_6 + 0, hitb, 0, 0, 0 );
setEffMoveKey( spep_6 + 57, hitb, 0, 0, 0 );

setEffScaleKey( spep_6 + 0, hitb, 1.0, 1.0 );
setEffScaleKey( spep_6 + 57, hitb, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, hitb, 0 );
setEffRotateKey( spep_6 + 57, hitb, 0 );

setEffAlphaKey( spep_6 + 0, hitb, 255 );
setEffAlphaKey( spep_6 + 57, hitb, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 104 ); --ガード
changeAnime( spep_6 + 24, 1, 106 ); 

setMoveKey( spep_6 + 0, 1, 0, -12.5 , 0 );
setMoveKey( spep_6 + 2, 1, 0.1, -12.5 , 0 );
setMoveKey( spep_6 + 4, 1, 0.1, -12.5 , 0 );
setMoveKey( spep_6 + 6, 1, 0.2, -12.5 , 0 );
setMoveKey( spep_6 + 8, 1, 0.3, -12.5 , 0 );
setMoveKey( spep_6 + 10, 1, 0.3, -12.5 , 0 );
setMoveKey( spep_6 + 12, 1, 0.4, -12.5 , 0 );
setMoveKey( spep_6 + 14, 1, 0.5, -12.5 , 0 );
setMoveKey( spep_6 + 16, 1, 0.5, -12.5 , 0 );
setMoveKey( spep_6 + 18, 1, 0.6, -12.5 , 0 );
setMoveKey( spep_6 + 20, 1, 0.7, -12.5 , 0 );
setMoveKey( spep_6 + 23, 1, 0.7, -12.5 , 0 );
setMoveKey( spep_6 + 24, 1, 5.9, 15.1 , 0 );
setMoveKey( spep_6 + 26, 1, -1.4, -3.2 , 0 );
setMoveKey( spep_6 + 28, 1, 6, 12.9 , 0 );
setMoveKey( spep_6 + 30, 1, -1.9, 2.1 , 0 );
setMoveKey( spep_6 + 32, 1, 7.5, 16 , 0 );
setMoveKey( spep_6 + 34, 1, -0.1, 3.5 , 0 );
setMoveKey( spep_6 + 36, 1, 4.1, -2.2 , 0 );
setMoveKey( spep_6 + 38, 1, 0.5, 12.2 , 0 );
setMoveKey( spep_6 + 40, 1, 6.9, 2.9 , 0 );
setMoveKey( spep_6 + 42, 1, -2.9, 9.3 , 0 );
setMoveKey( spep_6 + 44, 1, 2.3, 2.6 , 0 );
setMoveKey( spep_6 + 46, 1, 3.3, 10.3 , 0 );
setMoveKey( spep_6 + 48, 1, -0.2, 0.7 , 0 );
setMoveKey( spep_6 + 50, 1, 2.3, 10.3 , 0 );
setMoveKey( spep_6 + 52, 1, 0.2, 3.5 , 0 );
setMoveKey( spep_6 + 54, 1, 0.5, 7.8 , 0 );
setMoveKey( spep_6 + 57, 1, 0.5, 7.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1.39, 1.39 );
setScaleKey( spep_6 + 57, 1, 1.39, 1.39 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 23, 1, 0 );
setRotateKey( spep_6 + 24, 1, -44.7 );
setRotateKey( spep_6 + 57, 1, -44.7 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_6 + 0, 906, 57, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 0, shuchusen5, 57, 25 );

setEffMoveKey( spep_6 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 57, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_6 + 57, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_6 + 0, shuchusen5, 0 );
setEffRotateKey( spep_6 + 57, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 57, shuchusen5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 50, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_6 + 19, SE_13 );  
playSe( spep_6 + 24, SE_12 );  

-- ** 次の準備 ** --
spep_7 = spep_6 + 58;

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

-- ** ひび割れ ** --
hibiware = entryEffect( spep_7 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_7 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_7 + 112, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_7 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_7 + 112, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_7 + 2, hibiware, 0 );
setEffRotateKey( spep_7 + 112, hibiware, 0 );

setEffAlphaKey( spep_7 + 2, hibiware, 0 );
setEffAlphaKey( spep_7 + 13, hibiware, 0 );
setEffAlphaKey( spep_7 + 14, hibiware, 255 );
setEffAlphaKey( spep_7 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusen6, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen6, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen6, 0 );
setEffRotateKey( spep_7 + 46, shuchusen6, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen6, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen6, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen6, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen6, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen6, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen6, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen6, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen6, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen6, 0 );

shuchusen7 = entryEffectLife( spep_7 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen7, 1, 1 );
setEffScaleKey( spep_7 + 112, shuchusen7, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen7, 0 );
setEffRotateKey( spep_7 + 112, shuchusen7, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_7 + 112, shuchusen7, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 112, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_7 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_7 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_7 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_7 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_7 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_7 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_7 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_7 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_7 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_7 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_7 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_7 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_7 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_7 + 112, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 112, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, -40 );
setRotateKey( spep_7 + 1, 1, -40 );
setRotateKey( spep_7 + 2, 1, 80 );
setRotateKey( spep_7 + 3, 1, 80 );
setRotateKey( spep_7 + 4, 1, 200 );
setRotateKey( spep_7 + 5, 1, 200 );
setRotateKey( spep_7 + 6, 1, 360 );
setRotateKey( spep_7 + 7, 1, 360 );
setRotateKey( spep_7 + 8, 1, 558 );
setRotateKey( spep_7 + 9, 1, 558 );
setRotateKey( spep_7 + 10, 1, 425 );
setRotateKey( spep_7 + 11, 1, 425 );
setRotateKey( spep_7 + 12, 1, -40 );
setRotateKey( spep_7 + 112, 1, -40 );

-- ** 音 ** --
playSe( spep_7 + 14, SE_11 );  --割れる音


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
--entryFade( spep_7 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 112 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 待機(28F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
taiki = entryEffectLife( spep_0 + 0, SP_01, 28, 0, -1, 0, 0, -50 );  --待機(ef_001)
setEffMoveKey( spep_0 + 0, taiki, 0, -50, 0 );
setEffMoveKey( spep_0 + 28, taiki, 0, -50, 0 );

setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 28, taiki, 1.0, 1.0 );

setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 28, taiki, 255 );

setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 28, taiki, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 28;

--------------------------------------
--気溜め(42F)
--------------------------------------

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_1 + 0, SP_02, 36, 0x100, -1, 0, 0, 0 );  --気溜め(ef_002)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 36, tame, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 36, tame, 1.0, 1.0 );

setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 36, tame, 0 );

setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 36, tame, 255 );

-- ** 書き文字エントリー ** --
ctzuzun = entryEffectLife( spep_1 + 0, 10013, 36, 0x100, -1, 0, 22, 191.9 ); --ズズズンッ
setEffShake( spep_1 + 0, ctzuzun, 36, 10 );

setEffMoveKey( spep_1 + 0, ctzuzun, 22, 191.9 , 0 );
setEffMoveKey( spep_1 + 2, ctzuzun, 29.7, 246.3 , 0 );
setEffMoveKey( spep_1 + 4, ctzuzun, 49.1, 309.7 , 0 );
setEffMoveKey( spep_1 + 6, ctzuzun, 46.5, 333.1 , 0 );
setEffMoveKey( spep_1 + 8, ctzuzun, 51.6, 327.8 , 0 );
setEffMoveKey( spep_1 + 10, ctzuzun, 37.1, 303.5 , 0 );
setEffMoveKey( spep_1 + 12, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 14, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 16, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 18, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 20, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 22, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 24, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 26, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 28, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 30, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 32, ctzuzun, 46, 309.9 , 0 );
setEffMoveKey( spep_1 + 34, ctzuzun, 36, 299.9 , 0 );
setEffMoveKey( spep_1 + 36, ctzuzun, 46, 309.9 , 0 );

setEffScaleKey( spep_1 + 0, ctzuzun, 1.11, 1.11 );
setEffScaleKey( spep_1 + 2, ctzuzun, 1.98, 1.98 );
setEffScaleKey( spep_1 + 4, ctzuzun, 2.83, 2.83 );
setEffScaleKey( spep_1 + 6, ctzuzun, 2.92, 2.92 );
setEffScaleKey( spep_1 + 36, ctzuzun, 2.92, 2.92 );

setEffRotateKey( spep_1 + 0, ctzuzun, 0 );
setEffRotateKey( spep_1 + 36, ctzuzun, 0 );

setEffAlphaKey( spep_1 + 0, ctzuzun, 255 );
setEffAlphaKey( spep_1 + 36, ctzuzun, 255 );


-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 42, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 42, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 42, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 42, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 42, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 42, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 36, 6, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 28, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 42;

------------------------------------------------------
-- 気溜めカットイン(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
tameCut = entryEffectLife( spep_2 + 0, SP_03, 98, 0x100, -1, 0, 0, 0 );  --気溜めカットイン(ef_003)
setEffMoveKey( spep_2 + 0, tameCut, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, tameCut, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, tameCut, 1.0, 1.0 );
setEffScaleKey( spep_2 + 98, tameCut, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, tameCut, 0 );
setEffRotateKey( spep_2 + 98, tameCut, 0 );

setEffAlphaKey( spep_2 + 0, tameCut, 255 );
setEffAlphaKey( spep_2 + 98, tameCut, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 + 0, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 98, 25 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_2 + 98, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 98, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen2, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 + 16,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_2 + 16, ctgogo, 70, 10 );

setEffMoveKey( spep_2 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_2 + 86, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_2 + 16, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, ctgogo, -1.0, 1.0 );

setEffRotateKey( spep_2 + 16, ctgogo, 0 );
setEffRotateKey( spep_2 + 86, ctgogo, 0 );

setEffAlphaKey( spep_2 + 16, ctgogo, 255 );
setEffAlphaKey( spep_2 + 86, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 80, 8, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 18, SE_04 );  --カットイン

-- ** 次の準備 ** --
spep_3 = spep_2 + 98;

--------------------------------------
--カードカットイン(88F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 88, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen3, 88, 20 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_3 + 88, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 88, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 88, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 ); --カットイン

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;

------------------------------------------------------
-- 体が分散する(68F)
------------------------------------------------------

-- ** エフェクト等 ** --
bunsan = entryEffectLife( spep_4 + 0, SP_04, 68, 0x80, -1, 0, 0, 0 );  --体分散(ef_004)
setEffMoveKey( spep_4 + 0, bunsan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, bunsan, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bunsan, 1, 1 );
setEffScaleKey( spep_4 + 68, bunsan, 1, 1 );

setEffRotateKey( spep_4 + 0, bunsan, 0 );
setEffRotateKey( spep_4 + 68, bunsan, 0 );

setEffAlphaKey( spep_4 + 0, bunsan, 255 );
setEffAlphaKey( spep_4 + 68, bunsan, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1.5, 1.5 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 255 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_4 + 56, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 68, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_4 + 5, SE_15 ); --玉になる

-- ** 次の準備 ** --
spep_5 = spep_4 + 68;

------------------------------------------------------
-- 球が飛んでくる、針に変化する(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
henka = entryEffectLife( spep_5 + 0, SP_05, 58, 0x100, -1, 0, 0, 0 );  --球が飛んでくる、針に変化する(ef_005)
setEffMoveKey( spep_5 + 0, henka, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, henka, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, henka, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, henka, 1.0, 1.0 );

setEffRotateKey( spep_5 + 0, henka, 0 );
setEffRotateKey( spep_5 + 58, henka, 0 );

setEffAlphaKey( spep_5 + 0, henka, 255 );
setEffAlphaKey( spep_5 + 58, henka, 255 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_5 + 0, 921, 58, 0x80, -1, 0, 0, 0 );  --流線
setEffShake( spep_5 + 0, ryusen, 58, 25 );

setEffMoveKey( spep_5 + 0, ryusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, ryusen, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen, 1.58, 1.58 );
setEffScaleKey( spep_5 + 58, ryusen, 1.58, 1.58 );

setEffRotateKey( spep_5 + 0, ryusen, 22 );
setEffRotateKey( spep_5 + 58, ryusen, 22 );

setEffAlphaKey( spep_5 + 0, ryusen, 150 );
setEffAlphaKey( spep_5 + 58, ryusen, 150 );


-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_5 + 50, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_5 + 10, SE_14 ); --棘になる
playSe( spep_5 + 20, SE_14 ); --棘になる
playSe( spep_5 + 30, SE_14 ); --棘になる
playSe( spep_5 + 40, SE_14 ); --棘になる


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_5 + 50; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 86.8, 89.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 97.6, 109.2 , 0 );
setMoveKey( SP_dodge + 4, 1, 100.5, 117.9 , 0 );
setMoveKey( SP_dodge + 6, 1, 111.6, 135.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 110.8, 140.7 , 0 );
setMoveKey( SP_dodge + 10, 1, 126.2, 162.9 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.65, 1.65 );
setScaleKey( SP_dodge + 2, 1, 1.59, 1.59 );
setScaleKey( SP_dodge + 4, 1, 1.51, 1.51 );
setScaleKey( SP_dodge + 6, 1, 1.43, 1.43 );
setScaleKey( SP_dodge + 8, 1, 1.35, 1.35 );
setScaleKey( SP_dodge + 10, 1, 1.26, 1.26 );

setRotateKey( SP_dodge + 0, 1, -3.2 );
setRotateKey( SP_dodge + 2, 1, -3.3 );
setRotateKey( SP_dodge + 4, 1, -3.4 );
setRotateKey( SP_dodge + 6, 1, -3.5 );
setRotateKey( SP_dodge + 8, 1, -3.7 );
setRotateKey( SP_dodge + 10, 1, -3.8 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;

------------------------------------------------------
-- 敵に棘が刺さる(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
hitf = entryEffectLife( spep_6 + 0, SP_06, 57, 0x100, -1, 0, 0, 0 );  --敵に棘が刺さる・前(ef_006)
setEffMoveKey( spep_6 + 0, hitf, 0, 0 , 0 );
setEffMoveKey( spep_6 + 57, hitf, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, hitf, 1.0, 1.0 );
setEffScaleKey( spep_6 + 57, hitf, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, hitf, 0 );
setEffRotateKey( spep_6 + 57, hitf, 0 );

setEffAlphaKey( spep_6 + 0, hitf, 255 );
setEffAlphaKey( spep_6 + 57, hitf, 255 );

hitb = entryEffectLife( spep_6 + 0, SP_07, 57, 0x80, -1, 0, 0, 0 );  --敵に棘が刺さる・奥(ef_007)
setEffMoveKey( spep_6 + 0, hitb, 0, 0, 0 );
setEffMoveKey( spep_6 + 57, hitb, 0, 0, 0 );

setEffScaleKey( spep_6 + 0, hitb, 1.0, 1.0 );
setEffScaleKey( spep_6 + 57, hitb, 1.0, 1.0 );

setEffRotateKey( spep_6 + 0, hitb, 0 );
setEffRotateKey( spep_6 + 57, hitb, 0 );

setEffAlphaKey( spep_6 + 0, hitb, 255 );
setEffAlphaKey( spep_6 + 57, hitb, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
changeAnime( spep_6 + 0, 1, 104 ); --ガード
changeAnime( spep_6 + 24, 1, 106 ); 

setMoveKey( spep_6 + 0, 1, 0, -12.5 , 0 );
setMoveKey( spep_6 + 2, 1, 0.1, -12.5 , 0 );
setMoveKey( spep_6 + 4, 1, 0.1, -12.5 , 0 );
setMoveKey( spep_6 + 6, 1, 0.2, -12.5 , 0 );
setMoveKey( spep_6 + 8, 1, 0.3, -12.5 , 0 );
setMoveKey( spep_6 + 10, 1, 0.3, -12.5 , 0 );
setMoveKey( spep_6 + 12, 1, 0.4, -12.5 , 0 );
setMoveKey( spep_6 + 14, 1, 0.5, -12.5 , 0 );
setMoveKey( spep_6 + 16, 1, 0.5, -12.5 , 0 );
setMoveKey( spep_6 + 18, 1, 0.6, -12.5 , 0 );
setMoveKey( spep_6 + 20, 1, 0.7, -12.5 , 0 );
setMoveKey( spep_6 + 23, 1, 0.7, -12.5 , 0 );
setMoveKey( spep_6 + 24, 1, 5.9, 15.1 , 0 );
setMoveKey( spep_6 + 26, 1, -1.4, -3.2 , 0 );
setMoveKey( spep_6 + 28, 1, 6, 12.9 , 0 );
setMoveKey( spep_6 + 30, 1, -1.9, 2.1 , 0 );
setMoveKey( spep_6 + 32, 1, 7.5, 16 , 0 );
setMoveKey( spep_6 + 34, 1, -0.1, 3.5 , 0 );
setMoveKey( spep_6 + 36, 1, 4.1, -2.2 , 0 );
setMoveKey( spep_6 + 38, 1, 0.5, 12.2 , 0 );
setMoveKey( spep_6 + 40, 1, 6.9, 2.9 , 0 );
setMoveKey( spep_6 + 42, 1, -2.9, 9.3 , 0 );
setMoveKey( spep_6 + 44, 1, 2.3, 2.6 , 0 );
setMoveKey( spep_6 + 46, 1, 3.3, 10.3 , 0 );
setMoveKey( spep_6 + 48, 1, -0.2, 0.7 , 0 );
setMoveKey( spep_6 + 50, 1, 2.3, 10.3 , 0 );
setMoveKey( spep_6 + 52, 1, 0.2, 3.5 , 0 );
setMoveKey( spep_6 + 54, 1, 0.5, 7.8 , 0 );
setMoveKey( spep_6 + 57, 1, 0.5, 7.8 , 0 );

setScaleKey( spep_6 + 0, 1, 1.39, 1.39 );
setScaleKey( spep_6 + 57, 1, 1.39, 1.39 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 + 23, 1, 0 );
setRotateKey( spep_6 + 24, 1, -44.7 );
setRotateKey( spep_6 + 57, 1, -44.7 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_6 + 0, 906, 57, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 0, shuchusen5, 57, 25 );

setEffMoveKey( spep_6 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 57, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen5, 1.5, 1.5 );
setEffScaleKey( spep_6 + 57, shuchusen5, 1.5, 1.5 );

setEffRotateKey( spep_6 + 0, shuchusen5, 0 );
setEffRotateKey( spep_6 + 57, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 57, shuchusen5, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_6 + 50, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_6 + 19, SE_13 );  
playSe( spep_6 + 24, SE_12 );  

-- ** 次の準備 ** --
spep_7 = spep_6 + 58;

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

-- ** ひび割れ ** --
hibiware = entryEffect( spep_7 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_7 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_7 + 112, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_7 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_7 + 112, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_7 + 2, hibiware, 0 );
setEffRotateKey( spep_7 + 112, hibiware, 0 );

setEffAlphaKey( spep_7 + 2, hibiware, 0 );
setEffAlphaKey( spep_7 + 13, hibiware, 0 );
setEffAlphaKey( spep_7 + 14, hibiware, 255 );
setEffAlphaKey( spep_7 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusen6, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen6, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen6, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen6, 0 );
setEffRotateKey( spep_7 + 46, shuchusen6, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen6, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen6, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen6, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen6, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen6, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen6, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen6, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen6, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen6, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen6, 0 );

shuchusen7 = entryEffectLife( spep_7 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen7, 1, 1 );
setEffScaleKey( spep_7 + 112, shuchusen7, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen7, 0 );
setEffRotateKey( spep_7 + 112, shuchusen7, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen7, 255 );
setEffAlphaKey( spep_7 + 112, shuchusen7, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 112, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_7 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_7 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_7 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_7 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_7 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_7 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_7 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_7 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_7 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_7 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_7 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_7 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_7 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_7 + 112, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 + 112, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, -40 );
setRotateKey( spep_7 + 1, 1, -40 );
setRotateKey( spep_7 + 2, 1, 80 );
setRotateKey( spep_7 + 3, 1, 80 );
setRotateKey( spep_7 + 4, 1, 200 );
setRotateKey( spep_7 + 5, 1, 200 );
setRotateKey( spep_7 + 6, 1, 360 );
setRotateKey( spep_7 + 7, 1, 360 );
setRotateKey( spep_7 + 8, 1, 558 );
setRotateKey( spep_7 + 9, 1, 558 );
setRotateKey( spep_7 + 10, 1, 425 );
setRotateKey( spep_7 + 11, 1, 425 );
setRotateKey( spep_7 + 12, 1, -40 );
setRotateKey( spep_7 + 112, 1, -40 );

-- ** 音 ** --
playSe( spep_7 + 14, SE_11 );  --割れる音


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
--entryFade( spep_7 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 112 );

end
