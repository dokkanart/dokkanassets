--シャンパ_破壊玉

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

--味方側
SP_01 = 152548; --玉発生
SP_02 = 152550; --玉投げる
SP_03 = 152552; --玉爆破
SP_04 = 152553; --破壊玉発生
SP_05 = 152554; --破壊玉投げる
SP_06 = 152556; --敵破壊玉に押される

--敵側
SP_01r = 152549; --玉発生
SP_02r = 152551; --玉投げる
SP_05r = 152555; --破壊玉投げる

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
-- 玉発生(98F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tamahassei = entryEffectLife( spep_0 + 0, SP_01, 98, 0, -1, 0, 0, 0 );  --玉発生(ef_001)
setEffMoveKey( spep_0 + 0, tamahassei, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, tamahassei, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tamahassei, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, tamahassei, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tamahassei, 255 );
setEffAlphaKey( spep_0 + 98, tamahassei, 255 );
setEffRotateKey( spep_0 + 0, tamahassei, 0 );
setEffRotateKey( spep_0 + 98, tamahassei, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 42,  906, 56, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 42, shuchusen1, 56, 25 );

setEffMoveKey( spep_0 + 42, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 42, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 42, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 42, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 52, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 84, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_0 + 34, 1018 );  --玉発生

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;

------------------------------------------------------
-- 玉投げる(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
tamanage = entryEffectLife( spep_1 + 0, SP_02, 88, 0x100, -1, 0, 0, 0 );  --玉投げる(ef_002)
setEffMoveKey( spep_1 + 0, tamanage, 0, 0 , 0 );
setEffMoveKey( spep_1 + 88, tamanage, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tamanage, 1.0, 1.0 );
setEffScaleKey( spep_1 + 88, tamanage, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tamanage, 0 );
setEffRotateKey( spep_1 + 88, tamanage, 0 );
setEffAlphaKey( spep_1 + 0, tamanage, 255 );
setEffAlphaKey( spep_1 + 88, tamanage, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 50,  906, 8, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 50, shuchusen2, 8, 25 );

setEffMoveKey( spep_1 + 50, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 50, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 + 52, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 + 54, shuchusen2, 1.48, 1.48 );
setEffScaleKey( spep_1 + 56, shuchusen2, 1.91, 1.91 );
setEffScaleKey( spep_1 + 58, shuchusen2, 2.5, 2.5 );

setEffRotateKey( spep_1 + 50, shuchusen2, 0 );
setEffRotateKey( spep_1 + 58, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 50, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 51, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 52, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 54, shuchusen2, 139 );
setEffAlphaKey( spep_1 + 56, shuchusen2, 191 );
setEffAlphaKey( spep_1 + 58, shuchusen2, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 32,  921, 56, 0x80, -1, 0, -44, 180 );
setEffMoveKey( spep_1 + 32, ryusen1, -44, 180 , 0 );
setEffMoveKey( spep_1 + 88, ryusen1, -44, 180 , 0 );

setEffScaleKey( spep_1 + 32, ryusen1, 1.69, 1.69 );
setEffScaleKey( spep_1 + 88, ryusen1, 1.69, 1.69 );

setEffRotateKey( spep_1 + 32, ryusen1, 152.6 );
setEffRotateKey( spep_1 + 88, ryusen1, 152.6 );

setEffAlphaKey( spep_1 + 32, ryusen1, 0 );
setEffAlphaKey( spep_1 + 34, ryusen1, 64 );
setEffAlphaKey( spep_1 + 36, ryusen1, 128 );
setEffAlphaKey( spep_1 + 38, ryusen1, 191 );
setEffAlphaKey( spep_1 + 40, ryusen1, 255 );
setEffAlphaKey( spep_1 + 88, ryusen1, 255 );

-- 書き文字エントリー
ctbaba = entryEffectLife( spep_1 + 58,  10023, 30, 0x100, -1, 0, -10.5, 315.5 );  --バババッ
setEffShake( spep_1 + 58, ctbaba, 30, 20 );

setEffMoveKey( spep_1 + 58, ctbaba, -10.5, 315.5 );
setEffMoveKey( spep_1 + 88, ctbaba, -10.5, 315.5 );

setEffScaleKey( spep_1 + 58, ctbaba, 2.7, 2.7 );
setEffScaleKey( spep_1 + 88, ctbaba, 2.7, 2.7 );

setEffRotateKey( spep_1 + 58, ctbaba, 30.5 );
setEffRotateKey( spep_1 + 88, ctbaba, 30.5 );

setEffAlphaKey( spep_1 + 58, ctbaba, 255 );
setEffAlphaKey( spep_1 + 88, ctbaba, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 70, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 32, 8 );  --玉投げ

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;

------------------------------------------------------
-- 玉爆破(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
tamabaku = entryEffectLife( spep_2 + 0, SP_03, 118, 0x100, -1, 0, 0, 0 );  --玉爆破(ef_003)
setEffMoveKey( spep_2 + 0, tamabaku, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, tamabaku, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tamabaku, 1.0, 1.0 );
setEffScaleKey( spep_2 + 118, tamabaku, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tamabaku, 0 );
setEffRotateKey( spep_2 + 118, tamabaku, 0 );
setEffAlphaKey( spep_2 + 0, tamabaku, 255 );
setEffAlphaKey( spep_2 + 118, tamabaku, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 32,  906, 86, 0x100, -1, 0, 150.4, 0 );  --集中線
setEffShake( spep_2 + 32, shuchusen3, 86, 25 );

setEffMoveKey( spep_2 + 32, shuchusen3, 150.4, 0 , 0 );
setEffMoveKey( spep_2 + 118, shuchusen3, 150.4, 0 , 0 );

setEffScaleKey( spep_2 + 32, shuchusen3, 1.26, 1.12 );
setEffScaleKey( spep_2 + 118, shuchusen3, 1.26, 1.12 );

setEffRotateKey( spep_2 + 32, shuchusen3, 0 );
setEffRotateKey( spep_2 + 118, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 32, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 33, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 118, shuchusen3, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  921, 34, 0x80, -1, 0, -120, 108.2 );
setEffMoveKey( spep_2 + 0, ryusen2, -120, 108.2 , 0 );
setEffMoveKey( spep_2 + 34, ryusen2, -120, 108.2 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.64, 1.62 );
setEffScaleKey( spep_2 + 34, ryusen2, 1.64, 1.62 );

setEffRotateKey( spep_2 + 0, ryusen2, -34.7 );
setEffRotateKey( spep_2 + 34, ryusen2, -34.7 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 30, ryusen2, 255 );
setEffAlphaKey( spep_2 + 34, ryusen2, 85 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );  --ガード

setMoveKey( spep_2 + 0, 1, 396.2, 324.1 , 0 );
setMoveKey( spep_2 + 2, 1, 377.1, 304.7 , 0 );
setMoveKey( spep_2 + 4, 1, 357.9, 285.2 , 0 );
setMoveKey( spep_2 + 6, 1, 338.8, 265.8 , 0 );
setMoveKey( spep_2 + 8, 1, 319.6, 246.4 , 0 );
setMoveKey( spep_2 + 10, 1, 300.5, 226.9 , 0 );
setMoveKey( spep_2 + 12, 1, 281.3, 207.5 , 0 );
setMoveKey( spep_2 + 14, 1, 262.1, 188 , 0 );

setScaleKey( spep_2 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 2, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 6, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 10, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 12, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 14, 1, 1.03, 1.03 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 14, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 262.1, 188 , 0 );
setMoveKey( SP_dodge + 2, 1, 243, 168.6 , 0 );
setMoveKey( SP_dodge + 4, 1, 223.8, 149.2 , 0 );
setMoveKey( SP_dodge + 6, 1, 204.7, 129.7 , 0 );
setMoveKey( SP_dodge + 8, 1, 185.5, 110.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 166.4, 90.8 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.03, 1.03 );
setScaleKey( SP_dodge + 2, 1, 1.08, 1.08 );
setScaleKey( SP_dodge + 4, 1, 1.13, 1.13 );
setScaleKey( SP_dodge + 6, 1, 1.17, 1.17 );
setScaleKey( SP_dodge + 8, 1, 1.22, 1.22 );
setScaleKey( SP_dodge + 10, 1, 1.27, 1.27 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** カットイン部分 ** --
speffx = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speffx, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 + 42, 1, 0 );

setMoveKey( spep_2 + 16, 1, 243, 168.6 , 0 );
setMoveKey( spep_2 + 18, 1, 223.8, 149.2 , 0 );
setMoveKey( spep_2 + 20, 1, 204.7, 129.7 , 0 );
setMoveKey( spep_2 + 22, 1, 185.5, 110.3 , 0 );
setMoveKey( spep_2 + 24, 1, 166.4, 90.8 , 0 );
setMoveKey( spep_2 + 26, 1, 147.2, 71.4 , 0 );
setMoveKey( spep_2 + 28, 1, 128.1, 51.9 , 0 );
setMoveKey( spep_2 + 42, 1, 128.1, 51.9 , 0 );

setScaleKey( spep_2 + 16, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 18, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 22, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 24, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 26, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 28, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 42, 1, 1.36, 1.36 );

setRotateKey( spep_2 + 16, 1, 0 );
setRotateKey( spep_2 + 42, 1, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 98, 20, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 26, 1023 );  --着弾

-- ** 次の準備 ** --
spep_3 = spep_2 + 118;

------------------------------------------------------
-- 破壊玉発生(198F)
------------------------------------------------------

-- ** エフェクト等 ** --
hakatamahassei = entryEffectLife( spep_3 + 0, SP_04, 198, 0x100, -1, 0, 0, 0 );  --破壊玉発生(ef_004)
setEffMoveKey( spep_3 + 0, hakatamahassei, 0, 0 , 0 );
setEffMoveKey( spep_3 + 198, hakatamahassei, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hakatamahassei, 1.0, 1.0 );
setEffScaleKey( spep_3 + 198, hakatamahassei, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hakatamahassei, 0 );
setEffRotateKey( spep_3 + 198, hakatamahassei, 0 );
setEffAlphaKey( spep_3 + 0, hakatamahassei, 255 );
setEffAlphaKey( spep_3 + 197, hakatamahassei, 255 );
setEffAlphaKey( spep_3 + 198, hakatamahassei, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 76, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 80, 25 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_3 + 76, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 76, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 76, shuchusen4, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3 + 76,  921, 122, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 198, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 76, ryusen3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 198, ryusen3, 1.2, 1.2 );

setEffRotateKey( spep_3 + 76, ryusen3, 90 );
setEffRotateKey( spep_3 + 198, ryusen3, 90 );

setEffAlphaKey( spep_3 + 76, ryusen3, 0 );
setEffAlphaKey( spep_3 + 77, ryusen3, 255 );
setEffAlphaKey( spep_3 + 198, ryusen3, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 100, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 100, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 114,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 114, ctgogo, 72, 10 );

setEffMoveKey( spep_3 + 114, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_3 + 186, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 114, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_3 + 186, ctgogo, 0.7, 0.7 );

setEffRotateKey( spep_3 + 114, ctgogo, 0 );
setEffRotateKey( spep_3 + 186, ctgogo, 0 );

setEffAlphaKey( spep_3 + 114, ctgogo, 255 );
setEffAlphaKey( spep_3 + 186, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 186, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 180, 6, 12, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 10, 1037 );  --破壊玉溜め
playSe( spep_3 + 114, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_4 = spep_3 + 198;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen5, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 90, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen5, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 破壊玉投げる(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
hakatamanage = entryEffectLife( spep_5 + 0, SP_05, 108, 0x100, -1, 0, 0, 0 );  --破壊玉投げる(ef_005)
setEffMoveKey( spep_5 + 0, hakatamanage, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, hakatamanage, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hakatamanage, 1.0, 1.0 );
setEffScaleKey( spep_5 + 108, hakatamanage, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hakatamanage, 0 );
setEffRotateKey( spep_5 + 108, hakatamanage, 0 );
setEffAlphaKey( spep_5 + 0, hakatamanage, 255 );
setEffAlphaKey( spep_5 + 107, hakatamanage, 255 );
setEffAlphaKey( spep_5 + 108, hakatamanage, 0 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_5 + 0,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen6, 24, 25 );

setEffMoveKey( spep_5 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 24, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen6, 1.2, 1.2 );
setEffScaleKey( spep_5 + 24, shuchusen6, 1.2, 1.2 );

setEffRotateKey( spep_5 + 0, shuchusen6, 0 );
setEffRotateKey( spep_5 + 24, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 24, shuchusen6, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_5 + 24,  921, 84, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 24, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 24, ryusen4, 1.69, 1.69 );
setEffScaleKey( spep_5 + 108, ryusen4, 1.69, 1.69 );

setEffRotateKey( spep_5 + 24, ryusen4, 150.3 );
setEffRotateKey( spep_5 + 108, ryusen4, 150.3 );

setEffAlphaKey( spep_5 + 24, ryusen4, 0 );
setEffAlphaKey( spep_5 + 26, ryusen4, 255 );
setEffAlphaKey( spep_5 + 107, ryusen4, 255 );
setEffAlphaKey( spep_5 + 108, ryusen4, 0 );

-- ** 音 ** --
playSe( spep_5 + 16, 1002 );  --破壊玉投げ
playSe( spep_5 + 36, 1021 );  --玉向かう音
--SEzudo = playSeLife( spep_5 + 36, 1044 );  --玉向かう音

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 108, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 108;

------------------------------------------------------
-- 破壊玉に押される(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
osareru = entryEffectLife( spep_6 + 0, SP_06, 98, 0x100, -1, 0, 0, 0 );  --破壊玉に押される(ef_006)
setEffMoveKey( spep_6 + 0, osareru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, osareru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, osareru, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, osareru, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, osareru, 0 );
setEffRotateKey( spep_6 + 98, osareru, 0 );
setEffAlphaKey( spep_6 + 0, osareru, 255 );
setEffAlphaKey( spep_6 + 98, osareru, 255 );

-- ** 流線 ** --
ryusen5 = entryEffectLife( spep_6 + 0,  921, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, ryusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, ryusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen5, 1.7, 1.7 );
setEffScaleKey( spep_6 + 98, ryusen5, 1.7, 1.7 );

setEffRotateKey( spep_6 + 0, ryusen5, -39.1 );
setEffRotateKey( spep_6 + 98, ryusen5, -39.1 );

setEffAlphaKey( spep_6 + 0, ryusen5, 255 );
setEffAlphaKey( spep_6 + 98, ryusen5, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_6 + 0,  10014, 96, 0x100, -1, 0, 58.1, 358 );  --ズドドドッ
setEffShake( spep_6 + 0, ctzudo, 96, 20 );

setEffMoveKey( spep_6 + 0, ctzudo, 58.1, 348 , 0 );
setEffMoveKey( spep_6 + 96, ctzudo, 58.1, 348 , 0 );

setEffScaleKey( spep_6 + 0, ctzudo, 3, 3 );
setEffScaleKey( spep_6 + 96, ctzudo, 3, 3 );

setEffRotateKey( spep_6 + 0, ctzudo, 10 );
setEffRotateKey( spep_6 + 96, ctzudo, 10 );

setEffAlphaKey( spep_6 + 0, ctzudo, 255 );
setEffAlphaKey( spep_6 + 96, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 60, 1, 0 );
setShakeChara( spep_6 + 0, 1, 60, 20);
changeAnime( spep_6 + 0, 1, 106 );  --ダメージ
changeAnime( spep_6 + 50, 1, 108 );  --ダメージ(吹き飛び)

setMoveKey( spep_6 + 0, 1, 367.8, 227.5 , 0 );
setMoveKey( spep_6 + 2, 1, 358.1, 219.1 , 0 );
setMoveKey( spep_6 + 4, 1, 348.3, 210.6 , 0 );
setMoveKey( spep_6 + 6, 1, 338.6, 202.2 , 0 );
setMoveKey( spep_6 + 8, 1, 328.9, 193.7 , 0 );
setMoveKey( spep_6 + 10, 1, 319.2, 185.3 , 0 );
setMoveKey( spep_6 + 12, 1, 309.5, 176.8 , 0 );
setMoveKey( spep_6 + 14, 1, 299.8, 168.4 , 0 );
setMoveKey( spep_6 + 16, 1, 290.1, 159.9 , 0 );
setMoveKey( spep_6 + 18, 1, 280.4, 151.5 , 0 );
setMoveKey( spep_6 + 20, 1, 270.7, 143 , 0 );
setMoveKey( spep_6 + 22, 1, 261, 134.6 , 0 );
setMoveKey( spep_6 + 24, 1, 251.3, 126.1 , 0 );
setMoveKey( spep_6 + 26, 1, 241.6, 117.6 , 0 );
setMoveKey( spep_6 + 28, 1, 231.8, 109.2 , 0 );
setMoveKey( spep_6 + 30, 1, 222.1, 100.7 , 0 );
setMoveKey( spep_6 + 32, 1, 212.4, 92.3 , 0 );
setMoveKey( spep_6 + 34, 1, 202.7, 83.8 , 0 );
setMoveKey( spep_6 + 36, 1, 193, 75.3 , 0 );
setMoveKey( spep_6 + 38, 1, 183.3, 66.9 , 0 );
setMoveKey( spep_6 + 40, 1, 173.6, 58.4 , 0 );
setMoveKey( spep_6 + 42, 1, 163.9, 50 , 0 );
setMoveKey( spep_6 + 44, 1, 154.2, 41.5 , 0 );
setMoveKey( spep_6 + 46, 1, 144.4, 33 , 0 );
setMoveKey( spep_6 + 48, 1, 134.7, 24.6 , 0 );
setMoveKey( spep_6 + 50, 1, 125, 16.1 , 0 );
setMoveKey( spep_6 + 53, 1, 115.3, 7.6 , 0 );
setMoveKey( spep_6 + 54, 1, 114.2, 5.3 , 0 );
setMoveKey( spep_6 + 56, 1, 97.6, -6.9 , 0 );
setMoveKey( spep_6 + 58, 1, 81, -19 , 0 );
setMoveKey( spep_6 + 60, 1, 64.4, -31.2 , 0 );

setScaleKey( spep_6 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_6 + 2, 1, 0.85, 0.85 );
setScaleKey( spep_6 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_6 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_6 + 8, 1, 0.88, 0.88 );
setScaleKey( spep_6 + 10, 1, 0.9, 0.9 );
setScaleKey( spep_6 + 12, 1, 0.91, 0.91 );
setScaleKey( spep_6 + 14, 1, 0.92, 0.92 );
setScaleKey( spep_6 + 16, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 18, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 20, 1, 0.95, 0.95 );
setScaleKey( spep_6 + 22, 1, 0.96, 0.96 );
setScaleKey( spep_6 + 24, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 26, 1, 0.98, 0.98 );
setScaleKey( spep_6 + 28, 1, 1, 1 );
setScaleKey( spep_6 + 30, 1, 1.01, 1.01 );
setScaleKey( spep_6 + 32, 1, 1.02, 1.02 );
setScaleKey( spep_6 + 34, 1, 1.03, 1.03 );
setScaleKey( spep_6 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_6 + 38, 1, 1.05, 1.05 );
setScaleKey( spep_6 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_6 + 44, 1, 1.09, 1.09 );
setScaleKey( spep_6 + 46, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_6 + 50, 1, 1.12, 1.12 );
setScaleKey( spep_6 + 53, 1, 1.13, 1.13 );
setScaleKey( spep_6 + 54, 1, 1.07, 1.07 );
setScaleKey( spep_6 + 56, 1, 1.02, 1.02 );
setScaleKey( spep_6 + 58, 1, 0.96, 0.96 );
setScaleKey( spep_6 + 60, 1, 0.91, 0.91 );

setRotateKey( spep_6 + 0, 1, -35 );
setRotateKey( spep_6 + 2, 1, -35.5 );
setRotateKey( spep_6 + 4, 1, -36 );
setRotateKey( spep_6 + 6, 1, -36.4 );
setRotateKey( spep_6 + 8, 1, -36.9 );
setRotateKey( spep_6 + 10, 1, -37.4 );
setRotateKey( spep_6 + 12, 1, -37.9 );
setRotateKey( spep_6 + 14, 1, -38.3 );
setRotateKey( spep_6 + 16, 1, -38.8 );
setRotateKey( spep_6 + 18, 1, -39.3 );
setRotateKey( spep_6 + 20, 1, -39.8 );
setRotateKey( spep_6 + 22, 1, -40.2 );
setRotateKey( spep_6 + 24, 1, -40.7 );
setRotateKey( spep_6 + 26, 1, -41.2 );
setRotateKey( spep_6 + 28, 1, -41.7 );
setRotateKey( spep_6 + 30, 1, -42.2 );
setRotateKey( spep_6 + 32, 1, -42.6 );
setRotateKey( spep_6 + 34, 1, -43.1 );
setRotateKey( spep_6 + 36, 1, -43.6 );
setRotateKey( spep_6 + 38, 1, -44.1 );
setRotateKey( spep_6 + 40, 1, -44.5 );
setRotateKey( spep_6 + 42, 1, -45 );
setRotateKey( spep_6 + 44, 1, -45.5 );
setRotateKey( spep_6 + 46, 1, -46 );
setRotateKey( spep_6 + 48, 1, -46.5 );
setRotateKey( spep_6 + 49, 1, -46.5 );
setRotateKey( spep_6 + 50, 1, -10 );
setRotateKey( spep_6 + 60, 1, -10 );

-- ** 音 ** --
--stopSe( spep_6 + 98, SEzudo, 0 );
playSe( spep_6 + 2, 1021 );  --玉向かう音

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 60, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 98;

------------------------------------------------------
-- 爆発(120F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1568, 0x100, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 120, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 120, bakuhatsu, 0 );
setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 120, bakuhatsu, 255 );

-- ** 音 ** --
playSe( spep_7 + 2, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
entryFade( spep_7 + 102, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 110 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 玉発生(98F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tamahassei = entryEffectLife( spep_0 + 0, SP_01r, 98, 0, -1, 0, 0, 0 );  --玉発生(ef_001r)
setEffMoveKey( spep_0 + 0, tamahassei, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, tamahassei, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tamahassei, 1.0, 1.0 );
setEffScaleKey( spep_0 + 98, tamahassei, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, tamahassei, 255 );
setEffAlphaKey( spep_0 + 98, tamahassei, 255 );
setEffRotateKey( spep_0 + 0, tamahassei, 0 );
setEffRotateKey( spep_0 + 98, tamahassei, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 42,  906, 56, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 42, shuchusen1, 56, 25 );

setEffMoveKey( spep_0 + 42, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 98, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 42, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 98, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 42, shuchusen1, 0 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 42, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 52, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 98, shuchusen1, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 84, 14, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_0 + 34, 1018 );  --玉発生

-- ** 次の準備 ** --
spep_1 = spep_0 + 98;

------------------------------------------------------
-- 玉投げる(88F)
------------------------------------------------------

-- ** エフェクト等 ** --
tamanage = entryEffectLife( spep_1 + 0, SP_02r, 88, 0x100, -1, 0, 0, 0 );  --玉投げる(ef_002r)
setEffMoveKey( spep_1 + 0, tamanage, 0, 0 , 0 );
setEffMoveKey( spep_1 + 88, tamanage, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tamanage, 1.0, 1.0 );
setEffScaleKey( spep_1 + 88, tamanage, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tamanage, 0 );
setEffRotateKey( spep_1 + 88, tamanage, 0 );
setEffAlphaKey( spep_1 + 0, tamanage, 255 );
setEffAlphaKey( spep_1 + 88, tamanage, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 50,  906, 8, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 50, shuchusen2, 8, 25 );

setEffMoveKey( spep_1 + 50, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 58, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 50, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_1 + 52, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_1 + 54, shuchusen2, 1.48, 1.48 );
setEffScaleKey( spep_1 + 56, shuchusen2, 1.91, 1.91 );
setEffScaleKey( spep_1 + 58, shuchusen2, 2.5, 2.5 );

setEffRotateKey( spep_1 + 50, shuchusen2, 0 );
setEffRotateKey( spep_1 + 58, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 50, shuchusen2, 0 );
setEffAlphaKey( spep_1 + 51, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 52, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 54, shuchusen2, 139 );
setEffAlphaKey( spep_1 + 56, shuchusen2, 191 );
setEffAlphaKey( spep_1 + 58, shuchusen2, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_1 + 32,  921, 56, 0x80, -1, 0, -44, 180 );
setEffMoveKey( spep_1 + 32, ryusen1, -44, 180 , 0 );
setEffMoveKey( spep_1 + 88, ryusen1, -44, 180 , 0 );

setEffScaleKey( spep_1 + 32, ryusen1, 1.69, 1.69 );
setEffScaleKey( spep_1 + 88, ryusen1, 1.69, 1.69 );

setEffRotateKey( spep_1 + 32, ryusen1, 152.6 );
setEffRotateKey( spep_1 + 88, ryusen1, 152.6 );

setEffAlphaKey( spep_1 + 32, ryusen1, 0 );
setEffAlphaKey( spep_1 + 34, ryusen1, 64 );
setEffAlphaKey( spep_1 + 36, ryusen1, 128 );
setEffAlphaKey( spep_1 + 38, ryusen1, 191 );
setEffAlphaKey( spep_1 + 40, ryusen1, 255 );
setEffAlphaKey( spep_1 + 88, ryusen1, 255 );

-- 書き文字エントリー
ctbaba = entryEffectLife( spep_1 + 58,  10023, 30, 0x100, -1, 0, -10.5, 315.5 );  --バババッ
setEffShake( spep_1 + 58, ctbaba, 30, 20 );

setEffMoveKey( spep_1 + 58, ctbaba, -10.5, 315.5 );
setEffMoveKey( spep_1 + 88, ctbaba, -10.5, 315.5 );

setEffScaleKey( spep_1 + 58, ctbaba, 2.7, 2.7 );
setEffScaleKey( spep_1 + 88, ctbaba, 2.7, 2.7 );

setEffRotateKey( spep_1 + 58, ctbaba, 30.5 );
setEffRotateKey( spep_1 + 88, ctbaba, 30.5 );

setEffAlphaKey( spep_1 + 58, ctbaba, 255 );
setEffAlphaKey( spep_1 + 88, ctbaba, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_1 + 70, 18, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_1 + 32, 8 );  --玉投げ

-- ** 次の準備 ** --
spep_2 = spep_1 + 88;

------------------------------------------------------
-- 玉爆破(118F)
------------------------------------------------------

-- ** エフェクト等 ** --
tamabaku = entryEffectLife( spep_2 + 0, SP_03, 118, 0x100, -1, 0, 0, 0 );  --玉爆破(ef_003)
setEffMoveKey( spep_2 + 0, tamabaku, 0, 0 , 0 );
setEffMoveKey( spep_2 + 118, tamabaku, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tamabaku, 1.0, 1.0 );
setEffScaleKey( spep_2 + 118, tamabaku, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tamabaku, 0 );
setEffRotateKey( spep_2 + 118, tamabaku, 0 );
setEffAlphaKey( spep_2 + 0, tamabaku, 255 );
setEffAlphaKey( spep_2 + 118, tamabaku, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 32,  906, 86, 0x100, -1, 0, 150.4, 0 );  --集中線
setEffShake( spep_2 + 32, shuchusen3, 86, 25 );

setEffMoveKey( spep_2 + 32, shuchusen3, 150.4, 0 , 0 );
setEffMoveKey( spep_2 + 118, shuchusen3, 150.4, 0 , 0 );

setEffScaleKey( spep_2 + 32, shuchusen3, 1.26, 1.12 );
setEffScaleKey( spep_2 + 118, shuchusen3, 1.26, 1.12 );

setEffRotateKey( spep_2 + 32, shuchusen3, 0 );
setEffRotateKey( spep_2 + 118, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 32, shuchusen3, 0 );
setEffAlphaKey( spep_2 + 33, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 118, shuchusen3, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 0,  921, 34, 0x80, -1, 0, -120, 108.2 );
setEffMoveKey( spep_2 + 0, ryusen2, -120, 108.2 , 0 );
setEffMoveKey( spep_2 + 34, ryusen2, -120, 108.2 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.64, 1.62 );
setEffScaleKey( spep_2 + 34, ryusen2, 1.64, 1.62 );

setEffRotateKey( spep_2 + 0, ryusen2, -34.7 );
setEffRotateKey( spep_2 + 34, ryusen2, -34.7 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 30, ryusen2, 255 );
setEffAlphaKey( spep_2 + 34, ryusen2, 85 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
changeAnime( spep_2 + 0, 1, 104 );  --ガード

setMoveKey( spep_2 + 0, 1, 396.2, 324.1 , 0 );
setMoveKey( spep_2 + 2, 1, 377.1, 304.7 , 0 );
setMoveKey( spep_2 + 4, 1, 357.9, 285.2 , 0 );
setMoveKey( spep_2 + 6, 1, 338.8, 265.8 , 0 );
setMoveKey( spep_2 + 8, 1, 319.6, 246.4 , 0 );
setMoveKey( spep_2 + 10, 1, 300.5, 226.9 , 0 );
setMoveKey( spep_2 + 12, 1, 281.3, 207.5 , 0 );
setMoveKey( spep_2 + 14, 1, 262.1, 188 , 0 );

setScaleKey( spep_2 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 2, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 6, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 8, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 10, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 12, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 14, 1, 1.03, 1.03 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 + 14, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
changeAnime( SP_dodge + 0, 1, 104 );  --ガード

setMoveKey( SP_dodge + 0, 1, 262.1, 188 , 0 );
setMoveKey( SP_dodge + 2, 1, 243, 168.6 , 0 );
setMoveKey( SP_dodge + 4, 1, 223.8, 149.2 , 0 );
setMoveKey( SP_dodge + 6, 1, 204.7, 129.7 , 0 );
setMoveKey( SP_dodge + 8, 1, 185.5, 110.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 166.4, 90.8 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.03, 1.03 );
setScaleKey( SP_dodge + 2, 1, 1.08, 1.08 );
setScaleKey( SP_dodge + 4, 1, 1.13, 1.13 );
setScaleKey( SP_dodge + 6, 1, 1.17, 1.17 );
setScaleKey( SP_dodge + 8, 1, 1.22, 1.22 );
setScaleKey( SP_dodge + 10, 1, 1.27, 1.27 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** カットイン部分 ** --
speffx = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speffx, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_2 + 42, 1, 0 );

setMoveKey( spep_2 + 16, 1, 243, 168.6 , 0 );
setMoveKey( spep_2 + 18, 1, 223.8, 149.2 , 0 );
setMoveKey( spep_2 + 20, 1, 204.7, 129.7 , 0 );
setMoveKey( spep_2 + 22, 1, 185.5, 110.3 , 0 );
setMoveKey( spep_2 + 24, 1, 166.4, 90.8 , 0 );
setMoveKey( spep_2 + 26, 1, 147.2, 71.4 , 0 );
setMoveKey( spep_2 + 28, 1, 128.1, 51.9 , 0 );
setMoveKey( spep_2 + 42, 1, 128.1, 51.9 , 0 );

setScaleKey( spep_2 + 16, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 18, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 20, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 22, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 24, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 26, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 28, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 42, 1, 1.36, 1.36 );

setRotateKey( spep_2 + 16, 1, 0 );
setRotateKey( spep_2 + 42, 1, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_2 + 98, 20, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_2 + 26, 1023 );  --着弾

-- ** 次の準備 ** --
spep_3 = spep_2 + 118;

------------------------------------------------------
-- 破壊玉発生(198F)
------------------------------------------------------

-- ** エフェクト等 ** --
hakatamahassei = entryEffectLife( spep_3 + 0, SP_04, 198, 0x100, -1, 0, 0, 0 );  --破壊玉発生(ef_004)
setEffMoveKey( spep_3 + 0, hakatamahassei, 0, 0 , 0 );
setEffMoveKey( spep_3 + 198, hakatamahassei, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hakatamahassei, -1.0, 1.0 );
setEffScaleKey( spep_3 + 198, hakatamahassei, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hakatamahassei, 0 );
setEffRotateKey( spep_3 + 198, hakatamahassei, 0 );
setEffAlphaKey( spep_3 + 0, hakatamahassei, 255 );
setEffAlphaKey( spep_3 + 197, hakatamahassei, 255 );
setEffAlphaKey( spep_3 + 198, hakatamahassei, 0 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 76, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 80, 25 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_3 + 76, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 76, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 76, shuchusen4, 255 );

-- ** 流線 ** --
ryusen3 = entryEffectLife( spep_3 + 76,  921, 122, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 198, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 76, ryusen3, 1.2, 1.2 );
setEffScaleKey( spep_3 + 198, ryusen3, 1.2, 1.2 );

setEffRotateKey( spep_3 + 76, ryusen3, 90 );
setEffRotateKey( spep_3 + 198, ryusen3, 90 );

setEffAlphaKey( spep_3 + 76, ryusen3, 0 );
setEffAlphaKey( spep_3 + 77, ryusen3, 255 );
setEffAlphaKey( spep_3 + 198, ryusen3, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 100, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 100, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_3 + 114,  190006, 72, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_3 + 114, ctgogo, 72, 10 );

setEffMoveKey( spep_3 + 114, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_3 + 186, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_3 + 114, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_3 + 186, ctgogo, -0.7, 0.7 );

setEffRotateKey( spep_3 + 114, ctgogo, 0 );
setEffRotateKey( spep_3 + 186, ctgogo, 0 );

setEffAlphaKey( spep_3 + 114, ctgogo, 255 );
setEffAlphaKey( spep_3 + 186, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 186, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_3 + 180, 6, 12, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 音 ** --
playSe( spep_3 + 10, 1037 );  --破壊玉溜め
playSe( spep_3 + 114, SE_04 );  --ゴゴゴ

-- ** 次の準備 ** --
spep_4 = spep_3 + 198;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen5, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen5, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen5, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen5, 0 );
setEffRotateKey( spep_4 + 90, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen5, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_4 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_5 = spep_4 + 94;

------------------------------------------------------
-- 破壊玉投げる(108F)
------------------------------------------------------

-- ** エフェクト等 ** --
hakatamanage = entryEffectLife( spep_5 + 0, SP_05r, 108, 0x100, -1, 0, 0, 0 );  --破壊玉投げる(ef_005r)
setEffMoveKey( spep_5 + 0, hakatamanage, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, hakatamanage, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hakatamanage, 1.0, 1.0 );
setEffScaleKey( spep_5 + 108, hakatamanage, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hakatamanage, 0 );
setEffRotateKey( spep_5 + 108, hakatamanage, 0 );
setEffAlphaKey( spep_5 + 0, hakatamanage, 255 );
setEffAlphaKey( spep_5 + 107, hakatamanage, 255 );
setEffAlphaKey( spep_5 + 108, hakatamanage, 0 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_5 + 0,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen6, 24, 25 );

setEffMoveKey( spep_5 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 24, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen6, 1.2, 1.2 );
setEffScaleKey( spep_5 + 24, shuchusen6, 1.2, 1.2 );

setEffRotateKey( spep_5 + 0, shuchusen6, 0 );
setEffRotateKey( spep_5 + 24, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 24, shuchusen6, 255 );

-- ** 流線 ** --
ryusen4 = entryEffectLife( spep_5 + 24,  921, 84, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_5 + 24, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 108, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 24, ryusen4, 1.69, 1.69 );
setEffScaleKey( spep_5 + 108, ryusen4, 1.69, 1.69 );

setEffRotateKey( spep_5 + 24, ryusen4, 150.3 );
setEffRotateKey( spep_5 + 108, ryusen4, 150.3 );

setEffAlphaKey( spep_5 + 24, ryusen4, 0 );
setEffAlphaKey( spep_5 + 26, ryusen4, 255 );
setEffAlphaKey( spep_5 + 107, ryusen4, 255 );
setEffAlphaKey( spep_5 + 108, ryusen4, 0 );

-- ** 音 ** --
playSe( spep_5 + 16, 1002 );  --破壊玉投げ
playSe( spep_5 + 36, 1021 );  --玉向かう音
--SEzudo = playSeLife( spep_5 + 36, 1044 );  --玉向かう音

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 108, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 108;

------------------------------------------------------
-- 破壊玉に押される(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
osareru = entryEffectLife( spep_6 + 0, SP_06, 98, 0x100, -1, 0, 0, 0 );  --破壊玉に押される(ef_006)
setEffMoveKey( spep_6 + 0, osareru, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, osareru, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, osareru, 1.0, 1.0 );
setEffScaleKey( spep_6 + 98, osareru, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, osareru, 0 );
setEffRotateKey( spep_6 + 98, osareru, 0 );
setEffAlphaKey( spep_6 + 0, osareru, 255 );
setEffAlphaKey( spep_6 + 98, osareru, 255 );

-- ** 流線 ** --
ryusen5 = entryEffectLife( spep_6 + 0,  921, 98, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, ryusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 98, ryusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, ryusen5, 1.7, 1.7 );
setEffScaleKey( spep_6 + 98, ryusen5, 1.7, 1.7 );

setEffRotateKey( spep_6 + 0, ryusen5, -39.1 );
setEffRotateKey( spep_6 + 98, ryusen5, -39.1 );

setEffAlphaKey( spep_6 + 0, ryusen5, 255 );
setEffAlphaKey( spep_6 + 98, ryusen5, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_6 + 0,  10014, 96, 0x100, -1, 0, 58.1, 358 );  --ズドドドッ
setEffShake( spep_6 + 0, ctzudo, 96, 20 );

setEffMoveKey( spep_6 + 0, ctzudo, 58.1, 348 , 0 );
setEffMoveKey( spep_6 + 96, ctzudo, 58.1, 348 , 0 );

setEffScaleKey( spep_6 + 0, ctzudo, 3, 3 );
setEffScaleKey( spep_6 + 96, ctzudo, 3, 3 );

setEffRotateKey( spep_6 + 0, ctzudo, -60 );
setEffRotateKey( spep_6 + 96, ctzudo, -60 );

setEffAlphaKey( spep_6 + 0, ctzudo, 255 );
setEffAlphaKey( spep_6 + 96, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 60, 1, 0 );
setShakeChara( spep_6 + 0, 1, 60, 20);
changeAnime( spep_6 + 0, 1, 106 );  --ダメージ
changeAnime( spep_6 + 50, 1, 108 );  --ダメージ(吹き飛び)

setMoveKey( spep_6 + 0, 1, 367.8, 227.5 , 0 );
setMoveKey( spep_6 + 2, 1, 358.1, 219.1 , 0 );
setMoveKey( spep_6 + 4, 1, 348.3, 210.6 , 0 );
setMoveKey( spep_6 + 6, 1, 338.6, 202.2 , 0 );
setMoveKey( spep_6 + 8, 1, 328.9, 193.7 , 0 );
setMoveKey( spep_6 + 10, 1, 319.2, 185.3 , 0 );
setMoveKey( spep_6 + 12, 1, 309.5, 176.8 , 0 );
setMoveKey( spep_6 + 14, 1, 299.8, 168.4 , 0 );
setMoveKey( spep_6 + 16, 1, 290.1, 159.9 , 0 );
setMoveKey( spep_6 + 18, 1, 280.4, 151.5 , 0 );
setMoveKey( spep_6 + 20, 1, 270.7, 143 , 0 );
setMoveKey( spep_6 + 22, 1, 261, 134.6 , 0 );
setMoveKey( spep_6 + 24, 1, 251.3, 126.1 , 0 );
setMoveKey( spep_6 + 26, 1, 241.6, 117.6 , 0 );
setMoveKey( spep_6 + 28, 1, 231.8, 109.2 , 0 );
setMoveKey( spep_6 + 30, 1, 222.1, 100.7 , 0 );
setMoveKey( spep_6 + 32, 1, 212.4, 92.3 , 0 );
setMoveKey( spep_6 + 34, 1, 202.7, 83.8 , 0 );
setMoveKey( spep_6 + 36, 1, 193, 75.3 , 0 );
setMoveKey( spep_6 + 38, 1, 183.3, 66.9 , 0 );
setMoveKey( spep_6 + 40, 1, 173.6, 58.4 , 0 );
setMoveKey( spep_6 + 42, 1, 163.9, 50 , 0 );
setMoveKey( spep_6 + 44, 1, 154.2, 41.5 , 0 );
setMoveKey( spep_6 + 46, 1, 144.4, 33 , 0 );
setMoveKey( spep_6 + 48, 1, 134.7, 24.6 , 0 );
setMoveKey( spep_6 + 50, 1, 125, 16.1 , 0 );
setMoveKey( spep_6 + 53, 1, 115.3, 7.6 , 0 );
setMoveKey( spep_6 + 54, 1, 114.2, 5.3 , 0 );
setMoveKey( spep_6 + 56, 1, 97.6, -6.9 , 0 );
setMoveKey( spep_6 + 58, 1, 81, -19 , 0 );
setMoveKey( spep_6 + 60, 1, 64.4, -31.2 , 0 );

setScaleKey( spep_6 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_6 + 2, 1, 0.85, 0.85 );
setScaleKey( spep_6 + 4, 1, 0.86, 0.86 );
setScaleKey( spep_6 + 6, 1, 0.87, 0.87 );
setScaleKey( spep_6 + 8, 1, 0.88, 0.88 );
setScaleKey( spep_6 + 10, 1, 0.9, 0.9 );
setScaleKey( spep_6 + 12, 1, 0.91, 0.91 );
setScaleKey( spep_6 + 14, 1, 0.92, 0.92 );
setScaleKey( spep_6 + 16, 1, 0.93, 0.93 );
setScaleKey( spep_6 + 18, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 20, 1, 0.95, 0.95 );
setScaleKey( spep_6 + 22, 1, 0.96, 0.96 );
setScaleKey( spep_6 + 24, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 26, 1, 0.98, 0.98 );
setScaleKey( spep_6 + 28, 1, 1, 1 );
setScaleKey( spep_6 + 30, 1, 1.01, 1.01 );
setScaleKey( spep_6 + 32, 1, 1.02, 1.02 );
setScaleKey( spep_6 + 34, 1, 1.03, 1.03 );
setScaleKey( spep_6 + 36, 1, 1.04, 1.04 );
setScaleKey( spep_6 + 38, 1, 1.05, 1.05 );
setScaleKey( spep_6 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_6 + 44, 1, 1.09, 1.09 );
setScaleKey( spep_6 + 46, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 48, 1, 1.11, 1.11 );
setScaleKey( spep_6 + 50, 1, 1.12, 1.12 );
setScaleKey( spep_6 + 53, 1, 1.13, 1.13 );
setScaleKey( spep_6 + 54, 1, 1.07, 1.07 );
setScaleKey( spep_6 + 56, 1, 1.02, 1.02 );
setScaleKey( spep_6 + 58, 1, 0.96, 0.96 );
setScaleKey( spep_6 + 60, 1, 0.91, 0.91 );

setRotateKey( spep_6 + 0, 1, -35 );
setRotateKey( spep_6 + 2, 1, -35.5 );
setRotateKey( spep_6 + 4, 1, -36 );
setRotateKey( spep_6 + 6, 1, -36.4 );
setRotateKey( spep_6 + 8, 1, -36.9 );
setRotateKey( spep_6 + 10, 1, -37.4 );
setRotateKey( spep_6 + 12, 1, -37.9 );
setRotateKey( spep_6 + 14, 1, -38.3 );
setRotateKey( spep_6 + 16, 1, -38.8 );
setRotateKey( spep_6 + 18, 1, -39.3 );
setRotateKey( spep_6 + 20, 1, -39.8 );
setRotateKey( spep_6 + 22, 1, -40.2 );
setRotateKey( spep_6 + 24, 1, -40.7 );
setRotateKey( spep_6 + 26, 1, -41.2 );
setRotateKey( spep_6 + 28, 1, -41.7 );
setRotateKey( spep_6 + 30, 1, -42.2 );
setRotateKey( spep_6 + 32, 1, -42.6 );
setRotateKey( spep_6 + 34, 1, -43.1 );
setRotateKey( spep_6 + 36, 1, -43.6 );
setRotateKey( spep_6 + 38, 1, -44.1 );
setRotateKey( spep_6 + 40, 1, -44.5 );
setRotateKey( spep_6 + 42, 1, -45 );
setRotateKey( spep_6 + 44, 1, -45.5 );
setRotateKey( spep_6 + 46, 1, -46 );
setRotateKey( spep_6 + 48, 1, -46.5 );
setRotateKey( spep_6 + 49, 1, -46.5 );
setRotateKey( spep_6 + 50, 1, -10 );
setRotateKey( spep_6 + 60, 1, -10 );

-- ** 音 ** --
--stopSe( spep_6 + 98, SEzudo, 0 );
playSe( spep_6 + 2, 1021 );  --玉向かう音

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_6 + 60, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_7 = spep_6 + 98;

------------------------------------------------------
-- 爆発(120F)
------------------------------------------------------

-- ** エフェクト等 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1568, 0x100, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 120, bakuhatsu, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, bakuhatsu, 1.0, 1.0 );
setEffScaleKey( spep_7 + 120, bakuhatsu, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 120, bakuhatsu, 0 );
setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 120, bakuhatsu, 255 );

-- ** 音 ** --
playSe( spep_7 + 2, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
entryFade( spep_7 + 102, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_7 + 110 );

end


