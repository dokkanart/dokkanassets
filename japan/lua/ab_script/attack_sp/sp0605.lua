--1018900:ジャッキー・チュン(MAXパワー)_かめはめ波
--sp_effect_a1_00209

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
SP_01 = 154730; --敵とフレームイン
SP_02 = 154731; --腕を動かしてかめはめ波を構える
SP_03 = 154733; --顔アップ
SP_04 = 154734; --発射
SP_05 = 154736; --発射背景
SP_06 = 154737; --かめはめ波が奥から迫る
SP_07 = 154738; --フィニッシュ
SP_08 = 154739; --フィニッシュ背景

--敵側
SP_02r = 154732; --腕を動かしてかめはめ波を構える
SP_04r = 154735; --発射

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 敵とフレームイン
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --敵とフレームイン(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, idling, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 76, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 76, idling, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 78, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 117 );

setMoveKey( spep_0 -3 + 3, 1, 301.8, 268.4 , 0 );
--setMoveKey( spep_0 -3 + 2, 1, 301.4, 269.3 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 300.9, 270.2 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 300.9, 270.2 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 300.4, 271 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 300.4, 271 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 300, 271.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 300, 271.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 296.8, 273.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 293.7, 274.6 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 290.5, 276 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 287.4, 277.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 284.3, 278.7 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 280.8, 279.6 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 277.3, 280.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 273.8, 281.4 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 270.3, 282.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 266.8, 283.2 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 262.7, 283.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 258.6, 284.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 254.5, 285.1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 250.4, 285.8 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 246.2, 286.4 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 243.8, 286.6 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 241.3, 286.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 238.9, 286.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 236.4, 287.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 234, 287.3 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 231.5, 287.4 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 229, 287.6 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 227.6, 287.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 226.2, 287.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 224.7, 288 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 223.3, 288.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 221.8, 288.3 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 220.4, 288.4 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 218.9, 288.6 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 218.1, 288.7 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 217.4, 288.7 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 216.6, 288.8 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 215.8, 288.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 215.1, 288.9 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 214.3, 289 , 0 );

setScaleKey( spep_0 -3 + 3, 1, 1.05, 1.05 );
--setScaleKey( spep_0 -3 + 2, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 4, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 5, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 7, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 9, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 10, 1, 1, 1 );
setScaleKey( spep_0 -3 + 12, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 14, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 16, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 18, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 20, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 22, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 24, 1, 0.92, 0.92 );
setScaleKey( spep_0 -3 + 26, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 28, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 30, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 34, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 42, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 44, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 48, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 56, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 58, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 78, 1, 0.82, 0.82 );

setRotateKey( spep_0 -3 + 3, 1, -0.2 );
setRotateKey( spep_0 -3 + 4, 1, -0.2 );
setRotateKey( spep_0 -3 + 5, 1, -0.2 );
setRotateKey( spep_0 -3 + 6, 1, -0.2 );
setRotateKey( spep_0 -3 + 7, 1, -0.2 );
setRotateKey( spep_0 -3 + 8, 1, -0.2 );
setRotateKey( spep_0 -3 + 9, 1, -0.2 );
setRotateKey( spep_0 -3 + 78, 1, -0.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 78, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_0 + 64, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 2, 8 );

--次の準備
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 腕を動かしてかめはめ波を構える
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --腕を動かしてかめはめ波を構える(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_1 + 136, kamae, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 136, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 136, kamae, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +52, 190006, 72, 0x100, -1, 0, 120 -200, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +52,  ctgogo,  120 -200,  510);
setEffMoveKey(  spep_1 +124,  ctgogo,  120 -200,  510);

setEffAlphaKey( spep_1 +52, ctgogo, 0 );
setEffAlphaKey( spep_1 + 53, ctgogo, 255 );
setEffAlphaKey( spep_1 + 54, ctgogo, 255 );
setEffAlphaKey( spep_1 + 118, ctgogo, 255 );
setEffAlphaKey( spep_1 + 120, ctgogo, 191 );
setEffAlphaKey( spep_1 + 122, ctgogo, 112 );
setEffAlphaKey( spep_1 + 124, ctgogo, 64 );

