--ザマス(孫悟空)_ブラックパワーボール

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
SP_01 = 154914; --導入、突進
SP_02 = 154915; --突進、格闘：キャラ
SP_03 = 154916; --突進、格闘：背景
SP_04 = 154917; --気弾溜め
SP_05 = 154918; --気弾発射
SP_06 = 154919; --ラスト：気弾
SP_07 = 154920; --ラスト；背景
SP_08 = 154921; --ラスト；爆発エフェクト

--敵側
SP_02x = 154922; --突進、格闘：キャラ

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
-- 導入、突進(106F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --導入、突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 106, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 106, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 106, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 60 -3, 906, 46 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 60 -3, shuchusen1, 46 +3, 20 );

setEffMoveKey( spep_0 + 60 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 60 -3, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 106, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 60 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 106, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 60 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 105, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 106, shuchusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );

--前方ダッシュ
SE0 = playSe( spep_0 + 53, 9 );
SE1 = playSe( spep_0 + 62, 1183 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );

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
------------------------------------------------------
-- 突進、格闘(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --突進、格闘：キャラ(ef_002)
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 186, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 186, attack_f, 255 );

attack_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --突進、格闘：背景(ef_003)
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 186, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 186, attack_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 140 -3, 906, 46 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 140 -3, shuchusen2, 46 +3, 20 );

setEffMoveKey( spep_1 + 140 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 140 -3, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 + 186, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_1 + 140 -3, shuchusen2, 0 );
setEffRotateKey( spep_1 + 186, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 140 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 186, shuchusen2, 255 );

-- ** 書き文字 ** --
ctbaki = entryEffectLife( spep_1 -3 + 60,  10020, 18, 0x100, -1, 0, -87.8, 334.2 );  --バキッ
setEffMoveKey( spep_1 -3 + 60, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctbaki, -100.1, 342.1 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_1 -3 + 60, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 -3 + 62, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 -3 + 64, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1 -3 + 66, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 -3 + 68, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1 -3 + 70, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 72, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 74, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 -3 + 76, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 -3 + 78, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 -3 + 60, ctbaki, -12.4 );
setEffRotateKey( spep_1 -3 + 78, ctbaki, -12.4 );

setEffAlphaKey( spep_1 -3 + 60, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 74, ctbaki, 174 );
setEffAlphaKey( spep_1 -3 + 76, ctbaki, 94 );
setEffAlphaKey( spep_1 -3 + 78, ctbaki, 13 );

ctdon = entryEffectLife( spep_1 -3 + 74,  10019, 16, 0x100, -1, 0, 139.7, 293.8 );  --ドンッ
setEffMoveKey( spep_1 -3 + 74, ctdon, 139.7, 293.8 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctdon, 146.4, 280.3 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctdon, 136.3, 251.9 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctdon, 129.7, 241.8 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdon, 136.2, 252.8 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctdon, 128.8, 250.7 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctdon, 129.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctdon, 127.6, 269.2 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdon, 125.7, 277 , 0 );

setEffScaleKey( spep_1 -3 + 74, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 76, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_1 -3 + 78, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 -3 + 80, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_1 -3 + 84, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_1 -3 + 86, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_1 -3 + 90, ctdon, 1.85, 1.85 );

setEffRotateKey( spep_1 -3 + 74, ctdon, 30 );
setEffRotateKey( spep_1 -3 + 90, ctdon, 30 );

setEffAlphaKey( spep_1 -3 + 74, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 80, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 82, ctdon, 204 );
setEffAlphaKey( spep_1 -3 + 84, ctdon, 153 );
setEffAlphaKey( spep_1 -3 + 86, ctdon, 102 );
setEffAlphaKey( spep_1 -3 + 88, ctdon, 51 );
setEffAlphaKey( spep_1 -3 + 90, ctdon, 0 );

ctga = entryEffectLife( spep_1 -3 + 92,  10005, 16, 0x100, -1, 0, -60, 332.9 );  --ガッ
setEffMoveKey( spep_1 -3 + 92, ctga, -60, 332.9 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctga, -69, 326.2 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctga, -78, 319.6 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctga, -87, 312.9 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctga, -96, 306.3 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctga, -105, 299.6 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctga, -133.1, 318.1 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctga, -161.2, 336.5 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctga, -189.3, 355 , 0 );

setEffScaleKey( spep_1 -3 + 92, ctga, 1.06 +0.7, 1.06 +0.7 );
setEffScaleKey( spep_1 -3 + 102, ctga, 1.06 +0.7, 1.06 +0.7 );
setEffScaleKey( spep_1 -3 + 104, ctga, 0.98 +0.7, 0.98 +0.7 );
setEffScaleKey( spep_1 -3 + 106, ctga, 0.91 +0.7, 0.91 +0.7 );
setEffScaleKey( spep_1 -3 + 108, ctga, 0.83 +0.7, 0.83 +0.7 );

setEffRotateKey( spep_1 -3 + 92, ctga, -25 +12 );
setEffRotateKey( spep_1 -3 + 108, ctga, -25 +12 );

setEffAlphaKey( spep_1 -3 + 92, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 102, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 104, ctga, 170 );
setEffAlphaKey( spep_1 -3 + 106, ctga, 85 );
setEffAlphaKey( spep_1 -3 + 108, ctga, 0 );

ctdogon = entryEffectLife( spep_1 -3 + 142,  10018, 16, 0x100, -1, 0, -107.5, 292.6 );  --ドゴン
setEffMoveKey( spep_1 -3 + 142, ctdogon, -107.5, 292.6 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctdogon, -117.2, 306.2 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctdogon, -99.5, 309.1 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctdogon, -110.5, 312.5 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctdogon, -98.3, 324.3 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctdogon, -137.6, 385.5 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctdogon, -142.4, 433.4 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctdogon, -185.7, 481 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctdogon, -211.4, 534.5 , 0 );

setEffScaleKey( spep_1 -3 + 142, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_1 -3 + 144, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_1 -3 + 146, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_1 -3 + 148, ctdogon, 3.06, 3.06 );
setEffScaleKey( spep_1 -3 + 150, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 152, ctdogon, 3.58, 3.58 );
setEffScaleKey( spep_1 -3 + 154, ctdogon, 4, 4 );
setEffScaleKey( spep_1 -3 + 156, ctdogon, 4.43, 4.43 );
setEffScaleKey( spep_1 -3 + 158, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_1 -3 + 142, ctdogon, -42 );
setEffRotateKey( spep_1 -3 + 158, ctdogon, -42 );

