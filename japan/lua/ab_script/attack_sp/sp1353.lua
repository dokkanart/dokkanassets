--超サイヤ人孫悟空_エネルギーメテオ
--sp_effect_b1_00092

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
SP_01 = 154351; --導入〜ラッシュ〜上空ジャンプ(手前)
SP_02 = 154352; --導入〜ラッシュ〜上空ジャンプ(奥)
SP_03 = 154353; --気弾溜め〜敵命中〜フィニッシュ(手前)
SP_04 = 154354; --気弾溜め〜敵命中〜フィニッシュ(奥)

--敵側
SP_01r = 154355; --導入〜ラッシュ〜上空ジャンプ(手前)

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
-- 導入〜ラッシュ〜上空ジャンプ(304F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
startf = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --導入〜ラッシュ〜上空ジャンプ(手前)(ef_001)
setEffMoveKey( spep_0 + 0, startf, 0, 0 , 0 );
setEffMoveKey( spep_0 + 576, startf, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, startf, 1.0, 1.0 );
setEffScaleKey( spep_0 + 576, startf, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, startf, 0 );
setEffRotateKey( spep_0 + 576, startf, 0 );
setEffAlphaKey( spep_0 + 0, startf, 255 );
setEffAlphaKey( spep_0 + 576, startf, 255 );

startb = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --導入〜ラッシュ〜上空ジャンプ(奥)(ef_002)
setEffMoveKey( spep_0 + 0, startb, 0, 0 , 0 );
setEffMoveKey( spep_0 + 576, startb, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, startb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 576, startb, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, startb, 0 );
setEffRotateKey( spep_0 + 576, startb, 0 );
setEffAlphaKey( spep_0 + 0, startb, 255 );
setEffAlphaKey( spep_0 + 576, startb, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 576, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
se_0008 = playSe( spep_0 + 0, 08 );
playSe( spep_0 + 0, 1036 );
playSe( spep_0 + 24, 1036 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1182, 0 );
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 182, 1, 1 );
setDisp( spep_0 -3 + 578, 1, 0 );
changeAnime( spep_0 -3 + 182, 1, 101 );
changeAnime( spep_0 -3 + 226, 1, 106 );
changeAnime( spep_0 -3 + 264, 1, 108 );
changeAnime( spep_0 -3 + 276, 1, 106 );
changeAnime( spep_0 -3 + 282, 1, 108 );
changeAnime( spep_0 -3 + 296, 1, 106 );
changeAnime( spep_0 -3 + 328, 1, 108 );
changeAnime( spep_0 -3 + 340, 1, 106 );
changeAnime( spep_0 -3 + 346, 1, 108 );
changeAnime( spep_0 -3 + 352, 1, 106 );
changeAnime( spep_0 -3 + 376, 1, 108 );
changeAnime( spep_0 -3 + 472, 1, 106 );

--setShakeChara( spep_0 -3 + 196, 1, 40, 10 );
--setShakeChara( spep_0 -3 + 266, 1, 40, 10 );
--setShakeChara( spep_0 -3 + 348, 1, 60, 10 );

setMoveKey( spep_0 -3 + 182, 1, 595.4, -39.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 496.2, -39.9 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 408.6, -39.9 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 332.7, -39.9 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 268.4, -39.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 215.9, -39.9 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 175, -39.9 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 145.8, -39.9 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 128.3, -39.9 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 122.4, -39.9 , 0 );
setMoveKey( spep_0 -3 + 225, 1, 122.4, -39.9 , 0 );

setMoveKey( spep_0 -3 + 226, 1, 94.9, -9.8 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 83.1, -3.6 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 100.3, -17.3 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 86.9, -15.7 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 85.3, -2.1 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 89.4, -12 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 83.3, -9.9 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 87.6, -0.4 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 90.8, -3 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 92, -1.6 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 92.9, -0.4 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 93.8, 0.6 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 94.5, 1.5 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 95.1, 2.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 95.6, 2.8 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 95.9, 3.2 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 96.1, 3.5 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 96.2, 3.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 96.2, 3.6 , 0 );

setMoveKey( spep_0 -3 + 264, 1, 155.3, 3 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 135.1, 4.9 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 141.2, 2.7 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 148.6, -14.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 145.5, -15.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 148, -13.3 , 0 );

setMoveKey( spep_0 -3 + 276, 1, 128, 25.7 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 127, 28.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 128.8, 26.7 , 0 );

setMoveKey( spep_0 -3 + 282, 1, 140.2, -14.5 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 142.3, -15.8 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 140, -15.4 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 157.8, 7.4 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 154.8, 7.2 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 157.5, 8.2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 147, 6.9 , 0 );

setMoveKey( spep_0 -3 + 296, 1, 187.1, -6.4 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 118.3, 11.9 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 158.7, 2.5 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 119.8, -0.4 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 134, 4.2 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 133.5, 1.5 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 135.8, 4.1 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 135.8, 2.1 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 136.2, 5.1 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 137.4, 3.3 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 138, 3.3 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 138.5, 3.3 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 138.9, 3.3 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 139.1, 3.3 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 139.3, 3.3 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 138.1, 2 , 0 );

setMoveKey( spep_0 -3 + 328, 1, 164.4, -0.1 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 139.1, -0.1 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 142.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 148.5, 6.6 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 151.4, 6.2 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 149.1, 7.3 , 0 );

setMoveKey( spep_0 -3 + 340, 1, 129, 3.5 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 125.6, 3.9 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 128.3, 2.3 , 0 );

setMoveKey( spep_0 -3 + 346, 1, 140, 18.6 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 141.9, 15.7 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 142.3, 18.6 , 0 );

setMoveKey( spep_0 -3 + 352, 1, 125.8, 22.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 128.1, 24.3 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 126.2, 23.2 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 128.3, 23.5 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 127.3, 23.4 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 127.3, 23.4 , 0 );

setMoveKey( spep_0 -3 + 376, 1, 203.8, 25.4 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 144.6, 15.3 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 372.5, 11.1 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 532.8, -0.7 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 793.2, -11.5 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 972.3, -20.1 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 968.8, -20.6 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 971.4, -21.2 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 970.4, -19.7 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 970.4, -22.5 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 969.9, -19.9 , 0 );
setMoveKey( spep_0 -3 + 445, 1, 969.9, -19.9 , 0 );

setMoveKey( spep_0 -3 + 446, 1, -563.2, -19.9 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -249.9, -19.9 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -119.7, -19.9 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -34.6, -19.9 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 26.4, -19.9 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 71.9, -19.9 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 106.2, -19.9 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 132, -19.9 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 151, -19.9 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 164.3, -19.9 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 173, -19.9 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 177.8, -19.9 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 179.1, -19.9 , 0 );

setMoveKey( spep_0 -3 + 472, 1, 139.4, -26.8 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 108.7, -19.4 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 162.1, -20.2 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 225.6, -19.1 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 398.8, -20.1 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 567.3, -20 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 715.3, -20 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 833.9, -19.9 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 921.7, -19.9 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 981, -19.9 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 1014.6, -19.8 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 1025.6, -20.2 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 1025.6, -20.2 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 1077, -21.3 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 974.2, -19.2 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 1025.6, -20.2 , 0 );


setScaleKey( spep_0 -3 + 182, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 225, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 226, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 228, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 230, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 232, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 234, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 262, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 264, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 266, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 268, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 274, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 276, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 280, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 282, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 292, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 294, 1, 1.61, 1.61 );

setScaleKey( spep_0 -3 + 296, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 298, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 300, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 302, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 304, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 326, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 328, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 330, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 332, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 338, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 340, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 344, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 346, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 350, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 352, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 374, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 376, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 378, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 380, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 382, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 384, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 386, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 396, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 445, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 446, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 471, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 472, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 474, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 476, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 478, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 480, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 502, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 504, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 506, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 508, 1, 1.7, 1.7 );


setRotateKey( spep_0 -3 + 182, 1, 0 );
setRotateKey( spep_0 -3 + 225, 1, 0 );

setRotateKey( spep_0 -3 + 226, 1, -44.9 );
setRotateKey( spep_0 -3 + 262, 1, -44.9 );

setRotateKey( spep_0 -3 + 264, 1, 0.1 );
setRotateKey( spep_0 -3 + 268, 1, 0.1 );
setRotateKey( spep_0 -3 + 270, 1, 15 );
setRotateKey( spep_0 -3 + 274, 1, 15 );

setRotateKey( spep_0 -3 + 276, 1, -45 );
setRotateKey( spep_0 -3 + 280, 1, -45 );

setRotateKey( spep_0 -3 + 282, 1, 5 );
setRotateKey( spep_0 -3 + 286, 1, 5 );
setRotateKey( spep_0 -3 + 288, 1, -5 );
setRotateKey( spep_0 -3 + 294, 1, -5 );

setRotateKey( spep_0 -3 + 296, 1, -45 );
setRotateKey( spep_0 -3 + 298, 1, -44.4 );
setRotateKey( spep_0 -3 + 300, 1, -43.8 );
setRotateKey( spep_0 -3 + 302, 1, -43.2 );
setRotateKey( spep_0 -3 + 304, 1, -42.7 );
setRotateKey( spep_0 -3 + 306, 1, -42.2 );
setRotateKey( spep_0 -3 + 308, 1, -41.8 );
setRotateKey( spep_0 -3 + 310, 1, -41.4 );
setRotateKey( spep_0 -3 + 312, 1, -41.1 );
setRotateKey( spep_0 -3 + 314, 1, -40.8 );
setRotateKey( spep_0 -3 + 316, 1, -40.6 );
setRotateKey( spep_0 -3 + 318, 1, -40.4 );
setRotateKey( spep_0 -3 + 320, 1, -40.2 );
setRotateKey( spep_0 -3 + 322, 1, -40.1 );
setRotateKey( spep_0 -3 + 324, 1, -40 );
setRotateKey( spep_0 -3 + 326, 1, -40 );

setRotateKey( spep_0 -3 + 328, 1, 15 );
setRotateKey( spep_0 -3 + 332, 1, 15 );
setRotateKey( spep_0 -3 + 334, 1, 0 );
setRotateKey( spep_0 -3 + 338, 1, 0 );

setRotateKey( spep_0 -3 + 340, 1, -45 );
setRotateKey( spep_0 -3 + 344, 1, -45 );

setRotateKey( spep_0 -3 + 346, 1, 0 );
setRotateKey( spep_0 -3 + 350, 1, 0 );

setRotateKey( spep_0 -3 + 352, 1, -45 );
setRotateKey( spep_0 -3 + 354, 1, -45 );
setRotateKey( spep_0 -3 + 356, 1, -35 );
setRotateKey( spep_0 -3 + 374, 1, -35 );

setRotateKey( spep_0 -3 + 376, 1, 0 );
setRotateKey( spep_0 -3 + 396, 1, 0 );
setRotateKey( spep_0 -3 + 445, 1, 0 );

setRotateKey( spep_0 -3 + 446, 1, 0 );
setRotateKey( spep_0 -3 + 471, 1, 0 );

setRotateKey( spep_0 -3 + 472, 1, -25 );
setRotateKey( spep_0 -3 + 474, 1, -24.8 );
setRotateKey( spep_0 -3 + 476, 1, -23.6 );
setRotateKey( spep_0 -3 + 478, 1, -19.8 );
setRotateKey( spep_0 -3 + 480, 1, -13.7 );
setRotateKey( spep_0 -3 + 482, 1, -7.3 );
setRotateKey( spep_0 -3 + 484, 1, -1.7 );
setRotateKey( spep_0 -3 + 486, 1, 2.8 );
setRotateKey( spep_0 -3 + 488, 1, 6.1 );
setRotateKey( spep_0 -3 + 490, 1, 8.3 );
setRotateKey( spep_0 -3 + 492, 1, 9.6 );
setRotateKey( spep_0 -3 + 494, 1, 10 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_0 -3 + 376, 914, 186, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 376, ryusen, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 562, ryusen, 0, 0, 0 );


setEffScaleKey( spep_0 -3 + 376, ryusen, 4.29, 1.12 );
setEffScaleKey( spep_0 -3 + 396, ryusen, 4.29, 1.12 );

setEffScaleKey( spep_0 -3 + 472, ryusen, 4.29, 1.12 );
setEffScaleKey( spep_0 -3 + 492, ryusen, 4.29, 1.12 );

setEffScaleKey( spep_0 -3 + 538, ryusen, 4.9, 1.28 );
setEffScaleKey( spep_0 -3 + 562, ryusen, 4.9, 1.28 );


setEffRotateKey( spep_0 -3 + 376, ryusen, -180 );
setEffRotateKey( spep_0 -3 + 396, ryusen, -180 );

setEffRotateKey( spep_0 -3 + 472, ryusen, -180 );
setEffRotateKey( spep_0 -3 + 492, ryusen, -180 );

setEffRotateKey( spep_0 -3 + 538, ryusen, -100 );
setEffRotateKey( spep_0 -3 + 562, ryusen, -100 );


setEffAlphaKey( spep_0 -3 + 376, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 380, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 382, ryusen, 103 );
setEffAlphaKey( spep_0 -3 + 384, ryusen, 88 );
setEffAlphaKey( spep_0 -3 + 386, ryusen, 73 );
setEffAlphaKey( spep_0 -3 + 388, ryusen, 59 );
setEffAlphaKey( spep_0 -3 + 390, ryusen, 44 );
setEffAlphaKey( spep_0 -3 + 392, ryusen, 29 );
setEffAlphaKey( spep_0 -3 + 394, ryusen, 15 );
setEffAlphaKey( spep_0 -3 + 396, ryusen, 0 );
setEffAlphaKey( spep_0 -3 + 470, ryusen, 0 );
setEffAlphaKey( spep_0 -3 + 471, ryusen, 0 );

setEffAlphaKey( spep_0 -3 + 472, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 480, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 482, ryusen, 98 );
setEffAlphaKey( spep_0 -3 + 484, ryusen, 78 );
setEffAlphaKey( spep_0 -3 + 486, ryusen, 59 );
setEffAlphaKey( spep_0 -3 + 488, ryusen, 39 );
setEffAlphaKey( spep_0 -3 + 490, ryusen, 20 );
setEffAlphaKey( spep_0 -3 + 492, ryusen, 0 );
setEffAlphaKey( spep_0 -3 + 536, ryusen, 0 );
setEffAlphaKey( spep_0 -3 + 537, ryusen, 0 );

setEffAlphaKey( spep_0 -3 + 538, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 556, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 558, ryusen, 88 );
setEffAlphaKey( spep_0 -3 + 560, ryusen, 59 );
setEffAlphaKey( spep_0 -3 + 562, ryusen, 29 );
setEffAlphaKey( spep_0 -3 + 562, ryusen, 0 );

-- ** 書き文字エントリー ** --
ctGa = entryEffectLife( spep_0 -3 + 226, 10005, 16, 0x100, -1, 0, 106.9, 197.7 ); --ガッ
setEffMoveKey( spep_0 -3 + 226, ctGa, 106.9, 197.7 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctGa, 124.2, 217.9 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctGa, 143.4, 226.6 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctGa, 141.3, 236 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctGa, 155.9, 235.6 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctGa, 147.7, 243.7 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctGa, 152.9, 241.3 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctGa, 151.5, 253.6 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctGa, 153.1, 258 , 0 );

setEffScaleKey( spep_0 -3 + 226, ctGa, 1.03, 1.03 );
setEffScaleKey( spep_0 -3 + 228, ctGa, 1.32, 1.31 );
setEffScaleKey( spep_0 -3 + 230, ctGa, 1.46, 1.45 );
setEffScaleKey( spep_0 -3 + 232, ctGa, 1.55, 1.54 );
setEffScaleKey( spep_0 -3 + 234, ctGa, 1.61, 1.59 );
setEffScaleKey( spep_0 -3 + 236, ctGa, 1.65, 1.63 );
setEffScaleKey( spep_0 -3 + 238, ctGa, 1.66, 1.64 );
setEffScaleKey( spep_0 -3 + 240, ctGa, 1.75, 1.73 );
setEffScaleKey( spep_0 -3 + 242, ctGa, 1.78, 1.76 );

setEffRotateKey( spep_0 -3 + 226, ctGa, 5 );
setEffRotateKey( spep_0 -3 + 242, ctGa, 5 );

setEffAlphaKey( spep_0 -3 + 226, ctGa, 255 );
setEffAlphaKey( spep_0 -3 + 238, ctGa, 255 );
setEffAlphaKey( spep_0 -3 + 240, ctGa, 64 );
setEffAlphaKey( spep_0 -3 + 242, ctGa, 0 );

ctDogagaga_1 = entryEffectLife( spep_0 -3 + 264, 10017, 30, 0x100, -1, 0, -117.1, 222.7 ); --ドガガガッ
setEffMoveKey( spep_0 -3 + 264, ctDogagaga_1, -117.1, 222.7 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctDogagaga_1, -81.9, 242.2 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctDogagaga_1, -42.6, 251.1 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctDogagaga_1, -42.7, 257.5 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctDogagaga_1, -20.5, 255 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctDogagaga_1, -22.8, 269.3 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctDogagaga_1, 1.8, 258.9 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctDogagaga_1, -2.9, 276.5 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctDogagaga_1, 17, 274 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctDogagaga_1, 10.7, 284 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctDogagaga_1, 21.4, 272.7 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctDogagaga_1, 24.6, 286.7 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctDogagaga_1, 26.1, 287.4 , 0 );
setEffMoveKey( spep_0 -3 + 290, ctDogagaga_1, 16.2, 275.9 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctDogagaga_1, 45, 294.4 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctDogagaga_1, 52.1, 301.3 , 0 );

setEffScaleKey( spep_0 -3 + 264, ctDogagaga_1, 1.91, 1.94 );
setEffScaleKey( spep_0 -3 + 266, ctDogagaga_1, 2.19, 2.22 );
setEffScaleKey( spep_0 -3 + 268, ctDogagaga_1, 2.35, 2.39 );
setEffScaleKey( spep_0 -3 + 270, ctDogagaga_1, 2.47, 2.51 );
setEffScaleKey( spep_0 -3 + 272, ctDogagaga_1, 2.57, 2.61 );
setEffScaleKey( spep_0 -3 + 274, ctDogagaga_1, 2.65, 2.69 );
setEffScaleKey( spep_0 -3 + 276, ctDogagaga_1, 2.71, 2.75 );
setEffScaleKey( spep_0 -3 + 278, ctDogagaga_1, 2.76, 2.8 );
setEffScaleKey( spep_0 -3 + 280, ctDogagaga_1, 2.8, 2.84 );
setEffScaleKey( spep_0 -3 + 282, ctDogagaga_1, 2.83, 2.87 );
setEffScaleKey( spep_0 -3 + 284, ctDogagaga_1, 2.85, 2.89 );
setEffScaleKey( spep_0 -3 + 286, ctDogagaga_1, 2.86, 2.91 );
setEffScaleKey( spep_0 -3 + 288, ctDogagaga_1, 2.87, 2.91 );
setEffScaleKey( spep_0 -3 + 290, ctDogagaga_1, 2.92, 2.98 );
setEffScaleKey( spep_0 -3 + 292, ctDogagaga_1, 2.98, 3.04 );
setEffScaleKey( spep_0 -3 + 294, ctDogagaga_1, 3.04, 3.1 );

setEffRotateKey( spep_0 -3 + 264, ctDogagaga_1, 20 );
setEffRotateKey( spep_0 -3 + 294, ctDogagaga_1, 20 );

setEffAlphaKey( spep_0 -3 + 264, ctDogagaga_1, 255 );
setEffAlphaKey( spep_0 -3 + 288, ctDogagaga_1, 255 );
setEffAlphaKey( spep_0 -3 + 290, ctDogagaga_1, 170 );
setEffAlphaKey( spep_0 -3 + 292, ctDogagaga_1, 85 );
setEffAlphaKey( spep_0 -3 + 294, ctDogagaga_1, 0 );

ctZun = entryEffectLife( spep_0 -3 + 296, 10016, 16, 0x100, -1, 0, -67.3, 170.7 ); --ズンッ
setEffMoveKey( spep_0 -3 + 296, ctZun, -67.3, 170.7 , 0 );
setEffMoveKey( spep_0 -3 + 298, ctZun, -70.7, 182.4 , 0 );
setEffMoveKey( spep_0 -3 + 300, ctZun, -66.2, 185.5 , 0 );
setEffMoveKey( spep_0 -3 + 302, ctZun, -70.6, 190.6 , 0 );
setEffMoveKey( spep_0 -3 + 304, ctZun, -65.8, 190.7 , 0 );
setEffMoveKey( spep_0 -3 + 306, ctZun, -70.6, 193.9 , 0 );
setEffMoveKey( spep_0 -3 + 308, ctZun, -65.7, 192.4 , 0 );
setEffMoveKey( spep_0 -3 + 310, ctZun, -77.4, 200.5 , 0 );
setEffMoveKey( spep_0 -3 + 312, ctZun, -84.2, 206.4 , 0 );

setEffScaleKey( spep_0 -3 + 296, ctZun, 1.38, 1.39 );
setEffScaleKey( spep_0 -3 + 298, ctZun, 1.61, 1.62 );
setEffScaleKey( spep_0 -3 + 300, ctZun, 1.73, 1.74 );
setEffScaleKey( spep_0 -3 + 302, ctZun, 1.8, 1.81 );
setEffScaleKey( spep_0 -3 + 304, ctZun, 1.85, 1.86 );
setEffScaleKey( spep_0 -3 + 306, ctZun, 1.87, 1.88 );
setEffScaleKey( spep_0 -3 + 308, ctZun, 1.88, 1.89 );
setEffScaleKey( spep_0 -3 + 310, ctZun, 1.93, 1.94 );
setEffScaleKey( spep_0 -3 + 312, ctZun, 1.98, 1.99 );

setEffRotateKey( spep_0 -3 + 296, ctZun, -15 );
setEffRotateKey( spep_0 -3 + 312, ctZun, -15 );

setEffAlphaKey( spep_0 -3 + 296, ctZun, 255 );
setEffAlphaKey( spep_0 -3 + 308, ctZun, 255 );
setEffAlphaKey( spep_0 -3 + 310, ctZun, 128 );
setEffAlphaKey( spep_0 -3 + 312, ctZun, 0 );

ctDogagaga_2 = entryEffectLife( spep_0 -3 + 328, 10017, 36, 0x100, -1, 0, -117.1, 222.7 ); --ドガガガッ
setEffMoveKey( spep_0 -3 + 328, ctDogagaga_2, -117.1, 222.7 , 0 );
setEffMoveKey( spep_0 -3 + 330, ctDogagaga_2, -87.9, 239.6 , 0 );
setEffMoveKey( spep_0 -3 + 332, ctDogagaga_2, -51.5, 247.5 , 0 );
setEffMoveKey( spep_0 -3 + 334, ctDogagaga_2, -52.4, 253.3 , 0 );
setEffMoveKey( spep_0 -3 + 336, ctDogagaga_2, -31.3, 250.7 , 0 );
setEffMoveKey( spep_0 -3 + 338, ctDogagaga_2, -33.5, 264.7 , 0 );
setEffMoveKey( spep_0 -3 + 340, ctDogagaga_2, -9.2, 254.7 , 0 );
setEffMoveKey( spep_0 -3 + 342, ctDogagaga_2, -13.2, 272.1 , 0 );
setEffMoveKey( spep_0 -3 + 344, ctDogagaga_2, 7, 270 , 0 );
setEffMoveKey( spep_0 -3 + 346, ctDogagaga_2, 2, 280.1 , 0 );
setEffMoveKey( spep_0 -3 + 348, ctDogagaga_2, 13.7, 269.6 , 0 );
setEffMoveKey( spep_0 -3 + 350, ctDogagaga_2, 18.6, 284.2 , 0 );
setEffMoveKey( spep_0 -3 + 352, ctDogagaga_2, 13.6, 271.2 , 0 );
setEffMoveKey( spep_0 -3 + 354, ctDogagaga_2, 22.5, 287.5 , 0 );
setEffMoveKey( spep_0 -3 + 356, ctDogagaga_2, 8.2, 271.5 , 0 );
setEffMoveKey( spep_0 -3 + 358, ctDogagaga_2, 26.1, 287.4 , 0 );
setEffMoveKey( spep_0 -3 + 360, ctDogagaga_2, 16.2, 275.9 , 0 );
setEffMoveKey( spep_0 -3 + 362, ctDogagaga_2, 45, 294.4 , 0 );
setEffMoveKey( spep_0 -3 + 364, ctDogagaga_2, 52.1, 301.3 , 0 );

setEffScaleKey( spep_0 -3 + 328, ctDogagaga_2, 1.91, 1.94 );
setEffScaleKey( spep_0 -3 + 330, ctDogagaga_2, 2.14, 2.18 );
setEffScaleKey( spep_0 -3 + 332, ctDogagaga_2, 2.29, 2.33 );
setEffScaleKey( spep_0 -3 + 334, ctDogagaga_2, 2.41, 2.44 );
setEffScaleKey( spep_0 -3 + 336, ctDogagaga_2, 2.5, 2.53 );
setEffScaleKey( spep_0 -3 + 338, ctDogagaga_2, 2.57, 2.61 );
setEffScaleKey( spep_0 -3 + 340, ctDogagaga_2, 2.63, 2.67 );
setEffScaleKey( spep_0 -3 + 342, ctDogagaga_2, 2.68, 2.73 );
setEffScaleKey( spep_0 -3 + 344, ctDogagaga_2, 2.73, 2.77 );
setEffScaleKey( spep_0 -3 + 346, ctDogagaga_2, 2.76, 2.81 );
setEffScaleKey( spep_0 -3 + 348, ctDogagaga_2, 2.8, 2.84 );
setEffScaleKey( spep_0 -3 + 350, ctDogagaga_2, 2.82, 2.87 );
setEffScaleKey( spep_0 -3 + 352, ctDogagaga_2, 2.84, 2.89 );
setEffScaleKey( spep_0 -3 + 354, ctDogagaga_2, 2.85, 2.9 );
setEffScaleKey( spep_0 -3 + 356, ctDogagaga_2, 2.86, 2.91 );
setEffScaleKey( spep_0 -3 + 358, ctDogagaga_2, 2.87, 2.91 );
setEffScaleKey( spep_0 -3 + 360, ctDogagaga_2, 2.92, 2.98 );
setEffScaleKey( spep_0 -3 + 362, ctDogagaga_2, 2.98, 3.04 );
setEffScaleKey( spep_0 -3 + 364, ctDogagaga_2, 3.04, 3.1 );

setEffRotateKey( spep_0 -3 + 328, ctDogagaga_2, 20 );
setEffRotateKey( spep_0 -3 + 364, ctDogagaga_2, 20 );

setEffAlphaKey( spep_0 -3 + 328, ctDogagaga_2, 255 );
setEffAlphaKey( spep_0 -3 + 358, ctDogagaga_2, 255 );
setEffAlphaKey( spep_0 -3 + 360, ctDogagaga_2, 170 );
setEffAlphaKey( spep_0 -3 + 362, ctDogagaga_2, 85 );
setEffAlphaKey( spep_0 -3 + 364, ctDogagaga_2, 0 );

ctBaki = entryEffectLife( spep_0 -3 + 376, 10020, 18, 0x100, -1, 0, 192.4, 230.7 ); --バキッ
setEffMoveKey( spep_0 -3 + 376, ctBaki, 192.4, 230.7 , 0 );
setEffMoveKey( spep_0 -3 + 378, ctBaki, 190.8, 249.7 , 0 );
setEffMoveKey( spep_0 -3 + 380, ctBaki, 192.9, 245 , 0 );
setEffMoveKey( spep_0 -3 + 382, ctBaki, 188.8, 264.7 , 0 );
setEffMoveKey( spep_0 -3 + 384, ctBaki, 200.2, 262.2 , 0 );
setEffMoveKey( spep_0 -3 + 386, ctBaki, 188.5, 258.6 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctBaki, 188.5, 260 , 0 );
setEffMoveKey( spep_0 -3 + 390, ctBaki, 193.6, 266.5 , 0 );
setEffMoveKey( spep_0 -3 + 392, ctBaki, 204.5, 275.6 , 0 );
setEffMoveKey( spep_0 -3 + 394, ctBaki, 208.8, 277.2 , 0 );

setEffScaleKey( spep_0 -3 + 376, ctBaki, 1.58, 1.58 );
setEffScaleKey( spep_0 -3 + 378, ctBaki, 1.71, 1.71 );
setEffScaleKey( spep_0 -3 + 380, ctBaki, 1.78, 1.78 );
setEffScaleKey( spep_0 -3 + 382, ctBaki, 1.82, 1.82 );
setEffScaleKey( spep_0 -3 + 384, ctBaki, 1.85, 1.85 );
setEffScaleKey( spep_0 -3 + 386, ctBaki, 1.87, 1.87 );
setEffScaleKey( spep_0 -3 + 388, ctBaki, 1.89, 1.89 );
setEffScaleKey( spep_0 -3 + 390, ctBaki, 1.89, 1.89 );
setEffScaleKey( spep_0 -3 + 392, ctBaki, 2.14, 2.14 );
setEffScaleKey( spep_0 -3 + 394, ctBaki, 2.22, 2.22 );

setEffRotateKey( spep_0 -3 + 376, ctBaki, 35.2 );
setEffRotateKey( spep_0 -3 + 394, ctBaki, 35.2 );

setEffAlphaKey( spep_0 -3 + 376, ctBaki, 255 );
setEffAlphaKey( spep_0 -3 + 390, ctBaki, 255 );
setEffAlphaKey( spep_0 -3 + 392, ctBaki, 64 );
setEffAlphaKey( spep_0 -3 + 394, ctBaki, 0 );

ctDon = entryEffectLife( spep_0 -3 + 472, 10019, 16, 0x100, -1, 0, 13.8, 148.2 ); --ドンッ
setEffMoveKey( spep_0 -3 + 472, ctDon, 13.8, 148.2 , 0 );
setEffMoveKey( spep_0 -3 + 474, ctDon, -22.2, 186.1 , 0 );
setEffMoveKey( spep_0 -3 + 476, ctDon, -20.6, 200.7 , 0 );
setEffMoveKey( spep_0 -3 + 478, ctDon, -37.8, 219.2 , 0 );
setEffMoveKey( spep_0 -3 + 480, ctDon, -28.1, 215.9 , 0 );
setEffMoveKey( spep_0 -3 + 482, ctDon, -43.3, 217 , 0 );
setEffMoveKey( spep_0 -3 + 484, ctDon, -44.7, 232.8 , 0 );
setEffMoveKey( spep_0 -3 + 486, ctDon, -53.3, 224 , 0 );
setEffMoveKey( spep_0 -3 + 488, ctDon, -62, 230.3 , 0 );

setEffScaleKey( spep_0 -3 + 472, ctDon, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 474, ctDon, 1.83, 1.83 );
setEffScaleKey( spep_0 -3 + 476, ctDon, 2.07, 2.07 );
setEffScaleKey( spep_0 -3 + 478, ctDon, 2.22, 2.22 );
setEffScaleKey( spep_0 -3 + 480, ctDon, 2.3, 2.3 );
setEffScaleKey( spep_0 -3 + 482, ctDon, 2.33, 2.33 );
setEffScaleKey( spep_0 -3 + 484, ctDon, 2.45, 2.45 );
setEffScaleKey( spep_0 -3 + 486, ctDon, 2.58, 2.58 );
setEffScaleKey( spep_0 -3 + 488, ctDon, 2.7, 2.7 );

setEffRotateKey( spep_0 -3 + 472, ctDon, -0.8 );
setEffRotateKey( spep_0 -3 + 474, ctDon, -0.2 );
setEffRotateKey( spep_0 -3 + 476, ctDon, 0 );
setEffRotateKey( spep_0 -3 + 478, ctDon, 0.1 );
setEffRotateKey( spep_0 -3 + 480, ctDon, 0.2 );
setEffRotateKey( spep_0 -3 + 482, ctDon, 0.3 );
setEffRotateKey( spep_0 -3 + 488, ctDon, 0.3 );

setEffAlphaKey( spep_0 -3 + 472, ctDon, 255 );
setEffAlphaKey( spep_0 -3 + 482, ctDon, 255 );
setEffAlphaKey( spep_0 -3 + 484, ctDon, 170 );
setEffAlphaKey( spep_0 -3 + 486, ctDon, 85 );
setEffAlphaKey( spep_0 -3 + 488, ctDon, 0 );

-- ** 音 ** --
se_1182 = playSe( spep_0 + 41, 1182 );
se_0009 = playSe( spep_0 + 41, 09 );
se_1018 = playSe( spep_0 + 41, 1018 );
setSeVolume( spep_0 + 41, 1018, 71 );
setSeVolume( spep_0 + 41, 1182, 158 );
se_1036 = playSe( spep_0 + 48, 1036 );
se_1183 = playSe( spep_0 + 48, 1183 );
se_1019 = playSe( spep_0 + 48, 1019 );
stopSe( spep_0 + 69, se_0009, 60 );
playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 79 );
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 71 );
playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 63 );
playSe( spep_0 + 144, 1036 );
setSeVolume( spep_0 + 144, 1036, 56 );
playSe( spep_0 + 147, 1072 );
setSeVolume( spep_0 + 147, 1072, 79 );
se_0009 = playSe( spep_0 + 162, 09 );
stopSe( spep_0 + 203, se_0009, 18 );
stopSe( spep_0 + 206, se_1019, 0 );
playSe( spep_0 + 222, 1189 );
playSe( spep_0 + 226, 1009 );
playSe( spep_0 + 226, 1006 );
playSe( spep_0 + 264, 1000 );
playSe( spep_0 + 270, 1000 );
setSeVolume( spep_0 + 270, 1000, 89 );
playSe( spep_0 + 275, 1006 );
setSeVolume( spep_0 + 275, 1006, 79 );
playSe( spep_0 + 277, 1000 );
setSeVolume( spep_0 + 277, 1000, 112 );
playSe( spep_0 + 282, 1000 );
playSe( spep_0 + 289, 1000 );
playSe( spep_0 + 297, 1010 );
playSe( spep_0 + 297, 1007 );
playSe( spep_0 + 325, 1189 );
playSe( spep_0 + 328, 1000 );
playSe( spep_0 + 334, 1000 );
playSe( spep_0 + 339, 1006 );
playSe( spep_0 + 341, 1000 );
playSe( spep_0 + 346, 1000 );
playSe( spep_0 + 353, 1000 );
playSe( spep_0 + 360, 1000 );
playSe( spep_0 + 379, 1120 );
playSe( spep_0 + 403, 09 );
playSe( spep_0 + 467, 1003 );
setSeVolume( spep_0 + 467, 1003, 63 );
playSe( spep_0 + 469, 1012 );
se_1190 = playSe( spep_0 + 472, 1190 );
playSe( spep_0 + 472, 1110 );
stopSe( spep_0 + 495, se_1190, 20 );
se_0044 = playSe( spep_0 + 503, 44 );
setSeVolume( spep_0 + 503, 44, 0 );
playSe( spep_0 + 513, 1048 );
se_1109 = playSe( spep_0 + 513, 1109 );
setSeVolume( spep_0 + 514, 44, 100 );
stopSe( spep_0 + 519, se_0044, 42 );
stopSe( spep_0 + 521, se_1109, 17 );
playSe( spep_0 + 539, 1036 );
setSeVolume( spep_0 + 539, 1036, 63 );
se_0008 = playSe( spep_0 + 541, 08 );
se_1036 = playSe( spep_0 + 563, 1036 );
setSeVolume( spep_0 + 563, 1036, 63 );
stopSe( spep_0 + 568, se_0008, 11 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 576;

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
stopSe( spep_1 + 3, se_1036, 0 );
playSe( spep_1 + 4, 1035 );
playSe( spep_1 + 90, 1036 );
setSeVolume( spep_1 + 90, 1036, 63 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波発射〜敵に命中
------------------------------------------------------
-- ** エフェクト等 ** --
finishf = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾溜め〜敵命中〜フィニッシュ(手前)(ef_003)
setEffMoveKey( spep_2 + 0, finishf, 0, 0 , 0 );
setEffMoveKey( spep_2 + 304, finishf, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finishf, 1.0, 1.0 );
setEffScaleKey( spep_2 + 304, finishf, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finishf, 0 );
setEffRotateKey( spep_2 + 304, finishf, 0 );
setEffAlphaKey( spep_2 + 0, finishf, 255 );
setEffAlphaKey( spep_2 + 304, finishf, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 -3 + 184, 906, 120, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 -3, shuchusen1, 120, 20 );

setEffMoveKey( spep_2 -3 + 184, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_2 -3 + 304, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_2 -3 + 184, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_2 -3 + 304, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_2 -3 + 184, shuchusen1, 180 );
setEffRotateKey( spep_2 -3 + 304, shuchusen1, 180 );

setEffAlphaKey( spep_2 -3 + 184, shuchusen1, 255 );
setEffAlphaKey( spep_2 -3 + 304, shuchusen1, 255 );

-- ** エフェクト等 ** --
finishb = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾溜め〜敵命中〜フィニッシュ(奥)(ef_004)
setEffMoveKey( spep_2 + 0, finishb, 0, 0 , 0 );
setEffMoveKey( spep_2 + 304, finishb, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finishb, 1.0, 1.0 );
setEffScaleKey( spep_2 + 304, finishb, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finishb, 0 );
setEffRotateKey( spep_2 + 304, finishb, 0 );
setEffAlphaKey( spep_2 + 0, finishb, 255 );
setEffAlphaKey( spep_2 + 304, finishb, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 + 12, 190006, 72, 0x100, -1, 0, 160, 550 );    --ゴゴゴゴ

setEffMoveKey( spep_2 + 12, ctgogo, 160, 550, 0 );
setEffMoveKey( spep_2 + 84, ctgogo, 160, 550, 0 );

setEffAlphaKey( spep_2 + 12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 76, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 112 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey( spep_2 + 12, ctgogo, 0);
setEffRotateKey( spep_2 + 84, ctgogo, 0);

setEffScaleKey( spep_2 + 12, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_2 + 72, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_2 + 84, ctgogo, 1.07, 1.07 );

ctDogon = entryEffectLife( spep_2 -3 + 184, 10018, 24, 0x100, -1, 0, -15.2, -111.1 ); --ドゴォンッ
setEffMoveKey( spep_2 -3 + 184, ctDogon, -15.2, -111.1 , 0 );
setEffMoveKey( spep_2 -3 + 186, ctDogon, -30, -28.9 , 0 );
setEffMoveKey( spep_2 -3 + 188, ctDogon, -15.3, 10.3 , 0 );
setEffMoveKey( spep_2 -3 + 190, ctDogon, -11.6, 24.3 , 0 );
setEffMoveKey( spep_2 -3 + 192, ctDogon, -29.3, 28 , 0 );
setEffMoveKey( spep_2 -3 + 194, ctDogon, -17.5, 38.3 , 0 );
setEffMoveKey( spep_2 -3 + 196, ctDogon, -21.6, 22.8 , 0 );
setEffMoveKey( spep_2 -3 + 198, ctDogon, -22.6, 47.4 , 0 );
setEffMoveKey( spep_2 -3 + 200, ctDogon, -18.3, 36.3 , 0 );
setEffMoveKey( spep_2 -3 + 202, ctDogon, -27.1, 49.9 , 0 );
setEffMoveKey( spep_2 -3 + 204, ctDogon, -22.3, 46.4 , 0 );
setEffMoveKey( spep_2 -3 + 206, ctDogon, -18.8, 64.7 , 0 );
setEffMoveKey( spep_2 -3 + 208, ctDogon, -18.7, 73.1 , 0 );

setEffScaleKey( spep_2 -3 + 184, ctDogon, 2.02, 2.02 );
setEffScaleKey( spep_2 -3 + 186, ctDogon, 3.06, 3.06 );
setEffScaleKey( spep_2 -3 + 188, ctDogon, 3.68, 3.68 );
setEffScaleKey( spep_2 -3 + 190, ctDogon, 3.89, 3.89 );
setEffScaleKey( spep_2 -3 + 192, ctDogon, 3.9, 3.9 );
setEffScaleKey( spep_2 -3 + 194, ctDogon, 3.92, 3.92 );
setEffScaleKey( spep_2 -3 + 196, ctDogon, 3.95, 3.95 );
setEffScaleKey( spep_2 -3 + 198, ctDogon, 3.99, 3.99 );
setEffScaleKey( spep_2 -3 + 200, ctDogon, 4.04, 4.04 );
setEffScaleKey( spep_2 -3 + 202, ctDogon, 4.11, 4.11 );
setEffScaleKey( spep_2 -3 + 204, ctDogon, 4.19, 4.19 );
setEffScaleKey( spep_2 -3 + 206, ctDogon, 4.28, 4.28 );
setEffScaleKey( spep_2 -3 + 208, ctDogon, 4.38, 4.38 );

setEffRotateKey( spep_2 -3 + 184, ctDogon, -12.8 );
setEffRotateKey( spep_2 -3 + 186, ctDogon, -12.9 );
setEffRotateKey( spep_2 -3 + 208, ctDogon, -12.9 );

setEffAlphaKey( spep_2 -3 + 184, ctDogon, 255 );
setEffAlphaKey( spep_2 -3 + 190, ctDogon, 255 );
setEffAlphaKey( spep_2 -3 + 192, ctDogon, 252 );
setEffAlphaKey( spep_2 -3 + 194, ctDogon, 242 );
setEffAlphaKey( spep_2 -3 + 196, ctDogon, 227 );
setEffAlphaKey( spep_2 -3 + 198, ctDogon, 205 );
setEffAlphaKey( spep_2 -3 + 200, ctDogon, 176 );
setEffAlphaKey( spep_2 -3 + 202, ctDogon, 142 );
setEffAlphaKey( spep_2 -3 + 204, ctDogon, 101 );
setEffAlphaKey( spep_2 -3 + 206, ctDogon, 54 );
setEffAlphaKey( spep_2 -3 + 208, ctDogon, 0 );

-- ** 敵の動き ** --
setDisp( spep_2 -1 + 162, 1, 1 );
setDisp( spep_2 -1 + 180, 1, 0 );
changeAnime( spep_1 -1 + 162, 1, 106 );

setMoveKey( spep_2 -1 + 162, 1, -480.5, -112.9, 0 );
setMoveKey( spep_2 -1 + 180, 1, 55, -112.9, 0 );

setScaleKey( spep_2 -1 + 162, 1, 0.6, 0.6 );
setScaleKey( spep_2 -1 + 180, 1, 0.6, 0.6 );

setRotateKey( spep_2 -1 + 162, 1, 15 );
setRotateKey( spep_2 -1 + 180, 1, 15 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 302, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
se_0017 = playSe( spep_2 + 2, 17 );
se_1037 = playSe( spep_2 + 2, 1037 );
playSe( spep_2 + 6, 1018 );
playSe( spep_2 + 20, 1036 );
setSeVolume( spep_2 + 20, 1036, 63 );
stopSe( spep_2 + 30, se_1037, 26 );
playSe( spep_2 + 44, 1036 );
setSeVolume( spep_2 + 44, 1036, 63 );
stopSe( spep_2 + 45, se_0017, 14 );
playSe( spep_2 + 68, 1036 );
setSeVolume( spep_2 + 68, 1036, 63 );
playSe( spep_2 + 92, 1036 );
setSeVolume( spep_2 + 92, 1036, 63 );
playSe( spep_2 + 99, 1003 );
playSe( spep_2 + 116, 1036 );
setSeVolume( spep_2 + 116, 1036, 63 );
se_1133 = playSe( spep_2 + 139, 1133 );
playSe( spep_2 + 140, 1021 );
stopSe( spep_2 + 168, se_1133, 18 );
playSe( spep_2 + 181, 1067 );
playSe( spep_2 + 181, 1159 );
playSe( spep_2 + 181, 1188 );
setSeVolume( spep_2 + 181, 1159, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 184 );
endPhase( spep_2 + 300 -10 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 導入〜ラッシュ〜上空ジャンプ(304F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
startf = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --導入〜ラッシュ〜上空ジャンプ(手前)(ef_001)
setEffMoveKey( spep_0 + 0, startf, 0, 0 , 0 );
setEffMoveKey( spep_0 + 576, startf, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, startf, 1.0, 1.0 );
setEffScaleKey( spep_0 + 576, startf, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, startf, 0 );
setEffRotateKey( spep_0 + 576, startf, 0 );
setEffAlphaKey( spep_0 + 0, startf, 255 );
setEffAlphaKey( spep_0 + 576, startf, 255 );

startb = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --導入〜ラッシュ〜上空ジャンプ(奥)(ef_002)
setEffMoveKey( spep_0 + 0, startb, 0, 0 , 0 );
setEffMoveKey( spep_0 + 576, startb, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, startb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 576, startb, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, startb, 0 );
setEffRotateKey( spep_0 + 576, startb, 0 );
setEffAlphaKey( spep_0 + 0, startb, 255 );
setEffAlphaKey( spep_0 + 576, startb, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 576, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
se_0008 = playSe( spep_0 + 0, 08 );
playSe( spep_0 + 0, 1036 );
playSe( spep_0 + 24, 1036 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 182, 1, 1 );
setDisp( spep_0 -3 + 578, 1, 0 );
changeAnime( spep_0 -3 + 182, 1, 101 );
changeAnime( spep_0 -3 + 226, 1, 106 );
changeAnime( spep_0 -3 + 264, 1, 108 );
changeAnime( spep_0 -3 + 276, 1, 106 );
changeAnime( spep_0 -3 + 282, 1, 108 );
changeAnime( spep_0 -3 + 296, 1, 106 );
changeAnime( spep_0 -3 + 328, 1, 108 );
changeAnime( spep_0 -3 + 340, 1, 106 );
changeAnime( spep_0 -3 + 346, 1, 108 );
changeAnime( spep_0 -3 + 352, 1, 106 );
changeAnime( spep_0 -3 + 376, 1, 108 );
changeAnime( spep_0 -3 + 472, 1, 106 );

--setShakeChara( spep_0 -3 + 196, 1, 40, 10 );
--setShakeChara( spep_0 -3 + 266, 1, 40, 10 );
--setShakeChara( spep_0 -3 + 348, 1, 60, 10 );

setMoveKey( spep_0 -3 + 182, 1, 595.4, -39.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 496.2, -39.9 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 408.6, -39.9 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 332.7, -39.9 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 268.4, -39.9 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 215.9, -39.9 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 175, -39.9 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 145.8, -39.9 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 128.3, -39.9 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 122.4, -39.9 , 0 );
setMoveKey( spep_0 -3 + 225, 1, 122.4, -39.9 , 0 );

setMoveKey( spep_0 -3 + 226, 1, 94.9, -9.8 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 83.1, -3.6 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 100.3, -17.3 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 86.9, -15.7 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 85.3, -2.1 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 89.4, -12 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 83.3, -9.9 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 87.6, -0.4 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 90.8, -3 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 92, -1.6 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 92.9, -0.4 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 93.8, 0.6 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 94.5, 1.5 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 95.1, 2.3 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 95.6, 2.8 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 95.9, 3.2 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 96.1, 3.5 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 96.2, 3.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 96.2, 3.6 , 0 );

setMoveKey( spep_0 -3 + 264, 1, 155.3, 3 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 135.1, 4.9 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 141.2, 2.7 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 148.6, -14.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 145.5, -15.4 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 148, -13.3 , 0 );

setMoveKey( spep_0 -3 + 276, 1, 128, 25.7 , 0 );
setMoveKey( spep_0 -3 + 278, 1, 127, 28.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 128.8, 26.7 , 0 );

setMoveKey( spep_0 -3 + 282, 1, 140.2, -14.5 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 142.3, -15.8 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 140, -15.4 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 157.8, 7.4 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 154.8, 7.2 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 157.5, 8.2 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 147, 6.9 , 0 );

setMoveKey( spep_0 -3 + 296, 1, 187.1, -6.4 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 118.3, 11.9 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 158.7, 2.5 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 119.8, -0.4 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 134, 4.2 , 0 );
setMoveKey( spep_0 -3 + 306, 1, 133.5, 1.5 , 0 );
setMoveKey( spep_0 -3 + 308, 1, 135.8, 4.1 , 0 );
setMoveKey( spep_0 -3 + 310, 1, 135.8, 2.1 , 0 );
setMoveKey( spep_0 -3 + 312, 1, 136.2, 5.1 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 137.4, 3.3 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 138, 3.3 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 138.5, 3.3 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 138.9, 3.3 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 139.1, 3.3 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 139.3, 3.3 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 138.1, 2 , 0 );

setMoveKey( spep_0 -3 + 328, 1, 164.4, -0.1 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 139.1, -0.1 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 142.7, -0.1 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 148.5, 6.6 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 151.4, 6.2 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 149.1, 7.3 , 0 );

setMoveKey( spep_0 -3 + 340, 1, 129, 3.5 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 125.6, 3.9 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 128.3, 2.3 , 0 );

setMoveKey( spep_0 -3 + 346, 1, 140, 18.6 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 141.9, 15.7 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 142.3, 18.6 , 0 );

setMoveKey( spep_0 -3 + 352, 1, 125.8, 22.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 128.1, 24.3 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 126.2, 23.2 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 128.3, 23.5 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 127.3, 23.4 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 127.3, 23.4 , 0 );

setMoveKey( spep_0 -3 + 376, 1, 203.8, 25.4 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 144.6, 15.3 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 372.5, 11.1 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 532.8, -0.7 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 793.2, -11.5 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 972.3, -20.1 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 968.8, -20.6 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 971.4, -21.2 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 970.4, -19.7 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 970.4, -22.5 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 969.9, -19.9 , 0 );
setMoveKey( spep_0 -3 + 445, 1, 969.9, -19.9 , 0 );

setMoveKey( spep_0 -3 + 446, 1, -563.2, -19.9 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -249.9, -19.9 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -119.7, -19.9 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -34.6, -19.9 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 26.4, -19.9 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 71.9, -19.9 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 106.2, -19.9 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 132, -19.9 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 151, -19.9 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 164.3, -19.9 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 173, -19.9 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 177.8, -19.9 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 179.1, -19.9 , 0 );

setMoveKey( spep_0 -3 + 472, 1, 139.4, -26.8 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 108.7, -19.4 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 162.1, -20.2 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 225.6, -19.1 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 398.8, -20.1 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 567.3, -20 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 715.3, -20 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 833.9, -19.9 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 921.7, -19.9 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 981, -19.9 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 1014.6, -19.8 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 1025.6, -20.2 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 1025.6, -20.2 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 1077, -21.3 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 974.2, -19.2 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 1025.6, -20.2 , 0 );


setScaleKey( spep_0 -3 + 182, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 225, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 226, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 228, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 230, 1, 2.04, 2.04 );
setScaleKey( spep_0 -3 + 232, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 234, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 262, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 264, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 266, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 268, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 274, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 276, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 280, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 282, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 292, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 294, 1, 1.61, 1.61 );

setScaleKey( spep_0 -3 + 296, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 298, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 300, 1, 1.95, 1.95 );
setScaleKey( spep_0 -3 + 302, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 304, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 326, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 328, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 330, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 332, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 338, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 340, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 344, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 346, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 350, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 352, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 374, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 376, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 378, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 380, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 382, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 384, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 386, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 396, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 445, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 446, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 471, 1, 1.7, 1.7 );

setScaleKey( spep_0 -3 + 472, 1, 2.21, 2.21 );
setScaleKey( spep_0 -3 + 474, 1, 1.53, 1.53 );
setScaleKey( spep_0 -3 + 476, 1, 1.87, 1.87 );
setScaleKey( spep_0 -3 + 478, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 480, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 502, 1, 1.7, 1.7 );
setScaleKey( spep_0 -3 + 504, 1, 1.78, 1.78 );
setScaleKey( spep_0 -3 + 506, 1, 1.61, 1.61 );
setScaleKey( spep_0 -3 + 508, 1, 1.7, 1.7 );


setRotateKey( spep_0 -3 + 182, 1, 0 );
setRotateKey( spep_0 -3 + 225, 1, 0 );

setRotateKey( spep_0 -3 + 226, 1, -44.9 );
setRotateKey( spep_0 -3 + 262, 1, -44.9 );

setRotateKey( spep_0 -3 + 264, 1, 0.1 );
setRotateKey( spep_0 -3 + 268, 1, 0.1 );
setRotateKey( spep_0 -3 + 270, 1, 15 );
setRotateKey( spep_0 -3 + 274, 1, 15 );

setRotateKey( spep_0 -3 + 276, 1, -45 );
setRotateKey( spep_0 -3 + 280, 1, -45 );

setRotateKey( spep_0 -3 + 282, 1, 5 );
setRotateKey( spep_0 -3 + 286, 1, 5 );
setRotateKey( spep_0 -3 + 288, 1, -5 );
setRotateKey( spep_0 -3 + 294, 1, -5 );

setRotateKey( spep_0 -3 + 296, 1, -45 );
setRotateKey( spep_0 -3 + 298, 1, -44.4 );
setRotateKey( spep_0 -3 + 300, 1, -43.8 );
setRotateKey( spep_0 -3 + 302, 1, -43.2 );
setRotateKey( spep_0 -3 + 304, 1, -42.7 );
setRotateKey( spep_0 -3 + 306, 1, -42.2 );
setRotateKey( spep_0 -3 + 308, 1, -41.8 );
setRotateKey( spep_0 -3 + 310, 1, -41.4 );
setRotateKey( spep_0 -3 + 312, 1, -41.1 );
setRotateKey( spep_0 -3 + 314, 1, -40.8 );
setRotateKey( spep_0 -3 + 316, 1, -40.6 );
setRotateKey( spep_0 -3 + 318, 1, -40.4 );
setRotateKey( spep_0 -3 + 320, 1, -40.2 );
setRotateKey( spep_0 -3 + 322, 1, -40.1 );
setRotateKey( spep_0 -3 + 324, 1, -40 );
setRotateKey( spep_0 -3 + 326, 1, -40 );

setRotateKey( spep_0 -3 + 328, 1, 15 );
setRotateKey( spep_0 -3 + 332, 1, 15 );
setRotateKey( spep_0 -3 + 334, 1, 0 );
setRotateKey( spep_0 -3 + 338, 1, 0 );

setRotateKey( spep_0 -3 + 340, 1, -45 );
setRotateKey( spep_0 -3 + 344, 1, -45 );

setRotateKey( spep_0 -3 + 346, 1, 0 );
setRotateKey( spep_0 -3 + 350, 1, 0 );

setRotateKey( spep_0 -3 + 352, 1, -45 );
setRotateKey( spep_0 -3 + 354, 1, -45 );
setRotateKey( spep_0 -3 + 356, 1, -35 );
setRotateKey( spep_0 -3 + 374, 1, -35 );

setRotateKey( spep_0 -3 + 376, 1, 0 );
setRotateKey( spep_0 -3 + 396, 1, 0 );
setRotateKey( spep_0 -3 + 445, 1, 0 );

setRotateKey( spep_0 -3 + 446, 1, 0 );
setRotateKey( spep_0 -3 + 471, 1, 0 );

setRotateKey( spep_0 -3 + 472, 1, -25 );
setRotateKey( spep_0 -3 + 474, 1, -24.8 );
setRotateKey( spep_0 -3 + 476, 1, -23.6 );
setRotateKey( spep_0 -3 + 478, 1, -19.8 );
setRotateKey( spep_0 -3 + 480, 1, -13.7 );
setRotateKey( spep_0 -3 + 482, 1, -7.3 );
setRotateKey( spep_0 -3 + 484, 1, -1.7 );
setRotateKey( spep_0 -3 + 486, 1, 2.8 );
setRotateKey( spep_0 -3 + 488, 1, 6.1 );
setRotateKey( spep_0 -3 + 490, 1, 8.3 );
setRotateKey( spep_0 -3 + 492, 1, 9.6 );
setRotateKey( spep_0 -3 + 494, 1, 10 );

-- ** 流線 ** --
ryusen = entryEffectLife( spep_0 -3 + 376, 914, 186, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 376, ryusen, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 562, ryusen, 0, 0, 0 );


setEffScaleKey( spep_0 -3 + 376, ryusen, 4.29, 1.12 );
setEffScaleKey( spep_0 -3 + 396, ryusen, 4.29, 1.12 );

setEffScaleKey( spep_0 -3 + 472, ryusen, 4.29, 1.12 );
setEffScaleKey( spep_0 -3 + 492, ryusen, 4.29, 1.12 );

setEffScaleKey( spep_0 -3 + 538, ryusen, 4.9, 1.28 );
setEffScaleKey( spep_0 -3 + 562, ryusen, 4.9, 1.28 );


setEffRotateKey( spep_0 -3 + 376, ryusen, -180 );
setEffRotateKey( spep_0 -3 + 396, ryusen, -180 );

setEffRotateKey( spep_0 -3 + 472, ryusen, -180 );
setEffRotateKey( spep_0 -3 + 492, ryusen, -180 );

setEffRotateKey( spep_0 -3 + 538, ryusen, -100 );
setEffRotateKey( spep_0 -3 + 562, ryusen, -100 );


setEffAlphaKey( spep_0 -3 + 376, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 380, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 382, ryusen, 103 );
setEffAlphaKey( spep_0 -3 + 384, ryusen, 88 );
setEffAlphaKey( spep_0 -3 + 386, ryusen, 73 );
setEffAlphaKey( spep_0 -3 + 388, ryusen, 59 );
setEffAlphaKey( spep_0 -3 + 390, ryusen, 44 );
setEffAlphaKey( spep_0 -3 + 392, ryusen, 29 );
setEffAlphaKey( spep_0 -3 + 394, ryusen, 15 );
setEffAlphaKey( spep_0 -3 + 396, ryusen, 0 );
setEffAlphaKey( spep_0 -3 + 470, ryusen, 0 );
setEffAlphaKey( spep_0 -3 + 471, ryusen, 0 );

setEffAlphaKey( spep_0 -3 + 472, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 480, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 482, ryusen, 98 );
setEffAlphaKey( spep_0 -3 + 484, ryusen, 78 );
setEffAlphaKey( spep_0 -3 + 486, ryusen, 59 );
setEffAlphaKey( spep_0 -3 + 488, ryusen, 39 );
setEffAlphaKey( spep_0 -3 + 490, ryusen, 20 );
setEffAlphaKey( spep_0 -3 + 492, ryusen, 0 );
setEffAlphaKey( spep_0 -3 + 536, ryusen, 0 );
setEffAlphaKey( spep_0 -3 + 537, ryusen, 0 );

setEffAlphaKey( spep_0 -3 + 538, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 556, ryusen, 118 );
setEffAlphaKey( spep_0 -3 + 558, ryusen, 88 );
setEffAlphaKey( spep_0 -3 + 560, ryusen, 59 );
setEffAlphaKey( spep_0 -3 + 562, ryusen, 29 );
setEffAlphaKey( spep_0 -3 + 562, ryusen, 0 );

-- ** 書き文字エントリー ** --
ctGa = entryEffectLife( spep_0 -3 + 226, 10005, 16, 0x100, -1, 0, 106.9, 197.7 ); --ガッ
setEffMoveKey( spep_0 -3 + 226, ctGa, 106.9, 197.7 , 0 );
setEffMoveKey( spep_0 -3 + 228, ctGa, 124.2, 217.9 , 0 );
setEffMoveKey( spep_0 -3 + 230, ctGa, 143.4, 226.6 , 0 );
setEffMoveKey( spep_0 -3 + 232, ctGa, 141.3, 236 , 0 );
setEffMoveKey( spep_0 -3 + 234, ctGa, 155.9, 235.6 , 0 );
setEffMoveKey( spep_0 -3 + 236, ctGa, 147.7, 243.7 , 0 );
setEffMoveKey( spep_0 -3 + 238, ctGa, 152.9, 241.3 , 0 );
setEffMoveKey( spep_0 -3 + 240, ctGa, 151.5, 253.6 , 0 );
setEffMoveKey( spep_0 -3 + 242, ctGa, 153.1, 258 , 0 );

setEffScaleKey( spep_0 -3 + 226, ctGa, 1.03, 1.03 );
setEffScaleKey( spep_0 -3 + 228, ctGa, 1.32, 1.31 );
setEffScaleKey( spep_0 -3 + 230, ctGa, 1.46, 1.45 );
setEffScaleKey( spep_0 -3 + 232, ctGa, 1.55, 1.54 );
setEffScaleKey( spep_0 -3 + 234, ctGa, 1.61, 1.59 );
setEffScaleKey( spep_0 -3 + 236, ctGa, 1.65, 1.63 );
setEffScaleKey( spep_0 -3 + 238, ctGa, 1.66, 1.64 );
setEffScaleKey( spep_0 -3 + 240, ctGa, 1.75, 1.73 );
setEffScaleKey( spep_0 -3 + 242, ctGa, 1.78, 1.76 );

setEffRotateKey( spep_0 -3 + 226, ctGa, 5 );
setEffRotateKey( spep_0 -3 + 242, ctGa, 5 );

setEffAlphaKey( spep_0 -3 + 226, ctGa, 255 );
setEffAlphaKey( spep_0 -3 + 238, ctGa, 255 );
setEffAlphaKey( spep_0 -3 + 240, ctGa, 64 );
setEffAlphaKey( spep_0 -3 + 242, ctGa, 0 );

ctDogagaga_1 = entryEffectLife( spep_0 -3 + 264, 10017, 30, 0x100, -1, 0, -117.1, 222.7 ); --ドガガガッ
setEffMoveKey( spep_0 -3 + 264, ctDogagaga_1, -117.1, 222.7 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctDogagaga_1, -81.9, 242.2 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctDogagaga_1, -42.6, 251.1 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctDogagaga_1, -42.7, 257.5 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctDogagaga_1, -20.5, 255 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctDogagaga_1, -22.8, 269.3 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctDogagaga_1, 1.8, 258.9 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctDogagaga_1, -2.9, 276.5 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctDogagaga_1, 17, 274 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctDogagaga_1, 10.7, 284 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctDogagaga_1, 21.4, 272.7 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctDogagaga_1, 24.6, 286.7 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctDogagaga_1, 26.1, 287.4 , 0 );
setEffMoveKey( spep_0 -3 + 290, ctDogagaga_1, 16.2, 275.9 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctDogagaga_1, 45, 294.4 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctDogagaga_1, 52.1, 301.3 , 0 );

setEffScaleKey( spep_0 -3 + 264, ctDogagaga_1, 1.91, 1.94 );
setEffScaleKey( spep_0 -3 + 266, ctDogagaga_1, 2.19, 2.22 );
setEffScaleKey( spep_0 -3 + 268, ctDogagaga_1, 2.35, 2.39 );
setEffScaleKey( spep_0 -3 + 270, ctDogagaga_1, 2.47, 2.51 );
setEffScaleKey( spep_0 -3 + 272, ctDogagaga_1, 2.57, 2.61 );
setEffScaleKey( spep_0 -3 + 274, ctDogagaga_1, 2.65, 2.69 );
setEffScaleKey( spep_0 -3 + 276, ctDogagaga_1, 2.71, 2.75 );
setEffScaleKey( spep_0 -3 + 278, ctDogagaga_1, 2.76, 2.8 );
setEffScaleKey( spep_0 -3 + 280, ctDogagaga_1, 2.8, 2.84 );
setEffScaleKey( spep_0 -3 + 282, ctDogagaga_1, 2.83, 2.87 );
setEffScaleKey( spep_0 -3 + 284, ctDogagaga_1, 2.85, 2.89 );
setEffScaleKey( spep_0 -3 + 286, ctDogagaga_1, 2.86, 2.91 );
setEffScaleKey( spep_0 -3 + 288, ctDogagaga_1, 2.87, 2.91 );
setEffScaleKey( spep_0 -3 + 290, ctDogagaga_1, 2.92, 2.98 );
setEffScaleKey( spep_0 -3 + 292, ctDogagaga_1, 2.98, 3.04 );
setEffScaleKey( spep_0 -3 + 294, ctDogagaga_1, 3.04, 3.1 );

setEffRotateKey( spep_0 -3 + 264, ctDogagaga_1, -10 );
setEffRotateKey( spep_0 -3 + 294, ctDogagaga_1, -10 );

setEffAlphaKey( spep_0 -3 + 264, ctDogagaga_1, 255 );
setEffAlphaKey( spep_0 -3 + 288, ctDogagaga_1, 255 );
setEffAlphaKey( spep_0 -3 + 290, ctDogagaga_1, 170 );
setEffAlphaKey( spep_0 -3 + 292, ctDogagaga_1, 85 );
setEffAlphaKey( spep_0 -3 + 294, ctDogagaga_1, 0 );

ctZun = entryEffectLife( spep_0 -3 + 296, 10016, 16, 0x100, -1, 0, -67.3, 170.7 ); --ズンッ
setEffMoveKey( spep_0 -3 + 296, ctZun, -67.3, 170.7 , 0 );
setEffMoveKey( spep_0 -3 + 298, ctZun, -70.7, 182.4 , 0 );
setEffMoveKey( spep_0 -3 + 300, ctZun, -66.2, 185.5 , 0 );
setEffMoveKey( spep_0 -3 + 302, ctZun, -70.6, 190.6 , 0 );
setEffMoveKey( spep_0 -3 + 304, ctZun, -65.8, 190.7 , 0 );
setEffMoveKey( spep_0 -3 + 306, ctZun, -70.6, 193.9 , 0 );
setEffMoveKey( spep_0 -3 + 308, ctZun, -65.7, 192.4 , 0 );
setEffMoveKey( spep_0 -3 + 310, ctZun, -77.4, 200.5 , 0 );
setEffMoveKey( spep_0 -3 + 312, ctZun, -84.2, 206.4 , 0 );

setEffScaleKey( spep_0 -3 + 296, ctZun, 1.38, 1.39 );
setEffScaleKey( spep_0 -3 + 298, ctZun, 1.61, 1.62 );
setEffScaleKey( spep_0 -3 + 300, ctZun, 1.73, 1.74 );
setEffScaleKey( spep_0 -3 + 302, ctZun, 1.8, 1.81 );
setEffScaleKey( spep_0 -3 + 304, ctZun, 1.85, 1.86 );
setEffScaleKey( spep_0 -3 + 306, ctZun, 1.87, 1.88 );
setEffScaleKey( spep_0 -3 + 308, ctZun, 1.88, 1.89 );
setEffScaleKey( spep_0 -3 + 310, ctZun, 1.93, 1.94 );
setEffScaleKey( spep_0 -3 + 312, ctZun, 1.98, 1.99 );

setEffRotateKey( spep_0 -3 + 296, ctZun, -30 );
setEffRotateKey( spep_0 -3 + 312, ctZun, -30 );

setEffAlphaKey( spep_0 -3 + 296, ctZun, 255 );
setEffAlphaKey( spep_0 -3 + 308, ctZun, 255 );
setEffAlphaKey( spep_0 -3 + 310, ctZun, 128 );
setEffAlphaKey( spep_0 -3 + 312, ctZun, 0 );

ctDogagaga_2 = entryEffectLife( spep_0 -3 + 328, 10017, 36, 0x100, -1, 0, -117.1, 222.7 ); --ドガガガッ
setEffMoveKey( spep_0 -3 + 328, ctDogagaga_2, -117.1, 222.7 , 0 );
setEffMoveKey( spep_0 -3 + 330, ctDogagaga_2, -87.9, 239.6 , 0 );
setEffMoveKey( spep_0 -3 + 332, ctDogagaga_2, -51.5, 247.5 , 0 );
setEffMoveKey( spep_0 -3 + 334, ctDogagaga_2, -52.4, 253.3 , 0 );
setEffMoveKey( spep_0 -3 + 336, ctDogagaga_2, -31.3, 250.7 , 0 );
setEffMoveKey( spep_0 -3 + 338, ctDogagaga_2, -33.5, 264.7 , 0 );
setEffMoveKey( spep_0 -3 + 340, ctDogagaga_2, -9.2, 254.7 , 0 );
setEffMoveKey( spep_0 -3 + 342, ctDogagaga_2, -13.2, 272.1 , 0 );
setEffMoveKey( spep_0 -3 + 344, ctDogagaga_2, 7, 270 , 0 );
setEffMoveKey( spep_0 -3 + 346, ctDogagaga_2, 2, 280.1 , 0 );
setEffMoveKey( spep_0 -3 + 348, ctDogagaga_2, 13.7, 269.6 , 0 );
setEffMoveKey( spep_0 -3 + 350, ctDogagaga_2, 18.6, 284.2 , 0 );
setEffMoveKey( spep_0 -3 + 352, ctDogagaga_2, 13.6, 271.2 , 0 );
setEffMoveKey( spep_0 -3 + 354, ctDogagaga_2, 22.5, 287.5 , 0 );
setEffMoveKey( spep_0 -3 + 356, ctDogagaga_2, 8.2, 271.5 , 0 );
setEffMoveKey( spep_0 -3 + 358, ctDogagaga_2, 26.1, 287.4 , 0 );
setEffMoveKey( spep_0 -3 + 360, ctDogagaga_2, 16.2, 275.9 , 0 );
setEffMoveKey( spep_0 -3 + 362, ctDogagaga_2, 45, 294.4 , 0 );
setEffMoveKey( spep_0 -3 + 364, ctDogagaga_2, 52.1, 301.3 , 0 );

setEffScaleKey( spep_0 -3 + 328, ctDogagaga_2, 1.91, 1.94 );
setEffScaleKey( spep_0 -3 + 330, ctDogagaga_2, 2.14, 2.18 );
setEffScaleKey( spep_0 -3 + 332, ctDogagaga_2, 2.29, 2.33 );
setEffScaleKey( spep_0 -3 + 334, ctDogagaga_2, 2.41, 2.44 );
setEffScaleKey( spep_0 -3 + 336, ctDogagaga_2, 2.5, 2.53 );
setEffScaleKey( spep_0 -3 + 338, ctDogagaga_2, 2.57, 2.61 );
setEffScaleKey( spep_0 -3 + 340, ctDogagaga_2, 2.63, 2.67 );
setEffScaleKey( spep_0 -3 + 342, ctDogagaga_2, 2.68, 2.73 );
setEffScaleKey( spep_0 -3 + 344, ctDogagaga_2, 2.73, 2.77 );
setEffScaleKey( spep_0 -3 + 346, ctDogagaga_2, 2.76, 2.81 );
setEffScaleKey( spep_0 -3 + 348, ctDogagaga_2, 2.8, 2.84 );
setEffScaleKey( spep_0 -3 + 350, ctDogagaga_2, 2.82, 2.87 );
setEffScaleKey( spep_0 -3 + 352, ctDogagaga_2, 2.84, 2.89 );
setEffScaleKey( spep_0 -3 + 354, ctDogagaga_2, 2.85, 2.9 );
setEffScaleKey( spep_0 -3 + 356, ctDogagaga_2, 2.86, 2.91 );
setEffScaleKey( spep_0 -3 + 358, ctDogagaga_2, 2.87, 2.91 );
setEffScaleKey( spep_0 -3 + 360, ctDogagaga_2, 2.92, 2.98 );
setEffScaleKey( spep_0 -3 + 362, ctDogagaga_2, 2.98, 3.04 );
setEffScaleKey( spep_0 -3 + 364, ctDogagaga_2, 3.04, 3.1 );

setEffRotateKey( spep_0 -3 + 328, ctDogagaga_2, 0 );
setEffRotateKey( spep_0 -3 + 364, ctDogagaga_2, 0 );

setEffAlphaKey( spep_0 -3 + 328, ctDogagaga_2, 255 );
setEffAlphaKey( spep_0 -3 + 358, ctDogagaga_2, 255 );
setEffAlphaKey( spep_0 -3 + 360, ctDogagaga_2, 170 );
setEffAlphaKey( spep_0 -3 + 362, ctDogagaga_2, 85 );
setEffAlphaKey( spep_0 -3 + 364, ctDogagaga_2, 0 );

ctBaki = entryEffectLife( spep_0 -3 + 376, 10020, 18, 0x100, -1, 0, 192.4, 230.7 ); --バキッ
setEffMoveKey( spep_0 -3 + 376, ctBaki, 192.4, 230.7 , 0 );
setEffMoveKey( spep_0 -3 + 378, ctBaki, 190.8, 249.7 , 0 );
setEffMoveKey( spep_0 -3 + 380, ctBaki, 192.9, 245 , 0 );
setEffMoveKey( spep_0 -3 + 382, ctBaki, 188.8, 264.7 , 0 );
setEffMoveKey( spep_0 -3 + 384, ctBaki, 200.2, 262.2 , 0 );
setEffMoveKey( spep_0 -3 + 386, ctBaki, 188.5, 258.6 , 0 );
setEffMoveKey( spep_0 -3 + 388, ctBaki, 188.5, 260 , 0 );
setEffMoveKey( spep_0 -3 + 390, ctBaki, 193.6, 266.5 , 0 );
setEffMoveKey( spep_0 -3 + 392, ctBaki, 204.5, 275.6 , 0 );
setEffMoveKey( spep_0 -3 + 394, ctBaki, 208.8, 277.2 , 0 );

setEffScaleKey( spep_0 -3 + 376, ctBaki, 1.58, 1.58 );
setEffScaleKey( spep_0 -3 + 378, ctBaki, 1.71, 1.71 );
setEffScaleKey( spep_0 -3 + 380, ctBaki, 1.78, 1.78 );
setEffScaleKey( spep_0 -3 + 382, ctBaki, 1.82, 1.82 );
setEffScaleKey( spep_0 -3 + 384, ctBaki, 1.85, 1.85 );
setEffScaleKey( spep_0 -3 + 386, ctBaki, 1.87, 1.87 );
setEffScaleKey( spep_0 -3 + 388, ctBaki, 1.89, 1.89 );
setEffScaleKey( spep_0 -3 + 390, ctBaki, 1.89, 1.89 );
setEffScaleKey( spep_0 -3 + 392, ctBaki, 2.14, 2.14 );
setEffScaleKey( spep_0 -3 + 394, ctBaki, 2.22, 2.22 );

setEffRotateKey( spep_0 -3 + 376, ctBaki, 35.2 );
setEffRotateKey( spep_0 -3 + 394, ctBaki, 35.2 );

setEffAlphaKey( spep_0 -3 + 376, ctBaki, 255 );
setEffAlphaKey( spep_0 -3 + 390, ctBaki, 255 );
setEffAlphaKey( spep_0 -3 + 392, ctBaki, 64 );
setEffAlphaKey( spep_0 -3 + 394, ctBaki, 0 );

ctDon = entryEffectLife( spep_0 -3 + 472, 10019, 16, 0x100, -1, 0, 13.8, 148.2 ); --ドンッ
setEffMoveKey( spep_0 -3 + 472, ctDon, 13.8, 148.2 , 0 );
setEffMoveKey( spep_0 -3 + 474, ctDon, -22.2, 186.1 , 0 );
setEffMoveKey( spep_0 -3 + 476, ctDon, -20.6, 200.7 , 0 );
setEffMoveKey( spep_0 -3 + 478, ctDon, -37.8, 219.2 , 0 );
setEffMoveKey( spep_0 -3 + 480, ctDon, -28.1, 215.9 , 0 );
setEffMoveKey( spep_0 -3 + 482, ctDon, -43.3, 217 , 0 );
setEffMoveKey( spep_0 -3 + 484, ctDon, -44.7, 232.8 , 0 );
setEffMoveKey( spep_0 -3 + 486, ctDon, -53.3, 224 , 0 );
setEffMoveKey( spep_0 -3 + 488, ctDon, -62, 230.3 , 0 );

setEffScaleKey( spep_0 -3 + 472, ctDon, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 474, ctDon, 1.83, 1.83 );
setEffScaleKey( spep_0 -3 + 476, ctDon, 2.07, 2.07 );
setEffScaleKey( spep_0 -3 + 478, ctDon, 2.22, 2.22 );
setEffScaleKey( spep_0 -3 + 480, ctDon, 2.3, 2.3 );
setEffScaleKey( spep_0 -3 + 482, ctDon, 2.33, 2.33 );
setEffScaleKey( spep_0 -3 + 484, ctDon, 2.45, 2.45 );
setEffScaleKey( spep_0 -3 + 486, ctDon, 2.58, 2.58 );
setEffScaleKey( spep_0 -3 + 488, ctDon, 2.7, 2.7 );

setEffRotateKey( spep_0 -3 + 472, ctDon, -10.8 );
setEffRotateKey( spep_0 -3 + 474, ctDon, -10.2 );
setEffRotateKey( spep_0 -3 + 476, ctDon, -10 );
setEffRotateKey( spep_0 -3 + 478, ctDon, -9.9 );
setEffRotateKey( spep_0 -3 + 480, ctDon, -9.8 );
setEffRotateKey( spep_0 -3 + 482, ctDon, -9.7 );
setEffRotateKey( spep_0 -3 + 488, ctDon, -9.7 );

setEffAlphaKey( spep_0 -3 + 472, ctDon, 255 );
setEffAlphaKey( spep_0 -3 + 482, ctDon, 255 );
setEffAlphaKey( spep_0 -3 + 484, ctDon, 170 );
setEffAlphaKey( spep_0 -3 + 486, ctDon, 85 );
setEffAlphaKey( spep_0 -3 + 488, ctDon, 0 );

-- ** 音 ** --
se_1182 = playSe( spep_0 + 41, 1182 );
se_0009 = playSe( spep_0 + 41, 09 );
se_1018 = playSe( spep_0 + 41, 1018 );
setSeVolume( spep_0 + 41, 1018, 71 );
setSeVolume( spep_0 + 41, 1182, 158 );
se_1036 = playSe( spep_0 + 48, 1036 );
se_1183 = playSe( spep_0 + 48, 1183 );
se_1019 = playSe( spep_0 + 48, 1019 );
stopSe( spep_0 + 69, se_0009, 60 );
playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 79 );
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 71 );
playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 63 );
playSe( spep_0 + 144, 1036 );
setSeVolume( spep_0 + 144, 1036, 56 );
playSe( spep_0 + 147, 1072 );
setSeVolume( spep_0 + 147, 1072, 79 );
se_0009 = playSe( spep_0 + 162, 09 );
stopSe( spep_0 + 203, se_0009, 18 );
stopSe( spep_0 + 206, se_1019, 0 );
playSe( spep_0 + 222, 1189 );
playSe( spep_0 + 226, 1009 );
playSe( spep_0 + 226, 1006 );
playSe( spep_0 + 264, 1000 );
playSe( spep_0 + 270, 1000 );
setSeVolume( spep_0 + 270, 1000, 89 );
playSe( spep_0 + 275, 1006 );
setSeVolume( spep_0 + 275, 1006, 79 );
playSe( spep_0 + 277, 1000 );
setSeVolume( spep_0 + 277, 1000, 112 );
playSe( spep_0 + 282, 1000 );
playSe( spep_0 + 289, 1000 );
playSe( spep_0 + 297, 1010 );
playSe( spep_0 + 297, 1007 );
playSe( spep_0 + 325, 1189 );
playSe( spep_0 + 328, 1000 );
playSe( spep_0 + 334, 1000 );
playSe( spep_0 + 339, 1006 );
playSe( spep_0 + 341, 1000 );
playSe( spep_0 + 346, 1000 );
playSe( spep_0 + 353, 1000 );
playSe( spep_0 + 360, 1000 );
playSe( spep_0 + 379, 1120 );
playSe( spep_0 + 403, 09 );
playSe( spep_0 + 467, 1003 );
setSeVolume( spep_0 + 467, 1003, 63 );
playSe( spep_0 + 469, 1012 );
se_1190 = playSe( spep_0 + 472, 1190 );
playSe( spep_0 + 472, 1110 );
stopSe( spep_0 + 495, se_1190, 20 );
se_0044 = playSe( spep_0 + 503, 44 );
setSeVolume( spep_0 + 503, 44, 0 );
playSe( spep_0 + 513, 1048 );
se_1109 = playSe( spep_0 + 513, 1109 );
setSeVolume( spep_0 + 514, 44, 100 );
stopSe( spep_0 + 519, se_0044, 42 );
stopSe( spep_0 + 521, se_1109, 17 );
playSe( spep_0 + 539, 1036 );
setSeVolume( spep_0 + 539, 1036, 63 );
se_0008 = playSe( spep_0 + 541, 08 );
se_1036 = playSe( spep_0 + 563, 1036 );
setSeVolume( spep_0 + 563, 1036, 63 );
stopSe( spep_0 + 568, se_0008, 11 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 576;

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
stopSe( spep_1 + 3, se_1036, 0 );
playSe( spep_1 + 4, 1035 );
playSe( spep_1 + 90, 1036 );
setSeVolume( spep_1 + 90, 1036, 63 );

-- ** 次の準備 ** --
entryFade( spep_1 + 0, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
spep_2 = spep_1 + 94;

------------------------------------------------------
-- かめはめ波発射〜敵に命中
------------------------------------------------------
-- ** エフェクト等 ** --
finishf = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾溜め〜敵命中〜フィニッシュ(手前)(ef_003)
setEffMoveKey( spep_2 + 0, finishf, 0, 0 , 0 );
setEffMoveKey( spep_2 + 304, finishf, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finishf, 1.0, 1.0 );
setEffScaleKey( spep_2 + 304, finishf, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finishf, 0 );
setEffRotateKey( spep_2 + 304, finishf, 0 );
setEffAlphaKey( spep_2 + 0, finishf, 255 );
setEffAlphaKey( spep_2 + 304, finishf, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 -3 + 184, 906, 120, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 -3, shuchusen1, 120, 20 );

setEffMoveKey( spep_2 -3 + 184, shuchusen1, 0, 0, 0 );
setEffMoveKey( spep_2 -3 + 304, shuchusen1, 0, 0, 0 );

setEffScaleKey( spep_2 -3 + 184, shuchusen1, 1.1, 1.1 );
setEffScaleKey( spep_2 -3 + 304, shuchusen1, 1.1, 1.1 );

setEffRotateKey( spep_2 -3 + 184, shuchusen1, 180 );
setEffRotateKey( spep_2 -3 + 304, shuchusen1, 180 );

setEffAlphaKey( spep_2 -3 + 184, shuchusen1, 255 );
setEffAlphaKey( spep_2 -3 + 304, shuchusen1, 255 );

-- ** エフェクト等 ** --
finishb = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾溜め〜敵命中〜フィニッシュ(奥)(ef_004)
setEffMoveKey( spep_2 + 0, finishb, 0, 0 , 0 );
setEffMoveKey( spep_2 + 304, finishb, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finishb, 1.0, 1.0 );
setEffScaleKey( spep_2 + 304, finishb, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finishb, 0 );
setEffRotateKey( spep_2 + 304, finishb, 0 );
setEffAlphaKey( spep_2 + 0, finishb, 255 );
setEffAlphaKey( spep_2 + 304, finishb, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 0, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 + 12, 190006, 72, 0x100, -1, 0, 0, 520);    --ゴゴゴゴ

setEffMoveKey( spep_2 + 12, ctgogo, 0, 520, 0 );
setEffMoveKey( spep_2 + 84, ctgogo, 0, 520, 0 );

setEffAlphaKey( spep_2 + 12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 76, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 112 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey( spep_2 + 12, ctgogo, 0);
setEffRotateKey( spep_2 + 84, ctgogo, 0);

setEffScaleKey( spep_2 + 12, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_2 + 72, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_2 + 84, ctgogo, -1.07, 1.07 );

ctDogon = entryEffectLife( spep_2 -3 + 184, 10018, 24, 0x100, -1, 0, -15.2, -111.1 ); --ドゴォンッ
setEffMoveKey( spep_2 -3 + 184, ctDogon, -15.2, -111.1 , 0 );
setEffMoveKey( spep_2 -3 + 186, ctDogon, -30, -28.9 , 0 );
setEffMoveKey( spep_2 -3 + 188, ctDogon, -15.3, 10.3 , 0 );
setEffMoveKey( spep_2 -3 + 190, ctDogon, -11.6, 24.3 , 0 );
setEffMoveKey( spep_2 -3 + 192, ctDogon, -29.3, 28 , 0 );
setEffMoveKey( spep_2 -3 + 194, ctDogon, -17.5, 38.3 , 0 );
setEffMoveKey( spep_2 -3 + 196, ctDogon, -21.6, 22.8 , 0 );
setEffMoveKey( spep_2 -3 + 198, ctDogon, -22.6, 47.4 , 0 );
setEffMoveKey( spep_2 -3 + 200, ctDogon, -18.3, 36.3 , 0 );
setEffMoveKey( spep_2 -3 + 202, ctDogon, -27.1, 49.9 , 0 );
setEffMoveKey( spep_2 -3 + 204, ctDogon, -22.3, 46.4 , 0 );
setEffMoveKey( spep_2 -3 + 206, ctDogon, -18.8, 64.7 , 0 );
setEffMoveKey( spep_2 -3 + 208, ctDogon, -18.7, 73.1 , 0 );

setEffScaleKey( spep_2 -3 + 184, ctDogon, 2.02, 2.02 );
setEffScaleKey( spep_2 -3 + 186, ctDogon, 3.06, 3.06 );
setEffScaleKey( spep_2 -3 + 188, ctDogon, 3.68, 3.68 );
setEffScaleKey( spep_2 -3 + 190, ctDogon, 3.89, 3.89 );
setEffScaleKey( spep_2 -3 + 192, ctDogon, 3.9, 3.9 );
setEffScaleKey( spep_2 -3 + 194, ctDogon, 3.92, 3.92 );
setEffScaleKey( spep_2 -3 + 196, ctDogon, 3.95, 3.95 );
setEffScaleKey( spep_2 -3 + 198, ctDogon, 3.99, 3.99 );
setEffScaleKey( spep_2 -3 + 200, ctDogon, 4.04, 4.04 );
setEffScaleKey( spep_2 -3 + 202, ctDogon, 4.11, 4.11 );
setEffScaleKey( spep_2 -3 + 204, ctDogon, 4.19, 4.19 );
setEffScaleKey( spep_2 -3 + 206, ctDogon, 4.28, 4.28 );
setEffScaleKey( spep_2 -3 + 208, ctDogon, 4.38, 4.38 );

setEffRotateKey( spep_2 -3 + 184, ctDogon, -2.8 );
setEffRotateKey( spep_2 -3 + 186, ctDogon, -2.9 );
setEffRotateKey( spep_2 -3 + 208, ctDogon, -2.9 );

setEffAlphaKey( spep_2 -3 + 184, ctDogon, 255 );
setEffAlphaKey( spep_2 -3 + 190, ctDogon, 255 );
setEffAlphaKey( spep_2 -3 + 192, ctDogon, 252 );
setEffAlphaKey( spep_2 -3 + 194, ctDogon, 242 );
setEffAlphaKey( spep_2 -3 + 196, ctDogon, 227 );
setEffAlphaKey( spep_2 -3 + 198, ctDogon, 205 );
setEffAlphaKey( spep_2 -3 + 200, ctDogon, 176 );
setEffAlphaKey( spep_2 -3 + 202, ctDogon, 142 );
setEffAlphaKey( spep_2 -3 + 204, ctDogon, 101 );
setEffAlphaKey( spep_2 -3 + 206, ctDogon, 54 );
setEffAlphaKey( spep_2 -3 + 208, ctDogon, 0 );

-- ** 敵の動き ** --
setDisp( spep_2 -1 + 162, 1, 1 );
setDisp( spep_2 -1 + 180, 1, 0 );
changeAnime( spep_1 -1 + 162, 1, 106 );

setMoveKey( spep_2 -1 + 162, 1, -480.5, -112.9, 0 );
setMoveKey( spep_2 -1 + 180, 1, 55, -112.9, 0 );

setScaleKey( spep_2 -1 + 162, 1, 0.6, 0.6 );
setScaleKey( spep_2 -1 + 180, 1, 0.6, 0.6 );

setRotateKey( spep_2 -1 + 162, 1, 15 );
setRotateKey( spep_2 -1 + 180, 1, 15 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 302, 0, 0, 0, 0, 255 ); --黒　背景

-- ** 音 ** --
se_0017 = playSe( spep_2 + 2, 17 );
se_1037 = playSe( spep_2 + 2, 1037 );
playSe( spep_2 + 6, 1018 );
playSe( spep_2 + 20, 1036 );
setSeVolume( spep_2 + 20, 1036, 63 );
stopSe( spep_2 + 30, se_1037, 26 );
playSe( spep_2 + 44, 1036 );
setSeVolume( spep_2 + 44, 1036, 63 );
stopSe( spep_2 + 45, se_0017, 14 );
playSe( spep_2 + 68, 1036 );
setSeVolume( spep_2 + 68, 1036, 63 );
playSe( spep_2 + 92, 1036 );
setSeVolume( spep_2 + 92, 1036, 63 );
playSe( spep_2 + 99, 1003 );
playSe( spep_2 + 116, 1036 );
setSeVolume( spep_2 + 116, 1036, 63 );
se_1133 = playSe( spep_2 + 139, 1133 );
playSe( spep_2 + 140, 1021 );
stopSe( spep_2 + 168, se_1133, 18 );
playSe( spep_2 + 181, 1067 );
playSe( spep_2 + 181, 1159 );
playSe( spep_2 + 181, 1188 );
setSeVolume( spep_2 + 181, 1159, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 184 );
endPhase( spep_2 + 300 -10 );

end