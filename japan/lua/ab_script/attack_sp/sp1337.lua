--人造人間16号_トリニティデストロイドマックス

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
SP_01 = 154117; --カードカットインまで　前
SP_02 = 154118; --カードカットインまで　奥
SP_03 = 154119; --カードカットイン以降　前
SP_04 = 154120; --カードカットイン以降　奥
SP_05 = 154121; --ダメージ表示

--敵側
SP_01x = 154122; --カードカットインまで　前
SP_02x = 154123; --カードカットインまで　奥
SP_03x = 154124; --カードカットイン以降　前
SP_04x = 154125; --カードカットイン以降　奥

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
-- カードカットインまで(448F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cutin1_f = entryEffectLife( spep_0 + 0, SP_01, 448, 0x100, -1, 0, 0, 0 );  --カードカットインまで　前(ef_001)
setEffMoveKey( spep_0 + 0, cutin1_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 448, cutin1_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin1_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 448, cutin1_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin1_f, 0 );
setEffRotateKey( spep_0 + 448, cutin1_f, 0 );
setEffAlphaKey( spep_0 + 0, cutin1_f, 255 );
setEffAlphaKey( spep_0 + 448, cutin1_f, 255 );

cutin1_b = entryEffectLife( spep_0 + 0, SP_02, 448, 0x80, -1, 0, 0, 0 );  --カードカットインまで　後(ef_002)
setEffMoveKey( spep_0 + 0, cutin1_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 448, cutin1_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin1_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 448, cutin1_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin1_b, 0 );
setEffRotateKey( spep_0 + 448, cutin1_b, 0 );
setEffAlphaKey( spep_0 + 0, cutin1_b, 255 );
setEffAlphaKey( spep_0 + 448, cutin1_b, 255 );

-- ** 書き文字 ** --
ctdon = entryEffectLife( spep_0 + 2,  10019, 34, 0x100, -1, 0, -33.1, 9.7 );  --ドンッ
setEffMoveKey( spep_0 + 2, ctdon, -33.1, 9.7 , 0 );
setEffMoveKey( spep_0 + 4, ctdon, -59.1, 107.1 , 0 );
setEffMoveKey( spep_0 + 6, ctdon, -69.3, 197.9 , 0 );
setEffMoveKey( spep_0 + 8, ctdon, -101.3, 293.2 , 0 );
setEffMoveKey( spep_0 + 10, ctdon, -107.6, 301.1 , 0 );
setEffMoveKey( spep_0 + 12, ctdon, -90.9, 297.7 , 0 );
setEffMoveKey( spep_0 + 14, ctdon, -110.8, 304.3 , 0 );
setEffMoveKey( spep_0 + 16, ctdon, -95.2, 306 , 0 );
setEffMoveKey( spep_0 + 18, ctdon, -114.9, 307.4 , 0 );
setEffMoveKey( spep_0 + 20, ctdon, -98.1, 311.6 , 0 );
setEffMoveKey( spep_0 + 22, ctdon, -119.1, 310.8 , 0 );
setEffMoveKey( spep_0 + 24, ctdon, -100, 321.5 , 0 );
setEffMoveKey( spep_0 + 26, ctdon, -107.9, 317.8 , 0 );
setEffMoveKey( spep_0 + 28, ctdon, -115.1, 327.4 , 0 );
setEffMoveKey( spep_0 + 30, ctdon, -99.5, 333.3 , 0 );
setEffMoveKey( spep_0 + 32, ctdon, -126.5, 358.4 , 0 );
setEffMoveKey( spep_0 + 34, ctdon, -115.1, 386.2 , 0 );
setEffMoveKey( spep_0 + 36, ctdon, -124.4, 423.6 , 0 );

setEffScaleKey( spep_0 + 2, ctdon, 1.11, 1.11 );
setEffScaleKey( spep_0 + 4, ctdon, 1.73, 1.73 );
setEffScaleKey( spep_0 + 6, ctdon, 2.34, 2.34 );
setEffScaleKey( spep_0 + 8, ctdon, 2.96, 2.96 );
setEffScaleKey( spep_0 + 10, ctdon, 2.98, 2.98 );
setEffScaleKey( spep_0 + 12, ctdon, 3, 3 );
setEffScaleKey( spep_0 + 14, ctdon, 3.03, 3.03 );
setEffScaleKey( spep_0 + 16, ctdon, 3.05, 3.05 );
setEffScaleKey( spep_0 + 18, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_0 + 20, ctdon, 3.09, 3.09 );
setEffScaleKey( spep_0 + 22, ctdon, 3.12, 3.12 );
setEffScaleKey( spep_0 + 24, ctdon, 3.14, 3.14 );
setEffScaleKey( spep_0 + 26, ctdon, 3.16, 3.16 );
setEffScaleKey( spep_0 + 28, ctdon, 3.19, 3.19 );
setEffScaleKey( spep_0 + 30, ctdon, 3.29, 3.29 );
setEffScaleKey( spep_0 + 32, ctdon, 3.46, 3.46 );
setEffScaleKey( spep_0 + 34, ctdon, 3.7, 3.7 );
setEffScaleKey( spep_0 + 36, ctdon, 4, 4 );

setEffRotateKey( spep_0 + 2, ctdon, -5.7 );
setEffRotateKey( spep_0 + 36, ctdon, -5.7 );

setEffAlphaKey( spep_0 + 2, ctdon, 255 );
setEffAlphaKey( spep_0 + 26, ctdon, 255 );
setEffAlphaKey( spep_0 + 28, ctdon, 245 );
setEffAlphaKey( spep_0 + 30, ctdon, 214 );
setEffAlphaKey( spep_0 + 32, ctdon, 163 );
setEffAlphaKey( spep_0 + 34, ctdon, 92 );
setEffAlphaKey( spep_0 + 36, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 448, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_0 + 0, 9 );  --手前に近づく
playSe( spep_0 + 0, 19 );  --手前に近づく

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 56; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );

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

-- ** 書き文字 ** --
ctga = entryEffectLife( spep_0 + 102 -3,  10005, 26, 0x100, -1, 0, 136.7, 193.3 );  --ガッ
setEffMoveKey( spep_0 + 102 -3, ctga, 136.7, 193.3 , 0 );
setEffMoveKey( spep_0 + 104 -3, ctga, 144.7, 234.1 , 0 );
setEffMoveKey( spep_0 + 106 -3, ctga, 168.4, 260.7 , 0 );
setEffMoveKey( spep_0 + 108 -3, ctga, 173.6, 299.8 , 0 );
setEffMoveKey( spep_0 + 110 -3, ctga, 168.8, 308.8 , 0 );
setEffMoveKey( spep_0 + 112 -3, ctga, 183.1, 300 , 0 );
setEffMoveKey( spep_0 + 114 -3, ctga, 168.9, 302 , 0 );
setEffMoveKey( spep_0 + 116 -3, ctga, 181.2, 314.8 , 0 );
setEffMoveKey( spep_0 + 118 -3, ctga, 168.7, 308.7 , 0 );
setEffMoveKey( spep_0 + 120 -3, ctga, 183.1, 315 , 0 );
setEffMoveKey( spep_0 + 122 -3, ctga, 178.8, 314.5 , 0 );
setEffMoveKey( spep_0 + 124 -3, ctga, 176.5, 332.3 , 0 );
setEffMoveKey( spep_0 + 126 -3, ctga, 194.8, 330.8 , 0 );
setEffMoveKey( spep_0 + 128 -3, ctga, 198.7, 341.1 , 0 );

setEffScaleKey( spep_0 + 102 -3, ctga, 1.31, 1.31 );
setEffScaleKey( spep_0 + 104 -3, ctga, 1.53, 1.53 );
setEffScaleKey( spep_0 + 106 -3, ctga, 1.74, 1.74 );
setEffScaleKey( spep_0 + 108 -3, ctga, 1.96, 1.96 );
setEffScaleKey( spep_0 + 110 -3, ctga, 1.97, 1.97 );
setEffScaleKey( spep_0 + 112 -3, ctga, 1.99, 1.99 );
setEffScaleKey( spep_0 + 114 -3, ctga, 2, 2 );
setEffScaleKey( spep_0 + 116 -3, ctga, 2.01, 2.01 );
setEffScaleKey( spep_0 + 118 -3, ctga, 2.02, 2.02 );
setEffScaleKey( spep_0 + 120 -3, ctga, 2.04, 2.04 );
setEffScaleKey( spep_0 + 122 -3, ctga, 2.05, 2.05 );
setEffScaleKey( spep_0 + 124 -3, ctga, 2.11, 2.11 );
setEffScaleKey( spep_0 + 126 -3, ctga, 2.18, 2.18 );
setEffScaleKey( spep_0 + 128 -3, ctga, 2.24, 2.24 );

setEffRotateKey( spep_0 + 102 -3, ctga, 21.7 );
setEffRotateKey( spep_0 + 128 -3, ctga, 21.7 );

setEffAlphaKey( spep_0 + 102 -3, ctga, 255 );
setEffAlphaKey( spep_0 + 122 -3, ctga, 255 );
setEffAlphaKey( spep_0 + 124 -3, ctga, 170 );
setEffAlphaKey( spep_0 + 126 -3, ctga, 85 );
setEffAlphaKey( spep_0 + 128 -3, ctga, 0 );

