--1017660:超ベジータ/超トランクス_ファイナルバーストキャノン
--sp_effect_a1_00172

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
SP_01=	153778	;--	アイドリング
SP_02=	153779	;--	キック
SP_03=	153780	;--	瞬間移動
SP_04=	153781	;--	蹴り落とし
SP_05=	153782	;--	蹴り落としエフェクト
SP_06=	153783	;--	気溜め
SP_07=	153784	;--	発射
SP_08=	153785	;--	爆発
SP_09=	153786	;--	キックの集中線

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
-- アイドリング
------------------------------------------------------
--はじめの準備
spep_0= 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 60, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 60, idling, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 60 , 0, 0, 0, 0, 120 );  --黒　背景

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 18; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    --stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------

--文字エントリー
ctshun = entryEffectLife( spep_0 -3 + 32,  10011, 12, 0x100, -1, 0, 155.1, 271.1 );--シュンッ

setEffMoveKey( spep_0 -3 + 32, ctshun, 155.1, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctshun, 155.4, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctshun, 155.4, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctshun, 155.3, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctshun, 155.3, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctshun, 155.3, 271.2 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctshun, 155.2, 271.2 , 0 );

setEffScaleKey( spep_0 -3 + 32, ctshun, 1.05, 1.05 );
setEffScaleKey( spep_0 -3 + 34, ctshun, 2.02, 2.02 );
setEffScaleKey( spep_0 -3 + 36, ctshun, 1.68, 1.68 );
setEffScaleKey( spep_0 -3 + 38, ctshun, 1.33, 1.33 );
setEffScaleKey( spep_0 -3 + 40, ctshun, 1.3, 1.3 );
setEffScaleKey( spep_0 -3 + 42, ctshun, 1.27, 1.27 );
setEffScaleKey( spep_0 -3 + 44, ctshun, 1.24, 1.24 );

setEffRotateKey( spep_0 -3 + 32, ctshun, 29.7 );
setEffRotateKey( spep_0 -3 + 44, ctshun, 29.7 );

setEffAlphaKey( spep_0 -3 + 32, ctshun, 255 );
setEffAlphaKey( spep_0 -3 + 38, ctshun, 255 );
setEffAlphaKey( spep_0 -3 + 40, ctshun, 170 );
setEffAlphaKey( spep_0 -3 + 42, ctshun, 85 );
setEffAlphaKey( spep_0 -3 + 44, ctshun, 0 );

-- ** エフェクト等 ** --
teleportation = entryEffect( spep_0 + 29, 700,  0x100, -1, 0, 0, 0 ); --瞬間移動
setEffMoveKey( spep_0 + 29, teleportation, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, teleportation, 0, 0 , 0 );
setEffScaleKey( spep_0 + 29, teleportation, 1.7, 1.7 );
setEffScaleKey( spep_0 + 60, teleportation, 1.7, 1.7 );
setEffRotateKey( spep_0 + 29, teleportation, 0 );
setEffRotateKey( spep_0 + 60, teleportation, 0 );
setEffAlphaKey( spep_0 + 29, teleportation, 255 );
setEffAlphaKey( spep_0 + 60, teleportation, 255 );

--SE
playSe( spep_0+28, 1109);--瞬間移動

--白フェード
entryFade( spep_0 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の順
spep_1 = spep_0+60;
------------------------------------------------------
-- キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 150, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 150, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 150, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 150, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 150, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 150, kick_b, 255 );

-- ** エフェクト等 ** --
ryusen1 = entryEffect( spep_1 + 0, SP_09,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 150, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ryusen1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, ryusen1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 150, ryusen1, 0 );
setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 150, ryusen1, 255 );

-- ** エフェクト等 ** --
teleportation2 = entryEffect( spep_1 -3 + 8, 700,  0x100, -1, 0, 150, 80 ); --瞬間移動
setEffMoveKey( spep_1 -3 + 8, teleportation2, 130, 80 , 0 );
setEffMoveKey( spep_1 -3 + 30, teleportation2, 130, 80 , 0 );
setEffScaleKey( spep_1 -3 + 8, teleportation2, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 30, teleportation2, 1.7, 1.7 );
setEffRotateKey( spep_1 -3 + 8, teleportation2, 0 );
setEffRotateKey( spep_1 -3 + 30, teleportation2, 0 );
setEffAlphaKey( spep_1 -3 + 8, teleportation2, 255 );
setEffAlphaKey( spep_1 -3 + 30, teleportation2, 255 );

-- ** エフェクト等 ** --
teleportation3 = entryEffect( spep_1 -3 + 32, 700,  0x100, -1, 0, 260, 90 ); --瞬間移動
setEffMoveKey( spep_1 -3 + 32, teleportation3, 260, 90 , 0 );
setEffMoveKey( spep_1 -3 + 54, teleportation3, 260, 90 , 0 );
setEffScaleKey( spep_1 -3 + 32, teleportation3, 1.7, 1.3 );
setEffScaleKey( spep_1 -3 + 54, teleportation3, 1.7, 1.3 );
setEffRotateKey( spep_1 -3 + 32, teleportation3, 0 );
setEffRotateKey( spep_1 -3 + 54, teleportation3, 0 );
setEffAlphaKey( spep_1 -3 + 32, teleportation3, 255 );
setEffAlphaKey( spep_1 -3 + 54, teleportation3, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 26 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 - 3 + 26, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.09, 1.18 );
setEffScaleKey( spep_1 - 3 + 26, shuchusen1, 1.09, 1.18 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 - 3 + 26, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 26, shuchusen1, 255 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 26,  914, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 26, ryusen2, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 114, ryusen2, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 26, ryusen2, 11.67, 1.23 );
setEffScaleKey( spep_1 -3 + 114, ryusen2, 11.67, 1.23 );

setEffRotateKey( spep_1 -3 + 26, ryusen2, 0 );
setEffRotateKey( spep_1 -3 + 114, ryusen2, 0 );

setEffAlphaKey( spep_1 -3 + 26, ryusen2, 38 );
setEffAlphaKey( spep_1 -3 + 28, ryusen2, 81 );
setEffAlphaKey( spep_1 -3 + 30, ryusen2, 125 );
setEffAlphaKey( spep_1 -3 + 32, ryusen2, 168 );
setEffAlphaKey( spep_1 -3 + 34, ryusen2, 212 );
setEffAlphaKey( spep_1 -3 + 36, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 108, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 110, ryusen2, 191 );
setEffAlphaKey( spep_1 -3 + 112, ryusen2, 96 );
setEffAlphaKey( spep_1 -3 + 113, ryusen2, 0 );
setEffAlphaKey( spep_1 -3 + 114, ryusen2, 0 );


--文字エントリー
ctga = entryEffectLife( spep_1 - 3 + 26,  10005, 12, 0x100, -1, 0, 158.2, 338 );--ガッ
setEffMoveKey( spep_1 - 3 + 26, ctga, 158.2, 338 , 0 );
setEffMoveKey( spep_1 - 3 + 28, ctga, 158.1, 338.1 , 0 );
setEffMoveKey( spep_1 - 3 + 30, ctga, 158.2, 338 , 0 );
setEffMoveKey( spep_1 - 3 + 32, ctga, 158.1, 338 , 0 );
setEffMoveKey( spep_1 - 3 + 38, ctga, 158.1, 338 , 0 );

a =1;

setEffScaleKey( spep_1 - 3 + 26, ctga, 1.25 + a, 1.25 + a );
setEffScaleKey( spep_1 - 3 + 38, ctga, 1.25 + a, 1.25 + a );

setEffRotateKey( spep_1 - 3 + 26, ctga, 4.9 );
setEffRotateKey( spep_1 - 3 + 28, ctga, 14.4 );
setEffRotateKey( spep_1 - 3 + 30, ctga, 6.5 );
setEffRotateKey( spep_1 - 3 + 32, ctga, 12.2 );
setEffRotateKey( spep_1 - 3 + 38, ctga, 12.2 );

setEffAlphaKey( spep_1 - 3 + 26, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 32, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 34, ctga, 170 );
setEffAlphaKey( spep_1 - 3 + 36, ctga, 85 );
setEffAlphaKey( spep_1 - 3 + 38, ctga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 - 3 + 114,  10020, 28, 0x100, -1, 0, -56.6, 316.5 );--バキッ

setEffMoveKey( spep_1 - 3 + 114, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_1 - 3 + 116, ctbaki, -74.8, 332.9 , 0 );
setEffMoveKey( spep_1 - 3 + 118, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_1 - 3 + 120, ctbaki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 122, ctbaki, -68.5, 327.2 , 0 );
setEffMoveKey( spep_1 - 3 + 124, ctbaki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 126, ctbaki, -67.9, 326.7 , 0 );
setEffMoveKey( spep_1 - 3 + 128, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 130, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 132, ctbaki, -67.3, 326.3 , 0 );
setEffMoveKey( spep_1 - 3 + 134, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 136, ctbaki, -67.4, 326.4 , 0 );
setEffMoveKey( spep_1 - 3 + 138, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 140, ctbaki, -67.5, 326.5 , 0 );
setEffMoveKey( spep_1 - 3 + 142, ctbaki, -56.5, 316.5 , 0 );

setEffScaleKey( spep_1 - 3 + 114, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 - 3 + 116, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 - 3 + 118, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1 - 3 + 120, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 - 3 + 122, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_1 - 3 + 124, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 - 3 + 126, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1 - 3 + 128, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_1 - 3 + 130, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 - 3 + 132, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 - 3 + 134, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 - 3 + 136, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 - 3 + 138, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 - 3 + 142, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 - 3 + 114, ctbaki, -2.7 );
setEffRotateKey( spep_1 - 3 + 142, ctbaki, -2.7 );

