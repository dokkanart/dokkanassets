--4017910:パーフェクトセル_パーフェクトショット
--sp_effect_b4_00107

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

--エフェクト
SP_01=	153976	;--	手前突進
SP_02=	153977	;--	逆水平〜敵落下・手前
SP_03=	153978	;--	逆水平〜敵落下・奥
SP_04=	153979	;--	構え〜発射
SP_05=	153980	;--	ビーム〜着弾・手前
SP_06=	153981	;--	ビーム〜着弾・奥
SP_07=	153982	;--	爆発

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手前突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
lush = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, lush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, lush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 70, lush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, lush, 0 );
setEffRotateKey( spep_0 + 70, lush, 0 );
setEffAlphaKey( spep_0 + 0, lush, 255 );
setEffAlphaKey( spep_0 + 70, lush, 255 );

-- ** 音 ** --
SE0=playSe( spep_0, 9 );  --ダッシュ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
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

--白フェード
entryFade( spep_0 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 70;

------------------------------------------------------
-- 叩く
------------------------------------------------------

-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 180, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 180, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 180, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 180, fighting_b, 255 );

-- ** エフェクト等 ** --
ctbaki = entryEffect( spep_1 + 0, 153983,  0x100, -1, 0, 0, 0 ); --バキッ
setEffMoveKey( spep_1 + 0, ctbaki, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, ctbaki, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctbaki, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, ctbaki, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctbaki, 0 );
setEffRotateKey( spep_1 + 180, ctbaki, 0 );
setEffAlphaKey( spep_1 + 0, ctbaki, 255 );
setEffAlphaKey( spep_1 + 180, ctbaki, 255 );

-- ** エフェクト等 ** --
ctdou = entryEffect( spep_1 + 0, 153984,  0x100, -1, 0, 0, 0 ); --ドウッ
setEffMoveKey( spep_1 + 0, ctdou, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, ctdou, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctdou, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, ctdou, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctdou, 0 );
setEffRotateKey( spep_1 + 180, ctdou, 0 );
setEffAlphaKey( spep_1 + 0, ctdou, 255 );
setEffAlphaKey( spep_1 + 180, ctdou, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 -3 + 50,  906, 40, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 50, shuchusen1, 1.05, 1.27 );
setEffScaleKey( spep_1 -3 + 90, shuchusen1, 1.05, 1.27 );

setEffRotateKey( spep_1 -3 + 50, shuchusen1, 180 );
setEffRotateKey( spep_1 -3 + 90, shuchusen1, 180 );

setEffAlphaKey( spep_1 -3 + 50, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 88, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 89, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 90, shuchusen1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 124,  906, 54, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 124, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 178, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 124, shuchusen2, 1.05, 1.27 );
setEffScaleKey( spep_1 -3 + 178, shuchusen2, 1.05, 1.27 );

setEffRotateKey( spep_1 -3 + 124, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 178, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 124, shuchusen2, 26 );
setEffAlphaKey( spep_1 -3 + 126, shuchusen2, 72 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 118 );
setEffAlphaKey( spep_1 -3 + 130, shuchusen2, 163 );
setEffAlphaKey( spep_1 -3 + 132, shuchusen2, 209 );
setEffAlphaKey( spep_1 -3 + 134, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 178, shuchusen2, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1 - 3 + 71, 1, 0 );
setDisp( spep_1 -3 + 90, 1, 1 );
setDisp( spep_1  -3+ 152, 1, 0 );
changeAnime( spep_1  + 0, 1, 102 );
changeAnime( spep_1 -3 + 50, 1, 106 );
changeAnime( spep_1 -3 + 90, 1, 107 );

setMoveKey( spep_1  + 0, 1, 102.3, -64.4 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 112, -68.8 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 121.6, -73.2 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 131.2, -77.6 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 140.8, -82 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 150.5, -86.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 160.1, -90.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 169.7, -95.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 179.4, -99.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 189, -103.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 198.6, -108.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 201.1, -109.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 203.5, -109.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 206, -110.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 208.4, -111.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 210.9, -112 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 213.3, -112.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 215.8, -113.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 218.2, -114.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 220.7, -114.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 223.1, -115.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 225.6, -116.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 228, -117 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 230.4, -117.8 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 232.9, -118.5 , 0 );

a=30;

setMoveKey( spep_1 -3 + 50, 1, 166.4 +a, -72.2 -a , 0 );
setMoveKey( spep_1 -3 + 52, 1, 201.5 +a, -81.3 -a, 0 );
setMoveKey( spep_1 -3 + 54, 1, 236.6 +a, -90.4 -a, 0 );
setMoveKey( spep_1 -3 + 56, 1, 271.6 +a, -99.4 -a, 0 );
setMoveKey( spep_1 -3 + 58, 1, 306.7 +a, -108.5 -a, 0 );
setMoveKey( spep_1 -3 + 60, 1, 591 +a, -181.9 -a, 0 );
setMoveKey( spep_1 -3 + 62, 1, 875.4 +a, -255.3 -a, 0 );
setMoveKey( spep_1 -3 + 64, 1, 1159.7 +a, -328.7 -a, 0 );
setMoveKey( spep_1 -3 + 66, 1, 1444.1 +a, -402.1 -a, 0 );
setMoveKey( spep_1 -3 + 68, 1, 1728.5 +a, -475.5 -a, 0 );
setMoveKey( spep_1 -3 + 71, 1, 2012.9 +a, -548.9 -a, 0 );

setMoveKey( spep_1 -3 + 90, 1, 14, 315.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 12.4, 292.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 10.8, 269.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 9.3, 246.4 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 7.9, 223.3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 7, 211.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 6.1, 200 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 5.2, 188.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 4.3, 176.7 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 3.5, 165 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 2.6, 153.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 1.7, 141.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 0.5, 114.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -0.8, 88.1 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -2.1, 61.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -3.3, 34.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -4.6, 7.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -9.1, -24.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -5.7, -34.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -11.7, -39.2 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -8, -44.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -12.4, -52.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -6, -61.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -9.3, -71.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -2.7, -86.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -5.6, -102.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -8.4, -122.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -1.3, -147.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -3.7, -174.6 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -6, -205.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 1.6, -241.1 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -0.2, -279.4 , 0 );


