--1017950:人造人間18号(未来)_エネルギーウェイブ
--sp_effect_b4_00112

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

--エフェクト(味方)
SP_01=	154159	;--	導入、突進
SP_02=	154160	;--	格闘
SP_03=	154161	;--	背景
SP_04=	154162	;--	気弾溜め
SP_05=	154163	;--	背景
SP_06=	154164	;--	気弾敵に近づく
SP_07=	154165	;--	背景
SP_08=	154166	;--	ラスト、雲の上光ループ

--エフェクト(てき)
SP_01x=	154159	;--	導入、突進	
SP_02x=	154167	;--	格闘	(敵)
SP_03x=	154168	;--	背景	(敵)
SP_04x=	154162	;--	気弾溜め	
SP_05x=	154163	;--	背景	
SP_06x=	154164	;--	気弾敵に近づく	
SP_07x=	154165	;--	背景	
SP_08x=	154166	;--	ラスト、雲の上光ループ	

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
-- 導入、突進
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
dash = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, dash, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash, 1.0, 1.0 );
setEffScaleKey( spep_0 + 80, dash, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 80, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 80, dash, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 78, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 255 );

-- ** 音 ** --
SE0 = playSe( spep_0 + 0, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
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
    




    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------

--白フェード
entryFade( spep_0 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+80;

------------------------------------------------------
-- 気弾移動
------------------------------------------------------
-- ** エフェクト等 ** --
fighting = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting, 0, 0 , 0 );
setEffMoveKey( spep_1 + 240, fighting, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting, 1.0, 1.0 );
setEffScaleKey( spep_1 + 240, fighting, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting, 0 );
setEffRotateKey( spep_1 + 240, fighting, 0 );
setEffAlphaKey( spep_1 + 0, fighting, 255 );
setEffAlphaKey( spep_1 + 240, fighting, 255 );

-- ** エフェクト等 ** --
fighting_bg = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_bg, 0, 0 , 0 );
setEffMoveKey( spep_1 + 240, fighting_bg, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 240, fighting_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_bg, 0 );
setEffRotateKey( spep_1 + 240, fighting_bg, 0 );
setEffAlphaKey( spep_1 + 0, fighting_bg, 255 );
setEffAlphaKey( spep_1 + 240, fighting_bg, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 238, 1, 0 );

changeAnime( spep_1  + 0, 1, 100 );
changeAnime( spep_1 -3 + 30, 1, 106 );
changeAnime( spep_1 -3 + 112, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 106 );
changeAnime( spep_1 -3 + 176, 1, 108 );

setMoveKey( spep_1  + 0, 1, -3.5, -19.5 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, -3.5, -18.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -3.5, -17.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -3.5, -16.2 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -3.5, -15.1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -3.5, -14 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -3.5, -12.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -3.5, -11.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -3.5, -10.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -3.5, -9.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -3.5, -8.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -3.5, -7.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -3.5, -6.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -3.5, -5.1 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -3.5, -4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -42.6, -23.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -124.9, -31.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -42.3, 41.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -80.4, -44.5 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -118.6, -20.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -122.2, -20.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -125.9, -20.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -129.5, -20.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -133.2, -20.1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -136.9, -20 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -140.5, -19.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -144.2, -19.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -147.9, -19.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -151.6, -19.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -149, -19.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -146.4, -19.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -143.7, -19.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -141.1, -19.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -138.4, -19 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -135.8, -18.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -133.1, -18.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -130.4, -18.6 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -127.7, -18.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -125, -18.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -122.3, -18.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -119.6, -18.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -116.9, -18.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -114.2, -18 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -111.4, -17.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -108.7, -17.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -105.9, -17.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -103.2, -17.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -100.4, -17.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -97.7, -17.3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -94.9, -17.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -92.1, -17.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -89.3, -17 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -86.5, -16.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -83.7, -16.7 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -80.9, -16.6 , 0 );
setMoveKey( spep_1 -3 + 111, 1, -78.1, -16.5 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -14.5, -41.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -49.3, -46.8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -95.3, -46.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -69.7, -25.8 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -63.7, -21.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -57.7, -16.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -51.6, -12.5 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -45.6, -8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -39.5, -3.5 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -33.4, 1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -27.3, 5.5 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -21.2, 10 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -15, 14.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -8.8, 19.1 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -2.7, 23.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 3.6, 28.2 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 9.8, 32.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 16, 37.4 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 22.3, 42.1 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 28.6, 46.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 34.9, 51.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 41.3, 56 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 47.6, 60.7 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 54, 65.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 60.4, 70.2 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 66.8, 74.9 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 68.4, 75.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 70, 76.4 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 71.5, 77.2 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 73.1, 78 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 74.6, 78.8 , 0 );
setMoveKey( spep_1 -3 + 175, 1, 76.1, 79.5 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 98.4, -48.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 133.9, -110.5 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 82.9, -93.5 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 163.9, 4.6 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 128.9, -67.2 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 89.7, -33.3 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 93.1, -15.5 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 88.5, -9.7 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 91.9, -4.2 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 87.3, -3 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 90.7, 5.8 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 86.1, 10.2 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 89.5, -45.7 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 84.9, -107.2 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 88.4, -162.4 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 83.8, -227.2 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 87.2, -285.6 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 82.6, -281.7 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 86, -278.1 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 81.4, -274.7 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 84.9, -271.6 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 80.3, -268.7 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 83.7, -266.1 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 79.1, -263.7 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 82.5, -261.6 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 77.9, -259.7 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 81.4, -258.1 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 76.8, -256.7 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 80.2, -255.6 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 75.6, -254.7 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 79, -254.1 , 0 );
setMoveKey( spep_1  + 238, 1, 74.5, -253.7 , 0 );

setScaleKey( spep_1  + 0, 1, 0.9, 0.9 );
--setScaleKey( spep_1 -3 + 2, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 4, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 8, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 12, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 14, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 18, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 20, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 22, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 24, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 26, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 29, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 32, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 34, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 36, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 44, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 54, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 56, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 64, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 66, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 74, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 76, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 84, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 86, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 94, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 96, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 104, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 106, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 111, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 112, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 114, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 116, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 118, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 122, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 124, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 128, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 130, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 136, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 138, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 142, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 144, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 148, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 150, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 154, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 156, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 160, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 162, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 175, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 176, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 178, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 180, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 182, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 184, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 186, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 188, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 190, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 192, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 194, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 196, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 198, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 200, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 202, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 204, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 206, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 208, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 210, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 212, 1, 1.99, 1.99 );
setScaleKey( spep_1 -3 + 214, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 216, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 218, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 220, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 222, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 224, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 226, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 228, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 230, 1, 2.17, 2.17 );
setScaleKey( spep_1 -3 + 232, 1, 2.19, 2.19 );
setScaleKey( spep_1 -3 + 234, 1, 2.21, 2.21 );
setScaleKey( spep_1 -3 + 236, 1, 2.23, 2.23 );
setScaleKey( spep_1  + 238, 1, 2.25, 2.25 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 29, 1, 0 );
setRotateKey( spep_1 -3 + 30, 1, -70 );
setRotateKey( spep_1 -3 + 32, 1, -71 );
setRotateKey( spep_1 -3 + 34, 1, -72 );
setRotateKey( spep_1 -3 + 36, 1, -72.9 );
setRotateKey( spep_1 -3 + 38, 1, -73.9 );
setRotateKey( spep_1 -3 + 40, 1, -74.9 );
setRotateKey( spep_1 -3 + 42, 1, -75.9 );
setRotateKey( spep_1 -3 + 44, 1, -76.8 );
setRotateKey( spep_1 -3 + 46, 1, -77.8 );
setRotateKey( spep_1 -3 + 48, 1, -78.8 );
setRotateKey( spep_1 -3 + 50, 1, -79.8 );
setRotateKey( spep_1 -3 + 52, 1, -80.7 );
setRotateKey( spep_1 -3 + 54, 1, -81.7 );
setRotateKey( spep_1 -3 + 56, 1, -82.7 );
setRotateKey( spep_1 -3 + 58, 1, -82.8 );
setRotateKey( spep_1 -3 + 60, 1, -82.9 );
setRotateKey( spep_1 -3 + 62, 1, -83 );
setRotateKey( spep_1 -3 + 64, 1, -83 );
setRotateKey( spep_1 -3 + 66, 1, -83.1 );
setRotateKey( spep_1 -3 + 68, 1, -83.2 );
setRotateKey( spep_1 -3 + 70, 1, -83.3 );
setRotateKey( spep_1 -3 + 72, 1, -83.4 );
setRotateKey( spep_1 -3 + 74, 1, -83.5 );
setRotateKey( spep_1 -3 + 76, 1, -83.6 );
setRotateKey( spep_1 -3 + 78, 1, -83.6 );
setRotateKey( spep_1 -3 + 80, 1, -83.7 );
setRotateKey( spep_1 -3 + 82, 1, -83.8 );
setRotateKey( spep_1 -3 + 84, 1, -83.9 );
setRotateKey( spep_1 -3 + 86, 1, -84 );
setRotateKey( spep_1 -3 + 88, 1, -84.1 );
setRotateKey( spep_1 -3 + 90, 1, -84.1 );
setRotateKey( spep_1 -3 + 92, 1, -84.2 );
setRotateKey( spep_1 -3 + 94, 1, -84.3 );
setRotateKey( spep_1 -3 + 96, 1, -84.4 );
setRotateKey( spep_1 -3 + 98, 1, -84.5 );
setRotateKey( spep_1 -3 + 100, 1, -84.6 );
setRotateKey( spep_1 -3 + 102, 1, -84.7 );
setRotateKey( spep_1 -3 + 104, 1, -84.7 );
setRotateKey( spep_1 -3 + 106, 1, -84.8 );
setRotateKey( spep_1 -3 + 108, 1, -84.9 );
setRotateKey( spep_1 -3 + 111, 1, -85 );
setRotateKey( spep_1 -3 + 112, 1, 0 );
setRotateKey( spep_1 -3 + 113, 1, 0 );
setRotateKey( spep_1 -3 + 114, 1, -30 );
setRotateKey( spep_1 -3 + 116, 1, -29.3 );
setRotateKey( spep_1 -3 + 118, 1, -28.7 );
setRotateKey( spep_1 -3 + 120, 1, -28 );
setRotateKey( spep_1 -3 + 122, 1, -27.4 );
setRotateKey( spep_1 -3 + 124, 1, -26.7 );
setRotateKey( spep_1 -3 + 126, 1, -26.1 );
setRotateKey( spep_1 -3 + 128, 1, -25.4 );
setRotateKey( spep_1 -3 + 130, 1, -24.8 );
setRotateKey( spep_1 -3 + 132, 1, -24.1 );
setRotateKey( spep_1 -3 + 134, 1, -23.5 );
setRotateKey( spep_1 -3 + 136, 1, -22.8 );
setRotateKey( spep_1 -3 + 138, 1, -22.1 );
setRotateKey( spep_1 -3 + 140, 1, -21.5 );
setRotateKey( spep_1 -3 + 142, 1, -20.8 );
setRotateKey( spep_1 -3 + 144, 1, -20.2 );
setRotateKey( spep_1 -3 + 146, 1, -19.5 );
setRotateKey( spep_1 -3 + 148, 1, -18.9 );
setRotateKey( spep_1 -3 + 150, 1, -18.2 );
setRotateKey( spep_1 -3 + 152, 1, -17.6 );
setRotateKey( spep_1 -3 + 154, 1, -16.9 );
setRotateKey( spep_1 -3 + 156, 1, -16.3 );
setRotateKey( spep_1 -3 + 158, 1, -15.6 );
setRotateKey( spep_1 -3 + 160, 1, -15 );
setRotateKey( spep_1 -3 + 162, 1, -14.3 );
setRotateKey( spep_1 -3 + 164, 1, -14.1 );
setRotateKey( spep_1 -3 + 166, 1, -14 );
setRotateKey( spep_1 -3 + 168, 1, -13.8 );
setRotateKey( spep_1 -3 + 170, 1, -13.6 );
setRotateKey( spep_1 -3 + 172, 1, -13.5 );
setRotateKey( spep_1 -3 + 175, 1, -13.3 );
setRotateKey( spep_1 -3 + 176, 1, 70 );
setRotateKey( spep_1  + 238, 1, 70 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 30,  10020, 18, 0x100, -1, 0, -87.8, 334.2 );--バキッ

