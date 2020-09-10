--1019490:グレートサイヤマン2号/1号_ジャスティスイーグル
--sp_effect_a1_00231

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
SP_01=	155540	;--	構える
SP_02=	155542	;--	格闘～フィニッシュ
SP_03=	155544	;--	格闘～フィニッシュ
SP_04=	155545	;--	格闘～フィニッシュ

--エフェクト(てき)
SP_01x=	155541	;--	構える	(敵)
SP_02x=	155543	;--	格闘～フィニッシュ	(敵)
SP_03x=	155544	;--	格闘～フィニッシュ	
SP_04x=	155545	;--	格闘～フィニッシュ	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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
setAlphaKey( 0, 1, 255 );

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
-- 構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 90, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 90, tame, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 92, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 100 -200, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  100 -200,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  100 -200,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, 1.07, 1.07 );

-- ** 音 ** --
playSe( spep_0 + 12, 1018 );--気溜め

--白フェード
entryFade( spep_0 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+90;
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
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 格闘～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 160, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 160, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 160, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 160, fighting_b, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_n, 0 );
setEffRotateKey( spep_2 + 160, fighting_n, 0 );
setEffAlphaKey( spep_2 + 0, fighting_n, 255 );
setEffAlphaKey( spep_2 + 160, fighting_n, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 158, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2-3 + 14, 1, 104 );
changeAnime( spep_2-3 + 26, 1, 106 );
changeAnime( spep_2-3 + 74 +2, 1, 108 );
changeAnime( spep_2-3 + 114, 1, 106 );

