--1018530:超サイヤ人ゴッドSS孫悟空(界王拳)_10倍界王拳 ゴッドかめはめ波(ドッカン前)
--sp_effect_a1_00204

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
SP_01 =	154396	;--	気溜め〜突進
SP_02a = 154398	;--	キック(手前)
SP_02b = 154399	;--	キック(奥)
SP_03 = 154402 ;-- 地上に移動してかめはめ波の構え
SP_04 = 154404 ;-- かめはめ波を撃つ
SP_05 = 154406 ;-- かめはめ波を上空に撃っている
SP_06a = 154408 ;-- 敵がかめはめ波に包まれる(手前)
SP_06b = 154409 ;-- 敵がかめはめ波に包まれる(手前)
SP_07 = 154410 ;-- フィニッシュの爆発

--エフェクト(敵)
SP_01_e = 154397	;--	気溜め〜突進
SP_02a_e = 154400	;--	キック(手前)
SP_02b_e = 154401	;--	キック(奥)
SP_03_e = 154403 ;-- 地上に移動してかめはめ波の構え
SP_04_e = 154405 ;-- かめはめ波を撃つ
SP_05_e = 154407 ;-- かめはめ波を上空に撃っている

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

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

--[[setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --気溜め〜突進(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 80, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 80, tame, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 22, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 102 );

--setMoveKey( spep_0 -3 + 0, 1, 251, -12.1 , 0 );
setMoveKey( spep_0 -3 + 3, 1, 323.6, 64.3 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 396.2, 140.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 468.7, 217.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 541.3, 293.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 613.9, 369.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 686.6, 446.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 759.2, 522.6 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 831.8, 599 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 904.5, 675.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 977.2, 751.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 1049.9, 828 , 0 );

--setScaleKey( spep_0 -3 + 0, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 3, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 4, 1, 3.5, 3.5 );
setScaleKey( spep_0 -3 + 6, 1, 4.09, 4.09 );
setScaleKey( spep_0 -3 + 8, 1, 4.68, 4.68 );
setScaleKey( spep_0 -3 + 10, 1, 5.26, 5.26 );
setScaleKey( spep_0 -3 + 12, 1, 5.85, 5.85 );
setScaleKey( spep_0 -3 + 14, 1, 6.44, 6.44 );
setScaleKey( spep_0 -3 + 16, 1, 7.03, 7.03 );
setScaleKey( spep_0 -3 + 18, 1, 7.62, 7.62 );
setScaleKey( spep_0 -3 + 20, 1, 8.21, 8.21 );
setScaleKey( spep_0 -3 + 22, 1, 8.8, 8.8 );

--setRotateKey( spep_0 -3 + 0, 1, -9 );
setRotateKey( spep_0 -3 + 3, 1, -9 );
setRotateKey( spep_0 -3 + 6, 1, -8.9 );
setRotateKey( spep_0 -3 + 22, 1, -8.9 );

-- ** 黒フェード ** --
entryFadeBg( spep_0, 0, 80, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
se_1044 = playSe( spep_0 + 0, 1044 );
playSe( spep_0 + 0, 1036 );
se_1181 = playSe( spep_0 + 0, 1181 );
setSeVolume( spep_0 + 0, 1044, 50 );
setSeVolume( spep_0 + 0, 1036, 40 );
setSeVolume( spep_0 + 0, 1181, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, se_1044, 0 );
stopSe( SP_dodge - 12, se_1181, 0 );

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

-- ** 書き文字エントリー ** --
ctDon = entryEffectLife( spep_0 -3 + 48, 10019, 16, 0x80, -1, 0, -75, -90 ); --ドンッ
setEffMoveKey( spep_0 -3 + 48, ctDon, -75, -90 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctDon, -7, 24.5 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctDon, 61.1, 139 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctDon, 65.1, 162 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctDon, 69.1, 185 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctDon, 73.1, 208 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctDon, 77.1, 231 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctDon, 71.1, 231 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctDon, 65.1, 231 , 0 );

setEffScaleKey( spep_0 -3 + 48, ctDon, 1, 1 );
setEffScaleKey( spep_0 -3 + 50, ctDon, 2.03, 2.03 );
setEffScaleKey( spep_0 -3 + 52, ctDon, 3.07, 3.07 );
setEffScaleKey( spep_0 -3 + 54, ctDon, 3.15, 3.15 );
setEffScaleKey( spep_0 -3 + 56, ctDon, 3.23, 3.23 );
setEffScaleKey( spep_0 -3 + 58, ctDon, 3.31, 3.31 );
setEffScaleKey( spep_0 -3 + 60, ctDon, 3.39, 3.39 );
setEffScaleKey( spep_0 -3 + 62, ctDon, 3.68, 3.68 );
setEffScaleKey( spep_0 -3 + 64, ctDon, 3.97, 3.97 );

setEffRotateKey( spep_0 -3 + 48, ctDon, 23.7 );
setEffRotateKey( spep_0 -3 + 64, ctDon, 23.7 );

setEffAlphaKey( spep_0 -3 + 48, ctDon, 255 );
setEffAlphaKey( spep_0 -3 + 60, ctDon, 255 );
setEffAlphaKey( spep_0 -3 + 62, ctDon, 128 );
setEffAlphaKey( spep_0 -3 + 64, ctDon, 0 );

-- ** 音 ** --
se_1036 = playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 40 );
se_1183 = playSe( spep_0 + 26, 1183 );
setSeVolume( spep_0 + 46, 1181, 158 );
se_0009 = playSe( spep_0 + 46, 09 );
playSe( spep_0 + 46, 1182 );
stopSe( spep_0 + 46, se_1044, 0 );
stopSe( spep_0 + 46, se_1036, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 80;

------------------------------------------------------
--	キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02a, 0x100, -1, 0, 0, 0 ); --キック(手前)(ef_002_a)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 56, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 56, kick_f, 255 );

kick_b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0 ); --キック(奥)(ef_002_b)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 56, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 56, kick_b, 255 );

