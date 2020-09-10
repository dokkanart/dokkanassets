--1018930:ブロリー(幼年期)_ワイルドバイト
--sp_effect_b1_00098

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
SP_01 = 154788; --導入、突進
SP_02 = 154789; --ラッシュ、バア登場：ブロリー
SP_03 = 154790; --ラッシュ、バア登場：背景、バア
SP_04 = 154791; --敵食べられ：ブロリー
SP_05 = 154792; --敵食べられ：背景、バア
SP_06 = 154793; --しっぽ受け止め

--敵側
SP_03r = 154794; --ラッシュ、バア登場：背景、バア：敵用
SP_04r = 154795; --敵食べられ：ブロリー：敵用


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
-- 導入、突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --導入、突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0, 0 );
setEffMoveKey( spep_0 + 156, tosshin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 156, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 156, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 156, tosshin, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 -30 + 52, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_0 -30 + 52,  ctgogo, 0, 530 );
setEffMoveKey(  spep_0 -30 + 124,  ctgogo, 0, 530 );

setEffAlphaKey( spep_0 -30 + 52, ctgogo, 0 );
setEffAlphaKey( spep_0 -30 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 118, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 120, ctgogo, 191 );
setEffAlphaKey( spep_0 -30 + 122, ctgogo, 112 );
setEffAlphaKey( spep_0 -30 + 124, ctgogo, 64 );

setEffRotateKey( spep_0 -30 + 52,  ctgogo,  0);
setEffRotateKey( spep_0 -30 + 124,  ctgogo,  0);

