--グルメス_ハングリースタンプ

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
SP_01 = 152226; --構え
SP_02 = 152227; --パンチ 手前
SP_03 = 152228; --パンチ 奥
SP_04 = 152229; --踏みつけ 手前
SP_05 = 152230; --踏みつけ 奥
SP_06 = 152255; --吹っ飛び
SP_07 = 152256; --吹っ飛び 奥

--敵側
SP_01x = 152231; --構え
SP_02x = 152232; --パンチ 手前
SP_04x = 152233; --踏みつけ 手前

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);
changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);
setDisp( 0, 0, 0);
setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

setScaleKey(   1,   0, 1.6, 1.6);
setScaleKey(   1,   1, 1.6, 1.6);
setRotateKey(   1,   1, 0);
setRotateKey(   1,   0, 0);

multi_frm = 2;

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 構え(200F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01, 198, 0, -1, 0, 0, 0 );  --構え(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 198, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 198, kamae, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 198, kamae, 255 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 198, kamae, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 33, 906, 70, 0x100, -1, 0, 0, 0 );  --カットイン集中線
setEffMoveKey( spep_0 + 33, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 103, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 33, shuchusen1, 1.71, 1.76 );
setEffScaleKey( spep_0 + 103, shuchusen1, 1.71, 1.76 );

setEffRotateKey( spep_0 + 33, shuchusen1, 0 );
setEffRotateKey( spep_0 + 36, shuchusen1, 180 );
setEffRotateKey( spep_0 + 38, shuchusen1, 0 );
setEffRotateKey( spep_0 + 40, shuchusen1, 180 );
setEffRotateKey( spep_0 + 42, shuchusen1, 0 );
setEffRotateKey( spep_0 + 44, shuchusen1, 180 );
setEffRotateKey( spep_0 + 46, shuchusen1, 0 );
setEffRotateKey( spep_0 + 48, shuchusen1, 180 );
setEffRotateKey( spep_0 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0 + 52, shuchusen1, 180 );
setEffRotateKey( spep_0 + 54, shuchusen1, 0 );
setEffRotateKey( spep_0 + 56, shuchusen1, 180 );
setEffRotateKey( spep_0 + 58, shuchusen1, 0 );
setEffRotateKey( spep_0 + 60, shuchusen1, 180 );
setEffRotateKey( spep_0 + 62, shuchusen1, 0 );
setEffRotateKey( spep_0 + 64, shuchusen1, 180 );
setEffRotateKey( spep_0 + 66, shuchusen1, 0 );
setEffRotateKey( spep_0 + 68, shuchusen1, 180 );
setEffRotateKey( spep_0 + 70, shuchusen1, 0 );
setEffRotateKey( spep_0 + 72, shuchusen1, 180 );
setEffRotateKey( spep_0 + 74, shuchusen1, 0 );
setEffRotateKey( spep_0 + 76, shuchusen1, 180 );
setEffRotateKey( spep_0 + 78, shuchusen1, 0 );
setEffRotateKey( spep_0 + 80, shuchusen1, 180 );
setEffRotateKey( spep_0 + 82, shuchusen1, 0 );
setEffRotateKey( spep_0 + 84, shuchusen1, 180 );
setEffRotateKey( spep_0 + 86, shuchusen1, 0 );
setEffRotateKey( spep_0 + 88, shuchusen1, 180 );
setEffRotateKey( spep_0 + 90, shuchusen1, 0 );
setEffRotateKey( spep_0 + 92, shuchusen1, 180 );
setEffRotateKey( spep_0 + 94, shuchusen1, 0 );
setEffRotateKey( spep_0 + 96, shuchusen1, 180 );
setEffRotateKey( spep_0 + 98, shuchusen1, 0 );
setEffRotateKey( spep_0 + 100, shuchusen1, 180 );
setEffRotateKey( spep_0 + 103, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 33, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 103, shuchusen1, 255 );


shuchusen2 = entryEffectLife( spep_0 + 170,  906, 26, 0x100, -1, 0, -200, 190.2 );  --拳振り上げ時集中線
setEffMoveKey( spep_0 + 170, shuchusen2, -200, 190.2 , 0 );
setEffMoveKey( spep_0 + 172, shuchusen2, -200, 196.5 , 0 );
setEffMoveKey( spep_0 + 174, shuchusen2, -200, 202.9 , 0 );
setEffMoveKey( spep_0 + 176, shuchusen2, -200, 209.2 , 0 );
setEffMoveKey( spep_0 + 178, shuchusen2, -200, 215.6 , 0 );
setEffMoveKey( spep_0 + 180, shuchusen2, -200, 222 , 0 );
setEffMoveKey( spep_0 + 196, shuchusen2, -200, 222 , 0 );

setEffScaleKey( spep_0 + 170, shuchusen2, 2.77, 2.83 );
setEffScaleKey( spep_0 + 172, shuchusen2, 2.54, 2.56 );
setEffScaleKey( spep_0 + 174, shuchusen2, 2.31, 2.29 );
setEffScaleKey( spep_0 + 176, shuchusen2, 2.08, 2.01 );
setEffScaleKey( spep_0 + 178, shuchusen2, 1.84, 1.74 );
setEffScaleKey( spep_0 + 180, shuchusen2, 1.61, 1.47 );
setEffScaleKey( spep_0 + 196, shuchusen2, 1.61, 1.47 );

setEffRotateKey( spep_0 + 170, shuchusen2, 180 );
setEffRotateKey( spep_0 + 172, shuchusen2, 0 );
setEffRotateKey( spep_0 + 174, shuchusen2, 180 );
setEffRotateKey( spep_0 + 176, shuchusen2, 0 );
setEffRotateKey( spep_0 + 178, shuchusen2, 180 );
setEffRotateKey( spep_0 + 180, shuchusen2, 0 );
setEffRotateKey( spep_0 + 182, shuchusen2, 180 );
setEffRotateKey( spep_0 + 184, shuchusen2, 0 );
setEffRotateKey( spep_0 + 186, shuchusen2, 180 );
setEffRotateKey( spep_0 + 188, shuchusen2, 0 );
setEffRotateKey( spep_0 + 190, shuchusen2, 180 );
setEffRotateKey( spep_0 + 192, shuchusen2, 0 );
setEffRotateKey( spep_0 + 194, shuchusen2, 180 );
setEffRotateKey( spep_0 + 195, shuchusen2, 0 );
setEffRotateKey( spep_0 + 196, shuchusen2, 180 );

