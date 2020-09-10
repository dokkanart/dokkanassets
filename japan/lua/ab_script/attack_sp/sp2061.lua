--1020530_魔人ブウ(ピッコロ吸収)_SSR
--sp_effect_a2_00138

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
SP_01 = 155740;  --気弾溜め
SP_02 = 155741;  --気弾発射
SP_03 = 155742;  --気弾命中：敵より前
SP_04 = 155743;  --気弾命中：敵より後ろ
SP_05 = 155744;  --ラスト爆発エフェクト
SP_06 = 155745;  --ギャン（黄色）

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
-- 突進、パンチ(95F)
------------------------------------------------------
spep_0 = 0;

------------------------------------------------------
-- 気弾溜め(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --気弾溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 96, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 96, tame, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_0 + 13,  906, 82, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 13, shuchusen4, 82, 25 );
setEffMoveKey(   spep_0 + 13, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 95, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 13, shuchusen4, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 95, shuchusen4, 1.2, 1.5 );
setEffRotateKey( spep_0 + 13, shuchusen4, 0 );
setEffRotateKey( spep_0 + 95, shuchusen4, 0 );
setEffAlphaKey(  spep_0 + 13, shuchusen4, 255 );
setEffAlphaKey(  spep_0 + 95, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, -5, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, -5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -5, 515.5 , 0 );
setEffScaleKey( spep_x + 13, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 13, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
playSe( spep_0 + 12, 1018 );

--気弾溜め1
playSe( spep_0 + 14, 1230 );
setSeVolume( spep_0 + 14, 1230, 52 );

--気弾溜め2
playSe( spep_0 + 16, 1231 );
setSeVolume( spep_0 + 16, 1231, 76 );

--気弾溜め3
SE00 = playSe( spep_0 + 16, 1177 );
setSeVolume( spep_0 + 16, 1177, 82 );
stopSe( spep_0 + 96, SE00, 0 );

--気弾溜め4
playSe( spep_0 + 16, 1122 );
setSeVolume( spep_0 + 16, 1122, 65 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 12, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 86, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--気弾発射(86F)
--------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --気弾発射(ef_002)
setEffMoveKey( spep_2 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shoot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, shoot, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shoot, 0 );
setEffRotateKey( spep_2 + 86, shoot, 0 );
setEffAlphaKey( spep_2 + 0, shoot, 255 );
setEffAlphaKey( spep_2 + 86, shoot, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 50,  10012, 32, 0x100, -1, 0, 8.4, 221.7 );
setEffMoveKey( spep_2 -3 + 50, ctzuo, 8.4, 221.7 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo, -11.6, 262.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo, -53.5, 313.5 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzuo, -32, 306.1 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzuo, -52.2, 318.4 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzuo, -29.9, 310.7 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzuo, -51, 323.4 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzuo, -27.7, 315.3 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzuo, -49.7, 328.4 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzuo, -25.6, 319.9 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzuo, -48.5, 333.4 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctzuo, -23.4, 324.5 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctzuo, -47.2, 338.4 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctzuo, -21.3, 329.1 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctzuo, -45.9, 343.4 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctzuo, -2.6, 358.8 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctzuo, 15.2, 386.2 , 0 );

setEffScaleKey( spep_2 -3 + 50, ctzuo, 0.17, 0.17 );
setEffScaleKey( spep_2 -3 + 52, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_2 -3 + 54, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 56, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 58, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2 -3 + 60, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 62, ctzuo, 2.96, 2.96 );
setEffScaleKey( spep_2 -3 + 64, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_2 -3 + 66, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_2 -3 + 68, ctzuo, 3.13, 3.13 );
setEffScaleKey( spep_2 -3 + 70, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_2 -3 + 72, ctzuo, 3.24, 3.24 );
setEffScaleKey( spep_2 -3 + 74, ctzuo, 3.3, 3.3 );
setEffScaleKey( spep_2 -3 + 76, ctzuo, 3.36, 3.36 );
setEffScaleKey( spep_2 -3 + 78, ctzuo, 3.41, 3.41 );
setEffScaleKey( spep_2 -3 + 80, ctzuo, 5.12, 5.12 );
setEffScaleKey( spep_2 -3 + 82, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 50, ctzuo, 7.2 );
setEffRotateKey( spep_2 -3 + 82, ctzuo, 7.2 );

setEffAlphaKey( spep_2 -3 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 78, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 80, ctzuo, 128 );
setEffAlphaKey( spep_2 -3 + 82, ctzuo, 0 );

-- ** 音 ** --
--気弾発車前溜め1
SE01 = playSe( spep_2 + 12, 1177 );
setSeVolume( spep_2 + 12, 1177, 12  );
setSeVolume( spep_2 + 13, 1177, 24  );
setSeVolume( spep_2 + 14, 1177, 36  );
setSeVolume( spep_2 + 15, 1177, 48  );
setSeVolume( spep_2 + 16, 1177, 60  );
setSeVolume( spep_2 + 17, 1177, 72  );
setSeVolume( spep_2 + 18, 1177, 84  );
setSeVolume( spep_2 + 19, 1177, 96  );
setSeVolume( spep_2 + 20, 1177, 108 );
setSeVolume( spep_2 + 21, 1177, 120 );
setSeVolume( spep_2 + 22, 1177, 127 );
setSeVolume( spep_2 + 60, 1177, 127 );
setSeVolume( spep_2 + 61, 1177, 103 );
setSeVolume( spep_2 + 62, 1177, 81  );
setSeVolume( spep_2 + 63, 1177, 60  );
setSeVolume( spep_2 + 64, 1177, 42  );
setSeVolume( spep_2 + 65, 1177, 29  );
setSeVolume( spep_2 + 66, 1177, 17  );
setSeVolume( spep_2 + 67, 1177, 6  );
setSeVolume( spep_2 + 68, 1177, 0  );
stopSe( spep_2 + 68, SE01, 0 );

--気弾発車前溜め2
SE02 = playSe( spep_2 + 12, 1157 );
setSeVolume( spep_2 + 60, 1157, 100 );
setSeVolume( spep_2 + 62, 1157, 80 );
setSeVolume( spep_2 + 64, 1157, 60 );
setSeVolume( spep_2 + 66, 1157, 40 );
setSeVolume( spep_2 + 68, 1157, 20 );
setSeVolume( spep_2 + 69, 1157, 10 );
setSeVolume( spep_2 + 70, 1157, 0 );
stopSe( spep_2 + 70, SE02, 0 );

--気弾発車前溜め3
SE03 = playSe( spep_2 + 12, 1191 );
setSeVolume( spep_2 + 12, 1191, 174 );
setSeVolume( spep_2 + 60, 1191, 174 );
setSeVolume( spep_2 + 61, 1191, 154 );
setSeVolume( spep_2 + 62, 1191, 134 );
setSeVolume( spep_2 + 63, 1191, 114 );
setSeVolume( spep_2 + 64, 1191, 94 );
setSeVolume( spep_2 + 65, 1191, 74 );
setSeVolume( spep_2 + 66, 1191, 54 );
setSeVolume( spep_2 + 67, 1191, 34 );
setSeVolume( spep_2 + 68, 1191, 14 );
setSeVolume( spep_2 + 69, 1191, 7 );
setSeVolume( spep_2 + 70, 1191, 0 );
stopSe( spep_2 + 70, SE03, 0 );

--気弾発射1
playSe( spep_2 + 56, 1027 );
setSeVolume( spep_2 + 56, 1027, 76 );

--気弾発射2
SE04 = playSe( spep_2 + 56, 1205 );
setSeVolume( spep_2 + 56, 1205, 67 );
stopSe( spep_2 + 178, SE04, 0 );

--気弾発射3
SE05 = playSe( spep_2 + 58, 1236 );
setSeVolume( spep_2 + 58, 1236, 193 );
stopSe( spep_2 + 178, SE05, 0 );

--気弾発射4
SE06 = playSe( spep_2 + 58, 1212 );
setSeVolume( spep_2 + 58, 1212, 45 );
setSeVolume( spep_2 + 174, 1212, 45 );
setSeVolume( spep_2 + 177, 1212, 35 );
setSeVolume( spep_2 + 180, 1212, 25 );
setSeVolume( spep_2 + 183, 1212, 15 );
setSeVolume( spep_2 + 186, 1212, 5 );
setSeVolume( spep_2 + 189, 1212, 0 );
stopSe( spep_2 + 178, SE06, 0 );


-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 86, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 46, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 72, 4, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

--------------------------------------
--気弾命中(76F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾命中：敵より前(ef_003)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 76, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 76, hit_f, 255 );

hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾命中：敵より後ろ(ef_004)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 76, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 76, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_3 -3 + 36,  10014, 42, 0x100, -1, 0, -134.5, 359.9 );  --ズドドドッ
setEffMoveKey( spep_3 -3 + 36, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctzudodo, -138.6, 378.5 , 0 );

setEffScaleKey( spep_3 -3 + 36, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_3 -3 + 78, ctzudodo, 1.98, 1.98 );

setEffRotateKey( spep_3 -3 + 36, ctzudodo, 8.5 );
setEffRotateKey( spep_3 -3 + 78, ctzudodo, 8.5 );

setEffAlphaKey( spep_3 -3 + 36, ctzudodo, 255 );
setEffAlphaKey( spep_3 -3 + 78, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 -3 + 3, 1, 110.2, 130.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 111.2, 130.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 112.3, 130.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 113.4, 130.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 114.4, 130.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 115.5, 130.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 116.6, 130.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 117.6, 130 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 118.7, 129.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 119.8, 129.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 120.8, 129.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 121.9, 129.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 123, 129.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 124.1, 129.6 , 0 );

setScaleKey( spep_3 -3 + 3, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 6, 1, 2.04, 2.04 );
setScaleKey( spep_3 -3 + 8, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 10, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 12, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 16, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 18, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 20, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 22, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 30, 1, 1.78, 1.78 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 音 ** --

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 76, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 28; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE04, 0 );
stopSe( SP_dodge - 12, SE05, 0 );
stopSe( SP_dodge - 12, SE06, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 125.1, 129.5 , 0 );
setMoveKey( SP_dodge + 2, 1, 126.2, 129.5 , 0 );
setMoveKey( SP_dodge + 4, 1, 127.3, 129.4 , 0 );
setMoveKey( SP_dodge + 6, 1, 138.3, 121.4 , 0 );
setMoveKey( SP_dodge + 8, 1, 129.4, 121.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 149, 144.8 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.76, 1.76 );
setScaleKey( SP_dodge + 2, 1, 1.73, 1.73 );
setScaleKey( SP_dodge + 4, 1, 1.71, 1.71 );
setScaleKey( SP_dodge + 6, 1, 1.69, 1.69 );
setScaleKey( SP_dodge + 8, 1, 1.67, 1.67 );
setScaleKey( SP_dodge + 10, 1, 1.29, 1.29 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 50, 1, 0 );
changeAnime( spep_3 -3 + 42, 1, 105 );

setMoveKey( spep_3 -3 + 32, 1, 125.1, 129.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 126.2, 129.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 127.3, 129.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 138.3, 121.4 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 129.4, 121.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 149, 144.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 153.9, 144 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 176.8, 135.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 179.7, 134.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 200.3, 141.3 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 200.3, 141.3 , 0 );

setScaleKey( spep_3 -3 + 32, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 36, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 41, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 42, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 44, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 46, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 48, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 50, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 53, 1, 0.32, 0.32 );

setRotateKey( spep_3 -3 + 41, 1, 0 );
setRotateKey( spep_3 -3 + 42, 1, 29.8 );
setRotateKey( spep_3 -3 + 46, 1, 29.8 );
setRotateKey( spep_3 -3 + 48, 1, 29.9 );
setRotateKey( spep_3 -3 + 53, 1, 29.9 );

-- ** 音 ** --
--追い気弾
playSe( spep_3 + 42, 1021 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 68, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

--------------------------------------
--ギャン(56F)
--------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ギャン(ef_006)
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 56, gyan, 0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 56, gyan, 255 );

ctgyan = entryEffectLife( spep_4 + 0,  10006, 56, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
setEffMoveKey( spep_4 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_4 + 56, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_4 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_4 + 56, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 + 56, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 + 56, ctgyan, 255 );

-- ** 音 ** --
--ギャン
playSe( spep_4 + 10, 1023 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 18, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

--------------------------------------
--ラスト爆発エフェクト(126F)
--------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ラスト爆発エフェクト(ef_005)
setEffMoveKey( spep_5 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 126, last_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126, last_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, last_f, 0 );
setEffRotateKey( spep_5 + 126, last_f, 0 );
setEffAlphaKey( spep_5 + 0, last_f, 255 );
setEffAlphaKey( spep_5 + 126, last_f, 255 );

-- ** 音 ** --
--爆発1
playSe( spep_5 + 10, 1159 );
setSeVolume( spep_5 + 10, 1159, 87 );

--爆発2
playSe( spep_5 + 10, 1024 );
setSeVolume( spep_5 + 10, 1024, 85 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 126, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 8 );
endPhase( spep_5 + 116 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 突進、パンチ(95F)
------------------------------------------------------
spep_0 = 0;

------------------------------------------------------
-- 気弾溜め(96F)
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --気弾溜め(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 96, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 96, tame, 255 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_0 + 13,  906, 82, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 13, shuchusen4, 82, 25 );
setEffMoveKey(   spep_0 + 13, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 95, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 13, shuchusen4, 1.2, 1.5 );
setEffScaleKey(  spep_0 + 95, shuchusen4, 1.2, 1.5 );
setEffRotateKey( spep_0 + 13, shuchusen4, 0 );
setEffRotateKey( spep_0 + 95, shuchusen4, 0 );
setEffAlphaKey(  spep_0 + 13, shuchusen4, 255 );
setEffAlphaKey(  spep_0 + 95, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 13, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 13, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
--playSe( spep_0 + 12, 1018 );

--気弾溜め1
playSe( spep_0 + 14, 1230 );
setSeVolume( spep_0 + 14, 1230, 52 );

--気弾溜め2
playSe( spep_0 + 16, 1231 );
setSeVolume( spep_0 + 16, 1231, 76 );

--気弾溜め3
SE00 = playSe( spep_0 + 16, 1177 );
setSeVolume( spep_0 + 16, 1177, 82 );
stopSe( spep_0 + 96, SE00, 0 );

--気弾溜め4
playSe( spep_0 + 16, 1122 );
setSeVolume( spep_0 + 16, 1122, 65 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 96, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_0 + 0, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 12, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_0 + 86, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 96;

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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--気弾発射(86F)
--------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --気弾発射(ef_002)
setEffMoveKey( spep_2 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shoot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_2 + 86, shoot, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shoot, 0 );
setEffRotateKey( spep_2 + 86, shoot, 0 );
setEffAlphaKey( spep_2 + 0, shoot, 255 );
setEffAlphaKey( spep_2 + 86, shoot, 255 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 -3 + 50,  10012, 32, 0x100, -1, 0, 8.4, 221.7 );
setEffMoveKey( spep_2 -3 + 50, ctzuo, 8.4, 221.7 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzuo, -11.6, 262.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzuo, -53.5, 313.5 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzuo, -32, 306.1 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzuo, -52.2, 318.4 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzuo, -29.9, 310.7 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctzuo, -51, 323.4 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctzuo, -27.7, 315.3 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctzuo, -49.7, 328.4 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctzuo, -25.6, 319.9 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctzuo, -48.5, 333.4 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctzuo, -23.4, 324.5 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctzuo, -47.2, 338.4 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctzuo, -21.3, 329.1 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctzuo, -45.9, 343.4 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctzuo, -2.6, 358.8 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctzuo, 15.2, 386.2 , 0 );

setEffScaleKey( spep_2 -3 + 50, ctzuo, 0.17, 0.17 );
setEffScaleKey( spep_2 -3 + 52, ctzuo, 1.45, 1.45 );
setEffScaleKey( spep_2 -3 + 54, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_2 -3 + 56, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_2 -3 + 58, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_2 -3 + 60, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_2 -3 + 62, ctzuo, 2.96, 2.96 );
setEffScaleKey( spep_2 -3 + 64, ctzuo, 3.01, 3.01 );
setEffScaleKey( spep_2 -3 + 66, ctzuo, 3.07, 3.07 );
setEffScaleKey( spep_2 -3 + 68, ctzuo, 3.13, 3.13 );
setEffScaleKey( spep_2 -3 + 70, ctzuo, 3.18, 3.18 );
setEffScaleKey( spep_2 -3 + 72, ctzuo, 3.24, 3.24 );
setEffScaleKey( spep_2 -3 + 74, ctzuo, 3.3, 3.3 );
setEffScaleKey( spep_2 -3 + 76, ctzuo, 3.36, 3.36 );
setEffScaleKey( spep_2 -3 + 78, ctzuo, 3.41, 3.41 );
setEffScaleKey( spep_2 -3 + 80, ctzuo, 5.12, 5.12 );
setEffScaleKey( spep_2 -3 + 82, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_2 -3 + 50, ctzuo, 7.2 );
setEffRotateKey( spep_2 -3 + 82, ctzuo, 7.2 );

setEffAlphaKey( spep_2 -3 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 78, ctzuo, 255 );
setEffAlphaKey( spep_2 -3 + 80, ctzuo, 128 );
setEffAlphaKey( spep_2 -3 + 82, ctzuo, 0 );

-- ** 音 ** --
--気弾発車前溜め1
SE01 = playSe( spep_2 + 12, 1177 );
setSeVolume( spep_2 + 12, 1177, 12  );
setSeVolume( spep_2 + 13, 1177, 24  );
setSeVolume( spep_2 + 14, 1177, 36  );
setSeVolume( spep_2 + 15, 1177, 48  );
setSeVolume( spep_2 + 16, 1177, 60  );
setSeVolume( spep_2 + 17, 1177, 72  );
setSeVolume( spep_2 + 18, 1177, 84  );
setSeVolume( spep_2 + 19, 1177, 96  );
setSeVolume( spep_2 + 20, 1177, 108 );
setSeVolume( spep_2 + 21, 1177, 120 );
setSeVolume( spep_2 + 22, 1177, 127 );
setSeVolume( spep_2 + 60, 1177, 127 );
setSeVolume( spep_2 + 61, 1177, 103 );
setSeVolume( spep_2 + 62, 1177, 81  );
setSeVolume( spep_2 + 63, 1177, 60  );
setSeVolume( spep_2 + 64, 1177, 42  );
setSeVolume( spep_2 + 65, 1177, 29  );
setSeVolume( spep_2 + 66, 1177, 17  );
setSeVolume( spep_2 + 67, 1177, 6  );
setSeVolume( spep_2 + 68, 1177, 0  );
stopSe( spep_2 + 68, SE01, 0 );

--気弾発車前溜め2
SE02 = playSe( spep_2 + 12, 1157 );
setSeVolume( spep_2 + 60, 1157, 100 );
setSeVolume( spep_2 + 62, 1157, 80 );
setSeVolume( spep_2 + 64, 1157, 60 );
setSeVolume( spep_2 + 66, 1157, 40 );
setSeVolume( spep_2 + 68, 1157, 20 );
setSeVolume( spep_2 + 69, 1157, 10 );
setSeVolume( spep_2 + 70, 1157, 0 );
stopSe( spep_2 + 70, SE02, 0 );

--気弾発車前溜め3
SE03 = playSe( spep_2 + 12, 1191 );
setSeVolume( spep_2 + 12, 1191, 174 );
setSeVolume( spep_2 + 60, 1191, 174 );
setSeVolume( spep_2 + 61, 1191, 154 );
setSeVolume( spep_2 + 62, 1191, 134 );
setSeVolume( spep_2 + 63, 1191, 114 );
setSeVolume( spep_2 + 64, 1191, 94 );
setSeVolume( spep_2 + 65, 1191, 74 );
setSeVolume( spep_2 + 66, 1191, 54 );
setSeVolume( spep_2 + 67, 1191, 34 );
setSeVolume( spep_2 + 68, 1191, 14 );
setSeVolume( spep_2 + 69, 1191, 7 );
setSeVolume( spep_2 + 70, 1191, 0 );
stopSe( spep_2 + 70, SE03, 0 );

--気弾発射1
playSe( spep_2 + 56, 1027 );
setSeVolume( spep_2 + 56, 1027, 76 );

--気弾発射2
SE04 = playSe( spep_2 + 56, 1205 );
setSeVolume( spep_2 + 56, 1205, 67 );
stopSe( spep_2 + 178, SE04, 0 );

--気弾発射3
SE05 = playSe( spep_2 + 58, 1236 );
setSeVolume( spep_2 + 58, 1236, 193 );
stopSe( spep_2 + 178, SE05, 0 );

--気弾発射4
SE06 = playSe( spep_2 + 58, 1212 );
setSeVolume( spep_2 + 58, 1212, 45 );
setSeVolume( spep_2 + 174, 1212, 45 );
setSeVolume( spep_2 + 177, 1212, 35 );
setSeVolume( spep_2 + 180, 1212, 25 );
setSeVolume( spep_2 + 183, 1212, 15 );
setSeVolume( spep_2 + 186, 1212, 5 );
setSeVolume( spep_2 + 189, 1212, 0 );
stopSe( spep_2 + 178, SE06, 0 );


-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 86, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_2 + 0, 0, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 46, 1, 1, 1, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade
entryFade( spep_2 + 72, 4, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 86;

--------------------------------------
--気弾命中(76F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾命中：敵より前(ef_003)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 76, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 76, hit_f, 255 );

hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾命中：敵より後ろ(ef_004)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 76, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 76, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 76, hit_b, 255 );

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_3 -3 + 36,  10014, 42, 0x100, -1, 0, -134.5, 359.9 );  --ズドドドッ
setEffMoveKey( spep_3 -3 + 36, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctzudodo, -138.6, 378.5 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctzudodo, -134.5, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctzudodo, -138.6, 378.5 , 0 );

setEffScaleKey( spep_3 -3 + 36, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_3 -3 + 78, ctzudodo, 1.98, 1.98 );

setEffRotateKey( spep_3 -3 + 36, ctzudodo, 8.5 );
setEffRotateKey( spep_3 -3 + 78, ctzudodo, 8.5 );

setEffAlphaKey( spep_3 -3 + 36, ctzudodo, 255 );
setEffAlphaKey( spep_3 -3 + 78, ctzudodo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 104 );

setMoveKey( spep_3 -3 + 3, 1, 110.2, 130.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 111.2, 130.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 112.3, 130.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 113.4, 130.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 114.4, 130.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 115.5, 130.1 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 116.6, 130.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 117.6, 130 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 118.7, 129.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 119.8, 129.9 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 120.8, 129.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 121.9, 129.7 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 123, 129.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 124.1, 129.6 , 0 );

setScaleKey( spep_3 -3 + 3, 1, 2.06, 2.06 );
setScaleKey( spep_3 -3 + 6, 1, 2.04, 2.04 );
setScaleKey( spep_3 -3 + 8, 1, 2.01, 2.01 );
setScaleKey( spep_3 -3 + 10, 1, 1.99, 1.99 );
setScaleKey( spep_3 -3 + 12, 1, 1.97, 1.97 );
setScaleKey( spep_3 -3 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_3 -3 + 16, 1, 1.93, 1.93 );
setScaleKey( spep_3 -3 + 18, 1, 1.91, 1.91 );
setScaleKey( spep_3 -3 + 20, 1, 1.88, 1.88 );
setScaleKey( spep_3 -3 + 22, 1, 1.86, 1.86 );
setScaleKey( spep_3 -3 + 24, 1, 1.84, 1.84 );
setScaleKey( spep_3 -3 + 26, 1, 1.82, 1.82 );
setScaleKey( spep_3 -3 + 28, 1, 1.8, 1.8 );
setScaleKey( spep_3 -3 + 30, 1, 1.78, 1.78 );

setRotateKey( spep_3 + 0, 1, 0 );

-- ** 音 ** --

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 76, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 28; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );
stopSe( SP_dodge - 12, SE04, 0 );
stopSe( SP_dodge - 12, SE05, 0 );
stopSe( SP_dodge - 12, SE06, 0 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setMoveKey( SP_dodge + 0, 1, 125.1, 129.5 , 0 );
setMoveKey( SP_dodge + 2, 1, 126.2, 129.5 , 0 );
setMoveKey( SP_dodge + 4, 1, 127.3, 129.4 , 0 );
setMoveKey( SP_dodge + 6, 1, 138.3, 121.4 , 0 );
setMoveKey( SP_dodge + 8, 1, 129.4, 121.3 , 0 );
setMoveKey( SP_dodge + 10, 1, 149, 144.8 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.76, 1.76 );
setScaleKey( SP_dodge + 2, 1, 1.73, 1.73 );
setScaleKey( SP_dodge + 4, 1, 1.71, 1.71 );
setScaleKey( SP_dodge + 6, 1, 1.69, 1.69 );
setScaleKey( SP_dodge + 8, 1, 1.67, 1.67 );
setScaleKey( SP_dodge + 10, 1, 1.29, 1.29 );

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

-- ** 敵キャラクター ** --
setDisp( spep_3 + 50, 1, 0 );
changeAnime( spep_3 -3 + 42, 1, 105 );

setMoveKey( spep_3 -3 + 32, 1, 125.1, 129.5 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 126.2, 129.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 127.3, 129.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 138.3, 121.4 , 0 );
setMoveKey( spep_3 -3 + 41, 1, 129.4, 121.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 149, 144.8 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 153.9, 144 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 176.8, 135.2 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 179.7, 134.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 200.3, 141.3 , 0 );
setMoveKey( spep_3 -3 + 53, 1, 200.3, 141.3 , 0 );

setScaleKey( spep_3 -3 + 32, 1, 1.76, 1.76 );
setScaleKey( spep_3 -3 + 34, 1, 1.73, 1.73 );
setScaleKey( spep_3 -3 + 36, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 38, 1, 1.69, 1.69 );
setScaleKey( spep_3 -3 + 41, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 42, 1, 1.29, 1.29 );
setScaleKey( spep_3 -3 + 44, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 46, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 48, 1, 0.57, 0.57 );
setScaleKey( spep_3 -3 + 50, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 53, 1, 0.32, 0.32 );

setRotateKey( spep_3 -3 + 41, 1, 0 );
setRotateKey( spep_3 -3 + 42, 1, 29.8 );
setRotateKey( spep_3 -3 + 46, 1, 29.8 );
setRotateKey( spep_3 -3 + 48, 1, 29.9 );
setRotateKey( spep_3 -3 + 53, 1, 29.9 );

-- ** 音 ** --
--追い気弾
playSe( spep_3 + 42, 1021 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 68, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 76;

--------------------------------------
--ギャン(56F)
--------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --ギャン(ef_006)
setEffMoveKey( spep_4 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, gyan, 0 );
setEffRotateKey( spep_4 + 56, gyan, 0 );
setEffAlphaKey( spep_4 + 0, gyan, 255 );
setEffAlphaKey( spep_4 + 56, gyan, 255 );

ctgyan = entryEffectLife( spep_4 + 0,  10006, 56, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
setEffMoveKey( spep_4 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_4 + 56, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_4 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_4 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_4 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_4 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_4 + 56, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_4 + 0, ctgyan, 0 );
setEffRotateKey( spep_4 + 56, ctgyan, 0 );

setEffAlphaKey( spep_4 + 0, ctgyan, 255 );
setEffAlphaKey( spep_4 + 56, ctgyan, 255 );

-- ** 音 ** --
--ギャン
playSe( spep_4 + 10, 1023 );

-- ** ホワイトフェード ** --
entryFade( spep_4 + 18, 38, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

--------------------------------------
--ラスト爆発エフェクト(126F)
--------------------------------------
-- ** エフェクト等 ** --
last_f = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --ラスト爆発エフェクト(ef_005)
setEffMoveKey( spep_5 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 126, last_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 126, last_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, last_f, 0 );
setEffRotateKey( spep_5 + 126, last_f, 0 );
setEffAlphaKey( spep_5 + 0, last_f, 255 );
setEffAlphaKey( spep_5 + 126, last_f, 255 );

-- ** 音 ** --
--爆発1
playSe( spep_5 + 10, 1159 );
setSeVolume( spep_5 + 10, 1159, 87 );

--爆発2
playSe( spep_5 + 10, 1024 );
setSeVolume( spep_5 + 10, 1024, 85 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 126, 0, 10, 10, 10, 230 );  --黒　背景       -- ベース暗め　背景

-- ** ホワイトフェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 8 );
endPhase( spep_5 + 116 );

end