setEffAlphaKey( spep_1 - 3 + 114, ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 130, ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 132, ctbaki, 215 );
setEffAlphaKey( spep_1 - 3 + 134, ctbaki, 174 );
setEffAlphaKey( spep_1 - 3 + 136, ctbaki, 134 );
setEffAlphaKey( spep_1 - 3 + 138, ctbaki, 94 );
setEffAlphaKey( spep_1 - 3 + 140, ctbaki, 53 );
setEffAlphaKey( spep_1 - 3 + 142, ctbaki, 13 );

--てき
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 148, 1, 0 );

changeAnime( spep_1  + 0, 1, 104 );
changeAnime( spep_1 -3 + 26, 1, 106 );
changeAnime( spep_1 -3 + 114, 1, 108 );

setMoveKey( spep_1  + 0, 1, 0, 0 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 0, 0 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -23.1, -10 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -49.9, -12.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -128, -7.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -259.5, -9.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -268.8, -4.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -284.3, -2.6 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -286.5, -0.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -293.6, -1.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -299.3, -3.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -305.6, 0.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -316.8, 1.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -317.3, 1.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -322.8, -0.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -325.4, -3.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -325.9, 0.1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -326.6, 1.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -315.2, -0.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -300.8, -3.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -284.3, 0.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -272.5, 1.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -249.9, 1.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -232.1, -0.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -211.3, -3.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -188.4, 0 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -170.2, 1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -141.3, 1.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -117.1, -0.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -89.8, -3.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -60.5, 0 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -36, 0.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -0.7, 1.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 30, -0.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 63.6, -3.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 99.3, 0 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 133.5, -0.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 132.4, -3.3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 128.7, -0.1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 115.8, 0.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 109.2, 1.5 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 93.5, -0.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 76.5, -3.4 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 56.7, 0 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 27.8, 0.6 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 5.5, 0 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 4, 115.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 73.6, 248.1 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 108.5, 329.1 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 149.1, 396.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 159.6, 430.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 170.2, 440.1 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 169.9, 445 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 176.9, 445.8 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 175.5, 446.5 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 183.1, 451.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 183.3, 451.9 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 185.1, 452.4 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 189.7, 457.1 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 191.4, 457.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 193.2, 457.9 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 197.5, 462.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 199.2, 462.6 , 0 );
setMoveKey( spep_1  + 148, 1, 200.7, 462.8 , 0 );

setScaleKey( spep_1  + 0, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 25, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 26, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 28, 1, 1.73, 1.72 );
setScaleKey( spep_1 -3 + 30, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 32, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 34, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 36, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 38, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 42, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 114, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 116, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 118, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 120, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 122, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 124, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 126, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 128, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 130, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 132, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 134, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 136, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 138, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 140, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 142, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 144, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 146, 1, 0.26, 0.26 );
setScaleKey( spep_1  + 148, 1, 0.22, 0.22 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 25, 1, 0 );
setRotateKey( spep_1 -3 + 26, 1, -94.2 );
setRotateKey( spep_1 -3 + 28, 1, -94.4 );
setRotateKey( spep_1 -3 + 30, 1, -95 );
setRotateKey( spep_1 -3 + 32, 1, -96.1 );
setRotateKey( spep_1 -3 + 34, 1, -96.1 );
setRotateKey( spep_1 -3 + 36, 1, -96 );
setRotateKey( spep_1 -3 + 42, 1, -96 );
setRotateKey( spep_1 -3 + 44, 1, -95.9 );
setRotateKey( spep_1 -3 + 56, 1, -95.9 );
setRotateKey( spep_1 -3 + 58, 1, -96 );
setRotateKey( spep_1 -3 + 60, 1, -96 );
setRotateKey( spep_1 -3 + 62, 1, -96.1 );
setRotateKey( spep_1 -3 + 64, 1, -96.2 );
setRotateKey( spep_1 -3 + 66, 1, -96.3 );
setRotateKey( spep_1 -3 + 68, 1, -96.4 );
setRotateKey( spep_1 -3 + 70, 1, -96.5 );
setRotateKey( spep_1 -3 + 72, 1, -96.6 );
setRotateKey( spep_1 -3 + 74, 1, -96.7 );
setRotateKey( spep_1 -3 + 76, 1, -96.9 );
setRotateKey( spep_1 -3 + 78, 1, -97 );
setRotateKey( spep_1 -3 + 80, 1, -97.1 );
setRotateKey( spep_1 -3 + 82, 1, -97.3 );
setRotateKey( spep_1 -3 + 84, 1, -97.4 );
setRotateKey( spep_1 -3 + 86, 1, -97.6 );
setRotateKey( spep_1 -3 + 88, 1, -97.8 );
setRotateKey( spep_1 -3 + 90, 1, -97.9 );
setRotateKey( spep_1 -3 + 92, 1, -98.1 );
setRotateKey( spep_1 -3 + 94, 1, -98.3 );
setRotateKey( spep_1 -3 + 96, 1, -98.4 );
setRotateKey( spep_1 -3 + 98, 1, -98.5 );
setRotateKey( spep_1 -3 + 100, 1, -98.8 );
setRotateKey( spep_1 -3 + 102, 1, -99.2 );
setRotateKey( spep_1 -3 + 104, 1, -99.7 );
setRotateKey( spep_1 -3 + 106, 1, -100.3 );
setRotateKey( spep_1 -3 + 108, 1, -101 );
setRotateKey( spep_1 -3 + 110, 1, -101.8 );
setRotateKey( spep_1 -3 + 113, 1, -102.7 );
setRotateKey( spep_1 -3 + 114, 1, -65.7 );
setRotateKey( spep_1 -3 + 116, 1, -71.8 );
setRotateKey( spep_1 -3 + 118, 1, -76.6 );
setRotateKey( spep_1 -3 + 120, 1, -80 );
setRotateKey( spep_1 -3 + 122, 1, -82 );
setRotateKey( spep_1 -3 + 124, 1, -82.7 );
setRotateKey( spep_1  + 148, 1, -82.7 );

--SE
playSe( spep_1 + 4, 1047);--瞬間移動
playSe( spep_1 + 24, 1010);--けり
playSe( spep_1 + 28, 43);--瞬間移動
playSe( spep_1 + 112, 1011);--けり

-- ** 黒背景 ** --
entryFadeBg( spep_1 , 0, 150 , 0, 0, 0, 0, 120 );  --黒　背景

--白フェード
entryFade( spep_1 + 142, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+150;

------------------------------------------------------
-- 蹴り落とし
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_2 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick2_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 190, kick2_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 190, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick2_f, 0 );
setEffRotateKey( spep_2 + 190, kick2_f, 0 );
setEffAlphaKey( spep_2 + 0, kick2_f, 255 );
setEffAlphaKey( spep_2 + 190, kick2_f, 255 );

--流線
ryusen3 = entryEffectLife( spep_2 + 0,  914, 98 -2, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 - 2 + 98, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen3, 15.78, 1.77 );
setEffScaleKey( spep_2 - 2 + 98, ryusen3, 15.78, 1.77 );

setEffRotateKey( spep_2 + 0, ryusen3, 90 );
setEffRotateKey( spep_2 - 2 + 98, ryusen3, 90 );

setEffAlphaKey( spep_2 + 0, ryusen3, 128 );
setEffAlphaKey( spep_2 - 2 + 98, ryusen3, 128 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick2_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 190, kick2_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 190, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick2_b, 0 );
setEffRotateKey( spep_2 + 190, kick2_b, 0 );
setEffAlphaKey( spep_2 + 0, kick2_b, 255 );
setEffAlphaKey( spep_2 + 190, kick2_b, 255 );

--文字エントリー
cysyun2 = entryEffectLife( spep_2 -3 + 12,  10011, 12, 0x100 , -1, 0, 155.2, 431.2 );--シュンッ

setEffMoveKey( spep_2 -3 + 12, cysyun2, 155.2, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 14, cysyun2, 155.3, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 16, cysyun2, 155.4, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 18, cysyun2, 155.5, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 20, cysyun2, 155.4, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 22, cysyun2, 155.3, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 24, cysyun2, 155.2, 431.2 , 0 );

setEffScaleKey( spep_2 -3 + 12, cysyun2, 1.37, 1.37 );
setEffScaleKey( spep_2 -3 + 14, cysyun2, 2.32, 2.32 );
setEffScaleKey( spep_2 -3 + 16, cysyun2, 1.92, 1.92 );
setEffScaleKey( spep_2 -3 + 18, cysyun2, 1.52, 1.52 );
setEffScaleKey( spep_2 -3 + 20, cysyun2, 1.49, 1.49 );
setEffScaleKey( spep_2 -3 + 22, cysyun2, 1.45, 1.45 );
setEffScaleKey( spep_2 -3 + 24, cysyun2, 1.42, 1.42 );

setEffRotateKey( spep_2 -3 + 12, cysyun2, 29.7 );
setEffRotateKey( spep_2 -3 + 24, cysyun2, 29.7 );

