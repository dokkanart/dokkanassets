--1018880:ゴクウブラック(超サイヤ人ロゼ)_神裂光弾
--sp_effect_a2_00129

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
SP_01=	154951	;--	瞬間移動
SP_02=	154952	;--	打撃ラッシュ　前面
SP_03=	154953	;--	打撃ラッシュ　背面
SP_04=	154954	;--	斬りつけラッシュ
SP_05=	154955	;--	斬りつけフィニッシュ　前面
SP_06=	154956	;--	斬りつけフィニッシュ　背面
SP_07=	154957	;--	地面激突　前面
SP_08=	154958	;--	地面激突　背面
SP_09=	154959	;--	ザマス登場
SP_10=	154960	;--	気弾生成
SP_11=	154961	;--	発射
SP_12=	154962	;--	迫る
SP_13=	154963	;--	大爆発

--敵側
SP_01x=	154951	;--	瞬間移動	
SP_02x=	154964	;--	打撃ラッシュ　前面	(敵)
SP_03x=	154953	;--	打撃ラッシュ　背面	
SP_04x=	154965	;--	斬りつけラッシュ	(敵)
SP_05x=	154955	;--	斬りつけフィニッシュ　前面	
SP_06x=	154966	;--	斬りつけフィニッシュ　背面	(敵)
SP_07x=	154957	;--	地面激突　前面	
SP_08x=	154958	;--	地面激突　背面	
SP_09x=	154959	;--	ザマス登場	
SP_10x=	154960	;--	気弾生成	
SP_11x=	154961	;--	発射	
SP_12x=	154962	;--	迫る	
SP_13x=	154963	;--	大爆発	


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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
-- 瞬間移動
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
idou = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, idou, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, idou, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou, 0 );
setEffRotateKey( spep_0 + 76, idou, 0 );
setEffAlphaKey( spep_0 + 0, idou, 255 );
setEffAlphaKey( spep_0 + 76, idou, 255 );
setEffAlphaKey( spep_0 + 77, idou, 0 );
setEffAlphaKey( spep_0 + 78, idou, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 78, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
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
--SE
se_1235 = playSe( spep_0 + 40, 1235 );

--次の準備
spep_1=spep_0+76;

------------------------------------------------------
-- 打撃ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
lush_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 146, lush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, lush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, lush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lush_f, 0 );
setEffRotateKey( spep_1 + 146, lush_f, 0 );
setEffAlphaKey( spep_1 + 0, lush_f, 255 );
setEffAlphaKey( spep_1 + 146, lush_f, 255 );
setEffAlphaKey( spep_1 + 147, lush_f, 0 );
setEffAlphaKey( spep_1 + 148, lush_f, 0 );

-- ** エフェクト等 ** --
lush_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 146, lush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, lush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, lush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lush_b, 0 );
setEffRotateKey( spep_1 + 146, lush_b, 0 );
setEffAlphaKey( spep_1 + 0, lush_b, 255 );
setEffAlphaKey( spep_1 + 146, lush_b, 255 );
setEffAlphaKey( spep_1 + 147, lush_b, 0 );
setEffAlphaKey( spep_1 + 148, lush_b, 0 );

--文字エントリー
ctbikuri = entryEffectLife( spep_1-3 + 24,  10000, 10, 0x100, -1, 0, -48.7, 134.1 );--!!

setEffMoveKey( spep_1-3 + 24, ctbikuri, -48.7, 134.1 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbikuri, -32.9, 166.6 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbikuri, -20.7, 197.7 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbikuri, -17.8, 198.7 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbikuri, -20.7, 197.7 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbikuri, -17.8, 198.7 , 0 );

setEffScaleKey( spep_1-3 + 24, ctbikuri, 0.52, 0.52 );
setEffScaleKey( spep_1-3 + 26, ctbikuri, 1.54, 1.54 );
setEffScaleKey( spep_1-3 + 28, ctbikuri, 2.46, 2.46 );
setEffScaleKey( spep_1-3 + 34, ctbikuri, 2.46, 2.46 );

setEffRotateKey( spep_1-3 + 24, ctbikuri, 0 );
setEffRotateKey( spep_1-3 + 34, ctbikuri, 0 );

setEffAlphaKey( spep_1-3 + 24, ctbikuri, 255 );
setEffAlphaKey( spep_1-3 + 34, ctbikuri, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_1-3 + 36,  10016, 24, 0x100, -1, 0, 9.5, 205.3 );--ズンッ

setEffMoveKey( spep_1-3 + 36, ctzun, 9.5, 205.3 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzun, -91.8, 262.2 , 0 );
setEffMoveKey( spep_1-3 + 40, ctzun, -87.4, 258.1 , 0 );
setEffMoveKey( spep_1-3 + 42, ctzun, -94.4, 263.8 , 0 );
setEffMoveKey( spep_1-3 + 44, ctzun, -90, 259.5 , 0 );
setEffMoveKey( spep_1-3 + 46, ctzun, -97, 265.3 , 0 );
setEffMoveKey( spep_1-3 + 48, ctzun, -92.4, 260.8 , 0 );
setEffMoveKey( spep_1-3 + 50, ctzun, -99.8, 266.7 , 0 );
setEffMoveKey( spep_1-3 + 52, ctzun, -95, 262.2 , 0 );
setEffMoveKey( spep_1-3 + 54, ctzun, -102.3, 268.1 , 0 );
setEffMoveKey( spep_1-3 + 56, ctzun, -97.6, 263.6 , 0 );
setEffMoveKey( spep_1-3 + 58, ctzun, -105, 269.6 , 0 );
setEffMoveKey( spep_1-3 + 60, ctzun, -106.3, 270.4 , 0 );

setEffScaleKey( spep_1-3 + 36, ctzun, 0.64, 0.64 );
setEffScaleKey( spep_1-3 + 38, ctzun, 2.24, 2.24 );
setEffScaleKey( spep_1-3 + 40, ctzun, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 42, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 44, ctzun, 2.31, 2.31 );
setEffScaleKey( spep_1-3 + 46, ctzun, 2.33, 2.33 );
setEffScaleKey( spep_1-3 + 48, ctzun, 2.35, 2.35 );
setEffScaleKey( spep_1-3 + 50, ctzun, 2.37, 2.37 );
setEffScaleKey( spep_1-3 + 52, ctzun, 2.39, 2.39 );
setEffScaleKey( spep_1-3 + 54, ctzun, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 56, ctzun, 2.43, 2.43 );
setEffScaleKey( spep_1-3 + 58, ctzun, 2.45, 2.45 );
setEffScaleKey( spep_1-3 + 60, ctzun, 2.47, 2.47 );

setEffRotateKey( spep_1-3 + 36, ctzun, -19.3 );
setEffRotateKey( spep_1-3 + 38, ctzun, -19.5 );
setEffRotateKey( spep_1-3 + 60, ctzun, -19.5 );

setEffAlphaKey( spep_1-3 + 36, ctzun, 255 );
setEffAlphaKey( spep_1-3 + 54, ctzun, 255 );
setEffAlphaKey( spep_1-3 + 56, ctzun, 170 );
setEffAlphaKey( spep_1-3 + 58, ctzun, 85 );
setEffAlphaKey( spep_1-3 + 60, ctzun, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 92,  10020, 30, 0x100, -1, 0, 118.7, 305.2 );--バキッ

setEffMoveKey( spep_1-3 + 92, ctbaki, 118.7, 305.2 , 0 );
setEffMoveKey( spep_1-3 + 94, ctbaki, 67, 350.3 , 0 );
setEffMoveKey( spep_1-3 + 96, ctbaki, 70.5, 346.5 , 0 );
setEffMoveKey( spep_1-3 + 98, ctbaki, 65.1, 352 , 0 );
setEffMoveKey( spep_1-3 + 100, ctbaki, 68.7, 348 , 0 );
setEffMoveKey( spep_1-3 + 102, ctbaki, 63.3, 353.6 , 0 );
setEffMoveKey( spep_1-3 + 104, ctbaki, 67, 349.6 , 0 );
setEffMoveKey( spep_1-3 + 106, ctbaki, 61.4, 355.2 , 0 );
setEffMoveKey( spep_1-3 + 108, ctbaki, 65.2, 351.1 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbaki, 59.6, 356.9 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbaki, 63.4, 352.6 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbaki, 57.7, 358.5 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbaki, 42.1, 370.9 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbaki, 14.8, 395.8 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbaki, 1.4, 406 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbaki, -18.9, 423.6 , 0 );

setEffScaleKey( spep_1-3 + 92, ctbaki, 0.92, 0.92 );
setEffScaleKey( spep_1-3 + 94, ctbaki, 2.22, 2.22 );
setEffScaleKey( spep_1-3 + 96, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_1-3 + 98, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_1-3 + 100, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_1-3 + 102, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_1-3 + 104, ctbaki, 2.34, 2.34 );
setEffScaleKey( spep_1-3 + 106, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_1-3 + 108, ctbaki, 2.39, 2.39 );
setEffScaleKey( spep_1-3 + 110, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 112, ctbaki, 2.44, 2.44 );
setEffScaleKey( spep_1-3 + 114, ctbaki, 2.46, 2.46 );
setEffScaleKey( spep_1-3 + 116, ctbaki, 3.02, 3.02 );
setEffScaleKey( spep_1-3 + 118, ctbaki, 3.58, 3.58 );
setEffScaleKey( spep_1-3 + 120, ctbaki, 4.14, 4.14 );
setEffScaleKey( spep_1-3 + 122, ctbaki, 4.7, 4.7 );

setEffRotateKey( spep_1-3 + 92, ctbaki, -5.6 );
setEffRotateKey( spep_1-3 + 94, ctbaki, -5.7 );
setEffRotateKey( spep_1-3 + 122, ctbaki, -5.7 );

setEffAlphaKey( spep_1-3 + 92, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 114, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 116, ctbaki, 191 );
setEffAlphaKey( spep_1-3 + 118, ctbaki, 128 );
setEffAlphaKey( spep_1-3 + 120, ctbaki, 64 );
setEffAlphaKey( spep_1-3 + 122, ctbaki, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 146, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 24, 1, 1 );
changeAnime( spep_1-3 + 36, 1, 8 );
changeAnime( spep_1-3 + 92, 1, 106 );

