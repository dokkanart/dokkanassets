--1019360:ウイス_天使の手ほどき(ドッカン後)
--sp_effect_a7_00032

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
SP_01=	155054	;--	対峙
SP_02=	155055	;--	対峙
SP_03=	155056	;--	バストアップ
SP_04=	155057	;--	格闘
SP_05=	155059	;--	格闘(背景)
SP_06=	155060	;--	格闘
SP_07=	155061	;--	落書きアップ絵
SP_08=	155062	;--	衝撃波
SP_09=	155063	;--	衝撃波
SP_10=	155133	;--	ウィスがペンを出す
SP_11=	155135	;--	ウィスがペンを出す(背景)


--エフェクト(敵)
SP_01x=	155054	;--	対峙
SP_02x=	155055	;--	対峙
SP_03x=	155056	;--	バストアップ
SP_04x=	155058	;--	格闘
SP_05x=	155059	;--	格闘(背景)
SP_06x=	155060	;--	格闘
SP_07x=	155061	;--	落書きアップ絵
SP_08x=	155062	;--	衝撃波
SP_09x=	155063	;--	衝撃波
SP_10x=	155134	;--	ウィスがペンを出す(てき)
SP_11x=	155135	;--	ウィスがペンを出す(背景)

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



kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
taizi_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, taizi_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, taizi_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, taizi_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, taizi_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taizi_f, 0 );
setEffRotateKey( spep_0 + 56, taizi_f, 0 );
setEffAlphaKey( spep_0 + 0, taizi_f, 255 );
setEffAlphaKey( spep_0 + 56, taizi_f, 255 );
setEffAlphaKey( spep_0 + 57, taizi_f, 0 );
setEffAlphaKey( spep_0 + 58, taizi_f, 0 );

-- ** エフェクト等 ** --
taizi_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, taizi_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, taizi_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, taizi_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, taizi_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taizi_b, 0 );
setEffRotateKey( spep_0 + 56, taizi_b, 0 );
setEffAlphaKey( spep_0 + 0, taizi_b, 255 );
setEffAlphaKey( spep_0 + 56, taizi_b, 255 );
setEffAlphaKey( spep_0 + 57, taizi_b, 0 );
setEffAlphaKey( spep_0 + 58, taizi_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 56, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 94.7, 25.6 , 0 );
setMoveKey( spep_0 + 2, 1, 95.3, 25.7 , 0 );
setMoveKey( spep_0 + 4, 1, 95.9, 25.7 , 0 );
setMoveKey( spep_0 + 6, 1, 96.6, 25.8 , 0 );
setMoveKey( spep_0 + 8, 1, 97.4, 25.8 , 0 );
setMoveKey( spep_0 + 10, 1, 98.1, 25.9 , 0 );
setMoveKey( spep_0 + 12, 1, 98.9, 25.9 , 0 );
setMoveKey( spep_0 + 14, 1, 99.8, 26.1 , 0 );
setMoveKey( spep_0 + 16, 1, 100.7, 26.1 , 0 );
setMoveKey( spep_0 + 18, 1, 101.6, 26.2 , 0 );
setMoveKey( spep_0 + 20, 1, 102.7, 26.3 , 0 );
setMoveKey( spep_0 + 22, 1, 103.8, 26.5 , 0 );
setMoveKey( spep_0 + 24, 1, 105, 26.6 , 0 );
setMoveKey( spep_0 + 26, 1, 106.2, 26.8 , 0 );
setMoveKey( spep_0 + 28, 1, 107.5, 26.9 , 0 );
setMoveKey( spep_0 + 30, 1, 108.9, 27.1 , 0 );
setMoveKey( spep_0 + 32, 1, 110.4, 27.3 , 0 );
setMoveKey( spep_0 + 34, 1, 111.9, 27.6 , 0 );
setMoveKey( spep_0 + 36, 1, 113.6, 27.8 , 0 );
setMoveKey( spep_0 + 38, 1, 115.4, 28.1 , 0 );
setMoveKey( spep_0 + 40, 1, 117.4, 28.4 , 0 );
setMoveKey( spep_0 + 42, 1, 119.4, 28.8 , 0 );
setMoveKey( spep_0 + 44, 1, 121.6, 29.1 , 0 );
setMoveKey( spep_0 + 46, 1, 124, 29.5 , 0 );
setMoveKey( spep_0 + 48, 1, 126.5, 29.9 , 0 );
setMoveKey( spep_0 + 50, 1, 129.2, 30.4 , 0 );
setMoveKey( spep_0 + 52, 1, 132.1, 30.9 , 0 );
setMoveKey( spep_0 + 54, 1, 135.2, 31.4 , 0 );
setMoveKey( spep_0 + 56, 1, 138.5, 32 , 0 );
--setMoveKey( spep_0 + 58, 1, 142.1, 32.7 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 2, 1, 1, 1 );
setScaleKey( spep_0 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 6, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 10, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 26, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 28, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 32, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 34, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 36, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 38, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 40, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 46, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 48, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 50, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 52, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 56, 1, 1.37, 1.37 );
--setScaleKey( spep_0 + 58, 1, 1.4, 1.4 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 56, 1, 0 );

--SE
playSe( spep_0 + 0, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景
--次の準備
spep_1=spep_0+56;

------------------------------------------------------
-- バストアップ
------------------------------------------------------
-- ** エフェクト等 ** --
bust = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, bust, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, bust, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, bust, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, bust, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bust, 0 );
setEffRotateKey( spep_1 + 100, bust, 0 );
setEffAlphaKey( spep_1 + 0, bust, 255 );
setEffAlphaKey( spep_1 + 100, bust, 255 );


-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 102, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える
    
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

--カットイン
--speff = entryEffect( spep_1 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1 + 12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_1 + 24, 1018 );--ごごご
playSe( spep_1 + 24, 1042 );
setSeVolume( spep_1 + 24, 1042, 63 );
playSe( spep_1 + 26, 24 );
setSeVolume( spep_1 + 26, 24, 126 );
playSe( spep_1 + 28, 1113 );
setSeVolume( spep_1 + 28, 1113, 126 );
se_0027 = playSe( spep_1 + 30, 27 );
setSeVolume( spep_1 + 30, 27, 126 );

stopSe( spep_1 + 43, se_0027, 0 );

--白フェード
entryFade( spep_1 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+100;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 300, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 0 );
setEffAlphaKey( spep_2 + 104, fighting_f, 0 );
setEffAlphaKey( spep_2 + 105, fighting_f, 255 );
setEffAlphaKey( spep_2 + 140, fighting_f, 255 );
setEffAlphaKey( spep_2 + 141, fighting_f, 0 );
setEffAlphaKey( spep_2 + 300, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_bg = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_bg, 0, 0, 0 );
setEffMoveKey( spep_2 + 220, fighting_bg, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 220, fighting_bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_bg, 0 );
setEffRotateKey( spep_2 + 220, fighting_bg, 0 );
setEffAlphaKey( spep_2 + 0, fighting_bg, 255 );
setEffAlphaKey( spep_2 + 220, fighting_bg, 255 );
setEffAlphaKey( spep_2 + 221, fighting_bg, 0 );
setEffAlphaKey( spep_2 + 222, fighting_bg, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 220, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 220, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 220, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 104, fighting_b, 255 );
setEffAlphaKey( spep_2 + 105, fighting_b, 0 );
setEffAlphaKey( spep_2 + 140, fighting_b, 0 );
setEffAlphaKey( spep_2 + 141, fighting_b, 255 );
setEffAlphaKey( spep_2 + 220, fighting_b, 255 );
setEffAlphaKey( spep_2 + 221, fighting_b, 0 );
setEffAlphaKey( spep_2 + 220, fighting_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 108,  10020, 20, 0x100, -1, 0, -46.4, 286.8 );
setEffMoveKey( spep_2-3 + 108, ctbaki, -46.4, 286.8 , 0 );
setEffMoveKey( spep_2-3 + 110, ctbaki, 15.6, 246.3 , 0 );
setEffMoveKey( spep_2-3 + 112, ctbaki, -110.3, 297.6 , 0 );
setEffMoveKey( spep_2-3 + 114, ctbaki, -53.8, 265 , 0 );
setEffMoveKey( spep_2-3 + 116, ctbaki, -92.1, 261.4 , 0 );
setEffMoveKey( spep_2-3 + 118, ctbaki, -52.3, 260.6 , 0 );
setEffMoveKey( spep_2-3 + 120, ctbaki, -66.6, 275.9 , 0 );
setEffMoveKey( spep_2-3 + 122, ctbaki, -65.5, 274.9 , 0 );
setEffMoveKey( spep_2-3 + 124, ctbaki, -66.8, 274 , 0 );
setEffMoveKey( spep_2-3 + 126, ctbaki, -67.9, 273 , 0 );
setEffMoveKey( spep_2-3 + 128, ctbaki, -76.3, 278.6 , 0 );

setEffScaleKey( spep_2-3 + 108, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_2-3 + 110, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_2-3 + 112, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 114, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 116, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 118, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_2-3 + 120, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 122, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_2-3 + 124, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_2-3 + 126, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_2-3 + 128, ctbaki, 1.84, 1.84 );

setEffRotateKey( spep_2-3 + 108, ctbaki, 29.9 );
setEffRotateKey( spep_2-3 + 110, ctbaki, -4.7 );
setEffRotateKey( spep_2-3 + 112, ctbaki, 10.3 );
setEffRotateKey( spep_2-3 + 114, ctbaki, 5 );
setEffRotateKey( spep_2-3 + 116, ctbaki, 15.2 );
setEffRotateKey( spep_2-3 + 118, ctbaki, 7.6 );
setEffRotateKey( spep_2-3 + 126, ctbaki, 7.6 );
setEffRotateKey( spep_2-3 + 128, ctbaki, 7.5 );

setEffAlphaKey( spep_2-3 + 108, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 120, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 122, ctbaki, 198 );
setEffAlphaKey( spep_2-3 + 124, ctbaki, 142 );
setEffAlphaKey( spep_2-3 + 126, ctbaki, 85 );
setEffAlphaKey( spep_2-3 + 128, ctbaki, 0 );


--敵の動き
setDisp( spep_2-3 + 0, 1, 1 );
--setDisp( spep_2-5 + 220, 1, 0 );

