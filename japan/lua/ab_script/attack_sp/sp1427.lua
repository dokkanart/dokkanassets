--ゴテンクス_ビクトリーフラッシュ

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
SP_01 = 155382;  --突進〜連打まで・手前
SP_02 = 155383;  --突進〜連打まで・奥
SP_03 = 155384;  --蹴り〜構え
SP_04 = 155385;  --発射
SP_05 = 155386;  --爆発・手前
SP_06 = 155387;  --爆発・奥

--敵側
SP_01x = 155388;  --突進〜連打まで・手前
SP_03x = 155389;  --蹴り〜構え
SP_04x = 155390;  --発射

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
-- 突進〜連打まで(344F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 344, 0x100, -1, 0, 0, 0 );  --突進〜連打まで(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 344, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 344, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 344, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 344, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 344, 0x80, -1, 0, 0, 0 );  --突進〜連打まで(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 344, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 344, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 344, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 344, first_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 38, 906, 86 +1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 -3 + 38, shuchusen1, 86, 20 );

setEffMoveKey( spep_0 -3 + 38, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 124 +1, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 38, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 124 +1, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 -3 + 38, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 124 +1, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 38, shuchusen1, 0 );
setEffAlphaKey( spep_0 -3 + 48, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 124 +1, shuchusen1, 255 );

-- ** 音 ** --
--入り
SE0 = playSe( spep_0 + 0, 8 );

--ダッシュ
SE1 = playSe( spep_0 + 40, 1182 );
setSeVolume( spep_0 + 40, 1182, 89 );
setSeVolume( spep_0 + 57, 1182, 89 );
setSeVolume( spep_0 + 60, 1182, 72 );
setSeVolume( spep_0 + 64, 1182, 58 );
setSeVolume( spep_0 + 68, 1182, 44 );
setSeVolume( spep_0 + 72, 1182, 30 );
setSeVolume( spep_0 + 74, 1182, 18 );
setSeVolume( spep_0 + 78, 1182, 6 );
setSeVolume( spep_0 + 80, 1182, 0 );
stopSe( spep_0 + 80, SE1, 0 );
SE2 = playSe( spep_0 + 40, 44 );
setSeVolume( spep_0 + 40, 44, 89 );

--腕を振りかぶる
SE3 = playSe( spep_0 + 49, 1072 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 346, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );

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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 -3 + 206, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 -3 + 206, shuchusen2, 98, 20 );

setEffMoveKey( spep_0 -3 + 206, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 304, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 206, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 304, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_0 -3 + 206, shuchusen2, 0 );
setEffRotateKey( spep_0 -3 + 304, shuchusen2, 0 );

setEffAlphaKey( spep_0 -3 + 206, shuchusen2, 0 );
setEffAlphaKey( spep_0 -3 + 212, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 296, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 304, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_0 -3 + 146,  10020, 26, 0x100, -1, 0, 48.3, 311.9 );  --バキッ
setEffMoveKey( spep_0 -3 + 146, ctbago, 48.3, 311.9 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctbago, 36.5, 336 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctbago, 48.4, 311.9 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctbago, 48.5, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctbago, 40.7, 327.7 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctbago, 48.5, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 158, ctbago, 40.9, 327.2 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctbago, 48.5, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctbago, 41.1, 326.7 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctbago, 48.4, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctbago, 48.4, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctbago, 41.3, 326.3 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctbago, 48.4, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctbago, 48.3, 311.8 , 0 );

setEffScaleKey( spep_0 -3 + 146, ctbago, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 148, ctbago, 3.15, 3.15 );
setEffScaleKey( spep_0 -3 + 150, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_0 -3 + 152, ctbago, 2.12, 2.12 );
setEffScaleKey( spep_0 -3 + 154, ctbago, 2.09, 2.09 );
setEffScaleKey( spep_0 -3 + 156, ctbago, 2.05, 2.05 );
setEffScaleKey( spep_0 -3 + 158, ctbago, 2.02, 2.02 );
setEffScaleKey( spep_0 -3 + 160, ctbago, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 162, ctbago, 1.96, 1.96 );
setEffScaleKey( spep_0 -3 + 164, ctbago, 1.92, 1.92 );
setEffScaleKey( spep_0 -3 + 166, ctbago, 1.89, 1.89 );
setEffScaleKey( spep_0 -3 + 168, ctbago, 1.9, 1.9 );
setEffScaleKey( spep_0 -3 + 170, ctbago, 1.91, 1.91 );
setEffScaleKey( spep_0 -3 + 172, ctbago, 1.92, 1.92 );

setEffRotateKey( spep_0 -3 + 146, ctbago, 18.8 );
setEffRotateKey( spep_0 -3 + 172, ctbago, 18.8 );

setEffAlphaKey( spep_0 -3 + 146, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 166, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 168, ctbago, 174 );
setEffAlphaKey( spep_0 -3 + 170, ctbago, 94 );
setEffAlphaKey( spep_0 -3 + 172, ctbago, 13 );

ctdogaga = entryEffectLife( spep_0 -3 + 212,  10017, 88, 0x100, -1, 0, 28.7, 426.3 );  --ドガガガ
setEffMoveKey( spep_0 -3 + 212, ctdogaga, 28.7, 426.3 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctdogaga, 16.9, 426.3 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctdogaga, 13.9, 405 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctdogaga, 15.8, 421.2 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctdogaga, 27, 415.1 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctdogaga, 33.6, 420.2 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctdogaga, 29.8, 429.7 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctdogaga, 33.7, 420.9 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctdogaga, 30, 430.6 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctdogaga, 33.9, 421.7 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctdogaga, 30.1, 431.5 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctdogaga, 34.1, 422.5 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctdogaga, 30.2, 432.4 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctdogaga, 34.2, 423.3 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctdogaga, 30.3, 433.3 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctdogaga, 34.4, 424.1 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctdogaga, 30.4, 434.2 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctdogaga, 34.6, 424.9 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctdogaga, 30.6, 435.1 , 0 );
setEffMoveKey( spep_0 -3 + 250, ctdogaga, 34.8, 425.7 , 0 );
setEffMoveKey( spep_0 -3 + 252, ctdogaga, 30.7, 436.1 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctdogaga, 34.9, 426.5 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctdogaga, 30.8, 437 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctdogaga, 35.1, 427.3 , 0 );
setEffMoveKey( spep_0 -3 + 260, ctdogaga, 30.9, 437.9 , 0 );
setEffMoveKey( spep_0 -3 + 262, ctdogaga, 35.3, 428.1 , 0 );
setEffMoveKey( spep_0 -3 + 264, ctdogaga, 31.1, 438.8 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctdogaga, 35.4, 428.9 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctdogaga, 31.2, 439.7 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctdogaga, 35.6, 429.7 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctdogaga, 31.3, 440.6 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctdogaga, 35.8, 430.4 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctdogaga, 31.4, 441.5 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctdogaga, 36, 431.2 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctdogaga, 31.5, 442.4 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctdogaga, 36.1, 432 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctdogaga, 31.7, 443.3 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctdogaga, 36.3, 432.8 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctdogaga, 31.8, 444.3 , 0 );
setEffMoveKey( spep_0 -3 + 290, ctdogaga, 36.5, 433.6 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctdogaga, 31.9, 445.2 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctdogaga, 36.6, 434.4 , 0 );
setEffMoveKey( spep_0 -3 + 296, ctdogaga, 32, 445.6 , 0 );
setEffMoveKey( spep_0 -3 + 298, ctdogaga, 36.6, 434.4 , 0 );
setEffMoveKey( spep_0 -3 + 300, ctdogaga, 36.6, 434.4 , 0 );