setEffMoveKey( spep_1-3 + 30, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbaki, -100.1, 342.1 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_1-3 + 30, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 32, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1-3 + 34, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 36, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1-3 + 38, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1-3 + 40, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 42, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1-3 + 44, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1-3 + 46, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1-3 + 48, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1-3 + 30, ctbaki, -12.4 );
setEffRotateKey( spep_1-3 + 48, ctbaki, -12.4 );

setEffAlphaKey( spep_1-3 + 30, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 42, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 44, ctbaki, 174 );
setEffAlphaKey( spep_1-3 + 46, ctbaki, 94 );
setEffAlphaKey( spep_1-3 + 48, ctbaki, 13 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 112,  10019, 16, 0x100, -1, 0, 139.7, 293.8 );--ドンッ

setEffMoveKey( spep_1 -3 + 112, ctdon, 139.7, 293.8 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctdon, 146.4, 280.3 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctdon, 136.3, 251.9 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctdon, 129.7, 241.8 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctdon, 136.2, 252.8 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctdon, 128.8, 250.7 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctdon, 129.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctdon, 127.6, 269.2 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctdon, 125.7, 277 , 0 );

setEffScaleKey( spep_1 -3 + 112, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 114, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_1 -3 + 116, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 -3 + 118, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_1 -3 + 122, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_1 -3 + 124, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_1 -3 + 128, ctdon, 1.85, 1.85 );

setEffRotateKey( spep_1 -3 + 112, ctdon, 30 );
setEffRotateKey( spep_1 -3 + 128, ctdon, 30 );

setEffAlphaKey( spep_1 -3 + 112, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 118, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 120, ctdon, 204 );
setEffAlphaKey( spep_1 -3 + 122, ctdon, 153 );
setEffAlphaKey( spep_1 -3 + 124, ctdon, 102 );
setEffAlphaKey( spep_1 -3 + 126, ctdon, 51 );
setEffAlphaKey( spep_1 -3 + 128, ctdon, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 -3 + 176,  10018, 16, 0x100, -1, 0, -107.5, 292.6 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 176, ctdogon, -107.5, 292.6 , 0 );
setEffMoveKey( spep_1 -3 + 178, ctdogon, -117.2, 306.2 , 0 );
setEffMoveKey( spep_1 -3 + 180, ctdogon, -99.5, 309.1 , 0 );
setEffMoveKey( spep_1 -3 + 182, ctdogon, -110.5, 312.5 , 0 );
setEffMoveKey( spep_1 -3 + 184, ctdogon, -98.3, 324.3 , 0 );
setEffMoveKey( spep_1 -3 + 186, ctdogon, -137.6, 385.5 , 0 );
setEffMoveKey( spep_1 -3 + 188, ctdogon, -142.4, 433.4 , 0 );
setEffMoveKey( spep_1 -3 + 190, ctdogon, -185.7, 481 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctdogon, -211.4, 534.5 , 0 );

setEffScaleKey( spep_1 -3 + 176, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_1 -3 + 178, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_1 -3 + 180, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_1 -3 + 182, ctdogon, 3.06, 3.06 );
setEffScaleKey( spep_1 -3 + 184, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 186, ctdogon, 3.58, 3.58 );
setEffScaleKey( spep_1 -3 + 188, ctdogon, 4, 4 );
setEffScaleKey( spep_1 -3 + 190, ctdogon, 4.43, 4.43 );
setEffScaleKey( spep_1 -3 + 192, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_1 -3 + 176, ctdogon, -42 );
setEffRotateKey( spep_1 -3 + 192, ctdogon, -42 );

setEffAlphaKey( spep_1 -3 + 176, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 184, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 186, ctdogon, 191 );
setEffAlphaKey( spep_1 -3 + 188, ctdogon, 128 );
setEffAlphaKey( spep_1 -3 + 190, ctdogon, 64 );
setEffAlphaKey( spep_1 -3 + 192, ctdogon, 0 );

--流線
ryusen1 = entryEffectLife( spep_1 -3 + 34,  914, 96, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 34, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 130, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 34, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -3 + 111, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -3 + 112, ryusen1, 4.92, 1.95 );
setEffScaleKey( spep_1 -3 + 130, ryusen1, 4.92, 1.95 );

setEffRotateKey( spep_1 -3 + 34, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 111, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 112, ryusen1, -45 );
setEffRotateKey( spep_1 -3 + 130, ryusen1, -45 );

setEffAlphaKey( spep_1 -3 + 34, ryusen1, 201 );
--setEffAlphaKey( spep_1 -3 + 111, ryusen1, 201 );
--setEffAlphaKey( spep_1 -3 + 112, ryusen1, 0 );
--setEffAlphaKey( spep_1 -3 + 113, ryusen1, 0 );
--setEffAlphaKey( spep_1 -3 + 114, ryusen1, 201 );
setEffAlphaKey( spep_1 -3 + 130, ryusen1, 201 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 174,  914, 60, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 174, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 234, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 174, ryusen2, 5.2, 1.3 );
setEffScaleKey( spep_1 -3 + 234, ryusen2, 5.2, 1.3 );

setEffRotateKey( spep_1 -3 + 174, ryusen2, 90 );
setEffRotateKey( spep_1 -3 + 234, ryusen2, 90 );

setEffAlphaKey( spep_1 -3 + 174, ryusen2, 201 );
setEffAlphaKey( spep_1 -3 + 234, ryusen2, 201 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 176,  906, 4, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1-3 + 176, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 180, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 176, shuchusen2, 1, 1 );
setEffScaleKey( spep_1-3 + 180, shuchusen2, 1, 1 );

setEffRotateKey( spep_1-3 + 176, shuchusen2, 0 );
setEffRotateKey( spep_1-3 + 180, shuchusen2, 0 );

setEffAlphaKey( spep_1-3 + 176, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 178, shuchusen2, 200 );
setEffAlphaKey( spep_1-3 + 180, shuchusen2, 145 );

--白フェード
entryFade( spep_1 + 232, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 0, 8 );
playSe( spep_1 -3 + 30, 1009 );  --バキ
playSe( spep_1 + 56, 43 );  --瞬間移動
setSeVolume( spep_1 + 56, 43, 80 );
playSe( spep_1 + 98, 4 );  --瞬間移動・出
playSe( spep_1 + 98, 43 );  --瞬間移動・出
setSeVolume( spep_1 + 98, 4, 110 );
playSe( spep_1 -3 + 112, 1010 );  --ドン
setSeVolume( spep_1 -3 + 112, 1010, 110 );
playSe( spep_1 + 136, 43 );  --瞬間移動
setSeVolume( spep_1 + 136, 43, 90 );
playSe( spep_1 + 160, 1109 );  --瞬間移動・出
setSeVolume( spep_1 + 160, 1109, 90 );
playSe( spep_1 -3 + 176, 1011 );  --ドゴン
setSeVolume( spep_1 -3 + 176, 1011, 110 );

--次の準備
spep_2 = spep_1+240;

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
-- 気弾発動
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 190, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 190, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 190, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 190, tame, 255 );