setScaleKey( spep_1  + 0, 1, 1.62, 1.62 );
--setScaleKey( spep_1 -3 + 2, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 4, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 6, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 8, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 12, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 14, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 16, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 18, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 20, 1, 2.19, 2.19 );
setScaleKey( spep_1 -3 + 22, 1, 2.21, 2.21 );
setScaleKey( spep_1 -3 + 24, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 26, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 28, 1, 2.26, 2.26 );
setScaleKey( spep_1 -3 + 30, 1, 2.28, 2.28 );
setScaleKey( spep_1 -3 + 32, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 34, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 36, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 38, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 40, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 42, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 44, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 46, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 49, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 50, 1, 3.34, 3.34 );
setScaleKey( spep_1 -3 + 71, 1, 3.34, 3.34 );

setScaleKey( spep_1 -3 + 90, 1 , 0.1, 0.1 );
setScaleKey( spep_1 -3 + 92, 1 , 0.15, 0.15 );
setScaleKey( spep_1 -3 + 94, 1 , 0.19, 0.19 );
setScaleKey( spep_1 -3 + 96, 1 , 0.23, 0.23 );
setScaleKey( spep_1 -3 + 98, 1 , 0.27, 0.27 );
setScaleKey( spep_1 -3 + 100, 1 , 0.29, 0.29 );
setScaleKey( spep_1 -3 + 102, 1 , 0.31, 0.31 );
setScaleKey( spep_1 -3 + 104, 1 , 0.33, 0.33 );
setScaleKey( spep_1 -3 + 106, 1 , 0.35, 0.35 );
setScaleKey( spep_1 -3 + 108, 1 , 0.37, 0.37 );
setScaleKey( spep_1 -3 + 110, 1 , 0.39, 0.39 );
setScaleKey( spep_1 -3 + 112, 1 , 0.41, 0.41 );
setScaleKey( spep_1 -3 + 114, 1 , 0.44, 0.44 );
setScaleKey( spep_1 -3 + 116, 1 , 0.47, 0.47 );
setScaleKey( spep_1 -3 + 118, 1 , 0.5, 0.5 );
setScaleKey( spep_1 -3 + 120, 1 , 0.53, 0.53 );
setScaleKey( spep_1 -3 + 122, 1 , 0.56, 0.56 );
setScaleKey( spep_1 -3 + 124, 1 , 0.8, 0.8 );
setScaleKey( spep_1 -3 + 126, 1 , 0.77, 0.77 );
setScaleKey( spep_1 -3 + 128, 1 , 0.74, 0.74 );
setScaleKey( spep_1 -3 + 130, 1 , 0.7, 0.7 );
setScaleKey( spep_1 -3 + 132, 1 , 0.74, 0.74 );
setScaleKey( spep_1 -3 + 134, 1 , 0.76, 0.76 );
setScaleKey( spep_1 -3 + 136, 1 , 0.8, 0.8 );
setScaleKey( spep_1 -3 + 138, 1 , 0.84, 0.84 );
setScaleKey( spep_1 -3 + 140, 1 , 0.9, 0.9 );
setScaleKey( spep_1 -3 + 142, 1 , 0.97, 0.97 );
setScaleKey( spep_1 -3 + 144, 1 , 1.04, 1.04 );
setScaleKey( spep_1 -3 + 146, 1 , 1.14, 1.14 );
setScaleKey( spep_1 -3 + 148, 1 , 1.24, 1.24 );
setScaleKey( spep_1 -3 + 150, 1 , 1.35, 1.35 );
setScaleKey( spep_1 -3 + 152, 1 , 1.48, 1.48 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 49, 1, 0 );
setRotateKey( spep_1 -3 + 50, 1, -21 );
setRotateKey( spep_1 -3 + 52, 1, -18.5 );
setRotateKey( spep_1 -3 + 54, 1, -16 );
setRotateKey( spep_1 -3 + 56, 1, -13.6 );
setRotateKey( spep_1 -3 + 58, 1, -11.1 );
setRotateKey( spep_1 -3 + 60, 1, -4.1 );
setRotateKey( spep_1 -3 + 62, 1, 2.8 );
setRotateKey( spep_1 -3 + 64, 1, 9.8 );
setRotateKey( spep_1 -3 + 66, 1, 16.8 );
setRotateKey( spep_1 -3 + 68, 1, 23.7 );
setRotateKey( spep_1 -3 + 71, 1, 30.7 );

setRotateKey( spep_1 -3 + 90, 1, 42.2 );
setRotateKey( spep_1 -3 + 92, 1, 44 );
setRotateKey( spep_1 -3 + 94, 1, 45.8 );
setRotateKey( spep_1 -3 + 96, 1, 47.6 );
setRotateKey( spep_1 -3 + 98, 1, 49.4 );
setRotateKey( spep_1 -3 + 100, 1, 50 );
setRotateKey( spep_1 -3 + 102, 1, 50.6 );
setRotateKey( spep_1 -3 + 104, 1, 51.2 );
setRotateKey( spep_1 -3 + 106, 1, 51.7 );
setRotateKey( spep_1 -3 + 108, 1, 52.3 );
setRotateKey( spep_1 -3 + 110, 1, 52.9 );
setRotateKey( spep_1 -3 + 112, 1, 53.5 );
setRotateKey( spep_1 -3 + 114, 1, 53.7 );
setRotateKey( spep_1 -3 + 116, 1, 53.9 );
setRotateKey( spep_1 -3 + 118, 1, 54.1 );
setRotateKey( spep_1 -3 + 120, 1, 54.3 );
setRotateKey( spep_1 -3 + 122, 1, 54.5 );
setRotateKey( spep_1 -3 + 124, 1, 54.7 );
setRotateKey( spep_1 -3 + 126, 1, 54.8 );
setRotateKey( spep_1 -3 + 128, 1, 54.9 );
setRotateKey( spep_1 -3 + 130, 1, 55 );
setRotateKey( spep_1 -3 + 132, 1, 55.1 );
setRotateKey( spep_1 -3 + 138, 1, 55.1 );
setRotateKey( spep_1 -3 + 140, 1, 55.2 );
setRotateKey( spep_1 -3 + 144, 1, 55.2 );
setRotateKey( spep_1 -3 + 146, 1, 55.3 );
setRotateKey( spep_1 -3 + 150, 1, 55.3 );
setRotateKey( spep_1 -3 + 152, 1, 55.4 );