setMoveKey( spep_2 + 0, 1, -194.6, -12 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -176.7, -12 , 0 );
setMoveKey( spep_2-3 + 4, 1, -158.8, -12 , 0 );
setMoveKey( spep_2-3 + 6, 1, -140.9, -12 , 0 );
setMoveKey( spep_2-3 + 8, 1, -123, -12 , 0 );
setMoveKey( spep_2-3 + 10, 1, -105.1, -12 , 0 );
setMoveKey( spep_2-3 + 13, 1, -87.2, -12 , 0 );
setMoveKey( spep_2-3 + 14, 1, -69.3, -12 , 0 );
setMoveKey( spep_2-3 + 16, 1, -51.4, -12 , 0 );
setMoveKey( spep_2-3 + 18, 1, -33.5, -12 , 0 );
setMoveKey( spep_2-3 + 20, 1, -15.6, -12 , 0 );
setMoveKey( spep_2-3 + 22, 1, 2.4, -12 , 0 );
setMoveKey( spep_2-3 + 25, 1, 3.3, -12 , 0 );
setMoveKey( spep_2-3 + 26, 1, -62.1, -26.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, -46, -21.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, -44.9, -16.2 , 0 );
setMoveKey( spep_2-3 + 32, 1, -30.6, -6.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, -33.3, -13.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, -25.2, -18.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, -26.3, -10.5 , 0 );
setMoveKey( spep_2-3 + 40, 1, -22, -7.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, -18.2, -5.4 , 0 );
setMoveKey( spep_2-3 + 44, 1, -18.2, -8.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, -18.4, -11.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, -14.6, -9.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, -10.9, -7.6 , 0 );
setMoveKey( spep_2-3 + 52, 1, -9.7, -8.3 , 0 );
setMoveKey( spep_2-3 + 54, 1, -8.7, -9 , 0 );
setMoveKey( spep_2-3 + 56, 1, -7.1, -7.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, -5.6, -5.3 , 0 );
setMoveKey( spep_2-3 + 60, 1, -4.6, -5.2 , 0 );
setMoveKey( spep_2-3 + 62, 1, -3.6, -5.1 , 0 );
setMoveKey( spep_2-3 + 64, 1, -2.8, -5.2 , 0 );
setMoveKey( spep_2-3 + 66, 1, -2, -5.2 , 0 );
setMoveKey( spep_2-3 + 68, 1, -1.4, -5.2 , 0 );
setMoveKey( spep_2-3 + 70, 1, -0.8, -5.3 , 0 );
setMoveKey( spep_2-3 + 73, 1, -0.3, -5.4 , 0 );
setMoveKey( spep_2-3 + 74, 1, 21.6, -6.8 , 0 );
setMoveKey( spep_2-3 + 76, 1, 33, -0.9 , 0 );
setMoveKey( spep_2-3 + 78, 1, 33, -8.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 44.5, -14 , 0 );
setMoveKey( spep_2-3 + 82, 1, 40, -6 , 0 );
setMoveKey( spep_2-3 + 84, 1, 40.6, -7.8 , 0 );
setMoveKey( spep_2-3 + 86, 1, 40.7, -9.6 , 0 );
setMoveKey( spep_2-3 + 88, 1, 45.2, -12.1 , 0 );
setMoveKey( spep_2-3 + 90, 1, 49.3, -14.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 53.3, -17.1 , 0 );
setMoveKey( spep_2-3 + 94, 1, 54.1, -13.1 , 0 );
setMoveKey( spep_2-3 + 96, 1, 54.7, -9.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 55.2, -5.2 , 0 );
setMoveKey( spep_2-3 + 100, 1, 55.5, -1.3 , 0 );
setMoveKey( spep_2-3 + 102, 1, 56.3, -1.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, 57, -1.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 57.6, -1.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 58.2, -1.5 , 0 );
setMoveKey( spep_2-3 + 110, 1, 58.6, -1.6 , 0 );
setMoveKey( spep_2-3 + 113, 1, 59, -1.7 , 0 );
setMoveKey( spep_2-3 + 114, 1, 43.5, 14.3 , 0 );
setMoveKey( spep_2-3 + 116, 1, 41, 19.4 , 0 );
setMoveKey( spep_2-3 + 118, 1, 244.7, 174.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, 420.1, 293.3 , 0 );
setMoveKey( spep_2-3 + 122, 1, 517.4, 398.5 , 0 );
setMoveKey( spep_2-3 + 124, 1, 603, 445.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 670.8, 509.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, 715.7, 553.6 , 0 );
setMoveKey( spep_2-3 + 130, 1, 759.4, 585.8 , 0 );
setMoveKey( spep_2-3 + 132, 1, 788.6, 609.1 , 0 );
setMoveKey( spep_2-3 + 134, 1, 809.2, 623.6 , 0 );
setMoveKey( spep_2-3 + 136, 1, 830.6, 634.1 , 0 );
setMoveKey( spep_2-3 + 138, 1, 843.8, 645.5 , 0 );
setMoveKey( spep_2-3 + 140, 1, 854, 654.5 , 0 );
setMoveKey( spep_2-3 + 142, 1, 865, 662 , 0 );
setMoveKey( spep_2-3 + 144, 1, 871.6, 667.4 , 0 );
setMoveKey( spep_2-3 + 146, 1, 877.1, 672.1 , 0 );
setMoveKey( spep_2-3 + 148, 1, 881.9, 676.2 , 0 );
setMoveKey( spep_2-3 + 150, 1, 883.1, 676.3 , 0 );
setMoveKey( spep_2-3 + 152, 1, 884.3, 676.4 , 0 );
setMoveKey( spep_2-3 + 154, 1, 884.3, 675.1 , 0 );
setMoveKey( spep_2-3 + 156, 1, 884.2, 673.9 , 0 );
setMoveKey( spep_2-3 + 158, 1, 884.1, 672.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 113, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 114, 1, 1.26, 1.26 );
setScaleKey( spep_2-3 + 116, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 118, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 120, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 122, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 124, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 158, 1, 1.24, 1.24 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 25, 1, 0 );
setRotateKey( spep_2-3 + 26, 1, -55 );
setRotateKey( spep_2-3 + 28, 1, -54.7 );
setRotateKey( spep_2-3 + 30, 1, -53.4 );
setRotateKey( spep_2-3 + 32, 1, -50.6 );
setRotateKey( spep_2-3 + 34, 1, -48 );
setRotateKey( spep_2-3 + 36, 1, -46.4 );
setRotateKey( spep_2-3 + 38, 1, -45.1 );
setRotateKey( spep_2-3 + 40, 1, -44 );
setRotateKey( spep_2-3 + 42, 1, -43 );
setRotateKey( spep_2-3 + 44, 1, -42.2 );
setRotateKey( spep_2-3 + 46, 1, -41.4 );
setRotateKey( spep_2-3 + 48, 1, -40.8 );
setRotateKey( spep_2-3 + 50, 1, -40.2 );
setRotateKey( spep_2-3 + 52, 1, -39.6 );
setRotateKey( spep_2-3 + 54, 1, -39.2 );
setRotateKey( spep_2-3 + 56, 1, -38.7 );
setRotateKey( spep_2-3 + 58, 1, -38.4 );
setRotateKey( spep_2-3 + 60, 1, -38.1 );
setRotateKey( spep_2-3 + 62, 1, -37.8 );
setRotateKey( spep_2-3 + 64, 1, -37.5 );
setRotateKey( spep_2-3 + 66, 1, -37.4 );
setRotateKey( spep_2-3 + 68, 1, -37.2 );
setRotateKey( spep_2-3 + 70, 1, -37.1 );
setRotateKey( spep_2-3 + 73 +2, 1, -37 );
setRotateKey( spep_2-3 + 74 +2, 1, 1 );
--setRotateKey( spep_2-3 + 76, 1, 1.1 );
setRotateKey( spep_2-3 + 78, 1, 1.6 );
setRotateKey( spep_2-3 + 80, 1, 2.4 );
setRotateKey( spep_2-3 + 82, 1, 2.9 );
setRotateKey( spep_2-3 + 84, 1, 3.2 );
setRotateKey( spep_2-3 + 86, 1, 3.5 );
setRotateKey( spep_2-3 + 88, 1, 3.8 );
setRotateKey( spep_2-3 + 90, 1, 4 );
setRotateKey( spep_2-3 + 92, 1, 4.2 );
setRotateKey( spep_2-3 + 94, 1, 4.3 );
setRotateKey( spep_2-3 + 96, 1, 4.5 );
setRotateKey( spep_2-3 + 98, 1, 4.6 );
setRotateKey( spep_2-3 + 100, 1, 4.7 );
setRotateKey( spep_2-3 + 102, 1, 4.8 );
setRotateKey( spep_2-3 + 104, 1, 4.8 );
setRotateKey( spep_2-3 + 106, 1, 4.9 );
setRotateKey( spep_2-3 + 108, 1, 4.9 );
setRotateKey( spep_2-3 + 110, 1, 5 );
setRotateKey( spep_2-3 + 113, 1, 5 );
setRotateKey( spep_2-3 + 114, 1, -45 );
setRotateKey( spep_2-3 + 116, 1, -44.6 );
setRotateKey( spep_2-3 + 118, 1, -33.7 );
setRotateKey( spep_2-3 + 120, 1, -22.5 );
setRotateKey( spep_2-3 + 122, 1, -14.2 );
setRotateKey( spep_2-3 + 124, 1, -8 );
setRotateKey( spep_2-3 + 126, 1, -3.4 );
setRotateKey( spep_2-3 + 128, 1, 0.1 );
setRotateKey( spep_2-3 + 130, 1, 2.8 );
setRotateKey( spep_2-3 + 132, 1, 4.8 );
setRotateKey( spep_2-3 + 134, 1, 6.4 );
setRotateKey( spep_2-3 + 136, 1, 7.6 );
setRotateKey( spep_2-3 + 138, 1, 8.5 );
setRotateKey( spep_2-3 + 140, 1, 9.2 );
setRotateKey( spep_2-3 + 142, 1, 9.8 );
setRotateKey( spep_2-3 + 144, 1, 10.3 );
setRotateKey( spep_2-3 + 146, 1, 10.6 );
setRotateKey( spep_2-3 + 148, 1, 11 );
setRotateKey( spep_2-3 + 158, 1, 11 );