-- ** エフェクト等 ** --
tame_bg = entryEffect( spep_3 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame_bg, 0, 0 , 0 );
setEffMoveKey( spep_3 + 190, tame_bg, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_bg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 190, tame_bg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_bg, 0 );
setEffRotateKey( spep_3 + 190, tame_bg, 0 );
setEffAlphaKey( spep_3 + 0, tame_bg, 255 );
setEffAlphaKey( spep_3 + 190, tame_bg, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3+16  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3+16  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +28, 190006, 72, 0x100, -1, 0, -70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +28,  ctgogo,  -70,  510);
setEffMoveKey(  spep_3 +100,  ctgogo,  -70,  510);

setEffAlphaKey( spep_3 +28, ctgogo, 0 );
setEffAlphaKey( spep_3 + 29, ctgogo, 255 );
setEffAlphaKey( spep_3 + 30, ctgogo, 255 );
setEffAlphaKey( spep_3 + 92, ctgogo, 255 );
setEffAlphaKey( spep_3 + 94, ctgogo, 255 );
setEffAlphaKey( spep_3 + 96, ctgogo, 191 );
setEffAlphaKey( spep_3 + 98, ctgogo, 128 );
setEffAlphaKey( spep_3 + 100, ctgogo, 64 );

setEffRotateKey(  spep_3 +28,  ctgogo,  0);
setEffRotateKey(  spep_3 +100,  ctgogo,  0);

setEffScaleKey(  spep_3 +28,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +100,  ctgogo, 1.07, 1.07 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 130,  10012, 34, 0x100, -1, 0, 103.5, 239.7 );--ズオッ

setEffMoveKey( spep_3-3 + 130, ctzuo, 103.5, 239.7 , 0 );
setEffMoveKey( spep_3-3 + 132, ctzuo, 95.4, 321.1 , 0 );
setEffMoveKey( spep_3-3 + 134, ctzuo, 92.8, 317.3 , 0 );
setEffMoveKey( spep_3-3 + 136, ctzuo, 99.8, 321.5 , 0 );
setEffMoveKey( spep_3-3 + 138, ctzuo, 97.3, 317.7 , 0 );
setEffMoveKey( spep_3-3 + 140, ctzuo, 104.3, 321.9 , 0 );
setEffMoveKey( spep_3-3 + 142, ctzuo, 101.7, 318.2 , 0 );
setEffMoveKey( spep_3-3 + 144, ctzuo, 108.7, 322.4 , 0 );
setEffMoveKey( spep_3-3 + 146, ctzuo, 106.1, 318.6 , 0 );
setEffMoveKey( spep_3-3 + 148, ctzuo, 113.2, 322.8 , 0 );
setEffMoveKey( spep_3-3 + 150, ctzuo, 110.6, 319 , 0 );
setEffMoveKey( spep_3-3 + 152, ctzuo, 117.6, 323.2 , 0 );
setEffMoveKey( spep_3-3 + 154, ctzuo, 115, 319.4 , 0 );
setEffMoveKey( spep_3-3 + 156, ctzuo, 122, 323.6 , 0 );
setEffMoveKey( spep_3-3 + 158, ctzuo, 157.3, 415.2 , 0 );
setEffMoveKey( spep_3-3 + 160, ctzuo, 208.1, 520.2 , 0 );
setEffMoveKey( spep_3-3 + 162, ctzuo, 237.4, 606.7 , 0 );
setEffMoveKey( spep_3-3 + 164, ctzuo, 277.5, 702.5 , 0 );

a=1.8;

setEffScaleKey( spep_3-3 + 130, ctzuo, 0.38, 0.38 );
setEffScaleKey( spep_3-3 + 132, ctzuo, 0.7+a, 0.7+a );
setEffScaleKey( spep_3-3 + 156, ctzuo, 0.7+a, 0.7+a );
--setEffScaleKey( spep_3-3 + 158, ctzuo, 1.15+a, 1.15+a );
--setEffScaleKey( spep_3-3 + 160, ctzuo, 1.6+a, 1.6+a );
--setEffScaleKey( spep_3-3 + 162, ctzuo, 4.27+a, 4.27+a );
setEffScaleKey( spep_3-3 + 164, ctzuo, 4.9+a, 4.9+a );

setEffRotateKey( spep_3-3 + 130, ctzuo, 25 );
setEffRotateKey( spep_3-3 + 164, ctzuo, 25 );

setEffAlphaKey( spep_3-3 + 130, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 132, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 156, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 158, ctzuo, 191 );
setEffAlphaKey( spep_3-3 + 160, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 162, ctzuo, 64 );
setEffAlphaKey( spep_3-3 + 164, ctzuo, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 126 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 126, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 -3 + 126, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 -3 + 126, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 126, shuchusen3, 255 );

--白フェード
entryFade( spep_3 + 124, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 182, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 +10, 1154 );  --溜める
playSe( spep_3 +28, 1018 );  --ゴゴゴ
playSe( spep_3 +130, 1022 );  --発射

--次の準備
spep_4 = spep_3+190;

------------------------------------------------------
-- 気弾敵に近づく
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 82, hit, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 82, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 82, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 82, hit, 255 );


-- ** エフェクト等 ** --
hit_bg = entryEffect( spep_4 + 0, SP_07,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 82, hit_bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 82, hit_bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_bg, 0 );
setEffRotateKey( spep_4 + 82, hit_bg, 0 );
setEffAlphaKey( spep_4 + 0, hit_bg, 255 );
setEffAlphaKey( spep_4 + 82, hit_bg, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 80, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 0.7, 0 , 0 );
setMoveKey( spep_4 + 2, 1, 0.8, 0 , 0 );
setMoveKey( spep_4 + 4, 1, 0.9, 0 , 0 );
setMoveKey( spep_4 + 6, 1, 1, 0 , 0 );
setMoveKey( spep_4 + 8, 1, 1.2, 0.1 , 0 );
setMoveKey( spep_4 + 10, 1, 1.4, 0.1 , 0 );
setMoveKey( spep_4 + 12, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_4 + 14, 1, 1.9, 0.1 , 0 );
setMoveKey( spep_4 + 16, 1, 2.2, 0.2 , 0 );
setMoveKey( spep_4 + 18, 1, 2.5, 0.2 , 0 );
setMoveKey( spep_4 + 20, 1, 2.9, 0.3 , 0 );
setMoveKey( spep_4 + 22, 1, 3.2, 0.3 , 0 );
setMoveKey( spep_4 + 24, 1, 3.7, 0.4 , 0 );
setMoveKey( spep_4 + 26, 1, 4.1, 0.4 , 0 );
setMoveKey( spep_4 + 28, 1, 4.6, 0.5 , 0 );
setMoveKey( spep_4 + 30, 1, 5.1, 0.5 , 0 );
setMoveKey( spep_4 + 32, 1, 5.7, 0.6 , 0 );
setMoveKey( spep_4 + 34, 1, 6.3, 0.7 , 0 );
setMoveKey( spep_4 + 36, 1, 6.9, 0.8 , 0 );
setMoveKey( spep_4 + 38, 1, 7.6, 0.9 , 0 );
setMoveKey( spep_4 + 40, 1, 8.3, 1 , 0 );
setMoveKey( spep_4 + 42, 1, 9, 1.1 , 0 );
setMoveKey( spep_4 + 44, 1, 9.8, 1.2 , 0 );
setMoveKey( spep_4 + 46, 1, 10.6, 1.3 , 0 );
setMoveKey( spep_4 + 48, 1, 11.5, 1.4 , 0 );
setMoveKey( spep_4 + 50, 1, 12.3, 1.5 , 0 );
setMoveKey( spep_4 + 52, 1, 13.3, 1.7 , 0 );
setMoveKey( spep_4 + 54, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_4 + 56, 1, 15.2, 2 , 0 );
setMoveKey( spep_4 + 58, 1, 16.2, 2.1 , 0 );
setMoveKey( spep_4 + 60, 1, 17.3, 2.3 , 0 );
setMoveKey( spep_4 + 62, 1, 18.4, 2.5 , 0 );
setMoveKey( spep_4 + 64, 1, 19.6, 2.7 , 0 );
setMoveKey( spep_4 + 66, 1, 20.8, 2.9 , 0 );
setMoveKey( spep_4 + 68, 1, 22, 3.1 , 0 );
setMoveKey( spep_4 + 70, 1, 30.1, -4.5 , 0 );
setMoveKey( spep_4 + 72, 1, 39.1, -12 , 0 );
setMoveKey( spep_4 + 74, 1, 59.8, -17.6 , 0 );
setMoveKey( spep_4 + 76, 1, 66.4, -16.9 , 0 );
setMoveKey( spep_4 + 78, 1, 73.1, -16.2 , 0 );
setMoveKey( spep_4 + 80, 1, 80, -15.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_4 + 2, 1, 0.06, 0.06 );
setScaleKey( spep_4 + 4, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 6, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 8, 1, 0.09, 0.09 );
setScaleKey( spep_4 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 12, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 14, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 24, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 32, 1, 0.37, 0.37 );
setScaleKey( spep_4 + 34, 1, 0.41, 0.41 );
setScaleKey( spep_4 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_4 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_4 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 56, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 64, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 70, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 72, 1, 2.49, 2.49 );
setScaleKey( spep_4 + 74, 1, 3.78, 3.78 );
setScaleKey( spep_4 + 76, 1, 4.18, 4.18 );
setScaleKey( spep_4 + 78, 1, 4.58, 4.58 );
setScaleKey( spep_4 + 80, 1, 4.99, 4.99 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 80, 1, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_4 + 0,  10014, 80, 0x100, -1, 0, -70.6, 404.1 );--ズドドドッ

b=20;

setEffMoveKey( spep_4 + 0, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 2, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 4, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 6, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 8, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 10, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 12, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 14, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 16, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 18, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 20, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 22, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 24, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 26, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 28, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 30, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 32, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 34, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 36, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 38, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 40, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 42, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 44, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 46, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 48, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 50, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 52, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 54, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 56, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 58, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 60, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 62, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 64, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 66, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 68, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 70, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 72, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 74, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 76, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 78, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 80, ctzudodo, -70.6, 404.1 -b , 0 );