--SE
playSe( spep_1, 1018 );  --ダッシュ
playSe( spep_1 + 48, 1011);--叩く
playSe( spep_1 + 88, 44);--落ちる
playSe( spep_1 + 122, 1014 );  --ズザー
playSe( spep_1 + 124, 1027 );  --ズザー
playSe( spep_1 + 146, 1023 );  --ズザー

--白フェード
entryFade( spep_1 + 172, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 180;

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

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 構え〜発射
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 200, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 200, tame, 255 );

-- ** エフェクト等 ** --
ctbi = entryEffect( spep_3 + 0, 153985,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ctbi, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, ctbi, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ctbi, 1.0, 1.0 );
setEffScaleKey( spep_3 + 200, ctbi, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctbi, 0 );
setEffRotateKey( spep_3 + 200, ctbi, 0 );
setEffAlphaKey( spep_3 + 0, ctbi, 255 );
setEffAlphaKey( spep_3 + 200, ctbi, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 -3 + 30,  906, 110, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 30, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 140, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 30, shuchusen3, 1.05, 1.27 );
setEffScaleKey( spep_3 -3 + 140, shuchusen3, 1.05, 1.27 );

setEffAlphaKey( spep_3 -3 + 30, shuchusen3, 0 );
setEffAlphaKey( spep_3 -3 + 39, shuchusen3, 0 );
setEffAlphaKey( spep_3 -3 + 40, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 138, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 139, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 140, shuchusen3, 0 );

--***カットイン***
speff = entryEffect(  spep_3  +32,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_3  +32,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);         

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3 +46, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +46,  ctgogo,  0,  540);
setEffMoveKey(  spep_3 +118,  ctgogo,  0,  540);

setEffAlphaKey( spep_3  + 46, ctgogo, 0 );
setEffAlphaKey( spep_3  + 47, ctgogo, 255 );
setEffAlphaKey( spep_3  + 48, ctgogo, 255 );
setEffAlphaKey( spep_3  + 110, ctgogo, 255 );
setEffAlphaKey( spep_3  + 112, ctgogo, 191 );
setEffAlphaKey( spep_3  + 114, ctgogo, 128 );
setEffAlphaKey( spep_3  + 116, ctgogo, 64 );
setEffAlphaKey( spep_3  + 118, ctgogo, 0 );

setEffRotateKey(  spep_3 +46,  ctgogo,  0);
setEffRotateKey(  spep_3 +118,  ctgogo,  0);

setEffScaleKey(  spep_3 +46,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +110,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +118,  ctgogo, 1.07, 1.07 );

--SE
SE1=playSe( spep_3, 55);--ため
stopSe( spep_3 +36, SE1, 10 );
playSe( spep_3+46, 1018);--ごごご
playSe( spep_3+144, 1145);--放つ

-- ** 次の準備 ** --
spep_4 = spep_3 + 196;

------------------------------------------------------
-- ビーム
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_4 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, beam_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 136, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_f, 0 );
setEffRotateKey( spep_4 + 136, beam_f, 0 );
setEffAlphaKey( spep_4 + 0, beam_f, 255 );
setEffAlphaKey( spep_4 + 136, beam_f, 255 );
--[[
--流線
ryusen2 = entryEffectLife( spep_4 + 0,  914, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 5.5, 1.41 );
setEffScaleKey( spep_4 + 68, ryusen2, 5.5, 1.41 );

setEffRotateKey( spep_4 + 0, ryusen2, 110.7 );
setEffRotateKey( spep_4 + 68, ryusen2, 110.7 );

setEffAlphaKey( spep_4 + 0, ryusen2, 128 );
setEffAlphaKey( spep_4 + 66, ryusen2, 128 );
setEffAlphaKey( spep_4 + 67, ryusen2, 0 );
setEffAlphaKey( spep_4 + 68, ryusen2, 0 );
]]
-- ** エフェクト等 ** --
beam_b = entryEffect( spep_4 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 140, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 140, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_b, 0 );
setEffRotateKey( spep_4 + 140, beam_b, 0 );
setEffAlphaKey( spep_4 + 0, beam_b, 255 );
setEffAlphaKey( spep_4 + 140, beam_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_4 -3 + 86,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 86, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 126, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 86, shuchusen4, 1.05, 1.27 );
setEffScaleKey( spep_4 -3 + 126, shuchusen4, 1.05, 1.27 );

setEffRotateKey( spep_4 -3 + 86, shuchusen4, 0 );
setEffRotateKey( spep_4 -3 + 126, shuchusen4, 0 );

setEffAlphaKey( spep_4 -3 + 86, shuchusen4, 28 );
setEffAlphaKey( spep_4 -3 + 88, shuchusen4, 57 );
setEffAlphaKey( spep_4 -3 + 90, shuchusen4, 85 );
setEffAlphaKey( spep_4 -3 + 92, shuchusen4, 113 );
setEffAlphaKey( spep_4 -3 + 94, shuchusen4, 142 );
setEffAlphaKey( spep_4 -3 + 96, shuchusen4, 170 );
setEffAlphaKey( spep_4 -3 + 98, shuchusen4, 198 );
setEffAlphaKey( spep_4 -3 + 100, shuchusen4, 227 );
setEffAlphaKey( spep_4 -3 + 102, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 125, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 126, shuchusen4, 0 );

--敵の動き
setDisp( spep_4 -3  + 70, 1, 1 );
setDisp( spep_4 -3  + 138, 1, 0 );
changeAnime( spep_4 -3  + 70, 1, 107 );