-- ** 書き文字エントリー ** --
ctBaki = entryEffectLife( spep_1 -3 + 12, 10020, 14, 0x100, -1, 0, 166, 303.9 ); --バキッ
setEffMoveKey( spep_1 -3 + 12, ctBaki, 166, 303.9 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctBaki, 137.5, 322.1 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctBaki, 108.9, 340.2 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctBaki, 108.9, 339.4 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctBaki, 109, 338.6 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctBaki, 109, 337.8 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctBaki, 109, 337 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctBaki, 109, 336.2 , 0 );

setEffScaleKey( spep_1 -3 + 12, ctBaki, 1, 1 );
setEffScaleKey( spep_1 -3 + 14, ctBaki, 1.53, 1.53 );
setEffScaleKey( spep_1 -3 + 16, ctBaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 18, ctBaki, 2.11, 2.11 );
setEffScaleKey( spep_1 -3 + 20, ctBaki, 2.18, 2.18 );
setEffScaleKey( spep_1 -3 + 22, ctBaki, 2.24, 2.24 );
setEffScaleKey( spep_1 -3 + 24, ctBaki, 2.31, 2.31 );
setEffScaleKey( spep_1 -3 + 26, ctBaki, 2.37, 2.37 );

setEffRotateKey( spep_1 -3 + 12, ctBaki, 0 );
setEffRotateKey( spep_1 -3 + 26, ctBaki, 0 );

setEffAlphaKey( spep_1 -3 + 12, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 16, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 18, ctBaki, 204 );
setEffAlphaKey( spep_1 -3 + 20, ctBaki, 153 );
setEffAlphaKey( spep_1 -3 + 22, ctBaki, 102 );
setEffAlphaKey( spep_1 -3 + 24, ctBaki, 51 );
setEffAlphaKey( spep_1 -3 + 26, ctBaki, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 28, 1, 0 );
changeAnime( spep_1 -3 + 3, 1, 104 );
changeAnime( spep_1 -3 + 10, 1, 106 );

--setMoveKey( spep_1 -3 + 0, 1, 299.2, 42.9 , 0 );
setMoveKey( spep_1 -3 + 3, 1, 274.2, 43.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 249.2, 43.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 224.2, 44.4 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 199.2, 44.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 248.8, 88.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 276.6, 190.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 273.6, 157.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 318.3, 252.8 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 255.8, 266.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 377.7, 343.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 430.8, 349.6 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 443.1, 391.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 526.2, 504.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 599.4, 541 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 14, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 24, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 28, 1, 0.21, 0.21 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 9, 1, 0 );
setRotateKey( spep_1 -3 + 10, 1, -30.5 );
setRotateKey( spep_1 -3 + 12, 1, -20.3 );
setRotateKey( spep_1 -3 + 14, 1, -10 );
setRotateKey( spep_1 -3 + 16, 1, -9.2 );
setRotateKey( spep_1 -3 + 18, 1, -8.3 );
setRotateKey( spep_1 -3 + 20, 1, -7.4 );
setRotateKey( spep_1 -3 + 22, 1, -6.6 );
setRotateKey( spep_1 -3 + 24, 1, -5.7 );
setRotateKey( spep_1 -3 + 26, 1, -4.9 );
setRotateKey( spep_1 -3 + 28, 1, -4 );

-- ** 黒フェード ** --
entryFadeBg( spep_1, 0, 56, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_1 + 12, 1110 );
stopSe( spep_1 + 15, se_1183, 3 );
stopSe( spep_1 + 18, se_0009, 0 );
playSe( spep_1 + 44, 1109 );
playSe( spep_1 + 44, 1132 );
setSeVolume( spep_1 + 44, 1132, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;

------------------------------------------------------
--	地上に移動してかめはめ波の構え
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --地上に移動してかめはめ波の構え(ef_003)
setEffMoveKey( spep_2 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, kamae, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 86, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 86, kamae, 255 );

x1 = 4;
-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 12 -x1 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 12 -x1 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 -3 + 20-x1, 190006, 68, 0x100, -1, 0, 40, 520 ); --ゴゴゴゴ

setEffMoveKey( spep_2 -3 + 20-x1, ctgogo, 40, 520 , 0 );
setEffMoveKey( spep_2 -3 + 80-x1, ctgogo, 40, 520 , 0 );
setEffMoveKey( spep_2 -3 + 82-x1, ctgogo, 40, 528 , 0 );
setEffMoveKey( spep_2 -3 + 84-x1, ctgogo, 40, 524 , 0 );
setEffMoveKey( spep_2 -3 + 86-x1, ctgogo, 40, 534 , 0 );
setEffMoveKey( spep_2 -3 + 88-x1, ctgogo, 40, 537 , 0 );

setEffScaleKey( spep_2 -3 + 20-x1, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 -3 + 82-x1, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_2 -3 + 84-x1, ctgogo, 0.8, 0.8 );
setEffScaleKey( spep_2 -3 + 86-x1, ctgogo, 0.9, 0.9 );
setEffScaleKey( spep_2 -3 + 88-x1, ctgogo, 1, 1 );