setEffScaleKey( spep_0 -3 + 212, ctdogaga, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 214, ctdogaga, 2.72, 2.72 );
setEffScaleKey( spep_0 -3 + 216, ctdogaga, 3.09, 3.09 );
setEffScaleKey( spep_0 -3 + 218, ctdogaga, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 220, ctdogaga, 2.58, 2.58 );
setEffScaleKey( spep_0 -3 + 222, ctdogaga, 2.32, 2.32 );
setEffScaleKey( spep_0 -3 + 224, ctdogaga, 2.34, 2.34 );
setEffScaleKey( spep_0 -3 + 226, ctdogaga, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 228, ctdogaga, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 230, ctdogaga, 2.38, 2.38 );
setEffScaleKey( spep_0 -3 + 232, ctdogaga, 2.4, 2.4 );
setEffScaleKey( spep_0 -3 + 234, ctdogaga, 2.41, 2.41 );
setEffScaleKey( spep_0 -3 + 236, ctdogaga, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 238, ctdogaga, 2.44, 2.44 );
setEffScaleKey( spep_0 -3 + 240, ctdogaga, 2.46, 2.46 );
setEffScaleKey( spep_0 -3 + 242, ctdogaga, 2.47, 2.47 );
setEffScaleKey( spep_0 -3 + 244, ctdogaga, 2.49, 2.49 );
setEffScaleKey( spep_0 -3 + 246, ctdogaga, 2.5, 2.5 );
setEffScaleKey( spep_0 -3 + 248, ctdogaga, 2.51, 2.51 );
setEffScaleKey( spep_0 -3 + 250, ctdogaga, 2.53, 2.53 );
setEffScaleKey( spep_0 -3 + 252, ctdogaga, 2.55, 2.55 );
setEffScaleKey( spep_0 -3 + 254, ctdogaga, 2.56, 2.56 );
setEffScaleKey( spep_0 -3 + 256, ctdogaga, 2.58, 2.58 );
setEffScaleKey( spep_0 -3 + 258, ctdogaga, 2.59, 2.59 );
setEffScaleKey( spep_0 -3 + 260, ctdogaga, 2.61, 2.61 );
setEffScaleKey( spep_0 -3 + 262, ctdogaga, 2.62, 2.62 );
setEffScaleKey( spep_0 -3 + 264, ctdogaga, 2.64, 2.64 );
setEffScaleKey( spep_0 -3 + 266, ctdogaga, 2.65, 2.65 );
setEffScaleKey( spep_0 -3 + 268, ctdogaga, 2.67, 2.67 );
setEffScaleKey( spep_0 -3 + 270, ctdogaga, 2.68, 2.68 );
setEffScaleKey( spep_0 -3 + 272, ctdogaga, 2.7, 2.7 );
setEffScaleKey( spep_0 -3 + 274, ctdogaga, 2.71, 2.71 );
setEffScaleKey( spep_0 -3 + 276, ctdogaga, 2.72, 2.72 );
setEffScaleKey( spep_0 -3 + 278, ctdogaga, 2.74, 2.74 );
setEffScaleKey( spep_0 -3 + 280, ctdogaga, 2.76, 2.76 );
setEffScaleKey( spep_0 -3 + 282, ctdogaga, 2.77, 2.77 );
setEffScaleKey( spep_0 -3 + 284, ctdogaga, 2.79, 2.79 );
setEffScaleKey( spep_0 -3 + 286, ctdogaga, 2.8, 2.8 );
setEffScaleKey( spep_0 -3 + 288, ctdogaga, 2.82, 2.82 );
setEffScaleKey( spep_0 -3 + 290, ctdogaga, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 292, ctdogaga, 2.85, 2.85 );
setEffScaleKey( spep_0 -3 + 294, ctdogaga, 2.86, 2.86 );
setEffScaleKey( spep_0 -3 + 300, ctdogaga, 2.86, 2.86 );

setEffRotateKey( spep_0 -3 + 212, ctdogaga, 22.4 );
setEffRotateKey( spep_0 -3 + 300, ctdogaga, 22.4 );

setEffAlphaKey( spep_0 -3 + 212, ctdogaga, 255 );
setEffAlphaKey( spep_0 -3 + 294, ctdogaga, 255 );
setEffAlphaKey( spep_0 -3 + 296, ctdogaga, 170 );
setEffAlphaKey( spep_0 -3 + 298, ctdogaga, 85 );
setEffAlphaKey( spep_0 -3 + 300, ctdogaga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 146, 1, 1 );
setDisp( spep_0 -3 + 186, 1, 0 );
changeAnime( spep_0 -3 + 146, 1, 108 );

setMoveKey( spep_0 -3 + 146, 1, -62, 21.8 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -5.3, 4.9 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 45.4, -40 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 104.1, -64.9 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 106.1, -79.5 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 112.1, -70.2 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 108.1, -74.8 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 120.1, -75.4 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 122.1, -88 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 128.2, -80.6 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 126.2, -85.2 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 136.2, -85.8 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 138.2, -90.4 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 140.2, -93 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 148.2, -93.6 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 152.2, -96.2 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 156.2, -98.8 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 160.3, -101.4 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 164.3, -104 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 168.3, -106.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 168.3, -106.6 , 0 );

setScaleKey( spep_0 -3 + 146, 1, 3.53, 3.53 );
setScaleKey( spep_0 -3 + 148, 1, 3.28, 3.28 );
setScaleKey( spep_0 -3 + 150, 1, 3.04, 3.04 );
setScaleKey( spep_0 -3 + 152, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 154, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 156, 1, 2.76, 2.76 );
setScaleKey( spep_0 -3 + 158, 1, 2.74, 2.74 );
setScaleKey( spep_0 -3 + 160, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 162, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 164, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 166, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 168, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 170, 1, 2.65, 2.65 );
setScaleKey( spep_0 -3 + 172, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 174, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 176, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 178, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 180, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 182, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 184, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 186, 1, 2.54, 2.54 );

setRotateKey( spep_0 -3 + 146, 1, 12.7 );
setRotateKey( spep_0 -3 + 148, 1, 12.6 );
setRotateKey( spep_0 -3 + 150, 1, 12.6 );
setRotateKey( spep_0 -3 + 152, 1, 12.5 );
setRotateKey( spep_0 -3 + 158, 1, 12.5 );
setRotateKey( spep_0 -3 + 160, 1, 12.6 );
setRotateKey( spep_0 -3 + 176, 1, 12.6 );
setRotateKey( spep_0 -3 + 178, 1, 12.7 );
setRotateKey( spep_0 -3 + 186, 1, 12.7 );

-- ** 音 ** --
--腕を振りかぶる
playSe( spep_0 + 70, 1004 );
playSe( spep_0 + 76, 1003 );

--振り下ろし
playSe( spep_0 + 83, 1182 );
setSeVolume( spep_0 + 83, 1182, 0 );
setSeVolume( spep_0 + 92, 1182, 10 );
setSeVolume( spep_0 + 94, 1182, 34 );
setSeVolume( spep_0 + 96, 1182, 68 );
setSeVolume( spep_0 + 98, 1182, 92 );
setSeVolume( spep_0 + 100, 1182, 100 );

SE4 = playSe( spep_0 + 89, 9 );
setSeVolume( spep_0 + 89, 9, 10 );
setSeVolume( spep_0 + 92, 9, 24 );
setSeVolume( spep_0 + 98, 9, 42 );
setSeVolume( spep_0 + 104, 9, 48 );
setSeVolume( spep_0 + 106, 9, 55 );
setSeVolume( spep_0 + 108, 9, 63 );
setSeVolume( spep_0 + 112, 9, 72 );
setSeVolume( spep_0 + 114, 9, 86 );
setSeVolume( spep_0 + 117, 9, 100 );
stopSe( spep_0 + 134, SE4, 0 );

SE5 = playSe( spep_0 + 90, 1116 );
stopSe( spep_0 + 111, SE5, 27 );

--パンチ
playSe( spep_0 + 128, 1009 );
playSe( spep_0 + 128, 1006 );
playSe( spep_0 + 128, 1187 );
setSeVolume( spep_0 + 128, 1187, 79 );
playSe( spep_0 + 135, 1110 );
setSeVolume( spep_0 + 135, 1110, 89 );

--ラッシュ前の振りかぶり
playSe( spep_0 + 194, 1003 );

--ラッシュ
playSe( spep_0 + 212, 1012 );
playSe( spep_0 + 214, 1110 );
playSe( spep_0 + 222, 1012 );
playSe( spep_0 + 224, 1110 );
setSeVolume( spep_0 + 224, 1110, 79 );
playSe( spep_0 + 225, 1012 );
playSe( spep_0 + 231, 1012 );
playSe( spep_0 + 233, 1110 );
setSeVolume( spep_0 + 233, 1110, 83 );
playSe( spep_0 + 234, 1012 );
playSe( spep_0 + 241, 1012 );
playSe( spep_0 + 243, 1110 );
playSe( spep_0 + 245, 1013 );
playSe( spep_0 + 250, 1012 );
playSe( spep_0 + 252, 1110 );
setSeVolume( spep_0 + 252, 1110, 79 );
playSe( spep_0 + 254, 1006 );
playSe( spep_0 + 259, 1012 );
playSe( spep_0 + 261, 1110 );
setSeVolume( spep_0 + 261, 1110, 79 );
playSe( spep_0 + 263, 1006 );
playSe( spep_0 + 270, 1010 );
setSeVolume( spep_0 + 270, 1010, 87 );
playSe( spep_0 + 270, 1110 );
playSe( spep_0 + 272, 1006 );
playSe( spep_0 + 278, 1009 );
setSeVolume( spep_0 + 278, 1009, 83 );
playSe( spep_0 + 278, 1110 );
setSeVolume( spep_0 + 278, 1110, 83 );
playSe( spep_0 + 280, 1006 );
playSe( spep_0 + 286, 1009 );
playSe( spep_0 + 286, 1110 );
playSe( spep_0 + 288, 1006 );