setEffAlphaKey( spep_1 -3 + 142, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 150, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 152, ctdogon, 191 );
setEffAlphaKey( spep_1 -3 + 154, ctdogon, 128 );
setEffAlphaKey( spep_1 -3 + 156, ctdogon, 64 );
setEffAlphaKey( spep_1 -3 + 158, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 24, 1, 1 );
setDisp( spep_1 -3 + 180, 1, 0 );
changeAnime( spep_1 -3 + 24, 1, 100 );
changeAnime( spep_1 -3 + 60, 1, 106 );
changeAnime( spep_1 -3 + 74, 1, 108 );
changeAnime( spep_1 -3 + 92, 1, 106 );
changeAnime( spep_1 -3 + 140, 1, 108 );

setMoveKey( spep_1 -3 + 24, 1, 722.5, 64.6 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 693.1, 63.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 660.8, 62.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 625.4, 61.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 587.2, 60.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 546.3, 59.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 502.6, 58.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 456.3, 57.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 407.5, 56.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 390.6, 57.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 370.1, 58.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 345.9, 59 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 318.1, 59.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 286.4, 60.4 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 250.9, 61.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 211.4, 61.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 168, 62.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 120.4, 63.2 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 120.4, 63.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 270.4, 87 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 196.3, 84.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 121.8, 81.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 46.9, 77.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -28.6, 74.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -23.7, 77 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -19.9, 80.5 , 0 );
setMoveKey( spep_1 -3 + 73, 1, -19.9, 80.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 0.2, 53.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -11.2, 48.1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -6.7, 50.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -4.7, 52.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -0.1, 54.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 4.3, 57.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 6.4, 59.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 10.8, 61.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 14, 63.8 , 0 );
setMoveKey( spep_1 -3 + 91, 1, 14, 63.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -5.4, 88.1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 13.7, 82.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 9.9, 77.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 14.1, 77.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 15.8, 78 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 19.8, 78.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 23.9, 78.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 28, 78.4 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 32, 78.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 34, 78.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 38.2, 79 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 42.2, 79.2 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 46.2, 79.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 48.4, 79.5 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 52.5, 79.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 56.7, 79.8 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 60.9, 80 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 63.1, 80.2 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 67.3, 80.4 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 71.4, 80.5 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 75.6, 80.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 78, 80.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 82.3, 81 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 86.3, 80.9 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 86.3, 80.9 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 222.4, 82.4 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 411.6, 87.1 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 282.2, 75.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 159.1, 79 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 175.6, 77.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 200.2, 83.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 213.2, 78.1 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 299.3, 89.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 375, 85.3 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 459.8, 97 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 538.2, 96.8 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 625.8, 104.6 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 702.9, 100.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 797.2, 112.5 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 881.1, 108.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 974.1, 120.6 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 981.9, 113.3 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 1005.5, 122 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 1017.3, 114.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 1036.8, 123.4 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 1044.6, 116.1 , 0 );

setScaleKey( spep_1 -3 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 26, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 28, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 30, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 32, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 34, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 38, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 40, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 44, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 46, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 48, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 50, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 52, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 54, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 58, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 59, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 60, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 62, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 64, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 66, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 68, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 70, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 72, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 73, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 74, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 76, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 78, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 80, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 86, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 91, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 92, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 94, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 96, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 98, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 100, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 108, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 110, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 116, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 118, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 124, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 126, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 132, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 134, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 139, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 140, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 142, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 144, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 146, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 148, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 150, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 152, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 154, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 156, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 166, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 168, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 170, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 172, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 174, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 176, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 178, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 180, 1, 1.69, 1.69 );