setMoveKey( spep_1 + 0, 1, -141.9, -23.8 , 0 );
setMoveKey( spep_1-3 + 35, 1, -141.9, -23.8 , 0 );
setMoveKey( spep_1-3 + 36, 1, -31.1, 8.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, -51, -9.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, -32.5, -9.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, -52.3, 10.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, -33.8, 11.4 , 0 );
setMoveKey( spep_1-3 + 46, 1, -53.7, -7.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, -35.1, -6.4 , 0 );
setMoveKey( spep_1-3 + 50, 1, -55, 13.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, -36.5, 14.1 , 0 );
setMoveKey( spep_1-3 + 54, 1, -56.3, -4.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, -37.8, -3.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, -57.7, 16.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, -48.7, 7.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, -49.4, 7.8 , 0 );
setMoveKey( spep_1-3 + 64, 1, -50.1, 8.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, -50.7, 9.2 , 0 );
setMoveKey( spep_1-3 + 68, 1, -51.4, 9.8 , 0 );
setMoveKey( spep_1-3 + 70, 1, -52.1, 10.5 , 0 );
setMoveKey( spep_1-3 + 72, 1, -51.3, 10.8 , 0 );
setMoveKey( spep_1-3 + 74, 1, -52.2, 13.1 , 0 );
setMoveKey( spep_1-3 + 76, 1, -53, 15.1 , 0 );
setMoveKey( spep_1-3 + 78, 1, -53.6, 17 , 0 );
setMoveKey( spep_1-3 + 80, 1, -54.1, 18.8 , 0 );
setMoveKey( spep_1-3 + 82, 1, -54.5, 20.4 , 0 );
setMoveKey( spep_1-3 + 84, 1, -56.6, 22.6 , 0 );
setMoveKey( spep_1-3 + 86, 1, -58.7, 24.8 , 0 );
setMoveKey( spep_1-3 + 88, 1, -60.8, 27.1 , 0 );
setMoveKey( spep_1-3 + 91, 1, -62.9, 29.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, 251, 226.5 , 0 );
setMoveKey( spep_1-3 + 94, 1, 230.2, 205.7 , 0 );
setMoveKey( spep_1-3 + 96, 1, 251, 205.7 , 0 );
setMoveKey( spep_1-3 + 98, 1, 230.2, 226.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 251, 226.5 , 0 );
setMoveKey( spep_1-3 + 102, 1, 230.2, 205.7 , 0 );
setMoveKey( spep_1-3 + 104, 1, 324, 244.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, 338.3, 283.5 , 0 );
setMoveKey( spep_1-3 + 108, 1, 381, 290.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 411.3, 306.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 439.4, 320.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 465.3, 333.9 , 0 );
setMoveKey( spep_1-3 + 116, 1, 488.9, 345.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 458.7, 328.9 , 0 );
setMoveKey( spep_1-3 + 120, 1, 429.4, 312.5 , 0 );
setMoveKey( spep_1-3 + 122, 1, 401.1, 296.5 , 0 );
setMoveKey( spep_1-3 + 124, 1, 386.6, 290.6 , 0 );
setMoveKey( spep_1-3 + 126, 1, 372.1, 284.6 , 0 );
setMoveKey( spep_1-3 + 128, 1, 357.7, 278.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, 343.2, 272.7 , 0 );
setMoveKey( spep_1-3 + 132, 1, 328.8, 266.8 , 0 );
setMoveKey( spep_1-3 + 134, 1, 314.3, 260.9 , 0 );
setMoveKey( spep_1-3 + 136, 1, 299.9, 254.9 , 0 );
setMoveKey( spep_1-3 + 138, 1, 285.4, 249 , 0 );
setMoveKey( spep_1-3 + 140, 1, 270.9, 243 , 0 );
setMoveKey( spep_1-3 + 142, 1, 256.5, 237.1 , 0 );
setMoveKey( spep_1-3 + 144, 1, 242, 231.1 , 0 );
setMoveKey( spep_1-3 + 146, 1, 227.5, 225.2 , 0 );
setMoveKey( spep_1 + 146, 1, 213.1, 219.2 , 0 );

setScaleKey( spep_1 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 35, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 36, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 70, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 72, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 74, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 76, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 78, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 82, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 91, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 104, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 106, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 108, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 110, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 112, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 114, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 116, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 118, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 120, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 122, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 146, 1, 1.3, 1.3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 35, 1, 0 );
setRotateKey( spep_1-3 + 36, 1, 19.7 );
setRotateKey( spep_1-3 + 91, 1, 19.7 );
setRotateKey( spep_1-3 + 92, 1, -36.7 );
setRotateKey( spep_1 + 146, 1, -36.7 );

--SE
se_1235 = playSe( spep_1 + 3, 1235 );
playSe( spep_1 + 40, 1003 );
setSeVolume( spep_1 + 40, 1003, 71 );
playSe( spep_1 + 44, 1010 );
playSe( spep_1 + 49, 1012 );
playSe( spep_1 + 89, 1004 );
playSe( spep_1 + 99, 1010 );
setSeVolume( spep_1 + 99, 1010, 112 );
playSe( spep_1 + 103, 1110 );
playSe( spep_1 + 124, 1004 );
setSeVolume( spep_1 + 124, 1004, 50 );
playSe( spep_1 + 124, 1232 );
setSeVolume( spep_1 + 124, 1232, 79 );

stopSe( spep_1 + 2, se_1235, 0 );
stopSe( spep_1 + 31, se_1235, 15 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 148, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+146;

------------------------------------------------------
-- 斬りつけラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki_lush = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, zangeki_lush, 0, 0, 0 );
setEffMoveKey( spep_2 + 156, zangeki_lush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, zangeki_lush, 1.0, 1.0 );
setEffScaleKey( spep_2 + 156, zangeki_lush, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zangeki_lush, 0 );
setEffRotateKey( spep_2 + 156, zangeki_lush, 0 );
setEffAlphaKey( spep_2 + 0, zangeki_lush, 255 );
setEffAlphaKey( spep_2 + 156, zangeki_lush, 255 );
setEffAlphaKey( spep_2 + 157, zangeki_lush, 0 );
setEffAlphaKey( spep_2 + 158, zangeki_lush, 0 );

--se
playSe( spep_2 + 14, 1142 );
setSeVolume( spep_2 + 14, 1142, 79 );
se_1061 = playSe( spep_2 + 20, 1061 );
se_1172 = playSe( spep_2 + 20, 1172 );
setSeVolume( spep_2 + 20, 1172, 40 );
playSe( spep_2 + 43, 1142 );
setSeVolume( spep_2 + 43, 1142, 71 );
se_1141 = playSe( spep_2 + 49, 1141 );
setSeVolume( spep_2 + 49, 1141, 50 );
playSe( spep_2 + 52, 1031 );
playSe( spep_2 + 65, 1142 );
setSeVolume( spep_2 + 65, 1142, 71 );
se_11412 = playSe( spep_2 + 69, 1141 );
setSeVolume( spep_2 + 69, 1141, 71 );
playSe( spep_2 + 73, 1032 );
setSeVolume( spep_2 + 73, 1032, 89 );
playSe( spep_2 + 87, 1235 );
setSeVolume( spep_2 + 87, 1235, 32 );
playSe( spep_2 + 91, 1142 );
setSeVolume( spep_2 + 91, 1142, 71 );
se_11413 = playSe( spep_2 + 97, 1141 );
setSeVolume( spep_2 + 97, 1141, 56 );
playSe( spep_2 + 100, 1031 );
playSe( spep_2 + 110, 1142 );
setSeVolume( spep_2 + 110, 1142, 71 );
se_11414 = playSe( spep_2 + 114, 1141 );
setSeVolume( spep_2 + 114, 1141, 71 );
playSe( spep_2 + 117, 1072 );
setSeVolume( spep_2 + 117, 1072, 0 );
setSeVolume( spep_2 + 134, 1072, 12.5 );
setSeVolume( spep_2 + 135, 1072, 25 );
setSeVolume( spep_2 + 136, 1072, 37.5 );
setSeVolume( spep_2 + 137, 1072, 50 );
playSe( spep_2 + 118, 1032 );
playSe( spep_2 + 147, 1003 );
playSe( spep_2 + 147, 1235 );
setSeVolume( spep_2 + 147, 1235, 40 );

stopSe( spep_2 + 36, se_1061, 29 );
stopSe( spep_2 + 40, se_1172, 9 );
stopSe( spep_2 + 72, se_1141, 0 );
stopSe( spep_2 + 94, se_11412, 0 );
stopSe( spep_2 + 120, se_11413, 0 );
stopSe( spep_2 + 139, se_11414, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 158, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+156;
------------------------------------------------------
-- 斬りつけラッシュ斬りつけフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki_finish_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki_finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 36, zangeki_finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, zangeki_finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 36, zangeki_finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki_finish_f, 0 );
setEffRotateKey( spep_3 + 36, zangeki_finish_f, 0 );
setEffAlphaKey( spep_3 + 0, zangeki_finish_f, 255 );
setEffAlphaKey( spep_3 + 36, zangeki_finish_f, 255 );
setEffAlphaKey( spep_3 + 37, zangeki_finish_f, 0 );
setEffAlphaKey( spep_3 + 38, zangeki_finish_f, 0 );

-- ** エフェクト等 ** --
zangeki_finish_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki_finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 36, zangeki_finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, zangeki_finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 36, zangeki_finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki_finish_b, 0 );
setEffRotateKey( spep_3 + 36, zangeki_finish_b, 0 );
setEffAlphaKey( spep_3 + 0, zangeki_finish_b, 255 );
setEffAlphaKey( spep_3 + 36, zangeki_finish_b, 255 );
setEffAlphaKey( spep_3 + 37, zangeki_finish_b, 0 );
setEffAlphaKey( spep_3 + 38, zangeki_finish_b, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 36, 1, 0 );

changeAnime( spep_3  + 0, 1, 107 );

--setMoveKey( spep_3  + 0, 1, 88.1, -114 , 0 );
setMoveKey( spep_3  + 0, 1, 266.5, -389 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 293.7, -348.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 220.3, -274.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 225.6, -256.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 157.4, -233.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 129.6, -170.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 67.2, -132.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 101.8, -197.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 150.6, -275.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 199.3, -354.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 248.1, -432.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 296.9, -510.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 329.7, -557.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 362.6, -604.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 395.4, -651.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 428.3, -698.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 461.1, -745 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 494, -791.8 , 0 );
setMoveKey( spep_3  + 35, 1, 526.8, -838.7 , 0 );

a=0.6;

--setScaleKey( spep_3  + 0, 1, 1-a, 1-a );
setScaleKey( spep_3  , 1, 2, 2 );
setScaleKey( spep_3 -3 + 4, 1, 1.95-a, 1.95-a );
setScaleKey( spep_3 -3 + 6, 1, 1.81-a, 1.81-a );
setScaleKey( spep_3 -3 + 8, 1, 1.62-a, 1.62-a );
setScaleKey( spep_3 -3 + 10, 1, 1.42-a, 1.42-a );
setScaleKey( spep_3 -3 + 12, 1, 1.22-a, 1.22-a );
setScaleKey( spep_3 -3 + 14, 1, 1.07-a, 1.07-a );
setScaleKey( spep_3 -3 + 16, 1, 1.25-a, 1.25-a );
setScaleKey( spep_3 -3 + 18, 1, 1.49-a, 1.49-a );
setScaleKey( spep_3 -3 + 20, 1, 1.74-a, 1.74-a );
setScaleKey( spep_3 -3 + 22, 1, 1.98-a, 1.98-a );
setScaleKey( spep_3 -3 + 24, 1, 2.23-a, 2.23-a );
setScaleKey( spep_3 -3 + 26, 1, 2.41-a, 2.41-a );
setScaleKey( spep_3 -3 + 28, 1, 2.59-a, 2.59-a );
setScaleKey( spep_3 -3 + 30, 1, 2.76-a, 2.76-a );
setScaleKey( spep_3 -3 + 32, 1, 2.94-a, 2.94-a );
setScaleKey( spep_3 -3 + 34, 1, 3.12-a, 3.12-a );
setScaleKey( spep_3 -3 + 36, 1, 3.3-a, 3.3-a );
setScaleKey( spep_3  + 35, 1, 3.48-a, 3.48-a );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 35, 1, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_3 + 0,  10010, 36, 0x100, -1, 0, 41.8, 185.2 );

