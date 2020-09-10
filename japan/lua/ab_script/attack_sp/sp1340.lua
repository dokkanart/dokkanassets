--1018150:超サイヤ人トランクス(未来)_ヒートドームアタック
--sp_effect_b4_00113

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
--SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音

SE_12 = 09;

SP_01=	154191	;--	突進〜叩きつけまで・手前
SP_02=	154192	;--	突進〜叩きつけまで・奥
SP_03=	154193	;--	着地〜ジャイアントスイング・手前
SP_04=	154194	;--	着地〜ジャイアントスイング・真ん中
SP_05=	154195	;--	着地〜ジャイアントスイング・奥
SP_06=	154196	;--	構え
SP_07=	154197	;--	発射
SP_08=	154198	;--	迫る〜ラスト

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--突進〜叩きつけまで
------------------------------------------------------
--最初の準備
spep_0=0;


-- ** エフェクト等 ** --
dash_f = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, dash_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_f, 0 );
setEffRotateKey( spep_0 + 260, dash_f, 0 );
setEffAlphaKey( spep_0 + 0, dash_f, 0 );
setEffAlphaKey( spep_0 + 40, dash_f, 0 );
setEffAlphaKey( spep_0 + 41, dash_f, 255 );
setEffAlphaKey( spep_0 + 124, dash_f, 255 );
setEffAlphaKey( spep_0 + 125, dash_f, 0 );
setEffAlphaKey( spep_0 + 154, dash_f, 0 );
setEffAlphaKey( spep_0 + 155, dash_f, 255 );
setEffAlphaKey( spep_0 + 252, dash_f, 255 );
setEffAlphaKey( spep_0 + 253, dash_f, 0 );
setEffAlphaKey( spep_0 + 254, dash_f, 0 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_0 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, dash_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_b, 0 );
setEffRotateKey( spep_0 + 260, dash_b, 0 );
setEffAlphaKey( spep_0 + 0, dash_b, 255 );
setEffAlphaKey( spep_0 + 252, dash_b, 255 );
setEffAlphaKey( spep_0 + 253, dash_b, 0 );
setEffAlphaKey( spep_0 + 254, dash_b, 0 );

-- ** エフェクト等 ** --
dash_b2 = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_b2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, dash_b2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash_b2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, dash_b2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_b2, 0 );
setEffRotateKey( spep_0 + 260, dash_b2, 0 );
setEffAlphaKey( spep_0 + 0, dash_b2, 255 );
setEffAlphaKey( spep_0 + 40, dash_b2, 255 );
setEffAlphaKey( spep_0 + 41, dash_b2, 0 );
setEffAlphaKey( spep_0 + 124, dash_b2, 0 );
setEffAlphaKey( spep_0 + 125, dash_b2, 255 );
setEffAlphaKey( spep_0 + 154, dash_b2, 255 );
setEffAlphaKey( spep_0 + 155, dash_b2, 0 );
setEffAlphaKey( spep_0 + 260, dash_b2, 0 );

--敵の動き
setDisp( spep_0  + 0, 1, 1 );
setDisp( spep_0 -3  + 119, 1, 0 );
setDisp( spep_0 -3  + 126, 1, 1 );
setDisp( spep_0 -3  + 190, 1, 0 );
setDisp( spep_0 -3  + 194, 1, 1 );
setDisp( spep_0 -1  + 232, 1, 0 );

changeAnime( spep_0  + 0, 1, 118 );
changeAnime( spep_0 -3 + 44, 1, 107 );
changeAnime( spep_0 -3 + 68, 1, 106 );
changeAnime( spep_0 -3 + 100, 1, 105 );
changeAnime( spep_0 -3 + 126, 1, 105 );
changeAnime( spep_0 -3 + 158, 1, 8 );
changeAnime( spep_0 -3 + 194, 1, 8 );

setMoveKey( spep_0  + 0, 1, 498.1, -517.4 , 0 );
--setMoveKey( spep_0 -3 + 2, 1, 444.4, -462.7 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 390.7, -407.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 337.1, -353 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 283.5, -298.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 229.9, -243.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 225.3, -236.4 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 220.7, -229.4 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 216, -222.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 211.4, -215.4 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 206.8, -208.5 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 202.2, -201.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 197.5, -194.5 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 192.9, -187.6 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 188.3, -180.6 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 183.7, -173.6 , 0 );

setScaleKey( spep_0  + 0, 1, 5.68, 5.68 );
--setScaleKey( spep_0 -3 + 2, 1, 5.22, 5.22 );
setScaleKey( spep_0 -3 + 4, 1, 4.77, 4.77 );
setScaleKey( spep_0 -3 + 6, 1, 4.32, 4.32 );
setScaleKey( spep_0 -3 + 8, 1, 3.86, 3.86 );
setScaleKey( spep_0 -3 + 10, 1, 3.41, 3.41 );
setScaleKey( spep_0 -3 + 12, 1, 3.36, 3.36 );
setScaleKey( spep_0 -3 + 14, 1, 3.32, 3.32 );
setScaleKey( spep_0 -3 + 16, 1, 3.27, 3.27 );
setScaleKey( spep_0 -3 + 18, 1, 3.23, 3.23 );
setScaleKey( spep_0 -3 + 20, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 22, 1, 3.14, 3.14 );
setScaleKey( spep_0 -3 + 24, 1, 3.09, 3.09 );
setScaleKey( spep_0 -3 + 26, 1, 3.05, 3.05 );
setScaleKey( spep_0 -3 + 28, 1, 3, 3 );
setScaleKey( spep_0 -3 + 30, 1, 2.96, 2.96 );

setRotateKey( spep_0  + 0, 1, 5.5 );
setRotateKey( spep_0  + 1, 1, 5.5 );
setRotateKey( spep_0  + 2, 1, 5.5 );
setRotateKey( spep_0  + 3, 1, 5.5 );
setRotateKey( spep_0  + 4, 1, 5.5 );
setRotateKey( spep_0  + 5, 1, 5.5 );
setRotateKey( spep_0  + 6, 1, 5.5 );
setRotateKey( spep_0 -3 + 18, 1, 5.5 );
setRotateKey( spep_0 -3 + 20, 1, 5.4 );
setRotateKey( spep_0 + 28, 1, 5.4 );