changeAnime( spep_2-3 + 0, 1, 101 );
changeAnime( spep_2-3 + 13, 1, 111 );
changeAnime( spep_2-3 + 14, 1, 111 );
changeAnime( spep_2-3 + 15, 1, 111 );
changeAnime( spep_2-3 + 16, 1, 111 );
changeAnime( spep_2-3 + 17, 1, 111 );
changeAnime( spep_2-3 + 18, 1, 111 );
changeAnime( spep_2-3 + 19, 1, 111 );
changeAnime( spep_2-3 + 20, 1, 111 );
changeAnime( spep_2-3 + 21, 1, 111 );
changeAnime( spep_2-3 + 22, 1, 111 );
changeAnime( spep_2-3 + 23, 1, 111 );
changeAnime( spep_2-3 + 24, 1, 111 );
changeAnime( spep_2-3 + 25, 1, 111 );
changeAnime( spep_2-3 + 26, 1, 111 );
changeAnime( spep_2-3 + 27, 1, 111 );
changeAnime( spep_2-3 + 28, 1, 111 );
changeAnime( spep_2-3 + 29, 1, 111 );
changeAnime( spep_2-3 + 30, 1, 111 );
changeAnime( spep_2-3 + 31, 1, 111 );
changeAnime( spep_2-3 + 32, 1, 111 );
changeAnime( spep_2-3 + 33, 1, 111 );
changeAnime( spep_2-3 + 34, 1, 111 );
changeAnime( spep_2-3 + 35, 1, 111 );
changeAnime( spep_2-3 + 36, 1, 111 );
changeAnime( spep_2-3 + 80, 1, 101 );
changeAnime( spep_2-3 + 108, 1, 106 );
changeAnime( spep_2-3 + 132, 1, 17 );
changeAnime( spep_2-3 + 144, 1, 14 );
changeAnime( spep_2-3 + 182, 1, 2 );
changeAnime( spep_2-3 + 200, 1, 102 );


setMoveKey( spep_2 + 0, 1, 190.2, -63.1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 190.4, -63.1 , 0 );
setMoveKey( spep_2-3 + 4, 1, 190.7, -63.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 190.9, -63.1 , 0 );
setMoveKey( spep_2-3 + 8, 1, 191.2, -63.1 , 0 );
setMoveKey( spep_2-3 + 11, 1, 191.5, -63.2 , 0 );
setMoveKey( spep_2-3 + 12, 1, 104.3, -26 , 0 );
setMoveKey( spep_2-3 + 14, 1, 101.6, -22.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, 99, -19.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, 96.7, -16.9 , 0 );
setMoveKey( spep_2-3 + 20, 1, 94.5, -14.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, 92.5, -12 , 0 );
setMoveKey( spep_2-3 + 24, 1, 90.8, -9.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, 89.2, -7.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, 87.8, -6.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, 86.6, -4.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, 85.7, -3.7 , 0 );
setMoveKey( spep_2-3 + 34, 1, 84.9, -2.8 , 0 );
setMoveKey( spep_2-3 + 37, 1, 84.2, -2 , 0 );
a=44;
setMoveKey( spep_2-3 + 38, 1, -27.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 40, 1, -37.3, -45.4+a , 0 );
setMoveKey( spep_2-3 + 42, 1, -46, -45.4+a , 0 );
setMoveKey( spep_2-3 + 44, 1, -53.9, -45.4+a , 0 );
setMoveKey( spep_2-3 + 46, 1, -61, -45.4+a , 0 );
setMoveKey( spep_2-3 + 48, 1, -67.4, -45.4+a , 0 );
setMoveKey( spep_2-3 + 50, 1, -73.2, -45.4+a , 0 );
setMoveKey( spep_2-3 + 52, 1, -78.3, -45.4+a , 0 );
setMoveKey( spep_2-3 + 54, 1, -82.9, -45.4+a , 0 );
setMoveKey( spep_2-3 + 56, 1, -87, -45.4+a , 0 );
setMoveKey( spep_2-3 + 58, 1, -90.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 60, 1, -93.9, -45.4+a , 0 );
setMoveKey( spep_2-3 + 62, 1, -96.8, -45.4+a , 0 );
setMoveKey( spep_2-3 + 64, 1, -99.3, -45.4+a , 0 );
setMoveKey( spep_2-3 + 66, 1, -101.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 68, 1, -103.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 70, 1, -105.4, -45.4+a , 0 );
setMoveKey( spep_2-3 + 72, 1, -107, -45.4+a , 0 );
setMoveKey( spep_2-3 + 74, 1, -108.4, -45.4+a , 0 );
setMoveKey( spep_2-3 + 76, 1, -109.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 79, 1, -110.6, -45.4+a , 0 );

setMoveKey( spep_2-3 + 80, 1, -108.2, -58 , 0 );
setMoveKey( spep_2-3 + 82, 1, -108.5, -58.1 , 0 );
setMoveKey( spep_2-3 + 84, 1, -108.8, -58.2 , 0 );
setMoveKey( spep_2-3 + 86, 1, -109.1, -58.3 , 0 );
setMoveKey( spep_2-3 + 88, 1, -109.4, -58.4 , 0 );
setMoveKey( spep_2-3 + 90, 1, -109.6, -58.4 , 0 );
setMoveKey( spep_2-3 + 92, 1, -109.9, -58.5 , 0 );
setMoveKey( spep_2-3 + 94, 1, -110.2, -58.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, -110.5, -58.7 , 0 );
setMoveKey( spep_2-3 + 98, 1, -110.8, -58.8 , 0 );
setMoveKey( spep_2-3 + 100, 1, -111, -58.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, -111.3, -58.9 , 0 );
setMoveKey( spep_2-3 + 104, 1, -111.6, -59 , 0 );
setMoveKey( spep_2-3 + 107, 1, -111.9, -59.1 , 0 );
setMoveKey( spep_2-3 + 108, 1, -168.4, -22.9 , 0 );
setMoveKey( spep_2-3 + 110, 1, -166.2, -23.7 , 0 );
setMoveKey( spep_2-3 + 112, 1, -168, -20.8 , 0 );
setMoveKey( spep_2-3 + 114, 1, -167.2, -18.5 , 0 );
setMoveKey( spep_2-3 + 116, 1, -166.8, -20.2 , 0 );
setMoveKey( spep_2-3 + 118, 1, -168.9, -19.2 , 0 );
setMoveKey( spep_2-3 + 120, 1, -168.3, -21 , 0 );
setMoveKey( spep_2-3 + 122, 1, -169.9, -20.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, -170.6, -20.7 , 0 );
setMoveKey( spep_2-3 + 126, 1, -171.3, -20.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, -172.1, -20.7 , 0 );
setMoveKey( spep_2-3 + 131, 1, -172.8, -20.7 , 0 );
setMoveKey( spep_2-3 + 132, 1, -167.7, -69.4 , 0 );
setMoveKey( spep_2-3 + 143, 1, -167.7, -69.4 , 0 );
setMoveKey( spep_2-3 + 144, 1, 0.5, -40.3 , 0 );
setMoveKey( spep_2-3 + 146, 1, 1.4, -40.1 , 0 );
setMoveKey( spep_2-3 + 148, 1, 2.3, -39.9 , 0 );
setMoveKey( spep_2-3 + 150, 1, 3.1, -39.7 , 0 );
setMoveKey( spep_2-3 + 152, 1, 3.8, -39.5 , 0 );
setMoveKey( spep_2-3 + 154, 1, 4.4, -39.3 , 0 );
setMoveKey( spep_2-3 + 156, 1, 5, -39.2 , 0 );
setMoveKey( spep_2-3 + 158, 1, 5.5, -39.1 , 0 );
setMoveKey( spep_2-3 + 160, 1, 6, -39 , 0 );
setMoveKey( spep_2-3 + 162, 1, 6.5, -38.9 , 0 );
setMoveKey( spep_2-3 + 164, 1, 6.9, -38.8 , 0 );
setMoveKey( spep_2-3 + 166, 1, 7.2, -38.7 , 0 );
setMoveKey( spep_2-3 + 168, 1, 7.5, -38.6 , 0 );
setMoveKey( spep_2-3 + 170, 1, 7.8, -38.5 , 0 );
setMoveKey( spep_2-3 + 172, 1, 8.1, -38.5 , 0 );
setMoveKey( spep_2-3 + 174, 1, 8.3, -38.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, 8.6, -38.4 , 0 );
setMoveKey( spep_2-3 + 178, 1, 8.7, -38.3 , 0 );
setMoveKey( spep_2-3 + 181, 1, 8.9, -38.3 , 0 );
setMoveKey( spep_2-3 + 182, 1, 45.4, -47 , 0 );
setMoveKey( spep_2-3 + 199, 1, 45.4, -47 , 0 );
setMoveKey( spep_2-3 + 200, 1, 86, -56.4 , 0 );
setMoveKey( spep_2-5 + 220, 1, 86, -56.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.52, 1.52 );
setScaleKey( spep_2-5 + 220, 1, 1.52, 1.52 );

setRotateKey( spep_2-3 + 0, 1, 0 );
setRotateKey( spep_2-3 + 11, 1, 0 );
setRotateKey( spep_2-3 + 12, 1, 1.8 );
setRotateKey( spep_2-3 + 14, 1, 1.7 );
setRotateKey( spep_2-3 + 16, 1, 1.6 );
setRotateKey( spep_2-3 + 18, 1, 1.5 );
setRotateKey( spep_2-3 + 20, 1, 1.4 );
setRotateKey( spep_2-3 + 22, 1, 1.3 );
setRotateKey( spep_2-3 + 24, 1, 1.2 );
setRotateKey( spep_2-3 + 26, 1, 1.2 );
setRotateKey( spep_2-3 + 28, 1, 1.1 );
setRotateKey( spep_2-3 + 32, 1, 1.1 );
setRotateKey( spep_2-3 + 34, 1, 1 );
setRotateKey( spep_2-3 + 37, 1, 1 );
setRotateKey( spep_2-3 + 38, 1, 0 );
setRotateKey( spep_2-3 + 80, 1, 0 );
setRotateKey( spep_2-3 + 82, 1, -0.1 );
setRotateKey( spep_2-3 + 84, 1, -0.2 );
setRotateKey( spep_2-3 + 86, 1, -0.2 );
setRotateKey( spep_2-3 + 88, 1, -0.3 );
setRotateKey( spep_2-3 + 90, 1, -0.4 );
setRotateKey( spep_2-3 + 92, 1, -0.5 );
setRotateKey( spep_2-3 + 94, 1, -0.5 );
setRotateKey( spep_2-3 + 96, 1, -0.6 );
setRotateKey( spep_2-3 + 98, 1, -0.7 );
setRotateKey( spep_2-3 + 100, 1, -0.8 );
setRotateKey( spep_2-3 + 102, 1, -0.8 );
setRotateKey( spep_2-3 + 104, 1, -0.9 );
setRotateKey( spep_2-3 + 107, 1, -1 );
setRotateKey( spep_2-3 + 108, 1, -57 );
setRotateKey( spep_2-3 + 110, 1, -57.2 );
setRotateKey( spep_2-3 + 112, 1, -57.5 );
setRotateKey( spep_2-3 + 114, 1, -57.7 );
setRotateKey( spep_2-3 + 116, 1, -58 );
setRotateKey( spep_2-3 + 118, 1, -58.2 );
setRotateKey( spep_2-3 + 120, 1, -58.5 );
setRotateKey( spep_2-3 + 122, 1, -58.7 );
setRotateKey( spep_2-3 + 124, 1, -58.9 );
setRotateKey( spep_2-3 + 126, 1, -59.2 );
setRotateKey( spep_2-3 + 128, 1, -59.4 );
setRotateKey( spep_2-3 + 131, 1, -59.7 );
setRotateKey( spep_2-3 + 132, 1, 0 );
setRotateKey( spep_2-3 + 143, 1, 0 );
setRotateKey( spep_2-3 + 144, 1, -1.8 );
setRotateKey( spep_2-3 + 146, 1, -2 );
setRotateKey( spep_2-3 + 148, 1, -2.2 );
setRotateKey( spep_2-3 + 150, 1, -2.4 );
setRotateKey( spep_2-3 + 152, 1, -2.6 );
setRotateKey( spep_2-3 + 154, 1, -2.7 );
setRotateKey( spep_2-3 + 156, 1, -2.9 );
setRotateKey( spep_2-3 + 158, 1, -3 );
setRotateKey( spep_2-3 + 160, 1, -3.1 );
setRotateKey( spep_2-3 + 162, 1, -3.2 );
setRotateKey( spep_2-3 + 164, 1, -3.3 );
setRotateKey( spep_2-3 + 166, 1, -3.4 );
setRotateKey( spep_2-3 + 168, 1, -3.5 );
setRotateKey( spep_2-3 + 170, 1, -3.5 );
setRotateKey( spep_2-3 + 172, 1, -3.6 );
setRotateKey( spep_2-3 + 174, 1, -3.6 );
setRotateKey( spep_2-3 + 176, 1, -3.7 );
setRotateKey( spep_2-3 + 178, 1, -3.7 );
setRotateKey( spep_2-3 + 181, 1, -3.8 );
setRotateKey( spep_2-3 + 182, 1, 0 );
setRotateKey( spep_2-5 + 220, 1, 0 );