setEffMoveKey( spep_3  + 0, ctzan, 41.8, 185.2 , 0 );
--setEffMoveKey( spep_3 -2 + 2, ctzan, 79.8, 216.1 , 0 );
setEffMoveKey( spep_3 -2 + 4, ctzan, 108.9, 245.2 , 0 );
setEffMoveKey( spep_3 -2 + 6, ctzan, 151.3, 277 , 0 );
setEffMoveKey( spep_3 -2 + 8, ctzan, 142.8, 275.4 , 0 );
setEffMoveKey( spep_3 -2 + 10, ctzan, 152.1, 277.7 , 0 );
setEffMoveKey( spep_3 -2 + 12, ctzan, 143.5, 276.1 , 0 );
setEffMoveKey( spep_3 -2 + 14, ctzan, 152.9, 278.4 , 0 );
setEffMoveKey( spep_3 -2 + 16, ctzan, 144.2, 276.8 , 0 );
setEffMoveKey( spep_3 -2 + 18, ctzan, 153.7, 279.1 , 0 );
setEffMoveKey( spep_3 -2 + 20, ctzan, 145, 277.4 , 0 );
setEffMoveKey( spep_3 -2 + 22, ctzan, 154.5, 279.7 , 0 );
setEffMoveKey( spep_3 -2 + 24, ctzan, 145.8, 278.1 , 0 );
setEffMoveKey( spep_3 -2 + 26, ctzan, 155.3, 280.4 , 0 );
setEffMoveKey( spep_3 -2 + 28, ctzan, 146.5, 278.8 , 0 );
setEffMoveKey( spep_3 -2 + 30, ctzan, 156.1, 281.1 , 0 );
setEffMoveKey( spep_3 -2 + 32, ctzan, 200.1, 326.7 , 0 );
setEffMoveKey( spep_3 -2 + 34, ctzan, 269.5, 377.8 , 0 );
setEffMoveKey( spep_3 -2 + 36, ctzan, 306.4, 421.8 , 0 );
setEffMoveKey( spep_3 -2 + 38, ctzan, 359.6, 469.4 , 0 );

--setEffScaleKey( spep_3 -2 + 0, ctzan, 0.58, 0.58 );
setEffScaleKey( spep_3 -2 + 2, ctzan, 1.15, 1.15 );
setEffScaleKey( spep_3 -2 + 4, ctzan, 1.72, 1.72 );
setEffScaleKey( spep_3 -2 + 6, ctzan, 2.29, 2.29 );
setEffScaleKey( spep_3 -2 + 8, ctzan, 2.3, 2.3 );
setEffScaleKey( spep_3 -2 + 10, ctzan, 2.3, 2.3 );
setEffScaleKey( spep_3 -2 + 12, ctzan, 2.31, 2.31 );
setEffScaleKey( spep_3 -2 + 14, ctzan, 2.32, 2.32 );
setEffScaleKey( spep_3 -2 + 16, ctzan, 2.32, 2.32 );
setEffScaleKey( spep_3 -2 + 18, ctzan, 2.33, 2.33 );
setEffScaleKey( spep_3 -2 + 20, ctzan, 2.33, 2.33 );
setEffScaleKey( spep_3 -2 + 22, ctzan, 2.34, 2.34 );
setEffScaleKey( spep_3 -2 + 24, ctzan, 2.35, 2.35 );
setEffScaleKey( spep_3 -2 + 26, ctzan, 2.35, 2.35 );
setEffScaleKey( spep_3 -2 + 28, ctzan, 2.36, 2.36 );
setEffScaleKey( spep_3 -2 + 30, ctzan, 2.37, 2.37 );
setEffScaleKey( spep_3 -2 + 32, ctzan, 3.27, 3.27 );
setEffScaleKey( spep_3 -2 + 34, ctzan, 4.18, 4.18 );
setEffScaleKey( spep_3 -2 + 36, ctzan, 5.08, 5.08 );
setEffScaleKey( spep_3 -2 + 38, ctzan, 5.99, 5.99 );

setEffRotateKey( spep_3 + 0, ctzan, 38.1 );
setEffRotateKey( spep_3 + 2, ctzan, 38.2 );
setEffRotateKey( spep_3 + 36, ctzan, 38.2 );

setEffAlphaKey( spep_3  + 0, ctzan, 255 );
setEffAlphaKey( spep_3 -2 + 30, ctzan, 255 );
setEffAlphaKey( spep_3 -2 + 32, ctzan, 191 );
setEffAlphaKey( spep_3 -2 + 34, ctzan, 128 );
setEffAlphaKey( spep_3 -2 + 36, ctzan, 64 );
setEffAlphaKey( spep_3 -2 + 38, ctzan, 0 );

--SE
playSe( spep_3 + 0, 1142 );
playSe( spep_3 + 6, 1061 );
playSe( spep_3 + 6, 1172 );
setSeVolume( spep_3 + 6, 1172, 79 );
playSe( spep_3 + 14, 1026 );
setSeVolume( spep_3 + 14, 1026, 50 );
se_1121 = playSe( spep_3 + 29, 1121 );
setSeVolume( spep_3 + 29, 1121, 79 );
se_1183 = playSe( spep_3 + 29, 1183 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 38, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+36;

------------------------------------------------------
-- 地面激突
------------------------------------------------------
-- ** エフェクト等 ** --
rakka_f = entryEffect( spep_4 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rakka_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, rakka_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rakka_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, rakka_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rakka_f, 0 );
setEffRotateKey( spep_4 + 66, rakka_f, 0 );
setEffAlphaKey( spep_4 + 0, rakka_f, 255 );
setEffAlphaKey( spep_4 + 66, rakka_f, 255 );
setEffAlphaKey( spep_4 + 67, rakka_f, 0 );
setEffAlphaKey( spep_4 + 68, rakka_f, 0 );

-- ** エフェクト等 ** --
rakka_b = entryEffect( spep_4 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rakka_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, rakka_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rakka_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, rakka_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rakka_b, 0 );
setEffRotateKey( spep_4 + 66, rakka_b, 0 );
setEffAlphaKey( spep_4 + 0, rakka_b, 255 );
setEffAlphaKey( spep_4 + 66, rakka_b, 255 );
setEffAlphaKey( spep_4 + 67, rakka_b, 0 );
setEffAlphaKey( spep_4 + 68, rakka_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 66, 1, 0 );

changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 0, -40 , 0 );
setMoveKey( spep_4 + 2, 1, 0, -24.4 , 0 );
setMoveKey( spep_4 + 4, 1, 0, -8.7 , 0 );
setMoveKey( spep_4 + 6, 1, 0, 6.9 , 0 );
setMoveKey( spep_4 + 8, 1, 0, 22.5 , 0 );
setMoveKey( spep_4 + 10, 1, 0, 28.4 , 0 );
setMoveKey( spep_4 + 12, 1, 0, 34.3 , 0 );
setMoveKey( spep_4 + 14, 1, 0, 40.2 , 0 );
setMoveKey( spep_4 + 16, 1, 0, 46.1 , 0 );
setMoveKey( spep_4 + 18, 1, 0, 51.9 , 0 );
setMoveKey( spep_4 + 20, 1, 0, 57.8 , 0 );
setMoveKey( spep_4 + 22, 1, 0, 63.7 , 0 );
setMoveKey( spep_4 + 24, 1, 0, 75.3 , 0 );
setMoveKey( spep_4 + 26, 1, 0, 86.8 , 0 );
setMoveKey( spep_4 + 28, 1, 0, 98.4 , 0 );
setMoveKey( spep_4 + 30, 1, 0, 110 , 0 );
setMoveKey( spep_4 + 38, 1, 0, 110 , 0 );
setMoveKey( spep_4 + 40, 1, 4, 114 , 0 );
setMoveKey( spep_4 + 42, 1, -4, 106 , 0 );
setMoveKey( spep_4 + 44, 1, -4, 114 , 0 );
setMoveKey( spep_4 + 46, 1, 4, 106 , 0 );
setMoveKey( spep_4 + 48, 1, 4, 114 , 0 );
setMoveKey( spep_4 + 50, 1, -4, 106 , 0 );
setMoveKey( spep_4 + 52, 1, -4, 114 , 0 );
setMoveKey( spep_4 + 54, 1, 4, 106 , 0 );
setMoveKey( spep_4 + 56, 1, 4, 114 , 0 );
setMoveKey( spep_4 + 58, 1, -4, 106 , 0 );
setMoveKey( spep_4 + 60, 1, -4, 114 , 0 );
setMoveKey( spep_4 + 62, 1, 4, 106 , 0 );
setMoveKey( spep_4 + 64, 1, 4, 114 , 0 );
setMoveKey( spep_4 + 66, 1, -4, 106 , 0 );
--setMoveKey( spep_4 + 68, 1, -4, 114 , 0 );

setScaleKey( spep_4 + 0, 1, 9, 9 );
setScaleKey( spep_4 + 2, 1, 7.59, 7.59 );
setScaleKey( spep_4 + 4, 1, 6.19, 6.19 );
setScaleKey( spep_4 + 6, 1, 4.78, 4.78 );
setScaleKey( spep_4 + 8, 1, 3.38, 3.38 );
setScaleKey( spep_4 + 10, 1, 3.07, 3.07 );
setScaleKey( spep_4 + 12, 1, 2.76, 2.76 );
setScaleKey( spep_4 + 14, 1, 2.45, 2.45 );
setScaleKey( spep_4 + 16, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 20, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 22, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 24, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 30, 1, 0.01, 0.01 );
setScaleKey( spep_4 + 66, 1, 0.01, 0.01 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 66, 1, 0 );

--SE
playSe( spep_4 + 48, 1159 );