setEffAlphaKey( spep_2 -3 + 12, cysyun2, 255 );
setEffAlphaKey( spep_2 -3 + 18, cysyun2, 255 );
setEffAlphaKey( spep_2 -3 + 20, cysyun2, 170 );
setEffAlphaKey( spep_2 -3 + 22, cysyun2, 85 );
setEffAlphaKey( spep_2 -3 + 24, cysyun2, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_2 - 3 + 32,  10021, 26, 0x100, -1, 0, 233.4, 45.6 );--バゴォッ

setEffMoveKey( spep_2 - 3 + 32, ctbago, 233.4, 45.6 , 0 );
setEffMoveKey( spep_2 - 3 + 34, ctbago, 232.8, 45 , 0 );
setEffMoveKey( spep_2 - 3 + 36, ctbago, 233.5, 45.4 , 0 );
setEffMoveKey( spep_2 - 3 + 38, ctbago, 223.9, 70.9 , 0 );
setEffMoveKey( spep_2 - 3 + 40, ctbago, 233.5, 45.5 , 0 );
setEffMoveKey( spep_2 - 3 + 42, ctbago, 224.2, 70.1 , 0 );
setEffMoveKey( spep_2 - 3 + 44, ctbago, 233.6, 45.6 , 0 );
setEffMoveKey( spep_2 - 3 + 46, ctbago, 224.6, 69.4 , 0 );
setEffMoveKey( spep_2 - 3 + 48, ctbago, 233.6, 45.6 , 0 );
setEffMoveKey( spep_2 - 3 + 50, ctbago, 233.6, 45.7 , 0 );
setEffMoveKey( spep_2 - 3 + 52, ctbago, 225.5, 67.4 , 0 );
setEffMoveKey( spep_2 - 3 + 54, ctbago, 233.7, 45.8 , 0 );
setEffMoveKey( spep_2 - 3 + 56, ctbago, 226.5, 64.9 , 0 );
setEffMoveKey( spep_2 - 3 + 58, ctbago, 227, 63.6 , 0 );

setEffScaleKey( spep_2 - 3 + 32, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_2 - 3 + 34, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_2 - 3 + 36, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_2 - 3 + 38, ctbago, 3.16, 3.16 );
setEffScaleKey( spep_2 - 3 + 40, ctbago, 3.11, 3.11 );
setEffScaleKey( spep_2 - 3 + 42, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_2 - 3 + 44, ctbago, 3, 3 );
setEffScaleKey( spep_2 - 3 + 46, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_2 - 3 + 48, ctbago, 2.9, 2.9 );
setEffScaleKey( spep_2 - 3 + 50, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_2 - 3 + 52, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_2 - 3 + 54, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_2 - 3 + 56, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_2 - 3 + 58, ctbago, 2.21, 2.21 );

setEffRotateKey( spep_2 - 3 + 32, ctbago, 14.8 );
setEffRotateKey( spep_2 - 3 + 58, ctbago, 14.8 );

setEffAlphaKey( spep_2 - 3 + 32, ctbago, 255 );
setEffAlphaKey( spep_2 - 3 + 50, ctbago, 255 );
setEffAlphaKey( spep_2 - 3 + 52, ctbago, 191 );
setEffAlphaKey( spep_2 - 3 + 54, ctbago, 128 );
setEffAlphaKey( spep_2 - 3 + 56, ctbago, 64 );
setEffAlphaKey( spep_2 - 3 + 58, ctbago, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_2 - 3 + 128,  10018, 48, 0x100, -1, 0, -87.8, 234.3 );--ドゴォンッ

setEffMoveKey( spep_2 - 3 + 128, ctdogon, -87.8, 234.3 , 0 );
setEffMoveKey( spep_2 - 3 + 130, ctdogon, -87, 232.4 , 0 );
setEffMoveKey( spep_2 - 3 + 132, ctdogon, -84.9, 231.1 , 0 );
setEffMoveKey( spep_2 - 3 + 134, ctdogon, -88.8, 230.9 , 0 );
setEffMoveKey( spep_2 - 3 + 136, ctdogon, -85.7, 231.2 , 0 );
setEffMoveKey( spep_2 - 3 + 138, ctdogon, -87.2, 231.9 , 0 );
setEffMoveKey( spep_2 - 3 + 140, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 142, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 144, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 146, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 148, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 150, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 152, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 154, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 156, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 158, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 160, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 162, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 164, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 166, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 168, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 170, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 172, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 174, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 176, ctdogon, -86, 231.7 , 0 );

setEffScaleKey( spep_2 - 3 + 128, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_2 - 3 + 130, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_2 - 3 + 132, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_2 - 3 + 134, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_2 - 3 + 136, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_2 - 3 + 138, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_2 - 3 + 140, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_2 - 3 + 176, ctdogon, 2.34, 2.34 );

setEffRotateKey( spep_2 - 3 + 128, ctdogon, -32.7 );
setEffRotateKey( spep_2 - 3 + 130, ctdogon, -46.1 );
setEffRotateKey( spep_2 - 3 + 132, ctdogon, -38.7 );
setEffRotateKey( spep_2 - 3 + 134, ctdogon, -24.2 );
setEffRotateKey( spep_2 - 3 + 136, ctdogon, -32.9 );
setEffRotateKey( spep_2 - 3 + 138, ctdogon, -43.6 );
setEffRotateKey( spep_2 - 3 + 140, ctdogon, -32.7 );
setEffRotateKey( spep_2 - 3 + 176, ctdogon, -32.7 );

setEffAlphaKey( spep_2 - 3 + 128, ctdogon, 255 );
setEffAlphaKey( spep_2 - 3 + 162, ctdogon, 255 );
setEffAlphaKey( spep_2 - 3 + 164, ctdogon, 219 );
setEffAlphaKey( spep_2 - 3 + 166, ctdogon, 182 );
setEffAlphaKey( spep_2 - 3 + 168, ctdogon, 146 );
setEffAlphaKey( spep_2 - 3 + 170, ctdogon, 109 );
setEffAlphaKey( spep_2 - 3 + 172, ctdogon, 73 );
setEffAlphaKey( spep_2 - 3 + 174, ctdogon, 36 );
setEffAlphaKey( spep_2 - 3 + 176, ctdogon, 0 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 125, 1, 0 );
setDisp( spep_2  + 126, 1, 0 );
changeAnime( spep_2  + 0, 1, 108 );
changeAnime( spep_2 -4 + 34, 1, 106 );
changeAnime( spep_2 -3 + 100, 1, 105 );

setMoveKey( spep_2  + 0, 1, -0.2, -670.9 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, -3, -534.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -5.5, -413.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -7.8, -305.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -9.7, -212.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -11.4, -134 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -12.7, -69.6 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -13.8, -19.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -14.5, 16.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -15, 37.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -15.2, 45 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -15.2, 44.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -15.2, 42.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -15.2, 39 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -15.2, 34.4 , 0 );
setMoveKey( spep_2 -2 + 30, 1, -15.2, 28.4 , 0 );
setMoveKey( spep_2 -4 + 33, 1, -0.5, -131.8 , 0 );
setMoveKey( spep_2 -4 + 34, 1, -87, -197.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -82.3, -199.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -86.1, -195.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -88.2, -194.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -88.7, -191.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -81.3, -189.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -80.4, -198 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -78.1, -185.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -86.7, -191.2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -78.3, -182.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -84.1, -191.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -74.2, -187.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -78.6, -185.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -81.1, -184.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -82.8, -186.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -76.2, -182.9 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -82.6, -188.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -74.7, -181.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -83.3, -187.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -75.1, -178.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -80.9, -184.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -71, -183.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -75.2, -185 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -77.1, -181 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -75.5, -182.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -68.6, -431.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -71.3, -641.5 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -73.9, -824.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -73.3, -960.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -70.8, -1069.6 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -66.6, -1141.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -70.4, -1180.3 , 0 );
setMoveKey( spep_2 -3 + 99, 1, -69.3, -1189.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 0, 614.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 0, 327.4 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -0.1, 204.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -0.1, 125.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -0.1, 69.8 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -0.1, 28.6 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -0.1, -2.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -0.1, -27.5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -0.1, -47.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -0.1, -63.4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -0.1, -77.2 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -0.1, -89.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -0.1, -101.5 , 0 );
setMoveKey( spep_2  + 126, 1, 0, -113.5 , 0 );

setScaleKey( spep_2  + 0, 1, 1.52, 1.52 );
--setScaleKey( spep_2 -3 + 2, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 4, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 8, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 16, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 18, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 30, 1, 1.34, 1.34 );
setScaleKey( spep_2 -4 + 33, 1, 2.37, 2.37 );
setScaleKey( spep_2 -4 + 34, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 36, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 38, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 40, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 42, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 44, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 46, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 48, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 50, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 52, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 54, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 56, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 58, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 60, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 62, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 68, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 70, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 72, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 74, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 76, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 78, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 80, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 82, 1, 2, 2 );
setScaleKey( spep_2 -3 + 84, 1, 2, 2 );
setScaleKey( spep_2 -3 + 86, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 88, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 90, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 92, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 94, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 96, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 99, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 100, 1, 7.27, 7.27 );
setScaleKey( spep_2 -3 + 102, 1, 4.53, 4.53 );
setScaleKey( spep_2 -3 + 104, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 106, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 108, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 110, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 112, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 114, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 116, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 118, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 120, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 122, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 124, 1, 0.42, 0.42 );
setScaleKey( spep_2  + 126, 1, 0.3, 0.3 );

