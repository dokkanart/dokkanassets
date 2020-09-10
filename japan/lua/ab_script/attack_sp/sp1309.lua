--ネイル_ミスティックフラッシャー

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
SP_01 = 153753 --気溜め
SP_02 = 153754 --攻撃
SP_03 = 153755 --攻撃背景
SP_04 = 153756 --爆破
SP_05 = 153757 --波動
SP_06 = 153758 --波動引き
SP_07 = 153765 --背景


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
-- 気溜め(150F)
------------------------------------------------------
spep_0 = 0;

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0, 906, 150, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_0 + 0, shuchusen, 150, 20 );
setEffMoveKey( spep_0 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen, 1.5, 1.5 );
setEffScaleKey( spep_0 + 150, shuchusen, 1.5, 1.5 );
setEffRotateKey( spep_0 + 0, shuchusen, 0 );
setEffRotateKey( spep_0 + 150, shuchusen, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen, 255 );
setEffAlphaKey( spep_0 + 147, shuchusen, 0 );
setEffAlphaKey( spep_0 + 150, shuchusen, 0 );

-- ** エフェクト等 ** --
kitame = entryEffectLife( spep_0 + 0, SP_01, 150, 0x80, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, kitame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, kitame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kitame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, kitame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kitame, 0 );
setEffRotateKey( spep_0 + 150, kitame, 0 );
setEffAlphaKey( spep_0 + 0, kitame, 255 );
setEffAlphaKey( spep_0 + 146, kitame, 255 );
setEffAlphaKey( spep_0 + 147, kitame, 0 );
setEffAlphaKey( spep_0 + 150, kitame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16+ 40,  190006, 68, 0x100, -1, 0, 100.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16+ 40, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 16+ 40, ctgogo, 100.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 84+ 40, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16+ 40, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 76+ 40, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_0 + 78+ 40, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80+ 40, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_0 + 82+ 40, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_0 + 84+ 40, ctgogo, 1.69, 1.69 );