stopSe( spep_4 + 61, se_1121, 0 );
stopSe( spep_4 + 61, se_1183, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 68, 0,  255, 255, 255, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+66;

------------------------------------------------------
-- ザマス登場
------------------------------------------------------
-- ** エフェクト等 ** --
zamasu = entryEffect( spep_5 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, zamasu, 0, 0, 0 );
setEffMoveKey( spep_5 + 44, zamasu, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, zamasu, 1.0, 1.0 );
setEffScaleKey( spep_5 + 44, zamasu, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, zamasu, 0 );
setEffRotateKey( spep_5 + 44, zamasu, 0 );
setEffAlphaKey( spep_5 + 0, zamasu, 255 );
setEffAlphaKey( spep_5 + 44, zamasu, 255 );
setEffAlphaKey( spep_5 + 45, zamasu, 0 );
setEffAlphaKey( spep_5 + 46, zamasu, 0 );

--SE
playSe( spep_5 + 22, 43 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 48, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+44;
------------------------------------------------------
-- 気弾生成
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_6 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_6 + 146, kidan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 146, kidan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan, 0 );
setEffRotateKey( spep_6 + 146, kidan, 0 );
setEffAlphaKey( spep_6 + 0, kidan, 255 );
setEffAlphaKey( spep_6 + 146, kidan, 255 );
setEffAlphaKey( spep_6 + 147, kidan, 0 );
setEffAlphaKey( spep_6 + 148, kidan, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_6 -4+64  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_6 -4+64  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_6 -4 +76, 190006, 72, 0x100, -1, 0, -130, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_6 -4 +76,  ctgogo,  -130,  510);
setEffMoveKey(  spep_6 -4 +148,  ctgogo,  -130,  510);

setEffAlphaKey( spep_6 -4 +76, ctgogo, 0 );
setEffAlphaKey( spep_6 -4 + 77, ctgogo, 255 );
setEffAlphaKey( spep_6 -4 + 78, ctgogo, 255 );
setEffAlphaKey( spep_6 -4 + 142, ctgogo, 255 );
setEffAlphaKey( spep_6 -4 + 144, ctgogo, 191 );
setEffAlphaKey( spep_6 -4 + 146, ctgogo, 112 );
setEffAlphaKey( spep_6 -4 + 148, ctgogo, 64 );

setEffRotateKey(  spep_6 -4 +76,  ctgogo,  0);
setEffRotateKey(  spep_6 -4 +148,  ctgogo,  0);

setEffScaleKey(  spep_6 -4 +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6 -4 +138,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_6 -4 +148,  ctgogo, 1.07, 1.07 );

-- ** 音 ** --
playSe( spep_6 + 72, 1018 );
playSe( spep_6 + 18, 1189 );
playSe( spep_6 + 18, 1233 );
playSe( spep_6 + 35, 1221 );
playSe( spep_6 + 35, 1222 );
playSe( spep_6 + 35, 49 );
se_1144 = playSe( spep_6 + 35, 1144 );
setSeVolume( spep_6 + 35, 1144, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 148, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 86, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );
stopSe( spep_7 + 18, se_1144, 0 );

--白フェード
--entryFade( spep_7 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 84;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_8 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_8 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_8 + 66, beam, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, beam, 0 );
setEffRotateKey( spep_8 + 66, beam, 0 );
setEffAlphaKey( spep_8 + 0, beam, 255 );
setEffAlphaKey( spep_8 + 66, beam, 255 );
setEffAlphaKey( spep_8 + 67, beam, 0 );
setEffAlphaKey( spep_8 + 68, beam, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_8 + 2,  10019, 50, 0x100, -1, 0, 20.6, 276.4 );--ドンッ

setEffMoveKey( spep_8 + 2, ctdon, 20.6, 276.4 , 0 );
setEffMoveKey( spep_8 + 4, ctdon, 22, 337.5 , 0 );
setEffMoveKey( spep_8 + 6, ctdon, 18.2, 388.2 , 0 );
setEffMoveKey( spep_8 + 8, ctdon, 22.5, 396.8 , 0 );
setEffMoveKey( spep_8 + 10, ctdon, 18.2, 388.5 , 0 );
setEffMoveKey( spep_8 + 12, ctdon, 22.4, 397.1 , 0 );
setEffMoveKey( spep_8 + 14, ctdon, 18.2, 388.8 , 0 );
setEffMoveKey( spep_8 + 16, ctdon, 22.5, 397.5 , 0 );
setEffMoveKey( spep_8 + 18, ctdon, 18.2, 389.1 , 0 );
setEffMoveKey( spep_8 + 20, ctdon, 22.5, 397.9 , 0 );
setEffMoveKey( spep_8 + 22, ctdon, 18.2, 389.5 , 0 );
setEffMoveKey( spep_8 + 24, ctdon, 22.5, 398.3 , 0 );
setEffMoveKey( spep_8 + 26, ctdon, 18.2, 389.9 , 0 );
setEffMoveKey( spep_8 + 28, ctdon, 22.5, 398.6 , 0 );
setEffMoveKey( spep_8 + 30, ctdon, 18.2, 390.2 , 0 );
setEffMoveKey( spep_8 + 32, ctdon, 22.5, 399 , 0 );
setEffMoveKey( spep_8 + 34, ctdon, 18.2, 390.5 , 0 );
setEffMoveKey( spep_8 + 36, ctdon, 22.5, 399.4 , 0 );
setEffMoveKey( spep_8 + 38, ctdon, 18.1, 390.9 , 0 );
setEffMoveKey( spep_8 + 40, ctdon, 22.5, 399.7 , 0 );
setEffMoveKey( spep_8 + 42, ctdon, 18.1, 391.2 , 0 );
setEffMoveKey( spep_8 + 44, ctdon, 22.8, 436 , 0 );
setEffMoveKey( spep_8 + 46, ctdon, 16.7, 459.4 , 0 );
setEffMoveKey( spep_8 + 48, ctdon, 23.3, 508.1 , 0 );
setEffMoveKey( spep_8 + 50, ctdon, 15.3, 527.7 , 0 );
setEffMoveKey( spep_8 + 52, ctdon, 14.6, 561.8 , 0 );

setEffScaleKey( spep_8 + 2, ctdon, 0.55, 0.55 );
setEffScaleKey( spep_8 + 4, ctdon, 1.45, 1.45 );
setEffScaleKey( spep_8 + 6, ctdon, 2.35, 2.35 );
setEffScaleKey( spep_8 + 8, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_8 + 14, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_8 + 16, ctdon, 2.37, 2.37 );
setEffScaleKey( spep_8 + 22, ctdon, 2.37, 2.37 );
setEffScaleKey( spep_8 + 24, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_8 + 28, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_8 + 30, ctdon, 2.39, 2.39 );
setEffScaleKey( spep_8 + 36, ctdon, 2.39, 2.39 );
setEffScaleKey( spep_8 + 38, ctdon, 2.4, 2.4 );
setEffScaleKey( spep_8 + 42, ctdon, 2.4, 2.4 );
setEffScaleKey( spep_8 + 44, ctdon, 2.95, 2.95 );
setEffScaleKey( spep_8 + 46, ctdon, 3.5, 3.5 );
setEffScaleKey( spep_8 + 48, ctdon, 4.06, 4.06 );
setEffScaleKey( spep_8 + 50, ctdon, 4.61, 4.61 );
setEffScaleKey( spep_8 + 52, ctdon, 5.16, 5.16 );

setEffRotateKey( spep_8 + 2, ctdon, 0 );
setEffRotateKey( spep_8 + 52, ctdon, 0 );

setEffAlphaKey( spep_8 + 2, ctdon, 255 );
setEffAlphaKey( spep_8 + 42, ctdon, 255 );
setEffAlphaKey( spep_8 + 44, ctdon, 204 );
setEffAlphaKey( spep_8 + 46, ctdon, 153 );
setEffAlphaKey( spep_8 + 48, ctdon, 102 );
setEffAlphaKey( spep_8 + 50, ctdon, 51 );
setEffAlphaKey( spep_8 + 52, ctdon, 0 );

--SE
playSe( spep_8 + 15, 1177 );
setSeVolume( spep_8 + 15, 1177, 63 );
playSe( spep_8 + 16, 1021 );
playSe( spep_8 + 16, 1027 );
playSe( spep_8 + 45, 1022 );
setSeVolume( spep_8 + 45, 1022, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 66;

------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_9 + 0, SP_12, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, hit, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit, 0 );
setEffRotateKey( spep_9 + 56, hit, 0 );
setEffAlphaKey( spep_9 + 0, hit, 255 );
setEffAlphaKey( spep_9 + 56, hit, 255 );
setEffAlphaKey( spep_9 + 57, hit, 0 );
setEffAlphaKey( spep_9 + 58, hit, 0 );

--SE
setSeVolume( spep_9 + 0, 1022, 0 );
setSeVolume( spep_9 + 1, 1022, 4.55 );
setSeVolume( spep_9 + 2, 1022, 9.09 );
setSeVolume( spep_9 + 3, 1022, 13.64 );
setSeVolume( spep_9 + 4, 1022, 18.18 );
setSeVolume( spep_9 + 5, 1022, 22.73 );
setSeVolume( spep_9 + 6, 1022, 27.27 );
setSeVolume( spep_9 + 7, 1022, 31.82 );
setSeVolume( spep_9 + 8, 1022, 36.36 );
setSeVolume( spep_9 + 9, 1022, 40.91 );
setSeVolume( spep_9 + 10, 1022, 45.45 );
setSeVolume( spep_9 + 11, 1022, 50 );
setSeVolume( spep_9 + 12, 1022, 54.55 );
setSeVolume( spep_9 + 13, 1022, 59.09 );
setSeVolume( spep_9 + 14, 1022, 63.64 );
setSeVolume( spep_9 + 15, 1022, 68.18 );
setSeVolume( spep_9 + 16, 1022, 72.73 );
setSeVolume( spep_9 + 17, 1022, 77.27 );
setSeVolume( spep_9 + 18, 1022, 81.82 );
setSeVolume( spep_9 + 19, 1022, 86.36 );
setSeVolume( spep_9 + 20, 1022, 90.91 );
setSeVolume( spep_9 + 21, 1022, 95.45 );
setSeVolume( spep_9 + 22, 1022, 100 );

playSe( spep_9 + 22, 1022 );
setSeVolume( spep_9 + 22, 1022, 0 );
se_1158 = playSe( spep_9 + 5, 1158 );
setSeVolume( spep_9 + 5, 1158, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;
------------------------------------------------------
-- 大爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_10 + 0, SP_13, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_10 + 180, explosion, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_10 + 180, explosion, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, explosion, 0 );
setEffRotateKey( spep_10 + 180, explosion, 0 );
setEffAlphaKey( spep_10 + 0, explosion, 255 );
setEffAlphaKey( spep_10 + 180, explosion, 255 );

--SE
playSe( spep_10 + 42, 1159 );
setSeVolume( spep_10 + 42, 1159, 89 );
playSe( spep_10 + 42, 1023 );
playSe( spep_10 + 80, 1024 );

stopSe( spep_10 + 53, se_1158, 0 );

--終わり
dealDamage( spep_10 + 78 );
endPhase( spep_10 + 170 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 瞬間移動
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
idou = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, idou, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, idou, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou, 0 );
setEffRotateKey( spep_0 + 76, idou, 0 );
setEffAlphaKey( spep_0 + 0, idou, 255 );
setEffAlphaKey( spep_0 + 76, idou, 255 );
setEffAlphaKey( spep_0 + 77, idou, 0 );
setEffAlphaKey( spep_0 + 78, idou, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 78, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
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
--SE
se_1235 = playSe( spep_0 + 40, 1235 );

--次の準備
spep_1=spep_0+76;

------------------------------------------------------
-- 打撃ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
lush_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 146, lush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, lush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, lush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lush_f, 0 );
setEffRotateKey( spep_1 + 146, lush_f, 0 );
setEffAlphaKey( spep_1 + 0, lush_f, 255 );
setEffAlphaKey( spep_1 + 146, lush_f, 255 );
setEffAlphaKey( spep_1 + 147, lush_f, 0 );
setEffAlphaKey( spep_1 + 148, lush_f, 0 );

-- ** エフェクト等 ** --
lush_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 146, lush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, lush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 146, lush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lush_b, 0 );
setEffRotateKey( spep_1 + 146, lush_b, 0 );
setEffAlphaKey( spep_1 + 0, lush_b, 255 );
setEffAlphaKey( spep_1 + 146, lush_b, 255 );
setEffAlphaKey( spep_1 + 147, lush_b, 0 );
setEffAlphaKey( spep_1 + 148, lush_b, 0 );