setEffRotateKey(  spep_1 +52,  ctgogo,  0);
setEffRotateKey(  spep_1 +124,  ctgogo,  0);

setEffScaleKey(  spep_1 +52,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +114,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +124,  ctgogo, 1.07, 1.07 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 118, 16, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 4, 1190 );
playSe( spep_1 + 53, 1018 );

--次の準備
spep_2 = spep_1 + 136;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 1035 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
up = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --顔アップ(ef_003)
setEffMoveKey( spep_3 + 0, up, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, up, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, up, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, up, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, up, 0 );
setEffRotateKey( spep_3 + 86, up, 0 );
setEffAlphaKey( spep_3 + 0, up, 255 );
setEffAlphaKey( spep_3 + 86, up, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 74, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1037 = playSe( spep_3 + 8, 1037 );
playSe( spep_3 + 8, 44 );
setSeVolume( spep_3 + 8, 44, 79 );

--次の準備
spep_4 = spep_3 + 86;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassha_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --発射(ef_004)
setEffMoveKey( spep_4 + 0, hassha_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hassha_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha_f, 0 );
setEffRotateKey( spep_4 + 76, hassha_f, 0 );
setEffAlphaKey( spep_4 + 0, hassha_f, 255 );
setEffAlphaKey( spep_4 + 76, hassha_f, 255 );

hassha_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --発射背景(ef_005)
setEffMoveKey( spep_4 + 0, hassha_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hassha_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha_b, 0 );
setEffRotateKey( spep_4 + 76, hassha_b, 0 );
setEffAlphaKey( spep_4 + 0, hassha_b, 255 );
setEffAlphaKey( spep_4 + 76, hassha_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_4 + 0, 921, 76, 0x80, -1, 0, -16.7, 36.2 );

setEffMoveKey( spep_4 + 0, ryusen1, -16.7, 36.2 , 0 );
setEffMoveKey( spep_4 + 76, ryusen1, -16.7, 36.2 , 0 );

setEffScaleKey( spep_4 + 0, ryusen1, -1.40, 1.40 );
setEffScaleKey( spep_4 + 76, ryusen1, -1.40, 1.40 );

setEffRotateKey( spep_4 + 0, ryusen1, -23.5 );
setEffRotateKey( spep_4 + 76, ryusen1, -23.5 );

setEffAlphaKey( spep_4 + 0, ryusen1, 255 );
setEffAlphaKey( spep_4 + 76, ryusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1027 = playSe( spep_4 + 10, 1027 );
se_1022 = playSe( spep_4 + 10, 1022 );
stopSe( spep_4 + 17, se_1037, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge -12, se_1027, 0);
    stopSe( SP_dodge -12, se_1022, 0);
    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 32, 1, -2500, 0 , 0 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
playSe( spep_4 + 57, 1124 );
setSeVolume( spep_4 + 57, 1124, 0 );
setSeVolume( spep_4 + 58, 1124, 2.17 );
setSeVolume( spep_4 + 59, 1124, 4.35 );
setSeVolume( spep_4 + 60, 1124, 6.52 );
setSeVolume( spep_4 + 61, 1124, 8.70 );
setSeVolume( spep_4 + 62, 1124, 10.87 );
setSeVolume( spep_4 + 63, 1124, 13.04 );
setSeVolume( spep_4 + 64, 1124, 15.22 );
setSeVolume( spep_4 + 65, 1124, 17.39 );
setSeVolume( spep_4 + 66, 1124, 19.57 );
setSeVolume( spep_4 + 67, 1124, 21.74 );
setSeVolume( spep_4 + 68, 1124, 23.91 );
setSeVolume( spep_4 + 69, 1124, 26.09 );
setSeVolume( spep_4 + 70, 1124, 28.26 );
setSeVolume( spep_4 + 71, 1124, 30.43 );
setSeVolume( spep_4 + 72, 1124, 32.61 );
setSeVolume( spep_4 + 73, 1124, 34.78 );
setSeVolume( spep_4 + 74, 1124, 36.96 );
setSeVolume( spep_4 + 75, 1124, 39.13 );

--次の準備
spep_5 = spep_4 + 76;

------------------------------------------------------
-- かめはめ波が奥から迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --かめはめ波が奥から迫る(ef_006)
setEffMoveKey( spep_5 + 0, semaru, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, semaru, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, semaru, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru, 0 );
setEffRotateKey( spep_5 + 46, semaru, 0 );
setEffAlphaKey( spep_5 + 0, semaru, 255 );
setEffAlphaKey( spep_5 + 46, semaru, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + 34, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
setSeVolume( spep_5 + 0, 1124, 41.30 );
setSeVolume( spep_5 + 1, 1124, 43.48 );
setSeVolume( spep_5 + 2, 1124, 45.65 );
setSeVolume( spep_5 + 3, 1124, 47.83 );
setSeVolume( spep_5 + 4, 1124, 50.00 );

--次の準備
spep_6 = spep_5 + 46;

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); --フィニッシュ(ef_007)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 126, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 126, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 126, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 126, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --フィニッシュ背景(ef_008)
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 126, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 126, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 126, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 126, finish_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_6 -3 + 3, 1, 1 );
setDisp( spep_6 -3 + 22, 1, 0 );
changeAnime( spep_6 -3 + 3, 1, 104 );
--changeAnime( spep_6 -3 + 22, 1, 108 );

setMoveKey( spep_6 -3 + 3, 1, -21.9, 23.6 , 0 );
--setMoveKey( spep_6 -3 + 2, 1, -19.7, 24.9 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -17.6, 26.3 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -15.5, 27.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -13.3, 28.9 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -11.2, 30.3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -9, 31.6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -6.9, 33 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -4.8, 34.3 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -2.6, 35.6 , 0 );
setMoveKey( spep_6 -3 + 21, 1, -0.5, 37 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 1.7, 38.3 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 3.8, 39.7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 5.9, 41 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 8.1, 42.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 10.2, 43.7 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 12.4, 45 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 14.5, 46.4 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 16.6, 47.7 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 18.8, 49 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 19.3, 49.4 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 19.8, 49.8 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 20.3, 50.1 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 20.8, 50.5 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 21.3, 50.9 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 21.8, 51.2 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 22.3, 51.6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 22.8, 52 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 23.3, 52.3 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 23.8, 52.7 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 24.3, 53.1 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 24.8, 53.4 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 25.3, 53.8 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 25.8, 54.2 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 26.3, 54.5 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 26.8, 54.9 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 27.3, 55.3 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 27.8, 55.6 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 28.3, 56 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 28.8, 56.3 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 29.3, 56.7 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 29.8, 57.1 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 30.3, 57.4 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 30.8, 57.8 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 31.3, 58.2 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 31.8, 58.5 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 32.3, 58.9 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 32.8, 59.3 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 33.3, 59.6 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 33.8, 60 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 34.3, 60.4 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 34.8, 60.7 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 35.3, 61.1 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 35.8, 61.5 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 36.3, 61.8 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 36.8, 62.2 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 37.3, 62.6 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 37.8, 62.9 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 38.3, 63.3 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 38.8, 63.7 , 0 );
setMoveKey( spep_6 -3 + 120, 1, 39.3, 64 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 39.8, 64.4 , 0 );
setMoveKey( spep_6 -3 + 124, 1, 40.3, 64.8 , 0 );
setMoveKey( spep_6 -3 + 126, 1, 40.8, 65.1 , 0 );
setMoveKey( spep_6 -3 + 128, 1, 41.3, 65.5 , 0 );

setScaleKey( spep_6 -3 + 3, 1, 0.98, 0.98 );
--setScaleKey( spep_6 -3 + 2, 1, 0.97, 0.97 );
setScaleKey( spep_6 -3 + 4, 1, 0.97, 0.96 );
setScaleKey( spep_6 -3 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_6 -3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_6 -3 + 10, 1, 0.94, 0.94 );
setScaleKey( spep_6 -3 + 12, 1, 0.94, 0.94 );
setScaleKey( spep_6 -3 + 14, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 16, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 21, 1, 0.91, 0.91 );
setScaleKey( spep_6 -3 + 22, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 26, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 30, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 36, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 38, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 128, 1, 0.85, 0.85 );

setRotateKey( spep_6 -3 + 3, 1, -26.7 );
setRotateKey( spep_6 -3 + 4, 1, -26.8 );
setRotateKey( spep_6 -3 + 128, 1, -26.8 );


-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--entryFade( spep_6 + 114, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 18, 1021 );
playSe( spep_6 + 18, 1011 );
setSeVolume( spep_6 + 18, 1011, 79 );
playSe( spep_6 + 22, 1024 );
setSeVolume( spep_6 + 22, 1024, 89 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 18 );
endPhase( spep_6 + 120 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵とフレームイン
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --敵とフレームイン(ef_001)
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, idling, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 76, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 76, idling, 255 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 3, 1, 1 );
setDisp( spep_0 -3 + 78, 1, 0 );
changeAnime( spep_0 -3 + 3, 1, 117 );

setMoveKey( spep_0 -3 + 3, 1, 301.8, 268.4 , 0 );
--setMoveKey( spep_0 -3 + 2, 1, 301.4, 269.3 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 300.9, 270.2 , 0 );
setMoveKey( spep_0 -3 + 5, 1, 300.9, 270.2 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 300.4, 271 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 300.4, 271 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 300, 271.9 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 300, 271.9 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 296.8, 273.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 293.7, 274.6 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 290.5, 276 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 287.4, 277.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 284.3, 278.7 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 280.8, 279.6 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 277.3, 280.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 273.8, 281.4 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 270.3, 282.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 266.8, 283.2 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 262.7, 283.9 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 258.6, 284.5 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 254.5, 285.1 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 250.4, 285.8 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 246.2, 286.4 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 243.8, 286.6 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 241.3, 286.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 238.9, 286.9 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 236.4, 287.1 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 234, 287.3 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 231.5, 287.4 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 229, 287.6 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 227.6, 287.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 226.2, 287.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 224.7, 288 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 223.3, 288.2 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 221.8, 288.3 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 220.4, 288.4 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 218.9, 288.6 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 218.1, 288.7 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 217.4, 288.7 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 216.6, 288.8 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 215.8, 288.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 215.1, 288.9 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 214.3, 289 , 0 );

setScaleKey( spep_0 -3 + 3, 1, 1.05, 1.05 );
--setScaleKey( spep_0 -3 + 2, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 4, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 5, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 7, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 9, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 10, 1, 1, 1 );
setScaleKey( spep_0 -3 + 12, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 14, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 16, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 18, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 20, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 22, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 24, 1, 0.92, 0.92 );
setScaleKey( spep_0 -3 + 26, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 28, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 30, 1, 0.89, 0.89 );
setScaleKey( spep_0 -3 + 32, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 34, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 36, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 38, 1, 0.86, 0.86 );
setScaleKey( spep_0 -3 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 42, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 44, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 48, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 50, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 56, 1, 0.83, 0.83 );
setScaleKey( spep_0 -3 + 58, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 78, 1, 0.82, 0.82 );

setRotateKey( spep_0 -3 + 3, 1, -0.2 );
setRotateKey( spep_0 -3 + 4, 1, -0.2 );
setRotateKey( spep_0 -3 + 5, 1, -0.2 );
setRotateKey( spep_0 -3 + 6, 1, -0.2 );
setRotateKey( spep_0 -3 + 7, 1, -0.2 );
setRotateKey( spep_0 -3 + 8, 1, -0.2 );
setRotateKey( spep_0 -3 + 9, 1, -0.2 );
setRotateKey( spep_0 -3 + 78, 1, -0.2 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 78, 0, 0, 0, 0, 255 ); --黒 背景

-- ** 白フェード ** --
entryFade( spep_0 + 64, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 2, 8 );

--次の準備
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 腕を動かしてかめはめ波を構える
------------------------------------------------------
-- ** エフェクト等 ** --
kamae = entryEffect( spep_1 + 0, SP_02r, 0x80, -1, 0, 0, 0 ); --腕を動かしてかめはめ波を構える(ef_002)
setEffMoveKey( spep_1 + 0, kamae, 0, 0, 0 );
setEffMoveKey( spep_1 + 136, kamae, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, kamae, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kamae, 0 );
setEffRotateKey( spep_1 + 136, kamae, 0 );
setEffAlphaKey( spep_1 + 0, kamae, 255 );
setEffAlphaKey( spep_1 + 136, kamae, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1 + 40, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 40, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +52, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_1 +52,  ctgogo, 0,  510);
setEffMoveKey(  spep_1 +124,  ctgogo, 0,  510);

setEffAlphaKey( spep_1 +52, ctgogo, 0 );
setEffAlphaKey( spep_1 + 53, ctgogo, 255 );
setEffAlphaKey( spep_1 + 54, ctgogo, 255 );
setEffAlphaKey( spep_1 + 118, ctgogo, 255 );
setEffAlphaKey( spep_1 + 120, ctgogo, 191 );
setEffAlphaKey( spep_1 + 122, ctgogo, 112 );
setEffAlphaKey( spep_1 + 124, ctgogo, 64 );

setEffRotateKey(  spep_1 +52,  ctgogo,  0);
setEffRotateKey(  spep_1 +124,  ctgogo,  0);

setEffScaleKey(  spep_1 +52,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +114,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +124,  ctgogo, -1.07, 1.07 );

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 118, 16, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 4, 1190 );
playSe( spep_1 + 53, 1018 );