setEffRotateKey( spep_0 + 16+ 40, ctgogo, 0 );
setEffRotateKey( spep_0 + 84+ 40, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16+ 40, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84+ 40, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
playSe( spep_0 +38,  1035);
playSe( spep_0 + 56, 1018 );  --カットイン
--se = playSe( spep_0 +58,  55);
--stopSe( spep_0+146,  se,  0);

entryFade( spep_0 + 138, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 格闘(176F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 +48-3, 906, 72, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 72, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.4, 1.75 );
setEffScaleKey( spep_2 + 120, shuchusen2, 1.4, 1.75 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 120, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 48 -3 , shuchusen2, 255 );
setEffAlphaKey( spep_2 + 60 -3,  shuchusen2, 255 );
setEffAlphaKey( spep_2 + 61 -3,  shuchusen2, 0 );
setEffAlphaKey( spep_2 + 103 -3,  shuchusen2, 0 );
setEffAlphaKey( spep_2 + 104 -3,  shuchusen2, 255 );
setEffAlphaKey( spep_2 + 118 -3,  shuchusen2, 255 );
setEffAlphaKey( spep_2 + 119 -3,  shuchusen2, 0 );
setEffAlphaKey( spep_2 + 120 -3,  shuchusen2, 0 );

-- ** 書き文字 ** --
ctbaki = entryEffectLife( spep_2 -3 + 48,  10020, 8, 0x100, -1, 0, 7.3, 277.5 );  --バキッ
setEffMoveKey( spep_2 -3 + 48, ctbaki, 7.3, 277.5 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbaki, 37.7, 294.2 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctbaki, 34.2, 324.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbaki, 33.7, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctbaki, 30.7, 305.8 , 0 );

setEffScaleKey( spep_2 -3 + 48, ctbaki, 0.7, 0.7 );
setEffScaleKey( spep_2 -3 + 50, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_2 -3 + 52, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2 -3 + 54, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2 -3 + 56, ctbaki, 1, 1 );

setEffRotateKey( spep_2 -3 + 48, ctbaki, -18.8 );
setEffRotateKey( spep_2 -3 + 50, ctbaki, -18.8 );
setEffRotateKey( spep_2 -3 + 52, ctbaki, -13 );
setEffRotateKey( spep_2 -3 + 54, ctbaki, -18.8 );
setEffRotateKey( spep_2 -3 + 56, ctbaki, -32.1 );

setEffAlphaKey( spep_2 -3 + 48, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 56, ctbaki, 0 );

ctdon = entryEffectLife( spep_2 -3 + 104,  10019, 10, 0x100, -1, 0, -5.6, 302.8 );  --ドンッ
setEffMoveKey( spep_2 -3 + 104, ctdon, -5.6, 302.8 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctdon, 11.8, 316.5 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctdon, 44.3, 327.8 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctdon, 50.1, 325.2 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdon, 38.6, 331.3 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdon, 22.4, 331.6 , 0 );

setEffScaleKey( spep_2 -3 + 104, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_2 -3 + 106, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_2 -3 + 108, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 -3 + 110, ctdon, 1.53, 1.53 );
setEffScaleKey( spep_2 -3 + 112, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_2 -3 + 114, ctdon, 1.57, 1.57 );

setEffRotateKey( spep_2 -3 + 104, ctdon, -0.8 );
setEffRotateKey( spep_2 -3 + 106, ctdon, -0.2 );
setEffRotateKey( spep_2 -3 + 108, ctdon, 0.3 );
setEffRotateKey( spep_2 -3 + 114, ctdon, 0.3 );

setEffAlphaKey( spep_2 -3 + 104, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 110, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 112, ctdon, 128 );
setEffAlphaKey( spep_2 -3 + 114, ctdon, 0 );

ctbaki2 = entryEffectLife( spep_2 -3  + 128,  10020, 36, 0x100, -1, 0, 176.8, 246 );  -- バキッ
setEffMoveKey( spep_2 -3  + 128, ctbaki2, 176.8, 246 , 0 );
setEffMoveKey( spep_2 -3  + 130, ctbaki2, 158.6, 267.6 , 0 );
setEffMoveKey( spep_2 -3  + 132, ctbaki2, 156.7, 291.7 , 0 );
setEffMoveKey( spep_2 -3  + 134, ctbaki2, 146.8, 296.1 , 0 );
setEffMoveKey( spep_2 -3  + 136, ctbaki2, 158.8, 293.3 , 0 );
setEffMoveKey( spep_2 -3  + 138, ctbaki2, 148.6, 289.8 , 0 );
setEffMoveKey( spep_2 -3  + 140, ctbaki2, 151.5, 298.5 , 0 );
setEffMoveKey( spep_2 -3  + 142, ctbaki2, 154.8, 288.5 , 0 );
setEffMoveKey( spep_2 -3  + 144, ctbaki2, 147.6, 291.1 , 0 );
setEffMoveKey( spep_2 -3  + 146, ctbaki2, 148.2, 301.7 , 0 );
setEffMoveKey( spep_2 -3  + 148, ctbaki2, 149.2, 292.9 , 0 );
setEffMoveKey( spep_2 -3  + 150, ctbaki2, 139.1, 305.6 , 0 );
setEffMoveKey( spep_2 -3  + 152, ctbaki2, 143.6, 301 , 0 );
setEffMoveKey( spep_2 -3  + 154, ctbaki2, 133.8, 304.4 , 0 );
setEffMoveKey( spep_2 -3  + 156, ctbaki2, 136.7, 302.9 , 0 );
setEffMoveKey( spep_2 -3  + 158, ctbaki2, 132.3, 311.4 , 0 );
setEffMoveKey( spep_2 -3  + 160, ctbaki2, 131, 306.3 , 0 );
setEffMoveKey( spep_2 -3  + 162, ctbaki2, 123, 314.8 , 0 );
setEffMoveKey( spep_2 -3  + 164, ctbaki2, 120.3, 316.8 , 0 );

setEffScaleKey( spep_2 -3  + 128, ctbaki2, 0.8, 0.8 );
setEffScaleKey( spep_2 -3  + 130, ctbaki2, 1.25, 1.25 );
setEffScaleKey( spep_2 -3  + 132, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_2 -3  + 134, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_2 -3  + 136, ctbaki2, 1.75, 1.75 );
setEffScaleKey( spep_2 -3  + 138, ctbaki2, 1.77, 1.77 );
setEffScaleKey( spep_2 -3  + 140, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2 -3  + 142, ctbaki2, 1.82, 1.82 );
setEffScaleKey( spep_2 -3  + 144, ctbaki2, 1.85, 1.85 );
setEffScaleKey( spep_2 -3  + 146, ctbaki2, 1.86, 1.86 );
setEffScaleKey( spep_2 -3  + 148, ctbaki2, 1.87, 1.87 );
setEffScaleKey( spep_2 -3  + 150, ctbaki2, 1.88, 1.88 );
setEffScaleKey( spep_2 -3  + 152, ctbaki2, 1.89, 1.89 );
setEffScaleKey( spep_2 -3  + 154, ctbaki2, 1.9, 1.9 );
setEffScaleKey( spep_2 -3  + 156, ctbaki2, 1.91, 1.91 );
setEffScaleKey( spep_2 -3  + 158, ctbaki2, 1.92, 1.92 );
setEffScaleKey( spep_2 -3  + 160, ctbaki2, 1.93, 1.93 );
setEffScaleKey( spep_2 -3  + 162, ctbaki2, 1.94, 1.94 );
setEffScaleKey( spep_2 -3  + 164, ctbaki2, 1.95, 1.95 );

setEffRotateKey( spep_2 -3  + 128, ctbaki2, -18 );
setEffRotateKey( spep_2 -3  + 164, ctbaki2, -18 );

setEffAlphaKey( spep_2 -3  + 128, ctbaki2, 255 );
setEffAlphaKey( spep_2 -3  + 144, ctbaki2, 255 );
setEffAlphaKey( spep_2 -3  + 146, ctbaki2, 230 );
setEffAlphaKey( spep_2 -3  + 148, ctbaki2, 204 );
setEffAlphaKey( spep_2 -3  + 150, ctbaki2, 179 );
setEffAlphaKey( spep_2 -3  + 152, ctbaki2, 153 );
setEffAlphaKey( spep_2 -3  + 154, ctbaki2, 128 );
setEffAlphaKey( spep_2 -3  + 156, ctbaki2, 102 );
setEffAlphaKey( spep_2 -3  + 158, ctbaki2, 77 );
setEffAlphaKey( spep_2 -3  + 160, ctbaki2, 51 );
setEffAlphaKey( spep_2 -3  + 162, ctbaki2, 25 );
setEffAlphaKey( spep_2 -3  + 164, ctbaki2, 0 );


-- ** エフェクト等 ** --
kakuto_f = entryEffectLife( spep_2 + 0, SP_02, 176, 0x100, -1, 0, 0, 0 );  -- 格闘(ef_002)
setEffMoveKey( spep_2 + 0, kakuto_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kakuto_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakuto_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kakuto_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakuto_f, 0 );
setEffRotateKey( spep_2 + 176, kakuto_f, 0 );
setEffAlphaKey( spep_2 + 0, kakuto_f, 255 );
setEffAlphaKey( spep_2 + 176, kakuto_f, 255 );

kakuto_b = entryEffectLife( spep_2 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  -- 格闘(ef_003)
setEffMoveKey( spep_2 + 0, kakuto_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kakuto_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakuto_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kakuto_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakuto_b, 0 );
setEffRotateKey( spep_2 + 176, kakuto_b, 0 );
setEffAlphaKey( spep_2 + 0, kakuto_b, 255 );
setEffAlphaKey( spep_2 + 176, kakuto_b, 255 );

haikei = entryEffectLife( spep_2 + 0, SP_07, 176, 0x80, -1, 0, 0, 0 );  -- 背景(ef_007)
setEffMoveKey( spep_2 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, haikei, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, haikei, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, haikei, 0 );
setEffRotateKey( spep_2 + 176, haikei, 0 );
setEffAlphaKey( spep_2 + 0, haikei, 255 );
setEffAlphaKey( spep_2 + 176, haikei, 255 );

-- ** 敵の動き ** --

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 158, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 1868.8, 22.1 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 1657.3, 21.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 1488.9, 21.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 1348.2, 21.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1227.1, 21.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 1121.2, 21.3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 1027.2, 21.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 942.7, 20.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 866.1, 20.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 796.2, 20.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 731.6, 20.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 671.7, 20.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 615.7, 20.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 562.5, 20.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 511.8, 20.2 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 1.56, 1.56 );

setRotateKey( spep_2 -3 + 0, 1, 0 );



-- ** 音 ** --
playSe(spep_2,  44);  --迫る


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setDisp( SP_dodge + 0, 1, 0 );

setMoveKey( SP_dodge + 0, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 4, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 6, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 10, 1, 463, 20.1 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.56, 1.56 );
setScaleKey( SP_dodge + 10, 1, 1.56, 1.56 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

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
changeAnime( spep_2 -3 + 48, 1, 106 );
changeAnime( spep_2 -3 + 104, 1, 108 );


setMoveKey( spep_2 -3 + 30, 1, 463, 20.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 425.2, 20 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 388.4, 19.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 352.2, 19.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 316.9, 19.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 282.2, 19.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 262.3, 19.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 242.8, 19.5 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 223.6, 19.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 216.7, 31.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 209.8, 39.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 187.8, 13.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 181.5, 35 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 171.6, 29.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 176.6, 13.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 183.5, 31 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 184.3, 16.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 190, 26.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 191.2, 17.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 194.4, 20.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 197.2, 20 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 199.9, 19.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 202.2, 19 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 204.6, 18.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 206.8, 18.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 208.8, 17.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 210.7, 17.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 212.6, 17.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 144, 9.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 122, 6.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 110, 4.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 102.7, 3.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 98, 2.8 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 95.1, 2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 93.1, 1.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 91.7, 0.9 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 90.6, 0.4 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 168.8, 38 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 173.5, 13.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 179.5, 43.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 172.6, 20.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 178.3, 44.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 184.3, 28.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 185.9, 39.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 188.6, 34.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 156.4, 103.6 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 149.3, 121.2 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 147, 126.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 146.5, 114.8 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 110.7, -16.4 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 194.8, -331.6 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 256.7, -440.7 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 292.1, -599.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 340.4, -670.6 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 363.8, -765.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 381.2, -820 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 412.6, -846.1 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 416.8, -904.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 436.9, -917.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 439.4, -957.7 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 450.2, -965.9 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 454.7, -986.4 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 459.9, -993.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 463.1, -1005.6 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 463.3, -1005.6 , 0 );

setScaleKey( spep_2 -3 + 47, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 48, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 50, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 52, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 54, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 103, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 104, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 106, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 108, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 110, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 126, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 128, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 130, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 132, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 134, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 136, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 138, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 140, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 142, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 144, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 146, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 148, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 150, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 152, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 154, 1, 1.8, 1.8 );

setRotateKey( spep_2 -3 + 47, 1, 0 );
setRotateKey( spep_2 -3 + 48, 1, -23 );
setRotateKey( spep_2 -3 + 50, 1, -22 );
setRotateKey( spep_2 -3 + 52, 1, -21.1 );
setRotateKey( spep_2 -3 + 54, 1, -20.3 );
setRotateKey( spep_2 -3 + 56, 1, -19.6 );
setRotateKey( spep_2 -3 + 58, 1, -19 );
setRotateKey( spep_2 -3 + 60, 1, -18.4 );
setRotateKey( spep_2 -3 + 62, 1, -17.9 );
setRotateKey( spep_2 -3 + 64, 1, -17.4 );
setRotateKey( spep_2 -3 + 66, 1, -17 );
setRotateKey( spep_2 -3 + 68, 1, -16.5 );
setRotateKey( spep_2 -3 + 70, 1, -16.1 );
setRotateKey( spep_2 -3 + 72, 1, -15.8 );
setRotateKey( spep_2 -3 + 74, 1, -15.4 );
setRotateKey( spep_2 -3 + 76, 1, -15.1 );
setRotateKey( spep_2 -3 + 78, 1, -14.8 );
setRotateKey( spep_2 -3 + 80, 1, -14.5 );
setRotateKey( spep_2 -3 + 82, 1, -14.2 );
setRotateKey( spep_2 -3 + 84, 1, -13.9 );
setRotateKey( spep_2 -3 + 86, 1, -13.7 );
setRotateKey( spep_2 -3 + 88, 1, -13.4 );
setRotateKey( spep_2 -3 + 90, 1, -13.2 );
setRotateKey( spep_2 -3 + 92, 1, -13 );
setRotateKey( spep_2 -3 + 94, 1, -12.8 );
setRotateKey( spep_2 -3 + 96, 1, -12.6 );
setRotateKey( spep_2 -3 + 98, 1, -12.4 );
setRotateKey( spep_2 -3 + 100, 1, -12.2 );
setRotateKey( spep_2 -3 + 103, 1, -12.1 );
setRotateKey( spep_2 -3 + 104, 1, -7.8 );
setRotateKey( spep_2 -3 + 106, 1, -10.5 );
setRotateKey( spep_2 -3 + 108, 1, -11.9 );
setRotateKey( spep_2 -3 + 110, 1, -12.8 );
setRotateKey( spep_2 -3 + 112, 1, -13.6 );
setRotateKey( spep_2 -3 + 114, 1, -14.2 );
setRotateKey( spep_2 -3 + 116, 1, -14.7 );
setRotateKey( spep_2 -3 + 118, 1, -15.1 );
setRotateKey( spep_2 -3 + 120, 1, -15.4 );
setRotateKey( spep_2 -3 + 122, 1, -15.7 );
setRotateKey( spep_2 -3 + 124, 1, -15.9 );
setRotateKey( spep_2 -3 + 126, 1, -16 );
setRotateKey( spep_2 -3 + 128, 1, 33.9 );
setRotateKey( spep_2 -3 + 130, 1, 37.8 );
setRotateKey( spep_2 -3 + 132, 1, 40.6 );
setRotateKey( spep_2 -3 + 134, 1, 42.6 );
setRotateKey( spep_2 -3 + 136, 1, 44.1 );
setRotateKey( spep_2 -3 + 138, 1, 45.3 );
setRotateKey( spep_2 -3 + 140, 1, 46.2 );
setRotateKey( spep_2 -3 + 142, 1, 46.9 );
setRotateKey( spep_2 -3 + 144, 1, 47.5 );
setRotateKey( spep_2 -3 + 146, 1, 47.9 );
setRotateKey( spep_2 -3 + 148, 1, 48.3 );
setRotateKey( spep_2 -3 + 150, 1, 48.6 );
setRotateKey( spep_2 -3 + 152, 1, 48.8 );
setRotateKey( spep_2 -3 + 154, 1, 49 );
setRotateKey( spep_2 -3 + 156, 1, 49.1 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 2,  914, 144-3, 0x80, -1, 0, 0, 0 );  --流線

setEffMoveKey( spep_2 + 2, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_2 + 146-3, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_2 + 2, ryusen1, 5, 1.5 );
setEffScaleKey( spep_2 + 146-3, ryusen1, 5, 1.5 );

setEffRotateKey( spep_2 + 2, ryusen1, 0 );
setEffRotateKey( spep_2 + 130-3, ryusen1, 0 );
setEffRotateKey( spep_2 + 131-3, ryusen1, 0 );
setEffRotateKey( spep_2 + 132-3, ryusen1, -95 );
setEffRotateKey( spep_2 + 146-3, ryusen1, -95 );

setEffAlphaKey( spep_2 + 2, ryusen1, 85 );
setEffAlphaKey( spep_2 + 4, ryusen1, 170 );
setEffAlphaKey( spep_2 + 6, ryusen1, 255 );
setEffAlphaKey( spep_2 + 42, ryusen1, 255 );
setEffAlphaKey( spep_2 + 44, ryusen1, 170 );
setEffAlphaKey( spep_2 + 46, ryusen1, 85 );
setEffAlphaKey( spep_2 + 48, ryusen1, 0 );
setEffAlphaKey( spep_2 + 130-3, ryusen1, 0 );
setEffAlphaKey( spep_2 + 131-3, ryusen1, 0 );
setEffAlphaKey( spep_2 + 132-3, ryusen1, 255 );
setEffAlphaKey( spep_2 + 140-3, ryusen1, 255 );
setEffAlphaKey( spep_2 + 142-3, ryusen1, 170 );
setEffAlphaKey( spep_2 + 144-3, ryusen1, 85 );
setEffAlphaKey( spep_2 + 146-3, ryusen1, 0 );

entryFade( spep_2 + 48 -3, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 104 -3, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 128 -3, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2+48-3,  1009);
playSe( spep_2+104-3,  1010);
playSe( spep_2+128-3,  1011);
playSe( spep_2+152-3,  1048);  --消える
setSeVolume( spep_2+152-3, 1048, 120);

-- ** 次の準備 ** --
spep_3 = spep_2 + 176;

------------------------------------------------------
-- 瞬間移動(90F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_3 + 0, shuchusen3, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 90, shuchusen3, 1.5, 1.5 );
setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 90, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen3, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3  + 15, 1, 0 );
setDisp( spep_3  + 16, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -314, 664.6 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -267.9, 505 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -234, 386.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -207.5, 292.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -186.5, 215.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -169.6, 153.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -155.2, 99 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -144, 55.6 , 0 );
setMoveKey( spep_3 + 16, 1, -134.4, 16.5 , 0 );

setScaleKey( spep_3 + 0, 1, 1, 1 );
--setScaleKey( spep_3 -3 + 2, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 4, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 6, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 8, 1, 1.09, 1.09 );
setScaleKey( spep_3 -3 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 12, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 14, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 16, 1, 1.14, 1.14 );

setRotateKey( spep_3 + 0, 1, 59.9 );
setRotateKey( spep_3 -3 + 16, 1, 59.9 );

-- ** エフェクト等 ** --
shunkan = entryEffectLife( spep_3 + 0, SP_04, 90, 0x80, -1, 0, 0, 0 );  --叩きつけ〜瞬間移動(ef_004)
setEffMoveKey( spep_3 + 0, shunkan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shunkan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shunkan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, shunkan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shunkan, 0 );
setEffRotateKey( spep_3 + 90, shunkan, 0 );
setEffAlphaKey( spep_3 + 0, shunkan, 255 );
setEffAlphaKey( spep_3 + 90, shunkan, 255 );

-- ** 音 ** --
playSe(spep_3+16,  1002);
playSe(spep_3+50,  4);  --現れる
setSeVolume(spep_3+50, 4, 160);

entryFade( spep_3 + 80, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 波動(100F)
------------------------------------------------------

hado = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --波動(ef_005)
setEffMoveKey( spep_4 + 0, hado, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, hado, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hado, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hado, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hado, 0 );
setEffRotateKey( spep_4 + 100, hado, 0 );
setEffAlphaKey( spep_4 + 0, hado, 255 );
setEffAlphaKey( spep_4 + 100, hado, 255 );

entryFade( spep_4 + 92, 4, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4,  1073);
playSe( spep_4+40, 64);

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- フィニッシュ(110F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 0, 906, 110, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_5 + 0, shuchusen4, 110, 20 );
setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_5 + 110, shuchusen4, 1.5, 1.5 );
setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 110, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 110, shuchusen4, 255 );

-- ** エフェクト ** --
finish = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --フィニッシュ(ef_006)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 110, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 110, finish, 255 );

