--4018200:クウラ(最終形態)_デスグライディング
--sp_effect_b1_00088

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
SP_01=	154314	;--	前半　手前
SP_02=	154315	;--	前半　奥
SP_03=	154316	;--	後半 手前
SP_04=	154317	;--	後半　奥

--敵側
SP_01x=	154318	;--	前半　手前	(敵)
SP_02x=	154319	;--	前半　奥	(敵)
SP_03x=	154316	;--	後半 手前	
SP_04x=	154317	;--	後半　奥	
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
setDisp( 0, 0, 0);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
Ngaphambi_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, Ngaphambi_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 586, Ngaphambi_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, Ngaphambi_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 586, Ngaphambi_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, Ngaphambi_f, 0 );
setEffRotateKey( spep_0 + 586, Ngaphambi_f, 0 );
setEffAlphaKey( spep_0 + 0, Ngaphambi_f, 255 );
setEffAlphaKey( spep_0 + 586, Ngaphambi_f, 255 );
setEffAlphaKey( spep_0 + 587, Ngaphambi_f, 0 );
setEffAlphaKey( spep_0 + 588, Ngaphambi_f, 0 );

-- ** エフェクト等 ** --
Ngaphambi_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, Ngaphambi_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 586, Ngaphambi_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, Ngaphambi_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 586, Ngaphambi_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, Ngaphambi_b, 0 );
setEffRotateKey( spep_0 + 586, Ngaphambi_b, 0 );
setEffAlphaKey( spep_0 + 0, Ngaphambi_b, 255 );
setEffAlphaKey( spep_0 + 586, Ngaphambi_b, 255 );
setEffAlphaKey( spep_0 + 587, Ngaphambi_b, 0 );
setEffAlphaKey( spep_0 + 588, Ngaphambi_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 79, 1, 0 );
setDisp( spep_0 -3 + 254, 1, 1 );
setDisp( spep_0 -3 + 362, 1, 0 );
setDisp( spep_0 -3 + 374, 1, 1 );
setDisp( spep_0 -3 + 448, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );
changeAnime( spep_0-3 + 58, 1, 3 );
changeAnime( spep_0 -3 + 254, 1, 16 );
changeAnime( spep_0 -3 + 264, 1, 7 );
changeAnime( spep_0 -3 + 266, 1, 6 );
changeAnime( spep_0 -3 + 354, 1, 8 );
changeAnime( spep_0 -3 + 374, 1, 7 );
changeAnime( spep_0 -3 + 398, 1, 107 );

setMoveKey( spep_0 + 0, 1, 260, 0 , 0 );
setMoveKey( spep_0 + 1, 1, 260, 0 , 0 );
setMoveKey( spep_0 + 2, 1, 260, 0 , 0 );
setMoveKey( spep_0 + 3, 1, 260, 0 , 0 );
setMoveKey( spep_0 + 4, 1, 260, 0 , 0 );
setMoveKey( spep_0 + 5, 1, 260, 0 , 0 );
setMoveKey( spep_0-3 + 12, 1, 260, 0 , 0 );
setMoveKey( spep_0-3 + 14, 1, 259.6, 0 , 0 );
setMoveKey( spep_0-3 + 16, 1, 258.8, 0 , 0 );
setMoveKey( spep_0-3 + 18, 1, 258.2, 0 , 0 );
setMoveKey( spep_0-3 + 20, 1, 257.1, 0 , 0 );
setMoveKey( spep_0-3 + 22, 1, 255.7, -0.1 , 0 );
setMoveKey( spep_0-3 + 24, 1, 253.5, 0 , 0 );
setMoveKey( spep_0-3 + 26, 1, 251.3, -0.1 , 0 );
setMoveKey( spep_0-3 + 28, 1, 248.5, 0 , 0 );
setMoveKey( spep_0-3 + 30, 1, 244.8, 0 , 0 );
setMoveKey( spep_0-3 + 32, 1, 240.9, 0 , 0 );
setMoveKey( spep_0-3 + 34, 1, 235.8, 0 , 0 );
setMoveKey( spep_0-3 + 36, 1, 230, 0 , 0 );
setMoveKey( spep_0-3 + 38, 1, 222.8, 0 , 0 );
setMoveKey( spep_0-3 + 40, 1, 214.2, 0 , 0 );
setMoveKey( spep_0-3 + 42, 1, 203.7, 0 , 0 );
setMoveKey( spep_0-3 + 44, 1, 190.3, 0 , 0 );
setMoveKey( spep_0-3 + 46, 1, 172.7, 0 , 0 );
setMoveKey( spep_0-3 + 48, 1, 149.9, 0 , 0 );
setMoveKey( spep_0-3 + 50, 1, 127.9, -0.8 , 0 );
setMoveKey( spep_0-3 + 52, 1, 112.2, -2.1 , 0 );
setMoveKey( spep_0-3 + 54, 1, 106.9, -3.5 , 0 );
setMoveKey( spep_0-3 + 57, 1, 108.8, -5.1 , 0 );
setMoveKey( spep_0-3 + 58, 1, 152.3, -25.7 , 0 );
setMoveKey( spep_0-3 + 60, 1, 188.8, -31.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, 225.3, -31.4 , 0 );
setMoveKey( spep_0-3 + 64, 1, 265.6, -31.6 , 0 );

setScaleKey( spep_0 + 0, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 16, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 18, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 20, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 22, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 24, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 26, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 28, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 30, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 32, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 34, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 36, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 38, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 40, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 42, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 44, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 46, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 48, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 50, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 52, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 54, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 57, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 58, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 60, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 62, 1, 0.79, 0.79 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0-3 + 48, 1, 0 );
setRotateKey( spep_0-3 + 50, 1, 2.5 );
setRotateKey( spep_0-3 + 52, 1, 5 );
setRotateKey( spep_0-3 + 54, 1, 7.5 );
setRotateKey( spep_0-3 + 57, 1, 10 );
setRotateKey( spep_0-3 + 58, 1, -14.5 );
setRotateKey( spep_0-3 + 59, 1, -14.5 );
setRotateKey( spep_0-3 + 60, 1, 0 );

-- ** 音 ** --
--playSe( spep_0 + 22, 1072 );  --敵移動
playSe( spep_0 + 22, 44 );  --敵移動

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 62; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    

 --敵の座標の固定
 setMoveKey( SP_dodge+10, 1, 265.6, -31.6 , 0 );
 setScaleKey( SP_dodge+10, 1, 0.79, 0.79 );
 setRotateKey( SP_dodge+10, 1, 0 );



    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

setMoveKey( spep_0-3 + 66, 1, 308.7, -31.8 , 0 );
setMoveKey( spep_0-3 + 68, 1, 355.4, -32 , 0 );
setMoveKey( spep_0-3 + 70, 1, 405, -32.1 , 0 );
setMoveKey( spep_0-3 + 72, 1, 458.9, -32.3 , 0 );
setMoveKey( spep_0-3 + 74, 1, 515.8, -32.5 , 0 );
setMoveKey( spep_0-3 + 76, 1, 575.9, -32.6 , 0 );
setMoveKey( spep_0-3 + 79, 1, 639.7, -32.4 , 0 );
setMoveKey( spep_0-3 + 254, 1, -497.3, 10 , 0 );
setMoveKey( spep_0-3 + 256, 1, -414.1, 8.5 , 0 );
setMoveKey( spep_0-3 + 258, 1, -330.9, 6.9 , 0 );
setMoveKey( spep_0-3 + 260, 1, -247.6, 5.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, -164.3, 3.7 , 0 );
setMoveKey( spep_0-3 + 263, 1, -164.3, 3.7 , 0 );
setMoveKey( spep_0-3 + 264, 1, -227, -15.4 , 0 );
setMoveKey( spep_0-3 + 265, 1, -227, -15.4 , 0 );
setMoveKey( spep_0-3 + 266, 1, -158.1, -121.4 , 0 );
setMoveKey( spep_0-3 + 268, 1, -169.8, -106.1 , 0 );
setMoveKey( spep_0-3 + 270, 1, -175.3, -99 , 0 );
setMoveKey( spep_0-3 + 272, 1, -178.9, -94.3 , 0 );
setMoveKey( spep_0-3 + 274, 1, -181.5, -90.9 , 0 );
setMoveKey( spep_0-3 + 276, 1, -183.4, -88.4 , 0 );
setMoveKey( spep_0-3 + 278, 1, -184.9, -86.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, -185.7, -85.3 , 0 );
setMoveKey( spep_0-3 + 282, 1, -186.2, -84.8 , 0 );
setMoveKey( spep_0-3 + 284, 1, -186.5, -84.3 , 0 );
setMoveKey( spep_0-3 + 286, 1, -186.8, -84 , 0 );
setMoveKey( spep_0-3 + 288, 1, -187.1, -83.6 , 0 );
setMoveKey( spep_0-3 + 290, 1, -187.3, -83.3 , 0 );
setMoveKey( spep_0-3 + 292, 1, -187.5, -83 , 0 );
setMoveKey( spep_0-3 + 294, 1, -187.7, -82.8 , 0 );
setMoveKey( spep_0-3 + 296, 1, -187.9, -82.5 , 0 );
setMoveKey( spep_0-3 + 298, 1, -188.1, -82.3 , 0 );
setMoveKey( spep_0-3 + 300, 1, -188.3, -82 , 0 );
setMoveKey( spep_0-3 + 302, 1, -188.5, -81.8 , 0 );
setMoveKey( spep_0-3 + 304, 1, -188.6, -81.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, -188.4, -81.3 , 0 );
setMoveKey( spep_0-3 + 307, 1, -188.4, -81.3 , 0 );
setMoveKey( spep_0-3 + 308, 1, -16.1, 21 , 0 );
setMoveKey( spep_0-3 + 310, 1, -17.8, 21 , 0 );
setMoveKey( spep_0-3 + 312, 1, -19.5, 21 , 0 );
setMoveKey( spep_0-3 + 314, 1, -21.1, 21 , 0 );
setMoveKey( spep_0-3 + 316, 1, -22.7, 21 , 0 );
setMoveKey( spep_0-3 + 318, 1, -24.1, 21 , 0 );
setMoveKey( spep_0-3 + 320, 1, -25.5, 21 , 0 );
setMoveKey( spep_0-3 + 322, 1, -26.7, 21 , 0 );
setMoveKey( spep_0-3 + 324, 1, -27.9, 21 , 0 );
setMoveKey( spep_0-3 + 326, 1, -29.1, 21 , 0 );
setMoveKey( spep_0-3 + 328, 1, -30.1, 21 , 0 );
setMoveKey( spep_0-3 + 330, 1, -31, 21 , 0 );
setMoveKey( spep_0-3 + 332, 1, -31.9, 21 , 0 );
setMoveKey( spep_0-3 + 334, 1, -32.7, 21 , 0 );
setMoveKey( spep_0-3 + 336, 1, -33.4, 21 , 0 );
setMoveKey( spep_0-3 + 338, 1, -34, 21 , 0 );
setMoveKey( spep_0-3 + 340, 1, -34.5, 21 , 0 );
setMoveKey( spep_0-3 + 342, 1, -35, 21 , 0 );
setMoveKey( spep_0-3 + 344, 1, -35.4, 21 , 0 );
setMoveKey( spep_0-3 + 346, 1, -35.7, 21 , 0 );
setMoveKey( spep_0-3 + 348, 1, -35.9, 21 , 0 );
setMoveKey( spep_0-3 + 350, 1, -36, 21 , 0 );
setMoveKey( spep_0-3 + 353, 1, -36, 21 , 0 );
setMoveKey( spep_0-3 + 354, 1, -184.2, -131.2 , 0 );
setMoveKey( spep_0-3 + 356, 1, -267.4, -182.8 , 0 );
setMoveKey( spep_0-3 + 358, 1, -350.5, -234.4 , 0 );
setMoveKey( spep_0-3 + 360, 1, -453.7, -326.5 , 0 );
setMoveKey( spep_0-3 + 362, 1, -556.9, -418.7 , 0 );

setMoveKey( spep_0-3 + 374, 1, 66.7, 136.9 , 0 );
setMoveKey( spep_0-3 + 376, 1, 39.8, 99.1 , 0 );
setMoveKey( spep_0-3 + 378, 1, 18.8, 69.8 , 0 );
setMoveKey( spep_0-3 + 380, 1, 3.9, 48.8 , 0 );
setMoveKey( spep_0-3 + 382, 1, -5.1, 36.2 , 0 );
setMoveKey( spep_0-3 + 384, 1, -8.1, 32 , 0 );
setMoveKey( spep_0-3 + 386, 1, -44.8, -17.8 , 0 );
setMoveKey( spep_0-3 + 388, 1, -74.8, -58.5 , 0 );
setMoveKey( spep_0-3 + 390, 1, -98.1, -90.2 , 0 );
setMoveKey( spep_0-3 + 392, 1, -114.8, -112.8 , 0 );
setMoveKey( spep_0-3 + 394, 1, -124.8, -126.4 , 0 );
setMoveKey( spep_0-3 + 396, 1, -128.1, -130.9 , 0 );
setMoveKey( spep_0-3 + 397, 1, -128.1, -130.9 , 0 );
setMoveKey( spep_0-3 + 398, 1, -135.9, -129.8 , 0 );
setMoveKey( spep_0-3 + 400, 1, -136.2, -129.8 , 0 );
setMoveKey( spep_0-3 + 402, 1, -136.9, -129.7 , 0 );
setMoveKey( spep_0-3 + 404, 1, -138.1, -129.5 , 0 );
setMoveKey( spep_0-3 + 406, 1, -139.6, -129.3 , 0 );
setMoveKey( spep_0-3 + 408, 1, -141.6, -129 , 0 );
setMoveKey( spep_0-3 + 410, 1, -144, -128.7 , 0 );
setMoveKey( spep_0-3 + 412, 1, -146.5, -128.2 , 0 );
setMoveKey( spep_0-3 + 414, 1, -149.3, -127.8 , 0 );
setMoveKey( spep_0-3 + 416, 1, -152.2, -127.2 , 0 );
setMoveKey( spep_0-3 + 418, 1, -155.1, -126.6 , 0 );
setMoveKey( spep_0-3 + 420, 1, -158.1, -125.9 , 0 );
setMoveKey( spep_0-3 + 422, 1, -161, -125.2 , 0 );
setMoveKey( spep_0-3 + 424, 1, -163.7, -123.6 , 0 );
setMoveKey( spep_0-3 + 426, 1, -166.1, -121.8 , 0 );
setMoveKey( spep_0-3 + 428, 1, -168, -119.9 , 0 );
setMoveKey( spep_0-3 + 430, 1, -169.3, -117.8 , 0 );
setMoveKey( spep_0-3 + 432, 1, -169.9, -115.6 , 0 );
setMoveKey( spep_0-3 + 434, 1, -169.6, -113.3 , 0 );
setMoveKey( spep_0-3 + 436, 1, -168, -110.9 , 0 );
setMoveKey( spep_0-3 + 438, 1, -165.3, -107.5 , 0 );
setMoveKey( spep_0-3 + 440, 1, -161.1, -103.9 , 0 );
setMoveKey( spep_0-3 + 442, 1, -155.2, -100.2 , 0 );
setMoveKey( spep_0-3 + 444, 1, -147.6, -96.3 , 0 );
setMoveKey( spep_0-3 + 446, 1, -138, -92.2 , 0 );
setMoveKey( spep_0-3 + 448, 1, -127.1, -88.5 , 0 );


setScaleKey( spep_0-3 + 66, 1, 0.79, 0.79 );
setScaleKey( spep_0-3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 70, 1, 0.8, 0.8 );
setScaleKey( spep_0-3 + 72, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 74, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 76, 1, 0.82, 0.82 );
setScaleKey( spep_0-3 + 79, 1, 0.82, 0.82 );
setScaleKey( spep_0-3 + 254, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 256, 1, 1.22, 1.22 );
setScaleKey( spep_0-3 + 258, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 260, 1, 2.12, 2.12 );
setScaleKey( spep_0-3 + 262, 1, 2.57, 2.57 );
setScaleKey( spep_0-3 + 263, 1, 2.57, 2.57 );
setScaleKey( spep_0-3 + 264, 1, 1.22, 1.22 );
setScaleKey( spep_0-3 + 265, 1, 1.22, 1.22 );

setScaleKey( spep_0-3 + 266, 1, 4.29, 4.29 );
setScaleKey( spep_0-3 + 268, 1, 3.96, 3.96 );
setScaleKey( spep_0-3 + 270, 1, 3.81, 3.81 );
setScaleKey( spep_0-3 + 272, 1, 3.71, 3.71 );
setScaleKey( spep_0-3 + 274, 1, 3.63, 3.63 );
setScaleKey( spep_0-3 + 276, 1, 3.58, 3.58 );
setScaleKey( spep_0-3 + 278, 1, 3.53, 3.53 );
setScaleKey( spep_0-3 + 280, 1, 3.51, 3.51 );
setScaleKey( spep_0-3 + 282, 1, 3.5, 3.5 );
setScaleKey( spep_0-3 + 284, 1, 3.49, 3.49 );
setScaleKey( spep_0-3 + 286, 1, 3.48, 3.48 );
setScaleKey( spep_0-3 + 288, 1, 3.47, 3.47 );
setScaleKey( spep_0-3 + 290, 1, 3.47, 3.47 );
setScaleKey( spep_0-3 + 292, 1, 3.46, 3.46 );
setScaleKey( spep_0-3 + 294, 1, 3.46, 3.46 );
setScaleKey( spep_0-3 + 296, 1, 3.45, 3.45 );
setScaleKey( spep_0-3 + 298, 1, 3.44, 3.44 );
setScaleKey( spep_0-3 + 300, 1, 3.44, 3.44 );
setScaleKey( spep_0-3 + 302, 1, 3.43, 3.43 );
setScaleKey( spep_0-3 + 304, 1, 3.43, 3.43 );
setScaleKey( spep_0-3 + 306, 1, 3.42, 3.42 );
setScaleKey( spep_0-3 + 307, 1, 3.42, 3.42 );

d=0;

setScaleKey( spep_0-3 + 308, 1, 0.86+d, 0.86+d );
setScaleKey( spep_0-3 + 350, 1, 0.86+d, 0.86+d );
setScaleKey( spep_0-3 + 353, 1, 0.86+d, 0.86+d );

setScaleKey( spep_0-3 + 354, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 358, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 360, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 362, 1, 0.95, 0.95 );

setScaleKey( spep_0-3 + 374, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 396, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 398, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 404, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 406, 1, 0.03, 0.02 );
setScaleKey( spep_0-3 + 408, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 410, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 412, 1, 0.04, 0.03 );
setScaleKey( spep_0-3 + 414, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 416, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 418, 1, 0.06, 0.05 );
setScaleKey( spep_0-3 + 420, 1, 0.07, 0.06 );
setScaleKey( spep_0-3 + 422, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 424, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 426, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 428, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 430, 1, 0.12, 0.11 );
setScaleKey( spep_0-3 + 432, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 434, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 436, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 438, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 440, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 442, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 444, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 446, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 448, 1, 0.26, 0.26 );

setRotateKey( spep_0-3 + 79, 1, 0 );
setRotateKey( spep_0-3 + 254, 1, 0 );
setRotateKey( spep_0-3 + 262, 1, 0 );
setRotateKey( spep_0-3 + 263, 1, 0 );
setRotateKey( spep_0-3 + 264, 1, 115.9 );
setRotateKey( spep_0-3 + 265, 1, 115.9 );

setRotateKey( spep_0-3 + 266, 1, 46.1 );
setRotateKey( spep_0-3 + 268, 1, 44 );
setRotateKey( spep_0-3 + 270, 1, 43 );
setRotateKey( spep_0-3 + 272, 1, 42.4 );
setRotateKey( spep_0-3 + 274, 1, 41.9 );
setRotateKey( spep_0-3 + 276, 1, 41.6 );
setRotateKey( spep_0-3 + 278, 1, 41.3 );
setRotateKey( spep_0-3 + 280, 1, 41.2 );
setRotateKey( spep_0-3 + 282, 1, 41.1 );
setRotateKey( spep_0-3 + 284, 1, 41 );
setRotateKey( spep_0-3 + 286, 1, 41 );
setRotateKey( spep_0-3 + 288, 1, 40.9 );
setRotateKey( spep_0-3 + 292, 1, 40.9 );
setRotateKey( spep_0-3 + 294, 1, 40.8 );
setRotateKey( spep_0-3 + 298, 1, 40.8 );
setRotateKey( spep_0-3 + 300, 1, 40.7 );
setRotateKey( spep_0-3 + 304, 1, 40.7 );
setRotateKey( spep_0-3 + 306, 1, 40.6 );
setRotateKey( spep_0-3 + 307, 1, 40.6 );

setRotateKey( spep_0-3 + 308, 1, 20.9 );
setRotateKey( spep_0-3 + 310, 1, 19.9 );
setRotateKey( spep_0-3 + 312, 1, 19 );
setRotateKey( spep_0-3 + 314, 1, 18.2 );
setRotateKey( spep_0-3 + 316, 1, 17.4 );
setRotateKey( spep_0-3 + 318, 1, 16.6 );
setRotateKey( spep_0-3 + 320, 1, 15.9 );
setRotateKey( spep_0-3 + 322, 1, 15.2 );
setRotateKey( spep_0-3 + 324, 1, 14.5 );
setRotateKey( spep_0-3 + 326, 1, 13.9 );
setRotateKey( spep_0-3 + 328, 1, 13.4 );
setRotateKey( spep_0-3 + 330, 1, 12.9 );
setRotateKey( spep_0-3 + 332, 1, 12.4 );
setRotateKey( spep_0-3 + 334, 1, 12 );
setRotateKey( spep_0-3 + 336, 1, 11.6 );
setRotateKey( spep_0-3 + 338, 1, 11.3 );
setRotateKey( spep_0-3 + 340, 1, 11 );
setRotateKey( spep_0-3 + 342, 1, 10.8 );
setRotateKey( spep_0-3 + 344, 1, 10.6 );
setRotateKey( spep_0-3 + 346, 1, 10.4 );
setRotateKey( spep_0-3 + 348, 1, 10.3 );
setRotateKey( spep_0-3 + 350, 1, 10.2 );
setRotateKey( spep_0-3 + 353, 1, 10.2 );

