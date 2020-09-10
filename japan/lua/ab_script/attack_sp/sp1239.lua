--ボタマゲッタ_ボルケーノエクスプロージョン

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
SP_01 = 152544; --待機
SP_02 = 152545; --気弾発射
SP_03 = 152546; --着弾

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
-- 最初のシーン(88F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
taiki = entryEffectLife( spep_0 + 0, SP_01, 88, 0, -1, 0, 0, 0 );  --最初のシーン(ef_001)
setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, taiki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, taiki, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 87, taiki, 255 );
setEffAlphaKey( spep_0 + 88, taiki, 0 );
setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 88, taiki, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 88, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 88, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 88, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 88, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 88, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 2, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 2, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 70, 10 );

setEffMoveKey( spep_0 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 86, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 86, ctgogo, 0.7, 0.7 );

setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 86, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 86, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 16, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射シーン(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_2 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 116, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 115, hassha, 255 );
setEffAlphaKey( spep_2 + 116, hassha, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0,  921, 116, 0x80, -1, 0, 0.1, -0.1 );
setEffMoveKey( spep_2 + 0, ryusen1, 0.1, -0.1 , 0 );
setEffMoveKey( spep_2 + 116, ryusen1, 0.1, -0.1 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1.2, 1.23 );
setEffScaleKey( spep_2 + 116, ryusen1, 1.2, 1.23 );

setEffRotateKey( spep_2 + 0, ryusen1, 179.4 );
setEffRotateKey( spep_2 + 116, ryusen1, 179.4 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 115, ryusen1, 255 );
setEffAlphaKey( spep_2 + 116, ryusen1, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 + 38,  10012, 78, 0x100, -1, 0, 16, 179.9 );  --ズオッ
setEffShake( spep_2 + 38, ctzuo, 78, 25 );

--setEffMoveKey( spep_2 + 34, ctzuo, 16, 179.9 , 0 );
--setEffMoveKey( spep_2 + 35, ctzuo, 9.5, 205.6 , 0 );
--setEffMoveKey( spep_2 + 36, ctzuo, 9.5, 205.6 , 0 );
--setEffMoveKey( spep_2 + 37, ctzuo, -9.4, 239.8 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, -9.4, 239.8 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, -8.4, 259.8 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, -22.5, 269.5 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, -8.9, 258.8 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, -23.6, 268.7 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, -9.5, 257.8 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, -24.7, 268 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, -10.1, 256.9 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, -25.6, 267.3 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, -10.7, 255.9 , 0 );
setEffMoveKey( spep_2 + 58, ctzuo, -33.4, 266.6 , 0 );
setEffMoveKey( spep_2 + 60, ctzuo, -18.8, 255 , 0 );
setEffMoveKey( spep_2 + 62, ctzuo, -36, 265.9 , 0 );
setEffMoveKey( spep_2 + 64, ctzuo, -20.9, 254.1 , 0 );
setEffMoveKey( spep_2 + 66, ctzuo, -38.6, 265.1 , 0 );
setEffMoveKey( spep_2 + 68, ctzuo, -22.9, 253.2 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, -41.1, 264.3 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, -25.1, 252.2 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, -43.6, 263.7 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, -27.1, 251.3 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, -46.2, 263 , 0 );
setEffMoveKey( spep_2 + 80, ctzuo, -29.1, 250.4 , 0 );
setEffMoveKey( spep_2 + 82, ctzuo, -48.7, 262.3 , 0 );
setEffMoveKey( spep_2 + 84, ctzuo, -31.2, 249.6 , 0 );
setEffMoveKey( spep_2 + 86, ctzuo, -51.3, 261.4 , 0 );
setEffMoveKey( spep_2 + 88, ctzuo, -33.2, 248.5 , 0 );
setEffMoveKey( spep_2 + 90, ctzuo, -53.8, 260.7 , 0 );
setEffMoveKey( spep_2 + 92, ctzuo, -35.3, 247.6 , 0 );
setEffMoveKey( spep_2 + 94, ctzuo, -56.4, 260.1 , 0 );
setEffMoveKey( spep_2 + 96, ctzuo, -37.4, 246.7 , 0 );
setEffMoveKey( spep_2 + 98, ctzuo, -58.9, 259.4 , 0 );
setEffMoveKey( spep_2 + 100, ctzuo, -39.4, 245.8 , 0 );
setEffMoveKey( spep_2 + 102, ctzuo, -61.5, 258.6 , 0 );
setEffMoveKey( spep_2 + 104, ctzuo, -41.5, 245 , 0 );
setEffMoveKey( spep_2 + 106, ctzuo, -64.1, 257.9 , 0 );
setEffMoveKey( spep_2 + 108, ctzuo, 19.6, 259.5 , 0 );
setEffMoveKey( spep_2 + 110, ctzuo, 50.4, 295.5 , 0 );
setEffMoveKey( spep_2 + 112, ctzuo, 143.3, 288.6 , 0 );
setEffMoveKey( spep_2 + 114, ctzuo, 164.7, 333.1 , 0 );
setEffMoveKey( spep_2 + 116, ctzuo, 222, 351.9 , 0 );