-- ** 音 ** --
playSe( spep_5,  1023);
playSe( spep_5 + 26 -10,  1024)

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0 );
--entryFade( spep_5 + 90, 4, 16, 10, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気溜め(150F)
------------------------------------------------------
spep_0 = 0;

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_0 + 0, 906, 150, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_0 + 0, shuchusen, 150, 20 );
setEffMoveKey( spep_0 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen, 1.5, 1.5 );
setEffScaleKey( spep_0 + 150, shuchusen, 1.5, 1.5 );
setEffRotateKey( spep_0 + 0, shuchusen, 0 );
setEffRotateKey( spep_0 + 150, shuchusen, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen, 255 );
setEffAlphaKey( spep_0 + 146, shuchusen, 255 );
setEffAlphaKey( spep_0 + 147, shuchusen, 0 );
setEffAlphaKey( spep_0 + 150, shuchusen, 0 );

-- ** エフェクト等 ** --
kitame = entryEffectLife( spep_0 + 0, SP_01, 150, 0x80, -1, 0, 0, 0 );  --気溜め(ef_001)
setEffMoveKey( spep_0 + 0, kitame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 150, kitame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kitame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150, kitame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kitame, 0 );
setEffRotateKey( spep_0 + 150, kitame, 0 );
setEffAlphaKey( spep_0 + 0, kitame, 255 );
setEffAlphaKey( spep_0 + 146, kitame, 255 );
setEffAlphaKey( spep_0 + 147, kitame, 0 );
setEffAlphaKey( spep_0 + 150, kitame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 16+ 40,  190006, 68, 0x100, -1, 0, 100.9, 515.5 ); --ゴゴゴ
setEffShake( spep_0 + 16+ 40, ctgogo, 68, 10 );