ctzudo = entryEffectLife( spep_0 + 368 -3,  10014, 70, 0x100, -1, 0, 9, 164.9 );  --ズドド
setEffMoveKey( spep_0 + 368 -3, ctzudo, 9, 164.9 , 0 );
setEffMoveKey( spep_0 + 370 -3, ctzudo, 15.9, 157.6 , 0 );
setEffMoveKey( spep_0 + 372 -3, ctzudo, 9.4, 171.1 , 0 );
setEffMoveKey( spep_0 + 374 -3, ctzudo, 13.9, 176.5 , 0 );
setEffMoveKey( spep_0 + 376 -3, ctzudo, 6.4, 181.7 , 0 );
setEffMoveKey( spep_0 + 378 -3, ctzudo, 16.7, 167.4 , 0 );
setEffMoveKey( spep_0 + 380 -3, ctzudo, 8.7, 179.4 , 0 );
setEffMoveKey( spep_0 + 382 -3, ctzudo, 17.6, 172 , 0 );
setEffMoveKey( spep_0 + 384 -3, ctzudo, 7.3, 186 , 0 );
setEffMoveKey( spep_0 + 386 -3, ctzudo, 14.4, 173.4 , 0 );
setEffMoveKey( spep_0 + 388 -3, ctzudo, 17.5, 187.7 , 0 );
setEffMoveKey( spep_0 + 390 -3, ctzudo, 8.9, 177.5 , 0 );
setEffMoveKey( spep_0 + 392 -3, ctzudo, 17.2, 196 , 0 );
setEffMoveKey( spep_0 + 394 -3, ctzudo, 6.9, 181.5 , 0 );
setEffMoveKey( spep_0 + 396 -3, ctzudo, 22, 196.7 , 0 );
setEffMoveKey( spep_0 + 398 -3, ctzudo, 16, 180.6 , 0 );
setEffMoveKey( spep_0 + 400 -3, ctzudo, 13.7, 202.7 , 0 );
setEffMoveKey( spep_0 + 402 -3, ctzudo, 25.2, 190.2 , 0 );
setEffMoveKey( spep_0 + 404 -3, ctzudo, 4.6, 204.4 , 0 );
setEffMoveKey( spep_0 + 406 -3, ctzudo, 23.2, 202.6 , 0 );
setEffMoveKey( spep_0 + 408 -3, ctzudo, 7.8, 203.1 , 0 );
setEffMoveKey( spep_0 + 410 -3, ctzudo, 28.7, 213.7 , 0 );
setEffMoveKey( spep_0 + 412 -3, ctzudo, 7.7, 207 , 0 );
setEffMoveKey( spep_0 + 414 -3, ctzudo, 27.3, 218.3 , 0 );
setEffMoveKey( spep_0 + 416 -3, ctzudo, 8, 220.7 , 0 );
setEffMoveKey( spep_0 + 418 -3, ctzudo, 24.2, 237.4 , 0 );
setEffMoveKey( spep_0 + 420 -3, ctzudo, 21, 218.8 , 0 );
setEffMoveKey( spep_0 + 422 -3, ctzudo, 13.8, 254.5 , 0 );
setEffMoveKey( spep_0 + 424 -3, ctzudo, 21.8, 234.6 , 0 );
setEffMoveKey( spep_0 + 426 -3, ctzudo, 13.5, 265.3 , 0 );
setEffMoveKey( spep_0 + 428 -3, ctzudo, 21.6, 256.7 , 0 );
setEffMoveKey( spep_0 + 430 -3, ctzudo, 7.6, 270.1 , 0 );
setEffMoveKey( spep_0 + 432 -3, ctzudo, 27, 246 , 0 );
setEffMoveKey( spep_0 + 434 -3, ctzudo, 10.6, 272.5 , 0 );
setEffMoveKey( spep_0 + 436 -3, ctzudo, 29.2, 259.2 , 0 );
setEffMoveKey( spep_0 + 438 -3, ctzudo, 29.5, 262.6 , 0 );

setEffScaleKey( spep_0 + 368 -3, ctzudo, 1.38, 1.38 );
setEffScaleKey( spep_0 + 370 -3, ctzudo, 1.52, 1.52 );
setEffScaleKey( spep_0 + 372 -3, ctzudo, 1.75, 1.75 );
setEffScaleKey( spep_0 + 374 -3, ctzudo, 2.08, 2.08 );
setEffScaleKey( spep_0 + 376 -3, ctzudo, 2.08, 2.08 );
setEffScaleKey( spep_0 + 378 -3, ctzudo, 2.09, 2.09 );
setEffScaleKey( spep_0 + 380 -3, ctzudo, 2.1, 2.1 );
setEffScaleKey( spep_0 + 382 -3, ctzudo, 2.12, 2.12 );
setEffScaleKey( spep_0 + 384 -3, ctzudo, 2.13, 2.13 );
setEffScaleKey( spep_0 + 386 -3, ctzudo, 2.16, 2.16 );
setEffScaleKey( spep_0 + 388 -3, ctzudo, 2.19, 2.19 );
setEffScaleKey( spep_0 + 390 -3, ctzudo, 2.22, 2.22 );
setEffScaleKey( spep_0 + 392 -3, ctzudo, 2.26, 2.26 );
setEffScaleKey( spep_0 + 394 -3, ctzudo, 2.3, 2.3 );
setEffScaleKey( spep_0 + 396 -3, ctzudo, 2.35, 2.35 );
setEffScaleKey( spep_0 + 398 -3, ctzudo, 2.4, 2.4 );
setEffScaleKey( spep_0 + 400 -3, ctzudo, 2.45, 2.45 );
setEffScaleKey( spep_0 + 402 -3, ctzudo, 2.51, 2.51 );
setEffScaleKey( spep_0 + 404 -3, ctzudo, 2.57, 2.57 );
setEffScaleKey( spep_0 + 406 -3, ctzudo, 2.64, 2.64 );
setEffScaleKey( spep_0 + 408 -3, ctzudo, 2.71, 2.71 );
setEffScaleKey( spep_0 + 410 -3, ctzudo, 2.79, 2.79 );
setEffScaleKey( spep_0 + 412 -3, ctzudo, 2.87, 2.87 );
setEffScaleKey( spep_0 + 414 -3, ctzudo, 2.96, 2.96 );
setEffScaleKey( spep_0 + 416 -3, ctzudo, 3.05, 3.05 );
setEffScaleKey( spep_0 + 418 -3, ctzudo, 3.14, 3.14 );
setEffScaleKey( spep_0 + 420 -3, ctzudo, 3.24, 3.24 );
setEffScaleKey( spep_0 + 422 -3, ctzudo, 3.34, 3.34 );
setEffScaleKey( spep_0 + 424 -3, ctzudo, 3.45, 3.45 );
setEffScaleKey( spep_0 + 426 -3, ctzudo, 3.56, 3.56 );
setEffScaleKey( spep_0 + 428 -3, ctzudo, 3.68, 3.68 );
setEffScaleKey( spep_0 + 430 -3, ctzudo, 3.89, 3.89 );
setEffScaleKey( spep_0 + 432 -3, ctzudo, 4.1, 4.1 );
setEffScaleKey( spep_0 + 434 -3, ctzudo, 4.3, 4.3 );
setEffScaleKey( spep_0 + 436 -3, ctzudo, 4.51, 4.51 );
setEffScaleKey( spep_0 + 438 -3, ctzudo, 4.72, 4.72 );

setEffRotateKey( spep_0 + 368 -3, ctzudo, 26.2 );
setEffRotateKey( spep_0 + 438 -3, ctzudo, 26.2 );

setEffAlphaKey( spep_0 + 368 -3, ctzudo, 16 );
setEffAlphaKey( spep_0 + 370 -3, ctzudo, 64 );
setEffAlphaKey( spep_0 + 372 -3, ctzudo, 143 );
setEffAlphaKey( spep_0 + 374 -3, ctzudo, 255 );
setEffAlphaKey( spep_0 + 428 -3, ctzudo, 255 );
setEffAlphaKey( spep_0 + 430 -3, ctzudo, 204 );
setEffAlphaKey( spep_0 + 432 -3, ctzudo, 153 );
setEffAlphaKey( spep_0 + 434 -3, ctzudo, 102 );
setEffAlphaKey( spep_0 + 436 -3, ctzudo, 51 );
setEffAlphaKey( spep_0 + 438 -3, ctzudo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 70, 1, 1 );
setDisp( spep_0 -3 + 200, 1, 0 );
setDisp( spep_0 -3 + 340, 1, 1 );
setDisp( spep_0 -3 + 408, 1, 0 );
changeAnime( spep_0 -3 + 70, 1, 118 );
changeAnime( spep_0 -3 + 98, 1, 107 );
changeAnime( spep_0 -3 + 130, 1, 105 );

setMoveKey( spep_0 -3 + 70, 1, 69, -28.1 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 73.9, -30.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 77.9, -32.4 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 81.9, -34.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 85, -35.7 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 87.7, -37 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 89.7, -38.1 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 91.3, -39 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 92.3, -39.6 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 92.9, -39.9 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 93, -40.1 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 92.8, -40.1 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 92.6, -40.1 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 92.4, -40.1 , 0 );
setMoveKey( spep_0 -3 + 97, 1, 92.4, -40.1 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 130, -78.8 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 147, -76.7 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 158.4, -86.6 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 169.5, -62.8 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 175.3, -81.8 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 179.3, -69.8 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 197.2, -66.6 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 256.4, -71.1 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 344.2, -41.7 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 465.2, -48.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 625.5, -16.3 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 811.6, -5.3 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 1040.1, 19.9 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 1036.7, 11 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 1039.2, 24.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 1036.8, 9.8 , 0 );
setMoveKey( spep_0 -3 + 129, 1, 1036.8, 9.8 , 0 );
setMoveKey( spep_0 -3 + 130, 1, -560.2, -204.2 , 0 );
setMoveKey( spep_0 -3 + 132, 1, -550.1, -213.7 , 0 );
setMoveKey( spep_0 -3 + 134, 1, -512.6, -193.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, -420.2, -164 , 0 );
setMoveKey( spep_0 -3 + 138, 1, -289.2, -108.3 , 0 );
setMoveKey( spep_0 -3 + 140, 1, -218.4, -102.3 , 0 );
setMoveKey( spep_0 -3 + 142, 1, -172.7, -61.7 , 0 );
setMoveKey( spep_0 -3 + 144, 1, -142, -66.7 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -111.5, -56.8 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -95.5, -36.4 , 0 );
setMoveKey( spep_0 -3 + 150, 1, -77.7, -43.8 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -65.9, -37.6 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -56.7, -37.1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -49.5, -38.7 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -38.7, -40.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -34.4, -46.3 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -31.5, -54.4 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -24.5, -63.1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -23.8, -76.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -19, -91.1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -15.3, -109.3 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -12.8, -131.5 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -11.7, -158.9 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -12.2, -191.9 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -8.8, -230.2 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -7.5, -277.1 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -3.1, -332.4 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -6.7, -400.5 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -1.3, -473.6 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -1.5, -548.4 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -4.7, -613.5 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -4.1, -660.5 , 0 );
setMoveKey( spep_0 -3 + 194, 1, -0.1, -690.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -4.2, -711.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -0.7, -720.3 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -1.1, -723.2 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 28.7, -160.8 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 28.5, -159.1 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 27.5, -152 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 25.1, -135.3 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 21.3, -108.3 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 18.1, -85.3 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 16, -70.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 14.7, -61.3 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 13.9, -55.3 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 13.4, -51.4 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 12.9, -47.9 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 12.4, -44.5 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 11.9, -41.2 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 10.2, -44.1 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 11.4, -29.3 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 11.1, -39.2 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 10.6, -20.2 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 7.3, -31 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 10.4, -11 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 11.3, -30 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 7.7, -9.3 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 7.2, -30.2 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 6.8, -6.1 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 12.7, -14.1 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 4.9, -4.7 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 11.1, -1.7 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 3, -13.7 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 9.9, 8.6 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 5.8, -26.4 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 9.7, 12 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 6.2, -32.8 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 2.4, 12.1 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 8.1, -23.6 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 5.8, 32.3 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 12.4, -17.8 , 0 );