setRotateKey( spep_2  + 0, 1, -113.3 );
--setRotateKey( spep_2 -3 + 2, 1, -107.8 );
setRotateKey( spep_2 -3 + 4, 1, -102.8 );
setRotateKey( spep_2 -3 + 6, 1, -98.4 );
setRotateKey( spep_2 -3 + 8, 1, -94.6 );
setRotateKey( spep_2 -3 + 10, 1, -91.4 );
setRotateKey( spep_2 -3 + 12, 1, -88.8 );
setRotateKey( spep_2 -3 + 14, 1, -86.7 );
setRotateKey( spep_2 -3 + 16, 1, -85.3 );
setRotateKey( spep_2 -3 + 18, 1, -84.4 );
setRotateKey( spep_2 -3 + 20, 1, -84.1 );
setRotateKey( spep_2 -4 + 33, 1, -84.1 );
setRotateKey( spep_2 -4 + 34, 1, -135.9 );
setRotateKey( spep_2 -3 + 82, 1, -135.9 );
setRotateKey( spep_2 -3 + 84, 1, -150.6 );
setRotateKey( spep_2 -3 + 86, 1, -163.3 );
setRotateKey( spep_2 -3 + 88, 1, -174.1 );
setRotateKey( spep_2 -3 + 90, 1, -182.9 );
setRotateKey( spep_2 -3 + 92, 1, -189.8 );
setRotateKey( spep_2 -3 + 94, 1, -194.7 );
setRotateKey( spep_2 -3 + 96, 1, -197.6 );
setRotateKey( spep_2 -3 + 99, 1, -198.6 );
setRotateKey( spep_2 -3 + 100, 1, 163 );
setRotateKey( spep_2 -3 + 102, 1, 174.6 );
setRotateKey( spep_2 -3 + 104, 1, 179.6 );
setRotateKey( spep_2 -3 + 106, 1, 182.8 );
setRotateKey( spep_2 -3 + 108, 1, 185.1 );
setRotateKey( spep_2 -3 + 110, 1, 186.7 );
setRotateKey( spep_2 -3 + 112, 1, 188 );
setRotateKey( spep_2 -3 + 114, 1, 189 );
setRotateKey( spep_2 -3 + 116, 1, 189.8 );
setRotateKey( spep_2 -3 + 118, 1, 190.4 );
setRotateKey( spep_2 -3 + 120, 1, 191 );
setRotateKey( spep_2 -3 + 122, 1, 191.5 );
setRotateKey( spep_2 -3 + 124, 1, 192 );
setRotateKey( spep_2  + 126, 1, 192.5 );


--SE
playSe( spep_2 + 8, 1047);--瞬間移動
playSe( spep_2 + 30, 1120);--けり
SE3=playSe( spep_2 + 80, 1121);--落下
stopSe( spep_2 +124, SE3,30 );
playSe( spep_2 + 126, 1023);--地面に衝突

-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 190 , 0, 0, 0, 0, 180 );  --黒　背景

--白フェード
entryFade( spep_2 + 182, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+190;

------------------------------------------------------
-- ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 120, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 120, tame, 255 );

--***カットイン***
speff = entryEffect(  spep_3 + 12 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_3 + 12 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3 + 12 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 + 12 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_3 + 12 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_3 + 12  + 26, ctgogo, 0 );
setEffAlphaKey( spep_3 + 12  + 27, ctgogo, 255 );
setEffAlphaKey( spep_3 + 12  + 28, ctgogo, 255 );
setEffAlphaKey( spep_3 + 12  + 88, ctgogo, 255 );
setEffAlphaKey( spep_3 + 12  + 90, ctgogo, 255 );
setEffAlphaKey( spep_3 + 12  + 92, ctgogo, 191 );
setEffAlphaKey( spep_3 + 12  + 94, ctgogo, 128 );
setEffAlphaKey( spep_3 + 12  + 96, ctgogo, 64 );
setEffAlphaKey( spep_3 + 12  + 98, ctgogo, 0 );

setEffRotateKey(  spep_3 + 12 +26,  ctgogo,  0);
setEffRotateKey(  spep_3 + 12 +98,  ctgogo,  0);

setEffScaleKey(  spep_3 + 12 +26,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 + 12 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 + 12 +98,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 118, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.47, 1.51 );
setEffScaleKey( spep_3 + 118, shuchusen2, 1.47, 1.51 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 118, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 118, shuchusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 , 0, 120 , 0, 0, 0, 0, 180 );  --黒　背景
entryFadeBg( spep_3 +24 , 24,78 , 0, 0, 0, 0, 255 );  --黒　背景

--SE
--playSe( spep_3 , 1036);--ため
--playSe( spep_3 + 20 , 1036);--ため
SE1=playSe( spep_3 , 15);--ため
stopSe( spep_3 +36, SE1, 0 );
playSe( spep_3 + 38, 1018);--ゴゴゴ

--白フェード
entryFade( spep_3 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3+120;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

removeAllEffect(spep_4-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end                            -- 技名テクスチャ差し替え


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
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_5 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, shoot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, shoot, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shoot, 0 );
setEffRotateKey( spep_5 + 60, shoot, 0 );
setEffAlphaKey( spep_5 + 0, shoot, 255 );
setEffAlphaKey( spep_5 + 60, shoot, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906,10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 10, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.09, 1.17 );
setEffScaleKey( spep_5 + 10, shuchusen3, 1.09, 1.17 );

setEffRotateKey( spep_5 + 0, shuchusen3, 180 );
setEffRotateKey( spep_5 + 10, shuchusen3, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 10, shuchusen3, 255 );

--SE
playSe( spep_5+12, 1022);--放つ音

-- ** 黒背景 ** --
entryFadeBg( spep_5 , 0, 60 , 0, 0, 0, 0, 220 );  --黒　背景
entryFadeBg( spep_5+20 , 6, 34 , 0, 0, 0, 0, 220 );  --黒　背景

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;


------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 180, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 180, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 180, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 , 0, 180 , 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_6 + 12, 1024);--放つ音
SE2=playSe( spep_6 + 66, 1044);--地鳴り音
stopSe( spep_6 +170, SE2, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_6 + 12 );
endPhase( spep_6 + 172 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アイドリング
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idling, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, idling, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, idling, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 60, idling, 0 );
setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 60, idling, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 , 0, 60 , 0, 0, 0, 0, 120 );  --黒　背景

--白フェード
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 18; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
--    stopSe( SP_dodge - 12, SE0, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
     --敵の情報
     


    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------

--文字エントリー
ctshun = entryEffectLife( spep_0 -3 + 32,  10011, 12, 0x100, -1, 0, 155.1, 271.1 );--シュンッ

setEffMoveKey( spep_0 -3 + 32, ctshun, 155.1, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 34, ctshun, 155.4, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 36, ctshun, 155.4, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 38, ctshun, 155.3, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 40, ctshun, 155.3, 271.1 , 0 );
setEffMoveKey( spep_0 -3 + 42, ctshun, 155.3, 271.2 , 0 );
setEffMoveKey( spep_0 -3 + 44, ctshun, 155.2, 271.2 , 0 );

setEffScaleKey( spep_0 -3 + 32, ctshun, 1.05, 1.05 );
setEffScaleKey( spep_0 -3 + 34, ctshun, 2.02, 2.02 );
setEffScaleKey( spep_0 -3 + 36, ctshun, 1.68, 1.68 );
setEffScaleKey( spep_0 -3 + 38, ctshun, 1.33, 1.33 );
setEffScaleKey( spep_0 -3 + 40, ctshun, 1.3, 1.3 );
setEffScaleKey( spep_0 -3 + 42, ctshun, 1.27, 1.27 );
setEffScaleKey( spep_0 -3 + 44, ctshun, 1.24, 1.24 );

setEffRotateKey( spep_0 -3 + 32, ctshun, 29.7 );
setEffRotateKey( spep_0 -3 + 44, ctshun, 29.7 );

setEffAlphaKey( spep_0 -3 + 32, ctshun, 255 );
setEffAlphaKey( spep_0 -3 + 38, ctshun, 255 );
setEffAlphaKey( spep_0 -3 + 40, ctshun, 170 );
setEffAlphaKey( spep_0 -3 + 42, ctshun, 85 );
setEffAlphaKey( spep_0 -3 + 44, ctshun, 0 );

-- ** エフェクト等 ** --
teleportation = entryEffect( spep_0 + 29, 700,  0x100, -1, 0, 0, 0 ); --瞬間移動
setEffMoveKey( spep_0 + 29, teleportation, 0, 0 , 0 );
setEffMoveKey( spep_0 + 60, teleportation, 0, 0 , 0 );
setEffScaleKey( spep_0 + 29, teleportation, 1.7, 1.7 );
setEffScaleKey( spep_0 + 60, teleportation, 1.7, 1.7 );
setEffRotateKey( spep_0 + 29, teleportation, 0 );
setEffRotateKey( spep_0 + 60, teleportation, 0 );
setEffAlphaKey( spep_0 + 29, teleportation, 255 );
setEffAlphaKey( spep_0 + 60, teleportation, 255 );

--SE
playSe( spep_0+28, 1109);--瞬間移動

--白フェード
entryFade( spep_0 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の順
spep_1 = spep_0+60;
------------------------------------------------------
-- キック
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 150, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 150, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 150, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 150, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 150, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 150, kick_b, 255 );

-- ** エフェクト等 ** --
ryusen1 = entryEffect( spep_1 + 0, SP_09,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 150, ryusen1, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, ryusen1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, ryusen1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ryusen1, 0 );
setEffRotateKey( spep_1 + 150, ryusen1, 0 );
setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 150, ryusen1, 255 );