setMoveKey( spep_4 -3 + 70, 1, -75, -243.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -76.9, -246.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -78.8, -250.3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -80.6, -253.7 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -82.5, -257.1 , 0 );
setMoveKey( spep_4 -3 + 80, 1, -84.4, -260.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, -86.2, -263.8 , 0 );
setMoveKey( spep_4 -3 + 84, 1, -88.1, -267.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, -89.9, -270.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, -91.8, -274 , 0 );
setMoveKey( spep_4 -3 + 90, 1, -97.7, -281.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, -95.5, -280.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, -101.4, -292.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, -99.3, -287.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, -109.2, -294.9 , 0 );
setMoveKey( spep_4 -3 + 100, 1, -103, -294.3 , 0 );
setMoveKey( spep_4 -3 + 102, 1, -109.9, -304.9 , 0 );
setMoveKey( spep_4 -3 + 104, 1, -108.7, -307.5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, -119.5, -318.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, -114.4, -320.8 , 0 );
setMoveKey( spep_4 -3 + 110, 1, -121.3, -331.3 , 0 );
setMoveKey( spep_4 -3 + 112, 1, -120.1, -334 , 0 );
setMoveKey( spep_4 -3 + 114, 1, -127, -344.7 , 0 );
setMoveKey( spep_4 -3 + 116, 1, -125.8, -347.3 , 0 );
setMoveKey( spep_4 -3 + 118, 1, -132.7, -353.9 , 0 );
setMoveKey( spep_4 -3 + 120, 1, -131.5, -360.5 , 0 );
setMoveKey( spep_4 -3 + 122, 1, -134.4, -371.1 , 0 );
setMoveKey( spep_4 -3 + 124, 1, -137.2, -373.8 , 0 );
setMoveKey( spep_4 -3 + 126, 1, -152, -392.4 , 0 );
setMoveKey( spep_4 -3 + 128, 1, -142.9, -387 , 0 );
setMoveKey( spep_4 -3 + 130, 1, -161.7, -397.6 , 0 );
setMoveKey( spep_4 -3 + 132, 1, -148.6, -400.2 , 0 );
setMoveKey( spep_4 -3 + 134, 1, -155.4, -418.8 , 0 );
setMoveKey( spep_4 -3 + 136, 1, -154.3, -413.5 , 0 );
setMoveKey( spep_4 -3 + 138, 1, -165.1, -432.1 , 0 );

setScaleKey( spep_4 -3 + 70, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 72, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 74, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 76, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 78, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 80, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 82, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 84, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 86, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 88, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 90, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 92, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 94, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 96, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 98, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 100, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 102, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 104, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 106, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 108, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 110, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 112, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 114, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 116, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 118, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 120, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 122, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 124, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 126, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 128, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 130, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 132, 1, 0.99, 0.99 );
setScaleKey( spep_4 -3 + 134, 1, 1, 1 );
setScaleKey( spep_4 -3 + 136, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 138, 1, 1.03, 1.03 );

setRotateKey( spep_4 -3 + 70, 1, 6.2 );
setRotateKey( spep_4 -3 + 138, 1, 6.2 );

--SE
playSe( spep_4, 1021 );  --伸びる音
playSe( spep_4 +68, 1022 );  --伸びる音

-- ** 次の準備 ** --
spep_5 = spep_4 + 136;



------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_07,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_5 + 140, explosion, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_5 + 140, explosion, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 140, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 140, explosion, 255 );

-- ** エフェクト等 ** --
ctzan = entryEffect( spep_5 + 0, 153986,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ctzan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 140, ctzan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ctzan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 140, ctzan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ctzan, 0 );
setEffRotateKey( spep_5 + 140, ctzan, 0 );
setEffAlphaKey( spep_5 + 0, ctzan, 255 );
setEffAlphaKey( spep_5 + 140, ctzan, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 102 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 102, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.05, 1.27 );
setEffScaleKey( spep_5-3 + 102, shuchusen4, 1.05, 1.27 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5-3 + 102, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5-3 + 76, shuchusen4, 255 );
setEffAlphaKey( spep_5-3 + 78, shuchusen4, 235 );
setEffAlphaKey( spep_5-3 + 80, shuchusen4, 216 );
setEffAlphaKey( spep_5-3 + 82, shuchusen4, 196 );
setEffAlphaKey( spep_5-3 + 84, shuchusen4, 177 );
setEffAlphaKey( spep_5-3 + 86, shuchusen4, 157 );
setEffAlphaKey( spep_5-3 + 88, shuchusen4, 137 );
setEffAlphaKey( spep_5-3 + 90, shuchusen4, 118 );
setEffAlphaKey( spep_5-3 + 92, shuchusen4, 98 );
setEffAlphaKey( spep_5-3 + 94, shuchusen4, 78 );
setEffAlphaKey( spep_5-3 + 96, shuchusen4, 59 );
setEffAlphaKey( spep_5-3 + 98, shuchusen4, 39 );
setEffAlphaKey( spep_5-3 + 100, shuchusen4, 20 );
setEffAlphaKey( spep_5-3 + 102, shuchusen4, 0 );

--SE
playSe( spep_5, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 );
endPhase( spep_5 + 130 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手前突進
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
lush = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 70, lush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, lush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 70, lush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, lush, 0 );
setEffRotateKey( spep_0 + 70, lush, 0 );
setEffAlphaKey( spep_0 + 0, lush, 255 );
setEffAlphaKey( spep_0 + 70, lush, 255 );

-- ** 音 ** --
SE0=playSe( spep_0, 9 );  --ダッシュ

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 60; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    
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

--白フェード
entryFade( spep_0 + 62, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 70;

------------------------------------------------------
-- 叩く
------------------------------------------------------

-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, fighting_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 180, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 180, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, fighting_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 180, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 180, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 180, fighting_b, 255 );

-- ** エフェクト等 ** --
ctbaki = entryEffect( spep_1 + 0, 153987,  0x100, -1, 0, 0, 0 ); --バキッ
setEffMoveKey( spep_1 + 0, ctbaki, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, ctbaki, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctbaki, -1.0, 1.0 );
setEffScaleKey( spep_1 + 180, ctbaki, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctbaki, 0 );
setEffRotateKey( spep_1 + 180, ctbaki, 0 );
setEffAlphaKey( spep_1 + 0, ctbaki, 255 );
setEffAlphaKey( spep_1 + 180, ctbaki, 255 );