setRotateKey( spep_0-3 + 354, 1, -40.5 );
setRotateKey( spep_0-3 + 362, 1, -40.5 );

setRotateKey( spep_0-3 + 374, 1, -24.1 );
setRotateKey( spep_0-3 + 396, 1, -24.1 );
setRotateKey( spep_0-3 + 397, 1, -24.1 );
setRotateKey( spep_0-3 + 398, 1, -180 );
setRotateKey( spep_0-3 + 448, 1, -180 );

--文字エントリー
ctga = entryEffectLife( spep_0 -3 + 264,  10005, 30, 0x100, -1, 0, -43.5, 292 );--ガッ

setEffMoveKey( spep_0 -3 + 264, ctga, -43.5, 292 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctga, -33.6, 302.9 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctga, -34.4, 313.9 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctga, -30.8, 321.7 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctga, -22.3, 324.1 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctga, -29.3, 326 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctga, -21.4, 326.1 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctga, -28.6, 324.3 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctga, -21.8, 330.3 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctga, -28.6, 327.2 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctga, -21.2, 328.4 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctga, -25.7, 332.3 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctga, -27.1, 329.8 , 0 );
setEffMoveKey( spep_0 -3 + 290, ctga, -17.3, 334.4 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctga, -23.7, 338.5 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctga, -22.3, 341.5 , 0 );

setEffScaleKey( spep_0 -3 + 264, ctga, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 266, ctga, 1.63, 1.63 );
setEffScaleKey( spep_0 -3 + 268, ctga, 1.97, 1.97 );
setEffScaleKey( spep_0 -3 + 270, ctga, 2.31, 2.31 );
setEffScaleKey( spep_0 -3 + 272, ctga, 2.32, 2.32 );
setEffScaleKey( spep_0 -3 + 274, ctga, 2.33, 2.33 );
setEffScaleKey( spep_0 -3 + 276, ctga, 2.34, 2.34 );
setEffScaleKey( spep_0 -3 + 278, ctga, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 280, ctga, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 282, ctga, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 284, ctga, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 286, ctga, 2.38, 2.38 );
setEffScaleKey( spep_0 -3 + 288, ctga, 2.39, 2.39 );
setEffScaleKey( spep_0 -3 + 290, ctga, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 292, ctga, 2.45, 2.45 );
setEffScaleKey( spep_0 -3 + 294, ctga, 2.48, 2.48 );

setEffRotateKey( spep_0 -3 + 264, ctga, 22 );
setEffRotateKey( spep_0 -3 + 294, ctga, 22 );

setEffAlphaKey( spep_0 -3 + 264, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 288, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 290, ctga, 170 );
setEffAlphaKey( spep_0 -3 + 292, ctga, 85 );
setEffAlphaKey( spep_0 -3 + 294, ctga, 0 );

--文字エントリー
ctsyun = entryEffectLife( spep_0 -3 + 318,  10011, 18, 0x100, -1, 0, 111.2, 271 );--シュンッ

setEffMoveKey( spep_0 -3 + 318, ctsyun, 111.2, 271 , 0 );
setEffMoveKey( spep_0 -3 + 320, ctsyun, 114.2, 281.9 , 0 );
setEffMoveKey( spep_0 -3 + 322, ctsyun, 115.2, 285.6 , 0 );
setEffMoveKey( spep_0 -3 + 324, ctsyun, 115.4, 286.5 , 0 );
setEffMoveKey( spep_0 -3 + 326, ctsyun, 115.7, 287.3 , 0 );
setEffMoveKey( spep_0 -3 + 328, ctsyun, 115.9, 288.2 , 0 );
setEffMoveKey( spep_0 -3 + 330, ctsyun, 116.2, 289.1 , 0 );
setEffMoveKey( spep_0 -3 + 332, ctsyun, 117.5, 293.9 , 0 );
setEffMoveKey( spep_0 -3 + 334, ctsyun, 118.8, 298.7 , 0 );
setEffMoveKey( spep_0 -3 + 336, ctsyun, 120.1, 303.5 , 0 );

setEffScaleKey( spep_0 -3 + 318, ctsyun, 0.96, 0.96 );
setEffScaleKey( spep_0 -3 + 320, ctsyun, 1.08, 1.08 );
setEffScaleKey( spep_0 -3 + 322, ctsyun, 1.12, 1.12 );
setEffScaleKey( spep_0 -3 + 324, ctsyun, 1.13, 1.13 );
setEffScaleKey( spep_0 -3 + 326, ctsyun, 1.14, 1.14 );
setEffScaleKey( spep_0 -3 + 328, ctsyun, 1.15, 1.15 );
setEffScaleKey( spep_0 -3 + 330, ctsyun, 1.16, 1.16 );
setEffScaleKey( spep_0 -3 + 332, ctsyun, 1.21, 1.21 );
setEffScaleKey( spep_0 -3 + 334, ctsyun, 1.27, 1.27 );
setEffScaleKey( spep_0 -3 + 336, ctsyun, 1.32, 1.32 );

setEffRotateKey( spep_0 -3 + 318, ctsyun, 16.8 );
setEffRotateKey( spep_0 -3 + 336, ctsyun, 16.8 );

setEffAlphaKey( spep_0 -3 + 318, ctsyun, 142 );
setEffAlphaKey( spep_0 -3 + 320, ctsyun, 227 );
setEffAlphaKey( spep_0 -3 + 322, ctsyun, 255 );
setEffAlphaKey( spep_0 -3 + 330, ctsyun, 255 );
setEffAlphaKey( spep_0 -3 + 332, ctsyun, 170 );
setEffAlphaKey( spep_0 -3 + 334, ctsyun, 85 );
setEffAlphaKey( spep_0 -3 + 336, ctsyun, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 358,  10020, 14, 0x100, -1, 0, -106.3, 268.7 );--バキッ

setEffMoveKey( spep_0-3 + 358, ctbaki, -106.3, 268.7 , 0 );
setEffMoveKey( spep_0-3 + 360, ctbaki, -103.6, 276.7 , 0 );
setEffMoveKey( spep_0-3 + 362, ctbaki, -115.1, 281.5 , 0 );
setEffMoveKey( spep_0-3 + 364, ctbaki, -107.1, 279.8 , 0 );
setEffMoveKey( spep_0-3 + 366, ctbaki, -105.8, 274.3 , 0 );
setEffMoveKey( spep_0-3 + 368, ctbaki, -105.5, 281.2 , 0 );
setEffMoveKey( spep_0-3 + 370, ctbaki, -103.5, 275.1 , 0 );
setEffMoveKey( spep_0-3 + 372, ctbaki, -108.8, 274.7 , 0 );

setEffScaleKey( spep_0-3 + 358, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_0-3 + 360, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_0-3 + 362, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_0-3 + 364, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_0-3 + 366, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_0-3 + 368, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_0-3 + 370, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_0-3 + 372, ctbaki, 1.83, 1.83 );

setEffRotateKey( spep_0-3 + 358, ctbaki, -23.2 );
setEffRotateKey( spep_0-3 + 372, ctbaki, -23.2 );

setEffRotateKey( spep_0-3 + 358, ctbaki, -23.2 );
setEffRotateKey( spep_0-3 + 372, ctbaki, -23.2 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 490, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 490, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +502, 190006, 72, 0x100, -1, 0, -70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +502,  ctgogo,  -70,  510);
setEffMoveKey(  spep_0 +574,  ctgogo,  -70,  510);

setEffAlphaKey( spep_0 +502, ctgogo, 0 );
setEffAlphaKey( spep_0 + 503, ctgogo, 255 );
setEffAlphaKey( spep_0 + 504, ctgogo, 255 );
setEffAlphaKey( spep_0 + 566, ctgogo, 255 );
setEffAlphaKey( spep_0 + 568, ctgogo, 255 );
setEffAlphaKey( spep_0 + 570, ctgogo, 191 );
setEffAlphaKey( spep_0 + 572, ctgogo, 128 );
setEffAlphaKey( spep_0 + 574, ctgogo, 64 );

setEffRotateKey(  spep_0 +502,  ctgogo,  0);
setEffRotateKey(  spep_0 +574,  ctgogo,  0);

setEffScaleKey(  spep_0 +502,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +564,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +574,  ctgogo, 1.07, 1.07 );
]]--
--白フェード
entryFade( spep_0 + 578, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_0 + 86, 1019 );  --クウラ回る
--playSe( spep_0 + 110, 1019 );  --クウラ回る
playSe( spep_0 + 86 + 16, 8 );  --クウラ回る
--playSe( spep_0 + 184, 8 );  --さらに回る(顔アップ)
playSe( spep_0 + 184 -10 -8, 1072 );  --さらに回る(顔アップ)

playSe( spep_0 -3 + 264, 1180 );  --ガッ
setSeVolume( spep_0 -3 + 264, 1180, 110 );

playSe( spep_0 + 292, 4 );  --瞬間移動
playSe( spep_0 -3 + 318, 1109 );  --瞬間移動
playSe( spep_0 -3 + 358, 1120 );  --バキッ

playSe( spep_0 + 382, 1023 );  --岩に当たる
playSe( spep_0 + 382, 1002 );  --岩に当たる

playSe( spep_0 + 396, 1023 );  --岩に当たる
playSe( spep_0 + 396, 1011 );  --岩に当たる

SE1 = playSe( spep_0 + 400, 1044 );  --地面に落ちる
setSeVolume( spep_0 + 400, 1044, 80 );
stopSe( spep_0 + 450, SE1, 10 );

playSe( spep_0 + 460, 1167 );  --迫る
setSeVolume( spep_0 + 460, 1167, 45 );
setSeVolume( spep_0 + 470, 1167, 62 );
setSeVolume( spep_0 + 480, 1167, 88 );

playSe( spep_0 + 490 + 16, 1018 );  --ごごご
SE1x = playSe( spep_0 + 506, 1044 );  --地鳴り
setSeVolume( spep_0 + 506, 1044, 70 );
stopSe( spep_0 + 586, SE1x, 10 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 586;

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

--白フェード
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
Ngemuva_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, Ngemuva_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 608, Ngemuva_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, Ngemuva_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 608, Ngemuva_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, Ngemuva_f, 0 );
setEffRotateKey( spep_2 + 608, Ngemuva_f, 0 );
setEffAlphaKey( spep_2 + 0, Ngemuva_f, 255 );
setEffAlphaKey( spep_2 + 608, Ngemuva_f, 255 );

-- ** エフェクト等 ** --
Ngemuva_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, Ngemuva_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 540, Ngemuva_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, Ngemuva_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 540, Ngemuva_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, Ngemuva_b, 0 );
setEffRotateKey( spep_2 + 540, Ngemuva_b, 0 );
setEffAlphaKey( spep_2 + 0, Ngemuva_b, 255 );
setEffAlphaKey( spep_2 + 540, Ngemuva_b, 255 );

--文字エントリー
ctzun1 = entryEffectLife( spep_2-3 + 10,  10016, 26, 0x100, -1, 0, -157.9, 213.3 );--ズンッ

setEffMoveKey( spep_2-3 + 10, ctzun1, -157.9, 213.3 , 0 );
setEffMoveKey( spep_2-3 + 12, ctzun1, -162.2, 220.3 , 0 );
setEffMoveKey( spep_2-3 + 14, ctzun1, -164.7, 224.4 , 0 );
setEffMoveKey( spep_2-3 + 16, ctzun1, -165.6, 225.8 , 0 );
setEffMoveKey( spep_2-3 + 18, ctzun1, -166.2, 226.8 , 0 );
setEffMoveKey( spep_2-3 + 20, ctzun1, -166.7, 227.7 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzun1, -167.3, 228.6 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzun1, -167.9, 229.6 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzun1, -168.4, 230.5 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzun1, -169, 231.5 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzun1, -169.6, 232.4 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzun1, -170.7, 234.3 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzun1, -171.8, 236.2 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzun1, -172.9, 238.1 , 0 );

setEffScaleKey( spep_2-3 + 10, ctzun1, 1.97, 1.97 );
setEffScaleKey( spep_2-3 + 12, ctzun1, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 14, ctzun1, 2.2, 2.2 );
setEffScaleKey( spep_2-3 + 16, ctzun1, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 18, ctzun1, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 20, ctzun1, 2.27, 2.27 );
setEffScaleKey( spep_2-3 + 22, ctzun1, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 24, ctzun1, 2.31, 2.31 );
setEffScaleKey( spep_2-3 + 26, ctzun1, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 28, ctzun1, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 30, ctzun1, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 32, ctzun1, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 34, ctzun1, 2.45, 2.45 );
setEffScaleKey( spep_2-3 + 36, ctzun1, 2.49, 2.49 );

setEffRotateKey( spep_2-3 + 10, ctzun1, -19 );
setEffRotateKey( spep_2-3 + 36, ctzun1, -19 )

setEffAlphaKey( spep_2-3 + 10, ctzun1, 255 );
setEffAlphaKey( spep_2-3 + 30, ctzun1, 255 );
setEffAlphaKey( spep_2-3 + 32, ctzun1, 170 );
setEffAlphaKey( spep_2-3 + 34, ctzun1, 85 );
setEffAlphaKey( spep_2-3 + 36, ctzun1, 0 );

--文字エントリー
ctzun2 = entryEffectLife( spep_2-3 + 258,  10016, 26, 0x100, -1, 0, 134.6, 240.7 );--ズンッ

setEffMoveKey( spep_2-3 + 258, ctzun2, 134.6, 240.7 , 0 );
setEffMoveKey( spep_2-3 + 260, ctzun2, 135.7, 247.8 , 0 );
setEffMoveKey( spep_2-3 + 262, ctzun2, 136.3, 252 , 0 );
setEffMoveKey( spep_2-3 + 264, ctzun2, 136.6, 253.4 , 0 );
setEffMoveKey( spep_2-3 + 266, ctzun2, 136.7, 254.2 , 0 );
setEffMoveKey( spep_2-3 + 268, ctzun2, 136.8, 255.1 , 0 );
setEffMoveKey( spep_2-3 + 270, ctzun2, 136.9, 255.9 , 0 );
setEffMoveKey( spep_2-3 + 272, ctzun2, 137.1, 256.8 , 0 );
setEffMoveKey( spep_2-3 + 274, ctzun2, 137.2, 257.6 , 0 );
setEffMoveKey( spep_2-3 + 276, ctzun2, 137.3, 258.5 , 0 );
setEffMoveKey( spep_2-3 + 278, ctzun2, 137.4, 259.3 , 0 );
setEffMoveKey( spep_2-3 + 280, ctzun2, 137.8, 261.3 , 0 );
setEffMoveKey( spep_2-3 + 282, ctzun2, 138.1, 263.2 , 0 );
setEffMoveKey( spep_2-3 + 284, ctzun2, 138.5, 265.2 , 0 );

setEffScaleKey( spep_2-3 + 258, ctzun2, 1.65, 1.65 );
setEffScaleKey( spep_2-3 + 260, ctzun2, 1.78, 1.78 );
setEffScaleKey( spep_2-3 + 262, ctzun2, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 264, ctzun2, 1.88, 1.88 );
setEffScaleKey( spep_2-3 + 266, ctzun2, 1.9, 1.9 );
setEffScaleKey( spep_2-3 + 268, ctzun2, 1.91, 1.91 );
setEffScaleKey( spep_2-3 + 270, ctzun2, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 272, ctzun2, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 274, ctzun2, 1.96, 1.96 );
setEffScaleKey( spep_2-3 + 276, ctzun2, 1.97, 1.97 );
setEffScaleKey( spep_2-3 + 278, ctzun2, 1.99, 1.99 );
setEffScaleKey( spep_2-3 + 280, ctzun2, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 282, ctzun2, 2.06, 2.06 );
setEffScaleKey( spep_2-3 + 284, ctzun2, 2.1, 2.1 );

setEffRotateKey( spep_2-3 + 258, ctzun2, 21.2 );
setEffRotateKey( spep_2-3 + 284, ctzun2, 21.2 );

setEffAlphaKey( spep_2-3 + 258, ctzun2, 255 );
setEffAlphaKey( spep_2-3 + 278, ctzun2, 255 );
setEffAlphaKey( spep_2-3 + 280, ctzun2, 170 );
setEffAlphaKey( spep_2-3 + 282, ctzun2, 85 );
setEffAlphaKey( spep_2-3 + 284, ctzun2, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_2-3 + 124,  10021, 26, 0x100, -1, 0, -175.4, 305.5 );--バゴォッ

setEffMoveKey( spep_2-3 + 124, ctbago, -175.4, 305.5 , 0 );
setEffMoveKey( spep_2-3 + 126, ctbago, -176.4, 308.4 , 0 );
setEffMoveKey( spep_2-3 + 128, ctbago, -165, 329.8 , 0 );
setEffMoveKey( spep_2-3 + 130, ctbago, -168.5, 325.7 , 0 );
setEffMoveKey( spep_2-3 + 132, ctbago, -173.1, 318.2 , 0 );
setEffMoveKey( spep_2-3 + 134, ctbago, -163.1, 335 , 0 );
setEffMoveKey( spep_2-3 + 136, ctbago, -171.5, 325.9 , 0 );
setEffMoveKey( spep_2-3 + 138, ctbago, -158.5, 329 , 0 );
setEffMoveKey( spep_2-3 + 140, ctbago, -173.2, 332.4 , 0 );
setEffMoveKey( spep_2-3 + 142, ctbago, -158, 329.9 , 0 );
setEffMoveKey( spep_2-3 + 144, ctbago, -164.9, 335.2 , 0 );
setEffMoveKey( spep_2-3 + 146, ctbago, -169.4, 328.4 , 0 );
setEffMoveKey( spep_2-3 + 148, ctbago, -158.1, 347.7 , 0 );
setEffMoveKey( spep_2-3 + 150, ctbago, -157, 350.6 , 0 );

setEffScaleKey( spep_2-3 + 124, ctbago, 1.97, 1.97 );
setEffScaleKey( spep_2-3 + 126, ctbago, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 128, ctbago, 2.2, 2.2 );
setEffScaleKey( spep_2-3 + 130, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 132, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 134, ctbago, 2.27, 2.27 );
setEffScaleKey( spep_2-3 + 136, ctbago, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 138, ctbago, 2.31, 2.31 );
setEffScaleKey( spep_2-3 + 140, ctbago, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 142, ctbago, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 144, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 146, ctbago, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 148, ctbago, 2.45, 2.45 );
setEffScaleKey( spep_2-3 + 150, ctbago, 2.49, 2.49 );

setEffRotateKey( spep_2-3 + 124, ctbago, -20 );
setEffRotateKey( spep_2-3 + 150, ctbago, -20 );

setEffAlphaKey( spep_2-3 + 124, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 144, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 146, ctbago, 170 );
setEffAlphaKey( spep_2-3 + 148, ctbago, 85 );
setEffAlphaKey( spep_2-3 + 150, ctbago, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_2-3 + 222,  10017, 30, 0x100, -1, 0, -97.6, 374.6 );--ドガガガッ

setEffMoveKey( spep_2-3 + 222, ctdogagaga, -97.6, 374.6 , 0 );
setEffMoveKey( spep_2-3 + 224, ctdogagaga, -103.4, 377.1 , 0 );
setEffMoveKey( spep_2-3 + 226, ctdogagaga, -87, 378.9 , 0 );
setEffMoveKey( spep_2-3 + 228, ctdogagaga, -104.2, 374.3 , 0 );
setEffMoveKey( spep_2-3 + 230, ctdogagaga, -93.3, 368 , 0 );
setEffMoveKey( spep_2-3 + 232, ctdogagaga, -108.7, 375.1 , 0 );
setEffMoveKey( spep_2-3 + 234, ctdogagaga, -89.8, 364.7 , 0 );
setEffMoveKey( spep_2-3 + 236, ctdogagaga, -105.2, 376.1 , 0 );
setEffMoveKey( spep_2-3 + 238, ctdogagaga, -91.3, 374.1 , 0 );
setEffMoveKey( spep_2-3 + 240, ctdogagaga, -102.9, 379.6 , 0 );
setEffMoveKey( spep_2-3 + 242, ctdogagaga, -92.5, 369.8 , 0 );
setEffMoveKey( spep_2-3 + 244, ctdogagaga, -95.8, 381.4 , 0 );
setEffMoveKey( spep_2-3 + 246, ctdogagaga, -97.8, 367.7 , 0 );
setEffMoveKey( spep_2-3 + 248, ctdogagaga, -97.1, 382.4 , 0 );
setEffMoveKey( spep_2-3 + 252, ctdogagaga, -104.9, 365.5 , 0 );

setEffScaleKey( spep_2-3 + 222, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_2-3 + 252, ctdogagaga, 2.53, 2.53 );