-- ** エフェクト等 ** --
teleportation2 = entryEffect( spep_1 -3 + 8, 700,  0x100, -1, 0, 150, 80 ); --瞬間移動
setEffMoveKey( spep_1 -3 + 8, teleportation2, 130, 80 , 0 );
setEffMoveKey( spep_1 -3 + 30, teleportation2, 130, 80 , 0 );
setEffScaleKey( spep_1 -3 + 8, teleportation2, 1.7, 1.7 );
setEffScaleKey( spep_1 -3 + 30, teleportation2, 1.7, 1.7 );
setEffRotateKey( spep_1 -3 + 8, teleportation2, 0 );
setEffRotateKey( spep_1 -3 + 30, teleportation2, 0 );
setEffAlphaKey( spep_1 -3 + 8, teleportation2, 255 );
setEffAlphaKey( spep_1 -3 + 30, teleportation2, 255 );

-- ** エフェクト等 ** --
teleportation3 = entryEffect( spep_1 -3 + 32, 700,  0x100, -1, 0, 260, 90 ); --瞬間移動
setEffMoveKey( spep_1 -3 + 32, teleportation3, 260, 90 , 0 );
setEffMoveKey( spep_1 -3 + 54, teleportation3, 260, 90 , 0 );
setEffScaleKey( spep_1 -3 + 32, teleportation3, 1.7, 1.3 );
setEffScaleKey( spep_1 -3 + 54, teleportation3, 1.7, 1.3 );
setEffRotateKey( spep_1 -3 + 32, teleportation3, 0 );
setEffRotateKey( spep_1 -3 + 54, teleportation3, 0 );
setEffAlphaKey( spep_1 -3 + 32, teleportation3, 255 );
setEffAlphaKey( spep_1 -3 + 54, teleportation3, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_1 + 0,  906, 26 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 - 3 + 26, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen1, 1.09, 1.18 );
setEffScaleKey( spep_1 - 3 + 26, shuchusen1, 1.09, 1.18 );

setEffRotateKey( spep_1 + 0, shuchusen1, 180 );
setEffRotateKey( spep_1 - 3 + 26, shuchusen1, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_1 - 3 + 26, shuchusen1, 255 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 26,  914, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 26, ryusen2, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 114, ryusen2, 0, 0, 0 );

setEffScaleKey( spep_1 -3 + 26, ryusen2, 11.67, 1.23 );
setEffScaleKey( spep_1 -3 + 114, ryusen2, 11.67, 1.23 );

setEffRotateKey( spep_1 -3 + 26, ryusen2, 0 );
setEffRotateKey( spep_1 -3 + 114, ryusen2, 0 );

setEffAlphaKey( spep_1 -3 + 26, ryusen2, 38 );
setEffAlphaKey( spep_1 -3 + 28, ryusen2, 81 );
setEffAlphaKey( spep_1 -3 + 30, ryusen2, 125 );
setEffAlphaKey( spep_1 -3 + 32, ryusen2, 168 );
setEffAlphaKey( spep_1 -3 + 34, ryusen2, 212 );
setEffAlphaKey( spep_1 -3 + 36, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 108, ryusen2, 255 );
setEffAlphaKey( spep_1 -3 + 110, ryusen2, 191 );
setEffAlphaKey( spep_1 -3 + 112, ryusen2, 96 );
setEffAlphaKey( spep_1 -3 + 113, ryusen2, 0 );
setEffAlphaKey( spep_1 -3 + 114, ryusen2, 0 );


--文字エントリー
ctga = entryEffectLife( spep_1 - 3 + 26,  10005, 12, 0x100, -1, 0, 158.2, 338 );--ガッ
setEffMoveKey( spep_1 - 3 + 26, ctga, 158.2, 338 , 0 );
setEffMoveKey( spep_1 - 3 + 28, ctga, 158.1, 338.1 , 0 );
setEffMoveKey( spep_1 - 3 + 30, ctga, 158.2, 338 , 0 );
setEffMoveKey( spep_1 - 3 + 32, ctga, 158.1, 338 , 0 );
setEffMoveKey( spep_1 - 3 + 38, ctga, 158.1, 338 , 0 );

a =1;

setEffScaleKey( spep_1 - 3 + 26, ctga, 1.25 + a, 1.25 + a );
setEffScaleKey( spep_1 - 3 + 38, ctga, 1.25 + a, 1.25 + a );

setEffRotateKey( spep_1 - 3 + 26, ctga, 4.9 );
setEffRotateKey( spep_1 - 3 + 28, ctga, 14.4 );
setEffRotateKey( spep_1 - 3 + 30, ctga, 6.5 );
setEffRotateKey( spep_1 - 3 + 32, ctga, 12.2 );
setEffRotateKey( spep_1 - 3 + 38, ctga, 12.2 );

setEffAlphaKey( spep_1 - 3 + 26, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 32, ctga, 255 );
setEffAlphaKey( spep_1 - 3 + 34, ctga, 170 );
setEffAlphaKey( spep_1 - 3 + 36, ctga, 85 );
setEffAlphaKey( spep_1 - 3 + 38, ctga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 - 3 + 114,  10020, 28, 0x100, -1, 0, -56.6, 316.5 );--バキッ

setEffMoveKey( spep_1 - 3 + 114, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_1 - 3 + 116, ctbaki, -74.8, 332.9 , 0 );
setEffMoveKey( spep_1 - 3 + 118, ctbaki, -56.6, 316.5 , 0 );
setEffMoveKey( spep_1 - 3 + 120, ctbaki, -56.6, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 122, ctbaki, -68.5, 327.2 , 0 );
setEffMoveKey( spep_1 - 3 + 124, ctbaki, -56.5, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 126, ctbaki, -67.9, 326.7 , 0 );
setEffMoveKey( spep_1 - 3 + 128, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 130, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 132, ctbaki, -67.3, 326.3 , 0 );
setEffMoveKey( spep_1 - 3 + 134, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 136, ctbaki, -67.4, 326.4 , 0 );
setEffMoveKey( spep_1 - 3 + 138, ctbaki, -56.4, 316.4 , 0 );
setEffMoveKey( spep_1 - 3 + 140, ctbaki, -67.5, 326.5 , 0 );
setEffMoveKey( spep_1 - 3 + 142, ctbaki, -56.5, 316.5 , 0 );

setEffScaleKey( spep_1 - 3 + 114, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1 - 3 + 116, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1 - 3 + 118, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1 - 3 + 120, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1 - 3 + 122, ctbaki, 1.9, 1.9 );
setEffScaleKey( spep_1 - 3 + 124, ctbaki, 1.86, 1.86 );
setEffScaleKey( spep_1 - 3 + 126, ctbaki, 1.81, 1.81 );
setEffScaleKey( spep_1 - 3 + 128, ctbaki, 1.77, 1.77 );
setEffScaleKey( spep_1 - 3 + 130, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1 - 3 + 132, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 - 3 + 134, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1 - 3 + 136, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 - 3 + 138, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1 - 3 + 142, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1 - 3 + 114, ctbaki, -2.7 );
setEffRotateKey( spep_1 - 3 + 142, ctbaki, -2.7 );

setEffAlphaKey( spep_1 - 3 + 114, ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 130, ctbaki, 255 );
setEffAlphaKey( spep_1 - 3 + 132, ctbaki, 215 );
setEffAlphaKey( spep_1 - 3 + 134, ctbaki, 174 );
setEffAlphaKey( spep_1 - 3 + 136, ctbaki, 134 );
setEffAlphaKey( spep_1 - 3 + 138, ctbaki, 94 );
setEffAlphaKey( spep_1 - 3 + 140, ctbaki, 53 );
setEffAlphaKey( spep_1 - 3 + 142, ctbaki, 13 );

--てき
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 148, 1, 0 );

changeAnime( spep_1  + 0, 1, 104 );
changeAnime( spep_1 -3 + 26, 1, 106 );
changeAnime( spep_1 -3 + 114, 1, 108 );

setMoveKey( spep_1  + 0, 1, 0, 0 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 0, 0 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -23.1, -10 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -49.9, -12.1 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -128, -7.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -259.5, -9.7 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -268.8, -4.9 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -284.3, -2.6 , 0 );
setMoveKey( spep_1 -3 + 38, 1, -286.5, -0.7 , 0 );
setMoveKey( spep_1 -3 + 40, 1, -293.6, -1.3 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -299.3, -3.2 , 0 );
setMoveKey( spep_1 -3 + 44, 1, -305.6, 0.1 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -316.8, 1.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, -317.3, 1.6 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -322.8, -0.1 , 0 );
setMoveKey( spep_1 -3 + 52, 1, -325.4, -3.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -325.9, 0.1 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -326.6, 1.6 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -315.2, -0.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -300.8, -3.2 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -284.3, 0.1 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -272.5, 1.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -249.9, 1.6 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -232.1, -0.1 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -211.3, -3.3 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -188.4, 0 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -170.2, 1 , 0 );
setMoveKey( spep_1 -3 + 76, 1, -141.3, 1.5 , 0 );
setMoveKey( spep_1 -3 + 78, 1, -117.1, -0.2 , 0 );
setMoveKey( spep_1 -3 + 80, 1, -89.8, -3.3 , 0 );
setMoveKey( spep_1 -3 + 82, 1, -60.5, 0 , 0 );
setMoveKey( spep_1 -3 + 84, 1, -36, 0.9 , 0 );
setMoveKey( spep_1 -3 + 86, 1, -0.7, 1.5 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 30, -0.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 63.6, -3.3 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 99.3, 0 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 133.5, -0.2 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 132.4, -3.3 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 128.7, -0.1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 115.8, 0.7 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 109.2, 1.5 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 93.5, -0.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 76.5, -3.4 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 56.7, 0 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 27.8, 0.6 , 0 );
setMoveKey( spep_1 -3 + 113, 1, 5.5, 0 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 4, 115.9 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 73.6, 248.1 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 108.5, 329.1 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 149.1, 396.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 159.6, 430.7 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 170.2, 440.1 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 169.9, 445 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 176.9, 445.8 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 175.5, 446.5 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 183.1, 451.3 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 183.3, 451.9 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 185.1, 452.4 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 189.7, 457.1 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 191.4, 457.5 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 193.2, 457.9 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 197.5, 462.5 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 199.2, 462.6 , 0 );
setMoveKey( spep_1  + 148, 1, 200.7, 462.8 , 0 );