-- ** エフェクト等 ** --
ctdou = entryEffect( spep_1 + 0, 153984,  0x100, -1, 0, 0, 0 ); --ドウッ
setEffMoveKey( spep_1 + 0, ctdou, 0, 0 , 0 );
setEffMoveKey( spep_1 + 180, ctdou, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ctdou, -1.0, 1.0 );
setEffScaleKey( spep_1 + 180, ctdou, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctdou, 0 );
setEffRotateKey( spep_1 + 180, ctdou, 0 );
setEffAlphaKey( spep_1 + 0, ctdou, 255 );
setEffAlphaKey( spep_1 + 180, ctdou, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 -3 + 50,  906, 40, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 90, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 50, shuchusen1, 1.05, 1.27 );
setEffScaleKey( spep_1 -3 + 90, shuchusen1, 1.05, 1.27 );

setEffRotateKey( spep_1 -3 + 50, shuchusen1, 180 );
setEffRotateKey( spep_1 -3 + 90, shuchusen1, 180 );

setEffAlphaKey( spep_1 -3 + 50, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 88, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 89, shuchusen1, 255 );
setEffAlphaKey( spep_1 -3 + 90, shuchusen1, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 124,  906, 54, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 124, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 178, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 124, shuchusen2, 1.05, 1.27 );
setEffScaleKey( spep_1 -3 + 178, shuchusen2, 1.05, 1.27 );

setEffRotateKey( spep_1 -3 + 124, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 178, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 124, shuchusen2, 26 );
setEffAlphaKey( spep_1 -3 + 126, shuchusen2, 72 );
setEffAlphaKey( spep_1 -3 + 128, shuchusen2, 118 );
setEffAlphaKey( spep_1 -3 + 130, shuchusen2, 163 );
setEffAlphaKey( spep_1 -3 + 132, shuchusen2, 209 );
setEffAlphaKey( spep_1 -3 + 134, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 178, shuchusen2, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1 - 3 + 71, 1, 0 );
setDisp( spep_1 -3 + 90, 1, 1 );
setDisp( spep_1  -3+ 152, 1, 0 );
changeAnime( spep_1  + 0, 1, 102 );
changeAnime( spep_1 -3 + 50, 1, 106 );
changeAnime( spep_1 -3 + 90, 1, 107 );

setMoveKey( spep_1  + 0, 1, 102.3, -64.4 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 112, -68.8 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 121.6, -73.2 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 131.2, -77.6 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 140.8, -82 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 150.5, -86.4 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 160.1, -90.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 169.7, -95.2 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 179.4, -99.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 189, -103.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 198.6, -108.3 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 201.1, -109.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 203.5, -109.8 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 206, -110.5 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 208.4, -111.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 210.9, -112 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 213.3, -112.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 215.8, -113.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 218.2, -114.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 220.7, -114.9 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 223.1, -115.6 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 225.6, -116.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 228, -117 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 230.4, -117.8 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 232.9, -118.5 , 0 );

a=30;

setMoveKey( spep_1 -3 + 50, 1, 166.4 +a, -72.2 -a , 0 );
setMoveKey( spep_1 -3 + 52, 1, 201.5 +a, -81.3 -a, 0 );
setMoveKey( spep_1 -3 + 54, 1, 236.6 +a, -90.4 -a, 0 );
setMoveKey( spep_1 -3 + 56, 1, 271.6 +a, -99.4 -a, 0 );
setMoveKey( spep_1 -3 + 58, 1, 306.7 +a, -108.5 -a, 0 );
setMoveKey( spep_1 -3 + 60, 1, 591 +a, -181.9 -a, 0 );
setMoveKey( spep_1 -3 + 62, 1, 875.4 +a, -255.3 -a, 0 );
setMoveKey( spep_1 -3 + 64, 1, 1159.7 +a, -328.7 -a, 0 );
setMoveKey( spep_1 -3 + 66, 1, 1444.1 +a, -402.1 -a, 0 );
setMoveKey( spep_1 -3 + 68, 1, 1728.5 +a, -475.5 -a, 0 );
setMoveKey( spep_1 -3 + 71, 1, 2012.9 +a, -548.9 -a, 0 );

setMoveKey( spep_1 -3 + 90, 1, 14, 315.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 12.4, 292.4 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 10.8, 269.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 9.3, 246.4 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 7.9, 223.3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 7, 211.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 6.1, 200 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 5.2, 188.4 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 4.3, 176.7 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 3.5, 165 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 2.6, 153.3 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 1.7, 141.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 0.5, 114.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -0.8, 88.1 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -2.1, 61.4 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -3.3, 34.7 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -4.6, 7.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -9.1, -24.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -5.7, -34.6 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -11.7, -39.2 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -8, -44.9 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -12.4, -52.9 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -6, -61.8 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -9.3, -71.2 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -2.7, -86.6 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -5.6, -102.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, -8.4, -122.4 , 0 );
setMoveKey( spep_1 -3 + 144, 1, -1.3, -147.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, -3.7, -174.6 , 0 );
setMoveKey( spep_1 -3 + 148, 1, -6, -205.3 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 1.6, -241.1 , 0 );
setMoveKey( spep_1 -3 + 152, 1, -0.2, -279.4 , 0 );


