--ピッコロ_激烈光弾

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
SE_13 = 1009; --パンチ
SE_14 = 43; --瞬間移動
SE_15 = 1120; --キック
SE_16 = 1018; --ダッシュ
SE_17 = 44; --ダッシュ

--味方側
SP_01 = 153774; --ラッシュ・手前
SP_02 = 153775; --ラッシュ・奥
SP_03 = 153776; --気弾溜め〜発射〜命中・手前
SP_04 = 153777; --気弾溜め〜発射〜命中・奥


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
-- ラッシュ(266F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
rushf = entryEffectLife( spep_0 + 0, SP_01, 266, 0x100, -1, 0, 0, 0 );  --ラッシュ・手前(ef_001)
setEffMoveKey( spep_0 + 0, rushf, 0, 0, 0 );
setEffMoveKey( spep_0 + 266, rushf, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, rushf, 1.0, 1.0 );
setEffScaleKey( spep_0 + 266, rushf, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, rushf, 0 );
setEffRotateKey( spep_0 + 266, rushf, 0 );

setEffAlphaKey( spep_0 + 0, rushf, 255 );
setEffAlphaKey( spep_0 + 266, rushf, 255 );

rushb = entryEffectLife( spep_0 + 0, SP_02, 266, 0x80, -1, 0, 0, 0 );  --ラッシュ・奥(ef_002)
setEffMoveKey( spep_0 + 0, rushb, 0, 0, 0 );
setEffMoveKey( spep_0 + 266, rushb, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, rushb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 266, rushb, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, rushb, 0 );
setEffRotateKey( spep_0 + 266, rushb, 0 );

setEffAlphaKey( spep_0 + 0, rushb, 255 );
setEffAlphaKey( spep_0 + 266, rushb, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, 9 );  --ダッシュ
playSe( spep_0 + 5, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 58; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0);
    
    pauseAll( SP_dodge, 67 );
    
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

-- ** 敵の動き ** --
setDisp( spep_0 + 59, 1, 1 );
setDisp( spep_0 + 113, 1, 0 );
setDisp( spep_0 + 123, 1, 1 );
setDisp( spep_0 + 153, 1, 0 );
setDisp( spep_0 + 195, 1, 1 );
setDisp( spep_0 + 231, 1, 0 );
setDisp( spep_0 + 235, 1, 1 );
setDisp( spep_0 + 263, 1, 0 );

changeAnime( spep_0 + 59, 1, 102 );
changeAnime( spep_0 + 91, 1, 7 );
changeAnime( spep_0 + 123, 1, 6 );
changeAnime( spep_0 + 201, 1, 107 );
changeAnime( spep_0 + 235, 1, 105 );


setMoveKey( spep_0 + 59, 1, 130, -54.1, 0 );
setMoveKey( spep_0 + 61, 1, 111.9, -54, 0 );
setMoveKey( spep_0 + 63, 1, 98.8, -54, 0 );
setMoveKey( spep_0 + 65, 1, 88.3, -54, 0 );
setMoveKey( spep_0 + 67, 1, 79.6, -54, 0 );
setMoveKey( spep_0 + 69, 1, 72.1, -54, 0 );
setMoveKey( spep_0 + 71, 1, 65.7, -54, 0 );
setMoveKey( spep_0 + 73, 1, 60.2, -54, 0 );
setMoveKey( spep_0 + 75, 1, 55.4, -54, 0 );
setMoveKey( spep_0 + 77, 1, 51.4, -54, 0 );
setMoveKey( spep_0 + 79, 1, 47.9, -54, 0 );
setMoveKey( spep_0 + 81, 1, 45.1, -54, 0 );
setMoveKey( spep_0 + 83, 1, 42.8, -54, 0 );
setMoveKey( spep_0 + 85, 1, 41.1, -54, 0 );
setMoveKey( spep_0 + 87, 1, 40.1, -54.1, 0 );
setMoveKey( spep_0 + 89, 1, 40, -54, 0 );
setMoveKey( spep_0 + 90, 1, 40, -54, 0 );

setMoveKey( spep_0 + 91, 1, -35.3, -77.9, 0 );
setMoveKey( spep_0 + 93, 1, -11, -72.7, 0 );
setMoveKey( spep_0 + 95, 1, -15.3, -70.6, 0 );
setMoveKey( spep_0 + 97, 1, -13.4, -72, 0 );
setMoveKey( spep_0 + 99, 1, -147.5, -392.4, 0 );
setMoveKey( spep_0 + 101, 1, -245.7, -574.7, 0 );
setMoveKey( spep_0 + 103, 1, -294.5, -698, 0 );
setMoveKey( spep_0 + 105, 1, -345.4, -810, 0 );
setMoveKey( spep_0 + 107, 1, -381.8, -890.1, 0 );
setMoveKey( spep_0 + 109, 1, -411, -954.1, 0 );
setMoveKey( spep_0 + 111, 1, -434.2, -1005, 0 );
setMoveKey( spep_0 + 113, 1, -452.1, -1044.4, 0 );
setMoveKey( spep_0 + 115, 1, -465.3, -1073.6, 0 );
setMoveKey( spep_0 + 117, 1, -465.2, -1073.5, 0 );
setMoveKey( spep_0 + 119, 1, -465.2, -1073.4, 0 );
setMoveKey( spep_0 + 121, 1, -465.2, -1073.2, 0 );
setMoveKey( spep_0 + 122, 1, -465.2, -1073.2, 0 );

setMoveKey( spep_0 + 123, 1, 356.2, 464.1, 0 );
setMoveKey( spep_0 + 125, 1, 351.4, 456.4, 0 );
setMoveKey( spep_0 + 127, 1, 345.5, 446.9, 0 );
setMoveKey( spep_0 + 129, 1, 338.2, 435.2, 0 );
setMoveKey( spep_0 + 131, 1, 329.3, 420.8, 0 );
setMoveKey( spep_0 + 133, 1, 318.6, 403.5, 0 );
setMoveKey( spep_0 + 135, 1, 305.7, 382.7, 0 );
setMoveKey( spep_0 + 137, 1, 290.2, 357.9, 0 );
setMoveKey( spep_0 + 139, 1, 272, 328.3, 0 );
setMoveKey( spep_0 + 141, 1, 250.3, 293.2, 0 );
setMoveKey( spep_0 + 143, 1, 224.6, 251.5, 0 );
setMoveKey( spep_0 + 145, 1, 193.9, 201.9, 0 );
setMoveKey( spep_0 + 147, 1, 157.2, 142.2, 0 );
setMoveKey( spep_0 + 149, 1, 112.4, 69.8, 0 );
setMoveKey( spep_0 + 182, 1, 112.4, 69.8, 0 );

setMoveKey( spep_0 + 183, 1, 881.4, 973.6, 0 );
setMoveKey( spep_0 + 185, 1, 874.7, 964.9, 0 );
setMoveKey( spep_0 + 187, 1, 853.9, 938.4, 0 );
setMoveKey( spep_0 + 189, 1, 817.6, 891.9, 0 );
setMoveKey( spep_0 + 191, 1, 762.7, 821.5, 0 );
setMoveKey( spep_0 + 193, 1, 684.4, 720.6, 0 );
setMoveKey( spep_0 + 195, 1, 573.9, 577.7, 0 );
setMoveKey( spep_0 + 197, 1, 414, 369.7, 0 );
setMoveKey( spep_0 + 199, 1, 159.2, 34.7, 0 );
setMoveKey( spep_0 + 200, 1, 159.2, 34.7, 0 );

setMoveKey( spep_0 + 201, 1, 73.9, -169.2, 0 );
setMoveKey( spep_0 + 203, 1, 98.4, -154.9, 0 );
setMoveKey( spep_0 + 205, 1, 122, -236.3, 0 );
setMoveKey( spep_0 + 207, 1, 83.1, -182.8, 0 );
setMoveKey( spep_0 + 209, 1, 86.5, -200.2, 0 );
setMoveKey( spep_0 + 211, 1, 96.8, -191.3, 0 );
setMoveKey( spep_0 + 213, 1, 107.3, -207.6, 0 );
setMoveKey( spep_0 + 215, 1, 119.4, -213.9, 0 );
setMoveKey( spep_0 + 217, 1, 137, -237.6, 0 );
setMoveKey( spep_0 + 219, 1, 161.3, -259.4, 0 );
setMoveKey( spep_0 + 221, 1, 200.5, -300.9, 0 );
setMoveKey( spep_0 + 223, 1, 258, -361.6, 0 );
setMoveKey( spep_0 + 225, 1, 339.1, -447.2, 0 );
setMoveKey( spep_0 + 227, 1, 447.3, -561.4, 0 );
setMoveKey( spep_0 + 229, 1, 582.1, -703.2, 0 );
setMoveKey( spep_0 + 231, 1, 738.9, -867.8, 0 );
setMoveKey( spep_0 + 233, 1, 911.2, -1048.8, 0 );
setMoveKey( spep_0 + 234, 1, 911.2, -1048.8, 0 );

setMoveKey( spep_0 + 235, 1, 59, 24.4, 0 );
setMoveKey( spep_0 + 237, 1, 58, 26.6, 0 );
setMoveKey( spep_0 + 239, 1, 55.6, 32.5, 0 );
setMoveKey( spep_0 + 241, 1, 50.5, 45.3, 0 );
setMoveKey( spep_0 + 243, 1, 35.2, 83.1, 0 );
setMoveKey( spep_0 + 245, 1, 24.7, 109, 0 );
setMoveKey( spep_0 + 247, 1, 19.6, 121.7, 0 );
setMoveKey( spep_0 + 249, 1, 16.8, 128.6, 0 );
setMoveKey( spep_0 + 251, 1, 15.1, 132.8, 0 );
setMoveKey( spep_0 + 253, 1, 14, 135.4, 0 );
setMoveKey( spep_0 + 255, 1, 13.3, 137.2, 0 );
setMoveKey( spep_0 + 257, 1, 12.9, 138.5, 0 );
setMoveKey( spep_0 + 259, 1, 12.4, 139.4, 0 );
setMoveKey( spep_0 + 261, 1, 12.1, 140.1, 0 );
setMoveKey( spep_0 + 263, 1, 11.9, 140.6, 0 );


setScaleKey( spep_0 + 59, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 61, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 63, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 65, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 67, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 69, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 71, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 73, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 75, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 77, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 79, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 81, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 83, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 85, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 87, 1, 2, 2 );
setScaleKey( spep_0 + 90, 1, 2, 2 );

setScaleKey( spep_0 + 91, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 93, 1, 1, 1 );
setScaleKey( spep_0 + 95, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 97, 1, 1, 1 );
setScaleKey( spep_0 + 99, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 101, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 103, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 105, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 107, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 109, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 111, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 113, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 115, 1, 2, 2 );
setScaleKey( spep_0 + 122, 1, 2, 2 );

setScaleKey( spep_0 + 123, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 125, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 127, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 129, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 131, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 133, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 135, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 137, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 139, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 141, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 143, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 145, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 147, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 149, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 182, 1, 0.7, 0.7 );

setScaleKey( spep_0 + 183, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 185, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 187, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 189, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 191, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 193, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 195, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 197, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 199, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 200, 1, 2.69, 2.69 );

setScaleKey( spep_0 + 201, 1, 1, 1 );
setScaleKey( spep_0 + 203, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 205, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 207, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 209, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 211, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 213, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 215, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 217, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 219, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 221, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 223, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 225, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 227, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 229, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 231, 1, 2, 2 );
setScaleKey( spep_0 + 233, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 234, 1, 2.26, 2.26 );

setScaleKey( spep_0 + 235, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 237, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 239, 1, 3, 3 );
setScaleKey( spep_0 + 241, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 243, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 245, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 247, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 249, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 251, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 253, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 255, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 257, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 259, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 261, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 263, 1, 0.3, 0.3 );


setRotateKey( spep_0 + 59, 1, 0 );
setRotateKey( spep_0 + 90, 1, 0 );

setRotateKey( spep_0 + 91, 1, -35 );
setRotateKey( spep_0 + 122, 1, -35 );

setRotateKey( spep_0 + 123, 1, -89.9 );
setRotateKey( spep_0 + 125, 1, -90.1 );
setRotateKey( spep_0 + 127, 1, -90.3 );
setRotateKey( spep_0 + 129, 1, -90.6 );
setRotateKey( spep_0 + 131, 1, -90.9 );
setRotateKey( spep_0 + 133, 1, -91.3 );
setRotateKey( spep_0 + 135, 1, -91.8 );
setRotateKey( spep_0 + 137, 1, -92.4 );
setRotateKey( spep_0 + 139, 1, -93.1 );
setRotateKey( spep_0 + 141, 1, -93.9 );
setRotateKey( spep_0 + 143, 1, -94.9 );
setRotateKey( spep_0 + 145, 1, -96.1 );
setRotateKey( spep_0 + 147, 1, -97.4 );
setRotateKey( spep_0 + 149, 1, -99.1 );
setRotateKey( spep_0 + 182, 1, -99.1 );

setRotateKey( spep_0 + 183, 1, -97.4 );
setRotateKey( spep_0 + 185, 1, -97.3 );
setRotateKey( spep_0 + 187, 1, -97.1 );
setRotateKey( spep_0 + 189, 1, -96.8 );
setRotateKey( spep_0 + 191, 1, -96.2 );
setRotateKey( spep_0 + 193, 1, -95.4 );
setRotateKey( spep_0 + 195, 1, -94.2 );
setRotateKey( spep_0 + 197, 1, -92.6 );
setRotateKey( spep_0 + 199, 1, -89.9 );
setRotateKey( spep_0 + 200, 1, -89.9 );

setRotateKey( spep_0 + 201, 1, 0 );
setRotateKey( spep_0 + 263, 1, 0 );


-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_0 + 99, 10005, 11, 0x100, -1, 0, -73.9, 256.7 ); --ガッ
setEffMoveKey( spep_0 + 99, ctga, -73.9, 256.7 , 0 );
setEffMoveKey( spep_0 + 100, ctga, -84.4, 318.2 , 0 );
setEffMoveKey( spep_0 + 103, ctga, -91.2, 295.6 , 0 );
setEffMoveKey( spep_0 + 105, ctga, -89, 311.8 , 0 );
setEffMoveKey( spep_0 + 107, ctga, -91.2, 295.6 , 0 );
setEffMoveKey( spep_0 + 109, ctga, -91.2, 289.4 , 0 );
setEffMoveKey( spep_0 + 110, ctga, -91.2, 283.1 , 0 );