--SE
playSe( spep_2 + 17, 1003 );
setSeVolume( spep_2 + 17, 1003, 79 );
playSe( spep_2 + 24, 1007 );
playSe( spep_2 + 24, 1000 );
setSeVolume( spep_2 + 24, 1000, 71 );
playSe( spep_2 + 26, 1001 );
setSeVolume( spep_2 + 26, 1001, 71 );
playSe( spep_2 + 26, 1110 );
setSeVolume( spep_2 + 26, 1110, 79 );
playSe( spep_2 + 74, 1013 );
setSeVolume( spep_2 + 74, 1013, 79 );
playSe( spep_2 + 76, 1009 );
playSe( spep_2 + 108, 1189 );
playSe( spep_2 + 112, 1009 );
playSe( spep_2 + 112, 1000 );
playSe( spep_2 + 114, 1110 );
setSeVolume( spep_2 + 114, 1110, 89 );
playSe( spep_2 + 136, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 162, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_2 + 152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 160;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );
setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 110, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.02, 0.02 );
--setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
--setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 110, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_3 + 0, 154080, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, bg, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, bg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bg, 0 );
setEffRotateKey( spep_3 + 116, bg, 0 );
setEffAlphaKey( spep_3 + 0, bg, 255 );
setEffAlphaKey( spep_3 + 116, bg, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen4, 0 );
setEffRotateKey( spep_3 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_3 + 14,  1657, 86 +10, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100 +10, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_3 + 100 +10, shuchusen5, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen5, 0 );
setEffRotateKey( spep_3 + 100 +10, shuchusen5, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 100 +10, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86 +10, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100 +10, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100 +10, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100 +10, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100 +10, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100 +10, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100 +10, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100 +10, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100 +10, hibiware, 255 );