--集中線
shuchusenz = entryEffectLife( spep_2-3 + 108,  906, 20, 0x100, -1, 0, 0, 0);
setEffShake( spep_2-3 + 108, shuchusenz, 20, 20 );
setEffMoveKey( spep_2-3 + 108, shuchusenz, 0, 0, 0 );
setEffMoveKey( spep_2-3 + 128, shuchusenz, 0, 0, 0 );

setEffScaleKey( spep_2-3 + 108, shuchusenz, 1.53, 1.53 );
setEffScaleKey( spep_2-3 + 128, shuchusenz, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 108, shuchusenz, 180 );
setEffRotateKey( spep_2-3 + 128, shuchusenz, 180 );

setEffAlphaKey( spep_2-3 + 108, shuchusenz, 255 );
setEffAlphaKey( spep_2-3 + 128, shuchusenz, 255 );

--SE
playSe( spep_2 + 12, 1003 );
setSeVolume( spep_2 + 12, 1003, 71 );
se_1184 = playSe( spep_2 + 44, 1184 );
setSeVolume( spep_2 + 44, 1184, 79 );
playSe( spep_2 + 44, 1112 );
setSeVolume( spep_2 + 44, 1112, 79 );
playSe( spep_2 + 102, 1189 );
setSeVolume( spep_2 + 102, 1189, 71 );
playSe( spep_2 + 107, 1000 );
playSe( spep_2 + 137, 1004 );
setSeVolume( spep_2 + 137, 1004, 71 );
se_11841 = playSe( spep_2 + 143, 1184 );
setSeVolume( spep_2 + 143, 1184, 79 );
setSeVolume( spep_2 + 143, 1112, 79 );
playSe( spep_2 + 143, 1112 );

stopSe( spep_2 + 59, se_1184, 19 );
stopSe( spep_2 + 158, se_11841, 19 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 230, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
--entryFade( spep_2 + 212, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+216;

------------------------------------------------------
-- 落書きアップ絵
------------------------------------------------------
-- ** エフェクト等 ** --
sine = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sine, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, sine, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, sine, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, sine, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sine, 0 );
setEffRotateKey( spep_3 + 90, sine, 0 );
setEffAlphaKey( spep_3 + 0, sine, 255 );
setEffAlphaKey( spep_3 + 90, sine, 255 );

-- ** エフェクト等 ** --
sine_f = entryEffect( spep_3 + 0, 155079, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sine_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, sine_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, sine_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, sine_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sine_f, 0 );
setEffRotateKey( spep_3 + 90, sine_f, 0 );
setEffAlphaKey( spep_3 + 0, sine_f, 255 );
setEffAlphaKey( spep_3 + 90, sine_f, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_3 + 0,  906, 86, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen1, 86, 20 );
setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_3 + 86, shuchusen1, 1.25, 1.25 );

setEffRotateKey( spep_3 + 0, shuchusen1, 180 );
setEffRotateKey( spep_3 + 86, shuchusen1, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 84, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 85, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen1, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 -5 + 90, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, -21, -28 , 0 );
setMoveKey( spep_3 + 2, 1, -23.2, -31 , 0 );
setMoveKey( spep_3 + 4, 1, -25.1, -33.5 , 0 );
setMoveKey( spep_3 + 6, 1, -26.7, -35.6 , 0 );
setMoveKey( spep_3 + 8, 1, -28, -37.3 , 0 );
setMoveKey( spep_3 + 10, 1, -29, -38.7 , 0 );
setMoveKey( spep_3 + 12, 1, -29.9, -39.9 , 0 );
setMoveKey( spep_3 + 14, 1, -30.5, -40.7 , 0 );
setMoveKey( spep_3 + 16, 1, -31, -41.4 , 0 );
setMoveKey( spep_3 + 18, 1, -31.4, -41.9 , 0 );
setMoveKey( spep_3 + 20, 1, -31.7, -42.3 , 0 );
setMoveKey( spep_3 + 22, 1, -31.9, -42.6 , 0 );
setMoveKey( spep_3 + 24, 1, -32, -42.7 , 0 );
setMoveKey( spep_3 + 26, 1, -32.1, -42.8 , 0 );
setMoveKey( spep_3 -5 + 90, 1, -32.1, -42.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 2, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 4, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 6, 1, 2.11, 2.11 );
setScaleKey( spep_3 + 8, 1, 2.21, 2.21 );
setScaleKey( spep_3 + 10, 1, 2.3, 2.3 );
setScaleKey( spep_3 + 12, 1, 2.36, 2.36 );
setScaleKey( spep_3 + 14, 1, 2.41, 2.41 );
setScaleKey( spep_3 + 16, 1, 2.45, 2.45 );
setScaleKey( spep_3 + 18, 1, 2.49, 2.49 );
setScaleKey( spep_3 + 20, 1, 2.51, 2.51 );
setScaleKey( spep_3 + 22, 1, 2.52, 2.52 );
setScaleKey( spep_3 + 24, 1, 2.53, 2.53 );
setScaleKey( spep_3 + 26, 1, 2.54, 2.54 );
setScaleKey( spep_3-5 + 90, 1, 2.54, 2.54 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -5+ 90, 1, 0 );