setEffRotateKey( spep_2 -3 + 20-x1, ctgogo, 0 );
setEffRotateKey( spep_2 -3 + 88-x1, ctgogo, 0 );

setEffAlphaKey( spep_2 -3 + 20-x1, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 80-x1, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 82-x1, ctgogo, 191 );
setEffAlphaKey( spep_2 -3 + 84-x1, ctgogo, 128 );
setEffAlphaKey( spep_2 -3 + 86-x1, ctgogo, 64 );
setEffAlphaKey( spep_2 -3 + 88-x1, ctgogo, 0 );

-- ** 黒フェード ** --
entryFadeBg( spep2, 0, 86, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_2 + 16, 1018 );
setSeVolume( spep_2 + 26, 1132, 50 );
playSe( spep_2 + 26, 1036 );
playSe( spep_2 + 50, 1036 );
se_1036 = playSe( spep_2 + 74, 1036 );
stopSe( spep_2 + 79, se_1181, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

------------------------------------------------------
--	カードカットイン
------------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
playSe( spep_3 + 6, 1035 );
stopSe( spep_3 + 8, se_1036, 0 );

--白フェード
entryFade( spep_3 + 0, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
--	かめはめ波を撃つ
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --かめはめ波を撃つ(ef_004)
setEffMoveKey( spep_4 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, hassha, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 86, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 86, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4-3 + 6,  10012, 18, 0x100, -1, 0, 65.1, -125.4 );--ズオッ

setEffMoveKey( spep_4-3 + 6, ctzuo, 65.1, -125.4 , 0 );
setEffMoveKey( spep_4-3 + 8, ctzuo, 91.2, -136.2 , 0 );
setEffMoveKey( spep_4-3 + 10, ctzuo, 75.4, -143.9 , 0 );
setEffMoveKey( spep_4-3 + 12, ctzuo, 107.6, -155.2 , 0 );
setEffMoveKey( spep_4-3 + 14, ctzuo, 70.2, -155.2 , 0 );
setEffMoveKey( spep_4-3 + 16, ctzuo, 88.2, -159.2 , 0 );
setEffMoveKey( spep_4-3 + 18, ctzuo, 49.7, -159.1 , 0 );
setEffMoveKey( spep_4-3 + 20, ctzuo, 68.7, -163.3 , 0 );
setEffMoveKey( spep_4-3 + 22, ctzuo, 29.1, -163 , 0 );
setEffMoveKey( spep_4-3 + 24, ctzuo, 18.8, -165 , 0 );

b=2.5;

setEffScaleKey( spep_4-3 + 6, ctzuo, 2.24, 2.24 );
--setEffScaleKey( spep_4-3 + 8, ctzuo, 0.74+b, 0.74+b );
--setEffScaleKey( spep_4-3 + 10, ctzuo, 0.85+b, 0.85+b );
--setEffScaleKey( spep_4-3 + 12, ctzuo, 0.96+b, 0.96+b );
--setEffScaleKey( spep_4-3 + 14, ctzuo, 0.98+b, 0.98+b );
setEffScaleKey( spep_4-3 + 16, ctzuo, 1+b, 1+b );
setEffScaleKey( spep_4-3 + 18, ctzuo, 1.02+b, 1.02+b );
setEffScaleKey( spep_4-3 + 20, ctzuo, 1.04+b, 1.04+b );
setEffScaleKey( spep_4-3 + 22, ctzuo, 1.06+b, 1.06+b );
setEffScaleKey( spep_4-3 + 24, ctzuo, 1.08+b, 1.08+b );

setEffRotateKey( spep_4-3 + 6, ctzuo, -10.7 );
setEffRotateKey( spep_4-3 + 24, ctzuo, -10.7 );

setEffAlphaKey( spep_4-3 + 6, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 14, ctzuo, 213 );
setEffAlphaKey( spep_4-3 + 16, ctzuo, 170 );
setEffAlphaKey( spep_4-3 + 18, ctzuo, 128 );
setEffAlphaKey( spep_4-3 + 20, ctzuo, 85 );
setEffAlphaKey( spep_4-3 + 22, ctzuo, 42 );
setEffAlphaKey( spep_4-3 + 24, ctzuo, 0 );

-- ** 黒フェード ** --
entryFadeBg( spep_4, 0, 86, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_4 + 0, 1022 );
se_1146 = playSe( spep_4 + 0, 1146 );
setSeVolume( spep_4 + 0, 1022, 79 );
setSeVolume( spep_4 + 0, 1146, 71 );
playSe( spep_4 + 84, 1181 );
SEx1 = playSe( spep_4 + 84, 1044 );
se_1161 = playSe( spep_4 + 84, 1161 );
se_1124 = playSe( spep_4 + 84, 1124 );
setSeVolume( spep_4 + 84, 1161, 32 );
setSeVolume( spep_4 + 84, 1124, 56 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
--	かめはめ波を上空に撃っている
------------------------------------------------------
-- ** エフェクト等 ** --
hassha2 = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --かめはめ波を上空に撃っている(ef_005)
setEffMoveKey( spep_5 + 0, hassha2, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hassha2, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hassha2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hassha2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha2, 0 );
setEffRotateKey( spep_5 + 56, hassha2, 0 );
setEffAlphaKey( spep_5 + 0, hassha2, 255 );
setEffAlphaKey( spep_5 + 56, hassha2, 255 );

-- ** 書き文字エントリー ** --
ctZudodo = entryEffectLife( spep_5 -3 + 3, 10014, 55, 0x100, -1, 0, 6.9, -417.1 ); --ズドドドッ
--setEffMoveKey( spep_5 -3 + 0, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 3, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 4, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 6, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 8, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 10, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 12, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 14, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 16, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 18, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctZudodo, 6.9, -417.1 , 0 );

setEffScaleKey( spep_5 -3 + 3, ctZudodo, 2.31, 2.31 );
setEffScaleKey( spep_5 -3 + 58, ctZudodo, 2.31, 2.31 );

setEffRotateKey( spep_5 -3 + 0, ctZudodo, 47.1 );
setEffRotateKey( spep_5 -3 + 58, ctZudodo, 47.1 );

setEffAlphaKey( spep_5 -3 + 3, ctZudodo, 255 );
setEffAlphaKey( spep_5 -3 + 58, ctZudodo, 255 );

-- ** 黒フェード ** --
entryFadeBg( spep_5, 0, 56, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
stopSe( spep_5 + 56, SEx1, 0 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
--	敵がかめはめ波に包まれる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_06a, 0x100, -1, 0, 0, 0 ); --敵がかめはめ波に包まれる(手前)(ef_006_b)
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 32, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 32, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 32, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 32, hit_f, 255 );

hit_b = entryEffect( spep_6 + 0, SP_06b, 0x80, -1, 0, 0, 0 ); --敵がかめはめ波に包まれる(奥)(ef_006_a)
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 32, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 32, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 32, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 32, hit_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_6 -3 + 3, 1, 1 );
setDisp( spep_6 -3 + 34, 1, 0 );
changeAnime( spep_6 -3 + 3, 1, 106 );

--setMoveKey( spep_6 -3 + 0, 1, -192.8, -141.2 , 0 );
setMoveKey( spep_6 -3 + 3, 1, -91.4, -26.5 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -14.8, 79 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 69.9, 150.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 111.6, 223.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 145.4, 255.8 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 177.6, 313.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 212, 335.3 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 230, 373.5 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 233.1, 381.7 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 238.5, 401.6 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 261.4, 427 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 254.3, 419.1 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 244.3, 416.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 264.5, 422.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 245.1, 422.3 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 256.9, 416.5 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 261.9, 425.5 , 0 );

--setScaleKey( spep_6 -3 + 0, 1, 2.27, 2.27 );
setScaleKey( spep_6 -3 + 3, 1, 1.85, 1.85 );
setScaleKey( spep_6 -3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_6 -3 + 8, 1, 0.99, 0.99 );
setScaleKey( spep_6 -3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 12, 1, 0.66, 0.66 );
setScaleKey( spep_6 -3 + 14, 1, 0.55, 0.55 );
setScaleKey( spep_6 -3 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_6 -3 + 18, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 20, 1, 0.38, 0.38 );
setScaleKey( spep_6 -3 + 22, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 24, 1, 0.34, 0.34 );
setScaleKey( spep_6 -3 + 26, 1, 0.33, 0.33 );
setScaleKey( spep_6 -3 + 28, 1, 0.32, 0.32 );
setScaleKey( spep_6 -3 + 34, 1, 0.32, 0.32 );

setRotateKey( spep_6 -3 + 3, 1, -21 );
setRotateKey( spep_6 -3 + 34, 1, -21 );

-- ** 黒フェード ** --
entryFadeBg( spep_6, 0, 32, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_6 + 2, 1021 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 32;

------------------------------------------------------
--	フィニッシュの爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --フィニッシュの爆発(ef_007)
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 236, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 236, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 236, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 236, finish, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_7 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 ); --ギャンッ
setEffMoveKey( spep_7 + 0, ctGyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_7 -3 + 61, ctGyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_7 -3 + 3, ctGyan, 2, 2 );
setEffScaleKey( spep_7 -3 + 10, ctGyan, 3.8, 3.8 );
setEffScaleKey( spep_7 -3 + 61, ctGyan, 4.5, 4.5 );

setEffRotateKey( spep_7 + 0, ctGyan, 0 );
setEffRotateKey( spep_7 -3 + 61, ctGyan, 0 );

setEffAlphaKey( spep_7 + 0, ctGyan, 255 );
setEffAlphaKey( spep_7 -3 + 61, ctGyan, 255 );

-- ** 白フェード ** --
entryFade( spep_7 -3 + 48, 12, 2, 6, fcolor_r, fcolor_g, fcolor_b ,255 );
entryFade( spep_7 -3 + 78, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b ,128 );

-- ** 黒フェード ** --
entryFadeBg( spep_7, 0, 236, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_7 + 4, 1023 );
stopSe( spep_7 + 4, se_1161, 17 );
stopSe( spep_7 + 4, se_1124, 17 );
stopSe( spep_7 + 21, se_1146, 0 );
playSe( spep_7 + 87, 1159 );
playSe( spep_7 + 87, 1024 );
setSeVolume( spep_7 + 87, 1159, 63 );
setSeVolume( spep_7 + 87, 1024, 63 );

-- ダメージ表示
dealDamage( spep_7 + 76 );

endPhase( spep_7 + 234 );
else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め〜突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01_e, 0x80, -1, 0, 0, 0 ); --気溜め〜突進(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 80, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 80, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 80, tame, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 22, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 102 );

--setMoveKey( spep_0 -3 + 0, 1, 251, -12.1 , 0 );
setMoveKey( spep_0 -3 + 3, 1, 323.6, 64.3 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 396.2, 140.7 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 468.7, 217.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 541.3, 293.5 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 613.9, 369.9 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 686.6, 446.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 759.2, 522.6 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 831.8, 599 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 904.5, 675.3 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 977.2, 751.7 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 1049.9, 828 , 0 );

--setScaleKey( spep_0 -3 + 0, 1, 2.32, 2.32 );
setScaleKey( spep_0 -3 + 3, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 4, 1, 3.5, 3.5 );
setScaleKey( spep_0 -3 + 6, 1, 4.09, 4.09 );
setScaleKey( spep_0 -3 + 8, 1, 4.68, 4.68 );
setScaleKey( spep_0 -3 + 10, 1, 5.26, 5.26 );
setScaleKey( spep_0 -3 + 12, 1, 5.85, 5.85 );
setScaleKey( spep_0 -3 + 14, 1, 6.44, 6.44 );
setScaleKey( spep_0 -3 + 16, 1, 7.03, 7.03 );
setScaleKey( spep_0 -3 + 18, 1, 7.62, 7.62 );
setScaleKey( spep_0 -3 + 20, 1, 8.21, 8.21 );
setScaleKey( spep_0 -3 + 22, 1, 8.8, 8.8 );

--setRotateKey( spep_0 -3 + 0, 1, -9 );
setRotateKey( spep_0 -3 + 3, 1, -9 );
setRotateKey( spep_0 -3 + 6, 1, -8.9 );
setRotateKey( spep_0 -3 + 22, 1, -8.9 );

-- ** 黒フェード ** --
entryFadeBg( spep_0, 0, 80, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
se_1044 = playSe( spep_0 + 0, 1044 );
playSe( spep_0 + 0, 1036 );
se_1181 = playSe( spep_0 + 0, 1181 );
setSeVolume( spep_0 + 0, 1044, 50 );
setSeVolume( spep_0 + 0, 1036, 40 );
setSeVolume( spep_0 + 0, 1181, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE0, 0 );
stopSe( SP_dodge - 12, se_1044, 0 );
stopSe( SP_dodge - 12, se_1181, 0 );

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

-- ** 書き文字エントリー ** --
ctDon = entryEffectLife( spep_0 -3 + 48, 10019, 16, 0x80, -1, 0, -75, -90 ); --ドンッ
setEffMoveKey( spep_0 -3 + 48, ctDon, -75, -90 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctDon, -7, 24.5 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctDon, 61.1, 139 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctDon, 65.1, 162 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctDon, 69.1, 185 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctDon, 73.1, 208 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctDon, 77.1, 231 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctDon, 71.1, 231 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctDon, 65.1, 231 , 0 );

setEffScaleKey( spep_0 -3 + 48, ctDon, 1, 1 );
setEffScaleKey( spep_0 -3 + 50, ctDon, 2.03, 2.03 );
setEffScaleKey( spep_0 -3 + 52, ctDon, 3.07, 3.07 );
setEffScaleKey( spep_0 -3 + 54, ctDon, 3.15, 3.15 );
setEffScaleKey( spep_0 -3 + 56, ctDon, 3.23, 3.23 );
setEffScaleKey( spep_0 -3 + 58, ctDon, 3.31, 3.31 );
setEffScaleKey( spep_0 -3 + 60, ctDon, 3.39, 3.39 );
setEffScaleKey( spep_0 -3 + 62, ctDon, 3.68, 3.68 );
setEffScaleKey( spep_0 -3 + 64, ctDon, 3.97, 3.97 );

setEffRotateKey( spep_0 -3 + 48, ctDon, 23.7 );
setEffRotateKey( spep_0 -3 + 64, ctDon, 23.7 );

setEffAlphaKey( spep_0 -3 + 48, ctDon, 255 );
setEffAlphaKey( spep_0 -3 + 60, ctDon, 255 );
setEffAlphaKey( spep_0 -3 + 62, ctDon, 128 );
setEffAlphaKey( spep_0 -3 + 64, ctDon, 0 );

-- ** 音 ** --
se_1036 = playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 40 );
se_1183 = playSe( spep_0 + 26, 1183 );
setSeVolume( spep_0 + 46, 1181, 158 );
se_0009 = playSe( spep_0 + 46, 09 );
playSe( spep_0 + 46, 1182 );
stopSe( spep_0 + 46, se_1044, 0 );
stopSe( spep_0 + 46, se_1036, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 80;

------------------------------------------------------
--	キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02a_e, 0x100, -1, 0, 0, 0 ); --キック(手前)(ef_002_a)
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 56, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 56, kick_f, 255 );