--setEffScaleKey( spep_2 + 34, ctzuo, 0.3, 0.3 );
--setEffScaleKey( spep_2 + 35, ctzuo, 0.98, 0.98 );
--setEffScaleKey( spep_2 + 36, ctzuo, 0.98, 0.98 );
--setEffScaleKey( spep_2 + 37, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_2 + 38, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_2 + 40, ctzuo, 1.9, 1.9 );
setEffScaleKey( spep_2 + 56, ctzuo, 1.9, 1.9 );
setEffScaleKey( spep_2 + 106, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_2 + 116, ctzuo, 6.4, 6.4 );

--setEffRotateKey( spep_2 + 34, ctzuo, 16 );
setEffRotateKey( spep_2 + 38, ctzuo, 16 );
setEffRotateKey( spep_2 + 116, ctzuo, 16 );

--setEffAlphaKey( spep_2 + 34, ctzuo, 255 );
setEffAlphaKey( spep_2 + 38, ctzuo, 255 );
setEffAlphaKey( spep_2 + 106, ctzuo, 255 );
setEffAlphaKey( spep_2 + 108, ctzuo, 204 );
setEffAlphaKey( spep_2 + 110, ctzuo, 153 );
setEffAlphaKey( spep_2 + 112, ctzuo, 102 );
setEffAlphaKey( spep_2 + 114, ctzuo, 60 );
setEffAlphaKey( spep_2 + 115, ctzuo, 0 );
setEffAlphaKey( spep_2 + 116, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_2 + 38, 1002 );  --ズオッ

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