setEffMoveKey( spep_0 + 16+ 40, ctgogo, 100.9, 515.5 , 0 );
setEffMoveKey( spep_0 + 84+ 40, ctgogo, 100.9, 515.5 , 0 );

setEffScaleKey( spep_0 + 16+ 40, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 76+ 40, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_0 + 78+ 40, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80+ 40, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_0 + 82+ 40, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_0 + 84+ 40, ctgogo, -1.69, 1.69 );

setEffRotateKey( spep_0 + 16+ 40, ctgogo, 0 );
setEffRotateKey( spep_0 + 84+ 40, ctgogo, 0 );

setEffAlphaKey( spep_0 + 16+ 40, ctgogo, 255 );
setEffAlphaKey( spep_0 + 84+ 40, ctgogo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 音 ** --
playSe( spep_0 +38,  1035);
playSe( spep_0 + 56, 1018 );  --カットイン
--se = playSe( spep_0 +58,  55);
--stopSe( spep_0+146,  se,  0);

entryFade( spep_0 + 138, 6, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 格闘(176F)
------------------------------------------------------
-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_2 +48-3, 906, 72, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen2, 72, 20 );

setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1.4, 1.75 );
setEffScaleKey( spep_2 + 120, shuchusen2, 1.4, 1.75 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 120, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 48 -3 , shuchusen2, 255 );
setEffAlphaKey( spep_2 + 60 -3,  shuchusen2, 255 );
setEffAlphaKey( spep_2 + 61 -3,  shuchusen2, 0 );
setEffAlphaKey( spep_2 + 103 -3,  shuchusen2, 0 );
setEffAlphaKey( spep_2 + 104 -3,  shuchusen2, 255 );
setEffAlphaKey( spep_2 + 118 -3,  shuchusen2, 255 );
setEffAlphaKey( spep_2 + 119 -3,  shuchusen2, 0 );
setEffAlphaKey( spep_2 + 120 -3,  shuchusen2, 0 );