--瞬間移動
playSe( spep_0 + 309, 1109 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 344;

------------------------------------------------------
-- 蹴り〜構え(166F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --蹴り〜構え(ef_003)
setEffMoveKey( spep_1 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, kick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, kick, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick, 0 );
setEffRotateKey( spep_1 + 166, kick, 0 );
setEffAlphaKey( spep_1 + 0, kick, 255 );
setEffAlphaKey( spep_1 + 166, kick, 255 );

spep_x = spep_1 + 70;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 -3 + 34, 906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 -3 + 34, shuchusen3, 32, 20 );

setEffMoveKey( spep_1 -3 + 34, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 66, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 34, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 66, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_1 -3 + 34, shuchusen3, 0 );
setEffRotateKey( spep_1 -3 + 66, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 34, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 54, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 66, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_1 -3 + 74, 906, 92 +3, 0x100, -1, 0, 0, 0, 500 );  --集中線
setEffShake( spep_1 -3 + 74, shuchusen4, 92 +3, 20 );

setEffMoveKey( spep_1 -3 + 74, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 74, shuchusen4, 1.4, 1.4 );
setEffScaleKey( spep_1 + 166, shuchusen4, 1.4, 1.4 );

setEffRotateKey( spep_1 -3 + 74, shuchusen4, 0 );
setEffRotateKey( spep_1 + 166, shuchusen4, 0 );

setEffAlphaKey( spep_1 -3 + 74, shuchusen4, 0 );
setEffAlphaKey( spep_1 -3 + 84, shuchusen4, 255 );
setEffAlphaKey( spep_1 + 166, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +80, 515.5 , 0 );

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

ctbago = entryEffectLife( spep_1 -3 + 34,  10021, 22, 0x100, -1, 0, -115.6, 346 );  --バゴォ
setEffMoveKey( spep_1 -3 + 34, ctbago, -115.6, 346 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbago, -115.5, 345.1 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbago, -115.5, 345.9 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbago, -141.3, 353.9 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctbago, -115.5, 346 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctbago, -140.1, 353.6 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctbago, -115.5, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctbago, -115.5, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctbago, -137.7, 353 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctbago, -115.6, 346.3 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctbago, -135.2, 352.3 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctbago, -133.9, 352 , 0 );

setEffScaleKey( spep_1 -3 + 34, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_1 -3 + 36, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_1 -3 + 38, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_1 -3 + 40, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 42, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 44, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_1 -3 + 46, ctbago, 2.92, 2.92 );
setEffScaleKey( spep_1 -3 + 48, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_1 -3 + 50, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_1 -3 + 52, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_1 -3 + 54, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 56, ctbago, 2.21, 2.21 );

setEffRotateKey( spep_1 -3 + 34, ctbago, -37.4 );
setEffRotateKey( spep_1 -3 + 56, ctbago, -37.4 );

setEffAlphaKey( spep_1 -3 + 34, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 48, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 50, ctbago, 191 );
setEffAlphaKey( spep_1 -3 + 52, ctbago, 128 );
setEffAlphaKey( spep_1 -3 + 54, ctbago, 64 );
setEffAlphaKey( spep_1 -3 + 56, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 54, 1, 0 );
changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 -3 + 34, 1, 107 );

setMoveKey( spep_1 + 0, 1, -34.2, -69.2 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -32.4, -52.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -30.6, -35.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -30.4, -33.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -30.2, -31.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -30, -29.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -29.8, -27.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -29.6, -25.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -29.4, -23.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -29.2, -21.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -29, -19.8 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -28.8, -17.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -28.6, -15.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -28.4, -13.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -28.2, -11.9 , 0 );
setMoveKey( spep_1 -3 + 33, 1, -31.9, -26 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -43.6, -136.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -38.7, -117.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -14.7, -86.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -18.9, -93.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -18.3, -84.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -352.9, -559.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -684.4, -1045.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -1011.6, -1520.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -1330.5, -1980.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -1659.9, -2455.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -1974.7, -2913.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 33, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 36, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 38, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 40, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 42, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 44, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 46, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 48, 1, 3.14, 3.14 );
setScaleKey( spep_1 -3 + 50, 1, 3.92, 3.92 );
setScaleKey( spep_1 -3 + 52, 1, 4.65, 4.65 );
setScaleKey( spep_1 -3 + 54, 1, 5.43, 5.43 );