setScaleKey( spep_1  + 0, 1, 1.62, 1.62 );
--setScaleKey( spep_1 -3 + 2, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 4, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 6, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 8, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_1 -3 + 12, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 14, 1, 2.02, 2.02 );
setScaleKey( spep_1 -3 + 16, 1, 2.08, 2.08 );
setScaleKey( spep_1 -3 + 18, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 20, 1, 2.19, 2.19 );
setScaleKey( spep_1 -3 + 22, 1, 2.21, 2.21 );
setScaleKey( spep_1 -3 + 24, 1, 2.23, 2.23 );
setScaleKey( spep_1 -3 + 26, 1, 2.25, 2.25 );
setScaleKey( spep_1 -3 + 28, 1, 2.26, 2.26 );
setScaleKey( spep_1 -3 + 30, 1, 2.28, 2.28 );
setScaleKey( spep_1 -3 + 32, 1, 2.3, 2.3 );
setScaleKey( spep_1 -3 + 34, 1, 2.32, 2.32 );
setScaleKey( spep_1 -3 + 36, 1, 2.34, 2.34 );
setScaleKey( spep_1 -3 + 38, 1, 2.36, 2.36 );
setScaleKey( spep_1 -3 + 40, 1, 2.38, 2.38 );
setScaleKey( spep_1 -3 + 42, 1, 2.39, 2.39 );
setScaleKey( spep_1 -3 + 44, 1, 2.41, 2.41 );
setScaleKey( spep_1 -3 + 46, 1, 2.43, 2.43 );
setScaleKey( spep_1 -3 + 49, 1, 2.45, 2.45 );
setScaleKey( spep_1 -3 + 50, 1, 3.34, 3.34 );
setScaleKey( spep_1 -3 + 71, 1, 3.34, 3.34 );

setScaleKey( spep_1 -3 + 90, 1 , 0.1, 0.1 );
setScaleKey( spep_1 -3 + 92, 1 , 0.15, 0.15 );
setScaleKey( spep_1 -3 + 94, 1 , 0.19, 0.19 );
setScaleKey( spep_1 -3 + 96, 1 , 0.23, 0.23 );
setScaleKey( spep_1 -3 + 98, 1 , 0.27, 0.27 );
setScaleKey( spep_1 -3 + 100, 1 , 0.29, 0.29 );
setScaleKey( spep_1 -3 + 102, 1 , 0.31, 0.31 );
setScaleKey( spep_1 -3 + 104, 1 , 0.33, 0.33 );
setScaleKey( spep_1 -3 + 106, 1 , 0.35, 0.35 );
setScaleKey( spep_1 -3 + 108, 1 , 0.37, 0.37 );
setScaleKey( spep_1 -3 + 110, 1 , 0.39, 0.39 );
setScaleKey( spep_1 -3 + 112, 1 , 0.41, 0.41 );
setScaleKey( spep_1 -3 + 114, 1 , 0.44, 0.44 );
setScaleKey( spep_1 -3 + 116, 1 , 0.47, 0.47 );
setScaleKey( spep_1 -3 + 118, 1 , 0.5, 0.5 );
setScaleKey( spep_1 -3 + 120, 1 , 0.53, 0.53 );
setScaleKey( spep_1 -3 + 122, 1 , 0.56, 0.56 );
setScaleKey( spep_1 -3 + 124, 1 , 0.8, 0.8 );
setScaleKey( spep_1 -3 + 126, 1 , 0.77, 0.77 );
setScaleKey( spep_1 -3 + 128, 1 , 0.74, 0.74 );
setScaleKey( spep_1 -3 + 130, 1 , 0.7, 0.7 );
setScaleKey( spep_1 -3 + 132, 1 , 0.74, 0.74 );
setScaleKey( spep_1 -3 + 134, 1 , 0.76, 0.76 );
setScaleKey( spep_1 -3 + 136, 1 , 0.8, 0.8 );
setScaleKey( spep_1 -3 + 138, 1 , 0.84, 0.84 );
setScaleKey( spep_1 -3 + 140, 1 , 0.9, 0.9 );
setScaleKey( spep_1 -3 + 142, 1 , 0.97, 0.97 );
setScaleKey( spep_1 -3 + 144, 1 , 1.04, 1.04 );
setScaleKey( spep_1 -3 + 146, 1 , 1.14, 1.14 );
setScaleKey( spep_1 -3 + 148, 1 , 1.24, 1.24 );
setScaleKey( spep_1 -3 + 150, 1 , 1.35, 1.35 );
setScaleKey( spep_1 -3 + 152, 1 , 1.48, 1.48 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 49, 1, 0 );
setRotateKey( spep_1 -3 + 50, 1, -21 );
setRotateKey( spep_1 -3 + 52, 1, -18.5 );
setRotateKey( spep_1 -3 + 54, 1, -16 );
setRotateKey( spep_1 -3 + 56, 1, -13.6 );
setRotateKey( spep_1 -3 + 58, 1, -11.1 );
setRotateKey( spep_1 -3 + 60, 1, -4.1 );
setRotateKey( spep_1 -3 + 62, 1, 2.8 );
setRotateKey( spep_1 -3 + 64, 1, 9.8 );
setRotateKey( spep_1 -3 + 66, 1, 16.8 );
setRotateKey( spep_1 -3 + 68, 1, 23.7 );
setRotateKey( spep_1 -3 + 71, 1, 30.7 );

setRotateKey( spep_1 -3 + 90, 1, 42.2 );
setRotateKey( spep_1 -3 + 92, 1, 44 );
setRotateKey( spep_1 -3 + 94, 1, 45.8 );
setRotateKey( spep_1 -3 + 96, 1, 47.6 );
setRotateKey( spep_1 -3 + 98, 1, 49.4 );
setRotateKey( spep_1 -3 + 100, 1, 50 );
setRotateKey( spep_1 -3 + 102, 1, 50.6 );
setRotateKey( spep_1 -3 + 104, 1, 51.2 );
setRotateKey( spep_1 -3 + 106, 1, 51.7 );
setRotateKey( spep_1 -3 + 108, 1, 52.3 );
setRotateKey( spep_1 -3 + 110, 1, 52.9 );
setRotateKey( spep_1 -3 + 112, 1, 53.5 );
setRotateKey( spep_1 -3 + 114, 1, 53.7 );
setRotateKey( spep_1 -3 + 116, 1, 53.9 );
setRotateKey( spep_1 -3 + 118, 1, 54.1 );
setRotateKey( spep_1 -3 + 120, 1, 54.3 );
setRotateKey( spep_1 -3 + 122, 1, 54.5 );
setRotateKey( spep_1 -3 + 124, 1, 54.7 );
setRotateKey( spep_1 -3 + 126, 1, 54.8 );
setRotateKey( spep_1 -3 + 128, 1, 54.9 );
setRotateKey( spep_1 -3 + 130, 1, 55 );
setRotateKey( spep_1 -3 + 132, 1, 55.1 );
setRotateKey( spep_1 -3 + 138, 1, 55.1 );
setRotateKey( spep_1 -3 + 140, 1, 55.2 );
setRotateKey( spep_1 -3 + 144, 1, 55.2 );
setRotateKey( spep_1 -3 + 146, 1, 55.3 );
setRotateKey( spep_1 -3 + 150, 1, 55.3 );
setRotateKey( spep_1 -3 + 152, 1, 55.4 );