kick_b = entryEffect( spep_1 + 0, SP_02b_e, 0x80, -1, 0, 0, 0 ); --キック(奥)(ef_002_b)
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 56, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 56, kick_b, 255 );

-- ** 書き文字エントリー ** --
ctBaki = entryEffectLife( spep_1 -3 + 12, 10020, 14, 0x100, -1, 0, 166, 303.9 ); --バキッ
setEffMoveKey( spep_1 -3 + 12, ctBaki, 166, 303.9 , 0 );
setEffMoveKey( spep_1 -3 + 14, ctBaki, 137.5, 322.1 , 0 );
setEffMoveKey( spep_1 -3 + 16, ctBaki, 108.9, 340.2 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctBaki, 108.9, 339.4 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctBaki, 109, 338.6 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctBaki, 109, 337.8 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctBaki, 109, 337 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctBaki, 109, 336.2 , 0 );

setEffScaleKey( spep_1 -3 + 12, ctBaki, 1, 1 );
setEffScaleKey( spep_1 -3 + 14, ctBaki, 1.53, 1.53 );
setEffScaleKey( spep_1 -3 + 16, ctBaki, 2.05, 2.05 );
setEffScaleKey( spep_1 -3 + 18, ctBaki, 2.11, 2.11 );
setEffScaleKey( spep_1 -3 + 20, ctBaki, 2.18, 2.18 );
setEffScaleKey( spep_1 -3 + 22, ctBaki, 2.24, 2.24 );
setEffScaleKey( spep_1 -3 + 24, ctBaki, 2.31, 2.31 );
setEffScaleKey( spep_1 -3 + 26, ctBaki, 2.37, 2.37 );