setEffScaleKey( spep_4 + 0, ctzudodo, 1.8, 2.0 );
setEffScaleKey( spep_4 + 80, ctzudodo, 1.8, 2.0 );

setEffRotateKey( spep_4 + 0, ctzudodo, 3.7 );
setEffRotateKey( spep_4 + 80, ctzudodo, 3.7 );

--集中線
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 80, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 + 80, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 80, shuchusen4, 255 );

--白フェード
entryFade( spep_4 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 +6, 1021 );  --気弾迫る

--次の準備
spep_5 = spep_4+82;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, 190003,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, gyan, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 60, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 7.1, 306.8 , 0 );

z=2.7;

setEffScaleKey( spep_5 + 0, ctgyan, 0.6 + z, 0.6 + z );
setEffScaleKey( spep_5 + 2, ctgyan, 0.7 + z, 0.7 + z );
setEffScaleKey( spep_5 + 4, ctgyan, 0.8 + z, 0.8 + z );
setEffScaleKey( spep_5 + 6, ctgyan, 0.9 + z, 0.9 + z );
setEffScaleKey( spep_5 + 8, ctgyan, 1 + z, 1 + z );
setEffScaleKey( spep_5 + 10, ctgyan, 1.01 + z, 1.01 + z );
setEffScaleKey( spep_5 + 12, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_5 + 14, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_5 + 16, ctgyan, 1.03 + z, 1.03 + z );
setEffScaleKey( spep_5 + 18, ctgyan, 1.04 + z, 1.04 + z );
setEffScaleKey( spep_5 + 20, ctgyan, 1.05 + z, 1.05 + z );
setEffScaleKey( spep_5 + 22, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_5 + 24, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_5 + 26, ctgyan, 1.07 + z, 1.07 + z );
setEffScaleKey( spep_5 + 28, ctgyan, 1.08 + z, 1.08 + z );
setEffScaleKey( spep_5 + 30, ctgyan, 1.09 + z, 1.09 + z );
setEffScaleKey( spep_5 + 32, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_5 + 34, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_5 + 36, ctgyan, 1.11 + z, 1.11 + z );
setEffScaleKey( spep_5 + 38, ctgyan, 1.12 + z, 1.12 + z );
setEffScaleKey( spep_5 + 40, ctgyan, 1.13 + z, 1.13 + z );
setEffScaleKey( spep_5 + 42, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_5 + 44, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_5 + 46, ctgyan, 1.15 + z, 1.15 + z );
setEffScaleKey( spep_5 + 48, ctgyan, 1.16 + z, 1.16 + z );
setEffScaleKey( spep_5 + 50, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_5 + 52, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_5 + 54, ctgyan, 1.18 + z, 1.18 + z );
setEffScaleKey( spep_5 + 56, ctgyan, 1.19 + z, 1.19 + z );
setEffScaleKey( spep_5 + 58, ctgyan, 1.2 + z, 1.2 + z );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** おと ** --
playSe( spep_5, 1023 ); --爆発

--次の準備
spep_6 =spep_5+60;

------------------------------------------------------
-- おわり
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 284, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.2, 1.2 );
setEffScaleKey( spep_6 + 284, finish, 1.2, 1.2 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 284, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 284, finish, 255 );

-- ** おと ** --
playSe( spep_6, 1157 ); --雲光る
setSeVolume( spep_6, 1157, 90 );
setSeVolume( spep_6 + 78, 1157, 60 );
setSeVolume( spep_6 + 80, 1157, 55 );
setSeVolume( spep_6 + 82, 1157, 20 );
playSe( spep_6 + 82, 1067 ); --爆発
setSeVolume( spep_6, 1157, 120 );

-- ** ダメージ表示 ** --
dealDamage(spep_6 +80 );
endPhase( spep_6 + 278 );


else 

------------------------------------------------------------------------------------------------------------
--  敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、突進
------------------------------------------------------
--はじめの準備
spep_0= 0;


-- ** エフェクト等 ** --
dash = entryEffect( spep_0 + 0, SP_01x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash, 0, 0 , 0 );
setEffMoveKey( spep_0 + 80, dash, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, dash, -1.0, 1.0 );
setEffScaleKey( spep_0 + 80, dash, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash, 0 );
setEffRotateKey( spep_0 + 80, dash, 0 );
setEffAlphaKey( spep_0 + 0, dash, 255 );
setEffAlphaKey( spep_0 + 80, dash, 255 );


--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 78, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 78, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 78, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 78, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 78, shuchusen1, 255 );