--SE
playSe( spep_3 + 0, 1012 );
playSe( spep_3 + 0, 10 );
setSeVolume( spep_3 + 0, 10, 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
--entryFade( spep_3 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_x=spep_3+86;

------------------------------------------------------
-- ペンを持つ
------------------------------------------------------
-- ** エフェクト等 ** --
penn_f = entryEffect( spep_x + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_x + 0, penn_f, 0, 0, 0 );
setEffMoveKey( spep_x + 64, penn_f, 0, 0, 0 );
setEffScaleKey( spep_x + 0, penn_f, 1.0, 1.0 );
setEffScaleKey( spep_x + 64, penn_f, 1.0, 1.0 );
setEffRotateKey( spep_x + 0, penn_f, 0 );
setEffRotateKey( spep_x + 64, penn_f, 0 );
setEffAlphaKey( spep_x + 0, penn_f, 255 );
setEffAlphaKey( spep_x + 64, penn_f, 255 );

-- ** エフェクト等 ** --
penn_b = entryEffect( spep_x + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_x + 0, penn_b, 0, 0, 0 );
setEffMoveKey( spep_x + 64, penn_b, 0, 0, 0 );
setEffScaleKey( spep_x + 0, penn_b, 1.0, 1.0 );
setEffScaleKey( spep_x + 64, penn_b, 1.0, 1.0 );
setEffRotateKey( spep_x + 0, penn_b, 0 );
setEffRotateKey( spep_x + 64, penn_b, 0 );
setEffAlphaKey( spep_x + 0, penn_b, 255 );
setEffAlphaKey( spep_x + 64, penn_b, 255 );

--文字エントリー
ctbikuri = entryEffectLife( spep_x-3 + 28,  10001, 36, 0x100, -1, 0, 200.1, 172.1 );
setEffMoveKey( spep_x-3 + 28, ctbikuri, 200.1, 172.1 , 0 );
setEffMoveKey( spep_x-3 + 30, ctbikuri, 198.5, 156.2 , 0 );
setEffMoveKey( spep_x-3 + 32, ctbikuri, 190.8, 156.3 , 0 );
setEffMoveKey( spep_x-3 + 34, ctbikuri, 203, 168.1 , 0 );
setEffMoveKey( spep_x-3 + 36, ctbikuri, 212.3, 172.5 , 0 );
setEffMoveKey( spep_x-3 + 38, ctbikuri, 214.3, 173.2 , 0 );
setEffMoveKey( spep_x-3 + 40, ctbikuri, 215.9, 173.8 , 0 );
setEffMoveKey( spep_x-3 + 42, ctbikuri, 217.2, 174.1 , 0 );
setEffMoveKey( spep_x-3 + 44, ctbikuri, 218.2, 174.4 , 0 );
setEffMoveKey( spep_x-3 + 64, ctbikuri, 218.2, 174.4 , 0 );

setEffScaleKey( spep_x-3 + 28, ctbikuri, 2.72, 2.72 );
setEffScaleKey( spep_x-3 + 30, ctbikuri, 2.39, 2.4 );
setEffScaleKey( spep_x-3 + 32, ctbikuri, 2.41, 2.41 );
setEffScaleKey( spep_x-3 + 34, ctbikuri, 2.42, 2.42 );
setEffScaleKey( spep_x-3 + 36, ctbikuri, 2.77, 2.78 );
setEffScaleKey( spep_x-3 + 38, ctbikuri, 2.79, 2.79 );
setEffScaleKey( spep_x-3 + 40, ctbikuri, 2.79, 2.8 );
setEffScaleKey( spep_x-3 + 42, ctbikuri, 2.8, 2.8 );
setEffScaleKey( spep_x-3 + 44, ctbikuri, 2.81, 2.81 );
setEffScaleKey( spep_x-3 + 64, ctbikuri, 2.81, 2.81 );

setEffRotateKey( spep_x-3 + 28, ctbikuri, 17.8 );
setEffRotateKey( spep_x-3 + 64, ctbikuri, 17.8 );

setEffAlphaKey( spep_x-3 + 28, ctbikuri, 255 );
setEffAlphaKey( spep_x-3 + 64, ctbikuri, 255 );

--敵の動き
setDisp( spep_x + 0, 1, 1 );
setDisp( spep_x -3 + 64, 1, 0 );

changeAnime( spep_x + 0, 1, 102 );
changeAnime( spep_x-3 + 28, 1, 118 );

setMoveKey( spep_x + 0, 1, 86.1, -56.5 , 0 );
--setMoveKey( spep_x-3 + 2, 1, 86.1, -56.5 , 0 );
setMoveKey( spep_x-3 + 4, 1, 103.5, -58.6 , 0 );
setMoveKey( spep_x-3 + 6, 1, 116.5, -60.4 , 0 );
setMoveKey( spep_x-3 + 8, 1, 127.3, -61.9 , 0 );
setMoveKey( spep_x-3 + 10, 1, 136.4, -63.2 , 0 );
setMoveKey( spep_x-3 + 12, 1, 144.3, -64.3 , 0 );
setMoveKey( spep_x-3 + 14, 1, 151.2, -65.4 , 0 );
setMoveKey( spep_x-3 + 16, 1, 157.3, -66.4 , 0 );
setMoveKey( spep_x-3 + 18, 1, 162.8, -67.1 , 0 );
setMoveKey( spep_x-3 + 20, 1, 167.8, -67.9 , 0 );
setMoveKey( spep_x-3 + 22, 1, 172.3, -68.7 , 0 );
setMoveKey( spep_x-3 + 24, 1, 176.3, -69.3 , 0 );
setMoveKey( spep_x-3 + 27, 1, 179.9, -69.9 , 0 );
setMoveKey( spep_x-3 + 28, 1, 198, -97.5 , 0 );
setMoveKey( spep_x-3 + 30, 1, 201, -98.1 , 0 );
setMoveKey( spep_x-3 + 32, 1, 203.8, -98.8 , 0 );
setMoveKey( spep_x-3 + 34, 1, 206.2, -99.3 , 0 );
setMoveKey( spep_x-3 + 36, 1, 208.4, -99.7 , 0 );
setMoveKey( spep_x-3 + 38, 1, 210.3, -100.1 , 0 );
setMoveKey( spep_x-3 + 40, 1, 211.9, -100.5 , 0 );
setMoveKey( spep_x-3 + 42, 1, 213.2, -100.8 , 0 );
setMoveKey( spep_x-3 + 44, 1, 214.2, -101.1 , 0 );
setMoveKey( spep_x-3 + 64, 1, 214.2, -101.1 , 0 );

setScaleKey( spep_x + 0, 1, 1.52, 1.52 );
--setScaleKey( spep_x-3 + 2, 1, 1.52, 1.52 );
setScaleKey( spep_x-3 + 4, 1, 1.6, 1.6 );
setScaleKey( spep_x-3 + 6, 1, 1.66, 1.66 );
setScaleKey( spep_x-3 + 8, 1, 1.7, 1.7 );
setScaleKey( spep_x-3 + 10, 1, 1.74, 1.74 );
setScaleKey( spep_x-3 + 12, 1, 1.77, 1.77 );
setScaleKey( spep_x-3 + 14, 1, 1.79, 1.79 );
setScaleKey( spep_x-3 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_x-3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_x-3 + 20, 1, 1.85, 1.86 );
setScaleKey( spep_x-3 + 22, 1, 1.87, 1.87 );
setScaleKey( spep_x-3 + 24, 1, 1.89, 1.89 );
setScaleKey( spep_x-3 + 27, 1, 1.9, 1.9 );
setScaleKey( spep_x-3 + 28, 1, 1.91, 1.92 );
setScaleKey( spep_x-3 + 30, 1, 1.93, 1.93 );
setScaleKey( spep_x-3 + 32, 1, 1.94, 1.94 );
setScaleKey( spep_x-3 + 34, 1, 1.94, 1.95 );
setScaleKey( spep_x-3 + 36, 1, 1.95, 1.95 );
setScaleKey( spep_x-3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_x-3 + 40, 1, 1.97, 1.97 );
setScaleKey( spep_x-3 + 42, 1, 1.97, 1.97 );
setScaleKey( spep_x-3 + 44, 1, 1.98, 1.98 );
setScaleKey( spep_x-3 + 64, 1, 1.98, 1.98 );

setRotateKey( spep_x + 0, 1, 0 );
setRotateKey( spep_x-3 + 64, 1, 0 );

--SE
playSe( spep_x , 1232 );
setSeVolume( spep_x , 1232, 79 );
se_0048 = playSe( spep_x + 28, 48 );

stopSe( spep_x + 38, se_0048, 26 );

--白フェード
entryFade( spep_x + 56, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_x+64;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- 衝撃波
------------------------------------------------------

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 52, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 52, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 52, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 52, hit_b, 255 );

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 52, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 52, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 52, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 52, hit_f, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 102 );
changeAnime( spep_5-3 + 26, 1, 107 );

setMoveKey( spep_5 + 0, 1, 137.3, 14.4 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 137.2, 14.2 , 0 );
setMoveKey( spep_5-3 + 25, 1, 137.2, 14.2 , 0 );
setMoveKey( spep_5-3 + 26, 1, 202.1, -20.9 , 0 );
setMoveKey( spep_5-3 + 28, 1, 235.3, -77.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 318.9, -88.5 , 0 );
setMoveKey( spep_5-3 + 32, 1, 359.6, -124 , 0 );
setMoveKey( spep_5-3 + 34, 1, 400.4, -159.5 , 0 );
setMoveKey( spep_5-3 + 36, 1, 441.1, -195.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, 481.8, -230.7 , 0 );
setMoveKey( spep_5-3 + 40, 1, 522.5, -266.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 563.3, -301.7 , 0 );
setMoveKey( spep_5-3 + 44, 1, 604, -337.3 , 0 );
setMoveKey( spep_5-3 + 46, 1, 644.7, -372.8 , 0 );
setMoveKey( spep_5-3 + 48, 1, 685.4, -408.3 , 0 );
setMoveKey( spep_5-3 + 50, 1, 726.1, -443.9 , 0 );
setMoveKey( spep_5-3 + 52, 1, 767, -479.4 , 0 );
setMoveKey( spep_5 + 51, 1, 807.6, -514.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 25, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_5-3 + 28, 1, 0.85, 0.85 );
setScaleKey( spep_5-3 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_5-3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_5-3 + 34, 1, 1.24, 1.24 );
setScaleKey( spep_5-3 + 36, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 40, 1, 1.63, 1.63 );
setScaleKey( spep_5-3 + 42, 1, 1.76, 1.76 );
setScaleKey( spep_5-3 + 44, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 46, 1, 2.02, 2.02 );
setScaleKey( spep_5-3 + 48, 1, 2.16, 2.16 );
setScaleKey( spep_5-3 + 50, 1, 2.29, 2.29 );
setScaleKey( spep_5-3 + 52, 1, 2.42, 2.42 );
setScaleKey( spep_5 + 51, 1, 2.55, 2.55 );


setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 25, 1, 0 );
setRotateKey( spep_5-3 + 26, 1, -17 );
setRotateKey( spep_5 + 51, 1, -17 );

--SE
playSe( spep_5 + 19, 1059 );
setSeVolume( spep_5 + 19, 1059, 89 );
se_1184 = playSe( spep_5 + 22, 1184 );
setSeVolume( spep_5 + 22, 1184, 63 );
playSe( spep_5 + 22, 1033 );
setSeVolume( spep_5 + 22, 1033, 71 );
playSe( spep_5 + 23, 1182 );

stopSe( spep_5 + 37, se_1184, 18 );


-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 52;
------------------------------------------------------
-- ガ
------------------------------------------------------
-- ** エフェクト等 ** --
bg = entryEffect( spep_6 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 220, bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 220, bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg, 0 );
setEffRotateKey( spep_6 + 220, bg, 0 );
setEffAlphaKey( spep_6 + 0, bg, 255 );
setEffAlphaKey( spep_6 + 220, bg, 255 );


--敵の動き
setMoveKey( spep_6 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_6 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_6 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_6 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_6 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_6 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_6 + 0, 1, 0-z );
setRotateKey( spep_6 + 2, 1, 105-z );
setRotateKey( spep_6 + 4, 1, 240-z );
setRotateKey( spep_6 + 6, 1, 405-z );
setRotateKey( spep_6 + 8, 1, 600-z );
setRotateKey( spep_6 + 10, 1, 825-z );
setRotateKey( spep_6 + 12, 1, 1080-z );
setRotateKey( spep_6 + 110, 1, 1080-z );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen4, 0 );
setEffRotateKey( spep_6 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

--SE
playSe( spep_6 + 0, 1023 );
playSe( spep_6 + 14, 1054 );

--終わり
dealDamage( spep_6  );
endPhase( spep_6 + 98 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 対峙
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
taizi_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, taizi_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, taizi_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, taizi_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, taizi_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taizi_f, 0 );
setEffRotateKey( spep_0 + 56, taizi_f, 0 );
setEffAlphaKey( spep_0 + 0, taizi_f, 255 );
setEffAlphaKey( spep_0 + 56, taizi_f, 255 );
setEffAlphaKey( spep_0 + 57, taizi_f, 0 );
setEffAlphaKey( spep_0 + 58, taizi_f, 0 );

-- ** エフェクト等 ** --
taizi_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, taizi_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 56, taizi_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, taizi_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 56, taizi_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, taizi_b, 0 );
setEffRotateKey( spep_0 + 56, taizi_b, 0 );
setEffAlphaKey( spep_0 + 0, taizi_b, 255 );
setEffAlphaKey( spep_0 + 56, taizi_b, 255 );
setEffAlphaKey( spep_0 + 57, taizi_b, 0 );
setEffAlphaKey( spep_0 + 58, taizi_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 56, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 94.7, 25.6 , 0 );
setMoveKey( spep_0 + 2, 1, 95.3, 25.7 , 0 );
setMoveKey( spep_0 + 4, 1, 95.9, 25.7 , 0 );
setMoveKey( spep_0 + 6, 1, 96.6, 25.8 , 0 );
setMoveKey( spep_0 + 8, 1, 97.4, 25.8 , 0 );
setMoveKey( spep_0 + 10, 1, 98.1, 25.9 , 0 );
setMoveKey( spep_0 + 12, 1, 98.9, 25.9 , 0 );
setMoveKey( spep_0 + 14, 1, 99.8, 26.1 , 0 );
setMoveKey( spep_0 + 16, 1, 100.7, 26.1 , 0 );
setMoveKey( spep_0 + 18, 1, 101.6, 26.2 , 0 );
setMoveKey( spep_0 + 20, 1, 102.7, 26.3 , 0 );
setMoveKey( spep_0 + 22, 1, 103.8, 26.5 , 0 );
setMoveKey( spep_0 + 24, 1, 105, 26.6 , 0 );
setMoveKey( spep_0 + 26, 1, 106.2, 26.8 , 0 );
setMoveKey( spep_0 + 28, 1, 107.5, 26.9 , 0 );
setMoveKey( spep_0 + 30, 1, 108.9, 27.1 , 0 );
setMoveKey( spep_0 + 32, 1, 110.4, 27.3 , 0 );
setMoveKey( spep_0 + 34, 1, 111.9, 27.6 , 0 );
setMoveKey( spep_0 + 36, 1, 113.6, 27.8 , 0 );
setMoveKey( spep_0 + 38, 1, 115.4, 28.1 , 0 );
setMoveKey( spep_0 + 40, 1, 117.4, 28.4 , 0 );
setMoveKey( spep_0 + 42, 1, 119.4, 28.8 , 0 );
setMoveKey( spep_0 + 44, 1, 121.6, 29.1 , 0 );
setMoveKey( spep_0 + 46, 1, 124, 29.5 , 0 );
setMoveKey( spep_0 + 48, 1, 126.5, 29.9 , 0 );
setMoveKey( spep_0 + 50, 1, 129.2, 30.4 , 0 );
setMoveKey( spep_0 + 52, 1, 132.1, 30.9 , 0 );
setMoveKey( spep_0 + 54, 1, 135.2, 31.4 , 0 );
setMoveKey( spep_0 + 56, 1, 138.5, 32 , 0 );
--setMoveKey( spep_0 + 58, 1, 142.1, 32.7 , 0 );