--SE
playSe( spep_1, 1018 );  --ダッシュ
playSe( spep_1 + 48, 1011);--叩く
playSe( spep_1 + 88, 44);--落ちる
playSe( spep_1 + 122, 1014 );  --ズザー
playSe( spep_1 + 124, 1027 );  --ズザー
playSe( spep_1 + 146, 1023 );  --ズザー

--白フェード
entryFade( spep_1 + 172, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 180;

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

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--白フェード
entryFade( spep_2 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 構え〜発射
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 200, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 200, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 200, tame, 255 );

-- ** エフェクト等 ** --
ctbi = entryEffect( spep_3 + 0, 153985,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ctbi, 0, 0 , 0 );
setEffMoveKey( spep_3 + 200, ctbi, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ctbi, -1.0, 1.0 );
setEffScaleKey( spep_3 + 200, ctbi, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctbi, 0 );
setEffRotateKey( spep_3 + 200, ctbi, 0 );
setEffAlphaKey( spep_3 + 0, ctbi, 255 );
setEffAlphaKey( spep_3 + 200, ctbi, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_3 -3 + 30,  906, 110, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 30, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 140, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 30, shuchusen3, 1.05, 1.27 );
setEffScaleKey( spep_3 -3 + 140, shuchusen3, 1.05, 1.27 );

setEffAlphaKey( spep_3 -3 + 30, shuchusen3, 0 );
setEffAlphaKey( spep_3 -3 + 39, shuchusen3, 0 );
setEffAlphaKey( spep_3 -3 + 40, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 138, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 139, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 140, shuchusen3, 0 );

--***カットイン***
--speff = entryEffect(  spep_3  +32,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_3  +32,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);         

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3 +46, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +46,  ctgogo,  0,  540);
setEffMoveKey(  spep_3 +118,  ctgogo,  0,  540);

setEffAlphaKey( spep_3  + 46, ctgogo, 0 );
setEffAlphaKey( spep_3  + 47, ctgogo, 255 );
setEffAlphaKey( spep_3  + 48, ctgogo, 255 );
setEffAlphaKey( spep_3  + 110, ctgogo, 255 );
setEffAlphaKey( spep_3  + 112, ctgogo, 191 );
setEffAlphaKey( spep_3  + 114, ctgogo, 128 );
setEffAlphaKey( spep_3  + 116, ctgogo, 64 );
setEffAlphaKey( spep_3  + 118, ctgogo, 0 );

setEffRotateKey(  spep_3 +46,  ctgogo,  0);
setEffRotateKey(  spep_3 +118,  ctgogo,  0);

setEffScaleKey(  spep_3 +46,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +110,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +118,  ctgogo, -1.07, 1.07 );

--SE
SE1=playSe( spep_3, 55);--ため
stopSe( spep_3 +36, SE1, 10 );
playSe( spep_3+46, 1018);--ごごご
playSe( spep_3+144, 1145);--放つ

-- ** 次の準備 ** --
spep_4 = spep_3 + 196;

------------------------------------------------------
-- ビーム
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_4 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 136, beam_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 136, beam_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_f, 0 );
setEffRotateKey( spep_4 + 136, beam_f, 0 );
setEffAlphaKey( spep_4 + 0, beam_f, 255 );
setEffAlphaKey( spep_4 + 136, beam_f, 255 );

--[[
--流線
ryusen2 = entryEffectLife( spep_4 + 0,  914, 68, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 68, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, ryusen2, 5.5, 1.41 );
setEffScaleKey( spep_4 + 68, ryusen2, 5.5, 1.41 );

setEffRotateKey( spep_4 + 0, ryusen2, -110.7 );
setEffRotateKey( spep_4 + 68, ryusen2, -110.7 );

setEffAlphaKey( spep_4 + 0, ryusen2, 128 );
setEffAlphaKey( spep_4 + 66, ryusen2, 128 );
setEffAlphaKey( spep_4 + 67, ryusen2, 0 );
setEffAlphaKey( spep_4 + 68, ryusen2, 0 );
]]
-- ** エフェクト等 ** --
beam_b = entryEffect( spep_4 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 140, beam_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, beam_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 140, beam_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam_b, 0 );
setEffRotateKey( spep_4 + 140, beam_b, 0 );
setEffAlphaKey( spep_4 + 0, beam_b, 255 );
setEffAlphaKey( spep_4 + 140, beam_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_4 -3 + 86,  906, 40, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 -3 + 86, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 126, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 -3 + 86, shuchusen4, 1.05, 1.27 );
setEffScaleKey( spep_4 -3 + 126, shuchusen4, 1.05, 1.27 );

setEffRotateKey( spep_4 -3 + 86, shuchusen4, 0 );
setEffRotateKey( spep_4 -3 + 126, shuchusen4, 0 );

setEffAlphaKey( spep_4 -3 + 86, shuchusen4, 28 );
setEffAlphaKey( spep_4 -3 + 88, shuchusen4, 57 );
setEffAlphaKey( spep_4 -3 + 90, shuchusen4, 85 );
setEffAlphaKey( spep_4 -3 + 92, shuchusen4, 113 );
setEffAlphaKey( spep_4 -3 + 94, shuchusen4, 142 );
setEffAlphaKey( spep_4 -3 + 96, shuchusen4, 170 );
setEffAlphaKey( spep_4 -3 + 98, shuchusen4, 198 );
setEffAlphaKey( spep_4 -3 + 100, shuchusen4, 227 );
setEffAlphaKey( spep_4 -3 + 102, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 125, shuchusen4, 255 );
setEffAlphaKey( spep_4 -3 + 126, shuchusen4, 0 );