-- ** 音 ** --
SE0 = playSe( spep_0 + 0, 9 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
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
    




    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------

--白フェード
entryFade( spep_0 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0+80;


------------------------------------------------------
-- 気弾移動
------------------------------------------------------
-- ** エフェクト等 ** --
fighting = entryEffect( spep_1 + 0, SP_02x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting, 0, 0 , 0 );
setEffMoveKey( spep_1 + 146, fighting, 0, 0 , 0 );
setEffMoveKey( spep_1 + 147, fighting, 125, 0 , 0 );
setEffMoveKey( spep_1 + 240, fighting, 125, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, fighting, 1.0, 1.0 );
setEffScaleKey( spep_1 + 147, fighting, -1.0, 1.0 );
setEffScaleKey( spep_1 + 240, fighting, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting, 0 );
setEffRotateKey( spep_1 + 240, fighting, 0 );
setEffAlphaKey( spep_1 + 0, fighting, 255 );
setEffAlphaKey( spep_1 + 240, fighting, 255 );

-- ** エフェクト等 ** --
fighting_bg = entryEffect( spep_1 + 0, SP_03x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_bg, 0, 0 , 0 );
setEffMoveKey( spep_1 + 240, fighting_bg, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, fighting_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 240, fighting_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_bg, 0 );
setEffRotateKey( spep_1 + 240, fighting_bg, 0 );
setEffAlphaKey( spep_1 + 0, fighting_bg, 255 );
setEffAlphaKey( spep_1 + 240, fighting_bg, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 238, 1, 0 );

changeAnime( spep_1  + 0, 1, 100 );
changeAnime( spep_1 -3 + 30, 1, 106 );
changeAnime( spep_1 -3 + 112, 1, 108 );
changeAnime( spep_1 -3 + 114, 1, 106 );
changeAnime( spep_1 -3 + 176, 1, 108 );

setMoveKey( spep_1  + 0, 1, -3.5, -19.5 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, -3.5, -18.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -3.5, -17.3 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -3.5, -16.2 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -3.5, -15.1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -3.5, -14 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -3.5, -12.9 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -3.5, -11.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -3.5, -10.7 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -3.5, -9.5 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -3.5, -8.4 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -3.5, -7.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -3.5, -6.2 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -3.5, -5.1 , 0 );
setMoveKey( spep_1 -3 + 29, 1, -3.5, -4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -42.6, -23.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -124.9, -31.6 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -42.3, 41.4 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -80.4, -44.5 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -118.6, -20.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -122.2, -20.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -125.9, -20.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -129.5, -20.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -133.2, -20.1 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -136.9, -20 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -140.5, -19.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -144.2, -19.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -147.9, -19.6 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -151.6, -19.5 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -149, -19.4 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -146.4, -19.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -143.7, -19.2 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -141.1, -19.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -138.4, -19 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -135.8, -18.9 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -133.1, -18.7 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -130.4, -18.6 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -127.7, -18.5 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -125, -18.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -122.3, -18.3 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -119.6, -18.2 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -116.9, -18.1 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -114.2, -18 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -111.4, -17.9 , 0 );
setMoveKey( spep_1 -3 + 88, 1, -108.7, -17.7 , 0 );
setMoveKey( spep_1 -3 + 90, 1, -105.9, -17.6 , 0 );
setMoveKey( spep_1 -3 + 92, 1, -103.2, -17.5 , 0 );
setMoveKey( spep_1 -3 + 94, 1, -100.4, -17.4 , 0 );
setMoveKey( spep_1 -3 + 96, 1, -97.7, -17.3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, -94.9, -17.2 , 0 );
setMoveKey( spep_1 -3 + 100, 1, -92.1, -17.1 , 0 );
setMoveKey( spep_1 -3 + 102, 1, -89.3, -17 , 0 );
setMoveKey( spep_1 -3 + 104, 1, -86.5, -16.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, -83.7, -16.7 , 0 );
setMoveKey( spep_1 -3 + 108, 1, -80.9, -16.6 , 0 );
setMoveKey( spep_1 -3 + 111, 1, -78.1, -16.5 , 0 );
setMoveKey( spep_1 -3 + 112, 1, -14.5, -41.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, -49.3, -46.8 , 0 );
setMoveKey( spep_1 -3 + 116, 1, -95.3, -46.3 , 0 );
setMoveKey( spep_1 -3 + 118, 1, -69.7, -25.8 , 0 );
setMoveKey( spep_1 -3 + 120, 1, -63.7, -21.3 , 0 );
setMoveKey( spep_1 -3 + 122, 1, -57.7, -16.9 , 0 );
setMoveKey( spep_1 -3 + 124, 1, -51.6, -12.5 , 0 );
setMoveKey( spep_1 -3 + 126, 1, -45.6, -8 , 0 );
setMoveKey( spep_1 -3 + 128, 1, -39.5, -3.5 , 0 );
setMoveKey( spep_1 -3 + 130, 1, -33.4, 1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, -27.3, 5.5 , 0 );
setMoveKey( spep_1 -3 + 134, 1, -21.2, 10 , 0 );
setMoveKey( spep_1 -3 + 136, 1, -15, 14.5 , 0 );
setMoveKey( spep_1 -3 + 138, 1, -8.8, 19.1 , 0 );
setMoveKey( spep_1 -3 + 140, 1, -2.7, 23.7 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 3.6, 28.2 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 9.8, 32.8 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 16, 37.4 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 22.3, 42.1 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 28.6, 46.7 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 34.9, 51.4 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 41.3, 56 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 47.6, 60.7 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 54, 65.4 , 0 );
setMoveKey( spep_1 -3 + 160, 1, 60.4, 70.2 , 0 );
setMoveKey( spep_1 -3 + 162, 1, 66.8, 74.9 , 0 );
setMoveKey( spep_1 -3 + 164, 1, 68.4, 75.7 , 0 );
setMoveKey( spep_1 -3 + 166, 1, 70, 76.4 , 0 );
setMoveKey( spep_1 -3 + 168, 1, 71.5, 77.2 , 0 );
setMoveKey( spep_1 -3 + 170, 1, 73.1, 78 , 0 );
setMoveKey( spep_1 -3 + 172, 1, 74.6, 78.8 , 0 );
setMoveKey( spep_1 -3 + 175, 1, 76.1, 79.5 , 0 );
setMoveKey( spep_1 -3 + 176, 1, 98.4, -48.7 , 0 );
setMoveKey( spep_1 -3 + 177, 1, 98.4, -48.7 , 0 );
setMoveKey( spep_1 -3 + 178, 1, 103.9, -110.5 , 0 );
setMoveKey( spep_1 -3 + 180, 1, 82.9, -93.5 , 0 );
setMoveKey( spep_1 -3 + 182, 1, 63.9, 4.6 , 0 );
setMoveKey( spep_1 -3 + 184, 1, 108.9, -67.2 , 0 );
setMoveKey( spep_1 -3 + 186, 1, 89.7, -33.3 , 0 );
setMoveKey( spep_1 -3 + 188, 1, 93.1, -15.5 , 0 );
setMoveKey( spep_1 -3 + 190, 1, 88.5, -9.7 , 0 );
setMoveKey( spep_1 -3 + 192, 1, 91.9, -4.2 , 0 );
setMoveKey( spep_1 -3 + 194, 1, 87.3, -3 , 0 );
setMoveKey( spep_1 -3 + 196, 1, 90.7, 5.8 , 0 );
setMoveKey( spep_1 -3 + 198, 1, 86.1, 10.2 , 0 );
setMoveKey( spep_1 -3 + 200, 1, 89.5, -45.7 , 0 );
setMoveKey( spep_1 -3 + 202, 1, 84.9, -107.2 , 0 );
setMoveKey( spep_1 -3 + 204, 1, 88.4, -162.4 , 0 );
setMoveKey( spep_1 -3 + 206, 1, 83.8, -227.2 , 0 );
setMoveKey( spep_1 -3 + 208, 1, 87.2, -285.6 , 0 );
setMoveKey( spep_1 -3 + 210, 1, 82.6, -281.7 , 0 );
setMoveKey( spep_1 -3 + 212, 1, 86, -278.1 , 0 );
setMoveKey( spep_1 -3 + 214, 1, 81.4, -274.7 , 0 );
setMoveKey( spep_1 -3 + 216, 1, 84.9, -271.6 , 0 );
setMoveKey( spep_1 -3 + 218, 1, 80.3, -268.7 , 0 );
setMoveKey( spep_1 -3 + 220, 1, 83.7, -266.1 , 0 );
setMoveKey( spep_1 -3 + 222, 1, 79.1, -263.7 , 0 );
setMoveKey( spep_1 -3 + 224, 1, 82.5, -261.6 , 0 );
setMoveKey( spep_1 -3 + 226, 1, 77.9, -259.7 , 0 );
setMoveKey( spep_1 -3 + 228, 1, 81.4, -258.1 , 0 );
setMoveKey( spep_1 -3 + 230, 1, 76.8, -256.7 , 0 );
setMoveKey( spep_1 -3 + 232, 1, 80.2, -255.6 , 0 );
setMoveKey( spep_1 -3 + 234, 1, 75.6, -254.7 , 0 );
setMoveKey( spep_1 -3 + 236, 1, 79, -254.1 , 0 );
setMoveKey( spep_1  + 238, 1, 74.5, -253.7 , 0 );

setScaleKey( spep_1  + 0, 1, 0.9, 0.9 );
--setScaleKey( spep_1 -3 + 2, 1, 0.94, 0.94 );
setScaleKey( spep_1 -3 + 4, 1, 0.98, 0.98 );
setScaleKey( spep_1 -3 + 6, 1, 1.02, 1.02 );
setScaleKey( spep_1 -3 + 8, 1, 1.06, 1.06 );
setScaleKey( spep_1 -3 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_1 -3 + 12, 1, 1.14, 1.14 );
setScaleKey( spep_1 -3 + 14, 1, 1.18, 1.18 );
setScaleKey( spep_1 -3 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_1 -3 + 18, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 20, 1, 1.29, 1.29 );
setScaleKey( spep_1 -3 + 22, 1, 1.33, 1.33 );
setScaleKey( spep_1 -3 + 24, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 26, 1, 1.41, 1.41 );
setScaleKey( spep_1 -3 + 29, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 30, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 32, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 34, 1, 1.42, 1.42 );
setScaleKey( spep_1 -3 + 36, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 44, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 46, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 54, 1, 1.44, 1.44 );
setScaleKey( spep_1 -3 + 56, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 64, 1, 1.45, 1.45 );
setScaleKey( spep_1 -3 + 66, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 74, 1, 1.46, 1.46 );
setScaleKey( spep_1 -3 + 76, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 84, 1, 1.47, 1.47 );
setScaleKey( spep_1 -3 + 86, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 94, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 96, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 104, 1, 1.49, 1.49 );
setScaleKey( spep_1 -3 + 106, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 111, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 112, 1, 1.8, 1.8 );
setScaleKey( spep_1 -3 + 114, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 116, 1, 1.5, 1.5 );
setScaleKey( spep_1 -3 + 118, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 122, 1, 1.51, 1.51 );
setScaleKey( spep_1 -3 + 124, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 128, 1, 1.52, 1.52 );
setScaleKey( spep_1 -3 + 130, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 136, 1, 1.53, 1.53 );
setScaleKey( spep_1 -3 + 138, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 142, 1, 1.54, 1.54 );
setScaleKey( spep_1 -3 + 144, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 148, 1, 1.55, 1.55 );
setScaleKey( spep_1 -3 + 150, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 154, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 156, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 160, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 162, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 175, 1, 1.58, 1.58 );
setScaleKey( spep_1 -3 + 176, 1, 1.88, 1.88 );
setScaleKey( spep_1 -3 + 178, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 180, 1, 1.67, 1.67 );
setScaleKey( spep_1 -3 + 182, 1, 1.69, 1.69 );
setScaleKey( spep_1 -3 + 184, 1, 1.71, 1.71 );
setScaleKey( spep_1 -3 + 186, 1, 1.73, 1.73 );
setScaleKey( spep_1 -3 + 188, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 190, 1, 1.77, 1.77 );
setScaleKey( spep_1 -3 + 192, 1, 1.79, 1.79 );
setScaleKey( spep_1 -3 + 194, 1, 1.81, 1.81 );
setScaleKey( spep_1 -3 + 196, 1, 1.83, 1.83 );
setScaleKey( spep_1 -3 + 198, 1, 1.85, 1.85 );
setScaleKey( spep_1 -3 + 200, 1, 1.87, 1.87 );
setScaleKey( spep_1 -3 + 202, 1, 1.89, 1.89 );
setScaleKey( spep_1 -3 + 204, 1, 1.91, 1.91 );
setScaleKey( spep_1 -3 + 206, 1, 1.93, 1.93 );
setScaleKey( spep_1 -3 + 208, 1, 1.95, 1.95 );
setScaleKey( spep_1 -3 + 210, 1, 1.97, 1.97 );
setScaleKey( spep_1 -3 + 212, 1, 1.99, 1.99 );
setScaleKey( spep_1 -3 + 214, 1, 2.01, 2.01 );
setScaleKey( spep_1 -3 + 216, 1, 2.03, 2.03 );
setScaleKey( spep_1 -3 + 218, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 220, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 222, 1, 2.09, 2.09 );
setScaleKey( spep_1 -3 + 224, 1, 2.11, 2.11 );
setScaleKey( spep_1 -3 + 226, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 228, 1, 2.15, 2.15 );
setScaleKey( spep_1 -3 + 230, 1, 2.17, 2.17 );
setScaleKey( spep_1 -3 + 232, 1, 2.19, 2.19 );
setScaleKey( spep_1 -3 + 234, 1, 2.21, 2.21 );
setScaleKey( spep_1 -3 + 236, 1, 2.23, 2.23 );
setScaleKey( spep_1  + 238, 1, 2.25, 2.25 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 29, 1, 0 );
setRotateKey( spep_1 -3 + 30, 1, -70 );
setRotateKey( spep_1 -3 + 32, 1, -71 );
setRotateKey( spep_1 -3 + 34, 1, -72 );
setRotateKey( spep_1 -3 + 36, 1, -72.9 );
setRotateKey( spep_1 -3 + 38, 1, -73.9 );
setRotateKey( spep_1 -3 + 40, 1, -74.9 );
setRotateKey( spep_1 -3 + 42, 1, -75.9 );
setRotateKey( spep_1 -3 + 44, 1, -76.8 );
setRotateKey( spep_1 -3 + 46, 1, -77.8 );
setRotateKey( spep_1 -3 + 48, 1, -78.8 );
setRotateKey( spep_1 -3 + 50, 1, -79.8 );
setRotateKey( spep_1 -3 + 52, 1, -80.7 );
setRotateKey( spep_1 -3 + 54, 1, -81.7 );
setRotateKey( spep_1 -3 + 56, 1, -82.7 );
setRotateKey( spep_1 -3 + 58, 1, -82.8 );
setRotateKey( spep_1 -3 + 60, 1, -82.9 );
setRotateKey( spep_1 -3 + 62, 1, -83 );
setRotateKey( spep_1 -3 + 64, 1, -83 );
setRotateKey( spep_1 -3 + 66, 1, -83.1 );
setRotateKey( spep_1 -3 + 68, 1, -83.2 );
setRotateKey( spep_1 -3 + 70, 1, -83.3 );
setRotateKey( spep_1 -3 + 72, 1, -83.4 );
setRotateKey( spep_1 -3 + 74, 1, -83.5 );
setRotateKey( spep_1 -3 + 76, 1, -83.6 );
setRotateKey( spep_1 -3 + 78, 1, -83.6 );
setRotateKey( spep_1 -3 + 80, 1, -83.7 );
setRotateKey( spep_1 -3 + 82, 1, -83.8 );
setRotateKey( spep_1 -3 + 84, 1, -83.9 );
setRotateKey( spep_1 -3 + 86, 1, -84 );
setRotateKey( spep_1 -3 + 88, 1, -84.1 );
setRotateKey( spep_1 -3 + 90, 1, -84.1 );
setRotateKey( spep_1 -3 + 92, 1, -84.2 );
setRotateKey( spep_1 -3 + 94, 1, -84.3 );
setRotateKey( spep_1 -3 + 96, 1, -84.4 );
setRotateKey( spep_1 -3 + 98, 1, -84.5 );
setRotateKey( spep_1 -3 + 100, 1, -84.6 );
setRotateKey( spep_1 -3 + 102, 1, -84.7 );
setRotateKey( spep_1 -3 + 104, 1, -84.7 );
setRotateKey( spep_1 -3 + 106, 1, -84.8 );
setRotateKey( spep_1 -3 + 108, 1, -84.9 );
setRotateKey( spep_1 -3 + 111, 1, -85 );
setRotateKey( spep_1 -3 + 112, 1, 0 );
setRotateKey( spep_1 -3 + 113, 1, 0 );
setRotateKey( spep_1 -3 + 114, 1, -30 );
setRotateKey( spep_1 -3 + 116, 1, -29.3 );
setRotateKey( spep_1 -3 + 118, 1, -28.7 );
setRotateKey( spep_1 -3 + 120, 1, -28 );
setRotateKey( spep_1 -3 + 122, 1, -27.4 );
setRotateKey( spep_1 -3 + 124, 1, -26.7 );
setRotateKey( spep_1 -3 + 126, 1, -26.1 );
setRotateKey( spep_1 -3 + 128, 1, -25.4 );
setRotateKey( spep_1 -3 + 130, 1, -24.8 );
setRotateKey( spep_1 -3 + 132, 1, -24.1 );
setRotateKey( spep_1 -3 + 134, 1, -23.5 );
setRotateKey( spep_1 -3 + 136, 1, -22.8 );
setRotateKey( spep_1 -3 + 138, 1, -22.1 );
setRotateKey( spep_1 -3 + 140, 1, -21.5 );
setRotateKey( spep_1 -3 + 142, 1, -20.8 );
setRotateKey( spep_1 -3 + 144, 1, -20.2 );
setRotateKey( spep_1 -3 + 146, 1, -19.5 );
setRotateKey( spep_1 -3 + 148, 1, -18.9 );
setRotateKey( spep_1 -3 + 150, 1, -18.2 );
setRotateKey( spep_1 -3 + 152, 1, -17.6 );
setRotateKey( spep_1 -3 + 154, 1, -16.9 );
setRotateKey( spep_1 -3 + 156, 1, -16.3 );
setRotateKey( spep_1 -3 + 158, 1, -15.6 );
setRotateKey( spep_1 -3 + 160, 1, -15 );
setRotateKey( spep_1 -3 + 162, 1, -14.3 );
setRotateKey( spep_1 -3 + 164, 1, -14.1 );
setRotateKey( spep_1 -3 + 166, 1, -14 );
setRotateKey( spep_1 -3 + 168, 1, -13.8 );
setRotateKey( spep_1 -3 + 170, 1, -13.6 );
setRotateKey( spep_1 -3 + 172, 1, -13.5 );
setRotateKey( spep_1 -3 + 175, 1, -13.3 );
setRotateKey( spep_1 -3 + 176, 1, 70 );
setRotateKey( spep_1  + 238, 1, 70 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 30,  10020, 18, 0x100, -1, 0, -87.8, 334.2 );--バキッ

setEffMoveKey( spep_1-3 + 30, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbaki, -100.1, 342.1 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_1-3 + 30, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 32, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1-3 + 34, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 36, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1-3 + 38, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1-3 + 40, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 42, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1-3 + 44, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1-3 + 46, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1-3 + 48, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1-3 + 30, ctbaki, -12.4 );
setEffRotateKey( spep_1-3 + 48, ctbaki, -12.4 );

setEffAlphaKey( spep_1-3 + 30, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 42, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 44, ctbaki, 174 );
setEffAlphaKey( spep_1-3 + 46, ctbaki, 94 );
setEffAlphaKey( spep_1-3 + 48, ctbaki, 13 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 112,  10019, 16, 0x100, -1, 0, 139.7, 293.8 );--ドンッ

setEffMoveKey( spep_1 -3 + 112, ctdon, 139.7, 293.8 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctdon, 146.4, 280.3 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctdon, 136.3, 251.9 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctdon, 129.7, 241.8 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctdon, 136.2, 252.8 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctdon, 128.8, 250.7 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctdon, 129.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 126, ctdon, 127.6, 269.2 , 0 );
setEffMoveKey( spep_1 -3 + 128, ctdon, 125.7, 277 , 0 );

setEffScaleKey( spep_1 -3 + 112, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_1 -3 + 114, ctdon, 2.19, 2.19 );
setEffScaleKey( spep_1 -3 + 116, ctdon, 2.01, 2.01 );
setEffScaleKey( spep_1 -3 + 118, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_1 -3 + 122, ctdon, 1.84, 1.84 );
setEffScaleKey( spep_1 -3 + 124, ctdon, 1.85, 1.85 );
setEffScaleKey( spep_1 -3 + 128, ctdon, 1.85, 1.85 );

setEffRotateKey( spep_1 -3 + 112, ctdon, 30 );
setEffRotateKey( spep_1 -3 + 128, ctdon, 30 );

setEffAlphaKey( spep_1 -3 + 112, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 118, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 120, ctdon, 204 );
setEffAlphaKey( spep_1 -3 + 122, ctdon, 153 );
setEffAlphaKey( spep_1 -3 + 124, ctdon, 102 );
setEffAlphaKey( spep_1 -3 + 126, ctdon, 51 );
setEffAlphaKey( spep_1 -3 + 128, ctdon, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_1 -3 + 176,  10018, 16, 0x100, -1, 0, -107.5, 292.6 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 176, ctdogon, -107.5, 292.6 , 0 );
setEffMoveKey( spep_1 -3 + 178, ctdogon, -117.2, 306.2 , 0 );
setEffMoveKey( spep_1 -3 + 180, ctdogon, -99.5, 309.1 , 0 );
setEffMoveKey( spep_1 -3 + 182, ctdogon, -110.5, 312.5 , 0 );
setEffMoveKey( spep_1 -3 + 184, ctdogon, -98.3, 324.3 , 0 );
setEffMoveKey( spep_1 -3 + 186, ctdogon, -137.6, 385.5 , 0 );
setEffMoveKey( spep_1 -3 + 188, ctdogon, -142.4, 433.4 , 0 );
setEffMoveKey( spep_1 -3 + 190, ctdogon, -185.7, 481 , 0 );
setEffMoveKey( spep_1 -3 + 192, ctdogon, -211.4, 534.5 , 0 );

setEffScaleKey( spep_1 -3 + 176, ctdogon, 2.78, 2.78 );
setEffScaleKey( spep_1 -3 + 178, ctdogon, 2.87, 2.87 );
setEffScaleKey( spep_1 -3 + 180, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_1 -3 + 182, ctdogon, 3.06, 3.06 );
setEffScaleKey( spep_1 -3 + 184, ctdogon, 3.15, 3.15 );
setEffScaleKey( spep_1 -3 + 186, ctdogon, 3.58, 3.58 );
setEffScaleKey( spep_1 -3 + 188, ctdogon, 4, 4 );
setEffScaleKey( spep_1 -3 + 190, ctdogon, 4.43, 4.43 );
setEffScaleKey( spep_1 -3 + 192, ctdogon, 4.86, 4.86 );

setEffRotateKey( spep_1 -3 + 176, ctdogon, -42 );
setEffRotateKey( spep_1 -3 + 192, ctdogon, -42 );

setEffAlphaKey( spep_1 -3 + 176, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 184, ctdogon, 255 );
setEffAlphaKey( spep_1 -3 + 186, ctdogon, 191 );
setEffAlphaKey( spep_1 -3 + 188, ctdogon, 128 );
setEffAlphaKey( spep_1 -3 + 190, ctdogon, 64 );
setEffAlphaKey( spep_1 -3 + 192, ctdogon, 0 );

--流線
ryusen1 = entryEffectLife( spep_1 -3 + 34,  914, 96, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 34, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 130, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 34, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -3 + 111, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -3 + 112, ryusen1, 4.92, 1.95 );
setEffScaleKey( spep_1 -3 + 130, ryusen1, 4.92, 1.95 );

setEffRotateKey( spep_1 -3 + 34, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 111, ryusen1, 0 );
setEffRotateKey( spep_1 -3 + 112, ryusen1, -45 );
setEffRotateKey( spep_1 -3 + 130, ryusen1, -45 );

setEffAlphaKey( spep_1 -3 + 34, ryusen1, 201 );
--setEffAlphaKey( spep_1 -3 + 111, ryusen1, 201 );
--setEffAlphaKey( spep_1 -3 + 112, ryusen1, 0 );
--setEffAlphaKey( spep_1 -3 + 113, ryusen1, 0 );
--setEffAlphaKey( spep_1 -3 + 114, ryusen1, 201 );
setEffAlphaKey( spep_1 -3 + 130, ryusen1, 201 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 174,  914, 60, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 174, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 234, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 174, ryusen2, 5.2, 1.3 );
setEffScaleKey( spep_1 -3 + 234, ryusen2, 5.2, 1.3 );

setEffRotateKey( spep_1 -3 + 174, ryusen2, 90 );
setEffRotateKey( spep_1 -3 + 234, ryusen2, 90 );

setEffAlphaKey( spep_1 -3 + 174, ryusen2, 201 );
setEffAlphaKey( spep_1 -3 + 234, ryusen2, 201 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 176,  906, 4, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1-3 + 176, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 180, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 176, shuchusen2, 1, 1 );
setEffScaleKey( spep_1-3 + 180, shuchusen2, 1, 1 );

setEffRotateKey( spep_1-3 + 176, shuchusen2, 0 );
setEffRotateKey( spep_1-3 + 180, shuchusen2, 0 );

setEffAlphaKey( spep_1-3 + 176, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 178, shuchusen2, 200 );
setEffAlphaKey( spep_1-3 + 180, shuchusen2, 145 );

--白フェード
entryFade( spep_1 + 232, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 0, 8 );
playSe( spep_1 -3 + 30, 1009 );  --バキ
playSe( spep_1 + 56, 43 );  --瞬間移動
setSeVolume( spep_1 + 56, 43, 80 );
playSe( spep_1 + 98, 4 );  --瞬間移動・出
playSe( spep_1 + 98, 43 );  --瞬間移動・出
setSeVolume( spep_1 + 98, 4, 110 );
playSe( spep_1 -3 + 112, 1010 );  --ドン
setSeVolume( spep_1 -3 + 112, 1010, 110 );
playSe( spep_1 + 136, 43 );  --瞬間移動
setSeVolume( spep_1 + 136, 43, 90 );
playSe( spep_1 + 160, 1109 );  --瞬間移動・出
setSeVolume( spep_1 + 160, 1109, 90 );
playSe( spep_1 -3 + 176, 1011 );  --ドゴン
setSeVolume( spep_1 -3 + 176, 1011, 110 );

--次の準備
spep_2 = spep_1+240;

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
-- 気弾発動
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 190, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 190, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 190, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 190, tame, 255 );

-- ** エフェクト等 ** --
tame_bg = entryEffect( spep_3 + 0, SP_05x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame_bg, 0, 0 , 0 );
setEffMoveKey( spep_3 + 190, tame_bg, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame_bg, -1.0, 1.0 );
setEffScaleKey( spep_3 + 190, tame_bg, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame_bg, 0 );
setEffRotateKey( spep_3 + 190, tame_bg, 0 );
setEffAlphaKey( spep_3 + 0, tame_bg, 255 );
setEffAlphaKey( spep_3 + 190, tame_bg, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3+16  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3+16  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +28, 190006, 72, 0x100, -1, 0, 40, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 +28,  ctgogo,  40,  510);
setEffMoveKey(  spep_3 +100,  ctgogo,  40,  510);

setEffAlphaKey( spep_3 +28, ctgogo, 0 );
setEffAlphaKey( spep_3 + 29, ctgogo, 255 );
setEffAlphaKey( spep_3 + 30, ctgogo, 255 );
setEffAlphaKey( spep_3 + 92, ctgogo, 255 );
setEffAlphaKey( spep_3 + 94, ctgogo, 255 );
setEffAlphaKey( spep_3 + 96, ctgogo, 191 );
setEffAlphaKey( spep_3 + 98, ctgogo, 128 );
setEffAlphaKey( spep_3 + 100, ctgogo, 64 );

setEffRotateKey(  spep_3 +28,  ctgogo,  0);
setEffRotateKey(  spep_3 +100,  ctgogo,  0);

setEffScaleKey(  spep_3 +28,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +100,  ctgogo, -1.07, 1.07 );

--文字エントリー
ctzuo = entryEffectLife( spep_3-3 + 130,  10012, 34, 0x100, -1, 0, 103.5, 239.7 );--ズオッ

setEffMoveKey( spep_3-3 + 130, ctzuo, 103.5, 239.7 , 0 );
setEffMoveKey( spep_3-3 + 132, ctzuo, 95.4, 321.1 , 0 );
setEffMoveKey( spep_3-3 + 134, ctzuo, 92.8, 317.3 , 0 );
setEffMoveKey( spep_3-3 + 136, ctzuo, 99.8, 321.5 , 0 );
setEffMoveKey( spep_3-3 + 138, ctzuo, 97.3, 317.7 , 0 );
setEffMoveKey( spep_3-3 + 140, ctzuo, 104.3, 321.9 , 0 );
setEffMoveKey( spep_3-3 + 142, ctzuo, 101.7, 318.2 , 0 );
setEffMoveKey( spep_3-3 + 144, ctzuo, 108.7, 322.4 , 0 );
setEffMoveKey( spep_3-3 + 146, ctzuo, 106.1, 318.6 , 0 );
setEffMoveKey( spep_3-3 + 148, ctzuo, 113.2, 322.8 , 0 );
setEffMoveKey( spep_3-3 + 150, ctzuo, 110.6, 319 , 0 );
setEffMoveKey( spep_3-3 + 152, ctzuo, 117.6, 323.2 , 0 );
setEffMoveKey( spep_3-3 + 154, ctzuo, 115, 319.4 , 0 );
setEffMoveKey( spep_3-3 + 156, ctzuo, 122, 323.6 , 0 );
setEffMoveKey( spep_3-3 + 158, ctzuo, 157.3, 415.2 , 0 );
setEffMoveKey( spep_3-3 + 160, ctzuo, 208.1, 520.2 , 0 );
setEffMoveKey( spep_3-3 + 162, ctzuo, 237.4, 606.7 , 0 );
setEffMoveKey( spep_3-3 + 164, ctzuo, 277.5, 702.5 , 0 );

a=1.8;

setEffScaleKey( spep_3-3 + 130, ctzuo, 0.38, 0.38 );
setEffScaleKey( spep_3-3 + 132, ctzuo, 0.7+a, 0.7+a );
setEffScaleKey( spep_3-3 + 156, ctzuo, 0.7+a, 0.7+a );
--setEffScaleKey( spep_3-3 + 158, ctzuo, 1.15+a, 1.15+a );
--setEffScaleKey( spep_3-3 + 160, ctzuo, 1.6+a, 1.6+a );
--setEffScaleKey( spep_3-3 + 162, ctzuo, 4.27+a, 4.27+a );
setEffScaleKey( spep_3-3 + 164, ctzuo, 4.9+a, 4.9+a );

setEffRotateKey( spep_3-3 + 130, ctzuo, 25 );
setEffRotateKey( spep_3-3 + 164, ctzuo, 25 );

setEffAlphaKey( spep_3-3 + 130, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 132, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 156, ctzuo, 255 );
setEffAlphaKey( spep_3-3 + 158, ctzuo, 191 );
setEffAlphaKey( spep_3-3 + 160, ctzuo, 128 );
setEffAlphaKey( spep_3-3 + 162, ctzuo, 64 );
setEffAlphaKey( spep_3-3 + 164, ctzuo, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 126 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 126, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 -3 + 126, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 -3 + 126, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 -3 + 126, shuchusen3, 255 );

--白フェード
entryFade( spep_3 + 124, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 182, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_3 +10, 1154 );  --溜める
playSe( spep_3 +28, 1018 );  --ゴゴゴ
playSe( spep_3 +130, 1022 );  --発射

--次の準備
spep_4 = spep_3+190;

------------------------------------------------------
-- 気弾敵に近づく
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_4 + 0, SP_06x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit, 0, 0 , 0 );
setEffMoveKey( spep_4 + 82, hit, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_4 + 82, hit, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit, 0 );
setEffRotateKey( spep_4 + 82, hit, 0 );
setEffAlphaKey( spep_4 + 0, hit, 255 );
setEffAlphaKey( spep_4 + 82, hit, 255 );