--次の準備
spep_2 = spep_1 + 136;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 + 0, 1035 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
up = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --顔アップ(ef_003)
setEffMoveKey( spep_3 + 0, up, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, up, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, up, -1.0, 1.0 );
setEffScaleKey( spep_3 + 86, up, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, up, 0 );
setEffRotateKey( spep_3 + 86, up, 0 );
setEffAlphaKey( spep_3 + 0, up, 255 );
setEffAlphaKey( spep_3 + 86, up, 255 );

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 74, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1037 = playSe( spep_3 + 8, 1037 );
playSe( spep_3 + 8, 44 );
setSeVolume( spep_3 + 8, 44, 79 );

--次の準備
spep_4 = spep_3 + 86;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
hassha_f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0 ); --発射(ef_004)
setEffMoveKey( spep_4 + 0, hassha_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hassha_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hassha_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha_f, 0 );
setEffRotateKey( spep_4 + 76, hassha_f, 0 );
setEffAlphaKey( spep_4 + 0, hassha_f, 255 );
setEffAlphaKey( spep_4 + 76, hassha_f, 255 );

hassha_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --発射背景(ef_005)
setEffMoveKey( spep_4 + 0, hassha_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, hassha_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, hassha_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hassha_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha_b, 0 );
setEffRotateKey( spep_4 + 76, hassha_b, 0 );
setEffAlphaKey( spep_4 + 0, hassha_b, 255 );
setEffAlphaKey( spep_4 + 76, hassha_b, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_4 + 0, 921, 76, 0x80, -1, 0, -16.7, 36.2 );