--文字エントリー
ctbikuri = entryEffectLife( spep_1-3 + 24,  10000, 10, 0x100, -1, 0, -48.7, 134.1 );--!!

setEffMoveKey( spep_1-3 + 24, ctbikuri, -48.7, 134.1 , 0 );
setEffMoveKey( spep_1-3 + 26, ctbikuri, -32.9, 166.6 , 0 );
setEffMoveKey( spep_1-3 + 28, ctbikuri, -20.7, 197.7 , 0 );
setEffMoveKey( spep_1-3 + 30, ctbikuri, -17.8, 198.7 , 0 );
setEffMoveKey( spep_1-3 + 32, ctbikuri, -20.7, 197.7 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbikuri, -17.8, 198.7 , 0 );

setEffScaleKey( spep_1-3 + 24, ctbikuri, 0.52, 0.52 );
setEffScaleKey( spep_1-3 + 26, ctbikuri, 1.54, 1.54 );
setEffScaleKey( spep_1-3 + 28, ctbikuri, 2.46, 2.46 );
setEffScaleKey( spep_1-3 + 34, ctbikuri, 2.46, 2.46 );

setEffRotateKey( spep_1-3 + 24, ctbikuri, 0 );
setEffRotateKey( spep_1-3 + 34, ctbikuri, 0 );

setEffAlphaKey( spep_1-3 + 24, ctbikuri, 255 );
setEffAlphaKey( spep_1-3 + 34, ctbikuri, 255 );

--文字エントリー
ctzun = entryEffectLife( spep_1-3 + 36,  10016, 24, 0x100, -1, 0, 9.5, 205.3 );--ズンッ

setEffMoveKey( spep_1-3 + 36, ctzun, 9.5, 205.3 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzun, -91.8, 262.2 , 0 );
setEffMoveKey( spep_1-3 + 40, ctzun, -87.4, 258.1 , 0 );
setEffMoveKey( spep_1-3 + 42, ctzun, -94.4, 263.8 , 0 );
setEffMoveKey( spep_1-3 + 44, ctzun, -90, 259.5 , 0 );
setEffMoveKey( spep_1-3 + 46, ctzun, -97, 265.3 , 0 );
setEffMoveKey( spep_1-3 + 48, ctzun, -92.4, 260.8 , 0 );
setEffMoveKey( spep_1-3 + 50, ctzun, -99.8, 266.7 , 0 );
setEffMoveKey( spep_1-3 + 52, ctzun, -95, 262.2 , 0 );
setEffMoveKey( spep_1-3 + 54, ctzun, -102.3, 268.1 , 0 );
setEffMoveKey( spep_1-3 + 56, ctzun, -97.6, 263.6 , 0 );
setEffMoveKey( spep_1-3 + 58, ctzun, -105, 269.6 , 0 );
setEffMoveKey( spep_1-3 + 60, ctzun, -106.3, 270.4 , 0 );

setEffScaleKey( spep_1-3 + 36, ctzun, 0.64, 0.64 );
setEffScaleKey( spep_1-3 + 38, ctzun, 2.24, 2.24 );
setEffScaleKey( spep_1-3 + 40, ctzun, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 42, ctzun, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 44, ctzun, 2.31, 2.31 );
setEffScaleKey( spep_1-3 + 46, ctzun, 2.33, 2.33 );
setEffScaleKey( spep_1-3 + 48, ctzun, 2.35, 2.35 );
setEffScaleKey( spep_1-3 + 50, ctzun, 2.37, 2.37 );
setEffScaleKey( spep_1-3 + 52, ctzun, 2.39, 2.39 );
setEffScaleKey( spep_1-3 + 54, ctzun, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 56, ctzun, 2.43, 2.43 );
setEffScaleKey( spep_1-3 + 58, ctzun, 2.45, 2.45 );
setEffScaleKey( spep_1-3 + 60, ctzun, 2.47, 2.47 );

setEffRotateKey( spep_1-3 + 36, ctzun, -19.3 );
setEffRotateKey( spep_1-3 + 38, ctzun, -19.5 );
setEffRotateKey( spep_1-3 + 60, ctzun, -19.5 );

setEffAlphaKey( spep_1-3 + 36, ctzun, 255 );
setEffAlphaKey( spep_1-3 + 54, ctzun, 255 );
setEffAlphaKey( spep_1-3 + 56, ctzun, 170 );
setEffAlphaKey( spep_1-3 + 58, ctzun, 85 );
setEffAlphaKey( spep_1-3 + 60, ctzun, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 92,  10020, 30, 0x100, -1, 0, 118.7, 305.2 );--バキッ

setEffMoveKey( spep_1-3 + 92, ctbaki, 118.7, 305.2 , 0 );
setEffMoveKey( spep_1-3 + 94, ctbaki, 67, 350.3 , 0 );
setEffMoveKey( spep_1-3 + 96, ctbaki, 70.5, 346.5 , 0 );
setEffMoveKey( spep_1-3 + 98, ctbaki, 65.1, 352 , 0 );
setEffMoveKey( spep_1-3 + 100, ctbaki, 68.7, 348 , 0 );
setEffMoveKey( spep_1-3 + 102, ctbaki, 63.3, 353.6 , 0 );
setEffMoveKey( spep_1-3 + 104, ctbaki, 67, 349.6 , 0 );
setEffMoveKey( spep_1-3 + 106, ctbaki, 61.4, 355.2 , 0 );
setEffMoveKey( spep_1-3 + 108, ctbaki, 65.2, 351.1 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbaki, 59.6, 356.9 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbaki, 63.4, 352.6 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbaki, 57.7, 358.5 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbaki, 42.1, 370.9 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbaki, 14.8, 395.8 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbaki, 1.4, 406 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbaki, -18.9, 423.6 , 0 );

setEffScaleKey( spep_1-3 + 92, ctbaki, 0.92, 0.92 );
setEffScaleKey( spep_1-3 + 94, ctbaki, 2.22, 2.22 );
setEffScaleKey( spep_1-3 + 96, ctbaki, 2.24, 2.24 );
setEffScaleKey( spep_1-3 + 98, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_1-3 + 100, ctbaki, 2.29, 2.29 );
setEffScaleKey( spep_1-3 + 102, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_1-3 + 104, ctbaki, 2.34, 2.34 );
setEffScaleKey( spep_1-3 + 106, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_1-3 + 108, ctbaki, 2.39, 2.39 );
setEffScaleKey( spep_1-3 + 110, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 112, ctbaki, 2.44, 2.44 );
setEffScaleKey( spep_1-3 + 114, ctbaki, 2.46, 2.46 );
setEffScaleKey( spep_1-3 + 116, ctbaki, 3.02, 3.02 );
setEffScaleKey( spep_1-3 + 118, ctbaki, 3.58, 3.58 );
setEffScaleKey( spep_1-3 + 120, ctbaki, 4.14, 4.14 );
setEffScaleKey( spep_1-3 + 122, ctbaki, 4.7, 4.7 );

setEffRotateKey( spep_1-3 + 92, ctbaki, -5.6 );
setEffRotateKey( spep_1-3 + 94, ctbaki, -5.7 );
setEffRotateKey( spep_1-3 + 122, ctbaki, -5.7 );

setEffAlphaKey( spep_1-3 + 92, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 114, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 116, ctbaki, 191 );
setEffAlphaKey( spep_1-3 + 118, ctbaki, 128 );
setEffAlphaKey( spep_1-3 + 120, ctbaki, 64 );
setEffAlphaKey( spep_1-3 + 122, ctbaki, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 146, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 24, 1, 1 );
changeAnime( spep_1-3 + 36, 1, 8 );
changeAnime( spep_1-3 + 92, 1, 106 );

setMoveKey( spep_1 + 0, 1, -141.9, -23.8 , 0 );
setMoveKey( spep_1-3 + 35, 1, -141.9, -23.8 , 0 );
setMoveKey( spep_1-3 + 36, 1, -31.1, 8.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, -51, -9.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, -32.5, -9.1 , 0 );
setMoveKey( spep_1-3 + 42, 1, -52.3, 10.8 , 0 );
setMoveKey( spep_1-3 + 44, 1, -33.8, 11.4 , 0 );
setMoveKey( spep_1-3 + 46, 1, -53.7, -7.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, -35.1, -6.4 , 0 );
setMoveKey( spep_1-3 + 50, 1, -55, 13.4 , 0 );
setMoveKey( spep_1-3 + 52, 1, -36.5, 14.1 , 0 );
setMoveKey( spep_1-3 + 54, 1, -56.3, -4.4 , 0 );
setMoveKey( spep_1-3 + 56, 1, -37.8, -3.8 , 0 );
setMoveKey( spep_1-3 + 58, 1, -57.7, 16.1 , 0 );
setMoveKey( spep_1-3 + 60, 1, -48.7, 7.2 , 0 );
setMoveKey( spep_1-3 + 62, 1, -49.4, 7.8 , 0 );
setMoveKey( spep_1-3 + 64, 1, -50.1, 8.5 , 0 );
setMoveKey( spep_1-3 + 66, 1, -50.7, 9.2 , 0 );
setMoveKey( spep_1-3 + 68, 1, -51.4, 9.8 , 0 );
setMoveKey( spep_1-3 + 70, 1, -52.1, 10.5 , 0 );
setMoveKey( spep_1-3 + 72, 1, -51.3, 10.8 , 0 );
setMoveKey( spep_1-3 + 74, 1, -52.2, 13.1 , 0 );
setMoveKey( spep_1-3 + 76, 1, -53, 15.1 , 0 );
setMoveKey( spep_1-3 + 78, 1, -53.6, 17 , 0 );
setMoveKey( spep_1-3 + 80, 1, -54.1, 18.8 , 0 );
setMoveKey( spep_1-3 + 82, 1, -54.5, 20.4 , 0 );
setMoveKey( spep_1-3 + 84, 1, -56.6, 22.6 , 0 );
setMoveKey( spep_1-3 + 86, 1, -58.7, 24.8 , 0 );
setMoveKey( spep_1-3 + 88, 1, -60.8, 27.1 , 0 );
setMoveKey( spep_1-3 + 91, 1, -62.9, 29.3 , 0 );
setMoveKey( spep_1-3 + 92, 1, 251, 226.5 , 0 );
setMoveKey( spep_1-3 + 94, 1, 230.2, 205.7 , 0 );
setMoveKey( spep_1-3 + 96, 1, 251, 205.7 , 0 );
setMoveKey( spep_1-3 + 98, 1, 230.2, 226.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 251, 226.5 , 0 );
setMoveKey( spep_1-3 + 102, 1, 230.2, 205.7 , 0 );
setMoveKey( spep_1-3 + 104, 1, 324, 244.4 , 0 );
setMoveKey( spep_1-3 + 106, 1, 338.3, 283.5 , 0 );
setMoveKey( spep_1-3 + 108, 1, 381, 290.4 , 0 );
setMoveKey( spep_1-3 + 110, 1, 411.3, 306.2 , 0 );
setMoveKey( spep_1-3 + 112, 1, 439.4, 320.7 , 0 );
setMoveKey( spep_1-3 + 114, 1, 465.3, 333.9 , 0 );
setMoveKey( spep_1-3 + 116, 1, 488.9, 345.7 , 0 );
setMoveKey( spep_1-3 + 118, 1, 458.7, 328.9 , 0 );
setMoveKey( spep_1-3 + 120, 1, 429.4, 312.5 , 0 );
setMoveKey( spep_1-3 + 122, 1, 401.1, 296.5 , 0 );
setMoveKey( spep_1-3 + 124, 1, 386.6, 290.6 , 0 );
setMoveKey( spep_1-3 + 126, 1, 372.1, 284.6 , 0 );
setMoveKey( spep_1-3 + 128, 1, 357.7, 278.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, 343.2, 272.7 , 0 );
setMoveKey( spep_1-3 + 132, 1, 328.8, 266.8 , 0 );
setMoveKey( spep_1-3 + 134, 1, 314.3, 260.9 , 0 );
setMoveKey( spep_1-3 + 136, 1, 299.9, 254.9 , 0 );
setMoveKey( spep_1-3 + 138, 1, 285.4, 249 , 0 );
setMoveKey( spep_1-3 + 140, 1, 270.9, 243 , 0 );
setMoveKey( spep_1-3 + 142, 1, 256.5, 237.1 , 0 );
setMoveKey( spep_1-3 + 144, 1, 242, 231.1 , 0 );
setMoveKey( spep_1-3 + 146, 1, 227.5, 225.2 , 0 );
setMoveKey( spep_1 + 146, 1, 213.1, 219.2 , 0 );