------------------------------------------------------
-- 着弾シーン(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan = entryEffectLife( spep_3 + 0, SP_03, 98, 0x100, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, tyakudan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tyakudan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan, 0 );
setEffRotateKey( spep_3 + 98, tyakudan, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan, 255 );
setEffAlphaKey( spep_3 + 97, tyakudan, 255 );
setEffAlphaKey( spep_3 + 98, tyakudan, 0 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 + 0,  921, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_3 + 96, ryusen2, 1, 1 );

setEffRotateKey( spep_3 + 0, ryusen2, 0 );
setEffRotateKey( spep_3 + 96, ryusen2, 0 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 96, ryusen2, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_3 + 0,  10014, 96, 0x100, -1, 0, 58.1, 358 );  --ズドドドッ
setEffShake( spep_3 + 0, ctzudo, 96, 20 );

setEffMoveKey( spep_3 + 0, ctzudo, 58.1, 348 , 0 );
setEffMoveKey( spep_3 + 96, ctzudo, 58.1, 348 , 0 );

setEffScaleKey( spep_3 + 0, ctzudo, 3, 3 );
setEffScaleKey( spep_3 + 96, ctzudo, 3, 3 );

setEffRotateKey( spep_3 + 0, ctzudo, 78 );
setEffRotateKey( spep_3 + 96, ctzudo, 78 );

setEffAlphaKey( spep_3 + 0, ctzudo, 255 );
setEffAlphaKey( spep_3 + 96, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 86, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );  --ガード
changeAnime( spep_3 + 57, 1, 108 );  --ダメージ(吹き飛び)
changeAnime( spep_3 + 58, 1, 108 );

setMoveKey( spep_3 + 0, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_3 + 2, 1, 247, -28.7 , 0 );
setMoveKey( spep_3 + 4, 1, 238, -35.4 , 0 );
setMoveKey( spep_3 + 6, 1, 245, -30.1 , 0 );
setMoveKey( spep_3 + 8, 1, 235.9, -36.9 , 0 );
setMoveKey( spep_3 + 10, 1, 242.8, -31.7 , 0 );
setMoveKey( spep_3 + 12, 1, 233.6, -38.5 , 0 );
setMoveKey( spep_3 + 14, 1, 240.3, -33.4 , 0 );
setMoveKey( spep_3 + 16, 1, 231, -40.3 , 0 );
setMoveKey( spep_3 + 18, 1, 237.6, -35.3 , 0 );
setMoveKey( spep_3 + 20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_3 + 22, 1, 234.6, -37.4 , 0 );
setMoveKey( spep_3 + 24, 1, 225, -44.5 , 0 );
setMoveKey( spep_3 + 26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_3 + 28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_3 + 30, 1, 228, -42 , 0 );
setMoveKey( spep_3 + 32, 1, 218.2, -49.3 , 0 );
setMoveKey( spep_3 + 34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_3 + 36, 1, 214.3, -52 , 0 );
setMoveKey( spep_3 + 38, 1, 220.4, -47.3 , 0 );
setMoveKey( spep_3 + 40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_3 + 42, 1, 216.2, -50.3 , 0 );
setMoveKey( spep_3 + 44, 1, 206, -57.8 , 0 );
setMoveKey( spep_3 + 46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_3 + 48, 1, 201.5, -55.9 , 0 );
setMoveKey( spep_3 + 50, 1, 207.1, -53.6 , 0 );
setMoveKey( spep_3 + 52, 1, 196.7, -54.3 , 0 );
setMoveKey( spep_3 + 54, 1, 202.2, -55 , 0 );
setMoveKey( spep_3 + 56, 1, 191.7, -56.8 , 0 );
setMoveKey( spep_3 + 57, 1, 191.7, -56.8 , 0 );  --被弾タイミング
setMoveKey( spep_3 + 58, 1, 197.1, -56.6 , 0 );
setMoveKey( spep_3 + 59, 1, 253.1, -56.6 , 0  );
setMoveKey( spep_3 + 60, 1, 253.1, -56.6 , 0  );
setMoveKey( spep_3 + 62, 1, 197.1, -56.6 , 0  );
setMoveKey( spep_3 + 64, 1, 95.7, -55.6 , 0 );
setMoveKey( spep_3 + 66, 1, 95.7, -52.1 , 0 );
setMoveKey( spep_3 + 68, 1, 97.5, -53.8 , 0 );
setMoveKey( spep_3 + 70, 1, 121.8, -52.6 , 0 );
setMoveKey( spep_3 + 72, 1, 136.6, -55.6 , 0 );
setMoveKey( spep_3 + 74, 1, 173.9, -45.6 , 0 );
setMoveKey( spep_3 + 76, 1, 201.8, -46.8 , 0 );
setMoveKey( spep_3 + 78, 1, 252.1, -35.1 , 0 );
setMoveKey( spep_3 + 80, 1, 293, -34.6 , 0 );
setMoveKey( spep_3 + 86, 1, 293, -34.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 + 2, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 4, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 6, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 8, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 10, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 12, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 14, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 16, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 18, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 22, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 24, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 26, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 30, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 32, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 34, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 36, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 38, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 40, 1, 1.34, 1.34);
setScaleKey( spep_3 + 42, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 44, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 46, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 48, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 50, 1, 1.87, 1.87 );
setScaleKey( spep_3 + 52, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 54, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 56, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 57, 1, 2.2, 2.2 );  --被弾タイミング
setScaleKey( spep_3 + 58, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 59, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 60, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 62, 1, 1.50, 1.50 );
setScaleKey( spep_3 + 64, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 66, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 68, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 70, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 72, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 74, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 78, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 80, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 86, 1, 0.77, 0.77 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 56, 1, 0 );
setRotateKey( spep_3 + 57, 1, 23.7 );  --被弾タイミング
setRotateKey( spep_3 + 58, 1, 23.7 );
setRotateKey( spep_3 + 59, 1, -16 );
setRotateKey( spep_3 + 60, 1, -16 );
setRotateKey( spep_3 + 62, 1, 0 );
setRotateKey( spep_3 + 80, 1, 0 );
setRotateKey( spep_3 + 86, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SEzudo = playSeLife( spep_3 + 0, 1044 );  --ズドドド
stopSe( spep_3 + 94, SEzudo, 4 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 70, 16, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 28; --エンドフェイズのフレーム数を置き換える
stopSe( spep_3 + 28, SEzudo, 0 );

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

------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_4 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 最初のシーン(88F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
taiki = entryEffectLife( spep_0 + 0, SP_01, 88, 0, -1, 0, 0, 0 );  --最初のシーン(ef_001)
setEffMoveKey( spep_0 + 0, taiki, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, taiki, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, taiki, 1.0, 1.0 );
setEffScaleKey( spep_0 + 88, taiki, 1.0, 1.0 );
setEffAlphaKey( spep_0 + 0, taiki, 255 );
setEffAlphaKey( spep_0 + 87, taiki, 255 );
setEffAlphaKey( spep_0 + 88, taiki, 0 );
setEffRotateKey( spep_0 + 0, taiki, 0 );
setEffRotateKey( spep_0 + 88, taiki, 0 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 88, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 88, 25 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 88, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1.2, 1.2 );
setEffScaleKey( spep_0 + 88, shuchusen1, 1.2, 1.2 );

setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 88, shuchusen1, 0 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 88, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 2, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 2, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16,  190006, 70, 0x100, -1, 0, -8.5, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16, ctgogo, 70, 10 );

setEffMoveKey( spep_0 + 16, ctgogo, -9.9, 521.8 , 0 );
setEffMoveKey( spep_0 + 86, ctgogo, -9.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 86, ctgogo, -0.7, 0.7 );

setEffRotateKey( spep_0 + 16, ctgogo, 0 );
setEffRotateKey( spep_0 + 86, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16, ctgogo, 255 );
setEffAlphaKey( spep_0 + 86, ctgogo, 255 );

-- ** 音 ** --
playSe( spep_0 + 16, SE_04 );  --ゴゴゴ

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 88, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 88;

--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen2, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen2, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen2, 0 );
setEffRotateKey( spep_1 + 90, shuchusen2, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen2, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射シーン(116F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffectLife( spep_2 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --発射(ef_002)
setEffMoveKey( spep_2 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, hassha, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, hassha, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hassha, 0 );
setEffRotateKey( spep_2 + 116, hassha, 0 );
setEffAlphaKey( spep_2 + 0, hassha, 255 );
setEffAlphaKey( spep_2 + 115, hassha, 255 );
setEffAlphaKey( spep_2 + 116, hassha, 0 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 0,  921, 116, 0x80, -1, 0, 0.1, -0.1 );
setEffMoveKey( spep_2 + 0, ryusen1, 0.1, -0.1 , 0 );
setEffMoveKey( spep_2 + 116, ryusen1, 0.1, -0.1 , 0 );

setEffScaleKey( spep_2 + 0, ryusen1, 1.2, 1.23 );
setEffScaleKey( spep_2 + 116, ryusen1, 1.2, 1.23 );

setEffRotateKey( spep_2 + 0, ryusen1, 179.4 );
setEffRotateKey( spep_2 + 116, ryusen1, 179.4 );

setEffAlphaKey( spep_2 + 0, ryusen1, 255 );
setEffAlphaKey( spep_2 + 115, ryusen1, 255 );
setEffAlphaKey( spep_2 + 116, ryusen1, 0 );

-- ** 書き文字エントリー ** --
ctzuo = entryEffectLife( spep_2 + 38,  10012, 78, 0x100, -1, 0, 16, 179.9 );  --ズオッ
setEffShake( spep_2 + 38, ctzuo, 78, 25 );

--setEffMoveKey( spep_2 + 34, ctzuo, 16, 179.9 , 0 );
--setEffMoveKey( spep_2 + 35, ctzuo, 9.5, 205.6 , 0 );
--setEffMoveKey( spep_2 + 36, ctzuo, 9.5, 205.6 , 0 );
--setEffMoveKey( spep_2 + 37, ctzuo, -9.4, 239.8 , 0 );
setEffMoveKey( spep_2 + 38, ctzuo, -9.4, 239.8 , 0 );
setEffMoveKey( spep_2 + 40, ctzuo, -8.4, 259.8 , 0 );
setEffMoveKey( spep_2 + 42, ctzuo, -22.5, 269.5 , 0 );
setEffMoveKey( spep_2 + 44, ctzuo, -8.9, 258.8 , 0 );
setEffMoveKey( spep_2 + 46, ctzuo, -23.6, 268.7 , 0 );
setEffMoveKey( spep_2 + 48, ctzuo, -9.5, 257.8 , 0 );
setEffMoveKey( spep_2 + 50, ctzuo, -24.7, 268 , 0 );
setEffMoveKey( spep_2 + 52, ctzuo, -10.1, 256.9 , 0 );
setEffMoveKey( spep_2 + 54, ctzuo, -25.6, 267.3 , 0 );
setEffMoveKey( spep_2 + 56, ctzuo, -10.7, 255.9 , 0 );
setEffMoveKey( spep_2 + 58, ctzuo, -33.4, 266.6 , 0 );
setEffMoveKey( spep_2 + 60, ctzuo, -18.8, 255 , 0 );
setEffMoveKey( spep_2 + 62, ctzuo, -36, 265.9 , 0 );
setEffMoveKey( spep_2 + 64, ctzuo, -20.9, 254.1 , 0 );
setEffMoveKey( spep_2 + 66, ctzuo, -38.6, 265.1 , 0 );
setEffMoveKey( spep_2 + 68, ctzuo, -22.9, 253.2 , 0 );
setEffMoveKey( spep_2 + 70, ctzuo, -41.1, 264.3 , 0 );
setEffMoveKey( spep_2 + 72, ctzuo, -25.1, 252.2 , 0 );
setEffMoveKey( spep_2 + 74, ctzuo, -43.6, 263.7 , 0 );
setEffMoveKey( spep_2 + 76, ctzuo, -27.1, 251.3 , 0 );
setEffMoveKey( spep_2 + 78, ctzuo, -46.2, 263 , 0 );
setEffMoveKey( spep_2 + 80, ctzuo, -29.1, 250.4 , 0 );
setEffMoveKey( spep_2 + 82, ctzuo, -48.7, 262.3 , 0 );
setEffMoveKey( spep_2 + 84, ctzuo, -31.2, 249.6 , 0 );
setEffMoveKey( spep_2 + 86, ctzuo, -51.3, 261.4 , 0 );
setEffMoveKey( spep_2 + 88, ctzuo, -33.2, 248.5 , 0 );
setEffMoveKey( spep_2 + 90, ctzuo, -53.8, 260.7 , 0 );
setEffMoveKey( spep_2 + 92, ctzuo, -35.3, 247.6 , 0 );
setEffMoveKey( spep_2 + 94, ctzuo, -56.4, 260.1 , 0 );
setEffMoveKey( spep_2 + 96, ctzuo, -37.4, 246.7 , 0 );
setEffMoveKey( spep_2 + 98, ctzuo, -58.9, 259.4 , 0 );
setEffMoveKey( spep_2 + 100, ctzuo, -39.4, 245.8 , 0 );
setEffMoveKey( spep_2 + 102, ctzuo, -61.5, 258.6 , 0 );
setEffMoveKey( spep_2 + 104, ctzuo, -41.5, 245 , 0 );
setEffMoveKey( spep_2 + 106, ctzuo, -64.1, 257.9 , 0 );
setEffMoveKey( spep_2 + 108, ctzuo, 19.6, 259.5 , 0 );
setEffMoveKey( spep_2 + 110, ctzuo, 50.4, 295.5 , 0 );
setEffMoveKey( spep_2 + 112, ctzuo, 143.3, 288.6 , 0 );
setEffMoveKey( spep_2 + 114, ctzuo, 164.7, 333.1 , 0 );
setEffMoveKey( spep_2 + 116, ctzuo, 222, 351.9 , 0 );

--setEffScaleKey( spep_2 + 34, ctzuo, 0.3, 0.3 );
--setEffScaleKey( spep_2 + 35, ctzuo, 0.98, 0.98 );
--setEffScaleKey( spep_2 + 36, ctzuo, 0.98, 0.98 );
--setEffScaleKey( spep_2 + 37, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_2 + 38, ctzuo, 1.5, 1.5 );
setEffScaleKey( spep_2 + 40, ctzuo, 1.9, 1.9 );
setEffScaleKey( spep_2 + 56, ctzuo, 1.9, 1.9 );
setEffScaleKey( spep_2 + 106, ctzuo, 2.5, 2.5 );
setEffScaleKey( spep_2 + 116, ctzuo, 6.4, 6.4 );

--setEffRotateKey( spep_2 + 34, ctzuo, 16 );
setEffRotateKey( spep_2 + 38, ctzuo, 16 );
setEffRotateKey( spep_2 + 116, ctzuo, 16 );

--setEffAlphaKey( spep_2 + 34, ctzuo, 255 );
setEffAlphaKey( spep_2 + 38, ctzuo, 255 );
setEffAlphaKey( spep_2 + 106, ctzuo, 255 );
setEffAlphaKey( spep_2 + 108, ctzuo, 204 );
setEffAlphaKey( spep_2 + 110, ctzuo, 153 );
setEffAlphaKey( spep_2 + 112, ctzuo, 102 );
setEffAlphaKey( spep_2 + 114, ctzuo, 60 );
setEffAlphaKey( spep_2 + 115, ctzuo, 0 );
setEffAlphaKey( spep_2 + 116, ctzuo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
playSe( spep_2 + 38, 1002 );  --ズオッ

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

------------------------------------------------------
-- 着弾シーン(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudan = entryEffectLife( spep_3 + 0, SP_03, 98, 0x100, -1, 0, 0, 0 );  --着弾(ef_003)
setEffMoveKey( spep_3 + 0, tyakudan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, tyakudan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tyakudan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, tyakudan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tyakudan, 0 );
setEffRotateKey( spep_3 + 98, tyakudan, 0 );
setEffAlphaKey( spep_3 + 0, tyakudan, 255 );
setEffAlphaKey( spep_3 + 97, tyakudan, 255 );
setEffAlphaKey( spep_3 + 98, tyakudan, 0 );

-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_3 + 0,  921, 96, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen2, 1, 1 );
setEffScaleKey( spep_3 + 96, ryusen2, 1, 1 );

setEffRotateKey( spep_3 + 0, ryusen2, 0 );
setEffRotateKey( spep_3 + 96, ryusen2, 0 );

setEffAlphaKey( spep_3 + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 + 96, ryusen2, 255 );

-- ** 書き文字エントリー ** --
ctzudo = entryEffectLife( spep_3 + 0,  10014, 96, 0x100, -1, 0, 58.1, 358 );  --ズドドドッ
setEffShake( spep_3 + 0, ctzudo, 96, 20 );

setEffMoveKey( spep_3 + 0, ctzudo, 58.1, 348 , 0 );
setEffMoveKey( spep_3 + 96, ctzudo, 58.1, 348 , 0 );

setEffScaleKey( spep_3 + 0, ctzudo, 3, 3 );
setEffScaleKey( spep_3 + 96, ctzudo, 3, 3 );

setEffRotateKey( spep_3 + 0, ctzudo, 11 );
setEffRotateKey( spep_3 + 96, ctzudo, 11 );

setEffAlphaKey( spep_3 + 0, ctzudo, 255 );
setEffAlphaKey( spep_3 + 96, ctzudo, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 86, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );  --ガード
changeAnime( spep_3 + 57, 1, 108 );  --ダメージ(吹き飛び)
changeAnime( spep_3 + 58, 1, 108 );

setMoveKey( spep_3 + 0, 1, 237.9, -38.1 , 0 );
setMoveKey( spep_3 + 2, 1, 247, -28.7 , 0 );
setMoveKey( spep_3 + 4, 1, 238, -35.4 , 0 );
setMoveKey( spep_3 + 6, 1, 245, -30.1 , 0 );
setMoveKey( spep_3 + 8, 1, 235.9, -36.9 , 0 );
setMoveKey( spep_3 + 10, 1, 242.8, -31.7 , 0 );
setMoveKey( spep_3 + 12, 1, 233.6, -38.5 , 0 );
setMoveKey( spep_3 + 14, 1, 240.3, -33.4 , 0 );
setMoveKey( spep_3 + 16, 1, 231, -40.3 , 0 );
setMoveKey( spep_3 + 18, 1, 237.6, -35.3 , 0 );
setMoveKey( spep_3 + 20, 1, 228.1, -42.3 , 0 );
setMoveKey( spep_3 + 22, 1, 234.6, -37.4 , 0 );
setMoveKey( spep_3 + 24, 1, 225, -44.5 , 0 );
setMoveKey( spep_3 + 26, 1, 231.4, -39.6 , 0 );
setMoveKey( spep_3 + 28, 1, 221.7, -46.8 , 0 );
setMoveKey( spep_3 + 30, 1, 228, -42 , 0 );
setMoveKey( spep_3 + 32, 1, 218.2, -49.3 , 0 );
setMoveKey( spep_3 + 34, 1, 224.3, -44.6 , 0 );
setMoveKey( spep_3 + 36, 1, 214.3, -52 , 0 );
setMoveKey( spep_3 + 38, 1, 220.4, -47.3 , 0 );
setMoveKey( spep_3 + 40, 1, 210.3, -54.8 , 0 );
setMoveKey( spep_3 + 42, 1, 216.2, -50.3 , 0 );
setMoveKey( spep_3 + 44, 1, 206, -57.8 , 0 );
setMoveKey( spep_3 + 46, 1, 211.8, -53.3 , 0 );
setMoveKey( spep_3 + 48, 1, 201.5, -55.9 , 0 );
setMoveKey( spep_3 + 50, 1, 207.1, -53.6 , 0 );
setMoveKey( spep_3 + 52, 1, 196.7, -54.3 , 0 );
setMoveKey( spep_3 + 54, 1, 202.2, -55 , 0 );
setMoveKey( spep_3 + 56, 1, 191.7, -56.8 , 0 );
setMoveKey( spep_3 + 57, 1, 191.7, -56.8 , 0 );  --被弾タイミング
setMoveKey( spep_3 + 58, 1, 197.1, -56.6 , 0 );
setMoveKey( spep_3 + 59, 1, 253.1, -56.6 , 0  );
setMoveKey( spep_3 + 60, 1, 253.1, -56.6 , 0  );
setMoveKey( spep_3 + 62, 1, 197.1, -56.6 , 0  );
setMoveKey( spep_3 + 64, 1, 95.7, -55.6 , 0 );
setMoveKey( spep_3 + 66, 1, 95.7, -52.1 , 0 );
setMoveKey( spep_3 + 68, 1, 97.5, -53.8 , 0 );
setMoveKey( spep_3 + 70, 1, 121.8, -52.6 , 0 );
setMoveKey( spep_3 + 72, 1, 136.6, -55.6 , 0 );
setMoveKey( spep_3 + 74, 1, 173.9, -45.6 , 0 );
setMoveKey( spep_3 + 76, 1, 201.8, -46.8 , 0 );
setMoveKey( spep_3 + 78, 1, 252.1, -35.1 , 0 );
setMoveKey( spep_3 + 80, 1, 293, -34.6 , 0 );

setScaleKey( spep_3 + 0, 1, 1, 1 );
setScaleKey( spep_3 + 2, 1, 1.01, 1.01 );
setScaleKey( spep_3 + 4, 1, 1.02, 1.02 );
setScaleKey( spep_3 + 6, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 8, 1, 1.04, 1.04 );
setScaleKey( spep_3 + 10, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 12, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 14, 1, 1.08, 1.08 );
setScaleKey( spep_3 + 16, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 18, 1, 1.1, 1.1 );
setScaleKey( spep_3 + 20, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 22, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 24, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 26, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_3 + 30, 1, 1.2, 1.2 );
setScaleKey( spep_3 + 32, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 34, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 36, 1, 1.26, 1.26 );
setScaleKey( spep_3 + 38, 1, 1.28, 1.28 );
setScaleKey( spep_3 + 40, 1, 1.34, 1.34);
setScaleKey( spep_3 + 42, 1, 1.39, 1.39 );
setScaleKey( spep_3 + 44, 1, 1.52, 1.52 );
setScaleKey( spep_3 + 46, 1, 1.61, 1.61 );
setScaleKey( spep_3 + 48, 1, 1.76, 1.76 );
setScaleKey( spep_3 + 50, 1, 1.87, 1.87 );
setScaleKey( spep_3 + 52, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 54, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 56, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 57, 1, 2.2, 2.2 );  --被弾タイミング
setScaleKey( spep_3 + 58, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 59, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 60, 1, 2.2, 2.2 );
setScaleKey( spep_3 + 62, 1, 1.50, 1.50 );
setScaleKey( spep_3 + 64, 1, 1.37, 1.37 );
setScaleKey( spep_3 + 66, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 68, 1, 1.29, 1.29 );
setScaleKey( spep_3 + 70, 1, 1.24, 1.24 );
setScaleKey( spep_3 + 72, 1, 1.17, 1.17 );
setScaleKey( spep_3 + 74, 1, 1.09, 1.09 );
setScaleKey( spep_3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_3 + 78, 1, 0.89, 0.89 );
setScaleKey( spep_3 + 80, 1, 0.77, 0.77 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 56, 1, 0 );
setRotateKey( spep_3 + 57, 1, 23.7 );  --被弾タイミング
setRotateKey( spep_3 + 58, 1, 23.7 );
setRotateKey( spep_3 + 59, 1, -16 );
setRotateKey( spep_3 + 60, 1, -16 );
setRotateKey( spep_3 + 62, 1, 0 );
setRotateKey( spep_3 + 80, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 98, 0, 0, 0, 0, 180 );  --薄い黒　背景

-- ** 音 ** --
SEzudo = playSeLife( spep_3 + 0, 1044 );  --ズドドド
stopSe( spep_3 + 94, SEzudo, 4 );

-- ** ホワイトフェード ** --
entryFade( spep_3 + 70, 16, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_3 + 28; --エンドフェイズのフレーム数を置き換える
stopSe( spep_3 + 28, SEzudo, 0 );

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

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 100, bakuhatsu, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen3, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen3, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen3, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen3, 0 );
setEffRotateKey( spep_4 + 46, shuchusen3, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen3, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen3, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen3, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen3, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen3, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen3, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen3, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen3, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen3, 0 );

shuchusen4 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 100, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 100, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 100, 1, -45.3, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 1, 1, 0.2, 0.2 );
setScaleKey( spep_4 + 2, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 3, 1, 0.25, 0.25 );
setScaleKey( spep_4 + 4, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 5, 1, 0.46, 0.46 );
setScaleKey( spep_4 + 6, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 7, 1, 0.55, 0.55 );
setScaleKey( spep_4 + 8, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 9, 1, 0.71, 0.71 );
setScaleKey( spep_4 + 10, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 11, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 12, 1, 1.1, 1.1 );  --画面にぶつかる
setScaleKey( spep_4 + 13, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 14, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 15, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 16, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 17, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 18, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 19, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 21, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 22, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 23, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 24, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 25, 1, 1.1, 1.1 );
setScaleKey( spep_4 + 26, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 100, 1, -40 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_10 );  --爆発音
playSe( spep_4 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 10 );
entryFade( spep_4 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_4 + 100 );

end