--SE
playSe( spep_3 + 14, 1054 );
setSeVolume( spep_3 + 14, 1054, 126 );

--終わり
dealDamage( spep_3 +10 );
endPhase( spep_3 + 100 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構える
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 90, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 90, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 90, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 90, tame, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 92, 0,  0, 0, 0, 180 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +12, 190006, 72, 0x100, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +12,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +84,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +12, ctgogo, 0 );
setEffAlphaKey( spep_0 + 13, ctgogo, 255 );
setEffAlphaKey( spep_0 + 14, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 80, ctgogo, 191 );
setEffAlphaKey( spep_0 + 82, ctgogo, 112 );
setEffAlphaKey( spep_0 + 84, ctgogo, 64 );

setEffRotateKey(  spep_0 +12,  ctgogo,  0);
setEffRotateKey(  spep_0 +84,  ctgogo,  0);

setEffScaleKey(  spep_0 +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +84,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_0 + 12, 1018 );--気溜め

--白フェード
entryFade( spep_0 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+90;
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
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 格闘～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_f, 0 );
setEffRotateKey( spep_2 + 160, fighting_f, 0 );
setEffAlphaKey( spep_2 + 0, fighting_f, 255 );
setEffAlphaKey( spep_2 + 160, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_b, 0 );
setEffRotateKey( spep_2 + 160, fighting_b, 0 );
setEffAlphaKey( spep_2 + 0, fighting_b, 255 );
setEffAlphaKey( spep_2 + 160, fighting_b, 255 );

-- ** エフェクト等 ** --
fighting_n = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, fighting_n, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, fighting_n, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, fighting_n, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, fighting_n, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, fighting_n, 0 );
setEffRotateKey( spep_2 + 160, fighting_n, 0 );
setEffAlphaKey( spep_2 + 0, fighting_n, 255 );
setEffAlphaKey( spep_2 + 160, fighting_n, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2-3 + 158, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2-3 + 14, 1, 104 );
changeAnime( spep_2-3 + 26, 1, 106 );
changeAnime( spep_2-3 + 74 +2, 1, 108 );
changeAnime( spep_2-3 + 114, 1, 106 );