setEffRotateKey( spep_2-3 + 222, ctdogagaga, 0 ); 
setEffRotateKey( spep_2-3 + 252, ctdogagaga, 0 ); 

setEffAlphaKey( spep_2-3 + 222, ctdogagaga, 255 );
setEffAlphaKey( spep_2-3 + 246, ctdogagaga, 255 );
setEffAlphaKey( spep_2-3 + 248, ctdogagaga, 170 );
setEffAlphaKey( spep_2-3 + 250, ctdogagaga, 85 );
setEffAlphaKey( spep_2-3 + 252, ctdogagaga, 0 );
--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 55, 1, 0 );
setDisp( spep_2-3 + 108, 1, 1 );
setDisp( spep_2-3 + 300, 1, 0 );

changeAnime( spep_2 + 0, 1, 6 );
changeAnime( spep_2-3 + 10, 1, 8 );
changeAnime( spep_2-3 + 166, 1, 7 );
changeAnime( spep_2-3 + 222, 1, 8 );
changeAnime( spep_2-3 + 258, 1, 107 );

setMoveKey( spep_2 + 0, 1, -28.8, -81.8 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -37.9, -80.3 , 0 );
setMoveKey( spep_2-3 + 4, 1, -44.4, -79.3 , 0 );
setMoveKey( spep_2-3 + 6, 1, -48.3, -78.7 , 0 );
setMoveKey( spep_2-3 + 9, 1, -49.6, -78.5 , 0 );

a1 = 10;
b1 = 10;
setMoveKey( spep_2-3 + 10, 1, -85.1 -b1, -52 -a1 , 0 );
setMoveKey( spep_2-3 + 12, 1, -118.3 -b1, -35.4 -a1 , 0 );
setMoveKey( spep_2-3 + 14, 1, -128.3 -b1, -34.9 -a1 , 0 );
setMoveKey( spep_2-3 + 16, 1, -141.6 -b1, -31 -a1 , 0 );
setMoveKey( spep_2-3 + 18, 1, -134.6 -b1, -20.6 -a1 , 0 );
setMoveKey( spep_2-3 + 20, 1, -160.7 -b1, -29.6 -a1 , 0 );
setMoveKey( spep_2-3 + 22, 1, -143.9 -b1, -25.4 -a1 , 0 );
setMoveKey( spep_2-3 + 24, 1, -174.2 -b1, -26.1 -a1 , 0 );
setMoveKey( spep_2-3 + 26, 1, -158.7 -b1, -27 -a1 , 0 );
setMoveKey( spep_2-3 + 28, 1, -172.5 -b1, -19.8 -a1 , 0 );
setMoveKey( spep_2-3 + 30, 1, -172.2 -b1, -24.1 -a1 , 0 );
setMoveKey( spep_2-3 + 32, 1, -174.8 -b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 34, 1, -176.9 -b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 36, 1, -178.7 -b1, -23.8 -a1 , 0 );
setMoveKey( spep_2-3 + 38, 1, -180.1 -b1, -23.8 -a1 , 0 );
setMoveKey( spep_2-3 + 40, 1, -181.3 -b1, -23.8 -a1 , 0 );
setMoveKey( spep_2-3 + 42, 1, -182.3 -b1, -23.8 -a1 , 0 );
setMoveKey( spep_2-3 + 44, 1, -183.1 -b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 46, 1, -183.8 -b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 48, 1, -184.4 -b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 50, 1, -184.9 -b1, -24 -a1 , 0 );
setMoveKey( spep_2-3 + 52, 1, -185.5 -b1, -24 -a1 , 0 );
setMoveKey( spep_2-3 + 53, 1, -185.5 -b1, -24 -a1 , 0 );
setMoveKey( spep_2-3 + 54, 1, -570.7 -b1, -17.8 -a1 , 0 );
setMoveKey( spep_2-3 + 55, 1, -570.7 -b1, -17.8 -a1 , 0 );
--[[
setMoveKey( spep_2-2 + 56, 1, -727.5, -17.4 , 0 );
setMoveKey( spep_2-2 + 58, 1, -876.8, -17.1 , 0 );
setMoveKey( spep_2-2 + 60, 1, -904, -13.8 , 0 );
setMoveKey( spep_2-2 + 62, 1, -754.6, -10.5 , 0 );
setMoveKey( spep_2-2 + 64, 1, -728.1, -6.9 , 0 );
setMoveKey( spep_2-2 + 66, 1, -758.1, -3.5 , 0 );
setMoveKey( spep_2-2 + 68, 1, -805.9, 0.1 , 0 );
setMoveKey( spep_2-2 + 70, 1, -861.6, 3.6 , 0 );
setMoveKey( spep_2-2 + 72, 1, -922, 7.2 , 0 );
setMoveKey( spep_2-2 + 74, 1, -985.3, 10.6 , 0 );
setMoveKey( spep_2-2 + 77, 1, -1050.9, 14.2 , 0 );
]]--

setMoveKey( spep_2-3 + 108, 1, 411.4, -153.8 , 0 );
setMoveKey( spep_2-3 + 109, 1, 411.4, -153.8 , 0 );
setMoveKey( spep_2-3 + 110, 1, 89.3, -14.8 , 0 );
setMoveKey( spep_2-3 + 111, 1, 89.3, -14.8 , 0 );
setMoveKey( spep_2-3 + 112, 1, -16.6, 38.1 , 0 );
setMoveKey( spep_2-3 + 113, 1, -16.6, 38.1 , 0 );
setMoveKey( spep_2-3 + 114, 1, -110.6, 71.3 , 0 );
setMoveKey( spep_2-3 + 115, 1, -110.6, 71.3 , 0 )
setMoveKey( spep_2-3 + 116, 1, -117.3, 73.4 , 0 );
setMoveKey( spep_2-3 + 117, 1, -117.3, 73.4 , 0 );
setMoveKey( spep_2-3 + 118, 1, -123.5, 75.4 , 0 );
setMoveKey( spep_2-3 + 119, 1, -123.5, 75.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, -129.2, 77.1 , 0 );
setMoveKey( spep_2-3 + 121, 1, -129.2, 77.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, -134.3, 78.7 , 0 );
setMoveKey( spep_2-3 + 123, 1, -134.3, 78.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, -182.3, 100.5 , 0 );
setMoveKey( spep_2-3 + 125, 1, -182.3, 100.5 , 0 );
setMoveKey( spep_2-3 + 126, 1, -154.9, 78.9 , 0 );
setMoveKey( spep_2-3 + 127, 1, -154.9, 78.9 , 0 );
setMoveKey( spep_2-3 + 128, 1, -157.5, 94.9 , 0 );
setMoveKey( spep_2-3 + 129, 1, -157.5, 94.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, -160.1, 81.2 , 0 );
setMoveKey( spep_2-3 + 131, 1, -160.1, 81.2 , 0 );
setMoveKey( spep_2-3 + 132, 1, -145.3, 91.1 , 0 );
setMoveKey( spep_2-3 + 133, 1, -145.3, 91.1 , 0 );
setMoveKey( spep_2-3 + 134, 1, -165.2, 81.7 , 0 );
setMoveKey( spep_2-3 + 135, 1, -165.2, 81.7 , 0 );
setMoveKey( spep_2-3 + 136, 1, -143.3, 85.6 , 0 );
setMoveKey( spep_2-3 + 137, 1, -143.3, 85.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, -169.1, 84.5 , 0 );
setMoveKey( spep_2-3 + 139, 1, -169.1, 84.5 , 0 );
setMoveKey( spep_2-3 + 140, 1, -149.4, 83.1 , 0 );
setMoveKey( spep_2-3 + 141, 1, -149.4, 83.1 , 0 );
setMoveKey( spep_2-3 + 142, 1, -157.6, 89.9 , 0 );
setMoveKey( spep_2-3 + 143, 1, -157.6, 89.9 , 0 );
setMoveKey( spep_2-3 + 144, 1, -153.6, 85.2 , 0 );
setMoveKey( spep_2-3 + 145, 1, -153.6, 85.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, -139.6, 89 , 0 );
setMoveKey( spep_2-3 + 147, 1, -139.6, 89 , 0 );
setMoveKey( spep_2-3 + 148, 1, -171.4, 88.1 , 0 );
setMoveKey( spep_2-3 + 149, 1, -171.4, 88.1 , 0 );
setMoveKey( spep_2-3 + 150, 1, -147.2, 93.1 , 0 );
setMoveKey( spep_2-3 + 151, 1, -147.2, 93.1 , 0 );
setMoveKey( spep_2-3 + 152, 1, -153, 79.6 , 0 );
setMoveKey( spep_2-3 + 153, 1, -153, 79.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, -151.5, 85.2 , 0 );
setMoveKey( spep_2-3 + 155, 1, -151.5, 85.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, -162.1, 80.1 , 0 );
setMoveKey( spep_2-3 + 157, 1, -162.1, 80.1 , 0 );
setMoveKey( spep_2-3 + 158, 1, -145.9, 93.1 , 0 );
setMoveKey( spep_2-3 + 159, 1, -145.9, 93.1 , 0 );
setMoveKey( spep_2-3 + 160, 1, -151.8, 79.6 , 0 );
setMoveKey( spep_2-3 + 161, 1, -151.8, 79.6 , 0 );
setMoveKey( spep_2-3 + 162, 1, -150.6, 85.2 , 0 );
setMoveKey( spep_2-3 + 165, 1, -150.6, 85.2 , 0 );

a=56;
c=170;

setMoveKey( spep_2-3 + 166, 1, -158.5+c, -57.9 +a , 0 );
setMoveKey( spep_2-3 + 167, 1, -158.5+c, -57.9 +a , 0 );
setMoveKey( spep_2-3 + 168, 1, -158.5+c, -60.8 +a , 0 );
setMoveKey( spep_2-3 + 169, 1, -158.5+c, -60.8 +a , 0 );
setMoveKey( spep_2-3 + 170, 1, -158.5+c, -63.7 +a , 0 );
setMoveKey( spep_2-3 + 171, 1, -158.5+c, -63.7 +a , 0 );
setMoveKey( spep_2-3 + 172, 1, -158.5+c, -66.6 +a , 0 );
setMoveKey( spep_2-3 + 173, 1, -158.5+c, -66.6 +a , 0 );
setMoveKey( spep_2-3 + 174, 1, -158.5+c, -69.5 +a , 0 );
setMoveKey( spep_2-3 + 175, 1, -158.5+c, -69.5 +a , 0 );
setMoveKey( spep_2-3 + 176, 1, -158.5+c, -72.4 +a , 0 );
setMoveKey( spep_2-3 + 177, 1, -158.5+c, -72.4 +a, 0 );
setMoveKey( spep_2-3 + 178, 1, -158.5+c, -75.3 +a, 0 );
setMoveKey( spep_2-3 + 179, 1, -158.5+c, -75.3 +a, 0 );
setMoveKey( spep_2-3 + 180, 1, -158.5+c, -78.2 +a, 0 );
setMoveKey( spep_2-3 + 181, 1, -158.5+c, -78.2 +a , 0 );
setMoveKey( spep_2-3 + 182, 1, -158.5+c, -81.1 +a , 0 );
setMoveKey( spep_2-3 + 183, 1, -158.5+c, -81.1 +a , 0 );
setMoveKey( spep_2-3 + 184, 1, -158.5+c, -84 +a , 0 );
setMoveKey( spep_2-3 + 185, 1, -158.5+c, -84 +a , 0 );
setMoveKey( spep_2-3 + 186, 1, -158.5+c, -86.9 +a , 0 );
setMoveKey( spep_2-3 + 187, 1, -158.5+c, -86.9 +a , 0 );
setMoveKey( spep_2-3 + 188, 1, -158.5+c, -89.9 +a , 0 );
setMoveKey( spep_2-3 + 189, 1, -158.5+c, -89.9 +a , 0 );
setMoveKey( spep_2-3 + 190, 1, -158.5+c, -89.9 +a , 0 );
setMoveKey( spep_2-3 + 191, 1, -158.5+c, -89.9 +a , 0 );
setMoveKey( spep_2-3 + 192, 1, -158.5+c, -90.1 +a , 0 );
setMoveKey( spep_2-3 + 193, 1, -158.5+c, -90.1 +a , 0 );
setMoveKey( spep_2-3 + 194, 1, -158.5+c, -90.6 +a, 0 );
setMoveKey( spep_2-3 + 195, 1, -158.5+c, -90.6 +a, 0 );
setMoveKey( spep_2-3 + 196, 1, -158.5+c, -91.4 +a, 0 );
setMoveKey( spep_2-3 + 197, 1, -158.5+c, -91.4 +a, 0 );
setMoveKey( spep_2-3 + 198, 1, -158.5+c, -92.9 +a, 0 );
setMoveKey( spep_2-3 + 199, 1, -158.5+c, -92.9 +a, 0 );
setMoveKey( spep_2-3 + 200, 1, -158.5+c, -95.6 +a, 0 );
setMoveKey( spep_2-3 + 201, 1, -158.5+c, -95.6 +a, 0 );
setMoveKey( spep_2-3 + 202, 1, -158.5+c, -102.1 +a, 0 );
setMoveKey( spep_2-3 + 203, 1, -158.5+c, -102.1 +a, 0 );
setMoveKey( spep_2-3 + 204, 1, -158.5+c, -132.3 +a, 0 );
setMoveKey( spep_2-3 + 205, 1, -158.5+c, -132.3 +a, 0 );
setMoveKey( spep_2-3 + 206, 1, -158.4+c, -137.7 +a, 0 );
setMoveKey( spep_2-3 + 207, 1, -158.4+c, -137.7 +a, 0 );
setMoveKey( spep_2-3 + 208, 1, -224.4+c, -123.8 +a, 0 );
setMoveKey( spep_2-3 + 209, 1, -224.4+c, -123.8 +a, 0 );
setMoveKey( spep_2-3 + 210, 1, -198.9+c, 93.1 +a, 0 );
setMoveKey( spep_2-3 + 211, 1, -198.9+c, 93.1 +a, 0 );
setMoveKey( spep_2-3 + 212, 1, -211.8+c, 174 +a, 0 );
setMoveKey( spep_2-3 + 213, 1, -211.8+c, 174 +a, 0 );
setMoveKey( spep_2-3 + 214, 1, -156+c, 213.4 +a, 0 );
setMoveKey( spep_2-3 + 215, 1, -156+c, 213.4 +a, 0 );
setMoveKey( spep_2-3 + 216, 1, -121.1+c, 401 +a, 0 );
setMoveKey( spep_2-3 + 217, 1, -121.1+c, 401 +a, 0 );
setMoveKey( spep_2-3 + 218, 1, -70.1+c, 581 +a, 0 );
setMoveKey( spep_2-3 + 219, 1, -70.1+c, 581 +a, 0 );
setMoveKey( spep_2-3 + 220, 1, -30.3+c, 803.7 +a, 0 );
setMoveKey( spep_2-3 + 221, 1, -30.3+c, 803.7 +a, 0 );

setMoveKey( spep_2-3 + 222, 1, -60.1, 100 , 0 );
setMoveKey( spep_2-3 + 224, 1, -60.1, 100 , 0 );
setMoveKey( spep_2-3 + 225, 1, -60.1, 100 , 0 );
setMoveKey( spep_2-3 + 226, 1, -63.4, 114.3 , 0 );
setMoveKey( spep_2-3 + 227, 1, -63.4, 114.3 , 0 );
setMoveKey( spep_2-3 + 228, 1, -37.4, 135 , 0 );
setMoveKey( spep_2-3 + 229, 1, -37.4, 135 , 0 );
setMoveKey( spep_2-3 + 230, 1, -40, 118 , 0 );
setMoveKey( spep_2-3 + 231, 1, -40, 118 , 0 );
setMoveKey( spep_2-3 + 232, 1, -35, 131 , 0 );
setMoveKey( spep_2-3 + 233, 1, -35, 131 , 0 );
setMoveKey( spep_2-3 + 234, 1, -26, 132 , 0 );
setMoveKey( spep_2-3 + 235, 1, -26, 132 , 0 );
setMoveKey( spep_2-3 + 236, 1, -23, 129 , 0 );
setMoveKey( spep_2-3 + 237, 1, -23, 129 , 0 );
setMoveKey( spep_2-3 + 238, 1, 9, 141.8 , 0 );
setMoveKey( spep_2-3 + 239, 1, 9, 141.8 , 0 );
setMoveKey( spep_2-3 + 240, 1, 22, 121.9 , 0 );
setMoveKey( spep_2-3 + 241, 1, 22, 121.9 , 0 );
setMoveKey( spep_2-3 + 242, 1, 42, 121 , 0 );
setMoveKey( spep_2-3 + 243, 1, 42, 121 , 0 );
setMoveKey( spep_2-3 + 244, 1, 55, 108.7 , 0 );
setMoveKey( spep_2-3 + 245, 1, 55, 108.7 , 0 );
setMoveKey( spep_2-3 + 246, 1, 60, 70.4 , 0 );
setMoveKey( spep_2-3 + 247, 1, 60, 70.4 , 0 );


setMoveKey( spep_2-3 + 248, 1, 118.1, 25.7 , 0 );
setMoveKey( spep_2-3 + 249, 1, 118.1, 25.7 , 0 );
setMoveKey( spep_2-3 + 250, 1, 120.1, 54.8 , 0 );
setMoveKey( spep_2-3 + 251, 1, 120.1, 54.8 , 0 );
setMoveKey( spep_2-3 + 252, 1, 144, 10 , 0 );
setMoveKey( spep_2-3 + 253, 1, 144, 10 , 0 );
setMoveKey( spep_2-3 + 254, 1, 126, -95.4 , 0 );
setMoveKey( spep_2-3 + 255, 1, 126, -95.4 , 0 );
setMoveKey( spep_2-3 + 256, 1, 88.4, -106.2 , 0 );
setMoveKey( spep_2-3 + 257, 1, 88.4, -106.2 , 0 );

setMoveKey( spep_2-3 + 258, 1, 47, -158.1 , 0 );
setMoveKey( spep_2-3 + 259, 1, 47, -158.1 , 0 );
setMoveKey( spep_2-3 + 260, 1, 47, -98.1 , 0 );
setMoveKey( spep_2-3 + 261, 1, 47, -98.1 , 0 );
setMoveKey( spep_2-3 + 262, 1, 47, -62.1 , 0 );
setMoveKey( spep_2-3 + 263, 1, 47, -62.1 , 0 );
setMoveKey( spep_2-3 + 264, 1, 47, -50.1 , 0 );
setMoveKey( spep_2-3 + 265, 1, 47, -50.1 , 0 );
setMoveKey( spep_2-3 + 266, 1, 47.1, -53.6 , 0 );
setMoveKey( spep_2-3 + 267, 1, 47.1, -53.6 , 0 );
setMoveKey( spep_2-3 + 268, 1, 47.1, -62.7 , 0 );
setMoveKey( spep_2-3 + 269, 1, 47.1, -62.7 , 0 );
setMoveKey( spep_2-3 + 270, 1, 47.1, -75.7 , 0 );
setMoveKey( spep_2-3 + 271, 1, 47.1, -75.7 , 0 );
setMoveKey( spep_2-3 + 272, 1, 47.1, -90.2 , 0 );
setMoveKey( spep_2-3 + 273, 1, 47.1, -90.2 , 0 );
setMoveKey( spep_2-3 + 274, 1, 47.1, -103.4 , 0 );
setMoveKey( spep_2-3 + 275, 1, 47.1, -103.4 , 0 );
setMoveKey( spep_2-3 + 276, 1, 47.1, -112.8 , 0 );
setMoveKey( spep_2-3 + 277, 1, 47.1, -112.8 , 0 );
setMoveKey( spep_2-3 + 278, 1, 47, -116.1 , 0 );
setMoveKey( spep_2-3 + 279, 1, 47, -116.1 , 0 );
setMoveKey( spep_2-3 + 280, 1, 47, -112.1 , 0 );
setMoveKey( spep_2-3 + 281, 1, 47, -112.1 , 0 );
setMoveKey( spep_2-3 + 282, 1, 47, -120.1 , 0 );
setMoveKey( spep_2-3 + 283, 1, 47, -120.1 , 0 );
setMoveKey( spep_2-3 + 284, 1, 47, -116.1 , 0 );
setMoveKey( spep_2-3 + 285, 1, 47, -116.1 , 0 );
setMoveKey( spep_2-3 + 286, 1, 47, -118.1 , 0 );
setMoveKey( spep_2-3 + 287, 1, 47, -118.1 , 0 );

g=250;

setMoveKey( spep_2-3 + 288, 1, 49.9, -110.1+g , 0 );
setMoveKey( spep_2-3 + 289, 1, 49.9, -110.1+g , 0 );
setMoveKey( spep_2-3 + 290, 1, 79.2, -260.5+g , 0 );
setMoveKey( spep_2-3 + 291, 1, 79.2, -260.5+g , 0 );
setMoveKey( spep_2-3 + 292, 1, 69, -283.6+g , 0 );
setMoveKey( spep_2-3 + 293, 1, 69, -283.6+g , 0 );
setMoveKey( spep_2-3 + 294, 1, 116.5, -391.9+g , 0 );
setMoveKey( spep_2-3 + 295, 1, 116.5, -391.9+g , 0 );
setMoveKey( spep_2-3 + 296, 1, 88.9, -385.8+g , 0 );
setMoveKey( spep_2-3 + 297, 1, 88.9, -385.8+g , 0 );
setMoveKey( spep_2-3 + 298, 1, 110.8, -402.3+g , 0 );
setMoveKey( spep_2-3 + 299, 1, 110.8, -402.3+g , 0 );
setMoveKey( spep_2-3 + 300, 1, 94.4, -420.9+g , 0 );