setScaleKey( spep_0 -3 + 70, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 72, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 74, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 76, 1, 2.07, 2.07 );
setScaleKey( spep_0 -3 + 78, 1, 2.19, 2.19 );
setScaleKey( spep_0 -3 + 80, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 82, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 84, 1, 2.42, 2.42 );
setScaleKey( spep_0 -3 + 86, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 88, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 90, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 97, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 98, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 100, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 102, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 104, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 106, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 108, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 110, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 112, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 114, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 116, 1, 1.12, 1.12 );
setScaleKey( spep_0 -3 + 118, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 120, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 122, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 129, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 130, 1, 5.24, 5.24 );
setScaleKey( spep_0 -3 + 132, 1, 5.13, 5.13 );
setScaleKey( spep_0 -3 + 134, 1, 4.83, 4.83 );
setScaleKey( spep_0 -3 + 136, 1, 3.99, 3.99 );
setScaleKey( spep_0 -3 + 138, 1, 2.87, 2.87 );
setScaleKey( spep_0 -3 + 140, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 142, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 144, 1, 1.55, 1.55 );
setScaleKey( spep_0 -3 + 146, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 148, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 150, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 152, 1, 0.92, 0.92 );
setScaleKey( spep_0 -3 + 154, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 156, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 158, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 160, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 162, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 164, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 166, 1, 0.54, 0.54 );
setScaleKey( spep_0 -3 + 168, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 170, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 172, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 174, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 176, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 178, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 180, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 188, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 190, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 192, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 194, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 198, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 200, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 340, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 342, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 344, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 346, 1, 2.31, 2.31 );
setScaleKey( spep_0 -3 + 348, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 350, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 352, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 354, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 356, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 358, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 360, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 362, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 364, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 366, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 368, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 370, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 372, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 374, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 376, 1, 0.74, 0.74 );
setScaleKey( spep_0 -3 + 378, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 380, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 382, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 384, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 386, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 388, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 390, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 392, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 394, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 396, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 398, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 400, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 402, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 404, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 408, 1, 0.41, 0.41 );

setRotateKey( spep_0 -3 + 70, 1, 0 );
setRotateKey( spep_0 -3 + 97, 1, 0 );
setRotateKey( spep_0 -3 + 98, 1, -60.5 );
setRotateKey( spep_0 -3 + 112, 1, -60.5 );
setRotateKey( spep_0 -3 + 114, 1, -60.4 );
setRotateKey( spep_0 -3 + 116, 1, -60.3 );
setRotateKey( spep_0 -3 + 118, 1, -60.2 );
setRotateKey( spep_0 -3 + 120, 1, -60.1 );
setRotateKey( spep_0 -3 + 122, 1, -60 );
setRotateKey( spep_0 -3 + 129, 1, -60 );
setRotateKey( spep_0 -3 + 130, 1, 19.2 );
setRotateKey( spep_0 -3 + 136, 1, 19.2 );
setRotateKey( spep_0 -3 + 138, 1, 19.1 );
setRotateKey( spep_0 -3 + 162, 1, 19.1 );
setRotateKey( spep_0 -3 + 164, 1, 19 );
setRotateKey( spep_0 -3 + 200, 1, 19 );
setRotateKey( spep_0 -3 + 340, 1, -18.8 );
setRotateKey( spep_0 -3 + 408, 1, -18.8 );

-- ** 音 ** --
playSe( spep_0 + 102 -3, 1010 );  --ガッ
playSe( spep_0 -3 + 130, 1121 );  --敵が飛ぶ
setSeVolume( spep_0 -3 + 130, 1121, 90);
setSeVolume( spep_0 -3 + 180, 1121, 70);
setSeVolume( spep_0 -3 + 186, 1121, 40);
setSeVolume( spep_0 -3 + 194, 1121, 10);
setSeVolume( spep_0 -3 + 200, 1121, 5);
playSe( spep_0 + 200, 1072 );  --2人見下ろし
playSe( spep_0 + 266, 1154 );  --溜める
playSe( spep_0 + 310, 1155 );  --ビーム打つ
playSe( spep_0 + 320, 1155 );  --ビーム打つ
playSe( spep_0 + 330, 1155 );  --ビーム打つ
playSe( spep_0 + 340, 1155 );  --ビーム打つ
playSe( spep_0 + 350, 1155 );  --ビーム打つ
playSe( spep_0 + 360, 1155 );  --ビーム打つ
playSe( spep_0 + 370, 1155 );  --ビーム打つ
playSe( spep_0 + 380, 1155 );  --ビーム打つ
playSe( spep_0 + 390, 1155 );  --ビーム打つ
playSe( spep_0 + 400, 1155 );  --ビーム打つ
playSe( spep_0 + 410, 1155 );  --ビーム打つ
playSe( spep_0 + 420, 1155 );  --ビーム打つ
playSe( spep_0 + 430, 1155 );  --ビーム打つ
playSe( spep_0 + 440, 1155 );  --ビーム打つ
SE2 = playSe( spep_0 + 368 -3, 1044 );  --ズドドド
setSeVolume( spep_0 + 368 -3, 1044, 80);
stopSe( spep_0 + 448, SE2, 10 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 448;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- カードカットイン以降(356F)
------------------------------------------------------

-- ** エフェクト等 ** --
cutin2_f = entryEffectLife( spep_2 + 0, SP_03, 356, 0x100, -1, 0, 0, 0 );  --カードカットイン以降　前(ef_003)
setEffMoveKey( spep_2 + 0, cutin2_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 356, cutin2_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, cutin2_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 356, cutin2_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, cutin2_f, 0 );
setEffRotateKey( spep_2 + 356, cutin2_f, 0 );
setEffAlphaKey( spep_2 + 0, cutin2_f, 255 );
setEffAlphaKey( spep_2 + 356, cutin2_f, 255 );

cutin2_b = entryEffectLife( spep_2 + 0, SP_04, 356, 0x80, -1, 0, 0, 0 );  --カードカットイン以降　後(ef_004)
setEffMoveKey( spep_2 + 0, cutin2_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 356, cutin2_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, cutin2_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 356, cutin2_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, cutin2_b, 0 );
setEffRotateKey( spep_2 + 356, cutin2_b, 0 );
setEffAlphaKey( spep_2 + 0, cutin2_b, 255 );
setEffAlphaKey( spep_2 + 356, cutin2_b, 255 );

spep_x = spep_2 + 172;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9, 515.5 , 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 112 -3, 1, 0 );
setDisp( spep_2 + 120 -3, 1, 1 );
setDisp( spep_2 + 356, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 -3 + 34, 1, 104 );
changeAnime( spep_2 -3 + 66, 1, 118 );
changeAnime( spep_2 -3 + 120, 1, 106 );
changeAnime( spep_2 -3 + 178, 1, 107 );

setMoveKey( spep_2 + 0, 1, -11.2, -129.3 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 10.2, -118.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 4.9, -119.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 22.9, -110.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 17, -122.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 38.3, -123 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 34.9, -137.3 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 54.5, -137.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 33.8, -133.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 27.9, -121.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -9.3, -117.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -28.3, -122.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -89.1, -143.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -138.1, -158 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -157.9, -166.5 , 0 );
setMoveKey( spep_2 -3 + 33, 1, -168.5, -158.8 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -157.2, -211.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -149, -173.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -148.8, -157.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -135.7, -158.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -122.3, -160.6 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -107.8, -162.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -105, -154.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -97.7, -146.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -82.2, -136.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -55.7, -125.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -10.1, -118.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 44.1, -110 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 85.2, -103.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 106.2, -104.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 115, -112.5 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 117.8, -123.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 190.1, -162.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 199.9, -185.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 213.7, -213.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 227.8, -241.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 239.5, -265.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 248, -282.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 252.4, -292 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 253.9, -296.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 255.7, -302.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 257.7, -308.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 259.8, -314.9 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 262, -322.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 267.2, -332.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 279.6, -353.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 299.9, -384.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 329.2, -426.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 370.5, -485.8 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 426.2, -563.9 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 501.2, -670.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 599.5, -808.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 731.1, -995.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 908.3, -1248.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 1156.2, -1604.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 1527.2, -2138.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 29.2, -307.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 28.9, -301.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 28, -283 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 26.4, -251.8 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 24.3, -208.2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 21.5, -152.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 18.1, -83.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 10.3, -4.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -2.4, 88.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 21.1, 97.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -1.2, 88.8 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 16.1, 97.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -1.9, 87.9 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 21.3, 91.4 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -3.7, 90.2 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 16.3, 88.7 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 9.5, 90.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 9.5, 90.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -1.7, 88.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -35.2, 82.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -91, 72.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -169.1, 58.7 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -269.6, 40.7 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -392.3, 18.7 , 0 );
setMoveKey( spep_2 -3 + 177, 1, -392.3, 18.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 529.1, -696.2 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 473.9, -679 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 428.8, -665 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 383.1, -661 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 368.4, -652.5 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 344.6, -642.4 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 341.9, -651.5 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 344.4, -640.7 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 342.8, -654.3 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 340.4, -645.6 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 351.3, -651.2 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 338.5, -649.2 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 350.9, -654.3 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 340.3, -646.3 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 350.4, -659.3 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 342.8, -651.6 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 350.1, -658.2 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 341.1, -651.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 349.1, -664 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 346, -650.2 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 353.8, -659.6 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 343.4, -659.6 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 356.9, -661 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 344.3, -663.2 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 358, -663.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 346.3, -663.6 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 356.5, -665 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 348.4, -666.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 359.9, -667.3 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 346.5, -668.2 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 359.2, -663.3 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 355.8, -675.9 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 358.8, -664.2 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 355.6, -674.9 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 358.9, -667.5 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 357, -676.4 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 352.3, -670.6 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 364.6, -673 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 352.3, -672 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 364, -678.6 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 353.2, -673.1 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 365.6, -677.2 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 355.6, -678.4 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 381.4, -689.5 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 405.3, -727.4 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 481.6, -784.6 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 545.8, -831.3 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 591.7, -868.5 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 625.4, -895.1 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 650.7, -914.7 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 670.4, -929.6 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 685.5, -941.2 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 697.4, -950.1 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 705.8, -956.4 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 711.9, -961.1 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 717, -964.9 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 721.4, -967.9 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 725, -970.7 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 728.2, -973.1 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 731.1, -975.3 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 733.8, -977.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 736.1, -978.8 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 738.1, -980.4 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 738.6, -981.8 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 743.6, -984.1 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 743.1, -982.6 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 744.1, -986.7 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 746.5, -984.7 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 747.8, -991.1 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 748.9, -983.9 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 747.3, -991.9 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 751.1, -986.2 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 752.1, -996.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 753.7, -984.1 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 753.2, -996.2 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 757.5, -983.1 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 755.3, -1002.9 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 764, -987.2 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 748.3, -1004.5 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 770.8, -993.5 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 744.1, -994.4 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 769.4, -975.9 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 767.3, -1020.6 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 733.3, -979.9 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 786.8, -1013.2 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 717.9, -1003 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 758, -995 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 748.3, -1015 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 748.4, -1015.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 748.4, -1015.1 , 0 );
setMoveKey( spep_2 + 356, 1, 748.4, -1015.4 , 0 );