setScaleKey( spep_1 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 35, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 36, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 70, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 72, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 74, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 76, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 78, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 80, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 82, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 91, 1, 1.3, 1.3 );
setScaleKey( spep_1-3 + 92, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 104, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 106, 1, 1.65, 1.65 );
setScaleKey( spep_1-3 + 108, 1, 1.6, 1.6 );
setScaleKey( spep_1-3 + 110, 1, 1.56, 1.56 );
setScaleKey( spep_1-3 + 112, 1, 1.52, 1.52 );
setScaleKey( spep_1-3 + 114, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 116, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 118, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 120, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 122, 1, 1.3, 1.3 );
setScaleKey( spep_1 + 146, 1, 1.3, 1.3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 35, 1, 0 );
setRotateKey( spep_1-3 + 36, 1, 19.7 );
setRotateKey( spep_1-3 + 91, 1, 19.7 );
setRotateKey( spep_1-3 + 92, 1, -36.7 );
setRotateKey( spep_1 + 146, 1, -36.7 );

--SE
se_1235 = playSe( spep_1 + 3, 1235 );
playSe( spep_1 + 40, 1003 );
setSeVolume( spep_1 + 40, 1003, 71 );
playSe( spep_1 + 44, 1010 );
playSe( spep_1 + 49, 1012 );
playSe( spep_1 + 89, 1004 );
playSe( spep_1 + 99, 1010 );
setSeVolume( spep_1 + 99, 1010, 112 );
playSe( spep_1 + 103, 1110 );
playSe( spep_1 + 124, 1004 );
setSeVolume( spep_1 + 124, 1004, 50 );
playSe( spep_1 + 124, 1232 );
setSeVolume( spep_1 + 124, 1232, 79 );

stopSe( spep_1 + 2, se_1235, 0 );
stopSe( spep_1 + 31, se_1235, 15 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 148, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+146;

------------------------------------------------------
-- 斬りつけラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki_lush = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, zangeki_lush, 0, 0, 0 );
setEffMoveKey( spep_2 + 156, zangeki_lush, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, zangeki_lush, -1.0, 1.0 );
setEffScaleKey( spep_2 + 156, zangeki_lush, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zangeki_lush, 0 );
setEffRotateKey( spep_2 + 156, zangeki_lush, 0 );
setEffAlphaKey( spep_2 + 0, zangeki_lush, 255 );
setEffAlphaKey( spep_2 + 156, zangeki_lush, 255 );
setEffAlphaKey( spep_2 + 157, zangeki_lush, 0 );
setEffAlphaKey( spep_2 + 158, zangeki_lush, 0 );

--se
playSe( spep_2 + 14, 1142 );
setSeVolume( spep_2 + 14, 1142, 79 );
se_1061 = playSe( spep_2 + 20, 1061 );
se_1172 = playSe( spep_2 + 20, 1172 );
setSeVolume( spep_2 + 20, 1172, 40 );
playSe( spep_2 + 43, 1142 );
setSeVolume( spep_2 + 43, 1142, 71 );
se_1141 = playSe( spep_2 + 49, 1141 );
setSeVolume( spep_2 + 49, 1141, 50 );
playSe( spep_2 + 52, 1031 );
playSe( spep_2 + 65, 1142 );
setSeVolume( spep_2 + 65, 1142, 71 );
se_11412 = playSe( spep_2 + 69, 1141 );
setSeVolume( spep_2 + 69, 1141, 71 );
playSe( spep_2 + 73, 1032 );
setSeVolume( spep_2 + 73, 1032, 89 );
playSe( spep_2 + 87, 1235 );
setSeVolume( spep_2 + 87, 1235, 32 );
playSe( spep_2 + 91, 1142 );
setSeVolume( spep_2 + 91, 1142, 71 );
se_11413 = playSe( spep_2 + 97, 1141 );
setSeVolume( spep_2 + 97, 1141, 56 );
playSe( spep_2 + 100, 1031 );
playSe( spep_2 + 110, 1142 );
setSeVolume( spep_2 + 110, 1142, 71 );
se_11414 = playSe( spep_2 + 114, 1141 );
setSeVolume( spep_2 + 114, 1141, 71 );
playSe( spep_2 + 117, 1072 );
setSeVolume( spep_2 + 117, 1072, 0 );
setSeVolume( spep_2 + 134, 1072, 12.5 );
setSeVolume( spep_2 + 135, 1072, 25 );
setSeVolume( spep_2 + 136, 1072, 37.5 );
setSeVolume( spep_2 + 137, 1072, 50 );
playSe( spep_2 + 118, 1032 );
playSe( spep_2 + 147, 1003 );
playSe( spep_2 + 147, 1235 );
setSeVolume( spep_2 + 147, 1235, 40 );

stopSe( spep_2 + 36, se_1061, 29 );
stopSe( spep_2 + 40, se_1172, 9 );
stopSe( spep_2 + 72, se_1141, 0 );
stopSe( spep_2 + 94, se_11412, 0 );
stopSe( spep_2 + 120, se_11413, 0 );
stopSe( spep_2 + 139, se_11414, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 158, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+156;
------------------------------------------------------
-- 斬りつけラッシュ斬りつけフィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
zangeki_finish_f = entryEffect( spep_3 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki_finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 36, zangeki_finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, zangeki_finish_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 36, zangeki_finish_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki_finish_f, 0 );
setEffRotateKey( spep_3 + 36, zangeki_finish_f, 0 );
setEffAlphaKey( spep_3 + 0, zangeki_finish_f, 255 );
setEffAlphaKey( spep_3 + 36, zangeki_finish_f, 255 );
setEffAlphaKey( spep_3 + 37, zangeki_finish_f, 0 );
setEffAlphaKey( spep_3 + 38, zangeki_finish_f, 0 );

-- ** エフェクト等 ** --
zangeki_finish_b = entryEffect( spep_3 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, zangeki_finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 36, zangeki_finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, zangeki_finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 36, zangeki_finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, zangeki_finish_b, 0 );
setEffRotateKey( spep_3 + 36, zangeki_finish_b, 0 );
setEffAlphaKey( spep_3 + 0, zangeki_finish_b, 255 );
setEffAlphaKey( spep_3 + 36, zangeki_finish_b, 255 );
setEffAlphaKey( spep_3 + 37, zangeki_finish_b, 0 );
setEffAlphaKey( spep_3 + 38, zangeki_finish_b, 0 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 36, 1, 0 );

changeAnime( spep_3  + 0, 1, 107 );

--setMoveKey( spep_3  + 0, 1, 88.1, -114 , 0 );
setMoveKey( spep_3  + 0, 1, 266.5, -389 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 293.7, -348.6 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 220.3, -274.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 225.6, -256.9 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 157.4, -233.3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 129.6, -170.2 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 67.2, -132.9 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 101.8, -197.3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 150.6, -275.7 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 199.3, -354.1 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 248.1, -432.4 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 296.9, -510.8 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 329.7, -557.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 362.6, -604.5 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 395.4, -651.3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 428.3, -698.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 461.1, -745 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 494, -791.8 , 0 );
setMoveKey( spep_3  + 35, 1, 526.8, -838.7 , 0 );

a=0.6;

--setScaleKey( spep_3  + 0, 1, 1-a, 1-a );
setScaleKey( spep_3  , 1, 2, 2 );
setScaleKey( spep_3 -3 + 4, 1, 1.95-a, 1.95-a );
setScaleKey( spep_3 -3 + 6, 1, 1.81-a, 1.81-a );
setScaleKey( spep_3 -3 + 8, 1, 1.62-a, 1.62-a );
setScaleKey( spep_3 -3 + 10, 1, 1.42-a, 1.42-a );
setScaleKey( spep_3 -3 + 12, 1, 1.22-a, 1.22-a );
setScaleKey( spep_3 -3 + 14, 1, 1.07-a, 1.07-a );
setScaleKey( spep_3 -3 + 16, 1, 1.25-a, 1.25-a );
setScaleKey( spep_3 -3 + 18, 1, 1.49-a, 1.49-a );
setScaleKey( spep_3 -3 + 20, 1, 1.74-a, 1.74-a );
setScaleKey( spep_3 -3 + 22, 1, 1.98-a, 1.98-a );
setScaleKey( spep_3 -3 + 24, 1, 2.23-a, 2.23-a );
setScaleKey( spep_3 -3 + 26, 1, 2.41-a, 2.41-a );
setScaleKey( spep_3 -3 + 28, 1, 2.59-a, 2.59-a );
setScaleKey( spep_3 -3 + 30, 1, 2.76-a, 2.76-a );
setScaleKey( spep_3 -3 + 32, 1, 2.94-a, 2.94-a );
setScaleKey( spep_3 -3 + 34, 1, 3.12-a, 3.12-a );
setScaleKey( spep_3 -3 + 36, 1, 3.3-a, 3.3-a );
setScaleKey( spep_3  + 35, 1, 3.48-a, 3.48-a );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3  + 35, 1, 0 );

