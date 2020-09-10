--孫悟空(少年期)_かめはめ波（まがらない方）

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
SP_01 = 153150;  --ジャンプ、溜
SP_02 = 153151;  --放つ 被弾　手前
SP_03 = 153152;  --放つ 被弾　奥
SP_04 = 153153;  --放つ 被弾　青カバー
SP_05 = 153149;  --ジャンプ、溜、放つ　背景一番奥
SP_06 = 153185; --最後の背景

--敵側
SP_01r = 153157;  --敵：ジャンプ、溜
SP_02r = 153158;  --敵：放つ 被弾　手前

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
-- かめはめ波溜め(220F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kameryusen = entryEffectLife( spep_0 + 0, SP_05, 220, 0x80, -1, 0, 0, 0 );  --かめはめ波発射時の流線　一番奥(ef_005)
setEffMoveKey( spep_0 + 0, kameryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 220, kameryusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kameryusen, 1.0, 1.0 );
setEffScaleKey( spep_0 + 220, kameryusen, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kameryusen, 255 );
setEffAlphaKey( spep_0 + 220, kameryusen, 255 );
setEffRotateKey( spep_0 + 0, kameryusen, 0 );
setEffRotateKey( spep_0 + 220, kameryusen, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_0 + 68,  922, 76, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_0 + 68, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 68, ryusen1, 1, 1 );
setEffScaleKey( spep_0 + 144, ryusen1, 1, 1 );

setEffRotateKey( spep_0 + 68, ryusen1, 0 );
setEffRotateKey( spep_0 + 144, ryusen1, 0 );

setEffAlphaKey( spep_0 + 68, ryusen1, 80 );
setEffAlphaKey( spep_0 + 144, ryusen1, 80 );

-- ** エフェクト等 ** --
kamebeam_b = entryEffectLife( spep_0 + 0, SP_01, 220, 0x100, -1, 0, 0, 0 );  --かめはめ波発射　手前(ef_001)
setEffMoveKey( spep_0 + 0, kamebeam_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 220, kamebeam_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamebeam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 220, kamebeam_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kamebeam_b, 255 );
setEffAlphaKey( spep_0 + 220, kamebeam_b, 255 );  --顔カットインで切る
setEffRotateKey( spep_0 + 0, kamebeam_b, 0 );
setEffRotateKey( spep_0 + 220, kamebeam_b, 0 );

k = 16;
-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 148 -k, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 148 -k, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

k1 = 14;
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 216 -k1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 216 -k1, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 216 -k1, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 216 -k1, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 216 -k1, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 155 -k1, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 156 -k1, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 216 -k1, shuchusen1, 255 );

a = 3;
-- ** 書き文字エントリー ** --
ctbo = entryEffectLife( spep_0 + 50 -a,  10044, 32, 0x100, -1, 0, -87.2, -75.3 );  --ボ
setEffMoveKey( spep_0 + 50 -a, ctbo, -87.2, -75.3 , 0 );
setEffMoveKey( spep_0 + 52 -a, ctbo, -119, 57.7 , 0 );
setEffMoveKey( spep_0 + 54 -a, ctbo, -122.4, 91.8 , 0 );
setEffMoveKey( spep_0 + 56 -a, ctbo, -135.5, 117 , 0 );
setEffMoveKey( spep_0 + 58 -a, ctbo, -130.8, 132.3 , 0 );
setEffMoveKey( spep_0 + 60 -a, ctbo, -141.2, 138.4 , 0 );
setEffMoveKey( spep_0 + 62 -a, ctbo, -133.1, 145.6 , 0 );
setEffMoveKey( spep_0 + 64 -a, ctbo, -141.4, 154.5 , 0 );
setEffMoveKey( spep_0 + 66 -a, ctbo, -136.2, 151.5 , 0 );
setEffMoveKey( spep_0 + 68 -a, ctbo, -139.5, 159.7 , 0 );
setEffMoveKey( spep_0 + 70 -a, ctbo, -139.4, 154.8 , 0 );
setEffMoveKey( spep_0 + 72 -a, ctbo, -142.8, 146.1 , 0 );
setEffMoveKey( spep_0 + 74 -a, ctbo, -136.1, 99.2 , 0 );
setEffMoveKey( spep_0 + 76 -a, ctbo, -144.5, 31.7 , 0 );
setEffMoveKey( spep_0 + 78 -a, ctbo, -136.1, -65.4 , 0 );
setEffMoveKey( spep_0 + 80 -a, ctbo, -144.5, -195 , 0 );
setEffMoveKey( spep_0 + 82 -a, ctbo, -144.5, -347.8 , 0 );

setEffScaleKey( spep_0 + 50 -a, ctbo, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52 -a, ctbo, 0.97, 0.97 );
setEffScaleKey( spep_0 + 54 -a, ctbo, 1.08, 1.08 );
setEffScaleKey( spep_0 + 56 -a, ctbo, 1.15, 1.15 );
setEffScaleKey( spep_0 + 58 -a, ctbo, 1.19, 1.19 );
setEffScaleKey( spep_0 + 60 -a, ctbo, 1.22, 1.22 );
setEffScaleKey( spep_0 + 62 -a, ctbo, 1.24, 1.24 );
setEffScaleKey( spep_0 + 64 -a, ctbo, 1.25, 1.25 );
setEffScaleKey( spep_0 + 66 -a, ctbo, 1.26, 1.26 );
setEffScaleKey( spep_0 + 82 -a, ctbo, 1.26, 1.26 );

setEffRotateKey( spep_0 + 50 -a, ctbo, 0 );
setEffRotateKey( spep_0 + 82 -a, ctbo, 0 );

setEffAlphaKey( spep_0 + 50 -a, ctbo, 255 );
setEffAlphaKey( spep_0 + 70 -a, ctbo, 255 );
setEffAlphaKey( spep_0 + 72 -a, ctbo, 248 );
setEffAlphaKey( spep_0 + 74 -a, ctbo, 227 );
setEffAlphaKey( spep_0 + 76 -a, ctbo, 191 );
setEffAlphaKey( spep_0 + 78 -a, ctbo, 142 );
setEffAlphaKey( spep_0 + 80 -a, ctbo, 78 );
setEffAlphaKey( spep_0 + 82 -a, ctbo, 0 );

ctn = entryEffectLife( spep_0 + 50 -a,  10045, 32, 0x100, -1, 0, 45.7, -184.2 );  --ン
setEffMoveKey( spep_0 + 50 -a, ctn, 45.7, -184.2 , 0 );
setEffMoveKey( spep_0 + 52 -a, ctn, 95.2, -117.6 , 0 );
setEffMoveKey( spep_0 + 54 -a, ctn, 116.1, -103.5 , 0 );
setEffMoveKey( spep_0 + 56 -a, ctn, 118.4, -90.9 , 0 );
setEffMoveKey( spep_0 + 58 -a, ctn, 132, -82.9 , 0 );
setEffMoveKey( spep_0 + 60 -a, ctn, 128.2, -82.2 , 0 );
setEffMoveKey( spep_0 + 62 -a, ctn, 140.7, -78.6 , 0 );
setEffMoveKey( spep_0 + 64 -a, ctn, 134.6, -71.5 , 0 );
setEffMoveKey( spep_0 + 66 -a, ctn, 142, -76.3 , 0 );
setEffMoveKey( spep_0 + 68 -a, ctn, 138.7, -68.1 , 0 );
setEffMoveKey( spep_0 + 70 -a, ctn, 138.8, -73 , 0 );
setEffMoveKey( spep_0 + 72 -a, ctn, 135.4, -81.7 , 0 );
setEffMoveKey( spep_0 + 74 -a, ctn, 142.1, -128.6 , 0 );
setEffMoveKey( spep_0 + 76 -a, ctn, 133.8, -196.1 , 0 );
setEffMoveKey( spep_0 + 78 -a, ctn, 142.1, -293.2 , 0 );
setEffMoveKey( spep_0 + 80 -a, ctn, 133.8, -422.8 , 0 );
setEffMoveKey( spep_0 + 82 -a, ctn, 133.8, -575.6 , 0 );