-- ** 音 ** --
SE0 = playSe( spep_0 + 0, 9 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 28; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
 
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵座標の固定
    setMoveKey( SP_dodge + 0, 1, 183.7, -173.6 , 0 );
    setScaleKey( SP_dodge + 0, 1, 2.96, 2.96 );
    setRotateKey( SP_dodge + 0, 1, 5.4 );

    setMoveKey( SP_dodge + 10, 1, 183.7, -173.6 , 0 );
    setScaleKey( SP_dodge + 10, 1, 2.96, 2.96 );
    setRotateKey( SP_dodge + 10, 1, 5.4 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------
setMoveKey( spep_0 -3 + 32, 1, 179, -166.6 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 174.4, -159.7 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 169.8, -152.7 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 165.2, -145.7 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 160.5, -138.8 , 0 );
setMoveKey( spep_0 -3 + 43, 1, 155.9, -131.8 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 52.8, -219.1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 52.8, -187.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 41.7, -162 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 39.7, -135.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 48.7, -149.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 58.7, -148.4 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 65.6, -160.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 80.4, -168.1 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 446.3, -550.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 745.5, -856.5 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 973.7, -1095 , 0 );
setMoveKey( spep_0 -3 + 67, 1, 1135.8, -1258.7 , 0 );
setMoveKey( spep_0 -3 + 68, 1, -1169.3, 489.1 , 0 );
setMoveKey( spep_0 -3 + 70, 1, -968.4, 405.1 , 0 );
setMoveKey( spep_0 -3 + 72, 1, -778, 329.7 , 0 );
setMoveKey( spep_0 -3 + 74, 1, -580.8, 247.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, -385.9, 165.5 , 0 );
setMoveKey( spep_0 -3 + 78, 1, -195.3, 86.8 , 0 );
setMoveKey( spep_0 -3 + 80, 1, -174.9, 78.3 , 0 );
setMoveKey( spep_0 -3 + 82, 1, -154.5, 69.9 , 0 );
setMoveKey( spep_0 -3 + 84, 1, -134, 61.4 , 0 );
setMoveKey( spep_0 -3 + 86, 1, -113.6, 52.9 , 0 );
setMoveKey( spep_0 -3 + 88, 1, -93.1, 44.5 , 0 );
setMoveKey( spep_0 -3 + 90, 1, -72.7, 36 , 0 );
setMoveKey( spep_0 -3 + 92, 1, -52.3, 27.6 , 0 );
setMoveKey( spep_0 -3 + 94, 1, -38.4, 21.9 , 0 );
setMoveKey( spep_0 -3 + 96, 1, -24.5, 16.2 , 0 );
setMoveKey( spep_0 -3 + 99, 1, -10.6, 10.6 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -84.4, 107.7 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -82.7, 126.7 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -79.5, 115.1 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -64.3, 107.1 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -161.9, 353.6 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -193.9, 446 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -198.4, 443.7 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -194.8, 445.5 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -197, 438.8 , 0 );
setMoveKey( spep_0 -3 + 119, 1, -195.3, 443.9 , 0 );

setMoveKey( spep_0 -3 + 126, 1, 1121.4, -1469.9 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 866, -1116.2 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 642.6, -807.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 450.5, -541.9 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 288.7, -318.5 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 156.3, -136.4 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 52.3, 6.3 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 48, 16.8 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 43.9, 26.9 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 39.9, 36.9 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 41.6, 38.5 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 37.8, 47.8 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 33.9, 57 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 30.2, 65.8 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 26.5, 74.3 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 23.1, 82 , 0 );
setMoveKey( spep_0 -3 + 157, 1, 23.1, 82 , 0 );

setMoveKey( spep_0 -3 + 158, 1, -43.5, -186.4 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -38.5, -200.3 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -36.3, -224.9 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -29.4, -236 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -28.5, -224.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -24.4, -216.2 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -29.7, -213 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -23.6, -210 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -26.9, -212.1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -18.5, -440.9 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -20, -645.6 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -10.7, -818.6 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -8.7, -983.5 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -6.2, -1113.3 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -7.1, -1227 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -0.3, -1313.8 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -3.1, -1385.7 , 0 );

setMoveKey( spep_0 -3 + 194, 1, -21.7, 574.9 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -20.9, 440.3 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -20, 307.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -22.5, 182.8 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -21.6, 52.3 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -20.8, 44.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, -19.9, 36.4 , 0 );
setMoveKey( spep_0 -3 + 208, 1, -22.4, 34.4 , 0 );
setMoveKey( spep_0 -3 + 210, 1, -21.6, 26.6 , 0 );
setMoveKey( spep_0 -3 + 212, 1, -20.7, 18.9 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -19.9, 11.2 , 0 );
setMoveKey( spep_0 -3 + 216, 1, -19, 3.5 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -21.4, 1.8 , 0 );
setMoveKey( spep_0 -3 + 220, 1, -20.6, -5.7 , 0 );
setMoveKey( spep_0 -3 + 222, 1, -19.7, -13.1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, -18.9, -29.8 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -21.3, -40.7 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -20.5, -57 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -19.5, -73.1 , 0 );
setMoveKey( spep_0 -1 + 232, 1, -18.7, -89.1 , 0 );

setScaleKey( spep_0 -3 + 32, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 34, 1, 2.87, 2.87 );
setScaleKey( spep_0 -3 + 36, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 38, 1, 2.78, 2.78 );
setScaleKey( spep_0 -3 + 40, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 43, 1, 2.69, 2.69 );
setScaleKey( spep_0 -3 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 46, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 48, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 50, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 52, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 60, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 62, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 64, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 67, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 70, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 72, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 74, 1, 1.55, 1.55 );

z=0.38;

setScaleKey( spep_0 -3 + 74, 1, 1.55+z, 1.55+z );
setScaleKey( spep_0 -3 + 76, 1, 1.47+z, 1.47+z );
setScaleKey( spep_0 -3 + 78, 1, 1.41+z, 1.41+z );
setScaleKey( spep_0 -3 + 80, 1, 1.4+z, 1.4+z );
setScaleKey( spep_0 -3 + 82, 1, 1.39+z, 1.39+z );
setScaleKey( spep_0 -3 + 84, 1, 1.38+z, 1.38+z );
setScaleKey( spep_0 -3 + 86, 1, 1.37+z, 1.37+z );
setScaleKey( spep_0 -3 + 88, 1, 1.36+z, 1.36+z );
setScaleKey( spep_0 -3 + 90, 1, 1.35+z, 1.35+z );
setScaleKey( spep_0 -3 + 92, 1, 1.34+z, 1.34+z );
setScaleKey( spep_0 -3 + 99, 1, 1.34+z, 1.34+z );
setScaleKey( spep_0 -3 + 100, 1, 2+z, 2+z );
setScaleKey( spep_0 -3 + 102, 1, 1.85+z, 1.85+z );
setScaleKey( spep_0 -3 + 104, 1, 1.76+z, 1.76+z );
setScaleKey( spep_0 -3 + 106, 1, 1.67+z, 1.67+z );
setScaleKey( spep_0 -3 + 108, 1, 0.59+z, 0.59+z );
setScaleKey( spep_0 -3 + 110, 1, 0.25+z, 0.25+z );
setScaleKey( spep_0 -3 + 112, 1, 0.21+z, 0.21+z );
setScaleKey( spep_0 -3 + 114, 1, 0.16+z, 0.16+z );
setScaleKey( spep_0 -3 + 116, 1, 0.12+z, 0.12+z );
setScaleKey( spep_0 -3 + 119, 1, 0.08+z, 0.08+z );



setScaleKey( spep_0 -3 + 126, 1, 10.01+z, 10.01+z );
setScaleKey( spep_0 -3 + 128, 1, 8.11+z, 8.11+z );
setScaleKey( spep_0 -3 + 130, 1, 6.43+z, 6.43+z );
setScaleKey( spep_0 -3 + 132, 1, 4.98+z, 4.98+z );
setScaleKey( spep_0 -3 + 134, 1, 3.77+z, 3.77+z );
setScaleKey( spep_0 -3 + 136, 1, 2.77+z, 2.77+z );
setScaleKey( spep_0 -3 + 138, 1, 1.99+z, 1.99+z );
setScaleKey( spep_0 -3 + 140, 1, 1.91+z, 1.91+z );
setScaleKey( spep_0 -3 + 142, 1, 1.84+z, 1.84+z );
setScaleKey( spep_0 -3 + 144, 1, 1.76+z, 1.76+z );
setScaleKey( spep_0 -3 + 146, 1, 1.68+z, 1.68+z );
setScaleKey( spep_0 -3 + 148, 1, 1.63+z, 1.63+z );
setScaleKey( spep_0 -3 + 150, 1, 1.56+z, 1.56+z );
setScaleKey( spep_0 -3 + 152, 1, 1.49+z, 1.49+z );
setScaleKey( spep_0 -3 + 154, 1, 1.43+z, 1.43+z );
setScaleKey( spep_0 -3 + 156, 1, 1.36+z, 1.36+z );
setScaleKey( spep_0 -3 + 157, 1, 1.36+z, 1.36+z );

setScaleKey( spep_0 -3 + 158, 1, 2.27+z, 2.27+z );
setScaleKey( spep_0 -3 + 160, 1, 2.17+z, 2.17+z );
setScaleKey( spep_0 -3 + 162, 1, 2.05+z, 2.05+z );
setScaleKey( spep_0 -3 + 164, 1, 1.95+z, 1.95+z );
setScaleKey( spep_0 -3 + 166, 1, 1.85+z, 1.85+z );
setScaleKey( spep_0 -3 + 168, 1, 1.81+z, 1.81+z );
setScaleKey( spep_0 -3 + 170, 1, 1.78+z, 1.78+z );
setScaleKey( spep_0 -3 + 172, 1, 1.74+z, 1.74+z );
setScaleKey( spep_0 -3 + 174, 1, 1.71+z, 1.71+z );
setScaleKey( spep_0 -3 + 176, 1, 1.68+z, 1.68+z );
setScaleKey( spep_0 -3 + 178, 1, 1.65+z, 1.65+z );
setScaleKey( spep_0 -3 + 180, 1, 1.61+z, 1.61+z );
setScaleKey( spep_0 -3 + 182, 1, 1.59+z, 1.59+z );
setScaleKey( spep_0 -3 + 184, 1, 1.58+z, 1.58+z );
setScaleKey( spep_0 -3 + 186, 1, 1.56+z, 1.56+z );
setScaleKey( spep_0 -3 + 188, 1, 1.54+z, 1.54+z );
setScaleKey( spep_0 -3 + 190, 1, 1.53+z, 1.53+z );

setScaleKey( spep_0 -3 + 194, 1, 1.52+z, 1.52+z );
setScaleKey( spep_0 -3 + 196, 1, 1.51+z, 1.51+z );
setScaleKey( spep_0 -3 + 198, 1, 1.5+z, 1.5+z );
setScaleKey( spep_0 -3 + 200, 1, 1.5+z, 1.5+z );
setScaleKey( spep_0 -3 + 202, 1, 1.49+z, 1.49+z );
setScaleKey( spep_0 -3 + 204, 1, 1.44+z, 1.44+z );
setScaleKey( spep_0 -3 + 206, 1, 1.4+z, 1.4+z );
setScaleKey( spep_0 -3 + 208, 1, 1.36+z, 1.36+z );
setScaleKey( spep_0 -3 + 210, 1, 1.32+z, 1.32+z );
setScaleKey( spep_0 -3 + 212, 1, 1.28+z, 1.28+z );
setScaleKey( spep_0 -3 + 214, 1, 1.23+z, 1.23+z );
setScaleKey( spep_0 -3 + 216, 1, 1.19+z, 1.19+z );
setScaleKey( spep_0 -3 + 218, 1, 1.16+z, 1.16+z );
setScaleKey( spep_0 -3 + 220, 1, 1.11+z, 1.11+z );
setScaleKey( spep_0 -3 + 222, 1, 1.07+z, 1.07+z );
setScaleKey( spep_0 -3 + 224, 1, 0.97+z, 0.97+z );
setScaleKey( spep_0 -3 + 226, 1, 0.87+z, 0.87+z );
setScaleKey( spep_0 -3 + 228, 1, 0.77+z, 0.77+z );
setScaleKey( spep_0 -3 + 230, 1, 0.67+z, 0.67+z );
setScaleKey( spep_0 -1 + 232, 1, 0.57+z, 0.57+z );

setRotateKey( spep_0 -3 + 34, 1, 5.4 );
setRotateKey( spep_0 -3 + 36, 1, 5.3 );
setRotateKey( spep_0 -3 + 43, 1, 5.3 );
setRotateKey( spep_0 -3 + 44, 1, -9.5 );
setRotateKey( spep_0 -3 + 67, 1, -9.5 );
setRotateKey( spep_0 -3 + 68, 1, 67.9 );
setRotateKey( spep_0 -3 + 72, 1, 67.9 );
setRotateKey( spep_0 -3 + 74, 1, 68 );
setRotateKey( spep_0 -3 + 99, 1, 68 );
setRotateKey( spep_0 -3 + 100, 1, -43.9 );
setRotateKey( spep_0 -3 + 119, 1, -43.9 );

setRotateKey( spep_0 -3 + 126, 1, -60 );
setRotateKey( spep_0 -3 + 128, 1, -60 );
setRotateKey( spep_0 -3 + 130, 1, -60.1 );
setRotateKey( spep_0 -3 + 148, 1, -60.1 );
setRotateKey( spep_0 -3 + 150, 1, -60 );
setRotateKey( spep_0 -3 + 156, 1, -60 );
setRotateKey( spep_0 -3 + 157, 1, -60 );

setRotateKey( spep_0 -3 + 158, 1, -90 );
setRotateKey( spep_0 -3 + 190, 1, -90 );

setRotateKey( spep_0 -3 + 194, 1, -90 );
setRotateKey( spep_0 -1 + 232, 1, -90 );

--文字エントリー
ctbaki = entryEffectLife( spep_0 -3 + 44,  10020, 16, 0x100, -1, 0, 152.3, 284.2 );--バキッ

setEffMoveKey( spep_0 -3 + 44, ctbaki, 152.3, 284.2 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctbaki, 148, 311.2 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctbaki, 152.3, 284.1 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctbaki, 152.3, 284 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctbaki, 149.6, 301.5 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctbaki, 152.4, 284 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctbaki, 152.4, 283.9 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctbaki, 149.8, 300.3 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctbaki, 152.3, 284.1 , 0 );

setEffScaleKey( spep_0 -3 + 44, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_0 -3 + 46, ctbaki, 3.22, 3.22 );
setEffScaleKey( spep_0 -3 + 48, ctbaki, 2.7, 2.7 );
setEffScaleKey( spep_0 -3 + 50, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_0 -3 + 52, ctbaki, 2.09, 2.09 );
setEffScaleKey( spep_0 -3 + 54, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_0 -3 + 56, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_0 -3 + 58, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_0 -3 + 60, ctbaki, 1.96, 1.96 );

setEffRotateKey( spep_0 -3 + 44, ctbaki, 36.1 );
setEffRotateKey( spep_0 -3 + 60, ctbaki, 36.1 );

setEffAlphaKey( spep_0 -3 + 44, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 56, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 58, ctbaki, 134 );
setEffAlphaKey( spep_0 -3 + 60, ctbaki, 13 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_0 -3 + 100,  10020, 16, 0x100, -1, 0, 31.8, 320.8 );--バキッ

setEffMoveKey( spep_0 -3 + 100, ctbaki2, 31.8, 320.8 , 0 );
setEffMoveKey( spep_0 -3 + 102, ctbaki2, 15.8, 339.2 , 0 );
setEffMoveKey( spep_0 -3 + 104, ctbaki2, 32, 320.8 , 0 );
setEffMoveKey( spep_0 -3 + 106, ctbaki2, 32, 320.7 , 0 );
setEffMoveKey( spep_0 -3 + 108, ctbaki2, 21.5, 332.6 , 0 );
setEffMoveKey( spep_0 -3 + 110, ctbaki2, 32, 320.7 , 0 );
setEffMoveKey( spep_0 -3 + 112, ctbaki2, 32, 320.7 , 0 );
setEffMoveKey( spep_0 -3 + 114, ctbaki2, 22.2, 331.9 , 0 );
setEffMoveKey( spep_0 -3 + 116, ctbaki2, 32, 320.8 , 0 );

setEffScaleKey( spep_0 -3 + 100, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_0 -3 + 102, ctbaki2, 2.88, 2.88 );
setEffScaleKey( spep_0 -3 + 104, ctbaki2, 2.41, 2.41 );
setEffScaleKey( spep_0 -3 + 106, ctbaki2, 1.94, 1.94 );
setEffScaleKey( spep_0 -3 + 108, ctbaki2, 1.87, 1.87 );
setEffScaleKey( spep_0 -3 + 110, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_0 -3 + 112, ctbaki2, 1.73, 1.73 );
setEffScaleKey( spep_0 -3 + 114, ctbaki2, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 116, ctbaki2, 1.76, 1.76 );

setEffRotateKey( spep_0 -3 + 100, ctbaki2, 3.8 );
setEffRotateKey( spep_0 -3 + 116, ctbaki2, 3.8 );

setEffAlphaKey( spep_0 -3 + 100, ctbaki2, 255 );
setEffAlphaKey( spep_0 -3 + 112, ctbaki2, 255 );
setEffAlphaKey( spep_0 -3 + 114, ctbaki2, 134 );
setEffAlphaKey( spep_0 -3 + 116, ctbaki2, 13 );

--文字エントリー
ctzun = entryEffectLife( spep_0 -3 + 158,  10016, 16, 0x100, -1, 0, 98.6, 361.4 );--ズンッ

setEffMoveKey( spep_0 -3 + 158, ctzun, 98.6, 361.4 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctzun, 98.6, 361.5 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctzun, 93.1, 370.1 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctzun, 98.8, 361.3 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctzun, 98.8, 361.2 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctzun, 94, 368.5 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctzun, 94.2, 367.9 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctzun, 98.6, 361.4 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctzun, 98.6, 361.6 , 0 );

setEffScaleKey( spep_0 -3 + 158, ctzun, 1.52, 1.52 );
setEffScaleKey( spep_0 -3 + 160, ctzun, 3.7, 3.7 );
setEffScaleKey( spep_0 -3 + 162, ctzun, 3.51, 3.51 );
setEffScaleKey( spep_0 -3 + 164, ctzun, 3.31, 3.31 );
setEffScaleKey( spep_0 -3 + 166, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0 -3 + 168, ctzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 170, ctzun, 2.71, 2.71 );
setEffScaleKey( spep_0 -3 + 172, ctzun, 2.46, 2.46 );
setEffScaleKey( spep_0 -3 + 174, ctzun, 2.2, 2.2 );

setEffRotateKey( spep_0 -3 + 158, ctzun, 15 );
setEffRotateKey( spep_0 -3 + 166, ctzun, 15 );
setEffRotateKey( spep_0 -3 + 168, ctzun, 14.9 );
setEffRotateKey( spep_0 -3 + 170, ctzun, 14.8 );
setEffRotateKey( spep_0 -3 + 172, ctzun, 14.9 );
setEffRotateKey( spep_0 -3 + 174, ctzun, 15 );

setEffAlphaKey( spep_0 -3 + 158, ctzun, 255 );
setEffAlphaKey( spep_0 -3 + 166, ctzun, 255 );
setEffAlphaKey( spep_0 -3 + 168, ctzun, 223 );
setEffAlphaKey( spep_0 -3 + 170, ctzun, 191 );
setEffAlphaKey( spep_0 -3 + 172, ctzun, 102 );
setEffAlphaKey( spep_0 -3 + 174, ctzun, 13 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 44,  906, 34, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 44, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 44, shuchusen1, 1.07, 1.4 );
setEffScaleKey( spep_0 -3 + 78, shuchusen1, 1.07, 1.4 );

setEffRotateKey( spep_0 -3 + 44, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 44, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 66, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 68, shuchusen1, 213 );
setEffAlphaKey( spep_0 -3 + 70, shuchusen1, 170 );
setEffAlphaKey( spep_0 -3 + 72, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 74, shuchusen1, 85 );
setEffAlphaKey( spep_0 -3 + 76, shuchusen1, 42 );
setEffAlphaKey( spep_0 -3 + 78, shuchusen1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_0 -3 + 100,  906, 12, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 100, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 112, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 100, shuchusen2, 1.07, 1.4 );
setEffScaleKey( spep_0 -3 + 112, shuchusen2, 1.07, 1.4 );

setEffRotateKey( spep_0 -3 + 100, shuchusen2, 180 );
setEffRotateKey( spep_0 -3 + 112, shuchusen2, 180 );

setEffAlphaKey( spep_0 -3 + 100, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 108, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 110, shuchusen2, 128 );
setEffAlphaKey( spep_0 -3 + 112, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_0 -3 + 158,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 158, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 196, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 158, shuchusen3, 1.07, 1.4 );
setEffScaleKey( spep_0 -3 + 196, shuchusen3, 1.07, 1.4 );

setEffRotateKey( spep_0 -3 + 158, shuchusen3, 180 );
setEffRotateKey( spep_0 -3 + 196, shuchusen3, 180 );

setEffAlphaKey( spep_0 -3 + 158, shuchusen3, 255 );
setEffAlphaKey( spep_0 -3 + 192, shuchusen3, 255 );
setEffAlphaKey( spep_0 -3 + 194, shuchusen3, 128 );
setEffAlphaKey( spep_0 -3 + 196, shuchusen3, 0 );

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 41, 0, 6, 2, fcolor_r, fcolor_g, fcolor_b, 160 );  --white fade
entryFade( spep_0 + 97, 0, 6, 2, fcolor_r, fcolor_g, fcolor_b, 160 );  --white fade
entryFade( spep_0 + 155, 0, 6, 2, fcolor_r, fcolor_g, fcolor_b, 160 );  --white fade

-- ** 音 ** --
playSe( spep_0 -3 + 44, 1010 );  --殴る
setSeVolume( spep_0 -3 + 44, 1010, 110 );
playSe( spep_0 + 76, 43 );  --現れる
playSe( spep_0 -3 + 100, 1010 );  --蹴り上げ
playSe( spep_0 + 126, 1109 );  --現れる
playSe( spep_0 -3 + 158, 1011 );  --叩きつけ

SE1 = playSe( spep_0 + 192, 1116 );  --落ちる
stopSe( spep_0 + 226, SE1, 20 );
setSeVolume( spep_0 + 192, 1116, 150 );
setSeVolume( spep_0 + 200, 1116, 110 );
setSeVolume( spep_0 + 220, 1116, 80 );

playSe( spep_0 + 232, 1023 );  --落ちた
playSe( spep_0 + 260, 44 );  --下に降りる
playSe( spep_0 + 298, 1108 );  --着地
setSeVolume( spep_0 + 298, 1108, 130 );
playSe( spep_0 + 314 -10, 1072 );  --掴む
setSeVolume( spep_0 + 314, 1072, 130 );

SE2 = playSe( spep_0 + 360, 1044 );  --土煙
setSeVolume( spep_0 + 360, 1044, 50 );
setSeVolume( spep_0 + 400, 1044, 80 );
setSeVolume( spep_0 + 440, 1044, 120 );
stopSe( spep_0 + 460, SE2, 20 );

playSe( spep_0 + 350, 8 );  --回す
playSe( spep_0 + 372, 8 );  --回す
playSe( spep_0 + 394, 8 );  --回す
playSe( spep_0 + 412, 8 );  --回す
playSe( spep_0 + 430, 8 );  --回す
playSe( spep_0 + 450, 8 );  --回す
playSe( spep_0 + 456, 7 );  --投げる
setSeVolume( spep_0 + 456, 7, 118 );

--最初の準備
spep_1=spep_0+252;

------------------------------------------------------
--突進〜叩きつけまで
------------------------------------------------------
-- ** エフェクト等 ** --
swing_n2 = entryEffect( spep_1 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, swing_n2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 246, swing_n2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, swing_n2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 246, swing_n2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, swing_n2, 0 );
setEffRotateKey( spep_1 + 246, swing_n2, 0 );
setEffAlphaKey( spep_1 + 0, swing_n2, 255 );
setEffAlphaKey( spep_1 + 109, swing_n2, 255 );
setEffAlphaKey( spep_1 + 110, swing_n2, 255 );
setEffAlphaKey( spep_1 + 111, swing_n2, 0 );
setEffAlphaKey( spep_1 + 112, swing_n2, 0 );
setEffAlphaKey( spep_1 + 118, swing_n2, 0 );
setEffAlphaKey( spep_1 + 119, swing_n2, 255 );
setEffAlphaKey( spep_1 + 120, swing_n2, 255 );
setEffAlphaKey( spep_1 + 134, swing_n2, 255 );
setEffAlphaKey( spep_1 + 135, swing_n2, 0 );
setEffAlphaKey( spep_1 + 136, swing_n2, 0 );
setEffAlphaKey( spep_1 + 142, swing_n2, 0 );
setEffAlphaKey( spep_1 + 143, swing_n2, 255 );
setEffAlphaKey( spep_1 + 144, swing_n2, 255 );
setEffAlphaKey( spep_1 + 150, swing_n2, 255 );
setEffAlphaKey( spep_1 + 151, swing_n2, 0 );
setEffAlphaKey( spep_1 + 152, swing_n2, 0 );
setEffAlphaKey( spep_1 + 154, swing_n2, 0 );
setEffAlphaKey( spep_1 + 155, swing_n2, 255 );
setEffAlphaKey( spep_1 + 156, swing_n2, 255 );
setEffAlphaKey( spep_1 + 162, swing_n2, 255 );
setEffAlphaKey( spep_1 + 163, swing_n2, 0 );
setEffAlphaKey( spep_1 + 164, swing_n2, 0 );
setEffAlphaKey( spep_1 + 166, swing_n2, 0 );
setEffAlphaKey( spep_1 + 167, swing_n2, 255 );
setEffAlphaKey( spep_1 + 168, swing_n2, 255 );
setEffAlphaKey( spep_1 + 174, swing_n2, 255 );
setEffAlphaKey( spep_1 + 175, swing_n2, 0 );
setEffAlphaKey( spep_1 + 176, swing_n2, 0 );
setEffAlphaKey( spep_1 + 178, swing_n2, 0 );
setEffAlphaKey( spep_1 + 179, swing_n2, 255 );
setEffAlphaKey( spep_1 + 180, swing_n2, 255 );
setEffAlphaKey( spep_1 + 246, swing_n2, 255 );

-- ** エフェクト等 ** --
swing_f = entryEffect( spep_1 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, swing_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 246, swing_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, swing_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 246, swing_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, swing_f, 0 );
setEffRotateKey( spep_1 + 246, swing_f, 0 );
setEffAlphaKey( spep_1 + 0, swing_f, 255 );
setEffAlphaKey( spep_1 + 246, swing_f, 255 );

-- ** エフェクト等 ** --
swing_b = entryEffect( spep_1 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, swing_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 246, swing_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, swing_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 246, swing_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, swing_b, 0 );
setEffRotateKey( spep_1 + 246, swing_b, 0 );
setEffAlphaKey( spep_1 + 0, swing_b, 255 );
setEffAlphaKey( spep_1 + 246, swing_b, 255 );

-- ** エフェクト等 ** --
swing_n = entryEffect( spep_1 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, swing_n, 0, 0 , 0 );
setEffMoveKey( spep_1 + 246, swing_n, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, swing_n, 1.0, 1.0 );
setEffScaleKey( spep_1 + 246, swing_n, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, swing_n, 0 );
setEffRotateKey( spep_1 + 246, swing_n, 0 );
setEffAlphaKey( spep_1 + 0, swing_n, 255 );
setEffAlphaKey( spep_1 + 246, swing_n, 255 );

--敵の動き
setDisp( spep_1 -3  + 98, 1, 1 );
setDisp( spep_1   + 181, 1, 0 );
setDisp( spep_1   + 205, 1, 1 );
setDisp( spep_1   + 250, 1, 0 );

changeAnime( spep_1 -3  + 98, 1, 106 );
changeAnime( spep_1 -3  + 102, 1, 105 );
changeAnime( spep_1 -3  + 110, 1, 106 );
changeAnime( spep_1 -3  + 114, 1, 7 );
changeAnime( spep_1 -3  + 122, 1, 106 );
changeAnime( spep_1 -3  + 126, 1, 105 );
changeAnime( spep_1 -3  + 134, 1, 106 );
changeAnime( spep_1 -3  + 138, 1, 7 );
changeAnime( spep_1 -3  + 146, 1, 106 );
changeAnime( spep_1 -3  + 148, 1, 105 );
changeAnime( spep_1 -3  + 152, 1, 106 );
changeAnime( spep_1 -3  + 154, 1, 7 );
changeAnime( spep_1 -3  + 158, 1, 106 );
changeAnime( spep_1 -3  + 160, 1, 105 );
changeAnime( spep_1 -3  + 164, 1, 106 );
changeAnime( spep_1 -3  + 166, 1, 7 );
changeAnime( spep_1 -3  + 170, 1, 106 );
changeAnime( spep_1 -3  + 172, 1, 105 );
changeAnime( spep_1 -3  + 176, 1, 106 );
changeAnime( spep_1 -3  + 178, 1, 7 );
changeAnime( spep_1 -3  + 182, 1, 106 );
changeAnime( spep_1 -3  + 208, 1, 107 );

setMoveKey( spep_1 -3 + 98, 1, 571.8, 317.7 , 0 );--106
setMoveKey( spep_1 -3 + 100, 1, 502.7, 415.6 , 0 );
setMoveKey( spep_1 -3 + 101, 1, 502.7, 415.6 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 290.4, 616.7 , 0 );--105
setMoveKey( spep_1 -3 + 104, 1, 125.7, 673.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 32.4, 687.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -57.5, 684.2 , 0 );
setMoveKey( spep_1 -3 + 109, 1, -57.5, 684.2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, -250.2, 521.3 , 0 );--106
setMoveKey( spep_1 -3 + 112, 1, -353.9, 420.6 , 0 );
setMoveKey( spep_1 -3 + 113, 1, -353.9, 420.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -175.8-86, 186.2-110 , 0 );--7
setMoveKey( spep_1 -3 + 115, 1, -175.8-86, 186.2-110 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -138.8-80, -31.1-60 , 0 );
setMoveKey( spep_1 -3 + 117, 1, -138.8-80, -31.1-60 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 391.8-100, 40-60 , 0 );
setMoveKey( spep_1 -3 + 119, 1, 391.8-100, 40-60 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 411.4-115, 147.5-40 , 0 );
setMoveKey( spep_1 -3 + 121, 1, 411.4-115, 147.5-40 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 424.3, 234.8 , 0 );--106
setMoveKey( spep_1 -3 + 124, 1, 350.2, 311.8 , 0 );
setMoveKey( spep_1 -3 + 125, 1, 350.2, 311.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 212.3, 450.4 , 0 );--105
setMoveKey( spep_1 -3 + 128, 1, 94, 504.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 25, 528.7 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -45.3, 538.6 , 0 );
setMoveKey( spep_1 -3 + 133, 1, -45.3, 538.6 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -260.3, 453 , 0 );--106
setMoveKey( spep_1 -3 + 136, 1, -358.9, 340.1 , 0 );
setMoveKey( spep_1 -3 + 137, 1, -358.9, 340.1 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -117.1-100, 154.2-40 , 0 );--7
setMoveKey( spep_1 -3 + 139, 1, -117.1-100, 154.2-40 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -102.3-90, 18.3-60 , 0 );
setMoveKey( spep_1 -3 + 141, 1, -102.3-90, 18.3-60 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 358.3-100, 88.8-50 , 0 );
setMoveKey( spep_1 -3 + 143, 1, 358.3-100, 88.8-50 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 376.3-105, 145.4-60 , 0 );
setMoveKey( spep_1 -3 + 145, 1, 376.3-105, 145.4-60 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 328.6, 182.6 , 0 );--106
setMoveKey( spep_1 -3 + 147, 1, 328.6, 182.6 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 177.3, 377.8 , 0 );--105
setMoveKey( spep_1 -3 + 150, 1, 19.5, 450.2 , 0 );
setMoveKey( spep_1 -3 + 151, 1, 19.5, 450.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -179, 366.9 , 0 );--106
setMoveKey( spep_1 -3 + 153, 1, -179, 366.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, -103.9-70, 153.6-50 , 0 );--107
setMoveKey( spep_1 -3 + 155, 1, -103.9-70, 153.6-50 , 0 );--107
setMoveKey( spep_1 -3 + 156, 1, 319.6-110, 48.5-90 , 0 );
setMoveKey( spep_1 -3 + 157, 1, 319.6-110, 48.5-90 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 303.9, 172.9 , 0 );--106
setMoveKey( spep_1 -3 + 159, 1, 303.9, 172.9 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 159, 351.4 , 0 );--105
setMoveKey( spep_1 -3 + 162, 1, 13.2, 417.5 , 0 );
setMoveKey( spep_1 -3 + 163, 1, 13.2, 417.5 , 0 );
setMoveKey( spep_1 -3 + 164, 1, -168.5, 336.8 , 0 );--106
setMoveKey( spep_1 -3 + 165, 1, -168.5, 336.8 , 0 );
setMoveKey( spep_1 -3 + 166, 1, -103.9-80, 153.6-80 , 0 );--107
setMoveKey( spep_1 -3 + 167, 1, -103.9-80, 153.6-80 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 319.6-120, 48.5-90 , 0 );
setMoveKey( spep_1 -3 + 169, 1, 319.6-120, 48.5-90 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 276.3, 162.7 , 0 );--106
setMoveKey( spep_1 -3 + 171, 1, 276.3, 162.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 143.3, 325.4 , 0 );--105
setMoveKey( spep_1 -3 + 174, 1, 7.6, 384.7 , 0 );
setMoveKey( spep_1 -3 + 175, 1, 7.6, 384.7 , 0 );
setMoveKey( spep_1 -3 + 176, 1, -159, 307.7 , 0 );--106
setMoveKey( spep_1 -3 + 177, 1, -159, 307.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, -103.9-68, 153.6-85 , 0 );--107
setMoveKey( spep_1 -3 + 179, 1, -103.9-68, 153.6-85 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 319.6-140, 48.5-60 , 0 );
setMoveKey( spep_1 -3 + 181, 1, 319.6-140, 48.5-60 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 252.1, 151.8 , 0 );--106
setMoveKey( spep_1 -3 + 183, 1, 252.1, 151.8 , 0 );

setMoveKey( spep_1 -3 + 208, 1, 105.9, 115.2 , 0 );--107
setMoveKey( spep_1 -3 + 210, 1, 115.6, 127.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 123.4, 136.2 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 129.4, 142.7 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 133.7, 146.4 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 136.1, 147.2 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 143.9, 155.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 151.3, 164.5 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 157.3, 170.5 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 163.2, 176.4 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 168.6, 182.1 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 174.1, 187.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 179.3, 192.5 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 184.2, 197.5 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 189.1, 202 , 0 );
setMoveKey( spep_1 -3 + 238, 1, 193.8, 206.3 , 0 );
setMoveKey( spep_1 -3 + 240, 1, 198.2, 210.4 , 0 );
setMoveKey( spep_1 -3 + 242, 1, 202.4, 214.2 , 0 );
setMoveKey( spep_1 -3 + 244, 1, 206.6, 217.6 , 0 );
setMoveKey( spep_1 -3 + 246, 1, 210.5, 220.9 , 0 );
setMoveKey( spep_1 -3 + 248, 1, 214.2, 223.9 , 0 );

setScaleKey( spep_1 -3 + 98, 1, 3.66, 3.66 );--106
setScaleKey( spep_1 -3 + 100, 1, 3.4, 3.4 );
setScaleKey( spep_1 -3 + 101, 1, 3.4, 3.4 );
setScaleKey( spep_1 -3 + 102, 1, 2.57, 2.57 );--105
setScaleKey( spep_1 -3 + 104, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 106, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 108, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 109, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 110, 1, 2.5, 2.5 );--106
setScaleKey( spep_1 -3 + 112, 1, 2.75, 2.75 );
setScaleKey( spep_1 -3 + 113, 1, 2.75, 2.75 );
setScaleKey( spep_1 -3 + 114, 1, 1.15, 1.15 );--107
setScaleKey( spep_1 -3 + 115, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 116, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 117, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 118, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 119, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 120, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 121, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 122, 1, 2.56, 2.56 );--106
setScaleKey( spep_1 -3 + 124, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 125, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 126, 1, 1.88, 1.88 );--105
setScaleKey( spep_1 -3 + 128, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 130, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 132, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 133, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 134, 1, 2.32, 2.32 );--106
setScaleKey( spep_1 -3 + 136, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 137, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 138, 1, 0.96, 0.96 );--107
setScaleKey( spep_1 -3 + 139, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 140, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 141, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 142, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 143, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 144, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 145, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 146, 1, 2.1, 2.1 );--106
setScaleKey( spep_1 -3 + 147, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 148, 1, 1.57, 1.57 );--105
setScaleKey( spep_1 -3 + 150, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 151, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 152, 1, 1.76, 1.76 );--106
setScaleKey( spep_1 -3 + 153, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 154, 1, 0.85, 0.85 );--107
setScaleKey( spep_1 -3 + 155, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 156, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 157, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 158, 1, 1.96, 1.96 );--106
setScaleKey( spep_1 -3 + 159, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 160, 1, 1.45, 1.45 );--105
setScaleKey( spep_1 -3 + 162, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 163, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 164, 1, 1.62, 1.62 );--106
setScaleKey( spep_1 -3 + 165, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 166, 1, 0.79, 0.79 );--107
setScaleKey( spep_1 -3 + 167, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 168, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 169, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 170, 1, 1.79, 1.79 );--106
setScaleKey( spep_1 -3 + 171, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 172, 1, 1.34, 1.34 );--105
setScaleKey( spep_1 -3 + 174, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 175, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 176, 1, 1.49, 1.49 );--106
setScaleKey( spep_1 -3 + 177, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 178, 1, 0.71, 0.71 );--107
setScaleKey( spep_1 -3 + 179, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 180, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 181, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 182, 1, 1.65, 1.65 );--106
setScaleKey( spep_1 -3 + 183, 1, 1.65, 1.65 );--106

setScaleKey( spep_1 -3 + 208, 1, 0.62, 0.62 );--107
setScaleKey( spep_1 -3 + 210, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 212, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 214, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 216, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 218, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 220, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 222, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 224, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 226, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 228, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 230, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 232, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 234, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 236, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 238, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 240, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 242, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 244, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 246, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 248, 1, 1.69, 1.69 );


setRotateKey( spep_1 -3 + 98, 1, 27.5 );--106
setRotateKey( spep_1 -3 + 100, 1, 17.1 );
setRotateKey( spep_1 -3 + 101, 1, 17.1 );
setRotateKey( spep_1 -3 + 102, 1, -18.7 );--105
setRotateKey( spep_1 -3 + 104, 1, -46.6 );
setRotateKey( spep_1 -3 + 106, 1, -68.6 );
setRotateKey( spep_1 -3 + 108, 1, -78 );
setRotateKey( spep_1 -3 + 109, 1, -78 );
setRotateKey( spep_1 -3 + 110, 1, -103.8 );--106
setRotateKey( spep_1 -3 + 112, 1, -126.5 );
setRotateKey( spep_1 -3 + 113, 1, -126.5 );
setRotateKey( spep_1 -3 + 114, 1, 30 );--7
setRotateKey( spep_1 -3 + 115, 1, 30 );
setRotateKey( spep_1 -3 + 116, 1, -5 );
setRotateKey( spep_1 -3 + 117, 1, -5 );
setRotateKey( spep_1 -3 + 118, 1, -120 );
setRotateKey( spep_1 -3 + 119, 1, -120 );
setRotateKey( spep_1 -3 + 120, 1, -140 );
setRotateKey( spep_1 -3 + 121, 1, -140 );
setRotateKey( spep_1 -3 + 122, 1, 24.3 );--106
setRotateKey( spep_1 -3 + 124, 1, 14.1 );
setRotateKey( spep_1 -3 + 125, 1, 14.1 );
setRotateKey( spep_1 -3 + 126, 1, -18.7 );--105
setRotateKey( spep_1 -3 + 128, 1, -46.6 );
setRotateKey( spep_1 -3 + 130, 1, -68.6 );
setRotateKey( spep_1 -3 + 132, 1, -78 );
setRotateKey( spep_1 -3 + 133, 1, -78 );
setRotateKey( spep_1 -3 + 134, 1, -106.6 );--106
setRotateKey( spep_1 -3 + 136, 1, -130.2 );
setRotateKey( spep_1 -3 + 137, 1, -130.2 );
setRotateKey( spep_1 -3 + 138, 1, 30 );--7
setRotateKey( spep_1 -3 + 139, 1, 30 );
setRotateKey( spep_1 -3 + 140, 1, -5 );
setRotateKey( spep_1 -3 + 141, 1, -5 );
setRotateKey( spep_1 -3 + 142, 1, -120 );
setRotateKey( spep_1 -3 + 143, 1, -120 );
setRotateKey( spep_1 -3 + 144, 1, -135 );
setRotateKey( spep_1 -3 + 145, 1, -135 );
setRotateKey( spep_1 -3 + 146, 1, 27.5 );--106
setRotateKey( spep_1 -3 + 147, 1, 27.5 );
setRotateKey( spep_1 -3 + 148, 1, -18.8 );--105
setRotateKey( spep_1 -3 + 150, 1, -68.8 );
setRotateKey( spep_1 -3 + 151, 1, -68.8 );
setRotateKey( spep_1 -3 + 152, 1, -104.1 );--106
setRotateKey( spep_1 -3 + 153, 1, -104.1 );
setRotateKey( spep_1 -3 + 154, 1, 38.4 );--107
setRotateKey( spep_1 -3 + 155, 1, 38.4 );
setRotateKey( spep_1 -3 + 156, 1, 248.6 );
setRotateKey( spep_1 -3 + 157, 1, 248.6 );
setRotateKey( spep_1 -3 + 158, 1, 26.8 );--106
setRotateKey( spep_1 -3 + 159, 1, 26.8 );
setRotateKey( spep_1 -3 + 160, 1, -19.5 );--105
setRotateKey( spep_1 -3 + 162, 1, -69.5 );
setRotateKey( spep_1 -3 + 163, 1, -69.5 );
setRotateKey( spep_1 -3 + 164, 1, -104.8 );--106
setRotateKey( spep_1 -3 + 165, 1, -104.8 );
setRotateKey( spep_1 -3 + 166, 1, 38.4 );--107
setRotateKey( spep_1 -3 + 167, 1, 38.4 );
setRotateKey( spep_1 -3 + 168, 1, 248.6 );
setRotateKey( spep_1 -3 + 169, 1, 248.6 );
setRotateKey( spep_1 -3 + 170, 1, 26.2 );--106
setRotateKey( spep_1 -3 + 171, 1, 26.2 );
setRotateKey( spep_1 -3 + 172, 1, -20.1 );--105
setRotateKey( spep_1 -3 + 174, 1, -70.2 );
setRotateKey( spep_1 -3 + 175, 1, -70.2 );
setRotateKey( spep_1 -3 + 176, 1, -105.5 );--106
setRotateKey( spep_1 -3 + 177, 1, -105.5 );
setRotateKey( spep_1 -3 + 178, 1, 38.4 );--107
setRotateKey( spep_1 -3 + 179, 1, 38.4 );
setRotateKey( spep_1 -3 + 180, 1, 238.6 );
setRotateKey( spep_1 -3 + 181, 1, 238.6 );
setRotateKey( spep_1 -3 + 182, 1, 25.5 );--106
setRotateKey( spep_1 -3 + 183, 1, 25.5 );--106

setRotateKey( spep_1 -3 + 208, 1, -104.1 );
setRotateKey( spep_1 -3 + 210, 1, -104.3 );
setRotateKey( spep_1 -3 + 212, 1, -104.5 );
setRotateKey( spep_1 -3 + 214, 1, -104.7 );
setRotateKey( spep_1 -3 + 216, 1, -104.8 );
setRotateKey( spep_1 -3 + 218, 1, -105 );
setRotateKey( spep_1 -3 + 220, 1, -105.1 );
setRotateKey( spep_1 -3 + 222, 1, -105.1 );
setRotateKey( spep_1 -3 + 224, 1, -105.2 );
setRotateKey( spep_1 -3 + 226, 1, -105.3 );
setRotateKey( spep_1 -3 + 228, 1, -105.3 );
setRotateKey( spep_1 -3 + 230, 1, -105.4 );
setRotateKey( spep_1 -3 + 232, 1, -105.5 );
setRotateKey( spep_1 -3 + 234, 1, -105.5 );
setRotateKey( spep_1 -3 + 236, 1, -105.7 );
setRotateKey( spep_1 -3 + 238, 1, -105.8 );
setRotateKey( spep_1 -3 + 240, 1, -105.8 );
setRotateKey( spep_1 -3 + 242, 1, -105.9 );
setRotateKey( spep_1 -3 + 244, 1, -106 );
setRotateKey( spep_1 -3 + 246, 1, -106 );
setRotateKey( spep_1 -3 + 248, 1, -106.1 );

--白フェード
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 160 );  --white fade
entryFade( spep_1 + 238, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+246;

------------------------------------------------------
--構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 120, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 120, tame, 255 );