setEffAlphaKey( spep_0 + 170, shuchusen2, 42 );
setEffAlphaKey( spep_0 + 172, shuchusen2, 83 );
setEffAlphaKey( spep_0 + 174, shuchusen2, 125 );
setEffAlphaKey( spep_0 + 176, shuchusen2, 167 );
setEffAlphaKey( spep_0 + 178, shuchusen2, 208 );
setEffAlphaKey( spep_0 + 180, shuchusen2, 250 );
setEffAlphaKey( spep_0 + 196, shuchusen2, 250 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 18, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 18, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo0 = entryEffectLife( spep_0 + 29,  190006, 4, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
ctgogo1 = entryEffectLife( spep_0 + 33,  190006, 67, 0x100, -1, 0, -9.9, 521.8 );
setEffMoveKey( spep_0 + 29, ctgogo0, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 32, ctgogo0, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 33, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 34, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 36, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 38, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 40, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 42, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 44, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 46, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 48, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 50, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 52, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 54, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 56, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 58, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 60, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 62, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 64, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 66, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 68, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 70, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 72, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 74, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 76, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 78, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 80, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 82, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 84, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 86, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 88, ctgogo1, -7.7, 521.8 , 0 );
setEffMoveKey( spep_0 + 90, ctgogo1, -3.2, 511.9 , 0 );
setEffMoveKey( spep_0 + 92, ctgogo1, -3.1, 521.8 , 0 );
setEffMoveKey( spep_0 + 94, ctgogo1, -0.8, 521.8 , 0 );
setEffMoveKey( spep_0 + 100, ctgogo1, -0.8, 521.8 , 0 );

setEffScaleKey( spep_0 + 29, ctgogo0, 0.7, 0.7 );
setEffScaleKey( spep_0 + 32, ctgogo0, 0.7, 0.7 );
setEffScaleKey( spep_0 + 33, ctgogo1, 0.7, 0.7 );
setEffScaleKey( spep_0 + 86, ctgogo1, 0.7, 0.7 );
setEffScaleKey( spep_0 + 88, ctgogo1, 0.7, 0.7 );
setEffScaleKey( spep_0 + 94, ctgogo1, 0.7, 0.7 );
setEffScaleKey( spep_0 + 95, ctgogo1, 1, 1 );
setEffScaleKey( spep_0 + 97, ctgogo1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 99, ctgogo1, 1.3, 1.3 );
setEffScaleKey( spep_0 + 100, ctgogo1, 1.4, 1.4 );

setEffRotateKey( spep_0 + 29, ctgogo0, 0 );
setEffRotateKey( spep_0 + 32, ctgogo0, 0 );
setEffRotateKey( spep_0 + 33, ctgogo1, 0 );
setEffRotateKey( spep_0 + 100, ctgogo1, 0 );

setEffAlphaKey( spep_0 + 29, ctgogo0, 255 );
setEffAlphaKey( spep_0 + 32, ctgogo0, 255 );
setEffAlphaKey( spep_0 + 33, ctgogo1, 255 );
setEffAlphaKey( spep_0 + 93, ctgogo1, 255 );
setEffAlphaKey( spep_0 + 94, ctgogo1, 191 );
setEffAlphaKey( spep_0 + 96, ctgogo1, 128 );
setEffAlphaKey( spep_0 + 98, ctgogo1, 64 );
setEffAlphaKey( spep_0 + 100, ctgogo1, 0 );

ctba = entryEffectLife( spep_0 + 106,  10022, 24, 0x100, -1, 0, -112.8, 222.7 );  --バッ
setEffMoveKey( spep_0 + 106, ctba, -112.8, 222.7 , 0 );
setEffMoveKey( spep_0 + 107, ctba, -112.8, 222.7 , 0 );
setEffMoveKey( spep_0 + 112, ctba, -123.9, 256.4 , 0 );
setEffMoveKey( spep_0 + 114, ctba, -127.6, 267.7 , 0 );
setEffMoveKey( spep_0 + 116, ctba, -127.7, 268.1 , 0 );
setEffMoveKey( spep_0 + 118, ctba, -127.9, 268.5 , 0 );
setEffMoveKey( spep_0 + 120, ctba, -128, 268.9 , 0 );
setEffMoveKey( spep_0 + 122, ctba, -128.1, 269.2 , 0 );
setEffMoveKey( spep_0 + 124, ctba, -128.3, 269.6 , 0 );
setEffMoveKey( spep_0 + 126, ctba, -128.4, 270 , 0 );
setEffMoveKey( spep_0 + 128, ctba, -128.7, 271.1 , 0 );
setEffMoveKey( spep_0 + 130, ctba, -129.8, 274.2 , 0 );

setEffScaleKey( spep_0 + 106, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 107, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 112, ctba, 1.25, 1.25 );
setEffScaleKey( spep_0 + 114, ctba, 1.3, 1.3 );
setEffScaleKey( spep_0 + 118, ctba, 1.3, 1.3 );
setEffScaleKey( spep_0 + 126, ctba, 1.3, 1.3 );
setEffScaleKey( spep_0 + 127, ctba, 1.31, 1.31 );
setEffScaleKey( spep_0 + 128, ctba, 1.33, 1.33 );
setEffScaleKey( spep_0 + 130, ctba, 1.35, 1.35 );

setEffRotateKey( spep_0 + 106, ctba, -16 );
setEffRotateKey( spep_0 + 107, ctba, -16 );
setEffRotateKey( spep_0 + 130, ctba, -16 );

setEffAlphaKey( spep_0 + 106, ctba, 0 );
setEffAlphaKey( spep_0 + 107, ctba, 255 );
setEffAlphaKey( spep_0 + 125, ctba, 255 );
setEffAlphaKey( spep_0 + 126, ctba, 227 );
setEffAlphaKey( spep_0 + 128, ctba, 142 );
setEffAlphaKey( spep_0 + 130, ctba, 0 );

ctzun1 = entryEffectLife( spep_0 + 144,  10016, 22, 0x80, -1, 0, -107.9, 377.2 );  --ズンッ
setEffMoveKey( spep_0 + 144, ctzun1, -107.9, 377.2 , 0 );
setEffMoveKey( spep_0 + 148, ctzun1, -114.1, 414.8 , 0 );
setEffMoveKey( spep_0 + 150, ctzun1, -117.8, 437.2 , 0 );
setEffMoveKey( spep_0 + 152, ctzun1, -119, 444.7 , 0 );
setEffMoveKey( spep_0 + 154, ctzun1, -119.8, 445.9 , 0 );
setEffMoveKey( spep_0 + 156, ctzun1, -120.6, 447.2 , 0 );
setEffMoveKey( spep_0 + 158, ctzun1, -121.4, 448.5 , 0 );
setEffMoveKey( spep_0 + 160, ctzun1, -122.2, 449.8 , 0 );
setEffMoveKey( spep_0 + 162, ctzun1, -123, 451.1 , 0 );
setEffMoveKey( spep_0 + 164, ctzun1, -125.8, 465.5 , 0 );
setEffMoveKey( spep_0 + 166, ctzun1, -128.5, 480 , 0 );

setEffScaleKey( spep_0 + 144, ctzun1, 1, 1 );
setEffScaleKey( spep_0 + 148, ctzun1, 1, 1 );
setEffScaleKey( spep_0 + 150, ctzun1, 2.77, 2.77 );
setEffScaleKey( spep_0 + 152, ctzun1, 2.99, 2.99 );
setEffScaleKey( spep_0 + 154, ctzun1, 3.01, 3.01 );
setEffScaleKey( spep_0 + 156, ctzun1, 3.02, 3.02 );
setEffScaleKey( spep_0 + 158, ctzun1, 3.04, 3.04 );
setEffScaleKey( spep_0 + 160, ctzun1, 3.05, 3.05 );
setEffScaleKey( spep_0 + 162, ctzun1, 3.07, 3.07 );
setEffScaleKey( spep_0 + 164, ctzun1, 3.25, 3.25 );
setEffScaleKey( spep_0 + 166, ctzun1, 3.44, 3.44 );

setEffRotateKey( spep_0 + 144, ctzun1, -14.8 );
setEffRotateKey( spep_0 + 166, ctzun1, -14.8 );

setEffAlphaKey( spep_0 + 144, ctzun1, 255 );
setEffAlphaKey( spep_0 + 162, ctzun1, 255 );
setEffAlphaKey( spep_0 + 164, ctzun1, 170 );
setEffAlphaKey( spep_0 + 166, ctzun1, 85 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 1, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 189, 5, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 32, SE_04 ); --ゴゴゴ
playSe( spep_0 + 107, 1013 ); --バッ
playSe( spep_0 + 144, 1014 ); --ズンッ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 200;

------------------------------------------------------
-- パンチ(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
panchi1 = entryEffectLife( spep_1 + 0, SP_02, 96, 0x100, -1, 0, 0, 0 ); --パンチ手前(ef_002)
setEffMoveKey( spep_1 + 0, panchi1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, panchi1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, panchi1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panchi1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panchi1, 0 );
setEffRotateKey( spep_1 + 96, panchi1, 0 );
setEffAlphaKey( spep_1 + 0, panchi1, 255 );
setEffAlphaKey( spep_1 + 95, panchi1, 255 );
setEffAlphaKey( spep_1 + 96, panchi1, 0 );

panchi2 = entryEffectLife( spep_1 + 0, SP_03, 96, 0x80, -1, 0, 0, 0 ); --パンチ奥(ef_003)
setEffScaleKey( spep_1 + 0, panchi2, 1.0, 1.0 );
setEffMoveKey( spep_1 + 96, panchi2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, panchi2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panchi2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panchi2, 0 );
setEffRotateKey( spep_1 + 96, panchi2, 0 );
setEffAlphaKey( spep_1 + 0, panchi2, 255 );
setEffAlphaKey( spep_1 + 95, panchi2, 255 );
setEffAlphaKey( spep_1 + 96, panchi2, 0 );

-- ** 流線 斜め ** --
ryusen1 = entryEffectLife( spep_1 + 36,  921, 60, 0x80, -1, 0, -54.5, 15.5 );  --流線
setEffMoveKey( spep_1 + 36, ryusen1, -54.5, 15.5 , 0 );
setEffMoveKey( spep_1 + 37, ryusen1, -54.5, 15.5 , 0 );
setEffMoveKey( spep_1 + 96, ryusen1, -54.5, 15.5 , 0 );

setEffScaleKey( spep_1 + 36, ryusen1, 1.76, 1.52 );
setEffScaleKey( spep_1 + 37, ryusen1, 1.76, 1.52 );
setEffScaleKey( spep_1 + 96, ryusen1, 1.76, 1.52 );

setEffRotateKey( spep_1 + 36, ryusen1, 52.3 );
setEffRotateKey( spep_1 + 37, ryusen1, 52.3 );
setEffRotateKey( spep_1 + 96, ryusen1, 52.3 );

setEffAlphaKey( spep_1 + 36, ryusen1, 0 );
setEffAlphaKey( spep_1 + 37, ryusen1, 255 );
setEffAlphaKey( spep_1 + 38, ryusen1, 255 );
setEffAlphaKey( spep_1 + 96, ryusen1, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 + 36,  10020, 20, 0x100, -1, 0, 174.8, 339.3 );  --バキッ
setEffMoveKey( spep_1 + 36, ctbaki, 174.8, 339.3 , 0 );
setEffMoveKey( spep_1 + 37, ctbaki, 174.8, 339.3 , 0 );
setEffMoveKey( spep_1 + 40, ctbaki, 183.2, 361.1 , 0 );
setEffMoveKey( spep_1 + 42, ctbaki, 186.8, 363.9 , 0 );
setEffMoveKey( spep_1 + 44, ctbaki, 189.4, 377.4 , 0 );
setEffMoveKey( spep_1 + 46, ctbaki, 190.6, 375 , 0 );
setEffMoveKey( spep_1 + 48, ctbaki, 192.3, 392.8 , 0 );
setEffMoveKey( spep_1 + 50, ctbaki, 200.7, 388.9 , 0 );
setEffMoveKey( spep_1 + 52, ctbaki, 195.8, 391.5 , 0 );
setEffMoveKey( spep_1 + 54, ctbaki, 206, 396 , 0 );
setEffMoveKey( spep_1 + 56, ctbaki, 209.7, 396.3 , 0 );

setEffScaleKey( spep_1 + 36, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_1 + 37, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_1 + 42, ctbaki, 1.33, 1.33 );
setEffScaleKey( spep_1 + 44, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_1 + 46, ctbaki, 1.4, 1.4 );
setEffScaleKey( spep_1 + 48, ctbaki, 1.45, 1.45 );
setEffScaleKey( spep_1 + 50, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1 + 52, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 + 54, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 + 56, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 36, ctbaki, 51.3 );
setEffRotateKey( spep_1 + 37, ctbaki, 51.3 );
setEffRotateKey( spep_1 + 56, ctbaki, 51.3 );

setEffAlphaKey( spep_1 + 36, ctbaki, 0 );
setEffAlphaKey( spep_1 + 37, ctbaki, 255 );
setEffAlphaKey( spep_1 + 38, ctbaki, 255 );
setEffAlphaKey( spep_1 + 52, ctbaki, 255 );
setEffAlphaKey( spep_1 + 54, ctbaki, 64 );
setEffAlphaKey( spep_1 + 56, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );  --立ち
setDisp( spep_1 + 93, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
--changeAnime( spep_1 + 37, 1, 108 );
changeAnime( spep_1 + 38, 1, 108 );

setMoveKey( spep_1 + 0, 1, -22.5, 146.9 , 0 );
setMoveKey( spep_1 + 2, 1, -18, 135.6 , 0 );
setMoveKey( spep_1 + 4, 1, -14.2, 125.7 , 0 );
setMoveKey( spep_1 + 6, 1, -11, 117.1 , 0 );
setMoveKey( spep_1 + 8, 1, -8.2, 109.7 , 0 );
setMoveKey( spep_1 + 10, 1, -5.8, 103.3 , 0 );
setMoveKey( spep_1 + 12, 1, -3.7, 98.1 , 0 );
setMoveKey( spep_1 + 14, 1, -1.9, 93.8 , 0 );
setMoveKey( spep_1 + 16, 1, -0.3, 90.4 , 0 );
setMoveKey( spep_1 + 18, 1, 1.1, 88 , 0 );
setMoveKey( spep_1 + 20, 1, 2.4, 86.3 , 0 );
setMoveKey( spep_1 + 22, 1, 3.5, 85.2 , 0 );
setMoveKey( spep_1 + 24, 1, 4.5, 84.2 , 0 );
setMoveKey( spep_1 + 26, 1, 5.4, 83.3 , 0 );
setMoveKey( spep_1 + 28, 1, 6.1, 82.6 , 0 );
setMoveKey( spep_1 + 30, 1, 6.7, 82 , 0 );
setMoveKey( spep_1 + 32, 1, 7.2, 81.6 , 0 );
setMoveKey( spep_1 + 34, 1, 7.5, 81.2 , 0 );
setMoveKey( spep_1 + 36, 1, 7.7, 81 , 0 );
--setMoveKey( spep_1 + 37, 1, 10, 180.9 , 0 );  --当たる瞬間
setMoveKey( spep_1 + 38, 1, 10, 180.9 , 0 );  --当たる瞬間
setMoveKey( spep_1 + 39, 1, 103.5, 60.7 , 0 );
setMoveKey( spep_1 + 43, 1, 104.6, 50.3 , 0 );
setMoveKey( spep_1 + 45, 1, 104.8, 36.5 , 0 );
setMoveKey( spep_1 + 48, 1, 107.6, 33.5 , 0 );
setMoveKey( spep_1 + 50, 1, 110.7, -0.5 , 0 );
setMoveKey( spep_1 + 52, 1, 124.7, -9.8 , 0 );
setMoveKey( spep_1 + 54, 1, 130.8, -15.1 , 0 );
setMoveKey( spep_1 + 58, 1, 132.8, -23.2 , 0 );
setMoveKey( spep_1 + 60, 1, 135.5, -27.5 , 0 );
setMoveKey( spep_1 + 62, 1, 137.6, -31 , 0 );
setMoveKey( spep_1 + 66, 1, 152.4, -54 , 0 );
setMoveKey( spep_1 + 70, 1, 154.3, -57.6 , 0 );
setMoveKey( spep_1 + 74, 1, 153, -55.9 , 0 );
setMoveKey( spep_1 + 82, 1, 205.4, -161 , 0 );
setMoveKey( spep_1 + 84, 1, 251.5, -253.9 , 0 );
setMoveKey( spep_1 + 86, 1, 295.1, -340.8 , 0 );
setMoveKey( spep_1 + 88, 1, 336.9, -423.4 , 0 );
setMoveKey( spep_1 + 90, 1, 377.7, -503.4 , 0 );
setMoveKey( spep_1 + 93, 1, 418.4, -582.1 , 0 );
setMoveKey( spep_1 + 96, 1, 420, -585 , 0 );

setScaleKey( spep_1 + 0, 1, 2.37, 2.37 );  --立ち
setScaleKey( spep_1 + 2, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 6, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 8, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 10, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 12, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 14, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 18, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 36, 1, 1.7, 1.7 );
--setScaleKey( spep_1 + 37, 1, 2.36, 2.36 );  --当たる瞬間
setScaleKey( spep_1 + 38, 1, 2.36, 2.36 );  --当たる瞬間
setScaleKey( spep_1 + 40, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 42, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 44, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 46, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 48, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 50, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 54, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 56, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 64, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 66, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 80, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 82, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 84, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 86, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 88, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 90, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 93, 1, 0.20, 0.20 );
setScaleKey( spep_1 + 96, 1, 0.20, 0.20 );

setRotateKey( spep_1 + 0, 1, 18.2 );  --立ち
setRotateKey( spep_1 + 4, 1, 18.2 );
setRotateKey( spep_1 + 6, 1, 18.1 );
setRotateKey( spep_1 + 36, 1, 18.1 );
--setRotateKey( spep_1 + 37, 1, 30.9 );  --当たる瞬間
setRotateKey( spep_1 + 38, 1, 30.9 );  --当たる瞬間
setRotateKey( spep_1 + 39, 1, 30.9);
setRotateKey( spep_1 + 40, 1, 30.9 );
setRotateKey( spep_1 + 42, 1, 30.9 );
setRotateKey( spep_1 + 44, 1, 30.8 );
setRotateKey( spep_1 + 50, 1, 30.9 );
setRotateKey( spep_1 + 84, 1, 30.9 );
setRotateKey( spep_1 + 86, 1, 30.9 );
setRotateKey( spep_1 + 93, 1, 30.9 );
setRotateKey( spep_1 + 96, 1, 30.9 );

-- ** 黒背景 ** --
entryFadeBg(spep_1 + 0, 0, 96, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_1 + 40, 1010 );  --バキッ
playSe( spep_1 + 46, 1011 );  --バキッ

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 1, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 228; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 2, shuchusen3, 180 );
setEffRotateKey( spep_2 + 4, shuchusen3, 0 );
setEffRotateKey( spep_2 + 6, shuchusen3, 180 );
setEffRotateKey( spep_2 + 8, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 180 );
setEffRotateKey( spep_2 + 20, shuchusen3, 0 );
setEffRotateKey( spep_2 + 22, shuchusen3, 180 );
setEffRotateKey( spep_2 + 24, shuchusen3, 0 );
setEffRotateKey( spep_2 + 26, shuchusen3, 180 );
setEffRotateKey( spep_2 + 28, shuchusen3, 0 );
setEffRotateKey( spep_2 + 30, shuchusen3, 180 );
setEffRotateKey( spep_2 + 32, shuchusen3, 0 );
setEffRotateKey( spep_2 + 34, shuchusen3, 180 );
setEffRotateKey( spep_2 + 36, shuchusen3, 0 );
setEffRotateKey( spep_2 + 38, shuchusen3, 180 );
setEffRotateKey( spep_2 + 40, shuchusen3, 0 );
setEffRotateKey( spep_2 + 42, shuchusen3, 180 );
setEffRotateKey( spep_2 + 44, shuchusen3, 0 );
setEffRotateKey( spep_2 + 46, shuchusen3, 180 );
setEffRotateKey( spep_2 + 48, shuchusen3, 0 );
setEffRotateKey( spep_2 + 50, shuchusen3, 180 );
setEffRotateKey( spep_2 + 52, shuchusen3, 0 );
setEffRotateKey( spep_2 + 54, shuchusen3, 180 );
setEffRotateKey( spep_2 + 56, shuchusen3, 0 );
setEffRotateKey( spep_2 + 58, shuchusen3, 180 );
setEffRotateKey( spep_2 + 60, shuchusen3, 0 );
setEffRotateKey( spep_2 + 62, shuchusen3, 180 );
setEffRotateKey( spep_2 + 64, shuchusen3, 0 );
setEffRotateKey( spep_2 + 66, shuchusen3, 0 );
setEffRotateKey( spep_2 + 68, shuchusen3, 180 );
setEffRotateKey( spep_2 + 70, shuchusen3, 0 );
setEffRotateKey( spep_2 + 72, shuchusen3, 180 );
setEffRotateKey( spep_2 + 74, shuchusen3, 0 );
setEffRotateKey( spep_2 + 76, shuchusen3, 180 );
setEffRotateKey( spep_2 + 78, shuchusen3, 0 );
setEffRotateKey( spep_2 + 80, shuchusen3, 180 );
setEffRotateKey( spep_2 + 82, shuchusen3, 0 );
setEffRotateKey( spep_2 + 84, shuchusen3, 180 );
setEffRotateKey( spep_2 + 86, shuchusen3, 0 );
setEffRotateKey( spep_2 + 88, shuchusen3, 180 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;
entryFade( spep_3 - 6, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 吹っ飛び(97F)
------------------------------------------------------

-- ** エフェクト等 ** --
futtobi1 = entryEffectLife( spep_3 + 2, SP_06, 118, 0x100, -1, 0, 0, 0 ); --吹っ飛び手前(ef_006)
setEffMoveKey( spep_3 + 2, futtobi1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 3, futtobi1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, futtobi1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 2, futtobi1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 3, futtobi1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, futtobi1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 2, futtobi1, 0 );
setEffRotateKey( spep_3 + 3, futtobi1, 0 );
setEffRotateKey( spep_3 + 120, futtobi1, 0 );
setEffAlphaKey( spep_3 + 2, futtobi1, 0 );
setEffAlphaKey( spep_3 + 3, futtobi1, 255 );
setEffAlphaKey( spep_3 + 120, futtobi1, 255 );

futtobi2 = entryEffectLife( spep_3 + 2, SP_07, 118, 0x80, -1, 0, 0, 0 ); --吹っ飛び奥(ef_007)
setEffScaleKey( spep_3 + 2, futtobi2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 3, futtobi2, 1.0, 1.0 );
setEffMoveKey( spep_3 + 120, futtobi2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 2, futtobi2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 3, futtobi2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, futtobi2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 2, futtobi2, 0 );
setEffRotateKey( spep_3 + 3, futtobi2, 0 );
setEffRotateKey( spep_3 + 120, futtobi2, 0 );
setEffAlphaKey( spep_3 + 2, futtobi2, 0 );
setEffAlphaKey( spep_3 + 3, futtobi2, 255 );
setEffAlphaKey( spep_3 + 120, futtobi2, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 172, -363 );  --集中線
setEffMoveKey( spep_3 + 0, shuchusen4, 172, -363 , 0 );
setEffMoveKey( spep_3 + 49, shuchusen4, 72, -83.9 , 0 );
setEffMoveKey( spep_3 + 97, shuchusen4, 72, -83.9 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen4, 72, -83.9 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.71, 1.81 );
setEffScaleKey( spep_3 + 49, shuchusen4, 1.71, 1.81 );
setEffScaleKey( spep_3 + 69, shuchusen4, 1.29, 1.16 );
setEffScaleKey( spep_3 + 97, shuchusen4, 1.29, 1.16 );
setEffScaleKey( spep_3 + 98, shuchusen4, 1.29, 1.16 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 1, shuchusen4, 180 );
setEffRotateKey( spep_3 + 3, shuchusen4, 0 );
setEffRotateKey( spep_3 + 5, shuchusen4, 180 );
setEffRotateKey( spep_3 + 7, shuchusen4, 0 );
setEffRotateKey( spep_3 + 9, shuchusen4, 180 );
setEffRotateKey( spep_3 + 11, shuchusen4, 0 );
setEffRotateKey( spep_3 + 13, shuchusen4, 180 );
setEffRotateKey( spep_3 + 15, shuchusen4, 0 );
setEffRotateKey( spep_3 + 17, shuchusen4, 180 );
setEffRotateKey( spep_3 + 19, shuchusen4, 0 );
setEffRotateKey( spep_3 + 21, shuchusen4, 180 );
setEffRotateKey( spep_3 + 23, shuchusen4, 0 );
setEffRotateKey( spep_3 + 25, shuchusen4, 180 );
setEffRotateKey( spep_3 + 27, shuchusen4, 0 );
setEffRotateKey( spep_3 + 29, shuchusen4, 180 );
setEffRotateKey( spep_3 + 31, shuchusen4, 0 );
setEffRotateKey( spep_3 + 33, shuchusen4, 180 );
setEffRotateKey( spep_3 + 35, shuchusen4, 0 );
setEffRotateKey( spep_3 + 37, shuchusen4, 180 );
setEffRotateKey( spep_3 + 39, shuchusen4, 0 );
setEffRotateKey( spep_3 + 41, shuchusen4, 180 );
setEffRotateKey( spep_3 + 43, shuchusen4, 0 );
setEffRotateKey( spep_3 + 45, shuchusen4, 180 );
setEffRotateKey( spep_3 + 47, shuchusen4, 0 );
setEffRotateKey( spep_3 + 49, shuchusen4, 0 );
setEffRotateKey( spep_3 + 51, shuchusen4, 180 );
setEffRotateKey( spep_3 + 53, shuchusen4, 0 );
setEffRotateKey( spep_3 + 55, shuchusen4, 180 );
setEffRotateKey( spep_3 + 57, shuchusen4, 0 );
setEffRotateKey( spep_3 + 60, shuchusen4, 180 );
setEffRotateKey( spep_3 + 61, shuchusen4, 0 );
setEffRotateKey( spep_3 + 63, shuchusen4, 180 );
setEffRotateKey( spep_3 + 65, shuchusen4, 0 );
setEffRotateKey( spep_3 + 67, shuchusen4, 0 );
setEffRotateKey( spep_3 + 69, shuchusen4, 180 );
setEffRotateKey( spep_3 + 71, shuchusen4, 0 );
setEffRotateKey( spep_3 + 73, shuchusen4, 180 );
setEffRotateKey( spep_3 + 75, shuchusen4, 0 );
setEffRotateKey( spep_3 + 77, shuchusen4, 180 );
setEffRotateKey( spep_3 + 79, shuchusen4, 0 );
setEffRotateKey( spep_3 + 81, shuchusen4, 180 );
setEffRotateKey( spep_3 + 83, shuchusen4, 0 );
setEffRotateKey( spep_3 + 85, shuchusen4, 180 );
setEffRotateKey( spep_3 + 87, shuchusen4, 0 );
setEffRotateKey( spep_3 + 89, shuchusen4, 180 );
setEffRotateKey( spep_3 + 91, shuchusen4, 0 );
setEffRotateKey( spep_3 + 93, shuchusen4, 180 );
setEffRotateKey( spep_3 + 95, shuchusen4, 0 );
setEffRotateKey( spep_3 + 97, shuchusen4, 180 );
setEffRotateKey( spep_3 + 98, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 97, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_3 + 42,  10018, 38, 0x100, -1, 0, 6.8, 157.8 );  --ドゴォンッ
setEffMoveKey( spep_3 + 42, ctdogon, 6.8, 157.8 , 0 );
setEffMoveKey( spep_3 + 47, ctdogon, 8.1, 225.9 , 0 );
setEffMoveKey( spep_3 + 59, ctdogon, 12.7, 255.5 , 0 );
setEffMoveKey( spep_3 + 51, ctdogon, 9.2, 261.2 , 0 );
setEffMoveKey( spep_3 + 53, ctdogon, 12.8, 281.4 , 0 );
setEffMoveKey( spep_3 + 55, ctdogon, 13.9, 283.4 , 0 );
setEffMoveKey( spep_3 + 57, ctdogon, 7.9, 296.5 , 0 );
setEffMoveKey( spep_3 + 59, ctdogon, 17, 303.7 , 0 );
setEffMoveKey( spep_3 + 61, ctdogon, 8.5, 307.9 , 0 );
setEffMoveKey( spep_3 + 63, ctdogon, 12.1, 317.9 , 0 );
setEffMoveKey( spep_3 + 65, ctdogon, 8.3, 317.6 , 0 );
setEffMoveKey( spep_3 + 67, ctdogon, 12.3, 333.4 , 0 );
setEffMoveKey( spep_3 + 69, ctdogon, 13.5, 329.2 , 0 );
setEffMoveKey( spep_3 + 71, ctdogon, 7.2, 337.2 , 0 );
setEffMoveKey( spep_3 + 73, ctdogon, 16.9, 338.9 , 0 );
setEffMoveKey( spep_3 + 75, ctdogon, 8, 337.6 , 0 );
setEffMoveKey( spep_3 + 77, ctdogon, 11.8, 342.3 , 0 );
setEffMoveKey( spep_3 + 79, ctdogon, 11.8, 342.7 , 0 );
setEffMoveKey( spep_3 + 80, ctdogon, 11.8, 342.7 , 0 );

setEffScaleKey( spep_3 + 42, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_3 + 47, ctdogon, 3.2, 3.2 );
setEffScaleKey( spep_3 + 49, ctdogon, 3.39, 3.39 );
setEffScaleKey( spep_3 + 51, ctdogon, 3.45, 3.45 );
setEffScaleKey( spep_3 + 53, ctdogon, 3.51, 3.51 );
setEffScaleKey( spep_3 + 55, ctdogon, 3.57, 3.57 );
setEffScaleKey( spep_3 + 57, ctdogon, 3.62, 3.62 );
setEffScaleKey( spep_3 + 59, ctdogon, 3.67, 3.67 );
setEffScaleKey( spep_3 + 61, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_3 + 63, ctdogon, 3.75, 3.75 );
setEffScaleKey( spep_3 + 65, ctdogon, 3.78, 3.78 );
setEffScaleKey( spep_3 + 67, ctdogon, 3.81, 3.81 );
setEffScaleKey( spep_3 + 69, ctdogon, 3.83, 3.83 );
setEffScaleKey( spep_3 + 71, ctdogon, 3.85, 3.85 );
setEffScaleKey( spep_3 + 73, ctdogon, 3.87, 3.87 );
setEffScaleKey( spep_3 + 75, ctdogon, 3.88, 3.88 );
setEffScaleKey( spep_3 + 77, ctdogon, 3.89, 3.89 );
setEffScaleKey( spep_3 + 79, ctdogon, 3.89, 3.89 );
setEffScaleKey( spep_3 + 80, ctdogon, 3.89, 3.89 );

setEffRotateKey( spep_3 + 42, ctdogon, -0.9 );
setEffRotateKey( spep_3 + 79, ctdogon, -0.9 );
setEffRotateKey( spep_3 + 80, ctdogon, -0.9 );

setEffAlphaKey( spep_3 + 42, ctdogon, 255 );
setEffAlphaKey( spep_3 + 79, ctdogon, 255 );
setEffAlphaKey( spep_3 + 80, ctdogon, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 4, 1, 1 );  --落ちてくる
setDisp( spep_3 + 42, 1, 0 );
setDisp( spep_3 + 79, 1, 1 );  --埋まってる
setDisp( spep_3 + 80, 1, 1 );
setDisp( spep_3 + 119, 1, 0 );
setDisp( spep_3 + 120, 1, 0 );
changeAnime( spep_3 + 4, 1, 108 );

setMoveKey( spep_3 + 4, 1, -391.2, 952.8 , 0 );  --落ちてくる
setMoveKey( spep_3 + 6, 1, -379.3, 929.8 , 0 );
setMoveKey( spep_3 + 9, 1, -366, 903.9 , 0 );
setMoveKey( spep_3 + 10, 1, -351.1, 875.2 , 0 );
setMoveKey( spep_3 + 12, 1, -334.9, 843.7 , 0 );
setMoveKey( spep_3 + 14, 1, -317.2, 809.4 , 0 );
setMoveKey( spep_3 + 16, 1, -298.3, 772.6 , 0 );
setMoveKey( spep_3 + 18, 1, -278.1, 733.2 , 0 );
setMoveKey( spep_3 + 20, 1, -256.7, 691.5 , 0 );
setMoveKey( spep_3 + 22, 1, -234.1, 647.4 , 0 );
setMoveKey( spep_3 + 24, 1, -210.5, 601.1 , 0 );
setMoveKey( spep_3 + 26, 1, -185.8, 552.7 , 0 );
setMoveKey( spep_3 + 28, 1, -160.2, 502.3 , 0 );
setMoveKey( spep_3 + 30, 1, -133.8, 450.1 , 0 );
setMoveKey( spep_3 + 32, 1, -107.6, 396.3 , 0 );
setMoveKey( spep_3 + 34, 1, -79.7, 340.8 , 0 );
setMoveKey( spep_3 + 36, 1, -51.1, 284.1 , 0 );
setMoveKey( spep_3 + 38, 1, -22.1, 226.1 , 0 );
setMoveKey( spep_3 + 40, 1, 35.3, 93.1 , 0 );
setMoveKey( spep_3 + 41, 1, 39.3, 85 , 0 );
setMoveKey( spep_3 + 42, 1, 44.3, 83 , 0 );

--[[
setMoveKey( spep_3 + 79, 1, 40.2, 46 , 0 );  --埋まってる
setMoveKey( spep_3 + 90, 1, 40.2, 45 , 0 );
setMoveKey( spep_3 + 94, 1, 40.2, 42 , 0 );
setMoveKey( spep_3 + 98, 1, 40.2, 40 , 0 );
setMoveKey( spep_3 + 102, 1, 40.2, 38 , 0 );
setMoveKey( spep_3 + 110, 1, 40.2, 36 , 0 );
setMoveKey( spep_3 + 114, 1, 40.2, 34 , 0 );
setMoveKey( spep_3 + 119, 1, 40.2, 32 , 0 );
setMoveKey( spep_3 + 120, 1, 40.2, 32 , 0 );
]]

--位置を調整しました
setMoveKey( spep_3+79, 1, 52.9, 54.8 , 0 );
setMoveKey( spep_3+80, 1, 52.9, 54.8 , 0 );
setMoveKey( spep_3+82, 1, 52.8, 54.6 , 0 );
setMoveKey( spep_3+84, 1, 52.6, 54.3 , 0 );
setMoveKey( spep_3+86, 1, 52.4, 53.8 , 0 );
setMoveKey( spep_3+88, 1, 52.1, 53.2 , 0 );
setMoveKey( spep_3+90, 1, 51.7, 52.4 , 0 );
setMoveKey( spep_3+92, 1, 51.3, 51.5 , 0 );
setMoveKey( spep_3+94, 1, 50.7, 50.3 , 0 );
setMoveKey( spep_3+96, 1, 50, 48.9 , 0 );
setMoveKey( spep_3+98, 1, 49.2, 47.2 , 0 );
setMoveKey( spep_3+100, 1, 48.3, 45.2 , 0 );
setMoveKey( spep_3+102, 1, 47.2, 43 , 0 );
setMoveKey( spep_3+120, 1, 42, 32 , 0 );

--[[
setMoveKey( spep_3+104, 1, 46, 40.4 , 0 );
setMoveKey( spep_3+106, 1, 44.6, 37.5 , 0 );
setMoveKey( spep_3+108, 1, 43.2, 34.5 , 0 );
setMoveKey( spep_3+110, 1, 42, 32 , 0 );
setMoveKey( spep_3+112, 1, 40.9, 29.7 , 0 );
setMoveKey( spep_3+114, 1, 40, 27.7 , 0 );
setMoveKey( spep_3+116, 1, 39.2, 26.1 , 0 );
setMoveKey( spep_3+118, 1, 38.5, 24.6 , 0 );
setMoveKey( spep_3+120, 1, 37.9, 23.5 , 0 );
]]

setScaleKey( spep_3 + 4, 1, 6.30, 6.30 );  --落ちてくる
setScaleKey( spep_3 + 6, 1, 6.21, 6.21 );
setScaleKey( spep_3 + 8, 1, 5.89, 5.89 );
setScaleKey( spep_3 + 10, 1, 5.21, 5.21 );
setScaleKey( spep_3 + 12, 1, 5.07, 5.07 );
setScaleKey( spep_3 + 14, 1, 4.98, 4.98 );
setScaleKey( spep_3 + 16, 1, 4.63, 4.63 );
setScaleKey( spep_3 + 18, 1, 4.47, 4.45 );
setScaleKey( spep_3 + 20, 1, 4.28, 4.28 );
setScaleKey( spep_3 + 22, 1, 4.11, 4.11 );
setScaleKey( spep_3 + 24, 1, 3.82, 3.81 );
setScaleKey( spep_3 + 26, 1, 3.50, 3.50 );
setScaleKey( spep_3 + 28, 1, 3.36, 3.35 );
setScaleKey( spep_3 + 30, 1, 3.06, 3.07 );
setScaleKey( spep_3 + 32, 1, 2.87, 2.81 );
setScaleKey( spep_3 + 34, 1, 2.57, 2.54 );
setScaleKey( spep_3 + 36, 1, 2.27, 2.27 );
setScaleKey( spep_3 + 38, 1, 2.12, 2.12 );
setScaleKey( spep_3 + 40, 1, 2.10, 2.10 );
setScaleKey( spep_3 + 42, 1, 1.70, 1.27 );

--[[
setScaleKey( spep_3 + 79, 1, 2.04, 2.04 );  --埋まってる
setScaleKey( spep_3 + 81, 1, 2.00, 2.00 );
setScaleKey( spep_3 + 85, 1, 1.97, 1.97 );
setScaleKey( spep_3 + 87, 1, 1.90, 1.90 );
setScaleKey( spep_3 + 89, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 91, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 93, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 95, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 99, 1, 1.70, 1.70 );
setScaleKey( spep_3 + 110, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 114, 1, 1.60, 1.60 );
setScaleKey( spep_3 + 119, 1, 1.60, 1.60 );
setScaleKey( spep_3 + 120, 1, 1.56, 1.56 );
]]

--大きさを調整しました
setScaleKey( spep_3+79, 1, 1.95, 1.95 );
setScaleKey( spep_3+80, 1, 1.95, 1.95 );
setScaleKey( spep_3+84, 1, 1.95, 1.95 );
setScaleKey( spep_3+86, 1, 1.94, 1.94 );
setScaleKey( spep_3+88, 1, 1.94, 1.94 );
setScaleKey( spep_3+90, 1, 1.93, 1.93 );
setScaleKey( spep_3+92, 1, 1.91, 1.91 );
setScaleKey( spep_3+94, 1, 1.9, 1.9 );
setScaleKey( spep_3+96, 1, 1.88, 1.88 );
setScaleKey( spep_3+98, 1, 1.86, 1.86 );
setScaleKey( spep_3+100, 1, 1.84, 1.84 );
setScaleKey( spep_3+102, 1, 1.81, 1.81 );
setScaleKey( spep_3+120, 1, 1.71, 1.71 );

--[[
setScaleKey( spep_3+104, 1, 1.78, 1.78 );
setScaleKey( spep_3+106, 1, 1.75, 1.75 );
setScaleKey( spep_3+108, 1, 1.71, 1.71 );
setScaleKey( spep_3+110, 1, 1.68, 1.68 );
setScaleKey( spep_3+112, 1, 1.66, 1.66 );
setScaleKey( spep_3+114, 1, 1.63, 1.63 );
setScaleKey( spep_3+116, 1, 1.61, 1.61 );
setScaleKey( spep_3+118, 1, 1.6, 1.6 );
setScaleKey( spep_3+120, 1, 1.58, 1.58 );
]]

setRotateKey( spep_3 + 4, 1, 63.5 );  --落ちてくる
setRotateKey( spep_3 + 42, 1, 63.5 );
setRotateKey( spep_3 + 79, 1, 28.7 );  --埋まってる
setRotateKey( spep_3 + 80, 1, 28.7 );
setRotateKey( spep_3 + 119, 1, 28.7 );
setRotateKey( spep_3 + 120, 1, 28.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 42, 1014 );  --ドゴォンッ

-- ** ホワイトフェード ** --
entryFade( spep_3 + 68, 10, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 114, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 122;

------------------------------------------------------
-- 踏みつけ(270F)
------------------------------------------------------

-- ** エフェクト等 ** --
fumituke1 = entryEffect( spep_4 + 2, SP_04, 0x100, -1, 0, 0, 0 ); --踏みつけ手前(ef_004)
setEffMoveKey( spep_4 + 2, fumituke1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 268, fumituke1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 2, fumituke1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 268, fumituke1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 2, fumituke1, 0 );
setEffRotateKey( spep_4 + 268, fumituke1, 0 );
setEffAlphaKey( spep_4 + 2, fumituke1, 250 );
setEffAlphaKey( spep_4 + 268, fumituke1, 250 );

fumituke2 = entryEffect( spep_4 + 2, SP_05, 0x80, -1, 0, 0, 0 ); --踏みつけ奥(ef_005)
setEffMoveKey( spep_4 + 2, fumituke2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 268, fumituke2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 2, fumituke2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 268, fumituke2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 2, fumituke2, 0 );
setEffRotateKey( spep_4 + 268, fumituke2, 0 );
setEffAlphaKey( spep_4 + 2, fumituke2, 250 );
setEffAlphaKey( spep_4 + 268, fumituke2, 250 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 96,  906, 174, 0x100, -1, 0, 120, -44.2 );  --集中線
setEffMoveKey( spep_4 + 96, shuchusen5, 120, -44.2 , 0 );
setEffMoveKey( spep_4 + 97, shuchusen5, 120, -44.2 , 0 );
setEffMoveKey( spep_4 + 218, shuchusen5, 197.8, -187.2 , 0 );
setEffMoveKey( spep_4 + 270, shuchusen5, 197.8, -188.3 , 0 );

setEffScaleKey( spep_4 + 96, shuchusen5, 1.16, 1.18 );
setEffScaleKey( spep_4 + 97, shuchusen5, 1.16, 1.18 );
setEffScaleKey( spep_4 + 102, shuchusen5, 1.25, 1.24 );
setEffScaleKey( spep_4 + 104, shuchusen5, 1.29, 1.27 );
setEffScaleKey( spep_4 + 106, shuchusen5, 1.31, 1.29 );
setEffScaleKey( spep_4 + 108, shuchusen5, 1.33, 1.3 );
setEffScaleKey( spep_4 + 110, shuchusen5, 1.35, 1.31 );
setEffScaleKey( spep_4 + 112, shuchusen5, 1.36, 1.32 );
setEffScaleKey( spep_4 + 114, shuchusen5, 1.37, 1.33 );
setEffScaleKey( spep_4 + 116, shuchusen5, 1.38, 1.34 );
setEffScaleKey( spep_4 + 118, shuchusen5, 1.39, 1.34 );
setEffScaleKey( spep_4 + 120, shuchusen5, 1.4, 1.35 );
setEffScaleKey( spep_4 + 122, shuchusen5, 1.41, 1.36 );
setEffScaleKey( spep_4 + 124, shuchusen5, 1.42, 1.36 );
setEffScaleKey( spep_4 + 126, shuchusen5, 1.43, 1.37 );
setEffScaleKey( spep_4 + 128, shuchusen5, 1.43, 1.37 );
setEffScaleKey( spep_4 + 130, shuchusen5, 1.44, 1.38 );
setEffScaleKey( spep_4 + 132, shuchusen5, 1.44, 1.38 );
setEffScaleKey( spep_4 + 134, shuchusen5, 1.45, 1.38 );
setEffScaleKey( spep_4 + 136, shuchusen5, 1.45, 1.39 );
setEffScaleKey( spep_4 + 138, shuchusen5, 1.46, 1.39 );
setEffScaleKey( spep_4 + 140, shuchusen5, 1.46, 1.39 );
setEffScaleKey( spep_4 + 142, shuchusen5, 1.47, 1.4 );
setEffScaleKey( spep_4 + 144, shuchusen5, 1.47, 1.4 );
setEffScaleKey( spep_4 + 146, shuchusen5, 1.48, 1.4 );
setEffScaleKey( spep_4 + 148, shuchusen5, 1.48, 1.41 );
setEffScaleKey( spep_4 + 150, shuchusen5, 1.48, 1.41 );
setEffScaleKey( spep_4 + 152, shuchusen5, 1.49, 1.41 );
setEffScaleKey( spep_4 + 158, shuchusen5, 1.49, 1.41 );
setEffScaleKey( spep_4 + 162, shuchusen5, 1.5, 1.42 );
setEffScaleKey( spep_4 + 172, shuchusen5, 1.5, 1.42 );
setEffScaleKey( spep_4 + 174, shuchusen5, 1.51, 1.42 );
setEffScaleKey( spep_4 + 178, shuchusen5, 1.51, 1.42 );
setEffScaleKey( spep_4 + 180, shuchusen5, 1.51, 1.43 );
setEffScaleKey( spep_4 + 194, shuchusen5, 1.51, 1.43 );
setEffScaleKey( spep_4 + 196, shuchusen5, 1.52, 1.43 );
setEffScaleKey( spep_4 + 270, shuchusen5, 1.52, 1.43 );

setEffRotateKey( spep_4 + 96, shuchusen5, 0 );
setEffRotateKey( spep_4 + 97, shuchusen5, 0 );
setEffRotateKey( spep_4 + 102, shuchusen5, 180 );
setEffRotateKey( spep_4 + 104, shuchusen5, 0 );
setEffRotateKey( spep_4 + 106, shuchusen5, 180 );
setEffRotateKey( spep_4 + 108, shuchusen5, 0 );
setEffRotateKey( spep_4 + 110, shuchusen5, 180 );
setEffRotateKey( spep_4 + 112, shuchusen5, 0 );
setEffRotateKey( spep_4 + 114, shuchusen5, 180 );
setEffRotateKey( spep_4 + 116, shuchusen5, 0 );
setEffRotateKey( spep_4 + 118, shuchusen5, 180 );
setEffRotateKey( spep_4 + 120, shuchusen5, 0 );
setEffRotateKey( spep_4 + 122, shuchusen5, 180 );
setEffRotateKey( spep_4 + 124, shuchusen5, 0 );
setEffRotateKey( spep_4 + 126, shuchusen5, 180 );
setEffRotateKey( spep_4 + 128, shuchusen5, 0 );
setEffRotateKey( spep_4 + 130, shuchusen5, 180 );
setEffRotateKey( spep_4 + 132, shuchusen5, 0 );
setEffRotateKey( spep_4 + 134, shuchusen5, 180 );
setEffRotateKey( spep_4 + 136, shuchusen5, 0 );
setEffRotateKey( spep_4 + 138, shuchusen5, 180 );
setEffRotateKey( spep_4 + 140, shuchusen5, 0 );
setEffRotateKey( spep_4 + 142, shuchusen5, 180 );
setEffRotateKey( spep_4 + 144, shuchusen5, 0 );
setEffRotateKey( spep_4 + 146, shuchusen5, 180 );
setEffRotateKey( spep_4 + 148, shuchusen5, 0 );
setEffRotateKey( spep_4 + 150, shuchusen5, 180 );
setEffRotateKey( spep_4 + 152, shuchusen5, 0 );
setEffRotateKey( spep_4 + 154, shuchusen5, 180 );
setEffRotateKey( spep_4 + 156, shuchusen5, 0 );
setEffRotateKey( spep_4 + 158, shuchusen5, 180 );
setEffRotateKey( spep_4 + 160, shuchusen5, 0 );
setEffRotateKey( spep_4 + 162, shuchusen5, 180 );
setEffRotateKey( spep_4 + 164, shuchusen5, 0 );
setEffRotateKey( spep_4 + 166, shuchusen5, 180 );
setEffRotateKey( spep_4 + 168, shuchusen5, 0 );
setEffRotateKey( spep_4 + 170, shuchusen5, 180 );
setEffRotateKey( spep_4 + 172, shuchusen5, 0 );
setEffRotateKey( spep_4 + 174, shuchusen5, 180 );
setEffRotateKey( spep_4 + 176, shuchusen5, 0 );
setEffRotateKey( spep_4 + 178, shuchusen5, 180 );
setEffRotateKey( spep_4 + 180, shuchusen5, 0 );
setEffRotateKey( spep_4 + 182, shuchusen5, 180 );
setEffRotateKey( spep_4 + 184, shuchusen5, 0 );
setEffRotateKey( spep_4 + 186, shuchusen5, 180 );
setEffRotateKey( spep_4 + 188, shuchusen5, 0 );
setEffRotateKey( spep_4 + 190, shuchusen5, 180 );
setEffRotateKey( spep_4 + 192, shuchusen5, 0 );
setEffRotateKey( spep_4 + 194, shuchusen5, 180 );
setEffRotateKey( spep_4 + 196, shuchusen5, 0 );
setEffRotateKey( spep_4 + 198, shuchusen5, 180 );
setEffRotateKey( spep_4 + 200, shuchusen5, 0 );
setEffRotateKey( spep_4 + 202, shuchusen5, 180 );
setEffRotateKey( spep_4 + 204, shuchusen5, 0 );
setEffRotateKey( spep_4 + 206, shuchusen5, 180 );
setEffRotateKey( spep_4 + 208, shuchusen5, 0 );
setEffRotateKey( spep_4 + 210, shuchusen5, 180 );
setEffRotateKey( spep_4 + 212, shuchusen5, 0 );
setEffRotateKey( spep_4 + 214, shuchusen5, 180 );
setEffRotateKey( spep_4 + 216, shuchusen5, 0 );
setEffRotateKey( spep_4 + 218, shuchusen5, 180 );
setEffRotateKey( spep_4 + 220, shuchusen5, 0 );
setEffRotateKey( spep_4 + 222, shuchusen5, 180 );
setEffRotateKey( spep_4 + 224, shuchusen5, 0 );
setEffRotateKey( spep_4 + 226, shuchusen5, 180 );
setEffRotateKey( spep_4 + 228, shuchusen5, 0 );
setEffRotateKey( spep_4 + 230, shuchusen5, 180 );
setEffRotateKey( spep_4 + 232, shuchusen5, 0 );
setEffRotateKey( spep_4 + 234, shuchusen5, 180 );
setEffRotateKey( spep_4 + 236, shuchusen5, 0 );
setEffRotateKey( spep_4 + 238, shuchusen5, 180 );
setEffRotateKey( spep_4 + 240, shuchusen5, 0 );
setEffRotateKey( spep_4 + 242, shuchusen5, 180 );
setEffRotateKey( spep_4 + 244, shuchusen5, 0 );
setEffRotateKey( spep_4 + 246, shuchusen5, 180 );
setEffRotateKey( spep_4 + 248, shuchusen5, 0 );
setEffRotateKey( spep_4 + 250, shuchusen5, 180 );
setEffRotateKey( spep_4 + 252, shuchusen5, 0 );
setEffRotateKey( spep_4 + 254, shuchusen5, 180 );
setEffRotateKey( spep_4 + 256, shuchusen5, 0 );
setEffRotateKey( spep_4 + 258, shuchusen5, 180 );
setEffRotateKey( spep_4 + 260, shuchusen5, 0 );
setEffRotateKey( spep_4 + 262, shuchusen5, 180 );
setEffRotateKey( spep_4 + 264, shuchusen5, 0 );
setEffRotateKey( spep_4 + 266, shuchusen5, 180 );
setEffRotateKey( spep_4 + 268, shuchusen5, 0 );
setEffRotateKey( spep_4 + 270, shuchusen5, 180 );

setEffAlphaKey( spep_4 + 96, shuchusen5, 0 );
setEffAlphaKey( spep_4 + 97, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 270, shuchusen5, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 0,  920, 48, 0x80, -1, 0, 0, 0 );  --流線後ろ
setEffMoveKey( spep_4 + 0, ryusen2, 0 , 0 , 0 );
setEffMoveKey( spep_4 + 48, ryusen2, 0 , 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 5.22, 1.47 );
setEffScaleKey( spep_4 + 48, ryusen2, 5.22, 1.47 );

setEffRotateKey( spep_4 + 0, ryusen2, 50.7 );
setEffRotateKey( spep_4 + 48, ryusen2, 50.7 );

setEffAlphaKey( spep_4 + 0, ryusen2, 110 );
setEffAlphaKey( spep_4 + 48, ryusen2, 110 );

ryusen3 = entryEffectLife( spep_4 + 2,  920, 46, 0x100, -1, 0, 1590, 500);  --流線手前１
setEffMoveKey( spep_4 + 2, ryusen3, 1590, 500 , 0 );
setEffMoveKey( spep_4 + 48, ryusen3, 1590, 500 , 0 );

setEffScaleKey( spep_4 + 2, ryusen3, 5.22, 1.47 );
setEffScaleKey( spep_4 + 48, ryusen3, 5.22, 1.47 );

setEffRotateKey( spep_4 + 2, ryusen3, 50.7 );
setEffRotateKey( spep_4 + 48, ryusen3, 50.7 );

setEffAlphaKey( spep_4 + 2, ryusen3, 110 );
setEffAlphaKey( spep_4 + 48, ryusen3, 110 );

ryusen4 = entryEffectLife( spep_4 + 2,  920, 46, 0x100, -1, 0, -2375, -500 );  --流線手前２
setEffMoveKey( spep_4 + 2, ryusen4, -2375, -500 , 0 );
setEffMoveKey( spep_4 + 48, ryusen4, -2375, -500 , 0 );

setEffScaleKey( spep_4 + 2, ryusen4, 5.22, 1.47 );
setEffScaleKey( spep_4 + 48, ryusen4, 5.22, 1.47 );

setEffRotateKey( spep_4 + 2, ryusen4, 50.7 );
setEffRotateKey( spep_4 + 48, ryusen4, 50.7 );

setEffAlphaKey( spep_4 + 2, ryusen4, 110 );
setEffAlphaKey( spep_4 + 48, ryusen4, 110 );

-- ** 書き文字エントリー ** --
ctzun2 = entryEffectLife( spep_4 + 70,  10016, 26, 0x100, -1, 0, 161.5, 45 );  --ズンッ
setEffMoveKey( spep_4 + 70, ctzun2, 161.5, 45 , 0 );
setEffMoveKey( spep_4 + 71, ctzun2, 161.5, 45 , 0 );
setEffMoveKey( spep_4 + 74, ctzun2, 181, 181.9 , 0 );
setEffMoveKey( spep_4 + 76, ctzun2, 191.7, 127.8 , 0 );
setEffMoveKey( spep_4 + 78, ctzun2, 196, 205.1 , 0 );
setEffMoveKey( spep_4 + 80, ctzun2, 195.7, 154.3 , 0 );
setEffMoveKey( spep_4 + 82, ctzun2, 199.3, 192.9 , 0 );
setEffMoveKey( spep_4 + 84, ctzun2, 196.7, 181.3 , 0 );
setEffMoveKey( spep_4 + 86, ctzun2, 201.3, 193.6 , 0 );
setEffMoveKey( spep_4 + 88, ctzun2, 198.5, 189 , 0 );
setEffMoveKey( spep_4 + 90, ctzun2, 202.2, 200 , 0 );
setEffMoveKey( spep_4 + 92, ctzun2, 200.5, 191.9 , 0 );
setEffMoveKey( spep_4 + 94, ctzun2, 203.5, 200.3 , 0 );
setEffMoveKey( spep_4 + 96, ctzun2, 203.7, 200.5 , 0 );

setEffScaleKey( spep_4 + 70, ctzun2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 71, ctzun2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 74, ctzun2, 1.53, 1.53 );
setEffScaleKey( spep_4 + 76, ctzun2, 1.79, 1.79 );
setEffScaleKey( spep_4 + 78, ctzun2, 1.88, 1.88 );
setEffScaleKey( spep_4 + 80, ctzun2, 1.9, 1.9 );
setEffScaleKey( spep_4 + 82, ctzun2, 1.92, 1.92 );
setEffScaleKey( spep_4 + 84, ctzun2, 1.93, 1.93 );
setEffScaleKey( spep_4 + 86, ctzun2, 1.95, 1.95 );
setEffScaleKey( spep_4 + 88, ctzun2, 1.97, 1.97 );
setEffScaleKey( spep_4 + 90, ctzun2, 1.99, 1.99 );
setEffScaleKey( spep_4 + 92, ctzun2, 2, 2 );
setEffScaleKey( spep_4 + 94, ctzun2, 2.02, 2.02 );
setEffScaleKey( spep_4 + 96, ctzun2, 2.04, 2.04 );

setEffRotateKey( spep_4 + 70, ctzun2, 21.5 );
setEffRotateKey( spep_4 + 71, ctzun2, 21.5 );
setEffRotateKey( spep_4 + 96, ctzun2, 21.5 );

setEffAlphaKey( spep_4 + 70, ctzun2, 0 );
setEffAlphaKey( spep_4 + 71, ctzun2, 255 );
setEffAlphaKey( spep_4 + 96, ctzun2, 255 );


ctzuzuzun = entryEffectLife( spep_4 + 96,  10013, 174, 0x100, -1, 0, 147.1, 120.1 );  --ズズズンッ
setEffMoveKey( spep_4 + 96, ctzuzuzun, 147.1, 120.1 , 0 );
setEffMoveKey( spep_4 + 97, ctzuzuzun, 147.1, 120.1 , 0 );
setEffMoveKey( spep_4 + 100, ctzuzuzun, 147.4, 117.2 , 0 );
setEffMoveKey( spep_4 + 102, ctzuzuzun, 147.7, 114.2 , 0 );
setEffMoveKey( spep_4 + 104, ctzuzuzun, 148.1, 111.3 , 0 );
setEffMoveKey( spep_4 + 106, ctzuzuzun, 148.4, 108.5 , 0 );
setEffMoveKey( spep_4 + 108, ctzuzuzun, 148.7, 105.7 , 0 );
setEffMoveKey( spep_4 + 110, ctzuzuzun, 149, 102.9 , 0 );
setEffMoveKey( spep_4 + 112, ctzuzuzun, 149.3, 100.2 , 0 );
setEffMoveKey( spep_4 + 114, ctzuzuzun, 149.6, 97.6 , 0 );
setEffMoveKey( spep_4 + 116, ctzuzuzun, 149.8, 95 , 0 );
setEffMoveKey( spep_4 + 118, ctzuzuzun, 150.1, 92.4 , 0 );
setEffMoveKey( spep_4 + 120, ctzuzuzun, 150.4, 89.9 , 0 );
setEffMoveKey( spep_4 + 122, ctzuzuzun, 150.7, 87.5 , 0 );
setEffMoveKey( spep_4 + 124, ctzuzuzun, 150.9, 85.1 , 0 );
setEffMoveKey( spep_4 + 126, ctzuzuzun, 151.2, 82.7 , 0 );
setEffMoveKey( spep_4 + 128, ctzuzuzun, 151.4, 80.4 , 0 );
setEffMoveKey( spep_4 + 130, ctzuzuzun, 151.7, 78.2 , 0 );
setEffMoveKey( spep_4 + 132, ctzuzuzun, 151.9, 76 , 0 );
setEffMoveKey( spep_4 + 134, ctzuzuzun, 152.1, 73.8 , 0 );
setEffMoveKey( spep_4 + 136, ctzuzuzun, 152.4, 71.7 , 0 );
setEffMoveKey( spep_4 + 138, ctzuzuzun, 152.6, 69.7 , 0 );
setEffMoveKey( spep_4 + 140, ctzuzuzun, 152.8, 67.7 , 0 );
setEffMoveKey( spep_4 + 142, ctzuzuzun, 153, 65.7 , 0 );
setEffMoveKey( spep_4 + 144, ctzuzuzun, 153.2, 63.8 , 0 );
setEffMoveKey( spep_4 + 146, ctzuzuzun, 153.4, 62 , 0 );
setEffMoveKey( spep_4 + 148, ctzuzuzun, 153.6, 60.2 , 0 );
setEffMoveKey( spep_4 + 150, ctzuzuzun, 153.8, 58.4 , 0 );
setEffMoveKey( spep_4 + 152, ctzuzuzun, 154, 56.7 , 0 );
setEffMoveKey( spep_4 + 154, ctzuzuzun, 154.2, 55 , 0 );
setEffMoveKey( spep_4 + 156, ctzuzuzun, 154.4, 53.4 , 0 );
setEffMoveKey( spep_4 + 158, ctzuzuzun, 154.5, 51.9 , 0 );
setEffMoveKey( spep_4 + 160, ctzuzuzun, 154.7, 50.4 , 0 );
setEffMoveKey( spep_4 + 162, ctzuzuzun, 154.8, 48.9 , 0 );
setEffMoveKey( spep_4 + 164, ctzuzuzun, 155, 47.5 , 0 );
setEffMoveKey( spep_4 + 166, ctzuzuzun, 155.2, 46.1 , 0 );
setEffMoveKey( spep_4 + 168, ctzuzuzun, 155.3, 44.8 , 0 );
setEffMoveKey( spep_4 + 170, ctzuzuzun, 155.4, 42.6 , 0 );
setEffMoveKey( spep_4 + 172, ctzuzuzun, 155.6, 41.4 , 0 );
setEffMoveKey( spep_4 + 174, ctzuzuzun, 155.7, 40.1 , 0 );
setEffMoveKey( spep_4 + 176, ctzuzuzun, 155.8, 39.4 , 0 );
setEffMoveKey( spep_4 + 178, ctzuzuzun, 155.9, 39 , 0 );
setEffMoveKey( spep_4 + 180, ctzuzuzun, 156, 37 , 0 );
setEffMoveKey( spep_4 + 182, ctzuzuzun, 156.1, 36 , 0 );
setEffMoveKey( spep_4 + 184, ctzuzuzun, 156.2, 32.1 , 0 );
setEffMoveKey( spep_4 + 186, ctzuzuzun, 156.3, 31.3 , 0 );
setEffMoveKey( spep_4 + 188, ctzuzuzun, 156.4, 30.4 , 0 );
setEffMoveKey( spep_4 + 190, ctzuzuzun, 156.5, 29.7 , 0 );
setEffMoveKey( spep_4 + 192, ctzuzuzun, 156.6, 29 , 0 );
setEffMoveKey( spep_4 + 194, ctzuzuzun, 156.7, 29.3 , 0 );
setEffMoveKey( spep_4 + 196, ctzuzuzun, 156.7, 28.7 , 0 );
setEffMoveKey( spep_4 + 198, ctzuzuzun, 156.8, 28.1 , 0 );
setEffMoveKey( spep_4 + 200, ctzuzuzun, 156.8, 27.6 , 0 );
setEffMoveKey( spep_4 + 202, ctzuzuzun, 156.9, 27.1 , 0 );
setEffMoveKey( spep_4 + 204, ctzuzuzun, 156.9, 26.7 , 0 );
setEffMoveKey( spep_4 + 206, ctzuzuzun, 157, 26.3 , 0 );
setEffMoveKey( spep_4 + 208, ctzuzuzun, 157, 26 , 0 );
setEffMoveKey( spep_4 + 210, ctzuzuzun, 157, 25.7 , 0 );
setEffMoveKey( spep_4 + 212, ctzuzuzun, 157.1, 25.5 , 0 );
setEffMoveKey( spep_4 + 214, ctzuzuzun, 157.1, 25.3 , 0 );
setEffMoveKey( spep_4 + 216, ctzuzuzun, 157.1, 25.2 , 0 );
setEffMoveKey( spep_4 + 218, ctzuzuzun, 157.1, 25.1 , 0 );
setEffMoveKey( spep_4 + 270, ctzuzuzun, 157.1, 25.1 , 0 );

setEffScaleKey( spep_4 + 96, ctzuzuzun, 1.52, 1.52 );
setEffScaleKey( spep_4 + 97, ctzuzuzun, 1.52, 1.52 );
setEffScaleKey( spep_4 + 100, ctzuzuzun, 1.54, 1.54 );
setEffScaleKey( spep_4 + 102, ctzuzuzun, 1.55, 1.55 );
setEffScaleKey( spep_4 + 104, ctzuzuzun, 1.57, 1.57 );
setEffScaleKey( spep_4 + 106, ctzuzuzun, 1.58, 1.58 );
setEffScaleKey( spep_4 + 108, ctzuzuzun, 1.59, 1.59 );
setEffScaleKey( spep_4 + 110, ctzuzuzun, 1.61, 1.61 );
setEffScaleKey( spep_4 + 112, ctzuzuzun, 1.62, 1.62 );
setEffScaleKey( spep_4 + 114, ctzuzuzun, 1.63, 1.63 );
setEffScaleKey( spep_4 + 116, ctzuzuzun, 1.65, 1.65 );
setEffScaleKey( spep_4 + 118, ctzuzuzun, 1.66, 1.66 );
setEffScaleKey( spep_4 + 120, ctzuzuzun, 1.67, 1.67 );
setEffScaleKey( spep_4 + 122, ctzuzuzun, 1.68, 1.68 );
setEffScaleKey( spep_4 + 124, ctzuzuzun, 1.69, 1.69 );
setEffScaleKey( spep_4 + 126, ctzuzuzun, 1.71, 1.71 );
setEffScaleKey( spep_4 + 128, ctzuzuzun, 1.72, 1.72 );
setEffScaleKey( spep_4 + 130, ctzuzuzun, 1.73, 1.73 );
setEffScaleKey( spep_4 + 132, ctzuzuzun, 1.74, 1.74 );
setEffScaleKey( spep_4 + 134, ctzuzuzun, 1.75, 1.75 );
setEffScaleKey( spep_4 + 136, ctzuzuzun, 1.76, 1.76 );
setEffScaleKey( spep_4 + 138, ctzuzuzun, 1.77, 1.77 );
setEffScaleKey( spep_4 + 140, ctzuzuzun, 1.78, 1.78 );
setEffScaleKey( spep_4 + 142, ctzuzuzun, 1.79, 1.79 );
setEffScaleKey( spep_4 + 144, ctzuzuzun, 1.8, 1.8 );
setEffScaleKey( spep_4 + 146, ctzuzuzun, 1.81, 1.81 );
setEffScaleKey( spep_4 + 148, ctzuzuzun, 1.81, 1.81 );
setEffScaleKey( spep_4 + 150, ctzuzuzun, 1.82, 1.82 );
setEffScaleKey( spep_4 + 152, ctzuzuzun, 1.83, 1.83 );
setEffScaleKey( spep_4 + 154, ctzuzuzun, 1.84, 1.84 );
setEffScaleKey( spep_4 + 156, ctzuzuzun, 1.85, 1.85 );
setEffScaleKey( spep_4 + 158, ctzuzuzun, 1.85, 1.85 );
setEffScaleKey( spep_4 + 160, ctzuzuzun, 1.86, 1.86 );
setEffScaleKey( spep_4 + 162, ctzuzuzun, 1.87, 1.87 );
setEffScaleKey( spep_4 + 164, ctzuzuzun, 1.88, 1.88 );
setEffScaleKey( spep_4 + 166, ctzuzuzun, 1.88, 1.88 );
setEffScaleKey( spep_4 + 168, ctzuzuzun, 1.89, 1.89 );
setEffScaleKey( spep_4 + 170, ctzuzuzun, 1.9, 1.9 );
setEffScaleKey( spep_4 + 172, ctzuzuzun, 1.9, 1.9 );
setEffScaleKey( spep_4 + 174, ctzuzuzun, 1.91, 1.91 );
setEffScaleKey( spep_4 + 176, ctzuzuzun, 1.91, 1.91 );
setEffScaleKey( spep_4 + 178, ctzuzuzun, 1.92, 1.92 );
setEffScaleKey( spep_4 + 180, ctzuzuzun, 1.92, 1.92 );
setEffScaleKey( spep_4 + 182, ctzuzuzun, 1.93, 1.93 );
setEffScaleKey( spep_4 + 184, ctzuzuzun, 1.93, 1.93 );
setEffScaleKey( spep_4 + 186, ctzuzuzun, 1.94, 1.94 );
setEffScaleKey( spep_4 + 188, ctzuzuzun, 1.94, 1.94 );
setEffScaleKey( spep_4 + 190, ctzuzuzun, 1.95, 1.95 );
setEffScaleKey( spep_4 + 192, ctzuzuzun, 1.95, 1.95 );
setEffScaleKey( spep_4 + 194, ctzuzuzun, 1.96, 1.96 );
setEffScaleKey( spep_4 + 196, ctzuzuzun, 1.96, 1.96 );
setEffScaleKey( spep_4 + 198, ctzuzuzun, 1.97, 1.97 );
setEffScaleKey( spep_4 + 270, ctzuzuzun, 1.97, 1.97 );

setEffRotateKey( spep_4 + 96, ctzuzuzun, 0 );
setEffRotateKey( spep_4 + 97, ctzuzuzun, 0 );
setEffRotateKey( spep_4 + 270, ctzuzuzun, 0 );

setEffAlphaKey( spep_4 + 96, ctzuzuzun, 0 );
setEffAlphaKey( spep_4 + 97, ctzuzuzun, 255 );
setEffAlphaKey( spep_4 + 270, ctzuzuzun, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 48, 1, 0 );
setDisp( spep_4 + 49, 1, 1 );
setDisp( spep_4 + 50, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );
changeAnime( spep_4 + 49, 1, 106 );
changeAnime( spep_4 + 50, 1, 106 );

setMoveKey( spep_4 + 49, 1, 65.7, -26.7 , 0 );
setMoveKey( spep_4 + 50, 1, 65.7, -26.7 , 0 );
setMoveKey( spep_4 + 78, 1, 65.7, -26.7 , 0 );

setScaleKey( spep_4 + 49, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 78, 1, 1.49, 1.49 );

setRotateKey( spep_4 + 49, 1, 34.7 );
setRotateKey( spep_4 + 50, 1, 34.7 );
setRotateKey( spep_4 + 78, 1, 34.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 49, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_4 + 49, 0, 270, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 2, 1018 );  --足落ちる音
playSe( spep_4 + 71, 1023 );  --ズンッ
SE1=playSe( spep_4 + 97, 1044 );  --ズズズンッ
stopSe( spep_4 + 262,SE1,0);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 172 );
entryFade( spep_4 + 262, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 268 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 構え(150F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffectLife( spep_0 + 0, SP_01x, 148, 0, -1, 0, 0, 0 );  --構え(ef_001r)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 148, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, -1.0, 1.0 );
setEffScaleKey( spep_0 + 148, kamae, -1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 148, kamae, 255 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 148, kamae, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 33, 906, 20, 0x100, -1, 0, 0, 0 );  --カットイン集中線
setEffMoveKey( spep_0 + 33, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 53, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 33, shuchusen1, 1.71, 1.76 );
setEffScaleKey( spep_0 + 53, shuchusen1, 1.71, 1.76 );

setEffRotateKey( spep_0 + 33, shuchusen1, 0 );
setEffRotateKey( spep_0 + 36, shuchusen1, 180 );
setEffRotateKey( spep_0 + 38, shuchusen1, 0 );
setEffRotateKey( spep_0 + 40, shuchusen1, 180 );
setEffRotateKey( spep_0 + 42, shuchusen1, 0 );
setEffRotateKey( spep_0 + 44, shuchusen1, 180 );
setEffRotateKey( spep_0 + 46, shuchusen1, 0 );
setEffRotateKey( spep_0 + 48, shuchusen1, 180 );
setEffRotateKey( spep_0 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0 + 52, shuchusen1, 180 );
setEffRotateKey( spep_0 + 53, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 33, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 53, shuchusen1, 255 );


shuchusen2 = entryEffectLife( spep_0 + 120,  906, 26, 0x100, -1, 0, -200, 190.2 );  --拳振り上げ時集中線
setEffMoveKey( spep_0 + 120, shuchusen2, 200, 190.2 , 0 );
setEffMoveKey( spep_0 + 122, shuchusen2, 200, 196.5 , 0 );
setEffMoveKey( spep_0 + 124, shuchusen2, 200, 202.9 , 0 );
setEffMoveKey( spep_0 + 126, shuchusen2, 200, 209.2 , 0 );
setEffMoveKey( spep_0 + 128, shuchusen2, 200, 215.6 , 0 );
setEffMoveKey( spep_0 + 130, shuchusen2, 200, 222 , 0 );
setEffMoveKey( spep_0 + 146, shuchusen2, 200, 222 , 0 );

setEffScaleKey( spep_0 + 120, shuchusen2, 2.77, 2.83 );
setEffScaleKey( spep_0 + 122, shuchusen2, 2.54, 2.56 );
setEffScaleKey( spep_0 + 124, shuchusen2, 2.31, 2.29 );
setEffScaleKey( spep_0 + 126, shuchusen2, 2.08, 2.01 );
setEffScaleKey( spep_0 + 128, shuchusen2, 1.84, 1.74 );
setEffScaleKey( spep_0 + 130, shuchusen2, 1.61, 1.47 );
setEffScaleKey( spep_0 + 146, shuchusen2, 1.61, 1.47 );

setEffRotateKey( spep_0 + 120, shuchusen2, 180 );
setEffRotateKey( spep_0 + 122, shuchusen2, 0 );
setEffRotateKey( spep_0 + 124, shuchusen2, 180 );
setEffRotateKey( spep_0 + 126, shuchusen2, 0 );
setEffRotateKey( spep_0 + 128, shuchusen2, 180 );
setEffRotateKey( spep_0 + 130, shuchusen2, 0 );
setEffRotateKey( spep_0 + 132, shuchusen2, 180 );
setEffRotateKey( spep_0 + 134, shuchusen2, 0 );
setEffRotateKey( spep_0 + 136, shuchusen2, 180 );
setEffRotateKey( spep_0 + 138, shuchusen2, 0 );
setEffRotateKey( spep_0 + 140, shuchusen2, 180 );
setEffRotateKey( spep_0 + 142, shuchusen2, 0 );
setEffRotateKey( spep_0 + 144, shuchusen2, 180 );
setEffRotateKey( spep_0 + 145, shuchusen2, 0 );
setEffRotateKey( spep_0 + 146, shuchusen2, 180 );

setEffAlphaKey( spep_0 + 120, shuchusen2, 42 );
setEffAlphaKey( spep_0 + 122, shuchusen2, 83 );
setEffAlphaKey( spep_0 + 124, shuchusen2, 125 );
setEffAlphaKey( spep_0 + 126, shuchusen2, 167 );
setEffAlphaKey( spep_0 + 128, shuchusen2, 208 );
setEffAlphaKey( spep_0 + 130, shuchusen2, 250 );
setEffAlphaKey( spep_0 + 146, shuchusen2, 250 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 18, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 18, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--[[ctgogo0 = entryEffectLife( spep_0 + 29,  190006, 4, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
ctgogo1 = entryEffectLife( spep_0 + 33,  190006, 17, 0x100, -1, 0, -9.9, 521.8 );
setEffMoveKey( spep_0 + 29, ctgogo0, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 30, ctgogo0, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 32, ctgogo0, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 33, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 34, ctgogo1, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 36, ctgogo1, -8.5, 515.5 , 0 );
setEffMoveKey( spep_0 + 38, ctgogo1, -7.7, 521.8 , 0 );
setEffMoveKey( spep_0 + 40, ctgogo1, -3.2, 511.9 , 0 );
setEffMoveKey( spep_0 + 42, ctgogo1, -3.1, 521.8 , 0 );
setEffMoveKey( spep_0 + 44, ctgogo1, -0.8, 521.8 , 0 );
setEffMoveKey( spep_0 + 50, ctgogo1, -0.8, 521.8 , 0 );

setEffScaleKey( spep_0 + 29, ctgogo0, -0.7, 0.7 );
setEffScaleKey( spep_0 + 32, ctgogo0, -0.7, 0.7 );
setEffScaleKey( spep_0 + 33, ctgogo1, -0.7, 0.7 );
setEffScaleKey( spep_0 + 36, ctgogo1, -0.7, 0.7 );
setEffScaleKey( spep_0 + 38, ctgogo1, -0.7, 0.7 );
setEffScaleKey( spep_0 + 44, ctgogo1, -0.7, 0.7 );
setEffScaleKey( spep_0 + 45, ctgogo1, -1, 1 );
setEffScaleKey( spep_0 + 47, ctgogo1, -1.2, 1.2 );
setEffScaleKey( spep_0 + 49, ctgogo1, -1.3, 1.3 );
setEffScaleKey( spep_0 + 50, ctgogo1, -1.4, 1.4 );

setEffRotateKey( spep_0 + 29, ctgogo0, 0 );
setEffRotateKey( spep_0 + 32, ctgogo0, 0 );
setEffRotateKey( spep_0 + 33, ctgogo1, 0 );
setEffRotateKey( spep_0 + 50, ctgogo1, 0 );

setEffAlphaKey( spep_0 + 29, ctgogo0, 255 );
setEffAlphaKey( spep_0 + 32, ctgogo0, 255 );
setEffAlphaKey( spep_0 + 33, ctgogo1, 255 );
setEffAlphaKey( spep_0 + 43, ctgogo1, 255 );
setEffAlphaKey( spep_0 + 44, ctgogo1, 191 );
setEffAlphaKey( spep_0 + 46, ctgogo1, 128 );
setEffAlphaKey( spep_0 + 48, ctgogo1, 64 );
setEffAlphaKey( spep_0 + 50, ctgogo1, 0 );]]


ctba = entryEffectLife( spep_0 + 56,  10022, 24, 0x100, -1, 0, -112.8, 222.7 );  --バッ
setEffMoveKey( spep_0 + 56, ctba, 112.8, 222.7 , 0 );
setEffMoveKey( spep_0 + 57, ctba, 112.8, 222.7 , 0 );
setEffMoveKey( spep_0 + 62, ctba, 123.9, 256.4 , 0 );
setEffMoveKey( spep_0 + 64, ctba, 127.6, 267.7 , 0 );
setEffMoveKey( spep_0 + 66, ctba, 127.7, 268.1 , 0 );
setEffMoveKey( spep_0 + 68, ctba, 127.9, 268.5 , 0 );
setEffMoveKey( spep_0 + 70, ctba, 128, 268.9 , 0 );
setEffMoveKey( spep_0 + 72, ctba, 128.1, 269.2 , 0 );
setEffMoveKey( spep_0 + 74, ctba, 128.3, 269.6 , 0 );
setEffMoveKey( spep_0 + 76, ctba, 128.4, 270 , 0 );
setEffMoveKey( spep_0 + 78, ctba, 128.7, 271.1 , 0 );
setEffMoveKey( spep_0 + 80, ctba, 129.8, 274.2 , 0 );

setEffScaleKey( spep_0 + 56, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 57, ctba, 1.11, 1.11 );
setEffScaleKey( spep_0 + 62, ctba, 1.25, 1.25 );
setEffScaleKey( spep_0 + 64, ctba, 1.3, 1.3 );
setEffScaleKey( spep_0 + 68, ctba, 1.3, 1.3 );
setEffScaleKey( spep_0 + 76, ctba, 1.3, 1.3 );
setEffScaleKey( spep_0 + 78, ctba, 1.31, 1.31 );
setEffScaleKey( spep_0 + 78, ctba, 1.33, 1.33 );
setEffScaleKey( spep_0 + 80, ctba, 1.35, 1.35 );

setEffRotateKey( spep_0 + 56, ctba, -16 );
setEffRotateKey( spep_0 + 80, ctba, -16 );

setEffAlphaKey( spep_0 + 56, ctba, 0 );
setEffAlphaKey( spep_0 + 57, ctba, 255 );
setEffAlphaKey( spep_0 + 75, ctba, 255 );
setEffAlphaKey( spep_0 + 76, ctba, 227 );
setEffAlphaKey( spep_0 + 78, ctba, 142 );
setEffAlphaKey( spep_0 + 80, ctba, 0 );

ctzun1 = entryEffectLife( spep_0 + 94,  10016, 22, 0x80, -1, 0, -107.9, 377.2 );  --ズンッ
setEffMoveKey( spep_0 + 94, ctzun1, 107.9, 377.2 , 0 );
setEffMoveKey( spep_0 + 98, ctzun1, 114.1, 414.8 , 0 );
setEffMoveKey( spep_0 + 100, ctzun1, 117.8, 437.2 , 0 );
setEffMoveKey( spep_0 + 102, ctzun1, 119, 444.7 , 0 );
setEffMoveKey( spep_0 + 104, ctzun1, 119.8, 445.9 , 0 );
setEffMoveKey( spep_0 + 106, ctzun1, 120.6, 447.2 , 0 );
setEffMoveKey( spep_0 + 108, ctzun1, 121.4, 448.5 , 0 );
setEffMoveKey( spep_0 + 110, ctzun1, 122.2, 449.8 , 0 );
setEffMoveKey( spep_0 + 112, ctzun1, 123, 451.1 , 0 );
setEffMoveKey( spep_0 + 114, ctzun1, 125.8, 465.5 , 0 );
setEffMoveKey( spep_0 + 116, ctzun1, 128.5, 480 , 0 );

setEffScaleKey( spep_0 + 94, ctzun1, 1, 1 );
setEffScaleKey( spep_0 + 98, ctzun1, 1, 1 );
setEffScaleKey( spep_0 + 100, ctzun1, 2.77, 2.77 );
setEffScaleKey( spep_0 + 102, ctzun1, 2.99, 2.99 );
setEffScaleKey( spep_0 + 104, ctzun1, 3.01, 3.01 );
setEffScaleKey( spep_0 + 106, ctzun1, 3.02, 3.02 );
setEffScaleKey( spep_0 + 108, ctzun1, 3.04, 3.04 );
setEffScaleKey( spep_0 + 110, ctzun1, 3.05, 3.05 );
setEffScaleKey( spep_0 + 112, ctzun1, 3.07, 3.07 );
setEffScaleKey( spep_0 + 114, ctzun1, 3.25, 3.25 );
setEffScaleKey( spep_0 + 116, ctzun1, 3.44, 3.44 );

setEffRotateKey( spep_0 + 94, ctzun1, -14.8 );
setEffRotateKey( spep_0 + 116, ctzun1, -14.8 );

setEffAlphaKey( spep_0 + 94, ctzun1, 255 );
setEffAlphaKey( spep_0 + 112, ctzun1, 255 );
setEffAlphaKey( spep_0 + 114, ctzun1, 170 );
setEffAlphaKey( spep_0 + 116, ctzun1, 85 );

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 1, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 139, 5, 6, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_0 + 32, SE_04 ); --ゴゴゴ
playSe( spep_0 + 57, 1013 ); --バッ
playSe( spep_0 + 94, 1014 ); --ズンッ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 150;

------------------------------------------------------
-- パンチ(96F)
------------------------------------------------------

-- ** エフェクト等 ** --
panchi1 = entryEffectLife( spep_1 + 0, SP_02x, 96, 0x100, -1, 0, 0, 0 ); --パンチ手前(ef_002r)
setEffMoveKey( spep_1 + 0, panchi1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 96, panchi1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, panchi1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panchi1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panchi1, 0 );
setEffRotateKey( spep_1 + 96, panchi1, 0 );
setEffAlphaKey( spep_1 + 0, panchi1, 255 );
setEffAlphaKey( spep_1 + 95, panchi1, 255 );
setEffAlphaKey( spep_1 + 96, panchi1, 0 );

panchi2 = entryEffectLife( spep_1 + 0, SP_03, 96, 0x80, -1, 0, 0, 0 ); --パンチ奥(ef_003)
setEffScaleKey( spep_1 + 0, panchi2, 1.0, 1.0 );
setEffMoveKey( spep_1 + 96, panchi2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, panchi2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 96, panchi2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panchi2, 0 );
setEffRotateKey( spep_1 + 96, panchi2, 0 );
setEffAlphaKey( spep_1 + 0, panchi2, 255 );
setEffAlphaKey( spep_1 + 95, panchi2, 255 );
setEffAlphaKey( spep_1 + 96, panchi2, 0 );

-- ** 流線 斜め ** --
ryusen1 = entryEffectLife( spep_1 + 36,  921, 60, 0x80, -1, 0, -54.5, 15.5 );  --流線
setEffMoveKey( spep_1 + 36, ryusen1, -54.5, 15.5 , 0 );
setEffMoveKey( spep_1 + 37, ryusen1, -54.5, 15.5 , 0 );
setEffMoveKey( spep_1 + 96, ryusen1, -54.5, 15.5 , 0 );

setEffScaleKey( spep_1 + 36, ryusen1, 1.76, 1.52 );
setEffScaleKey( spep_1 + 37, ryusen1, 1.76, 1.52 );
setEffScaleKey( spep_1 + 96, ryusen1, 1.76, 1.52 );

setEffRotateKey( spep_1 + 36, ryusen1, 52.3 );
setEffRotateKey( spep_1 + 37, ryusen1, 52.3 );
setEffRotateKey( spep_1 + 96, ryusen1, 52.3 );

setEffAlphaKey( spep_1 + 36, ryusen1, 0 );
setEffAlphaKey( spep_1 + 37, ryusen1, 255 );
setEffAlphaKey( spep_1 + 38, ryusen1, 255 );
setEffAlphaKey( spep_1 + 96, ryusen1, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 + 36,  10020, 20, 0x100, -1, 0, 174.8, 339.3 );  --バキッ
setEffMoveKey( spep_1 + 36, ctbaki, 174.8, 339.3 , 0 );
setEffMoveKey( spep_1 + 37, ctbaki, 174.8, 339.3 , 0 );
setEffMoveKey( spep_1 + 40, ctbaki, 183.2, 361.1 , 0 );
setEffMoveKey( spep_1 + 42, ctbaki, 186.8, 363.9 , 0 );
setEffMoveKey( spep_1 + 44, ctbaki, 189.4, 377.4 , 0 );
setEffMoveKey( spep_1 + 46, ctbaki, 190.6, 375 , 0 );
setEffMoveKey( spep_1 + 48, ctbaki, 192.3, 392.8 , 0 );
setEffMoveKey( spep_1 + 50, ctbaki, 200.7, 388.9 , 0 );
setEffMoveKey( spep_1 + 52, ctbaki, 195.8, 391.5 , 0 );
setEffMoveKey( spep_1 + 54, ctbaki, 206, 396 , 0 );
setEffMoveKey( spep_1 + 56, ctbaki, 209.7, 396.3 , 0 );

setEffScaleKey( spep_1 + 36, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_1 + 37, ctbaki, 1.25, 1.25 );
setEffScaleKey( spep_1 + 42, ctbaki, 1.33, 1.33 );
setEffScaleKey( spep_1 + 44, ctbaki, 1.35, 1.35 );
setEffScaleKey( spep_1 + 46, ctbaki, 1.4, 1.4 );
setEffScaleKey( spep_1 + 48, ctbaki, 1.45, 1.45 );
setEffScaleKey( spep_1 + 50, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_1 + 52, ctbaki, 1.5, 1.5 );
setEffScaleKey( spep_1 + 54, ctbaki, 1.7, 1.7 );
setEffScaleKey( spep_1 + 56, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 + 36, ctbaki, 20.3 );
setEffRotateKey( spep_1 + 37, ctbaki, 20.3 );
setEffRotateKey( spep_1 + 56, ctbaki, 20.3 );

setEffAlphaKey( spep_1 + 36, ctbaki, 0 );
setEffAlphaKey( spep_1 + 37, ctbaki, 255 );
setEffAlphaKey( spep_1 + 38, ctbaki, 255 );
setEffAlphaKey( spep_1 + 52, ctbaki, 255 );
setEffAlphaKey( spep_1 + 54, ctbaki, 64 );
setEffAlphaKey( spep_1 + 56, ctbaki, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );  --立ち
setDisp( spep_1 + 93, 1, 0 );
changeAnime( spep_1 + 0, 1, 104 );
--changeAnime( spep_1 + 37, 1, 108 );
changeAnime( spep_1 + 38, 1, 108 );

setMoveKey( spep_1 + 0, 1, -22.5, 146.9 , 0 );
setMoveKey( spep_1 + 2, 1, -18, 135.6 , 0 );
setMoveKey( spep_1 + 4, 1, -14.2, 125.7 , 0 );
setMoveKey( spep_1 + 6, 1, -11, 117.1 , 0 );
setMoveKey( spep_1 + 8, 1, -8.2, 109.7 , 0 );
setMoveKey( spep_1 + 10, 1, -5.8, 103.3 , 0 );
setMoveKey( spep_1 + 12, 1, -3.7, 98.1 , 0 );
setMoveKey( spep_1 + 14, 1, -1.9, 93.8 , 0 );
setMoveKey( spep_1 + 16, 1, -0.3, 90.4 , 0 );
setMoveKey( spep_1 + 18, 1, 1.1, 88 , 0 );
setMoveKey( spep_1 + 20, 1, 2.4, 86.3 , 0 );
setMoveKey( spep_1 + 22, 1, 3.5, 85.2 , 0 );
setMoveKey( spep_1 + 24, 1, 4.5, 84.2 , 0 );
setMoveKey( spep_1 + 26, 1, 5.4, 83.3 , 0 );
setMoveKey( spep_1 + 28, 1, 6.1, 82.6 , 0 );
setMoveKey( spep_1 + 30, 1, 6.7, 82 , 0 );
setMoveKey( spep_1 + 32, 1, 7.2, 81.6 , 0 );
setMoveKey( spep_1 + 34, 1, 7.5, 81.2 , 0 );
setMoveKey( spep_1 + 36, 1, 7.7, 81 , 0 );
--setMoveKey( spep_1 + 37, 1, 10, 180.9 , 0 );  --当たる瞬間
setMoveKey( spep_1 + 38, 1, 10, 180.9 , 0 );  --当たる瞬間
setMoveKey( spep_1 + 39, 1, 103.5, 60.7 , 0 );
setMoveKey( spep_1 + 43, 1, 104.6, 50.3 , 0 );
setMoveKey( spep_1 + 45, 1, 104.8, 36.5 , 0 );
setMoveKey( spep_1 + 48, 1, 107.6, 33.5 , 0 );
setMoveKey( spep_1 + 50, 1, 110.7, -0.5 , 0 );
setMoveKey( spep_1 + 52, 1, 124.7, -9.8 , 0 );
setMoveKey( spep_1 + 54, 1, 130.8, -15.1 , 0 );
setMoveKey( spep_1 + 58, 1, 132.8, -23.2 , 0 );
setMoveKey( spep_1 + 60, 1, 135.5, -27.5 , 0 );
setMoveKey( spep_1 + 62, 1, 137.6, -31 , 0 );
setMoveKey( spep_1 + 66, 1, 152.4, -54 , 0 );
setMoveKey( spep_1 + 70, 1, 154.3, -57.6 , 0 );
setMoveKey( spep_1 + 74, 1, 153, -55.9 , 0 );
setMoveKey( spep_1 + 82, 1, 205.4, -161 , 0 );
setMoveKey( spep_1 + 84, 1, 251.5, -253.9 , 0 );
setMoveKey( spep_1 + 86, 1, 295.1, -340.8 , 0 );
setMoveKey( spep_1 + 88, 1, 336.9, -423.4 , 0 );
setMoveKey( spep_1 + 90, 1, 377.7, -503.4 , 0 );
setMoveKey( spep_1 + 93, 1, 418.4, -582.1 , 0 );
setMoveKey( spep_1 + 96, 1, 420, -585 , 0 );

setScaleKey( spep_1 + 0, 1, 2.37, 2.37 );  --立ち
setScaleKey( spep_1 + 2, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 4, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 6, 1, 2.03, 2.03 );
setScaleKey( spep_1 + 8, 1, 1.94, 1.94 );
setScaleKey( spep_1 + 10, 1, 1.87, 1.87 );
setScaleKey( spep_1 + 12, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 14, 1, 1.76, 1.76 );
setScaleKey( spep_1 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_1 + 18, 1, 1.7, 1.7 );
setScaleKey( spep_1 + 36, 1, 1.7, 1.7 );
--setScaleKey( spep_1 + 37, 1, 2.36, 2.36 );  --当たる瞬間
setScaleKey( spep_1 + 38, 1, 2.36, 2.36 );  --当たる瞬間
setScaleKey( spep_1 + 40, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 42, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 44, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 46, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 48, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 50, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 54, 1, 2.12, 2.12 );
setScaleKey( spep_1 + 56, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 64, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 66, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 80, 1, 2.09, 2.09 );
setScaleKey( spep_1 + 82, 1, 1.74, 1.74 );
setScaleKey( spep_1 + 84, 1, 1.41, 1.41 );
setScaleKey( spep_1 + 86, 1, 1.11, 1.11 );
setScaleKey( spep_1 + 88, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 90, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 93, 1, 0.20, 0.20 );
setScaleKey( spep_1 + 96, 1, 0.20, 0.20 );

setRotateKey( spep_1 + 0, 1, 18.2 );  --立ち
setRotateKey( spep_1 + 4, 1, 18.2 );
setRotateKey( spep_1 + 6, 1, 18.1 );
setRotateKey( spep_1 + 36, 1, 18.1 );
--setRotateKey( spep_1 + 37, 1, 30.9 );  --当たる瞬間
setRotateKey( spep_1 + 38, 1, 30.9 );  --当たる瞬間
setRotateKey( spep_1 + 39, 1, 30.9);
setRotateKey( spep_1 + 40, 1, 30.9 );
setRotateKey( spep_1 + 42, 1, 30.9 );
setRotateKey( spep_1 + 44, 1, 30.8 );
setRotateKey( spep_1 + 50, 1, 30.9 );
setRotateKey( spep_1 + 84, 1, 30.9 );
setRotateKey( spep_1 + 86, 1, 30.9 );
setRotateKey( spep_1 + 93, 1, 30.9 );
setRotateKey( spep_1 + 96, 1, 30.9 );

-- ** 黒背景 ** --
entryFadeBg(spep_1 + 0, 0, 96, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_1 + 40, 1010 );  --バキッ
playSe( spep_1 + 46, 1011 );  --バキッ

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 1, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 96;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = 178; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
setEffAlphaKey( SP_dodge, kaihi, 255);

pauseAll( SP_dodge, 67 );

entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );

endPhase( SP_dodge + 10 );

do return end
else end

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen3, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 2, shuchusen3, 180 );
setEffRotateKey( spep_2 + 4, shuchusen3, 0 );
setEffRotateKey( spep_2 + 6, shuchusen3, 180 );
setEffRotateKey( spep_2 + 8, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 180 );
setEffRotateKey( spep_2 + 20, shuchusen3, 0 );
setEffRotateKey( spep_2 + 22, shuchusen3, 180 );
setEffRotateKey( spep_2 + 24, shuchusen3, 0 );
setEffRotateKey( spep_2 + 26, shuchusen3, 180 );
setEffRotateKey( spep_2 + 28, shuchusen3, 0 );
setEffRotateKey( spep_2 + 30, shuchusen3, 180 );
setEffRotateKey( spep_2 + 32, shuchusen3, 0 );
setEffRotateKey( spep_2 + 34, shuchusen3, 180 );
setEffRotateKey( spep_2 + 36, shuchusen3, 0 );
setEffRotateKey( spep_2 + 38, shuchusen3, 180 );
setEffRotateKey( spep_2 + 40, shuchusen3, 0 );
setEffRotateKey( spep_2 + 42, shuchusen3, 180 );
setEffRotateKey( spep_2 + 44, shuchusen3, 0 );
setEffRotateKey( spep_2 + 46, shuchusen3, 180 );
setEffRotateKey( spep_2 + 48, shuchusen3, 0 );
setEffRotateKey( spep_2 + 50, shuchusen3, 180 );
setEffRotateKey( spep_2 + 52, shuchusen3, 0 );
setEffRotateKey( spep_2 + 54, shuchusen3, 180 );
setEffRotateKey( spep_2 + 56, shuchusen3, 0 );
setEffRotateKey( spep_2 + 58, shuchusen3, 180 );
setEffRotateKey( spep_2 + 60, shuchusen3, 0 );
setEffRotateKey( spep_2 + 62, shuchusen3, 180 );
setEffRotateKey( spep_2 + 64, shuchusen3, 0 );
setEffRotateKey( spep_2 + 66, shuchusen3, 0 );
setEffRotateKey( spep_2 + 68, shuchusen3, 180 );
setEffRotateKey( spep_2 + 70, shuchusen3, 0 );
setEffRotateKey( spep_2 + 72, shuchusen3, 180 );
setEffRotateKey( spep_2 + 74, shuchusen3, 0 );
setEffRotateKey( spep_2 + 76, shuchusen3, 180 );
setEffRotateKey( spep_2 + 78, shuchusen3, 0 );
setEffRotateKey( spep_2 + 80, shuchusen3, 180 );
setEffRotateKey( spep_2 + 82, shuchusen3, 0 );
setEffRotateKey( spep_2 + 84, shuchusen3, 180 );
setEffRotateKey( spep_2 + 86, shuchusen3, 0 );
setEffRotateKey( spep_2 + 88, shuchusen3, 180 );
setEffRotateKey( spep_2 + 90, shuchusen3, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;
entryFade( spep_3 - 6, 3, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

------------------------------------------------------
-- 吹っ飛び(97F)
------------------------------------------------------

-- ** エフェクト等 ** --
futtobi1 = entryEffectLife( spep_3 + 2, SP_06, 118, 0x100, -1, 0, 0, 0 ); --吹っ飛び手前(ef_006)
setEffMoveKey( spep_3 + 2, futtobi1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 3, futtobi1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, futtobi1, 0, 0 , 0 );
setEffScaleKey( spep_3 + 2, futtobi1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 3, futtobi1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, futtobi1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 2, futtobi1, 0 );
setEffRotateKey( spep_3 + 3, futtobi1, 0 );
setEffRotateKey( spep_3 + 120, futtobi1, 0 );
setEffAlphaKey( spep_3 + 2, futtobi1, 0 );
setEffAlphaKey( spep_3 + 3, futtobi1, 255 );
setEffAlphaKey( spep_3 + 120, futtobi1, 255 );

futtobi2 = entryEffectLife( spep_3 + 2, SP_07, 118, 0x80, -1, 0, 0, 0 ); --吹っ飛び奥(ef_007)
setEffScaleKey( spep_3 + 2, futtobi2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 3, futtobi2, 1.0, 1.0 );
setEffMoveKey( spep_3 + 120, futtobi2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 2, futtobi2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 3, futtobi2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, futtobi2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 2, futtobi2, 0 );
setEffRotateKey( spep_3 + 3, futtobi2, 0 );
setEffRotateKey( spep_3 + 120, futtobi2, 0 );
setEffAlphaKey( spep_3 + 2, futtobi2, 0 );
setEffAlphaKey( spep_3 + 3, futtobi2, 255 );
setEffAlphaKey( spep_3 + 120, futtobi2, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 98, 0x100, -1, 0, 172, -363 );  --集中線
setEffMoveKey( spep_3 + 0, shuchusen4, 172, -363 , 0 );
setEffMoveKey( spep_3 + 49, shuchusen4, 72, -83.9 , 0 );
setEffMoveKey( spep_3 + 97, shuchusen4, 72, -83.9 , 0 );
setEffMoveKey( spep_3 + 98, shuchusen4, 72, -83.9 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.71, 1.81 );
setEffScaleKey( spep_3 + 49, shuchusen4, 1.71, 1.81 );
setEffScaleKey( spep_3 + 69, shuchusen4, 1.29, 1.16 );
setEffScaleKey( spep_3 + 97, shuchusen4, 1.29, 1.16 );
setEffScaleKey( spep_3 + 98, shuchusen4, 1.29, 1.16 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 1, shuchusen4, 180 );
setEffRotateKey( spep_3 + 3, shuchusen4, 0 );
setEffRotateKey( spep_3 + 5, shuchusen4, 180 );
setEffRotateKey( spep_3 + 7, shuchusen4, 0 );
setEffRotateKey( spep_3 + 9, shuchusen4, 180 );
setEffRotateKey( spep_3 + 11, shuchusen4, 0 );
setEffRotateKey( spep_3 + 13, shuchusen4, 180 );
setEffRotateKey( spep_3 + 15, shuchusen4, 0 );
setEffRotateKey( spep_3 + 17, shuchusen4, 180 );
setEffRotateKey( spep_3 + 19, shuchusen4, 0 );
setEffRotateKey( spep_3 + 21, shuchusen4, 180 );
setEffRotateKey( spep_3 + 23, shuchusen4, 0 );
setEffRotateKey( spep_3 + 25, shuchusen4, 180 );
setEffRotateKey( spep_3 + 27, shuchusen4, 0 );
setEffRotateKey( spep_3 + 29, shuchusen4, 180 );
setEffRotateKey( spep_3 + 31, shuchusen4, 0 );
setEffRotateKey( spep_3 + 33, shuchusen4, 180 );
setEffRotateKey( spep_3 + 35, shuchusen4, 0 );
setEffRotateKey( spep_3 + 37, shuchusen4, 180 );
setEffRotateKey( spep_3 + 39, shuchusen4, 0 );
setEffRotateKey( spep_3 + 41, shuchusen4, 180 );
setEffRotateKey( spep_3 + 43, shuchusen4, 0 );
setEffRotateKey( spep_3 + 45, shuchusen4, 180 );
setEffRotateKey( spep_3 + 47, shuchusen4, 0 );
setEffRotateKey( spep_3 + 49, shuchusen4, 0 );
setEffRotateKey( spep_3 + 51, shuchusen4, 180 );
setEffRotateKey( spep_3 + 53, shuchusen4, 0 );
setEffRotateKey( spep_3 + 55, shuchusen4, 180 );
setEffRotateKey( spep_3 + 57, shuchusen4, 0 );
setEffRotateKey( spep_3 + 60, shuchusen4, 180 );
setEffRotateKey( spep_3 + 61, shuchusen4, 0 );
setEffRotateKey( spep_3 + 63, shuchusen4, 180 );
setEffRotateKey( spep_3 + 65, shuchusen4, 0 );
setEffRotateKey( spep_3 + 67, shuchusen4, 0 );
setEffRotateKey( spep_3 + 69, shuchusen4, 180 );
setEffRotateKey( spep_3 + 71, shuchusen4, 0 );
setEffRotateKey( spep_3 + 73, shuchusen4, 180 );
setEffRotateKey( spep_3 + 75, shuchusen4, 0 );
setEffRotateKey( spep_3 + 77, shuchusen4, 180 );
setEffRotateKey( spep_3 + 79, shuchusen4, 0 );
setEffRotateKey( spep_3 + 81, shuchusen4, 180 );
setEffRotateKey( spep_3 + 83, shuchusen4, 0 );
setEffRotateKey( spep_3 + 85, shuchusen4, 180 );
setEffRotateKey( spep_3 + 87, shuchusen4, 0 );
setEffRotateKey( spep_3 + 89, shuchusen4, 180 );
setEffRotateKey( spep_3 + 91, shuchusen4, 0 );
setEffRotateKey( spep_3 + 93, shuchusen4, 180 );
setEffRotateKey( spep_3 + 95, shuchusen4, 0 );
setEffRotateKey( spep_3 + 97, shuchusen4, 180 );
setEffRotateKey( spep_3 + 98, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 97, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 98, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_3 + 42,  10018, 38, 0x100, -1, 0, 6.8, 157.8 );  --ドゴォンッ
setEffMoveKey( spep_3 + 42, ctdogon, 6.8, 157.8 , 0 );
setEffMoveKey( spep_3 + 47, ctdogon, 8.1, 225.9 , 0 );
setEffMoveKey( spep_3 + 59, ctdogon, 12.7, 255.5 , 0 );
setEffMoveKey( spep_3 + 51, ctdogon, 9.2, 261.2 , 0 );
setEffMoveKey( spep_3 + 53, ctdogon, 12.8, 281.4 , 0 );
setEffMoveKey( spep_3 + 55, ctdogon, 13.9, 283.4 , 0 );
setEffMoveKey( spep_3 + 57, ctdogon, 7.9, 296.5 , 0 );
setEffMoveKey( spep_3 + 59, ctdogon, 17, 303.7 , 0 );
setEffMoveKey( spep_3 + 61, ctdogon, 8.5, 307.9 , 0 );
setEffMoveKey( spep_3 + 63, ctdogon, 12.1, 317.9 , 0 );
setEffMoveKey( spep_3 + 65, ctdogon, 8.3, 317.6 , 0 );
setEffMoveKey( spep_3 + 67, ctdogon, 12.3, 333.4 , 0 );
setEffMoveKey( spep_3 + 69, ctdogon, 13.5, 329.2 , 0 );
setEffMoveKey( spep_3 + 71, ctdogon, 7.2, 337.2 , 0 );
setEffMoveKey( spep_3 + 73, ctdogon, 16.9, 338.9 , 0 );
setEffMoveKey( spep_3 + 75, ctdogon, 8, 337.6 , 0 );
setEffMoveKey( spep_3 + 77, ctdogon, 11.8, 342.3 , 0 );
setEffMoveKey( spep_3 + 79, ctdogon, 11.8, 342.7 , 0 );
setEffMoveKey( spep_3 + 80, ctdogon, 11.8, 342.7 , 0 );

setEffScaleKey( spep_3 + 42, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_3 + 47, ctdogon, 3.2, 3.2 );
setEffScaleKey( spep_3 + 49, ctdogon, 3.39, 3.39 );
setEffScaleKey( spep_3 + 51, ctdogon, 3.45, 3.45 );
setEffScaleKey( spep_3 + 53, ctdogon, 3.51, 3.51 );
setEffScaleKey( spep_3 + 55, ctdogon, 3.57, 3.57 );
setEffScaleKey( spep_3 + 57, ctdogon, 3.62, 3.62 );
setEffScaleKey( spep_3 + 59, ctdogon, 3.67, 3.67 );
setEffScaleKey( spep_3 + 61, ctdogon, 3.71, 3.71 );
setEffScaleKey( spep_3 + 63, ctdogon, 3.75, 3.75 );
setEffScaleKey( spep_3 + 65, ctdogon, 3.78, 3.78 );
setEffScaleKey( spep_3 + 67, ctdogon, 3.81, 3.81 );
setEffScaleKey( spep_3 + 69, ctdogon, 3.83, 3.83 );
setEffScaleKey( spep_3 + 71, ctdogon, 3.85, 3.85 );
setEffScaleKey( spep_3 + 73, ctdogon, 3.87, 3.87 );
setEffScaleKey( spep_3 + 75, ctdogon, 3.88, 3.88 );
setEffScaleKey( spep_3 + 77, ctdogon, 3.89, 3.89 );
setEffScaleKey( spep_3 + 79, ctdogon, 3.89, 3.89 );
setEffScaleKey( spep_3 + 80, ctdogon, 3.89, 3.89 );

setEffRotateKey( spep_3 + 42, ctdogon, -0.9 );
setEffRotateKey( spep_3 + 79, ctdogon, -0.9 );
setEffRotateKey( spep_3 + 80, ctdogon, -0.9 );

setEffAlphaKey( spep_3 + 42, ctdogon, 255 );
setEffAlphaKey( spep_3 + 79, ctdogon, 255 );
setEffAlphaKey( spep_3 + 80, ctdogon, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 4, 1, 1 );  --落ちてくる
setDisp( spep_3 + 42, 1, 0 );
setDisp( spep_3 + 79, 1, 1 );  --埋まってる
setDisp( spep_3 + 80, 1, 1 );
setDisp( spep_3 + 119, 1, 0 );
setDisp( spep_3 + 120, 1, 0 );
changeAnime( spep_3 + 4, 1, 108 );

setMoveKey( spep_3 + 4, 1, -391.2, 952.8 , 0 );  --落ちてくる
setMoveKey( spep_3 + 6, 1, -379.3, 929.8 , 0 );
setMoveKey( spep_3 + 9, 1, -366, 903.9 , 0 );
setMoveKey( spep_3 + 10, 1, -351.1, 875.2 , 0 );
setMoveKey( spep_3 + 12, 1, -334.9, 843.7 , 0 );
setMoveKey( spep_3 + 14, 1, -317.2, 809.4 , 0 );
setMoveKey( spep_3 + 16, 1, -298.3, 772.6 , 0 );
setMoveKey( spep_3 + 18, 1, -278.1, 733.2 , 0 );
setMoveKey( spep_3 + 20, 1, -256.7, 691.5 , 0 );
setMoveKey( spep_3 + 22, 1, -234.1, 647.4 , 0 );
setMoveKey( spep_3 + 24, 1, -210.5, 601.1 , 0 );
setMoveKey( spep_3 + 26, 1, -185.8, 552.7 , 0 );
setMoveKey( spep_3 + 28, 1, -160.2, 502.3 , 0 );
setMoveKey( spep_3 + 30, 1, -133.8, 450.1 , 0 );
setMoveKey( spep_3 + 32, 1, -107.6, 396.3 , 0 );
setMoveKey( spep_3 + 34, 1, -79.7, 340.8 , 0 );
setMoveKey( spep_3 + 36, 1, -51.1, 284.1 , 0 );
setMoveKey( spep_3 + 38, 1, -22.1, 226.1 , 0 );
setMoveKey( spep_3 + 40, 1, 35.3, 93.1 , 0 );
setMoveKey( spep_3 + 41, 1, 39.3, 85 , 0 );
setMoveKey( spep_3 + 42, 1, 44.3, 83 , 0 );

--[[
setMoveKey( spep_3 + 79, 1, 40.2, 46 , 0 );  --埋まってる
setMoveKey( spep_3 + 90, 1, 40.2, 45 , 0 );
setMoveKey( spep_3 + 94, 1, 40.2, 42 , 0 );
setMoveKey( spep_3 + 98, 1, 40.2, 40 , 0 );
setMoveKey( spep_3 + 102, 1, 40.2, 38 , 0 );
setMoveKey( spep_3 + 110, 1, 40.2, 36 , 0 );
setMoveKey( spep_3 + 114, 1, 40.2, 34 , 0 );
setMoveKey( spep_3 + 119, 1, 40.2, 32 , 0 );
setMoveKey( spep_3 + 120, 1, 40.2, 32 , 0 );
]]

--位置を調整しました
setMoveKey( spep_3+79, 1, 52.9, 54.8 , 0 );
setMoveKey( spep_3+80, 1, 52.9, 54.8 , 0 );
setMoveKey( spep_3+82, 1, 52.8, 54.6 , 0 );
setMoveKey( spep_3+84, 1, 52.6, 54.3 , 0 );
setMoveKey( spep_3+86, 1, 52.4, 53.8 , 0 );
setMoveKey( spep_3+88, 1, 52.1, 53.2 , 0 );
setMoveKey( spep_3+90, 1, 51.7, 52.4 , 0 );
setMoveKey( spep_3+92, 1, 51.3, 51.5 , 0 );
setMoveKey( spep_3+94, 1, 50.7, 50.3 , 0 );
setMoveKey( spep_3+96, 1, 50, 48.9 , 0 );
setMoveKey( spep_3+98, 1, 49.2, 47.2 , 0 );
setMoveKey( spep_3+100, 1, 48.3, 45.2 , 0 );
setMoveKey( spep_3+102, 1, 47.2, 43 , 0 );
setMoveKey( spep_3+120, 1, 42, 32 , 0 );


setScaleKey( spep_3 + 4, 1, 6.30, 6.30 );  --落ちてくる
setScaleKey( spep_3 + 6, 1, 6.21, 6.21 );
setScaleKey( spep_3 + 8, 1, 5.89, 5.89 );
setScaleKey( spep_3 + 10, 1, 5.21, 5.21 );
setScaleKey( spep_3 + 12, 1, 5.07, 5.07 );
setScaleKey( spep_3 + 14, 1, 4.98, 4.98 );
setScaleKey( spep_3 + 16, 1, 4.63, 4.63 );
setScaleKey( spep_3 + 18, 1, 4.47, 4.45 );
setScaleKey( spep_3 + 20, 1, 4.28, 4.28 );
setScaleKey( spep_3 + 22, 1, 4.11, 4.11 );
setScaleKey( spep_3 + 24, 1, 3.82, 3.81 );
setScaleKey( spep_3 + 26, 1, 3.50, 3.50 );
setScaleKey( spep_3 + 28, 1, 3.36, 3.35 );
setScaleKey( spep_3 + 30, 1, 3.06, 3.07 );
setScaleKey( spep_3 + 32, 1, 2.87, 2.81 );
setScaleKey( spep_3 + 34, 1, 2.57, 2.54 );
setScaleKey( spep_3 + 36, 1, 2.27, 2.27 );
setScaleKey( spep_3 + 38, 1, 2.12, 2.12 );
setScaleKey( spep_3 + 40, 1, 2.10, 2.10 );
setScaleKey( spep_3 + 42, 1, 1.70, 1.27 );

--[[
setScaleKey( spep_3 + 79, 1, 2.04, 2.04 );  --埋まってる
setScaleKey( spep_3 + 81, 1, 2.00, 2.00 );
setScaleKey( spep_3 + 85, 1, 1.97, 1.97 );
setScaleKey( spep_3 + 87, 1, 1.90, 1.90 );
setScaleKey( spep_3 + 89, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 91, 1, 1.78, 1.78 );
setScaleKey( spep_3 + 93, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 95, 1, 1.73, 1.73 );
setScaleKey( spep_3 + 99, 1, 1.70, 1.70 );
setScaleKey( spep_3 + 110, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 114, 1, 1.60, 1.60 );
setScaleKey( spep_3 + 119, 1, 1.60, 1.60 );
setScaleKey( spep_3 + 120, 1, 1.56, 1.56 );
]]

--大きさを調整しました
setScaleKey( spep_3+79, 1, 1.95, 1.95 );
setScaleKey( spep_3+80, 1, 1.95, 1.95 );
setScaleKey( spep_3+84, 1, 1.95, 1.95 );
setScaleKey( spep_3+86, 1, 1.94, 1.94 );
setScaleKey( spep_3+88, 1, 1.94, 1.94 );
setScaleKey( spep_3+90, 1, 1.93, 1.93 );
setScaleKey( spep_3+92, 1, 1.91, 1.91 );
setScaleKey( spep_3+94, 1, 1.9, 1.9 );
setScaleKey( spep_3+96, 1, 1.88, 1.88 );
setScaleKey( spep_3+98, 1, 1.86, 1.86 );
setScaleKey( spep_3+100, 1, 1.84, 1.84 );
setScaleKey( spep_3+102, 1, 1.81, 1.81 );
setScaleKey( spep_3+120, 1, 1.71, 1.71 );


setRotateKey( spep_3 + 4, 1, 63.5 );  --落ちてくる
setRotateKey( spep_3 + 42, 1, 63.5 );
setRotateKey( spep_3 + 79, 1, 28.7 );  --埋まってる
setRotateKey( spep_3 + 80, 1, 28.7 );
setRotateKey( spep_3 + 119, 1, 28.7 );
setRotateKey( spep_3 + 120, 1, 28.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_3 + 42, 1014 );  --ドゴォンッ

-- ** ホワイトフェード ** --
entryFade( spep_3 + 68, 10, 3, 9, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 114, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 122;

------------------------------------------------------
-- 踏みつけ(270F)
------------------------------------------------------

-- ** エフェクト等 ** --
fumituke1 = entryEffect( spep_4 + 2, SP_04x, 0x100, -1, 0, 0, 0 ); --踏みつけ手前(ef_004r)
setEffMoveKey( spep_4 + 2, fumituke1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 268, fumituke1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 2, fumituke1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 268, fumituke1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 2, fumituke1, 0 );
setEffRotateKey( spep_4 + 268, fumituke1, 0 );
setEffAlphaKey( spep_4 + 2, fumituke1, 255 );
--setEffAlphaKey( spep_4 + 266, fumituke1, 255 );
--setEffAlphaKey( spep_4 + 267, fumituke1, 255 );
setEffAlphaKey( spep_4 + 268, fumituke1, 255 );

fumituke2 = entryEffect( spep_4+3 , SP_05, 0x80, -1, 0, 0, 0 ); --踏みつけ奥(ef_005)
setEffMoveKey( spep_4+3 , fumituke2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 268, fumituke2, 0, 0 , 0 );
setEffScaleKey( spep_4+3 , fumituke2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 268, fumituke2, 1.0, 1.0 );
setEffRotateKey( spep_4+3 , fumituke2, 0 );
setEffRotateKey( spep_4 + 268, fumituke2, 0 );
--setEffAlphaKey( spep_4+2 , fumituke2, 0 );
--setEffAlphaKey( spep_4+12 , fumituke2, 0 );
setEffAlphaKey( spep_4+4 , fumituke2, 255 );
--setEffAlphaKey( spep_4+14 , fumituke2, 255 );
setEffAlphaKey( spep_4 + 268, fumituke2, 255 );

-- ** 集中線 ** --
shuchusen5 = entryEffectLife( spep_4 + 96,  906, 174, 0x100, -1, 0, 120, -44.2 );  --集中線
setEffMoveKey( spep_4 + 96, shuchusen5, 120, -44.2 , 0 );
setEffMoveKey( spep_4 + 97, shuchusen5, 120, -44.2 , 0 );
setEffMoveKey( spep_4 + 218, shuchusen5, 197.8, -187.2 , 0 );
setEffMoveKey( spep_4 + 270, shuchusen5, 197.8, -188.3 , 0 );

setEffScaleKey( spep_4 + 96, shuchusen5, 1.16, 1.18 );
setEffScaleKey( spep_4 + 97, shuchusen5, 1.16, 1.18 );
setEffScaleKey( spep_4 + 102, shuchusen5, 1.25, 1.24 );
setEffScaleKey( spep_4 + 104, shuchusen5, 1.29, 1.27 );
setEffScaleKey( spep_4 + 106, shuchusen5, 1.31, 1.29 );
setEffScaleKey( spep_4 + 108, shuchusen5, 1.33, 1.3 );
setEffScaleKey( spep_4 + 110, shuchusen5, 1.35, 1.31 );
setEffScaleKey( spep_4 + 112, shuchusen5, 1.36, 1.32 );
setEffScaleKey( spep_4 + 114, shuchusen5, 1.37, 1.33 );
setEffScaleKey( spep_4 + 116, shuchusen5, 1.38, 1.34 );
setEffScaleKey( spep_4 + 118, shuchusen5, 1.39, 1.34 );
setEffScaleKey( spep_4 + 120, shuchusen5, 1.4, 1.35 );
setEffScaleKey( spep_4 + 122, shuchusen5, 1.41, 1.36 );
setEffScaleKey( spep_4 + 124, shuchusen5, 1.42, 1.36 );
setEffScaleKey( spep_4 + 126, shuchusen5, 1.43, 1.37 );
setEffScaleKey( spep_4 + 128, shuchusen5, 1.43, 1.37 );
setEffScaleKey( spep_4 + 130, shuchusen5, 1.44, 1.38 );
setEffScaleKey( spep_4 + 132, shuchusen5, 1.44, 1.38 );
setEffScaleKey( spep_4 + 134, shuchusen5, 1.45, 1.38 );
setEffScaleKey( spep_4 + 136, shuchusen5, 1.45, 1.39 );
setEffScaleKey( spep_4 + 138, shuchusen5, 1.46, 1.39 );
setEffScaleKey( spep_4 + 140, shuchusen5, 1.46, 1.39 );
setEffScaleKey( spep_4 + 142, shuchusen5, 1.47, 1.4 );
setEffScaleKey( spep_4 + 144, shuchusen5, 1.47, 1.4 );
setEffScaleKey( spep_4 + 146, shuchusen5, 1.48, 1.4 );
setEffScaleKey( spep_4 + 148, shuchusen5, 1.48, 1.41 );
setEffScaleKey( spep_4 + 150, shuchusen5, 1.48, 1.41 );
setEffScaleKey( spep_4 + 152, shuchusen5, 1.49, 1.41 );
setEffScaleKey( spep_4 + 158, shuchusen5, 1.49, 1.41 );
setEffScaleKey( spep_4 + 162, shuchusen5, 1.5, 1.42 );
setEffScaleKey( spep_4 + 172, shuchusen5, 1.5, 1.42 );
setEffScaleKey( spep_4 + 174, shuchusen5, 1.51, 1.42 );
setEffScaleKey( spep_4 + 178, shuchusen5, 1.51, 1.42 );
setEffScaleKey( spep_4 + 180, shuchusen5, 1.51, 1.43 );
setEffScaleKey( spep_4 + 194, shuchusen5, 1.51, 1.43 );
setEffScaleKey( spep_4 + 196, shuchusen5, 1.52, 1.43 );
setEffScaleKey( spep_4 + 270, shuchusen5, 1.52, 1.43 );

setEffRotateKey( spep_4 + 96, shuchusen5, 0 );
setEffRotateKey( spep_4 + 97, shuchusen5, 0 );
setEffRotateKey( spep_4 + 102, shuchusen5, 180 );
setEffRotateKey( spep_4 + 104, shuchusen5, 0 );
setEffRotateKey( spep_4 + 106, shuchusen5, 180 );
setEffRotateKey( spep_4 + 108, shuchusen5, 0 );
setEffRotateKey( spep_4 + 110, shuchusen5, 180 );
setEffRotateKey( spep_4 + 112, shuchusen5, 0 );
setEffRotateKey( spep_4 + 114, shuchusen5, 180 );
setEffRotateKey( spep_4 + 116, shuchusen5, 0 );
setEffRotateKey( spep_4 + 118, shuchusen5, 180 );
setEffRotateKey( spep_4 + 120, shuchusen5, 0 );
setEffRotateKey( spep_4 + 122, shuchusen5, 180 );
setEffRotateKey( spep_4 + 124, shuchusen5, 0 );
setEffRotateKey( spep_4 + 126, shuchusen5, 180 );
setEffRotateKey( spep_4 + 128, shuchusen5, 0 );
setEffRotateKey( spep_4 + 130, shuchusen5, 180 );
setEffRotateKey( spep_4 + 132, shuchusen5, 0 );
setEffRotateKey( spep_4 + 134, shuchusen5, 180 );
setEffRotateKey( spep_4 + 136, shuchusen5, 0 );
setEffRotateKey( spep_4 + 138, shuchusen5, 180 );
setEffRotateKey( spep_4 + 140, shuchusen5, 0 );
setEffRotateKey( spep_4 + 142, shuchusen5, 180 );
setEffRotateKey( spep_4 + 144, shuchusen5, 0 );
setEffRotateKey( spep_4 + 146, shuchusen5, 180 );
setEffRotateKey( spep_4 + 148, shuchusen5, 0 );
setEffRotateKey( spep_4 + 150, shuchusen5, 180 );
setEffRotateKey( spep_4 + 152, shuchusen5, 0 );
setEffRotateKey( spep_4 + 154, shuchusen5, 180 );
setEffRotateKey( spep_4 + 156, shuchusen5, 0 );
setEffRotateKey( spep_4 + 158, shuchusen5, 180 );
setEffRotateKey( spep_4 + 160, shuchusen5, 0 );
setEffRotateKey( spep_4 + 162, shuchusen5, 180 );
setEffRotateKey( spep_4 + 164, shuchusen5, 0 );
setEffRotateKey( spep_4 + 166, shuchusen5, 180 );
setEffRotateKey( spep_4 + 168, shuchusen5, 0 );
setEffRotateKey( spep_4 + 170, shuchusen5, 180 );
setEffRotateKey( spep_4 + 172, shuchusen5, 0 );
setEffRotateKey( spep_4 + 174, shuchusen5, 180 );
setEffRotateKey( spep_4 + 176, shuchusen5, 0 );
setEffRotateKey( spep_4 + 178, shuchusen5, 180 );
setEffRotateKey( spep_4 + 180, shuchusen5, 0 );
setEffRotateKey( spep_4 + 182, shuchusen5, 180 );
setEffRotateKey( spep_4 + 184, shuchusen5, 0 );
setEffRotateKey( spep_4 + 186, shuchusen5, 180 );
setEffRotateKey( spep_4 + 188, shuchusen5, 0 );
setEffRotateKey( spep_4 + 190, shuchusen5, 180 );
setEffRotateKey( spep_4 + 192, shuchusen5, 0 );
setEffRotateKey( spep_4 + 194, shuchusen5, 180 );
setEffRotateKey( spep_4 + 196, shuchusen5, 0 );
setEffRotateKey( spep_4 + 198, shuchusen5, 180 );
setEffRotateKey( spep_4 + 200, shuchusen5, 0 );
setEffRotateKey( spep_4 + 202, shuchusen5, 180 );
setEffRotateKey( spep_4 + 204, shuchusen5, 0 );
setEffRotateKey( spep_4 + 206, shuchusen5, 180 );
setEffRotateKey( spep_4 + 208, shuchusen5, 0 );
setEffRotateKey( spep_4 + 210, shuchusen5, 180 );
setEffRotateKey( spep_4 + 212, shuchusen5, 0 );
setEffRotateKey( spep_4 + 214, shuchusen5, 180 );
setEffRotateKey( spep_4 + 216, shuchusen5, 0 );
setEffRotateKey( spep_4 + 218, shuchusen5, 180 );
setEffRotateKey( spep_4 + 220, shuchusen5, 0 );
setEffRotateKey( spep_4 + 222, shuchusen5, 180 );
setEffRotateKey( spep_4 + 224, shuchusen5, 0 );
setEffRotateKey( spep_4 + 226, shuchusen5, 180 );
setEffRotateKey( spep_4 + 228, shuchusen5, 0 );
setEffRotateKey( spep_4 + 230, shuchusen5, 180 );
setEffRotateKey( spep_4 + 232, shuchusen5, 0 );
setEffRotateKey( spep_4 + 234, shuchusen5, 180 );
setEffRotateKey( spep_4 + 236, shuchusen5, 0 );
setEffRotateKey( spep_4 + 238, shuchusen5, 180 );
setEffRotateKey( spep_4 + 240, shuchusen5, 0 );
setEffRotateKey( spep_4 + 242, shuchusen5, 180 );
setEffRotateKey( spep_4 + 244, shuchusen5, 0 );
setEffRotateKey( spep_4 + 246, shuchusen5, 180 );
setEffRotateKey( spep_4 + 248, shuchusen5, 0 );
setEffRotateKey( spep_4 + 250, shuchusen5, 180 );
setEffRotateKey( spep_4 + 252, shuchusen5, 0 );
setEffRotateKey( spep_4 + 254, shuchusen5, 180 );
setEffRotateKey( spep_4 + 256, shuchusen5, 0 );
setEffRotateKey( spep_4 + 258, shuchusen5, 180 );
setEffRotateKey( spep_4 + 260, shuchusen5, 0 );
setEffRotateKey( spep_4 + 262, shuchusen5, 180 );
setEffRotateKey( spep_4 + 264, shuchusen5, 0 );
setEffRotateKey( spep_4 + 266, shuchusen5, 180 );
setEffRotateKey( spep_4 + 268, shuchusen5, 0 );
setEffRotateKey( spep_4 + 270, shuchusen5, 180 );

setEffAlphaKey( spep_4 + 96, shuchusen5, 0 );
setEffAlphaKey( spep_4 + 97, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 270, shuchusen5, 255 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_4 + 0,  920, 48, 0x80, -1, 0, 0, 0 );  --流線後ろ
setEffMoveKey( spep_4 + 0, ryusen2, 0 , 0 , 0 );
setEffMoveKey( spep_4 + 48, ryusen2, 0 , 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 5.22, 1.47 );
setEffScaleKey( spep_4 + 48, ryusen2, 5.22, 1.47 );

setEffRotateKey( spep_4 + 0, ryusen2, 50.7 );
setEffRotateKey( spep_4 + 48, ryusen2, 50.7 );

setEffAlphaKey( spep_4 + 0, ryusen2, 110 );
setEffAlphaKey( spep_4 + 48, ryusen2, 110 );

ryusen3 = entryEffectLife( spep_4 + 2,  920, 46, 0x100, -1, 0, 1590, 500);  --流線手前１
setEffMoveKey( spep_4 + 2, ryusen3, 1590, 500 , 0 );
setEffMoveKey( spep_4 + 48, ryusen3, 1590, 500 , 0 );

setEffScaleKey( spep_4 + 2, ryusen3, 5.22, 1.47 );
setEffScaleKey( spep_4 + 48, ryusen3, 5.22, 1.47 );

setEffRotateKey( spep_4 + 2, ryusen3, 50.7 );
setEffRotateKey( spep_4 + 48, ryusen3, 50.7 );

setEffAlphaKey( spep_4 + 2, ryusen3, 110 );
setEffAlphaKey( spep_4 + 48, ryusen3, 110 );

ryusen4 = entryEffectLife( spep_4 + 2,  920, 46, 0x100, -1, 0, -2375, -500 );  --流線手前２
setEffMoveKey( spep_4 + 2, ryusen4, -2375, -500 , 0 );
setEffMoveKey( spep_4 + 48, ryusen4, -2375, -500 , 0 );

setEffScaleKey( spep_4 + 2, ryusen4, 5.22, 1.47 );
setEffScaleKey( spep_4 + 48, ryusen4, 5.22, 1.47 );

setEffRotateKey( spep_4 + 2, ryusen4, 50.7 );
setEffRotateKey( spep_4 + 48, ryusen4, 50.7 );

setEffAlphaKey( spep_4 + 2, ryusen4, 110 );
setEffAlphaKey( spep_4 + 48, ryusen4, 110 );

-- ** 書き文字エントリー ** --
ctzun2 = entryEffectLife( spep_4 + 70,  10016, 26, 0x100, -1, 0, 161.5, 45 );  --ズンッ
setEffMoveKey( spep_4 + 70, ctzun2, 161.5, 45 , 0 );
setEffMoveKey( spep_4 + 71, ctzun2, 161.5, 45 , 0 );
setEffMoveKey( spep_4 + 74, ctzun2, 181, 181.9 , 0 );
setEffMoveKey( spep_4 + 76, ctzun2, 191.7, 127.8 , 0 );
setEffMoveKey( spep_4 + 78, ctzun2, 196, 205.1 , 0 );
setEffMoveKey( spep_4 + 80, ctzun2, 195.7, 154.3 , 0 );
setEffMoveKey( spep_4 + 82, ctzun2, 199.3, 192.9 , 0 );
setEffMoveKey( spep_4 + 84, ctzun2, 196.7, 181.3 , 0 );
setEffMoveKey( spep_4 + 86, ctzun2, 201.3, 193.6 , 0 );
setEffMoveKey( spep_4 + 88, ctzun2, 198.5, 189 , 0 );
setEffMoveKey( spep_4 + 90, ctzun2, 202.2, 200 , 0 );
setEffMoveKey( spep_4 + 92, ctzun2, 200.5, 191.9 , 0 );
setEffMoveKey( spep_4 + 94, ctzun2, 203.5, 200.3 , 0 );
setEffMoveKey( spep_4 + 96, ctzun2, 203.7, 200.5 , 0 );

setEffScaleKey( spep_4 + 70, ctzun2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 71, ctzun2, 1.1, 1.1 );
setEffScaleKey( spep_4 + 74, ctzun2, 1.53, 1.53 );
setEffScaleKey( spep_4 + 76, ctzun2, 1.79, 1.79 );
setEffScaleKey( spep_4 + 78, ctzun2, 1.88, 1.88 );
setEffScaleKey( spep_4 + 80, ctzun2, 1.9, 1.9 );
setEffScaleKey( spep_4 + 82, ctzun2, 1.92, 1.92 );
setEffScaleKey( spep_4 + 84, ctzun2, 1.93, 1.93 );
setEffScaleKey( spep_4 + 86, ctzun2, 1.95, 1.95 );
setEffScaleKey( spep_4 + 88, ctzun2, 1.97, 1.97 );
setEffScaleKey( spep_4 + 90, ctzun2, 1.99, 1.99 );
setEffScaleKey( spep_4 + 92, ctzun2, 2, 2 );
setEffScaleKey( spep_4 + 94, ctzun2, 2.02, 2.02 );
setEffScaleKey( spep_4 + 96, ctzun2, 2.04, 2.04 );

setEffRotateKey( spep_4 + 70, ctzun2, 21.5 );
setEffRotateKey( spep_4 + 71, ctzun2, 21.5 );
setEffRotateKey( spep_4 + 96, ctzun2, 21.5 );

setEffAlphaKey( spep_4 + 70, ctzun2, 0 );
setEffAlphaKey( spep_4 + 71, ctzun2, 255 );
setEffAlphaKey( spep_4 + 96, ctzun2, 255 );


ctzuzuzun = entryEffectLife( spep_4 + 96,  10013, 174, 0x100, -1, 0, 147.1, 120.1 );  --ズズズンッ
setEffMoveKey( spep_4 + 96, ctzuzuzun, 147.1, 120.1 , 0 );
setEffMoveKey( spep_4 + 97, ctzuzuzun, 147.1, 120.1 , 0 );
setEffMoveKey( spep_4 + 100, ctzuzuzun, 147.4, 117.2 , 0 );
setEffMoveKey( spep_4 + 102, ctzuzuzun, 147.7, 114.2 , 0 );
setEffMoveKey( spep_4 + 104, ctzuzuzun, 148.1, 111.3 , 0 );
setEffMoveKey( spep_4 + 106, ctzuzuzun, 148.4, 108.5 , 0 );
setEffMoveKey( spep_4 + 108, ctzuzuzun, 148.7, 105.7 , 0 );
setEffMoveKey( spep_4 + 110, ctzuzuzun, 149, 102.9 , 0 );
setEffMoveKey( spep_4 + 112, ctzuzuzun, 149.3, 100.2 , 0 );
setEffMoveKey( spep_4 + 114, ctzuzuzun, 149.6, 97.6 , 0 );
setEffMoveKey( spep_4 + 116, ctzuzuzun, 149.8, 95 , 0 );
setEffMoveKey( spep_4 + 118, ctzuzuzun, 150.1, 92.4 , 0 );
setEffMoveKey( spep_4 + 120, ctzuzuzun, 150.4, 89.9 , 0 );
setEffMoveKey( spep_4 + 122, ctzuzuzun, 150.7, 87.5 , 0 );
setEffMoveKey( spep_4 + 124, ctzuzuzun, 150.9, 85.1 , 0 );
setEffMoveKey( spep_4 + 126, ctzuzuzun, 151.2, 82.7 , 0 );
setEffMoveKey( spep_4 + 128, ctzuzuzun, 151.4, 80.4 , 0 );
setEffMoveKey( spep_4 + 130, ctzuzuzun, 151.7, 78.2 , 0 );
setEffMoveKey( spep_4 + 132, ctzuzuzun, 151.9, 76 , 0 );
setEffMoveKey( spep_4 + 134, ctzuzuzun, 152.1, 73.8 , 0 );
setEffMoveKey( spep_4 + 136, ctzuzuzun, 152.4, 71.7 , 0 );
setEffMoveKey( spep_4 + 138, ctzuzuzun, 152.6, 69.7 , 0 );
setEffMoveKey( spep_4 + 140, ctzuzuzun, 152.8, 67.7 , 0 );
setEffMoveKey( spep_4 + 142, ctzuzuzun, 153, 65.7 , 0 );
setEffMoveKey( spep_4 + 144, ctzuzuzun, 153.2, 63.8 , 0 );
setEffMoveKey( spep_4 + 146, ctzuzuzun, 153.4, 62 , 0 );
setEffMoveKey( spep_4 + 148, ctzuzuzun, 153.6, 60.2 , 0 );
setEffMoveKey( spep_4 + 150, ctzuzuzun, 153.8, 58.4 , 0 );
setEffMoveKey( spep_4 + 152, ctzuzuzun, 154, 56.7 , 0 );
setEffMoveKey( spep_4 + 154, ctzuzuzun, 154.2, 55 , 0 );
setEffMoveKey( spep_4 + 156, ctzuzuzun, 154.4, 53.4 , 0 );
setEffMoveKey( spep_4 + 158, ctzuzuzun, 154.5, 51.9 , 0 );
setEffMoveKey( spep_4 + 160, ctzuzuzun, 154.7, 50.4 , 0 );
setEffMoveKey( spep_4 + 162, ctzuzuzun, 154.8, 48.9 , 0 );
setEffMoveKey( spep_4 + 164, ctzuzuzun, 155, 47.5 , 0 );
setEffMoveKey( spep_4 + 166, ctzuzuzun, 155.2, 46.1 , 0 );
setEffMoveKey( spep_4 + 168, ctzuzuzun, 155.3, 44.8 , 0 );
setEffMoveKey( spep_4 + 170, ctzuzuzun, 155.4, 42.6 , 0 );
setEffMoveKey( spep_4 + 172, ctzuzuzun, 155.6, 41.4 , 0 );
setEffMoveKey( spep_4 + 174, ctzuzuzun, 155.7, 40.1 , 0 );
setEffMoveKey( spep_4 + 176, ctzuzuzun, 155.8, 39.4 , 0 );
setEffMoveKey( spep_4 + 178, ctzuzuzun, 155.9, 39 , 0 );
setEffMoveKey( spep_4 + 180, ctzuzuzun, 156, 37 , 0 );
setEffMoveKey( spep_4 + 182, ctzuzuzun, 156.1, 36 , 0 );
setEffMoveKey( spep_4 + 184, ctzuzuzun, 156.2, 32.1 , 0 );
setEffMoveKey( spep_4 + 186, ctzuzuzun, 156.3, 31.3 , 0 );
setEffMoveKey( spep_4 + 188, ctzuzuzun, 156.4, 30.4 , 0 );
setEffMoveKey( spep_4 + 190, ctzuzuzun, 156.5, 29.7 , 0 );
setEffMoveKey( spep_4 + 192, ctzuzuzun, 156.6, 29 , 0 );
setEffMoveKey( spep_4 + 194, ctzuzuzun, 156.7, 29.3 , 0 );
setEffMoveKey( spep_4 + 196, ctzuzuzun, 156.7, 28.7 , 0 );
setEffMoveKey( spep_4 + 198, ctzuzuzun, 156.8, 28.1 , 0 );
setEffMoveKey( spep_4 + 200, ctzuzuzun, 156.8, 27.6 , 0 );
setEffMoveKey( spep_4 + 202, ctzuzuzun, 156.9, 27.1 , 0 );
setEffMoveKey( spep_4 + 204, ctzuzuzun, 156.9, 26.7 , 0 );
setEffMoveKey( spep_4 + 206, ctzuzuzun, 157, 26.3 , 0 );
setEffMoveKey( spep_4 + 208, ctzuzuzun, 157, 26 , 0 );
setEffMoveKey( spep_4 + 210, ctzuzuzun, 157, 25.7 , 0 );
setEffMoveKey( spep_4 + 212, ctzuzuzun, 157.1, 25.5 , 0 );
setEffMoveKey( spep_4 + 214, ctzuzuzun, 157.1, 25.3 , 0 );
setEffMoveKey( spep_4 + 216, ctzuzuzun, 157.1, 25.2 , 0 );
setEffMoveKey( spep_4 + 218, ctzuzuzun, 157.1, 25.1 , 0 );
setEffMoveKey( spep_4 + 270, ctzuzuzun, 157.1, 25.1 , 0 );

setEffScaleKey( spep_4 + 96, ctzuzuzun, 1.52, 1.52 );
setEffScaleKey( spep_4 + 97, ctzuzuzun, 1.52, 1.52 );
setEffScaleKey( spep_4 + 100, ctzuzuzun, 1.54, 1.54 );
setEffScaleKey( spep_4 + 102, ctzuzuzun, 1.55, 1.55 );
setEffScaleKey( spep_4 + 104, ctzuzuzun, 1.57, 1.57 );
setEffScaleKey( spep_4 + 106, ctzuzuzun, 1.58, 1.58 );
setEffScaleKey( spep_4 + 108, ctzuzuzun, 1.59, 1.59 );
setEffScaleKey( spep_4 + 110, ctzuzuzun, 1.61, 1.61 );
setEffScaleKey( spep_4 + 112, ctzuzuzun, 1.62, 1.62 );
setEffScaleKey( spep_4 + 114, ctzuzuzun, 1.63, 1.63 );
setEffScaleKey( spep_4 + 116, ctzuzuzun, 1.65, 1.65 );
setEffScaleKey( spep_4 + 118, ctzuzuzun, 1.66, 1.66 );
setEffScaleKey( spep_4 + 120, ctzuzuzun, 1.67, 1.67 );
setEffScaleKey( spep_4 + 122, ctzuzuzun, 1.68, 1.68 );
setEffScaleKey( spep_4 + 124, ctzuzuzun, 1.69, 1.69 );
setEffScaleKey( spep_4 + 126, ctzuzuzun, 1.71, 1.71 );
setEffScaleKey( spep_4 + 128, ctzuzuzun, 1.72, 1.72 );
setEffScaleKey( spep_4 + 130, ctzuzuzun, 1.73, 1.73 );
setEffScaleKey( spep_4 + 132, ctzuzuzun, 1.74, 1.74 );
setEffScaleKey( spep_4 + 134, ctzuzuzun, 1.75, 1.75 );
setEffScaleKey( spep_4 + 136, ctzuzuzun, 1.76, 1.76 );
setEffScaleKey( spep_4 + 138, ctzuzuzun, 1.77, 1.77 );
setEffScaleKey( spep_4 + 140, ctzuzuzun, 1.78, 1.78 );
setEffScaleKey( spep_4 + 142, ctzuzuzun, 1.79, 1.79 );
setEffScaleKey( spep_4 + 144, ctzuzuzun, 1.8, 1.8 );
setEffScaleKey( spep_4 + 146, ctzuzuzun, 1.81, 1.81 );
setEffScaleKey( spep_4 + 148, ctzuzuzun, 1.81, 1.81 );
setEffScaleKey( spep_4 + 150, ctzuzuzun, 1.82, 1.82 );
setEffScaleKey( spep_4 + 152, ctzuzuzun, 1.83, 1.83 );
setEffScaleKey( spep_4 + 154, ctzuzuzun, 1.84, 1.84 );
setEffScaleKey( spep_4 + 156, ctzuzuzun, 1.85, 1.85 );
setEffScaleKey( spep_4 + 158, ctzuzuzun, 1.85, 1.85 );
setEffScaleKey( spep_4 + 160, ctzuzuzun, 1.86, 1.86 );
setEffScaleKey( spep_4 + 162, ctzuzuzun, 1.87, 1.87 );
setEffScaleKey( spep_4 + 164, ctzuzuzun, 1.88, 1.88 );
setEffScaleKey( spep_4 + 166, ctzuzuzun, 1.88, 1.88 );
setEffScaleKey( spep_4 + 168, ctzuzuzun, 1.89, 1.89 );
setEffScaleKey( spep_4 + 170, ctzuzuzun, 1.9, 1.9 );
setEffScaleKey( spep_4 + 172, ctzuzuzun, 1.9, 1.9 );
setEffScaleKey( spep_4 + 174, ctzuzuzun, 1.91, 1.91 );
setEffScaleKey( spep_4 + 176, ctzuzuzun, 1.91, 1.91 );
setEffScaleKey( spep_4 + 178, ctzuzuzun, 1.92, 1.92 );
setEffScaleKey( spep_4 + 180, ctzuzuzun, 1.92, 1.92 );
setEffScaleKey( spep_4 + 182, ctzuzuzun, 1.93, 1.93 );
setEffScaleKey( spep_4 + 184, ctzuzuzun, 1.93, 1.93 );
setEffScaleKey( spep_4 + 186, ctzuzuzun, 1.94, 1.94 );
setEffScaleKey( spep_4 + 188, ctzuzuzun, 1.94, 1.94 );
setEffScaleKey( spep_4 + 190, ctzuzuzun, 1.95, 1.95 );
setEffScaleKey( spep_4 + 192, ctzuzuzun, 1.95, 1.95 );
setEffScaleKey( spep_4 + 194, ctzuzuzun, 1.96, 1.96 );
setEffScaleKey( spep_4 + 196, ctzuzuzun, 1.96, 1.96 );
setEffScaleKey( spep_4 + 198, ctzuzuzun, 1.97, 1.97 );
setEffScaleKey( spep_4 + 270, ctzuzuzun, 1.97, 1.97 );

setEffRotateKey( spep_4 + 96, ctzuzuzun, 0 );
setEffRotateKey( spep_4 + 97, ctzuzuzun, 0 );
setEffRotateKey( spep_4 + 270, ctzuzuzun, 0 );

setEffAlphaKey( spep_4 + 96, ctzuzuzun, 0 );
setEffAlphaKey( spep_4 + 97, ctzuzuzun, 255 );
setEffAlphaKey( spep_4 + 270, ctzuzuzun, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 48, 1, 0 );
setDisp( spep_4 + 49, 1, 0 );
setDisp( spep_4 + 50, 1, 1 );
setDisp( spep_4 + 78, 1, 0 );
changeAnime( spep_4 + 49, 1, 106 );
changeAnime( spep_4 + 50, 1, 106 );

setMoveKey( spep_4 + 48, 1, 65.7, -26.7 , 0 );
setMoveKey( spep_4 + 49, 1, 65.7, -26.7 , 0 );
setMoveKey( spep_4 + 50, 1, 65.7, -26.7 , 0 );
setMoveKey( spep_4 + 51, 1, 65.7, -26.7 , 0 );
setMoveKey( spep_4 + 78, 1, 65.7, -26.7 , 0 );

setScaleKey( spep_4 + 49, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 50, 1, 1.49, 1.49 );
setScaleKey( spep_4 + 78, 1, 1.49, 1.49 );

setRotateKey( spep_4 + 49, 1, 34.7 );
setRotateKey( spep_4 + 50, 1, 34.7 );
setRotateKey( spep_4 + 78, 1, 34.7 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 49, 0, 0, 0, 0, 180 );  --薄い黒　背景
entryFadeBg( spep_4 + 49, 0, 270, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_4 + 2, 1018 );  --足落ちる音
playSe( spep_4 + 71, 1023 );  --ズンッ
SE1=playSe( spep_4 + 97, 1044 );  --ズズズンッ
stopSe( spep_4 + 262,SE1,0);

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 172 );
entryFade( spep_4 + 262, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 268 );

end