e=-0.1;

setScaleKey( spep_2 + 0, 1, e+1.59, 1.59+e );
setScaleKey( spep_2-3 + 9, 1, e+1.59, 1.59+e );
setScaleKey( spep_2-3 + 10, 1, e+2.02, 2.02+e );
setScaleKey( spep_2-3 + 12, 1, e+1.59, 1.59+e );
setScaleKey( spep_2-3 + 14, 1, e+1.83, 1.83+e );
setScaleKey( spep_2-3 + 16, 1, e+1.59, 1.59+e );
setScaleKey( spep_2-3 + 56, 1, e+1.59, 1.59+e );

setScaleKey( spep_2-3 + 108, 1, e+3.46, 3.46+e );
setScaleKey( spep_2-3 + 109, 1, e+3.46, 3.46+e );
setScaleKey( spep_2-3 + 110, 1, e+1.79, 1.79+e );
setScaleKey( spep_2-3 + 111, 1, e+1.79, 1.79+e );
setScaleKey( spep_2-3 + 112, 1, e+1.37, 1.37+e );
setScaleKey( spep_2-3 + 113, 1, e+1.37, 1.37+e );
setScaleKey( spep_2-3 + 114, 1, e+0.97, 0.97+e );
setScaleKey( spep_2-3 + 115, 1, e+0.97, 0.97+e );
setScaleKey( spep_2-3 + 116, 1, e+0.95, 0.95+e );
setScaleKey( spep_2-3 + 117, 1, e+0.95, 0.95+e );
setScaleKey( spep_2-3 + 118, 1, e+0.93, 0.93+e );
setScaleKey( spep_2-3 + 119, 1, e+0.93, 0.93+e );
setScaleKey( spep_2-3 + 120, 1, e+0.92, 0.92+e );
setScaleKey( spep_2-3 + 121, 1, e+0.92, 0.92+e );
setScaleKey( spep_2-3 + 122, 1, e+0.9, 0.9+e );
setScaleKey( spep_2-3 + 122, 1, e+0.9, 0.9+e );
setScaleKey( spep_2-3 + 123, 1, e+0.9, 0.9+e );
setScaleKey( spep_2-3 + 124, 1, e+1.13, 1.13+e );
setScaleKey( spep_2-3 + 125, 1, e+1.13, 1.13+e );
setScaleKey( spep_2-3 + 126, 1, e+0.88, 0.88+e );
setScaleKey( spep_2-3 + 127, 1, e+0.88, 0.88+e );
setScaleKey( spep_2-3 + 128, 1, e+1, 1+e );
setScaleKey( spep_2-3 + 129, 1, e+1, 1+e );
setScaleKey( spep_2-3 + 130, 1, e+0.86, 0.86+e );
setScaleKey( spep_2-3 + 131, 1, e+0.86, 0.86+e );
setScaleKey( spep_2-3 + 132, 1, e+0.85, 0.85+e );
setScaleKey( spep_2-3 + 133, 1, e+0.85, 0.85+e );
setScaleKey( spep_2-3 + 134, 1, e+0.85, 0.85+e );
setScaleKey( spep_2-3 + 135, 1, e+0.85, 0.85+e );
setScaleKey( spep_2-3 + 136, 1, e+0.84, 0.84+e );
setScaleKey( spep_2-3 + 141, 1, e+0.84, 0.84+e );
setScaleKey( spep_2-3 + 142, 1, e+0.82, 0.82+e );
setScaleKey( spep_2-3 + 143, 1, e+0.82, 0.82+e );
setScaleKey( spep_2-3 + 144, 1, e+0.81, 0.81+e );
setScaleKey( spep_2-3 + 145, 1, e+0.81, 0.81+e );
setScaleKey( spep_2-3 + 146, 1, e+0.8, 0.8+e );
setScaleKey( spep_2-3 + 147, 1, e+0.8, 0.8+e );
setScaleKey( spep_2-3 + 148, 1, e+0.8, 0.8+e );
setScaleKey( spep_2-3 + 149, 1, e+0.8, 0.8+e );
setScaleKey( spep_2-3 + 150, 1, e+0.79, 0.79+e );
setScaleKey( spep_2-3 + 155, 1, e+0.79, 0.79+e );
setScaleKey( spep_2-3 + 156, 1, e+0.78, 0.78+e );
setScaleKey( spep_2-3 + 162, 1, e+0.78, 0.78+e );
setScaleKey( spep_2-3 + 165, 1, e+0.78, 0.78+e );

setScaleKey( spep_2-3 + 166, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 207, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 208, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 209, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 210, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 211, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 212, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 213, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 214, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 215, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 216, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 220, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 221, 1, 1.64, 1.64 );

f=-0.02;

setScaleKey( spep_2-3 + 222, 1, f+1.46, 1.46 +f);
setScaleKey( spep_2-3 + 223, 1, f+1.46, 1.46 +f);
setScaleKey( spep_2-3 + 224, 1, f+1.41, 1.41 +f);
setScaleKey( spep_2-3 + 225, 1, f+1.41, 1.41 +f);
setScaleKey( spep_2-3 + 226, 1, f+1.36, 1.36 +f);
setScaleKey( spep_2-3 + 227, 1, f+1.36, 1.36 +f);
setScaleKey( spep_2-3 + 228, 1, f+1.32, 1.32 +f);
setScaleKey( spep_2-3 + 229, 1, f+1.32, 1.32 +f);
setScaleKey( spep_2-3 + 230, 1, f+1.27, 1.27 +f);
setScaleKey( spep_2-3 + 231, 1, f+1.27, 1.27 +f);
setScaleKey( spep_2-3 + 232, 1, f+1.24, 1.24 +f);
setScaleKey( spep_2-3 + 233, 1, f+1.24, 1.24 +f);
setScaleKey( spep_2-3 + 234, 1, f+1.2, 1.2 +f);
setScaleKey( spep_2-3 + 235, 1, f+1.2, 1.2 +f);
setScaleKey( spep_2-3 + 236, 1, f+1.17, 1.17 +f);
setScaleKey( spep_2-3 + 237, 1, f+1.17, 1.17 +f);
setScaleKey( spep_2-3 + 238, 1, f+1.14, 1.14 +f);
setScaleKey( spep_2-3 + 239, 1, f+1.14, 1.14 +f);
setScaleKey( spep_2-3 + 240, 1, f+1.1, 1.1 +f);
setScaleKey( spep_2-3 + 241, 1, f+1.1, 1.1 +f);
setScaleKey( spep_2-3 + 242, 1, f+1.08, 1.08 +f);
setScaleKey( spep_2-3 + 243, 1, f+1.08, 1.08 +f);
setScaleKey( spep_2-3 + 244, 1, f+1.06, 1.06 +f);
setScaleKey( spep_2-3 + 245, 1, f+1.06, 1.06 +f);
setScaleKey( spep_2-3 + 246, 1, f+1.06, 1.06 +f);
setScaleKey( spep_2-3 + 247, 1, f+1.06, 1.06 +f);
setScaleKey( spep_2-3 + 248, 1, f+1.07, 1.07 +f);
setScaleKey( spep_2-3 + 249, 1, f+1.07, 1.07 +f);
setScaleKey( spep_2-3 + 250, 1, f+1.01, 1.01 +f);
setScaleKey( spep_2-3 + 251, 1, f+1.01, 1.01 +f);
setScaleKey( spep_2-3 + 252, 1, f+1.01, 1.01 +f);
setScaleKey( spep_2-3 + 253, 1, f+1.01, 1.01 +f);
setScaleKey( spep_2-3 + 254, 1, f+1, 1 +f);
setScaleKey( spep_2-3 + 257, 1, f+1, 1 +f);

setScaleKey( spep_2-3 + 258, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 287, 1, 0.32, 0.32 );

setScaleKey( spep_2-3 + 288, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 289, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 290, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 291, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 292, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 293, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 294, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 295, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 296, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 300, 1, 1.38, 1.38 );

setRotateKey( spep_2 + 0, 1, 2 );
--setRotateKey( spep_2-3 + 2, 1, 1.1 );
setRotateKey( spep_2-3 + 4, 1, 0.5 );
setRotateKey( spep_2-3 + 6, 1, 0.1 );
setRotateKey( spep_2-3 + 9, 1, 0 );
setRotateKey( spep_2-3 + 10, 1, 4.5 );
setRotateKey( spep_2-3 + 12, 1, 6.4 );
setRotateKey( spep_2-3 + 14, 1, 7.1 );
setRotateKey( spep_2-3 + 16, 1, 7.5 );
setRotateKey( spep_2-3 + 18, 1, 7.9 );
setRotateKey( spep_2-3 + 20, 1, 8.2 );
setRotateKey( spep_2-3 + 22, 1, 8.4 );
setRotateKey( spep_2-3 + 24, 1, 8.6 );
setRotateKey( spep_2-3 + 26, 1, 8.7 );
setRotateKey( spep_2-3 + 28, 1, 8.8 );
setRotateKey( spep_2-3 + 30, 1, 8.9 );
setRotateKey( spep_2-3 + 32, 1, 9 );
setRotateKey( spep_2-3 + 34, 1, 9.1 );
setRotateKey( spep_2-3 + 36, 1, 9.2 );
setRotateKey( spep_2-3 + 38, 1, 9.2 );
setRotateKey( spep_2-3 + 40, 1, 9.3 );
setRotateKey( spep_2-3 + 46, 1, 9.3 );
setRotateKey( spep_2-3 + 48, 1, 9.4 );
setRotateKey( spep_2-3 + 56, 1, 9.4 );
--[[
setRotateKey( spep_2-3 + 58, 1, 9.3 );
setRotateKey( spep_2-3 + 66, 1, 9.3 );
setRotateKey( spep_2-3 + 68, 1, 9.4 );
setRotateKey( spep_2-3 + 77, 1, 9.4 );
]]

setRotateKey( spep_2-3 + 108, 1, 4.3 );
setRotateKey( spep_2-3 + 109, 1, 4.3 );
setRotateKey( spep_2-3 + 110, 1, 11 );
setRotateKey( spep_2-3 + 111, 1, 11 );
setRotateKey( spep_2-3 + 112, 1, 14.1 );
setRotateKey( spep_2-3 + 113, 1, 14.1 );
setRotateKey( spep_2-3 + 114, 1, 15.2 );
setRotateKey( spep_2-3 + 141, 1, 15.2 );
setRotateKey( spep_2-3 + 142, 1, 15.7 );
setRotateKey( spep_2-3 + 143, 1, 15.7 );
setRotateKey( spep_2-3 + 144, 1, 16 );
setRotateKey( spep_2-3 + 145, 1, 16 );
setRotateKey( spep_2-3 + 146, 1, 16.2 );
setRotateKey( spep_2-3 + 147, 1, 16.2 );
setRotateKey( spep_2-3 + 148, 1, 16.3 );
setRotateKey( spep_2-3 + 149, 1, 16.3 );
setRotateKey( spep_2-3 + 150, 1, 16.4 );
setRotateKey( spep_2-3 + 151, 1, 16.4 );
setRotateKey( spep_2-3 + 152, 1, 16.5 );
setRotateKey( spep_2-3 + 153, 1, 16.5 );
setRotateKey( spep_2-3 + 154, 1, 16.6 );
setRotateKey( spep_2-3 + 155, 1, 16.6 );
setRotateKey( spep_2-3 + 156, 1, 16.7 );
setRotateKey( spep_2-3 + 157, 1, 16.7 );
setRotateKey( spep_2-3 + 158, 1, 16.8 );
setRotateKey( spep_2-3 + 159, 1, 16.8 );
setRotateKey( spep_2-3 + 160, 1, 16.9 );
setRotateKey( spep_2-3 + 161, 1, 16.9 );
setRotateKey( spep_2-3 + 162, 1, 16.9 );
setRotateKey( spep_2-3 + 165, 1, 16.9 );

b=-30;

setRotateKey( spep_2-3 + 166, 1, 139.5 +b);
setRotateKey( spep_2-3 + 167, 1, 139.5 +b);
setRotateKey( spep_2-3 + 168, 1, 140 +b);
setRotateKey( spep_2-3 + 169, 1, 140 +b);
setRotateKey( spep_2-3 + 170, 1, 140.6 +b);
setRotateKey( spep_2-3 + 171, 1, 140.6 +b);
setRotateKey( spep_2-3 + 172, 1, 141.1 +b);
setRotateKey( spep_2-3 + 173, 1, 141.1 +b);
setRotateKey( spep_2-3 + 174, 1, 141.6 +b);
setRotateKey( spep_2-3 + 175, 1, 141.6 +b);
setRotateKey( spep_2-3 + 176, 1, 142.2 +b);
setRotateKey( spep_2-3 + 177, 1, 142.2 +b);
setRotateKey( spep_2-3 + 178, 1, 142.7 +b);
setRotateKey( spep_2-3 + 179, 1, 142.7 +b);
setRotateKey( spep_2-3 + 180, 1, 143.3 +b);
setRotateKey( spep_2-3 + 181, 1, 143.3 +b);
setRotateKey( spep_2-3 + 182, 1, 143.8 +b);
setRotateKey( spep_2-3 + 183, 1, 143.8 +b);
setRotateKey( spep_2-3 + 184, 1, 144.3 +b);
setRotateKey( spep_2-3 + 185, 1, 144.3 +b);
setRotateKey( spep_2-3 + 186, 1, 144.9 +b);
setRotateKey( spep_2-3 + 187, 1, 144.9 +b);
setRotateKey( spep_2-3 + 188, 1, 145.4 +b);
setRotateKey( spep_2-3 + 189, 1, 145.4 +b);
setRotateKey( spep_2-3 + 190, 1, 145.4 +b);
setRotateKey( spep_2-3 + 191, 1, 145.4 +b);
setRotateKey( spep_2-3 + 192, 1, 145.5 +b);
setRotateKey( spep_2-3 + 193, 1, 145.5 +b);
setRotateKey( spep_2-3 + 194, 1, 145.5 +b);
setRotateKey( spep_2-3 + 195, 1, 145.5 +b);
setRotateKey( spep_2-3 + 196, 1, 145.6 +b);
setRotateKey( spep_2-3 + 197, 1, 145.6 +b);
setRotateKey( spep_2-3 + 198, 1, 145.7 +b);
setRotateKey( spep_2-3 + 199, 1, 145.7 +b);
setRotateKey( spep_2-3 + 200, 1, 146 +b);
setRotateKey( spep_2-3 + 201, 1, 146 +b);
setRotateKey( spep_2-3 + 202, 1, 146.6 +b);
setRotateKey( spep_2-3 + 203, 1, 146.6 +b);
setRotateKey( spep_2-3 + 204, 1, 149.5 +b);
setRotateKey( spep_2-3 + 205, 1, 149.5 +b);
setRotateKey( spep_2-3 + 206, 1, 150 +b);
setRotateKey( spep_2-3 + 207, 1, 150 +b);
setRotateKey( spep_2-3 + 208, 1, 149.7 +b);
setRotateKey( spep_2-3 + 209, 1, 149.7 +b);
setRotateKey( spep_2-3 + 210, 1, 148.7 +b);
setRotateKey( spep_2-3 + 211, 1, 148.7 +b);
setRotateKey( spep_2-3 + 212, 1, 146.9 +b);
setRotateKey( spep_2-3 + 213, 1, 146.9 +b);
setRotateKey( spep_2-3 + 214, 1, 144.5 +b);
setRotateKey( spep_2-3 + 215, 1, 144.5 +b);
setRotateKey( spep_2-3 + 216, 1, 141.4 +b);
setRotateKey( spep_2-3 + 217, 1, 141.4 +b);
setRotateKey( spep_2-3 + 218, 1, 137.5 +b);
setRotateKey( spep_2-3 + 219, 1, 137.5 +b);
setRotateKey( spep_2-3 + 220, 1, 133 +b);
setRotateKey( spep_2-3 + 221, 1, 133 +b);

setRotateKey( spep_2-3 + 222, 1, 52 );
setRotateKey( spep_2-3 + 223, 1, 52 );
setRotateKey( spep_2-3 + 224, 1, 54.5 );
setRotateKey( spep_2-3 + 225, 1, 54.5 );
setRotateKey( spep_2-3 + 226, 1, 57.3 );
setRotateKey( spep_2-3 + 227, 1, 57.3 );
setRotateKey( spep_2-3 + 228, 1, 60.5 );
setRotateKey( spep_2-3 + 229, 1, 60.5 );
setRotateKey( spep_2-3 + 230, 1, 64 );
setRotateKey( spep_2-3 + 231, 1, 64 );
setRotateKey( spep_2-3 + 232, 1, 68.1 );
setRotateKey( spep_2-3 + 233, 1, 68.1 );
setRotateKey( spep_2-3 + 234, 1, 72.8 );
setRotateKey( spep_2-3 + 235, 1, 72.8 );
setRotateKey( spep_2-3 + 236, 1, 78.1 );
setRotateKey( spep_2-3 + 237, 1, 78.1 );
setRotateKey( spep_2-3 + 238, 1, 84.3 );
setRotateKey( spep_2-3 + 239, 1, 84.3 );
setRotateKey( spep_2-3 + 240, 1, 91.2 );
setRotateKey( spep_2-3 + 241, 1, 91.2 );
setRotateKey( spep_2-3 + 242, 1, 99.1 );
setRotateKey( spep_2-3 + 243, 1, 99.1 );
setRotateKey( spep_2-3 + 244, 1, 108 );
setRotateKey( spep_2-3 + 245, 1, 108 );
setRotateKey( spep_2-3 + 246, 1, 118 );
setRotateKey( spep_2-3 + 247, 1, 118 );
setRotateKey( spep_2-3 + 248, 1, 129 );
setRotateKey( spep_2-3 + 249, 1, 129 );
setRotateKey( spep_2-3 + 250, 1, 141.2 );
setRotateKey( spep_2-3 + 251, 1, 141.2 );
setRotateKey( spep_2-3 + 252, 1, 155.8 );
setRotateKey( spep_2-3 + 253, 1, 155.8 );
setRotateKey( spep_2-3 + 254, 1, 165.5 );
setRotateKey( spep_2-3 + 255, 1, 165.5 );
setRotateKey( spep_2-3 + 256, 1, 170.2 );
setRotateKey( spep_2-3 + 257, 1, 170.2 );

setRotateKey( spep_2-3 + 258, 1, 7 );
setRotateKey( spep_2-3 + 287, 1, 7 );

setRotateKey( spep_2-3 + 288, 1, -78.6 );
setRotateKey( spep_2-3 + 289, 1, -78.6 );
setRotateKey( spep_2-3 + 290, 1, -69.2 );
setRotateKey( spep_2-3 + 291, 1, -69.2 );
setRotateKey( spep_2-3 + 292, 1, -61.4 );
setRotateKey( spep_2-3 + 293, 1, -61.4 );
setRotateKey( spep_2-3 + 294, 1, -55.4 );
setRotateKey( spep_2-3 + 295, 1, -55.4 );
setRotateKey( spep_2-3 + 296, 1, -51.1 );
setRotateKey( spep_2-3 + 297, 1, -51.1 );
setRotateKey( spep_2-3 + 298, 1, -48.6 );
setRotateKey( spep_2-3 + 299, 1, -48.6 );
setRotateKey( spep_2-3 + 300, 1, -47.7 );

-- ** 音 ** --
playSe( spep_2 + 11, 1014 );  --ズンッ
setSeVolume( spep_2 + 11, 1014, 110 );

playSe( spep_2 + 54, 19 );  --バウッ
playSe( spep_2 + 54, 1002 );  --バウッ
setSeVolume( spep_2 + 54, 19, 86 );
setSeVolume( spep_2 + 54, 1002, 78 );
SE2x = playSe( spep_2 + 56, 1044 );  --地割れ
setSeVolume( spep_2 + 56, 1044, 70 );
stopSe( spep_2 + 120, SE2x, 10 );

playSe( spep_2 + 124, 1011 );  --バゴォ

playSe( spep_2 + 210, 1168 );  --岩を割る

--playSe( spep_2 + 266, 1153 );  --押し込む
playSe( spep_2 + 266, 1002 );  --押し込む
playSe( spep_2 + 266, 1068 );  --押し込む

playSe( spep_2 + 300, 1023 );  --更に押し込む
SE2 = playSe( spep_2 + 314, 1044 );  --地割れ

SE3 = playSe( spep_2 + 420, 1165 );  --地面割れて滝になる
stopSe( spep_2 + 484, SE2, 0 );
stopSe( spep_2 + 484, SE3, 0 );

-- ** ダメージ表示 ** --
dealDamage(spep_2 +350 );
endPhase( spep_2 + 484 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
Ngaphambi_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, Ngaphambi_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 586, Ngaphambi_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, Ngaphambi_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 586, Ngaphambi_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, Ngaphambi_f, 0 );
setEffRotateKey( spep_0 + 586, Ngaphambi_f, 0 );
setEffAlphaKey( spep_0 + 0, Ngaphambi_f, 255 );
setEffAlphaKey( spep_0 + 586, Ngaphambi_f, 255 );
setEffAlphaKey( spep_0 + 587, Ngaphambi_f, 0 );
setEffAlphaKey( spep_0 + 588, Ngaphambi_f, 0 );