--文字エントリー
ctzan = entryEffectLife( spep_3 + 0,  10010, 36, 0x100, -1, 0, 41.8, 185.2 );

setEffMoveKey( spep_3  + 0, ctzan, 41.8, 185.2 , 0 );
--setEffMoveKey( spep_3 -2 + 2, ctzan, 79.8, 216.1 , 0 );
setEffMoveKey( spep_3 -2 + 4, ctzan, 108.9, 245.2 , 0 );
setEffMoveKey( spep_3 -2 + 6, ctzan, 151.3, 277 , 0 );
setEffMoveKey( spep_3 -2 + 8, ctzan, 142.8, 275.4 , 0 );
setEffMoveKey( spep_3 -2 + 10, ctzan, 152.1, 277.7 , 0 );
setEffMoveKey( spep_3 -2 + 12, ctzan, 143.5, 276.1 , 0 );
setEffMoveKey( spep_3 -2 + 14, ctzan, 152.9, 278.4 , 0 );
setEffMoveKey( spep_3 -2 + 16, ctzan, 144.2, 276.8 , 0 );
setEffMoveKey( spep_3 -2 + 18, ctzan, 153.7, 279.1 , 0 );
setEffMoveKey( spep_3 -2 + 20, ctzan, 145, 277.4 , 0 );
setEffMoveKey( spep_3 -2 + 22, ctzan, 154.5, 279.7 , 0 );
setEffMoveKey( spep_3 -2 + 24, ctzan, 145.8, 278.1 , 0 );
setEffMoveKey( spep_3 -2 + 26, ctzan, 155.3, 280.4 , 0 );
setEffMoveKey( spep_3 -2 + 28, ctzan, 146.5, 278.8 , 0 );
setEffMoveKey( spep_3 -2 + 30, ctzan, 156.1, 281.1 , 0 );
setEffMoveKey( spep_3 -2 + 32, ctzan, 200.1, 326.7 , 0 );
setEffMoveKey( spep_3 -2 + 34, ctzan, 269.5, 377.8 , 0 );
setEffMoveKey( spep_3 -2 + 36, ctzan, 306.4, 421.8 , 0 );
setEffMoveKey( spep_3 -2 + 38, ctzan, 359.6, 469.4 , 0 );

--setEffScaleKey( spep_3 -2 + 0, ctzan, 0.58, 0.58 );
setEffScaleKey( spep_3 -2 + 2, ctzan, 1.15, 1.15 );
setEffScaleKey( spep_3 -2 + 4, ctzan, 1.72, 1.72 );
setEffScaleKey( spep_3 -2 + 6, ctzan, 2.29, 2.29 );
setEffScaleKey( spep_3 -2 + 8, ctzan, 2.3, 2.3 );
setEffScaleKey( spep_3 -2 + 10, ctzan, 2.3, 2.3 );
setEffScaleKey( spep_3 -2 + 12, ctzan, 2.31, 2.31 );
setEffScaleKey( spep_3 -2 + 14, ctzan, 2.32, 2.32 );
setEffScaleKey( spep_3 -2 + 16, ctzan, 2.32, 2.32 );
setEffScaleKey( spep_3 -2 + 18, ctzan, 2.33, 2.33 );
setEffScaleKey( spep_3 -2 + 20, ctzan, 2.33, 2.33 );
setEffScaleKey( spep_3 -2 + 22, ctzan, 2.34, 2.34 );
setEffScaleKey( spep_3 -2 + 24, ctzan, 2.35, 2.35 );
setEffScaleKey( spep_3 -2 + 26, ctzan, 2.35, 2.35 );
setEffScaleKey( spep_3 -2 + 28, ctzan, 2.36, 2.36 );
setEffScaleKey( spep_3 -2 + 30, ctzan, 2.37, 2.37 );
setEffScaleKey( spep_3 -2 + 32, ctzan, 3.27, 3.27 );
setEffScaleKey( spep_3 -2 + 34, ctzan, 4.18, 4.18 );
setEffScaleKey( spep_3 -2 + 36, ctzan, 5.08, 5.08 );
setEffScaleKey( spep_3 -2 + 38, ctzan, 5.99, 5.99 );

setEffRotateKey( spep_3 + 0, ctzan, 38.1 );
setEffRotateKey( spep_3 + 2, ctzan, 38.2 );
setEffRotateKey( spep_3 + 36, ctzan, 38.2 );

setEffAlphaKey( spep_3  + 0, ctzan, 255 );
setEffAlphaKey( spep_3 -2 + 30, ctzan, 255 );
setEffAlphaKey( spep_3 -2 + 32, ctzan, 191 );
setEffAlphaKey( spep_3 -2 + 34, ctzan, 128 );
setEffAlphaKey( spep_3 -2 + 36, ctzan, 64 );
setEffAlphaKey( spep_3 -2 + 38, ctzan, 0 );

--SE
playSe( spep_3 + 0, 1142 );
playSe( spep_3 + 6, 1061 );
playSe( spep_3 + 6, 1172 );
setSeVolume( spep_3 + 6, 1172, 79 );
playSe( spep_3 + 14, 1026 );
setSeVolume( spep_3 + 14, 1026, 50 );
se_1121 = playSe( spep_3 + 29, 1121 );
setSeVolume( spep_3 + 29, 1121, 79 );
se_1183 = playSe( spep_3 + 29, 1183 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 38, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+36;

------------------------------------------------------
-- 地面激突
------------------------------------------------------
-- ** エフェクト等 ** --
rakka_f = entryEffect( spep_4 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rakka_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, rakka_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rakka_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, rakka_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rakka_f, 0 );
setEffRotateKey( spep_4 + 66, rakka_f, 0 );
setEffAlphaKey( spep_4 + 0, rakka_f, 255 );
setEffAlphaKey( spep_4 + 66, rakka_f, 255 );
setEffAlphaKey( spep_4 + 67, rakka_f, 0 );
setEffAlphaKey( spep_4 + 68, rakka_f, 0 );

-- ** エフェクト等 ** --
rakka_b = entryEffect( spep_4 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rakka_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 66, rakka_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rakka_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 66, rakka_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rakka_b, 0 );
setEffRotateKey( spep_4 + 66, rakka_b, 0 );
setEffAlphaKey( spep_4 + 0, rakka_b, 255 );
setEffAlphaKey( spep_4 + 66, rakka_b, 255 );
setEffAlphaKey( spep_4 + 67, rakka_b, 0 );
setEffAlphaKey( spep_4 + 68, rakka_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 66, 1, 0 );

changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, 0, -40 , 0 );
setMoveKey( spep_4 + 2, 1, 0, -24.4 , 0 );
setMoveKey( spep_4 + 4, 1, 0, -8.7 , 0 );
setMoveKey( spep_4 + 6, 1, 0, 6.9 , 0 );
setMoveKey( spep_4 + 8, 1, 0, 22.5 , 0 );
setMoveKey( spep_4 + 10, 1, 0, 28.4 , 0 );
setMoveKey( spep_4 + 12, 1, 0, 34.3 , 0 );
setMoveKey( spep_4 + 14, 1, 0, 40.2 , 0 );
setMoveKey( spep_4 + 16, 1, 0, 46.1 , 0 );
setMoveKey( spep_4 + 18, 1, 0, 51.9 , 0 );
setMoveKey( spep_4 + 20, 1, 0, 57.8 , 0 );
setMoveKey( spep_4 + 22, 1, 0, 63.7 , 0 );
setMoveKey( spep_4 + 24, 1, 0, 75.3 , 0 );
setMoveKey( spep_4 + 26, 1, 0, 86.8 , 0 );
setMoveKey( spep_4 + 28, 1, 0, 98.4 , 0 );
setMoveKey( spep_4 + 30, 1, 0, 110 , 0 );
setMoveKey( spep_4 + 38, 1, 0, 110 , 0 );
setMoveKey( spep_4 + 40, 1, 4, 114 , 0 );
setMoveKey( spep_4 + 42, 1, -4, 106 , 0 );
setMoveKey( spep_4 + 44, 1, -4, 114 , 0 );
setMoveKey( spep_4 + 46, 1, 4, 106 , 0 );
setMoveKey( spep_4 + 48, 1, 4, 114 , 0 );
setMoveKey( spep_4 + 50, 1, -4, 106 , 0 );
setMoveKey( spep_4 + 52, 1, -4, 114 , 0 );
setMoveKey( spep_4 + 54, 1, 4, 106 , 0 );
setMoveKey( spep_4 + 56, 1, 4, 114 , 0 );
setMoveKey( spep_4 + 58, 1, -4, 106 , 0 );
setMoveKey( spep_4 + 60, 1, -4, 114 , 0 );
setMoveKey( spep_4 + 62, 1, 4, 106 , 0 );
setMoveKey( spep_4 + 64, 1, 4, 114 , 0 );
setMoveKey( spep_4 + 66, 1, -4, 106 , 0 );
--setMoveKey( spep_4 + 68, 1, -4, 114 , 0 );

setScaleKey( spep_4 + 0, 1, 9, 9 );
setScaleKey( spep_4 + 2, 1, 7.59, 7.59 );
setScaleKey( spep_4 + 4, 1, 6.19, 6.19 );
setScaleKey( spep_4 + 6, 1, 4.78, 4.78 );
setScaleKey( spep_4 + 8, 1, 3.38, 3.38 );
setScaleKey( spep_4 + 10, 1, 3.07, 3.07 );
setScaleKey( spep_4 + 12, 1, 2.76, 2.76 );
setScaleKey( spep_4 + 14, 1, 2.45, 2.45 );
setScaleKey( spep_4 + 16, 1, 2.14, 2.14 );
setScaleKey( spep_4 + 18, 1, 1.83, 1.83 );
setScaleKey( spep_4 + 20, 1, 1.52, 1.52 );
setScaleKey( spep_4 + 22, 1, 1.21, 1.21 );
setScaleKey( spep_4 + 24, 1, 0.91, 0.91 );
setScaleKey( spep_4 + 26, 1, 0.61, 0.61 );
setScaleKey( spep_4 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_4 + 30, 1, 0.01, 0.01 );
setScaleKey( spep_4 + 66, 1, 0.01, 0.01 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 + 66, 1, 0 );

--SE
playSe( spep_4 + 48, 1159 );

stopSe( spep_4 + 61, se_1121, 0 );
stopSe( spep_4 + 61, se_1183, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 68, 0,  255, 255, 255, 255 ); --くろ 背景

--次の準備
spep_5=spep_4+66;

------------------------------------------------------
-- ザマス登場
------------------------------------------------------
-- ** エフェクト等 ** --
zamasu = entryEffect( spep_5 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, zamasu, 0, 0, 0 );
setEffMoveKey( spep_5 + 44, zamasu, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, zamasu, -1.0, 1.0 );
setEffScaleKey( spep_5 + 44, zamasu, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, zamasu, 0 );
setEffRotateKey( spep_5 + 44, zamasu, 0 );
setEffAlphaKey( spep_5 + 0, zamasu, 255 );
setEffAlphaKey( spep_5 + 44, zamasu, 255 );
setEffAlphaKey( spep_5 + 45, zamasu, 0 );
setEffAlphaKey( spep_5 + 46, zamasu, 0 );