-- ** 顔カットイン ** --
speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x100, -1, 0, -10, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,  -10,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,  -10,  510);

setEffAlphaKey( spep_2 +12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 76, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 128 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey(  spep_2 +12,  ctgogo,  0);
setEffRotateKey(  spep_2 +84,  ctgogo,  0);

setEffScaleKey(  spep_2 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_2 + 12, 1018 );  --ごごご

--白フェード
entryFade( spep_2 + 108, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+116;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
--発射
------------------------------------------------------
-- ** エフェクト等 ** --
firing = entryEffect( spep_4 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, firing, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, firing, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, firing, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, firing, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, firing, 0 );
setEffRotateKey( spep_4 + 56, firing, 0 );
setEffAlphaKey( spep_4 + 0, firing, 255 );
setEffAlphaKey( spep_4 + 56, firing, 255 );
setEffAlphaKey( spep_4 + 57, firing, 0 );
setEffAlphaKey( spep_4 + 58, firing, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 -3 + 6,  10012, 32, 0x100, -1001, 0, 42.6, 169.3 );--ズオッ

setEffMoveKey( spep_4 -3 + 6, ctzuo, 42.6, 169.3 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctzuo, 66.5, 211.2 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctzuo, 70.4, 271.5 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctzuo, 106.2, 310.5 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctzuo, 83.7, 324.1 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, 106.2, 310.5 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, 83.7, 324.1 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, 106.2, 310.5 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, 83.7, 324.1 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, 106.2, 310.5 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, 83.7, 324.1 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, 110.2, 310.4 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, 88, 326.3 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo, 118.8, 309.9 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo, 92.3, 328.5 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo, 127.2, 309.5 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, 96.5, 330.5 , 0 );

setEffScaleKey( spep_4 -3 + 6, ctzuo, 0.78, 0.78 );
setEffScaleKey( spep_4 -3 + 8, ctzuo, 1.57, 1.57 );
setEffScaleKey( spep_4 -3 + 10, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 -3 + 12, ctzuo, 3.17, 3.17 );
setEffScaleKey( spep_4 -3 + 26, ctzuo, 3.17, 3.17 );
setEffScaleKey( spep_4 -3 + 28, ctzuo, 3.45, 3.45 );
setEffScaleKey( spep_4 -3 + 30, ctzuo, 3.75, 3.75 );
setEffScaleKey( spep_4 -3 + 32, ctzuo, 4.06, 4.06 );
setEffScaleKey( spep_4 -3 + 34, ctzuo, 4.33, 4.33 );
setEffScaleKey( spep_4 -3 + 36, ctzuo, 4.64, 4.64 );
setEffScaleKey( spep_4 -3 + 38, ctzuo, 4.91, 4.91 );

setEffRotateKey( spep_4 -3 + 6, ctzuo, 28.2 );
setEffRotateKey( spep_4 -3 + 8, ctzuo, 23.4 );
setEffRotateKey( spep_4 -3 + 10, ctzuo, 18.4 );
setEffRotateKey( spep_4 -3 + 12, ctzuo, 13.5 );
setEffRotateKey( spep_4 -3 + 38, ctzuo, 13.5 );

setEffAlphaKey( spep_4 -3 + 6, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 38, ctzuo, 255 );

--白フェード
entryFade( spep_4 + 48, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 6, 1022 ); --発射

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

------------------------------------------------------
--迫る〜ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_08,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 240, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 240, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 240, finish, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5 -1  + 58, 1, 0 );

changeAnime( spep_5  + 0, 1, 107 );

setMoveKey( spep_5  + 0, 1, 4.3, 96.9 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, 1.8, 87.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 7.2, 110.2 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 4.5, 112.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 9.9, 123.2 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 3.4, 126.3 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 12.9, 137.6 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 10.4, 140.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 15.8, 151.9 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 9.3, 155.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 18.9, 167.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 15.2, 165.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 19.5, 170.8 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 11.7, 168.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 20, 174.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 16.3, 172.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 20.6, 178.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 12.9, 176.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 21.1, 182.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 17.4, 180.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 21.8, 186.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 14.1, 185.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 22.4, 191.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 18.6, 189.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 23, 195.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 19.3, 190.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 23.6, 200.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 20, 199.2 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 24.2, 205.7 , 0 );
setMoveKey( spep_5 -1 + 58, 1, 20.5, 204.4 , 0 );

setScaleKey( spep_5 -3 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_5 -3 + 2, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 4, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 6, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 8, 1, 0.33, 0.33 );
setScaleKey( spep_5 -3 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 12, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 14, 1, 0.45, 0.45 );
setScaleKey( spep_5 -3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 18, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 20, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 22, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 24, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 26, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 28, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 30, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 32, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 36, 1, 0.71, 0.71 );
setScaleKey( spep_5 -3 + 38, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 40, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_5 -3 + 44, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 46, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 48, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 50, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 52, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 54, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 56, 1, 0.87, 0.87 );
setScaleKey( spep_5 -1 + 58, 1, 0.89, 0.89 );

setRotateKey( spep_5  + 0, 1, -129.3 );
setRotateKey( spep_5 -1 + 58, 1, -129.3 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 58-1, 0x100, -1, 0, 0, 125.6 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 125.6 , 0 );
setEffMoveKey( spep_5 -1 + 58, shuchusen4, 0, 125.6 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.07, 1.39 );
setEffScaleKey( spep_5 + 58 -1, shuchusen4, 1.07, 1.39 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5 + 58 -1, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 58 -1, shuchusen4, 255 );

--白フェード
entryFade( spep_5 + 52, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 58, 1023 ); --被弾
setSeVolume( spep_5 + 58, 1023, 120 );
playSe( spep_5 + 60, 1156 ); --飲み込み
setSeVolume( spep_5 + 60, 1156, 60 );

-- ** ダメージ表示 ** --
dealDamage(spep_5 + 58);
endPhase( spep_5 + 174 );

else 
------------------------------------------------------------------------------------------------------------
--てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--突進〜叩きつけまで
------------------------------------------------------
--最初の準備
spep_0=0;

-- ** エフェクト等 ** --
dash_f = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, dash_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_f, 0 );
setEffRotateKey( spep_0 + 260, dash_f, 0 );
setEffAlphaKey( spep_0 + 0, dash_f, 0 );
setEffAlphaKey( spep_0 + 40, dash_f, 0 );
setEffAlphaKey( spep_0 + 41, dash_f, 255 );
setEffAlphaKey( spep_0 + 124, dash_f, 255 );
setEffAlphaKey( spep_0 + 125, dash_f, 0 );
setEffAlphaKey( spep_0 + 154, dash_f, 0 );
setEffAlphaKey( spep_0 + 155, dash_f, 255 );
setEffAlphaKey( spep_0 + 252, dash_f, 255 );
setEffAlphaKey( spep_0 + 253, dash_f, 0 );
setEffAlphaKey( spep_0 + 254, dash_f, 0 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_0 + 0, SP_02,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, dash_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_b, 0 );
setEffRotateKey( spep_0 + 260, dash_b, 0 );
setEffAlphaKey( spep_0 + 0, dash_b, 255 );
setEffAlphaKey( spep_0 + 252, dash_b, 255 );
setEffAlphaKey( spep_0 + 253, dash_b, 0 );
setEffAlphaKey( spep_0 + 254, dash_b, 0 );