setEffScaleKey( spep_0 -30 + 52,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0 -30 + 114,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0 -30 + 124,  ctgogo, 1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 158, 0, 0, 0, 0, 255 ); --薄い黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 08 );
playSe( spep_0 + 13, 1018 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 白フェード ** --
entryFade( spep_0 + 146, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 107, 1003 );
setSeVolume( spep_0 + 107, 1003, 63 );
playSe( spep_0 + 109, 09 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 156;

------------------------------------------------------
-- ラッシュ、バア登場
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --ラッシュ、バア登場(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 146, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 146, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 146, rush_f, 255 );

rush_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); --ラッシュ、バア登場(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 146, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 146, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 146, rush_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 148, 1, 0 );
changeAnime( spep_1 -3 + 3, 1, 101 );
changeAnime( spep_1 -3 + 24, 1, 108 );
changeAnime( spep_1 -3 + 50, 1, 106 );
changeAnime( spep_1 -3 + 60, 1, 108 );
changeAnime( spep_1 -3 + 92, 1, 106 );

setMoveKey( spep_1 -3 + 3, 1, 218.3, 43.6 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 195.8, 42.2 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 172.7, 40.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 149.2, 39.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 125.2, 38 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 100.7, 36.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 75.7, 35.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 50.2, 33.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 24.3, 32.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -2.1, 31.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -26.2, 31.2 , 0 );
setMoveKey( spep_1 -3 + 23, 1, -50.3, 31.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -45, 94.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -57.2, 67.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 17.9, 20.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 8.5, 36.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -32.7, 21.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 20.4, 70.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 18.5, 49.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 23.1, 70.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 21.1, 49.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 22.5, 49.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 23.8, 49.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 25.1, 49.9 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 26.4, 49.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 25.4, 80 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 44.2, 98.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 70.4, 123.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 68.4, 90.4 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 62.1, 82.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 90.2, 62.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 119.5, 89.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 90.2, 87.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 114, 42.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 97.9, 51.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 94.5, 50.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 91.2, 50 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 87.9, 49.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 84.7, 48.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 81.4, 48.4 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 78.2, 48 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 75, 47.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 71.9, 47.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 68.8, 47 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 65.7, 46.8 , 0 );
setMoveKey( spep_1 -3 + 91, 1, 62.6, 46.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 4.4, 19.3 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 217.2, 70 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 17.6, 33.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 13.1, -18.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 32.4, 9.9 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 22.4, -11.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 83.1, 40.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 88.8, 22.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 101.1, 45.7 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 106.9, 28.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 119.2, 51.2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 125.2, 33.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 134.4, 36.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 143.6, 39.3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 148, 40.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 152.4, 41.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 156.9, 42.5 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 161.4, 43.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 165.9, 44.8 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 170.5, 45.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 175, 47.1 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 179.7, 48.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 184.3, 49.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 189, 50.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 193.8, 52 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 198.5, 53.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 203.3, 54.6 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 208.1, 55.9 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 213, 57.3 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.11, 1.11 );
--setScaleKey( spep_1 -3 + 2, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 4, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 6, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 8, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 10, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 14, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 24, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 26, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 28, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 30, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 49, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 50, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 52, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 59, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 60, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 62, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 64, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 66, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 68, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 70, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 76, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 78, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 84, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 86, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 88, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 91, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 92, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 94, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 96, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 98, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 100, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 102, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 104, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 106, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 108, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 110, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 112, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 114, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 116, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 118, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 120, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 122, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 124, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 126, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 128, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 130, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 132, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 134, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 136, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 138, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 140, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 142, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 144, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 146, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 148, 1, 1.54, 1.54 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 23, 1, 0 );
setRotateKey( spep_1 -3 + 24, 1, -14.2 );
setRotateKey( spep_1 -3 + 26, 1, -10.2 );
setRotateKey( spep_1 -3 + 28, 1, -9.9 );
setRotateKey( spep_1 -3 + 30, 1, -9.5 );
setRotateKey( spep_1 -3 + 32, 1, -9.2 );
setRotateKey( spep_1 -3 + 34, 1, -8.9 );
setRotateKey( spep_1 -3 + 36, 1, -8.5 );
setRotateKey( spep_1 -3 + 38, 1, -8.2 );
setRotateKey( spep_1 -3 + 40, 1, -7.9 );
setRotateKey( spep_1 -3 + 42, 1, -7.5 );
setRotateKey( spep_1 -3 + 44, 1, -7.2 );
setRotateKey( spep_1 -3 + 46, 1, -6.8 );
setRotateKey( spep_1 -3 + 49, 1, -6.5 );
setRotateKey( spep_1 -3 + 50, 1, -48.4 );
setRotateKey( spep_1 -3 + 52, 1, -46.3 );
setRotateKey( spep_1 -3 + 54, 1, -44.3 );
setRotateKey( spep_1 -3 + 56, 1, -42.3 );
setRotateKey( spep_1 -3 + 59, 1, -40.3 );
setRotateKey( spep_1 -3 + 60, 1, -11 );
setRotateKey( spep_1 -3 + 62, 1, -10.3 );
setRotateKey( spep_1 -3 + 64, 1, -9.3 );
setRotateKey( spep_1 -3 + 66, 1, -8.2 );
setRotateKey( spep_1 -3 + 68, 1, -7.2 );
setRotateKey( spep_1 -3 + 70, 1, -6.1 );
setRotateKey( spep_1 -3 + 72, 1, -5 );
setRotateKey( spep_1 -3 + 74, 1, -3.8 );
setRotateKey( spep_1 -3 + 76, 1, -2.7 );
setRotateKey( spep_1 -3 + 78, 1, -1.5 );
setRotateKey( spep_1 -3 + 80, 1, -0.3 );
setRotateKey( spep_1 -3 + 82, 1, 1 );
setRotateKey( spep_1 -3 + 84, 1, 2.2 );
setRotateKey( spep_1 -3 + 86, 1, 3.5 );
setRotateKey( spep_1 -3 + 88, 1, 4.8 );
setRotateKey( spep_1 -3 + 91, 1, 6.2 );
setRotateKey( spep_1 -3 + 92, 1, -48.4 );
setRotateKey( spep_1 -3 + 94, 1, -45.1 );
setRotateKey( spep_1 -3 + 96, 1, -41.9 );
setRotateKey( spep_1 -3 + 98, 1, -38.7 );
setRotateKey( spep_1 -3 + 100, 1, -35.6 );
setRotateKey( spep_1 -3 + 102, 1, -35.6 );
setRotateKey( spep_1 -3 + 104, 1, -34.8 );
setRotateKey( spep_1 -3 + 106, 1, -34 );
setRotateKey( spep_1 -3 + 108, 1, -33.2 );
setRotateKey( spep_1 -3 + 110, 1, -32.4 );
setRotateKey( spep_1 -3 + 112, 1, -31.7 );
setRotateKey( spep_1 -3 + 114, 1, -30.9 );
setRotateKey( spep_1 -3 + 116, 1, -30.1 );
setRotateKey( spep_1 -3 + 118, 1, -29.3 );
setRotateKey( spep_1 -3 + 120, 1, -28.5 );
setRotateKey( spep_1 -3 + 122, 1, -27.8 );
setRotateKey( spep_1 -3 + 124, 1, -27 );
setRotateKey( spep_1 -3 + 126, 1, -26.2 );
setRotateKey( spep_1 -3 + 128, 1, -25.4 );
setRotateKey( spep_1 -3 + 130, 1, -24.6 );
setRotateKey( spep_1 -3 + 132, 1, -23.8 );
setRotateKey( spep_1 -3 + 134, 1, -23.1 );
setRotateKey( spep_1 -3 + 136, 1, -22.3 );
setRotateKey( spep_1 -3 + 138, 1, -21.6 );
setRotateKey( spep_1 -3 + 140, 1, -20.8 );
setRotateKey( spep_1 -3 + 142, 1, -20.1 );
setRotateKey( spep_1 -3 + 144, 1, -19.3 );
setRotateKey( spep_1 -3 + 146, 1, -18.6 );
setRotateKey( spep_1 -3 + 148, 1, -17.8 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 -3 + 24, 906, 124, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 23, shuchusen1, 124, 20 );

setEffMoveKey( spep_1 -3 + 24, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 148, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 24, shuchusen1, 1.58, 1.55 );
setEffScaleKey( spep_1 -3 + 148, shuchusen1, 1.58, 1.55 );

setEffRotateKey( spep_1 -3 + 24, shuchusen1, 0 );
setEffRotateKey( spep_1 -3 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 24, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 75, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 76, shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 77, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 91, shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 92, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 148, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 24, 10020, 16, 0x100, -1, 0, 134.5, 274.4 ); --バキッ
setEffMoveKey( spep_1 -3 + 24, ctbaki, 134.5, 274.4 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctbaki, 134.5, 274.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, 165.6, 321.5 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, 152.3, 317.6 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, 152.3, 317.6 , 0 );

setEffScaleKey( spep_1 -3 + 24, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_1 -3 + 40, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_1 -3 + 24, ctbaki, 40 );
setEffRotateKey( spep_1 -3 + 40, ctbaki, 40 );

setEffAlphaKey( spep_1 -3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 38, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 40, ctbaki, 0 );


ctdon = entryEffectLife( spep_1 -3 + 50, 10019, 10, 0x100, -1, 0, -71.3, 291.3 ); --ドンッ
setEffMoveKey( spep_1 -3 + 50, ctdon, -71.3, 291.3 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon, -32.3, 305.1 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon, 3.7, 295 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon, 28.9, 302.7 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdon, 23.5, 327.1 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctdon, 12.6, 341.8 , 0 );

setEffScaleKey( spep_1 -3 + 50, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 52, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_1 -3 + 54, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_1 -3 + 56, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 58, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 60, ctdon, 1.85, 1.85 );

setEffRotateKey( spep_1 -3 + 50, ctdon, -10 );
setEffRotateKey( spep_1 -3 + 60, ctdon, -10 );

setEffAlphaKey( spep_1 -3 + 50, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 56, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 58, ctdon, 128 );
setEffAlphaKey( spep_1 -3 + 60, ctdon, 0 );

a = 1.7;

ctga = entryEffectLife( spep_1 -3 + 62, 10005, 12, 0x100, -1, 0, -58.4, 260.3 ); --ガッ
setEffMoveKey( spep_1 -3 + 62, ctga, -58.4, 260.3 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctga, -68.8, 277.9 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctga, -79.3, 295.6 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctga, -85.9, 292 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctga, -92.5, 288.4 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctga, -99.1, 284.8 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctga, -105.7, 281.2 , 0 );

setEffScaleKey( spep_1 -3 + 62, ctga, 0.6 * a, 0.6 * a );
setEffScaleKey( spep_1 -3 + 64, ctga, 0.83 * a, 0.83 * a );
setEffScaleKey( spep_1 -3 + 66, ctga, 1.06 * a, 1.06 * a );
setEffScaleKey( spep_1 -3 + 68, ctga, 1.09 * a, 1.09 * a );
setEffScaleKey( spep_1 -3 + 70, ctga, 1.13 * a, 1.13 * a );
setEffScaleKey( spep_1 -3 + 72, ctga, 1.16 * a, 1.16 * a );
setEffScaleKey( spep_1 -3 + 74, ctga, 1.2 * a, 1.2 * a );

setEffRotateKey( spep_1 -3 + 62, ctga, -14.8 );
setEffRotateKey( spep_1 -3 + 64, ctga, -14.9 );
setEffRotateKey( spep_1 -3 + 66, ctga, -15 );
setEffRotateKey( spep_1 -3 + 68, ctga, -15 );
setEffRotateKey( spep_1 -3 + 70, ctga, -14.9 );
setEffRotateKey( spep_1 -3 + 72, ctga, -14.9 );
setEffRotateKey( spep_1 -3 + 74, ctga, -14.8 );

setEffAlphaKey( spep_1 -3 + 62, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 66, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 68, ctga, 191 );
setEffAlphaKey( spep_1 -3 + 70, ctga, 128 );
setEffAlphaKey( spep_1 -3 + 72, ctga, 64 );
setEffAlphaKey( spep_1 -3 + 74, ctga, 0 );

ctdogon = entryEffectLife( spep_1 -3 + 92, 10018, 12, 0x100, -1, 0, 51.8, 321.4 ); --ドゴォンッ
setEffMoveKey( spep_1 -3 + 92, ctdogon, 51.8, 321.4 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctdogon, 53.5, 342.3 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctdogon, 63.6, 333 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctdogon, 57.7, 347.4 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctdogon, 71.8, 347.8 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctdogon, 72.3, 469.2 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctdogon, 75.2, 576.2 , 0 );

setEffScaleKey( spep_1 -3 + 92, ctdogon, 3.73, 3.73 );
setEffScaleKey( spep_1 -3 + 94, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_1 -3 + 96, ctdogon, 2.91, 2.91 );
setEffScaleKey( spep_1 -3 + 98, ctdogon, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 100, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 102, ctdogon, 4, 4 );
setEffScaleKey( spep_1 -3 + 104, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_1 -3 + 92, ctdogon, 13 );
setEffRotateKey( spep_1 -3 + 94, ctdogon, 13.1 );
setEffRotateKey( spep_1 -3 + 96, ctdogon, 13.1 );
setEffRotateKey( spep_1 -3 + 98, ctdogon, 13 );
setEffRotateKey( spep_1 -3 + 104, ctdogon, 13 );

setEffAlphaKey( spep_1 -3 + 92, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 100, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 102, ctdogon, 128 );
setEffAlphaKey( spep_1 -3 + 104, ctdogon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 148, 0, 0, 0, 0, 255 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 136, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 20, 1189 );
setSeVolume( spep_1 + 20, 1189, 71 );
se_1213 = playSe( spep_1 + 20, 1213 );
setSeVolume( spep_1 + 20, 1213, 0 );
playSe( spep_1 + 24, 1007 );
playSe( spep_1 + 26, 1000 );
playSe( spep_1 + 40, 1002 );
setSeVolume( spep_1 + 40, 1002, 63 );
se_1044 = playSe( spep_1 + 44, 1044 );
setSeVolume( spep_1 + 44, 1044, 63 );
setSeVolume( spep_1 + 46, 1213, 2.96 );
setSeVolume( spep_1 + 47, 1213, 5.92 );
setSeVolume( spep_1 + 48, 1213, 8.88 );
setSeVolume( spep_1 + 49, 1213, 11.83 );
setSeVolume( spep_1 + 50, 1213, 14.79 );
setSeVolume( spep_1 + 51, 1213, 17.75 );
setSeVolume( spep_1 + 52, 1213, 20.71 );
setSeVolume( spep_1 + 53, 1213, 23.67 );
setSeVolume( spep_1 + 54, 1213, 26.63 );
setSeVolume( spep_1 + 55, 1213, 29.58 );
setSeVolume( spep_1 + 56, 1213, 32.54 );
setSeVolume( spep_1 + 57, 1213, 35.50 );
setSeVolume( spep_1 + 58, 1213, 38.46 );
setSeVolume( spep_1 + 59, 1213, 41.42 );
setSeVolume( spep_1 + 60, 1213, 44.38 );
setSeVolume( spep_1 + 61, 1213, 47.33 );
setSeVolume( spep_1 + 62, 1213, 50.29 );
setSeVolume( spep_1 + 63, 1213, 53.25 );
setSeVolume( spep_1 + 64, 1213, 56.21 );
setSeVolume( spep_1 + 65, 1213, 59.17 );
setSeVolume( spep_1 + 66, 1213, 62.13 );
setSeVolume( spep_1 + 67, 1213, 65.08 );
setSeVolume( spep_1 + 68, 1213, 68.04 );
setSeVolume( spep_1 + 69, 1213, 71.00 );
playSe( spep_1 + 50, 1012 );
setSeVolume( spep_1 + 50, 1012, 71 );
playSe( spep_1 + 53, 1000 );
playSe( spep_1 + 57, 1007 );
playSe( spep_1 + 61, 1001 );
setSeVolume( spep_1 + 61, 1001, 89 );
playSe( spep_1 + 73, 1072 );
playSe( spep_1 + 97, 1009 );
stopSe( spep_1 + 125, se_1213, 36 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
--playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
--playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
--playSe( spep_2, SE_05);
speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
playSe( spep_2 + 0, 1035 );
stopSe( spep_2 + 1, se_1044, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 敵食べられ
------------------------------------------------------

-- ** エフェクト等 ** --
bite_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); --敵食べられ(ef_004)
setEffMoveKey( spep_3 + 0, bite_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 156, bite_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bite_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, bite_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bite_f, 0 );
setEffRotateKey( spep_3 + 156, bite_f, 0 );
setEffAlphaKey( spep_3 + 0, bite_f, 255 );
setEffAlphaKey( spep_3 + 156, bite_f, 255 );

bite_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --敵食べられ(ef_005)
setEffMoveKey( spep_3 + 0, bite_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 156, bite_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bite_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, bite_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bite_b, 0 );
setEffRotateKey( spep_3 + 156, bite_b, 0 );
setEffAlphaKey( spep_3 + 0, bite_b, 255 );
setEffAlphaKey( spep_3 + 156, bite_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 -3 + 3, 1, 1 );
setDisp( spep_3 -3 + 70, 1, 0 );
changeAnime( spep_3 -3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 34, 1, 117 );
changeAnime( spep_3 -3 + 46, 1, 102 );

setMoveKey( spep_3 -3 + 3, 1, 90.3, 46.6 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 92.2, 46.4 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 94.1, 46.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 96, 46.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 97.9, 46 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 99.8, 45.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 101.6, 45.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 103.4, 45.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 105.2, 45.8 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 106.9, 45.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 104.7, 41.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 110.4, 46 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 104.4, 42.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 114.4, 46.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 112.5, 42.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 118.2, 47.1 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 112, 43.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 116.8, 25.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 115.3, 17.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 121.7, 25.8 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 120.1, 22.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 126.5, 26.4 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 120.9, 22.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 134.4, 33.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 130, 24 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 129.3, 29 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 120.5, 21.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 126, 30.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 119, 31.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 123.7, 37.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 116.1, 32 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 115.9, 41.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 106.7, 39.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 105.1, 43.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 91.5, 40.4 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 91.5, 40.4 , 0 );

setScaleKey( spep_3 -3 + 3, 1, 0.72, 0.72 );
--setScaleKey( spep_3 -3 + 2, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 4, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 6, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 8, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 10, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 14, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 18, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 20, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 24, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 26, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 28, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 30, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 33, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 34, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 36, 1, 0.84, 0.84 );
setScaleKey( spep_3 -3 + 38, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 42, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 45, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 46, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 50, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 54, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 56, 1, 1, 1 );
setScaleKey( spep_3 -3 + 58, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 60, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 62, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 64, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 66, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 68, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 70, 1, 1.12, 1.12 );

setRotateKey( spep_3 -3 + 3, 1, -24.4 );
--setRotateKey( spep_3 -3 + 2, 1, -24 );
setRotateKey( spep_3 -3 + 4, 1, -23.6 );
setRotateKey( spep_3 -3 + 6, 1, -23.2 );
setRotateKey( spep_3 -3 + 8, 1, -22.8 );
setRotateKey( spep_3 -3 + 10, 1, -22.3 );
setRotateKey( spep_3 -3 + 12, 1, -21.9 );
setRotateKey( spep_3 -3 + 14, 1, -21.5 );
setRotateKey( spep_3 -3 + 16, 1, -21.1 );
setRotateKey( spep_3 -3 + 18, 1, -20.7 );
setRotateKey( spep_3 -3 + 20, 1, -20.3 );
setRotateKey( spep_3 -3 + 22, 1, -19.8 );
setRotateKey( spep_3 -3 + 24, 1, -19.4 );
setRotateKey( spep_3 -3 + 26, 1, -18.9 );
setRotateKey( spep_3 -3 + 28, 1, -18.4 );
setRotateKey( spep_3 -3 + 30, 1, -18 );
setRotateKey( spep_3 -3 + 33, 1, -17.5 );
setRotateKey( spep_3 -3 + 34, 1, 0.4 );
setRotateKey( spep_3 -3 + 36, 1, 0 );
setRotateKey( spep_3 -3 + 38, 1, -0.4 );
setRotateKey( spep_3 -3 + 40, 1, -0.7 );
setRotateKey( spep_3 -3 + 42, 1, -1.1 );
setRotateKey( spep_3 -3 + 45, 1, -1.5 );
setRotateKey( spep_3 -3 + 46, 1, -2.6 );
setRotateKey( spep_3 -3 + 48, 1, -3 );
setRotateKey( spep_3 -3 + 52, 1, -3 );
setRotateKey( spep_3 -3 + 54, 1, -2.6 );
setRotateKey( spep_3 -3 + 56, 1, -2.3 );
setRotateKey( spep_3 -3 + 58, 1, -2.6 );
setRotateKey( spep_3 -3 + 60, 1, -3 );
setRotateKey( spep_3 -3 + 62, 1, -3.4 );
setRotateKey( spep_3 -3 + 64, 1, -3.9 );
setRotateKey( spep_3 -3 + 66, 1, -4.4 );
setRotateKey( spep_3 -3 + 68, 1, -4.8 );
setRotateKey( spep_3 -3 + 70, 1, -4.8 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 -3 + 70, 906, 27, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 -3 + 70, shuchusen2, 27, 20 );

setEffMoveKey( spep_3 -3 + 70, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_3 -3 + 97, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_3 -3 + 70, shuchusen2, 1, 1 );
setEffScaleKey( spep_3 -3 + 97, shuchusen2, 1, 1 );

setEffRotateKey( spep_3 -3 + 70, shuchusen2, 0 );
setEffRotateKey( spep_3 -3 + 97, shuchusen2, 0 );

setEffAlphaKey( spep_3 -3 + 70, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 97, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctzudododo = entryEffectLife( spep_3 -3 + 3, 10014, 68 -2, 0x100, -1, 0, -73.2, 348.9 ); --ズドドドッ
setEffMoveKey( spep_3 -3 + 3, ctzudododo, -73.2, 348.9 , 0 );
--setEffMoveKey( spep_3 -3 + 2, ctzudododo, -73.2, 338.1 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctzudododo, -75.9, 350.7 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctzudododo, -75.9, 339.5 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctzudododo, -78.7, 352.5 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctzudododo, -78.6, 340.8 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctzudododo, -81.4, 354.3 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctzudododo, -81.3, 342.2 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctzudododo, -84.1, 356.1 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctzudododo, -83.9, 343.6 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctzudododo, -86.9, 358 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzudododo, -86.6, 344.9 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzudododo, -89.6, 359.8 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzudododo, -89.3, 346.3 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctzudododo, -92.3, 361.6 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctzudododo, -92, 347.6 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzudododo, -95.1, 363.4 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzudododo, -94.7, 349 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzudododo, -97.8, 365.2 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzudododo, -97.3, 350.3 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzudododo, -100.5, 367 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzudododo, -100, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzudododo, -103.3, 368.9 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzudododo, -102.7, 353.1 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzudododo, -106, 370.7 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzudododo, -105.4, 354.4 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctzudododo, -108.7, 372.5 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctzudododo, -108.1, 355.8 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctzudododo, -111.5, 374.3 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzudododo, -110.8, 357.2 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctzudododo, -114.2, 376.1 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctzudododo, -113.4, 358.5 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctzudododo, -116.9, 377.9 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctzudododo, -116.1, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctzudododo, -119.7, 379.8 , 0 );
setEffMoveKey( spep_3 -3 + 69, ctzudododo, -119.7, 379.8 , 0 );

setEffScaleKey( spep_3 -3 + 3, ctzudododo, 1.15, 1.48 );
--setEffScaleKey( spep_3 -3 + 2, ctzudododo, 1.17, 1.51 );
setEffScaleKey( spep_3 -3 + 4, ctzudododo, 1.19, 1.54 );
setEffScaleKey( spep_3 -3 + 6, ctzudododo, 1.21, 1.57 );
setEffScaleKey( spep_3 -3 + 8, ctzudododo, 1.24, 1.6 );
setEffScaleKey( spep_3 -3 + 10, ctzudododo, 1.26, 1.63 );
setEffScaleKey( spep_3 -3 + 12, ctzudododo, 1.28, 1.66 );
setEffScaleKey( spep_3 -3 + 14, ctzudododo, 1.31, 1.69 );
setEffScaleKey( spep_3 -3 + 16, ctzudododo, 1.33, 1.72 );
setEffScaleKey( spep_3 -3 + 18, ctzudododo, 1.35, 1.75 );
setEffScaleKey( spep_3 -3 + 20, ctzudododo, 1.37, 1.78 );
setEffScaleKey( spep_3 -3 + 22, ctzudododo, 1.4, 1.81 );
setEffScaleKey( spep_3 -3 + 24, ctzudododo, 1.42, 1.84 );
setEffScaleKey( spep_3 -3 + 26, ctzudododo, 1.44, 1.87 );
setEffScaleKey( spep_3 -3 + 28, ctzudododo, 1.47, 1.9 );
setEffScaleKey( spep_3 -3 + 30, ctzudododo, 1.49, 1.93 );
setEffScaleKey( spep_3 -3 + 32, ctzudododo, 1.51, 1.96 );
setEffScaleKey( spep_3 -3 + 34, ctzudododo, 1.53, 1.99 );
setEffScaleKey( spep_3 -3 + 36, ctzudododo, 1.56, 2.02 );
setEffScaleKey( spep_3 -3 + 38, ctzudododo, 1.58, 2.05 );
setEffScaleKey( spep_3 -3 + 40, ctzudododo, 1.6, 2.08 );
setEffScaleKey( spep_3 -3 + 42, ctzudododo, 1.63, 2.11 );
setEffScaleKey( spep_3 -3 + 44, ctzudododo, 1.65, 2.14 );
setEffScaleKey( spep_3 -3 + 46, ctzudododo, 1.67, 2.17 );
setEffScaleKey( spep_3 -3 + 48, ctzudododo, 1.69, 2.2 );
setEffScaleKey( spep_3 -3 + 50, ctzudododo, 1.72, 2.23 );
setEffScaleKey( spep_3 -3 + 52, ctzudododo, 1.74, 2.25 );
setEffScaleKey( spep_3 -3 + 54, ctzudododo, 1.76, 2.28 );
setEffScaleKey( spep_3 -3 + 56, ctzudododo, 1.79, 2.31 );
setEffScaleKey( spep_3 -3 + 58, ctzudododo, 1.81, 2.34 );
setEffScaleKey( spep_3 -3 + 60, ctzudododo, 1.83, 2.37 );
setEffScaleKey( spep_3 -3 + 62, ctzudododo, 1.85, 2.4 );
setEffScaleKey( spep_3 -3 + 64, ctzudododo, 1.88, 2.43 );
setEffScaleKey( spep_3 -3 + 66, ctzudododo, 1.9, 2.46 );
setEffScaleKey( spep_3 -3 + 68, ctzudododo, 1.92, 2.49 );
setEffScaleKey( spep_3 -3 + 69, ctzudododo, 1.92, 2.49 );

setEffRotateKey( spep_3 -3 + 3, ctzudododo, 17.1 );
setEffRotateKey( spep_3 -3 + 69, ctzudododo, 17.1 );

setEffAlphaKey( spep_3 -3 + 3, ctzudododo, 255 );
setEffAlphaKey( spep_3 -3 + 69, ctzudododo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 158, 0, 0, 0, 0, 255 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 146, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 2, 1116 );
playSe( spep_3 + 12, 44 );
setSeVolume( spep_3 + 12, 44, 79 );
se_0009 = playSe( spep_3 + 12, 09 );
setSeVolume( spep_3 + 12, 09, 63 );
playSe( spep_3 + 49, 1234 );
setSeVolume( spep_3 + 49, 1234, 158 );
stopSe( spep_3 + 69, se_0009, 0 );
se_1182 = playSe( spep_3 + 73, 1182 );
setSeVolume( spep_3 + 73, 1182, 178 );
playSe( spep_3 + 79, 1006 );
stopSe( spep_3 + 82, se_1182, 13 );
playSe( spep_3 + 93, 08 );
setSeVolume( spep_3 + 93, 08, 0 );
setSeVolume( spep_3 + 94, 08, 3.73 );
setSeVolume( spep_3 + 95, 08, 7.47 );
setSeVolume( spep_3 + 96, 08, 11.20 );
setSeVolume( spep_3 + 97, 08, 14.93 );
setSeVolume( spep_3 + 98, 08, 18.67 );
setSeVolume( spep_3 + 99, 08, 22.40 );
setSeVolume( spep_3 + 100, 08, 26.13 );
setSeVolume( spep_3 + 101, 08, 29.87 );
setSeVolume( spep_3 + 102, 08, 33.60 );
setSeVolume( spep_3 + 103, 08, 37.33 );
setSeVolume( spep_3 + 104, 08, 41.07 );
setSeVolume( spep_3 + 105, 08, 44.80 );
setSeVolume( spep_3 + 106, 08, 48.53 );
setSeVolume( spep_3 + 107, 08, 52.27 );
setSeVolume( spep_3 + 108, 08, 56.00 );
playSe( spep_3 + 148, 1072 );
setSeVolume( spep_3 + 148, 1072, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 156;

------------------------------------------------------
-- しっぽ受け止め
------------------------------------------------------
-- ** エフェクト等 ** --
tail = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --しっぽ受け止め(ef_006)
setEffMoveKey( spep_4 + 0, tail, 0, 0, 0 );
setEffMoveKey( spep_4 + 196, tail, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tail, 1.0, 1.0 );
setEffScaleKey( spep_4 + 196, tail, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tail, 0 );
setEffRotateKey( spep_4 + 196, tail, 0 );
setEffAlphaKey( spep_4 + 0, tail, 255 );
setEffAlphaKey( spep_4 + 196, tail, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 198, 0, 0, 0, 0, 255 ); --薄い黒　背景

-- ** 白フェード ** --
--entryFade( spep_4 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
setSeVolume( spep_4 + 6, 1072, 15.80 );
setSeVolume( spep_4 + 7, 1072, 31.60 );
setSeVolume( spep_4 + 8, 1072, 47.40 );
setSeVolume( spep_4 + 9, 1072, 63.20 );
setSeVolume( spep_4 + 10, 1072, 79.00 );
playSe( spep_4 -22 + 71, 1013 );
setSeVolume( spep_4 -22 + 71, 1013, 63 );
se_1112 = playSe( spep_4 -22 + 73, 1112 );
setSeVolume( spep_4 -22 + 73, 1112, 89 );
stopSe( spep_4 -22 + 89, se_1112, 17 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 30 );
endPhase( spep_4 + 180 );

else 

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入、突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
tosshin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); --導入、突進(ef_001)
setEffMoveKey( spep_0 + 0, tosshin, 0, 0, 0 );
setEffMoveKey( spep_0 + 156, tosshin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tosshin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 156, tosshin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tosshin, 0 );
setEffRotateKey( spep_0 + 156, tosshin, 0 );
setEffAlphaKey( spep_0 + 0, tosshin, 255 );
setEffAlphaKey( spep_0 + 156, tosshin, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 10, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 10, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 -30 + 52, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_0 -30 + 52,  ctgogo, 0, 530 );
setEffMoveKey(  spep_0 -30 + 124,  ctgogo, 0, 530 );

setEffAlphaKey( spep_0 -30 + 52, ctgogo, 0 );
setEffAlphaKey( spep_0 -30 + 53, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 54, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 118, ctgogo, 255 );
setEffAlphaKey( spep_0 -30 + 120, ctgogo, 191 );
setEffAlphaKey( spep_0 -30 + 122, ctgogo, 112 );
setEffAlphaKey( spep_0 -30 + 124, ctgogo, 64 );

setEffRotateKey( spep_0 -30 + 52,  ctgogo,  0);
setEffRotateKey( spep_0 -30 + 124,  ctgogo,  0);

setEffScaleKey( spep_0 -30 + 52,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0 -30 + 114,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0 -30 + 124,  ctgogo, -1.07, 1.07 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 158, 0, 0, 0, 0, 255 ); --薄い黒　背景

-- ** 音 ** --
playSe( spep_0 + 0, 08 );
playSe( spep_0 + 13, 1018 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    

    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵の固定
    --setMoveKey( SP_dodge + 32, 1, 52.3, 0.3 , 0 );
    --setScaleKey( SP_dodge + 32, 1, 1.41, 1.41 );
    --setRotateKey( SP_dodge + 32, 1, 2.5 );
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 白フェード ** --
entryFade( spep_0 + 146, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 107, 1003 );
setSeVolume( spep_0 + 107, 1003, 63 );
playSe( spep_0 + 109, 09 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 156;

------------------------------------------------------
-- ラッシュ、バア登場
------------------------------------------------------

-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); --ラッシュ、バア登場(ef_002)
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 146, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 146, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 146, rush_f, 255 );

rush_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0 ); --ラッシュ、バア登場(ef_003)
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 146, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 146, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 146, rush_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_1 -3 + 3, 1, 1 );
setDisp( spep_1 -3 + 148, 1, 0 );
changeAnime( spep_1 -3 + 3, 1, 101 );
changeAnime( spep_1 -3 + 24, 1, 108 );
changeAnime( spep_1 -3 + 50, 1, 106 );
changeAnime( spep_1 -3 + 60, 1, 108 );
changeAnime( spep_1 -3 + 92, 1, 106 );

setMoveKey( spep_1 -3 + 3, 1, 218.3, 43.6 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 195.8, 42.2 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 172.7, 40.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 149.2, 39.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 125.2, 38 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 100.7, 36.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 75.7, 35.3 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 50.2, 33.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 24.3, 32.5 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -2.1, 31.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -26.2, 31.2 , 0 );
setMoveKey( spep_1 -3 + 23, 1, -50.3, 31.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -45, 94.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -57.2, 67.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 17.9, 20.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 8.5, 36.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -32.7, 21.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 20.4, 70.1 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 18.5, 49.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 23.1, 70.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 21.1, 49.9 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 22.5, 49.9 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 23.8, 49.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 25.1, 49.9 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 26.4, 49.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 25.4, 80 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 44.2, 98.8 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 70.4, 123.3 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 68.4, 90.4 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 62.1, 82.9 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 90.2, 62.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 119.5, 89.7 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 90.2, 87.4 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 114, 42.1 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 97.9, 51.3 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 94.5, 50.6 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 91.2, 50 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 87.9, 49.4 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 84.7, 48.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 81.4, 48.4 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 78.2, 48 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 75, 47.6 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 71.9, 47.3 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 68.8, 47 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 65.7, 46.8 , 0 );
setMoveKey( spep_1 -3 + 91, 1, 62.6, 46.5 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 4.4, 19.3 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 217.2, 70 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 17.6, 33.2 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 13.1, -18.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 32.4, 9.9 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 22.4, -11.1 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 83.1, 40.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 88.8, 22.8 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 101.1, 45.7 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 106.9, 28.2 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 119.2, 51.2 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 125.2, 33.6 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 134.4, 36.4 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 143.6, 39.3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 148, 40.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 152.4, 41.4 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 156.9, 42.5 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 161.4, 43.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 165.9, 44.8 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 170.5, 45.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 175, 47.1 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 179.7, 48.3 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 184.3, 49.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 189, 50.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 193.8, 52 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 198.5, 53.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 203.3, 54.6 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 208.1, 55.9 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 213, 57.3 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.11, 1.11 );
--setScaleKey( spep_1 -3 + 2, 1, 1.12, 1.12 );
setScaleKey( spep_1 -3 + 4, 1, 1.13, 1.13 );
setScaleKey( spep_1 -3 + 6, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 8, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 10, 1, 1.17, 1.17 );
setScaleKey( spep_1 -3 + 12, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 14, 1, 1.19, 1.19 );
setScaleKey( spep_1 -3 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 18, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 24, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 26, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 28, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 30, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 49, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 50, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 52, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 59, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 60, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 62, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 64, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 66, 1, 1.22, 1.22 );
setScaleKey( spep_1 -3 + 68, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 70, 1, 1.24, 1.24 );
setScaleKey( spep_1 -3 + 72, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 74, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 76, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 78, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 80, 1, 1.28, 1.28 );
setScaleKey( spep_1 -3 + 82, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 84, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 86, 1, 1.3, 1.3 );
setScaleKey( spep_1 -3 + 88, 1, 1.31, 1.31 );
setScaleKey( spep_1 -3 + 91, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 92, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 94, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 96, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 98, 1, 1.32, 1.32 );
setScaleKey( spep_1 -3 + 100, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 102, 1, 1.34, 1.34 );
setScaleKey( spep_1 -3 + 104, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 106, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 108, 1, 1.38, 1.38 );
setScaleKey( spep_1 -3 + 110, 1, 1.39, 1.39 );
setScaleKey( spep_1 -3 + 112, 1, 1.4, 1.4 );
setScaleKey( spep_1 -3 + 114, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 116, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 118, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 120, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 122, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 124, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 126, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 128, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 130, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 132, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 134, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 136, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 138, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 140, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 142, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 144, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 146, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 148, 1, 1.54, 1.54 );

setRotateKey( spep_1 -3 + 3, 1, 0 );
setRotateKey( spep_1 -3 + 23, 1, 0 );
setRotateKey( spep_1 -3 + 24, 1, -14.2 );
setRotateKey( spep_1 -3 + 26, 1, -10.2 );
setRotateKey( spep_1 -3 + 28, 1, -9.9 );
setRotateKey( spep_1 -3 + 30, 1, -9.5 );
setRotateKey( spep_1 -3 + 32, 1, -9.2 );
setRotateKey( spep_1 -3 + 34, 1, -8.9 );
setRotateKey( spep_1 -3 + 36, 1, -8.5 );
setRotateKey( spep_1 -3 + 38, 1, -8.2 );
setRotateKey( spep_1 -3 + 40, 1, -7.9 );
setRotateKey( spep_1 -3 + 42, 1, -7.5 );
setRotateKey( spep_1 -3 + 44, 1, -7.2 );
setRotateKey( spep_1 -3 + 46, 1, -6.8 );
setRotateKey( spep_1 -3 + 49, 1, -6.5 );
setRotateKey( spep_1 -3 + 50, 1, -48.4 );
setRotateKey( spep_1 -3 + 52, 1, -46.3 );
setRotateKey( spep_1 -3 + 54, 1, -44.3 );
setRotateKey( spep_1 -3 + 56, 1, -42.3 );
setRotateKey( spep_1 -3 + 59, 1, -40.3 );
setRotateKey( spep_1 -3 + 60, 1, -11 );
setRotateKey( spep_1 -3 + 62, 1, -10.3 );
setRotateKey( spep_1 -3 + 64, 1, -9.3 );
setRotateKey( spep_1 -3 + 66, 1, -8.2 );
setRotateKey( spep_1 -3 + 68, 1, -7.2 );
setRotateKey( spep_1 -3 + 70, 1, -6.1 );
setRotateKey( spep_1 -3 + 72, 1, -5 );
setRotateKey( spep_1 -3 + 74, 1, -3.8 );
setRotateKey( spep_1 -3 + 76, 1, -2.7 );
setRotateKey( spep_1 -3 + 78, 1, -1.5 );
setRotateKey( spep_1 -3 + 80, 1, -0.3 );
setRotateKey( spep_1 -3 + 82, 1, 1 );
setRotateKey( spep_1 -3 + 84, 1, 2.2 );
setRotateKey( spep_1 -3 + 86, 1, 3.5 );
setRotateKey( spep_1 -3 + 88, 1, 4.8 );
setRotateKey( spep_1 -3 + 91, 1, 6.2 );
setRotateKey( spep_1 -3 + 92, 1, -48.4 );
setRotateKey( spep_1 -3 + 94, 1, -45.1 );
setRotateKey( spep_1 -3 + 96, 1, -41.9 );
setRotateKey( spep_1 -3 + 98, 1, -38.7 );
setRotateKey( spep_1 -3 + 100, 1, -35.6 );
setRotateKey( spep_1 -3 + 102, 1, -35.6 );
setRotateKey( spep_1 -3 + 104, 1, -34.8 );
setRotateKey( spep_1 -3 + 106, 1, -34 );
setRotateKey( spep_1 -3 + 108, 1, -33.2 );
setRotateKey( spep_1 -3 + 110, 1, -32.4 );
setRotateKey( spep_1 -3 + 112, 1, -31.7 );
setRotateKey( spep_1 -3 + 114, 1, -30.9 );
setRotateKey( spep_1 -3 + 116, 1, -30.1 );
setRotateKey( spep_1 -3 + 118, 1, -29.3 );
setRotateKey( spep_1 -3 + 120, 1, -28.5 );
setRotateKey( spep_1 -3 + 122, 1, -27.8 );
setRotateKey( spep_1 -3 + 124, 1, -27 );
setRotateKey( spep_1 -3 + 126, 1, -26.2 );
setRotateKey( spep_1 -3 + 128, 1, -25.4 );
setRotateKey( spep_1 -3 + 130, 1, -24.6 );
setRotateKey( spep_1 -3 + 132, 1, -23.8 );
setRotateKey( spep_1 -3 + 134, 1, -23.1 );
setRotateKey( spep_1 -3 + 136, 1, -22.3 );
setRotateKey( spep_1 -3 + 138, 1, -21.6 );
setRotateKey( spep_1 -3 + 140, 1, -20.8 );
setRotateKey( spep_1 -3 + 142, 1, -20.1 );
setRotateKey( spep_1 -3 + 144, 1, -19.3 );
setRotateKey( spep_1 -3 + 146, 1, -18.6 );
setRotateKey( spep_1 -3 + 148, 1, -17.8 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 -3 + 24, 906, 124, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 -3 + 23, shuchusen1, 124, 20 );

setEffMoveKey( spep_1 -3 + 24, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 148, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 24, shuchusen1, 1.58, 1.55 );
setEffScaleKey( spep_1 -3 + 148, shuchusen1, 1.58, 1.55 );

setEffRotateKey( spep_1 -3 + 24, shuchusen1, 0 );
setEffRotateKey( spep_1 -3 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 24, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 75, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 76, shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 77, shuchusen1, 0 );

setEffAlphaKey( spep_1 -3 + 91, shuchusen1, 0 );
setEffAlphaKey( spep_1 -3 + 92, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 148, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 24, 10020, 16, 0x100, -1, 0, 134.5, 274.4 ); --バキッ
setEffMoveKey( spep_1 -3 + 24, ctbaki, 134.5, 274.4 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctbaki, 134.5, 274.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctbaki, 153.1, 296.5 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctbaki, 139.8, 292.6 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, 165.6, 321.5 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, 152.3, 317.6 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, 152.3, 317.6 , 0 );

setEffScaleKey( spep_1 -3 + 24, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_1 -3 + 40, ctbaki, 1.93, 1.93 );

setEffRotateKey( spep_1 -3 + 24, ctbaki, 40 );
setEffRotateKey( spep_1 -3 + 40, ctbaki, 40 );

setEffAlphaKey( spep_1 -3 + 24, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 36, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 38, ctbaki, 128 );
setEffAlphaKey( spep_1 -3 + 40, ctbaki, 0 );


ctdon = entryEffectLife( spep_1 -3 + 50, 10019, 10, 0x100, -1, 0, -71.3, 291.3 ); --ドンッ
setEffMoveKey( spep_1 -3 + 50, ctdon, -71.3, 291.3 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon, -32.3, 305.1 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon, 3.7, 295 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon, 28.9, 302.7 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctdon, 23.5, 327.1 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctdon, 12.6, 341.8 , 0 );

setEffScaleKey( spep_1 -3 + 50, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 52, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_1 -3 + 54, ctdon, 2.3, 2.3 );
setEffScaleKey( spep_1 -3 + 56, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 58, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 60, ctdon, 1.85, 1.85 );

setEffRotateKey( spep_1 -3 + 50, ctdon, -10 );
setEffRotateKey( spep_1 -3 + 60, ctdon, -10 );

setEffAlphaKey( spep_1 -3 + 50, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 56, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 58, ctdon, 128 );
setEffAlphaKey( spep_1 -3 + 60, ctdon, 0 );

a = 1.7;

ctga = entryEffectLife( spep_1 -3 + 62, 10005, 12, 0x100, -1, 0, -58.4, 260.3 ); --ガッ
setEffMoveKey( spep_1 -3 + 62, ctga, -58.4, 260.3 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctga, -68.8, 277.9 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctga, -79.3, 295.6 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctga, -85.9, 292 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctga, -92.5, 288.4 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctga, -99.1, 284.8 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctga, -105.7, 281.2 , 0 );

setEffScaleKey( spep_1 -3 + 62, ctga, 0.6 * a, 0.6 * a );
setEffScaleKey( spep_1 -3 + 64, ctga, 0.83 * a, 0.83 * a );
setEffScaleKey( spep_1 -3 + 66, ctga, 1.06 * a, 1.06 * a );
setEffScaleKey( spep_1 -3 + 68, ctga, 1.09 * a, 1.09 * a );
setEffScaleKey( spep_1 -3 + 70, ctga, 1.13 * a, 1.13 * a );
setEffScaleKey( spep_1 -3 + 72, ctga, 1.16 * a, 1.16 * a );
setEffScaleKey( spep_1 -3 + 74, ctga, 1.2 * a, 1.2 * a );

setEffRotateKey( spep_1 -3 + 62, ctga, -14.8 );
setEffRotateKey( spep_1 -3 + 64, ctga, -14.9 );
setEffRotateKey( spep_1 -3 + 66, ctga, -15 );
setEffRotateKey( spep_1 -3 + 68, ctga, -15 );
setEffRotateKey( spep_1 -3 + 70, ctga, -14.9 );
setEffRotateKey( spep_1 -3 + 72, ctga, -14.9 );
setEffRotateKey( spep_1 -3 + 74, ctga, -14.8 );

setEffAlphaKey( spep_1 -3 + 62, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 66, ctga, 255 );
setEffAlphaKey( spep_1 -3 + 68, ctga, 191 );
setEffAlphaKey( spep_1 -3 + 70, ctga, 128 );
setEffAlphaKey( spep_1 -3 + 72, ctga, 64 );
setEffAlphaKey( spep_1 -3 + 74, ctga, 0 );

ctdogon = entryEffectLife( spep_1 -3 + 92, 10018, 12, 0x100, -1, 0, 51.8, 321.4 ); --ドゴォンッ
setEffMoveKey( spep_1 -3 + 92, ctdogon, 51.8, 321.4 , 0 );
setEffMoveKey( spep_1 -3 + 94, ctdogon, 53.5, 342.3 , 0 );
setEffMoveKey( spep_1 -3 + 96, ctdogon, 63.6, 333 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctdogon, 57.7, 347.4 , 0 );
setEffMoveKey( spep_1 -3 + 100, ctdogon, 71.8, 347.8 , 0 );
setEffMoveKey( spep_1 -3 + 102, ctdogon, 72.3, 469.2 , 0 );
setEffMoveKey( spep_1 -3 + 104, ctdogon, 75.2, 576.2 , 0 );

setEffScaleKey( spep_1 -3 + 92, ctdogon, 3.73, 3.73 );
setEffScaleKey( spep_1 -3 + 94, ctdogon, 2.79, 2.79 );
setEffScaleKey( spep_1 -3 + 96, ctdogon, 2.91, 2.91 );
setEffScaleKey( spep_1 -3 + 98, ctdogon, 3.02, 3.02 );
setEffScaleKey( spep_1 -3 + 100, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_1 -3 + 102, ctdogon, 4, 4 );
setEffScaleKey( spep_1 -3 + 104, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_1 -3 + 92, ctdogon, 13 );
setEffRotateKey( spep_1 -3 + 94, ctdogon, 13.1 );
setEffRotateKey( spep_1 -3 + 96, ctdogon, 13.1 );
setEffRotateKey( spep_1 -3 + 98, ctdogon, 13 );
setEffRotateKey( spep_1 -3 + 104, ctdogon, 13 );

setEffAlphaKey( spep_1 -3 + 92, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 100, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 102, ctdogon, 128 );
setEffAlphaKey( spep_1 -3 + 104, ctdogon, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 148, 0, 0, 0, 0, 255 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 136, 8, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 20, 1189 );
setSeVolume( spep_1 + 20, 1189, 71 );
se_1213 = playSe( spep_1 + 20, 1213 );
setSeVolume( spep_1 + 20, 1213, 0 );
playSe( spep_1 + 24, 1007 );
playSe( spep_1 + 26, 1000 );
playSe( spep_1 + 40, 1002 );
setSeVolume( spep_1 + 40, 1002, 63 );
se_1044 = playSe( spep_1 + 44, 1044 );
setSeVolume( spep_1 + 44, 1044, 63 );
setSeVolume( spep_1 + 46, 1213, 2.96 );
setSeVolume( spep_1 + 47, 1213, 5.92 );
setSeVolume( spep_1 + 48, 1213, 8.88 );
setSeVolume( spep_1 + 49, 1213, 11.83 );
setSeVolume( spep_1 + 50, 1213, 14.79 );
setSeVolume( spep_1 + 51, 1213, 17.75 );
setSeVolume( spep_1 + 52, 1213, 20.71 );
setSeVolume( spep_1 + 53, 1213, 23.67 );
setSeVolume( spep_1 + 54, 1213, 26.63 );
setSeVolume( spep_1 + 55, 1213, 29.58 );
setSeVolume( spep_1 + 56, 1213, 32.54 );
setSeVolume( spep_1 + 57, 1213, 35.50 );
setSeVolume( spep_1 + 58, 1213, 38.46 );
setSeVolume( spep_1 + 59, 1213, 41.42 );
setSeVolume( spep_1 + 60, 1213, 44.38 );
setSeVolume( spep_1 + 61, 1213, 47.33 );
setSeVolume( spep_1 + 62, 1213, 50.29 );
setSeVolume( spep_1 + 63, 1213, 53.25 );
setSeVolume( spep_1 + 64, 1213, 56.21 );
setSeVolume( spep_1 + 65, 1213, 59.17 );
setSeVolume( spep_1 + 66, 1213, 62.13 );
setSeVolume( spep_1 + 67, 1213, 65.08 );
setSeVolume( spep_1 + 68, 1213, 68.04 );
setSeVolume( spep_1 + 69, 1213, 71.00 );
playSe( spep_1 + 50, 1012 );
setSeVolume( spep_1 + 50, 1012, 71 );
playSe( spep_1 + 53, 1000 );
playSe( spep_1 + 57, 1007 );
playSe( spep_1 + 61, 1001 );
setSeVolume( spep_1 + 61, 1001, 89 );
playSe( spep_1 + 73, 1072 );
playSe( spep_1 + 97, 1009 );
stopSe( spep_1 + 125, se_1213, 36 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 146;

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
playSe( spep_2 + 0, 1035 );
stopSe( spep_2 + 1, se_1044, 0 );

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 敵食べられ
------------------------------------------------------

-- ** エフェクト等 ** --
bite_f = entryEffect( spep_3 + 0, SP_04r, 0x100, -1, 0, 0, 0 ); --敵食べられ(ef_004)
setEffMoveKey( spep_3 + 0, bite_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 156, bite_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bite_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, bite_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bite_f, 0 );
setEffRotateKey( spep_3 + 156, bite_f, 0 );
setEffAlphaKey( spep_3 + 0, bite_f, 255 );
setEffAlphaKey( spep_3 + 156, bite_f, 255 );

bite_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); --敵食べられ(ef_005)
setEffMoveKey( spep_3 + 0, bite_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 156, bite_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bite_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 156, bite_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bite_b, 0 );
setEffRotateKey( spep_3 + 156, bite_b, 0 );
setEffAlphaKey( spep_3 + 0, bite_b, 255 );
setEffAlphaKey( spep_3 + 156, bite_b, 255 );

-- ** 敵の動き ** --
setDisp( spep_3 -3 + 3, 1, 1 );
setDisp( spep_3 -3 + 70, 1, 0 );
changeAnime( spep_3 -3 + 0, 1, 106 );
changeAnime( spep_3 -3 + 34, 1, 117 );
changeAnime( spep_3 -3 + 46, 1, 102 );

setMoveKey( spep_3 -3 + 3, 1, 90.3, 46.6 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 92.2, 46.4 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 94.1, 46.2 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 96, 46.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 97.9, 46 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 99.8, 45.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 101.6, 45.9 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 103.4, 45.8 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 105.2, 45.8 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 106.9, 45.8 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 104.7, 41.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 110.4, 46 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 104.4, 42.2 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 114.4, 46.5 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 112.5, 42.8 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 118.2, 47.1 , 0 );
setMoveKey( spep_3 -3 + 33, 1, 112, 43.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 116.8, 25.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 115.3, 17.5 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 121.7, 25.8 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 120.1, 22.1 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 126.5, 26.4 , 0 );
setMoveKey( spep_3 -3 + 45, 1, 120.9, 22.8 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 134.4, 33.5 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 130, 24 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 129.3, 29 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 120.5, 21.8 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 126, 30.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 119, 31.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 123.7, 37.8 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 116.1, 32 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 115.9, 41.9 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 106.7, 39.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 105.1, 43.8 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 91.5, 40.4 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 91.5, 40.4 , 0 );

setScaleKey( spep_3 -3 + 3, 1, 0.72, 0.72 );
--setScaleKey( spep_3 -3 + 2, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 4, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 6, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 8, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 10, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_3 -3 + 14, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 16, 1, 0.77, 0.77 );
setScaleKey( spep_3 -3 + 18, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 20, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 22, 1, 0.79, 0.79 );
setScaleKey( spep_3 -3 + 24, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 26, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 28, 1, 0.81, 0.81 );
setScaleKey( spep_3 -3 + 30, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 33, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 34, 1, 0.83, 0.83 );
setScaleKey( spep_3 -3 + 36, 1, 0.84, 0.84 );
setScaleKey( spep_3 -3 + 38, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 40, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 42, 1, 0.86, 0.86 );
setScaleKey( spep_3 -3 + 45, 1, 0.87, 0.87 );
setScaleKey( spep_3 -3 + 46, 1, 0.94, 0.94 );
setScaleKey( spep_3 -3 + 48, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 50, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 52, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 54, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 56, 1, 1, 1 );
setScaleKey( spep_3 -3 + 58, 1, 1.02, 1.02 );
setScaleKey( spep_3 -3 + 60, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 62, 1, 1.06, 1.06 );
setScaleKey( spep_3 -3 + 64, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 66, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 68, 1, 1.12, 1.12 );
setScaleKey( spep_3 -3 + 70, 1, 1.12, 1.12 );

setRotateKey( spep_3 -3 + 3, 1, -24.4 );
--setRotateKey( spep_3 -3 + 2, 1, -24 );
setRotateKey( spep_3 -3 + 4, 1, -23.6 );
setRotateKey( spep_3 -3 + 6, 1, -23.2 );
setRotateKey( spep_3 -3 + 8, 1, -22.8 );
setRotateKey( spep_3 -3 + 10, 1, -22.3 );
setRotateKey( spep_3 -3 + 12, 1, -21.9 );
setRotateKey( spep_3 -3 + 14, 1, -21.5 );
setRotateKey( spep_3 -3 + 16, 1, -21.1 );
setRotateKey( spep_3 -3 + 18, 1, -20.7 );
setRotateKey( spep_3 -3 + 20, 1, -20.3 );
setRotateKey( spep_3 -3 + 22, 1, -19.8 );
setRotateKey( spep_3 -3 + 24, 1, -19.4 );
setRotateKey( spep_3 -3 + 26, 1, -18.9 );
setRotateKey( spep_3 -3 + 28, 1, -18.4 );
setRotateKey( spep_3 -3 + 30, 1, -18 );
setRotateKey( spep_3 -3 + 33, 1, -17.5 );
setRotateKey( spep_3 -3 + 34, 1, 0.4 );
setRotateKey( spep_3 -3 + 36, 1, 0 );
setRotateKey( spep_3 -3 + 38, 1, -0.4 );
setRotateKey( spep_3 -3 + 40, 1, -0.7 );
setRotateKey( spep_3 -3 + 42, 1, -1.1 );
setRotateKey( spep_3 -3 + 45, 1, -1.5 );
setRotateKey( spep_3 -3 + 46, 1, -2.6 );
setRotateKey( spep_3 -3 + 48, 1, -3 );
setRotateKey( spep_3 -3 + 52, 1, -3 );
setRotateKey( spep_3 -3 + 54, 1, -2.6 );
setRotateKey( spep_3 -3 + 56, 1, -2.3 );
setRotateKey( spep_3 -3 + 58, 1, -2.6 );
setRotateKey( spep_3 -3 + 60, 1, -3 );
setRotateKey( spep_3 -3 + 62, 1, -3.4 );
setRotateKey( spep_3 -3 + 64, 1, -3.9 );
setRotateKey( spep_3 -3 + 66, 1, -4.4 );
setRotateKey( spep_3 -3 + 68, 1, -4.8 );
setRotateKey( spep_3 -3 + 70, 1, -4.8 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 -3 + 70, 906, 27, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 -3 + 70, shuchusen2, 27, 20 );

setEffMoveKey( spep_3 -3 + 70, shuchusen2, 0, 0, 0 );
setEffMoveKey( spep_3 -3 + 97, shuchusen2, 0, 0, 0 );

setEffScaleKey( spep_3 -3 + 70, shuchusen2, 1, 1 );
setEffScaleKey( spep_3 -3 + 97, shuchusen2, 1, 1 );

setEffRotateKey( spep_3 -3 + 70, shuchusen2, 0 );
setEffRotateKey( spep_3 -3 + 97, shuchusen2, 0 );

setEffAlphaKey( spep_3 -3 + 70, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 97, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctzudododo = entryEffectLife( spep_3 -3 + 3, 10014, 68 -2, 0x100, -1, 0, -73.2, 348.9 ); --ズドドドッ
setEffMoveKey( spep_3 -3 + 3, ctzudododo, -73.2, 348.9 , 0 );
--setEffMoveKey( spep_3 -3 + 2, ctzudododo, -73.2, 338.1 , 0 );
setEffMoveKey( spep_3 -3 + 4, ctzudododo, -75.9, 350.7 , 0 );
setEffMoveKey( spep_3 -3 + 6, ctzudododo, -75.9, 339.5 , 0 );
setEffMoveKey( spep_3 -3 + 8, ctzudododo, -78.7, 352.5 , 0 );
setEffMoveKey( spep_3 -3 + 10, ctzudododo, -78.6, 340.8 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctzudododo, -81.4, 354.3 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctzudododo, -81.3, 342.2 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctzudododo, -84.1, 356.1 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctzudododo, -83.9, 343.6 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctzudododo, -86.9, 358 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzudododo, -86.6, 344.9 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzudododo, -89.6, 359.8 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzudododo, -89.3, 346.3 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctzudododo, -92.3, 361.6 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctzudododo, -92, 347.6 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzudododo, -95.1, 363.4 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzudododo, -94.7, 349 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzudododo, -97.8, 365.2 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzudododo, -97.3, 350.3 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzudododo, -100.5, 367 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzudododo, -100, 351.7 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzudododo, -103.3, 368.9 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzudododo, -102.7, 353.1 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzudododo, -106, 370.7 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzudododo, -105.4, 354.4 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctzudododo, -108.7, 372.5 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctzudododo, -108.1, 355.8 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctzudododo, -111.5, 374.3 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzudododo, -110.8, 357.2 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctzudododo, -114.2, 376.1 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctzudododo, -113.4, 358.5 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctzudododo, -116.9, 377.9 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctzudododo, -116.1, 359.9 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctzudododo, -119.7, 379.8 , 0 );
setEffMoveKey( spep_3 -3 + 69, ctzudododo, -119.7, 379.8 , 0 );

setEffScaleKey( spep_3 -3 + 3, ctzudododo, 1.15, 1.48 );
--setEffScaleKey( spep_3 -3 + 2, ctzudododo, 1.17, 1.51 );
setEffScaleKey( spep_3 -3 + 4, ctzudododo, 1.19, 1.54 );
setEffScaleKey( spep_3 -3 + 6, ctzudododo, 1.21, 1.57 );
setEffScaleKey( spep_3 -3 + 8, ctzudododo, 1.24, 1.6 );
setEffScaleKey( spep_3 -3 + 10, ctzudododo, 1.26, 1.63 );
setEffScaleKey( spep_3 -3 + 12, ctzudododo, 1.28, 1.66 );
setEffScaleKey( spep_3 -3 + 14, ctzudododo, 1.31, 1.69 );
setEffScaleKey( spep_3 -3 + 16, ctzudododo, 1.33, 1.72 );
setEffScaleKey( spep_3 -3 + 18, ctzudododo, 1.35, 1.75 );
setEffScaleKey( spep_3 -3 + 20, ctzudododo, 1.37, 1.78 );
setEffScaleKey( spep_3 -3 + 22, ctzudododo, 1.4, 1.81 );
setEffScaleKey( spep_3 -3 + 24, ctzudododo, 1.42, 1.84 );
setEffScaleKey( spep_3 -3 + 26, ctzudododo, 1.44, 1.87 );
setEffScaleKey( spep_3 -3 + 28, ctzudododo, 1.47, 1.9 );
setEffScaleKey( spep_3 -3 + 30, ctzudododo, 1.49, 1.93 );
setEffScaleKey( spep_3 -3 + 32, ctzudododo, 1.51, 1.96 );
setEffScaleKey( spep_3 -3 + 34, ctzudododo, 1.53, 1.99 );
setEffScaleKey( spep_3 -3 + 36, ctzudododo, 1.56, 2.02 );
setEffScaleKey( spep_3 -3 + 38, ctzudododo, 1.58, 2.05 );
setEffScaleKey( spep_3 -3 + 40, ctzudododo, 1.6, 2.08 );
setEffScaleKey( spep_3 -3 + 42, ctzudododo, 1.63, 2.11 );
setEffScaleKey( spep_3 -3 + 44, ctzudododo, 1.65, 2.14 );
setEffScaleKey( spep_3 -3 + 46, ctzudododo, 1.67, 2.17 );
setEffScaleKey( spep_3 -3 + 48, ctzudododo, 1.69, 2.2 );
setEffScaleKey( spep_3 -3 + 50, ctzudododo, 1.72, 2.23 );
setEffScaleKey( spep_3 -3 + 52, ctzudododo, 1.74, 2.25 );
setEffScaleKey( spep_3 -3 + 54, ctzudododo, 1.76, 2.28 );
setEffScaleKey( spep_3 -3 + 56, ctzudododo, 1.79, 2.31 );
setEffScaleKey( spep_3 -3 + 58, ctzudododo, 1.81, 2.34 );
setEffScaleKey( spep_3 -3 + 60, ctzudododo, 1.83, 2.37 );
setEffScaleKey( spep_3 -3 + 62, ctzudododo, 1.85, 2.4 );
setEffScaleKey( spep_3 -3 + 64, ctzudododo, 1.88, 2.43 );
setEffScaleKey( spep_3 -3 + 66, ctzudododo, 1.9, 2.46 );
setEffScaleKey( spep_3 -3 + 68, ctzudododo, 1.92, 2.49 );
setEffScaleKey( spep_3 -3 + 69, ctzudododo, 1.92, 2.49 );

setEffRotateKey( spep_3 -3 + 3, ctzudododo, -57.1 );
setEffRotateKey( spep_3 -3 + 69, ctzudododo, -57.1 );

setEffAlphaKey( spep_3 -3 + 3, ctzudododo, 255 );
setEffAlphaKey( spep_3 -3 + 69, ctzudododo, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 158, 0, 0, 0, 0, 255 ); --薄い黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 146, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 + 2, 1116 );
playSe( spep_3 + 12, 44 );
setSeVolume( spep_3 + 12, 44, 79 );
se_0009 = playSe( spep_3 + 12, 09 );
setSeVolume( spep_3 + 12, 09, 63 );
playSe( spep_3 + 49, 1234 );
setSeVolume( spep_3 + 49, 1234, 158 );
stopSe( spep_3 + 69, se_0009, 0 );
se_1182 = playSe( spep_3 + 73, 1182 );
setSeVolume( spep_3 + 73, 1182, 178 );
playSe( spep_3 + 79, 1006 );
stopSe( spep_3 + 82, se_1182, 13 );
playSe( spep_3 + 93, 08 );
setSeVolume( spep_3 + 93, 08, 0 );
setSeVolume( spep_3 + 94, 08, 3.73 );
setSeVolume( spep_3 + 95, 08, 7.47 );
setSeVolume( spep_3 + 96, 08, 11.20 );
setSeVolume( spep_3 + 97, 08, 14.93 );
setSeVolume( spep_3 + 98, 08, 18.67 );
setSeVolume( spep_3 + 99, 08, 22.40 );
setSeVolume( spep_3 + 100, 08, 26.13 );
setSeVolume( spep_3 + 101, 08, 29.87 );
setSeVolume( spep_3 + 102, 08, 33.60 );
setSeVolume( spep_3 + 103, 08, 37.33 );
setSeVolume( spep_3 + 104, 08, 41.07 );
setSeVolume( spep_3 + 105, 08, 44.80 );
setSeVolume( spep_3 + 106, 08, 48.53 );
setSeVolume( spep_3 + 107, 08, 52.27 );
setSeVolume( spep_3 + 108, 08, 56.00 );
playSe( spep_3 + 148, 1072 );
setSeVolume( spep_3 + 148, 1072, 0 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 156;

------------------------------------------------------
-- しっぽ受け止め
------------------------------------------------------
-- ** エフェクト等 ** --
tail = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); --しっぽ受け止め(ef_006)
setEffMoveKey( spep_4 + 0, tail, 0, 0, 0 );
setEffMoveKey( spep_4 + 196, tail, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tail, 1.0, 1.0 );
setEffScaleKey( spep_4 + 196, tail, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tail, 0 );
setEffRotateKey( spep_4 + 196, tail, 0 );
setEffAlphaKey( spep_4 + 0, tail, 255 );
setEffAlphaKey( spep_4 + 196, tail, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 198, 0, 0, 0, 0, 255 ); --薄い黒　背景

-- ** 白フェード ** --
--entryFade( spep_4 + 0, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
setSeVolume( spep_4 + 6, 1072, 15.80 );
setSeVolume( spep_4 + 7, 1072, 31.60 );
setSeVolume( spep_4 + 8, 1072, 47.40 );
setSeVolume( spep_4 + 9, 1072, 63.20 );
setSeVolume( spep_4 + 10, 1072, 79.00 );
playSe( spep_4 -22 + 71, 1013 );
setSeVolume( spep_4 -22 + 71, 1013, 63 );
se_1112 = playSe( spep_4 -22 + 73, 1112 );
setSeVolume( spep_4 -22 + 73, 1112, 89 );
stopSe( spep_4 -22 + 89, se_1112, 17 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 30 );
endPhase( spep_4 + 180 );

end