-- ** エフェクト等 ** --
hit_bg = entryEffect( spep_4 + 0, SP_07x,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hit_bg, 0, 0 , 0 );
setEffMoveKey( spep_4 + 82, hit_bg, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit_bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 82, hit_bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit_bg, 0 );
setEffRotateKey( spep_4 + 82, hit_bg, 0 );
setEffAlphaKey( spep_4 + 0, hit_bg, 255 );
setEffAlphaKey( spep_4 + 82, hit_bg, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 80, 1, 0 );

changeAnime( spep_4 + 0, 1, 105 );

setMoveKey( spep_4 + 0, 1, 0.7, 0 , 0 );
setMoveKey( spep_4 + 2, 1, 0.8, 0 , 0 );
setMoveKey( spep_4 + 4, 1, 0.9, 0 , 0 );
setMoveKey( spep_4 + 6, 1, 1, 0 , 0 );
setMoveKey( spep_4 + 8, 1, 1.2, 0.1 , 0 );
setMoveKey( spep_4 + 10, 1, 1.4, 0.1 , 0 );
setMoveKey( spep_4 + 12, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_4 + 14, 1, 1.9, 0.1 , 0 );
setMoveKey( spep_4 + 16, 1, 2.2, 0.2 , 0 );
setMoveKey( spep_4 + 18, 1, 2.5, 0.2 , 0 );
setMoveKey( spep_4 + 20, 1, 2.9, 0.3 , 0 );
setMoveKey( spep_4 + 22, 1, 3.2, 0.3 , 0 );
setMoveKey( spep_4 + 24, 1, 3.7, 0.4 , 0 );
setMoveKey( spep_4 + 26, 1, 4.1, 0.4 , 0 );
setMoveKey( spep_4 + 28, 1, 4.6, 0.5 , 0 );
setMoveKey( spep_4 + 30, 1, 5.1, 0.5 , 0 );
setMoveKey( spep_4 + 32, 1, 5.7, 0.6 , 0 );
setMoveKey( spep_4 + 34, 1, 6.3, 0.7 , 0 );
setMoveKey( spep_4 + 36, 1, 6.9, 0.8 , 0 );
setMoveKey( spep_4 + 38, 1, 7.6, 0.9 , 0 );
setMoveKey( spep_4 + 40, 1, 8.3, 1 , 0 );
setMoveKey( spep_4 + 42, 1, 9, 1.1 , 0 );
setMoveKey( spep_4 + 44, 1, 9.8, 1.2 , 0 );
setMoveKey( spep_4 + 46, 1, 10.6, 1.3 , 0 );
setMoveKey( spep_4 + 48, 1, 11.5, 1.4 , 0 );
setMoveKey( spep_4 + 50, 1, 12.3, 1.5 , 0 );
setMoveKey( spep_4 + 52, 1, 13.3, 1.7 , 0 );
setMoveKey( spep_4 + 54, 1, 14.2, 1.8 , 0 );
setMoveKey( spep_4 + 56, 1, 15.2, 2 , 0 );
setMoveKey( spep_4 + 58, 1, 16.2, 2.1 , 0 );
setMoveKey( spep_4 + 60, 1, 17.3, 2.3 , 0 );
setMoveKey( spep_4 + 62, 1, 18.4, 2.5 , 0 );
setMoveKey( spep_4 + 64, 1, 19.6, 2.7 , 0 );
setMoveKey( spep_4 + 66, 1, 20.8, 2.9 , 0 );
setMoveKey( spep_4 + 68, 1, 22, 3.1 , 0 );
setMoveKey( spep_4 + 70, 1, 30.1, -4.5 , 0 );
setMoveKey( spep_4 + 72, 1, 39.1, -12 , 0 );
setMoveKey( spep_4 + 74, 1, 59.8, -17.6 , 0 );
setMoveKey( spep_4 + 76, 1, 66.4, -16.9 , 0 );
setMoveKey( spep_4 + 78, 1, 73.1, -16.2 , 0 );
setMoveKey( spep_4 + 80, 1, 80, -15.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_4 + 2, 1, 0.06, 0.06 );
setScaleKey( spep_4 + 4, 1, 0.07, 0.07 );
setScaleKey( spep_4 + 6, 1, 0.08, 0.08 );
setScaleKey( spep_4 + 8, 1, 0.09, 0.09 );
setScaleKey( spep_4 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_4 + 12, 1, 0.11, 0.11 );
setScaleKey( spep_4 + 14, 1, 0.13, 0.13 );
setScaleKey( spep_4 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_4 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_4 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_4 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_4 + 24, 1, 0.24, 0.24 );
setScaleKey( spep_4 + 26, 1, 0.27, 0.27 );
setScaleKey( spep_4 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_4 + 32, 1, 0.37, 0.37 );
setScaleKey( spep_4 + 34, 1, 0.41, 0.41 );
setScaleKey( spep_4 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_4 + 38, 1, 0.49, 0.49 );
setScaleKey( spep_4 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_4 + 42, 1, 0.58, 0.58 );
setScaleKey( spep_4 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_4 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_4 + 48, 1, 0.74, 0.74 );
setScaleKey( spep_4 + 50, 1, 0.79, 0.79 );
setScaleKey( spep_4 + 52, 1, 0.85, 0.85 );
setScaleKey( spep_4 + 54, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 56, 1, 0.97, 0.97 );
setScaleKey( spep_4 + 58, 1, 1.04, 1.04 );
setScaleKey( spep_4 + 60, 1, 1.11, 1.11 );
setScaleKey( spep_4 + 62, 1, 1.18, 1.18 );
setScaleKey( spep_4 + 64, 1, 1.25, 1.25 );
setScaleKey( spep_4 + 66, 1, 1.32, 1.32 );
setScaleKey( spep_4 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_4 + 70, 1, 1.92, 1.92 );
setScaleKey( spep_4 + 72, 1, 2.49, 2.49 );
setScaleKey( spep_4 + 74, 1, 3.78, 3.78 );
setScaleKey( spep_4 + 76, 1, 4.18, 4.18 );
setScaleKey( spep_4 + 78, 1, 4.58, 4.58 );
setScaleKey( spep_4 + 80, 1, 4.99, 4.99 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 80, 1, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_4 + 0,  10014, 80, 0x100, -1, 0, -70.6, 404.1 );--ズドドドッ