-- ** エフェクト等 ** --
dash_b2 = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_b2, 0, 0 , 0 );
setEffMoveKey( spep_0 + 260, dash_b2, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash_b2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, dash_b2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_b2, 0 );
setEffRotateKey( spep_0 + 260, dash_b2, 0 );
setEffAlphaKey( spep_0 + 0, dash_b2, 255 );
setEffAlphaKey( spep_0 + 40, dash_b2, 255 );
setEffAlphaKey( spep_0 + 41, dash_b2, 0 );
setEffAlphaKey( spep_0 + 124, dash_b2, 0 );
setEffAlphaKey( spep_0 + 125, dash_b2, 255 );
setEffAlphaKey( spep_0 + 154, dash_b2, 255 );
setEffAlphaKey( spep_0 + 155, dash_b2, 0 );
setEffAlphaKey( spep_0 + 260, dash_b2, 0 );

--敵の動き
setDisp( spep_0  + 0, 1, 1 );
setDisp( spep_0 -3  + 119, 1, 0 );
setDisp( spep_0 -3  + 126, 1, 1 );
setDisp( spep_0 -3  + 190, 1, 0 );
setDisp( spep_0 -3  + 194, 1, 1 );
setDisp( spep_0 -1  + 232, 1, 0 );

changeAnime( spep_0  + 0, 1, 118 );
changeAnime( spep_0 -3 + 44, 1, 107 );
changeAnime( spep_0 -3 + 68, 1, 106 );
changeAnime( spep_0 -3 + 100, 1, 105 );
changeAnime( spep_0 -3 + 126, 1, 105 );
changeAnime( spep_0 -3 + 158, 1, 8 );
changeAnime( spep_0 -3 + 194, 1, 8 );

setMoveKey( spep_0  + 0, 1, 498.1, -517.4 , 0 );
--setMoveKey( spep_0 -3 + 2, 1, 444.4, -462.7 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 390.7, -407.9 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 337.1, -353 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 283.5, -298.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 229.9, -243.3 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 225.3, -236.4 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 220.7, -229.4 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 216, -222.4 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 211.4, -215.4 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 206.8, -208.5 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 202.2, -201.5 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 197.5, -194.5 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 192.9, -187.6 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 188.3, -180.6 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 183.7, -173.6 , 0 );