-- ** 書き文字 ** --
ctbaki = entryEffectLife( spep_2 -3 + 48,  10020, 8, 0x100, -1, 0, 7.3, 277.5 );  --バキッ
setEffMoveKey( spep_2 -3 + 48, ctbaki, 7.3, 277.5 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctbaki, 37.7, 294.2 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctbaki, 34.2, 324.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctbaki, 33.7, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctbaki, 30.7, 305.8 , 0 );

setEffScaleKey( spep_2 -3 + 48, ctbaki, 0.7, 0.7 );
setEffScaleKey( spep_2 -3 + 50, ctbaki, 1.55, 1.55 );
setEffScaleKey( spep_2 -3 + 52, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2 -3 + 54, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2 -3 + 56, ctbaki, 1, 1 );

setEffRotateKey( spep_2 -3 + 48, ctbaki, -18.8 );
setEffRotateKey( spep_2 -3 + 50, ctbaki, -18.8 );
setEffRotateKey( spep_2 -3 + 52, ctbaki, -13 );
setEffRotateKey( spep_2 -3 + 54, ctbaki, -18.8 );
setEffRotateKey( spep_2 -3 + 56, ctbaki, -32.1 );

setEffAlphaKey( spep_2 -3 + 48, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 56, ctbaki, 0 );

ctdon = entryEffectLife( spep_2 -3 + 104,  10019, 10, 0x100, -1, 0, -5.6, 302.8 );  --ドンッ
setEffMoveKey( spep_2 -3 + 104, ctdon, -5.6, 302.8 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctdon, 11.8, 316.5 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctdon, 44.3, 327.8 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctdon, 50.1, 325.2 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdon, 38.6, 331.3 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdon, 22.4, 331.6 , 0 );

setEffScaleKey( spep_2 -3 + 104, ctdon, 0.8, 0.8 );
setEffScaleKey( spep_2 -3 + 106, ctdon, 1.15, 1.15 );
setEffScaleKey( spep_2 -3 + 108, ctdon, 1.5, 1.5 );
setEffScaleKey( spep_2 -3 + 110, ctdon, 1.53, 1.53 );
setEffScaleKey( spep_2 -3 + 112, ctdon, 1.55, 1.55 );
setEffScaleKey( spep_2 -3 + 114, ctdon, 1.57, 1.57 );

setEffRotateKey( spep_2 -3 + 104, ctdon, -0.8 );
setEffRotateKey( spep_2 -3 + 106, ctdon, -0.2 );
setEffRotateKey( spep_2 -3 + 108, ctdon, 0.3 );
setEffRotateKey( spep_2 -3 + 114, ctdon, 0.3 );

setEffAlphaKey( spep_2 -3 + 104, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 110, ctdon, 255 );
setEffAlphaKey( spep_2 -3 + 112, ctdon, 128 );
setEffAlphaKey( spep_2 -3 + 114, ctdon, 0 );

ctbaki2 = entryEffectLife( spep_2 -3  + 128,  10020, 36, 0x100, -1, 0, 176.8, 246 );  -- バキッ
setEffMoveKey( spep_2 -3  + 128, ctbaki2, 176.8, 246 , 0 );
setEffMoveKey( spep_2 -3  + 130, ctbaki2, 158.6, 267.6 , 0 );
setEffMoveKey( spep_2 -3  + 132, ctbaki2, 156.7, 291.7 , 0 );
setEffMoveKey( spep_2 -3  + 134, ctbaki2, 146.8, 296.1 , 0 );
setEffMoveKey( spep_2 -3  + 136, ctbaki2, 158.8, 293.3 , 0 );
setEffMoveKey( spep_2 -3  + 138, ctbaki2, 148.6, 289.8 , 0 );
setEffMoveKey( spep_2 -3  + 140, ctbaki2, 151.5, 298.5 , 0 );
setEffMoveKey( spep_2 -3  + 142, ctbaki2, 154.8, 288.5 , 0 );
setEffMoveKey( spep_2 -3  + 144, ctbaki2, 147.6, 291.1 , 0 );
setEffMoveKey( spep_2 -3  + 146, ctbaki2, 148.2, 301.7 , 0 );
setEffMoveKey( spep_2 -3  + 148, ctbaki2, 149.2, 292.9 , 0 );
setEffMoveKey( spep_2 -3  + 150, ctbaki2, 139.1, 305.6 , 0 );
setEffMoveKey( spep_2 -3  + 152, ctbaki2, 143.6, 301 , 0 );
setEffMoveKey( spep_2 -3  + 154, ctbaki2, 133.8, 304.4 , 0 );
setEffMoveKey( spep_2 -3  + 156, ctbaki2, 136.7, 302.9 , 0 );
setEffMoveKey( spep_2 -3  + 158, ctbaki2, 132.3, 311.4 , 0 );
setEffMoveKey( spep_2 -3  + 160, ctbaki2, 131, 306.3 , 0 );
setEffMoveKey( spep_2 -3  + 162, ctbaki2, 123, 314.8 , 0 );
setEffMoveKey( spep_2 -3  + 164, ctbaki2, 120.3, 316.8 , 0 );