setEffScaleKey( spep_0 + 99, ctga, 0.91, 0.91 );
setEffScaleKey( spep_0 + 100, ctga, 2.43, 2.43 );
setEffScaleKey( spep_0 + 103, ctga, 1.58, 1.58 );
setEffScaleKey( spep_0 + 105, ctga, 1.75, 1.75 );
setEffScaleKey( spep_0 + 107, ctga, 1.5, 1.5 );
setEffScaleKey( spep_0 + 110, ctga, 0.75, 0.75 );

setEffRotateKey( spep_0 + 99, ctga, -28.9 );
setEffRotateKey( spep_0 + 100, ctga, -27.9 );
setEffRotateKey( spep_0 + 110, ctga, -27.9 );

setEffAlphaKey( spep_0 + 99, ctga, 255 );
setEffAlphaKey( spep_0 + 107, ctga, 255 );
setEffAlphaKey( spep_0 + 109, ctga, 128 );
setEffAlphaKey( spep_0 + 110, ctga, 0 );

ctsyun = entryEffectLife( spep_0 + 137, 10011, 11, 0x100, -1, 0, -114.5, 214.2 ); --シュンッ
setEffMoveKey( spep_0 + 137, ctsyun, -114.5, 214.2 , 0 );
setEffMoveKey( spep_0 + 139, ctsyun, -114.4, 214.3 , 0 );
setEffMoveKey( spep_0 + 141, ctsyun, -114.3, 214.3 , 0 );
setEffMoveKey( spep_0 + 143, ctsyun, -114.3, 214.4 , 0 );
setEffMoveKey( spep_0 + 145, ctsyun, -114.4, 214.3 , 0 );
setEffMoveKey( spep_0 + 147, ctsyun, -114.5, 214.3 , 0 );
setEffMoveKey( spep_0 + 148, ctsyun, -114.5, 214.2 , 0 );