b=20;

setEffMoveKey( spep_4 + 0, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 2, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 4, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 6, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 8, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 10, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 12, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 14, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 16, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 18, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 20, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 22, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 24, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 26, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 28, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 30, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 32, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 34, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 36, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 38, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 40, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 42, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 44, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 46, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 48, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 50, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 52, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 54, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 56, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 58, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 60, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 62, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 64, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 66, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 68, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 70, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 72, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 74, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 76, ctzudodo, -70.6, 404.1 -b , 0 );
setEffMoveKey( spep_4 + 78, ctzudodo, -68.4, 386.9 -b , 0 );
setEffMoveKey( spep_4 + 80, ctzudodo, -70.6, 404.1 -b , 0 );

setEffScaleKey( spep_4 + 0, ctzudodo, 1.8, 2.0 );
setEffScaleKey( spep_4 + 80, ctzudodo, 1.8, 2.0 );

setEffRotateKey( spep_4 + 0, ctzudodo, -63.7 );
setEffRotateKey( spep_4 + 80, ctzudodo, -63.7 );

--集中線
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 80, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 80, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 80, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen4, 180 );
setEffRotateKey( spep_4 + 80, shuchusen4, 180 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 80, shuchusen4, 255 );

--白フェード
entryFade( spep_4 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 +6, 1021 );  --気弾迫る