setEffScaleKey( spep_2 -3  + 128, ctbaki2, 0.8, 0.8 );
setEffScaleKey( spep_2 -3  + 130, ctbaki2, 1.25, 1.25 );
setEffScaleKey( spep_2 -3  + 132, ctbaki2, 1.7, 1.7 );
setEffScaleKey( spep_2 -3  + 134, ctbaki2, 1.72, 1.72 );
setEffScaleKey( spep_2 -3  + 136, ctbaki2, 1.75, 1.75 );
setEffScaleKey( spep_2 -3  + 138, ctbaki2, 1.77, 1.77 );
setEffScaleKey( spep_2 -3  + 140, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_2 -3  + 142, ctbaki2, 1.82, 1.82 );
setEffScaleKey( spep_2 -3  + 144, ctbaki2, 1.85, 1.85 );
setEffScaleKey( spep_2 -3  + 146, ctbaki2, 1.86, 1.86 );
setEffScaleKey( spep_2 -3  + 148, ctbaki2, 1.87, 1.87 );
setEffScaleKey( spep_2 -3  + 150, ctbaki2, 1.88, 1.88 );
setEffScaleKey( spep_2 -3  + 152, ctbaki2, 1.89, 1.89 );
setEffScaleKey( spep_2 -3  + 154, ctbaki2, 1.9, 1.9 );
setEffScaleKey( spep_2 -3  + 156, ctbaki2, 1.91, 1.91 );
setEffScaleKey( spep_2 -3  + 158, ctbaki2, 1.92, 1.92 );
setEffScaleKey( spep_2 -3  + 160, ctbaki2, 1.93, 1.93 );
setEffScaleKey( spep_2 -3  + 162, ctbaki2, 1.94, 1.94 );
setEffScaleKey( spep_2 -3  + 164, ctbaki2, 1.95, 1.95 );

setEffRotateKey( spep_2 -3  + 128, ctbaki2, -18 );
setEffRotateKey( spep_2 -3  + 164, ctbaki2, -18 );

setEffAlphaKey( spep_2 -3  + 128, ctbaki2, 255 );
setEffAlphaKey( spep_2 -3  + 144, ctbaki2, 255 );
setEffAlphaKey( spep_2 -3  + 146, ctbaki2, 230 );
setEffAlphaKey( spep_2 -3  + 148, ctbaki2, 204 );
setEffAlphaKey( spep_2 -3  + 150, ctbaki2, 179 );
setEffAlphaKey( spep_2 -3  + 152, ctbaki2, 153 );
setEffAlphaKey( spep_2 -3  + 154, ctbaki2, 128 );
setEffAlphaKey( spep_2 -3  + 156, ctbaki2, 102 );
setEffAlphaKey( spep_2 -3  + 158, ctbaki2, 77 );
setEffAlphaKey( spep_2 -3  + 160, ctbaki2, 51 );
setEffAlphaKey( spep_2 -3  + 162, ctbaki2, 25 );
setEffAlphaKey( spep_2 -3  + 164, ctbaki2, 0 );


-- ** エフェクト等 ** --
kakuto_f = entryEffectLife( spep_2 + 0, SP_02, 176, 0x100, -1, 0, 0, 0 );  -- 格闘(ef_002)
setEffMoveKey( spep_2 + 0, kakuto_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kakuto_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakuto_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kakuto_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakuto_f, 0 );
setEffRotateKey( spep_2 + 176, kakuto_f, 0 );
setEffAlphaKey( spep_2 + 0, kakuto_f, 255 );
setEffAlphaKey( spep_2 + 176, kakuto_f, 255 );

kakuto_b = entryEffectLife( spep_2 + 0, SP_03, 176, 0x100, -1, 0, 0, 0 );  -- 格闘(ef_003)
setEffMoveKey( spep_2 + 0, kakuto_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, kakuto_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kakuto_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, kakuto_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kakuto_b, 0 );
setEffRotateKey( spep_2 + 176, kakuto_b, 0 );
setEffAlphaKey( spep_2 + 0, kakuto_b, 255 );
setEffAlphaKey( spep_2 + 176, kakuto_b, 255 );

haikei = entryEffectLife( spep_2 + 0, SP_07, 176, 0x80, -1, 0, 0, 0 );  -- 背景(ef_007)
setEffMoveKey( spep_2 + 0, haikei, 0, 0 , 0 );
setEffMoveKey( spep_2 + 176, haikei, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, haikei, 1.0, 1.0 );
setEffScaleKey( spep_2 + 176, haikei, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, haikei, 0 );
setEffRotateKey( spep_2 + 176, haikei, 0 );
setEffAlphaKey( spep_2 + 0, haikei, 255 );
setEffAlphaKey( spep_2 + 176, haikei, 255 );

-- ** 敵の動き ** --

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 158, 1, 0 );
changeAnime( spep_2 + 0, 1, 104 );

setMoveKey( spep_2 + 0, 1, 1868.8, 22.1 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 1657.3, 21.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 1488.9, 21.8 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 1348.2, 21.5 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1227.1, 21.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 1121.2, 21.3 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 1027.2, 21.2 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 942.7, 20.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 866.1, 20.8 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 796.2, 20.7 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 731.6, 20.6 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 671.7, 20.5 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 615.7, 20.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 562.5, 20.3 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 511.8, 20.2 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 1.56, 1.56 );

setRotateKey( spep_2 -3 + 0, 1, 0 );



-- ** 音 ** --
playSe(spep_2,  44);  --迫る


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042 );

pauseAll( SP_dodge, 67 );

-- ** 敵キャラクター ** --
setDisp( SP_dodge + 0, 1, 0 );

setMoveKey( SP_dodge + 0, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 2, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 4, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 6, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 8, 1, 463, 20.1 , 0 );
setMoveKey( SP_dodge + 10, 1, 463, 20.1 , 0 );

setScaleKey( SP_dodge + 0, 1, 1.56, 1.56 );
setScaleKey( SP_dodge + 10, 1, 1.56, 1.56 );

setRotateKey( SP_dodge + 0, 1, 0 );
setRotateKey( SP_dodge + 10, 1, 0 );