setEffScaleKey( spep_0 + 137, ctsyun, 1.37, 1.37 );
setEffScaleKey( spep_0 + 139, ctsyun, 2.31, 2.31 );
setEffScaleKey( spep_0 + 141, ctsyun, 1.92, 1.92 );
setEffScaleKey( spep_0 + 143, ctsyun, 1.52, 1.52 );
setEffScaleKey( spep_0 + 145, ctsyun, 1.48, 1.48 );
setEffScaleKey( spep_0 + 147, ctsyun, 1.45, 1.45 );
setEffScaleKey( spep_0 + 148, ctsyun, 1.42, 1.42 );

setEffRotateKey( spep_0 + 137, ctsyun, -23.3 );
setEffRotateKey( spep_0 + 148, ctsyun, -23.3 );

setEffAlphaKey( spep_0 + 137, ctsyun, 255 );
setEffAlphaKey( spep_0 + 143, ctsyun, 255 );
setEffAlphaKey( spep_0 + 145, ctsyun, 170 );
setEffAlphaKey( spep_0 + 147, ctsyun, 85 );
setEffAlphaKey( spep_0 + 148, ctsyun, 0 );

ctbaki = entryEffectLife( spep_0 + 207, 10020, 26, 0x100, -1, 0, 127.8, 223 );
setEffMoveKey( spep_0 + 207, ctbaki, 127.8, 223 , 0 );
setEffMoveKey( spep_0 + 209, ctbaki, 114.3, 318 , 0 );
setEffMoveKey( spep_0 + 211, ctbaki, 116.1, 286.7 , 0 );
setEffMoveKey( spep_0 + 213, ctbaki, 117.5, 281.6 , 0 );
setEffMoveKey( spep_0 + 215, ctbaki, 120.6, 301.6 , 0 );
setEffMoveKey( spep_0 + 217, ctbaki, 122.6, 281.5 , 0 );
setEffMoveKey( spep_0 + 219, ctbaki, 125.7, 301 , 0 );
setEffMoveKey( spep_0 + 221, ctbaki, 127.8, 281.5 , 0 );
setEffMoveKey( spep_0 + 223, ctbaki, 130.8, 300.4 , 0 );
setEffMoveKey( spep_0 + 225, ctbaki, 132.9, 281.4 , 0 );
setEffMoveKey( spep_0 + 227, ctbaki, 136, 299.8 , 0 );
setEffMoveKey( spep_0 + 229, ctbaki, 138, 281.4 , 0 );
setEffMoveKey( spep_0 + 231, ctbaki, 138.5, 290.8 , 0 );
setEffMoveKey( spep_0 + 233, ctbaki, 138.1, 267.2 , 0 );

setEffScaleKey( spep_0 + 207, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_0 + 209, ctbaki, 3.04, 3.12 );
setEffScaleKey( spep_0 + 211, ctbaki, 2.72, 2.76 );
setEffScaleKey( spep_0 + 213, ctbaki, 2.4, 2.4 );
setEffScaleKey( spep_0 + 215, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_0 + 217, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_0 + 219, ctbaki, 2.3, 2.3 );
setEffScaleKey( spep_0 + 221, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_0 + 223, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_0 + 225, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_0 + 227, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_0 + 229, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_0 + 231, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_0 + 233, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_0 + 207, ctbaki, 51 );
setEffRotateKey( spep_0 + 209, ctbaki, 43.7 );
setEffRotateKey( spep_0 + 211, ctbaki, 45.1 );
setEffRotateKey( spep_0 + 213, ctbaki, 46.5 );
setEffRotateKey( spep_0 + 233, ctbaki, 46.5 );

setEffAlphaKey( spep_0 + 207, ctbaki, 255 );
setEffAlphaKey( spep_0 + 229, ctbaki, 255 );
setEffAlphaKey( spep_0 + 231, ctbaki, 134 );
setEffAlphaKey( spep_0 + 233, ctbaki, 13 );