setScaleKey( spep_2 + 0, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 18, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 20, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 22, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 24, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 26, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 33, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 34, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 36, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 58, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 60, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 62, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 65, 1, 2.63, 2.57 );
setScaleKey( spep_2 -3 + 66, 1, 2.54, 2.69 );
setScaleKey( spep_2 -3 + 68, 1, 2.78, 2.83 );
setScaleKey( spep_2 -3 + 70, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 72, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 74, 1, 3.22, 3.22 );
setScaleKey( spep_2 -3 + 76, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 78, 1, 3.35, 3.35 );
setScaleKey( spep_2 -3 + 80, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 82, 1, 3.42, 3.42 );
setScaleKey( spep_2 -3 + 84, 1, 3.46, 3.46 );
setScaleKey( spep_2 -3 + 86, 1, 3.5, 3.5 );
setScaleKey( spep_2 -3 + 88, 1, 3.56, 3.56 );
setScaleKey( spep_2 -3 + 90, 1, 3.65, 3.65 );
setScaleKey( spep_2 -3 + 92, 1, 3.79, 3.79 );
setScaleKey( spep_2 -3 + 94, 1, 4, 4 );
setScaleKey( spep_2 -3 + 96, 1, 4.35, 4.35 );
setScaleKey( spep_2 -3 + 98, 1, 4.78, 4.78 );
setScaleKey( spep_2 -3 + 100, 1, 5.39, 5.39 );
setScaleKey( spep_2 -3 + 102, 1, 6.16, 6.16 );
setScaleKey( spep_2 -3 + 104, 1, 7.24, 7.24 );
setScaleKey( spep_2 -3 + 106, 1, 8.63, 8.63 );
setScaleKey( spep_2 -3 + 108, 1, 10.57, 10.57 );
setScaleKey( spep_2 -3 + 110, 1, 13.26, 13.26 );
setScaleKey( spep_2 -3 + 112, 1, 17.35, 17.35 );
setScaleKey( spep_2 -3 + 120, 1, 6.65, 6.65 );
setScaleKey( spep_2 -3 + 122, 1, 6.58, 6.58 );
setScaleKey( spep_2 -3 + 124, 1, 6.36, 6.36 );
setScaleKey( spep_2 -3 + 126, 1, 5.99, 5.99 );
setScaleKey( spep_2 -3 + 128, 1, 5.48, 5.48 );
setScaleKey( spep_2 -3 + 130, 1, 4.83, 4.83 );
setScaleKey( spep_2 -3 + 132, 1, 4.02, 4.02 );
setScaleKey( spep_2 -3 + 134, 1, 3.57, 3.57 );
setScaleKey( spep_2 -3 + 136, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 138, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 140, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 158, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 160, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 162, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 164, 1, 2.34, 2.34 );
setScaleKey( spep_2 -3 + 166, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 168, 1, 2.97, 2.97 );
setScaleKey( spep_2 -3 + 170, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 177, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 178, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 194, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 196, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 202, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 204, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 208, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 210, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 216, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 218, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 224, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 226, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 232, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 234, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 238, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 240, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 246, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 248, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 254, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 256, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 260, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 262, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 264, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 266, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 268, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 270, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 272, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 274, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 276, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 278, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 280, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 282, 1, 2.95, 2.95 );
setScaleKey( spep_2 -3 + 284, 1, 2.97, 2.97 );
setScaleKey( spep_2 -3 + 286, 1, 3, 3 );
setScaleKey( spep_2 -3 + 288, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 292, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 294, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 298, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 300, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 308, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 310, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 326, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 328, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 356, 1, 3.12, 3.12 );