-- ** カットイン部分 ** --
speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え

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
changeAnime( spep_2 -3 + 48, 1, 106 );
changeAnime( spep_2 -3 + 104, 1, 108 );


setMoveKey( spep_2 -3 + 30, 1, 463, 20.1 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 425.2, 20 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 388.4, 19.9 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 352.2, 19.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 316.9, 19.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 282.2, 19.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 262.3, 19.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 242.8, 19.5 , 0 );
setMoveKey( spep_2 -3 + 47, 1, 223.6, 19.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 216.7, 31.7 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 209.8, 39.6 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 187.8, 13.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 181.5, 35 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 171.6, 29.8 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 176.6, 13.9 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 183.5, 31 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 184.3, 16.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 190, 26.6 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 191.2, 17.5 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 194.4, 20.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 197.2, 20 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 199.9, 19.6 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 202.2, 19 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 204.6, 18.6 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 206.8, 18.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 208.8, 17.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 210.7, 17.5 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 212.6, 17.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 144, 9.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 122, 6.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 110, 4.9 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 102.7, 3.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 98, 2.8 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 95.1, 2 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 93.1, 1.4 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 91.7, 0.9 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 90.6, 0.4 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 168.8, 38 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 173.5, 13.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 179.5, 43.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 172.6, 20.9 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 178.3, 44.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 184.3, 28.4 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 185.9, 39.1 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 188.6, 34.5 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 156.4, 103.6 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 149.3, 121.2 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 147, 126.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 146.5, 114.8 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 110.7, -16.4 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 194.8, -331.6 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 256.7, -440.7 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 292.1, -599.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 340.4, -670.6 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 363.8, -765.6 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 381.2, -820 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 412.6, -846.1 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 416.8, -904.1 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 436.9, -917.7 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 439.4, -957.7 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 450.2, -965.9 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 454.7, -986.4 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 459.9, -993.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 463.1, -1005.6 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 463.3, -1005.6 , 0 );

setScaleKey( spep_2 -3 + 47, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 48, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 50, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 52, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 54, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 103, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 104, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 106, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 108, 1, 1.58, 1.58 );
setScaleKey( spep_2 -3 + 110, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 126, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 128, 1, 1.88, 1.88 );
setScaleKey( spep_2 -3 + 130, 1, 1.77, 1.77 );
setScaleKey( spep_2 -3 + 132, 1, 1.63, 1.63 );
setScaleKey( spep_2 -3 + 134, 1, 1.67, 1.67 );
setScaleKey( spep_2 -3 + 136, 1, 1.7, 1.7 );
setScaleKey( spep_2 -3 + 138, 1, 1.73, 1.73 );
setScaleKey( spep_2 -3 + 140, 1, 1.74, 1.74 );
setScaleKey( spep_2 -3 + 142, 1, 1.75, 1.75 );
setScaleKey( spep_2 -3 + 144, 1, 1.76, 1.76 );
setScaleKey( spep_2 -3 + 146, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 148, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 150, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 152, 1, 1.79, 1.79 );
setScaleKey( spep_2 -3 + 154, 1, 1.8, 1.8 );

setRotateKey( spep_2 -3 + 47, 1, 0 );
setRotateKey( spep_2 -3 + 48, 1, -23 );
setRotateKey( spep_2 -3 + 50, 1, -22 );
setRotateKey( spep_2 -3 + 52, 1, -21.1 );
setRotateKey( spep_2 -3 + 54, 1, -20.3 );
setRotateKey( spep_2 -3 + 56, 1, -19.6 );
setRotateKey( spep_2 -3 + 58, 1, -19 );
setRotateKey( spep_2 -3 + 60, 1, -18.4 );
setRotateKey( spep_2 -3 + 62, 1, -17.9 );
setRotateKey( spep_2 -3 + 64, 1, -17.4 );
setRotateKey( spep_2 -3 + 66, 1, -17 );
setRotateKey( spep_2 -3 + 68, 1, -16.5 );
setRotateKey( spep_2 -3 + 70, 1, -16.1 );
setRotateKey( spep_2 -3 + 72, 1, -15.8 );
setRotateKey( spep_2 -3 + 74, 1, -15.4 );
setRotateKey( spep_2 -3 + 76, 1, -15.1 );
setRotateKey( spep_2 -3 + 78, 1, -14.8 );
setRotateKey( spep_2 -3 + 80, 1, -14.5 );
setRotateKey( spep_2 -3 + 82, 1, -14.2 );
setRotateKey( spep_2 -3 + 84, 1, -13.9 );
setRotateKey( spep_2 -3 + 86, 1, -13.7 );
setRotateKey( spep_2 -3 + 88, 1, -13.4 );
setRotateKey( spep_2 -3 + 90, 1, -13.2 );
setRotateKey( spep_2 -3 + 92, 1, -13 );
setRotateKey( spep_2 -3 + 94, 1, -12.8 );
setRotateKey( spep_2 -3 + 96, 1, -12.6 );
setRotateKey( spep_2 -3 + 98, 1, -12.4 );
setRotateKey( spep_2 -3 + 100, 1, -12.2 );
setRotateKey( spep_2 -3 + 103, 1, -12.1 );
setRotateKey( spep_2 -3 + 104, 1, -7.8 );
setRotateKey( spep_2 -3 + 106, 1, -10.5 );
setRotateKey( spep_2 -3 + 108, 1, -11.9 );
setRotateKey( spep_2 -3 + 110, 1, -12.8 );
setRotateKey( spep_2 -3 + 112, 1, -13.6 );
setRotateKey( spep_2 -3 + 114, 1, -14.2 );
setRotateKey( spep_2 -3 + 116, 1, -14.7 );
setRotateKey( spep_2 -3 + 118, 1, -15.1 );
setRotateKey( spep_2 -3 + 120, 1, -15.4 );
setRotateKey( spep_2 -3 + 122, 1, -15.7 );
setRotateKey( spep_2 -3 + 124, 1, -15.9 );
setRotateKey( spep_2 -3 + 126, 1, -16 );
setRotateKey( spep_2 -3 + 128, 1, 33.9 );
setRotateKey( spep_2 -3 + 130, 1, 37.8 );
setRotateKey( spep_2 -3 + 132, 1, 40.6 );
setRotateKey( spep_2 -3 + 134, 1, 42.6 );
setRotateKey( spep_2 -3 + 136, 1, 44.1 );
setRotateKey( spep_2 -3 + 138, 1, 45.3 );
setRotateKey( spep_2 -3 + 140, 1, 46.2 );
setRotateKey( spep_2 -3 + 142, 1, 46.9 );
setRotateKey( spep_2 -3 + 144, 1, 47.5 );
setRotateKey( spep_2 -3 + 146, 1, 47.9 );
setRotateKey( spep_2 -3 + 148, 1, 48.3 );
setRotateKey( spep_2 -3 + 150, 1, 48.6 );
setRotateKey( spep_2 -3 + 152, 1, 48.8 );
setRotateKey( spep_2 -3 + 154, 1, 49 );
setRotateKey( spep_2 -3 + 156, 1, 49.1 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_2 + 2,  914, 144-3, 0x80, -1, 0, 0, 0 );  --流線