setEffRotateKey( spep_1 -3 + 12, ctBaki, -40 );
setEffRotateKey( spep_1 -3 + 26, ctBaki, -40 );

setEffAlphaKey( spep_1 -3 + 12, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 16, ctBaki, 255 );
setEffAlphaKey( spep_1 -3 + 18, ctBaki, 204 );
setEffAlphaKey( spep_1 -3 + 20, ctBaki, 153 );
setEffAlphaKey( spep_1 -3 + 22, ctBaki, 102 );
setEffAlphaKey( spep_1 -3 + 24, ctBaki, 51 );
setEffAlphaKey( spep_1 -3 + 26, ctBaki, 0 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 28, 1, 0 );
changeAnime( spep_1 -3 + 3, 1, 104 );
changeAnime( spep_1 -3 + 10, 1, 106 );

--setMoveKey( spep_1 -3 + 0, 1, 299.2, 42.9 , 0 );
setMoveKey( spep_1 -3 + 3, 1, 274.2, 43.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 249.2, 43.9 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 224.2, 44.4 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 199.2, 44.9 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 248.8, 88.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 276.6, 190.2 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 273.6, 157.5 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 318.3, 252.8 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 255.8, 266.7 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 377.7, 343.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 430.8, 349.6 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 443.1, 391.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 526.2, 504.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 599.4, 541 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 14, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 20, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 22, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 24, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_1 -3 + 28, 1, 0.21, 0.21 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 9, 1, 0 );
setRotateKey( spep_1 -3 + 10, 1, -30.5 );
setRotateKey( spep_1 -3 + 12, 1, -20.3 );
setRotateKey( spep_1 -3 + 14, 1, -10 );
setRotateKey( spep_1 -3 + 16, 1, -9.2 );
setRotateKey( spep_1 -3 + 18, 1, -8.3 );
setRotateKey( spep_1 -3 + 20, 1, -7.4 );
setRotateKey( spep_1 -3 + 22, 1, -6.6 );
setRotateKey( spep_1 -3 + 24, 1, -5.7 );
setRotateKey( spep_1 -3 + 26, 1, -4.9 );
setRotateKey( spep_1 -3 + 28, 1, -4 );