setScaleKey( spep_0  + 0, 1, 5.68, 5.68 );
--setScaleKey( spep_0 -3 + 2, 1, 5.22, 5.22 );
setScaleKey( spep_0 -3 + 4, 1, 4.77, 4.77 );
setScaleKey( spep_0 -3 + 6, 1, 4.32, 4.32 );
setScaleKey( spep_0 -3 + 8, 1, 3.86, 3.86 );
setScaleKey( spep_0 -3 + 10, 1, 3.41, 3.41 );
setScaleKey( spep_0 -3 + 12, 1, 3.36, 3.36 );
setScaleKey( spep_0 -3 + 14, 1, 3.32, 3.32 );
setScaleKey( spep_0 -3 + 16, 1, 3.27, 3.27 );
setScaleKey( spep_0 -3 + 18, 1, 3.23, 3.23 );
setScaleKey( spep_0 -3 + 20, 1, 3.18, 3.18 );
setScaleKey( spep_0 -3 + 22, 1, 3.14, 3.14 );
setScaleKey( spep_0 -3 + 24, 1, 3.09, 3.09 );
setScaleKey( spep_0 -3 + 26, 1, 3.05, 3.05 );
setScaleKey( spep_0 -3 + 28, 1, 3, 3 );
setScaleKey( spep_0 -3 + 30, 1, 2.96, 2.96 );

setRotateKey( spep_0  + 0, 1, 5.5 );
setRotateKey( spep_0  + 1, 1, 5.5 );
setRotateKey( spep_0  + 2, 1, 5.5 );
setRotateKey( spep_0  + 3, 1, 5.5 );
setRotateKey( spep_0  + 4, 1, 5.5 );
setRotateKey( spep_0  + 5, 1, 5.5 );
setRotateKey( spep_0  + 6, 1, 5.5 );
setRotateKey( spep_0 -3 + 18, 1, 5.5 );
setRotateKey( spep_0 -3 + 20, 1, 5.4 );
setRotateKey( spep_0 + 28, 1, 5.4 );

-- ** 音 ** --
SE0 = playSe( spep_0 + 0, 9 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 28; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
 
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);

    --敵座標の固定
    setMoveKey( SP_dodge + 0, 1, 183.7, -173.6 , 0 );
    setScaleKey( SP_dodge + 0, 1, 2.96, 2.96 );
    setRotateKey( SP_dodge + 0, 1, 5.4 );

    setMoveKey( SP_dodge + 10, 1, 183.7, -173.6 , 0 );
    setScaleKey( SP_dodge + 10, 1, 2.96, 2.96 );
    setRotateKey( SP_dodge + 10, 1, 5.4 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------
setMoveKey( spep_0 -3 + 32, 1, 179, -166.6 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 174.4, -159.7 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 169.8, -152.7 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 165.2, -145.7 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 160.5, -138.8 , 0 );
setMoveKey( spep_0 -3 + 43, 1, 155.9, -131.8 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 52.8, -219.1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 52.8, -187.6 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 41.7, -162 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 39.7, -135.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 48.7, -149.2 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 58.7, -148.4 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 65.6, -160.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 80.4, -168.1 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 446.3, -550.9 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 745.5, -856.5 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 973.7, -1095 , 0 );
setMoveKey( spep_0 -3 + 67, 1, 1135.8, -1258.7 , 0 );
setMoveKey( spep_0 -3 + 68, 1, -1169.3, 489.1 , 0 );
setMoveKey( spep_0 -3 + 70, 1, -968.4, 405.1 , 0 );
setMoveKey( spep_0 -3 + 72, 1, -778, 329.7 , 0 );
setMoveKey( spep_0 -3 + 74, 1, -580.8, 247.2 , 0 );
setMoveKey( spep_0 -3 + 76, 1, -385.9, 165.5 , 0 );
setMoveKey( spep_0 -3 + 78, 1, -195.3, 86.8 , 0 );
setMoveKey( spep_0 -3 + 80, 1, -174.9, 78.3 , 0 );
setMoveKey( spep_0 -3 + 82, 1, -154.5, 69.9 , 0 );
setMoveKey( spep_0 -3 + 84, 1, -134, 61.4 , 0 );
setMoveKey( spep_0 -3 + 86, 1, -113.6, 52.9 , 0 );
setMoveKey( spep_0 -3 + 88, 1, -93.1, 44.5 , 0 );
setMoveKey( spep_0 -3 + 90, 1, -72.7, 36 , 0 );
setMoveKey( spep_0 -3 + 92, 1, -52.3, 27.6 , 0 );
setMoveKey( spep_0 -3 + 94, 1, -38.4, 21.9 , 0 );
setMoveKey( spep_0 -3 + 96, 1, -24.5, 16.2 , 0 );
setMoveKey( spep_0 -3 + 99, 1, -10.6, 10.6 , 0 );
setMoveKey( spep_0 -3 + 100, 1, -84.4, 107.7 , 0 );
setMoveKey( spep_0 -3 + 102, 1, -82.7, 126.7 , 0 );
setMoveKey( spep_0 -3 + 104, 1, -79.5, 115.1 , 0 );
setMoveKey( spep_0 -3 + 106, 1, -64.3, 107.1 , 0 );
setMoveKey( spep_0 -3 + 108, 1, -161.9, 353.6 , 0 );
setMoveKey( spep_0 -3 + 110, 1, -193.9, 446 , 0 );
setMoveKey( spep_0 -3 + 112, 1, -198.4, 443.7 , 0 );
setMoveKey( spep_0 -3 + 114, 1, -194.8, 445.5 , 0 );
setMoveKey( spep_0 -3 + 116, 1, -197, 438.8 , 0 );
setMoveKey( spep_0 -3 + 119, 1, -195.3, 443.9 , 0 );

setMoveKey( spep_0 -3 + 126, 1, 1121.4, -1469.9 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 866, -1116.2 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 642.6, -807.3 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 450.5, -541.9 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 288.7, -318.5 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 156.3, -136.4 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 52.3, 6.3 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 48, 16.8 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 43.9, 26.9 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 39.9, 36.9 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 41.6, 38.5 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 37.8, 47.8 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 33.9, 57 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 30.2, 65.8 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 26.5, 74.3 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 23.1, 82 , 0 );
setMoveKey( spep_0 -3 + 157, 1, 23.1, 82 , 0 );

setMoveKey( spep_0 -3 + 158, 1, -43.5, -186.4 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -38.5, -200.3 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -36.3, -224.9 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -29.4, -236 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -28.5, -224.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -24.4, -216.2 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -29.7, -213 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -23.6, -210 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -26.9, -212.1 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -18.5, -440.9 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -20, -645.6 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -10.7, -818.6 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -8.7, -983.5 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -6.2, -1113.3 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -7.1, -1227 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -0.3, -1313.8 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -3.1, -1385.7 , 0 );

setMoveKey( spep_0 -3 + 194, 1, -21.7, 574.9 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -20.9, 440.3 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -20, 307.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -22.5, 182.8 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -21.6, 52.3 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -20.8, 44.2 , 0 );
setMoveKey( spep_0 -3 + 206, 1, -19.9, 36.4 , 0 );
setMoveKey( spep_0 -3 + 208, 1, -22.4, 34.4 , 0 );
setMoveKey( spep_0 -3 + 210, 1, -21.6, 26.6 , 0 );
setMoveKey( spep_0 -3 + 212, 1, -20.7, 18.9 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -19.9, 11.2 , 0 );
setMoveKey( spep_0 -3 + 216, 1, -19, 3.5 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -21.4, 1.8 , 0 );
setMoveKey( spep_0 -3 + 220, 1, -20.6, -5.7 , 0 );
setMoveKey( spep_0 -3 + 222, 1, -19.7, -13.1 , 0 );
setMoveKey( spep_0 -3 + 224, 1, -18.9, -29.8 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -21.3, -40.7 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -20.5, -57 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -19.5, -73.1 , 0 );
setMoveKey( spep_0 -1 + 232, 1, -18.7, -89.1 , 0 );

setScaleKey( spep_0 -3 + 32, 1, 2.91, 2.91 );
setScaleKey( spep_0 -3 + 34, 1, 2.87, 2.87 );
setScaleKey( spep_0 -3 + 36, 1, 2.82, 2.82 );
setScaleKey( spep_0 -3 + 38, 1, 2.78, 2.78 );
setScaleKey( spep_0 -3 + 40, 1, 2.73, 2.73 );
setScaleKey( spep_0 -3 + 43, 1, 2.69, 2.69 );
setScaleKey( spep_0 -3 + 44, 1, 1.16, 1.16 );
setScaleKey( spep_0 -3 + 46, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 48, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 50, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 52, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 58, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 60, 1, 1.63, 1.63 );
setScaleKey( spep_0 -3 + 62, 1, 2.18, 2.18 );
setScaleKey( spep_0 -3 + 64, 1, 2.61, 2.61 );
setScaleKey( spep_0 -3 + 67, 1, 2.9, 2.9 );
setScaleKey( spep_0 -3 + 68, 1, 1.77, 1.77 );
setScaleKey( spep_0 -3 + 70, 1, 1.69, 1.69 );
setScaleKey( spep_0 -3 + 72, 1, 1.62, 1.62 );
setScaleKey( spep_0 -3 + 74, 1, 1.55, 1.55 );

z=0.38;

setScaleKey( spep_0 -3 + 74, 1, 1.55+z, 1.55+z );
setScaleKey( spep_0 -3 + 76, 1, 1.47+z, 1.47+z );
setScaleKey( spep_0 -3 + 78, 1, 1.41+z, 1.41+z );
setScaleKey( spep_0 -3 + 80, 1, 1.4+z, 1.4+z );
setScaleKey( spep_0 -3 + 82, 1, 1.39+z, 1.39+z );
setScaleKey( spep_0 -3 + 84, 1, 1.38+z, 1.38+z );
setScaleKey( spep_0 -3 + 86, 1, 1.37+z, 1.37+z );
setScaleKey( spep_0 -3 + 88, 1, 1.36+z, 1.36+z );
setScaleKey( spep_0 -3 + 90, 1, 1.35+z, 1.35+z );
setScaleKey( spep_0 -3 + 92, 1, 1.34+z, 1.34+z );
setScaleKey( spep_0 -3 + 99, 1, 1.34+z, 1.34+z );
setScaleKey( spep_0 -3 + 100, 1, 2+z, 2+z );
setScaleKey( spep_0 -3 + 102, 1, 1.85+z, 1.85+z );
setScaleKey( spep_0 -3 + 104, 1, 1.76+z, 1.76+z );
setScaleKey( spep_0 -3 + 106, 1, 1.67+z, 1.67+z );
setScaleKey( spep_0 -3 + 108, 1, 0.59+z, 0.59+z );
setScaleKey( spep_0 -3 + 110, 1, 0.25+z, 0.25+z );
setScaleKey( spep_0 -3 + 112, 1, 0.21+z, 0.21+z );
setScaleKey( spep_0 -3 + 114, 1, 0.16+z, 0.16+z );
setScaleKey( spep_0 -3 + 116, 1, 0.12+z, 0.12+z );
setScaleKey( spep_0 -3 + 119, 1, 0.08+z, 0.08+z );



setScaleKey( spep_0 -3 + 126, 1, 10.01+z, 10.01+z );
setScaleKey( spep_0 -3 + 128, 1, 8.11+z, 8.11+z );
setScaleKey( spep_0 -3 + 130, 1, 6.43+z, 6.43+z );
setScaleKey( spep_0 -3 + 132, 1, 4.98+z, 4.98+z );
setScaleKey( spep_0 -3 + 134, 1, 3.77+z, 3.77+z );
setScaleKey( spep_0 -3 + 136, 1, 2.77+z, 2.77+z );
setScaleKey( spep_0 -3 + 138, 1, 1.99+z, 1.99+z );
setScaleKey( spep_0 -3 + 140, 1, 1.91+z, 1.91+z );
setScaleKey( spep_0 -3 + 142, 1, 1.84+z, 1.84+z );
setScaleKey( spep_0 -3 + 144, 1, 1.76+z, 1.76+z );
setScaleKey( spep_0 -3 + 146, 1, 1.68+z, 1.68+z );
setScaleKey( spep_0 -3 + 148, 1, 1.63+z, 1.63+z );
setScaleKey( spep_0 -3 + 150, 1, 1.56+z, 1.56+z );
setScaleKey( spep_0 -3 + 152, 1, 1.49+z, 1.49+z );
setScaleKey( spep_0 -3 + 154, 1, 1.43+z, 1.43+z );
setScaleKey( spep_0 -3 + 156, 1, 1.36+z, 1.36+z );
setScaleKey( spep_0 -3 + 157, 1, 1.36+z, 1.36+z );

setScaleKey( spep_0 -3 + 158, 1, 2.27+z, 2.27+z );
setScaleKey( spep_0 -3 + 160, 1, 2.17+z, 2.17+z );
setScaleKey( spep_0 -3 + 162, 1, 2.05+z, 2.05+z );
setScaleKey( spep_0 -3 + 164, 1, 1.95+z, 1.95+z );
setScaleKey( spep_0 -3 + 166, 1, 1.85+z, 1.85+z );
setScaleKey( spep_0 -3 + 168, 1, 1.81+z, 1.81+z );
setScaleKey( spep_0 -3 + 170, 1, 1.78+z, 1.78+z );
setScaleKey( spep_0 -3 + 172, 1, 1.74+z, 1.74+z );
setScaleKey( spep_0 -3 + 174, 1, 1.71+z, 1.71+z );
setScaleKey( spep_0 -3 + 176, 1, 1.68+z, 1.68+z );
setScaleKey( spep_0 -3 + 178, 1, 1.65+z, 1.65+z );
setScaleKey( spep_0 -3 + 180, 1, 1.61+z, 1.61+z );
setScaleKey( spep_0 -3 + 182, 1, 1.59+z, 1.59+z );
setScaleKey( spep_0 -3 + 184, 1, 1.58+z, 1.58+z );
setScaleKey( spep_0 -3 + 186, 1, 1.56+z, 1.56+z );
setScaleKey( spep_0 -3 + 188, 1, 1.54+z, 1.54+z );
setScaleKey( spep_0 -3 + 190, 1, 1.53+z, 1.53+z );

setScaleKey( spep_0 -3 + 194, 1, 1.52+z, 1.52+z );
setScaleKey( spep_0 -3 + 196, 1, 1.51+z, 1.51+z );
setScaleKey( spep_0 -3 + 198, 1, 1.5+z, 1.5+z );
setScaleKey( spep_0 -3 + 200, 1, 1.5+z, 1.5+z );
setScaleKey( spep_0 -3 + 202, 1, 1.49+z, 1.49+z );
setScaleKey( spep_0 -3 + 204, 1, 1.44+z, 1.44+z );
setScaleKey( spep_0 -3 + 206, 1, 1.4+z, 1.4+z );
setScaleKey( spep_0 -3 + 208, 1, 1.36+z, 1.36+z );
setScaleKey( spep_0 -3 + 210, 1, 1.32+z, 1.32+z );
setScaleKey( spep_0 -3 + 212, 1, 1.28+z, 1.28+z );
setScaleKey( spep_0 -3 + 214, 1, 1.23+z, 1.23+z );
setScaleKey( spep_0 -3 + 216, 1, 1.19+z, 1.19+z );
setScaleKey( spep_0 -3 + 218, 1, 1.16+z, 1.16+z );
setScaleKey( spep_0 -3 + 220, 1, 1.11+z, 1.11+z );
setScaleKey( spep_0 -3 + 222, 1, 1.07+z, 1.07+z );
setScaleKey( spep_0 -3 + 224, 1, 0.97+z, 0.97+z );
setScaleKey( spep_0 -3 + 226, 1, 0.87+z, 0.87+z );
setScaleKey( spep_0 -3 + 228, 1, 0.77+z, 0.77+z );
setScaleKey( spep_0 -3 + 230, 1, 0.67+z, 0.67+z );
setScaleKey( spep_0 -1 + 232, 1, 0.57+z, 0.57+z );

setRotateKey( spep_0 -3 + 34, 1, 5.4 );
setRotateKey( spep_0 -3 + 36, 1, 5.3 );
setRotateKey( spep_0 -3 + 43, 1, 5.3 );
setRotateKey( spep_0 -3 + 44, 1, -9.5 );
setRotateKey( spep_0 -3 + 67, 1, -9.5 );
setRotateKey( spep_0 -3 + 68, 1, 67.9 );
setRotateKey( spep_0 -3 + 72, 1, 67.9 );
setRotateKey( spep_0 -3 + 74, 1, 68 );
setRotateKey( spep_0 -3 + 99, 1, 68 );
setRotateKey( spep_0 -3 + 100, 1, -43.9 );
setRotateKey( spep_0 -3 + 119, 1, -43.9 );

setRotateKey( spep_0 -3 + 126, 1, -60 );
setRotateKey( spep_0 -3 + 128, 1, -60 );
setRotateKey( spep_0 -3 + 130, 1, -60.1 );
setRotateKey( spep_0 -3 + 148, 1, -60.1 );
setRotateKey( spep_0 -3 + 150, 1, -60 );
setRotateKey( spep_0 -3 + 156, 1, -60 );
setRotateKey( spep_0 -3 + 157, 1, -60 );

setRotateKey( spep_0 -3 + 158, 1, -90 );
setRotateKey( spep_0 -3 + 190, 1, -90 );

setRotateKey( spep_0 -3 + 194, 1, -90 );
setRotateKey( spep_0 -1 + 232, 1, -90 );

--文字エントリー
ctbaki = entryEffectLife( spep_0 -3 + 44,  10020, 16, 0x100, -1, 0, 152.3, 284.2 );--バキッ

setEffMoveKey( spep_0 -3 + 44, ctbaki, 152.3, 284.2 , 0 );
setEffMoveKey( spep_0 -3 + 46, ctbaki, 148, 311.2 , 0 );
setEffMoveKey( spep_0 -3 + 48, ctbaki, 152.3, 284.1 , 0 );
setEffMoveKey( spep_0 -3 + 50, ctbaki, 152.3, 284 , 0 );
setEffMoveKey( spep_0 -3 + 52, ctbaki, 149.6, 301.5 , 0 );
setEffMoveKey( spep_0 -3 + 54, ctbaki, 152.4, 284 , 0 );
setEffMoveKey( spep_0 -3 + 56, ctbaki, 152.4, 283.9 , 0 );
setEffMoveKey( spep_0 -3 + 58, ctbaki, 149.8, 300.3 , 0 );
setEffMoveKey( spep_0 -3 + 60, ctbaki, 152.3, 284.1 , 0 );

setEffScaleKey( spep_0 -3 + 44, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_0 -3 + 46, ctbaki, 3.22, 3.22 );
setEffScaleKey( spep_0 -3 + 48, ctbaki, 2.7, 2.7 );
setEffScaleKey( spep_0 -3 + 50, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_0 -3 + 52, ctbaki, 2.09, 2.09 );
setEffScaleKey( spep_0 -3 + 54, ctbaki, 2.01, 2.01 );
setEffScaleKey( spep_0 -3 + 56, ctbaki, 1.93, 1.93 );
setEffScaleKey( spep_0 -3 + 58, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_0 -3 + 60, ctbaki, 1.96, 1.96 );

setEffRotateKey( spep_0 -3 + 44, ctbaki, 36.1 );
setEffRotateKey( spep_0 -3 + 60, ctbaki, 36.1 );

setEffAlphaKey( spep_0 -3 + 44, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 56, ctbaki, 255 );
setEffAlphaKey( spep_0 -3 + 58, ctbaki, 134 );
setEffAlphaKey( spep_0 -3 + 60, ctbaki, 13 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_0 -3 + 100,  10020, 16, 0x100, -1, 0, 31.8, 320.8 );--バキッ

setEffMoveKey( spep_0 -3 + 100, ctbaki2, 31.8, 320.8 , 0 );
setEffMoveKey( spep_0 -3 + 102, ctbaki2, 15.8, 339.2 , 0 );
setEffMoveKey( spep_0 -3 + 104, ctbaki2, 32, 320.8 , 0 );
setEffMoveKey( spep_0 -3 + 106, ctbaki2, 32, 320.7 , 0 );
setEffMoveKey( spep_0 -3 + 108, ctbaki2, 21.5, 332.6 , 0 );
setEffMoveKey( spep_0 -3 + 110, ctbaki2, 32, 320.7 , 0 );
setEffMoveKey( spep_0 -3 + 112, ctbaki2, 32, 320.7 , 0 );
setEffMoveKey( spep_0 -3 + 114, ctbaki2, 22.2, 331.9 , 0 );
setEffMoveKey( spep_0 -3 + 116, ctbaki2, 32, 320.8 , 0 );

setEffScaleKey( spep_0 -3 + 100, ctbaki2, 1.6, 1.6 );
setEffScaleKey( spep_0 -3 + 102, ctbaki2, 2.88, 2.88 );
setEffScaleKey( spep_0 -3 + 104, ctbaki2, 2.41, 2.41 );
setEffScaleKey( spep_0 -3 + 106, ctbaki2, 1.94, 1.94 );
setEffScaleKey( spep_0 -3 + 108, ctbaki2, 1.87, 1.87 );
setEffScaleKey( spep_0 -3 + 110, ctbaki2, 1.8, 1.8 );
setEffScaleKey( spep_0 -3 + 112, ctbaki2, 1.73, 1.73 );
setEffScaleKey( spep_0 -3 + 114, ctbaki2, 1.75, 1.75 );
setEffScaleKey( spep_0 -3 + 116, ctbaki2, 1.76, 1.76 );

setEffRotateKey( spep_0 -3 + 100, ctbaki2, 3.8 );
setEffRotateKey( spep_0 -3 + 116, ctbaki2, 3.8 );

setEffAlphaKey( spep_0 -3 + 100, ctbaki2, 255 );
setEffAlphaKey( spep_0 -3 + 112, ctbaki2, 255 );
setEffAlphaKey( spep_0 -3 + 114, ctbaki2, 134 );
setEffAlphaKey( spep_0 -3 + 116, ctbaki2, 13 );

--文字エントリー
ctzun = entryEffectLife( spep_0 -3 + 158,  10016, 16, 0x100, -1, 0, 98.6, 361.4 );--ズンッ

setEffMoveKey( spep_0 -3 + 158, ctzun, 98.6, 361.4 , 0 );
setEffMoveKey( spep_0 -3 + 160, ctzun, 98.6, 361.5 , 0 );
setEffMoveKey( spep_0 -3 + 162, ctzun, 93.1, 370.1 , 0 );
setEffMoveKey( spep_0 -3 + 164, ctzun, 98.8, 361.3 , 0 );
setEffMoveKey( spep_0 -3 + 166, ctzun, 98.8, 361.2 , 0 );
setEffMoveKey( spep_0 -3 + 168, ctzun, 94, 368.5 , 0 );
setEffMoveKey( spep_0 -3 + 170, ctzun, 94.2, 367.9 , 0 );
setEffMoveKey( spep_0 -3 + 172, ctzun, 98.6, 361.4 , 0 );
setEffMoveKey( spep_0 -3 + 174, ctzun, 98.6, 361.6 , 0 );

setEffScaleKey( spep_0 -3 + 158, ctzun, 1.52, 1.52 );
setEffScaleKey( spep_0 -3 + 160, ctzun, 3.7, 3.7 );
setEffScaleKey( spep_0 -3 + 162, ctzun, 3.51, 3.51 );
setEffScaleKey( spep_0 -3 + 164, ctzun, 3.31, 3.31 );
setEffScaleKey( spep_0 -3 + 166, ctzun, 3.12, 3.12 );
setEffScaleKey( spep_0 -3 + 168, ctzun, 2.92, 2.92 );
setEffScaleKey( spep_0 -3 + 170, ctzun, 2.71, 2.71 );
setEffScaleKey( spep_0 -3 + 172, ctzun, 2.46, 2.46 );
setEffScaleKey( spep_0 -3 + 174, ctzun, 2.2, 2.2 );

setEffRotateKey( spep_0 -3 + 158, ctzun, 15 );
setEffRotateKey( spep_0 -3 + 166, ctzun, 15 );
setEffRotateKey( spep_0 -3 + 168, ctzun, 14.9 );
setEffRotateKey( spep_0 -3 + 170, ctzun, 14.8 );
setEffRotateKey( spep_0 -3 + 172, ctzun, 14.9 );
setEffRotateKey( spep_0 -3 + 174, ctzun, 15 );

setEffAlphaKey( spep_0 -3 + 158, ctzun, 255 );
setEffAlphaKey( spep_0 -3 + 166, ctzun, 255 );
setEffAlphaKey( spep_0 -3 + 168, ctzun, 223 );
setEffAlphaKey( spep_0 -3 + 170, ctzun, 191 );
setEffAlphaKey( spep_0 -3 + 172, ctzun, 102 );
setEffAlphaKey( spep_0 -3 + 174, ctzun, 13 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 44,  906, 34, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 44, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 44, shuchusen1, 1.07, 1.4 );
setEffScaleKey( spep_0 -3 + 78, shuchusen1, 1.07, 1.4 );

setEffRotateKey( spep_0 -3 + 44, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 -3 + 44, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 66, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 68, shuchusen1, 213 );
setEffAlphaKey( spep_0 -3 + 70, shuchusen1, 170 );
setEffAlphaKey( spep_0 -3 + 72, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 74, shuchusen1, 85 );
setEffAlphaKey( spep_0 -3 + 76, shuchusen1, 42 );
setEffAlphaKey( spep_0 -3 + 78, shuchusen1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_0 -3 + 100,  906, 12, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 100, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 112, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 100, shuchusen2, 1.07, 1.4 );
setEffScaleKey( spep_0 -3 + 112, shuchusen2, 1.07, 1.4 );

setEffRotateKey( spep_0 -3 + 100, shuchusen2, 180 );
setEffRotateKey( spep_0 -3 + 112, shuchusen2, 180 );

setEffAlphaKey( spep_0 -3 + 100, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 108, shuchusen2, 255 );
setEffAlphaKey( spep_0 -3 + 110, shuchusen2, 128 );
setEffAlphaKey( spep_0 -3 + 112, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_0 -3 + 158,  906, 38, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 158, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 196, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 158, shuchusen3, 1.07, 1.4 );
setEffScaleKey( spep_0 -3 + 196, shuchusen3, 1.07, 1.4 );

setEffRotateKey( spep_0 -3 + 158, shuchusen3, 180 );
setEffRotateKey( spep_0 -3 + 196, shuchusen3, 180 );

setEffAlphaKey( spep_0 -3 + 158, shuchusen3, 255 );
setEffAlphaKey( spep_0 -3 + 192, shuchusen3, 255 );
setEffAlphaKey( spep_0 -3 + 194, shuchusen3, 128 );
setEffAlphaKey( spep_0 -3 + 196, shuchusen3, 0 );

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 41, 0, 6, 2, fcolor_r, fcolor_g, fcolor_b, 160 );  --white fade
entryFade( spep_0 + 97, 0, 6, 2, fcolor_r, fcolor_g, fcolor_b, 160 );  --white fade
entryFade( spep_0 + 155, 0, 6, 2, fcolor_r, fcolor_g, fcolor_b, 160 );  --white fade