-- ** エフェクト等 ** --
Ngaphambi_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, Ngaphambi_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 586, Ngaphambi_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, Ngaphambi_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 586, Ngaphambi_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, Ngaphambi_b, 0 );
setEffRotateKey( spep_0 + 586, Ngaphambi_b, 0 );
setEffAlphaKey( spep_0 + 0, Ngaphambi_b, 255 );
setEffAlphaKey( spep_0 + 586, Ngaphambi_b, 255 );
setEffAlphaKey( spep_0 + 587, Ngaphambi_b, 0 );
setEffAlphaKey( spep_0 + 588, Ngaphambi_b, 0 );


--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 79, 1, 0 );
setDisp( spep_0 -3 + 254, 1, 1 );
setDisp( spep_0 -3 + 362, 1, 0 );
setDisp( spep_0 -3 + 374, 1, 1 );
setDisp( spep_0 -3 + 448, 1, 0 );

changeAnime( spep_0  + 0, 1, 117 );
changeAnime( spep_0  + 58, 1, 103 );
changeAnime( spep_0 -3 + 254, 1, 116 );
changeAnime( spep_0 -3 + 264, 1, 107 );
changeAnime( spep_0 -3 + 266, 1, 106 );
changeAnime( spep_0 -3 + 354, 1, 108 );
changeAnime( spep_0 -3 + 374, 1, 107 );
changeAnime( spep_0 -3 + 398, 1, 7 );

setMoveKey( spep_0  + 0, 1, 260, 0 , 0 );
setMoveKey( spep_0  + 1, 1, 260, 0 , 0 );
setMoveKey( spep_0  + 2, 1, 260, 0 , 0 );
setMoveKey( spep_0  + 3, 1, 260, 0 , 0 );
setMoveKey( spep_0  + 4, 1, 260, 0 , 0 );
setMoveKey( spep_0  + 5, 1, 260, 0 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 260, 0 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 259.9, 0 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 259.6, -0.1 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 259.2, 0 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 258.3, 0 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 257, -0.1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 255.4, 0 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 253.8, 0 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 251.2, 0 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 248.3, 0 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 245.1, 0 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 240.8, -0.1 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 236, 0 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 229.9, 0 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 223, 0 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 214.3, 0 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 203.5, 0 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 190, 0 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 173.2, 0 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 150.2, 0 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 114.8, -0.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 81.8, -2.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 58.5, -3.6 , 0 );
setMoveKey( spep_0 -3 + 57, 1, 42.2, -5.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, -4, -25.2 , 0 );
setMoveKey( spep_0 -3 + 60, 1, -42.4, -31 , 0 );
setMoveKey( spep_0 -3 + 62, 1, -80.6, -30.8 , 0 );
setMoveKey( spep_0 -3 + 64, 1, -122.3, -31 , 0 );

setScaleKey( spep_0  + 0, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 16, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 18, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 20, 1, 0.14, 0.14 );
setScaleKey( spep_0 -3 + 22, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 24, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 26, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 28, 1, 0.17, 0.17 );
setScaleKey( spep_0 -3 + 30, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 32, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 34, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 36, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 38, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 40, 1, 0.3, 0.3 );
setScaleKey( spep_0 -3 + 42, 1, 0.33, 0.33 );
setScaleKey( spep_0 -3 + 44, 1, 0.38, 0.38 );
setScaleKey( spep_0 -3 + 46, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 48, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 50, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 52, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 54, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 57, 1, 0.77, 0.77 );
setScaleKey( spep_0 -3 + 58, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 60, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 62, 1, 0.79, 0.79 );

setRotateKey( spep_0  + 0, 1, 0 );
setRotateKey( spep_0 -3 + 48, 1, 0 );
setRotateKey( spep_0 -3 + 50, 1, -2.4 );
setRotateKey( spep_0 -3 + 52, 1, -4.9 );
setRotateKey( spep_0 -3 + 54, 1, -7.3 );
setRotateKey( spep_0 -3 + 57, 1, -9.8 );
setRotateKey( spep_0 -3 + 58, 1, 14.3 );
setRotateKey( spep_0 -3 + 60, 1, 0 );

-- ** 音 ** --
--playSe( spep_0 + 22, 1072 );  --敵移動
playSe( spep_0 + 22, 44 );  --敵移動

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 62; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
--    stopSe( SP_dodge - 12, SE1, 0 );
--    stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    

 --敵の座標の固定
 setMoveKey( SP_dodge+10, 1, 265.6, -31.6 , 0 );
 setScaleKey( SP_dodge+10, 1, 0.79, 0.79 );
 setRotateKey( SP_dodge+10, 1, 0 );



    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
setMoveKey( spep_0 -3 + 66, 1, -166.8, -31.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, -214.9, -31.3 , 0 );
setMoveKey( spep_0 -3 + 70, 1, -265.9, -31.5 , 0 );
setMoveKey( spep_0 -3 + 72, 1, -321.2, -31.7 , 0 );
setMoveKey( spep_0 -3 + 74, 1, -379.5, -31.8 , 0 );
setMoveKey( spep_0 -3 + 76, 1, -441, -32.6 , 0 );
setMoveKey( spep_0 -3 + 79, 1, -506.5, -32.1 , 0 );
setMoveKey( spep_0-3 + 254, 1, 497.3, 10 , 0 );
setMoveKey( spep_0-3 + 256, 1, 414.1, 8.5 , 0 );
setMoveKey( spep_0-3 + 258, 1, 330.9, 6.9 , 0 );
setMoveKey( spep_0-3 + 260, 1, 247.6, 5.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, 164.3, 3.7 , 0 );
setMoveKey( spep_0-3 + 263, 1, 164.3, 3.7 , 0 );
setMoveKey( spep_0-3 + 264, 1, 227, -15.4 , 0 );
setMoveKey( spep_0-3 + 265, 1, 227, -15.4 , 0 );
setMoveKey( spep_0-3 + 266, 1, 158.1, -121.4 , 0 );
setMoveKey( spep_0-3 + 268, 1, 169.8, -106.1 , 0 );
setMoveKey( spep_0-3 + 270, 1, 175.3, -99 , 0 );
setMoveKey( spep_0-3 + 272, 1, 178.9, -94.3 , 0 );
setMoveKey( spep_0-3 + 274, 1, 181.5, -90.9 , 0 );
setMoveKey( spep_0-3 + 276, 1, 183.4, -88.4 , 0 );
setMoveKey( spep_0-3 + 278, 1, 184.9, -86.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, 185.7, -85.3 , 0 );
setMoveKey( spep_0-3 + 282, 1, 186.2, -84.8 , 0 );
setMoveKey( spep_0-3 + 284, 1, 186.5, -84.3 , 0 );
setMoveKey( spep_0-3 + 286, 1, 186.8, -84 , 0 );
setMoveKey( spep_0-3 + 288, 1, 187.1, -83.6 , 0 );
setMoveKey( spep_0-3 + 290, 1, 187.3, -83.3 , 0 );
setMoveKey( spep_0-3 + 292, 1, 187.5, -83 , 0 );
setMoveKey( spep_0-3 + 294, 1, 187.7, -82.8 , 0 );
setMoveKey( spep_0-3 + 296, 1, 187.9, -82.5 , 0 );
setMoveKey( spep_0-3 + 298, 1, 188.1, -82.3 , 0 );
setMoveKey( spep_0-3 + 300, 1, 188.3, -82 , 0 );
setMoveKey( spep_0-3 + 302, 1, 188.5, -81.8 , 0 );
setMoveKey( spep_0-3 + 304, 1, 188.6, -81.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, 188.4, -81.3 , 0 );
setMoveKey( spep_0-3 + 307, 1, 188.4, -81.3 , 0 );
setMoveKey( spep_0-3 + 308, 1, 16.1, 21 , 0 );
setMoveKey( spep_0-3 + 310, 1, 17.8, 21 , 0 );
setMoveKey( spep_0-3 + 312, 1, 19.5, 21 , 0 );
setMoveKey( spep_0-3 + 314, 1, 21.1, 21 , 0 );
setMoveKey( spep_0-3 + 316, 1, 22.7, 21 , 0 );
setMoveKey( spep_0-3 + 318, 1, 24.1, 21 , 0 );
setMoveKey( spep_0-3 + 320, 1, 25.5, 21 , 0 );
setMoveKey( spep_0-3 + 322, 1, 26.7, 21 , 0 );
setMoveKey( spep_0-3 + 324, 1, 27.9, 21 , 0 );
setMoveKey( spep_0-3 + 326, 1, 29.1, 21 , 0 );
setMoveKey( spep_0-3 + 328, 1, 30.1, 21 , 0 );
setMoveKey( spep_0-3 + 330, 1, 31, 21 , 0 );
setMoveKey( spep_0-3 + 332, 1, 31.9, 21 , 0 );
setMoveKey( spep_0-3 + 334, 1, 32.7, 21 , 0 );
setMoveKey( spep_0-3 + 336, 1, 33.4, 21 , 0 );
setMoveKey( spep_0-3 + 338, 1, 34, 21 , 0 );
setMoveKey( spep_0-3 + 340, 1, 34.5, 21 , 0 );
setMoveKey( spep_0-3 + 342, 1, 35, 21 , 0 );
setMoveKey( spep_0-3 + 344, 1, 35.4, 21 , 0 );
setMoveKey( spep_0-3 + 346, 1, 35.7, 21 , 0 );
setMoveKey( spep_0-3 + 348, 1, 35.9, 21 , 0 );
setMoveKey( spep_0-3 + 350, 1, 36, 21 , 0 );
setMoveKey( spep_0-3 + 353, 1, 36, 21 , 0 );
setMoveKey( spep_0-3 + 354, 1, 184.2, -131.2 , 0 );
setMoveKey( spep_0-3 + 356, 1, 267.4, -182.8 , 0 );
setMoveKey( spep_0-3 + 358, 1, 350.5, -234.4 , 0 );
setMoveKey( spep_0-3 + 360, 1, 453.7, -326.5 , 0 );
setMoveKey( spep_0-3 + 362, 1, 556.9, -418.7 , 0 );

setMoveKey( spep_0-3 + 374, 1, -66.7, 136.9 , 0 );
setMoveKey( spep_0-3 + 376, 1, -39.8, 99.1 , 0 );
setMoveKey( spep_0-3 + 378, 1, -18.8, 69.8 , 0 );
setMoveKey( spep_0-3 + 380, 1, -3.9, 48.8 , 0 );
setMoveKey( spep_0-3 + 382, 1, 5.1, 36.2 , 0 );
setMoveKey( spep_0-3 + 384, 1, 8.1, 32 , 0 );
setMoveKey( spep_0-3 + 386, 1, 44.8, -17.8 , 0 );
setMoveKey( spep_0-3 + 388, 1, 74.8, -58.5 , 0 );
setMoveKey( spep_0-3 + 390, 1, 98.1, -90.2 , 0 );
setMoveKey( spep_0-3 + 392, 1, 114.8, -112.8 , 0 );
setMoveKey( spep_0-3 + 394, 1, 124.8, -126.4 , 0 );
setMoveKey( spep_0-3 + 396, 1, 128.1, -130.9 , 0 );
setMoveKey( spep_0-3 + 397, 1, 128.1, -130.9 , 0 );
setMoveKey( spep_0-3 + 398, 1, 135.9, -129.8 , 0 );
setMoveKey( spep_0-3 + 400, 1, 136.2, -129.8 , 0 );
setMoveKey( spep_0-3 + 402, 1, 136.9, -129.7 , 0 );
setMoveKey( spep_0-3 + 404, 1, 138.1, -129.5 , 0 );
setMoveKey( spep_0-3 + 406, 1, 139.6, -129.3 , 0 );
setMoveKey( spep_0-3 + 408, 1, 141.6, -129 , 0 );
setMoveKey( spep_0-3 + 410, 1, 144, -128.7 , 0 );
setMoveKey( spep_0-3 + 412, 1, 146.5, -128.2 , 0 );
setMoveKey( spep_0-3 + 414, 1, 149.3, -127.8 , 0 );
setMoveKey( spep_0-3 + 416, 1, 152.2, -127.2 , 0 );
setMoveKey( spep_0-3 + 418, 1, 155.1, -126.6 , 0 );
setMoveKey( spep_0-3 + 420, 1, 158.1, -125.9 , 0 );
setMoveKey( spep_0-3 + 422, 1, 161, -125.2 , 0 );
setMoveKey( spep_0-3 + 424, 1, 163.7, -123.6 , 0 );
setMoveKey( spep_0-3 + 426, 1, 166.1, -121.8 , 0 );
setMoveKey( spep_0-3 + 428, 1, 168, -119.9 , 0 );
setMoveKey( spep_0-3 + 430, 1, 169.3, -117.8 , 0 );
setMoveKey( spep_0-3 + 432, 1, 169.9, -115.6 , 0 );
setMoveKey( spep_0-3 + 434, 1, 169.6, -113.3 , 0 );
setMoveKey( spep_0-3 + 436, 1, 168, -110.9 , 0 );
setMoveKey( spep_0-3 + 438, 1, 165.3, -107.5 , 0 );
setMoveKey( spep_0-3 + 440, 1, 161.1, -103.9 , 0 );
setMoveKey( spep_0-3 + 442, 1, 155.2, -100.2 , 0 );
setMoveKey( spep_0-3 + 444, 1, 147.6, -96.3 , 0 );
setMoveKey( spep_0-3 + 446, 1, 138, -92.2 , 0 );
setMoveKey( spep_0-3 + 448, 1, 127.1, -88.5 , 0 );


setScaleKey( spep_0 -3 + 66, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 68, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 70, 1, 0.8, 0.8 );
setScaleKey( spep_0 -3 + 72, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 74, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 76, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 79, 1, 0.82, 0.82 );
setScaleKey( spep_0-3 + 254, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 256, 1, 1.22, 1.22 );
setScaleKey( spep_0-3 + 258, 1, 1.67, 1.67 );
setScaleKey( spep_0-3 + 260, 1, 2.12, 2.12 );
setScaleKey( spep_0-3 + 262, 1, 2.57, 2.57 );
setScaleKey( spep_0-3 + 263, 1, 2.57, 2.57 );
setScaleKey( spep_0-3 + 264, 1, 1.22, 1.22 );
setScaleKey( spep_0-3 + 265, 1, 1.22, 1.22 );

setScaleKey( spep_0-3 + 266, 1, 4.29, 4.29 );
setScaleKey( spep_0-3 + 268, 1, 3.96, 3.96 );
setScaleKey( spep_0-3 + 270, 1, 3.81, 3.81 );
setScaleKey( spep_0-3 + 272, 1, 3.71, 3.71 );
setScaleKey( spep_0-3 + 274, 1, 3.63, 3.63 );
setScaleKey( spep_0-3 + 276, 1, 3.58, 3.58 );
setScaleKey( spep_0-3 + 278, 1, 3.53, 3.53 );
setScaleKey( spep_0-3 + 280, 1, 3.51, 3.51 );
setScaleKey( spep_0-3 + 282, 1, 3.5, 3.5 );
setScaleKey( spep_0-3 + 284, 1, 3.49, 3.49 );
setScaleKey( spep_0-3 + 286, 1, 3.48, 3.48 );
setScaleKey( spep_0-3 + 288, 1, 3.47, 3.47 );
setScaleKey( spep_0-3 + 290, 1, 3.47, 3.47 );
setScaleKey( spep_0-3 + 292, 1, 3.46, 3.46 );
setScaleKey( spep_0-3 + 294, 1, 3.46, 3.46 );
setScaleKey( spep_0-3 + 296, 1, 3.45, 3.45 );
setScaleKey( spep_0-3 + 298, 1, 3.44, 3.44 );
setScaleKey( spep_0-3 + 300, 1, 3.44, 3.44 );
setScaleKey( spep_0-3 + 302, 1, 3.43, 3.43 );
setScaleKey( spep_0-3 + 304, 1, 3.43, 3.43 );
setScaleKey( spep_0-3 + 306, 1, 3.42, 3.42 );
setScaleKey( spep_0-3 + 307, 1, 3.42, 3.42 );

d=0;

setScaleKey( spep_0-3 + 308, 1, 0.86 +d, 0.86 +d );
setScaleKey( spep_0-3 + 350, 1, 0.86 +d, 0.86 +d );
setScaleKey( spep_0-3 + 353, 1, 0.86 +d, 0.86 +d );

setScaleKey( spep_0-3 + 354, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 358, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 360, 1, 0.93, 0.93 );
setScaleKey( spep_0-3 + 362, 1, 0.95, 0.95 );

setScaleKey( spep_0-3 + 374, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 396, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 398, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 404, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 406, 1, 0.03, 0.02 );
setScaleKey( spep_0-3 + 408, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 410, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 412, 1, 0.04, 0.03 );
setScaleKey( spep_0-3 + 414, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 416, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 418, 1, 0.06, 0.05 );
setScaleKey( spep_0-3 + 420, 1, 0.07, 0.06 );
setScaleKey( spep_0-3 + 422, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 424, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 426, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 428, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 430, 1, 0.12, 0.11 );
setScaleKey( spep_0-3 + 432, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 434, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 436, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 438, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 440, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 442, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 444, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 446, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 448, 1, 0.26, 0.26 );

setRotateKey( spep_0-3 + 79, 1, 0 );
setRotateKey( spep_0-3 + 254, 1, 0 );
setRotateKey( spep_0-3 + 262, 1, 0 );
setRotateKey( spep_0-3 + 263, 1, 0 );
setRotateKey( spep_0-3 + 264, 1, -115.9 );
setRotateKey( spep_0-3 + 265, 1, -115.9 );

setRotateKey( spep_0-3 + 266, 1, -46.1 );
setRotateKey( spep_0-3 + 268, 1, -44 );
setRotateKey( spep_0-3 + 270, 1, -43 );
setRotateKey( spep_0-3 + 272, 1, -42.4 );
setRotateKey( spep_0-3 + 274, 1, -41.9 );
setRotateKey( spep_0-3 + 276, 1, -41.6 );
setRotateKey( spep_0-3 + 278, 1, -41.3 );
setRotateKey( spep_0-3 + 280, 1, -41.2 );
setRotateKey( spep_0-3 + 282, 1, -41.1 );
setRotateKey( spep_0-3 + 284, 1, -41 );
setRotateKey( spep_0-3 + 286, 1, -41 );
setRotateKey( spep_0-3 + 288, 1, -40.9 );
setRotateKey( spep_0-3 + 292, 1, -40.9 );
setRotateKey( spep_0-3 + 294, 1, -40.8 );
setRotateKey( spep_0-3 + 298, 1, -40.8 );
setRotateKey( spep_0-3 + 300, 1, -40.7 );
setRotateKey( spep_0-3 + 304, 1, -40.7 );
setRotateKey( spep_0-3 + 306, 1, -40.6 );
setRotateKey( spep_0-3 + 307, 1, -40.6 );

setRotateKey( spep_0-3 + 308, 1, -20.9 );
setRotateKey( spep_0-3 + 310, 1, -19.9 );
setRotateKey( spep_0-3 + 312, 1, -19 );
setRotateKey( spep_0-3 + 314, 1, -18.2 );
setRotateKey( spep_0-3 + 316, 1, -17.4 );
setRotateKey( spep_0-3 + 318, 1, -16.6 );
setRotateKey( spep_0-3 + 320, 1, -15.9 );
setRotateKey( spep_0-3 + 322, 1, -15.2 );
setRotateKey( spep_0-3 + 324, 1, -14.5 );
setRotateKey( spep_0-3 + 326, 1, -13.9 );
setRotateKey( spep_0-3 + 328, 1, -13.4 );
setRotateKey( spep_0-3 + 330, 1, -12.9 );
setRotateKey( spep_0-3 + 332, 1, -12.4 );
setRotateKey( spep_0-3 + 334, 1, -12 );
setRotateKey( spep_0-3 + 336, 1, -11.6 );
setRotateKey( spep_0-3 + 338, 1, -11.3 );
setRotateKey( spep_0-3 + 340, 1, -11 );
setRotateKey( spep_0-3 + 342, 1, -10.8 );
setRotateKey( spep_0-3 + 344, 1, -10.6 );
setRotateKey( spep_0-3 + 346, 1, -10.4 );
setRotateKey( spep_0-3 + 348, 1, -10.3 );
setRotateKey( spep_0-3 + 350, 1, -10.2 );
setRotateKey( spep_0-3 + 353, 1, -10.2 );

setRotateKey( spep_0-3 + 354, 1, 40.5 );
setRotateKey( spep_0-3 + 362, 1, 40.5 );

setRotateKey( spep_0-3 + 374, 1, -24.1 );
setRotateKey( spep_0-3 + 396, 1, -24.1 );
setRotateKey( spep_0-3 + 397, 1, -24.1 );
setRotateKey( spep_0-3 + 398, 1, -180 );
setRotateKey( spep_0-3 + 448, 1, -180 );

--文字エントリー
ctga = entryEffectLife( spep_0 -3 + 264,  10005, 30, 0x100, -1, 0, -43.5, 292 );--ガッ