-- ** 黒フェード ** --
entryFadeBg( spep_1, 0, 56, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_1 + 12, 1110 );
stopSe( spep_1 + 15, se_1183, 3 );
stopSe( spep_1 + 18, se_0009, 0 );
playSe( spep_1 + 44, 1109 );
playSe( spep_1 + 44, 1132 );
setSeVolume( spep_1 + 44, 1132, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;

------------------------------------------------------
--	地上に移動してかめはめ波の構え
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_2 + 0, SP_03_e, 0x100, -1, 0, 0, 0 ); --地上に移動してかめはめ波の構え(ef_003)
setEffMoveKey( spep_2 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_2 + 86, kamae, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, kamae, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kamae, 0 );
setEffRotateKey( spep_2 + 86, kamae, 0 );
setEffAlphaKey( spep_2 + 0, kamae, 255 );
setEffAlphaKey( spep_2 + 86, kamae, 255 );

x1 = 4;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 12 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 12 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 -3 + 20-x1, 190006, 68, 0x100, -1, 0, 40, 520 ); --ゴゴゴゴ

setEffMoveKey( spep_2 -3 + 20-x1, ctgogo, 40, 520 , 0 );
setEffMoveKey( spep_2 -3 + 80-x1, ctgogo, 40, 520 , 0 );
setEffMoveKey( spep_2 -3 + 82-x1, ctgogo, 40, 528 , 0 );
setEffMoveKey( spep_2 -3 + 84-x1, ctgogo, 40, 524 , 0 );
setEffMoveKey( spep_2 -3 + 86-x1, ctgogo, 40, 534 , 0 );
setEffMoveKey( spep_2 -3 + 88-x1, ctgogo, 40, 537 , 0 );

setEffScaleKey( spep_2 -3 + 20-x1, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 -3 + 82-x1, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_2 -3 + 84-x1, ctgogo, -0.8, 0.8 );
setEffScaleKey( spep_2 -3 + 86-x1, ctgogo, -0.9, 0.9 );
setEffScaleKey( spep_2 -3 + 88-x1, ctgogo, -1, 1 );

setEffRotateKey( spep_2 -3 + 20-x1, ctgogo, 0 );
setEffRotateKey( spep_2 -3 + 88-x1, ctgogo, 0 );

setEffAlphaKey( spep_2 -3 + 20-x1, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 80-x1, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 82-x1, ctgogo, 191 );
setEffAlphaKey( spep_2 -3 + 84-x1, ctgogo, 128 );
setEffAlphaKey( spep_2 -3 + 86-x1, ctgogo, 64 );
setEffAlphaKey( spep_2 -3 + 88-x1, ctgogo, 0 );