setMoveKey( spep_2 + 0, 1, -194.6, -12 , 0 );
--setMoveKey( spep_2-3 + 2, 1, -176.7, -12 , 0 );
setMoveKey( spep_2-3 + 4, 1, -158.8, -12 , 0 );
setMoveKey( spep_2-3 + 6, 1, -140.9, -12 , 0 );
setMoveKey( spep_2-3 + 8, 1, -123, -12 , 0 );
setMoveKey( spep_2-3 + 10, 1, -105.1, -12 , 0 );
setMoveKey( spep_2-3 + 13, 1, -87.2, -12 , 0 );
setMoveKey( spep_2-3 + 14, 1, -69.3, -12 , 0 );
setMoveKey( spep_2-3 + 16, 1, -51.4, -12 , 0 );
setMoveKey( spep_2-3 + 18, 1, -33.5, -12 , 0 );
setMoveKey( spep_2-3 + 20, 1, -15.6, -12 , 0 );
setMoveKey( spep_2-3 + 22, 1, 2.4, -12 , 0 );
setMoveKey( spep_2-3 + 25, 1, 3.3, -12 , 0 );
setMoveKey( spep_2-3 + 26, 1, -62.1, -26.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, -46, -21.3 , 0 );
setMoveKey( spep_2-3 + 30, 1, -44.9, -16.2 , 0 );
setMoveKey( spep_2-3 + 32, 1, -30.6, -6.5 , 0 );
setMoveKey( spep_2-3 + 34, 1, -33.3, -13.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, -25.2, -18.3 , 0 );
setMoveKey( spep_2-3 + 38, 1, -26.3, -10.5 , 0 );
setMoveKey( spep_2-3 + 40, 1, -22, -7.9 , 0 );
setMoveKey( spep_2-3 + 42, 1, -18.2, -5.4 , 0 );
setMoveKey( spep_2-3 + 44, 1, -18.2, -8.3 , 0 );
setMoveKey( spep_2-3 + 46, 1, -18.4, -11.2 , 0 );
setMoveKey( spep_2-3 + 48, 1, -14.6, -9.4 , 0 );
setMoveKey( spep_2-3 + 50, 1, -10.9, -7.6 , 0 );
setMoveKey( spep_2-3 + 52, 1, -9.7, -8.3 , 0 );
setMoveKey( spep_2-3 + 54, 1, -8.7, -9 , 0 );
setMoveKey( spep_2-3 + 56, 1, -7.1, -7.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, -5.6, -5.3 , 0 );
setMoveKey( spep_2-3 + 60, 1, -4.6, -5.2 , 0 );
setMoveKey( spep_2-3 + 62, 1, -3.6, -5.1 , 0 );
setMoveKey( spep_2-3 + 64, 1, -2.8, -5.2 , 0 );
setMoveKey( spep_2-3 + 66, 1, -2, -5.2 , 0 );
setMoveKey( spep_2-3 + 68, 1, -1.4, -5.2 , 0 );
setMoveKey( spep_2-3 + 70, 1, -0.8, -5.3 , 0 );
setMoveKey( spep_2-3 + 73, 1, -0.3, -5.4 , 0 );
setMoveKey( spep_2-3 + 74, 1, 21.6, -6.8 , 0 );
setMoveKey( spep_2-3 + 76, 1, 33, -0.9 , 0 );
setMoveKey( spep_2-3 + 78, 1, 33, -8.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 44.5, -14 , 0 );
setMoveKey( spep_2-3 + 82, 1, 40, -6 , 0 );
setMoveKey( spep_2-3 + 84, 1, 40.6, -7.8 , 0 );
setMoveKey( spep_2-3 + 86, 1, 40.7, -9.6 , 0 );
setMoveKey( spep_2-3 + 88, 1, 45.2, -12.1 , 0 );
setMoveKey( spep_2-3 + 90, 1, 49.3, -14.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 53.3, -17.1 , 0 );
setMoveKey( spep_2-3 + 94, 1, 54.1, -13.1 , 0 );
setMoveKey( spep_2-3 + 96, 1, 54.7, -9.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 55.2, -5.2 , 0 );
setMoveKey( spep_2-3 + 100, 1, 55.5, -1.3 , 0 );
setMoveKey( spep_2-3 + 102, 1, 56.3, -1.3 , 0 );
setMoveKey( spep_2-3 + 104, 1, 57, -1.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 57.6, -1.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 58.2, -1.5 , 0 );
setMoveKey( spep_2-3 + 110, 1, 58.6, -1.6 , 0 );
setMoveKey( spep_2-3 + 113, 1, 59, -1.7 , 0 );
setMoveKey( spep_2-3 + 114, 1, 43.5, 14.3 , 0 );
setMoveKey( spep_2-3 + 116, 1, 41, 19.4 , 0 );
setMoveKey( spep_2-3 + 118, 1, 244.7, 174.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, 420.1, 293.3 , 0 );
setMoveKey( spep_2-3 + 122, 1, 517.4, 398.5 , 0 );
setMoveKey( spep_2-3 + 124, 1, 603, 445.6 , 0 );
setMoveKey( spep_2-3 + 126, 1, 670.8, 509.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, 715.7, 553.6 , 0 );
setMoveKey( spep_2-3 + 130, 1, 759.4, 585.8 , 0 );
setMoveKey( spep_2-3 + 132, 1, 788.6, 609.1 , 0 );
setMoveKey( spep_2-3 + 134, 1, 809.2, 623.6 , 0 );
setMoveKey( spep_2-3 + 136, 1, 830.6, 634.1 , 0 );
setMoveKey( spep_2-3 + 138, 1, 843.8, 645.5 , 0 );
setMoveKey( spep_2-3 + 140, 1, 854, 654.5 , 0 );
setMoveKey( spep_2-3 + 142, 1, 865, 662 , 0 );
setMoveKey( spep_2-3 + 144, 1, 871.6, 667.4 , 0 );
setMoveKey( spep_2-3 + 146, 1, 877.1, 672.1 , 0 );
setMoveKey( spep_2-3 + 148, 1, 881.9, 676.2 , 0 );
setMoveKey( spep_2-3 + 150, 1, 883.1, 676.3 , 0 );
setMoveKey( spep_2-3 + 152, 1, 884.3, 676.4 , 0 );
setMoveKey( spep_2-3 + 154, 1, 884.3, 675.1 , 0 );
setMoveKey( spep_2-3 + 156, 1, 884.2, 673.9 , 0 );
setMoveKey( spep_2-3 + 158, 1, 884.1, 672.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 113, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 114, 1, 1.26, 1.26 );
setScaleKey( spep_2-3 + 116, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 118, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 120, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 122, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 124, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 158, 1, 1.24, 1.24 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 25, 1, 0 );
setRotateKey( spep_2-3 + 26, 1, -55 );
setRotateKey( spep_2-3 + 28, 1, -54.7 );
setRotateKey( spep_2-3 + 30, 1, -53.4 );
setRotateKey( spep_2-3 + 32, 1, -50.6 );
setRotateKey( spep_2-3 + 34, 1, -48 );
setRotateKey( spep_2-3 + 36, 1, -46.4 );
setRotateKey( spep_2-3 + 38, 1, -45.1 );
setRotateKey( spep_2-3 + 40, 1, -44 );
setRotateKey( spep_2-3 + 42, 1, -43 );
setRotateKey( spep_2-3 + 44, 1, -42.2 );
setRotateKey( spep_2-3 + 46, 1, -41.4 );
setRotateKey( spep_2-3 + 48, 1, -40.8 );
setRotateKey( spep_2-3 + 50, 1, -40.2 );
setRotateKey( spep_2-3 + 52, 1, -39.6 );
setRotateKey( spep_2-3 + 54, 1, -39.2 );
setRotateKey( spep_2-3 + 56, 1, -38.7 );
setRotateKey( spep_2-3 + 58, 1, -38.4 );
setRotateKey( spep_2-3 + 60, 1, -38.1 );
setRotateKey( spep_2-3 + 62, 1, -37.8 );
setRotateKey( spep_2-3 + 64, 1, -37.5 );
setRotateKey( spep_2-3 + 66, 1, -37.4 );
setRotateKey( spep_2-3 + 68, 1, -37.2 );
setRotateKey( spep_2-3 + 70, 1, -37.1 );
setRotateKey( spep_2-3 + 73 +2, 1, -37 );
setRotateKey( spep_2-3 + 74 +2, 1, 1 );
--setRotateKey( spep_2-3 + 76, 1, 1.1 );
setRotateKey( spep_2-3 + 78, 1, 1.6 );
setRotateKey( spep_2-3 + 80, 1, 2.4 );
setRotateKey( spep_2-3 + 82, 1, 2.9 );
setRotateKey( spep_2-3 + 84, 1, 3.2 );
setRotateKey( spep_2-3 + 86, 1, 3.5 );
setRotateKey( spep_2-3 + 88, 1, 3.8 );
setRotateKey( spep_2-3 + 90, 1, 4 );
setRotateKey( spep_2-3 + 92, 1, 4.2 );
setRotateKey( spep_2-3 + 94, 1, 4.3 );
setRotateKey( spep_2-3 + 96, 1, 4.5 );
setRotateKey( spep_2-3 + 98, 1, 4.6 );
setRotateKey( spep_2-3 + 100, 1, 4.7 );
setRotateKey( spep_2-3 + 102, 1, 4.8 );
setRotateKey( spep_2-3 + 104, 1, 4.8 );
setRotateKey( spep_2-3 + 106, 1, 4.9 );
setRotateKey( spep_2-3 + 108, 1, 4.9 );
setRotateKey( spep_2-3 + 110, 1, 5 );
setRotateKey( spep_2-3 + 113, 1, 5 );
setRotateKey( spep_2-3 + 114, 1, -45 );
setRotateKey( spep_2-3 + 116, 1, -44.6 );
setRotateKey( spep_2-3 + 118, 1, -33.7 );
setRotateKey( spep_2-3 + 120, 1, -22.5 );
setRotateKey( spep_2-3 + 122, 1, -14.2 );
setRotateKey( spep_2-3 + 124, 1, -8 );
setRotateKey( spep_2-3 + 126, 1, -3.4 );
setRotateKey( spep_2-3 + 128, 1, 0.1 );
setRotateKey( spep_2-3 + 130, 1, 2.8 );
setRotateKey( spep_2-3 + 132, 1, 4.8 );
setRotateKey( spep_2-3 + 134, 1, 6.4 );
setRotateKey( spep_2-3 + 136, 1, 7.6 );
setRotateKey( spep_2-3 + 138, 1, 8.5 );
setRotateKey( spep_2-3 + 140, 1, 9.2 );
setRotateKey( spep_2-3 + 142, 1, 9.8 );
setRotateKey( spep_2-3 + 144, 1, 10.3 );
setRotateKey( spep_2-3 + 146, 1, 10.6 );
setRotateKey( spep_2-3 + 148, 1, 11 );
setRotateKey( spep_2-3 + 158, 1, 11 );

