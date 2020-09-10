--悪のサイヤ人_デザストルクロー

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
SP_01 = 154335; --手前突進
SP_02 = 154336; --２連斬撃
SP_03 = 154337; --振りかぶり手拡大
SP_04 = 154338; --フィニッシュ
SP_05 = 154339; --フィニッシュ背景

--敵側
SP_01x = 154340; --手前突進
SP_02x = 154341; --２連斬撃
SP_03x = 154342; --振りかぶり手拡大
SP_04x = 154343; --フィニッシュ

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
-- 手前突進(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --手前突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 66, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 66, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 8, 906, 58, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 8, shuchusen1, 58, 20 );

setEffMoveKey( spep_0 + 8, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 8, shuchusen1, 1.7, 2.0 );
setEffScaleKey( spep_0 + 66, shuchusen1, 1.7, 2.0 );

setEffRotateKey( spep_0 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0 + 66, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 64, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 + 2,  10012, 56, 0x100, -1, 0, -4, 319.9 );  --ズオッ
setEffShake( spep_0 + 8, ctzuo, 50, 20 );

setEffMoveKey( spep_0 + 2, ctzuo, -4, 319.9 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo, -2.7, 343.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo, -1.3, 366.5 , 0 );
setEffMoveKey( spep_0 + 8, ctzuo, 0, 390.2 , 0 );
setEffMoveKey( spep_0 + 58, ctzuo, 0, 390.2 , 0 );

setEffScaleKey( spep_0 + 2, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_0 + 4, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_0 + 6, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_0 + 8, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 10, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 12, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 14, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 16, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 18, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 20, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 22, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 24, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 26, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 28, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 30, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 32, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 34, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 36, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 38, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 40, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 42, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 44, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 46, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 48, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 50, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 52, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_0 + 54, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_0 + 56, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_0 + 58, ctzuo, 2.8, 2.8 );

setEffRotateKey( spep_0 + 2, ctzuo, 0 );
setEffRotateKey( spep_0 + 58, ctzuo, 0 );

setEffAlphaKey( spep_0 + 2, ctzuo, 255 );
setEffAlphaKey( spep_0 + 50, ctzuo, 255 );
setEffAlphaKey( spep_0 + 52, ctzuo, 195 );
setEffAlphaKey( spep_0 + 54, ctzuo, 134 );
setEffAlphaKey( spep_0 + 56, ctzuo, 74 );
setEffAlphaKey( spep_0 + 58, ctzuo, 13 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 60, 4,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 0, 9 );
playSe( spep_0 + 44, 1072 );