setEffMoveKey( spep_0 -3 + 264, ctga, -43.5, 292 , 0 );
setEffMoveKey( spep_0 -3 + 266, ctga, -33.6, 302.9 , 0 );
setEffMoveKey( spep_0 -3 + 268, ctga, -34.4, 313.9 , 0 );
setEffMoveKey( spep_0 -3 + 270, ctga, -30.8, 321.7 , 0 );
setEffMoveKey( spep_0 -3 + 272, ctga, -22.3, 324.1 , 0 );
setEffMoveKey( spep_0 -3 + 274, ctga, -29.3, 326 , 0 );
setEffMoveKey( spep_0 -3 + 276, ctga, -21.4, 326.1 , 0 );
setEffMoveKey( spep_0 -3 + 278, ctga, -28.6, 324.3 , 0 );
setEffMoveKey( spep_0 -3 + 280, ctga, -21.8, 330.3 , 0 );
setEffMoveKey( spep_0 -3 + 282, ctga, -28.6, 327.2 , 0 );
setEffMoveKey( spep_0 -3 + 284, ctga, -21.2, 328.4 , 0 );
setEffMoveKey( spep_0 -3 + 286, ctga, -25.7, 332.3 , 0 );
setEffMoveKey( spep_0 -3 + 288, ctga, -27.1, 329.8 , 0 );
setEffMoveKey( spep_0 -3 + 290, ctga, -17.3, 334.4 , 0 );
setEffMoveKey( spep_0 -3 + 292, ctga, -23.7, 338.5 , 0 );
setEffMoveKey( spep_0 -3 + 294, ctga, -22.3, 341.5 , 0 );

setEffScaleKey( spep_0 -3 + 264, ctga, 1.29, 1.29 );
setEffScaleKey( spep_0 -3 + 266, ctga, 1.63, 1.63 );
setEffScaleKey( spep_0 -3 + 268, ctga, 1.97, 1.97 );
setEffScaleKey( spep_0 -3 + 270, ctga, 2.31, 2.31 );
setEffScaleKey( spep_0 -3 + 272, ctga, 2.32, 2.32 );
setEffScaleKey( spep_0 -3 + 274, ctga, 2.33, 2.33 );
setEffScaleKey( spep_0 -3 + 276, ctga, 2.34, 2.34 );
setEffScaleKey( spep_0 -3 + 278, ctga, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 280, ctga, 2.35, 2.35 );
setEffScaleKey( spep_0 -3 + 282, ctga, 2.36, 2.36 );
setEffScaleKey( spep_0 -3 + 284, ctga, 2.37, 2.37 );
setEffScaleKey( spep_0 -3 + 286, ctga, 2.38, 2.38 );
setEffScaleKey( spep_0 -3 + 288, ctga, 2.39, 2.39 );
setEffScaleKey( spep_0 -3 + 290, ctga, 2.42, 2.42 );
setEffScaleKey( spep_0 -3 + 292, ctga, 2.45, 2.45 );
setEffScaleKey( spep_0 -3 + 294, ctga, 2.48, 2.48 );

setEffRotateKey( spep_0 -3 + 264, ctga, 22 );
setEffRotateKey( spep_0 -3 + 294, ctga, 22 );

setEffAlphaKey( spep_0 -3 + 264, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 288, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 290, ctga, 170 );
setEffAlphaKey( spep_0 -3 + 292, ctga, 85 );
setEffAlphaKey( spep_0 -3 + 294, ctga, 0 );

--文字エントリー
ctsyun = entryEffectLife( spep_0 -3 + 318,  10011, 18, 0x100, -1, 0, 111.2, 271 );--シュンッ

setEffMoveKey( spep_0 -3 + 318, ctsyun, 111.2, 271 , 0 );
setEffMoveKey( spep_0 -3 + 320, ctsyun, 114.2, 281.9 , 0 );
setEffMoveKey( spep_0 -3 + 322, ctsyun, 115.2, 285.6 , 0 );
setEffMoveKey( spep_0 -3 + 324, ctsyun, 115.4, 286.5 , 0 );
setEffMoveKey( spep_0 -3 + 326, ctsyun, 115.7, 287.3 , 0 );
setEffMoveKey( spep_0 -3 + 328, ctsyun, 115.9, 288.2 , 0 );
setEffMoveKey( spep_0 -3 + 330, ctsyun, 116.2, 289.1 , 0 );
setEffMoveKey( spep_0 -3 + 332, ctsyun, 117.5, 293.9 , 0 );
setEffMoveKey( spep_0 -3 + 334, ctsyun, 118.8, 298.7 , 0 );
setEffMoveKey( spep_0 -3 + 336, ctsyun, 120.1, 303.5 , 0 );

setEffScaleKey( spep_0 -3 + 318, ctsyun, 0.96, 0.96 );
setEffScaleKey( spep_0 -3 + 320, ctsyun, 1.08, 1.08 );
setEffScaleKey( spep_0 -3 + 322, ctsyun, 1.12, 1.12 );
setEffScaleKey( spep_0 -3 + 324, ctsyun, 1.13, 1.13 );
setEffScaleKey( spep_0 -3 + 326, ctsyun, 1.14, 1.14 );
setEffScaleKey( spep_0 -3 + 328, ctsyun, 1.15, 1.15 );
setEffScaleKey( spep_0 -3 + 330, ctsyun, 1.16, 1.16 );
setEffScaleKey( spep_0 -3 + 332, ctsyun, 1.21, 1.21 );
setEffScaleKey( spep_0 -3 + 334, ctsyun, 1.27, 1.27 );
setEffScaleKey( spep_0 -3 + 336, ctsyun, 1.32, 1.32 );

setEffRotateKey( spep_0 -3 + 318, ctsyun, 16.8 );
setEffRotateKey( spep_0 -3 + 336, ctsyun, 16.8 );

setEffAlphaKey( spep_0 -3 + 318, ctsyun, 142 );
setEffAlphaKey( spep_0 -3 + 320, ctsyun, 227 );
setEffAlphaKey( spep_0 -3 + 322, ctsyun, 255 );
setEffAlphaKey( spep_0 -3 + 330, ctsyun, 255 );
setEffAlphaKey( spep_0 -3 + 332, ctsyun, 170 );
setEffAlphaKey( spep_0 -3 + 334, ctsyun, 85 );
setEffAlphaKey( spep_0 -3 + 336, ctsyun, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 358,  10020, 14, 0x100, -1, 0, -106.3, 268.7 );--バキッ

setEffMoveKey( spep_0-3 + 358, ctbaki, -106.3, 268.7 , 0 );
setEffMoveKey( spep_0-3 + 360, ctbaki, -103.6, 276.7 , 0 );
setEffMoveKey( spep_0-3 + 362, ctbaki, -115.1, 281.5 , 0 );
setEffMoveKey( spep_0-3 + 364, ctbaki, -107.1, 279.8 , 0 );
setEffMoveKey( spep_0-3 + 366, ctbaki, -105.8, 274.3 , 0 );
setEffMoveKey( spep_0-3 + 368, ctbaki, -105.5, 281.2 , 0 );
setEffMoveKey( spep_0-3 + 370, ctbaki, -103.5, 275.1 , 0 );
setEffMoveKey( spep_0-3 + 372, ctbaki, -108.8, 274.7 , 0 );

setEffScaleKey( spep_0-3 + 358, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_0-3 + 360, ctbaki, 1.78, 1.78 );
setEffScaleKey( spep_0-3 + 362, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_0-3 + 364, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_0-3 + 366, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_0-3 + 368, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_0-3 + 370, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_0-3 + 372, ctbaki, 1.83, 1.83 );

setEffRotateKey( spep_0-3 + 358, ctbaki, -23.2 );
setEffRotateKey( spep_0-3 + 372, ctbaki, -23.2 );

setEffRotateKey( spep_0-3 + 358, ctbaki, -23.2 );
setEffRotateKey( spep_0-3 + 372, ctbaki, -23.2 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 490, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 490, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +502, 190006, 72, 0x100, -1, 0, -70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_0 +502,  ctgogo,  -70,  510);
setEffMoveKey(  spep_0 +574,  ctgogo,  -70,  510);

setEffAlphaKey( spep_0 +502, ctgogo, 0 );
setEffAlphaKey( spep_0 + 503, ctgogo, 255 );
setEffAlphaKey( spep_0 + 504, ctgogo, 255 );
setEffAlphaKey( spep_0 + 566, ctgogo, 255 );
setEffAlphaKey( spep_0 + 568, ctgogo, 255 );
setEffAlphaKey( spep_0 + 570, ctgogo, 191 );
setEffAlphaKey( spep_0 + 572, ctgogo, 128 );
setEffAlphaKey( spep_0 + 574, ctgogo, 64 );

setEffRotateKey(  spep_0 +502,  ctgogo,  0);
setEffRotateKey(  spep_0 +574,  ctgogo,  0);

setEffScaleKey(  spep_0 +502,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +564,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +574,  ctgogo, 1.07, 1.07 );
]]--
--白フェード
entryFade( spep_0 + 578, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_0 + 86, 1019 );  --クウラ回る
--playSe( spep_0 + 110, 1019 );  --クウラ回る
playSe( spep_0 + 86 + 16, 8 );  --クウラ回る
--playSe( spep_0 + 184, 8 );  --さらに回る(顔アップ)
playSe( spep_0 + 184 -10 -8, 1072 );  --さらに回る(顔アップ)

playSe( spep_0 -3 + 264, 1180 );  --ガッ
setSeVolume( spep_0 -3 + 264, 1180, 110 );

playSe( spep_0 + 292, 4 );  --瞬間移動
playSe( spep_0 -3 + 318, 1109 );  --瞬間移動
playSe( spep_0 -3 + 358, 1120 );  --バキッ

playSe( spep_0 + 382, 1023 );  --岩に当たる
playSe( spep_0 + 382, 1002 );  --岩に当たる

playSe( spep_0 + 396, 1023 );  --岩に当たる
playSe( spep_0 + 396, 1011 );  --岩に当たる

SE1 = playSe( spep_0 + 400, 1044 );  --地面に落ちる
setSeVolume( spep_0 + 400, 1044, 80 );
stopSe( spep_0 + 450, SE1, 10 );

playSe( spep_0 + 460, 1167 );  --迫る
setSeVolume( spep_0 + 460, 1167, 45 );
setSeVolume( spep_0 + 470, 1167, 62 );
setSeVolume( spep_0 + 480, 1167, 88 );

playSe( spep_0 + 490 + 16, 1018 );  --ごごご
SE1x = playSe( spep_0 + 506, 1044 );  --地鳴り
setSeVolume( spep_0 + 506, 1044, 70 );
stopSe( spep_0 + 586, SE1x, 10 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 586;

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

--白フェード
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;



------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
Ngemuva_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, Ngemuva_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 608, Ngemuva_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, Ngemuva_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 608, Ngemuva_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, Ngemuva_f, 0 );
setEffRotateKey( spep_2 + 608, Ngemuva_f, 0 );
setEffAlphaKey( spep_2 + 0, Ngemuva_f, 255 );
setEffAlphaKey( spep_2 + 608, Ngemuva_f, 255 );

-- ** エフェクト等 ** --
Ngemuva_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, Ngemuva_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 540, Ngemuva_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, Ngemuva_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 540, Ngemuva_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, Ngemuva_b, 0 );
setEffRotateKey( spep_2 + 540, Ngemuva_b, 0 );
setEffAlphaKey( spep_2 + 0, Ngemuva_b, 255 );
setEffAlphaKey( spep_2 + 540, Ngemuva_b, 255 );

--文字エントリー
ctzun1 = entryEffectLife( spep_2-3 + 10,  10016, 26, 0x100, -1, 0, 157.9, 213.3 );--ズンッ

setEffMoveKey( spep_2-3 + 10, ctzun1, 157.9, 213.3 , 0 );
setEffMoveKey( spep_2-3 + 12, ctzun1, 162.2, 220.3 , 0 );
setEffMoveKey( spep_2-3 + 14, ctzun1, 164.7, 224.4 , 0 );
setEffMoveKey( spep_2-3 + 16, ctzun1, 165.6, 225.8 , 0 );
setEffMoveKey( spep_2-3 + 18, ctzun1, 166.2, 226.8 , 0 );
setEffMoveKey( spep_2-3 + 20, ctzun1, 166.7, 227.7 , 0 );
setEffMoveKey( spep_2-3 + 22, ctzun1, 167.3, 228.6 , 0 );
setEffMoveKey( spep_2-3 + 24, ctzun1, 167.9, 229.6 , 0 );
setEffMoveKey( spep_2-3 + 26, ctzun1, 168.4, 230.5 , 0 );
setEffMoveKey( spep_2-3 + 28, ctzun1, 169, 231.5 , 0 );
setEffMoveKey( spep_2-3 + 30, ctzun1, 169.6, 232.4 , 0 );
setEffMoveKey( spep_2-3 + 32, ctzun1, 170.7, 234.3 , 0 );
setEffMoveKey( spep_2-3 + 34, ctzun1, 171.8, 236.2 , 0 );
setEffMoveKey( spep_2-3 + 36, ctzun1, 172.9, 238.1 , 0 );

setEffScaleKey( spep_2-3 + 10, ctzun1, 1.97, 1.97 );
setEffScaleKey( spep_2-3 + 12, ctzun1, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 14, ctzun1, 2.2, 2.2 );
setEffScaleKey( spep_2-3 + 16, ctzun1, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 18, ctzun1, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 20, ctzun1, 2.27, 2.27 );
setEffScaleKey( spep_2-3 + 22, ctzun1, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 24, ctzun1, 2.31, 2.31 );
setEffScaleKey( spep_2-3 + 26, ctzun1, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 28, ctzun1, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 30, ctzun1, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 32, ctzun1, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 34, ctzun1, 2.45, 2.45 );
setEffScaleKey( spep_2-3 + 36, ctzun1, 2.49, 2.49 );

setEffRotateKey( spep_2-3 + 10, ctzun1, 19 );
setEffRotateKey( spep_2-3 + 36, ctzun1, 19 )

setEffAlphaKey( spep_2-3 + 10, ctzun1, 255 );
setEffAlphaKey( spep_2-3 + 30, ctzun1, 255 );
setEffAlphaKey( spep_2-3 + 32, ctzun1, 170 );
setEffAlphaKey( spep_2-3 + 34, ctzun1, 85 );
setEffAlphaKey( spep_2-3 + 36, ctzun1, 0 );

--文字エントリー
ctzun2 = entryEffectLife( spep_2-3 + 258,  10016, 26, 0x100, -1, 0, -134.6, 240.7 );--ズンッ

setEffMoveKey( spep_2-3 + 258, ctzun2, -134.6, 240.7 , 0 );
setEffMoveKey( spep_2-3 + 260, ctzun2, -135.7, 247.8 , 0 );
setEffMoveKey( spep_2-3 + 262, ctzun2, -136.3, 252 , 0 );
setEffMoveKey( spep_2-3 + 264, ctzun2, -136.6, 253.4 , 0 );
setEffMoveKey( spep_2-3 + 266, ctzun2, -136.7, 254.2 , 0 );
setEffMoveKey( spep_2-3 + 268, ctzun2, -136.8, 255.1 , 0 );
setEffMoveKey( spep_2-3 + 270, ctzun2, -136.9, 255.9 , 0 );
setEffMoveKey( spep_2-3 + 272, ctzun2, -137.1, 256.8 , 0 );
setEffMoveKey( spep_2-3 + 274, ctzun2, -137.2, 257.6 , 0 );
setEffMoveKey( spep_2-3 + 276, ctzun2, -137.3, 258.5 , 0 );
setEffMoveKey( spep_2-3 + 278, ctzun2, -137.4, 259.3 , 0 );
setEffMoveKey( spep_2-3 + 280, ctzun2, -137.8, 261.3 , 0 );
setEffMoveKey( spep_2-3 + 282, ctzun2, -138.1, 263.2 , 0 );
setEffMoveKey( spep_2-3 + 284, ctzun2, -138.5, 265.2 , 0 );

setEffScaleKey( spep_2-3 + 258, ctzun2, 1.65, 1.65 );
setEffScaleKey( spep_2-3 + 260, ctzun2, 1.78, 1.78 );
setEffScaleKey( spep_2-3 + 262, ctzun2, 1.85, 1.85 );
setEffScaleKey( spep_2-3 + 264, ctzun2, 1.88, 1.88 );
setEffScaleKey( spep_2-3 + 266, ctzun2, 1.9, 1.9 );
setEffScaleKey( spep_2-3 + 268, ctzun2, 1.91, 1.91 );
setEffScaleKey( spep_2-3 + 270, ctzun2, 1.93, 1.93 );
setEffScaleKey( spep_2-3 + 272, ctzun2, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 274, ctzun2, 1.96, 1.96 );
setEffScaleKey( spep_2-3 + 276, ctzun2, 1.97, 1.97 );
setEffScaleKey( spep_2-3 + 278, ctzun2, 1.99, 1.99 );
setEffScaleKey( spep_2-3 + 280, ctzun2, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 282, ctzun2, 2.06, 2.06 );
setEffScaleKey( spep_2-3 + 284, ctzun2, 2.1, 2.1 );

setEffRotateKey( spep_2-3 + 258, ctzun2, -21.2 );
setEffRotateKey( spep_2-3 + 284, ctzun2, -21.2 );

setEffAlphaKey( spep_2-3 + 258, ctzun2, 255 );
setEffAlphaKey( spep_2-3 + 278, ctzun2, 255 );
setEffAlphaKey( spep_2-3 + 280, ctzun2, 170 );
setEffAlphaKey( spep_2-3 + 282, ctzun2, 85 );
setEffAlphaKey( spep_2-3 + 284, ctzun2, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_2-3 + 124,  10021, 26, 0x100, -1, 0, 175.4, 305.5 );--バゴォッ

setEffMoveKey( spep_2-3 + 124, ctbago, 175.4, 305.5 , 0 );
setEffMoveKey( spep_2-3 + 126, ctbago, 176.4, 308.4 , 0 );
setEffMoveKey( spep_2-3 + 128, ctbago, 165, 329.8 , 0 );
setEffMoveKey( spep_2-3 + 130, ctbago, 168.5, 325.7 , 0 );
setEffMoveKey( spep_2-3 + 132, ctbago, 173.1, 318.2 , 0 );
setEffMoveKey( spep_2-3 + 134, ctbago, 163.1, 335 , 0 );
setEffMoveKey( spep_2-3 + 136, ctbago, 171.5, 325.9 , 0 );
setEffMoveKey( spep_2-3 + 138, ctbago, 158.5, 329 , 0 );
setEffMoveKey( spep_2-3 + 140, ctbago, 173.2, 332.4 , 0 );
setEffMoveKey( spep_2-3 + 142, ctbago, 158, 329.9 , 0 );
setEffMoveKey( spep_2-3 + 144, ctbago, 164.9, 335.2 , 0 );
setEffMoveKey( spep_2-3 + 146, ctbago, 169.4, 328.4 , 0 );
setEffMoveKey( spep_2-3 + 148, ctbago, 158.1, 347.7 , 0 );
setEffMoveKey( spep_2-3 + 150, ctbago, 157, 350.6 , 0 );

setEffScaleKey( spep_2-3 + 124, ctbago, 1.97, 1.97 );
setEffScaleKey( spep_2-3 + 126, ctbago, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 128, ctbago, 2.2, 2.2 );
setEffScaleKey( spep_2-3 + 130, ctbago, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 132, ctbago, 2.25, 2.25 );
setEffScaleKey( spep_2-3 + 134, ctbago, 2.27, 2.27 );
setEffScaleKey( spep_2-3 + 136, ctbago, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 138, ctbago, 2.31, 2.31 );
setEffScaleKey( spep_2-3 + 140, ctbago, 2.33, 2.33 );
setEffScaleKey( spep_2-3 + 142, ctbago, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 144, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 146, ctbago, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 148, ctbago, 2.45, 2.45 );
setEffScaleKey( spep_2-3 + 150, ctbago, 2.49, 2.49 );

setEffRotateKey( spep_2-3 + 124, ctbago, 20 );
setEffRotateKey( spep_2-3 + 150, ctbago, 20 );

setEffAlphaKey( spep_2-3 + 124, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 144, ctbago, 255 );
setEffAlphaKey( spep_2-3 + 146, ctbago, 170 );
setEffAlphaKey( spep_2-3 + 148, ctbago, 85 );
setEffAlphaKey( spep_2-3 + 150, ctbago, 0 );

--文字エントリー
ctdogagaga = entryEffectLife( spep_2-3 + 222,  10017, 30, 0x100, -1, 0, 97.6, 374.6 );--ドガガガッ

setEffMoveKey( spep_2-3 + 222, ctdogagaga, 97.6, 374.6 , 0 );
setEffMoveKey( spep_2-3 + 224, ctdogagaga, 103.4, 377.1 , 0 );
setEffMoveKey( spep_2-3 + 226, ctdogagaga, 87, 378.9 , 0 );
setEffMoveKey( spep_2-3 + 228, ctdogagaga, 104.2, 374.3 , 0 );
setEffMoveKey( spep_2-3 + 230, ctdogagaga, 93.3, 368 , 0 );
setEffMoveKey( spep_2-3 + 232, ctdogagaga, 108.7, 375.1 , 0 );
setEffMoveKey( spep_2-3 + 234, ctdogagaga, 89.8, 364.7 , 0 );
setEffMoveKey( spep_2-3 + 236, ctdogagaga, 105.2, 376.1 , 0 );
setEffMoveKey( spep_2-3 + 238, ctdogagaga, 91.3, 374.1 , 0 );
setEffMoveKey( spep_2-3 + 240, ctdogagaga, 102.9, 379.6 , 0 );
setEffMoveKey( spep_2-3 + 242, ctdogagaga, 92.5, 369.8 , 0 );
setEffMoveKey( spep_2-3 + 244, ctdogagaga, 95.8, 381.4 , 0 );
setEffMoveKey( spep_2-3 + 246, ctdogagaga, 97.8, 367.7 , 0 );
setEffMoveKey( spep_2-3 + 248, ctdogagaga, 97.1, 382.4 , 0 );
setEffMoveKey( spep_2-3 + 252, ctdogagaga, 104.9, 365.5 , 0 );