-- ** 黒フェード ** --
entryFadeBg( spep2, 0, 86, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_2 + 16, 1018 );
setSeVolume( spep_2 + 26, 1132, 50 );
playSe( spep_2 + 26, 1036 );
playSe( spep_2 + 50, 1036 );
se_1036 = playSe( spep_2 + 74, 1036 );
stopSe( spep_2 + 79, se_1181, 0 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

------------------------------------------------------
--	カードカットイン
------------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
playSe( spep_3 + 6, 1035 );
stopSe( spep_3 + 8, se_1036, 0 );

--白フェード
entryFade( spep_3 + 0, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
--	かめはめ波を撃つ
------------------------------------------------------
-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_04_e, 0x80, -1, 0, 0, 0 ); --かめはめ波を撃つ(ef_004)
setEffMoveKey( spep_4 + 0, hassha, 0, 0, 0 );
setEffMoveKey( spep_4 + 86, hassha, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 86, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 86, hassha, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_4-3 + 6,  10012, 18, 0x100, -1, 0, 65.1, -125.4 );--ズオッ

setEffMoveKey( spep_4-3 + 6, ctzuo, 65.1, -125.4 , 0 );
setEffMoveKey( spep_4-3 + 8, ctzuo, 91.2, -136.2 , 0 );
setEffMoveKey( spep_4-3 + 10, ctzuo, 75.4, -143.9 , 0 );
setEffMoveKey( spep_4-3 + 12, ctzuo, 107.6, -155.2 , 0 );
setEffMoveKey( spep_4-3 + 14, ctzuo, 70.2, -155.2 , 0 );
setEffMoveKey( spep_4-3 + 16, ctzuo, 88.2, -159.2 , 0 );
setEffMoveKey( spep_4-3 + 18, ctzuo, 49.7, -159.1 , 0 );
setEffMoveKey( spep_4-3 + 20, ctzuo, 68.7, -163.3 , 0 );
setEffMoveKey( spep_4-3 + 22, ctzuo, 29.1, -163 , 0 );
setEffMoveKey( spep_4-3 + 24, ctzuo, 18.8, -165 , 0 );

b=2.5;

setEffScaleKey( spep_4-3 + 6, ctzuo, 2.24, 2.24 );
--setEffScaleKey( spep_4-3 + 8, ctzuo, 0.74+b, 0.74+b );
--setEffScaleKey( spep_4-3 + 10, ctzuo, 0.85+b, 0.85+b );
--setEffScaleKey( spep_4-3 + 12, ctzuo, 0.96+b, 0.96+b );
--setEffScaleKey( spep_4-3 + 14, ctzuo, 0.98+b, 0.98+b );
setEffScaleKey( spep_4-3 + 16, ctzuo, 1+b, 1+b );
setEffScaleKey( spep_4-3 + 18, ctzuo, 1.02+b, 1.02+b );
setEffScaleKey( spep_4-3 + 20, ctzuo, 1.04+b, 1.04+b );
setEffScaleKey( spep_4-3 + 22, ctzuo, 1.06+b, 1.06+b );
setEffScaleKey( spep_4-3 + 24, ctzuo, 1.08+b, 1.08+b );

setEffRotateKey( spep_4-3 + 6, ctzuo, -30.7 );
setEffRotateKey( spep_4-3 + 24, ctzuo, -30.7 );

setEffAlphaKey( spep_4-3 + 6, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 12, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 14, ctzuo, 213 );
setEffAlphaKey( spep_4-3 + 16, ctzuo, 170 );
setEffAlphaKey( spep_4-3 + 18, ctzuo, 128 );
setEffAlphaKey( spep_4-3 + 20, ctzuo, 85 );
setEffAlphaKey( spep_4-3 + 22, ctzuo, 42 );
setEffAlphaKey( spep_4-3 + 24, ctzuo, 0 );

-- ** 黒フェード ** --
entryFadeBg( spep_4, 0, 86, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_4 + 0, 1022 );
se_1146 = playSe( spep_4 + 0, 1146 );
setSeVolume( spep_4 + 0, 1022, 79 );
setSeVolume( spep_4 + 0, 1146, 71 );
playSe( spep_4 + 84, 1181 );
SEx1 =playSe( spep_4 + 84, 1044 );
se_1161 = playSe( spep_4 + 84, 1161 );
se_1124 = playSe( spep_4 + 84, 1124 );
setSeVolume( spep_4 + 84, 1161, 32 );
setSeVolume( spep_4 + 84, 1124, 56 );

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
--	かめはめ波を上空に撃っている
------------------------------------------------------
-- ** エフェクト等 ** --
hassha2 = entryEffect( spep_5 + 0, SP_05_e, 0x80, -1, 0, 0, 0 ); --かめはめ波を上空に撃っている(ef_005)
setEffMoveKey( spep_5 + 0, hassha2, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hassha2, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hassha2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hassha2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hassha2, 0 );
setEffRotateKey( spep_5 + 56, hassha2, 0 );
setEffAlphaKey( spep_5 + 0, hassha2, 255 );
setEffAlphaKey( spep_5 + 56, hassha2, 255 );

-- ** 書き文字エントリー ** --
ctZudodo = entryEffectLife( spep_5 -3 + 3, 10014, 55, 0x100, -1, 0, 6.9, -417.1 ); --ズドドドッ
--setEffMoveKey( spep_5 -3 + 0, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 3, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 4, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 6, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 8, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 10, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 12, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 14, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 16, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 18, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 20, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 22, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 24, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 26, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 28, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 30, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 32, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 34, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 36, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 38, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 40, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 42, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 44, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 46, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 48, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 50, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 52, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 54, ctZudodo, 6.9, -417.1 , 0 );
setEffMoveKey( spep_5 -3 + 56, ctZudodo, 17.2, -399.3 , 0 );
setEffMoveKey( spep_5 -3 + 58, ctZudodo, 6.9, -417.1 , 0 );

setEffScaleKey( spep_5 -3 + 3, ctZudodo, 2.31, 2.31 );
setEffScaleKey( spep_5 -3 + 58, ctZudodo, 2.31, 2.31 );

setEffRotateKey( spep_5 -3 + 0, ctZudodo, -20 );
setEffRotateKey( spep_5 -3 + 58, ctZudodo, -20 );

setEffAlphaKey( spep_5 -3 + 3, ctZudodo, 255 );
setEffAlphaKey( spep_5 -3 + 58, ctZudodo, 255 );

-- ** 黒フェード ** --
entryFadeBg( spep_5, 0, 56, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
stopSe( spep_5 + 56, SEx1, 0 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
--	敵がかめはめ波に包まれる
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_06a, 0x100, -1, 0, 0, 0 ); --敵がかめはめ波に包まれる(手前)(ef_006_b)
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 32, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 32, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 32, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 32, hit_f, 255 );

hit_b = entryEffect( spep_6 + 0, SP_06b, 0x80, -1, 0, 0, 0 ); --敵がかめはめ波に包まれる(奥)(ef_006_a)
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 32, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 32, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 32, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 32, hit_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_6 -3 + 3, 1, 1 );
setDisp( spep_6 -3 + 34, 1, 0 );
changeAnime( spep_6 -3 + 3, 1, 106 );