setRotateKey( spep_2 + 0, 1, 8.1 );
setRotateKey( spep_2 -3 + 18, 1, 8.1 );
setRotateKey( spep_2 -3 + 20, 1, 8 );
setRotateKey( spep_2 -3 + 22, 1, 8.1 );
setRotateKey( spep_2 -3 + 24, 1, 8.1 );
setRotateKey( spep_2 -3 + 26, 1, 8 );
setRotateKey( spep_2 -3 + 28, 1, 8.1 );
setRotateKey( spep_2 -3 + 30, 1, 5.8 );
setRotateKey( spep_2 -3 + 33, 1, -2 );
setRotateKey( spep_2 -3 + 34, 1, 27.8 );
setRotateKey( spep_2 -3 + 36, 1, 6.3 );
setRotateKey( spep_2 -3 + 38, 1, -1.9 );
setRotateKey( spep_2 -3 + 58, 1, -1.9 );
setRotateKey( spep_2 -3 + 60, 1, -1.8 );
setRotateKey( spep_2 -3 + 62, 1, -1.3 );
setRotateKey( spep_2 -3 + 65, 1, -0.4 );
setRotateKey( spep_2 -3 + 66, 1, 26 );
setRotateKey( spep_2 -3 + 68, 1, 27.3 );
setRotateKey( spep_2 -3 + 70, 1, 28.9 );
setRotateKey( spep_2 -3 + 72, 1, 30.2 );
setRotateKey( spep_2 -3 + 74, 1, 31.3 );
setRotateKey( spep_2 -3 + 76, 1, 32.1 );
setRotateKey( spep_2 -3 + 78, 1, 32.5 );
setRotateKey( spep_2 -3 + 112, 1, 32.5 );
setRotateKey( spep_2 -3 + 120, 1, -48 );
setRotateKey( spep_2 -3 + 177, 1, -48 );
setRotateKey( spep_2 -3 + 178, 1, -101.3 );
setRotateKey( spep_2 -3 + 260, 1, -101.3 );
setRotateKey( spep_2 -3 + 262, 1, -101.4 );
setRotateKey( spep_2 -3 + 264, 1, -101.6 );
setRotateKey( spep_2 -3 + 266, 1, -102.3 );
setRotateKey( spep_2 -3 + 268, 1, -103.5 );
setRotateKey( spep_2 -3 + 270, 1, -104.6 );
setRotateKey( spep_2 -3 + 272, 1, -105.3 );
setRotateKey( spep_2 -3 + 274, 1, -105.8 );
setRotateKey( spep_2 -3 + 276, 1, -106.2 );
setRotateKey( spep_2 -3 + 278, 1, -106.5 );
setRotateKey( spep_2 -3 + 280, 1, -106.7 );
setRotateKey( spep_2 -3 + 282, 1, -106.9 );
setRotateKey( spep_2 -3 + 284, 1, -107 );
setRotateKey( spep_2 -3 + 286, 1, -107.1 );
setRotateKey( spep_2 -3 + 288, 1, -107.1 );
setRotateKey( spep_2 -3 + 290, 1, -107.2 );
setRotateKey( spep_2 -3 + 292, 1, -107.3 );
setRotateKey( spep_2 -3 + 296, 1, -107.3 );
setRotateKey( spep_2 -3 + 298, 1, -107.4 );
setRotateKey( spep_2 -3 + 302, 1, -107.4 );
setRotateKey( spep_2 -3 + 304, 1, -107.5 );
setRotateKey( spep_2 -3 + 312, 1, -107.5 );
setRotateKey( spep_2 -3 + 314, 1, -107.6 );
setRotateKey( spep_2 -3 + 326, 1, -107.6 );
setRotateKey( spep_2 -3 + 328, 1, -107.7 );
setRotateKey( spep_2 + 356, 1, -107.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 356, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 70, 44 );  --現れる
playSe( spep_2 + 70, 9 );  --現れる
setSeVolume( spep_2 + 70, 9, 90 );
playSe( spep_2 + 128, 1007 );  --抱きしめる
playSe( spep_2 + 128, 1008 );  --抱きしめる
setSeVolume( spep_2 + 128, 1008, 95 );
playSe( spep_2 + 166, 8 );  --場面転換
playSe( spep_x + 16, SE_04 );  --ゴゴゴ
playSe( spep_2 + 260, 1157 );  --自爆音始め
setSeVolume( spep_2 + 260, 1157, 120 );
playSe( spep_2 + 280, 1158 );  --自爆音始め
setSeVolume( spep_2 + 280, 1158, 130 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 356;

------------------------------------------------------
-- ダメージ表示(206F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ダメージ表示(ef_005)
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 206, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 206, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 206, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 206, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 206, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_3 + 0, 1156 );  --爆発前
setSeVolume( spep_3 + 0, 1156, 120 );
playSe( spep_3 + 92, 1024 );  --爆発
setSeVolume( spep_3 + 92, 1024, 140 );
playSe( spep_3 + 92, 1067 );  --爆発
setSeVolume( spep_3 + 92, 1067, 85 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 94 );
endPhase( spep_3 + 206 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カードカットインまで(448F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
cutin1_f = entryEffectLife( spep_0 + 0, SP_01x, 448, 0x100, -1, 0, 0, 0 );  --カードカットインまで　前(ef_001)
setEffMoveKey( spep_0 + 0, cutin1_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 448, cutin1_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin1_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 448, cutin1_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin1_f, 0 );
setEffRotateKey( spep_0 + 448, cutin1_f, 0 );
setEffAlphaKey( spep_0 + 0, cutin1_f, 255 );
setEffAlphaKey( spep_0 + 448, cutin1_f, 255 );

cutin1_b = entryEffectLife( spep_0 + 0, SP_02x, 448, 0x80, -1, 0, 0, 0 );  --カードカットインまで　後(ef_002)
setEffMoveKey( spep_0 + 0, cutin1_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 448, cutin1_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, cutin1_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 448, cutin1_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, cutin1_b, 0 );
setEffRotateKey( spep_0 + 448, cutin1_b, 0 );
setEffAlphaKey( spep_0 + 0, cutin1_b, 255 );
setEffAlphaKey( spep_0 + 448, cutin1_b, 255 );

-- ** 書き文字 ** --
ctdon = entryEffectLife( spep_0 + 2,  10019, 34, 0x100, -1, 0, -33.1, 9.7 );  --ドンッ
setEffMoveKey( spep_0 + 2, ctdon, 33.1, 9.7 , 0 );
setEffMoveKey( spep_0 + 4, ctdon, 59.1, 107.1 , 0 );
setEffMoveKey( spep_0 + 6, ctdon, 69.3, 197.9 , 0 );
setEffMoveKey( spep_0 + 8, ctdon, 101.3, 293.2 , 0 );
setEffMoveKey( spep_0 + 10, ctdon, 107.6, 301.1 , 0 );
setEffMoveKey( spep_0 + 12, ctdon, 90.9, 297.7 , 0 );
setEffMoveKey( spep_0 + 14, ctdon, 110.8, 304.3 , 0 );
setEffMoveKey( spep_0 + 16, ctdon, 95.2, 306 , 0 );
setEffMoveKey( spep_0 + 18, ctdon, 114.9, 307.4 , 0 );
setEffMoveKey( spep_0 + 20, ctdon, 98.1, 311.6 , 0 );
setEffMoveKey( spep_0 + 22, ctdon, 119.1, 310.8 , 0 );
setEffMoveKey( spep_0 + 24, ctdon, 100, 321.5 , 0 );
setEffMoveKey( spep_0 + 26, ctdon, 107.9, 317.8 , 0 );
setEffMoveKey( spep_0 + 28, ctdon, 115.1, 327.4 , 0 );
setEffMoveKey( spep_0 + 30, ctdon, 99.5, 333.3 , 0 );
setEffMoveKey( spep_0 + 32, ctdon, 126.5, 358.4 , 0 );
setEffMoveKey( spep_0 + 34, ctdon, 115.1, 386.2 , 0 );
setEffMoveKey( spep_0 + 36, ctdon, 124.4, 423.6 , 0 );

setEffScaleKey( spep_0 + 2, ctdon, 1.11, 1.11 );
setEffScaleKey( spep_0 + 4, ctdon, 1.73, 1.73 );
setEffScaleKey( spep_0 + 6, ctdon, 2.34, 2.34 );
setEffScaleKey( spep_0 + 8, ctdon, 2.96, 2.96 );
setEffScaleKey( spep_0 + 10, ctdon, 2.98, 2.98 );
setEffScaleKey( spep_0 + 12, ctdon, 3, 3 );
setEffScaleKey( spep_0 + 14, ctdon, 3.03, 3.03 );
setEffScaleKey( spep_0 + 16, ctdon, 3.05, 3.05 );
setEffScaleKey( spep_0 + 18, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_0 + 20, ctdon, 3.09, 3.09 );
setEffScaleKey( spep_0 + 22, ctdon, 3.12, 3.12 );
setEffScaleKey( spep_0 + 24, ctdon, 3.14, 3.14 );
setEffScaleKey( spep_0 + 26, ctdon, 3.16, 3.16 );
setEffScaleKey( spep_0 + 28, ctdon, 3.19, 3.19 );
setEffScaleKey( spep_0 + 30, ctdon, 3.29, 3.29 );
setEffScaleKey( spep_0 + 32, ctdon, 3.46, 3.46 );
setEffScaleKey( spep_0 + 34, ctdon, 3.7, 3.7 );
setEffScaleKey( spep_0 + 36, ctdon, 4, 4 );

setEffRotateKey( spep_0 + 2, ctdon, 5.7 );
setEffRotateKey( spep_0 + 36, ctdon, 5.7 );

setEffAlphaKey( spep_0 + 2, ctdon, 255 );
setEffAlphaKey( spep_0 + 26, ctdon, 255 );
setEffAlphaKey( spep_0 + 28, ctdon, 245 );
setEffAlphaKey( spep_0 + 30, ctdon, 214 );
setEffAlphaKey( spep_0 + 32, ctdon, 163 );
setEffAlphaKey( spep_0 + 34, ctdon, 92 );
setEffAlphaKey( spep_0 + 36, ctdon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 448, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
SE1 = playSe( spep_0 + 0, 9 );  --手前に近づく
playSe( spep_0 + 0, 19 );  --手前に近づく

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 56; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE1, 0 );

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

-- ** 書き文字 ** --
ctga = entryEffectLife( spep_0 + 102 -3,  10005, 26, 0x100, -1, 0, 136.7, 193.3 );  --ガッ
setEffMoveKey( spep_0 + 102 -3, ctga, 136.7, 193.3 , 0 );
setEffMoveKey( spep_0 + 104 -3, ctga, 144.7, 234.1 , 0 );
setEffMoveKey( spep_0 + 106 -3, ctga, 168.4, 260.7 , 0 );
setEffMoveKey( spep_0 + 108 -3, ctga, 173.6, 299.8 , 0 );
setEffMoveKey( spep_0 + 110 -3, ctga, 168.8, 308.8 , 0 );
setEffMoveKey( spep_0 + 112 -3, ctga, 183.1, 300 , 0 );
setEffMoveKey( spep_0 + 114 -3, ctga, 168.9, 302 , 0 );
setEffMoveKey( spep_0 + 116 -3, ctga, 181.2, 314.8 , 0 );
setEffMoveKey( spep_0 + 118 -3, ctga, 168.7, 308.7 , 0 );
setEffMoveKey( spep_0 + 120 -3, ctga, 183.1, 315 , 0 );
setEffMoveKey( spep_0 + 122 -3, ctga, 178.8, 314.5 , 0 );
setEffMoveKey( spep_0 + 124 -3, ctga, 176.5, 332.3 , 0 );
setEffMoveKey( spep_0 + 126 -3, ctga, 194.8, 330.8 , 0 );
setEffMoveKey( spep_0 + 128 -3, ctga, 198.7, 341.1 , 0 );

setEffScaleKey( spep_0 + 102 -3, ctga, 1.31, 1.31 );
setEffScaleKey( spep_0 + 104 -3, ctga, 1.53, 1.53 );
setEffScaleKey( spep_0 + 106 -3, ctga, 1.74, 1.74 );
setEffScaleKey( spep_0 + 108 -3, ctga, 1.96, 1.96 );
setEffScaleKey( spep_0 + 110 -3, ctga, 1.97, 1.97 );
setEffScaleKey( spep_0 + 112 -3, ctga, 1.99, 1.99 );
setEffScaleKey( spep_0 + 114 -3, ctga, 2, 2 );
setEffScaleKey( spep_0 + 116 -3, ctga, 2.01, 2.01 );
setEffScaleKey( spep_0 + 118 -3, ctga, 2.02, 2.02 );
setEffScaleKey( spep_0 + 120 -3, ctga, 2.04, 2.04 );
setEffScaleKey( spep_0 + 122 -3, ctga, 2.05, 2.05 );
setEffScaleKey( spep_0 + 124 -3, ctga, 2.11, 2.11 );
setEffScaleKey( spep_0 + 126 -3, ctga, 2.18, 2.18 );
setEffScaleKey( spep_0 + 128 -3, ctga, 2.24, 2.24 );

setEffRotateKey( spep_0 + 102 -3, ctga, 21.7 );
setEffRotateKey( spep_0 + 128 -3, ctga, 21.7 );

setEffAlphaKey( spep_0 + 102 -3, ctga, 255 );
setEffAlphaKey( spep_0 + 122 -3, ctga, 255 );
setEffAlphaKey( spep_0 + 124 -3, ctga, 170 );
setEffAlphaKey( spep_0 + 126 -3, ctga, 85 );
setEffAlphaKey( spep_0 + 128 -3, ctga, 0 );

ctzudo = entryEffectLife( spep_0 + 368 -3,  10014, 70, 0x100, -1, 0, 9, 164.9 );  --ズドド
setEffMoveKey( spep_0 + 368 -3, ctzudo, -9, 164.9 , 0 );
setEffMoveKey( spep_0 + 370 -3, ctzudo, -15.9, 157.6 , 0 );
setEffMoveKey( spep_0 + 372 -3, ctzudo, -9.4, 171.1 , 0 );
setEffMoveKey( spep_0 + 374 -3, ctzudo, -13.9, 176.5 , 0 );
setEffMoveKey( spep_0 + 376 -3, ctzudo, -6.4, 181.7 , 0 );
setEffMoveKey( spep_0 + 378 -3, ctzudo, -16.7, 167.4 , 0 );
setEffMoveKey( spep_0 + 380 -3, ctzudo, -8.7, 179.4 , 0 );
setEffMoveKey( spep_0 + 382 -3, ctzudo, -17.6, 172 , 0 );
setEffMoveKey( spep_0 + 384 -3, ctzudo, -7.3, 186 , 0 );
setEffMoveKey( spep_0 + 386 -3, ctzudo, -14.4, 173.4 , 0 );
setEffMoveKey( spep_0 + 388 -3, ctzudo, -17.5, 187.7 , 0 );
setEffMoveKey( spep_0 + 390 -3, ctzudo, -8.9, 177.5 , 0 );
setEffMoveKey( spep_0 + 392 -3, ctzudo, -17.2, 196 , 0 );
setEffMoveKey( spep_0 + 394 -3, ctzudo, -6.9, 181.5 , 0 );
setEffMoveKey( spep_0 + 396 -3, ctzudo, -22, 196.7 , 0 );
setEffMoveKey( spep_0 + 398 -3, ctzudo, -16, 180.6 , 0 );
setEffMoveKey( spep_0 + 400 -3, ctzudo, -13.7, 202.7 , 0 );
setEffMoveKey( spep_0 + 402 -3, ctzudo, -25.2, 190.2 , 0 );
setEffMoveKey( spep_0 + 404 -3, ctzudo, -4.6, 204.4 , 0 );
setEffMoveKey( spep_0 + 406 -3, ctzudo, -23.2, 202.6 , 0 );
setEffMoveKey( spep_0 + 408 -3, ctzudo, -7.8, 203.1 , 0 );
setEffMoveKey( spep_0 + 410 -3, ctzudo, -28.7, 213.7 , 0 );
setEffMoveKey( spep_0 + 412 -3, ctzudo, -7.7, 207 , 0 );
setEffMoveKey( spep_0 + 414 -3, ctzudo, -27.3, 218.3 , 0 );
setEffMoveKey( spep_0 + 416 -3, ctzudo, -8, 220.7 , 0 );
setEffMoveKey( spep_0 + 418 -3, ctzudo, -24.2, 237.4 , 0 );
setEffMoveKey( spep_0 + 420 -3, ctzudo, -21, 218.8 , 0 );
setEffMoveKey( spep_0 + 422 -3, ctzudo, -13.8, 254.5 , 0 );
setEffMoveKey( spep_0 + 424 -3, ctzudo, -21.8, 234.6 , 0 );
setEffMoveKey( spep_0 + 426 -3, ctzudo, -13.5, 265.3 , 0 );
setEffMoveKey( spep_0 + 428 -3, ctzudo, -21.6, 256.7 , 0 );
setEffMoveKey( spep_0 + 430 -3, ctzudo, -7.6, 270.1 , 0 );
setEffMoveKey( spep_0 + 432 -3, ctzudo, -27, 246 , 0 );
setEffMoveKey( spep_0 + 434 -3, ctzudo, -10.6, 272.5 , 0 );
setEffMoveKey( spep_0 + 436 -3, ctzudo, -29.2, 259.2 , 0 );
setEffMoveKey( spep_0 + 438 -3, ctzudo, -29.5, 262.6 , 0 );

setEffScaleKey( spep_0 + 368 -3, ctzudo, 1.38, 1.38 );
setEffScaleKey( spep_0 + 370 -3, ctzudo, 1.52, 1.52 );
setEffScaleKey( spep_0 + 372 -3, ctzudo, 1.75, 1.75 );
setEffScaleKey( spep_0 + 374 -3, ctzudo, 2.08, 2.08 );
setEffScaleKey( spep_0 + 376 -3, ctzudo, 2.08, 2.08 );
setEffScaleKey( spep_0 + 378 -3, ctzudo, 2.09, 2.09 );
setEffScaleKey( spep_0 + 380 -3, ctzudo, 2.1, 2.1 );
setEffScaleKey( spep_0 + 382 -3, ctzudo, 2.12, 2.12 );
setEffScaleKey( spep_0 + 384 -3, ctzudo, 2.13, 2.13 );
setEffScaleKey( spep_0 + 386 -3, ctzudo, 2.16, 2.16 );
setEffScaleKey( spep_0 + 388 -3, ctzudo, 2.19, 2.19 );
setEffScaleKey( spep_0 + 390 -3, ctzudo, 2.22, 2.22 );
setEffScaleKey( spep_0 + 392 -3, ctzudo, 2.26, 2.26 );
setEffScaleKey( spep_0 + 394 -3, ctzudo, 2.3, 2.3 );
setEffScaleKey( spep_0 + 396 -3, ctzudo, 2.35, 2.35 );
setEffScaleKey( spep_0 + 398 -3, ctzudo, 2.4, 2.4 );
setEffScaleKey( spep_0 + 400 -3, ctzudo, 2.45, 2.45 );
setEffScaleKey( spep_0 + 402 -3, ctzudo, 2.51, 2.51 );
setEffScaleKey( spep_0 + 404 -3, ctzudo, 2.57, 2.57 );
setEffScaleKey( spep_0 + 406 -3, ctzudo, 2.64, 2.64 );
setEffScaleKey( spep_0 + 408 -3, ctzudo, 2.71, 2.71 );
setEffScaleKey( spep_0 + 410 -3, ctzudo, 2.79, 2.79 );
setEffScaleKey( spep_0 + 412 -3, ctzudo, 2.87, 2.87 );
setEffScaleKey( spep_0 + 414 -3, ctzudo, 2.96, 2.96 );
setEffScaleKey( spep_0 + 416 -3, ctzudo, 3.05, 3.05 );
setEffScaleKey( spep_0 + 418 -3, ctzudo, 3.14, 3.14 );
setEffScaleKey( spep_0 + 420 -3, ctzudo, 3.24, 3.24 );
setEffScaleKey( spep_0 + 422 -3, ctzudo, 3.34, 3.34 );
setEffScaleKey( spep_0 + 424 -3, ctzudo, 3.45, 3.45 );
setEffScaleKey( spep_0 + 426 -3, ctzudo, 3.56, 3.56 );
setEffScaleKey( spep_0 + 428 -3, ctzudo, 3.68, 3.68 );
setEffScaleKey( spep_0 + 430 -3, ctzudo, 3.89, 3.89 );
setEffScaleKey( spep_0 + 432 -3, ctzudo, 4.1, 4.1 );
setEffScaleKey( spep_0 + 434 -3, ctzudo, 4.3, 4.3 );
setEffScaleKey( spep_0 + 436 -3, ctzudo, 4.51, 4.51 );
setEffScaleKey( spep_0 + 438 -3, ctzudo, 4.72, 4.72 );

setEffRotateKey( spep_0 + 368 -3, ctzudo, -26.2 );
setEffRotateKey( spep_0 + 438 -3, ctzudo, -26.2 );

setEffAlphaKey( spep_0 + 368 -3, ctzudo, 16 );
setEffAlphaKey( spep_0 + 370 -3, ctzudo, 64 );
setEffAlphaKey( spep_0 + 372 -3, ctzudo, 143 );
setEffAlphaKey( spep_0 + 374 -3, ctzudo, 255 );
setEffAlphaKey( spep_0 + 428 -3, ctzudo, 255 );
setEffAlphaKey( spep_0 + 430 -3, ctzudo, 204 );
setEffAlphaKey( spep_0 + 432 -3, ctzudo, 153 );
setEffAlphaKey( spep_0 + 434 -3, ctzudo, 102 );
setEffAlphaKey( spep_0 + 436 -3, ctzudo, 51 );
setEffAlphaKey( spep_0 + 438 -3, ctzudo, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 70, 1, 1 );
setDisp( spep_0 -3 + 200, 1, 0 );
setDisp( spep_0 -3 + 340, 1, 1 );
setDisp( spep_0 -3 + 408, 1, 0 );
changeAnime( spep_0 -3 + 70, 1, 118 );
changeAnime( spep_0 -3 + 98, 1, 107 );
changeAnime( spep_0 -3 + 130, 1, 105 );

setMoveKey( spep_0 -3 + 70, 1, 69, -28.1 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 73.9, -30.2 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 77.9, -32.4 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 81.9, -34.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 85, -35.7 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 87.7, -37 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 89.7, -38.1 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 91.3, -39 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 92.3, -39.6 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 92.9, -39.9 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 93, -40.1 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 92.8, -40.1 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 92.6, -40.1 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 92.4, -40.1 , 0 );
setMoveKey( spep_0 -3 + 97, 1, 92.4, -40.1 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 130, -78.8 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 147, -76.7 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 158.4, -86.6 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 169.5, -62.8 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 175.3, -81.8 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 179.3, -69.8 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 197.2, -66.6 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 256.4, -71.1 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 344.2, -41.7 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 465.2, -48.3 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 625.5, -16.3 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 811.6, -5.3 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 1040.1, 19.9 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 1036.7, 11 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 1039.2, 24.7 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 1036.8, 9.8 , 0 );
setMoveKey( spep_0 -3 + 129, 1, 1036.8, 9.8 , 0 );
setMoveKey( spep_0 -3 + 130, 1, -560.2, -204.2 , 0 );
setMoveKey( spep_0 -3 + 132, 1, -550.1, -213.7 , 0 );
setMoveKey( spep_0 -3 + 134, 1, -512.6, -193.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, -420.2, -164 , 0 );
setMoveKey( spep_0 -3 + 138, 1, -289.2, -108.3 , 0 );
setMoveKey( spep_0 -3 + 140, 1, -218.4, -102.3 , 0 );
setMoveKey( spep_0 -3 + 142, 1, -172.7, -61.7 , 0 );
setMoveKey( spep_0 -3 + 144, 1, -142, -66.7 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -111.5, -56.8 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -95.5, -36.4 , 0 );
setMoveKey( spep_0 -3 + 150, 1, -77.7, -43.8 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -65.9, -37.6 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -56.7, -37.1 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -49.5, -38.7 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -38.7, -40.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -34.4, -46.3 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -31.5, -54.4 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -24.5, -63.1 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -23.8, -76.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -19, -91.1 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -15.3, -109.3 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -12.8, -131.5 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -11.7, -158.9 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -12.2, -191.9 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -8.8, -230.2 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -7.5, -277.1 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -3.1, -332.4 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -6.7, -400.5 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -1.3, -473.6 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -1.5, -548.4 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -4.7, -613.5 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -4.1, -660.5 , 0 );
setMoveKey( spep_0 -3 + 194, 1, -0.1, -690.8 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -4.2, -711.5 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -0.7, -720.3 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -1.1, -723.2 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 28.7, -160.8 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 28.5, -159.1 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 27.5, -152 , 0 );
setMoveKey( spep_0 -3 + 346, 1, 25.1, -135.3 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 21.3, -108.3 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 18.1, -85.3 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 16, -70.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 14.7, -61.3 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 13.9, -55.3 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 13.4, -51.4 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 12.9, -47.9 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 12.4, -44.5 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 11.9, -41.2 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 10.2, -44.1 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 11.4, -29.3 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 11.1, -39.2 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 10.6, -20.2 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 7.3, -31 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 10.4, -11 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 11.3, -30 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 7.7, -9.3 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 7.2, -30.2 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 6.8, -6.1 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 12.7, -14.1 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 4.9, -4.7 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 11.1, -1.7 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 3, -13.7 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 9.9, 8.6 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 5.8, -26.4 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 9.7, 12 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 6.2, -32.8 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 2.4, 12.1 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 8.1, -23.6 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 5.8, 32.3 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 12.4, -17.8 , 0 );

setScaleKey( spep_0 -3 + 70, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 72, 1, 1.79, 1.79 );
setScaleKey( spep_0 -3 + 74, 1, 1.94, 1.94 );
setScaleKey( spep_0 -3 + 76, 1, 2.07, 2.07 );
setScaleKey( spep_0 -3 + 78, 1, 2.19, 2.19 );
setScaleKey( spep_0 -3 + 80, 1, 2.28, 2.28 );
setScaleKey( spep_0 -3 + 82, 1, 2.36, 2.36 );
setScaleKey( spep_0 -3 + 84, 1, 2.42, 2.42 );
setScaleKey( spep_0 -3 + 86, 1, 2.47, 2.47 );
setScaleKey( spep_0 -3 + 88, 1, 2.49, 2.49 );
setScaleKey( spep_0 -3 + 90, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 97, 1, 2.5, 2.5 );
setScaleKey( spep_0 -3 + 98, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 100, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 102, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 104, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 106, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 108, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 110, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 112, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 114, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 116, 1, 1.12, 1.12 );
setScaleKey( spep_0 -3 + 118, 1, 1.25, 1.25 );
setScaleKey( spep_0 -3 + 120, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 122, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 129, 1, 1.6, 1.6 );
setScaleKey( spep_0 -3 + 130, 1, 5.24, 5.24 );
setScaleKey( spep_0 -3 + 132, 1, 5.13, 5.13 );
setScaleKey( spep_0 -3 + 134, 1, 4.83, 4.83 );
setScaleKey( spep_0 -3 + 136, 1, 3.99, 3.99 );
setScaleKey( spep_0 -3 + 138, 1, 2.87, 2.87 );
setScaleKey( spep_0 -3 + 140, 1, 2.25, 2.25 );
setScaleKey( spep_0 -3 + 142, 1, 1.84, 1.84 );
setScaleKey( spep_0 -3 + 144, 1, 1.55, 1.55 );
setScaleKey( spep_0 -3 + 146, 1, 1.33, 1.33 );
setScaleKey( spep_0 -3 + 148, 1, 1.15, 1.15 );
setScaleKey( spep_0 -3 + 150, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 152, 1, 0.92, 0.92 );
setScaleKey( spep_0 -3 + 154, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 156, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 158, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 160, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 162, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 164, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 166, 1, 0.54, 0.54 );
setScaleKey( spep_0 -3 + 168, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 170, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 172, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 174, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 176, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 178, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 180, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 188, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 190, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 192, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 194, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 198, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 200, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 340, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 342, 1, 2.64, 2.64 );
setScaleKey( spep_0 -3 + 344, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 346, 1, 2.31, 2.31 );
setScaleKey( spep_0 -3 + 348, 1, 1.93, 1.93 );
setScaleKey( spep_0 -3 + 350, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 352, 1, 1.4, 1.4 );
setScaleKey( spep_0 -3 + 354, 1, 1.27, 1.27 );
setScaleKey( spep_0 -3 + 356, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 358, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 360, 1, 1.08, 1.08 );
setScaleKey( spep_0 -3 + 362, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 364, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 366, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 368, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 370, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 372, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 374, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 376, 1, 0.74, 0.74 );
setScaleKey( spep_0 -3 + 378, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 380, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 382, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 384, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 386, 1, 0.58, 0.58 );
setScaleKey( spep_0 -3 + 388, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 390, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 392, 1, 0.51, 0.51 );
setScaleKey( spep_0 -3 + 394, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 396, 1, 0.47, 0.47 );
setScaleKey( spep_0 -3 + 398, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 400, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 402, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 404, 1, 0.41, 0.41 );
setScaleKey( spep_0 -3 + 408, 1, 0.41, 0.41 );

setRotateKey( spep_0 -3 + 70, 1, 0 );
setRotateKey( spep_0 -3 + 97, 1, 0 );
setRotateKey( spep_0 -3 + 98, 1, -60.5 );
setRotateKey( spep_0 -3 + 112, 1, -60.5 );
setRotateKey( spep_0 -3 + 114, 1, -60.4 );
setRotateKey( spep_0 -3 + 116, 1, -60.3 );
setRotateKey( spep_0 -3 + 118, 1, -60.2 );
setRotateKey( spep_0 -3 + 120, 1, -60.1 );
setRotateKey( spep_0 -3 + 122, 1, -60 );
setRotateKey( spep_0 -3 + 129, 1, -60 );
setRotateKey( spep_0 -3 + 130, 1, 19.2 );
setRotateKey( spep_0 -3 + 136, 1, 19.2 );
setRotateKey( spep_0 -3 + 138, 1, 19.1 );
setRotateKey( spep_0 -3 + 162, 1, 19.1 );
setRotateKey( spep_0 -3 + 164, 1, 19 );
setRotateKey( spep_0 -3 + 200, 1, 19 );
setRotateKey( spep_0 -3 + 340, 1, -18.8 );
setRotateKey( spep_0 -3 + 408, 1, -18.8 );

-- ** 音 ** --
playSe( spep_0 + 102 -3, 1010 );  --ガッ
playSe( spep_0 -3 + 130, 1121 );  --敵が飛ぶ
setSeVolume( spep_0 -3 + 130, 1121, 90);
setSeVolume( spep_0 -3 + 180, 1121, 70);
setSeVolume( spep_0 -3 + 186, 1121, 40);
setSeVolume( spep_0 -3 + 194, 1121, 10);
setSeVolume( spep_0 -3 + 200, 1121, 5);
playSe( spep_0 + 200, 1072 );  --2人見下ろし
playSe( spep_0 + 266, 1154 );  --溜める
playSe( spep_0 + 310, 1155 );  --ビーム打つ
playSe( spep_0 + 320, 1155 );  --ビーム打つ
playSe( spep_0 + 330, 1155 );  --ビーム打つ
playSe( spep_0 + 340, 1155 );  --ビーム打つ
playSe( spep_0 + 350, 1155 );  --ビーム打つ
playSe( spep_0 + 360, 1155 );  --ビーム打つ
playSe( spep_0 + 370, 1155 );  --ビーム打つ
playSe( spep_0 + 380, 1155 );  --ビーム打つ
playSe( spep_0 + 390, 1155 );  --ビーム打つ
playSe( spep_0 + 400, 1155 );  --ビーム打つ
playSe( spep_0 + 410, 1155 );  --ビーム打つ
playSe( spep_0 + 420, 1155 );  --ビーム打つ
playSe( spep_0 + 430, 1155 );  --ビーム打つ
playSe( spep_0 + 440, 1155 );  --ビーム打つ
SE2 = playSe( spep_0 + 368 -3, 1044 );  --ズドドド
setSeVolume( spep_0 + 368 -3, 1044, 80);
stopSe( spep_0 + 448, SE2, 10 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 448;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- カードカットイン以降(356F)
------------------------------------------------------

-- ** エフェクト等 ** --
cutin2_f = entryEffectLife( spep_2 + 0, SP_03x, 356, 0x100, -1, 0, 0, 0 );  --カードカットイン以降　前(ef_003)
setEffMoveKey( spep_2 + 0, cutin2_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 356, cutin2_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, cutin2_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 356, cutin2_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, cutin2_f, 0 );
setEffRotateKey( spep_2 + 356, cutin2_f, 0 );
setEffAlphaKey( spep_2 + 0, cutin2_f, 255 );
setEffAlphaKey( spep_2 + 356, cutin2_f, 255 );

cutin2_b = entryEffectLife( spep_2 + 0, SP_04x, 356, 0x80, -1, 0, 0, 0 );  --カードカットイン以降　後(ef_004)
setEffMoveKey( spep_2 + 0, cutin2_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 356, cutin2_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, cutin2_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 356, cutin2_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, cutin2_b, 0 );
setEffRotateKey( spep_2 + 356, cutin2_b, 0 );
setEffAlphaKey( spep_2 + 0, cutin2_b, 255 );
setEffAlphaKey( spep_2 + 356, cutin2_b, 255 );

spep_x = spep_2 + 172;
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

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 112 -3, 1, 0 );
setDisp( spep_2 + 120 -3, 1, 1 );
setDisp( spep_2 + 356, 1, 0 );
changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2 -3 + 34, 1, 104 );
changeAnime( spep_2 -3 + 66, 1, 118 );
changeAnime( spep_2 -3 + 120, 1, 106 );
changeAnime( spep_2 -3 + 178, 1, 107 );

setMoveKey( spep_2 + 0, 1, -11.2, -129.3 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 10.2, -118.3 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 4.9, -119.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 22.9, -110.5 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 17, -122.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 38.3, -123 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 34.9, -137.3 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 54.5, -137.4 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 33.8, -133.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 27.9, -121.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -9.3, -117.9 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -28.3, -122.7 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -89.1, -143.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -138.1, -158 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -157.9, -166.5 , 0 );
setMoveKey( spep_2 -3 + 33, 1, -168.5, -158.8 , 0 );
setMoveKey( spep_2 -3 + 34, 1, -157.2, -211.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -149, -173.4 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -148.8, -157.6 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -135.7, -158.8 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -122.3, -160.6 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -107.8, -162.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -105, -154.6 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -97.7, -146.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -82.2, -136.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -55.7, -125.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -10.1, -118.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 44.1, -110 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 85.2, -103.7 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 106.2, -104.1 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 115, -112.5 , 0 );
setMoveKey( spep_2 -3 + 65, 1, 117.8, -123.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 190.1, -162.1 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 199.9, -185.7 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 213.7, -213.7 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 227.8, -241.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 239.5, -265.1 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 248, -282.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 252.4, -292 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 253.9, -296.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 255.7, -302.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 257.7, -308.4 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 259.8, -314.9 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 262, -322.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 267.2, -332.8 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 279.6, -353.5 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 299.9, -384.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 329.2, -426.6 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 370.5, -485.8 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 426.2, -563.9 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 501.2, -670.6 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 599.5, -808.7 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 731.1, -995.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 908.3, -1248.6 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 1156.2, -1604.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 1527.2, -2138.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 29.2, -307.9 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 28.9, -301.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 28, -283 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 26.4, -251.8 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 24.3, -208.2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 21.5, -152.1 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 18.1, -83.6 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 10.3, -4.2 , 0 );
setMoveKey( spep_2 -3 + 136, 1, -2.4, 88.4 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 21.1, 97.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, -1.2, 88.8 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 16.1, 97.9 , 0 );
setMoveKey( spep_2 -3 + 144, 1, -1.9, 87.9 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 21.3, 91.4 , 0 );
setMoveKey( spep_2 -3 + 148, 1, -3.7, 90.2 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 16.3, 88.7 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 9.5, 90.8 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 9.5, 90.8 , 0 );
setMoveKey( spep_2 -3 + 160, 1, -1.7, 88.8 , 0 );
setMoveKey( spep_2 -3 + 162, 1, -35.2, 82.8 , 0 );
setMoveKey( spep_2 -3 + 164, 1, -91, 72.8 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -169.1, 58.7 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -269.6, 40.7 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -392.3, 18.7 , 0 );
setMoveKey( spep_2 -3 + 177, 1, -392.3, 18.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 529.1, -696.2 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 473.9, -679 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 428.8, -665 , 0 );
setMoveKey( spep_2 -3 + 184, 1, 383.1, -661 , 0 );
setMoveKey( spep_2 -3 + 186, 1, 368.4, -652.5 , 0 );
setMoveKey( spep_2 -3 + 188, 1, 344.6, -642.4 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 341.9, -651.5 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 344.4, -640.7 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 342.8, -654.3 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 340.4, -645.6 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 351.3, -651.2 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 338.5, -649.2 , 0 );
setMoveKey( spep_2 -3 + 202, 1, 350.9, -654.3 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 340.3, -646.3 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 350.4, -659.3 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 342.8, -651.6 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 350.1, -658.2 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 341.1, -651.7 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 349.1, -664 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 346, -650.2 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 353.8, -659.6 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 343.4, -659.6 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 356.9, -661 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 344.3, -663.2 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 358, -663.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 346.3, -663.6 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 356.5, -665 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 348.4, -666.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 359.9, -667.3 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 346.5, -668.2 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 359.2, -663.3 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 355.8, -675.9 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 358.8, -664.2 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 355.6, -674.9 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 358.9, -667.5 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 357, -676.4 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 352.3, -670.6 , 0 );
setMoveKey( spep_2 -3 + 252, 1, 364.6, -673 , 0 );
setMoveKey( spep_2 -3 + 254, 1, 352.3, -672 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 364, -678.6 , 0 );
setMoveKey( spep_2 -3 + 258, 1, 353.2, -673.1 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 365.6, -677.2 , 0 );
setMoveKey( spep_2 -3 + 262, 1, 355.6, -678.4 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 381.4, -689.5 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 405.3, -727.4 , 0 );
setMoveKey( spep_2 -3 + 268, 1, 481.6, -784.6 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 545.8, -831.3 , 0 );
setMoveKey( spep_2 -3 + 272, 1, 591.7, -868.5 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 625.4, -895.1 , 0 );
setMoveKey( spep_2 -3 + 276, 1, 650.7, -914.7 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 670.4, -929.6 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 685.5, -941.2 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 697.4, -950.1 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 705.8, -956.4 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 711.9, -961.1 , 0 );
setMoveKey( spep_2 -3 + 288, 1, 717, -964.9 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 721.4, -967.9 , 0 );
setMoveKey( spep_2 -3 + 292, 1, 725, -970.7 , 0 );
setMoveKey( spep_2 -3 + 294, 1, 728.2, -973.1 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 731.1, -975.3 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 733.8, -977.1 , 0 );
setMoveKey( spep_2 -3 + 300, 1, 736.1, -978.8 , 0 );
setMoveKey( spep_2 -3 + 302, 1, 738.1, -980.4 , 0 );
setMoveKey( spep_2 -3 + 304, 1, 738.6, -981.8 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 743.6, -984.1 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 743.1, -982.6 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 744.1, -986.7 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 746.5, -984.7 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 747.8, -991.1 , 0 );
setMoveKey( spep_2 -3 + 316, 1, 748.9, -983.9 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 747.3, -991.9 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 751.1, -986.2 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 752.1, -996.6 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 753.7, -984.1 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 753.2, -996.2 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 757.5, -983.1 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 755.3, -1002.9 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 764, -987.2 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 748.3, -1004.5 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 770.8, -993.5 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 744.1, -994.4 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 769.4, -975.9 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 767.3, -1020.6 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 733.3, -979.9 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 786.8, -1013.2 , 0 );
setMoveKey( spep_2 -3 + 348, 1, 717.9, -1003 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 758, -995 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 748.3, -1015 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 748.4, -1015.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 748.4, -1015.1 , 0 );
setMoveKey( spep_2 + 356, 1, 748.4, -1015.4 , 0 );

setScaleKey( spep_2 + 0, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 18, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 20, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 22, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 24, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 26, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 33, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 34, 1, 2.42, 2.42 );
setScaleKey( spep_2 -3 + 36, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 58, 1, 2.43, 2.43 );
setScaleKey( spep_2 -3 + 60, 1, 2.45, 2.45 );
setScaleKey( spep_2 -3 + 62, 1, 2.5, 2.5 );
setScaleKey( spep_2 -3 + 65, 1, 2.63, 2.57 );
setScaleKey( spep_2 -3 + 66, 1, 2.54, 2.69 );
setScaleKey( spep_2 -3 + 68, 1, 2.78, 2.83 );
setScaleKey( spep_2 -3 + 70, 1, 2.98, 2.98 );
setScaleKey( spep_2 -3 + 72, 1, 3.11, 3.11 );
setScaleKey( spep_2 -3 + 74, 1, 3.22, 3.22 );
setScaleKey( spep_2 -3 + 76, 1, 3.3, 3.3 );
setScaleKey( spep_2 -3 + 78, 1, 3.35, 3.35 );
setScaleKey( spep_2 -3 + 80, 1, 3.38, 3.38 );
setScaleKey( spep_2 -3 + 82, 1, 3.42, 3.42 );
setScaleKey( spep_2 -3 + 84, 1, 3.46, 3.46 );
setScaleKey( spep_2 -3 + 86, 1, 3.5, 3.5 );
setScaleKey( spep_2 -3 + 88, 1, 3.56, 3.56 );
setScaleKey( spep_2 -3 + 90, 1, 3.65, 3.65 );
setScaleKey( spep_2 -3 + 92, 1, 3.79, 3.79 );
setScaleKey( spep_2 -3 + 94, 1, 4, 4 );
setScaleKey( spep_2 -3 + 96, 1, 4.35, 4.35 );
setScaleKey( spep_2 -3 + 98, 1, 4.78, 4.78 );
setScaleKey( spep_2 -3 + 100, 1, 5.39, 5.39 );
setScaleKey( spep_2 -3 + 102, 1, 6.16, 6.16 );
setScaleKey( spep_2 -3 + 104, 1, 7.24, 7.24 );
setScaleKey( spep_2 -3 + 106, 1, 8.63, 8.63 );
setScaleKey( spep_2 -3 + 108, 1, 10.57, 10.57 );
setScaleKey( spep_2 -3 + 110, 1, 13.26, 13.26 );
setScaleKey( spep_2 -3 + 112, 1, 17.35, 17.35 );
setScaleKey( spep_2 -3 + 120, 1, 6.65, 6.65 );
setScaleKey( spep_2 -3 + 122, 1, 6.58, 6.58 );
setScaleKey( spep_2 -3 + 124, 1, 6.36, 6.36 );
setScaleKey( spep_2 -3 + 126, 1, 5.99, 5.99 );
setScaleKey( spep_2 -3 + 128, 1, 5.48, 5.48 );
setScaleKey( spep_2 -3 + 130, 1, 4.83, 4.83 );
setScaleKey( spep_2 -3 + 132, 1, 4.02, 4.02 );
setScaleKey( spep_2 -3 + 134, 1, 3.57, 3.57 );
setScaleKey( spep_2 -3 + 136, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 138, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 140, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 158, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 160, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 162, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 164, 1, 2.34, 2.34 );
setScaleKey( spep_2 -3 + 166, 1, 2.61, 2.61 );
setScaleKey( spep_2 -3 + 168, 1, 2.97, 2.97 );
setScaleKey( spep_2 -3 + 170, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 177, 1, 3.4, 3.4 );
setScaleKey( spep_2 -3 + 178, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 194, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 196, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 202, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 204, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 208, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 210, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 216, 1, 1.89, 1.89 );
setScaleKey( spep_2 -3 + 218, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 224, 1, 1.9, 1.9 );
setScaleKey( spep_2 -3 + 226, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 232, 1, 1.91, 1.91 );
setScaleKey( spep_2 -3 + 234, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 238, 1, 1.92, 1.92 );
setScaleKey( spep_2 -3 + 240, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 246, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 248, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 254, 1, 1.94, 1.94 );
setScaleKey( spep_2 -3 + 256, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 260, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 262, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 264, 1, 2.02, 2.02 );
setScaleKey( spep_2 -3 + 266, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 268, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 270, 1, 2.53, 2.53 );
setScaleKey( spep_2 -3 + 272, 1, 2.67, 2.67 );
setScaleKey( spep_2 -3 + 274, 1, 2.76, 2.76 );
setScaleKey( spep_2 -3 + 276, 1, 2.84, 2.84 );
setScaleKey( spep_2 -3 + 278, 1, 2.88, 2.88 );
setScaleKey( spep_2 -3 + 280, 1, 2.93, 2.93 );
setScaleKey( spep_2 -3 + 282, 1, 2.95, 2.95 );
setScaleKey( spep_2 -3 + 284, 1, 2.97, 2.97 );
setScaleKey( spep_2 -3 + 286, 1, 3, 3 );
setScaleKey( spep_2 -3 + 288, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 292, 1, 3.02, 3.02 );
setScaleKey( spep_2 -3 + 294, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 298, 1, 3.04, 3.04 );
setScaleKey( spep_2 -3 + 300, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 308, 1, 3.06, 3.06 );
setScaleKey( spep_2 -3 + 310, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 326, 1, 3.1, 3.1 );
setScaleKey( spep_2 -3 + 328, 1, 3.12, 3.12 );
setScaleKey( spep_2 + 356, 1, 3.12, 3.12 );

setRotateKey( spep_2 + 0, 1, 8.1 );
setRotateKey( spep_2 -3 + 18, 1, 8.1 );
setRotateKey( spep_2 -3 + 20, 1, 8 );
setRotateKey( spep_2 -3 + 22, 1, 8.1 );
setRotateKey( spep_2 -3 + 24, 1, 8.1 );
setRotateKey( spep_2 -3 + 26, 1, 8 );
setRotateKey( spep_2 -3 + 28, 1, 8.1 );
setRotateKey( spep_2 -3 + 30, 1, 5.8 );
setRotateKey( spep_2 -3 + 33, 1, -2 );
setRotateKey( spep_2 -3 + 34, 1, 27.8 );
setRotateKey( spep_2 -3 + 36, 1, 6.3 );
setRotateKey( spep_2 -3 + 38, 1, -1.9 );
setRotateKey( spep_2 -3 + 58, 1, -1.9 );
setRotateKey( spep_2 -3 + 60, 1, -1.8 );
setRotateKey( spep_2 -3 + 62, 1, -1.3 );
setRotateKey( spep_2 -3 + 65, 1, -0.4 );
setRotateKey( spep_2 -3 + 66, 1, 26 );
setRotateKey( spep_2 -3 + 68, 1, 27.3 );
setRotateKey( spep_2 -3 + 70, 1, 28.9 );
setRotateKey( spep_2 -3 + 72, 1, 30.2 );
setRotateKey( spep_2 -3 + 74, 1, 31.3 );
setRotateKey( spep_2 -3 + 76, 1, 32.1 );
setRotateKey( spep_2 -3 + 78, 1, 32.5 );
setRotateKey( spep_2 -3 + 112, 1, 32.5 );
setRotateKey( spep_2 -3 + 120, 1, -48 );
setRotateKey( spep_2 -3 + 177, 1, -48 );
setRotateKey( spep_2 -3 + 178, 1, -101.3 );
setRotateKey( spep_2 -3 + 260, 1, -101.3 );
setRotateKey( spep_2 -3 + 262, 1, -101.4 );
setRotateKey( spep_2 -3 + 264, 1, -101.6 );
setRotateKey( spep_2 -3 + 266, 1, -102.3 );
setRotateKey( spep_2 -3 + 268, 1, -103.5 );
setRotateKey( spep_2 -3 + 270, 1, -104.6 );
setRotateKey( spep_2 -3 + 272, 1, -105.3 );
setRotateKey( spep_2 -3 + 274, 1, -105.8 );
setRotateKey( spep_2 -3 + 276, 1, -106.2 );
setRotateKey( spep_2 -3 + 278, 1, -106.5 );
setRotateKey( spep_2 -3 + 280, 1, -106.7 );
setRotateKey( spep_2 -3 + 282, 1, -106.9 );
setRotateKey( spep_2 -3 + 284, 1, -107 );
setRotateKey( spep_2 -3 + 286, 1, -107.1 );
setRotateKey( spep_2 -3 + 288, 1, -107.1 );
setRotateKey( spep_2 -3 + 290, 1, -107.2 );
setRotateKey( spep_2 -3 + 292, 1, -107.3 );
setRotateKey( spep_2 -3 + 296, 1, -107.3 );
setRotateKey( spep_2 -3 + 298, 1, -107.4 );
setRotateKey( spep_2 -3 + 302, 1, -107.4 );
setRotateKey( spep_2 -3 + 304, 1, -107.5 );
setRotateKey( spep_2 -3 + 312, 1, -107.5 );
setRotateKey( spep_2 -3 + 314, 1, -107.6 );
setRotateKey( spep_2 -3 + 326, 1, -107.6 );
setRotateKey( spep_2 -3 + 328, 1, -107.7 );
setRotateKey( spep_2 + 356, 1, -107.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 356, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_2 + 70, 44 );  --現れる
playSe( spep_2 + 70, 9 );  --現れる
setSeVolume( spep_2 + 70, 9, 90 );
playSe( spep_2 + 128, 1007 );  --抱きしめる
playSe( spep_2 + 128, 1008 );  --抱きしめる
setSeVolume( spep_2 + 128, 1008, 95 );
playSe( spep_2 + 166, 8 );  --場面転換
playSe( spep_x + 16, SE_04 );  --ゴゴゴ
playSe( spep_2 + 260, 1157 );  --自爆音始め
setSeVolume( spep_2 + 260, 1157, 120 );
playSe( spep_2 + 280, 1158 );  --自爆音始め
setSeVolume( spep_2 + 280, 1158, 130 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 356;

------------------------------------------------------
-- ダメージ表示(206F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --ダメージ表示(ef_005)
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 206, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 206, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 206, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 206, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 206, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_3 + 0, 1156 );  --爆発前
setSeVolume( spep_3 + 0, 1156, 120 );
playSe( spep_3 + 92, 1024 );  --爆発
setSeVolume( spep_3 + 92, 1024, 140 );
playSe( spep_3 + 92, 1067 );  --爆発
setSeVolume( spep_3 + 92, 1067, 85 );

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 94 );
endPhase( spep_3 + 206 );

end