setEffMoveKey( spep_4 + 0, ryusen1, -16.7, 36.2 , 0 );
setEffMoveKey( spep_4 + 76, ryusen1, -16.7, 36.2 , 0 );

setEffScaleKey( spep_4 + 0, ryusen1, -1.40, 1.40 );
setEffScaleKey( spep_4 + 76, ryusen1, -1.40, 1.40 );

setEffRotateKey( spep_4 + 0, ryusen1, -23.5 );
setEffRotateKey( spep_4 + 76, ryusen1, -23.5 );

setEffAlphaKey( spep_4 + 0, ryusen1, 255 );
setEffAlphaKey( spep_4 + 76, ryusen1, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
se_1027 = playSe( spep_4 + 10, 1027 );
se_1022 = playSe( spep_4 + 10, 1022 );
stopSe( spep_4 + 17, se_1037, 0 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_4 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge -12, se_1027, 0);
    stopSe( SP_dodge -12, se_1022, 0);
    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    setMoveKey( SP_dodge + 32, 1, -2500, 0 , 0 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
playSe( spep_4 + 57, 1124 );
setSeVolume( spep_4 + 57, 1124, 0 );
setSeVolume( spep_4 + 58, 1124, 2.17 );
setSeVolume( spep_4 + 59, 1124, 4.35 );
setSeVolume( spep_4 + 60, 1124, 6.52 );
setSeVolume( spep_4 + 61, 1124, 8.70 );
setSeVolume( spep_4 + 62, 1124, 10.87 );
setSeVolume( spep_4 + 63, 1124, 13.04 );
setSeVolume( spep_4 + 64, 1124, 15.22 );
setSeVolume( spep_4 + 65, 1124, 17.39 );
setSeVolume( spep_4 + 66, 1124, 19.57 );
setSeVolume( spep_4 + 67, 1124, 21.74 );
setSeVolume( spep_4 + 68, 1124, 23.91 );
setSeVolume( spep_4 + 69, 1124, 26.09 );
setSeVolume( spep_4 + 70, 1124, 28.26 );
setSeVolume( spep_4 + 71, 1124, 30.43 );
setSeVolume( spep_4 + 72, 1124, 32.61 );
setSeVolume( spep_4 + 73, 1124, 34.78 );
setSeVolume( spep_4 + 74, 1124, 36.96 );
setSeVolume( spep_4 + 75, 1124, 39.13 );

--次の準備
spep_5 = spep_4 + 76;

------------------------------------------------------
-- かめはめ波が奥から迫る
------------------------------------------------------
-- ** エフェクト等 ** --
semaru = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --かめはめ波が奥から迫る(ef_006)
setEffMoveKey( spep_5 + 0, semaru, 0, 0, 0 );
setEffMoveKey( spep_5 + 46, semaru, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, semaru, 1.0, 1.0 );
setEffScaleKey( spep_5 + 46, semaru, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru, 0 );
setEffRotateKey( spep_5 + 46, semaru, 0 );
setEffAlphaKey( spep_5 + 0, semaru, 255 );
setEffAlphaKey( spep_5 + 46, semaru, 255 );

-- ** 白フェード ** --
entryFade( spep_5 + 34, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
setSeVolume( spep_5 + 0, 1124, 41.30 );
setSeVolume( spep_5 + 1, 1124, 43.48 );
setSeVolume( spep_5 + 2, 1124, 45.65 );
setSeVolume( spep_5 + 3, 1124, 47.83 );
setSeVolume( spep_5 + 4, 1124, 50.00 );

--次の準備
spep_6 = spep_5 + 46;

------------------------------------------------------
-- フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); --フィニッシュ(ef_007)
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 126, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 126, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 126, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 126, finish_f, 255 );

finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); --フィニッシュ背景(ef_008)
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 126, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 126, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 126, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 126, finish_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_6 -3 + 3, 1, 1 );
setDisp( spep_6 -3 + 22, 1, 0 );
changeAnime( spep_6 -3 + 3, 1, 104 );
--changeAnime( spep_6 -3 + 22, 1, 108 );