setEffScaleKey( spep_2-3 + 222, ctdogagaga, 2.53, 2.53 );
setEffScaleKey( spep_2-3 + 252, ctdogagaga, 2.53, 2.53 );

setEffRotateKey( spep_2-3 + 222, ctdogagaga, 0 ); 
setEffRotateKey( spep_2-3 + 252, ctdogagaga, 0 ); 

setEffAlphaKey( spep_2-3 + 222, ctdogagaga, 255 );
setEffAlphaKey( spep_2-3 + 246, ctdogagaga, 255 );
setEffAlphaKey( spep_2-3 + 248, ctdogagaga, 170 );
setEffAlphaKey( spep_2-3 + 250, ctdogagaga, 85 );
setEffAlphaKey( spep_2-3 + 252, ctdogagaga, 0 );
--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 55, 1, 0 );
setDisp( spep_2-3 + 108, 1, 1 );
setDisp( spep_2-3 + 300, 1, 0 );

changeAnime( spep_2 + 0, 1, 106 );
changeAnime( spep_2-3 + 10, 1, 108 );
changeAnime( spep_2-3 + 166, 1, 107 );
changeAnime( spep_2-3 + 222, 1, 108 );
changeAnime( spep_2-3 + 258, 1, 7 );

setMoveKey( spep_2 + 0, 1, 28.8, -81.8 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -37.9, -80.3 , 0 );
setMoveKey( spep_2-3 + 4, 1, 44.4, -79.3 , 0 );
setMoveKey( spep_2-3 + 6, 1, 48.3, -78.7 , 0 );
setMoveKey( spep_2-3 + 9, 1, 49.6, -78.5 , 0 );

a1 = 10;
b1 = 10;
setMoveKey( spep_2-3 + 10, 1, 85.1 +b1, -52 -a1 , 0 );
setMoveKey( spep_2-3 + 12, 1, 118.3 +b1, -35.4 -a1 , 0 );
setMoveKey( spep_2-3 + 14, 1, 128.3 +b1, -34.9 -a1 , 0 );
setMoveKey( spep_2-3 + 16, 1, 141.6 +b1, -31 -a1 , 0 );
setMoveKey( spep_2-3 + 18, 1, 134.6 +b1, -20.6 -a1 , 0 );
setMoveKey( spep_2-3 + 20, 1, 160.7 +b1, -29.6 -a1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 143.9 +b1, -25.4 -a1 , 0 );
setMoveKey( spep_2-3 + 24, 1, 174.2 +b1, -26.1 -a1 , 0 );
setMoveKey( spep_2-3 + 26, 1, 158.7 +b1, -27 -a1 , 0 );
setMoveKey( spep_2-3 + 28, 1, 172.5 +b1, -19.8 -a1 , 0 );
setMoveKey( spep_2-3 + 30, 1, 172.2 +b1, -24.1 -a1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 174.8 +b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 34, 1, 176.9 +b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 36, 1, 178.7 +b1, -23.8 -a1 , 0 );
setMoveKey( spep_2-3 + 38, 1, 180.1 +b1, -23.8 -a1 , 0 );
setMoveKey( spep_2-3 + 40, 1, 181.3 +b1, -23.8 -a1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 182.3 +b1, -23.8 -a1 , 0 );
setMoveKey( spep_2-3 + 44, 1, 183.1 +b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 46, 1, 183.8 +b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 48, 1, 184.4 +b1, -23.9 -a1 , 0 );
setMoveKey( spep_2-3 + 50, 1, 184.9 +b1, -24 -a1 , 0 );
setMoveKey( spep_2-3 + 52, 1, 185.5 +b1, -24 -a1 , 0 );
setMoveKey( spep_2-3 + 53, 1, 185.5 +b1, -24 -a1 , 0 );
setMoveKey( spep_2-3 + 54, 1, 570.7 +b1, -17.8 -a1 , 0 );
setMoveKey( spep_2-3 + 55, 1, 570.7 +b1, -17.8 -a1 , 0 );

--[[
setMoveKey( spep_2-2 + 56, 1, -727.5, -17.4 , 0 );
setMoveKey( spep_2-2 + 58, 1, -876.8, -17.1 , 0 );
setMoveKey( spep_2-2 + 60, 1, -904, -13.8 , 0 );
setMoveKey( spep_2-2 + 62, 1, -754.6, -10.5 , 0 );
setMoveKey( spep_2-2 + 64, 1, -728.1, -6.9 , 0 );
setMoveKey( spep_2-2 + 66, 1, -758.1, -3.5 , 0 );
setMoveKey( spep_2-2 + 68, 1, -805.9, 0.1 , 0 );
setMoveKey( spep_2-2 + 70, 1, -861.6, 3.6 , 0 );
setMoveKey( spep_2-2 + 72, 1, -922, 7.2 , 0 );
setMoveKey( spep_2-2 + 74, 1, -985.3, 10.6 , 0 );
setMoveKey( spep_2-2 + 77, 1, -1050.9, 14.2 , 0 );
]]--

setMoveKey( spep_2-3 + 108, 1, -411.4, -153.8 , 0 );
setMoveKey( spep_2-3 + 109, 1, -411.4, -153.8 , 0 );
setMoveKey( spep_2-3 + 110, 1, -89.3, -14.8 , 0 );
setMoveKey( spep_2-3 + 111, 1, -89.3, -14.8 , 0 );
setMoveKey( spep_2-3 + 112, 1, 16.6, 38.1 , 0 );
setMoveKey( spep_2-3 + 113, 1, 16.6, 38.1 , 0 );
setMoveKey( spep_2-3 + 114, 1, 110.6, 71.3 , 0 );
setMoveKey( spep_2-3 + 115, 1, 110.6, 71.3 , 0 )
setMoveKey( spep_2-3 + 116, 1, 117.3, 73.4 , 0 );
setMoveKey( spep_2-3 + 117, 1, 117.3, 73.4 , 0 );
setMoveKey( spep_2-3 + 118, 1, 123.5, 75.4 , 0 );
setMoveKey( spep_2-3 + 119, 1, 123.5, 75.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, 129.2, 77.1 , 0 );
setMoveKey( spep_2-3 + 121, 1, 129.2, 77.1 , 0 );
setMoveKey( spep_2-3 + 122, 1, 134.3, 78.7 , 0 );
setMoveKey( spep_2-3 + 123, 1, 134.3, 78.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, 182.3, 100.5 , 0 );
setMoveKey( spep_2-3 + 125, 1, 182.3, 100.5 , 0 );
setMoveKey( spep_2-3 + 126, 1, 154.9, 78.9 , 0 );
setMoveKey( spep_2-3 + 127, 1, 154.9, 78.9 , 0 );
setMoveKey( spep_2-3 + 128, 1, 157.5, 94.9 , 0 );
setMoveKey( spep_2-3 + 129, 1, 157.5, 94.9 , 0 );
setMoveKey( spep_2-3 + 130, 1, 160.1, 81.2 , 0 );
setMoveKey( spep_2-3 + 131, 1, 160.1, 81.2 , 0 );
setMoveKey( spep_2-3 + 132, 1, 145.3, 91.1 , 0 );
setMoveKey( spep_2-3 + 133, 1, 145.3, 91.1 , 0 );
setMoveKey( spep_2-3 + 134, 1, 165.2, 81.7 , 0 );
setMoveKey( spep_2-3 + 135, 1, 165.2, 81.7 , 0 );
setMoveKey( spep_2-3 + 136, 1, 143.3, 85.6 , 0 );
setMoveKey( spep_2-3 + 137, 1, 143.3, 85.6 , 0 );
setMoveKey( spep_2-3 + 138, 1, 169.1, 84.5 , 0 );
setMoveKey( spep_2-3 + 139, 1, 169.1, 84.5 , 0 );
setMoveKey( spep_2-3 + 140, 1, 149.4, 83.1 , 0 );
setMoveKey( spep_2-3 + 141, 1, 149.4, 83.1 , 0 );
setMoveKey( spep_2-3 + 142, 1, 157.6, 89.9 , 0 );
setMoveKey( spep_2-3 + 143, 1, 157.6, 89.9 , 0 );
setMoveKey( spep_2-3 + 144, 1, 153.6, 85.2 , 0 );
setMoveKey( spep_2-3 + 145, 1, 153.6, 85.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, 139.6, 89 , 0 );
setMoveKey( spep_2-3 + 147, 1, 139.6, 89 , 0 );
setMoveKey( spep_2-3 + 148, 1, 171.4, 88.1 , 0 );
setMoveKey( spep_2-3 + 149, 1, 171.4, 88.1 , 0 );
setMoveKey( spep_2-3 + 150, 1, 147.2, 93.1 , 0 );
setMoveKey( spep_2-3 + 151, 1, 147.2, 93.1 , 0 );
setMoveKey( spep_2-3 + 152, 1, 153, 79.6 , 0 );
setMoveKey( spep_2-3 + 153, 1, 153, 79.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, 151.5, 85.2 , 0 );
setMoveKey( spep_2-3 + 155, 1, 151.5, 85.2 , 0 );
setMoveKey( spep_2-3 + 156, 1, 162.1, 80.1 , 0 );
setMoveKey( spep_2-3 + 157, 1, 162.1, 80.1 , 0 );
setMoveKey( spep_2-3 + 158, 1, 145.9, 93.1 , 0 );
setMoveKey( spep_2-3 + 159, 1, 145.9, 93.1 , 0 );
setMoveKey( spep_2-3 + 160, 1, 151.8, 79.6 , 0 );
setMoveKey( spep_2-3 + 161, 1,151.8, 79.6 , 0 );
setMoveKey( spep_2-3 + 162, 1, 150.6, 85.2 , 0 );
setMoveKey( spep_2-3 + 165, 1, 150.6, 85.2 , 0 );

a=56;
c=-170;

setMoveKey( spep_2-3 + 166, 1, 158.5+c, -57.9 +a, 0 );
setMoveKey( spep_2-3 + 167, 1, 158.5+c, -57.9 +a, 0 );
setMoveKey( spep_2-3 + 168, 1, 158.5+c, -60.8 +a, 0 );
setMoveKey( spep_2-3 + 169, 1, 158.5+c, -60.8 +a, 0 );
setMoveKey( spep_2-3 + 170, 1, 158.5+c, -63.7 +a, 0 );
setMoveKey( spep_2-3 + 171, 1, 158.5+c, -63.7 +a, 0 );
setMoveKey( spep_2-3 + 172, 1, 158.5+c, -66.6 +a, 0 );
setMoveKey( spep_2-3 + 173, 1, 158.5+c, -66.6 +a, 0 );
setMoveKey( spep_2-3 + 174, 1, 158.5+c, -69.5 +a, 0 );
setMoveKey( spep_2-3 + 175, 1, 158.5+c, -69.5 +a, 0 );
setMoveKey( spep_2-3 + 176, 1, 158.5+c, -72.4 +a, 0 );
setMoveKey( spep_2-3 + 177, 1, 158.5+c, -72.4 +a, 0 );
setMoveKey( spep_2-3 + 178, 1, 158.5+c, -75.3 +a, 0 );
setMoveKey( spep_2-3 + 179, 1, 158.5+c, -75.3 +a, 0 );
setMoveKey( spep_2-3 + 180, 1, 158.5+c, -78.2 +a, 0 );
setMoveKey( spep_2-3 + 181, 1, 158.5+c, -78.2 +a, 0 );
setMoveKey( spep_2-3 + 182, 1, 158.5+c, -81.1 +a, 0 );
setMoveKey( spep_2-3 + 183, 1, 158.5+c, -81.1 +a, 0 );
setMoveKey( spep_2-3 + 184, 1, 158.5+c, -84 +a, 0 );
setMoveKey( spep_2-3 + 185, 1, 158.5+c, -84 +a, 0 );
setMoveKey( spep_2-3 + 186, 1, 158.5+c, -86.9 +a, 0 );
setMoveKey( spep_2-3 + 187, 1, 158.5+c, -86.9 +a, 0 );
setMoveKey( spep_2-3 + 188, 1, 158.5+c, -89.9 +a, 0 );
setMoveKey( spep_2-3 + 189, 1, 158.5+c, -89.9 +a, 0 );
setMoveKey( spep_2-3 + 190, 1, 158.5+c, -89.9 +a, 0 );
setMoveKey( spep_2-3 + 191, 1, 158.5+c, -89.9 +a, 0 );
setMoveKey( spep_2-3 + 192, 1, 158.5+c, -90.1 +a, 0 );
setMoveKey( spep_2-3 + 193, 1, 158.5+c, -90.1 +a, 0 );
setMoveKey( spep_2-3 + 194, 1, 158.5+c, -90.6 +a, 0 );
setMoveKey( spep_2-3 + 195, 1, 158.5+c, -90.6 +a, 0 );
setMoveKey( spep_2-3 + 196, 1, 158.5+c, -91.4 +a, 0 );
setMoveKey( spep_2-3 + 197, 1, 158.5+c, -91.4 +a, 0 );
setMoveKey( spep_2-3 + 198, 1, 158.5+c, -92.9 +a, 0 );
setMoveKey( spep_2-3 + 199, 1, 158.5+c, -92.9 +a, 0 );
setMoveKey( spep_2-3 + 200, 1, 158.5+c, -95.6 +a, 0 );
setMoveKey( spep_2-3 + 201, 1, 158.5+c, -95.6 +a, 0 );
setMoveKey( spep_2-3 + 202, 1, 158.5+c, -102.1 +a, 0 );
setMoveKey( spep_2-3 + 203, 1, 158.5+c, -102.1 +a, 0 );
setMoveKey( spep_2-3 + 204, 1, 158.5+c, -132.3 +a, 0 );
setMoveKey( spep_2-3 + 205, 1, 158.5+c, -132.3 +a, 0 );
setMoveKey( spep_2-3 + 206, 1, 158.4+c, -137.7 +a, 0 );
setMoveKey( spep_2-3 + 207, 1, 158.4+c, -137.7 +a, 0 );
setMoveKey( spep_2-3 + 208, 1, 224.4+c, -123.8 +a, 0 );
setMoveKey( spep_2-3 + 209, 1, 224.4+c, -123.8 +a, 0 );
setMoveKey( spep_2-3 + 210, 1, 198.9+c, 93.1 +a, 0 );
setMoveKey( spep_2-3 + 211, 1, 198.9+c, 93.1 +a, 0 );
setMoveKey( spep_2-3 + 212, 1, 211.8+c, 174 +a, 0 );
setMoveKey( spep_2-3 + 213, 1, 211.8+c, 174 +a, 0 );
setMoveKey( spep_2-3 + 214, 1, 156+c, 213.4 +a, 0 );
setMoveKey( spep_2-3 + 215, 1, 156+c, 213.4 +a, 0 );
setMoveKey( spep_2-3 + 216, 1, 121.1+c, 401 +a, 0 );
setMoveKey( spep_2-3 + 217, 1, 121.1+c, 401 +a, 0 );
setMoveKey( spep_2-3 + 218, 1, 70.1+c, 581 +a, 0 );
setMoveKey( spep_2-3 + 219, 1, 70.1+c, 581 +a, 0 );
setMoveKey( spep_2-3 + 220, 1, 30.3+c, 803.7 +a, 0 );
setMoveKey( spep_2-3 + 221, 1, 30.3+c, 803.7 +a, 0 );

setMoveKey( spep_2-3 + 222, 1, 60.1, 100 , 0 );
setMoveKey( spep_2-3 + 224, 1, 60.1, 100 , 0 );
setMoveKey( spep_2-3 + 225, 1, 60.1, 100 , 0 );
setMoveKey( spep_2-3 + 226, 1, 63.4, 114.3 , 0 );
setMoveKey( spep_2-3 + 227, 1, 63.4, 114.3 , 0 );
setMoveKey( spep_2-3 + 228, 1, 37.4, 135 , 0 );
setMoveKey( spep_2-3 + 229, 1, 37.4, 135 , 0 );
setMoveKey( spep_2-3 + 230, 1, 40, 118 , 0 );
setMoveKey( spep_2-3 + 231, 1, 40, 118 , 0 );
setMoveKey( spep_2-3 + 232, 1, 35, 131 , 0 );
setMoveKey( spep_2-3 + 233, 1, 35, 131 , 0 );
setMoveKey( spep_2-3 + 234, 1, 26, 132 , 0 );
setMoveKey( spep_2-3 + 235, 1, 26, 132 , 0 );
setMoveKey( spep_2-3 + 236, 1, 23, 129 , 0 );
setMoveKey( spep_2-3 + 237, 1, 23, 129 , 0 );
setMoveKey( spep_2-3 + 238, 1, -9, 141.8 , 0 );
setMoveKey( spep_2-3 + 239, 1, -9, 141.8 , 0 );
setMoveKey( spep_2-3 + 240, 1, -22, 121.9 , 0 );
setMoveKey( spep_2-3 + 241, 1, -22, 121.9 , 0 );
setMoveKey( spep_2-3 + 242, 1, -42, 121 , 0 );
setMoveKey( spep_2-3 + 243, 1, -42, 121 , 0 );
setMoveKey( spep_2-3 + 244, 1, -55, 108.7 , 0 );
setMoveKey( spep_2-3 + 245, 1, -55, 108.7 , 0 );
setMoveKey( spep_2-3 + 246, 1, -60, 70.4 , 0 );
setMoveKey( spep_2-3 + 247, 1, -60, 70.4 , 0 );


setMoveKey( spep_2-3 + 248, 1, -118.1, 25.7 , 0 );
setMoveKey( spep_2-3 + 249, 1, -118.1, 25.7 , 0 );
setMoveKey( spep_2-3 + 250, 1, -120.1, 54.8 , 0 );
setMoveKey( spep_2-3 + 251, 1, -120.1, 54.8 , 0 );
setMoveKey( spep_2-3 + 252, 1, -144, 10 , 0 );
setMoveKey( spep_2-3 + 253, 1, -144, 10 , 0 );
setMoveKey( spep_2-3 + 254, 1, -126, -95.4 , 0 );
setMoveKey( spep_2-3 + 255, 1, -126, -95.4 , 0 );
setMoveKey( spep_2-3 + 256, 1, -88.4, -106.2 , 0 );
setMoveKey( spep_2-3 + 257, 1, -88.4, -106.2 , 0 );

setMoveKey( spep_2-3 + 258, 1, -47, -158.1 , 0 );
setMoveKey( spep_2-3 + 259, 1, -47, -158.1 , 0 );
setMoveKey( spep_2-3 + 260, 1, -47, -98.1 , 0 );
setMoveKey( spep_2-3 + 261, 1, -47, -98.1 , 0 );
setMoveKey( spep_2-3 + 262, 1, -47, -62.1 , 0 );
setMoveKey( spep_2-3 + 263, 1, -47, -62.1 , 0 );
setMoveKey( spep_2-3 + 264, 1, -47, -50.1 , 0 );
setMoveKey( spep_2-3 + 265, 1, -47, -50.1 , 0 );
setMoveKey( spep_2-3 + 266, 1, -47.1, -53.6 , 0 );
setMoveKey( spep_2-3 + 267, 1, -47.1, -53.6 , 0 );
setMoveKey( spep_2-3 + 268, 1, -47.1, -62.7 , 0 );
setMoveKey( spep_2-3 + 269, 1, -47.1, -62.7 , 0 );
setMoveKey( spep_2-3 + 270, 1, -47.1, -75.7 , 0 );
setMoveKey( spep_2-3 + 271, 1, -47.1, -75.7 , 0 );
setMoveKey( spep_2-3 + 272, 1, -47.1, -90.2 , 0 );
setMoveKey( spep_2-3 + 273, 1, -47.1, -90.2 , 0 );
setMoveKey( spep_2-3 + 274, 1, -47.1, -103.4 , 0 );
setMoveKey( spep_2-3 + 275, 1, -47.1, -103.4 , 0 );
setMoveKey( spep_2-3 + 276, 1, -47.1, -112.8 , 0 );
setMoveKey( spep_2-3 + 277, 1, -47.1, -112.8 , 0 );
setMoveKey( spep_2-3 + 278, 1, -47, -116.1 , 0 );
setMoveKey( spep_2-3 + 279, 1, -47, -116.1 , 0 );
setMoveKey( spep_2-3 + 280, 1, -47, -112.1 , 0 );
setMoveKey( spep_2-3 + 281, 1, -47, -112.1 , 0 );
setMoveKey( spep_2-3 + 282, 1, -47, -120.1 , 0 );
setMoveKey( spep_2-3 + 283, 1, -47, -120.1 , 0 );
setMoveKey( spep_2-3 + 284, 1, -47, -116.1 , 0 );
setMoveKey( spep_2-3 + 285, 1, -47, -116.1 , 0 );
setMoveKey( spep_2-3 + 286, 1, -47, -118.1 , 0 );
setMoveKey( spep_2-3 + 287, 1, -47, -118.1 , 0 );

g=250;

setMoveKey( spep_2-3 + 288, 1, -49.9, -110.1+g , 0 );
setMoveKey( spep_2-3 + 289, 1, -49.9, -110.1+g , 0 );
setMoveKey( spep_2-3 + 290, 1, -79.2, -260.5+g , 0 );
setMoveKey( spep_2-3 + 291, 1, -79.2, -260.5+g , 0 );
setMoveKey( spep_2-3 + 292, 1, -69, -283.6+g , 0 );
setMoveKey( spep_2-3 + 293, 1, -69, -283.6+g , 0 );
setMoveKey( spep_2-3 + 294, 1, -116.5, -391.9+g , 0 );
setMoveKey( spep_2-3 + 295, 1, -116.5, -391.9+g , 0 );
setMoveKey( spep_2-3 + 296, 1, -88.9, -385.8+g , 0 );
setMoveKey( spep_2-3 + 297, 1, -88.9, -385.8+g , 0 );
setMoveKey( spep_2-3 + 298, 1, -110.8, -402.3+g , 0 );
setMoveKey( spep_2-3 + 299, 1, -110.8, -402.3+g , 0 );
setMoveKey( spep_2-3 + 300, 1, -94.4, -420.9+g , 0 );