setRotateKey( spep_1 + 0, 1, -43.3 );
setRotateKey( spep_1 -3 + 6, 1, -43.3 );
setRotateKey( spep_1 -3 + 8, 1, -43 );
setRotateKey( spep_1 -3 + 10, 1, -42.7 );
setRotateKey( spep_1 -3 + 12, 1, -42.4 );
setRotateKey( spep_1 -3 + 14, 1, -42.1 );
setRotateKey( spep_1 -3 + 16, 1, -41.8 );
setRotateKey( spep_1 -3 + 18, 1, -41.5 );
setRotateKey( spep_1 -3 + 20, 1, -41.3 );
setRotateKey( spep_1 -3 + 22, 1, -41 );
setRotateKey( spep_1 -3 + 24, 1, -40.7 );
setRotateKey( spep_1 -3 + 26, 1, -40.4 );
setRotateKey( spep_1 -3 + 28, 1, -40.1 );
setRotateKey( spep_1 -3 + 30, 1, -39.8 );
setRotateKey( spep_1 -3 + 33, 1, -39.5 );
setRotateKey( spep_1 -3 + 34, 1, 176.7 );
setRotateKey( spep_1 -3 + 36, 1, 174.3 );
setRotateKey( spep_1 -3 + 38, 1, 171.9 );
setRotateKey( spep_1 -3 + 40, 1, 169.4 );
setRotateKey( spep_1 -3 + 42, 1, 167 );
setRotateKey( spep_1 -3 + 44, 1, 140.7 );
setRotateKey( spep_1 -3 + 46, 1, 114.3 );
setRotateKey( spep_1 -3 + 48, 1, 88 );
setRotateKey( spep_1 -3 + 50, 1, 61.6 );
setRotateKey( spep_1 -3 + 52, 1, 35.3 );
setRotateKey( spep_1 -3 + 54, 1, 8.9 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 168, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--瞬間移動
playSe( spep_1 + 15, 1109 );

--キック
playSe( spep_1 + 32, 1189 );
playSe( spep_1 + 35, 1120 );

--気弾溜め
SE6 = playSe( spep_1 + 70, 1191 );
setSeVolume( spep_1 + 70, 1191, 200 );
setSeVolume( spep_1 + 112, 1191, 200 );
setSeVolume( spep_1 + 116, 1191, 142 );
setSeVolume( spep_1 + 122, 1191, 98 );
setSeVolume( spep_1 + 124, 1191, 63 );
setSeVolume( spep_1 + 128, 1191, 41 );
setSeVolume( spep_1 + 130, 1191, 24 );
setSeVolume( spep_1 + 133, 1191, 0 );
stopSe( spep_1 + 133, SE6, 0 );

SE7 = playSe( spep_1 + 72, 1209 );
setSeVolume( spep_1 + 72, 1209, 68 );
setSeVolume( spep_1 + 106, 1209, 68 );
setSeVolume( spep_1 + 108, 1209, 52 );
setSeVolume( spep_1 + 110, 1209, 46 );
setSeVolume( spep_1 + 112, 1209, 40 );
setSeVolume( spep_1 + 114, 1209, 35 );
setSeVolume( spep_1 + 116, 1209, 26 );
setSeVolume( spep_1 + 118, 1209, 20 );
setSeVolume( spep_1 + 120, 1209, 14 );
setSeVolume( spep_1 + 122, 1209, 8 );
setSeVolume( spep_1 + 124, 1209, 0 );
stopSe( spep_1 + 124, SE7, 0 );

playSe( spep_1 + 72, 49 );
playSe( spep_1 + 77, 1202 );

SE8 = playSe( spep_1 + 88, 17 );
setSeVolume( spep_1 + 88, 17, 54 );
stopSe( spep_1 + 163, SE8, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 166;

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

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射(46F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --発射(ef_004)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 46, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 46, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_3 -3 + 10,  10012, 38, 0x100, -1, 0, -62.9, 263.1 );  --ズオッ
setEffMoveKey( spep_3 -3 + 10, ctzuo, -62.9, 263.1 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctzuo, -71.8, 304.6 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctzuo, -62.9, 331.3 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctzuo, -79.7, 341.1 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctzuo, -63.3, 327.2 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctzuo, -76.9, 334.7 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzuo, -63.5, 325.7 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzuo, -77.4, 336.3 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzuo, -63.6, 327 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctzuo, -77.8, 337.9 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctzuo, -63.8, 328.3 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzuo, -78.1, 339.6 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzuo, -63.8, 329.6 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzuo, -78.6, 341.1 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzuo, -63.9, 331 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzuo, -79, 342.8 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzuo, -63.9, 332.3 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzuo, -79.4, 344.5 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzuo, -64, 333.6 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzuo, -79.8, 346.1 , 0 );

setEffScaleKey( spep_3 -3 + 10, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_3 -3 + 12, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_3 -3 + 14, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_3 -3 + 16, ctzuo, 3, 3 );
setEffScaleKey( spep_3 -3 + 18, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 20, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_3 -3 + 22, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_3 -3 + 24, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_3 -3 + 26, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_3 -3 + 28, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_3 -3 + 30, ctzuo, 2.59, 2.59 );
setEffScaleKey( spep_3 -3 + 32, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_3 -3 + 34, ctzuo, 2.66, 2.66 );
setEffScaleKey( spep_3 -3 + 36, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 38, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 40, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_3 -3 + 42, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_3 -3 + 44, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_3 -3 + 46, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_3 -3 + 48, ctzuo, 2.9, 2.9 );

setEffRotateKey( spep_3 -3 + 10, ctzuo, -9.4 );
setEffRotateKey( spep_3 -3 + 12, ctzuo, -13.8 );
setEffRotateKey( spep_3 -3 + 14, ctzuo, -18.1 );
setEffRotateKey( spep_3 -3 + 16, ctzuo, -18.1 );
setEffRotateKey( spep_3 -3 + 18, ctzuo, -18 );
setEffRotateKey( spep_3 -3 + 20, ctzuo, -17.9 );
setEffRotateKey( spep_3 -3 + 22, ctzuo, -17.8 );
setEffRotateKey( spep_3 -3 + 24, ctzuo, -17.7 );
setEffRotateKey( spep_3 -3 + 26, ctzuo, -17.6 );
setEffRotateKey( spep_3 -3 + 28, ctzuo, -17.5 );
setEffRotateKey( spep_3 -3 + 30, ctzuo, -17.4 );
setEffRotateKey( spep_3 -3 + 32, ctzuo, -17.3 );
setEffRotateKey( spep_3 -3 + 34, ctzuo, -17.2 );
setEffRotateKey( spep_3 -3 + 36, ctzuo, -17.1 );
setEffRotateKey( spep_3 -3 + 38, ctzuo, -17 );
setEffRotateKey( spep_3 -3 + 40, ctzuo, -16.9 );
setEffRotateKey( spep_3 -3 + 42, ctzuo, -16.8 );
setEffRotateKey( spep_3 -3 + 44, ctzuo, -16.7 );
setEffRotateKey( spep_3 -3 + 46, ctzuo, -16.6 );
setEffRotateKey( spep_3 -3 + 48, ctzuo, -16.5 );

setEffAlphaKey( spep_3 -3 + 10, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctzuo, 255 );

-- ** 音 ** --
--気弾発射
playSe( spep_3 + 0, 1027 );
playSe( spep_3 + 0, 1133 );
setSeVolume( spep_3 + 0, 1133, 75 );
playSe( spep_3 + 0, 1021 );

--気弾近づく
SE7 = playSe( spep_3 + 13, 1212 );
setSeVolume( spep_3 + 13, 1212, 0 );
setSeVolume( spep_3 + 28, 1212, 10 );
setSeVolume( spep_3 + 30, 1212, 15 );
setSeVolume( spep_3 + 32, 1212, 19 );
setSeVolume( spep_3 + 34, 1212, 24 );
setSeVolume( spep_3 + 36, 1212, 27 );
setSeVolume( spep_3 + 38, 1212, 31 );
setSeVolume( spep_3 + 40, 1212, 37 );
setSeVolume( spep_3 + 42, 1212, 40 );
setSeVolume( spep_3 + 44, 1212, 46 );

SE8 = playSe( spep_3 + 23, 1215 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 48, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46;

------------------------------------------------------
-- 爆発(214F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --爆発(ef_005)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 214, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 214, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --爆発(ef_006)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 214, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 214, finish_b, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 -3 + 52, 906, 162 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 -3 + 52, shuchusen5, 162 +3, 20 );

setEffMoveKey( spep_4 -3 + 52, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 52, shuchusen5, 1.4, 1.4 );
setEffScaleKey( spep_4 + 214, shuchusen5, 1.4, 1.4 );

setEffRotateKey( spep_4 -3 + 52, shuchusen5, 0 );
setEffRotateKey( spep_4 + 214, shuchusen5, 0 );

setEffAlphaKey( spep_4 -3 + 52, shuchusen5, 0 );
setEffAlphaKey( spep_4 -3 + 62, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 214, shuchusen5, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 52, 1, 0 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, -39.7, 101.5 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -32.6, 82.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -25.4, 63.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -18.3, 44.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -11.2, 25 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -10.7, 23.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -10.2, 21.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -9.7, 19.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -9.1, 17.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -8.6, 15.8 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -8.1, 13.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -7.6, 12.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -7.1, 10.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -6.5, 8.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -6, 6.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -5.5, 4.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -5, 2.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -4.4, 1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -3.9, -0.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -3.4, -2.7 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -2.9, -4.6 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -2.4, -6.4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -1.8, -8.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -1.3, -10.1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -0.8, -12 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -0.8, -12 , 0 );

setScaleKey( spep_4 + 0, 1, 4.18, 4.18 );
setScaleKey( spep_4 -3 + 4, 1, 3.47, 3.47 );
setScaleKey( spep_4 -3 + 6, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_4 -3 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 12, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 14, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 16, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 18, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 20, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 22, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 24, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 26, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 28, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 32, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 34, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 38, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 40, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 42, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 44, 1, 0.37, 0.37 );
setScaleKey( spep_4 -3 + 46, 1, 0.31, 0.31 );
setScaleKey( spep_4 -3 + 48, 1, 0.25, 0.25 );
setScaleKey( spep_4 -3 + 50, 1, 0.19, 0.19 );
setScaleKey( spep_4 -3 + 52, 1, 0.19, 0.19 );

setRotateKey( spep_4 + 0, 1, 20 );
setRotateKey( spep_4 -3 + 52, 1, 20 );

-- ** 音 ** --
--気弾近づく
setSeVolume( spep_4 + 0, 1212, 52 );
setSeVolume( spep_4 + 4, 1212, 68 );
setSeVolume( spep_4 + 7, 1212, 73 );
stopSe( spep_4 + 60, SE7, 0 );
stopSe( spep_4 + 60, SE8, 0 );

--爆発
playSe( spep_4 + 55, 1014 );
playSe( spep_4 + 55, 1023 );

--爆発前
playSe( spep_4 + 95, 1069 );
SE9 = playSe( spep_4 + 103, 1222 );
stopSe( spep_4 + 145, SE9, 17 );

--ラスト爆発
playSe( spep_4 + 149, 1159 );
playSe( spep_4 + 149, 1024 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 216, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 88 );
endPhase( spep_4 + 212 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進〜連打まで(344F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01x, 344, 0x100, -1, 0, 0, 0 );  --突進〜連打まで(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 344, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 344, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 344, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 344, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 344, 0x80, -1, 0, 0, 0 );  --突進〜連打まで(ef_002)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 344, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 344, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 344, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 344, first_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 38, 906, 86 +1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 -3 + 38, shuchusen1, 86, 20 );

setEffMoveKey( spep_0 -3 + 38, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 124 +1, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 38, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 124 +1, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 -3 + 38, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 124 +1, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 38, shuchusen1, 0 );
setEffAlphaKey( spep_0 -3 + 48, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 124 +1, shuchusen1, 255 );

-- ** 音 ** --
--入り
SE0 = playSe( spep_0 + 0, 8 );

--ダッシュ
SE1 = playSe( spep_0 + 40, 1182 );
setSeVolume( spep_0 + 40, 1182, 89 );
setSeVolume( spep_0 + 57, 1182, 89 );
setSeVolume( spep_0 + 60, 1182, 72 );
setSeVolume( spep_0 + 64, 1182, 58 );
setSeVolume( spep_0 + 68, 1182, 44 );
setSeVolume( spep_0 + 72, 1182, 30 );
setSeVolume( spep_0 + 74, 1182, 18 );
setSeVolume( spep_0 + 78, 1182, 6 );
setSeVolume( spep_0 + 80, 1182, 0 );
stopSe( spep_0 + 80, SE1, 0 );
SE2 = playSe( spep_0 + 40, 44 );
setSeVolume( spep_0 + 40, 44, 89 );

--腕を振りかぶる
SE3 = playSe( spep_0 + 49, 1072 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 346, 0, 0, 0, 0, 255 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 68; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, SE1, 0 );
stopSe( SP_dodge - 12, SE2, 0 );
stopSe( SP_dodge - 12, SE3, 0 );

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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 -3 + 206, 906, 98, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 -3 + 206, shuchusen2, 98, 20 );

setEffMoveKey( spep_0 -3 + 206, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 304, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 206, shuchusen2, 1.4, 1.4 );
setEffScaleKey( spep_0 -3 + 304, shuchusen2, 1.4, 1.4 );

setEffRotateKey( spep_0 -3 + 206, shuchusen2, 0 );
setEffRotateKey( spep_0 -3 + 304, shuchusen2, 0 );

setEffAlphaKey( spep_0 -3 + 206, shuchusen2, 0 );
setEffAlphaKey( spep_0 -3 + 212, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 296, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 304, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctbago = entryEffectLife( spep_0 -3 + 146,  10020, 26, 0x100, -1, 0, 48.3, 311.9 );  --バキッ
setEffMoveKey( spep_0 -3 + 146, ctbago, 48.3, 311.9 , 0 );
setEffMoveKey( spep_0 -3 + 148, ctbago, 36.5, 336 , 0 );
setEffMoveKey( spep_0 -3 + 150, ctbago, 48.4, 311.9 , 0 );
setEffMoveKey( spep_0 -3 + 152, ctbago, 48.5, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 154, ctbago, 40.7, 327.7 , 0 );
setEffMoveKey( spep_0 -3 + 156, ctbago, 48.5, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 158, ctbago, 40.9, 327.2 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctbago, 48.5, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctbago, 41.1, 326.7 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctbago, 48.4, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctbago, 48.4, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctbago, 41.3, 326.3 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctbago, 48.4, 311.8 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctbago, 48.3, 311.8 , 0 );

setEffScaleKey( spep_0 -3 + 146, ctbago, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 148, ctbago, 3.15, 3.15 );
setEffScaleKey( spep_0 -3 + 150, ctbago, 2.64, 2.64 );
setEffScaleKey( spep_0 -3 + 152, ctbago, 2.12, 2.12 );
setEffScaleKey( spep_0 -3 + 154, ctbago, 2.09, 2.09 );
setEffScaleKey( spep_0 -3 + 156, ctbago, 2.05, 2.05 );
setEffScaleKey( spep_0 -3 + 158, ctbago, 2.02, 2.02 );
setEffScaleKey( spep_0 -3 + 160, ctbago, 1.99, 1.99 );
setEffScaleKey( spep_0 -3 + 162, ctbago, 1.96, 1.96 );
setEffScaleKey( spep_0 -3 + 164, ctbago, 1.92, 1.92 );
setEffScaleKey( spep_0 -3 + 166, ctbago, 1.89, 1.89 );
setEffScaleKey( spep_0 -3 + 168, ctbago, 1.9, 1.9 );
setEffScaleKey( spep_0 -3 + 170, ctbago, 1.91, 1.91 );
setEffScaleKey( spep_0 -3 + 172, ctbago, 1.92, 1.92 );

setEffRotateKey( spep_0 -3 + 146, ctbago, 18.8 );
setEffRotateKey( spep_0 -3 + 172, ctbago, 18.8 );

setEffAlphaKey( spep_0 -3 + 146, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 166, ctbago, 255 );
setEffAlphaKey( spep_0 -3 + 168, ctbago, 174 );
setEffAlphaKey( spep_0 -3 + 170, ctbago, 94 );
setEffAlphaKey( spep_0 -3 + 172, ctbago, 13 );

ctdogaga = entryEffectLife( spep_0 -3 + 212,  10017, 88, 0x100, -1, 0, 28.7, 426.3 );  --ドガガガ
setEffMoveKey( spep_0 -3 + 212, ctdogaga, 28.7, 426.3 , 0 );
setEffMoveKey( spep_0 -3 + 214, ctdogaga, 16.9, 426.3 , 0 );
setEffMoveKey( spep_0 -3 + 216, ctdogaga, 13.9, 405 , 0 );
setEffMoveKey( spep_0 -3 + 218, ctdogaga, 15.8, 421.2 , 0 );
setEffMoveKey( spep_0 -3 + 220, ctdogaga, 27, 415.1 , 0 );
setEffMoveKey( spep_0 -3 + 222, ctdogaga, 33.6, 420.2 , 0 );
setEffMoveKey( spep_0 -3 + 224, ctdogaga, 29.8, 429.7 , 0 );
setEffMoveKey( spep_0 -3 + 226, ctdogaga, 33.7, 420.9 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctdogaga, 30, 430.6 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctdogaga, 33.9, 421.7 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctdogaga, 30.1, 431.5 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctdogaga, 34.1, 422.5 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctdogaga, 30.2, 432.4 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctdogaga, 34.2, 423.3 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctdogaga, 30.3, 433.3 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctdogaga, 34.4, 424.1 , 0 );
setEffMoveKey( spep_0 -3 + 244, ctdogaga, 30.4, 434.2 , 0 );
setEffMoveKey( spep_0 -3 + 246, ctdogaga, 34.6, 424.9 , 0 );
setEffMoveKey( spep_0 -3 + 248, ctdogaga, 30.6, 435.1 , 0 );
setEffMoveKey( spep_0 -3 + 250, ctdogaga, 34.8, 425.7 , 0 );
setEffMoveKey( spep_0 -3 + 252, ctdogaga, 30.7, 436.1 , 0 );
setEffMoveKey( spep_0 -3 + 254, ctdogaga, 34.9, 426.5 , 0 );
setEffMoveKey( spep_0 -3 + 256, ctdogaga, 30.8, 437 , 0 );
setEffMoveKey( spep_0 -3 + 258, ctdogaga, 35.1, 427.3 , 0 );
setEffMoveKey( spep_0 -3 + 260, ctdogaga, 30.9, 437.9 , 0 );
setEffMoveKey( spep_0 -3 + 262, ctdogaga, 35.3, 428.1 , 0 );
setEffMoveKey( spep_0 -3 + 264, ctdogaga, 31.1, 438.8 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctdogaga, 35.4, 428.9 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctdogaga, 31.2, 439.7 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctdogaga, 35.6, 429.7 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctdogaga, 31.3, 440.6 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctdogaga, 35.8, 430.4 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctdogaga, 31.4, 441.5 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctdogaga, 36, 431.2 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctdogaga, 31.5, 442.4 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctdogaga, 36.1, 432 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctdogaga, 31.7, 443.3 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctdogaga, 36.3, 432.8 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctdogaga, 31.8, 444.3 , 0 );
setEffMoveKey( spep_0 -3 + 290, ctdogaga, 36.5, 433.6 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctdogaga, 31.9, 445.2 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctdogaga, 36.6, 434.4 , 0 );
setEffMoveKey( spep_0 -3 + 296, ctdogaga, 32, 445.6 , 0 );
setEffMoveKey( spep_0 -3 + 298, ctdogaga, 36.6, 434.4 , 0 );
setEffMoveKey( spep_0 -3 + 300, ctdogaga, 36.6, 434.4 , 0 );

setEffScaleKey( spep_0 -3 + 212, ctdogaga, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 214, ctdogaga, 2.72, 2.72 );
setEffScaleKey( spep_0 -3 + 216, ctdogaga, 3.09, 3.09 );
setEffScaleKey( spep_0 -3 + 218, ctdogaga, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 220, ctdogaga, 2.58, 2.58 );
setEffScaleKey( spep_0 -3 + 222, ctdogaga, 2.32, 2.32 );
setEffScaleKey( spep_0 -3 + 224, ctdogaga, 2.34, 2.34 );
setEffScaleKey( spep_0 -3 + 226, ctdogaga, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 228, ctdogaga, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 230, ctdogaga, 2.38, 2.38 );
setEffScaleKey( spep_0 -3 + 232, ctdogaga, 2.4, 2.4 );
setEffScaleKey( spep_0 -3 + 234, ctdogaga, 2.41, 2.41 );
setEffScaleKey( spep_0 -3 + 236, ctdogaga, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 238, ctdogaga, 2.44, 2.44 );
setEffScaleKey( spep_0 -3 + 240, ctdogaga, 2.46, 2.46 );
setEffScaleKey( spep_0 -3 + 242, ctdogaga, 2.47, 2.47 );
setEffScaleKey( spep_0 -3 + 244, ctdogaga, 2.49, 2.49 );
setEffScaleKey( spep_0 -3 + 246, ctdogaga, 2.5, 2.5 );
setEffScaleKey( spep_0 -3 + 248, ctdogaga, 2.51, 2.51 );
setEffScaleKey( spep_0 -3 + 250, ctdogaga, 2.53, 2.53 );
setEffScaleKey( spep_0 -3 + 252, ctdogaga, 2.55, 2.55 );
setEffScaleKey( spep_0 -3 + 254, ctdogaga, 2.56, 2.56 );
setEffScaleKey( spep_0 -3 + 256, ctdogaga, 2.58, 2.58 );
setEffScaleKey( spep_0 -3 + 258, ctdogaga, 2.59, 2.59 );
setEffScaleKey( spep_0 -3 + 260, ctdogaga, 2.61, 2.61 );
setEffScaleKey( spep_0 -3 + 262, ctdogaga, 2.62, 2.62 );
setEffScaleKey( spep_0 -3 + 264, ctdogaga, 2.64, 2.64 );
setEffScaleKey( spep_0 -3 + 266, ctdogaga, 2.65, 2.65 );
setEffScaleKey( spep_0 -3 + 268, ctdogaga, 2.67, 2.67 );
setEffScaleKey( spep_0 -3 + 270, ctdogaga, 2.68, 2.68 );
setEffScaleKey( spep_0 -3 + 272, ctdogaga, 2.7, 2.7 );
setEffScaleKey( spep_0 -3 + 274, ctdogaga, 2.71, 2.71 );
setEffScaleKey( spep_0 -3 + 276, ctdogaga, 2.72, 2.72 );
setEffScaleKey( spep_0 -3 + 278, ctdogaga, 2.74, 2.74 );
setEffScaleKey( spep_0 -3 + 280, ctdogaga, 2.76, 2.76 );
setEffScaleKey( spep_0 -3 + 282, ctdogaga, 2.77, 2.77 );
setEffScaleKey( spep_0 -3 + 284, ctdogaga, 2.79, 2.79 );
setEffScaleKey( spep_0 -3 + 286, ctdogaga, 2.8, 2.8 );
setEffScaleKey( spep_0 -3 + 288, ctdogaga, 2.82, 2.82 );
setEffScaleKey( spep_0 -3 + 290, ctdogaga, 2.83, 2.83 );
setEffScaleKey( spep_0 -3 + 292, ctdogaga, 2.85, 2.85 );
setEffScaleKey( spep_0 -3 + 294, ctdogaga, 2.86, 2.86 );
setEffScaleKey( spep_0 -3 + 300, ctdogaga, 2.86, 2.86 );

setEffRotateKey( spep_0 -3 + 212, ctdogaga, 22.4 );
setEffRotateKey( spep_0 -3 + 300, ctdogaga, 22.4 );

setEffAlphaKey( spep_0 -3 + 212, ctdogaga, 255 );
setEffAlphaKey( spep_0 -3 + 294, ctdogaga, 255 );
setEffAlphaKey( spep_0 -3 + 296, ctdogaga, 170 );
setEffAlphaKey( spep_0 -3 + 298, ctdogaga, 85 );
setEffAlphaKey( spep_0 -3 + 300, ctdogaga, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_0 -3 + 146, 1, 1 );
setDisp( spep_0 -3 + 186, 1, 0 );
changeAnime( spep_0 -3 + 146, 1, 108 );

setMoveKey( spep_0 -3 + 146, 1, -62, 21.8 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -5.3, 4.9 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 45.4, -40 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 104.1, -64.9 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 106.1, -79.5 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 112.1, -70.2 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 108.1, -74.8 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 120.1, -75.4 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 122.1, -88 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 128.2, -80.6 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 126.2, -85.2 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 136.2, -85.8 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 138.2, -90.4 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 140.2, -93 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 148.2, -93.6 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 152.2, -96.2 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 156.2, -98.8 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 160.3, -101.4 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 164.3, -104 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 168.3, -106.6 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 168.3, -106.6 , 0 );

setScaleKey( spep_0 -3 + 146, 1, 3.53, 3.53 );
setScaleKey( spep_0 -3 + 148, 1, 3.28, 3.28 );
setScaleKey( spep_0 -3 + 150, 1, 3.04, 3.04 );
setScaleKey( spep_0 -3 + 152, 1, 2.79, 2.79 );
setScaleKey( spep_0 -3 + 154, 1, 2.77, 2.77 );
setScaleKey( spep_0 -3 + 156, 1, 2.76, 2.76 );
setScaleKey( spep_0 -3 + 158, 1, 2.74, 2.74 );
setScaleKey( spep_0 -3 + 160, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 162, 1, 2.71, 2.71 );
setScaleKey( spep_0 -3 + 164, 1, 2.7, 2.7 );
setScaleKey( spep_0 -3 + 166, 1, 2.68, 2.68 );
setScaleKey( spep_0 -3 + 168, 1, 2.67, 2.67 );
setScaleKey( spep_0 -3 + 170, 1, 2.65, 2.65 );
setScaleKey( spep_0 -3 + 172, 1, 2.63, 2.63 );
setScaleKey( spep_0 -3 + 174, 1, 2.62, 2.62 );
setScaleKey( spep_0 -3 + 176, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 178, 1, 2.59, 2.59 );
setScaleKey( spep_0 -3 + 180, 1, 2.57, 2.57 );
setScaleKey( spep_0 -3 + 182, 1, 2.56, 2.56 );
setScaleKey( spep_0 -3 + 184, 1, 2.54, 2.54 );
setScaleKey( spep_0 -3 + 186, 1, 2.54, 2.54 );

setRotateKey( spep_0 -3 + 146, 1, 12.7 );
setRotateKey( spep_0 -3 + 148, 1, 12.6 );
setRotateKey( spep_0 -3 + 150, 1, 12.6 );
setRotateKey( spep_0 -3 + 152, 1, 12.5 );
setRotateKey( spep_0 -3 + 158, 1, 12.5 );
setRotateKey( spep_0 -3 + 160, 1, 12.6 );
setRotateKey( spep_0 -3 + 176, 1, 12.6 );
setRotateKey( spep_0 -3 + 178, 1, 12.7 );
setRotateKey( spep_0 -3 + 186, 1, 12.7 );

-- ** 音 ** --
--腕を振りかぶる
playSe( spep_0 + 70, 1004 );
playSe( spep_0 + 76, 1003 );

--振り下ろし
playSe( spep_0 + 83, 1182 );
setSeVolume( spep_0 + 83, 1182, 0 );
setSeVolume( spep_0 + 92, 1182, 10 );
setSeVolume( spep_0 + 94, 1182, 34 );
setSeVolume( spep_0 + 96, 1182, 68 );
setSeVolume( spep_0 + 98, 1182, 92 );
setSeVolume( spep_0 + 100, 1182, 100 );

SE4 = playSe( spep_0 + 89, 9 );
setSeVolume( spep_0 + 89, 9, 10 );
setSeVolume( spep_0 + 92, 9, 24 );
setSeVolume( spep_0 + 98, 9, 42 );
setSeVolume( spep_0 + 104, 9, 48 );
setSeVolume( spep_0 + 106, 9, 55 );
setSeVolume( spep_0 + 108, 9, 63 );
setSeVolume( spep_0 + 112, 9, 72 );
setSeVolume( spep_0 + 114, 9, 86 );
setSeVolume( spep_0 + 117, 9, 100 );
stopSe( spep_0 + 134, SE4, 0 );

SE5 = playSe( spep_0 + 90, 1116 );
stopSe( spep_0 + 111, SE5, 27 );

--パンチ
playSe( spep_0 + 128, 1009 );
playSe( spep_0 + 128, 1006 );
playSe( spep_0 + 128, 1187 );
setSeVolume( spep_0 + 128, 1187, 79 );
playSe( spep_0 + 135, 1110 );
setSeVolume( spep_0 + 135, 1110, 89 );

--ラッシュ前の振りかぶり
playSe( spep_0 + 194, 1003 );

--ラッシュ
playSe( spep_0 + 212, 1012 );
playSe( spep_0 + 214, 1110 );
playSe( spep_0 + 222, 1012 );
playSe( spep_0 + 224, 1110 );
setSeVolume( spep_0 + 224, 1110, 79 );
playSe( spep_0 + 225, 1012 );
playSe( spep_0 + 231, 1012 );
playSe( spep_0 + 233, 1110 );
setSeVolume( spep_0 + 233, 1110, 83 );
playSe( spep_0 + 234, 1012 );
playSe( spep_0 + 241, 1012 );
playSe( spep_0 + 243, 1110 );
playSe( spep_0 + 245, 1013 );
playSe( spep_0 + 250, 1012 );
playSe( spep_0 + 252, 1110 );
setSeVolume( spep_0 + 252, 1110, 79 );
playSe( spep_0 + 254, 1006 );
playSe( spep_0 + 259, 1012 );
playSe( spep_0 + 261, 1110 );
setSeVolume( spep_0 + 261, 1110, 79 );
playSe( spep_0 + 263, 1006 );
playSe( spep_0 + 270, 1010 );
setSeVolume( spep_0 + 270, 1010, 87 );
playSe( spep_0 + 270, 1110 );
playSe( spep_0 + 272, 1006 );
playSe( spep_0 + 278, 1009 );
setSeVolume( spep_0 + 278, 1009, 83 );
playSe( spep_0 + 278, 1110 );
setSeVolume( spep_0 + 278, 1110, 83 );
playSe( spep_0 + 280, 1006 );
playSe( spep_0 + 286, 1009 );
playSe( spep_0 + 286, 1110 );
playSe( spep_0 + 288, 1006 );

--瞬間移動
playSe( spep_0 + 309, 1109 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 344;

------------------------------------------------------
-- 蹴り〜構え(166F)
------------------------------------------------------

-- ** エフェクト等 ** --
kick = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --蹴り〜構え(ef_003)
setEffMoveKey( spep_1 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, kick, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_1 + 166, kick, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick, 0 );
setEffRotateKey( spep_1 + 166, kick, 0 );
setEffAlphaKey( spep_1 + 0, kick, 255 );
setEffAlphaKey( spep_1 + 166, kick, 255 );

spep_x = spep_1 + 70;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 -3 + 34, 906, 32, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 -3 + 34, shuchusen3, 32, 20 );

setEffMoveKey( spep_1 -3 + 34, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 66, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 34, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_1 -3 + 66, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_1 -3 + 34, shuchusen3, 0 );
setEffRotateKey( spep_1 -3 + 66, shuchusen3, 0 );

setEffAlphaKey( spep_1 -3 + 34, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 54, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 66, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_1 -3 + 74, 906, 92 +3, 0x100, -1, 0, 0, 0, 500 );  --集中線
setEffShake( spep_1 -3 + 74, shuchusen4, 92 +3, 20 );

setEffMoveKey( spep_1 -3 + 74, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 + 166, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 74, shuchusen4, 1.4, 1.4 );
setEffScaleKey( spep_1 + 166, shuchusen4, 1.4, 1.4 );

setEffRotateKey( spep_1 -3 + 74, shuchusen4, 0 );
setEffRotateKey( spep_1 + 166, shuchusen4, 0 );

setEffAlphaKey( spep_1 -3 + 74, shuchusen4, 0 );
setEffAlphaKey( spep_1 -3 + 84, shuchusen4, 255 );
setEffAlphaKey( spep_1 + 166, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +80, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +80, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +80, 515.5 , 0 );

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

ctbago = entryEffectLife( spep_1 -3 + 34,  10021, 22, 0x100, -1, 0, -115.6, 346 );  --バゴォ
setEffMoveKey( spep_1 -3 + 34, ctbago, -115.6, 346 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbago, -115.5, 345.1 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbago, -115.5, 345.9 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbago, -141.3, 353.9 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctbago, -115.5, 346 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctbago, -140.1, 353.6 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctbago, -115.5, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctbago, -115.5, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctbago, -137.7, 353 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctbago, -115.6, 346.3 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctbago, -135.2, 352.3 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctbago, -133.9, 352 , 0 );

setEffScaleKey( spep_1 -3 + 34, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_1 -3 + 36, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_1 -3 + 38, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_1 -3 + 40, ctbago, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 42, ctbago, 3.07, 3.07 );
setEffScaleKey( spep_1 -3 + 44, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_1 -3 + 46, ctbago, 2.92, 2.92 );
setEffScaleKey( spep_1 -3 + 48, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_1 -3 + 50, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_1 -3 + 52, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_1 -3 + 54, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_1 -3 + 56, ctbago, 2.21, 2.21 );

setEffRotateKey( spep_1 -3 + 34, ctbago, -37.4 );
setEffRotateKey( spep_1 -3 + 56, ctbago, -37.4 );

setEffAlphaKey( spep_1 -3 + 34, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 48, ctbago, 255 );
setEffAlphaKey( spep_1 -3 + 50, ctbago, 191 );
setEffAlphaKey( spep_1 -3 + 52, ctbago, 128 );
setEffAlphaKey( spep_1 -3 + 54, ctbago, 64 );
setEffAlphaKey( spep_1 -3 + 56, ctbago, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 -3 + 54, 1, 0 );
changeAnime( spep_1 + 0, 1, 106 );
changeAnime( spep_1 -3 + 34, 1, 107 );

setMoveKey( spep_1 + 0, 1, -34.2, -69.2 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -32.4, -52.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -30.6, -35.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -30.4, -33.4 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -30.2, -31.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -30, -29.5 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -29.8, -27.6 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -29.6, -25.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -29.4, -23.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -29.2, -21.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -29, -19.8 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -28.8, -17.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -28.6, -15.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -28.4, -13.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -28.2, -11.9 , 0 );
setMoveKey( spep_1 -3 + 33, 1, -31.9, -26 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -43.6, -136.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -38.7, -117.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -14.7, -86.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -18.9, -93.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -18.3, -84.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -352.9, -559.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -684.4, -1045.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -1011.6, -1520.7 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -1330.5, -1980.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -1659.9, -2455.3 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -1974.7, -2913.4 , 0 );

setScaleKey( spep_1 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 33, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 36, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 38, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 40, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 42, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 44, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 46, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 48, 1, 3.14, 3.14 );
setScaleKey( spep_1 -3 + 50, 1, 3.92, 3.92 );
setScaleKey( spep_1 -3 + 52, 1, 4.65, 4.65 );
setScaleKey( spep_1 -3 + 54, 1, 5.43, 5.43 );

setRotateKey( spep_1 + 0, 1, -43.3 );
setRotateKey( spep_1 -3 + 6, 1, -43.3 );
setRotateKey( spep_1 -3 + 8, 1, -43 );
setRotateKey( spep_1 -3 + 10, 1, -42.7 );
setRotateKey( spep_1 -3 + 12, 1, -42.4 );
setRotateKey( spep_1 -3 + 14, 1, -42.1 );
setRotateKey( spep_1 -3 + 16, 1, -41.8 );
setRotateKey( spep_1 -3 + 18, 1, -41.5 );
setRotateKey( spep_1 -3 + 20, 1, -41.3 );
setRotateKey( spep_1 -3 + 22, 1, -41 );
setRotateKey( spep_1 -3 + 24, 1, -40.7 );
setRotateKey( spep_1 -3 + 26, 1, -40.4 );
setRotateKey( spep_1 -3 + 28, 1, -40.1 );
setRotateKey( spep_1 -3 + 30, 1, -39.8 );
setRotateKey( spep_1 -3 + 33, 1, -39.5 );
setRotateKey( spep_1 -3 + 34, 1, 176.7 );
setRotateKey( spep_1 -3 + 36, 1, 174.3 );
setRotateKey( spep_1 -3 + 38, 1, 171.9 );
setRotateKey( spep_1 -3 + 40, 1, 169.4 );
setRotateKey( spep_1 -3 + 42, 1, 167 );
setRotateKey( spep_1 -3 + 44, 1, 140.7 );
setRotateKey( spep_1 -3 + 46, 1, 114.3 );
setRotateKey( spep_1 -3 + 48, 1, 88 );
setRotateKey( spep_1 -3 + 50, 1, 61.6 );
setRotateKey( spep_1 -3 + 52, 1, 35.3 );
setRotateKey( spep_1 -3 + 54, 1, 8.9 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 168, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

--瞬間移動
playSe( spep_1 + 15, 1109 );

--キック
playSe( spep_1 + 32, 1189 );
playSe( spep_1 + 35, 1120 );

--気弾溜め
SE6 = playSe( spep_1 + 70, 1191 );
setSeVolume( spep_1 + 70, 1191, 200 );
setSeVolume( spep_1 + 112, 1191, 200 );
setSeVolume( spep_1 + 116, 1191, 142 );
setSeVolume( spep_1 + 122, 1191, 98 );
setSeVolume( spep_1 + 124, 1191, 63 );
setSeVolume( spep_1 + 128, 1191, 41 );
setSeVolume( spep_1 + 130, 1191, 24 );
setSeVolume( spep_1 + 133, 1191, 0 );
stopSe( spep_1 + 133, SE6, 0 );

SE7 = playSe( spep_1 + 72, 1209 );
setSeVolume( spep_1 + 72, 1209, 68 );
setSeVolume( spep_1 + 106, 1209, 68 );
setSeVolume( spep_1 + 108, 1209, 52 );
setSeVolume( spep_1 + 110, 1209, 46 );
setSeVolume( spep_1 + 112, 1209, 40 );
setSeVolume( spep_1 + 114, 1209, 35 );
setSeVolume( spep_1 + 116, 1209, 26 );
setSeVolume( spep_1 + 118, 1209, 20 );
setSeVolume( spep_1 + 120, 1209, 14 );
setSeVolume( spep_1 + 122, 1209, 8 );
setSeVolume( spep_1 + 124, 1209, 0 );
stopSe( spep_1 + 124, SE7, 0 );

playSe( spep_1 + 72, 49 );
playSe( spep_1 + 77, 1202 );

SE8 = playSe( spep_1 + 88, 17 );
setSeVolume( spep_1 + 88, 17, 54 );
stopSe( spep_1 + 163, SE8, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 166;

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

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_3 = spep_2 + 94;

------------------------------------------------------
-- 発射(46F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 );  --発射(ef_004)
setEffMoveKey( spep_3 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, hassha, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46, hassha, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hassha, 0 );
setEffRotateKey( spep_3 + 46, hassha, 0 );
setEffAlphaKey( spep_3 + 0, hassha, 255 );
setEffAlphaKey( spep_3 + 46, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_3 -3 + 10,  10012, 38, 0x100, -1, 0, -62.9, 263.1 );  --ズオッ
setEffMoveKey( spep_3 -3 + 10, ctzuo, -62.9, 263.1 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctzuo, -71.8, 304.6 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctzuo, -62.9, 331.3 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctzuo, -79.7, 341.1 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctzuo, -63.3, 327.2 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctzuo, -76.9, 334.7 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzuo, -63.5, 325.7 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzuo, -77.4, 336.3 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzuo, -63.6, 327 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctzuo, -77.8, 337.9 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctzuo, -63.8, 328.3 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzuo, -78.1, 339.6 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzuo, -63.8, 329.6 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzuo, -78.6, 341.1 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzuo, -63.9, 331 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzuo, -79, 342.8 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzuo, -63.9, 332.3 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzuo, -79.4, 344.5 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzuo, -64, 333.6 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzuo, -79.8, 346.1 , 0 );

setEffScaleKey( spep_3 -3 + 10, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_3 -3 + 12, ctzuo, 1.84, 1.84 );
setEffScaleKey( spep_3 -3 + 14, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_3 -3 + 16, ctzuo, 3, 3 );
setEffScaleKey( spep_3 -3 + 18, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 20, ctzuo, 2.42, 2.42 );
setEffScaleKey( spep_3 -3 + 22, ctzuo, 2.46, 2.46 );
setEffScaleKey( spep_3 -3 + 24, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_3 -3 + 26, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_3 -3 + 28, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_3 -3 + 30, ctzuo, 2.59, 2.59 );
setEffScaleKey( spep_3 -3 + 32, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_3 -3 + 34, ctzuo, 2.66, 2.66 );
setEffScaleKey( spep_3 -3 + 36, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_3 -3 + 38, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 40, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_3 -3 + 42, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_3 -3 + 44, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_3 -3 + 46, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_3 -3 + 48, ctzuo, 2.9, 2.9 );

setEffRotateKey( spep_3 -3 + 10, ctzuo, -9.4 );
setEffRotateKey( spep_3 -3 + 12, ctzuo, -13.8 );
setEffRotateKey( spep_3 -3 + 14, ctzuo, -18.1 );
setEffRotateKey( spep_3 -3 + 16, ctzuo, -18.1 );
setEffRotateKey( spep_3 -3 + 18, ctzuo, -18 );
setEffRotateKey( spep_3 -3 + 20, ctzuo, -17.9 );
setEffRotateKey( spep_3 -3 + 22, ctzuo, -17.8 );
setEffRotateKey( spep_3 -3 + 24, ctzuo, -17.7 );
setEffRotateKey( spep_3 -3 + 26, ctzuo, -17.6 );
setEffRotateKey( spep_3 -3 + 28, ctzuo, -17.5 );
setEffRotateKey( spep_3 -3 + 30, ctzuo, -17.4 );
setEffRotateKey( spep_3 -3 + 32, ctzuo, -17.3 );
setEffRotateKey( spep_3 -3 + 34, ctzuo, -17.2 );
setEffRotateKey( spep_3 -3 + 36, ctzuo, -17.1 );
setEffRotateKey( spep_3 -3 + 38, ctzuo, -17 );
setEffRotateKey( spep_3 -3 + 40, ctzuo, -16.9 );
setEffRotateKey( spep_3 -3 + 42, ctzuo, -16.8 );
setEffRotateKey( spep_3 -3 + 44, ctzuo, -16.7 );
setEffRotateKey( spep_3 -3 + 46, ctzuo, -16.6 );
setEffRotateKey( spep_3 -3 + 48, ctzuo, -16.5 );

setEffAlphaKey( spep_3 -3 + 10, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 48, ctzuo, 255 );

-- ** 音 ** --
--気弾発射
playSe( spep_3 + 0, 1027 );
playSe( spep_3 + 0, 1133 );
setSeVolume( spep_3 + 0, 1133, 75 );
playSe( spep_3 + 0, 1021 );

--気弾近づく
SE7 = playSe( spep_3 + 13, 1212 );
setSeVolume( spep_3 + 13, 1212, 0 );
setSeVolume( spep_3 + 28, 1212, 10 );
setSeVolume( spep_3 + 30, 1212, 15 );
setSeVolume( spep_3 + 32, 1212, 19 );
setSeVolume( spep_3 + 34, 1212, 24 );
setSeVolume( spep_3 + 36, 1212, 27 );
setSeVolume( spep_3 + 38, 1212, 31 );
setSeVolume( spep_3 + 40, 1212, 37 );
setSeVolume( spep_3 + 42, 1212, 40 );
setSeVolume( spep_3 + 44, 1212, 46 );

SE8 = playSe( spep_3 + 23, 1215 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 48, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46;

------------------------------------------------------
-- 爆発(214F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --爆発(ef_005)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 214, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 214, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --爆発(ef_006)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 214, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 214, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 214, finish_b, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 -3 + 52, 906, 162 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 -3 + 52, shuchusen5, 162 +3, 20 );

setEffMoveKey( spep_4 -3 + 52, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 214, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 52, shuchusen5, 1.4, 1.4 );
setEffScaleKey( spep_4 + 214, shuchusen5, 1.4, 1.4 );

setEffRotateKey( spep_4 -3 + 52, shuchusen5, 0 );
setEffRotateKey( spep_4 + 214, shuchusen5, 0 );

setEffAlphaKey( spep_4 -3 + 52, shuchusen5, 0 );
setEffAlphaKey( spep_4 -3 + 62, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 214, shuchusen5, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 52, 1, 0 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, -39.7, 101.5 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -32.6, 82.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -25.4, 63.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -18.3, 44.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -11.2, 25 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -10.7, 23.2 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -10.2, 21.3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -9.7, 19.5 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -9.1, 17.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -8.6, 15.8 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -8.1, 13.9 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -7.6, 12.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -7.1, 10.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -6.5, 8.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -6, 6.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -5.5, 4.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -5, 2.8 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -4.4, 1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -3.9, -0.9 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -3.4, -2.7 , 0 );
setMoveKey( spep_4 -3 + 42, 1, -2.9, -4.6 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -2.4, -6.4 , 0 );
setMoveKey( spep_4 -3 + 46, 1, -1.8, -8.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, -1.3, -10.1 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -0.8, -12 , 0 );
setMoveKey( spep_4 -3 + 52, 1, -0.8, -12 , 0 );

setScaleKey( spep_4 + 0, 1, 4.18, 4.18 );
setScaleKey( spep_4 -3 + 4, 1, 3.47, 3.47 );
setScaleKey( spep_4 -3 + 6, 1, 2.77, 2.77 );
setScaleKey( spep_4 -3 + 8, 1, 2.06, 2.06 );
setScaleKey( spep_4 -3 + 10, 1, 1.36, 1.36 );
setScaleKey( spep_4 -3 + 12, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 14, 1, 1.24, 1.24 );
setScaleKey( spep_4 -3 + 16, 1, 1.18, 1.18 );
setScaleKey( spep_4 -3 + 18, 1, 1.13, 1.13 );
setScaleKey( spep_4 -3 + 20, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 22, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 24, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 26, 1, 0.89, 0.89 );
setScaleKey( spep_4 -3 + 28, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 30, 1, 0.78, 0.78 );
setScaleKey( spep_4 -3 + 32, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 34, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 36, 1, 0.6, 0.6 );
setScaleKey( spep_4 -3 + 38, 1, 0.54, 0.54 );
setScaleKey( spep_4 -3 + 40, 1, 0.48, 0.48 );
setScaleKey( spep_4 -3 + 42, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 44, 1, 0.37, 0.37 );
setScaleKey( spep_4 -3 + 46, 1, 0.31, 0.31 );
setScaleKey( spep_4 -3 + 48, 1, 0.25, 0.25 );
setScaleKey( spep_4 -3 + 50, 1, 0.19, 0.19 );
setScaleKey( spep_4 -3 + 52, 1, 0.19, 0.19 );

setRotateKey( spep_4 + 0, 1, 20 );
setRotateKey( spep_4 -3 + 52, 1, 20 );

-- ** 音 ** --
--気弾近づく
setSeVolume( spep_4 + 0, 1212, 52 );
setSeVolume( spep_4 + 4, 1212, 68 );
setSeVolume( spep_4 + 7, 1212, 73 );
stopSe( spep_4 + 60, SE7, 0 );
stopSe( spep_4 + 60, SE8, 0 );

--爆発
playSe( spep_4 + 55, 1014 );
playSe( spep_4 + 55, 1023 );

--爆発前
playSe( spep_4 + 95, 1069 );
SE9 = playSe( spep_4 + 103, 1222 );
stopSe( spep_4 + 145, SE9, 17 );

--ラスト爆発
playSe( spep_4 + 149, 1159 );
playSe( spep_4 + 149, 1024 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 216, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 88 );
endPhase( spep_4 + 212 );

end