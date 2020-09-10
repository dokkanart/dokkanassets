--人造人間13号＿デッドリィクラッシュ(ドッカン後)

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
SP_01 = 154561; --登場〜14号15号動き出し
SP_02 = 154562; --連撃・手前
SP_03 = 154563; --連撃・奥
SP_04 = 154564; --構え
SP_05 = 154565; --発射
SP_06 = 154566; --着弾

--敵側
SP_02x = 154567; --連撃・手前
SP_03x = 154568; --連撃・奥

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
-- 登場〜14号15号動き出し(166F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
toujo = entryEffectLife( spep_0 + 0, SP_01, 166, 0x100, -1, 0, 0, 0 );  --登場〜14号15号動き出し(ef_001)
setEffMoveKey( spep_0 + 0, toujo, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, toujo, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, toujo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 166, toujo, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, toujo, 0 );
setEffRotateKey( spep_0 + 166, toujo, 0 );
setEffAlphaKey( spep_0 + 0, toujo, 255 );
setEffAlphaKey( spep_0 + 164, toujo, 255 );
setEffAlphaKey( spep_0 + 165, toujo, 255 );
setEffAlphaKey( spep_0 + 166, toujo, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 80 -3, 906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 80 -3, shuchusen1, 16, 20 );

setEffMoveKey( spep_0 + 80 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96 -3, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 80 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 96 -3, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 80 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 96 -3, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 80 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 90 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 96 -3, shuchusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 80 -3, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 0, 8 );  --登場

SE0 = playSe( spep_0 + 56, 44 );  --二人登場
setSeVolume( spep_0 + 56, 44, 75 );
stopSe(spep_0 + 96, SE0, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );

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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 + 116 -3, 906, 50 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 116 -3, shuchusen2, 50 +3, 20 );

setEffMoveKey( spep_0 + 116 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 + 116 -3, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_0 + 166, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_0 + 116 -3, shuchusen2, 0 );
setEffRotateKey( spep_0 + 166, shuchusen2, 0 );

setEffAlphaKey( spep_0 + 116 -3, shuchusen2, 0 );
setEffAlphaKey( spep_0 + 124 -3, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 164, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 165, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 166, shuchusen2, 0 );

-- ** 白フェード ** --
entryFade( spep_0 + 158, 6,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 96, 1016 );  --15号気弾発射
setSeVolume( spep_0 + 96, 1016, 90 );

SE2 = playSe( spep_0 + 96, 1177 );  --15号気弾発射