--setMoveKey( spep_6 -3 + 0, 1, -192.8, -141.2 , 0 );
setMoveKey( spep_6 -3 + 3, 1, -91.4, -26.5 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -14.8, 79 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 69.9, 150.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 111.6, 223.8 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 145.4, 255.8 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 177.6, 313.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 212, 335.3 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 230, 373.5 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 233.1, 381.7 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 238.5, 401.6 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 261.4, 427 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 254.3, 419.1 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 244.3, 416.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 264.5, 422.8 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 245.1, 422.3 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 256.9, 416.5 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 261.9, 425.5 , 0 );

--setScaleKey( spep_6 -3 + 0, 1, 2.27, 2.27 );
setScaleKey( spep_6 -3 + 3, 1, 1.85, 1.85 );
setScaleKey( spep_6 -3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 6, 1, 1.22, 1.22 );
setScaleKey( spep_6 -3 + 8, 1, 0.99, 0.99 );
setScaleKey( spep_6 -3 + 10, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 12, 1, 0.66, 0.66 );
setScaleKey( spep_6 -3 + 14, 1, 0.55, 0.55 );
setScaleKey( spep_6 -3 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_6 -3 + 18, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 20, 1, 0.38, 0.38 );
setScaleKey( spep_6 -3 + 22, 1, 0.35, 0.35 );
setScaleKey( spep_6 -3 + 24, 1, 0.34, 0.34 );
setScaleKey( spep_6 -3 + 26, 1, 0.33, 0.33 );
setScaleKey( spep_6 -3 + 28, 1, 0.32, 0.32 );
setScaleKey( spep_6 -3 + 34, 1, 0.32, 0.32 );

setRotateKey( spep_6 -3 + 3, 1, -21 );
setRotateKey( spep_6 -3 + 34, 1, -21 );

-- ** 黒フェード ** --
entryFadeBg( spep_6, 0, 32, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_6 + 2, 1021 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 32;

------------------------------------------------------
--	フィニッシュの爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_07, 0x80, -1, 0, 0, 0 ); --フィニッシュの爆発(ef_007)
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 236, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_7 + 236, finish, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 236, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 236, finish, 255 );

-- ** 書き文字エントリー ** --
ctGyan = entryEffectLife( spep_7 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 ); --ギャンッ
setEffMoveKey( spep_7 + 0, ctGyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_7 -3 + 61, ctGyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_7 -3 + 3, ctGyan, 2, 2 );
setEffScaleKey( spep_7 -3 + 10, ctGyan, 3.8, 3.8 );
setEffScaleKey( spep_7 -3 + 61, ctGyan, 4.5, 4.5 );

setEffRotateKey( spep_7 + 0, ctGyan, 0 );
setEffRotateKey( spep_7 -3 + 61, ctGyan, 0 );

setEffAlphaKey( spep_7 + 0, ctGyan, 255 );
setEffAlphaKey( spep_7 -3 + 61, ctGyan, 255 );

-- ** 白フェード ** --
entryFade( spep_7 -3 + 48, 12, 2, 6, fcolor_r, fcolor_g, fcolor_b ,255 );
entryFade( spep_7 -3 + 78, 0, 0, 6, fcolor_r, fcolor_g, fcolor_b ,128 );

-- ** 黒フェード ** --
entryFadeBg( spep_7, 0, 236, 0, 0, 0, 0, 255 );--背景の黒フェード

-- ** 音 ** --
playSe( spep_7 + 4, 1023 );
stopSe( spep_7 + 4, se_1161, 17 );
stopSe( spep_7 + 4, se_1124, 17 );
stopSe( spep_7 + 21, se_1146, 0 );
playSe( spep_7 + 87, 1159 );
playSe( spep_7 + 87, 1024 );
setSeVolume( spep_7 + 87, 1159, 63 );
setSeVolume( spep_7 + 87, 1024, 63 );

-- ダメージ表示
dealDamage( spep_7 + 76 );

endPhase( spep_7 + 234 );

end