playSe( spep_0 + 62, 1180 );
setSeVolume( spep_0 + 62, 1180, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;

------------------------------------------------------
-- ２連斬撃(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --２連斬撃(ef_002)
setEffMoveKey( spep_1 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, hit, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, hit, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit, 0 );
setEffRotateKey( spep_1 + 96, hit, 0 );
setEffAlphaKey( spep_1 + 0, hit, 255 );
setEffAlphaKey( spep_1 + 96, hit, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 179.1, 356.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 177.2, 349.1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 175.3, 341.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 173.5, 334.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 171.5, 327.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 169.5, 320.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 167.6, 313.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 165.7, 306.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 163.8, 299.3 , 0 );

setScaleKey( spep_1 + 0, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 + 4, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 6, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 10, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 14, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 16, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 18, 1, 1.02, 1.02 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 200 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 98, 1, 0 );
changeAnime( spep_1 -3 + 36, 1, 106 );
changeAnime( spep_1 -3 + 68, 1, 108 );

setMoveKey( spep_1 -3 + 20, 1, 162, 292.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 160, 285 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 158.2, 277.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 156.1, 270.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 154.2, 263.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 152.3, 256.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 150.5, 249.5 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 150.4, 249.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 133.1, 252.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 141.7, 257.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 130.4, 255.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 133.3, 252.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 141.7, 257.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 130.6, 255 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 133.5, 252.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 141.9, 257.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 130.9, 254.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 133.7, 252.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 142, 257.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 131.1, 254.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 133.9, 252.1 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 142.2, 257.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 131.4, 254.7 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 134.1, 252 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 150.4, 249.6 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 142.7, 246.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 148.3, 239 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 150.4, 249.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 142.8, 246.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 148.3, 239.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 150.5, 249.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 142.9, 246.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 148.3, 239.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 150.5, 249.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 142.9, 246.9 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 148.3, 239.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 150.5, 249.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 143, 247 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 148.5, 239.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 150.4, 249.5 , 0 );

setScaleKey( spep_1 -3 + 20, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 22, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 24, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 26, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 28, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 30, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 32, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 35, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 36, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 38, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 40, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 42, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 46, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 48, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 52, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 54, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 56, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 58, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 60, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 62, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 64, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 67, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 68, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 70, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 72, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 74, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 76, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 78, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 80, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 82, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 84, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 86, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 88, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 90, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 92, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 94, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 96, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 98, 1, 1.3, 1.3 );

setRotateKey( spep_1 -3 + 35, 1, 0 );
setRotateKey( spep_1 -3 + 36, 1, -38.4 );
setRotateKey( spep_1 -3 + 67, 1, -38.4 );
setRotateKey( spep_1 -3 + 68, 1, -20.1 );
setRotateKey( spep_1 -3 + 98, 1, -20.1 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 -3 + 34, 906, 62 +3, 0x100, -1, 0, 0, 20 );  --集中線
setEffShake( spep_1 -3 + 34, shuchusen2, 62 +3, 20 );

setEffMoveKey( spep_1 -3 + 34, shuchusen2, 0, 20 , 0 );
setEffMoveKey( spep_1 + 96, shuchusen2, 0, 20 , 0 );

setEffScaleKey( spep_1 -3 + 34, shuchusen2, 1.4, 1.6 );
setEffScaleKey( spep_1 + 96, shuchusen2, 1.4, 1.6 );

setEffRotateKey( spep_1 -3 + 34, shuchusen2, 0 );
setEffRotateKey( spep_1 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 34, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 64, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 67, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 68, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 96, shuchusen2, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 96 -4, 2,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_1 + 30, 1180 );
setSeVolume( spep_1 + 34, 1180, 80 );
setSeVolume( spep_1 + 36, 1180, 100 );

playSe( spep_1 + 32, 1142 );
setSeVolume( spep_1 + 32, 1142, 70 );

playSe( spep_1 + 36, 1032 );
setSeVolume( spep_1 + 36, 1032, 70 );

playSe( spep_1 + 66, 1142 );
setSeVolume( spep_1 + 66, 1142, 70 );

playSe( spep_1 + 70, 1032 );
setSeVolume( spep_1 + 70, 1032, 70 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 振りかぶり手拡大(196F)
------------------------------------------------------

-- ** エフェクト等 ** --
hand = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --振りかぶり手拡大(ef_003)
setEffMoveKey( spep_3 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_3 + 196, hand, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_3 + 196, hand, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hand, 0 );
setEffRotateKey( spep_3 + 196, hand, 0 );
setEffAlphaKey( spep_3 + 0, hand, 255 );
setEffAlphaKey( spep_3 + 196, hand, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 -3 + 12, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 -3 + 12, shuchusen3, 98, 20 );

setEffMoveKey( spep_3 -3 + 12, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 110, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 12, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_3 -3 + 110, shuchusen3, 1.2, 1.2 );

setEffRotateKey( spep_3 -3 + 12, shuchusen3, 0 );
setEffRotateKey( spep_3 -3 + 110, shuchusen3, 0 );

setEffAlphaKey( spep_3 -3 + 12, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 110, shuchusen3, 255 );

spep_x = spep_3 + 12;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 + 70, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 + 70, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 + 70, 515.5 , 0 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 196, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
SE0 = playSe( spep_3 + 22, 1179 );
setSeVolume( spep_3 + 22, 1179, 125 );
setSeVolume( spep_3 + 86, 1179, 100 );
setSeVolume( spep_3 + 95, 1179, 70 );
setSeVolume( spep_3 + 100, 1179, 50 );
stopSe( spep_3 + 114, SE0, 0 );

SE1 = playSe( spep_3 + 22, 1109 );
stopSe( spep_3 + 26, SE1, 12 );

playSe( spep_3 + 82, 1072 );
setSeVolume( spep_3 + 82, 1072, 20 );

SE2 = playSe( spep_3 + 102, 1044 );
setSeVolume( spep_3 + 102, 1044, 70 );
stopSe( spep_3 + 196, SE2, 0 );

playSe( spep_3 + 108, 1072 );
setSeVolume( spep_3 + 108, 1072, 20 );

playSe( spep_3 + 134, 1072 );
setSeVolume( spep_3 + 134, 1072, 25 );

playSe( spep_3 + 160, 1072 );
setSeVolume( spep_3 + 160, 1072, 31 );

SE3 = playSe( spep_3 + 178, 1116 );
stopSe( spep_3 + 198, SE3, 8 );

playSe( spep_x + 16, 1018 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 196;

------------------------------------------------------
-- フィニッシュ(174F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_004)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 174, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 174, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 174, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 174, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --フィニッシュ背景(ef_005)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 174, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 174, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 174, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 174, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 14, 1, 106 );

setMoveKey( spep_4 + 0, 1, 77.5, 184.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 95.8, 182.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 96, 205.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 116.3, 217.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 122.5, 231.5 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 132.8, 231.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 143, 249.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 147.2, 254 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 143.4, 256.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 143.5, 244.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 143.7, 250.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 147.9, 254.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 144.1, 256.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 144.3, 244.9 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 144.5, 251.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 148.6, 255.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 144.8, 257.4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 145, 245.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 145.2, 251.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 149.4, 255.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 145.5, 257.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 145.7, 246.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 145.9, 252.2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 150.1, 256.4 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 146.3, 258.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 146.5, 246.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 147, 253.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 147.6, 254.4 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 148.1, 255.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 148.7, 256.2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 149.2, 257 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 149.8, 257.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 150.4, 258.8 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 150.9, 259.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 151.4, 260.6 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 152, 261.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 152.5, 262.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 153.1, 263.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 153.7, 264.2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 154.2, 265 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 154.8, 265.9 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 155.3, 266.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 155.9, 267.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 156.5, 268.6 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 156.8, 269.2 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 157.2, 269.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 157.5, 270.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 157.9, 270.9 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 158.2, 271.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 158.5, 272.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 158.9, 272.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 159.3, 273.3 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 159.7, 273.9 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 160, 274.4 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 160.4, 275 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 160.7, 275.6 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 161.1, 276.2 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 161.4, 276.7 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 161.8, 277.3 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 162.1, 277.8 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 162.5, 278.4 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 162.9, 279 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 163.2, 279.6 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 163.6, 280.2 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 163.9, 280.7 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 164.3, 281.3 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 164.7, 281.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 165, 282.4 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 165.4, 283.1 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 165.7, 283.7 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 166.1, 284.2 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 166.5, 284.8 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 166.8, 285.4 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 167.2, 286 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 167.5, 286.6 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 167.9, 287.1 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 168.2, 287.7 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 168.5, 288.2 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 168.8, 288.8 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 169.2, 289.4 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 169.6, 290 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 169.9, 290.6 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 170.3, 291.1 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 170.6, 291.7 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 171, 292.3 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 171.3, 292.8 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 171.7, 293.4 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 172.1, 294 , 0 );
setMoveKey( spep_4 + 174, 1, 172.1, 294 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 176, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 174, 1, 1.3, 1.3 );

setRotateKey( spep_4 -3 + 0, 1, -37.9 );
setRotateKey( spep_4 -3 + 2, 1, -38 );
setRotateKey( spep_4 -3 + 13, 1, -38 );
setRotateKey( spep_4 -3 + 14, 1, -37.9 );
setRotateKey( spep_4 -3 + 16, 1, -38 );
setRotateKey( spep_4 -3 + 50, 1, -38 );
setRotateKey( spep_4 -3 + 52, 1, -37.9 );
setRotateKey( spep_4 -3 + 54, 1, -37.5 );
setRotateKey( spep_4 -3 + 56, 1, -37.1 );
setRotateKey( spep_4 -3 + 58, 1, -36.6 );
setRotateKey( spep_4 -3 + 60, 1, -36.2 );
setRotateKey( spep_4 -3 + 62, 1, -35.8 );
setRotateKey( spep_4 -3 + 64, 1, -35.3 );
setRotateKey( spep_4 -3 + 66, 1, -34.9 );
setRotateKey( spep_4 -3 + 68, 1, -34.4 );
setRotateKey( spep_4 -3 + 70, 1, -34 );
setRotateKey( spep_4 -3 + 72, 1, -33.5 );
setRotateKey( spep_4 -3 + 74, 1, -33.1 );
setRotateKey( spep_4 -3 + 76, 1, -32.7 );
setRotateKey( spep_4 -3 + 78, 1, -32.2 );
setRotateKey( spep_4 -3 + 80, 1, -31.8 );
setRotateKey( spep_4 -3 + 82, 1, -31.3 );
setRotateKey( spep_4 -3 + 84, 1, -30.9 );
setRotateKey( spep_4 -3 + 86, 1, -30.4 );
setRotateKey( spep_4 -3 + 88, 1, -30 );
setRotateKey( spep_4 -3 + 90, 1, -29.8 );
setRotateKey( spep_4 -3 + 92, 1, -29.6 );
setRotateKey( spep_4 -3 + 94, 1, -29.4 );
setRotateKey( spep_4 -3 + 96, 1, -29.2 );
setRotateKey( spep_4 -3 + 98, 1, -29 );
setRotateKey( spep_4 -3 + 100, 1, -28.8 );
setRotateKey( spep_4 -3 + 102, 1, -28.6 );
setRotateKey( spep_4 -3 + 104, 1, -28.4 );
setRotateKey( spep_4 -3 + 106, 1, -28.2 );
setRotateKey( spep_4 -3 + 108, 1, -28 );
setRotateKey( spep_4 -3 + 110, 1, -27.8 );
setRotateKey( spep_4 -3 + 112, 1, -27.6 );
setRotateKey( spep_4 -3 + 114, 1, -27.4 );
setRotateKey( spep_4 -3 + 116, 1, -27.2 );
setRotateKey( spep_4 -3 + 118, 1, -27 );
setRotateKey( spep_4 -3 + 120, 1, -26.8 );
setRotateKey( spep_4 -3 + 122, 1, -26.6 );
setRotateKey( spep_4 -3 + 124, 1, -26.4 );
setRotateKey( spep_4 -3 + 126, 1, -26.2 );
setRotateKey( spep_4 -3 + 128, 1, -26 );
setRotateKey( spep_4 -3 + 130, 1, -25.8 );
setRotateKey( spep_4 -3 + 132, 1, -25.6 );
setRotateKey( spep_4 -3 + 134, 1, -25.4 );
setRotateKey( spep_4 -3 + 136, 1, -25.2 );
setRotateKey( spep_4 -3 + 138, 1, -25 );
setRotateKey( spep_4 -3 + 140, 1, -24.8 );
setRotateKey( spep_4 -3 + 142, 1, -24.6 );
setRotateKey( spep_4 -3 + 144, 1, -24.4 );
setRotateKey( spep_4 -3 + 146, 1, -24.2 );
setRotateKey( spep_4 -3 + 148, 1, -24 );
setRotateKey( spep_4 -3 + 150, 1, -23.8 );
setRotateKey( spep_4 -3 + 152, 1, -23.6 );
setRotateKey( spep_4 -3 + 154, 1, -23.4 );
setRotateKey( spep_4 -3 + 156, 1, -23.2 );
setRotateKey( spep_4 -3 + 158, 1, -23 );
setRotateKey( spep_4 -3 + 160, 1, -22.8 );
setRotateKey( spep_4 -3 + 162, 1, -22.6 );
setRotateKey( spep_4 -3 + 164, 1, -22.4 );
setRotateKey( spep_4 -3 + 166, 1, -22.2 );
setRotateKey( spep_4 -3 + 168, 1, -22 );
setRotateKey( spep_4 -3 + 170, 1, -21.8 );
setRotateKey( spep_4 -3 + 172, 1, -21.6 );
setRotateKey( spep_4 -3 + 174, 1, -21.4 );
setRotateKey( spep_4 -3 + 176, 1, -21.2 );
setRotateKey( spep_4 + 174, 1, -21.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 180, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 6, 1142 );
setSeVolume( spep_4 + 6, 1142, 70 );

playSe( spep_4 + 10, 1032 );

playSe( spep_4 + 10, 1169 );
setSeVolume( spep_4 + 10, 1169, 70 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 60 );
endPhase( spep_4 + 174 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 手前突進(66F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --手前突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 66, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 66, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 8, 906, 58, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 8, shuchusen1, 58, 20 );

setEffMoveKey( spep_0 + 8, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 8, shuchusen1, 1.7, 2.0 );
setEffScaleKey( spep_0 + 66, shuchusen1, 1.7, 2.0 );

setEffRotateKey( spep_0 + 8, shuchusen1, 0 );
setEffRotateKey( spep_0 + 66, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 8, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 64, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 65, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_0 + 2,  10012, 56, 0x100, -1, 0, -4, 319.9 );  --ズオッ
setEffShake( spep_0 + 8, ctzuo, 50, 20 );

setEffMoveKey( spep_0 + 2, ctzuo, -4, 319.9 , 0 );
setEffMoveKey( spep_0 + 4, ctzuo, -2.7, 343.1 , 0 );
setEffMoveKey( spep_0 + 6, ctzuo, -1.3, 366.5 , 0 );
setEffMoveKey( spep_0 + 8, ctzuo, 0, 390.2 , 0 );
setEffMoveKey( spep_0 + 58, ctzuo, 0, 390.2 , 0 );

setEffScaleKey( spep_0 + 2, ctzuo, 0.1, 0.1 );
setEffScaleKey( spep_0 + 4, ctzuo, 0.87, 0.87 );
setEffScaleKey( spep_0 + 6, ctzuo, 1.55, 1.55 );
setEffScaleKey( spep_0 + 8, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 10, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 12, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 14, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 16, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 18, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 20, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 22, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 24, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 26, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 28, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 30, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 32, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 34, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 36, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 38, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 40, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 42, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 44, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 46, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 48, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_0 + 50, ctzuo, 2.28, 2.28 );
setEffScaleKey( spep_0 + 52, ctzuo, 2.53, 2.53 );
setEffScaleKey( spep_0 + 54, ctzuo, 2.54, 2.54 );
setEffScaleKey( spep_0 + 56, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_0 + 58, ctzuo, 2.8, 2.8 );

setEffRotateKey( spep_0 + 2, ctzuo, 0 );
setEffRotateKey( spep_0 + 58, ctzuo, 0 );

setEffAlphaKey( spep_0 + 2, ctzuo, 255 );
setEffAlphaKey( spep_0 + 50, ctzuo, 255 );
setEffAlphaKey( spep_0 + 52, ctzuo, 195 );
setEffAlphaKey( spep_0 + 54, ctzuo, 134 );
setEffAlphaKey( spep_0 + 56, ctzuo, 74 );
setEffAlphaKey( spep_0 + 58, ctzuo, 13 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 66, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 60, 4,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 0, 9 );
playSe( spep_0 + 44, 1072 );

playSe( spep_0 + 62, 1180 );	
setSeVolume( spep_0 + 62, 1180, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 66;

------------------------------------------------------
-- ２連斬撃(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hit = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --２連斬撃(ef_002)
setEffMoveKey( spep_1 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, hit, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, hit, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, hit, 0 );
setEffRotateKey( spep_1 + 96, hit, 0 );
setEffAlphaKey( spep_1 + 0, hit, 255 );
setEffAlphaKey( spep_1 + 96, hit, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 100 );

setMoveKey( spep_1 + 0, 1, 179.1, 356.1 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 177.2, 349.1 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 175.3, 341.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 173.5, 334.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 171.5, 327.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 169.5, 320.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 167.6, 313.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 165.7, 306.3 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 163.8, 299.3 , 0 );

setScaleKey( spep_1 + 0, 1, 0.47, 0.47 );
setScaleKey( spep_1 -3 + 4, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 6, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 8, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 10, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 14, 1, 0.88, 0.88 );
setScaleKey( spep_1 -3 + 16, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 18, 1, 1.02, 1.02 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, 0, 0, 0, 200 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 16; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
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

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 98, 1, 0 );
changeAnime( spep_1 -3 + 36, 1, 106 );
changeAnime( spep_1 -3 + 68, 1, 108 );

setMoveKey( spep_1 -3 + 20, 1, 162, 292.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 160, 285 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 158.2, 277.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 156.1, 270.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 154.2, 263.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 152.3, 256.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 150.5, 249.5 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 150.4, 249.5 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 133.1, 252.2 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 141.7, 257.8 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 130.4, 255.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 133.3, 252.1 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 141.7, 257.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 130.6, 255 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 133.5, 252.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 141.9, 257.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 130.9, 254.9 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 133.7, 252.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 142, 257.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 131.1, 254.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 133.9, 252.1 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 142.2, 257.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 131.4, 254.7 , 0 );
setMoveKey( spep_1 -3 + 67, 1, 134.1, 252 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 150.4, 249.6 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 142.7, 246.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 148.3, 239 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 150.4, 249.6 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 142.8, 246.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 148.3, 239.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 150.5, 249.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 142.9, 246.9 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 148.3, 239.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 150.5, 249.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 142.9, 246.9 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 148.3, 239.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 150.5, 249.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 143, 247 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 148.5, 239.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 150.4, 249.5 , 0 );

setScaleKey( spep_1 -3 + 20, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 22, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 24, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 26, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 28, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 30, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 32, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 35, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 36, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 38, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 40, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 42, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 44, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 46, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 48, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 50, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 52, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 54, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 56, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 58, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 60, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 62, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 64, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 67, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 68, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 70, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 72, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 74, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 76, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 78, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 80, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 82, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 84, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 86, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 88, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 90, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 92, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 94, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 96, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 98, 1, 1.3, 1.3 );

setRotateKey( spep_1 -3 + 35, 1, 0 );
setRotateKey( spep_1 -3 + 36, 1, -38.4 );
setRotateKey( spep_1 -3 + 67, 1, -38.4 );
setRotateKey( spep_1 -3 + 68, 1, -20.1 );
setRotateKey( spep_1 -3 + 98, 1, -20.1 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 -3 + 34, 906, 62 +3, 0x100, -1, 0, 0, 20 );  --集中線
setEffShake( spep_1 -3 + 34, shuchusen2, 62 +3, 20 );

setEffMoveKey( spep_1 -3 + 34, shuchusen2, 0, 20 , 0 );
setEffMoveKey( spep_1 + 96, shuchusen2, 0, 20 , 0 );

setEffScaleKey( spep_1 -3 + 34, shuchusen2, 1.4, 1.6 );
setEffScaleKey( spep_1 + 96, shuchusen2, 1.4, 1.6 );

setEffRotateKey( spep_1 -3 + 34, shuchusen2, 0 );
setEffRotateKey( spep_1 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 34, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 64, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 67, shuchusen2, 0 );
setEffAlphaKey( spep_1 -3 + 68, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 96, shuchusen2, 0 );

-- ** 白フェード ** --
entryFade( spep_1 + 96 -4, 2,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_1 + 30, 1180 );	
setSeVolume( spep_1 + 34, 1180, 80 );	
setSeVolume( spep_1 + 36, 1180, 100 );	

playSe( spep_1 + 32, 1142 );	
setSeVolume( spep_1 + 32, 1142, 70 );	

playSe( spep_1 + 36, 1032 );	
setSeVolume( spep_1 + 36, 1032, 70 );	

playSe( spep_1 + 66, 1142 );
setSeVolume( spep_1 + 66, 1142, 70 );

playSe( spep_1 + 70, 1032 );	
setSeVolume( spep_1 + 70, 1032, 70 );	

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 振りかぶり手拡大(196F)
------------------------------------------------------

-- ** エフェクト等 ** --
hand = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --振りかぶり手拡大(ef_003)
setEffMoveKey( spep_3 + 0, hand, 0, 0 , 0 );
setEffMoveKey( spep_3 + 196, hand, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hand, 1.0, 1.0 );
setEffScaleKey( spep_3 + 196, hand, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hand, 0 );
setEffRotateKey( spep_3 + 196, hand, 0 );
setEffAlphaKey( spep_3 + 0, hand, 255 );
setEffAlphaKey( spep_3 + 196, hand, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 -3 + 12, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 -3 + 12, shuchusen3, 98, 20 );

setEffMoveKey( spep_3 -3 + 12, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 110, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 12, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_3 -3 + 110, shuchusen3, 1.2, 1.2 );

setEffRotateKey( spep_3 -3 + 12, shuchusen3, 0 );
setEffRotateKey( spep_3 -3 + 110, shuchusen3, 0 );

setEffAlphaKey( spep_3 -3 + 12, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 110, shuchusen3, 255 );

spep_x = spep_3 + 12;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

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

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 196, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
SE0 = playSe( spep_3 + 22, 1179 );
setSeVolume( spep_3 + 22, 1179, 125 );	
setSeVolume( spep_3 + 86, 1179, 100 );	
setSeVolume( spep_3 + 95, 1179, 70 );	
setSeVolume( spep_3 + 100, 1179, 50 );
stopSe( spep_3 + 114, SE0, 0 );

SE1 = playSe( spep_3 + 22, 1109 );	
stopSe( spep_3 + 26, SE1, 12 );	
playSe( spep_3 + 82, 1072 );	
setSeVolume( spep_3 + 82, 1072, 20 );

SE2 = playSe( spep_3 + 102, 1044 );	
setSeVolume( spep_3 + 102, 1044, 70 );	
stopSe( spep_3 + 196, SE2, 0 );

playSe( spep_3 + 108, 1072 );	
setSeVolume( spep_3 + 108, 1072, 20 );

playSe( spep_3 + 134, 1072 );	
setSeVolume( spep_3 + 134, 1072, 25 );

playSe( spep_3 + 160, 1072 );	
setSeVolume( spep_3 + 160, 1072, 31 );

SE3 = playSe( spep_3 + 178, 1116 );	
stopSe( spep_3 + 198, SE3, 8 );	
playSe( spep_x + 16, 1018 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 196;

------------------------------------------------------
-- フィニッシュ(174F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_004)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 174, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 174, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 174, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 174, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --フィニッシュ背景(ef_005)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 174, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 174, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 174, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 174, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4 -3 + 14, 1, 106 );

setMoveKey( spep_4 + 0, 1, 77.5, 184.7 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 95.8, 182.9 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 96, 205.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 116.3, 217.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 122.5, 231.5 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 132.8, 231.7 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 143, 249.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 147.2, 254 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 143.4, 256.2 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 143.5, 244.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 143.7, 250.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 147.9, 254.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 144.1, 256.8 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 144.3, 244.9 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 144.5, 251.1 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 148.6, 255.2 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 144.8, 257.4 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 145, 245.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 145.2, 251.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 149.4, 255.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 145.5, 257.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 145.7, 246.1 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 145.9, 252.2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 150.1, 256.4 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 146.3, 258.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 146.5, 246.6 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 147, 253.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 147.6, 254.4 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 148.1, 255.3 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 148.7, 256.2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 149.2, 257 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 149.8, 257.9 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 150.4, 258.8 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 150.9, 259.7 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 151.4, 260.6 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 152, 261.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 152.5, 262.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 153.1, 263.3 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 153.7, 264.2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 154.2, 265 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 154.8, 265.9 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 155.3, 266.8 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 155.9, 267.7 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 156.5, 268.6 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 156.8, 269.2 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 157.2, 269.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 157.5, 270.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 157.9, 270.9 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 158.2, 271.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 158.5, 272.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 158.9, 272.7 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 159.3, 273.3 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 159.7, 273.9 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 160, 274.4 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 160.4, 275 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 160.7, 275.6 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 161.1, 276.2 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 161.4, 276.7 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 161.8, 277.3 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 162.1, 277.8 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 162.5, 278.4 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 162.9, 279 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 163.2, 279.6 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 163.6, 280.2 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 163.9, 280.7 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 164.3, 281.3 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 164.7, 281.9 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 165, 282.4 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 165.4, 283.1 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 165.7, 283.7 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 166.1, 284.2 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 166.5, 284.8 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 166.8, 285.4 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 167.2, 286 , 0 );
setMoveKey( spep_4 -3 + 150, 1, 167.5, 286.6 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 167.9, 287.1 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 168.2, 287.7 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 168.5, 288.2 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 168.8, 288.8 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 169.2, 289.4 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 169.6, 290 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 169.9, 290.6 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 170.3, 291.1 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 170.6, 291.7 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 171, 292.3 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 171.3, 292.8 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 171.7, 293.4 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 172.1, 294 , 0 );
setMoveKey( spep_4 + 174, 1, 172.1, 294 , 0 );

setScaleKey( spep_4 -3 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 176, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 174, 1, 1.3, 1.3 );

setRotateKey( spep_4 -3 + 0, 1, -37.9 );
setRotateKey( spep_4 -3 + 2, 1, -38 );
setRotateKey( spep_4 -3 + 13, 1, -38 );
setRotateKey( spep_4 -3 + 14, 1, -37.9 );
setRotateKey( spep_4 -3 + 16, 1, -38 );
setRotateKey( spep_4 -3 + 50, 1, -38 );
setRotateKey( spep_4 -3 + 52, 1, -37.9 );
setRotateKey( spep_4 -3 + 54, 1, -37.5 );
setRotateKey( spep_4 -3 + 56, 1, -37.1 );
setRotateKey( spep_4 -3 + 58, 1, -36.6 );
setRotateKey( spep_4 -3 + 60, 1, -36.2 );
setRotateKey( spep_4 -3 + 62, 1, -35.8 );
setRotateKey( spep_4 -3 + 64, 1, -35.3 );
setRotateKey( spep_4 -3 + 66, 1, -34.9 );
setRotateKey( spep_4 -3 + 68, 1, -34.4 );
setRotateKey( spep_4 -3 + 70, 1, -34 );
setRotateKey( spep_4 -3 + 72, 1, -33.5 );
setRotateKey( spep_4 -3 + 74, 1, -33.1 );
setRotateKey( spep_4 -3 + 76, 1, -32.7 );
setRotateKey( spep_4 -3 + 78, 1, -32.2 );
setRotateKey( spep_4 -3 + 80, 1, -31.8 );
setRotateKey( spep_4 -3 + 82, 1, -31.3 );
setRotateKey( spep_4 -3 + 84, 1, -30.9 );
setRotateKey( spep_4 -3 + 86, 1, -30.4 );
setRotateKey( spep_4 -3 + 88, 1, -30 );
setRotateKey( spep_4 -3 + 90, 1, -29.8 );
setRotateKey( spep_4 -3 + 92, 1, -29.6 );
setRotateKey( spep_4 -3 + 94, 1, -29.4 );
setRotateKey( spep_4 -3 + 96, 1, -29.2 );
setRotateKey( spep_4 -3 + 98, 1, -29 );
setRotateKey( spep_4 -3 + 100, 1, -28.8 );
setRotateKey( spep_4 -3 + 102, 1, -28.6 );
setRotateKey( spep_4 -3 + 104, 1, -28.4 );
setRotateKey( spep_4 -3 + 106, 1, -28.2 );
setRotateKey( spep_4 -3 + 108, 1, -28 );
setRotateKey( spep_4 -3 + 110, 1, -27.8 );
setRotateKey( spep_4 -3 + 112, 1, -27.6 );
setRotateKey( spep_4 -3 + 114, 1, -27.4 );
setRotateKey( spep_4 -3 + 116, 1, -27.2 );
setRotateKey( spep_4 -3 + 118, 1, -27 );
setRotateKey( spep_4 -3 + 120, 1, -26.8 );
setRotateKey( spep_4 -3 + 122, 1, -26.6 );
setRotateKey( spep_4 -3 + 124, 1, -26.4 );
setRotateKey( spep_4 -3 + 126, 1, -26.2 );
setRotateKey( spep_4 -3 + 128, 1, -26 );
setRotateKey( spep_4 -3 + 130, 1, -25.8 );
setRotateKey( spep_4 -3 + 132, 1, -25.6 );
setRotateKey( spep_4 -3 + 134, 1, -25.4 );
setRotateKey( spep_4 -3 + 136, 1, -25.2 );
setRotateKey( spep_4 -3 + 138, 1, -25 );
setRotateKey( spep_4 -3 + 140, 1, -24.8 );
setRotateKey( spep_4 -3 + 142, 1, -24.6 );
setRotateKey( spep_4 -3 + 144, 1, -24.4 );
setRotateKey( spep_4 -3 + 146, 1, -24.2 );
setRotateKey( spep_4 -3 + 148, 1, -24 );
setRotateKey( spep_4 -3 + 150, 1, -23.8 );
setRotateKey( spep_4 -3 + 152, 1, -23.6 );
setRotateKey( spep_4 -3 + 154, 1, -23.4 );
setRotateKey( spep_4 -3 + 156, 1, -23.2 );
setRotateKey( spep_4 -3 + 158, 1, -23 );
setRotateKey( spep_4 -3 + 160, 1, -22.8 );
setRotateKey( spep_4 -3 + 162, 1, -22.6 );
setRotateKey( spep_4 -3 + 164, 1, -22.4 );
setRotateKey( spep_4 -3 + 166, 1, -22.2 );
setRotateKey( spep_4 -3 + 168, 1, -22 );
setRotateKey( spep_4 -3 + 170, 1, -21.8 );
setRotateKey( spep_4 -3 + 172, 1, -21.6 );
setRotateKey( spep_4 -3 + 174, 1, -21.4 );
setRotateKey( spep_4 -3 + 176, 1, -21.2 );
setRotateKey( spep_4 + 174, 1, -21.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 180, 0, 0, 0, 0, 200 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 6, 1142 );	
setSeVolume( spep_4 + 6, 1142, 70 );

playSe( spep_4 + 10, 1032 );

playSe( spep_4 + 10, 1169 );
setSeVolume( spep_4 + 10, 1169, 70 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 60 );
endPhase( spep_4 + 174 );


end