playSe( spep_0 + 127, 9 );  --ダッシュ
setSeVolume( spep_0 + 127, 9, 105 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 166;

------------------------------------------------------
-- 連撃(316F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02, 316, 0x100, -1, 0, 0, 0 );  --連撃(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 316, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 316, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 316, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 316, rush_f, 255 );

rush_b = entryEffectLife( spep_1 + 0, SP_03, 316, 0x80, -1, 0, 0, 0 );  --連撃(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 316, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 316, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 316, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 316, rush_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 214 -3, 906, 44 +1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 214 -3, shuchusen3, 44 +1, 20 );

setEffMoveKey( spep_1 + 214 -3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258 -3 +1, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 214 -3, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_1 + 258 -3 +1, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_1 + 214 -3, shuchusen3, 0 );
setEffRotateKey( spep_1 + 258 -3 +1, shuchusen3, 0 );

setEffAlphaKey( spep_1 + 214 -3, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 228 -3, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 258 -3 +1, shuchusen3, 180 );

-- ** 書き文字エントリー ** --
ctdoga = entryEffectLife( spep_1 -3 + 138,  10017, 50, 0x100, -1, 0, 65.7, 397.5 );  --ドガガ
setEffShake( spep_1 -3 + 148, ctdoga, 40, 20 );

setEffMoveKey( spep_1 -3 + 138, ctdoga, 65.7, 397.5 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctdoga, 1.8, 427.7 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctdoga, 4.7, 430.6 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctdoga, 26.9, 415.8 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctdoga, 30.7, 417.9 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctdoga, 52, 403.9 , 0 );
setEffMoveKey( spep_1 -3 + 188, ctdoga, 52, 403.9 , 0 );

setEffScaleKey( spep_1 -3 + 138, ctdoga, 2.47, 2.47 );
setEffScaleKey( spep_1 -3 + 140, ctdoga, 3.25, 3.25 );
setEffScaleKey( spep_1 -3 + 142, ctdoga, 3.1, 3.1 );
setEffScaleKey( spep_1 -3 + 144, ctdoga, 2.95, 2.95 );
setEffScaleKey( spep_1 -3 + 146, ctdoga, 2.79, 2.79 );
setEffScaleKey( spep_1 -3 + 148, ctdoga, 2.64, 2.64 );
setEffScaleKey( spep_1 -3 + 188, ctdoga, 2.64, 2.64 );

setEffRotateKey( spep_1 -3 + 138, ctdoga, -2.6 );
setEffRotateKey( spep_1 -3 + 188, ctdoga, -2.6 );

setEffAlphaKey( spep_1 -3 + 138, ctdoga, 255 );
setEffAlphaKey( spep_1 -3 + 180, ctdoga, 255 );
setEffAlphaKey( spep_1 -3 + 182, ctdoga, 191 );
setEffAlphaKey( spep_1 -3 + 184, ctdoga, 128 );
setEffAlphaKey( spep_1 -3 + 186, ctdoga, 64 );
setEffAlphaKey( spep_1 -3 + 188, ctdoga, 0 );

ctbaki = entryEffectLife( spep_1 -3 + 216,  10020, 24, 0x100, -1, 0, -36.2, 390.1 );  --バキッ
setEffShake( spep_1 -3 + 216, ctbaki, 24, 20 );

setEffMoveKey( spep_1 -3 + 216, ctbaki, -36.2, 390.1 , 0 );
setEffMoveKey( spep_1 -3 + 240, ctbaki, -36.1, 390.1 , 0 );

setEffScaleKey( spep_1 -3 + 216, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 218, ctbaki, 3.1, 3.1 );
setEffScaleKey( spep_1 -3 + 220, ctbaki, 2.6, 2.6 );
setEffScaleKey( spep_1 -3 + 222, ctbaki, 2.09, 2.09 );
setEffScaleKey( spep_1 -3 + 224, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 226, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_1 -3 + 228, ctbaki, 1.98, 1.98 );
setEffScaleKey( spep_1 -3 + 230, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 -3 + 232, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_1 -3 + 234, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 -3 + 236, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_1 -3 + 238, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_1 -3 + 240, ctbaki, 1.89, 1.89 );

setEffRotateKey( spep_1 -3 + 216, ctbaki, -4.7 );
setEffRotateKey( spep_1 -3 + 240, ctbaki, -4.7 );

setEffAlphaKey( spep_1 -3 + 216, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 234, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 236, ctbaki, 134 );
setEffAlphaKey( spep_1 -3 + 238, ctbaki, 13 );
setEffAlphaKey( spep_1 -3 + 240, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 99 -3, 1, 0 );
setDisp( spep_1 + 132 -3, 1, 1 );
setDisp( spep_1 + 244 -3, 1, 0 );
setDisp( spep_1 + 260 -3, 1, 1 );
setDisp( spep_1 + 286 -1, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 54, 1, 106 );
changeAnime( spep_1 -3 + 138, 1, 108 );
changeAnime( spep_1 -3 + 182, 1, 106 );
changeAnime( spep_1 -3 + 186, 1, 6 );
changeAnime( spep_1 -3 + 190, 1, 106 );
changeAnime( spep_1 -3 + 194, 1, 6 );
changeAnime( spep_1 -3 + 198, 1, 106 );
changeAnime( spep_1 -3 + 202, 1, 6 );
changeAnime( spep_1 -3 + 206, 1, 106 );
changeAnime( spep_1 -3 + 210, 1, 6 );
changeAnime( spep_1 -3 + 214, 1, 7 );
changeAnime( spep_1 -3 + 260, 1, 105 );

setMoveKey( spep_1 + 0, 1, -138.5, -123.2 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -113, -97.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -87.6, -67.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -62.2, -36.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -36.7, -5.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -11.3, 25.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 14.3, 50.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 39.7, 81.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 44, 84.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 48.2, 93.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 52.5, 96.6 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 56.7, 99.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 61, 103.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 65.1, 111.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 69.4, 115.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 73.7, 118.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 77.9, 127.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 82.2, 130.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 86.4, 134 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 90.6, 142.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 94.8, 146 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 99.1, 149.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 103.4, 152.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 107.6, 161.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 106.9, 151.9 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 128.7, 178 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 105.9, 183.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 113.2, 187.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 114.5, 180.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 119.8, 190.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 119.1, 190.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 126.3, 193.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 127.6, 189.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 132.9, 197.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 132.2, 196.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 139.5, 200.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 140.8, 198.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 146.1, 203.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 149.4, 205.4 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 152.7, 207.1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 156, 208.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 159.3, 210.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 162.6, 212.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 165.9, 213.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 373.7, 240.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 581.5, 267.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 789.2, 293.9 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 997.2, 320.7 , 0 );
setMoveKey( spep_1 -3 + 99, 1, 1205, 347.4 , 0 );

setMoveKey( spep_1 -3 + 132, 1, 588.3, 245.8 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 443.2, 209.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 298.2, 172.6 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 298.2, 172.6 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 174.5, 96.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 184, 109 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 177.8, 105.1 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 186.4, 111.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 177.8, 97 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 181.1, 113.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 170.5, 106.5 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 174.2, 109.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 164, 104.8 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 169, 112.2 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 160.4, 103.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 163.7, 114.5 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 155.1, 107.5 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 156.9, 111 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 146.7, 105.8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 151.6, 113.2 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 147.8, 105.8 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 146.4, 115.6 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 134.6, 108.6 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 139.2, 116 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 134.6, 109.7 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 134.3, 114.3 , 0 );
setMoveKey( spep_1 -3 + 181, 1, 134.3, 114.3 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 85.1, 113.5 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 99.9, 145.5 , 0 );
setMoveKey( spep_1 -3 + 185, 1, 99.9, 145.5 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 134.1, 126.1 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 132.8, 148.8 , 0 );
setMoveKey( spep_1 -3 + 189, 1, 132.8, 148.8 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 69.4, 164.4 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 65.8, 179.5 , 0 );
setMoveKey( spep_1 -3 + 193, 1, 65.8, 179.5 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 93.8, 142.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 95.8, 139.1 , 0 );
setMoveKey( spep_1 -3 + 197, 1, 95.8, 139.1 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 22.7, 165.2 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 12.5, 169.2 , 0 );
setMoveKey( spep_1 -3 + 201, 1, 12.5, 169.2 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 53.5, 135.2 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 41.7, 129.2 , 0 );
setMoveKey( spep_1 -3 + 205, 1, 41.7, 129.2 , 0 );
setMoveKey( spep_1 -3 + 206, 1, -25.6, 168.8 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -38.8, 166.7 , 0 );
setMoveKey( spep_1 -3 + 209, 1, -38.8, 166.7 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 10.2, 130.6 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 4.3, 130.6 , 0 );
setMoveKey( spep_1 -3 + 213, 1, 4.3, 130.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -31.4, -98 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -27.1, -58.6 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -46.3, -48.6 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -30, -45 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -37.5, -67.6 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -35.5, -55.8 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -51.1, -64.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -38.8, -60.8 , 0 );
setMoveKey( spep_1 -3 + 230, 1, -54.4, -71.3 , 0 );
setMoveKey( spep_1 -3 + 232, 1, -44.3, -71.4 , 0 );
setMoveKey( spep_1 -3 + 234, 1, -430.3, -570.4 , 0 );
setMoveKey( spep_1 -3 + 236, 1, -808, -1045.5 , 0 );
setMoveKey( spep_1 -3 + 238, 1, -1189.6, -1540.4 , 0 );
setMoveKey( spep_1 -3 + 240, 1, -1571.1, -2019.2 , 0 );
setMoveKey( spep_1 -3 + 242, 1, -1945.6, -2498.7 , 0 );
setMoveKey( spep_1 -3 + 244, 1, -2320.4, -2977.6 , 0 );

setMoveKey( spep_1 -3 + 260, 1, 198.3, -413.3 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 152.4, -265.6 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 110.4, -131.8 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 72.4, -11.7 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 62.3, -14.6 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 52.8, -16.7 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 47.3, -21 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 41.9, -25.3 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 39.4, -31.7 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 35.7, -34.7 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 32, -37.9 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 28.3, -41.1 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 24.6, -44.1 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 22.3, -50.2 , 0 );
setMoveKey( spep_1 -1 + 286, 1, 22.3, -50.2 , 0 );

setScaleKey( spep_1 -3 + 0, 1, 3.08, 3.08 );
setScaleKey( spep_1 -3 + 2, 1, 2.88, 2.88 );
setScaleKey( spep_1 -3 + 4, 1, 2.67, 2.67 );
setScaleKey( spep_1 -3 + 6, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 8, 1, 2.28, 2.28 );
setScaleKey( spep_1 -3 + 10, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 12, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 16, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 22, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 24, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 28, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 30, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 32, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 34, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 36, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 38, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 40, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 42, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 44, 1, 1.01, 1.01 );
setScaleKey( spep_1 -3 + 46, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 48, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 53, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 54, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 99, 1, 1.02, 1.02 );

setScaleKey( spep_1 -3 + 132, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 138, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 142, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 144, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 146, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 148, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 152, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 154, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 158, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 160, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 164, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 166, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 168, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 170, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 174, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 176, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 181, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 182, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 184, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 185, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 186, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 188, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 189, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 190, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 192, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 193, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 194, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 196, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 197, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 198, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 200, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 201, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 202, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 204, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 205, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 206, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 208, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 209, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 210, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 212, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 213, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 214, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 216, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 218, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 220, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 222, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 224, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 226, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 228, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 230, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 232, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 234, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 236, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 238, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 240, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 242, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 244, 1, 3.1, 3.1 );

setScaleKey( spep_1 -3 + 260, 1, 14.16, 14.16 );
setScaleKey( spep_1 -3 + 262, 1, 9.86, 9.86 );
setScaleKey( spep_1 -3 + 264, 1, 5.96, 5.96 );
setScaleKey( spep_1 -3 + 266, 1, 2.46, 2.46 );
setScaleKey( spep_1 -3 + 268, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 270, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 272, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 274, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 276, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 278, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 280, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 282, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 284, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 286, 1, 0.42, 0.42 );
setScaleKey( spep_1 -1 + 286, 1, 0.42, 0.42 );

setRotateKey( spep_1 -3 + 0, 1, -16 );
setRotateKey( spep_1 -3 + 48, 1, -16 );
setRotateKey( spep_1 -3 + 50, 1, -7.5 );
setRotateKey( spep_1 -3 + 53, 1, -1.5 );
setRotateKey( spep_1 -3 + 54, 1, -9.5 );
setRotateKey( spep_1 -3 + 56, 1, -9.1 );
setRotateKey( spep_1 -3 + 58, 1, -8.6 );
setRotateKey( spep_1 -3 + 60, 1, -8.2 );
setRotateKey( spep_1 -3 + 62, 1, -7.8 );
setRotateKey( spep_1 -3 + 64, 1, -7.3 );
setRotateKey( spep_1 -3 + 66, 1, -6.9 );
setRotateKey( spep_1 -3 + 68, 1, -6.5 );
setRotateKey( spep_1 -3 + 70, 1, -6 );
setRotateKey( spep_1 -3 + 72, 1, -5.6 );
setRotateKey( spep_1 -3 + 74, 1, -5.2 );
setRotateKey( spep_1 -3 + 76, 1, -4.7 );
setRotateKey( spep_1 -3 + 78, 1, -4.3 );
setRotateKey( spep_1 -3 + 80, 1, -3.9 );
setRotateKey( spep_1 -3 + 82, 1, -3.5 );
setRotateKey( spep_1 -3 + 84, 1, -3 );
setRotateKey( spep_1 -3 + 86, 1, -2.6 );
setRotateKey( spep_1 -3 + 88, 1, -2.2 );
setRotateKey( spep_1 -3 + 90, 1, -1.7 );
setRotateKey( spep_1 -3 + 92, 1, -1.3 );
setRotateKey( spep_1 -3 + 94, 1, -0.9 );
setRotateKey( spep_1 -3 + 96, 1, -0.4 );
setRotateKey( spep_1 -3 + 99, 1, 0 );

setRotateKey( spep_1 -3 + 132, 1, -9.5 );
setRotateKey( spep_1 -3 + 134, 1, -9.4 );
setRotateKey( spep_1 -3 + 136, 1, -9.3 );
setRotateKey( spep_1 -3 + 137, 1, -9.3 );
setRotateKey( spep_1 -3 + 138, 1, 0 );
setRotateKey( spep_1 -3 + 181, 1, 0 );
setRotateKey( spep_1 -3 + 182, 1, -34.4 );
setRotateKey( spep_1 -3 + 184, 1, -30.8 );
setRotateKey( spep_1 -3 + 185, 1, -30.8 );
setRotateKey( spep_1 -3 + 186, 1, 80.9 );
setRotateKey( spep_1 -3 + 188, 1, 83.7 );
setRotateKey( spep_1 -3 + 189, 1, 83.7 );
setRotateKey( spep_1 -3 + 190, 1, -23.6 );
setRotateKey( spep_1 -3 + 192, 1, -23.3 );
setRotateKey( spep_1 -3 + 193, 1, -23.3 );
setRotateKey( spep_1 -3 + 194, 1, 83.2 );
setRotateKey( spep_1 -3 + 196, 1, 85.9 );
setRotateKey( spep_1 -3 + 197, 1, 85.9 );
setRotateKey( spep_1 -3 + 198, 1, -22.8 );
setRotateKey( spep_1 -3 + 200, 1, -22.6 );
setRotateKey( spep_1 -3 + 201, 1, -22.6 );
setRotateKey( spep_1 -3 + 202, 1, 85.9 );
setRotateKey( spep_1 -3 + 204, 1, 86.2 );
setRotateKey( spep_1 -3 + 205, 1, 86.2 );
setRotateKey( spep_1 -3 + 206, 1, -21.8 );
setRotateKey( spep_1 -3 + 209, 1, -21.8 );
setRotateKey( spep_1 -3 + 210, 1, 85.7 );
setRotateKey( spep_1 -3 + 212, 1, 86.2 );
setRotateKey( spep_1 -3 + 213, 1, 86.2 );
setRotateKey( spep_1 -3 + 214, 1, 58.4 );
setRotateKey( spep_1 -3 + 216, 1, 58.2 );
setRotateKey( spep_1 -3 + 218, 1, 58.1 );
setRotateKey( spep_1 -3 + 220, 1, 57.9 );
setRotateKey( spep_1 -3 + 222, 1, 57.7 );
setRotateKey( spep_1 -3 + 224, 1, 57.6 );
setRotateKey( spep_1 -3 + 226, 1, 57.4 );
setRotateKey( spep_1 -3 + 228, 1, 57.2 );
setRotateKey( spep_1 -3 + 230, 1, 57.1 );
setRotateKey( spep_1 -3 + 232, 1, 56.9 );
setRotateKey( spep_1 -3 + 234, 1, 35.3 );
setRotateKey( spep_1 -3 + 236, 1, 13.7 );
setRotateKey( spep_1 -3 + 238, 1, -7.9 );
setRotateKey( spep_1 -3 + 240, 1, -29.5 );
setRotateKey( spep_1 -3 + 242, 1, -51.1 );
setRotateKey( spep_1 -3 + 244, 1, -72.7 );

setRotateKey( spep_1 -3 + 260, 1, 0 );
setRotateKey( spep_1 -1 + 286, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 316, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 50 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_1 + 214 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade

-- ** 音 ** --
stopSe(spep_1 + 22, SE2, 0 );

playSe( spep_1 + 0, 1021 );  --15号機弾
setSeVolume( spep_1 + 0, 1021, 0 );
setSeVolume( spep_1 + 11, 1021, 30 );
setSeVolume( spep_1 + 16, 1021, 60 );
setSeVolume( spep_1 + 22, 1021, 90 );

playSe( spep_1 + 55, 1023 );  --爆発

SE3 = playSe( spep_1 + 102, 8 );  --14号ダッシュ
setSeVolume( spep_1 + 102, 8, 110 );
setSeVolume( spep_1 + 131, 8, 100 );
setSeVolume( spep_1 + 138, 8, 50 );
setSeVolume( spep_1 + 146, 8, 0 );
stopSe( spep_1 + 146, SE3, 0 );

--ラッシュ
playSe( spep_1 + 138, 1189 );

SE4 = playSe( spep_1 + 141, 1153 );
setSeVolume( spep_1 + 141, 1153, 60 );
setSeVolume( spep_1 + 150, 1153, 60 );
setSeVolume( spep_1 + 154, 1153, 30 );
setSeVolume( spep_1 + 157, 1153, 0 );
stopSe( spep_1 + 157, SE4, 0 );

playSe( spep_1 + 149, 1000 );
playSe( spep_1 + 157, 1006 );
playSe( spep_1 + 161, 1189 );
playSe( spep_1 + 166, 1009 );
playSe( spep_1 + 171, 1000 );
setSeVolume( spep_1 + 171, 1000, 90 );
playSe( spep_1 + 172, 1189 );
playSe( spep_1 + 177, 1006 );
setSeVolume( spep_1 + 177, 1006, 90 );
playSe( spep_1 + 184, 1189 );
playSe( spep_1 + 189, 1009 );

playSe( spep_1 + 221, 1120 );  --パンチ
setSeVolume( spep_1 + 221, 1120, 86 );

SE5 = playSe( spep_1 + 228, 1121 );  --パンチ
stopSe( spep_1 + 297, SE5, 0 );

playSe( spep_1 + 292, 1033 );  --爆発
playSe( spep_1 + 292, 1011 );  --爆発

-- ** 次の準備 ** --
spep_2 = spep_1 + 316;

------------------------------------------------------
-- 構え(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_04, 126, 0x100, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 126, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 126, kamae, 255 );

spep_x = spep_2 + 14;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 46 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 126 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ゴゴゴ

--気弾貯め
SE6 = playSe( spep_2 + 18, 1191 );
setSeVolume( spep_2 + 18, 1191, 150 );

playSe( spep_2 + 73, 1192 );
setSeVolume( spep_2 + 73, 1192, 168 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 126;

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
stopSe( spep_3 + 0, SE6, 0 );

playSe( spep_3 + 0, SE_05 );  --カットイン

SE7 = playSe( spep_3 + 12, 1191 );  --気弾溜め
setSeVolume( spep_3 + 12, 1191, 0 );

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 発射(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 96, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 96, hassha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
setSeVolume( spep_4 + 0, 1191, 0 );
setSeVolume( spep_4 + 14, 1191, 60 );
setSeVolume( spep_4 + 16, 1191, 100 );
stopSe( spep_4 + 89, SE7, 0 );

playSe( spep_4 + 31, 1202 );
setSeVolume( spep_4 + 31, 1202, 130 );

SE8 = playSe( spep_4 + 31, 1194 );
setSeVolume( spep_4 + 31, 1194, 120 );

SE9 = playSe( spep_4 + 77, 1193 );  --気弾連射
setSeVolume( spep_4 + 77, 1193, 290 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;

------------------------------------------------------
-- フィニッシュ(154F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_006)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 156, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 156, finish, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 66 -3, 906, 90 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 66 -3, shuchusen4, 90 +3, 20 );

setEffMoveKey( spep_5 + 66 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 66 -3, shuchusen4, 1.4, 1.4 );
setEffScaleKey( spep_5 + 156, shuchusen4, 1.4, 1.4 );

setEffRotateKey( spep_5 + 66 -3, shuchusen4, 0 );
setEffRotateKey( spep_5 + 156, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 66 -3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 156, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 156, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 34 -3, 30, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_5 + 34, SE8, 0 );

--気弾発射
setSeVolume( spep_5 + 5, 1193, 290 );
setSeVolume( spep_5 + 6, 1193, 141 );
setSeVolume( spep_5 + 42, 1193, 141 );
setSeVolume( spep_5 + 48, 1193, 100 );
setSeVolume( spep_5 + 56, 1193, 70 );
setSeVolume( spep_5 + 62, 1193, 40 );
setSeVolume( spep_5 + 65, 1193, 0 );
stopSe( spep_5 + 65, SE9, 0 );

--叩きつけ
SE10 = playSe( spep_5 + 29, 1153 );
setSeVolume( spep_5 + 29, 1153, 70 );
setSeVolume( spep_5 + 39, 1153, 60 );
setSeVolume( spep_5 + 44, 1153, 30 );
setSeVolume( spep_5 + 47, 1153, 0 );
stopSe( spep_5 + 47, SE10, 0 );

playSe( spep_5 + 35, 1023 );
setSeVolume( spep_5 + 35, 1023, 80 );

playSe( spep_5 + 35, 20 );
setSeVolume( spep_5 + 35, 20, 90 );

playSe( spep_5 + 79, 1159 );  --爆発
setSeVolume( spep_5 + 79, 1159, 90 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 52 );
endPhase( spep_5 + 152 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場〜14号15号動き出し(166F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
toujo = entryEffectLife( spep_0 + 0, SP_01, 166, 0x100, -1, 0, 0, 0 );  --登場〜14号15号動き出し(ef_001)
setEffMoveKey( spep_0 + 0, toujo, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, toujo, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, toujo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 166, toujo, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, toujo, 0 );
setEffRotateKey( spep_0 + 166, toujo, 0 );
setEffAlphaKey( spep_0 + 0, toujo, 255 );
setEffAlphaKey( spep_0 + 164, toujo, 255 );
setEffAlphaKey( spep_0 + 165, toujo, 255 );
setEffAlphaKey( spep_0 + 166, toujo, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 80 -3, 906, 16, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 80 -3, shuchusen1, 16, 20 );

setEffMoveKey( spep_0 + 80 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96 -3, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 80 -3, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 96 -3, shuchusen1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 80 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 96 -3, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 80 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 90 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 96 -3, shuchusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 168, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0,  2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_0 + 80 -3, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 0, 8 );  --登場

SE0 = playSe( spep_0 + 56, 44 );  --二人登場
setSeVolume( spep_0 + 56, 44, 75 );
stopSe(spep_0 + 96, SE0, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );

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

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_0 + 116 -3, 906, 50 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 116 -3, shuchusen2, 50 +3, 20 );

setEffMoveKey( spep_0 + 116 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 166, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 + 116 -3, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_0 + 166, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_0 + 116 -3, shuchusen2, 0 );
setEffRotateKey( spep_0 + 166, shuchusen2, 0 );

setEffAlphaKey( spep_0 + 116 -3, shuchusen2, 0 );
setEffAlphaKey( spep_0 + 124 -3, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 164, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 165, shuchusen2, 255 );
setEffAlphaKey( spep_0 + 166, shuchusen2, 0 );

-- ** 白フェード ** --
entryFade( spep_0 + 158, 6,  2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
playSe( spep_0 + 96, 1016 );  --15号気弾発射
setSeVolume( spep_0 + 96, 1016, 90 );

SE2 = playSe( spep_0 + 96, 1177 );  --15号気弾発射

playSe( spep_0 + 127, 9 );  --ダッシュ
setSeVolume( spep_0 + 127, 9, 105 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 166;

------------------------------------------------------
-- 連撃(316F)
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffectLife( spep_1 + 0, SP_02x, 316, 0x100, -1, 0, 0, 0 );  --連撃(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 316, rush_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 316, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 316, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 316, rush_f, 255 );

rush_b = entryEffectLife( spep_1 + 0, SP_03x, 316, 0x80, -1, 0, 0, 0 );  --連撃(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 316, rush_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 316, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 316, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 316, rush_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_1 + 214 -3, 906, 44 +1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 214 -3, shuchusen3, 44 +1, 20 );

setEffMoveKey( spep_1 + 214 -3, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 + 258 -3 +1, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 + 214 -3, shuchusen3, 1.4, 1.4 );
setEffScaleKey( spep_1 + 258 -3 +1, shuchusen3, 1.4, 1.4 );

setEffRotateKey( spep_1 + 214 -3, shuchusen3, 0 );
setEffRotateKey( spep_1 + 258 -3 +1, shuchusen3, 0 );

setEffAlphaKey( spep_1 + 214 -3, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 228 -3, shuchusen3, 255 );
setEffAlphaKey( spep_1 + 258 -3 +1, shuchusen3, 180 );


-- ** 書き文字エントリー ** --
ctdoga = entryEffectLife( spep_1 -3 + 138,  10017, 50, 0x100, -1, 0, 65.7, 397.5 );  --ドガガ
setEffShake( spep_1 -3 + 148, ctdoga, 40, 20 );

setEffMoveKey( spep_1 -3 + 138, ctdoga, 65.7, 397.5 , 0 );
setEffMoveKey( spep_1 -3 + 140, ctdoga, 1.8, 427.7 , 0 );
setEffMoveKey( spep_1 -3 + 142, ctdoga, 4.7, 430.6 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctdoga, 26.9, 415.8 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctdoga, 30.7, 417.9 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctdoga, 52, 403.9 , 0 );
setEffMoveKey( spep_1 -3 + 188, ctdoga, 52, 403.9 , 0 );

setEffScaleKey( spep_1 -3 + 138, ctdoga, 2.47, 2.47 );
setEffScaleKey( spep_1 -3 + 140, ctdoga, 3.25, 3.25 );
setEffScaleKey( spep_1 -3 + 142, ctdoga, 3.1, 3.1 );
setEffScaleKey( spep_1 -3 + 144, ctdoga, 2.95, 2.95 );
setEffScaleKey( spep_1 -3 + 146, ctdoga, 2.79, 2.79 );
setEffScaleKey( spep_1 -3 + 148, ctdoga, 2.64, 2.64 );
setEffScaleKey( spep_1 -3 + 188, ctdoga, 2.64, 2.64 );

setEffRotateKey( spep_1 -3 + 138, ctdoga, -2.6 );
setEffRotateKey( spep_1 -3 + 188, ctdoga, -2.6 );

setEffAlphaKey( spep_1 -3 + 138, ctdoga, 255 );
setEffAlphaKey( spep_1 -3 + 180, ctdoga, 255 );
setEffAlphaKey( spep_1 -3 + 182, ctdoga, 191 );
setEffAlphaKey( spep_1 -3 + 184, ctdoga, 128 );
setEffAlphaKey( spep_1 -3 + 186, ctdoga, 64 );
setEffAlphaKey( spep_1 -3 + 188, ctdoga, 0 );

ctbaki = entryEffectLife( spep_1 -3 + 216,  10020, 24, 0x100, -1, 0, -36.2, 390.1 );  --バキッ
setEffShake( spep_1 -3 + 216, ctbaki, 24, 20 );

setEffMoveKey( spep_1 -3 + 216, ctbaki, -36.2, 390.1 , 0 );
setEffMoveKey( spep_1 -3 + 240, ctbaki, -36.1, 390.1 , 0 );

setEffScaleKey( spep_1 -3 + 216, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 218, ctbaki, 3.1, 3.1 );
setEffScaleKey( spep_1 -3 + 220, ctbaki, 2.6, 2.6 );
setEffScaleKey( spep_1 -3 + 222, ctbaki, 2.09, 2.09 );
setEffScaleKey( spep_1 -3 + 224, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 226, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_1 -3 + 228, ctbaki, 1.98, 1.98 );
setEffScaleKey( spep_1 -3 + 230, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 -3 + 232, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_1 -3 + 234, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 -3 + 236, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_1 -3 + 238, ctbaki, 1.89, 1.89 );
setEffScaleKey( spep_1 -3 + 240, ctbaki, 1.89, 1.89 );

setEffRotateKey( spep_1 -3 + 216, ctbaki, -4.7 );
setEffRotateKey( spep_1 -3 + 240, ctbaki, -4.7 );

setEffAlphaKey( spep_1 -3 + 216, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 234, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 236, ctbaki, 134 );
setEffAlphaKey( spep_1 -3 + 238, ctbaki, 13 );
setEffAlphaKey( spep_1 -3 + 240, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 99 -3, 1, 0 );
setDisp( spep_1 + 132 -3, 1, 1 );
setDisp( spep_1 + 244 -3, 1, 0 );
setDisp( spep_1 + 260 -3, 1, 1 );
setDisp( spep_1 + 286 -1, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1 -3 + 54, 1, 106 );
changeAnime( spep_1 -3 + 138, 1, 108 );
changeAnime( spep_1 -3 + 182, 1, 106 );
changeAnime( spep_1 -3 + 186, 1, 6 );
changeAnime( spep_1 -3 + 190, 1, 106 );
changeAnime( spep_1 -3 + 194, 1, 6 );
changeAnime( spep_1 -3 + 198, 1, 106 );
changeAnime( spep_1 -3 + 202, 1, 6 );
changeAnime( spep_1 -3 + 206, 1, 106 );
changeAnime( spep_1 -3 + 210, 1, 6 );
changeAnime( spep_1 -3 + 214, 1, 7 );
changeAnime( spep_1 -3 + 260, 1, 105 );

setMoveKey( spep_1 + 0, 1, -138.5, -123.2 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -113, -97.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -87.6, -67.1 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -62.2, -36.3 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -36.7, -5.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -11.3, 25.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 14.3, 50.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 39.7, 81.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 44, 84.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 48.2, 93.2 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 52.5, 96.6 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 56.7, 99.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 61, 103.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 65.1, 111.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 69.4, 115.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 73.7, 118.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 77.9, 127.2 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 82.2, 130.7 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 86.4, 134 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 90.6, 142.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 94.8, 146 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 99.1, 149.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 103.4, 152.6 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 107.6, 161.3 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 106.9, 151.9 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 128.7, 178 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 105.9, 183.4 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 113.2, 187.1 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 114.5, 180.7 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 119.8, 190.4 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 119.1, 190.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 126.3, 193.8 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 127.6, 189.4 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 132.9, 197.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 132.2, 196.8 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 139.5, 200.4 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 140.8, 198.1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 146.1, 203.8 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 149.4, 205.4 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 152.7, 207.1 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 156, 208.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 159.3, 210.5 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 162.6, 212.1 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 165.9, 213.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 373.7, 240.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 581.5, 267.2 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 789.2, 293.9 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 997.2, 320.7 , 0 );
setMoveKey( spep_1 -3 + 99, 1, 1205, 347.4 , 0 );

setMoveKey( spep_1 -3 + 132, 1, 588.3, 245.8 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 443.2, 209.2 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 298.2, 172.6 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 298.2, 172.6 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 174.5, 96.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 184, 109 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 177.8, 105.1 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 186.4, 111.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 177.8, 97 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 181.1, 113.5 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 170.5, 106.5 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 174.2, 109.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 164, 104.8 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 169, 112.2 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 160.4, 103.1 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 163.7, 114.5 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 155.1, 107.5 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 156.9, 111 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 146.7, 105.8 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 151.6, 113.2 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 147.8, 105.8 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 146.4, 115.6 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 134.6, 108.6 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 139.2, 116 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 134.6, 109.7 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 134.3, 114.3 , 0 );
setMoveKey( spep_1 -3 + 181, 1, 134.3, 114.3 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 85.1, 113.5 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 99.9, 145.5 , 0 );
setMoveKey( spep_1 -3 + 185, 1, 99.9, 145.5 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 134.1, 126.1 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 132.8, 148.8 , 0 );
setMoveKey( spep_1 -3 + 189, 1, 132.8, 148.8 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 69.4, 164.4 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 65.8, 179.5 , 0 );
setMoveKey( spep_1 -3 + 193, 1, 65.8, 179.5 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 93.8, 142.7 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 95.8, 139.1 , 0 );
setMoveKey( spep_1 -3 + 197, 1, 95.8, 139.1 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 22.7, 165.2 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 12.5, 169.2 , 0 );
setMoveKey( spep_1 -3 + 201, 1, 12.5, 169.2 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 53.5, 135.2 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 41.7, 129.2 , 0 );
setMoveKey( spep_1 -3 + 205, 1, 41.7, 129.2 , 0 );
setMoveKey( spep_1 -3 + 206, 1, -25.6, 168.8 , 0 );
setMoveKey( spep_1 -3 + 208, 1, -38.8, 166.7 , 0 );
setMoveKey( spep_1 -3 + 209, 1, -38.8, 166.7 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 10.2, 130.6 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 4.3, 130.6 , 0 );
setMoveKey( spep_1 -3 + 213, 1, 4.3, 130.6 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -31.4, -98 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -27.1, -58.6 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -46.3, -48.6 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -30, -45 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -37.5, -67.6 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -35.5, -55.8 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -51.1, -64.3 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -38.8, -60.8 , 0 );
setMoveKey( spep_1 -3 + 230, 1, -54.4, -71.3 , 0 );
setMoveKey( spep_1 -3 + 232, 1, -44.3, -71.4 , 0 );
setMoveKey( spep_1 -3 + 234, 1, -430.3, -570.4 , 0 );
setMoveKey( spep_1 -3 + 236, 1, -808, -1045.5 , 0 );
setMoveKey( spep_1 -3 + 238, 1, -1189.6, -1540.4 , 0 );
setMoveKey( spep_1 -3 + 240, 1, -1571.1, -2019.2 , 0 );
setMoveKey( spep_1 -3 + 242, 1, -1945.6, -2498.7 , 0 );
setMoveKey( spep_1 -3 + 244, 1, -2320.4, -2977.6 , 0 );

setMoveKey( spep_1 -3 + 260, 1, 198.3, -413.3 , 0 );
setMoveKey( spep_1 -3 + 262, 1, 152.4, -265.6 , 0 );
setMoveKey( spep_1 -3 + 264, 1, 110.4, -131.8 , 0 );
setMoveKey( spep_1 -3 + 266, 1, 72.4, -11.7 , 0 );
setMoveKey( spep_1 -3 + 268, 1, 62.3, -14.6 , 0 );
setMoveKey( spep_1 -3 + 270, 1, 52.8, -16.7 , 0 );
setMoveKey( spep_1 -3 + 272, 1, 47.3, -21 , 0 );
setMoveKey( spep_1 -3 + 274, 1, 41.9, -25.3 , 0 );
setMoveKey( spep_1 -3 + 276, 1, 39.4, -31.7 , 0 );
setMoveKey( spep_1 -3 + 278, 1, 35.7, -34.7 , 0 );
setMoveKey( spep_1 -3 + 280, 1, 32, -37.9 , 0 );
setMoveKey( spep_1 -3 + 282, 1, 28.3, -41.1 , 0 );
setMoveKey( spep_1 -3 + 284, 1, 24.6, -44.1 , 0 );
setMoveKey( spep_1 -3 + 286, 1, 22.3, -50.2 , 0 );
setMoveKey( spep_1 -1 + 286, 1, 22.3, -50.2 , 0 );

setScaleKey( spep_1 -3 + 0, 1, 3.08, 3.08 );
setScaleKey( spep_1 -3 + 2, 1, 2.88, 2.88 );
setScaleKey( spep_1 -3 + 4, 1, 2.67, 2.67 );
setScaleKey( spep_1 -3 + 6, 1, 2.47, 2.47 );
setScaleKey( spep_1 -3 + 8, 1, 2.28, 2.28 );
setScaleKey( spep_1 -3 + 10, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 12, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 14, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 16, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 18, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 20, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 22, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 24, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 28, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 30, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 32, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 34, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 36, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 38, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 40, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 42, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 44, 1, 1.01, 1.01 );
setScaleKey( spep_1 -3 + 46, 1, 0.97, 0.97 );
setScaleKey( spep_1 -3 + 48, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 53, 1, 0.95, 0.95 );
setScaleKey( spep_1 -3 + 54, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 99, 1, 1.02, 1.02 );

setScaleKey( spep_1 -3 + 132, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 138, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 142, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 144, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 146, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 148, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 152, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 154, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 158, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 160, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 164, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 166, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 168, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 170, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 174, 1, 1.11, 1.11 );
setScaleKey( spep_1 -3 + 176, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 181, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 182, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 184, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 185, 1, 1.2, 1.2 );
setScaleKey( spep_1 -3 + 186, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 188, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 189, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 190, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 192, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 193, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 194, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 196, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 197, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 198, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 200, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 201, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 202, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 204, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 205, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 206, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 208, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 209, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 210, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 212, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 213, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 214, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 216, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 218, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 220, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 222, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 224, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 226, 1, 1.07, 1.07 );
setScaleKey( spep_1 -3 + 228, 1, 1.08, 1.08 );
setScaleKey( spep_1 -3 + 230, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 232, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 234, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 236, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 238, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 240, 1, 2.44, 2.44 );
setScaleKey( spep_1 -3 + 242, 1, 2.76, 2.76 );
setScaleKey( spep_1 -3 + 244, 1, 3.1, 3.1 );

setScaleKey( spep_1 -3 + 260, 1, 14.16, 14.16 );
setScaleKey( spep_1 -3 + 262, 1, 9.86, 9.86 );
setScaleKey( spep_1 -3 + 264, 1, 5.96, 5.96 );
setScaleKey( spep_1 -3 + 266, 1, 2.46, 2.46 );
setScaleKey( spep_1 -3 + 268, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 270, 1, 1.72, 1.72 );
setScaleKey( spep_1 -3 + 272, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 274, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 276, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 278, 1, 0.99, 0.99 );
setScaleKey( spep_1 -3 + 280, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 282, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 284, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 286, 1, 0.42, 0.42 );
setScaleKey( spep_1 -1 + 286, 1, 0.42, 0.42 );

setRotateKey( spep_1 -3 + 0, 1, -16 );
setRotateKey( spep_1 -3 + 48, 1, -16 );
setRotateKey( spep_1 -3 + 50, 1, -7.5 );
setRotateKey( spep_1 -3 + 53, 1, -1.5 );
setRotateKey( spep_1 -3 + 54, 1, -9.5 );
setRotateKey( spep_1 -3 + 56, 1, -9.1 );
setRotateKey( spep_1 -3 + 58, 1, -8.6 );
setRotateKey( spep_1 -3 + 60, 1, -8.2 );
setRotateKey( spep_1 -3 + 62, 1, -7.8 );
setRotateKey( spep_1 -3 + 64, 1, -7.3 );
setRotateKey( spep_1 -3 + 66, 1, -6.9 );
setRotateKey( spep_1 -3 + 68, 1, -6.5 );
setRotateKey( spep_1 -3 + 70, 1, -6 );
setRotateKey( spep_1 -3 + 72, 1, -5.6 );
setRotateKey( spep_1 -3 + 74, 1, -5.2 );
setRotateKey( spep_1 -3 + 76, 1, -4.7 );
setRotateKey( spep_1 -3 + 78, 1, -4.3 );
setRotateKey( spep_1 -3 + 80, 1, -3.9 );
setRotateKey( spep_1 -3 + 82, 1, -3.5 );
setRotateKey( spep_1 -3 + 84, 1, -3 );
setRotateKey( spep_1 -3 + 86, 1, -2.6 );
setRotateKey( spep_1 -3 + 88, 1, -2.2 );
setRotateKey( spep_1 -3 + 90, 1, -1.7 );
setRotateKey( spep_1 -3 + 92, 1, -1.3 );
setRotateKey( spep_1 -3 + 94, 1, -0.9 );
setRotateKey( spep_1 -3 + 96, 1, -0.4 );
setRotateKey( spep_1 -3 + 99, 1, 0 );

setRotateKey( spep_1 -3 + 132, 1, -9.5 );
setRotateKey( spep_1 -3 + 134, 1, -9.4 );
setRotateKey( spep_1 -3 + 136, 1, -9.3 );
setRotateKey( spep_1 -3 + 137, 1, -9.3 );
setRotateKey( spep_1 -3 + 138, 1, 0 );
setRotateKey( spep_1 -3 + 181, 1, 0 );
setRotateKey( spep_1 -3 + 182, 1, -34.4 );
setRotateKey( spep_1 -3 + 184, 1, -30.8 );
setRotateKey( spep_1 -3 + 185, 1, -30.8 );
setRotateKey( spep_1 -3 + 186, 1, 80.9 );
setRotateKey( spep_1 -3 + 188, 1, 83.7 );
setRotateKey( spep_1 -3 + 189, 1, 83.7 );
setRotateKey( spep_1 -3 + 190, 1, -23.6 );
setRotateKey( spep_1 -3 + 192, 1, -23.3 );
setRotateKey( spep_1 -3 + 193, 1, -23.3 );
setRotateKey( spep_1 -3 + 194, 1, 83.2 );
setRotateKey( spep_1 -3 + 196, 1, 85.9 );
setRotateKey( spep_1 -3 + 197, 1, 85.9 );
setRotateKey( spep_1 -3 + 198, 1, -22.8 );
setRotateKey( spep_1 -3 + 200, 1, -22.6 );
setRotateKey( spep_1 -3 + 201, 1, -22.6 );
setRotateKey( spep_1 -3 + 202, 1, 85.9 );
setRotateKey( spep_1 -3 + 204, 1, 86.2 );
setRotateKey( spep_1 -3 + 205, 1, 86.2 );
setRotateKey( spep_1 -3 + 206, 1, -21.8 );
setRotateKey( spep_1 -3 + 209, 1, -21.8 );
setRotateKey( spep_1 -3 + 210, 1, 85.7 );
setRotateKey( spep_1 -3 + 212, 1, 86.2 );
setRotateKey( spep_1 -3 + 213, 1, 86.2 );
setRotateKey( spep_1 -3 + 214, 1, 58.4 );
setRotateKey( spep_1 -3 + 216, 1, 58.2 );
setRotateKey( spep_1 -3 + 218, 1, 58.1 );
setRotateKey( spep_1 -3 + 220, 1, 57.9 );
setRotateKey( spep_1 -3 + 222, 1, 57.7 );
setRotateKey( spep_1 -3 + 224, 1, 57.6 );
setRotateKey( spep_1 -3 + 226, 1, 57.4 );
setRotateKey( spep_1 -3 + 228, 1, 57.2 );
setRotateKey( spep_1 -3 + 230, 1, 57.1 );
setRotateKey( spep_1 -3 + 232, 1, 56.9 );
setRotateKey( spep_1 -3 + 234, 1, 35.3 );
setRotateKey( spep_1 -3 + 236, 1, 13.7 );
setRotateKey( spep_1 -3 + 238, 1, -7.9 );
setRotateKey( spep_1 -3 + 240, 1, -29.5 );
setRotateKey( spep_1 -3 + 242, 1, -51.1 );
setRotateKey( spep_1 -3 + 244, 1, -72.7 );

setRotateKey( spep_1 -3 + 260, 1, 0 );
setRotateKey( spep_1 -1 + 286, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 316, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 50 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_1 + 214 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade

-- ** 音 ** --
stopSe(spep_1 + 22, SE2, 0 );

playSe( spep_1 + 0, 1021 );  --15号機弾
setSeVolume( spep_1 + 0, 1021, 0 );
setSeVolume( spep_1 + 11, 1021, 30 );
setSeVolume( spep_1 + 16, 1021, 60 );
setSeVolume( spep_1 + 22, 1021, 90 );

playSe( spep_1 + 55, 1023 );  --爆発

SE3 = playSe( spep_1 + 102, 8 );  --14号ダッシュ
setSeVolume( spep_1 + 102, 8, 110 );
setSeVolume( spep_1 + 131, 8, 100 );
setSeVolume( spep_1 + 138, 8, 50 );
setSeVolume( spep_1 + 146, 8, 0 );
stopSe( spep_1 + 146, SE3, 0 );

--ラッシュ
playSe( spep_1 + 138, 1189 );

SE4 = playSe( spep_1 + 141, 1153 );
setSeVolume( spep_1 + 141, 1153, 60 );
setSeVolume( spep_1 + 150, 1153, 60 );
setSeVolume( spep_1 + 154, 1153, 30 );
setSeVolume( spep_1 + 157, 1153, 0 );
stopSe( spep_1 + 157, SE4, 0 );

playSe( spep_1 + 149, 1000 );
playSe( spep_1 + 157, 1006 );
playSe( spep_1 + 161, 1189 );
playSe( spep_1 + 166, 1009 );
playSe( spep_1 + 171, 1000 );
setSeVolume( spep_1 + 171, 1000, 90 );
playSe( spep_1 + 172, 1189 );
playSe( spep_1 + 177, 1006 );
setSeVolume( spep_1 + 177, 1006, 90 );
playSe( spep_1 + 184, 1189 );
playSe( spep_1 + 189, 1009 );

playSe( spep_1 + 221, 1120 );  --パンチ
setSeVolume( spep_1 + 221, 1120, 86 );

SE5 = playSe( spep_1 + 228, 1121 );  --パンチ
stopSe( spep_1 + 297, SE5, 0 );

playSe( spep_1 + 292, 1033 );  --爆発
playSe( spep_1 + 292, 1011 );  --爆発

-- ** 次の準備 ** --
spep_2 = spep_1 + 316;

------------------------------------------------------
-- 構え(126F)
------------------------------------------------------

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_2 + 0, SP_04, 126, 0x100, -1, 0, 0, 0 );  --構え(ef_004)
setEffMoveKey( spep_2 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, kamae, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_2 + 126, kamae, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 126, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 126, kamae, 255 );

spep_x = spep_2 + 14;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 128, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 46 -3, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 200 );  --white fade
entryFade( spep_2 + 126 -8, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_x + 16, 1018 );  --ゴゴゴ

--気弾貯め
SE6 = playSe( spep_2 + 18, 1191 );
setSeVolume( spep_2 + 18, 1191, 150 );

playSe( spep_2 + 73, 1192 );
setSeVolume( spep_2 + 73, 1192, 168 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 126;

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
stopSe( spep_3 + 0, SE6, 0 );

playSe( spep_3 + 0, SE_05 );  --カットイン

SE7 = playSe( spep_3 + 12, 1191 );  --気弾溜め
setSeVolume( spep_3 + 12, 1191, 0 );

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 発射(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_4 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_4 + 96, hassha, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 96, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 96, hassha, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め
setSeVolume( spep_4 + 0, 1191, 0 );
setSeVolume( spep_4 + 14, 1191, 60 );
setSeVolume( spep_4 + 16, 1191, 100 );
stopSe( spep_4 + 89, SE7, 0 );

playSe( spep_4 + 31, 1202 );
setSeVolume( spep_4 + 31, 1202, 130 );

SE8 = playSe( spep_4 + 31, 1194 );
setSeVolume( spep_4 + 31, 1194, 120 );

SE9 = playSe( spep_4 + 77, 1193 );  --気弾連射
setSeVolume( spep_4 + 77, 1193, 290 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 96;

------------------------------------------------------
-- フィニッシュ(154F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --フィニッシュ(ef_006)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 156, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 156, finish, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 66 -3, 906, 90 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 66 -3, shuchusen4, 90 +3, 20 );

setEffMoveKey( spep_5 + 66 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 66 -3, shuchusen4, 1.4, 1.4 );
setEffScaleKey( spep_5 + 156, shuchusen4, 1.4, 1.4 );

setEffRotateKey( spep_5 + 66 -3, shuchusen4, 0 );
setEffRotateKey( spep_5 + 156, shuchusen4, 0 );

setEffAlphaKey( spep_5 + 66 -3, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 156, shuchusen4, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 156, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 34 -3, 30, 2, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
stopSe( spep_5 + 34, SE8, 0 );

--気弾発射
setSeVolume( spep_5 + 5, 1193, 290 );
setSeVolume( spep_5 + 6, 1193, 141 );
setSeVolume( spep_5 + 42, 1193, 141 );
setSeVolume( spep_5 + 48, 1193, 100 );
setSeVolume( spep_5 + 56, 1193, 70 );
setSeVolume( spep_5 + 62, 1193, 40 );
setSeVolume( spep_5 + 65, 1193, 0 );
stopSe( spep_5 + 65, SE9, 0 );

--叩きつけ
SE10 = playSe( spep_5 + 29, 1153 );
setSeVolume( spep_5 + 29, 1153, 70 );
setSeVolume( spep_5 + 39, 1153, 60 );
setSeVolume( spep_5 + 44, 1153, 30 );
setSeVolume( spep_5 + 47, 1153, 0 );
stopSe( spep_5 + 47, SE10, 0 );

playSe( spep_5 + 35, 1023 );
setSeVolume( spep_5 + 35, 1023, 80 );

playSe( spep_5 + 35, 20 );
setSeVolume( spep_5 + 35, 20, 90 );

playSe( spep_5 + 79, 1159 );  --爆発
setSeVolume( spep_5 + 79, 1159, 90 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 52 );
endPhase( spep_5 + 152 );

end