setScaleKey( spep_0 + 0, 1, 1, 1 );
setScaleKey( spep_0 + 2, 1, 1, 1 );
setScaleKey( spep_0 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 6, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 8, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 10, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 12, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 14, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 16, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 18, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 22, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 24, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 26, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 28, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 30, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 32, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 34, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 36, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 38, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 40, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 46, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 48, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 50, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 52, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 54, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 56, 1, 1.37, 1.37 );
--setScaleKey( spep_0 + 58, 1, 1.4, 1.4 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 56, 1, 0 );

--SE
playSe( spep_0 + 0, 8 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 58, 0,  0, 0, 0, 255 ); --くろ 背景
--次の準備
spep_1=spep_0+56;

------------------------------------------------------
-- バストアップ
------------------------------------------------------
-- ** エフェクト等 ** --
bust = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, bust, 0, 0, 0 );
setEffMoveKey( spep_1 + 100, bust, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, bust, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, bust, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, bust, 0 );
setEffRotateKey( spep_1 + 100, bust, 0 );
setEffAlphaKey( spep_1 + 0, bust, 255 );
setEffAlphaKey( spep_1 + 100, bust, 255 );


-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 102, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える
    
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

--カットイン
--speff = entryEffect( spep_1 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1 + 12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--etEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--SE
playSe( spep_1 + 24, 1018 );--ごごご
playSe( spep_1 + 24, 1042 );
setSeVolume( spep_1 + 24, 1042, 63 );
playSe( spep_1 + 26, 24 );
setSeVolume( spep_1 + 26, 24, 126 );
playSe( spep_1 + 28, 1113 );
setSeVolume( spep_1 + 28, 1113, 126 );
se_0027 = playSe( spep_1 + 30, 27 );
setSeVolume( spep_1 + 30, 27, 126 );

stopSe( spep_1 + 43, se_0027, 0 );

--白フェード
entryFade( spep_1 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+100;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 300, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 300, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 300, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 0 );
setEffAlphaKey( spep_2 + 104, fighting_f, 0 );
setEffAlphaKey( spep_2 + 105, fighting_f, 255 );
setEffAlphaKey( spep_2 + 140, fighting_f, 255 );
setEffAlphaKey( spep_2 + 141, fighting_f, 0 );
setEffAlphaKey( spep_2 + 300, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_bg = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_bg, 0, 0, 0 );
setEffMoveKey( spep_2 + 220, fighting_bg, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 220, fighting_bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_bg, 0 );
setEffRotateKey( spep_2 + 220, fighting_bg, 0 );
setEffAlphaKey( spep_2 + 0, fighting_bg, 255 );
setEffAlphaKey( spep_2 + 220, fighting_bg, 255 );
setEffAlphaKey( spep_2 + 221, fighting_bg, 0 );
setEffAlphaKey( spep_2 + 222, fighting_bg, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 220, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 220, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 220, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 104, fighting_b, 255 );
setEffAlphaKey( spep_2 + 105, fighting_b, 0 );
setEffAlphaKey( spep_2 + 140, fighting_b, 0 );
setEffAlphaKey( spep_2 + 141, fighting_b, 255 );
setEffAlphaKey( spep_2 + 220, fighting_b, 255 );
setEffAlphaKey( spep_2 + 221, fighting_b, 0 );
setEffAlphaKey( spep_2 + 220, fighting_b, 0 );

--集中線
shuchusenz = entryEffectLife( spep_2-3 + 108,  906, 20, 0x100, -1, 0, 0, 0);
setEffShake( spep_2-3 + 108, shuchusenz, 20, 20 );
setEffMoveKey( spep_2-3 + 108, shuchusenz, 0, 0, 0 );
setEffMoveKey( spep_2-3 + 128, shuchusenz, 0, 0, 0 );

setEffScaleKey( spep_2-3 + 108, shuchusenz, 1.53, 1.53 );
setEffScaleKey( spep_2-3 + 128, shuchusenz, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 108, shuchusenz, 180 );
setEffRotateKey( spep_2-3 + 128, shuchusenz, 180 );

setEffAlphaKey( spep_2-3 + 108, shuchusenz, 255 );
setEffAlphaKey( spep_2-3 + 128, shuchusenz, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 108,  10020, 20, 0x100, -1, 0, -46.4, 286.8 );
setEffMoveKey( spep_2-3 + 108, ctbaki, -46.4, 286.8 , 0 );
setEffMoveKey( spep_2-3 + 110, ctbaki, 15.6, 246.3 , 0 );
setEffMoveKey( spep_2-3 + 112, ctbaki, -110.3, 297.6 , 0 );
setEffMoveKey( spep_2-3 + 114, ctbaki, -53.8, 265 , 0 );
setEffMoveKey( spep_2-3 + 116, ctbaki, -92.1, 261.4 , 0 );
setEffMoveKey( spep_2-3 + 118, ctbaki, -52.3, 260.6 , 0 );
setEffMoveKey( spep_2-3 + 120, ctbaki, -66.6, 275.9 , 0 );
setEffMoveKey( spep_2-3 + 122, ctbaki, -65.5, 274.9 , 0 );
setEffMoveKey( spep_2-3 + 124, ctbaki, -66.8, 274 , 0 );
setEffMoveKey( spep_2-3 + 126, ctbaki, -67.9, 273 , 0 );
setEffMoveKey( spep_2-3 + 128, ctbaki, -76.3, 278.6 , 0 );

setEffScaleKey( spep_2-3 + 108, ctbaki, 1.32, 1.32 );
setEffScaleKey( spep_2-3 + 110, ctbaki, 1.49, 1.49 );
setEffScaleKey( spep_2-3 + 112, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 114, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 116, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 118, ctbaki, 1.72, 1.72 );
setEffScaleKey( spep_2-3 + 120, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 122, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_2-3 + 124, ctbaki, 1.82, 1.82 );
setEffScaleKey( spep_2-3 + 126, ctbaki, 1.83, 1.83 );
setEffScaleKey( spep_2-3 + 128, ctbaki, 1.84, 1.84 );

setEffRotateKey( spep_2-3 + 108, ctbaki, 29.9 );
setEffRotateKey( spep_2-3 + 110, ctbaki, -4.7 );
setEffRotateKey( spep_2-3 + 112, ctbaki, 10.3 );
setEffRotateKey( spep_2-3 + 114, ctbaki, 5 );
setEffRotateKey( spep_2-3 + 116, ctbaki, 15.2 );
setEffRotateKey( spep_2-3 + 118, ctbaki, 7.6 );
setEffRotateKey( spep_2-3 + 126, ctbaki, 7.6 );
setEffRotateKey( spep_2-3 + 128, ctbaki, 7.5 );

setEffAlphaKey( spep_2-3 + 108, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 120, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 122, ctbaki, 198 );
setEffAlphaKey( spep_2-3 + 124, ctbaki, 142 );
setEffAlphaKey( spep_2-3 + 126, ctbaki, 85 );
setEffAlphaKey( spep_2-3 + 128, ctbaki, 0 );


--敵の動き
setDisp( spep_2-3 + 0, 1, 1 );
--setDisp( spep_2-3 + 220, 1, 0 );

changeAnime( spep_2-3 + 0, 1, 1 );
changeAnime( spep_2-3 + 13, 1, 11 );
changeAnime( spep_2-3 + 14, 1, 11 );
changeAnime( spep_2-3 + 15, 1, 11 );
changeAnime( spep_2-3 + 16, 1, 11 );
changeAnime( spep_2-3 + 17, 1, 11 );
changeAnime( spep_2-3 + 18, 1, 11 );
changeAnime( spep_2-3 + 19, 1, 11 );
changeAnime( spep_2-3 + 20, 1, 11 );
changeAnime( spep_2-3 + 21, 1, 11 );
changeAnime( spep_2-3 + 22, 1, 11 );
changeAnime( spep_2-3 + 23, 1, 11 );
changeAnime( spep_2-3 + 24, 1, 11 );
changeAnime( spep_2-3 + 25, 1, 11 );
changeAnime( spep_2-3 + 26, 1, 11 );
changeAnime( spep_2-3 + 27, 1, 11 );
changeAnime( spep_2-3 + 28, 1, 11 );
changeAnime( spep_2-3 + 29, 1, 11 );
changeAnime( spep_2-3 + 30, 1, 11 );
changeAnime( spep_2-3 + 31, 1, 11 );
changeAnime( spep_2-3 + 32, 1, 11 );
changeAnime( spep_2-3 + 33, 1, 11 );
changeAnime( spep_2-3 + 34, 1, 11 );
changeAnime( spep_2-3 + 35, 1, 11 );
changeAnime( spep_2-3 + 36, 1, 11 );
changeAnime( spep_2-3 + 80, 1, 1 );
changeAnime( spep_2-3 + 108, 1, 6 );
changeAnime( spep_2-3 + 132, 1, 117 );
changeAnime( spep_2-3 + 144, 1, 114 );
changeAnime( spep_2-3 + 182, 1, 102 );
changeAnime( spep_2-3 + 200, 1, 2 );


setMoveKey( spep_2 + 0, 1, -190.2, -63.1 , 0 );
--setMoveKey( spep_2-3 + 2, 1, 190.4, -63.1 , 0 );
setMoveKey( spep_2-3 + 4, 1, -190.7, -63.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, -190.9, -63.1 , 0 );
setMoveKey( spep_2-3 + 8, 1, -191.2, -63.1 , 0 );
setMoveKey( spep_2-3 + 11, 1, -191.5, -63.2 , 0 );
setMoveKey( spep_2-3 + 12, 1, -104.3, -26 , 0 );
setMoveKey( spep_2-3 + 14, 1, -101.6, -22.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, -99, -19.7 , 0 );
setMoveKey( spep_2-3 + 18, 1, -96.7, -16.9 , 0 );
setMoveKey( spep_2-3 + 20, 1, -94.5, -14.3 , 0 );
setMoveKey( spep_2-3 + 22, 1, -92.5, -12 , 0 );
setMoveKey( spep_2-3 + 24, 1, -90.8, -9.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, -89.2, -7.9 , 0 );
setMoveKey( spep_2-3 + 28, 1, -87.8, -6.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, -86.6, -4.9 , 0 );
setMoveKey( spep_2-3 + 32, 1, -85.7, -3.7 , 0 );
setMoveKey( spep_2-3 + 34, 1, -84.9, -2.8 , 0 );
setMoveKey( spep_2-3 + 37, 1, -84.2, -2 , 0 );
a=44;
setMoveKey( spep_2-3 + 38, 1, 27.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 40, 1, 37.3, -45.4+a , 0 );
setMoveKey( spep_2-3 + 42, 1, 46, -45.4+a , 0 );
setMoveKey( spep_2-3 + 44, 1, 53.9, -45.4+a , 0 );
setMoveKey( spep_2-3 + 46, 1, 61, -45.4+a , 0 );
setMoveKey( spep_2-3 + 48, 1, 67.4, -45.4+a , 0 );
setMoveKey( spep_2-3 + 50, 1, 73.2, -45.4+a , 0 );
setMoveKey( spep_2-3 + 52, 1, 78.3, -45.4+a , 0 );
setMoveKey( spep_2-3 + 54, 1, 82.9, -45.4+a , 0 );
setMoveKey( spep_2-3 + 56, 1, 87, -45.4+a , 0 );
setMoveKey( spep_2-3 + 58, 1, 90.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 60, 1, 93.9, -45.4+a , 0 );
setMoveKey( spep_2-3 + 62, 1, 96.8, -45.4+a , 0 );
setMoveKey( spep_2-3 + 64, 1, 99.3, -45.4+a , 0 );
setMoveKey( spep_2-3 + 66, 1, 101.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 68, 1, 103.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 70, 1, 105.4, -45.4+a , 0 );
setMoveKey( spep_2-3 + 72, 1, 107, -45.4+a , 0 );
setMoveKey( spep_2-3 + 74, 1, 108.4, -45.4+a , 0 );
setMoveKey( spep_2-3 + 76, 1, 109.6, -45.4+a , 0 );
setMoveKey( spep_2-3 + 79, 1, 110.6, -45.4+a , 0 );

setMoveKey( spep_2-3 + 80, 1, 108.2, -58 , 0 );
setMoveKey( spep_2-3 + 82, 1, 108.5, -58.1 , 0 );
setMoveKey( spep_2-3 + 84, 1, 108.8, -58.2 , 0 );
setMoveKey( spep_2-3 + 86, 1, 109.1, -58.3 , 0 );
setMoveKey( spep_2-3 + 88, 1, 109.4, -58.4 , 0 );
setMoveKey( spep_2-3 + 90, 1, 109.6, -58.4 , 0 );
setMoveKey( spep_2-3 + 92, 1, 109.9, -58.5 , 0 );
setMoveKey( spep_2-3 + 94, 1, 110.2, -58.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, 110.5, -58.7 , 0 );
setMoveKey( spep_2-3 + 98, 1, 110.8, -58.8 , 0 );
setMoveKey( spep_2-3 + 100, 1, 111, -58.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, 111.3, -58.9 , 0 );
setMoveKey( spep_2-3 + 104, 1, 111.6, -59 , 0 );
setMoveKey( spep_2-3 + 107, 1, 111.9, -59.1 , 0 );
setMoveKey( spep_2-3 + 108, 1, 168.4, -22.9 , 0 );
setMoveKey( spep_2-3 + 110, 1, 166.2, -23.7 , 0 );
setMoveKey( spep_2-3 + 112, 1, 168, -20.8 , 0 );
setMoveKey( spep_2-3 + 114, 1, 167.2, -18.5 , 0 );
setMoveKey( spep_2-3 + 116, 1, 166.8, -20.2 , 0 );
setMoveKey( spep_2-3 + 118, 1, 168.9, -19.2 , 0 );
setMoveKey( spep_2-3 + 120, 1, 168.3, -21 , 0 );
setMoveKey( spep_2-3 + 122, 1, 169.9, -20.7 , 0 );
setMoveKey( spep_2-3 + 124, 1, 170.6, -20.7 , 0 );
setMoveKey( spep_2-3 + 126, 1, 171.3, -20.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, 172.1, -20.7 , 0 );
setMoveKey( spep_2-3 + 131, 1, 172.8, -20.7 , 0 );
setMoveKey( spep_2-3 + 132, 1, 167.7, -69.4 , 0 );
setMoveKey( spep_2-3 + 143, 1, 167.7, -69.4 , 0 );
setMoveKey( spep_2-3 + 144, 1, -0.5, -40.3 , 0 );
setMoveKey( spep_2-3 + 146, 1, -1.4, -40.1 , 0 );
setMoveKey( spep_2-3 + 148, 1, -2.3, -39.9 , 0 );
setMoveKey( spep_2-3 + 150, 1, -3.1, -39.7 , 0 );
setMoveKey( spep_2-3 + 152, 1, -3.8, -39.5 , 0 );
setMoveKey( spep_2-3 + 154, 1, -4.4, -39.3 , 0 );
setMoveKey( spep_2-3 + 156, 1, -5, -39.2 , 0 );
setMoveKey( spep_2-3 + 158, 1, -5.5, -39.1 , 0 );
setMoveKey( spep_2-3 + 160, 1, -6, -39 , 0 );
setMoveKey( spep_2-3 + 162, 1, -6.5, -38.9 , 0 );
setMoveKey( spep_2-3 + 164, 1, -6.9, -38.8 , 0 );
setMoveKey( spep_2-3 + 166, 1, -7.2, -38.7 , 0 );
setMoveKey( spep_2-3 + 168, 1, -7.5, -38.6 , 0 );
setMoveKey( spep_2-3 + 170, 1, -7.8, -38.5 , 0 );
setMoveKey( spep_2-3 + 172, 1, -8.1, -38.5 , 0 );
setMoveKey( spep_2-3 + 174, 1, -8.3, -38.4 , 0 );
setMoveKey( spep_2-3 + 176, 1, -8.6, -38.4 , 0 );
setMoveKey( spep_2-3 + 178, 1, -8.7, -38.3 , 0 );
setMoveKey( spep_2-3 + 181, 1, -8.9, -38.3 , 0 );
setMoveKey( spep_2-3 + 182, 1, -45.4, -47 , 0 );
setMoveKey( spep_2-3 + 199, 1, -45.4, -47 , 0 );
setMoveKey( spep_2-3 + 200, 1, -86, -56.4 , 0 );
setMoveKey( spep_2-5 + 220, 1, -86, -56.4 , 0 );

setScaleKey( spep_2 + 0, 1, 1.52, 1.52 );
setScaleKey( spep_2-5 + 220, 1, 1.52, 1.52 );

setRotateKey( spep_2-3 + 0, 1, 0 );
setRotateKey( spep_2-3 + 11, 1, 0 );
setRotateKey( spep_2-3 + 12, 1, -1.8 );
setRotateKey( spep_2-3 + 14, 1, -1.7 );
setRotateKey( spep_2-3 + 16, 1, -1.6 );
setRotateKey( spep_2-3 + 18, 1, -1.5 );
setRotateKey( spep_2-3 + 20, 1, -1.4 );
setRotateKey( spep_2-3 + 22, 1, -1.3 );
setRotateKey( spep_2-3 + 24, 1, -1.2 );
setRotateKey( spep_2-3 + 26, 1, -1.2 );
setRotateKey( spep_2-3 + 28, 1, -1.1 );
setRotateKey( spep_2-3 + 32, 1, -1.1 );
setRotateKey( spep_2-3 + 34, 1, -1 );
setRotateKey( spep_2-3 + 37, 1, -1 );
setRotateKey( spep_2-3 + 38, 1, 0 );
setRotateKey( spep_2-3 + 80, 1, 0 );
setRotateKey( spep_2-3 + 82, 1, 0.1 );
setRotateKey( spep_2-3 + 84, 1, 0.2 );
setRotateKey( spep_2-3 + 86, 1, 0.2 );
setRotateKey( spep_2-3 + 88, 1, 0.3 );
setRotateKey( spep_2-3 + 90, 1, 0.4 );
setRotateKey( spep_2-3 + 92, 1, 0.5 );
setRotateKey( spep_2-3 + 94, 1, 0.5 );
setRotateKey( spep_2-3 + 96, 1, 0.6 );
setRotateKey( spep_2-3 + 98, 1, 0.7 );
setRotateKey( spep_2-3 + 100, 1, 0.8 );
setRotateKey( spep_2-3 + 102, 1, 0.8 );
setRotateKey( spep_2-3 + 104, 1, 0.9 );
setRotateKey( spep_2-3 + 107, 1, 1 );
setRotateKey( spep_2-3 + 108, 1, 57 );
setRotateKey( spep_2-3 + 110, 1, 57.2 );
setRotateKey( spep_2-3 + 112, 1, 57.5 );
setRotateKey( spep_2-3 + 114, 1, 57.7 );
setRotateKey( spep_2-3 + 116, 1, 58 );
setRotateKey( spep_2-3 + 118, 1, 58.2 );
setRotateKey( spep_2-3 + 120, 1, 58.5 );
setRotateKey( spep_2-3 + 122, 1, 58.7 );
setRotateKey( spep_2-3 + 124, 1, 58.9 );
setRotateKey( spep_2-3 + 126, 1, 59.2 );
setRotateKey( spep_2-3 + 128, 1, 59.4 );
setRotateKey( spep_2-3 + 131, 1, 59.7 );
setRotateKey( spep_2-3 + 132, 1, 0 );
setRotateKey( spep_2-3 + 143, 1, 0 );
setRotateKey( spep_2-3 + 144, 1, 1.8 );
setRotateKey( spep_2-3 + 146, 1, 2 );
setRotateKey( spep_2-3 + 148, 1, 2.2 );
setRotateKey( spep_2-3 + 150, 1, 2.4 );
setRotateKey( spep_2-3 + 152, 1, 2.6 );
setRotateKey( spep_2-3 + 154, 1, 2.7 );
setRotateKey( spep_2-3 + 156, 1, 2.9 );
setRotateKey( spep_2-3 + 158, 1, 3 );
setRotateKey( spep_2-3 + 160, 1, 3.1 );
setRotateKey( spep_2-3 + 162, 1, 3.2 );
setRotateKey( spep_2-3 + 164, 1, 3.3 );
setRotateKey( spep_2-3 + 166, 1, 3.4 );
setRotateKey( spep_2-3 + 168, 1, 3.5 );
setRotateKey( spep_2-3 + 170, 1, 3.5 );
setRotateKey( spep_2-3 + 172, 1, 3.6 );
setRotateKey( spep_2-3 + 174, 1, 3.6 );
setRotateKey( spep_2-3 + 176, 1, 3.7 );
setRotateKey( spep_2-3 + 178, 1, 3.7 );
setRotateKey( spep_2-3 + 181, 1, 3.8 );
setRotateKey( spep_2-3 + 182, 1, 0 );
setRotateKey( spep_2-5 + 220, 1, 0 );

--集中線
shuchusenz = entryEffectLife( spep_2-3 + 108,  906, 20, 0x100, -1, 0, 0, 0);
setEffShake( spep_2-3 + 108, shuchusenz, 20, 20 );
setEffMoveKey( spep_2-3 + 108, shuchusenz, 0, 0, 0 );
setEffMoveKey( spep_2-3 + 128, shuchusenz, 0, 0, 0 );

setEffScaleKey( spep_2-3 + 108, shuchusenz, 1.53, 1.53 );
setEffScaleKey( spep_2-3 + 128, shuchusenz, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 108, shuchusenz, 180 );
setEffRotateKey( spep_2-3 + 128, shuchusenz, 180 );

setEffAlphaKey( spep_2-3 + 108, shuchusenz, 255 );
setEffAlphaKey( spep_2-3 + 128, shuchusenz, 255 );

--SE
playSe( spep_2 + 12, 1003 );
setSeVolume( spep_2 + 12, 1003, 71 );
se_1184 = playSe( spep_2 + 44, 1184 );
setSeVolume( spep_2 + 44, 1184, 79 );
playSe( spep_2 + 44, 1112 );
setSeVolume( spep_2 + 44, 1112, 79 );
playSe( spep_2 + 102, 1189 );
setSeVolume( spep_2 + 102, 1189, 71 );
playSe( spep_2 + 107, 1000 );
playSe( spep_2 + 137, 1004 );
setSeVolume( spep_2 + 137, 1004, 71 );
se_11841 = playSe( spep_2 + 143, 1184 );
setSeVolume( spep_2 + 143, 1184, 79 );
setSeVolume( spep_2 + 143, 1112, 79 );
playSe( spep_2 + 143, 1112 );

stopSe( spep_2 + 59, se_1184, 19 );
stopSe( spep_2 + 158, se_11841, 19 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 230, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
--entryFade( spep_2 + 212, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+216;

------------------------------------------------------
-- 落書きアップ絵
------------------------------------------------------
-- ** エフェクト等 ** --
sine = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sine, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, sine, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, sine, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, sine, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sine, 0 );
setEffRotateKey( spep_3 + 90, sine, 0 );
setEffAlphaKey( spep_3 + 0, sine, 255 );
setEffAlphaKey( spep_3 + 90, sine, 255 );

-- ** エフェクト等 ** --
sine_f = entryEffect( spep_3 + 0, 155079, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, sine_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 90, sine_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, sine_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 90, sine_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, sine_f, 0 );
setEffRotateKey( spep_3 + 90, sine_f, 0 );
setEffAlphaKey( spep_3 + 0, sine_f, 255 );
setEffAlphaKey( spep_3 + 90, sine_f, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_3 + 0,  906, 86, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen1, 86, 20 );
setEffMoveKey( spep_3 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen1, 1.25, 1.25 );
setEffScaleKey( spep_3 + 86, shuchusen1, 1.25, 1.25 );

setEffRotateKey( spep_3 + 0, shuchusen1, 180 );
setEffRotateKey( spep_3 + 86, shuchusen1, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 84, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 85, shuchusen1, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen1, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
--setDisp( spep_3 + 90, 1, 0 );

changeAnime( spep_3 + 0, 1, 100 );

setMoveKey( spep_3 + 0, 1, -21, -28 , 0 );
setMoveKey( spep_3 + 2, 1, -23.2, -31 , 0 );
setMoveKey( spep_3 + 4, 1, -25.1, -33.5 , 0 );
setMoveKey( spep_3 + 6, 1, -26.7, -35.6 , 0 );
setMoveKey( spep_3 + 8, 1, -28, -37.3 , 0 );
setMoveKey( spep_3 + 10, 1, -29, -38.7 , 0 );
setMoveKey( spep_3 + 12, 1, -29.9, -39.9 , 0 );
setMoveKey( spep_3 + 14, 1, -30.5, -40.7 , 0 );
setMoveKey( spep_3 + 16, 1, -31, -41.4 , 0 );
setMoveKey( spep_3 + 18, 1, -31.4, -41.9 , 0 );
setMoveKey( spep_3 + 20, 1, -31.7, -42.3 , 0 );
setMoveKey( spep_3 + 22, 1, -31.9, -42.6 , 0 );
setMoveKey( spep_3 + 24, 1, -32, -42.7 , 0 );
setMoveKey( spep_3 + 26, 1, -32.1, -42.8 , 0 );
setMoveKey( spep_3 -5 + 90, 1, -32.1, -42.8 , 0 );

setScaleKey( spep_3 + 0, 1, 1.66, 1.66 );
setScaleKey( spep_3 + 2, 1, 1.84, 1.84 );
setScaleKey( spep_3 + 4, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 6, 1, 2.11, 2.11 );
setScaleKey( spep_3 + 8, 1, 2.21, 2.21 );
setScaleKey( spep_3 + 10, 1, 2.3, 2.3 );
setScaleKey( spep_3 + 12, 1, 2.36, 2.36 );
setScaleKey( spep_3 + 14, 1, 2.41, 2.41 );
setScaleKey( spep_3 + 16, 1, 2.45, 2.45 );
setScaleKey( spep_3 + 18, 1, 2.49, 2.49 );
setScaleKey( spep_3 + 20, 1, 2.51, 2.51 );
setScaleKey( spep_3 + 22, 1, 2.52, 2.52 );
setScaleKey( spep_3 + 24, 1, 2.53, 2.53 );
setScaleKey( spep_3 + 26, 1, 2.54, 2.54 );
setScaleKey( spep_3-5 + 90, 1, 2.54, 2.54 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -5+ 90, 1, 0 );

--SE
playSe( spep_3 + 0, 1012 );
playSe( spep_3 + 0, 10 );
setSeVolume( spep_3 + 0, 10, 71 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
--entryFade( spep_3 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_x=spep_3+86;

------------------------------------------------------
-- ペンを持つ
------------------------------------------------------
-- ** エフェクト等 ** --
penn_f = entryEffect( spep_x + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_x + 0, penn_f, 0, 0, 0 );
setEffMoveKey( spep_x + 64, penn_f, 0, 0, 0 );
setEffScaleKey( spep_x + 0, penn_f, 1.0, 1.0 );
setEffScaleKey( spep_x + 64, penn_f, 1.0, 1.0 );
setEffRotateKey( spep_x + 0, penn_f, 0 );
setEffRotateKey( spep_x + 64, penn_f, 0 );
setEffAlphaKey( spep_x + 0, penn_f, 255 );
setEffAlphaKey( spep_x + 64, penn_f, 255 );

-- ** エフェクト等 ** --
penn_b = entryEffect( spep_x + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_x + 0, penn_b, 0, 0, 0 );
setEffMoveKey( spep_x + 64, penn_b, 0, 0, 0 );
setEffScaleKey( spep_x + 0, penn_b, 1.0, 1.0 );
setEffScaleKey( spep_x + 64, penn_b, 1.0, 1.0 );
setEffRotateKey( spep_x + 0, penn_b, 0 );
setEffRotateKey( spep_x + 64, penn_b, 0 );
setEffAlphaKey( spep_x + 0, penn_b, 255 );
setEffAlphaKey( spep_x + 64, penn_b, 255 );

--文字エントリー
ctbikuri = entryEffectLife( spep_x-3 + 28,  10001, 36, 0x100, -1, 0, -200.1, 172.1 );
setEffMoveKey( spep_x-3 + 28, ctbikuri, -200.1, 172.1 , 0 );
setEffMoveKey( spep_x-3 + 30, ctbikuri, -198.5, 156.2 , 0 );
setEffMoveKey( spep_x-3 + 32, ctbikuri, -190.8, 156.3 , 0 );
setEffMoveKey( spep_x-3 + 34, ctbikuri, -203, 168.1 , 0 );
setEffMoveKey( spep_x-3 + 36, ctbikuri, -212.3, 172.5 , 0 );
setEffMoveKey( spep_x-3 + 38, ctbikuri, -214.3, 173.2 , 0 );
setEffMoveKey( spep_x-3 + 40, ctbikuri, -215.9, 173.8 , 0 );
setEffMoveKey( spep_x-3 + 42, ctbikuri, -217.2, 174.1 , 0 );
setEffMoveKey( spep_x-3 + 44, ctbikuri, -218.2, 174.4 , 0 );
setEffMoveKey( spep_x-3 + 64, ctbikuri, -218.2, 174.4 , 0 );

setEffScaleKey( spep_x-3 + 28, ctbikuri, 2.72, 2.72 );
setEffScaleKey( spep_x-3 + 30, ctbikuri, 2.39, 2.4 );
setEffScaleKey( spep_x-3 + 32, ctbikuri, 2.41, 2.41 );
setEffScaleKey( spep_x-3 + 34, ctbikuri, 2.42, 2.42 );
setEffScaleKey( spep_x-3 + 36, ctbikuri, 2.77, 2.78 );
setEffScaleKey( spep_x-3 + 38, ctbikuri, 2.79, 2.79 );
setEffScaleKey( spep_x-3 + 40, ctbikuri, 2.79, 2.8 );
setEffScaleKey( spep_x-3 + 42, ctbikuri, 2.8, 2.8 );
setEffScaleKey( spep_x-3 + 44, ctbikuri, 2.81, 2.81 );
setEffScaleKey( spep_x-3 + 64, ctbikuri, 2.81, 2.81 );

setEffRotateKey( spep_x-3 + 28, ctbikuri, -17.8 );
setEffRotateKey( spep_x-3 + 64, ctbikuri, -17.8 );

setEffAlphaKey( spep_x-3 + 28, ctbikuri, 255 );
setEffAlphaKey( spep_x-3 + 64, ctbikuri, 255 );

--敵の動き
setDisp( spep_x + 0, 1, 1 );
setDisp( spep_x -3 + 64, 1, 0 );

changeAnime( spep_x + 0, 1, 2 );
changeAnime( spep_x-3 + 28, 1, 18 );

--setMoveKey( spep_x + 0, 1, 86.1, 56.5 , 0 );
--setMoveKey( spep_x-3 + 2, 1, 86.1, -56.5 , 0 );
setMoveKey( spep_x + 0, 1, -103.5, -58.6 , 0 );
setMoveKey( spep_x-3 + 6, 1, -116.5, -60.4 , 0 );
setMoveKey( spep_x-3 + 8, 1, -127.3, -61.9 , 0 );
setMoveKey( spep_x-3 + 10, 1, -136.4, -63.2 , 0 );
setMoveKey( spep_x-3 + 12, 1, -144.3, -64.3 , 0 );
setMoveKey( spep_x-3 + 14, 1, -151.2, -65.4 , 0 );
setMoveKey( spep_x-3 + 16, 1, -157.3, -66.4 , 0 );
setMoveKey( spep_x-3 + 18, 1, -162.8, -67.1 , 0 );
setMoveKey( spep_x-3 + 20, 1, -167.8, -67.9 , 0 );
setMoveKey( spep_x-3 + 22, 1, -172.3, -68.7 , 0 );
setMoveKey( spep_x-3 + 24, 1, -176.3, -69.3 , 0 );
setMoveKey( spep_x-3 + 27, 1, -179.9, -69.9 , 0 );
setMoveKey( spep_x-3 + 28, 1, -198, -97.5 , 0 );
setMoveKey( spep_x-3 + 30, 1, -201, -98.1 , 0 );
setMoveKey( spep_x-3 + 32, 1, -203.8, -98.8 , 0 );
setMoveKey( spep_x-3 + 34, 1, -206.2, -99.3 , 0 );
setMoveKey( spep_x-3 + 36, 1, -208.4, -99.7 , 0 );
setMoveKey( spep_x-3 + 38, 1, -210.3, -100.1 , 0 );
setMoveKey( spep_x-3 + 40, 1, -211.9, -100.5 , 0 );
setMoveKey( spep_x-3 + 42, 1, -213.2, -100.8 , 0 );
setMoveKey( spep_x-3 + 44, 1, -214.2, -101.1 , 0 );
setMoveKey( spep_x-3 + 64, 1, -214.2, -101.1 , 0 );

setScaleKey( spep_x + 0, 1, 1.52, 1.52 );
--setScaleKey( spep_x-3 + 2, 1, 1.52, 1.52 );
setScaleKey( spep_x-3 + 4, 1, 1.6, 1.6 );
setScaleKey( spep_x-3 + 6, 1, 1.66, 1.66 );
setScaleKey( spep_x-3 + 8, 1, 1.7, 1.7 );
setScaleKey( spep_x-3 + 10, 1, 1.74, 1.74 );
setScaleKey( spep_x-3 + 12, 1, 1.77, 1.77 );
setScaleKey( spep_x-3 + 14, 1, 1.79, 1.79 );
setScaleKey( spep_x-3 + 16, 1, 1.82, 1.82 );
setScaleKey( spep_x-3 + 18, 1, 1.84, 1.84 );
setScaleKey( spep_x-3 + 20, 1, 1.85, 1.86 );
setScaleKey( spep_x-3 + 22, 1, 1.87, 1.87 );
setScaleKey( spep_x-3 + 24, 1, 1.89, 1.89 );
setScaleKey( spep_x-3 + 27, 1, 1.9, 1.9 );
setScaleKey( spep_x-3 + 28, 1, 1.91, 1.92 );
setScaleKey( spep_x-3 + 30, 1, 1.93, 1.93 );
setScaleKey( spep_x-3 + 32, 1, 1.94, 1.94 );
setScaleKey( spep_x-3 + 34, 1, 1.94, 1.95 );
setScaleKey( spep_x-3 + 36, 1, 1.95, 1.95 );
setScaleKey( spep_x-3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_x-3 + 40, 1, 1.97, 1.97 );
setScaleKey( spep_x-3 + 42, 1, 1.97, 1.97 );
setScaleKey( spep_x-3 + 44, 1, 1.98, 1.98 );
setScaleKey( spep_x-3 + 64, 1, 1.98, 1.98 );

setRotateKey( spep_x + 0, 1, 0 );
setRotateKey( spep_x-3 + 64, 1, 0 );

--SE
playSe( spep_x , 1232 );
setSeVolume( spep_x , 1232, 79 );
se_0048 = playSe( spep_x + 28, 48 );

stopSe( spep_x + 38, se_0048, 26 );

--白フェード
entryFade( spep_x + 56, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_x+64;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--白フェード
entryFade( spep_4 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- 衝撃波
------------------------------------------------------

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 52, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 52, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 52, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 52, hit_b, 255 );

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 52, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 52, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 52, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 52, hit_f, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );

changeAnime( spep_5 + 0, 1, 102 );
changeAnime( spep_5-3 + 26, 1, 107 );

setMoveKey( spep_5 + 0, 1, 137.3, 14.4 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 137.2, 14.2 , 0 );
setMoveKey( spep_5-3 + 25, 1, 137.2, 14.2 , 0 );
setMoveKey( spep_5-3 + 26, 1, 202.1, -20.9 , 0 );
setMoveKey( spep_5-3 + 28, 1, 235.3, -77.8 , 0 );
setMoveKey( spep_5-3 + 30, 1, 318.9, -88.5 , 0 );
setMoveKey( spep_5-3 + 32, 1, 359.6, -124 , 0 );
setMoveKey( spep_5-3 + 34, 1, 400.4, -159.5 , 0 );
setMoveKey( spep_5-3 + 36, 1, 441.1, -195.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, 481.8, -230.7 , 0 );
setMoveKey( spep_5-3 + 40, 1, 522.5, -266.1 , 0 );
setMoveKey( spep_5-3 + 42, 1, 563.3, -301.7 , 0 );
setMoveKey( spep_5-3 + 44, 1, 604, -337.3 , 0 );
setMoveKey( spep_5-3 + 46, 1, 644.7, -372.8 , 0 );
setMoveKey( spep_5-3 + 48, 1, 685.4, -408.3 , 0 );
setMoveKey( spep_5-3 + 50, 1, 726.1, -443.9 , 0 );
setMoveKey( spep_5-3 + 52, 1, 767, -479.4 , 0 );
setMoveKey( spep_5 + 51, 1, 807.6, -514.9 , 0 );

setScaleKey( spep_5 + 0, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 25, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 26, 1, 0.71, 0.71 );
setScaleKey( spep_5-3 + 28, 1, 0.85, 0.85 );
setScaleKey( spep_5-3 + 30, 1, 0.98, 0.98 );
setScaleKey( spep_5-3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_5-3 + 34, 1, 1.24, 1.24 );
setScaleKey( spep_5-3 + 36, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 38, 1, 1.5, 1.5 );
setScaleKey( spep_5-3 + 40, 1, 1.63, 1.63 );
setScaleKey( spep_5-3 + 42, 1, 1.76, 1.76 );
setScaleKey( spep_5-3 + 44, 1, 1.89, 1.89 );
setScaleKey( spep_5-3 + 46, 1, 2.02, 2.02 );
setScaleKey( spep_5-3 + 48, 1, 2.16, 2.16 );
setScaleKey( spep_5-3 + 50, 1, 2.29, 2.29 );
setScaleKey( spep_5-3 + 52, 1, 2.42, 2.42 );
setScaleKey( spep_5 + 51, 1, 2.55, 2.55 );


setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 25, 1, 0 );
setRotateKey( spep_5-3 + 26, 1, -17 );
setRotateKey( spep_5 + 51, 1, -17 );

--SE
playSe( spep_5 + 19, 1059 );
setSeVolume( spep_5 + 19, 1059, 89 );
se_1184 = playSe( spep_5 + 22, 1184 );
setSeVolume( spep_5 + 22, 1184, 63 );
playSe( spep_5 + 22, 1033 );
setSeVolume( spep_5 + 22, 1033, 71 );
playSe( spep_5 + 23, 1182 );

stopSe( spep_5 + 37, se_1184, 18 );


-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 52;
------------------------------------------------------
-- ガ
------------------------------------------------------
-- ** エフェクト等 ** --
bg = entryEffect( spep_6 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 220, bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 220, bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, bg, 0 );
setEffRotateKey( spep_6 + 220, bg, 0 );
setEffAlphaKey( spep_6 + 0, bg, 255 );
setEffAlphaKey( spep_6 + 220, bg, 255 );


--敵の動き
setMoveKey( spep_6 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_6 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_6 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_6 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_6 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_6 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_6 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_6 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_6 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_6 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_6 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_6 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_6 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_6 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_6 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_6 + 0, 1, 0-z );
setRotateKey( spep_6 + 2, 1, 105-z );
setRotateKey( spep_6 + 4, 1, 240-z );
setRotateKey( spep_6 + 6, 1, 405-z );
setRotateKey( spep_6 + 8, 1, 600-z );
setRotateKey( spep_6 + 10, 1, 825-z );
setRotateKey( spep_6 + 12, 1, 1080-z );
setRotateKey( spep_6 + 110, 1, 1080-z );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_6 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_6 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_6 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_6 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_6 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_6 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_6 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_6 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_6 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_6 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_6 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_6 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_6 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_6 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen4, 0 );
setEffRotateKey( spep_6 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_6 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_6 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_6 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_6 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_6 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_6 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_6 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_6 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_6 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_6 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_6 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_6 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_6 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_6 + 14, shuchusen5, 0 );
setEffRotateKey( spep_6 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_6 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_6 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_6 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_6 + 14, ctga, 14, 20 );

setEffMoveKey( spep_6 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_6 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_6 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_6 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_6 + 14, ctga, -10.9 );
setEffRotateKey( spep_6 + 15, ctga, -10.9 );
setEffRotateKey( spep_6 + 16, ctga, -14.9 );
setEffRotateKey( spep_6 + 17, ctga, -14.9 );
setEffRotateKey( spep_6 + 18, ctga, -10.9 );
setEffRotateKey( spep_6 + 19, ctga, -10.9 );
setEffRotateKey( spep_6 + 20, ctga, -14.9 );
setEffRotateKey( spep_6 + 21, ctga, -14.9 );
setEffRotateKey( spep_6 + 22, ctga, -10.9 );
setEffRotateKey( spep_6 + 23, ctga, -10.9 );
setEffRotateKey( spep_6 + 24, ctga, -14.9 );
setEffRotateKey( spep_6 + 25, ctga, -14.9 );
setEffRotateKey( spep_6 + 26, ctga, -10.9 );
setEffRotateKey( spep_6 + 27, ctga, -10.9 );
setEffRotateKey( spep_6 + 28, ctga, -14.9 );
setEffRotateKey( spep_6 + 100, ctga, -14.9 );

setEffAlphaKey( spep_6 + 14, ctga, 255 );
setEffAlphaKey( spep_6 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_6 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_6 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_6 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_6 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_6 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_6 + 2, hibiware, 0 );
setEffRotateKey( spep_6 + 100, hibiware, 0 );

setEffAlphaKey( spep_6 + 2, hibiware, 0 );
setEffAlphaKey( spep_6 + 13, hibiware, 0 );
setEffAlphaKey( spep_6 + 14, hibiware, 255 );
setEffAlphaKey( spep_6 + 100, hibiware, 255 );

--SE
playSe( spep_6 + 0, 1023 );
playSe( spep_6 + 14, 1054 );

--終わり
dealDamage( spep_6  );
endPhase( spep_6 + 98 );
end