--SE
playSe( spep_5 + 22, 43 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 46, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_6=spep_5+44;
------------------------------------------------------
-- 気弾生成
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_6 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_6 + 146, kidan, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_6 + 146, kidan, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan, 0 );
setEffRotateKey( spep_6 + 146, kidan, 0 );
setEffAlphaKey( spep_6 + 0, kidan, 255 );
setEffAlphaKey( spep_6 + 146, kidan, 255 );
setEffAlphaKey( spep_6 + 147, kidan, 0 );
setEffAlphaKey( spep_6 + 148, kidan, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_6 -4+64  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_6 -4+64  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_6 -4 +76, 190006, 72, 0x100, -1, 0, -130, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_6 -4 +76,  ctgogo,  -130,  510);
setEffMoveKey(  spep_6 -4 +148,  ctgogo,  -130,  510);

setEffAlphaKey( spep_6 -4 +76, ctgogo, 0 );
setEffAlphaKey( spep_6 -4 + 77, ctgogo, 255 );
setEffAlphaKey( spep_6 -4 + 78, ctgogo, 255 );
setEffAlphaKey( spep_6 -4 + 142, ctgogo, 255 );
setEffAlphaKey( spep_6 -4 + 144, ctgogo, 191 );
setEffAlphaKey( spep_6 -4 + 146, ctgogo, 112 );
setEffAlphaKey( spep_6 -4 + 148, ctgogo, 64 );

setEffRotateKey(  spep_6 -4 +76,  ctgogo,  0);
setEffRotateKey(  spep_6 -4 +148,  ctgogo,  0);

setEffScaleKey(  spep_6 -4 +76,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_6 -4 +138,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_6 -4 +148,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_6 + 72, 1018 );
playSe( spep_6 + 18, 1189 );
playSe( spep_6 + 18, 1233 );
playSe( spep_6 + 35, 1221 );
playSe( spep_6 + 35, 1222 );
playSe( spep_6 + 35, 49 );
se_1144 = playSe( spep_6 + 35, 1144 );
setSeVolume( spep_6 + 35, 1144, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 148, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+146;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_7 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_7 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_7 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_7 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_7 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen, 0 );
setEffRotateKey( spep_7 + 86, shuchusen, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen, 255 );
setEffAlphaKey( spep_7 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_7 + 0, SE_05 );
stopSe( spep_7 + 18, se_1144, 0 );

--白フェード
--entryFade( spep_7 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 84;

------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_8 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_8 + 66, beam, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_8 + 66, beam, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, beam, 0 );
setEffRotateKey( spep_8 + 66, beam, 0 );
setEffAlphaKey( spep_8 + 0, beam, 255 );
setEffAlphaKey( spep_8 + 66, beam, 255 );
setEffAlphaKey( spep_8 + 67, beam, 0 );
setEffAlphaKey( spep_8 + 68, beam, 0 );

--文字エントリー
ctdon = entryEffectLife( spep_8 + 2,  10019, 50, 0x100, -1, 0, 20.6, 276.4 );--ドンッ

setEffMoveKey( spep_8 + 2, ctdon, 20.6, 276.4 , 0 );
setEffMoveKey( spep_8 + 4, ctdon, 22, 337.5 , 0 );
setEffMoveKey( spep_8 + 6, ctdon, 18.2, 388.2 , 0 );
setEffMoveKey( spep_8 + 8, ctdon, 22.5, 396.8 , 0 );
setEffMoveKey( spep_8 + 10, ctdon, 18.2, 388.5 , 0 );
setEffMoveKey( spep_8 + 12, ctdon, 22.4, 397.1 , 0 );
setEffMoveKey( spep_8 + 14, ctdon, 18.2, 388.8 , 0 );
setEffMoveKey( spep_8 + 16, ctdon, 22.5, 397.5 , 0 );
setEffMoveKey( spep_8 + 18, ctdon, 18.2, 389.1 , 0 );
setEffMoveKey( spep_8 + 20, ctdon, 22.5, 397.9 , 0 );
setEffMoveKey( spep_8 + 22, ctdon, 18.2, 389.5 , 0 );
setEffMoveKey( spep_8 + 24, ctdon, 22.5, 398.3 , 0 );
setEffMoveKey( spep_8 + 26, ctdon, 18.2, 389.9 , 0 );
setEffMoveKey( spep_8 + 28, ctdon, 22.5, 398.6 , 0 );
setEffMoveKey( spep_8 + 30, ctdon, 18.2, 390.2 , 0 );
setEffMoveKey( spep_8 + 32, ctdon, 22.5, 399 , 0 );
setEffMoveKey( spep_8 + 34, ctdon, 18.2, 390.5 , 0 );
setEffMoveKey( spep_8 + 36, ctdon, 22.5, 399.4 , 0 );
setEffMoveKey( spep_8 + 38, ctdon, 18.1, 390.9 , 0 );
setEffMoveKey( spep_8 + 40, ctdon, 22.5, 399.7 , 0 );
setEffMoveKey( spep_8 + 42, ctdon, 18.1, 391.2 , 0 );
setEffMoveKey( spep_8 + 44, ctdon, 22.8, 436 , 0 );
setEffMoveKey( spep_8 + 46, ctdon, 16.7, 459.4 , 0 );
setEffMoveKey( spep_8 + 48, ctdon, 23.3, 508.1 , 0 );
setEffMoveKey( spep_8 + 50, ctdon, 15.3, 527.7 , 0 );
setEffMoveKey( spep_8 + 52, ctdon, 14.6, 561.8 , 0 );

setEffScaleKey( spep_8 + 2, ctdon, 0.55, 0.55 );
setEffScaleKey( spep_8 + 4, ctdon, 1.45, 1.45 );
setEffScaleKey( spep_8 + 6, ctdon, 2.35, 2.35 );
setEffScaleKey( spep_8 + 8, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_8 + 14, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_8 + 16, ctdon, 2.37, 2.37 );
setEffScaleKey( spep_8 + 22, ctdon, 2.37, 2.37 );
setEffScaleKey( spep_8 + 24, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_8 + 28, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_8 + 30, ctdon, 2.39, 2.39 );
setEffScaleKey( spep_8 + 36, ctdon, 2.39, 2.39 );
setEffScaleKey( spep_8 + 38, ctdon, 2.4, 2.4 );
setEffScaleKey( spep_8 + 42, ctdon, 2.4, 2.4 );
setEffScaleKey( spep_8 + 44, ctdon, 2.95, 2.95 );
setEffScaleKey( spep_8 + 46, ctdon, 3.5, 3.5 );
setEffScaleKey( spep_8 + 48, ctdon, 4.06, 4.06 );
setEffScaleKey( spep_8 + 50, ctdon, 4.61, 4.61 );
setEffScaleKey( spep_8 + 52, ctdon, 5.16, 5.16 );

setEffRotateKey( spep_8 + 2, ctdon, 0 );
setEffRotateKey( spep_8 + 52, ctdon, 0 );

setEffAlphaKey( spep_8 + 2, ctdon, 255 );
setEffAlphaKey( spep_8 + 42, ctdon, 255 );
setEffAlphaKey( spep_8 + 44, ctdon, 204 );
setEffAlphaKey( spep_8 + 46, ctdon, 153 );
setEffAlphaKey( spep_8 + 48, ctdon, 102 );
setEffAlphaKey( spep_8 + 50, ctdon, 51 );
setEffAlphaKey( spep_8 + 52, ctdon, 0 );

--SE
playSe( spep_8 + 15, 1177 );
setSeVolume( spep_8 + 15, 1177, 63 );
playSe( spep_8 + 16, 1021 );
playSe( spep_8 + 16, 1027 );
playSe( spep_8 + 45, 1022 );
setSeVolume( spep_8 + 45, 1022, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 68, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 66;

------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_9 + 0, SP_12x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, hit, 0, 0, 0 );
setEffMoveKey( spep_9 + 56, hit, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, hit, 1.0, 1.0 );
setEffScaleKey( spep_9 + 56, hit, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit, 0 );
setEffRotateKey( spep_9 + 56, hit, 0 );
setEffAlphaKey( spep_9 + 0, hit, 255 );
setEffAlphaKey( spep_9 + 56, hit, 255 );
setEffAlphaKey( spep_9 + 57, hit, 0 );
setEffAlphaKey( spep_9 + 58, hit, 0 );

--SE
setSeVolume( spep_9 + 0, 1022, 0 );
setSeVolume( spep_9 + 1, 1022, 4.55 );
setSeVolume( spep_9 + 2, 1022, 9.09 );
setSeVolume( spep_9 + 3, 1022, 13.64 );
setSeVolume( spep_9 + 4, 1022, 18.18 );
setSeVolume( spep_9 + 5, 1022, 22.73 );
setSeVolume( spep_9 + 6, 1022, 27.27 );
setSeVolume( spep_9 + 7, 1022, 31.82 );
setSeVolume( spep_9 + 8, 1022, 36.36 );
setSeVolume( spep_9 + 9, 1022, 40.91 );
setSeVolume( spep_9 + 10, 1022, 45.45 );
setSeVolume( spep_9 + 11, 1022, 50 );
setSeVolume( spep_9 + 12, 1022, 54.55 );
setSeVolume( spep_9 + 13, 1022, 59.09 );
setSeVolume( spep_9 + 14, 1022, 63.64 );
setSeVolume( spep_9 + 15, 1022, 68.18 );
setSeVolume( spep_9 + 16, 1022, 72.73 );
setSeVolume( spep_9 + 17, 1022, 77.27 );
setSeVolume( spep_9 + 18, 1022, 81.82 );
setSeVolume( spep_9 + 19, 1022, 86.36 );
setSeVolume( spep_9 + 20, 1022, 90.91 );
setSeVolume( spep_9 + 21, 1022, 95.45 );
setSeVolume( spep_9 + 22, 1022, 100 );

playSe( spep_9 + 22, 1022 );
setSeVolume( spep_9 + 22, 1022, 0 );
se_1158 = playSe( spep_9 + 5, 1158 );
setSeVolume( spep_9 + 5, 1158, 50 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 56;
------------------------------------------------------
-- 大爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_10 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_10 + 180, explosion, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_10 + 180, explosion, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, explosion, 0 );
setEffRotateKey( spep_10 + 180, explosion, 0 );
setEffAlphaKey( spep_10 + 0, explosion, 255 );
setEffAlphaKey( spep_10 + 180, explosion, 255 );

--SE
playSe( spep_10 + 42, 1159 );
setSeVolume( spep_10 + 42, 1159, 89 );
playSe( spep_10 + 42, 1023 );
playSe( spep_10 + 80, 1024 );

stopSe( spep_10 + 53, se_1158, 0 );

--終わり
dealDamage( spep_10 + 78 );
endPhase( spep_10 + 170 );
end