--次の準備
spep_5 = spep_4+82;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, 190003,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, -1.0, 1.0 );
setEffScaleKey( spep_5 + 60, gyan, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 60, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_5 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_5 + 58, ctgyan, 7.1, 306.8 , 0 );

z=2.7;

setEffScaleKey( spep_5 + 0, ctgyan, 0.6 + z, 0.6 + z );
setEffScaleKey( spep_5 + 2, ctgyan, 0.7 + z, 0.7 + z );
setEffScaleKey( spep_5 + 4, ctgyan, 0.8 + z, 0.8 + z );
setEffScaleKey( spep_5 + 6, ctgyan, 0.9 + z, 0.9 + z );
setEffScaleKey( spep_5 + 8, ctgyan, 1 + z, 1 + z );
setEffScaleKey( spep_5 + 10, ctgyan, 1.01 + z, 1.01 + z );
setEffScaleKey( spep_5 + 12, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_5 + 14, ctgyan, 1.02 + z, 1.02 + z );
setEffScaleKey( spep_5 + 16, ctgyan, 1.03 + z, 1.03 + z );
setEffScaleKey( spep_5 + 18, ctgyan, 1.04 + z, 1.04 + z );
setEffScaleKey( spep_5 + 20, ctgyan, 1.05 + z, 1.05 + z );
setEffScaleKey( spep_5 + 22, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_5 + 24, ctgyan, 1.06 + z, 1.06 + z );
setEffScaleKey( spep_5 + 26, ctgyan, 1.07 + z, 1.07 + z );
setEffScaleKey( spep_5 + 28, ctgyan, 1.08 + z, 1.08 + z );
setEffScaleKey( spep_5 + 30, ctgyan, 1.09 + z, 1.09 + z );
setEffScaleKey( spep_5 + 32, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_5 + 34, ctgyan, 1.1 + z, 1.1 + z );
setEffScaleKey( spep_5 + 36, ctgyan, 1.11 + z, 1.11 + z );
setEffScaleKey( spep_5 + 38, ctgyan, 1.12 + z, 1.12 + z );
setEffScaleKey( spep_5 + 40, ctgyan, 1.13 + z, 1.13 + z );
setEffScaleKey( spep_5 + 42, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_5 + 44, ctgyan, 1.14 + z, 1.14 + z );
setEffScaleKey( spep_5 + 46, ctgyan, 1.15 + z, 1.15 + z );
setEffScaleKey( spep_5 + 48, ctgyan, 1.16 + z, 1.16 + z );
setEffScaleKey( spep_5 + 50, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_5 + 52, ctgyan, 1.17 + z, 1.17 + z );
setEffScaleKey( spep_5 + 54, ctgyan, 1.18 + z, 1.18 + z );
setEffScaleKey( spep_5 + 56, ctgyan, 1.19 + z, 1.19 + z );
setEffScaleKey( spep_5 + 58, ctgyan, 1.2 + z, 1.2 + z );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 + 58, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** おと ** --
playSe( spep_5, 1023 ); --爆発

--次の準備
spep_6 =spep_5+60;

------------------------------------------------------
-- おわり
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08x,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 284, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, -1.2, 1.2 );
setEffScaleKey( spep_6 + 284, finish, -1.2, 1.2 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 284, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 284, finish, 255 );

-- ** おと ** --
playSe( spep_6, 1157 ); --雲光る
setSeVolume( spep_6, 1157, 90 );
setSeVolume( spep_6 + 78, 1157, 60 );
setSeVolume( spep_6 + 80, 1157, 55 );
setSeVolume( spep_6 + 82, 1157, 20 );
playSe( spep_6 + 82, 1067 ); --爆発
setSeVolume( spep_6, 1157, 120 );

-- ** ダメージ表示 ** --
dealDamage(spep_6 +80 );
endPhase( spep_6 + 278 );


end