e=-0.1;

setScaleKey( spep_2 + 0, 1, 1.59 +e, 1.59 +e );
setScaleKey( spep_2-3 + 9, 1, 1.59 +e, 1.59 +e );
setScaleKey( spep_2-3 + 10, 1, 2.02 +e, 2.02 +e );
setScaleKey( spep_2-3 + 12, 1, 1.59 +e, 1.59 +e );
setScaleKey( spep_2-3 + 14, 1, 1.83 +e, 1.83 +e );
setScaleKey( spep_2-3 + 16, 1, 1.59 +e, 1.59 +e );
setScaleKey( spep_2-3 + 56, 1, 1.59 +e, 1.59 +e );

setScaleKey( spep_2-3 + 108, 1, e + 3.46, 3.46 +e);
setScaleKey( spep_2-3 + 109, 1, e + 3.46, 3.46 +e);
setScaleKey( spep_2-3 + 110, 1, e + 1.79, 1.79 +e);
setScaleKey( spep_2-3 + 111, 1, e + 1.79, 1.79 +e);
setScaleKey( spep_2-3 + 112, 1, e + 1.37, 1.37 +e);
setScaleKey( spep_2-3 + 113, 1, e + 1.37, 1.37 +e);
setScaleKey( spep_2-3 + 114, 1, e + 0.97, 0.97 +e);
setScaleKey( spep_2-3 + 115, 1, e + 0.97, 0.97 +e);
setScaleKey( spep_2-3 + 116, 1, e + 0.95, 0.95 +e);
setScaleKey( spep_2-3 + 117, 1, e + 0.95, 0.95 +e);
setScaleKey( spep_2-3 + 118, 1, e + 0.93, 0.93 +e);
setScaleKey( spep_2-3 + 119, 1, e + 0.93, 0.93 +e);
setScaleKey( spep_2-3 + 120, 1, e + 0.92, 0.92 +e);
setScaleKey( spep_2-3 + 121, 1, e + 0.92, 0.92 +e);
setScaleKey( spep_2-3 + 122, 1, e + 0.9, 0.9 +e);
setScaleKey( spep_2-3 + 122, 1, e + 0.9, 0.9 +e);
setScaleKey( spep_2-3 + 123, 1, e + 0.9, 0.9 +e);
setScaleKey( spep_2-3 + 124, 1, e + 1.13, 1.13 +e);
setScaleKey( spep_2-3 + 125, 1, e + 1.13, 1.13 +e);
setScaleKey( spep_2-3 + 126, 1, e + 0.88, 0.88 +e);
setScaleKey( spep_2-3 + 127, 1, e + 0.88, 0.88 +e);
setScaleKey( spep_2-3 + 128, 1, e + 1, 1 +e);
setScaleKey( spep_2-3 + 129, 1, e + 1, 1 +e);
setScaleKey( spep_2-3 + 130, 1, e + 0.86, 0.86 +e);
setScaleKey( spep_2-3 + 131, 1, e + 0.86, 0.86 +e);
setScaleKey( spep_2-3 + 132, 1, e + 0.85, 0.85 +e);
setScaleKey( spep_2-3 + 133, 1, e + 0.85, 0.85 +e);
setScaleKey( spep_2-3 + 134, 1, e + 0.85, 0.85 +e);
setScaleKey( spep_2-3 + 135, 1, e + 0.85, 0.85 +e);
setScaleKey( spep_2-3 + 136, 1, e + 0.84, 0.84 +e);
setScaleKey( spep_2-3 + 141, 1, e + 0.84, 0.84 +e);
setScaleKey( spep_2-3 + 142, 1, e + 0.82, 0.82 +e);
setScaleKey( spep_2-3 + 143, 1, e + 0.82, 0.82 +e);
setScaleKey( spep_2-3 + 144, 1, e + 0.81, 0.81 +e);
setScaleKey( spep_2-3 + 145, 1, e + 0.81, 0.81 +e);
setScaleKey( spep_2-3 + 146, 1, e + 0.8, 0.8 +e);
setScaleKey( spep_2-3 + 147, 1, e + 0.8, 0.8 +e);
setScaleKey( spep_2-3 + 148, 1, e + 0.8, 0.8 +e);
setScaleKey( spep_2-3 + 149, 1, e + 0.8, 0.8 +e);
setScaleKey( spep_2-3 + 150, 1, e + 0.79, 0.79 +e);
setScaleKey( spep_2-3 + 155, 1, e + 0.79, 0.79 +e);
setScaleKey( spep_2-3 + 156, 1, e + 0.78, 0.78 +e);
setScaleKey( spep_2-3 + 162, 1, e + 0.78, 0.78 +e);
setScaleKey( spep_2-3 + 165, 1, e + 0.78, 0.78 +e);

setScaleKey( spep_2-3 + 166, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 207, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 208, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 209, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 210, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 211, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 212, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 213, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 214, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 215, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 216, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 220, 1, 1.64, 1.64 );
setScaleKey( spep_2-3 + 221, 1, 1.64, 1.64 );

f=-0.02;

setScaleKey( spep_2-3 + 222, 1, f+1.46, 1.46 +f);
setScaleKey( spep_2-3 + 223, 1, f+1.46, 1.46 +f);
setScaleKey( spep_2-3 + 224, 1, f+1.41, 1.41 +f);
setScaleKey( spep_2-3 + 225, 1, f+1.41, 1.41 +f);
setScaleKey( spep_2-3 + 226, 1, f+1.36, 1.36 +f);
setScaleKey( spep_2-3 + 227, 1, f+1.36, 1.36 +f);
setScaleKey( spep_2-3 + 228, 1, f+1.32, 1.32 +f);
setScaleKey( spep_2-3 + 229, 1, f+1.32, 1.32 +f);
setScaleKey( spep_2-3 + 230, 1, f+1.27, 1.27 +f);
setScaleKey( spep_2-3 + 231, 1, f+1.27, 1.27 +f);
setScaleKey( spep_2-3 + 232, 1, f+1.24, 1.24 +f);
setScaleKey( spep_2-3 + 233, 1, f+1.24, 1.24 +f);
setScaleKey( spep_2-3 + 234, 1, f+1.2, 1.2 +f);
setScaleKey( spep_2-3 + 235, 1, f+1.2, 1.2 +f);
setScaleKey( spep_2-3 + 236, 1, f+1.17, 1.17 +f);
setScaleKey( spep_2-3 + 237, 1, f+1.17, 1.17 +f);
setScaleKey( spep_2-3 + 238, 1, f+1.14, 1.14 +f);
setScaleKey( spep_2-3 + 239, 1, f+1.14, 1.14 +f);
setScaleKey( spep_2-3 + 240, 1, f+1.1, 1.1 +f);
setScaleKey( spep_2-3 + 241, 1, f+1.1, 1.1 +f);
setScaleKey( spep_2-3 + 242, 1, f+1.08, 1.08 +f);
setScaleKey( spep_2-3 + 243, 1, f+1.08, 1.08 +f);
setScaleKey( spep_2-3 + 244, 1, f+1.06, 1.06 +f);
setScaleKey( spep_2-3 + 245, 1, f+1.06, 1.06 +f);
setScaleKey( spep_2-3 + 246, 1, f+1.06, 1.06 +f);
setScaleKey( spep_2-3 + 247, 1, f+1.06, 1.06 +f);
setScaleKey( spep_2-3 + 248, 1, f+1.07, 1.07 +f);
setScaleKey( spep_2-3 + 249, 1, f+1.07, 1.07 +f);
setScaleKey( spep_2-3 + 250, 1, f+1.01, 1.01 +f);
setScaleKey( spep_2-3 + 251, 1, f+1.01, 1.01 +f);
setScaleKey( spep_2-3 + 252, 1, f+1.01, 1.01 +f);
setScaleKey( spep_2-3 + 253, 1, f+1.01, 1.01 +f);
setScaleKey( spep_2-3 + 254, 1, f+1, 1 +f);
setScaleKey( spep_2-3 + 257, 1, f+1, 1 +f);

setScaleKey( spep_2-3 + 258, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 287, 1, 0.32, 0.32 );

setScaleKey( spep_2-3 + 288, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 289, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 290, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 291, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 292, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 293, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 294, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 295, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 296, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 300, 1, 1.38, 1.38 );

setRotateKey( spep_2 + 0, 1, 2 );
--setRotateKey( spep_2-3 + 2, 1, 1.1 );
setRotateKey( spep_2-3 + 4, 1, 0.5 );
setRotateKey( spep_2-3 + 6, 1, 0.1 );
setRotateKey( spep_2-3 + 9, 1, 0 );
setRotateKey( spep_2-3 + 10, 1, 4.5 );
setRotateKey( spep_2-3 + 12, 1, 6.4 );
setRotateKey( spep_2-3 + 14, 1, 7.1 );
setRotateKey( spep_2-3 + 16, 1, 7.5 );
setRotateKey( spep_2-3 + 18, 1, 7.9 );
setRotateKey( spep_2-3 + 20, 1, 8.2 );
setRotateKey( spep_2-3 + 22, 1, 8.4 );
setRotateKey( spep_2-3 + 24, 1, 8.6 );
setRotateKey( spep_2-3 + 26, 1, 8.7 );
setRotateKey( spep_2-3 + 28, 1, 8.8 );
setRotateKey( spep_2-3 + 30, 1, 8.9 );
setRotateKey( spep_2-3 + 32, 1, 9 );
setRotateKey( spep_2-3 + 34, 1, 9.1 );
setRotateKey( spep_2-3 + 36, 1, 9.2 );
setRotateKey( spep_2-3 + 38, 1, 9.2 );
setRotateKey( spep_2-3 + 40, 1, 9.3 );
setRotateKey( spep_2-3 + 46, 1, 9.3 );
setRotateKey( spep_2-3 + 48, 1, 9.4 );
setRotateKey( spep_2-3 + 56, 1, 9.4 );
--[[
setRotateKey( spep_2-3 + 58, 1, 9.3 );
setRotateKey( spep_2-3 + 66, 1, 9.3 );
setRotateKey( spep_2-3 + 68, 1, 9.4 );
setRotateKey( spep_2-3 + 77, 1, 9.4 );
]]

setRotateKey( spep_2-3 + 108, 1, 4.3 );
setRotateKey( spep_2-3 + 109, 1, 4.3 );
setRotateKey( spep_2-3 + 110, 1, 11 );
setRotateKey( spep_2-3 + 111, 1, 11 );
setRotateKey( spep_2-3 + 112, 1, 14.1 );
setRotateKey( spep_2-3 + 113, 1, 14.1 );
setRotateKey( spep_2-3 + 114, 1, 15.2 );
setRotateKey( spep_2-3 + 141, 1, 15.2 );
setRotateKey( spep_2-3 + 142, 1, 15.7 );
setRotateKey( spep_2-3 + 143, 1, 15.7 );
setRotateKey( spep_2-3 + 144, 1, 16 );
setRotateKey( spep_2-3 + 145, 1, 16 );
setRotateKey( spep_2-3 + 146, 1, 16.2 );
setRotateKey( spep_2-3 + 147, 1, 16.2 );
setRotateKey( spep_2-3 + 148, 1, 16.3 );
setRotateKey( spep_2-3 + 149, 1, 16.3 );
setRotateKey( spep_2-3 + 150, 1, 16.4 );
setRotateKey( spep_2-3 + 151, 1, 16.4 );
setRotateKey( spep_2-3 + 152, 1, 16.5 );
setRotateKey( spep_2-3 + 153, 1, 16.5 );
setRotateKey( spep_2-3 + 154, 1, 16.6 );
setRotateKey( spep_2-3 + 155, 1, 16.6 );
setRotateKey( spep_2-3 + 156, 1, 16.7 );
setRotateKey( spep_2-3 + 157, 1, 16.7 );
setRotateKey( spep_2-3 + 158, 1, 16.8 );
setRotateKey( spep_2-3 + 159, 1, 16.8 );
setRotateKey( spep_2-3 + 160, 1, 16.9 );
setRotateKey( spep_2-3 + 161, 1, 16.9 );
setRotateKey( spep_2-3 + 162, 1, 16.9 );
setRotateKey( spep_2-3 + 165, 1, 16.9 );

b=30;

setRotateKey( spep_2-3 + 166, 1, -139.5 +b);
setRotateKey( spep_2-3 + 167, 1, -139.5 +b);
setRotateKey( spep_2-3 + 168, 1, -140 +b);
setRotateKey( spep_2-3 + 169, 1, -140 +b);
setRotateKey( spep_2-3 + 170, 1, -140.6 +b);
setRotateKey( spep_2-3 + 171, 1, -140.6 +b);
setRotateKey( spep_2-3 + 172, 1, -141.1 +b);
setRotateKey( spep_2-3 + 173, 1, -141.1 +b);
setRotateKey( spep_2-3 + 174, 1, -141.6 +b);
setRotateKey( spep_2-3 + 175, 1, -141.6 +b);
setRotateKey( spep_2-3 + 176, 1, -142.2 +b);
setRotateKey( spep_2-3 + 177, 1, -142.2 +b);
setRotateKey( spep_2-3 + 178, 1, -142.7 +b);
setRotateKey( spep_2-3 + 179, 1, -142.7 +b);
setRotateKey( spep_2-3 + 180, 1, -143.3 +b);
setRotateKey( spep_2-3 + 181, 1, -143.3 +b);
setRotateKey( spep_2-3 + 182, 1, -143.8 +b);
setRotateKey( spep_2-3 + 183, 1, -143.8 +b);
setRotateKey( spep_2-3 + 184, 1, -144.3 +b);
setRotateKey( spep_2-3 + 185, 1, -144.3 +b);
setRotateKey( spep_2-3 + 186, 1, -144.9 +b);
setRotateKey( spep_2-3 + 187, 1, -144.9 +b);
setRotateKey( spep_2-3 + 188, 1, -145.4 +b);
setRotateKey( spep_2-3 + 189, 1, -145.4 +b);
setRotateKey( spep_2-3 + 190, 1, -145.4 +b);
setRotateKey( spep_2-3 + 191, 1, -145.4 +b);
setRotateKey( spep_2-3 + 192, 1, -145.5 +b);
setRotateKey( spep_2-3 + 193, 1, -145.5 +b);
setRotateKey( spep_2-3 + 194, 1, -145.5 +b);
setRotateKey( spep_2-3 + 195, 1, -145.5 +b);
setRotateKey( spep_2-3 + 196, 1, -145.6 +b);
setRotateKey( spep_2-3 + 197, 1, -145.6 +b);
setRotateKey( spep_2-3 + 198, 1, -145.7 +b);
setRotateKey( spep_2-3 + 199, 1, -145.7 +b);
setRotateKey( spep_2-3 + 200, 1, -146 +b);
setRotateKey( spep_2-3 + 201, 1, -146 +b);
setRotateKey( spep_2-3 + 202, 1, -146.6 +b);
setRotateKey( spep_2-3 + 203, 1, -146.6 +b);
setRotateKey( spep_2-3 + 204, 1, -149.5 +b);
setRotateKey( spep_2-3 + 205, 1, -149.5 +b);
setRotateKey( spep_2-3 + 206, 1, -150 +b);
setRotateKey( spep_2-3 + 207, 1, -150 +b);
setRotateKey( spep_2-3 + 208, 1, -149.7 +b);
setRotateKey( spep_2-3 + 209, 1, -149.7 +b);
setRotateKey( spep_2-3 + 210, 1, -148.7 +b);
setRotateKey( spep_2-3 + 211, 1, -148.7 +b);
setRotateKey( spep_2-3 + 212, 1, -146.9 +b);
setRotateKey( spep_2-3 + 213, 1, -146.9 +b);
setRotateKey( spep_2-3 + 214, 1, -144.5 +b);
setRotateKey( spep_2-3 + 215, 1, -144.5 +b);
setRotateKey( spep_2-3 + 216, 1, -141.4 +b);
setRotateKey( spep_2-3 + 217, 1, -141.4 +b);
setRotateKey( spep_2-3 + 218, 1, -137.5 +b);
setRotateKey( spep_2-3 + 219, 1, -137.5 +b);
setRotateKey( spep_2-3 + 220, 1, -133 +b);
setRotateKey( spep_2-3 + 221, 1, -133 +b);

setRotateKey( spep_2-3 + 222, 1, -52 );
setRotateKey( spep_2-3 + 223, 1, -52 );
setRotateKey( spep_2-3 + 224, 1, -54.5 );
setRotateKey( spep_2-3 + 225, 1, -54.5 );
setRotateKey( spep_2-3 + 226, 1, -57.3 );
setRotateKey( spep_2-3 + 227, 1, -57.3 );
setRotateKey( spep_2-3 + 228, 1, -60.5 );
setRotateKey( spep_2-3 + 229, 1, -60.5 );
setRotateKey( spep_2-3 + 230, 1, -64 );
setRotateKey( spep_2-3 + 231, 1, -64 );
setRotateKey( spep_2-3 + 232, 1, -68.1 );
setRotateKey( spep_2-3 + 233, 1, -68.1 );
setRotateKey( spep_2-3 + 234, 1, -72.8 );
setRotateKey( spep_2-3 + 235, 1, -72.8 );
setRotateKey( spep_2-3 + 236, 1, -78.1 );
setRotateKey( spep_2-3 + 237, 1, -78.1 );
setRotateKey( spep_2-3 + 238, 1, -84.3 );
setRotateKey( spep_2-3 + 239, 1, -84.3 );
setRotateKey( spep_2-3 + 240, 1, -91.2 );
setRotateKey( spep_2-3 + 241, 1, -91.2 );
setRotateKey( spep_2-3 + 242, 1, -99.1 );
setRotateKey( spep_2-3 + 243, 1, -99.1 );
setRotateKey( spep_2-3 + 244, 1, -108 );
setRotateKey( spep_2-3 + 245, 1, -108 );
setRotateKey( spep_2-3 + 246, 1, -118 );
setRotateKey( spep_2-3 + 247, 1, -118 );
setRotateKey( spep_2-3 + 248, 1, -129 );
setRotateKey( spep_2-3 + 249, 1, -129 );
setRotateKey( spep_2-3 + 250, 1, -141.2 );
setRotateKey( spep_2-3 + 251, 1, -141.2 );
setRotateKey( spep_2-3 + 252, 1, -155.8 );
setRotateKey( spep_2-3 + 253, 1, -155.8 );
setRotateKey( spep_2-3 + 254, 1, -165.5 );
setRotateKey( spep_2-3 + 255, 1, -165.5 );
setRotateKey( spep_2-3 + 256, 1, -170.2 );
setRotateKey( spep_2-3 + 257, 1, -170.2 );

setRotateKey( spep_2-3 + 258, 1, 7 );
setRotateKey( spep_2-3 + 287, 1, 7 );

setRotateKey( spep_2-3 + 288, 1, 78.6 );
setRotateKey( spep_2-3 + 289, 1, 78.6 );
setRotateKey( spep_2-3 + 290, 1, 69.2 );
setRotateKey( spep_2-3 + 291, 1, 69.2 );
setRotateKey( spep_2-3 + 292, 1, 61.4 );
setRotateKey( spep_2-3 + 293, 1, 61.4 );
setRotateKey( spep_2-3 + 294, 1, 55.4 );
setRotateKey( spep_2-3 + 295, 1, 55.4 );
setRotateKey( spep_2-3 + 296, 1, 51.1 );
setRotateKey( spep_2-3 + 297, 1, 51.1 );
setRotateKey( spep_2-3 + 298, 1, 48.6 );
setRotateKey( spep_2-3 + 299, 1, 48.6 );
setRotateKey( spep_2-3 + 300, 1, 47.7 );

-- ** 音 ** --
playSe( spep_2 + 11, 1014 );  --ズンッ
setSeVolume( spep_2 + 11, 1014, 110 );

playSe( spep_2 + 54, 19 );  --バウッ
playSe( spep_2 + 54, 1002 );  --バウッ
setSeVolume( spep_2 + 54, 19, 86 );
setSeVolume( spep_2 + 54, 1002, 78 );
SE2x = playSe( spep_2 + 56, 1044 );  --地割れ
setSeVolume( spep_2 + 56, 1044, 70 );
stopSe( spep_2 + 120, SE2x, 10 );

playSe( spep_2 + 124, 1011 );  --バゴォ

playSe( spep_2 + 210, 1168 );  --岩を割る

--playSe( spep_2 + 266, 1153 );  --押し込む
playSe( spep_2 + 266, 1002 );  --押し込む
playSe( spep_2 + 266, 1068 );  --押し込む

playSe( spep_2 + 300, 1023 );  --更に押し込む
SE2 = playSe( spep_2 + 314, 1044 );  --地割れ

SE3 = playSe( spep_2 + 420, 1165 );  --地面割れて滝になる
stopSe( spep_2 + 484, SE2, 0 );
stopSe( spep_2 + 484, SE3, 0 );

-- ** ダメージ表示 ** --
dealDamage(spep_2 +350 );
endPhase( spep_2 + 484 );


end