--SE
playSe( spep_2 + 17, 1003 );
setSeVolume( spep_2 + 17, 1003, 79 );
playSe( spep_2 + 24, 1007 );
playSe( spep_2 + 24, 1000 );
setSeVolume( spep_2 + 24, 1000, 71 );
playSe( spep_2 + 26, 1001 );
setSeVolume( spep_2 + 26, 1001, 71 );
playSe( spep_2 + 26, 1110 );
setSeVolume( spep_2 + 26, 1110, 79 );
playSe( spep_2 + 74, 1013 );
setSeVolume( spep_2 + 74, 1013, 79 );
playSe( spep_2 + 76, 1009 );
playSe( spep_2 + 108, 1189 );
playSe( spep_2 + 112, 1009 );
playSe( spep_2 + 112, 1000 );
playSe( spep_2 + 114, 1110 );
setSeVolume( spep_2 + 114, 1110, 89 );
playSe( spep_2 + 136, 1072 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 162, 0,  0, 0, 0, 180 ); --くろ 背景

--白フェード
entryFade( spep_2 + 152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 160;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 107 );
setMoveKey( spep_3 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_3 + 110, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.02, 0.02 );
--setScaleKey( spep_3 -3 + 4, 1, 0.51, 0.51 );
--setScaleKey( spep_3 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_3 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_3 + 110, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 105 );
setRotateKey( spep_3 -3 + 4, 1, 240 );
setRotateKey( spep_3 -3 + 6, 1, 405 );
setRotateKey( spep_3 -3 + 8, 1, 600 );
setRotateKey( spep_3 -3 + 10, 1, 825 );
setRotateKey( spep_3 -3 + 12, 1, 1080 );
setRotateKey( spep_3 + 110, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_3 + 0, 154080, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, bg, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, bg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, bg, 0 );
setEffRotateKey( spep_3 + 116, bg, 0 );
setEffAlphaKey( spep_3 + 0, bg, 255 );
setEffAlphaKey( spep_3 + 116, bg, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_3 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_3 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen4, 0 );
setEffRotateKey( spep_3 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_3 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_3 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_3 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_3 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_3 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_3 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_3 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_3 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_3 + 14,  1657, 86 +10, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_3 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_3 + 100 +10, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_3 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_3 + 100 +10, shuchusen5, 1, 1 );