-- ** 音 ** --
playSe( spep_0 -3 + 44, 1010 );  --殴る
setSeVolume( spep_0 -3 + 44, 1010, 110 );
playSe( spep_0 + 76, 43 );  --現れる
playSe( spep_0 -3 + 100, 1010 );  --蹴り上げ
playSe( spep_0 + 126, 1109 );  --現れる
playSe( spep_0 -3 + 158, 1011 );  --叩きつけ

SE1 = playSe( spep_0 + 192, 1116 );  --落ちる
stopSe( spep_0 + 226, SE1, 20 );
setSeVolume( spep_0 + 192, 1116, 150 );
setSeVolume( spep_0 + 200, 1116, 110 );
setSeVolume( spep_0 + 220, 1116, 80 );

playSe( spep_0 + 232, 1023 );  --落ちた
playSe( spep_0 + 260, 44 );  --下に降りる
playSe( spep_0 + 298, 1108 );  --着地
setSeVolume( spep_0 + 298, 1108, 130 );
playSe( spep_0 + 314 -10, 1072 );  --掴む
setSeVolume( spep_0 + 314, 1072, 130 );

SE2 = playSe( spep_0 + 360, 1044 );  --土煙
setSeVolume( spep_0 + 360, 1044, 50 );
setSeVolume( spep_0 + 400, 1044, 80 );
setSeVolume( spep_0 + 440, 1044, 120 );
stopSe( spep_0 + 460, SE2, 20 );

playSe( spep_0 + 350, 8 );  --回す
playSe( spep_0 + 372, 8 );  --回す
playSe( spep_0 + 394, 8 );  --回す
playSe( spep_0 + 412, 8 );  --回す
playSe( spep_0 + 430, 8 );  --回す
playSe( spep_0 + 450, 8 );  --回す
playSe( spep_0 + 456, 7 );  --投げる
setSeVolume( spep_0 + 456, 7, 118 );

--最初の準備
spep_1=spep_0+252;

------------------------------------------------------
--突進〜叩きつけまで
------------------------------------------------------
-- ** エフェクト等 ** --
swing_n2 = entryEffect( spep_1 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, swing_n2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 246, swing_n2, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, swing_n2, -1.0, 1.0 );
setEffScaleKey( spep_1 + 246, swing_n2, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, swing_n2, 0 );
setEffRotateKey( spep_1 + 246, swing_n2, 0 );
setEffAlphaKey( spep_1 + 0, swing_n2, 255 );
setEffAlphaKey( spep_1 + 109, swing_n2, 255 );
setEffAlphaKey( spep_1 + 110, swing_n2, 255 );
setEffAlphaKey( spep_1 + 111, swing_n2, 0 );
setEffAlphaKey( spep_1 + 112, swing_n2, 0 );
setEffAlphaKey( spep_1 + 118, swing_n2, 0 );
setEffAlphaKey( spep_1 + 119, swing_n2, 255 );
setEffAlphaKey( spep_1 + 120, swing_n2, 255 );
setEffAlphaKey( spep_1 + 134, swing_n2, 255 );
setEffAlphaKey( spep_1 + 135, swing_n2, 0 );
setEffAlphaKey( spep_1 + 136, swing_n2, 0 );
setEffAlphaKey( spep_1 + 142, swing_n2, 0 );
setEffAlphaKey( spep_1 + 143, swing_n2, 255 );
setEffAlphaKey( spep_1 + 144, swing_n2, 255 );
setEffAlphaKey( spep_1 + 150, swing_n2, 255 );
setEffAlphaKey( spep_1 + 151, swing_n2, 0 );
setEffAlphaKey( spep_1 + 152, swing_n2, 0 );
setEffAlphaKey( spep_1 + 154, swing_n2, 0 );
setEffAlphaKey( spep_1 + 155, swing_n2, 255 );
setEffAlphaKey( spep_1 + 156, swing_n2, 255 );
setEffAlphaKey( spep_1 + 162, swing_n2, 255 );
setEffAlphaKey( spep_1 + 163, swing_n2, 0 );
setEffAlphaKey( spep_1 + 164, swing_n2, 0 );
setEffAlphaKey( spep_1 + 166, swing_n2, 0 );
setEffAlphaKey( spep_1 + 167, swing_n2, 255 );
setEffAlphaKey( spep_1 + 168, swing_n2, 255 );
setEffAlphaKey( spep_1 + 174, swing_n2, 255 );
setEffAlphaKey( spep_1 + 175, swing_n2, 0 );
setEffAlphaKey( spep_1 + 176, swing_n2, 0 );
setEffAlphaKey( spep_1 + 178, swing_n2, 0 );
setEffAlphaKey( spep_1 + 179, swing_n2, 255 );
setEffAlphaKey( spep_1 + 180, swing_n2, 255 );
setEffAlphaKey( spep_1 + 246, swing_n2, 255 );