setRotateKey( spep_1 -3 + 24, 1, 0 );
setRotateKey( spep_1 -3 + 59, 1, 0 );
setRotateKey( spep_1 -3 + 60, 1, -41 );
setRotateKey( spep_1 -3 + 62, 1, -40.7 );
setRotateKey( spep_1 -3 + 64, 1, -40.4 );
setRotateKey( spep_1 -3 + 66, 1, -40 );
setRotateKey( spep_1 -3 + 68, 1, -39.7 );
setRotateKey( spep_1 -3 + 70, 1, -39.4 );
setRotateKey( spep_1 -3 + 72, 1, -39.1 );
setRotateKey( spep_1 -3 + 73, 1, -39.1 );
setRotateKey( spep_1 -3 + 74, 1, -0.2 );
setRotateKey( spep_1 -3 + 91, 1, -0.2 );
setRotateKey( spep_1 -3 + 92, 1, -41 );
setRotateKey( spep_1 -3 + 94, 1, -40.9 );
setRotateKey( spep_1 -3 + 96, 1, -40.3 );
setRotateKey( spep_1 -3 + 98, 1, -39.8 );
setRotateKey( spep_1 -3 + 100, 1, -39.2 );
setRotateKey( spep_1 -3 + 102, 1, -38.7 );
setRotateKey( spep_1 -3 + 104, 1, -38.1 );
setRotateKey( spep_1 -3 + 106, 1, -37.6 );
setRotateKey( spep_1 -3 + 108, 1, -37 );
setRotateKey( spep_1 -3 + 110, 1, -36.5 );
setRotateKey( spep_1 -3 + 112, 1, -35.9 );
setRotateKey( spep_1 -3 + 114, 1, -35.4 );
setRotateKey( spep_1 -3 + 116, 1, -34.8 );
setRotateKey( spep_1 -3 + 118, 1, -34.2 );
setRotateKey( spep_1 -3 + 120, 1, -33.7 );
setRotateKey( spep_1 -3 + 122, 1, -33.1 );
setRotateKey( spep_1 -3 + 124, 1, -32.6 );
setRotateKey( spep_1 -3 + 126, 1, -32 );
setRotateKey( spep_1 -3 + 128, 1, -31.5 );
setRotateKey( spep_1 -3 + 130, 1, -30.9 );
setRotateKey( spep_1 -3 + 132, 1, -30.4 );
setRotateKey( spep_1 -3 + 134, 1, -29.8 );
setRotateKey( spep_1 -3 + 136, 1, -29.3 );
setRotateKey( spep_1 -3 + 138, 1, -28.7 );
setRotateKey( spep_1 -3 + 139, 1, -28.7 );
setRotateKey( spep_1 -3 + 140, 1, 0 );
setRotateKey( spep_1 -3 + 180, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 140 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_1 + 178, 6,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--前方ダッシュ
stopSe( spep_1 + 61, SE1, 0 );

--ラッシュ
playSe( spep_1 + 57, 1189 );
playSe( spep_1 + 61, 1009 );
playSe( spep_1 + 61, 1110 );
setSeVolume( spep_1 + 61, 1110, 79 );
playSe( spep_1 + 72, 1000 );
playSe( spep_1 + 72, 1006 );
playSe( spep_1 + 86, 1001 );
setSeVolume( spep_1 + 86, 1001, 89 );
playSe( spep_1 + 86, 1012 );
playSe( spep_1 + 126, 1004 );
playSe( spep_1 + 135, 1123 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 186;

------------------------------------------------------
-- 気弾溜め(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気弾溜め(ef_004)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 96, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_2 + 96, shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen3, 255 );

spep_x = spep_2 + 2;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +50, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +50, 515.5 , 0 );

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
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_2 + 82, 6,  10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--気弾溜め
playSe( spep_2 + 0, 1011 ); 
setSeVolume( spep_2 + 0, 1011, 71 );
playSe( spep_2 + 0, 1035 ); 

SE2 = playSe( spep_2 + 0, 13 ); 
setSeVolume( spep_2 + 0, 13, 0 );
setSeVolume( spep_2 + 7, 13, 4 );
setSeVolume( spep_2 + 8, 13, 22 );
setSeVolume( spep_2 + 9, 13, 40 );
setSeVolume( spep_2 + 10, 13, 62 );
setSeVolume( spep_2 + 12, 13, 71 );

playSe( spep_2 + 6, 49 ); 
playSe( spep_2 + 8, 1018 ); 

SE3 = playSe( spep_2 + 8, 1176 ); 
setSeVolume( spep_2 + 8, 1176, 0 );
setSeVolume( spep_2 + 9, 1176, 4 );
setSeVolume( spep_2 + 14, 1176, 18 );
setSeVolume( spep_2 + 26, 1176, 32 );
setSeVolume( spep_2 + 32, 1176, 46 );
setSeVolume( spep_2 + 38, 1176, 52 );
setSeVolume( spep_2 + 42, 1176, 63 );

SE4 = playSe( spep_2 + 12, 1144 ); 
setSeVolume( spep_2 + 12, 1144, 63 );

SE5 = playSe( spep_2 + 30, 1171 ); 
setSeVolume( spep_2 + 30, 1171, 63 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

--極限対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
--気弾溜め
stopSe(spep_3 + 7, SE2, 0 );
stopSe(spep_3 + 7, SE3, 0 );
stopSe(spep_3 + 7, SE4, 0 );
stopSe(spep_3 + 7, SE5, 0 );

--カットイン
--playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射(70F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --気弾発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 70, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 70, hassha, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 42 -3, 906, 28 +3, 0x100, -1, 0, 0, 0, 200 );  --集中線
setEffShake( spep_4 + 42 -3, shuchusen4, 28 +3, 20 );

setEffMoveKey( spep_4 + 42 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 42 -3, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_4 + 70, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_4 + 42 -3, shuchusen4, 0 );
setEffRotateKey( spep_4 + 70, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 42 -3, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 70, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 42,  10012, 16, 0x100, -1, 0, 105.3, 239.7, 300 );  --ズオッ
setEffMoveKey( spep_4 -3 + 42, ctzuo, 105.3, 239.7 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo, 98.9, 321.1 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo, 96.3, 317.3 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo, 103.3, 321.5 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, 100.7, 317.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, 107.8, 322 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, 105.2, 318.2 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzuo, 112.2, 322.4 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzuo, 109.6, 318.6 , 0 );

setEffScaleKey( spep_4 -3 + 42, ctzuo, 0.38 +1.5, 0.38 +1.5 );
setEffScaleKey( spep_4 -3 + 44, ctzuo, 0.7 +1.5, 0.7 +1.5 );
setEffScaleKey( spep_4 -3 + 58, ctzuo, 0.7 +1.5, 0.7 +1.5 );

setEffRotateKey( spep_4 -3 + 42, ctzuo, 30 );
setEffRotateKey( spep_4 -3 + 58, ctzuo, 30 );

setEffAlphaKey( spep_4 -3 + 42, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 44, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 58, ctzuo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 72, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白背景 ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_4 + 40 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  --白　背景
entryFade( spep_4 + 60, 8, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--発射前気弾溜め
SE6 = playSe( spep_4 + 0, 1171 );
setSeVolume( spep_4 + 0, 1171, 50 );
stopSe(spep_4 + 36, SE6, 0 );

SE7 = playSe( spep_4 + 0, 1176 );
setSeVolume( spep_4 + 0, 1176, 0 );
setSeVolume( spep_4 + 1, 1171, 10 );
setSeVolume( spep_4 + 2, 1171, 26 );
setSeVolume( spep_4 + 4, 1171, 48 );
setSeVolume( spep_4 + 7, 1171, 63 );
stopSe(spep_4 + 36, SE7, 0 );

playSe( spep_4 + 0, 49 );

--気弾発射
playSe( spep_4 + 35, 1027 );
setSeVolume( spep_4 + 35, 1027, 71 );

playSe( spep_4 + 36, 1021 );

SE8 = playSe( spep_4 + 36, 1177 );
setSeVolume( spep_4 + 36, 1177, 63 );

SE9 = playSe( spep_4 + 36, 1213 );
setSeVolume( spep_4 + 36, 1213, 0 );
setSeVolume( spep_4 + 46, 1213, 10 );
setSeVolume( spep_4 + 48, 1213, 14 );
setSeVolume( spep_4 + 50, 1213, 18 );
setSeVolume( spep_4 + 52, 1213, 20 );
setSeVolume( spep_4 + 54, 1213, 24 );
setSeVolume( spep_4 + 56, 1213, 28 );
setSeVolume( spep_4 + 58, 1213, 34 );
setSeVolume( spep_4 + 61, 1213, 40 );

playSe( spep_4 + 57, 1202 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;

------------------------------------------------------
-- ラスト(188F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffectLife( spep_5 + 0, SP_06, 82 -3, 0x100, -1, 0, 0, 0 );  --ラスト：気弾(ef_006)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 82 -3, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 82 -3, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 82 -3, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 82 -3, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ラスト；背景(ef_007)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 188, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 188, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 188, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 188, finish_b, 255 );

bakuha = entryEffect( spep_5 + 82 -3, SP_08, 0x100, -1, 0, 0, 0 );  --ラスト；爆発エフェクト(ef_008)
setEffMoveKey( spep_5 + 82 -3, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 188, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 82 -3, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 188, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 82 -3, bakuha, 0 );
setEffRotateKey( spep_5 + 188, bakuha, 0 );
setEffAlphaKey( spep_5 + 82 -3, bakuha, 255 );
setEffAlphaKey( spep_5 + 188, bakuha, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 0, 906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen5, 76, 20 );

setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.3, 1.3 );
setEffScaleKey( spep_5 + 76, shuchusen5, 1.3, 1.3 );

setEffRotateKey( spep_5 + 0, shuchusen5, 0 );
setEffRotateKey( spep_5 + 76, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 76, shuchusen5, 255 );

shuchusen6 = entryEffectLife( spep_5 + 82 -3, 906, 106 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 82 -3, shuchusen6, 106 +3, 20 );

setEffMoveKey( spep_5 + 82 -3, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 188, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 82 -3, shuchusen6, 1.75, 1.9 );
setEffScaleKey( spep_5 + 188, shuchusen6, 1.75, 1.9 );

setEffRotateKey( spep_5 + 82 -3, shuchusen6, 0 );
setEffRotateKey( spep_5 + 188, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 82 -3, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 188, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 70, 0x100, -1, 0, -70.6, 404.1 );  --ズドド
setEffShake( spep_5 + 0, ctzudodo, 70, 35 );
setEffMoveKey( spep_5 + 0, ctzudodo, -70.6, 404.1 , 0 );
setEffMoveKey( spep_5 + 70, ctzudodo, -70.6, 404.1 , 0 );
setEffScaleKey( spep_5 + 0, ctzudodo, 1.3 +0.7, 1.3 +0.7 );
setEffScaleKey( spep_5 + 70, ctzudodo, 1.3 +0.7, 1.3 +0.7 );
setEffRotateKey( spep_5 + 0, ctzudodo, 10 );
setEffRotateKey( spep_5 + 70, ctzudodo, 10 );
setEffAlphaKey( spep_5 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 70, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 80, 1, 1 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 0.8, 0 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 0.9, 0 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 1, 0 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 1.2, 0.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 1.4, 0.1 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 1.9, 0.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 2.2, 0.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 2.5, 0.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 2.9, 0.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 3.2, 0.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 3.7, 0.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 4.1, 0.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 4.6, 0.5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 5.1, 0.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 5.7, 0.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 6.3, 0.7 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 6.9, 0.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 7.6, 0.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 8.3, 1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 9, 1.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 9.8, 1.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 10.6, 1.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 11.5, 1.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 12.3, 1.5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 13.3, 1.7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 15.2, 2 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 16.2, 2.1 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 17.3, 2.3 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 18.4, 2.5 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 19.6, 2.7 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 20.8, 2.9 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 22, 3.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 30.1, -4.5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 39.1, -12 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 59.8, -17.6 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 66.4, -16.9 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 73.1, -16.2 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 73.1, -16.2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.06, 0.06 );
setScaleKey( spep_5 -3 + 4, 1, 0.07, 0.07 );
setScaleKey( spep_5 -3 + 6, 1, 0.08, 0.08 );
setScaleKey( spep_5 -3 + 8, 1, 0.09, 0.09 );
setScaleKey( spep_5 -3 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_5 -3 + 12, 1, 0.11, 0.11 );
setScaleKey( spep_5 -3 + 14, 1, 0.13, 0.13 );
setScaleKey( spep_5 -3 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_5 -3 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_5 -3 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 24, 1, 0.24, 0.24 );
setScaleKey( spep_5 -3 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_5 -3 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_5 -3 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 32, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 34, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_5 -3 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 56, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_5 -3 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_5 -3 + 64, 1, 1.25, 1.25 );
setScaleKey( spep_5 -3 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_5 -3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_5 -3 + 70, 1, 1.92, 1.92 );
setScaleKey( spep_5 -3 + 72, 1, 2.49, 2.49 );
setScaleKey( spep_5 -3 + 74, 1, 3.78, 3.78 );
setScaleKey( spep_5 -3 + 76, 1, 4.18, 4.18 );
setScaleKey( spep_5 -3 + 78, 1, 4.58, 4.58 );
setScaleKey( spep_5 -3 + 80, 1, 4.58, 4.58 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 80, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白背景 ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_5 + 82 -3, 0, 2, 30, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--気弾発射
stopSe(spep_5 + 97, SE8, 0 );
stopSe(spep_5 + 97, SE9, 0 );

--爆発
playSe( spep_5 + 70, 1023 );

playSe( spep_5 + 73, 1159 );
setSeVolume( spep_5 + 73, 1159, 71 );

playSe( spep_5 + 97, 1024 );
setSeVolume( spep_5 + 97, 1024, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 80 );
endPhase( spep_5 + 186 -6 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、突進(106F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --導入、突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 106, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 106, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 106, tosshin, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 60 -3, 906, 46 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 60 -3, shuchusen1, 46 +3, 20 );

setEffMoveKey( spep_0 + 60 -3, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 106, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 60 -3, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 106, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_0 + 60 -3, shuchusen1, 0 );
setEffRotateKey( spep_0 + 106, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 60 -3, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 105, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 106, shuchusen1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 108, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
playSe( spep_0 + 0, 8 );

--前方ダッシュ
SE0 = playSe( spep_0 + 53, 9 );
SE1 = playSe( spep_0 + 62, 1183 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 106;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe(SP_dodge - 12, SE0, 0 );
stopSe(SP_dodge - 12, SE1, 0 );

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
------------------------------------------------------
-- 突進、格闘(186F)
------------------------------------------------------

-- ** エフェクト等 ** --
attack_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --突進、格闘：キャラ(ef_002)
setEffMoveKey( spep_1 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 186, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 186, attack_f, 255 );

attack_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --突進、格闘：背景(ef_003)
setEffMoveKey( spep_1 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 186, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 186, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 186, attack_b, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 140 -3, 906, 46 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 140 -3, shuchusen2, 46 +3, 20 );

setEffMoveKey( spep_1 + 140 -3, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 186, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 140 -3, shuchusen2, 1.2, 1.2 );
setEffScaleKey( spep_1 + 186, shuchusen2, 1.2, 1.2 );

setEffRotateKey( spep_1 + 140 -3, shuchusen2, 0 );
setEffRotateKey( spep_1 + 186, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 140 -3, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 186, shuchusen2, 255 );

-- ** 書き文字 ** --
ctbaki = entryEffectLife( spep_1 -3 + 60,  10020, 18, 0x100, -1, 0, -87.8, 334.2 );  --バキッ
setEffMoveKey( spep_1 -3 + 60, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctbaki, -100.1, 342.1 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_1 -3 + 60, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 -3 + 62, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 -3 + 64, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1 -3 + 66, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 -3 + 68, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1 -3 + 70, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1 -3 + 72, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 -3 + 74, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 -3 + 76, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 -3 + 78, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 -3 + 60, ctbaki, -12.4 );
setEffRotateKey( spep_1 -3 + 78, ctbaki, -12.4 );

setEffAlphaKey( spep_1 -3 + 60, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 74, ctbaki, 174 );
setEffAlphaKey( spep_1 -3 + 76, ctbaki, 94 );
setEffAlphaKey( spep_1 -3 + 78, ctbaki, 13 );

ctdon = entryEffectLife( spep_1 -3 + 74,  10019, 16, 0x100, -1, 0, 139.7, 293.8 );  --ドンッ
setEffMoveKey( spep_1 -3 + 74, ctdon, 139.7, 293.8 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctdon, 146.4, 280.3 , 0 );
setEffMoveKey( spep_1 -3 + 78, ctdon, 136.3, 251.9 , 0 );
setEffMoveKey( spep_1 -3 + 80, ctdon, 129.7, 241.8 , 0 );
setEffMoveKey( spep_1 -3 + 82, ctdon, 136.2, 252.8 , 0 );
setEffMoveKey( spep_1 -3 + 84, ctdon, 128.8, 250.7 , 0 );
setEffMoveKey( spep_1 -3 + 86, ctdon, 129.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 88, ctdon, 127.6, 269.2 , 0 );
setEffMoveKey( spep_1 -3 + 90, ctdon, 125.7, 277 , 0 );

setEffScaleKey( spep_1 -3 + 74, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 76, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_1 -3 + 78, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 -3 + 80, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_1 -3 + 84, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_1 -3 + 86, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_1 -3 + 90, ctdon, 1.85, 1.85 );

setEffRotateKey( spep_1 -3 + 74, ctdon, 30 );
setEffRotateKey( spep_1 -3 + 90, ctdon, 30 );

setEffAlphaKey( spep_1 -3 + 74, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 80, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 82, ctdon, 204 );
setEffAlphaKey( spep_1 -3 + 84, ctdon, 153 );
setEffAlphaKey( spep_1 -3 + 86, ctdon, 102 );
setEffAlphaKey( spep_1 -3 + 88, ctdon, 51 );
setEffAlphaKey( spep_1 -3 + 90, ctdon, 0 );

ctga = entryEffectLife( spep_1 -3 + 92,  10005, 16, 0x100, -1, 0, -60, 332.9 );  --ガッ
setEffMoveKey( spep_1 -3 + 92, ctga, -60, 332.9 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctga, -69, 326.2 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctga, -78, 319.6 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctga, -87, 312.9 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctga, -96, 306.3 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctga, -105, 299.6 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctga, -133.1, 318.1 , 0 );
setEffMoveKey( spep_1 -3 + 106, ctga, -161.2, 336.5 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctga, -189.3, 355 , 0 );

setEffScaleKey( spep_1 -3 + 92, ctga, 1.06 +0.7, 1.06 +0.7 );
setEffScaleKey( spep_1 -3 + 102, ctga, 1.06 +0.7, 1.06 +0.7 );
setEffScaleKey( spep_1 -3 + 104, ctga, 0.98 +0.7, 0.98 +0.7 );
setEffScaleKey( spep_1 -3 + 106, ctga, 0.91 +0.7, 0.91 +0.7 );
setEffScaleKey( spep_1 -3 + 108, ctga, 0.83 +0.7, 0.83 +0.7 );

setEffRotateKey( spep_1 -3 + 92, ctga, -25 +12 );
setEffRotateKey( spep_1 -3 + 108, ctga, -25 +12 );

setEffAlphaKey( spep_1 -3 + 92, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 102, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 104, ctga, 170 );
setEffAlphaKey( spep_1 -3 + 106, ctga, 85 );
setEffAlphaKey( spep_1 -3 + 108, ctga, 0 );

ctdogon = entryEffectLife( spep_1 -3 + 142,  10018, 16, 0x100, -1, 0, -107.5, 292.6 );  --ドゴン
setEffMoveKey( spep_1 -3 + 142, ctdogon, -107.5, 292.6 , 0 );
setEffMoveKey( spep_1 -3 + 144, ctdogon, -117.2, 306.2 , 0 );
setEffMoveKey( spep_1 -3 + 146, ctdogon, -99.5, 309.1 , 0 );
setEffMoveKey( spep_1 -3 + 148, ctdogon, -110.5, 312.5 , 0 );
setEffMoveKey( spep_1 -3 + 150, ctdogon, -98.3, 324.3 , 0 );
setEffMoveKey( spep_1 -3 + 152, ctdogon, -137.6, 385.5 , 0 );
setEffMoveKey( spep_1 -3 + 154, ctdogon, -142.4, 433.4 , 0 );
setEffMoveKey( spep_1 -3 + 156, ctdogon, -185.7, 481 , 0 );
setEffMoveKey( spep_1 -3 + 158, ctdogon, -211.4, 534.5 , 0 );

setEffScaleKey( spep_1 -3 + 142, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_1 -3 + 144, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_1 -3 + 146, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_1 -3 + 148, ctdogon, 3.06, 3.06 );
setEffScaleKey( spep_1 -3 + 150, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 152, ctdogon, 3.58, 3.58 );
setEffScaleKey( spep_1 -3 + 154, ctdogon, 4, 4 );
setEffScaleKey( spep_1 -3 + 156, ctdogon, 4.43, 4.43 );
setEffScaleKey( spep_1 -3 + 158, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_1 -3 + 142, ctdogon, -42 );
setEffRotateKey( spep_1 -3 + 158, ctdogon, -42 );

setEffAlphaKey( spep_1 -3 + 142, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 150, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 152, ctdogon, 191 );
setEffAlphaKey( spep_1 -3 + 154, ctdogon, 128 );
setEffAlphaKey( spep_1 -3 + 156, ctdogon, 64 );
setEffAlphaKey( spep_1 -3 + 158, ctdogon, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 -3 + 24, 1, 1 );
setDisp( spep_1 -3 + 180, 1, 0 );
changeAnime( spep_1 -3 + 24, 1, 100 );
changeAnime( spep_1 -3 + 60, 1, 106 );
changeAnime( spep_1 -3 + 74, 1, 108 );
changeAnime( spep_1 -3 + 92, 1, 106 );
changeAnime( spep_1 -3 + 140, 1, 108 );

setMoveKey( spep_1 -3 + 24, 1, 722.5, 64.6 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 693.1, 63.7 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 660.8, 62.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 625.4, 61.8 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 587.2, 60.8 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 546.3, 59.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 502.6, 58.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 456.3, 57.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 407.5, 56.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 390.6, 57.6 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 370.1, 58.3 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 345.9, 59 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 318.1, 59.8 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 286.4, 60.4 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 250.9, 61.1 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 211.4, 61.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 168, 62.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 120.4, 63.2 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 120.4, 63.2 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 270.4, 87 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 196.3, 84.4 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 121.8, 81.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 46.9, 77.9 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -28.6, 74.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -23.7, 77 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -19.9, 80.5 , 0 );
setMoveKey( spep_1 -3 + 73, 1, -19.9, 80.5 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 0.2, 53.2 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -11.2, 48.1 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -6.7, 50.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -4.7, 52.5 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -0.1, 54.8 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 4.3, 57.2 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 6.4, 59.3 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 10.8, 61.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 14, 63.8 , 0 );
setMoveKey( spep_1 -3 + 91, 1, 14, 63.8 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -5.4, 88.1 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 13.7, 82.7 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 9.9, 77.6 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 14.1, 77.7 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 15.8, 78 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 19.8, 78.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 23.9, 78.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 28, 78.4 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 32, 78.6 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 34, 78.8 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 38.2, 79 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 42.2, 79.2 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 46.2, 79.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 48.4, 79.5 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 52.5, 79.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 56.7, 79.8 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 60.9, 80 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 63.1, 80.2 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 67.3, 80.4 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 71.4, 80.5 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 75.6, 80.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 78, 80.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 82.3, 81 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 86.3, 80.9 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 86.3, 80.9 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 222.4, 82.4 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 411.6, 87.1 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 282.2, 75.2 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 159.1, 79 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 175.6, 77.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 200.2, 83.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 213.2, 78.1 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 299.3, 89.7 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 375, 85.3 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 459.8, 97 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 538.2, 96.8 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 625.8, 104.6 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 702.9, 100.5 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 797.2, 112.5 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 881.1, 108.6 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 974.1, 120.6 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 981.9, 113.3 , 0 );
setMoveKey( spep_1 -3 + 174, 1, 1005.5, 122 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 1017.3, 114.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 1036.8, 123.4 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 1044.6, 116.1 , 0 );

setScaleKey( spep_1 -3 + 24, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 26, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 28, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 30, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 32, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 34, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 36, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 38, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 40, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 42, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 44, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 46, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 48, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 50, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 52, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 54, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 56, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 58, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 59, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 60, 1, 1.82, 1.82 );
setScaleKey( spep_1 -3 + 62, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 64, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 66, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 68, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 70, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 72, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 73, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 74, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 76, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 78, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 80, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 84, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 86, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 91, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 92, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 94, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 96, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 98, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 100, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 108, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 110, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 116, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 118, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 124, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 126, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 132, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 134, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 139, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 140, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 142, 1, 1.78, 1.78 );
setScaleKey( spep_1 -3 + 144, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 146, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 148, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 150, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 152, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 154, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 156, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 166, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 168, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 170, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 172, 1, 1.63, 1.63 );
setScaleKey( spep_1 -3 + 174, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 176, 1, 1.66, 1.66 );
setScaleKey( spep_1 -3 + 178, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 180, 1, 1.69, 1.69 );

setRotateKey( spep_1 -3 + 24, 1, 0 );
setRotateKey( spep_1 -3 + 59, 1, 0 );
setRotateKey( spep_1 -3 + 60, 1, -41 );
setRotateKey( spep_1 -3 + 62, 1, -40.7 );
setRotateKey( spep_1 -3 + 64, 1, -40.4 );
setRotateKey( spep_1 -3 + 66, 1, -40 );
setRotateKey( spep_1 -3 + 68, 1, -39.7 );
setRotateKey( spep_1 -3 + 70, 1, -39.4 );
setRotateKey( spep_1 -3 + 72, 1, -39.1 );
setRotateKey( spep_1 -3 + 73, 1, -39.1 );
setRotateKey( spep_1 -3 + 74, 1, -0.2 );
setRotateKey( spep_1 -3 + 91, 1, -0.2 );
setRotateKey( spep_1 -3 + 92, 1, -41 );
setRotateKey( spep_1 -3 + 94, 1, -40.9 );
setRotateKey( spep_1 -3 + 96, 1, -40.3 );
setRotateKey( spep_1 -3 + 98, 1, -39.8 );
setRotateKey( spep_1 -3 + 100, 1, -39.2 );
setRotateKey( spep_1 -3 + 102, 1, -38.7 );
setRotateKey( spep_1 -3 + 104, 1, -38.1 );
setRotateKey( spep_1 -3 + 106, 1, -37.6 );
setRotateKey( spep_1 -3 + 108, 1, -37 );
setRotateKey( spep_1 -3 + 110, 1, -36.5 );
setRotateKey( spep_1 -3 + 112, 1, -35.9 );
setRotateKey( spep_1 -3 + 114, 1, -35.4 );
setRotateKey( spep_1 -3 + 116, 1, -34.8 );
setRotateKey( spep_1 -3 + 118, 1, -34.2 );
setRotateKey( spep_1 -3 + 120, 1, -33.7 );
setRotateKey( spep_1 -3 + 122, 1, -33.1 );
setRotateKey( spep_1 -3 + 124, 1, -32.6 );
setRotateKey( spep_1 -3 + 126, 1, -32 );
setRotateKey( spep_1 -3 + 128, 1, -31.5 );
setRotateKey( spep_1 -3 + 130, 1, -30.9 );
setRotateKey( spep_1 -3 + 132, 1, -30.4 );
setRotateKey( spep_1 -3 + 134, 1, -29.8 );
setRotateKey( spep_1 -3 + 136, 1, -29.3 );
setRotateKey( spep_1 -3 + 138, 1, -28.7 );
setRotateKey( spep_1 -3 + 139, 1, -28.7 );
setRotateKey( spep_1 -3 + 140, 1, 0 );
setRotateKey( spep_1 -3 + 180, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 140 -3, 0,  2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );     -- white fade
entryFade( spep_1 + 178, 6,  4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--前方ダッシュ
stopSe( spep_1 + 61, SE1, 0 );

--ラッシュ
playSe( spep_1 + 57, 1189 );
playSe( spep_1 + 61, 1009 );
playSe( spep_1 + 61, 1110 );
setSeVolume( spep_1 + 61, 1110, 79 );
playSe( spep_1 + 72, 1000 );
playSe( spep_1 + 72, 1006 );
playSe( spep_1 + 86, 1001 );
setSeVolume( spep_1 + 86, 1001, 89 );
playSe( spep_1 + 86, 1012 );
playSe( spep_1 + 126, 1004 );
playSe( spep_1 + 135, 1123 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 186;

------------------------------------------------------
-- 気弾溜め(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --気弾溜め(ef_004)
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 96, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 96, tame, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 96, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen3, 96, 20 );

setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.3, 1.3 );
setEffScaleKey( spep_2 + 96, shuchusen3, 1.3, 1.3 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen3, 255 );

spep_x = spep_2 + 2;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, -9.9 +50, 515.5 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, -9.9 +50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -9.9 +50, 515.5 , 0 );

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
entryFadeBg( spep_2 + 0, 0, 98, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0,  2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
entryFade( spep_2 + 82, 6,  10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade

-- ** 音 ** --
--気弾溜め
playSe( spep_2 + 0, 1011 ); 
setSeVolume( spep_2 + 0, 1011, 71 );
playSe( spep_2 + 0, 1035 ); 

SE2 = playSe( spep_2 + 0, 13 ); 
setSeVolume( spep_2 + 0, 13, 0 );
setSeVolume( spep_2 + 7, 13, 4 );
setSeVolume( spep_2 + 8, 13, 22 );
setSeVolume( spep_2 + 9, 13, 40 );
setSeVolume( spep_2 + 10, 13, 62 );
setSeVolume( spep_2 + 12, 13, 71 );

playSe( spep_2 + 6, 49 ); 
playSe( spep_2 + 8, 1018 ); 

SE3 = playSe( spep_2 + 8, 1176 ); 
setSeVolume( spep_2 + 8, 1176, 0 );
setSeVolume( spep_2 + 9, 1176, 4 );
setSeVolume( spep_2 + 14, 1176, 18 );
setSeVolume( spep_2 + 26, 1176, 32 );
setSeVolume( spep_2 + 32, 1176, 46 );
setSeVolume( spep_2 + 38, 1176, 52 );
setSeVolume( spep_2 + 42, 1176, 63 );

SE4 = playSe( spep_2 + 12, 1144 ); 
setSeVolume( spep_2 + 12, 1144, 63 );

SE5 = playSe( spep_2 + 30, 1171 ); 
setSeVolume( spep_2 + 30, 1171, 63 );

--ゴゴゴ
playSe( spep_x + 16, 1018 ); 

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

--極限対応
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_3, SE_05);
speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
--気弾溜め
stopSe(spep_3 + 7, SE2, 0 );
stopSe(spep_3 + 7, SE3, 0 );
stopSe(spep_3 + 7, SE4, 0 );
stopSe(spep_3 + 7, SE5, 0 );

--カットイン
--playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気弾発射(70F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --気弾発射(ef_005)
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_4 + 70, hassha, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 70, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 70, hassha, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 42 -3, 906, 28 +3, 0x100, -1, 0, 0, 0, 200 );  --集中線
setEffShake( spep_4 + 42 -3, shuchusen4, 28 +3, 20 );

setEffMoveKey( spep_4 + 42 -3, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 70, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 42 -3, shuchusen4, 1.2, 1.2 );
setEffScaleKey( spep_4 + 70, shuchusen4, 1.2, 1.2 );

setEffRotateKey( spep_4 + 42 -3, shuchusen4, 0 );
setEffRotateKey( spep_4 + 70, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 42 -3, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 70, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4 -3 + 42,  10012, 16, 0x100, -1, 0, 105.3, 239.7, 300 );  --ズオッ
setEffMoveKey( spep_4 -3 + 42, ctzuo, -105.3, 239.7 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo, -98.9, 321.1 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo, -96.3, 317.3 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo, -103.3, 321.5 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo, -100.7, 317.7 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctzuo, -107.8, 322 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctzuo, -105.2, 318.2 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctzuo, -112.2, 322.4 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctzuo, -109.6, 318.6 , 0 );

setEffScaleKey( spep_4 -3 + 42, ctzuo, 0.38 +1.5, 0.38 +1.5 );
setEffScaleKey( spep_4 -3 + 44, ctzuo, 0.7 +1.5, 0.7 +1.5 );
setEffScaleKey( spep_4 -3 + 58, ctzuo, 0.7 +1.5, 0.7 +1.5 );

setEffRotateKey( spep_4 -3 + 42, ctzuo, -30 );
setEffRotateKey( spep_4 -3 + 58, ctzuo, -30 );

setEffAlphaKey( spep_4 -3 + 42, ctzuo, 128 );
setEffAlphaKey( spep_4 -3 + 44, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 58, ctzuo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 72, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白背景 ** --
entryFade( spep_4 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_4 + 40 -3, 0, 2, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  --白　背景
entryFade( spep_4 + 60, 8, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--発射前気弾溜め
SE6 = playSe( spep_4 + 0, 1171 );
setSeVolume( spep_4 + 0, 1171, 50 );
stopSe(spep_4 + 36, SE6, 0 );

SE7 = playSe( spep_4 + 0, 1176 );
setSeVolume( spep_4 + 0, 1176, 0 );
setSeVolume( spep_4 + 1, 1171, 10 );
setSeVolume( spep_4 + 2, 1171, 26 );
setSeVolume( spep_4 + 4, 1171, 48 );
setSeVolume( spep_4 + 7, 1171, 63 );
stopSe(spep_4 + 36, SE7, 0 );

playSe( spep_4 + 0, 49 );

--気弾発射
playSe( spep_4 + 35, 1027 );
setSeVolume( spep_4 + 35, 1027, 71 );

playSe( spep_4 + 36, 1021 );

SE8 = playSe( spep_4 + 36, 1177 );
setSeVolume( spep_4 + 36, 1177, 63 );

SE9 = playSe( spep_4 + 36, 1213 );
setSeVolume( spep_4 + 36, 1213, 0 );
setSeVolume( spep_4 + 46, 1213, 10 );
setSeVolume( spep_4 + 48, 1213, 14 );
setSeVolume( spep_4 + 50, 1213, 18 );
setSeVolume( spep_4 + 52, 1213, 20 );
setSeVolume( spep_4 + 54, 1213, 24 );
setSeVolume( spep_4 + 56, 1213, 28 );
setSeVolume( spep_4 + 58, 1213, 34 );
setSeVolume( spep_4 + 61, 1213, 40 );

playSe( spep_4 + 57, 1202 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 70;

------------------------------------------------------
-- ラスト(188F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffectLife( spep_5 + 0, SP_06, 82 -3, 0x100, -1, 0, 0, 0 );  --ラスト：気弾(ef_006)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 82 -3, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 82 -3, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 82 -3, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 82 -3, finish_f, 255 );

finish_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ラスト；背景(ef_007)
setEffMoveKey( spep_5 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 188, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 188, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 188, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 188, finish_b, 255 );

bakuha = entryEffect( spep_5 + 82 -3, SP_08, 0x100, -1, 0, 0, 0 );  --ラスト；爆発エフェクト(ef_008)
setEffMoveKey( spep_5 + 82 -3, bakuha, 0, 0 , 0 );
setEffMoveKey( spep_5 + 188, bakuha, 0, 0 , 0 );
setEffScaleKey( spep_5 + 82 -3, bakuha, 1.0, 1.0 );
setEffScaleKey( spep_5 + 188, bakuha, 1.0, 1.0 );
setEffRotateKey( spep_5 + 82 -3, bakuha, 0 );
setEffRotateKey( spep_5 + 188, bakuha, 0 );
setEffAlphaKey( spep_5 + 82 -3, bakuha, 255 );
setEffAlphaKey( spep_5 + 188, bakuha, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_5 + 0, 906, 76, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen5, 76, 20 );

setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.3, 1.3 );
setEffScaleKey( spep_5 + 76, shuchusen5, 1.3, 1.3 );

setEffRotateKey( spep_5 + 0, shuchusen5, 0 );
setEffRotateKey( spep_5 + 76, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 76, shuchusen5, 255 );

shuchusen6 = entryEffectLife( spep_5 + 82 -3, 906, 106 +3, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 82 -3, shuchusen6, 106 +3, 20 );

setEffMoveKey( spep_5 + 82 -3, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_5 + 188, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_5 + 82 -3, shuchusen6, 1.75, 1.9 );
setEffScaleKey( spep_5 + 188, shuchusen6, 1.75, 1.9 );

setEffRotateKey( spep_5 + 82 -3, shuchusen6, 0 );
setEffRotateKey( spep_5 + 188, shuchusen6, 0 );

setEffAlphaKey( spep_5 + 82 -3, shuchusen6, 255 );
setEffAlphaKey( spep_5 + 188, shuchusen6, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 70, 0x100, -1, 0, -70.6, 404.1 );  --ズドド
setEffShake( spep_5 + 0, ctzudodo, 70, 35 );
setEffMoveKey( spep_5 + 0, ctzudodo, 70.6, 404.1 , 0 );
setEffMoveKey( spep_5 + 70, ctzudodo, 70.6, 404.1 , 0 );
setEffScaleKey( spep_5 + 0, ctzudodo, 1.3 +0.7, 1.3 +0.7 );
setEffScaleKey( spep_5 + 70, ctzudodo, 1.3 +0.7, 1.3 +0.7 );
setEffRotateKey( spep_5 + 0, ctzudodo, -10 );
setEffRotateKey( spep_5 + 70, ctzudodo, -10 );
setEffAlphaKey( spep_5 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 70, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 80, 1, 1 );
changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 0.8, 0 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 0.9, 0 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 1, 0 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 1.2, 0.1 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 1.4, 0.1 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 1.9, 0.1 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 2.2, 0.2 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 2.5, 0.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 2.9, 0.3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 3.2, 0.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 3.7, 0.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 4.1, 0.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 4.6, 0.5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 5.1, 0.5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 5.7, 0.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 6.3, 0.7 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 6.9, 0.8 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 7.6, 0.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 8.3, 1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 9, 1.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 9.8, 1.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 10.6, 1.3 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 11.5, 1.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 12.3, 1.5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 13.3, 1.7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 15.2, 2 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 16.2, 2.1 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 17.3, 2.3 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 18.4, 2.5 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 19.6, 2.7 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 20.8, 2.9 , 0 );
setMoveKey( spep_5 -3 + 68, 1, 22, 3.1 , 0 );
setMoveKey( spep_5 -3 + 70, 1, 30.1, -4.5 , 0 );
setMoveKey( spep_5 -3 + 72, 1, 39.1, -12 , 0 );
setMoveKey( spep_5 -3 + 74, 1, 59.8, -17.6 , 0 );
setMoveKey( spep_5 -3 + 76, 1, 66.4, -16.9 , 0 );
setMoveKey( spep_5 -3 + 78, 1, 73.1, -16.2 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 73.1, -16.2 , 0 );

setScaleKey( spep_5 + 0, 1, 0.06, 0.06 );
setScaleKey( spep_5 -3 + 4, 1, 0.07, 0.07 );
setScaleKey( spep_5 -3 + 6, 1, 0.08, 0.08 );
setScaleKey( spep_5 -3 + 8, 1, 0.09, 0.09 );
setScaleKey( spep_5 -3 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_5 -3 + 12, 1, 0.11, 0.11 );
setScaleKey( spep_5 -3 + 14, 1, 0.13, 0.13 );
setScaleKey( spep_5 -3 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_5 -3 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_5 -3 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_5 -3 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 24, 1, 0.24, 0.24 );
setScaleKey( spep_5 -3 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_5 -3 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_5 -3 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_5 -3 + 32, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 34, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_5 -3 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_5 -3 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_5 -3 + 56, 1, 0.97, 0.97 );
setScaleKey( spep_5 -3 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_5 -3 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_5 -3 + 64, 1, 1.25, 1.25 );
setScaleKey( spep_5 -3 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_5 -3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_5 -3 + 70, 1, 1.92, 1.92 );
setScaleKey( spep_5 -3 + 72, 1, 2.49, 2.49 );
setScaleKey( spep_5 -3 + 74, 1, 3.78, 3.78 );
setScaleKey( spep_5 -3 + 76, 1, 4.18, 4.18 );
setScaleKey( spep_5 -3 + 78, 1, 4.58, 4.58 );
setScaleKey( spep_5 -3 + 80, 1, 4.58, 4.58 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 80, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 188, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白背景 ** --
entryFade( spep_5 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFade( spep_5 + 82 -3, 0, 2, 30, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 音 ** --
--気弾発射
stopSe(spep_5 + 97, SE8, 0 );
stopSe(spep_5 + 97, SE9, 0 );

--爆発
playSe( spep_5 + 70, 1023 );

playSe( spep_5 + 73, 1159 );
setSeVolume( spep_5 + 73, 1159, 71 );

playSe( spep_5 + 97, 1024 );
setSeVolume( spep_5 + 97, 1024, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 80 );
endPhase( spep_5 + 186 -6 );

end