-- ** 白フェード ** --
entryFade( spep_0 + 258, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 266, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 91, SE_13 );  --パンチ
playSe( spep_0 + 107, SE_14 );  --瞬間移動
playSe( spep_0 + 137, 1016 );  --瞬間移動
playSe( spep_0 + 156, SE_17 );  --ダッシュ
playSe( spep_0 + 200, SE_15 );  --キック
SE_1121_1 = playSe( spep_0 + 225, 1121 );  --敵が飛んでいく音
stopSe( spep_0 + 245, SE_1121_1, 21 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 266;

--------------------------------------
--カードカットイン(88F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白フェード ** --
entryFade( spep_1 + 86, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;

------------------------------------------------------
-- 気弾溜め〜発射〜命中(710F)
------------------------------------------------------

-- ** エフェクト等 ** --
tamehitf = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_2 + 0, tamehitf, 0, 0, 0 );
setEffMoveKey( spep_2 + 710, tamehitf, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, tamehitf, 1.0, 1.0 );
setEffScaleKey( spep_2 + 710, tamehitf, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, tamehitf, 0 );
setEffRotateKey( spep_2 + 710, tamehitf, 0 );

setEffAlphaKey( spep_2 + 0, tamehitf, 255 );
setEffAlphaKey( spep_2 + 710, tamehitf, 255 );

tamehitb = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --背景(ef_004)
setEffMoveKey( spep_2 + 0, tamehitb, 0, 0, 0 );
setEffMoveKey( spep_2 + 710, tamehitb, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, tamehitb, 1.0, 1.0 );
setEffScaleKey( spep_2 + 710, tamehitb, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, tamehitb, 0 );
setEffRotateKey( spep_2 + 710, tamehitb, 0 );

setEffAlphaKey( spep_2 + 0, tamehitb, 255 );
setEffAlphaKey( spep_2 + 710, tamehitb, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 345, 1, 1 );
setDisp( spep_2 + 477, 1, 0 );

changeAnime( spep_2 + 345, 1, 105 );
changeAnime( spep_2 + 395, 1, 107 );

setMoveKey( spep_2 + 345, 1, 484.4, 35.8 , 0 );
setMoveKey( spep_2 + 347, 1, 482.7, 35.8 , 0 );
setMoveKey( spep_2 + 349, 1, 477.5, 35.9 , 0 );
setMoveKey( spep_2 + 351, 1, 468.8, 36 , 0 );
setMoveKey( spep_2 + 353, 1, 457.3, 36.1 , 0 );
setMoveKey( spep_2 + 355, 1, 443.6, 36.3 , 0 );
setMoveKey( spep_2 + 357, 1, 428.7, 36.4 , 0 );
setMoveKey( spep_2 + 359, 1, 413.3, 36.5 , 0 );
setMoveKey( spep_2 + 361, 1, 398.1, 36.7 , 0 );
setMoveKey( spep_2 + 363, 1, 383.7, 36.9 , 0 );
setMoveKey( spep_2 + 365, 1, 370.2, 37.1 , 0 );
setMoveKey( spep_2 + 367, 1, 357.7, 37.1 , 0 );
setMoveKey( spep_2 + 369, 1, 346.3, 37.3 , 0 );
setMoveKey( spep_2 + 371, 1, 336, 37.4 , 0 );
setMoveKey( spep_2 + 373, 1, 326.8, 37.5 , 0 );
setMoveKey( spep_2 + 375, 1, 318.6, 37.5 , 0 );
setMoveKey( spep_2 + 377, 1, 311.3, 37.6 , 0 );
setMoveKey( spep_2 + 379, 1, 304.9, 37.7 , 0 );
setMoveKey( spep_2 + 381, 1, 299.3, 37.7 , 0 );
setMoveKey( spep_2 + 383, 1, 294.5, 37.8 , 0 );
setMoveKey( spep_2 + 385, 1, 290.3, 37.8 , 0 );
setMoveKey( spep_2 + 387, 1, 286.9, 37.8 , 0 );
setMoveKey( spep_2 + 389, 1, 284, 37.9 , 0 );
setMoveKey( spep_2 + 391, 1, 281.7, 37.9 , 0 );
setMoveKey( spep_2 + 393, 1, 279.9, 37.9 , 0 );
setMoveKey( spep_2 + 394, 1, 279.9, 37.9 , 0 );

setMoveKey( spep_2 + 395, 1, 98.5, -162.7 , 0 );
setMoveKey( spep_2 + 397, 1, 96.1, -164.9 , 0 );
setMoveKey( spep_2 + 399, 1, 99.3, -160.9 , 0 );
setMoveKey( spep_2 + 401, 1, 98.1, -165.5 , 0 );
setMoveKey( spep_2 + 403, 1, 100.4, -162.5 , 0 );
setMoveKey( spep_2 + 405, 1, 98.5, -166.7 , 0 );
setMoveKey( spep_2 + 407, 1, 97.2, -164.2 , 0 );
setMoveKey( spep_2 + 409, 1, 99.9, -167.4 , 0 );
setMoveKey( spep_2 + 411, 1, 98.1, -164.8 , 0 );
setMoveKey( spep_2 + 413, 1, 97.7, -167.8 , 0 );
setMoveKey( spep_2 + 415, 1, 99.4, -164.3 , 0 );
setMoveKey( spep_2 + 417, 1, 98.5, -169.7 , 0 );
setMoveKey( spep_2 + 419, 1, 99.9, -165.6 , 0 );
setMoveKey( spep_2 + 421, 1, 99.1, -169.9 , 0 );
setMoveKey( spep_2 + 423, 1, 98.8, -169.3 , 0 );
setMoveKey( spep_2 + 425, 1, 98.5, -168.6 , 0 );
setMoveKey( spep_2 + 427, 1, 97.1, -166.8 , 0 );
setMoveKey( spep_2 + 429, 1, 93.6, -169.4 , 0 );
setMoveKey( spep_2 + 431, 1, 99, -165.1 , 0 );
setMoveKey( spep_2 + 433, 1, 96.1, -173 , 0 );
setMoveKey( spep_2 + 435, 1, 99.7, -166.5 , 0 );
setMoveKey( spep_2 + 437, 1, 92.1, -169.4 , 0 );
setMoveKey( spep_2 + 439, 1, 98.9, -162.5 , 0 );
setMoveKey( spep_2 + 441, 1, 93, -173.8 , 0 );
setMoveKey( spep_2 + 443, 1, 96.7, -164.9 , 0 );
setMoveKey( spep_2 + 445, 1, 102.7, -172.7 , 0 );
setMoveKey( spep_2 + 447, 1, 95.7, -162.5 , 0 );
setMoveKey( spep_2 + 449, 1, 99.7, -173.4 , 0 );
setMoveKey( spep_2 + 451, 1, 94.9, -164.8 , 0 );
setMoveKey( spep_2 + 453, 1, 101.5, -174.9 , 0 );
setMoveKey( spep_2 + 455, 1, 96.4, -163.5 , 0 );
setMoveKey( spep_2 + 457, 1, 102, -175.5 , 0 );
setMoveKey( spep_2 + 459, 1, 90.3, -166.2 , 0 );
setMoveKey( spep_2 + 461, 1, 102, -176.4 , 0 );
setMoveKey( spep_2 + 463, 1, 85.7, -171.6 , 0 );
setMoveKey( spep_2 + 465, 1, 105.3, -168.4 , 0 );
setMoveKey( spep_2 + 467, 1, 85.1, -167.7 , 0 );
setMoveKey( spep_2 + 469, 1, 99.3, -177.6 , 0 );
setMoveKey( spep_2 + 471, 1, 98, -162.5 , 0 );
setMoveKey( spep_2 + 473, 1, 102.2, -176.6 , 0 );
setMoveKey( spep_2 + 475, 1, 97.5, -158.1 , 0 );
setMoveKey( spep_2 + 477, 1, 102.2, -179.6 , 0 );


setScaleKey( spep_2 + 345, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 347, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 349, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 351, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 353, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 355, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 357, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 359, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 361, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 363, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 365, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 367, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 369, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 371, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 373, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 375, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 377, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 379, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 381, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 385, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 387, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 394, 1, 0.15, 0.15 );

setScaleKey( spep_2 + 395, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 397, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 399, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 401, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 403, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 407, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 409, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 413, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 415, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 419, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 421, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 425, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 427, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 433, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 435, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 443, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 445, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 453, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 455, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 469, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 471, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 477, 1, 0.9, 0.9 );


setRotateKey( spep_2 + 345, 1, 15 );
setRotateKey( spep_2 + 394, 1, 15 );

setRotateKey( spep_2 + 395, 1, -44.9 );
setRotateKey( spep_2 + 477, 1, -44.9 );

-- ** セリフカットイン :: --
speff1 = entryEffect( spep_2 +138, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_2 + 395, 10014, 54, 0x100, -1, 0, -73.9, 312.7 ); --ズドドドッ
setEffMoveKey( spep_2 + 395, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 397, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 399, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 401, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 403, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 405, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 407, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 409, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 411, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 413, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 415, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 417, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 419, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 421, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 423, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 425, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 427, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 429, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 431, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 433, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 435, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 437, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 439, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 441, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 443, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 445, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 447, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 449, ctzudodo, -73.9, 312.7 , 0 );

setEffScaleKey( spep_2 + 395, ctzudodo, 3.2, 3.2 );
setEffScaleKey( spep_2 + 449, ctzudodo, 3.2, 3.2 );

setEffRotateKey( spep_2 + 395, ctzudodo, -17.9 );
setEffRotateKey( spep_2 + 449, ctzudodo, -17.9 );

setEffAlphaKey( spep_2 + 395, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 445, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 447, ctzudodo, 128 );
setEffAlphaKey( spep_2 + 449, ctzudodo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 710, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 672, 28, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_2 + 33, 1131 );  --ため
setSeVolume( spep_2 +33,  1131,  60);
playSe( spep_2 + 94, 1035 );
SE_1044_1 = playSe( spep_2 + 138, 1044 );  --地響き
setSeVolume( spep_2 + 138, 1044, 40 )
playSe( spep_2 + 160, SE_04 );  --ゴゴゴ
playSe( spep_2 + 228, 1003 );  --手を前に突き出す
stopSe( spep_2 + 250, SE_1044_1, 0 );
playSe( spep_2 + 250, 1022 );  --発射手元
setSeVolume( spep_2 + 250, 1022, 150 );
playSe( spep_2 + 340, 1021 );  --敵に玉が向かう
playSe( spep_2 + 395, 64 );  --敵に玉が迫る

playSe( spep_2 + 460, 1024 );  --着弾
setSeVolume( spep_2 + 447, 1023, 60 );
playSe( spep_2 + 587, 1024 );  --着弾
SE_1044_3 = playSe( spep_2 + 588, 1044 );  --地響き
setSeVolume( spep_2 + 588, 1044, 150 );
stopSe( spep_2 + 640, SE_1044_3, 38 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 587 );
endPhase( spep_2 + 710 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- ラッシュ(266F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
rushf = entryEffectLife( spep_0 + 0, SP_01, 266, 0x100, -1, 0, 0, 0 );  --ラッシュ・手前(ef_001)
setEffMoveKey( spep_0 + 0, rushf, 0, 0, 0 );
setEffMoveKey( spep_0 + 266, rushf, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, rushf, 1.0, 1.0 );
setEffScaleKey( spep_0 + 266, rushf, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, rushf, 0 );
setEffRotateKey( spep_0 + 266, rushf, 0 );

setEffAlphaKey( spep_0 + 0, rushf, 255 );
setEffAlphaKey( spep_0 + 266, rushf, 255 );

rushb = entryEffectLife( spep_0 + 0, SP_02, 266, 0x80, -1, 0, 0, 0 );  --ラッシュ・奥(ef_002)
setEffMoveKey( spep_0 + 0, rushb, 0, 0, 0 );
setEffMoveKey( spep_0 + 266, rushb, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, rushb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 266, rushb, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, rushb, 0 );
setEffRotateKey( spep_0 + 266, rushb, 0 );

setEffAlphaKey( spep_0 + 0, rushb, 255 );
setEffAlphaKey( spep_0 + 266, rushb, 255 );

-- ** 音 ** --
playSe( spep_0 + 0, 9 );  --ダッシュ
playSe( spep_0 + 5, 1072 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 58; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0);
    
    pauseAll( SP_dodge, 67 );
    
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

-- ** 敵の動き ** --
setDisp( spep_0 + 59, 1, 1 );
setDisp( spep_0 + 113, 1, 0 );
setDisp( spep_0 + 123, 1, 1 );
setDisp( spep_0 + 153, 1, 0 );
setDisp( spep_0 + 195, 1, 1 );
setDisp( spep_0 + 231, 1, 0 );
setDisp( spep_0 + 235, 1, 1 );
setDisp( spep_0 + 263, 1, 0 );

changeAnime( spep_0 + 59, 1, 102 );
changeAnime( spep_0 + 91, 1, 7 );
changeAnime( spep_0 + 123, 1, 6 );
changeAnime( spep_0 + 201, 1, 107 );
changeAnime( spep_0 + 235, 1, 105 );


setMoveKey( spep_0 + 59, 1, 130, -54.1, 0 );
setMoveKey( spep_0 + 61, 1, 111.9, -54, 0 );
setMoveKey( spep_0 + 63, 1, 98.8, -54, 0 );
setMoveKey( spep_0 + 65, 1, 88.3, -54, 0 );
setMoveKey( spep_0 + 67, 1, 79.6, -54, 0 );
setMoveKey( spep_0 + 69, 1, 72.1, -54, 0 );
setMoveKey( spep_0 + 71, 1, 65.7, -54, 0 );
setMoveKey( spep_0 + 73, 1, 60.2, -54, 0 );
setMoveKey( spep_0 + 75, 1, 55.4, -54, 0 );
setMoveKey( spep_0 + 77, 1, 51.4, -54, 0 );
setMoveKey( spep_0 + 79, 1, 47.9, -54, 0 );
setMoveKey( spep_0 + 81, 1, 45.1, -54, 0 );
setMoveKey( spep_0 + 83, 1, 42.8, -54, 0 );
setMoveKey( spep_0 + 85, 1, 41.1, -54, 0 );
setMoveKey( spep_0 + 87, 1, 40.1, -54.1, 0 );
setMoveKey( spep_0 + 89, 1, 40, -54, 0 );
setMoveKey( spep_0 + 90, 1, 40, -54, 0 );

setMoveKey( spep_0 + 91, 1, -35.3, -77.9, 0 );
setMoveKey( spep_0 + 93, 1, -11, -72.7, 0 );
setMoveKey( spep_0 + 95, 1, -15.3, -70.6, 0 );
setMoveKey( spep_0 + 97, 1, -13.4, -72, 0 );
setMoveKey( spep_0 + 99, 1, -147.5, -392.4, 0 );
setMoveKey( spep_0 + 101, 1, -245.7, -574.7, 0 );
setMoveKey( spep_0 + 103, 1, -294.5, -698, 0 );
setMoveKey( spep_0 + 105, 1, -345.4, -810, 0 );
setMoveKey( spep_0 + 107, 1, -381.8, -890.1, 0 );
setMoveKey( spep_0 + 109, 1, -411, -954.1, 0 );
setMoveKey( spep_0 + 111, 1, -434.2, -1005, 0 );
setMoveKey( spep_0 + 113, 1, -452.1, -1044.4, 0 );
setMoveKey( spep_0 + 115, 1, -465.3, -1073.6, 0 );
setMoveKey( spep_0 + 117, 1, -465.2, -1073.5, 0 );
setMoveKey( spep_0 + 119, 1, -465.2, -1073.4, 0 );
setMoveKey( spep_0 + 121, 1, -465.2, -1073.2, 0 );
setMoveKey( spep_0 + 122, 1, -465.2, -1073.2, 0 );

setMoveKey( spep_0 + 123, 1, 356.2, 464.1, 0 );
setMoveKey( spep_0 + 125, 1, 351.4, 456.4, 0 );
setMoveKey( spep_0 + 127, 1, 345.5, 446.9, 0 );
setMoveKey( spep_0 + 129, 1, 338.2, 435.2, 0 );
setMoveKey( spep_0 + 131, 1, 329.3, 420.8, 0 );
setMoveKey( spep_0 + 133, 1, 318.6, 403.5, 0 );
setMoveKey( spep_0 + 135, 1, 305.7, 382.7, 0 );
setMoveKey( spep_0 + 137, 1, 290.2, 357.9, 0 );
setMoveKey( spep_0 + 139, 1, 272, 328.3, 0 );
setMoveKey( spep_0 + 141, 1, 250.3, 293.2, 0 );
setMoveKey( spep_0 + 143, 1, 224.6, 251.5, 0 );
setMoveKey( spep_0 + 145, 1, 193.9, 201.9, 0 );
setMoveKey( spep_0 + 147, 1, 157.2, 142.2, 0 );
setMoveKey( spep_0 + 149, 1, 112.4, 69.8, 0 );
setMoveKey( spep_0 + 182, 1, 112.4, 69.8, 0 );

setMoveKey( spep_0 + 183, 1, 881.4, 973.6, 0 );
setMoveKey( spep_0 + 185, 1, 874.7, 964.9, 0 );
setMoveKey( spep_0 + 187, 1, 853.9, 938.4, 0 );
setMoveKey( spep_0 + 189, 1, 817.6, 891.9, 0 );
setMoveKey( spep_0 + 191, 1, 762.7, 821.5, 0 );
setMoveKey( spep_0 + 193, 1, 684.4, 720.6, 0 );
setMoveKey( spep_0 + 195, 1, 573.9, 577.7, 0 );
setMoveKey( spep_0 + 197, 1, 414, 369.7, 0 );
setMoveKey( spep_0 + 199, 1, 159.2, 34.7, 0 );
setMoveKey( spep_0 + 200, 1, 159.2, 34.7, 0 );

setMoveKey( spep_0 + 201, 1, 73.9, -169.2, 0 );
setMoveKey( spep_0 + 203, 1, 98.4, -154.9, 0 );
setMoveKey( spep_0 + 205, 1, 122, -236.3, 0 );
setMoveKey( spep_0 + 207, 1, 83.1, -182.8, 0 );
setMoveKey( spep_0 + 209, 1, 86.5, -200.2, 0 );
setMoveKey( spep_0 + 211, 1, 96.8, -191.3, 0 );
setMoveKey( spep_0 + 213, 1, 107.3, -207.6, 0 );
setMoveKey( spep_0 + 215, 1, 119.4, -213.9, 0 );
setMoveKey( spep_0 + 217, 1, 137, -237.6, 0 );
setMoveKey( spep_0 + 219, 1, 161.3, -259.4, 0 );
setMoveKey( spep_0 + 221, 1, 200.5, -300.9, 0 );
setMoveKey( spep_0 + 223, 1, 258, -361.6, 0 );
setMoveKey( spep_0 + 225, 1, 339.1, -447.2, 0 );
setMoveKey( spep_0 + 227, 1, 447.3, -561.4, 0 );
setMoveKey( spep_0 + 229, 1, 582.1, -703.2, 0 );
setMoveKey( spep_0 + 231, 1, 738.9, -867.8, 0 );
setMoveKey( spep_0 + 233, 1, 911.2, -1048.8, 0 );
setMoveKey( spep_0 + 234, 1, 911.2, -1048.8, 0 );

setMoveKey( spep_0 + 235, 1, 59, 24.4, 0 );
setMoveKey( spep_0 + 237, 1, 58, 26.6, 0 );
setMoveKey( spep_0 + 239, 1, 55.6, 32.5, 0 );
setMoveKey( spep_0 + 241, 1, 50.5, 45.3, 0 );
setMoveKey( spep_0 + 243, 1, 35.2, 83.1, 0 );
setMoveKey( spep_0 + 245, 1, 24.7, 109, 0 );
setMoveKey( spep_0 + 247, 1, 19.6, 121.7, 0 );
setMoveKey( spep_0 + 249, 1, 16.8, 128.6, 0 );
setMoveKey( spep_0 + 251, 1, 15.1, 132.8, 0 );
setMoveKey( spep_0 + 253, 1, 14, 135.4, 0 );
setMoveKey( spep_0 + 255, 1, 13.3, 137.2, 0 );
setMoveKey( spep_0 + 257, 1, 12.9, 138.5, 0 );
setMoveKey( spep_0 + 259, 1, 12.4, 139.4, 0 );
setMoveKey( spep_0 + 261, 1, 12.1, 140.1, 0 );
setMoveKey( spep_0 + 263, 1, 11.9, 140.6, 0 );


setScaleKey( spep_0 + 59, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 61, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 63, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 65, 1, 2.32, 2.32 );
setScaleKey( spep_0 + 67, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 69, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 71, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 73, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 75, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 77, 1, 2.08, 2.08 );
setScaleKey( spep_0 + 79, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 81, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 83, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 85, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 87, 1, 2, 2 );
setScaleKey( spep_0 + 90, 1, 2, 2 );

setScaleKey( spep_0 + 91, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 93, 1, 1, 1 );
setScaleKey( spep_0 + 95, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 97, 1, 1, 1 );
setScaleKey( spep_0 + 99, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 101, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 103, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 105, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 107, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 109, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 111, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 113, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 115, 1, 2, 2 );
setScaleKey( spep_0 + 122, 1, 2, 2 );

setScaleKey( spep_0 + 123, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 125, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 127, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 129, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 131, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 133, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 135, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 137, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 139, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 141, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 143, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 145, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 147, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 149, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 182, 1, 0.7, 0.7 );

setScaleKey( spep_0 + 183, 1, 4.34, 4.34 );
setScaleKey( spep_0 + 185, 1, 4.32, 4.32 );
setScaleKey( spep_0 + 187, 1, 4.27, 4.27 );
setScaleKey( spep_0 + 189, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 191, 1, 4.07, 4.07 );
setScaleKey( spep_0 + 193, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 195, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 197, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 199, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 200, 1, 2.69, 2.69 );

setScaleKey( spep_0 + 201, 1, 1, 1 );
setScaleKey( spep_0 + 203, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 205, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 207, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 209, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 211, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 213, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 215, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 217, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 219, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 221, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 223, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 225, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 227, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 229, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 231, 1, 2, 2 );
setScaleKey( spep_0 + 233, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 234, 1, 2.26, 2.26 );

setScaleKey( spep_0 + 235, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 237, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 239, 1, 3, 3 );
setScaleKey( spep_0 + 241, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 243, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 245, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 247, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 249, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 251, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 253, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 255, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 257, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 259, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 261, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 263, 1, 0.3, 0.3 );


setRotateKey( spep_0 + 59, 1, 0 );
setRotateKey( spep_0 + 90, 1, 0 );

setRotateKey( spep_0 + 91, 1, -35 );
setRotateKey( spep_0 + 122, 1, -35 );

setRotateKey( spep_0 + 123, 1, -89.9 );
setRotateKey( spep_0 + 125, 1, -90.1 );
setRotateKey( spep_0 + 127, 1, -90.3 );
setRotateKey( spep_0 + 129, 1, -90.6 );
setRotateKey( spep_0 + 131, 1, -90.9 );
setRotateKey( spep_0 + 133, 1, -91.3 );
setRotateKey( spep_0 + 135, 1, -91.8 );
setRotateKey( spep_0 + 137, 1, -92.4 );
setRotateKey( spep_0 + 139, 1, -93.1 );
setRotateKey( spep_0 + 141, 1, -93.9 );
setRotateKey( spep_0 + 143, 1, -94.9 );
setRotateKey( spep_0 + 145, 1, -96.1 );
setRotateKey( spep_0 + 147, 1, -97.4 );
setRotateKey( spep_0 + 149, 1, -99.1 );
setRotateKey( spep_0 + 182, 1, -99.1 );

setRotateKey( spep_0 + 183, 1, -97.4 );
setRotateKey( spep_0 + 185, 1, -97.3 );
setRotateKey( spep_0 + 187, 1, -97.1 );
setRotateKey( spep_0 + 189, 1, -96.8 );
setRotateKey( spep_0 + 191, 1, -96.2 );
setRotateKey( spep_0 + 193, 1, -95.4 );
setRotateKey( spep_0 + 195, 1, -94.2 );
setRotateKey( spep_0 + 197, 1, -92.6 );
setRotateKey( spep_0 + 199, 1, -89.9 );
setRotateKey( spep_0 + 200, 1, -89.9 );

setRotateKey( spep_0 + 201, 1, 0 );
setRotateKey( spep_0 + 263, 1, 0 );


-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_0 + 99, 10005, 11, 0x100, -1, 0, -73.9, 256.7 ); --ガッ
setEffMoveKey( spep_0 + 99, ctga, -73.9, 256.7 , 0 );
setEffMoveKey( spep_0 + 100, ctga, -84.4, 318.2 , 0 );
setEffMoveKey( spep_0 + 103, ctga, -91.2, 295.6 , 0 );
setEffMoveKey( spep_0 + 105, ctga, -89, 311.8 , 0 );
setEffMoveKey( spep_0 + 107, ctga, -91.2, 295.6 , 0 );
setEffMoveKey( spep_0 + 109, ctga, -91.2, 289.4 , 0 );
setEffMoveKey( spep_0 + 110, ctga, -91.2, 283.1 , 0 );

setEffScaleKey( spep_0 + 99, ctga, 0.91, 0.91 );
setEffScaleKey( spep_0 + 100, ctga, 2.43, 2.43 );
setEffScaleKey( spep_0 + 103, ctga, 1.58, 1.58 );
setEffScaleKey( spep_0 + 105, ctga, 1.75, 1.75 );
setEffScaleKey( spep_0 + 107, ctga, 1.5, 1.5 );
setEffScaleKey( spep_0 + 110, ctga, 0.75, 0.75 );

setEffRotateKey( spep_0 + 99, ctga, -28.9 );
setEffRotateKey( spep_0 + 100, ctga, -27.9 );
setEffRotateKey( spep_0 + 110, ctga, -27.9 );

setEffAlphaKey( spep_0 + 99, ctga, 255 );
setEffAlphaKey( spep_0 + 107, ctga, 255 );
setEffAlphaKey( spep_0 + 109, ctga, 128 );
setEffAlphaKey( spep_0 + 110, ctga, 0 );

ctsyun = entryEffectLife( spep_0 + 137, 10011, 11, 0x100, -1, 0, -114.5, 214.2 ); --シュンッ
setEffMoveKey( spep_0 + 137, ctsyun, -114.5, 214.2 , 0 );
setEffMoveKey( spep_0 + 139, ctsyun, -114.4, 214.3 , 0 );
setEffMoveKey( spep_0 + 141, ctsyun, -114.3, 214.3 , 0 );
setEffMoveKey( spep_0 + 143, ctsyun, -114.3, 214.4 , 0 );
setEffMoveKey( spep_0 + 145, ctsyun, -114.4, 214.3 , 0 );
setEffMoveKey( spep_0 + 147, ctsyun, -114.5, 214.3 , 0 );
setEffMoveKey( spep_0 + 148, ctsyun, -114.5, 214.2 , 0 );

setEffScaleKey( spep_0 + 137, ctsyun, 1.37, 1.37 );
setEffScaleKey( spep_0 + 139, ctsyun, 2.31, 2.31 );
setEffScaleKey( spep_0 + 141, ctsyun, 1.92, 1.92 );
setEffScaleKey( spep_0 + 143, ctsyun, 1.52, 1.52 );
setEffScaleKey( spep_0 + 145, ctsyun, 1.48, 1.48 );
setEffScaleKey( spep_0 + 147, ctsyun, 1.45, 1.45 );
setEffScaleKey( spep_0 + 148, ctsyun, 1.42, 1.42 );

setEffRotateKey( spep_0 + 137, ctsyun, -23.3 );
setEffRotateKey( spep_0 + 148, ctsyun, -23.3 );

setEffAlphaKey( spep_0 + 137, ctsyun, 255 );
setEffAlphaKey( spep_0 + 143, ctsyun, 255 );
setEffAlphaKey( spep_0 + 145, ctsyun, 170 );
setEffAlphaKey( spep_0 + 147, ctsyun, 85 );
setEffAlphaKey( spep_0 + 148, ctsyun, 0 );

ctbaki = entryEffectLife( spep_0 + 207, 10020, 26, 0x100, -1, 0, 127.8, 223 );
setEffMoveKey( spep_0 + 207, ctbaki, 127.8, 223 , 0 );
setEffMoveKey( spep_0 + 209, ctbaki, 114.3, 318 , 0 );
setEffMoveKey( spep_0 + 211, ctbaki, 116.1, 286.7 , 0 );
setEffMoveKey( spep_0 + 213, ctbaki, 117.5, 281.6 , 0 );
setEffMoveKey( spep_0 + 215, ctbaki, 120.6, 301.6 , 0 );
setEffMoveKey( spep_0 + 217, ctbaki, 122.6, 281.5 , 0 );
setEffMoveKey( spep_0 + 219, ctbaki, 125.7, 301 , 0 );
setEffMoveKey( spep_0 + 221, ctbaki, 127.8, 281.5 , 0 );
setEffMoveKey( spep_0 + 223, ctbaki, 130.8, 300.4 , 0 );
setEffMoveKey( spep_0 + 225, ctbaki, 132.9, 281.4 , 0 );
setEffMoveKey( spep_0 + 227, ctbaki, 136, 299.8 , 0 );
setEffMoveKey( spep_0 + 229, ctbaki, 138, 281.4 , 0 );
setEffMoveKey( spep_0 + 231, ctbaki, 138.5, 290.8 , 0 );
setEffMoveKey( spep_0 + 233, ctbaki, 138.1, 267.2 , 0 );

setEffScaleKey( spep_0 + 207, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_0 + 209, ctbaki, 3.04, 3.12 );
setEffScaleKey( spep_0 + 211, ctbaki, 2.72, 2.76 );
setEffScaleKey( spep_0 + 213, ctbaki, 2.4, 2.4 );
setEffScaleKey( spep_0 + 215, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_0 + 217, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_0 + 219, ctbaki, 2.3, 2.3 );
setEffScaleKey( spep_0 + 221, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_0 + 223, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_0 + 225, ctbaki, 2.2, 2.2 );
setEffScaleKey( spep_0 + 227, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_0 + 229, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_0 + 231, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_0 + 233, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_0 + 207, ctbaki, 51 );
setEffRotateKey( spep_0 + 209, ctbaki, 43.7 );
setEffRotateKey( spep_0 + 211, ctbaki, 45.1 );
setEffRotateKey( spep_0 + 213, ctbaki, 46.5 );
setEffRotateKey( spep_0 + 233, ctbaki, 46.5 );

setEffAlphaKey( spep_0 + 207, ctbaki, 255 );
setEffAlphaKey( spep_0 + 229, ctbaki, 255 );
setEffAlphaKey( spep_0 + 231, ctbaki, 134 );
setEffAlphaKey( spep_0 + 233, ctbaki, 13 );

-- ** 白フェード ** --
entryFade( spep_0 + 258, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 266, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_0 + 91, SE_13 );  --パンチ
playSe( spep_0 + 107, SE_14 );  --瞬間移動
playSe( spep_0 + 137, 1016 );  --瞬間移動
playSe( spep_0 + 156, SE_17 );  --ダッシュ
playSe( spep_0 + 200, SE_15 );  --キック
SE_1121_1 = playSe( spep_0 + 225, 1121 );  --敵が飛んでいく音
stopSe( spep_0 + 245, SE_1121_1, 21 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 266;

--------------------------------------
--カードカットイン(88F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen1, 90, 20 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen1, 0 );
setEffRotateKey( spep_1 + 90, shuchusen1, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen1, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 白フェード ** --
entryFade( spep_1 + 86, 2, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_2 = spep_1 + 90;

------------------------------------------------------
-- 気弾溜め〜発射〜命中(710F)
------------------------------------------------------

-- ** エフェクト等 ** --
tamehitf = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_2 + 0, tamehitf, 0, 0, 0 );
setEffMoveKey( spep_2 + 710, tamehitf, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, tamehitf, 1.0, 1.0 );
setEffScaleKey( spep_2 + 710, tamehitf, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, tamehitf, 0 );
setEffRotateKey( spep_2 + 710, tamehitf, 0 );

setEffAlphaKey( spep_2 + 0, tamehitf, 255 );
setEffAlphaKey( spep_2 + 710, tamehitf, 255 );

tamehitb = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --背景(ef_004)
setEffMoveKey( spep_2 + 0, tamehitb, 0, 0, 0 );
setEffMoveKey( spep_2 + 710, tamehitb, 0, 0, 0 );

setEffScaleKey( spep_2 + 0, tamehitb, 1.0, 1.0 );
setEffScaleKey( spep_2 + 710, tamehitb, 1.0, 1.0 );

setEffRotateKey( spep_2 + 0, tamehitb, 0 );
setEffRotateKey( spep_2 + 710, tamehitb, 0 );

setEffAlphaKey( spep_2 + 0, tamehitb, 255 );
setEffAlphaKey( spep_2 + 710, tamehitb, 255 );

-- ** 敵の動き ** --
setDisp( spep_2 + 345, 1, 1 );
setDisp( spep_2 + 477, 1, 0 );

changeAnime( spep_2 + 345, 1, 105 );
changeAnime( spep_2 + 395, 1, 107 );

setMoveKey( spep_2 + 345, 1, 484.4, 35.8 , 0 );
setMoveKey( spep_2 + 347, 1, 482.7, 35.8 , 0 );
setMoveKey( spep_2 + 349, 1, 477.5, 35.9 , 0 );
setMoveKey( spep_2 + 351, 1, 468.8, 36 , 0 );
setMoveKey( spep_2 + 353, 1, 457.3, 36.1 , 0 );
setMoveKey( spep_2 + 355, 1, 443.6, 36.3 , 0 );
setMoveKey( spep_2 + 357, 1, 428.7, 36.4 , 0 );
setMoveKey( spep_2 + 359, 1, 413.3, 36.5 , 0 );
setMoveKey( spep_2 + 361, 1, 398.1, 36.7 , 0 );
setMoveKey( spep_2 + 363, 1, 383.7, 36.9 , 0 );
setMoveKey( spep_2 + 365, 1, 370.2, 37.1 , 0 );
setMoveKey( spep_2 + 367, 1, 357.7, 37.1 , 0 );
setMoveKey( spep_2 + 369, 1, 346.3, 37.3 , 0 );
setMoveKey( spep_2 + 371, 1, 336, 37.4 , 0 );
setMoveKey( spep_2 + 373, 1, 326.8, 37.5 , 0 );
setMoveKey( spep_2 + 375, 1, 318.6, 37.5 , 0 );
setMoveKey( spep_2 + 377, 1, 311.3, 37.6 , 0 );
setMoveKey( spep_2 + 379, 1, 304.9, 37.7 , 0 );
setMoveKey( spep_2 + 381, 1, 299.3, 37.7 , 0 );
setMoveKey( spep_2 + 383, 1, 294.5, 37.8 , 0 );
setMoveKey( spep_2 + 385, 1, 290.3, 37.8 , 0 );
setMoveKey( spep_2 + 387, 1, 286.9, 37.8 , 0 );
setMoveKey( spep_2 + 389, 1, 284, 37.9 , 0 );
setMoveKey( spep_2 + 391, 1, 281.7, 37.9 , 0 );
setMoveKey( spep_2 + 393, 1, 279.9, 37.9 , 0 );
setMoveKey( spep_2 + 394, 1, 279.9, 37.9 , 0 );

setMoveKey( spep_2 + 395, 1, 98.5, -162.7 , 0 );
setMoveKey( spep_2 + 397, 1, 96.1, -164.9 , 0 );
setMoveKey( spep_2 + 399, 1, 99.3, -160.9 , 0 );
setMoveKey( spep_2 + 401, 1, 98.1, -165.5 , 0 );
setMoveKey( spep_2 + 403, 1, 100.4, -162.5 , 0 );
setMoveKey( spep_2 + 405, 1, 98.5, -166.7 , 0 );
setMoveKey( spep_2 + 407, 1, 97.2, -164.2 , 0 );
setMoveKey( spep_2 + 409, 1, 99.9, -167.4 , 0 );
setMoveKey( spep_2 + 411, 1, 98.1, -164.8 , 0 );
setMoveKey( spep_2 + 413, 1, 97.7, -167.8 , 0 );
setMoveKey( spep_2 + 415, 1, 99.4, -164.3 , 0 );
setMoveKey( spep_2 + 417, 1, 98.5, -169.7 , 0 );
setMoveKey( spep_2 + 419, 1, 99.9, -165.6 , 0 );
setMoveKey( spep_2 + 421, 1, 99.1, -169.9 , 0 );
setMoveKey( spep_2 + 423, 1, 98.8, -169.3 , 0 );
setMoveKey( spep_2 + 425, 1, 98.5, -168.6 , 0 );
setMoveKey( spep_2 + 427, 1, 97.1, -166.8 , 0 );
setMoveKey( spep_2 + 429, 1, 93.6, -169.4 , 0 );
setMoveKey( spep_2 + 431, 1, 99, -165.1 , 0 );
setMoveKey( spep_2 + 433, 1, 96.1, -173 , 0 );
setMoveKey( spep_2 + 435, 1, 99.7, -166.5 , 0 );
setMoveKey( spep_2 + 437, 1, 92.1, -169.4 , 0 );
setMoveKey( spep_2 + 439, 1, 98.9, -162.5 , 0 );
setMoveKey( spep_2 + 441, 1, 93, -173.8 , 0 );
setMoveKey( spep_2 + 443, 1, 96.7, -164.9 , 0 );
setMoveKey( spep_2 + 445, 1, 102.7, -172.7 , 0 );
setMoveKey( spep_2 + 447, 1, 95.7, -162.5 , 0 );
setMoveKey( spep_2 + 449, 1, 99.7, -173.4 , 0 );
setMoveKey( spep_2 + 451, 1, 94.9, -164.8 , 0 );
setMoveKey( spep_2 + 453, 1, 101.5, -174.9 , 0 );
setMoveKey( spep_2 + 455, 1, 96.4, -163.5 , 0 );
setMoveKey( spep_2 + 457, 1, 102, -175.5 , 0 );
setMoveKey( spep_2 + 459, 1, 90.3, -166.2 , 0 );
setMoveKey( spep_2 + 461, 1, 102, -176.4 , 0 );
setMoveKey( spep_2 + 463, 1, 85.7, -171.6 , 0 );
setMoveKey( spep_2 + 465, 1, 105.3, -168.4 , 0 );
setMoveKey( spep_2 + 467, 1, 85.1, -167.7 , 0 );
setMoveKey( spep_2 + 469, 1, 99.3, -177.6 , 0 );
setMoveKey( spep_2 + 471, 1, 98, -162.5 , 0 );
setMoveKey( spep_2 + 473, 1, 102.2, -176.6 , 0 );
setMoveKey( spep_2 + 475, 1, 97.5, -158.1 , 0 );
setMoveKey( spep_2 + 477, 1, 102.2, -179.6 , 0 );


setScaleKey( spep_2 + 345, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 347, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 349, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 351, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 353, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 355, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 357, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 359, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 361, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 363, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 365, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 367, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 369, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 371, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 373, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 375, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 377, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 379, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 381, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 385, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 387, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 394, 1, 0.15, 0.15 );

setScaleKey( spep_2 + 395, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 397, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 399, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 401, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 403, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 407, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 409, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 413, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 415, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 419, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 421, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 425, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 427, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 433, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 435, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 443, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 445, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 453, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 455, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 469, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 471, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 477, 1, 0.9, 0.9 );


setRotateKey( spep_2 + 345, 1, 15 );
setRotateKey( spep_2 + 394, 1, 15 );

setRotateKey( spep_2 + 395, 1, -44.9 );
setRotateKey( spep_2 + 477, 1, -44.9 );

-- ** セリフカットイン :: --
--speff1 = entryEffect( spep_2 +138, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctzudodo = entryEffectLife( spep_2 + 395, 10014, 54, 0x100, -1, 0, -73.9, 312.7 ); --ズドドドッ
setEffMoveKey( spep_2 + 395, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 397, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 399, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 401, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 403, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 405, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 407, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 409, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 411, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 413, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 415, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 417, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 419, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 421, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 423, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 425, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 427, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 429, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 431, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 433, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 435, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 437, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 439, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 441, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 443, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 445, ctzudodo, -58.8, 288.2 , 0 );
setEffMoveKey( spep_2 + 447, ctzudodo, -73.9, 312.7 , 0 );
setEffMoveKey( spep_2 + 449, ctzudodo, -73.9, 312.7 , 0 );

setEffScaleKey( spep_2 + 395, ctzudodo, 3.2, 3.2 );
setEffScaleKey( spep_2 + 449, ctzudodo, 3.2, 3.2 );

setEffRotateKey( spep_2 + 395, ctzudodo, -17.9 );
setEffRotateKey( spep_2 + 449, ctzudodo, -17.9 );

setEffAlphaKey( spep_2 + 395, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 445, ctzudodo, 255 );
setEffAlphaKey( spep_2 + 447, ctzudodo, 128 );
setEffAlphaKey( spep_2 + 449, ctzudodo, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 710, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
entryFade( spep_2 + 672, 28, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 音 ** --
playSe( spep_2 + 33, 1131 );  --ため
setSeVolume( spep_2 +33, 1131, 60);
playSe( spep_2 + 94, 1035 );
SE_1044_1 = playSe( spep_2 + 138, 1044 );  --地響き
setSeVolume( spep_2 + 138, 1044, 40 )
--playSe( spep_2 + 160, SE_04 );  --ゴゴゴ
playSe( spep_2 + 228, 1003 );  --手を前に突き出す
stopSe( spep_2 + 250, SE_1044_1, 0 );
playSe( spep_2 + 250, 1022 );  --発射手元
setSeVolume( spep_2 + 250, 1022, 150 );
playSe( spep_2 + 340, 1021 );  --敵に玉が向かう
playSe( spep_2 + 395, 64 );  --敵に玉が迫る
playSe( spep_2 + 460, 1024 );  --着弾
setSeVolume( spep_2 + 447, 1023, 60 );
playSe( spep_2 + 587, 1024 );  --着弾
SE_1044_3 = playSe( spep_2 + 588, 1044 );  --地響き
setSeVolume( spep_2 + 588, 1044, 150 );
stopSe( spep_2 + 640, SE_1044_3, 38 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 587 );
endPhase( spep_2 + 710 );

end