setEffScaleKey( spep_0 + 50 -a, ctn, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52 -a, ctn, 0.97, 0.97 );
setEffScaleKey( spep_0 + 54 -a, ctn, 1.08, 1.08 );
setEffScaleKey( spep_0 + 56 -a, ctn, 1.15, 1.15 );
setEffScaleKey( spep_0 + 58 -a, ctn, 1.19, 1.19 );
setEffScaleKey( spep_0 + 60 -a, ctn, 1.22, 1.22 );
setEffScaleKey( spep_0 + 62 -a, ctn, 1.24, 1.24 );
setEffScaleKey( spep_0 + 64 -a, ctn, 1.25, 1.25 );
setEffScaleKey( spep_0 + 66 -a, ctn, 1.26, 1.26 );
setEffScaleKey( spep_0 + 82 -a, ctn, 1.26, 1.26 );

setEffRotateKey( spep_0 + 50 -a, ctn, 0 );
setEffRotateKey( spep_0 + 82 -a, ctn, 0 );

setEffAlphaKey( spep_0 + 50 -a, ctn, 255 );
setEffAlphaKey( spep_0 + 70 -a, ctn, 255 );
setEffAlphaKey( spep_0 + 72 -a, ctn, 248 );
setEffAlphaKey( spep_0 + 74 -a, ctn, 227 );
setEffAlphaKey( spep_0 + 76 -a, ctn, 191 );
setEffAlphaKey( spep_0 + 78 -a, ctn, 142 );
setEffAlphaKey( spep_0 + 80 -a, ctn, 78 );
setEffAlphaKey( spep_0 + 82 -a, ctn, 0 );