setEffMoveKey( spep_2 + 2, ryusen1, 0, 0, 0 );
setEffMoveKey( spep_2 + 146-3, ryusen1, 0, 0, 0 );

setEffScaleKey( spep_2 + 2, ryusen1, 5, 1.5 );
setEffScaleKey( spep_2 + 146-3, ryusen1, 5, 1.5 );

setEffRotateKey( spep_2 + 2, ryusen1, 0 );
setEffRotateKey( spep_2 + 130-3, ryusen1, 0 );
setEffRotateKey( spep_2 + 131-3, ryusen1, 0 );
setEffRotateKey( spep_2 + 132-3, ryusen1, -95 );
setEffRotateKey( spep_2 + 146-3, ryusen1, -95 );

setEffAlphaKey( spep_2 + 2, ryusen1, 85 );
setEffAlphaKey( spep_2 + 4, ryusen1, 170 );
setEffAlphaKey( spep_2 + 6, ryusen1, 255 );
setEffAlphaKey( spep_2 + 42, ryusen1, 255 );
setEffAlphaKey( spep_2 + 44, ryusen1, 170 );
setEffAlphaKey( spep_2 + 46, ryusen1, 85 );
setEffAlphaKey( spep_2 + 48, ryusen1, 0 );
setEffAlphaKey( spep_2 + 130-3, ryusen1, 0 );
setEffAlphaKey( spep_2 + 131-3, ryusen1, 0 );
setEffAlphaKey( spep_2 + 132-3, ryusen1, 255 );
setEffAlphaKey( spep_2 + 140-3, ryusen1, 255 );
setEffAlphaKey( spep_2 + 142-3, ryusen1, 170 );
setEffAlphaKey( spep_2 + 144-3, ryusen1, 85 );
setEffAlphaKey( spep_2 + 146-3, ryusen1, 0 );

entryFade( spep_2 + 48 -3, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 104 -3, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 128 -3, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2+48-3,  1009);
playSe( spep_2+104-3,  1010);
playSe( spep_2+128-3,  1011);
playSe( spep_2+152-3, 1048); --消える
setSeVolume( spep_2+152-3, 1048, 120);

-- ** 次の準備 ** --
spep_3 = spep_2 + 176;

------------------------------------------------------
-- 瞬間移動(90F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_3 + 0, shuchusen3, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen3, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen3, 1.5, 1.5 );
setEffScaleKey( spep_3 + 90, shuchusen3, 1.5, 1.5 );
setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 90, shuchusen3, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen3, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3  + 15, 1, 0 );
setDisp( spep_3  + 16, 1, 0 );
changeAnime( spep_3 + 0, 1, 108 );

setMoveKey( spep_3 + 0, 1, -314, 664.6 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, -267.9, 505 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -234, 386.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -207.5, 292.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -186.5, 215.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -169.6, 153.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -155.2, 99 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -144, 55.6 , 0 );
setMoveKey( spep_3 + 16, 1, -134.4, 16.5 , 0 );

setScaleKey( spep_3 + 0, 1, 1, 1 );
--setScaleKey( spep_3 -3 + 2, 1, 1.03, 1.03 );
setScaleKey( spep_3 -3 + 4, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 6, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 8, 1, 1.09, 1.09 );
setScaleKey( spep_3 -3 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 12, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 14, 1, 1.13, 1.13 );
setScaleKey( spep_3 + 16, 1, 1.14, 1.14 );

setRotateKey( spep_3 + 0, 1, 59.9 );
setRotateKey( spep_3 -3 + 16, 1, 59.9 );

-- ** エフェクト等 ** --
shunkan = entryEffectLife( spep_3 + 0, SP_04, 90, 0x80, -1, 0, 0, 0 );  --叩きつけ〜瞬間移動(ef_004)
setEffMoveKey( spep_3 + 0, shunkan, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shunkan, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shunkan, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, shunkan, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shunkan, 0 );
setEffRotateKey( spep_3 + 90, shunkan, 0 );
setEffAlphaKey( spep_3 + 0, shunkan, 255 );
setEffAlphaKey( spep_3 + 90, shunkan, 255 );

-- ** 音 ** --
playSe(spep_3+16,  1002);
playSe(spep_3+50, 4); --現れる
setSeVolume(spep_3+50, 4, 160);

entryFade( spep_3 + 80, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 波動(100F)
------------------------------------------------------

hado = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --波動(ef_005)
setEffMoveKey( spep_4 + 0, hado, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, hado, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hado, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hado, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hado, 0 );
setEffRotateKey( spep_4 + 100, hado, 0 );
setEffAlphaKey( spep_4 + 0, hado, 255 );
setEffAlphaKey( spep_4 + 100, hado, 255 );

entryFade( spep_4 + 92, 4, 4, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4,  1073);
playSe( spep_4+40, 64);

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- フィニッシュ(110F)
------------------------------------------------------

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_5 + 0, 906, 110, 0x100, -1, 0, 0, 0 );  --集中線

setEffShake( spep_5 + 0, shuchusen4, 110, 20 );
setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, shuchusen4, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen4, 1.5, 1.5 );
setEffScaleKey( spep_5 + 110, shuchusen4, 1.5, 1.5 );
setEffRotateKey( spep_5 + 0, shuchusen4, 0 );
setEffRotateKey( spep_5 + 110, shuchusen4, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 110, shuchusen4, 255 );

-- ** エフェクト ** --
finish = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --フィニッシュ(ef_006)
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 110, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 110, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 110, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 110, finish, 255 );

-- ** 音 ** --
playSe( spep_5,  1023);
playSe( spep_5 + 26 -10,  1024)

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 0 );
--entryFade( spep_5 + 90, 4, 16, 10, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

end