setScaleKey( spep_1  + 0, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 25, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 26, 1, 1.75, 1.75 );
setScaleKey( spep_1 -3 + 28, 1, 1.73, 1.72 );
setScaleKey( spep_1 -3 + 30, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 32, 1, 1.68, 1.68 );
setScaleKey( spep_1 -3 + 34, 1, 1.65, 1.65 );
setScaleKey( spep_1 -3 + 36, 1, 1.64, 1.64 );
setScaleKey( spep_1 -3 + 38, 1, 1.61, 1.61 );
setScaleKey( spep_1 -3 + 40, 1, 1.57, 1.57 );
setScaleKey( spep_1 -3 + 42, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 114, 1, 1.56, 1.56 );
setScaleKey( spep_1 -3 + 116, 1, 1.37, 1.37 );
setScaleKey( spep_1 -3 + 118, 1, 1.05, 1.05 );
setScaleKey( spep_1 -3 + 120, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 122, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 124, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 126, 1, 0.61, 0.61 );
setScaleKey( spep_1 -3 + 128, 1, 0.57, 0.57 );
setScaleKey( spep_1 -3 + 130, 1, 0.54, 0.54 );
setScaleKey( spep_1 -3 + 132, 1, 0.5, 0.5 );
setScaleKey( spep_1 -3 + 134, 1, 0.46, 0.46 );
setScaleKey( spep_1 -3 + 136, 1, 0.43, 0.43 );
setScaleKey( spep_1 -3 + 138, 1, 0.39, 0.39 );
setScaleKey( spep_1 -3 + 140, 1, 0.36, 0.36 );
setScaleKey( spep_1 -3 + 142, 1, 0.32, 0.32 );
setScaleKey( spep_1 -3 + 144, 1, 0.29, 0.29 );
setScaleKey( spep_1 -3 + 146, 1, 0.26, 0.26 );
setScaleKey( spep_1  + 148, 1, 0.22, 0.22 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 25, 1, 0 );
setRotateKey( spep_1 -3 + 26, 1, -94.2 );
setRotateKey( spep_1 -3 + 28, 1, -94.4 );
setRotateKey( spep_1 -3 + 30, 1, -95 );
setRotateKey( spep_1 -3 + 32, 1, -96.1 );
setRotateKey( spep_1 -3 + 34, 1, -96.1 );
setRotateKey( spep_1 -3 + 36, 1, -96 );
setRotateKey( spep_1 -3 + 42, 1, -96 );
setRotateKey( spep_1 -3 + 44, 1, -95.9 );
setRotateKey( spep_1 -3 + 56, 1, -95.9 );
setRotateKey( spep_1 -3 + 58, 1, -96 );
setRotateKey( spep_1 -3 + 60, 1, -96 );
setRotateKey( spep_1 -3 + 62, 1, -96.1 );
setRotateKey( spep_1 -3 + 64, 1, -96.2 );
setRotateKey( spep_1 -3 + 66, 1, -96.3 );
setRotateKey( spep_1 -3 + 68, 1, -96.4 );
setRotateKey( spep_1 -3 + 70, 1, -96.5 );
setRotateKey( spep_1 -3 + 72, 1, -96.6 );
setRotateKey( spep_1 -3 + 74, 1, -96.7 );
setRotateKey( spep_1 -3 + 76, 1, -96.9 );
setRotateKey( spep_1 -3 + 78, 1, -97 );
setRotateKey( spep_1 -3 + 80, 1, -97.1 );
setRotateKey( spep_1 -3 + 82, 1, -97.3 );
setRotateKey( spep_1 -3 + 84, 1, -97.4 );
setRotateKey( spep_1 -3 + 86, 1, -97.6 );
setRotateKey( spep_1 -3 + 88, 1, -97.8 );
setRotateKey( spep_1 -3 + 90, 1, -97.9 );
setRotateKey( spep_1 -3 + 92, 1, -98.1 );
setRotateKey( spep_1 -3 + 94, 1, -98.3 );
setRotateKey( spep_1 -3 + 96, 1, -98.4 );
setRotateKey( spep_1 -3 + 98, 1, -98.5 );
setRotateKey( spep_1 -3 + 100, 1, -98.8 );
setRotateKey( spep_1 -3 + 102, 1, -99.2 );
setRotateKey( spep_1 -3 + 104, 1, -99.7 );
setRotateKey( spep_1 -3 + 106, 1, -100.3 );
setRotateKey( spep_1 -3 + 108, 1, -101 );
setRotateKey( spep_1 -3 + 110, 1, -101.8 );
setRotateKey( spep_1 -3 + 113, 1, -102.7 );
setRotateKey( spep_1 -3 + 114, 1, -65.7 );
setRotateKey( spep_1 -3 + 116, 1, -71.8 );
setRotateKey( spep_1 -3 + 118, 1, -76.6 );
setRotateKey( spep_1 -3 + 120, 1, -80 );
setRotateKey( spep_1 -3 + 122, 1, -82 );
setRotateKey( spep_1 -3 + 124, 1, -82.7 );
setRotateKey( spep_1  + 148, 1, -82.7 );

--SE
playSe( spep_1 + 4, 1047);--瞬間移動
playSe( spep_1 + 24, 1010);--けり
playSe( spep_1 + 28, 43);--瞬間移動
playSe( spep_1 + 112, 1011);--けり

-- ** 黒背景 ** --
entryFadeBg( spep_1 , 0, 150 , 0, 0, 0, 0, 120 );  --黒　背景

--白フェード
entryFade( spep_1 + 142, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 = spep_1+150;

------------------------------------------------------
-- 蹴り落とし
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_2 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick2_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 190, kick2_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 190, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick2_f, 0 );
setEffRotateKey( spep_2 + 190, kick2_f, 0 );
setEffAlphaKey( spep_2 + 0, kick2_f, 255 );
setEffAlphaKey( spep_2 + 190, kick2_f, 255 );

--流線
ryusen3 = entryEffectLife( spep_2 + 0,  914, 98 -2, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 - 2 + 98, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, ryusen3, 15.78, 1.77 );
setEffScaleKey( spep_2 - 2 + 98, ryusen3, 15.78, 1.77 );

setEffRotateKey( spep_2 + 0, ryusen3, 90 );
setEffRotateKey( spep_2 - 2 + 98, ryusen3, 90 );

setEffAlphaKey( spep_2 + 0, ryusen3, 128 );
setEffAlphaKey( spep_2 - 2 + 98, ryusen3, 128 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_2 + 0, SP_04,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick2_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 190, kick2_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 190, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick2_b, 0 );
setEffRotateKey( spep_2 + 190, kick2_b, 0 );
setEffAlphaKey( spep_2 + 0, kick2_b, 255 );
setEffAlphaKey( spep_2 + 190, kick2_b, 255 );

--文字エントリー
cysyun2 = entryEffectLife( spep_2 -3 + 12,  10011, 12, 0x100 , -1, 0, 155.2, 431.2 );--シュンッ

setEffMoveKey( spep_2 -3 + 12, cysyun2, 155.2, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 14, cysyun2, 155.3, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 16, cysyun2, 155.4, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 18, cysyun2, 155.5, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 20, cysyun2, 155.4, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 22, cysyun2, 155.3, 431.2 , 0 );
setEffMoveKey( spep_2 -3 + 24, cysyun2, 155.2, 431.2 , 0 );

setEffScaleKey( spep_2 -3 + 12, cysyun2, 1.37, 1.37 );
setEffScaleKey( spep_2 -3 + 14, cysyun2, 2.32, 2.32 );
setEffScaleKey( spep_2 -3 + 16, cysyun2, 1.92, 1.92 );
setEffScaleKey( spep_2 -3 + 18, cysyun2, 1.52, 1.52 );
setEffScaleKey( spep_2 -3 + 20, cysyun2, 1.49, 1.49 );
setEffScaleKey( spep_2 -3 + 22, cysyun2, 1.45, 1.45 );
setEffScaleKey( spep_2 -3 + 24, cysyun2, 1.42, 1.42 );

setEffRotateKey( spep_2 -3 + 12, cysyun2, 29.7 );
setEffRotateKey( spep_2 -3 + 24, cysyun2, 29.7 );

setEffAlphaKey( spep_2 -3 + 12, cysyun2, 255 );
setEffAlphaKey( spep_2 -3 + 18, cysyun2, 255 );
setEffAlphaKey( spep_2 -3 + 20, cysyun2, 170 );
setEffAlphaKey( spep_2 -3 + 22, cysyun2, 85 );
setEffAlphaKey( spep_2 -3 + 24, cysyun2, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_2 - 3 + 32,  10021, 26, 0x100, -1, 0, 233.4, 45.6 );--バゴォッ