-- ** エフェクト等 ** --
swing_f = entryEffect( spep_1 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, swing_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 246, swing_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, swing_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 246, swing_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, swing_f, 0 );
setEffRotateKey( spep_1 + 246, swing_f, 0 );
setEffAlphaKey( spep_1 + 0, swing_f, 255 );
setEffAlphaKey( spep_1 + 246, swing_f, 255 );

-- ** エフェクト等 ** --
swing_b = entryEffect( spep_1 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, swing_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 246, swing_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, swing_b, -1.0, 1.0 );
setEffScaleKey( spep_1 + 246, swing_b, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, swing_b, 0 );
setEffRotateKey( spep_1 + 246, swing_b, 0 );
setEffAlphaKey( spep_1 + 0, swing_b, 255 );
setEffAlphaKey( spep_1 + 246, swing_b, 255 );

-- ** エフェクト等 ** --
swing_n = entryEffect( spep_1 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, swing_n, 0, 0 , 0 );
setEffMoveKey( spep_1 + 246, swing_n, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, swing_n, -1.0, 1.0 );
setEffScaleKey( spep_1 + 246, swing_n, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, swing_n, 0 );
setEffRotateKey( spep_1 + 246, swing_n, 0 );
setEffAlphaKey( spep_1 + 0, swing_n, 255 );
setEffAlphaKey( spep_1 + 246, swing_n, 255 );

--敵の動き
setDisp( spep_1 -3  + 98, 1, 1 );
setDisp( spep_1   + 181, 1, 0 );
setDisp( spep_1   + 205, 1, 1 );
setDisp( spep_1   + 250, 1, 0 );

changeAnime( spep_1 -3  + 98, 1, 6 );
changeAnime( spep_1 -3  + 102, 1, 5 );
changeAnime( spep_1 -3  + 110, 1, 6 );
changeAnime( spep_1 -3  + 114, 1, 107 );
changeAnime( spep_1 -3  + 122, 1, 6 );
changeAnime( spep_1 -3  + 126, 1, 5 );
changeAnime( spep_1 -3  + 134, 1, 6 );
changeAnime( spep_1 -3  + 138, 1, 107 );
changeAnime( spep_1 -3  + 146, 1, 6 );
changeAnime( spep_1 -3  + 148, 1, 5 );
changeAnime( spep_1 -3  + 152, 1, 6 );
changeAnime( spep_1 -3  + 154, 1, 107 );
changeAnime( spep_1 -3  + 158, 1, 6 );
changeAnime( spep_1 -3  + 160, 1, 5 );
changeAnime( spep_1 -3  + 164, 1, 6 );
changeAnime( spep_1 -3  + 166, 1, 107 );
changeAnime( spep_1 -3  + 170, 1, 6 );
changeAnime( spep_1 -3  + 172, 1, 5 );
changeAnime( spep_1 -3  + 176, 1, 6 );
changeAnime( spep_1 -3  + 178, 1, 107 );
changeAnime( spep_1 -3  + 182, 1, 6 );
changeAnime( spep_1 -3  + 208, 1, 7 );

setMoveKey( spep_1 -3 + 98, 1, -571.8, 317.7 , 0 );--106
setMoveKey( spep_1 -3 + 100, 1, -502.7, 415.6 , 0 );
setMoveKey( spep_1 -3 + 101, 1, -502.7, 415.6 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -290.4, 616.7 , 0 );--105
setMoveKey( spep_1 -3 + 104, 1, -125.7, 673.9 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -32.4, 687.5 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 57.5, 684.2 , 0 );
setMoveKey( spep_1 -3 + 109, 1, 57.5, 684.2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 250.2, 521.3 , 0 );--106
setMoveKey( spep_1 -3 + 112, 1, 353.9, 420.6 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 353.9, 420.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 175.8+86, 186.2-110 , 0 );--7
setMoveKey( spep_1 -3 + 115, 1, 175.8+86, 186.2-110 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 138.8+80, -31.1-60 , 0 );
setMoveKey( spep_1 -3 + 117, 1, 138.8+80, -31.1-60 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -391.8+100, 40-60 , 0 );
setMoveKey( spep_1 -3 + 119, 1, -391.8+100, 40-60 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -411.4+115, 147.5-40 , 0 );
setMoveKey( spep_1 -3 + 121, 1, -411.4+115, 147.5-40 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -424.3, 234.8 , 0 );--106
setMoveKey( spep_1 -3 + 124, 1, -350.2, 311.8 , 0 );
setMoveKey( spep_1 -3 + 125, 1, -350.2, 311.8 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -212.3, 450.4 , 0 );--105
setMoveKey( spep_1 -3 + 128, 1, -94, 504.1 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -25, 528.7 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 45.3, 538.6 , 0 );
setMoveKey( spep_1 -3 + 133, 1, 45.3, 538.6 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 260.3, 453 , 0 );--106
setMoveKey( spep_1 -3 + 136, 1, 358.9, 340.1 , 0 );
setMoveKey( spep_1 -3 + 137, 1, 358.9, 340.1 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 117.1+100, 154.2-40 , 0 );--7
setMoveKey( spep_1 -3 + 139, 1, 117.1+100, 154.2-40 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 102.3+90, 18.3-60 , 0 );
setMoveKey( spep_1 -3 + 141, 1, 102.3+90, 18.3-60 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -358.3+100, 88.8-50 , 0 );
setMoveKey( spep_1 -3 + 143, 1, -358.3+100, 88.8-50 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -376.3+105, 145.4-60 , 0 );
setMoveKey( spep_1 -3 + 145, 1, -376.3+105, 145.4-60 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -328.6, 182.6 , 0 );--106
setMoveKey( spep_1 -3 + 147, 1, -328.6, 182.6 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -177.3, 377.8 , 0 );--105
setMoveKey( spep_1 -3 + 150, 1, -19.5, 450.2 , 0 );
setMoveKey( spep_1 -3 + 151, 1, -19.5, 450.2 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 179, 366.9 , 0 );--106
setMoveKey( spep_1 -3 + 153, 1, 179, 366.9 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 103.9+70, 153.6-50 , 0 );--107
setMoveKey( spep_1 -3 + 155, 1, 103.9+70, 153.6-50 , 0 );--107
setMoveKey( spep_1 -3 + 156, 1, -319.6+110, 48.5-90 , 0 );
setMoveKey( spep_1 -3 + 157, 1, -319.6+110, 48.5-90 , 0 );
setMoveKey( spep_1 -3 + 158, 1, -303.9, 172.9 , 0 );--106
setMoveKey( spep_1 -3 + 159, 1, -303.9, 172.9 , 0 );
setMoveKey( spep_1 -3 + 160, 1, -159, 351.4 , 0 );--105
setMoveKey( spep_1 -3 + 162, 1, -13.2, 417.5 , 0 );
setMoveKey( spep_1 -3 + 163, 1, -13.2, 417.5 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 168.5, 336.8 , 0 );--106
setMoveKey( spep_1 -3 + 165, 1, 168.5, 336.8 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 103.9+80, 153.6-80 , 0 );--107
setMoveKey( spep_1 -3 + 167, 1, 103.9+80, 153.6-80 , 0 );
setMoveKey( spep_1 -3 + 168, 1, -319.6+120, 48.5-90 , 0 );
setMoveKey( spep_1 -3 + 169, 1, -319.6+120, 48.5-90 , 0 );
setMoveKey( spep_1 -3 + 170, 1, -276.3, 162.7 , 0 );--106
setMoveKey( spep_1 -3 + 171, 1, -276.3, 162.7 , 0 );
setMoveKey( spep_1 -3 + 172, 1, -143.3, 325.4 , 0 );--105
setMoveKey( spep_1 -3 + 174, 1, -7.6, 384.7 , 0 );
setMoveKey( spep_1 -3 + 175, 1, -7.6, 384.7 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 159, 307.7 , 0 );--106
setMoveKey( spep_1 -3 + 177, 1, 159, 307.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 103.9+68, 153.6-85 , 0 );--107
setMoveKey( spep_1 -3 + 179, 1, 103.9+68, 153.6-85 , 0 );
setMoveKey( spep_1 -3 + 180, 1, -319.6+140, 48.5-60 , 0 );
setMoveKey( spep_1 -3 + 181, 1, -319.6+140, 48.5-60 , 0 );
setMoveKey( spep_1 -3 + 182, 1, -252.1, 151.8 , 0 );--106
setMoveKey( spep_1 -3 + 183, 1, -252.1, 151.8 , 0 );

setMoveKey( spep_1 -3 + 208, 1, -105.9, 115.2 , 0 );--107
setMoveKey( spep_1 -3 + 210, 1, -115.6, 127.1 , 0 );
setMoveKey( spep_1 -3 + 212, 1, -123.4, 136.2 , 0 );
setMoveKey( spep_1 -3 + 214, 1, -129.4, 142.7 , 0 );
setMoveKey( spep_1 -3 + 216, 1, -133.7, 146.4 , 0 );
setMoveKey( spep_1 -3 + 218, 1, -136.1, 147.2 , 0 );
setMoveKey( spep_1 -3 + 220, 1, -143.9, 155.9 , 0 );
setMoveKey( spep_1 -3 + 222, 1, -151.3, 164.5 , 0 );
setMoveKey( spep_1 -3 + 224, 1, -157.3, 170.5 , 0 );
setMoveKey( spep_1 -3 + 226, 1, -163.2, 176.4 , 0 );
setMoveKey( spep_1 -3 + 228, 1, -168.6, 182.1 , 0 );
setMoveKey( spep_1 -3 + 230, 1, -174.1, 187.5 , 0 );
setMoveKey( spep_1 -3 + 232, 1, -179.3, 192.5 , 0 );
setMoveKey( spep_1 -3 + 234, 1, -184.2, 197.5 , 0 );
setMoveKey( spep_1 -3 + 236, 1, -189.1, 202 , 0 );
setMoveKey( spep_1 -3 + 238, 1, -193.8, 206.3 , 0 );
setMoveKey( spep_1 -3 + 240, 1, -198.2, 210.4 , 0 );
setMoveKey( spep_1 -3 + 242, 1, -202.4, 214.2 , 0 );
setMoveKey( spep_1 -3 + 244, 1, -206.6, 217.6 , 0 );
setMoveKey( spep_1 -3 + 246, 1, -210.5, 220.9 , 0 );
setMoveKey( spep_1 -3 + 248, 1, -214.2, 223.9 , 0 );

setScaleKey( spep_1 -3 + 98, 1, 3.66, 3.66 );--106
setScaleKey( spep_1 -3 + 100, 1, 3.4, 3.4 );
setScaleKey( spep_1 -3 + 101, 1, 3.4, 3.4 );
setScaleKey( spep_1 -3 + 102, 1, 2.57, 2.57 );--105
setScaleKey( spep_1 -3 + 104, 1, 2.54, 2.54 );
setScaleKey( spep_1 -3 + 106, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 108, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 109, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 110, 1, 2.5, 2.5 );--106
setScaleKey( spep_1 -3 + 112, 1, 2.75, 2.75 );
setScaleKey( spep_1 -3 + 113, 1, 2.75, 2.75 );
setScaleKey( spep_1 -3 + 114, 1, 1.15, 1.15 );--107
setScaleKey( spep_1 -3 + 115, 1, 1.15, 1.15 );
setScaleKey( spep_1 -3 + 116, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 117, 1, 1.27, 1.27 );
setScaleKey( spep_1 -3 + 118, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 119, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 120, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 121, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 122, 1, 2.56, 2.56 );--106
setScaleKey( spep_1 -3 + 124, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 125, 1, 2.53, 2.53 );
setScaleKey( spep_1 -3 + 126, 1, 1.88, 1.88 );--105
setScaleKey( spep_1 -3 + 128, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 130, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 132, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 133, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 134, 1, 2.32, 2.32 );--106
setScaleKey( spep_1 -3 + 136, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 137, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 138, 1, 0.96, 0.96 );--107
setScaleKey( spep_1 -3 + 139, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 140, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 141, 1, 1.09, 1.09 );
setScaleKey( spep_1 -3 + 142, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 143, 1, 1.04, 1.04 );
setScaleKey( spep_1 -3 + 144, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 145, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 146, 1, 2.1, 2.1 );--106
setScaleKey( spep_1 -3 + 147, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 148, 1, 1.57, 1.57 );--105
setScaleKey( spep_1 -3 + 150, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 151, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 152, 1, 1.76, 1.76 );--106
setScaleKey( spep_1 -3 + 153, 1, 1.76, 1.76 );
setScaleKey( spep_1 -3 + 154, 1, 0.85, 0.85 );--107
setScaleKey( spep_1 -3 + 155, 1, 0.85, 0.85 );
setScaleKey( spep_1 -3 + 156, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 157, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 158, 1, 1.96, 1.96 );--106
setScaleKey( spep_1 -3 + 159, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 160, 1, 1.45, 1.45 );--105
setScaleKey( spep_1 -3 + 162, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 163, 1, 1.36, 1.36 );
setScaleKey( spep_1 -3 + 164, 1, 1.62, 1.62 );--106
setScaleKey( spep_1 -3 + 165, 1, 1.62, 1.62 );
setScaleKey( spep_1 -3 + 166, 1, 0.79, 0.79 );--107
setScaleKey( spep_1 -3 + 167, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 168, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 169, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 170, 1, 1.79, 1.79 );--106
setScaleKey( spep_1 -3 + 171, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 172, 1, 1.34, 1.34 );--105
setScaleKey( spep_1 -3 + 174, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 175, 1, 1.26, 1.26 );
setScaleKey( spep_1 -3 + 176, 1, 1.49, 1.49 );--106
setScaleKey( spep_1 -3 + 177, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 178, 1, 0.71, 0.71 );--107
setScaleKey( spep_1 -3 + 179, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 180, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 181, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 182, 1, 1.65, 1.65 );--106
setScaleKey( spep_1 -3 + 183, 1, 1.65, 1.65 );--106

setScaleKey( spep_1 -3 + 208, 1, 0.62, 0.62 );--107
setScaleKey( spep_1 -3 + 210, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 212, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 214, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 216, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 218, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 220, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 222, 1, 0.89, 0.89 );
setScaleKey( spep_1 -3 + 224, 1, 0.96, 0.96 );
setScaleKey( spep_1 -3 + 226, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 228, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 230, 1, 1.16, 1.16 );
setScaleKey( spep_1 -3 + 232, 1, 1.23, 1.23 );
setScaleKey( spep_1 -3 + 234, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 236, 1, 1.35, 1.35 );
setScaleKey( spep_1 -3 + 238, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 240, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 242, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 244, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 246, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 248, 1, 1.69, 1.69 );