--敵の動き
setDisp( spep_4 -3  + 70, 1, 1 );
setDisp( spep_4 -3  + 138, 1, 0 );
changeAnime( spep_4 -3  + 70, 1, 107 );

setMoveKey( spep_4 -3 + 70, 1, 75, -243.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 76.9, -246.9 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 78.8, -250.3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 80.6, -253.7 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 82.5, -257.1 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 84.4, -260.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 86.2, -263.8 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 88.1, -267.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 89.9, -270.6 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 91.8, -274 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 97.7, -281.4 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 95.5, -280.8 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 101.4, -292.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 99.3, -287.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 109.2, -294.9 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 103, -294.3 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 109.9, -304.9 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 108.7, -307.5 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 119.5, -318.1 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 114.4, -320.8 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 121.3, -331.3 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 120.1, -334 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 127, -344.7 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 125.8, -347.3 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 132.7, -353.9 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 131.5, -360.5 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 134.4, -371.1 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 137.2, -373.8 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 152, -392.4 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 142.9, -387 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 161.7, -397.6 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 148.6, -400.2 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 155.4, -418.8 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 154.3, -413.5 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 165.1, -432.1 , 0 );

setScaleKey( spep_4 -3 + 70, 1, 0.66, 0.66 );
setScaleKey( spep_4 -3 + 72, 1, 0.67, 0.67 );
setScaleKey( spep_4 -3 + 74, 1, 0.68, 0.68 );
setScaleKey( spep_4 -3 + 76, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 78, 1, 0.69, 0.69 );
setScaleKey( spep_4 -3 + 80, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 82, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 84, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 86, 1, 0.72, 0.72 );
setScaleKey( spep_4 -3 + 88, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 90, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 92, 1, 0.74, 0.74 );
setScaleKey( spep_4 -3 + 94, 1, 0.75, 0.75 );
setScaleKey( spep_4 -3 + 96, 1, 0.76, 0.76 );
setScaleKey( spep_4 -3 + 98, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 100, 1, 0.77, 0.77 );
setScaleKey( spep_4 -3 + 102, 1, 0.79, 0.79 );
setScaleKey( spep_4 -3 + 104, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 106, 1, 0.81, 0.81 );
setScaleKey( spep_4 -3 + 108, 1, 0.83, 0.83 );
setScaleKey( spep_4 -3 + 110, 1, 0.84, 0.84 );
setScaleKey( spep_4 -3 + 112, 1, 0.85, 0.85 );
setScaleKey( spep_4 -3 + 114, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 116, 1, 0.88, 0.88 );
setScaleKey( spep_4 -3 + 118, 1, 0.9, 0.9 );
setScaleKey( spep_4 -3 + 120, 1, 0.91, 0.91 );
setScaleKey( spep_4 -3 + 122, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 124, 1, 0.94, 0.94 );
setScaleKey( spep_4 -3 + 126, 1, 0.95, 0.95 );
setScaleKey( spep_4 -3 + 128, 1, 0.97, 0.97 );
setScaleKey( spep_4 -3 + 130, 1, 0.98, 0.98 );
setScaleKey( spep_4 -3 + 132, 1, 0.99, 0.99 );
setScaleKey( spep_4 -3 + 134, 1, 1, 1 );
setScaleKey( spep_4 -3 + 136, 1, 1.02, 1.02 );
setScaleKey( spep_4 -3 + 138, 1, 1.03, 1.03 );

setRotateKey( spep_4 -3 + 70, 1, 6.2 );
setRotateKey( spep_4 -3 + 138, 1, 6.2 );

--SE
playSe( spep_4, 1021 );  --伸びる音
playSe( spep_4 +68, 1022 );  --伸びる音

-- ** 次の準備 ** --
spep_5 = spep_4 + 136;



------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_5 + 0, SP_07,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_5 + 140, explosion, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, explosion, -1.0, 1.0 );
setEffScaleKey( spep_5 + 140, explosion, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, explosion, 0 );
setEffRotateKey( spep_5 + 140, explosion, 0 );
setEffAlphaKey( spep_5 + 0, explosion, 255 );
setEffAlphaKey( spep_5 + 140, explosion, 255 );

-- ** エフェクト等 ** --
ctzan = entryEffect( spep_5 + 0, 153986,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ctzan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 140, ctzan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ctzan, -1.0, 1.0 );
setEffScaleKey( spep_5 + 140, ctzan, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ctzan, 0 );
setEffRotateKey( spep_5 + 140, ctzan, 0 );
setEffAlphaKey( spep_5 + 0, ctzan, 255 );
setEffAlphaKey( spep_5 + 140, ctzan, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_5 + 0,  906, 102 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_5-3 + 102, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen4, 1.05, 1.27 );
setEffScaleKey( spep_5-3 + 102, shuchusen4, 1.05, 1.27 );

setEffRotateKey( spep_5 + 0, shuchusen4, 180 );
setEffRotateKey( spep_5-3 + 102, shuchusen4, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_5-3 + 76, shuchusen4, 255 );
setEffAlphaKey( spep_5-3 + 78, shuchusen4, 235 );
setEffAlphaKey( spep_5-3 + 80, shuchusen4, 216 );
setEffAlphaKey( spep_5-3 + 82, shuchusen4, 196 );
setEffAlphaKey( spep_5-3 + 84, shuchusen4, 177 );
setEffAlphaKey( spep_5-3 + 86, shuchusen4, 157 );
setEffAlphaKey( spep_5-3 + 88, shuchusen4, 137 );
setEffAlphaKey( spep_5-3 + 90, shuchusen4, 118 );
setEffAlphaKey( spep_5-3 + 92, shuchusen4, 98 );
setEffAlphaKey( spep_5-3 + 94, shuchusen4, 78 );
setEffAlphaKey( spep_5-3 + 96, shuchusen4, 59 );
setEffAlphaKey( spep_5-3 + 98, shuchusen4, 39 );
setEffAlphaKey( spep_5-3 + 100, shuchusen4, 20 );
setEffAlphaKey( spep_5-3 + 102, shuchusen4, 0 );

--SE
playSe( spep_5, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_5 );
endPhase( spep_5 + 130 );
end