setEffMoveKey( spep_2 - 3 + 32, ctbago, -233.4, 45.6 , 0 );
setEffMoveKey( spep_2 - 3 + 34, ctbago, -232.8, 45 , 0 );
setEffMoveKey( spep_2 - 3 + 36, ctbago, -233.5, 45.4 , 0 );
setEffMoveKey( spep_2 - 3 + 38, ctbago, -223.9, 70.9 , 0 );
setEffMoveKey( spep_2 - 3 + 40, ctbago, -233.5, 45.5 , 0 );
setEffMoveKey( spep_2 - 3 + 42, ctbago, -224.2, 70.1 , 0 );
setEffMoveKey( spep_2 - 3 + 44, ctbago, -233.6, 45.6 , 0 );
setEffMoveKey( spep_2 - 3 + 46, ctbago, -224.6, 69.4 , 0 );
setEffMoveKey( spep_2 - 3 + 48, ctbago, -233.6, 45.6 , 0 );
setEffMoveKey( spep_2 - 3 + 50, ctbago, -233.6, 45.7 , 0 );
setEffMoveKey( spep_2 - 3 + 52, ctbago, -225.5, 67.4 , 0 );
setEffMoveKey( spep_2 - 3 + 54, ctbago, -233.7, 45.8 , 0 );
setEffMoveKey( spep_2 - 3 + 56, ctbago, -226.5, 64.9 , 0 );
setEffMoveKey( spep_2 - 3 + 58, ctbago, -227, 63.6 , 0 );

setEffScaleKey( spep_2 - 3 + 32, ctbago, 1.55, 1.55 );
setEffScaleKey( spep_2 - 3 + 34, ctbago, 4.28, 4.28 );
setEffScaleKey( spep_2 - 3 + 36, ctbago, 3.21, 3.21 );
setEffScaleKey( spep_2 - 3 + 38, ctbago, 3.16, 3.16 );
setEffScaleKey( spep_2 - 3 + 40, ctbago, 3.11, 3.11 );
setEffScaleKey( spep_2 - 3 + 42, ctbago, 3.06, 3.06 );
setEffScaleKey( spep_2 - 3 + 44, ctbago, 3, 3 );
setEffScaleKey( spep_2 - 3 + 46, ctbago, 2.95, 2.95 );
setEffScaleKey( spep_2 - 3 + 48, ctbago, 2.9, 2.9 );
setEffScaleKey( spep_2 - 3 + 50, ctbago, 2.85, 2.85 );
setEffScaleKey( spep_2 - 3 + 52, ctbago, 2.69, 2.69 );
setEffScaleKey( spep_2 - 3 + 54, ctbago, 2.53, 2.53 );
setEffScaleKey( spep_2 - 3 + 56, ctbago, 2.37, 2.37 );
setEffScaleKey( spep_2 - 3 + 58, ctbago, 2.21, 2.21 );

setEffRotateKey( spep_2 - 3 + 32, ctbago, -14.8 );
setEffRotateKey( spep_2 - 3 + 58, ctbago, -14.8 );

setEffAlphaKey( spep_2 - 3 + 32, ctbago, 255 );
setEffAlphaKey( spep_2 - 3 + 50, ctbago, 255 );
setEffAlphaKey( spep_2 - 3 + 52, ctbago, 191 );
setEffAlphaKey( spep_2 - 3 + 54, ctbago, 128 );
setEffAlphaKey( spep_2 - 3 + 56, ctbago, 64 );
setEffAlphaKey( spep_2 - 3 + 58, ctbago, 0 );

--文字エントリー
ctdogon = entryEffectLife( spep_2 - 3 + 128,  10018, 48, 0x100, -1, 0, -87.8, 234.3 );--ドゴォンッ

setEffMoveKey( spep_2 - 3 + 128, ctdogon, -87.8, 234.3 , 0 );
setEffMoveKey( spep_2 - 3 + 130, ctdogon, -87, 232.4 , 0 );
setEffMoveKey( spep_2 - 3 + 132, ctdogon, -84.9, 231.1 , 0 );
setEffMoveKey( spep_2 - 3 + 134, ctdogon, -88.8, 230.9 , 0 );
setEffMoveKey( spep_2 - 3 + 136, ctdogon, -85.7, 231.2 , 0 );
setEffMoveKey( spep_2 - 3 + 138, ctdogon, -87.2, 231.9 , 0 );
setEffMoveKey( spep_2 - 3 + 140, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 142, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 144, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 146, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 148, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 150, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 152, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 154, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 156, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 158, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 160, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 162, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 164, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 166, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 168, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 170, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 172, ctdogon, -86, 231.7 , 0 );
setEffMoveKey( spep_2 - 3 + 174, ctdogon, -88.1, 231.8 , 0 );
setEffMoveKey( spep_2 - 3 + 176, ctdogon, -86, 231.7 , 0 );

setEffScaleKey( spep_2 - 3 + 128, ctdogon, 1.06, 1.06 );
setEffScaleKey( spep_2 - 3 + 130, ctdogon, 2.28, 2.28 );
setEffScaleKey( spep_2 - 3 + 132, ctdogon, 2.89, 2.89 );
setEffScaleKey( spep_2 - 3 + 134, ctdogon, 2.75, 2.75 );
setEffScaleKey( spep_2 - 3 + 136, ctdogon, 2.61, 2.61 );
setEffScaleKey( spep_2 - 3 + 138, ctdogon, 2.47, 2.47 );
setEffScaleKey( spep_2 - 3 + 140, ctdogon, 2.34, 2.34 );
setEffScaleKey( spep_2 - 3 + 176, ctdogon, 2.34, 2.34 );

setEffRotateKey( spep_2 - 3 + 128, ctdogon, -32.7 );
setEffRotateKey( spep_2 - 3 + 130, ctdogon, -46.1 );
setEffRotateKey( spep_2 - 3 + 132, ctdogon, -38.7 );
setEffRotateKey( spep_2 - 3 + 134, ctdogon, -24.2 );
setEffRotateKey( spep_2 - 3 + 136, ctdogon, -32.9 );
setEffRotateKey( spep_2 - 3 + 138, ctdogon, -43.6 );
setEffRotateKey( spep_2 - 3 + 140, ctdogon, -32.7 );
setEffRotateKey( spep_2 - 3 + 176, ctdogon, -32.7 );

setEffAlphaKey( spep_2 - 3 + 128, ctdogon, 255 );
setEffAlphaKey( spep_2 - 3 + 162, ctdogon, 255 );
setEffAlphaKey( spep_2 - 3 + 164, ctdogon, 219 );
setEffAlphaKey( spep_2 - 3 + 166, ctdogon, 182 );
setEffAlphaKey( spep_2 - 3 + 168, ctdogon, 146 );
setEffAlphaKey( spep_2 - 3 + 170, ctdogon, 109 );
setEffAlphaKey( spep_2 - 3 + 172, ctdogon, 73 );
setEffAlphaKey( spep_2 - 3 + 174, ctdogon, 36 );
setEffAlphaKey( spep_2 - 3 + 176, ctdogon, 0 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 125, 1, 0 );
setDisp( spep_2  + 126, 1, 0 );
changeAnime( spep_2  + 0, 1, 108 );
changeAnime( spep_2 -4 + 34, 1, 106 );
changeAnime( spep_2 -3 + 100, 1, 105 );

setMoveKey( spep_2  + 0, 1, -0.2, -670.9 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, -3, -534.9 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -5.5, -413.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -7.8, -305.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -9.7, -212.8 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -11.4, -134 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -12.7, -69.6 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -13.8, -19.5 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -14.5, 16.3 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -15, 37.8 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -15.2, 45 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -15.2, 44.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -15.2, 42.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -15.2, 39 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -15.2, 34.4 , 0 );
setMoveKey( spep_2 -2 + 30, 1, -15.2, 28.4 , 0 );
setMoveKey( spep_2 -4 + 33, 1, -0.5, -131.8 , 0 );
setMoveKey( spep_2 -4 + 34, 1, -87, -197.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -82.3, -199.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -86.1, -195.7 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -88.2, -194.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, -88.7, -191.1 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -81.3, -189.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -80.4, -198 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -78.1, -185.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -86.7, -191.2 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -78.3, -182.5 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -84.1, -191.2 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -74.2, -187.1 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -78.6, -185.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -81.1, -184.9 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -82.8, -186.5 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -76.2, -182.9 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -82.6, -188.9 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -74.7, -181.5 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -83.3, -187.2 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -75.1, -178.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -80.9, -184.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -71, -183.5 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -75.2, -185 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -77.1, -181 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -75.5, -182.1 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -68.6, -431.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -71.3, -641.5 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -73.9, -824.5 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -73.3, -960.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -70.8, -1069.6 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -66.6, -1141.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -70.4, -1180.3 , 0 );
setMoveKey( spep_2 -3 + 99, 1, -69.3, -1189.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 0, 614.1 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 0, 327.4 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -0.1, 204.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -0.1, 125.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -0.1, 69.8 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -0.1, 28.6 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -0.1, -2.9 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -0.1, -27.5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -0.1, -47.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -0.1, -63.4 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -0.1, -77.2 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -0.1, -89.6 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -0.1, -101.5 , 0 );
setMoveKey( spep_2  + 126, 1, 0, -113.5 , 0 );