setMoveKey( spep_6 -3 + 3, 1, -21.9, 23.6 , 0 );
--setMoveKey( spep_6 -3 + 2, 1, -19.7, 24.9 , 0 );
setMoveKey( spep_6 -3 + 4, 1, -17.6, 26.3 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -15.5, 27.6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -13.3, 28.9 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -11.2, 30.3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -9, 31.6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -6.9, 33 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -4.8, 34.3 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -2.6, 35.6 , 0 );
setMoveKey( spep_6 -3 + 21, 1, -0.5, 37 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 1.7, 38.3 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 3.8, 39.7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 5.9, 41 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 8.1, 42.3 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 10.2, 43.7 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 12.4, 45 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 14.5, 46.4 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 16.6, 47.7 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 18.8, 49 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 19.3, 49.4 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 19.8, 49.8 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 20.3, 50.1 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 20.8, 50.5 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 21.3, 50.9 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 21.8, 51.2 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 22.3, 51.6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 22.8, 52 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 23.3, 52.3 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 23.8, 52.7 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 24.3, 53.1 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 24.8, 53.4 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 25.3, 53.8 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 25.8, 54.2 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 26.3, 54.5 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 26.8, 54.9 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 27.3, 55.3 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 27.8, 55.6 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 28.3, 56 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 28.8, 56.3 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 29.3, 56.7 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 29.8, 57.1 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 30.3, 57.4 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 30.8, 57.8 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 31.3, 58.2 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 31.8, 58.5 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 32.3, 58.9 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 32.8, 59.3 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 33.3, 59.6 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 33.8, 60 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 34.3, 60.4 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 34.8, 60.7 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 35.3, 61.1 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 35.8, 61.5 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 36.3, 61.8 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 36.8, 62.2 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 37.3, 62.6 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 37.8, 62.9 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 38.3, 63.3 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 38.8, 63.7 , 0 );
setMoveKey( spep_6 -3 + 120, 1, 39.3, 64 , 0 );
setMoveKey( spep_6 -3 + 122, 1, 39.8, 64.4 , 0 );
setMoveKey( spep_6 -3 + 124, 1, 40.3, 64.8 , 0 );
setMoveKey( spep_6 -3 + 126, 1, 40.8, 65.1 , 0 );
setMoveKey( spep_6 -3 + 128, 1, 41.3, 65.5 , 0 );