setRotateKey( spep_1 -3 + 98, 1, -27.5 );--106
setRotateKey( spep_1 -3 + 100, 1, -17.1 );
setRotateKey( spep_1 -3 + 101, 1, -17.1 );
setRotateKey( spep_1 -3 + 102, 1, 18.7 );--105
setRotateKey( spep_1 -3 + 104, 1, 46.6 );
setRotateKey( spep_1 -3 + 106, 1, 68.6 );
setRotateKey( spep_1 -3 + 108, 1, 78 );
setRotateKey( spep_1 -3 + 109, 1, 78 );
setRotateKey( spep_1 -3 + 110, 1, 103.8 );--106
setRotateKey( spep_1 -3 + 112, 1, 126.5 );
setRotateKey( spep_1 -3 + 113, 1, 126.5 );
setRotateKey( spep_1 -3 + 114, 1, -30 );--7
setRotateKey( spep_1 -3 + 115, 1, -30 );
setRotateKey( spep_1 -3 + 116, 1, 5 );
setRotateKey( spep_1 -3 + 117, 1, 5 );
setRotateKey( spep_1 -3 + 118, 1, 120 );
setRotateKey( spep_1 -3 + 119, 1, 120 );
setRotateKey( spep_1 -3 + 120, 1, 140 );
setRotateKey( spep_1 -3 + 121, 1, 140 );
setRotateKey( spep_1 -3 + 122, 1, -24.3 );--106
setRotateKey( spep_1 -3 + 124, 1, -14.1 );
setRotateKey( spep_1 -3 + 125, 1, -14.1 );
setRotateKey( spep_1 -3 + 126, 1, 18.7 );--105
setRotateKey( spep_1 -3 + 128, 1, 46.6 );
setRotateKey( spep_1 -3 + 130, 1, 68.6 );
setRotateKey( spep_1 -3 + 132, 1, 78 );
setRotateKey( spep_1 -3 + 133, 1, 78 );
setRotateKey( spep_1 -3 + 134, 1, 106.6 );--106
setRotateKey( spep_1 -3 + 136, 1, 130.2 );
setRotateKey( spep_1 -3 + 137, 1, 130.2 );
setRotateKey( spep_1 -3 + 138, 1, -30 );--7
setRotateKey( spep_1 -3 + 139, 1, -30 );
setRotateKey( spep_1 -3 + 140, 1, 5 );
setRotateKey( spep_1 -3 + 141, 1, 5 );
setRotateKey( spep_1 -3 + 142, 1, 120 );
setRotateKey( spep_1 -3 + 143, 1, 120 );
setRotateKey( spep_1 -3 + 144, 1, 135 );
setRotateKey( spep_1 -3 + 145, 1, 135 );
setRotateKey( spep_1 -3 + 146, 1, -27.5 );--106
setRotateKey( spep_1 -3 + 147, 1, -27.5 );
setRotateKey( spep_1 -3 + 148, 1, 18.8 );--105
setRotateKey( spep_1 -3 + 150, 1, 68.8 );
setRotateKey( spep_1 -3 + 151, 1, 68.8 );
setRotateKey( spep_1 -3 + 152, 1, 104.1 );--106
setRotateKey( spep_1 -3 + 153, 1, 104.1 );
setRotateKey( spep_1 -3 + 154, 1, -38.4 );--107
setRotateKey( spep_1 -3 + 155, 1, -38.4 );
setRotateKey( spep_1 -3 + 156, 1, -248.6 );
setRotateKey( spep_1 -3 + 157, 1, -248.6 );
setRotateKey( spep_1 -3 + 158, 1, -26.8 );--106
setRotateKey( spep_1 -3 + 159, 1, -26.8 );
setRotateKey( spep_1 -3 + 160, 1, 19.5 );--105
setRotateKey( spep_1 -3 + 162, 1, 69.5 );
setRotateKey( spep_1 -3 + 163, 1, 69.5 );
setRotateKey( spep_1 -3 + 164, 1, 104.8 );--106
setRotateKey( spep_1 -3 + 165, 1, 104.8 );
setRotateKey( spep_1 -3 + 166, 1, -38.4 );--107
setRotateKey( spep_1 -3 + 167, 1, -38.4 );
setRotateKey( spep_1 -3 + 168, 1, -248.6 );
setRotateKey( spep_1 -3 + 169, 1, -248.6 );
setRotateKey( spep_1 -3 + 170, 1, -26.2 );--106
setRotateKey( spep_1 -3 + 171, 1, -26.2 );
setRotateKey( spep_1 -3 + 172, 1, 20.1 );--105
setRotateKey( spep_1 -3 + 174, 1, 70.2 );
setRotateKey( spep_1 -3 + 175, 1, 70.2 );
setRotateKey( spep_1 -3 + 176, 1, 105.5 );--106
setRotateKey( spep_1 -3 + 177, 1, 105.5 );
setRotateKey( spep_1 -3 + 178, 1, -38.4 );--107
setRotateKey( spep_1 -3 + 179, 1, -38.4 );
setRotateKey( spep_1 -3 + 180, 1, -238.6 );
setRotateKey( spep_1 -3 + 181, 1, -238.6 );
setRotateKey( spep_1 -3 + 182, 1, -25.5 );--106
setRotateKey( spep_1 -3 + 183, 1, -25.5 );--106

setRotateKey( spep_1 -3 + 208, 1, 104.1 );
setRotateKey( spep_1 -3 + 210, 1, 104.3 );
setRotateKey( spep_1 -3 + 212, 1, 104.5 );
setRotateKey( spep_1 -3 + 214, 1, 104.7 );
setRotateKey( spep_1 -3 + 216, 1, 104.8 );
setRotateKey( spep_1 -3 + 218, 1, 105 );
setRotateKey( spep_1 -3 + 220, 1, 105.1 );
setRotateKey( spep_1 -3 + 222, 1, 105.1 );
setRotateKey( spep_1 -3 + 224, 1, 105.2 );
setRotateKey( spep_1 -3 + 226, 1, 105.3 );
setRotateKey( spep_1 -3 + 228, 1, 105.3 );
setRotateKey( spep_1 -3 + 230, 1, 105.4 );
setRotateKey( spep_1 -3 + 232, 1, 105.5 );
setRotateKey( spep_1 -3 + 234, 1, 105.5 );
setRotateKey( spep_1 -3 + 236, 1, 105.7 );
setRotateKey( spep_1 -3 + 238, 1, 105.8 );
setRotateKey( spep_1 -3 + 240, 1, 105.8 );
setRotateKey( spep_1 -3 + 242, 1, 105.9 );
setRotateKey( spep_1 -3 + 244, 1, 106 );
setRotateKey( spep_1 -3 + 246, 1, 106 );
setRotateKey( spep_1 -3 + 248, 1, 106.1 );

--白フェード
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 160 );  --white fade
entryFade( spep_1 + 238, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+246;

------------------------------------------------------
--構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 120, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 120, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 120, tame, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_2  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +12, 190006, 72, 0x100, -1, 0, -10, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 +12,  ctgogo,  -10,  510);
setEffMoveKey(  spep_2 +84,  ctgogo,  -10,  510);

setEffAlphaKey( spep_2 +12, ctgogo, 0 );
setEffAlphaKey( spep_2 + 13, ctgogo, 255 );
setEffAlphaKey( spep_2 + 14, ctgogo, 255 );
setEffAlphaKey( spep_2 + 76, ctgogo, 255 );
setEffAlphaKey( spep_2 + 78, ctgogo, 255 );
setEffAlphaKey( spep_2 + 80, ctgogo, 191 );
setEffAlphaKey( spep_2 + 82, ctgogo, 128 );
setEffAlphaKey( spep_2 + 84, ctgogo, 64 );

setEffRotateKey(  spep_2 +12,  ctgogo,  0);
setEffRotateKey(  spep_2 +84,  ctgogo,  0);

setEffScaleKey(  spep_2 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_2 + 12, 1018 );  --ごごご

--白フェード
entryFade( spep_2 + 108, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+116;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
--発射
------------------------------------------------------
-- ** エフェクト等 ** --
firing = entryEffect( spep_4 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, firing, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, firing, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, firing, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, firing, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, firing, 0 );
setEffRotateKey( spep_4 + 56, firing, 0 );
setEffAlphaKey( spep_4 + 0, firing, 255 );
setEffAlphaKey( spep_4 + 56, firing, 255 );
setEffAlphaKey( spep_4 + 57, firing, 0 );
setEffAlphaKey( spep_4 + 58, firing, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4 -3 + 6,  10012, 32, 0x100, -1001, 0, 42.6, 169.3 );--ズオッ

setEffMoveKey( spep_4 -3 + 6, ctzuo, 42.6, 169.3 , 0 );
setEffMoveKey( spep_4 -3 + 8, ctzuo, 66.5, 211.2 , 0 );
setEffMoveKey( spep_4 -3 + 10, ctzuo, 70.4, 271.5 , 0 );
setEffMoveKey( spep_4 -3 + 12, ctzuo, 106.2, 310.5 , 0 );
setEffMoveKey( spep_4 -3 + 14, ctzuo, 83.7, 324.1 , 0 );
setEffMoveKey( spep_4 -3 + 16, ctzuo, 106.2, 310.5 , 0 );
setEffMoveKey( spep_4 -3 + 18, ctzuo, 83.7, 324.1 , 0 );
setEffMoveKey( spep_4 -3 + 20, ctzuo, 106.2, 310.5 , 0 );
setEffMoveKey( spep_4 -3 + 22, ctzuo, 83.7, 324.1 , 0 );
setEffMoveKey( spep_4 -3 + 24, ctzuo, 106.2, 310.5 , 0 );
setEffMoveKey( spep_4 -3 + 26, ctzuo, 83.7, 324.1 , 0 );
setEffMoveKey( spep_4 -3 + 28, ctzuo, 110.2, 310.4 , 0 );
setEffMoveKey( spep_4 -3 + 30, ctzuo, 88, 326.3 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo, 118.8, 309.9 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo, 92.3, 328.5 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo, 127.2, 309.5 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo, 96.5, 330.5 , 0 );

setEffScaleKey( spep_4 -3 + 6, ctzuo, 0.78, 0.78 );
setEffScaleKey( spep_4 -3 + 8, ctzuo, 1.57, 1.57 );
setEffScaleKey( spep_4 -3 + 10, ctzuo, 2.39, 2.39 );
setEffScaleKey( spep_4 -3 + 12, ctzuo, 3.17, 3.17 );
setEffScaleKey( spep_4 -3 + 26, ctzuo, 3.17, 3.17 );
setEffScaleKey( spep_4 -3 + 28, ctzuo, 3.45, 3.45 );
setEffScaleKey( spep_4 -3 + 30, ctzuo, 3.75, 3.75 );
setEffScaleKey( spep_4 -3 + 32, ctzuo, 4.06, 4.06 );
setEffScaleKey( spep_4 -3 + 34, ctzuo, 4.33, 4.33 );
setEffScaleKey( spep_4 -3 + 36, ctzuo, 4.64, 4.64 );
setEffScaleKey( spep_4 -3 + 38, ctzuo, 4.91, 4.91 );

setEffRotateKey( spep_4 -3 + 6, ctzuo, 28.2 );
setEffRotateKey( spep_4 -3 + 8, ctzuo, 23.4 );
setEffRotateKey( spep_4 -3 + 10, ctzuo, 18.4 );
setEffRotateKey( spep_4 -3 + 12, ctzuo, 13.5 );
setEffRotateKey( spep_4 -3 + 38, ctzuo, 13.5 );

setEffAlphaKey( spep_4 -3 + 6, ctzuo, 255 );
setEffAlphaKey( spep_4 -3 + 38, ctzuo, 255 );

--白フェード
entryFade( spep_4 + 48, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 6, 1022 ); --発射

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;

------------------------------------------------------
--迫る〜ラスト
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_08,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_5 + 240, finish, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 240, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 240, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 240, finish, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5 -1  + 58, 1, 0 );

changeAnime( spep_5  + 0, 1, 107 );

setMoveKey( spep_5  + 0, 1, 4.3, 96.9 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, 1.8, 87.4 , 0 );
setMoveKey( spep_5 -3 + 4, 1, 7.2, 110.2 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 4.5, 112.1 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 9.9, 123.2 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 3.4, 126.3 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 12.9, 137.6 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 10.4, 140.9 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 15.8, 151.9 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 9.3, 155.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 18.9, 167.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 15.2, 165.3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 19.5, 170.8 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 11.7, 168.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 20, 174.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 16.3, 172.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 20.6, 178.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 12.9, 176.4 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 21.1, 182.5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 17.4, 180.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 21.8, 186.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 14.1, 185.1 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 22.4, 191.2 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 18.6, 189.6 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 23, 195.9 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 19.3, 190.3 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 23.6, 200.8 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 20, 199.2 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 24.2, 205.7 , 0 );
setMoveKey( spep_5 -1 + 58, 1, 20.5, 204.4 , 0 );

setScaleKey( spep_5 -3 + 0, 1, 0.18, 0.18 );
setScaleKey( spep_5 -3 + 2, 1, 0.22, 0.22 );
setScaleKey( spep_5 -3 + 4, 1, 0.25, 0.25 );
setScaleKey( spep_5 -3 + 6, 1, 0.29, 0.29 );
setScaleKey( spep_5 -3 + 8, 1, 0.33, 0.33 );
setScaleKey( spep_5 -3 + 10, 1, 0.37, 0.37 );
setScaleKey( spep_5 -3 + 12, 1, 0.41, 0.41 );
setScaleKey( spep_5 -3 + 14, 1, 0.45, 0.45 );
setScaleKey( spep_5 -3 + 16, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 18, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 20, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 22, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 24, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 26, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 28, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 30, 1, 0.66, 0.66 );
setScaleKey( spep_5 -3 + 32, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 34, 1, 0.69, 0.69 );
setScaleKey( spep_5 -3 + 36, 1, 0.71, 0.71 );
setScaleKey( spep_5 -3 + 38, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 40, 1, 0.74, 0.74 );
setScaleKey( spep_5 -3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_5 -3 + 44, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 46, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 48, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 50, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 52, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 54, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 56, 1, 0.87, 0.87 );
setScaleKey( spep_5 -1 + 58, 1, 0.89, 0.89 );

setRotateKey( spep_5  + 0, 1, -129.3 );
setRotateKey( spep_5 -1 + 58, 1, -129.3 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 58-1, 0x100, -1, 0, 0, 125.6 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 125.6 , 0 );
setEffMoveKey( spep_5 -1 + 58, shuchusen4, 0, 125.6 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.07, 1.39 );
setEffScaleKey( spep_5 + 58 -1, shuchusen4, 1.07, 1.39 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5 + 58 -1, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5 + 58 -1, shuchusen4, 255 );

--白フェード
entryFade( spep_5 + 52, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_5 + 58, 1023 ); --被弾
setSeVolume( spep_5 + 58, 1023, 120 );
playSe( spep_5 + 60, 1156 ); --飲み込み
setSeVolume( spep_5 + 60, 1156, 60 );

-- ** ダメージ表示 ** --
dealDamage(spep_5 + 58);
endPhase( spep_5 + 174 );

end