-- ** 音 ** --
playSe( spep_0 + 50 -a, 19 );  --ボン
playSe( spep_0 + 156, SE_04 );  --ゴゴゴ
--playSe( spep_0 + 236 -8, 1022 );  --かめはめ波発射

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFadeBg( spep_0 + 0, 0, 220, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 210, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 220;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波発射、被弾(188F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassya_b = entryEffectLife( spep_2 + 0, SP_03, 188, 0x80, -1, 0, 0, 0 );  --放つ　奥(ef_006)
setEffMoveKey( spep_2 + 0, hassya_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, hassya_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassya_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 188, hassya_b, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hassya_b, 255 );
setEffAlphaKey( spep_2 + 188, hassya_b, 255 );
setEffRotateKey( spep_2 + 0, hassya_b, 0 );
setEffRotateKey( spep_2 + 188, hassya_b, 0 );

-- ** 書き文字エントリー ** --
ctdom = entryEffectLife( spep_2 +0 , 10064, 110 -2, 0x80, -1, 0, 0, 0 );  --ドォム！！
setEffMoveKey( spep_2 + 0 , ctdom, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110 -2, ctdom, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ctdom, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110 -2, ctdom, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, ctdom, 255 );
setEffAlphaKey( spep_2 + 110 -2, ctdom, 255 );
setEffRotateKey( spep_2 + 0, ctdom, 0 );
setEffRotateKey( spep_2 + 110 -2, ctdom, 0 );

-- ** エフェクト等 ** --
hassya_f = entryEffectLife( spep_2 + 0, SP_02, 188, 0x80, -1, 0, 0, 0 );  --放つ　手前(ef_006)
setEffMoveKey( spep_2 + 0, hassya_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, hassya_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassya_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 188, hassya_f, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hassya_f, 255 );
setEffAlphaKey( spep_2 + 188, hassya_f, 255 );
setEffRotateKey( spep_2 + 0, hassya_f, 0 );
setEffRotateKey( spep_2 + 188, hassya_f, 0 );

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_2 + 0, SP_04, 188, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_009)
setEffMoveKey( spep_2 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, hidan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_2 + 188, hidan, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hidan, 255 );
setEffAlphaKey( spep_2 + 188, hidan, 255 );
setEffRotateKey( spep_2 + 0, hidan, 0 );
setEffRotateKey( spep_2 + 188, hidan, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -220 + 244, 1, 1 );

setMoveKey( spep_2 -220 + 244, 1, 1423, -1917.1 , 0 );
setMoveKey( spep_2 -220 + 246, 1, 798.3, -1059.5 , 0 );
setMoveKey( spep_2 -220 + 248, 1, 673.3, -886.5 , 0 );
setMoveKey( spep_2 -220 + 250, 1, 610.1, -798.9 , 0 );
setMoveKey( spep_2 -220 + 252, 1, 576.8, -752.7 , 0 );
setMoveKey( spep_2 -220 + 254, 1, 552, -718.4 , 0 );
setMoveKey( spep_2 -220 + 256, 1, 530.2, -688.1 , 0 );
setMoveKey( spep_2 -220 + 258, 1, 510.9, -661.3 , 0 );
setMoveKey( spep_2 -220 + 260, 1, 493.7, -637.5 , 0 );
setScaleKey( spep_2 -220 + 244, 1, 13.04, 13.04 );
setScaleKey( spep_2 -220 + 246, 1, 8.21, 8.21 );
setScaleKey( spep_2 -220 + 248, 1, 7.23, 7.23 );
setScaleKey( spep_2 -220 + 250, 1, 6.74, 6.74 );
setScaleKey( spep_2 -220 + 252, 1, 6.48, 6.48 );
setScaleKey( spep_2 -220 + 254, 1, 6.29, 6.29 );
setScaleKey( spep_2 -220 + 256, 1, 6.12, 6.12 );
setScaleKey( spep_2 -220 + 258, 1, 5.97, 5.97 );
setScaleKey( spep_2 -220 + 260, 1, 5.83, 5.83 );
setRotateKey( spep_2 -220 + 244, 1, 20.8 );
setRotateKey( spep_2 -220 + 246, 1, 20.9 );
setRotateKey( spep_2 -220 + 248, 1, 21 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

setMoveKey( SP_dodge, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+1, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+2, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+3, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+4, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+10, 1, 493.7, -637.5 , 0 );
setScaleKey( SP_dodge, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+1, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+2, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+3, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+4, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+10, 1, 5.83, 5.83 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

setDisp( spep_2 -220 + 319 + 10, 1, 0 );
changeAnime( spep_2 -220 + 244, 1, 118 );

setMoveKey( spep_2 -220 + 262, 1, 478.4, -616.3 , 0 );
setMoveKey( spep_2 -220 + 264, 1, 464.8, -597.4 , 0 );
setMoveKey( spep_2 -220 + 266, 1, 452.6, -580.5 , 0 );
setMoveKey( spep_2 -220 + 268, 1, 441.8, -565.5 , 0 );
setMoveKey( spep_2 -220 + 270, 1, 432.2, -552.2 , 0 );
setMoveKey( spep_2 -220 + 272, 1, 423.7, -540.3 , 0 );
setMoveKey( spep_2 -220 + 274, 1, 416.2, -529.9 , 0 );
setMoveKey( spep_2 -220 + 276, 1, 409.6, -520.7 , 0 );
setMoveKey( spep_2 -220 + 278, 1, 403.8, -512.7 , 0 );
setMoveKey( spep_2 -220 + 280, 1, 398.8, -505.8 , 0 );
setMoveKey( spep_2 -220 + 282, 1, 394.5, -499.8 , 0 );
setMoveKey( spep_2 -220 + 284, 1, 390.9, -494.8 , 0 );
setMoveKey( spep_2 -220 + 286, 1, 387.9, -490.6 , 0 );
setMoveKey( spep_2 -220 + 288, 1, 385.5, -487.3 , 0 );
setMoveKey( spep_2 -220 + 290, 1, 383.5, -484.6 , 0 );
setMoveKey( spep_2 -220 + 292, 1, 382.1, -482.5 , 0 );
setMoveKey( spep_2 -220 + 294, 1, 381, -481.1 , 0 );
setMoveKey( spep_2 -220 + 296, 1, 380.4, -480.1 , 0 );
setMoveKey( spep_2 -220 + 298, 1, 380, -479.6 , 0 );
setMoveKey( spep_2 -220 + 300, 1, 379.8, -479.4 , 0 );
setMoveKey( spep_2 -220 + 302, 1, 379.9, -479.5 , 0 );
setMoveKey( spep_2 -220 + 306, 1, 379.9, -479.5 , 0 );
setMoveKey( spep_2 -220 + 319 + 10, 1, 379.9, -479.5 , 0 );

setScaleKey( spep_2 -220 + 262, 1, 5.71, 5.71 );
setScaleKey( spep_2 -220 + 264, 1, 5.61, 5.61 );
setScaleKey( spep_2 -220 + 266, 1, 5.51, 5.51 );
setScaleKey( spep_2 -220 + 268, 1, 5.43, 5.43 );
setScaleKey( spep_2 -220 + 270, 1, 5.35, 5.35 );
setScaleKey( spep_2 -220 + 272, 1, 5.28, 5.28 );
setScaleKey( spep_2 -220 + 274, 1, 5.23, 5.23 );
setScaleKey( spep_2 -220 + 276, 1, 5.17, 5.17 );
setScaleKey( spep_2 -220 + 278, 1, 5.13, 5.13 );
setScaleKey( spep_2 -220 + 280, 1, 5.09, 5.09 );
setScaleKey( spep_2 -220 + 282, 1, 5.06, 5.06 );
setScaleKey( spep_2 -220 + 284, 1, 5.03, 5.03 );
setScaleKey( spep_2 -220 + 286, 1, 5.01, 5.01 );
setScaleKey( spep_2 -220 + 288, 1, 4.99, 4.99 );
setScaleKey( spep_2 -220 + 290, 1, 4.97, 4.97 );
setScaleKey( spep_2 -220 + 292, 1, 4.96, 4.96 );
setScaleKey( spep_2 -220 + 294, 1, 4.95, 4.95 );
setScaleKey( spep_2 -220 + 296, 1, 4.95, 4.95 );
setScaleKey( spep_2 -220 + 298, 1, 4.94, 4.94 );
setScaleKey( spep_2 -220 + 306, 1, 4.94, 4.94 );
setScaleKey( spep_2 -220 + 319 + 10, 1, 4.94, 4.94 );

setRotateKey( spep_2 -220 + 306, 1, 21 );
setRotateKey( spep_2 -220 + 319 + 10, 1, 21 );  --320にすると後ろが引っ張られる

-- ** 音 ** --
playSe(  spep_2 + 4,  SE_06);  --発射

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 110,  921, 78, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey(  spep_2 + 110,  ryusen2,  0 ,  0,  0);
setEffMoveKey(  spep_2 + 188,  ryusen2,  0,  0,  0);
setEffScaleKey(  spep_2 + 110,  ryusen2,  1.69,  1.69);
setEffScaleKey(  spep_2 + 188,  ryusen2,  1.69,  1.69);
setEffRotateKey(  spep_2 + 110,  ryusen2,  54.3);
setEffRotateKey(  spep_2 + 188,  ryusen2,  54.3);
setEffAlphaKey(  spep_2 + 110,  ryusen2,  255);
setEffAlphaKey(  spep_2 + 188,  ryusen2,  255);

y = 3;
-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_2 + 144 -y,  10048, 40, 0x100, -1, 0, 91.3, 246.3 );  --ドーン
setEffMoveKey( spep_2 + 144 -y, ctdon, 91.3, 246.3 , 0 );
setEffMoveKey( spep_2 + 146 -y, ctdon, 59.6, 281.8 , 0 );
setEffMoveKey( spep_2 + 148 -y, ctdon, 57.5, 299.8 , 0 );
setEffMoveKey( spep_2 + 150 -y, ctdon, 42.5, 301.5 , 0 );
setEffMoveKey( spep_2 + 152 -y, ctdon, 47.3, 310.3 , 0 );
setEffMoveKey( spep_2 + 154 -y, ctdon, 34.2, 314.4 , 0 );
setEffMoveKey( spep_2 + 156 -y, ctdon, 41.9, 314.1 , 0 );
setEffMoveKey( spep_2 + 158 -y, ctdon, 30.3, 324.8 , 0 );
setEffMoveKey( spep_2 + 160 -y, ctdon, 39.8, 320.8 , 0 );
setEffMoveKey( spep_2 + 162 -y, ctdon, 32.1, 326.6 , 0 );
setEffMoveKey( spep_2 + 164 -y, ctdon, 36.4, 318 , 0 );
setEffMoveKey( spep_2 + 166 -y, ctdon, 32.2, 331.1 , 0 );
setEffMoveKey( spep_2 + 168 -y, ctdon, 32.5, 323.8 , 0 );
setEffMoveKey( spep_2 + 170 -y, ctdon, 26, 325.8 , 0 );
setEffMoveKey( spep_2 + 172 -y, ctdon, 37.3, 332.2 , 0 );
setEffMoveKey( spep_2 + 174 -y, ctdon, 27.8, 325.2 , 0 );
setEffMoveKey( spep_2 + 176 -y, ctdon, 38.8, 330 , 0 );
setEffMoveKey( spep_2 + 178 -y, ctdon, 28.2, 331.1 , 0 );
setEffMoveKey( spep_2 + 180 -y, ctdon, 39.5, 329 , 0 );
setEffMoveKey( spep_2 + 182 -y, ctdon, 29, 339.8 , 0 );
setEffMoveKey( spep_2 + 184 -y, ctdon, 29.2, 341.5 , 0 );

setEffScaleKey( spep_2 + 144 -y, ctdon, 0.81, 0.81 );
setEffScaleKey( spep_2 + 146 -y, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_2 + 148 -y, ctdon, 1.26, 1.26 );
setEffScaleKey( spep_2 + 150 -y, ctdon, 1.34, 1.34 );
setEffScaleKey( spep_2 + 152 -y, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_2 + 154 -y, ctdon, 1.44, 1.44 );
setEffScaleKey( spep_2 + 156 -y, ctdon, 1.47, 1.47 );
setEffScaleKey( spep_2 + 158 -y, ctdon, 1.49, 1.49 );
setEffScaleKey( spep_2 + 160 -y, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 + 162 -y, ctdon, 1.51, 1.51 );
setEffScaleKey( spep_2 + 164 -y, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 168 -y, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 170 -y, ctdon, 1.54, 1.54 );
setEffScaleKey( spep_2 + 172 -y, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_2 + 174 -y, ctdon, 1.57, 1.57 );
setEffScaleKey( spep_2 + 176 -y, ctdon, 1.58, 1.58 );
setEffScaleKey( spep_2 + 178 -y, ctdon, 1.6, 1.6 );
setEffScaleKey( spep_2 + 180 -y, ctdon, 1.61, 1.61 );
setEffScaleKey( spep_2 + 182 -y, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_2 + 184 -y, ctdon, 1.64, 1.64 );

setEffRotateKey( spep_2 + 144 -y, ctdon, 22.9 );
setEffRotateKey( spep_2 + 146 -y, ctdon, 23.1 );
setEffRotateKey( spep_2 + 148 -y, ctdon, 23.1 );
setEffRotateKey( spep_2 + 150 -y, ctdon, 23.2 );

setEffAlphaKey( spep_2 + 144 -y, ctdon, 255 );
setEffAlphaKey( spep_2 + 168 -y, ctdon, 255 );
setEffAlphaKey( spep_2 + 170 -y, ctdon, 223 );
setEffAlphaKey( spep_2 + 172 -y, ctdon, 191 );
setEffAlphaKey( spep_2 + 174 -y, ctdon, 159 );
setEffAlphaKey( spep_2 + 176 -y, ctdon, 128 );
setEffAlphaKey( spep_2 + 178 -y, ctdon, 96 );
setEffAlphaKey( spep_2 + 180 -y, ctdon, 64 );
setEffAlphaKey( spep_2 + 182 -y, ctdon, 32 );
setEffAlphaKey( spep_2 + 184 -y, ctdon, 0 );

--***敵の動き***--
setDisp( spep_2 + 110, 1, 1 );
setDisp( spep_2 + 186, 1, 0 );
changeAnime( spep_2 + 110, 1, 104 );
changeAnime( spep_2 + 144 - y, 1, 108 );

setMoveKey( spep_2 + 110, 1, 100.9, -70.5 , 0 );
setMoveKey( spep_2 + 112, 1, 106.3, -56.3 , 0 );
setMoveKey( spep_2 + 114, 1, 112.1, -71 , 0 );
setMoveKey( spep_2 + 116, 1, 102.4, -59.5 , 0 );
setMoveKey( spep_2 + 118, 1, 110.1, -71.8 , 0 );
setMoveKey( spep_2 + 120, 1, 107.1, -56.6 , 0 );
setMoveKey( spep_2 + 122, 1, 110.3, -71.1 , 0 );
setMoveKey( spep_2 + 124, 1, 100.4, -63.1 , 0 );
setMoveKey( spep_2 + 126, 1, 111.8, -69.8 , 0 );
setMoveKey( spep_2 + 128, 1, 98.7, -59.4 , 0 );
setMoveKey( spep_2 + 130, 1, 110.2, -68.2 , 0 );
setMoveKey( spep_2 + 132, 1, 97.8, -62.1 , 0 );
setMoveKey( spep_2 + 134, 1, 112.7, -64.5 , 0 );
setMoveKey( spep_2 + 136, 1, 99.3, -61 , 0 );
--setMoveKey( spep_2 + 138, 1, 111.2, -71.1 , 0 );
--setMoveKey( spep_2 + 140, 1, 96.1, -64.1 , 0 );
setMoveKey( spep_2 + 142 - y, 1, 113.9, -64.3 , 0 );
setMoveKey( spep_2 + 144 - y, 1, 134.1, -141.8 , 0 );  --着弾
setMoveKey( spep_2 + 146 - y, 1, 179.6, -141.4 , 0 );
setMoveKey( spep_2 + 148 - y, 1, 194.8, -204.7 , 0 );
setMoveKey( spep_2 + 150 - y, 1, 201.9, -187.8 , 0 );
setMoveKey( spep_2 + 152 - y, 1, 230.7, -233.5 , 0 );
setMoveKey( spep_2 + 154 - y, 1, 221, -211.3 , 0 );
setMoveKey( spep_2 + 156 - y, 1, 237.1, -255.5 , 0 );
setMoveKey( spep_2 + 158 - y, 1, 237.6, -254 , 0 );
setMoveKey( spep_2 + 160 - y, 1, 245.1, -239.9 , 0 );
setMoveKey( spep_2 + 162 - y, 1, 254.7, -268.8 , 0 );
setMoveKey( spep_2 + 164 - y, 1, 270.2, -272.8 , 0 );
setMoveKey( spep_2 + 166 - y, 1, 268.5, -295.1 , 0 );
setMoveKey( spep_2 + 168 - y, 1, 291.6, -316.3 , 0 );
setMoveKey( spep_2 + 170 - y, 1, 306.8, -339 , 0 );
setMoveKey( spep_2 + 172 - y, 1, 323.9, -364.3 , 0 );
setMoveKey( spep_2 + 174 - y, 1, 342.9, -392.6 , 0 );
setMoveKey( spep_2 + 176 - y, 1, 364.3, -424.3 , 0 );
setMoveKey( spep_2 + 178 - y, 1, 388.3, -460 , 0 );
setMoveKey( spep_2 + 180 - y, 1, 415.3, -500.1 , 0 );
setMoveKey( spep_2 + 182 - y, 1, 445.6, -545.1 , 0 );
setMoveKey( spep_2 + 184 - y, 1, 479.5, -595.5 , 0 );
setMoveKey( spep_2 + 186, 1, 517.3, -651.7 , 0 );

setScaleKey( spep_2 + 110, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 142 - y, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 144 - y, 1, 2.66, 2.66 );  --着弾
setScaleKey( spep_2 + 146 - y, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 148 - y, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 150 - y, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 152 - y, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 154 - y, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 156 - y, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 158 - y, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 160 - y, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 162 - y, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 164 - y, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 166 - y, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 168 - y, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 170 - y, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 172 - y, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 174 - y, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 176 - y, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 178 - y, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 180 - y, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 182 - y, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 184 - y, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 186, 1, 1.46, 1.46 );

setRotateKey( spep_2 + 110, 1, 0 );
setRotateKey( spep_2 + 142 - y, 1, 0 );
setRotateKey( spep_2 + 144 - y, 1, 26.9 );  --着弾
setRotateKey( spep_2 + 186, 1, 26.9 );

-- ** 背景 ** --
entryFadeBg(  spep_2,  0,  90,  0,  18,  56,  242,  255);  --青背景

-- ** 音 ** --
playSe(  spep_2 + 144 - y , 1023 );  --着弾

-- ** 白フェード ** --
entryFade(  spep_2 + 180,  6, 4, 0,  fcolor_r,  fcolor_g,  fcolor_g,  255);

-- ** 次の準備 ** --
spep_3 = spep_2 + 190;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 背景 ** --
sora = entryEffectLife( spep_3 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --空の背景(ef_006)
setEffMoveKey( spep_3 + 0, sora, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, sora, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sora, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, sora, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sora, 0 );
setEffRotateKey( spep_3 + 100, sora, 0 );
setEffAlphaKey( spep_3 + 0, sora, 255 );
setEffAlphaKey( spep_3 + 100, sora, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen3, 0 );
setEffRotateKey( spep_3 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen4, 0 );
setEffRotateKey( spep_3 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_3 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_3 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_3 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3 + 1, 1, -40 );
setRotateKey( spep_3 + 2, 1, 80 );
setRotateKey( spep_3 + 3, 1, 80 );
setRotateKey( spep_3 + 4, 1, 200 );
setRotateKey( spep_3 + 5, 1, 200 );
setRotateKey( spep_3 + 6, 1, 360 );
setRotateKey( spep_3 + 7, 1, 360 );
setRotateKey( spep_3 + 8, 1, 558 );
setRotateKey( spep_3 + 9, 1, 558 );
setRotateKey( spep_3 + 10, 1, 425 );
setRotateKey( spep_3 + 11, 1, 425 );
setRotateKey( spep_3 + 12, 1, -40 );
setRotateKey( spep_3 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_10 );  --爆発音
playSe( spep_3 + 14, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 2, 24, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 青マスク ** --
entryFade( spep_3 + 0, 0, 2, 24, 68, 91, 255, 200 );  -- 薄い青

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
entryFade( spep_3 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_3 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- かめはめ波発射(306F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kameryusen = entryEffectLife( spep_0 + 0, SP_05, 306, 0x80, -1, 0, 0, 0 );  --かめはめ波発射時の流線　一番奥(ef_005)
setEffMoveKey( spep_0 + 0, kameryusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, kameryusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kameryusen, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, kameryusen, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kameryusen, 255 );
setEffAlphaKey( spep_0 + 220, kameryusen, 255 );
setEffRotateKey( spep_0 + 221, kameryusen, 0 );  --カットイン終わりでエフェクトを切る
setEffRotateKey( spep_0 + 306, kameryusen, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_0 + 68,  922, 76, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey( spep_0 + 68, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 144, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 68, ryusen1, 1, 1 );
setEffScaleKey( spep_0 + 144, ryusen1, 1, 1 );

setEffRotateKey( spep_0 + 68, ryusen1, 0 );
setEffRotateKey( spep_0 + 144, ryusen1, 0 );

setEffAlphaKey( spep_0 + 68, ryusen1, 80 );
setEffAlphaKey( spep_0 + 144, ryusen1, 80 );


-- ** エフェクト等 ** --
kamebeam_b = entryEffectLife( spep_0 + 0, SP_01r, 306, 0x100, -1, 0, 0, 0 );  --かめはめ波発射　手前(ef_001)
setEffMoveKey( spep_0 + 0, kamebeam_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 306, kamebeam_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamebeam_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 306, kamebeam_b, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kamebeam_b, 255 );
setEffAlphaKey( spep_0 + 220, kamebeam_b, 255 );  --顔カットインで切る
setEffAlphaKey( spep_0 + 221, kamebeam_b, 0 );
setEffAlphaKey( spep_0 + 306, kamebeam_b, 0 );
setEffRotateKey( spep_0 + 0, kamebeam_b, 0 );
setEffRotateKey( spep_0 + 306, kamebeam_b, 0 );

k = 16;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 148 -k, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 148 -k, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

k1 = 14;
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 216 -k1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 216 -k1, 10 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 216 -k1, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.88, 1.94 );
setEffScaleKey( spep_0 + 216 -k1, shuchusen1, 1.88, 1.94 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 216 -k1, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 155 -k1, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 156 -k1, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 216 -k1, shuchusen1, 255 );

a = 3;
-- ** 書き文字エントリー ** --
ctbo = entryEffectLife( spep_0 + 50 -a,  10044, 32, 0x100, -1, 0, 87.2, -75.3 );  --ボ
setEffMoveKey( spep_0 + 50 -a, ctbo, 87.2, -75.3 , 0 );
setEffMoveKey( spep_0 + 52 -a, ctbo, 119, 57.7 , 0 );
setEffMoveKey( spep_0 + 54 -a, ctbo, 122.4, 91.8 , 0 );
setEffMoveKey( spep_0 + 56 -a, ctbo, 135.5, 117 , 0 );
setEffMoveKey( spep_0 + 58 -a, ctbo, 130.8, 132.3 , 0 );
setEffMoveKey( spep_0 + 60 -a, ctbo, 141.2, 138.4 , 0 );
setEffMoveKey( spep_0 + 62 -a, ctbo, 133.1, 145.6 , 0 );
setEffMoveKey( spep_0 + 64 -a, ctbo, 141.4, 154.5 , 0 );
setEffMoveKey( spep_0 + 66 -a, ctbo, 136.2, 151.5 , 0 );
setEffMoveKey( spep_0 + 68 -a, ctbo, 139.5, 159.7 , 0 );
setEffMoveKey( spep_0 + 70 -a, ctbo, 139.4, 154.8 , 0 );
setEffMoveKey( spep_0 + 72 -a, ctbo, 142.8, 146.1 , 0 );
setEffMoveKey( spep_0 + 74 -a, ctbo, 136.1, 99.2 , 0 );
setEffMoveKey( spep_0 + 76 -a, ctbo, 144.5, 31.7 , 0 );
setEffMoveKey( spep_0 + 78 -a, ctbo, 136.1, -65.4 , 0 );
setEffMoveKey( spep_0 + 80 -a, ctbo, 144.5, -195 , 0 );
setEffMoveKey( spep_0 + 82 -a, ctbo, 144.5, -347.8 , 0 );

setEffScaleKey( spep_0 + 50 -a, ctbo, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52 -a, ctbo, 0.97, 0.97 );
setEffScaleKey( spep_0 + 54 -a, ctbo, 1.08, 1.08 );
setEffScaleKey( spep_0 + 56 -a, ctbo, 1.15, 1.15 );
setEffScaleKey( spep_0 + 58 -a, ctbo, 1.19, 1.19 );
setEffScaleKey( spep_0 + 60 -a, ctbo, 1.22, 1.22 );
setEffScaleKey( spep_0 + 62 -a, ctbo, 1.24, 1.24 );
setEffScaleKey( spep_0 + 64 -a, ctbo, 1.25, 1.25 );
setEffScaleKey( spep_0 + 66 -a, ctbo, 1.26, 1.26 );
setEffScaleKey( spep_0 + 82 -a, ctbo, 1.26, 1.26 );

setEffRotateKey( spep_0 + 50 -a, ctbo, 0 );
setEffRotateKey( spep_0 + 82 -a, ctbo, 0 );

setEffAlphaKey( spep_0 + 50 -a, ctbo, 255 );
setEffAlphaKey( spep_0 + 70 -a, ctbo, 255 );
setEffAlphaKey( spep_0 + 72 -a, ctbo, 248 );
setEffAlphaKey( spep_0 + 74 -a, ctbo, 227 );
setEffAlphaKey( spep_0 + 76 -a, ctbo, 191 );
setEffAlphaKey( spep_0 + 78 -a, ctbo, 142 );
setEffAlphaKey( spep_0 + 80 -a, ctbo, 78 );
setEffAlphaKey( spep_0 + 82 -a, ctbo, 0 );

ctn = entryEffectLife( spep_0 + 50 -a,  10045, 32, 0x100, -1, 0, -45.7, -184.2 );  --ン
setEffMoveKey( spep_0 + 50 -a, ctn, -45.7, -184.2 , 0 );
setEffMoveKey( spep_0 + 52 -a, ctn, -95.2, -117.6 , 0 );
setEffMoveKey( spep_0 + 54 -a, ctn, -116.1, -103.5 , 0 );
setEffMoveKey( spep_0 + 56 -a, ctn, -118.4, -90.9 , 0 );
setEffMoveKey( spep_0 + 58 -a, ctn, -132, -82.9 , 0 );
setEffMoveKey( spep_0 + 60 -a, ctn, -128.2, -82.2 , 0 );
setEffMoveKey( spep_0 + 62 -a, ctn, -140.7, -78.6 , 0 );
setEffMoveKey( spep_0 + 64 -a, ctn, -134.6, -71.5 , 0 );
setEffMoveKey( spep_0 + 66 -a, ctn, -142, -76.3 , 0 );
setEffMoveKey( spep_0 + 68 -a, ctn, -138.7, -68.1 , 0 );
setEffMoveKey( spep_0 + 70 -a, ctn, -138.8, -73 , 0 );
setEffMoveKey( spep_0 + 72 -a, ctn, -135.4, -81.7 , 0 );
setEffMoveKey( spep_0 + 74 -a, ctn, -142.1, -128.6 , 0 );
setEffMoveKey( spep_0 + 76 -a, ctn, -133.8, -196.1 , 0 );
setEffMoveKey( spep_0 + 78 -a, ctn, -142.1, -293.2 , 0 );
setEffMoveKey( spep_0 + 80 -a, ctn, -133.8, -422.8 , 0 );
setEffMoveKey( spep_0 + 82 -a, ctn, -133.8, -575.6 , 0 );

setEffScaleKey( spep_0 + 50 -a, ctn, 0.6, 0.6 );
setEffScaleKey( spep_0 + 52 -a, ctn, 0.97, 0.97 );
setEffScaleKey( spep_0 + 54 -a, ctn, 1.08, 1.08 );
setEffScaleKey( spep_0 + 56 -a, ctn, 1.15, 1.15 );
setEffScaleKey( spep_0 + 58 -a, ctn, 1.19, 1.19 );
setEffScaleKey( spep_0 + 60 -a, ctn, 1.22, 1.22 );
setEffScaleKey( spep_0 + 62 -a, ctn, 1.24, 1.24 );
setEffScaleKey( spep_0 + 64 -a, ctn, 1.25, 1.25 );
setEffScaleKey( spep_0 + 66 -a, ctn, 1.26, 1.26 );
setEffScaleKey( spep_0 + 82 -a, ctn, 1.26, 1.26 );

setEffRotateKey( spep_0 + 50 -a, ctn, 0 );
setEffRotateKey( spep_0 + 82 -a, ctn, 0 );

setEffAlphaKey( spep_0 + 50 -a, ctn, 255 );
setEffAlphaKey( spep_0 + 70 -a, ctn, 255 );
setEffAlphaKey( spep_0 + 72 -a, ctn, 248 );
setEffAlphaKey( spep_0 + 74 -a, ctn, 227 );
setEffAlphaKey( spep_0 + 76 -a, ctn, 191 );
setEffAlphaKey( spep_0 + 78 -a, ctn, 142 );
setEffAlphaKey( spep_0 + 80 -a, ctn, 78 );
setEffAlphaKey( spep_0 + 82 -a, ctn, 0 );

-- ** 音 ** --
playSe( spep_0 + 50 -a, 19 );  --ボン
playSe( spep_0 + 156, SE_04 );  --ゴゴゴ
--playSe( spep_0 + 236 -8, 1022 );  --かめはめ波発射

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
entryFadeBg( spep_0 + 0, 0, 306, 0, 0, 0, 0, 200 );  --薄い黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 210, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 220;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波発射、被弾(188F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassya_b = entryEffectLife( spep_2 + 0, SP_03, 188, 0x80, -1, 0, 0, 0 );  --放つ　奥(ef_006)
setEffMoveKey( spep_2 + 0, hassya_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, hassya_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassya_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 188, hassya_b, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hassya_b, 255 );
setEffAlphaKey( spep_2 + 188, hassya_b, 255 );
setEffRotateKey( spep_2 + 0, hassya_b, 0 );
setEffRotateKey( spep_2 + 188, hassya_b, 0 );

-- ** 書き文字エントリー ** --
ctdom = entryEffectLife( spep_2 +0 , 10065, 110 -2, 0x80, -1, 0, 0, 0 );  --ドォム！！
setEffMoveKey( spep_2 + 0 , ctdom, 0, 0 , 0 );
setEffMoveKey( spep_2 + 110 -2, ctdom, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, ctdom, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110 -2, ctdom, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, ctdom, 255 );
setEffAlphaKey( spep_2 + 110 -2, ctdom, 255 );
setEffRotateKey( spep_2 + 0, ctdom, 0 );
setEffRotateKey( spep_2 + 110 -2, ctdom, 0 );

-- ** エフェクト等 ** --
hassya_f = entryEffectLife( spep_2 + 0, SP_02r, 188, 0x80, -1, 0, 0, 0 );  --放つ　手前(ef_006)
setEffMoveKey( spep_2 + 0, hassya_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, hassya_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassya_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 188, hassya_f, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hassya_f, 255 );
setEffAlphaKey( spep_2 + 188, hassya_f, 255 );
setEffRotateKey( spep_2 + 0, hassya_f, 0 );
setEffRotateKey( spep_2 + 188, hassya_f, 0 );

-- ** エフェクト等 ** --
hidan = entryEffectLife( spep_2 + 0, SP_04, 188, 0x100, -1, 0, 0, 0 );  --被弾　手前(ef_009)
setEffMoveKey( spep_2 + 0, hidan, 0, 0 , 0 );
setEffMoveKey( spep_2 + 188, hidan, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hidan, 1.0, 1.0 );
setEffScaleKey( spep_2 + 188, hidan, 1.0, 1.0 );
setEffAlphaKey( spep_2 + 0, hidan, 255 );
setEffAlphaKey( spep_2 + 188, hidan, 255 );
setEffRotateKey( spep_2 + 0, hidan, 0 );
setEffRotateKey( spep_2 + 188, hidan, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_2 -220 + 244, 1, 1 );

setMoveKey( spep_2 -220 + 244, 1, 1423, -1917.1 , 0 );
setMoveKey( spep_2 -220 + 246, 1, 798.3, -1059.5 , 0 );
setMoveKey( spep_2 -220 + 248, 1, 673.3, -886.5 , 0 );
setMoveKey( spep_2 -220 + 250, 1, 610.1, -798.9 , 0 );
setMoveKey( spep_2 -220 + 252, 1, 576.8, -752.7 , 0 );
setMoveKey( spep_2 -220 + 254, 1, 552, -718.4 , 0 );
setMoveKey( spep_2 -220 + 256, 1, 530.2, -688.1 , 0 );
setMoveKey( spep_2 -220 + 258, 1, 510.9, -661.3 , 0 );
setMoveKey( spep_2 -220 + 260, 1, 493.7, -637.5 , 0 );
setScaleKey( spep_2 -220 + 244, 1, 13.04, 13.04 );
setScaleKey( spep_2 -220 + 246, 1, 8.21, 8.21 );
setScaleKey( spep_2 -220 + 248, 1, 7.23, 7.23 );
setScaleKey( spep_2 -220 + 250, 1, 6.74, 6.74 );
setScaleKey( spep_2 -220 + 252, 1, 6.48, 6.48 );
setScaleKey( spep_2 -220 + 254, 1, 6.29, 6.29 );
setScaleKey( spep_2 -220 + 256, 1, 6.12, 6.12 );
setScaleKey( spep_2 -220 + 258, 1, 5.97, 5.97 );
setScaleKey( spep_2 -220 + 260, 1, 5.83, 5.83 );
setRotateKey( spep_2 -220 + 244, 1, 20.8 );
setRotateKey( spep_2 -220 + 246, 1, 20.9 );
setRotateKey( spep_2 -220 + 248, 1, 21 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

setMoveKey( SP_dodge, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+1, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+2, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+3, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+4, 1, 493.7, -637.5 , 0 );
setMoveKey( SP_dodge+10, 1, 493.7, -637.5 , 0 );
setScaleKey( SP_dodge, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+1, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+2, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+3, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+4, 1, 5.83, 5.83 );
setScaleKey( SP_dodge+10, 1, 5.83, 5.83 );

-- ** カットイン部分 ** --
speff0 = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff0, 3, 6 );                           -- カットイン差し替え

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

setDisp( spep_2 -220 + 319 + 10, 1, 0 );
changeAnime( spep_2 -220 + 244, 1, 118 );

setMoveKey( spep_2 -220 + 262, 1, 478.4, -616.3 , 0 );
setMoveKey( spep_2 -220 + 264, 1, 464.8, -597.4 , 0 );
setMoveKey( spep_2 -220 + 266, 1, 452.6, -580.5 , 0 );
setMoveKey( spep_2 -220 + 268, 1, 441.8, -565.5 , 0 );
setMoveKey( spep_2 -220 + 270, 1, 432.2, -552.2 , 0 );
setMoveKey( spep_2 -220 + 272, 1, 423.7, -540.3 , 0 );
setMoveKey( spep_2 -220 + 274, 1, 416.2, -529.9 , 0 );
setMoveKey( spep_2 -220 + 276, 1, 409.6, -520.7 , 0 );
setMoveKey( spep_2 -220 + 278, 1, 403.8, -512.7 , 0 );
setMoveKey( spep_2 -220 + 280, 1, 398.8, -505.8 , 0 );
setMoveKey( spep_2 -220 + 282, 1, 394.5, -499.8 , 0 );
setMoveKey( spep_2 -220 + 284, 1, 390.9, -494.8 , 0 );
setMoveKey( spep_2 -220 + 286, 1, 387.9, -490.6 , 0 );
setMoveKey( spep_2 -220 + 288, 1, 385.5, -487.3 , 0 );
setMoveKey( spep_2 -220 + 290, 1, 383.5, -484.6 , 0 );
setMoveKey( spep_2 -220 + 292, 1, 382.1, -482.5 , 0 );
setMoveKey( spep_2 -220 + 294, 1, 381, -481.1 , 0 );
setMoveKey( spep_2 -220 + 296, 1, 380.4, -480.1 , 0 );
setMoveKey( spep_2 -220 + 298, 1, 380, -479.6 , 0 );
setMoveKey( spep_2 -220 + 300, 1, 379.8, -479.4 , 0 );
setMoveKey( spep_2 -220 + 302, 1, 379.9, -479.5 , 0 );
setMoveKey( spep_2 -220 + 306, 1, 379.9, -479.5 , 0 );
setMoveKey( spep_2 -220 + 319 + 10, 1, 379.9, -479.5 , 0 );

setScaleKey( spep_2 -220 + 262, 1, 5.71, 5.71 );
setScaleKey( spep_2 -220 + 264, 1, 5.61, 5.61 );
setScaleKey( spep_2 -220 + 266, 1, 5.51, 5.51 );
setScaleKey( spep_2 -220 + 268, 1, 5.43, 5.43 );
setScaleKey( spep_2 -220 + 270, 1, 5.35, 5.35 );
setScaleKey( spep_2 -220 + 272, 1, 5.28, 5.28 );
setScaleKey( spep_2 -220 + 274, 1, 5.23, 5.23 );
setScaleKey( spep_2 -220 + 276, 1, 5.17, 5.17 );
setScaleKey( spep_2 -220 + 278, 1, 5.13, 5.13 );
setScaleKey( spep_2 -220 + 280, 1, 5.09, 5.09 );
setScaleKey( spep_2 -220 + 282, 1, 5.06, 5.06 );
setScaleKey( spep_2 -220 + 284, 1, 5.03, 5.03 );
setScaleKey( spep_2 -220 + 286, 1, 5.01, 5.01 );
setScaleKey( spep_2 -220 + 288, 1, 4.99, 4.99 );
setScaleKey( spep_2 -220 + 290, 1, 4.97, 4.97 );
setScaleKey( spep_2 -220 + 292, 1, 4.96, 4.96 );
setScaleKey( spep_2 -220 + 294, 1, 4.95, 4.95 );
setScaleKey( spep_2 -220 + 296, 1, 4.95, 4.95 );
setScaleKey( spep_2 -220 + 298, 1, 4.94, 4.94 );
setScaleKey( spep_2 -220 + 306, 1, 4.94, 4.94 );
setScaleKey( spep_2 -220 + 319 + 10, 1, 4.94, 4.94 );

setRotateKey( spep_2 -220 + 306, 1, 21 );
setRotateKey( spep_2 -220 + 319 + 10, 1, 21 );  --320にすると後ろが引っ張られる

-- ** 音 ** --
playSe(  spep_2 + 4,  SE_06);  --発射

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_2 + 110,  921, 78, 0x80, -1, 0, 0, 0 );  --流線
setEffMoveKey(  spep_2 + 110,  ryusen2,  0 ,  0,  0);
setEffMoveKey(  spep_2 + 188,  ryusen2,  0,  0,  0);
setEffScaleKey(  spep_2 + 110,  ryusen2,  1.69,  1.69);
setEffScaleKey(  spep_2 + 188,  ryusen2,  1.69,  1.69);
setEffRotateKey(  spep_2 + 110,  ryusen2,  54.3);
setEffRotateKey(  spep_2 + 188,  ryusen2,  54.3);
setEffAlphaKey(  spep_2 + 110,  ryusen2,  255);
setEffAlphaKey(  spep_2 + 188,  ryusen2,  255);

y = 3;
-- ** 書き文字エントリー ** --
ctdon = entryEffectLife( spep_2 + 144 -y,  10048, 40, 0x100, -1, 0, 91.3, 246.3 );  --ドーン
setEffMoveKey( spep_2 + 144 -y, ctdon, 91.3, 246.3 , 0 );
setEffMoveKey( spep_2 + 146 -y, ctdon, 59.6, 281.8 , 0 );
setEffMoveKey( spep_2 + 148 -y, ctdon, 57.5, 299.8 , 0 );
setEffMoveKey( spep_2 + 150 -y, ctdon, 42.5, 301.5 , 0 );
setEffMoveKey( spep_2 + 152 -y, ctdon, 47.3, 310.3 , 0 );
setEffMoveKey( spep_2 + 154 -y, ctdon, 34.2, 314.4 , 0 );
setEffMoveKey( spep_2 + 156 -y, ctdon, 41.9, 314.1 , 0 );
setEffMoveKey( spep_2 + 158 -y, ctdon, 30.3, 324.8 , 0 );
setEffMoveKey( spep_2 + 160 -y, ctdon, 39.8, 320.8 , 0 );
setEffMoveKey( spep_2 + 162 -y, ctdon, 32.1, 326.6 , 0 );
setEffMoveKey( spep_2 + 164 -y, ctdon, 36.4, 318 , 0 );
setEffMoveKey( spep_2 + 166 -y, ctdon, 32.2, 331.1 , 0 );
setEffMoveKey( spep_2 + 168 -y, ctdon, 32.5, 323.8 , 0 );
setEffMoveKey( spep_2 + 170 -y, ctdon, 26, 325.8 , 0 );
setEffMoveKey( spep_2 + 172 -y, ctdon, 37.3, 332.2 , 0 );
setEffMoveKey( spep_2 + 174 -y, ctdon, 27.8, 325.2 , 0 );
setEffMoveKey( spep_2 + 176 -y, ctdon, 38.8, 330 , 0 );
setEffMoveKey( spep_2 + 178 -y, ctdon, 28.2, 331.1 , 0 );
setEffMoveKey( spep_2 + 180 -y, ctdon, 39.5, 329 , 0 );
setEffMoveKey( spep_2 + 182 -y, ctdon, 29, 339.8 , 0 );
setEffMoveKey( spep_2 + 184 -y, ctdon, 29.2, 341.5 , 0 );

setEffScaleKey( spep_2 + 144 -y, ctdon, 0.81, 0.81 );
setEffScaleKey( spep_2 + 146 -y, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_2 + 148 -y, ctdon, 1.26, 1.26 );
setEffScaleKey( spep_2 + 150 -y, ctdon, 1.34, 1.34 );
setEffScaleKey( spep_2 + 152 -y, ctdon, 1.4, 1.4 );
setEffScaleKey( spep_2 + 154 -y, ctdon, 1.44, 1.44 );
setEffScaleKey( spep_2 + 156 -y, ctdon, 1.47, 1.47 );
setEffScaleKey( spep_2 + 158 -y, ctdon, 1.49, 1.49 );
setEffScaleKey( spep_2 + 160 -y, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 + 162 -y, ctdon, 1.51, 1.51 );
setEffScaleKey( spep_2 + 164 -y, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 168 -y, ctdon, 1.52, 1.52 );
setEffScaleKey( spep_2 + 170 -y, ctdon, 1.54, 1.54 );
setEffScaleKey( spep_2 + 172 -y, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_2 + 174 -y, ctdon, 1.57, 1.57 );
setEffScaleKey( spep_2 + 176 -y, ctdon, 1.58, 1.58 );
setEffScaleKey( spep_2 + 178 -y, ctdon, 1.6, 1.6 );
setEffScaleKey( spep_2 + 180 -y, ctdon, 1.61, 1.61 );
setEffScaleKey( spep_2 + 182 -y, ctdon, 1.63, 1.63 );
setEffScaleKey( spep_2 + 184 -y, ctdon, 1.64, 1.64 );

setEffRotateKey( spep_2 + 144 -y, ctdon, 22.9 );
setEffRotateKey( spep_2 + 146 -y, ctdon, 23.1 );
setEffRotateKey( spep_2 + 148 -y, ctdon, 23.1 );
setEffRotateKey( spep_2 + 150 -y, ctdon, 23.2 );

setEffAlphaKey( spep_2 + 144 -y, ctdon, 255 );
setEffAlphaKey( spep_2 + 168 -y, ctdon, 255 );
setEffAlphaKey( spep_2 + 170 -y, ctdon, 223 );
setEffAlphaKey( spep_2 + 172 -y, ctdon, 191 );
setEffAlphaKey( spep_2 + 174 -y, ctdon, 159 );
setEffAlphaKey( spep_2 + 176 -y, ctdon, 128 );
setEffAlphaKey( spep_2 + 178 -y, ctdon, 96 );
setEffAlphaKey( spep_2 + 180 -y, ctdon, 64 );
setEffAlphaKey( spep_2 + 182 -y, ctdon, 32 );
setEffAlphaKey( spep_2 + 184 -y, ctdon, 0 );

--***敵の動き***--
setDisp( spep_2 + 110, 1, 1 );
setDisp( spep_2 + 186, 1, 0 );
changeAnime( spep_2 + 110, 1, 104 );
changeAnime( spep_2 + 144 - y, 1, 108 );

setMoveKey( spep_2 + 110, 1, 100.9, -70.5 , 0 );
setMoveKey( spep_2 + 112, 1, 106.3, -56.3 , 0 );
setMoveKey( spep_2 + 114, 1, 112.1, -71 , 0 );
setMoveKey( spep_2 + 116, 1, 102.4, -59.5 , 0 );
setMoveKey( spep_2 + 118, 1, 110.1, -71.8 , 0 );
setMoveKey( spep_2 + 120, 1, 107.1, -56.6 , 0 );
setMoveKey( spep_2 + 122, 1, 110.3, -71.1 , 0 );
setMoveKey( spep_2 + 124, 1, 100.4, -63.1 , 0 );
setMoveKey( spep_2 + 126, 1, 111.8, -69.8 , 0 );
setMoveKey( spep_2 + 128, 1, 98.7, -59.4 , 0 );
setMoveKey( spep_2 + 130, 1, 110.2, -68.2 , 0 );
setMoveKey( spep_2 + 132, 1, 97.8, -62.1 , 0 );
setMoveKey( spep_2 + 134, 1, 112.7, -64.5 , 0 );
setMoveKey( spep_2 + 136, 1, 99.3, -61 , 0 );
--setMoveKey( spep_2 + 138, 1, 111.2, -71.1 , 0 );
--setMoveKey( spep_2 + 140, 1, 96.1, -64.1 , 0 );
setMoveKey( spep_2 + 142 - y, 1, 113.9, -64.3 , 0 );
setMoveKey( spep_2 + 144 - y, 1, 134.1, -141.8 , 0 );  --着弾
setMoveKey( spep_2 + 146 - y, 1, 179.6, -141.4 , 0 );
setMoveKey( spep_2 + 148 - y, 1, 194.8, -204.7 , 0 );
setMoveKey( spep_2 + 150 - y, 1, 201.9, -187.8 , 0 );
setMoveKey( spep_2 + 152 - y, 1, 230.7, -233.5 , 0 );
setMoveKey( spep_2 + 154 - y, 1, 221, -211.3 , 0 );
setMoveKey( spep_2 + 156 - y, 1, 237.1, -255.5 , 0 );
setMoveKey( spep_2 + 158 - y, 1, 237.6, -254 , 0 );
setMoveKey( spep_2 + 160 - y, 1, 245.1, -239.9 , 0 );
setMoveKey( spep_2 + 162 - y, 1, 254.7, -268.8 , 0 );
setMoveKey( spep_2 + 164 - y, 1, 270.2, -272.8 , 0 );
setMoveKey( spep_2 + 166 - y, 1, 268.5, -295.1 , 0 );
setMoveKey( spep_2 + 168 - y, 1, 291.6, -316.3 , 0 );
setMoveKey( spep_2 + 170 - y, 1, 306.8, -339 , 0 );
setMoveKey( spep_2 + 172 - y, 1, 323.9, -364.3 , 0 );
setMoveKey( spep_2 + 174 - y, 1, 342.9, -392.6 , 0 );
setMoveKey( spep_2 + 176 - y, 1, 364.3, -424.3 , 0 );
setMoveKey( spep_2 + 178 - y, 1, 388.3, -460 , 0 );
setMoveKey( spep_2 + 180 - y, 1, 415.3, -500.1 , 0 );
setMoveKey( spep_2 + 182 - y, 1, 445.6, -545.1 , 0 );
setMoveKey( spep_2 + 184 - y, 1, 479.5, -595.5 , 0 );
setMoveKey( spep_2 + 186, 1, 517.3, -651.7 , 0 );

setScaleKey( spep_2 + 110, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 142 - y, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 144 - y, 1, 2.66, 2.66 );  --着弾
setScaleKey( spep_2 + 146 - y, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 148 - y, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 150 - y, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 152 - y, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 154 - y, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 156 - y, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 158 - y, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 160 - y, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 162 - y, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 164 - y, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 166 - y, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 168 - y, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 170 - y, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 172 - y, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 174 - y, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 176 - y, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 178 - y, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 180 - y, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 182 - y, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 184 - y, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 186, 1, 1.46, 1.46 );

setRotateKey( spep_2 + 110, 1, 0 );
setRotateKey( spep_2 + 142 - y, 1, 0 );
setRotateKey( spep_2 + 144 - y, 1, 26.9 );  --着弾
setRotateKey( spep_2 + 186, 1, 26.9 );

-- ** 背景 ** --
entryFadeBg(  spep_2,  0,  90,  0,  18,  56,  242,  255);  --青背景

-- ** 音 ** --
playSe(  spep_2 + 144 - y , 1023 );  --着弾

-- ** 白フェード ** --
entryFade(  spep_2 + 180,  6, 4, 0,  fcolor_r,  fcolor_g,  fcolor_g,  255);

-- ** 次の準備 ** --
spep_3 = spep_2 + 190;

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 背景 ** --
sora = entryEffectLife( spep_3 + 0, SP_06, 100, 0x80, -1, 0, 0, 0 );  --空の背景(ef_006)
setEffMoveKey( spep_3 + 0, sora, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, sora, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, sora, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, sora, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sora, 0 );
setEffRotateKey( spep_3 + 100, sora, 0 );
setEffAlphaKey( spep_3 + 0, sora, 255 );
setEffAlphaKey( spep_3 + 100, sora, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_3 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_3 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_3 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_3 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_3 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_3 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_3 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_3 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_3 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_3 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen3, 0 );
setEffRotateKey( spep_3 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_3 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen4, 0 );
setEffRotateKey( spep_3 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_3 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_3 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_3 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_3 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_3 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_3 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_3 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_3 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_3 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_3 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_3 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_3 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_3 + 0, 1, -40 );
setRotateKey( spep_3 + 1, 1, -40 );
setRotateKey( spep_3 + 2, 1, 80 );
setRotateKey( spep_3 + 3, 1, 80 );
setRotateKey( spep_3 + 4, 1, 200 );
setRotateKey( spep_3 + 5, 1, 200 );
setRotateKey( spep_3 + 6, 1, 360 );
setRotateKey( spep_3 + 7, 1, 360 );
setRotateKey( spep_3 + 8, 1, 558 );
setRotateKey( spep_3 + 9, 1, 558 );
setRotateKey( spep_3 + 10, 1, 425 );
setRotateKey( spep_3 + 11, 1, 425 );
setRotateKey( spep_3 + 12, 1, -40 );
setRotateKey( spep_3 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_10 );  --爆発音
playSe( spep_3 + 14, SE_11 );  --割れる音

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 2, 24, 0, 0, 0, 200 );  --薄い黒　背景

-- ** 青マスク ** --
entryFade( spep_3 + 0, 0, 2, 24, 68, 91, 255, 200 );  -- 薄い青

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
entryFade( spep_3 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_3 + 100 );

end