setScaleKey( spep_6 -3 + 3, 1, 0.98, 0.98 );
--setScaleKey( spep_6 -3 + 2, 1, 0.97, 0.97 );
setScaleKey( spep_6 -3 + 4, 1, 0.97, 0.96 );
setScaleKey( spep_6 -3 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_6 -3 + 8, 1, 0.95, 0.95 );
setScaleKey( spep_6 -3 + 10, 1, 0.94, 0.94 );
setScaleKey( spep_6 -3 + 12, 1, 0.94, 0.94 );
setScaleKey( spep_6 -3 + 14, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 16, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 18, 1, 0.92, 0.92 );
setScaleKey( spep_6 -3 + 21, 1, 0.91, 0.91 );
setScaleKey( spep_6 -3 + 22, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 24, 1, 0.9, 0.9 );
setScaleKey( spep_6 -3 + 26, 1, 0.89, 0.89 );
setScaleKey( spep_6 -3 + 28, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 30, 1, 0.88, 0.88 );
setScaleKey( spep_6 -3 + 32, 1, 0.87, 0.87 );
setScaleKey( spep_6 -3 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 36, 1, 0.86, 0.86 );
setScaleKey( spep_6 -3 + 38, 1, 0.85, 0.85 );
setScaleKey( spep_6 -3 + 128, 1, 0.85, 0.85 );

setRotateKey( spep_6 -3 + 3, 1, -26.7 );
setRotateKey( spep_6 -3 + 4, 1, -26.8 );
setRotateKey( spep_6 -3 + 128, 1, -26.8 );


-- ** 白フェード ** --
entryFade( spep_6 + 0, 0, 0, 10, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--entryFade( spep_6 + 114, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 18, 1021 );
playSe( spep_6 + 18, 1011 );
setSeVolume( spep_6 + 18, 1011, 79 );
playSe( spep_6 + 22, 1024 );
setSeVolume( spep_6 + 22, 1024, 89 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 18 );
endPhase( spep_6 + 120 );

end