setEffRotateKey( spep_3 + 14, shuchusen5, 0 );
setEffRotateKey( spep_3 + 100 +10, shuchusen5, 0 );

setEffAlphaKey( spep_3 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_3 + 100 +10, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_3 + 14,  10005, 86 +10, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_3 + 14, ctga, 14, 20 );

setEffMoveKey( spep_3 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_3 + 100 +10, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_3 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_3 + 100 +10, ctga, 3.2, 3.2 );

setEffRotateKey( spep_3 + 14, ctga, -10.9 );
setEffRotateKey( spep_3 + 15, ctga, -10.9 );
setEffRotateKey( spep_3 + 16, ctga, -14.9 );
setEffRotateKey( spep_3 + 17, ctga, -14.9 );
setEffRotateKey( spep_3 + 18, ctga, -10.9 );
setEffRotateKey( spep_3 + 19, ctga, -10.9 );
setEffRotateKey( spep_3 + 20, ctga, -14.9 );
setEffRotateKey( spep_3 + 21, ctga, -14.9 );
setEffRotateKey( spep_3 + 22, ctga, -10.9 );
setEffRotateKey( spep_3 + 23, ctga, -10.9 );
setEffRotateKey( spep_3 + 24, ctga, -14.9 );
setEffRotateKey( spep_3 + 25, ctga, -14.9 );
setEffRotateKey( spep_3 + 26, ctga, -10.9 );
setEffRotateKey( spep_3 + 27, ctga, -10.9 );
setEffRotateKey( spep_3 + 28, ctga, -14.9 );
setEffRotateKey( spep_3 + 100 +10, ctga, -14.9 );

setEffAlphaKey( spep_3 + 14, ctga, 255 );
setEffAlphaKey( spep_3 + 100 +10, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_3 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_3 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_3 + 100 +10, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_3 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100 +10, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_3 + 2, hibiware, 0 );
setEffRotateKey( spep_3 + 100 +10, hibiware, 0 );

setEffAlphaKey( spep_3 + 2, hibiware, 0 );
setEffAlphaKey( spep_3 + 13, hibiware, 0 );
setEffAlphaKey( spep_3 + 14, hibiware, 255 );
setEffAlphaKey( spep_3 + 100 +10, hibiware, 255 );

--SE
playSe( spep_3 + 14, 1054 );
setSeVolume( spep_3 + 14, 1054, 126 );

--終わり
dealDamage( spep_3 +10 );
endPhase( spep_3 + 100 );
end