setScaleKey( spep_2  + 0, 1, 1.52, 1.52 );
--setScaleKey( spep_2 -3 + 2, 1, 1.48, 1.48 );
setScaleKey( spep_2 -3 + 4, 1, 1.45, 1.45 );
setScaleKey( spep_2 -3 + 6, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 8, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 10, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 12, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 14, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 16, 1, 1.35, 1.35 );
setScaleKey( spep_2 -3 + 18, 1, 1.34, 1.34 );
setScaleKey( spep_2 -3 + 30, 1, 1.34, 1.34 );
setScaleKey( spep_2 -4 + 33, 1, 2.37, 2.37 );
setScaleKey( spep_2 -4 + 34, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 36, 1, 2.37, 2.37 );
setScaleKey( spep_2 -3 + 38, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 40, 1, 2.3, 2.3 );
setScaleKey( spep_2 -3 + 42, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 44, 1, 2.25, 2.25 );
setScaleKey( spep_2 -3 + 46, 1, 2.22, 2.22 );
setScaleKey( spep_2 -3 + 48, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 50, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 52, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 54, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 56, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 58, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 60, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 62, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 68, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 70, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 72, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 74, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 76, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 78, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 80, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 82, 1, 2, 2 );
setScaleKey( spep_2 -3 + 84, 1, 2, 2 );
setScaleKey( spep_2 -3 + 86, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 88, 1, 1.99, 1.99 );
setScaleKey( spep_2 -3 + 90, 1, 1.98, 1.98 );
setScaleKey( spep_2 -3 + 92, 1, 1.97, 1.97 );
setScaleKey( spep_2 -3 + 94, 1, 1.96, 1.96 );
setScaleKey( spep_2 -3 + 96, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 99, 1, 1.93, 1.93 );
setScaleKey( spep_2 -3 + 100, 1, 7.27, 7.27 );
setScaleKey( spep_2 -3 + 102, 1, 4.53, 4.53 );
setScaleKey( spep_2 -3 + 104, 1, 3.34, 3.34 );
setScaleKey( spep_2 -3 + 106, 1, 2.59, 2.59 );
setScaleKey( spep_2 -3 + 108, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 110, 1, 1.66, 1.66 );
setScaleKey( spep_2 -3 + 112, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 114, 1, 1.13, 1.13 );
setScaleKey( spep_2 -3 + 116, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 118, 1, 0.78, 0.78 );
setScaleKey( spep_2 -3 + 120, 1, 0.65, 0.65 );
setScaleKey( spep_2 -3 + 122, 1, 0.53, 0.53 );
setScaleKey( spep_2 -3 + 124, 1, 0.42, 0.42 );
setScaleKey( spep_2  + 126, 1, 0.3, 0.3 );

setRotateKey( spep_2  + 0, 1, -113.3 );
--setRotateKey( spep_2 -3 + 2, 1, -107.8 );
setRotateKey( spep_2 -3 + 4, 1, -102.8 );
setRotateKey( spep_2 -3 + 6, 1, -98.4 );
setRotateKey( spep_2 -3 + 8, 1, -94.6 );
setRotateKey( spep_2 -3 + 10, 1, -91.4 );
setRotateKey( spep_2 -3 + 12, 1, -88.8 );
setRotateKey( spep_2 -3 + 14, 1, -86.7 );
setRotateKey( spep_2 -3 + 16, 1, -85.3 );
setRotateKey( spep_2 -3 + 18, 1, -84.4 );
setRotateKey( spep_2 -3 + 20, 1, -84.1 );
setRotateKey( spep_2 -4 + 33, 1, -84.1 );
setRotateKey( spep_2 -4 + 34, 1, -135.9 );
setRotateKey( spep_2 -3 + 82, 1, -135.9 );
setRotateKey( spep_2 -3 + 84, 1, -150.6 );
setRotateKey( spep_2 -3 + 86, 1, -163.3 );
setRotateKey( spep_2 -3 + 88, 1, -174.1 );
setRotateKey( spep_2 -3 + 90, 1, -182.9 );
setRotateKey( spep_2 -3 + 92, 1, -189.8 );
setRotateKey( spep_2 -3 + 94, 1, -194.7 );
setRotateKey( spep_2 -3 + 96, 1, -197.6 );
setRotateKey( spep_2 -3 + 99, 1, -198.6 );
setRotateKey( spep_2 -3 + 100, 1, 163 );
setRotateKey( spep_2 -3 + 102, 1, 174.6 );
setRotateKey( spep_2 -3 + 104, 1, 179.6 );
setRotateKey( spep_2 -3 + 106, 1, 182.8 );
setRotateKey( spep_2 -3 + 108, 1, 185.1 );
setRotateKey( spep_2 -3 + 110, 1, 186.7 );
setRotateKey( spep_2 -3 + 112, 1, 188 );
setRotateKey( spep_2 -3 + 114, 1, 189 );
setRotateKey( spep_2 -3 + 116, 1, 189.8 );
setRotateKey( spep_2 -3 + 118, 1, 190.4 );
setRotateKey( spep_2 -3 + 120, 1, 191 );
setRotateKey( spep_2 -3 + 122, 1, 191.5 );
setRotateKey( spep_2 -3 + 124, 1, 192 );
setRotateKey( spep_2  + 126, 1, 192.5 );


--SE
playSe( spep_2 + 8, 1047);--瞬間移動
playSe( spep_2 + 30, 1120);--けり
SE3=playSe( spep_2 + 80, 1121);--落下
stopSe( spep_2 +124, SE3,30 );
playSe( spep_2 + 126, 1023);--地面に衝突

-- ** 黒背景 ** --
entryFadeBg( spep_2 , 0, 190 , 0, 0, 0, 0, 180 );  --黒　背景

--白フェード
entryFade( spep_2 + 182, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+190;

------------------------------------------------------
-- ため
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 120, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 120, tame, 255 );

--***カットイン***
--speff = entryEffect(  spep_3 + 12 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_3 + 12 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_3 + 12 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_3 + 12 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_3 + 12 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_3 + 12  + 26, ctgogo, 0 );
setEffAlphaKey( spep_3 + 12  + 27, ctgogo, 255 );
setEffAlphaKey( spep_3 + 12  + 28, ctgogo, 255 );
setEffAlphaKey( spep_3 + 12  + 88, ctgogo, 255 );
setEffAlphaKey( spep_3 + 12  + 90, ctgogo, 255 );
setEffAlphaKey( spep_3 + 12  + 92, ctgogo, 191 );
setEffAlphaKey( spep_3 + 12  + 94, ctgogo, 128 );
setEffAlphaKey( spep_3 + 12  + 96, ctgogo, 64 );
setEffAlphaKey( spep_3 + 12  + 98, ctgogo, 0 );

setEffRotateKey(  spep_3 + 12 +26,  ctgogo,  0);
setEffRotateKey(  spep_3 + 12 +98,  ctgogo,  0);

setEffScaleKey(  spep_3 + 12 +26,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 + 12 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 + 12 +98,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen2 = entryEffectLife( spep_3 + 0,  906, 118, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 118, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen2, 1.47, 1.51 );
setEffScaleKey( spep_3 + 118, shuchusen2, 1.47, 1.51 );

setEffRotateKey( spep_3 + 0, shuchusen2, 180 );
setEffRotateKey( spep_3 + 118, shuchusen2, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 + 118, shuchusen2, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 , 0, 120 , 0, 0, 0, 0, 180 );  --黒　背景
entryFadeBg( spep_3 +24 , 24,78 , 0, 0, 0, 0, 255 );  --黒　背景

--SE
--playSe( spep_3 , 1036);--ため
--playSe( spep_3 + 20 , 1036);--ため
SE1=playSe( spep_3 , 15);--ため
stopSe( spep_3 +36, SE1, 0 );
playSe( spep_3 + 38, 1018);--ゴゴゴ

--白フェード
entryFade( spep_3 + 112, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3+120;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

removeAllEffect(spep_4-1);
--カード登場時前に全てのエフェクトを止める

if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_4, SE_05);
speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end                            -- 技名テクスチャ差し替え


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
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_5 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_5 + 60, shoot, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_5 + 60, shoot, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, shoot, 0 );
setEffRotateKey( spep_5 + 60, shoot, 0 );
setEffAlphaKey( spep_5 + 0, shoot, 255 );
setEffAlphaKey( spep_5 + 60, shoot, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906,10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_5 + 10, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.09, 1.17 );
setEffScaleKey( spep_5 + 10, shuchusen3, 1.09, 1.17 );

setEffRotateKey( spep_5 + 0, shuchusen3, 180 );
setEffRotateKey( spep_5 + 10, shuchusen3, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 10, shuchusen3, 255 );

--SE
playSe( spep_5, 1022);--放つ音

-- ** 黒背景 ** --
entryFadeBg( spep_5 , 0, 60 , 0, 0, 0, 0, 220 );  --黒　背景
entryFadeBg( spep_5+20 , 6, 34 , 0, 0, 0, 0, 220 );  --黒　背景

--白フェード
entryFade( spep_5 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 60;


------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 180, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 180, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 180, finish, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 , 0, 180 , 0, 0, 0, 0, 255 );  --黒　背景

--SE
playSe( spep_6 + 12, 1024);--放つ音
SE2=playSe( spep_6 + 66, 1044);--地鳴り音
stopSe( spep_6 +170, SE2, 0 );
-- ** ダメージ表示 ** --
dealDamage( spep_6 + 40 );
endPhase( spep_6 + 172 );

end