--1017740:超サイヤ人孫悟空/超サイヤ人孫悟飯(少年期)_かめはめ波
--sp_effect_a1_00178

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
SP_01=	153880	;--	導入、前方突進
SP_02=	153881	;--	ラッシュ
SP_03=	153882	;--	かめはめ波を溜める
SP_04=	153883	;--	かめはめ波を放つ
SP_05=	153884	;--	敵に着弾：画面手前
SP_06=	153885	;--	敵に着弾：画面奥
SP_07=	153886	;--	専用ギャン
SP_08=	153887	;--	敵爆発

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
-- 導入、前方突進
------------------------------------------------------
--はじめの準備
spep_0 = 0;


-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tossin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 76, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 74, tossin, 255 );
setEffAlphaKey( spep_0 + 75, tossin, 255 );
setEffAlphaKey( spep_0 + 76, tossin, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 213, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 76, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 74, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 0 );

--SE
SE0=playSe( spep_0, 9);--突進

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 , 0, 0, 0, 0, 130 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
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

--次の準備
spep_1 =spep_0+76;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
lush = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_1 + 160, lush, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, lush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, lush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lush, 0 );
setEffRotateKey( spep_1 + 160, lush, 0 );
setEffAlphaKey( spep_1 + 0, lush, 255 );
setEffAlphaKey( spep_1 + 160, lush, 255 );

--流線
ryusen1 = entryEffectLife( spep_1  + 0,  920, 16-2, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -2 + 16, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -2 + 16, ryusen1, 4, 1 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -2 + 16, ryusen1, 0 );

setEffAlphaKey( spep_1  + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 -2 + 16, ryusen1, 255 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 96,  920, 8 + 1, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 96, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -2 + 104, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 96, ryusen2, 5.2, 1.3 );
setEffScaleKey( spep_1 -2 + 104, ryusen2, 5.2, 1.3 );

setEffRotateKey( spep_1 -3 + 96, ryusen2, -30 );
setEffRotateKey( spep_1 -2 + 104, ryusen2, -30 );

setEffAlphaKey( spep_1 -3 + 96, ryusen2, 255 );
setEffAlphaKey( spep_1 -2 + 104, ryusen2, 255 );

--流線
ryusen3 = entryEffectLife( spep_1 -3 + 118,  920, 40, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 118, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 158, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 118, ryusen3, 5.2, 1.3 );
setEffScaleKey( spep_1 -3 + 158, ryusen3, 5.2, 1.3 );

setEffRotateKey( spep_1 -3 + 118, ryusen3, -15 );
setEffRotateKey( spep_1 -3 + 158, ryusen3, -15 );

setEffAlphaKey( spep_1 -3 + 118, ryusen3, 255 );
setEffAlphaKey( spep_1 -3 + 158, ryusen3, 255 );


--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 18,  906, 10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 18, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 28, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 18, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 -3 + 28, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 -3 + 18, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 28, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 28, shuchusen2, 255 );

--集中線
shuchusen3= entryEffectLife( spep_1 -3 + 36,  906, 8, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 36, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 44, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 36, shuchusen3, 1, 1 );
setEffScaleKey( spep_1 -3 + 44, shuchusen3, 1, 1 );

setEffRotateKey( spep_1 -3 + 36, shuchusen3, 180 );
setEffRotateKey( spep_1 -3 + 44, shuchusen3, 180 );

setEffAlphaKey( spep_1 -3 + 36, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 44, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_1 -3 + 56,  906, 8 + 2, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 56, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 -1 + 64, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 56, shuchusen4, 1, 1 );
setEffScaleKey( spep_1 -1 + 64, shuchusen4, 1, 1 );

setEffRotateKey( spep_1 -3 + 56, shuchusen4, 180 );
setEffRotateKey( spep_1 -1 + 64, shuchusen4, 180 );

setEffAlphaKey( spep_1 -3 + 56, shuchusen4, 255 );
setEffAlphaKey( spep_1 -1 + 64, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_1 - 3 + 118,  906, 6, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 - 3 + 118, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_1 - 3 + 124, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_1 - 3 + 118, shuchusen5, 1, 1 );
setEffScaleKey( spep_1 - 3 + 124, shuchusen5, 1, 1 );

setEffRotateKey( spep_1 - 3 + 118, shuchusen5, 0 );
setEffRotateKey( spep_1 - 3 + 124, shuchusen5, 0 );

setEffAlphaKey( spep_1 - 3 + 118, shuchusen5, 255 );
setEffAlphaKey( spep_1 - 3 + 124, shuchusen5, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 -3 + 18,  10020, 20, 0x100, -1, 0, 30.6, -41.9 );--バキッ
setEffMoveKey( spep_1 -3 + 18, ctbaki, 30.6, -41.9 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctbaki, 84.7, -114.1 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctbaki, 124.4, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctbaki, 140.7, -189.6 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctbaki, 132.5, -194.6 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctbaki, 142.9, -191.1 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctbaki, 147.1, -207.9 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctbaki, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctbaki, 151.6, -211.6 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, 151.9, -210.6 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, 160.5, -217.4 , 0 );

setEffScaleKey( spep_1 -3 + 18, ctbaki, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 20, ctbaki, 1.37, 1.37 );
setEffScaleKey( spep_1 -3 + 22, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 24, ctbaki, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 26, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 28, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 30, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 32, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 34, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 36, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 38, ctbaki, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 18, ctbaki, 0 );
setEffRotateKey( spep_1 -3 + 38, ctbaki, 0 );

setEffAlphaKey( spep_1 -3 + 18, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 32, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 34, ctbaki, 179 );
setEffAlphaKey( spep_1 -3 + 36, ctbaki, 102 );
setEffAlphaKey( spep_1 -3 + 38, ctbaki, 26 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 36,  10019, 20, 0x100, -1, 0, 0, -0.1 );--ドンッ

setEffMoveKey( spep_1 -3 + 36, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdon, -54.9, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctdon, -93.8, 254 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctdon, -107, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctdon, -98.5, 265.7 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctdon, -114.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctdon, -112.3, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctdon, -122.7, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon, -119.5, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon, -122.6, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon, -125.8, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 36, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 38, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 40, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 42, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 44, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 46, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 48, ctdon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 50, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 52, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 54, ctdon, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 56, ctdon, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 36, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 56, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 36, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 50, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 52, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 54, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 56, ctdon, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_1 -3 + 56,  10020, 20, 0x100, -1, 0, 30.6, -41.9 );--バキッ
setEffMoveKey( spep_1 -3 + 56, ctbaki2, 30.6, -41.9 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctbaki2, 84.7, -114.1 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctbaki2, 124.4, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctbaki2, 140.7, -189.6 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctbaki2, 132.5, -194.6 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbaki2, 142.9, -191.1 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbaki2, 147.1, -207.9 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctbaki2, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctbaki2, 151.6, -211.6 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctbaki2, 151.9, -210.6 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctbaki2, 160.5, -217.4 , 0 );

setEffScaleKey( spep_1 -3 + 56, ctbaki2, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 58, ctbaki2, 1.37, 1.37 );
setEffScaleKey( spep_1 -3 + 60, ctbaki2, 2, 2 );
setEffScaleKey( spep_1 -3 + 62, ctbaki2, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 64, ctbaki2, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 66, ctbaki2, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 68, ctbaki2, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 70, ctbaki2, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 72, ctbaki2, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 74, ctbaki2, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 76, ctbaki2, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 56, ctbaki2, 0 );
setEffRotateKey( spep_1 -3 + 76, ctbaki2, 0 );

setEffAlphaKey( spep_1 -3 + 56, ctbaki2, 255 );
setEffAlphaKey( spep_1 -3 + 70, ctbaki2, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctbaki2, 179 );
setEffAlphaKey( spep_1 -3 + 74, ctbaki2, 102 );
setEffAlphaKey( spep_1 -3 + 76, ctbaki2, 26 );

--文字エントリー
ctdigin = entryEffectLife( spep_1 -3 + 106,  10018, 18, 0x100, -1, 0, 30, 93.3 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 106, ctdigin, 30, 93.3 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctdigin, -1.5, 154.1 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctdigin, -20, 212.7 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctdigin, -33.7, 224.8 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctdigin, -29.6, 223.8 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctdigin, -46.1, 228.8 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctdigin, -52.5, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctdigin, -50.1, 245.1 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctdigin, -53.2, 237.6 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctdigin, -56.5, 241.3 , 0 );

setEffScaleKey( spep_1 -3 + 106, ctdigin, 0.33, 0.33 );
setEffScaleKey( spep_1 -3 + 108, ctdigin, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 110, ctdigin, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 112, ctdigin, 2.15, 2.15 );
setEffScaleKey( spep_1 -3 + 114, ctdigin, 2.21, 2.21 );
setEffScaleKey( spep_1 -3 + 116, ctdigin, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 118, ctdigin, 2.34, 2.34 );
setEffScaleKey( spep_1 -3 + 120, ctdigin, 2.38, 2.38 );
setEffScaleKey( spep_1 -3 + 122, ctdigin, 2.43, 2.43 );
setEffScaleKey( spep_1 -3 + 124, ctdigin, 2.47, 2.47 );

setEffRotateKey( spep_1 -3 + 106, ctdigin, -27 );
setEffRotateKey( spep_1 -3 + 124, ctdigin, -27 );

setEffAlphaKey( spep_1 -3 + 106, ctdigin, 255 );
setEffAlphaKey( spep_1 -3 + 118, ctdigin, 255 );
setEffAlphaKey( spep_1 -3 + 120, ctdigin, 170 );
setEffAlphaKey( spep_1 -3 + 122, ctdigin, 85 );
setEffAlphaKey( spep_1 -3 + 124, ctdigin, 0 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 158, 1, 0 );

changeAnime( spep_1  + 0, 1, 101 );
changeAnime( spep_1 -3 + 18, 1, 108 );
changeAnime( spep_1 -3 + 30, 1, 106 );
changeAnime( spep_1 -3 + 36, 1, 108 );
changeAnime( spep_1 -3 + 46, 1, 106 );
changeAnime( spep_1 -3 + 56, 1, 108 );
changeAnime( spep_1 -3 + 64, 1, 106 );
changeAnime( spep_1 -3 + 106, 1, 108 );

setMoveKey( spep_1  + 0, 1, 280, 0 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 276.9, 0 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 269, 0 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 257.2, 0 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 241.9, 0 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 222.8, 0 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 198.7, 0 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 166.6, 0 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 100, 0 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 51.9, 25.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 84.5, 19.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 95.7, 21.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 153.5, 23 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 106.7, 21.5 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 79, 19.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 60, 19.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 68.1, 19.8 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 76.1, 19.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 85.1, 37 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 124.8, 30 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 169.3, 29.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 177.3, 30.1 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 141.5, 28.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 128, 19.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 127, 19.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 125.9, 19.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 74.9, 19.9 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 23.9, 19.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 135.2, 98.3 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 126, 125.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 146.1, 125.2 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 174.7, 153.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 200.6, 224.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 224, 222.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 242.3, 225.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 255.9, 226.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 266.5, 227.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 275.2, 226.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 282.2, 225.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 288, 224.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 292.6, 222.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 296.1, 220.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 298.6, 218 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 300, 215 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 300.2, 211.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 299.4, 208 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 297.1, 203.8 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 293.2, 199 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 282.9, 189.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 264.1, 174.3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 237.7, 152.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 201, 123.6 , 0 );
setMoveKey( spep_1 -3 + 105, 1, 121.8, 61.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 109.4, 44.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 76.4, 23.7 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 88, 26.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 102.1, 29.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 105.9, 28.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 83.7, 25.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 97.6, 25.2 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 90.7, 20.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 87.4, 22.3 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 83.8, 24.3 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 96.3, 25.9 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 123, 33.3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 140.3, 38.8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 156, 44 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 171, 49 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 185.4, 53.9 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 199.3, 58.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 212.9, 63.6 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 226.3, 68.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 239.5, 73 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 252.6, 77.7 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 265.4, 82.2 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 390.5, 121.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 499.2, 155.5 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 593.1, 185.2 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 671.8, 210.3 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 731.7, 229.7 , 0 );

b=0.3;

setScaleKey( spep_1  + 0, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 17, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 18, 1, 1.82 + b, 1.82 + b );
setScaleKey( spep_1 -3 + 20, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 22, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 24, 1, 1.61 + b, 1.61 + b );
setScaleKey( spep_1 -3 + 26, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 29, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 35, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 36, 1, 1.82 + b, 1.82 + b );
setScaleKey( spep_1 -3 + 38, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 40, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 42, 1, 1.61 + b, 1.61 + b );
setScaleKey( spep_1 -3 + 45, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 46, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 55, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 56, 1, 1.56 + b, 1.56 + b );
setScaleKey( spep_1 -3 + 58, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 60, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 63, 1, 1.61 + b, 1.61 + b );
setScaleKey( spep_1 -3 + 64, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 66, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 105, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 106, 1, 1.96 + b, 1.96 + b );
setScaleKey( spep_1 -3 + 108, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 110, 1, 1.54 + b, 1.54 + b );
setScaleKey( spep_1 -3 + 112, 1, 1.68 + b, 1.68 + b );
setScaleKey( spep_1 -3 + 114, 1, 1.54 + b, 1.54 + b );
setScaleKey( spep_1 -3 + 116, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 118, 1, 1.47 + b, 1.47 + b );
setScaleKey( spep_1 -3 + 120, 1, 1.54 + b, 1.54 + b );
setScaleKey( spep_1 -3 + 122, 1, 1.47 + b, 1.47 + b );
setScaleKey( spep_1 -3 + 124, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 158, 1, 1.4 + b, 1.4 + b );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 17, 1, 0 );
setRotateKey( spep_1 -3 + 18, 1, 15 );
setRotateKey( spep_1 -3 + 29, 1, 15 );
setRotateKey( spep_1 -3 + 30, 1, -50 );
setRotateKey( spep_1 -3 + 35, 1, -50 );
setRotateKey( spep_1 -3 + 36, 1, 5 );
setRotateKey( spep_1 -3 + 38, 1, 15 );
setRotateKey( spep_1 -3 + 45, 1, 15 );
setRotateKey( spep_1 -3 + 46, 1, -20 );
setRotateKey( spep_1 -3 + 48, 1, -18.7 );
setRotateKey( spep_1 -3 + 50, 1, -17.5 );
setRotateKey( spep_1 -3 + 52, 1, -16.2 );
setRotateKey( spep_1 -3 + 55, 1, -15 );
setRotateKey( spep_1 -3 + 56, 1, -35.1 );
setRotateKey( spep_1 -3 + 58, 1, -36.6 );
setRotateKey( spep_1 -3 + 60, 1, -38.3 );
setRotateKey( spep_1 -3 + 63, 1, -40 );
setRotateKey( spep_1 -3 + 64, 1, -40 );
setRotateKey( spep_1 -3 + 66, 1, -39 );
setRotateKey( spep_1 -3 + 68, 1, -38.3 );
setRotateKey( spep_1 -3 + 70, 1, -37.8 );
setRotateKey( spep_1 -3 + 72, 1, -37.4 );
setRotateKey( spep_1 -3 + 74, 1, -37 );
setRotateKey( spep_1 -3 + 76, 1, -36.7 );
setRotateKey( spep_1 -3 + 78, 1, -36.4 );
setRotateKey( spep_1 -3 + 80, 1, -36.1 );
setRotateKey( spep_1 -3 + 82, 1, -35.8 );
setRotateKey( spep_1 -3 + 84, 1, -35.6 );
setRotateKey( spep_1 -3 + 86, 1, -35.5 );
setRotateKey( spep_1 -3 + 88, 1, -35.3 );
setRotateKey( spep_1 -3 + 90, 1, -35.2 );
setRotateKey( spep_1 -3 + 92, 1, -35.1 );
setRotateKey( spep_1 -3 + 94, 1, -35.1 );
setRotateKey( spep_1 -3 + 96, 1, -34.5 );
setRotateKey( spep_1 -3 + 98, 1, -33.1 );
setRotateKey( spep_1 -3 + 100, 1, -30.9 );
setRotateKey( spep_1 -3 + 102, 1, -27.7 );
setRotateKey( spep_1 -3 + 105, 1, -20 );
setRotateKey( spep_1 -3 + 106, 1, -20 );
setRotateKey( spep_1 -3 + 108, 1, -18.3 );
setRotateKey( spep_1 -3 + 110, 1, -16.7 );
setRotateKey( spep_1 -3 + 112, 1, -15 );
setRotateKey( spep_1 -3 + 116, 1, -15 );
setRotateKey( spep_1 -3 + 118, 1, -14 );
setRotateKey( spep_1 -3 + 120, 1, -13 );
setRotateKey( spep_1 -3 + 122, 1, -12 );
setRotateKey( spep_1 -3 + 124, 1, -11 );
setRotateKey( spep_1 -3 + 126, 1, -10 );
setRotateKey( spep_1 -3 + 158, 1, -10 );

--SE
playSe( spep_1+16, 1001);--パンチ
playSe( spep_1+34, 1009);--パンチ
playSe( spep_1+54, 1010);--キック
playSe( spep_1+102, 1011);--パンチ
--SE1=playSe( spep_1+116, 1121);--飛んでいく
--stopSe( spep_1+150, SE1, 30 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 160 , 0, 0, 0, 0, 130 );  --黒　背景
entryFadeBg( spep_1 + 15, 0, 3 , 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_1 + 33, 0, 3 , 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_1 + 53, 0, 3 , 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_1 + 53, 0, 3 , 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_1 + 103, 0, 12 , 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_1 + 152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 =spep_1+160;

------------------------------------------------------
-- かめはめ波を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );

--***カットイン***
speff = entryEffect(  spep_2 - 4 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
speff3 = entryEffect(  spep_2 - 4 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

--集中線
shuchusen6 = entryEffectLife( spep_2 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_2 + 98, shuchusen6, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen6, 0 );
setEffRotateKey( spep_2 + 98, shuchusen6, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen6, 255 );

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 - 4 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 - 4 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_2 - 4 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_2 - 4  + 26, ctgogo, 0 );
setEffAlphaKey( spep_2 - 4  + 27, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 28, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 88, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 - 4  + 94, ctgogo, 128 );
setEffAlphaKey( spep_2 - 4  + 96, ctgogo, 64 );
setEffAlphaKey( spep_2 - 4  + 98, ctgogo, 0 );

setEffRotateKey(  spep_2 - 4 +26,  ctgogo,  0);
setEffRotateKey(  spep_2 - 4 +98,  ctgogo,  0);

setEffScaleKey(  spep_2 - 4 +26,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 - 4 +90,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 - 4 +98,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_2+22, 1018);--ごごご

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 100 , 0, 0, 0, 0, 130 );  --黒　背景

--白フェード
entryFade( spep_2 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 =spep_2+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

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
--playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- かめはめ波を放つ
-----------------------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, shoot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, shoot, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shoot, 0 );
setEffRotateKey( spep_4 + 116, shoot, 0 );
setEffAlphaKey( spep_4 + 0, shoot, 255 );
setEffAlphaKey( spep_4 + 116, shoot, 255 );

-- ** 音 ** --
playSe( spep_4 + 16, 1022 ); --発射

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 116 , 0, 0, 0, 0, 190 );  --黒　背景

--次の準備
spep_5 =spep_4+116;


------------------------------------------------------
-- かめはめ波を放つ
-----------------------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_5 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 56, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 56, semaru_f, 255 );

--流線
ryusen4 = entryEffectLife( spep_5 + 0,  921, 56, 0x80, -1, 0, 18.9, -28.7 );

setEffMoveKey( spep_5 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen4, 1.5, 1.24 );
setEffScaleKey( spep_5 + 56, ryusen4, 1.5, 1.24 );

setEffRotateKey( spep_5 + 0, ryusen4, -125 );
setEffRotateKey( spep_5 + 56, ryusen4, -125 );

setEffAlphaKey( spep_5 + 0, ryusen4, 255 );
setEffAlphaKey( spep_5 + 56, ryusen4, 255 );


-- ** エフェクト等 ** --
semaru_b = entryEffect( spep_5 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_b, 0 );
setEffRotateKey( spep_5 + 56, semaru_b, 0 );
setEffAlphaKey( spep_5 + 0, semaru_b, 255 );
setEffAlphaKey( spep_5 + 56, semaru_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -160, 279.9 , 0 );
setMoveKey( spep_5 + 2, 1, -141.4, 258.6 , 0 );
setMoveKey( spep_5 + 4, 1, -123.3, 237.8 , 0 );
setMoveKey( spep_5 + 6, 1, -105.7, 217.5 , 0 );
setMoveKey( spep_5 + 8, 1, -88.5, 197.7 , 0 );
setMoveKey( spep_5 + 10, 1, -71.6, 178.3 , 0 );
setMoveKey( spep_5 + 12, 1, -55.2, 159.4 , 0 );
setMoveKey( spep_5 + 14, 1, -39.1, 140.9 , 0 );
setMoveKey( spep_5 + 16, 1, -23.3, 122.7 , 0 );
setMoveKey( spep_5 + 18, 1, -7.9, 105 , 0 );
setMoveKey( spep_5 + 20, 1, 7.3, 87.6 , 0 );
setMoveKey( spep_5 + 22, 1, 22.1, 70.5 , 0 );
setMoveKey( spep_5 + 24, 1, 36.7, 53.8 , 0 );
setMoveKey( spep_5 + 26, 1, 50.9, 37.4 , 0 );
setMoveKey( spep_5 + 28, 1, 64.9, 21.3 , 0 );
setMoveKey( spep_5 + 30, 1, 78.6, 5.5 , 0 );
setMoveKey( spep_5 + 32, 1, 92.1, -9.9 , 0 );
setMoveKey( spep_5 + 34, 1, 105.2, -25.1 , 0 );
setMoveKey( spep_5 + 36, 1, 118.1, -39.9 , 0 );
setMoveKey( spep_5 + 38, 1, 130.7, -54.4 , 0 );
setMoveKey( spep_5 + 40, 1, 143, -68.6 , 0 );
setMoveKey( spep_5 + 42, 1, 155.1, -82.4 , 0 );
setMoveKey( spep_5 + 44, 1, 166.8, -96 , 0 );
setMoveKey( spep_5 + 46, 1, 178.3, -109.1 , 0 );
setMoveKey( spep_5 + 48, 1, 189.4, -122 , 0 );
setMoveKey( spep_5 + 50, 1, 200.3, -134.4 , 0 );
setMoveKey( spep_5 + 52, 1, 210.8, -146.5 , 0 );
setMoveKey( spep_5 + 54, 1, 220.9, -158.2 , 0 );
setMoveKey( spep_5 + 56, 1, 230.7, -169.4 , 0 );
--setMoveKey( spep_5 + 58, 1, 240, -180 , 0 );

setScaleKey( spep_5 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 2, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 4, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_5 + 12, 1, 1.11, 1.11 );
setScaleKey( spep_5 + 14, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 22, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 24, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 26, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_5 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_5 + 38, 1, 1.67, 1.67 );
setScaleKey( spep_5 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_5 + 42, 1, 1.75, 1.75 );
setScaleKey( spep_5 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_5 + 46, 1, 1.82, 1.82 );
setScaleKey( spep_5 + 48, 1, 1.85, 1.85 );
setScaleKey( spep_5 + 50, 1, 1.88, 1.88 );
setScaleKey( spep_5 + 52, 1, 1.91, 1.91 );
setScaleKey( spep_5 + 54, 1, 1.94, 1.94 );
setScaleKey( spep_5 + 56, 1, 1.97, 1.97 );
--setScaleKey( spep_5 + 58, 1, 2, 2 );

setRotateKey( spep_5 + 0, 1, -10.1 );
setRotateKey( spep_5 + 8, 1, -10.1 );
setRotateKey( spep_5 + 10, 1, -10 );
setRotateKey( spep_5 + 56, 1, -10 );

-- ** 音 ** --
playSe( spep_5, 1021 ); --発射

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 , 0, 0, 0, 0, 190 );  --黒　背景

--次の準備
spep_6 =spep_5+56;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 7.1, 306.8 , 0 );

a=2.7;

setEffScaleKey( spep_6 + 0, ctgyan, 0.6 + a, 0.6 + a );
setEffScaleKey( spep_6 + 2, ctgyan, 0.7 + a, 0.7 + a );
setEffScaleKey( spep_6 + 4, ctgyan, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_6 + 6, ctgyan, 0.9 + a, 0.9 + a );
setEffScaleKey( spep_6 + 8, ctgyan, 1 + a, 1 + a );
setEffScaleKey( spep_6 + 10, ctgyan, 1.01 + a, 1.01 + a );
setEffScaleKey( spep_6 + 12, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_6 + 14, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_6 + 16, ctgyan, 1.03 + a, 1.03 + a );
setEffScaleKey( spep_6 + 18, ctgyan, 1.04 + a, 1.04 + a );
setEffScaleKey( spep_6 + 20, ctgyan, 1.05 + a, 1.05 + a );
setEffScaleKey( spep_6 + 22, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_6 + 24, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_6 + 26, ctgyan, 1.07 + a, 1.07 + a );
setEffScaleKey( spep_6 + 28, ctgyan, 1.08 + a, 1.08 + a );
setEffScaleKey( spep_6 + 30, ctgyan, 1.09 + a, 1.09 + a );
setEffScaleKey( spep_6 + 32, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_6 + 34, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_6 + 36, ctgyan, 1.11 + a, 1.11 + a );
setEffScaleKey( spep_6 + 38, ctgyan, 1.12 + a, 1.12 + a );
setEffScaleKey( spep_6 + 40, ctgyan, 1.13 + a, 1.13 + a );
setEffScaleKey( spep_6 + 42, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_6 + 44, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_6 + 46, ctgyan, 1.15 + a, 1.15 + a );
setEffScaleKey( spep_6 + 48, ctgyan, 1.16 + a, 1.16 + a );
setEffScaleKey( spep_6 + 50, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_6 + 52, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_6 + 54, ctgyan, 1.18 + a, 1.18 + a );
setEffScaleKey( spep_6 + 56, ctgyan, 1.19 + a, 1.19 + a );
setEffScaleKey( spep_6 + 58, ctgyan, 1.2 + a, 1.2 + a );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_6 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6, 1023 ); --爆発

--次の準備
spep_7 =spep_6+60;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7 + 240, explosion, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 240, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 240, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 240, explosion, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_7 + 0,  906, 238, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 238, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen7, 1.32, 1.92 );
setEffScaleKey( spep_7 + 238, shuchusen7, 1.32, 1.92 );

setEffRotateKey( spep_7 + 0, shuchusen7, 0 );
setEffRotateKey( spep_7 + 238, shuchusen7, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_7 + 238, shuchusen7, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 240 , 0, 0, 0, 0, 190 );  --黒　背景

-- ** 音 ** --
playSe( spep_7, 1024 ); --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 16 );
endPhase( spep_7 + 230 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 導入、前方突進
------------------------------------------------------
--はじめの準備
spep_0 = 0;


-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, tossin, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tossin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tossin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 76, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 74, tossin, 255 );
setEffAlphaKey( spep_0 + 75, tossin, 255 );
setEffAlphaKey( spep_0 + 76, tossin, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 213, 0 );

setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0, shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 76, shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0, shuchusen1, 180 );
setEffRotateKey( spep_0 + 76, shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 74, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76, shuchusen1, 0 );

--SE
SE0=playSe( spep_0, 9);--突進

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 76 , 0, 0, 0, 0, 130 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
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

--次の準備
spep_1 =spep_0+76;

------------------------------------------------------
-- ラッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
lush = entryEffect( spep_1 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, lush, 0, 0 , 0 );
setEffMoveKey( spep_1 + 160, lush, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, lush, 1.0, 1.0 );
setEffScaleKey( spep_1 + 160, lush, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, lush, 0 );
setEffRotateKey( spep_1 + 160, lush, 0 );
setEffAlphaKey( spep_1 + 0, lush, 255 );
setEffAlphaKey( spep_1 + 160, lush, 255 );

--流線
ryusen1 = entryEffectLife( spep_1  + 0,  920, 16-2, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1  + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 -2 + 16, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1  + 0, ryusen1, 4, 1 );
setEffScaleKey( spep_1 -2 + 16, ryusen1, 4, 1 );

setEffRotateKey( spep_1  + 0, ryusen1, 0 );
setEffRotateKey( spep_1 -2 + 16, ryusen1, 0 );

setEffAlphaKey( spep_1  + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 -2 + 16, ryusen1, 255 );

--流線
ryusen2 = entryEffectLife( spep_1 -3 + 96,  920, 8 + 1, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 96, ryusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -2 + 104, ryusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 96, ryusen2, 5.2, 1.3 );
setEffScaleKey( spep_1 -2 + 104, ryusen2, 5.2, 1.3 );

setEffRotateKey( spep_1 -3 + 96, ryusen2, -30 );
setEffRotateKey( spep_1 -2 + 104, ryusen2, -30 );

setEffAlphaKey( spep_1 -3 + 96, ryusen2, 255 );
setEffAlphaKey( spep_1 -2 + 104, ryusen2, 255 );

--流線
ryusen3 = entryEffectLife( spep_1 -3 + 118,  920, 40, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 118, ryusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 158, ryusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 118, ryusen3, 5.2, 1.3 );
setEffScaleKey( spep_1 -3 + 158, ryusen3, 5.2, 1.3 );

setEffRotateKey( spep_1 -3 + 118, ryusen3, -15 );
setEffRotateKey( spep_1 -3 + 158, ryusen3, -15 );

setEffAlphaKey( spep_1 -3 + 118, ryusen3, 255 );
setEffAlphaKey( spep_1 -3 + 158, ryusen3, 255 );


--集中線
shuchusen2 = entryEffectLife( spep_1 -3 + 18,  906, 10, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 18, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 28, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 18, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 -3 + 28, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 -3 + 18, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 28, shuchusen2, 0 );

setEffAlphaKey( spep_1 -3 + 18, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 28, shuchusen2, 255 );

--集中線
shuchusen3= entryEffectLife( spep_1 -3 + 36,  906, 8, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 36, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 44, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 36, shuchusen3, 1, 1 );
setEffScaleKey( spep_1 -3 + 44, shuchusen3, 1, 1 );

setEffRotateKey( spep_1 -3 + 36, shuchusen3, 180 );
setEffRotateKey( spep_1 -3 + 44, shuchusen3, 180 );

setEffAlphaKey( spep_1 -3 + 36, shuchusen3, 255 );
setEffAlphaKey( spep_1 -3 + 44, shuchusen3, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_1 -3 + 56,  906, 8 + 2, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 -3 + 56, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_1 -1 + 64, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 56, shuchusen4, 1, 1 );
setEffScaleKey( spep_1 -1 + 64, shuchusen4, 1, 1 );

setEffRotateKey( spep_1 -3 + 56, shuchusen4, 180 );
setEffRotateKey( spep_1 -1 + 64, shuchusen4, 180 );

setEffAlphaKey( spep_1 -3 + 56, shuchusen4, 255 );
setEffAlphaKey( spep_1 -1 + 64, shuchusen4, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_1 - 3 + 118,  906, 6, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_1 - 3 + 118, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_1 - 3 + 124, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_1 - 3 + 118, shuchusen5, 1, 1 );
setEffScaleKey( spep_1 - 3 + 124, shuchusen5, 1, 1 );

setEffRotateKey( spep_1 - 3 + 118, shuchusen5, 0 );
setEffRotateKey( spep_1 - 3 + 124, shuchusen5, 0 );

setEffAlphaKey( spep_1 - 3 + 118, shuchusen5, 255 );
setEffAlphaKey( spep_1 - 3 + 124, shuchusen5, 255 );

--文字エントリー
ctbaki = entryEffectLife( spep_1 -3 + 18,  10020, 20, 0x100, -1, 0, 30.6, -41.9 );--バキッ
setEffMoveKey( spep_1 -3 + 18, ctbaki, 30.6, -41.9 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctbaki, 84.7, -114.1 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctbaki, 124.4, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctbaki, 140.7, -189.6 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctbaki, 132.5, -194.6 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctbaki, 142.9, -191.1 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctbaki, 147.1, -207.9 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctbaki, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctbaki, 151.6, -211.6 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctbaki, 151.9, -210.6 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctbaki, 160.5, -217.4 , 0 );

setEffScaleKey( spep_1 -3 + 18, ctbaki, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 20, ctbaki, 1.37, 1.37 );
setEffScaleKey( spep_1 -3 + 22, ctbaki, 2, 2 );
setEffScaleKey( spep_1 -3 + 24, ctbaki, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 26, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 28, ctbaki, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 30, ctbaki, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 32, ctbaki, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 34, ctbaki, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 36, ctbaki, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 38, ctbaki, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 18, ctbaki, 0 );
setEffRotateKey( spep_1 -3 + 38, ctbaki, 0 );

setEffAlphaKey( spep_1 -3 + 18, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 32, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 34, ctbaki, 179 );
setEffAlphaKey( spep_1 -3 + 36, ctbaki, 102 );
setEffAlphaKey( spep_1 -3 + 38, ctbaki, 26 );

--文字エントリー
ctdon = entryEffectLife( spep_1 -3 + 36,  10019, 20, 0x100, -1, 0, 0, -0.1 );--ドンッ

setEffMoveKey( spep_1 -3 + 36, ctdon, 0, -0.1 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctdon, -54.9, 128.3 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctdon, -93.8, 254 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctdon, -107, 267.8 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctdon, -98.5, 265.7 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctdon, -114.8, 270.9 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctdon, -112.3, 284.7 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctdon, -122.7, 282.8 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctdon, -119.5, 305.9 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctdon, -122.6, 307.7 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctdon, -125.8, 322.6 , 0 );

setEffScaleKey( spep_1 -3 + 36, ctdon, 0.25, 0.25 );
setEffScaleKey( spep_1 -3 + 38, ctdon, 1.13, 1.13 );
setEffScaleKey( spep_1 -3 + 40, ctdon, 2, 2 );
setEffScaleKey( spep_1 -3 + 42, ctdon, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 44, ctdon, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 46, ctdon, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 48, ctdon, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 50, ctdon, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 52, ctdon, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 54, ctdon, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 56, ctdon, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 36, ctdon, 0 );
setEffRotateKey( spep_1 -3 + 56, ctdon, 0 );

setEffAlphaKey( spep_1 -3 + 36, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 50, ctdon, 255 );
setEffAlphaKey( spep_1 -3 + 52, ctdon, 170 );
setEffAlphaKey( spep_1 -3 + 54, ctdon, 85 );
setEffAlphaKey( spep_1 -3 + 56, ctdon, 0 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_1 -3 + 56,  10020, 20, 0x100, -1, 0, 30.6, -41.9 );--バキッ
setEffMoveKey( spep_1 -3 + 56, ctbaki2, 30.6, -41.9 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctbaki2, 84.7, -114.1 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctbaki2, 124.4, -177.3 , 0 );
setEffMoveKey( spep_1 -3 + 62, ctbaki2, 140.7, -189.6 , 0 );
setEffMoveKey( spep_1 -3 + 64, ctbaki2, 132.5, -194.6 , 0 );
setEffMoveKey( spep_1 -3 + 66, ctbaki2, 142.9, -191.1 , 0 );
setEffMoveKey( spep_1 -3 + 68, ctbaki2, 147.1, -207.9 , 0 );
setEffMoveKey( spep_1 -3 + 70, ctbaki2, 145.9, -201.5 , 0 );
setEffMoveKey( spep_1 -3 + 72, ctbaki2, 151.6, -211.6 , 0 );
setEffMoveKey( spep_1 -3 + 74, ctbaki2, 151.9, -210.6 , 0 );
setEffMoveKey( spep_1 -3 + 76, ctbaki2, 160.5, -217.4 , 0 );

setEffScaleKey( spep_1 -3 + 56, ctbaki2, 0.73, 0.73 );
setEffScaleKey( spep_1 -3 + 58, ctbaki2, 1.37, 1.37 );
setEffScaleKey( spep_1 -3 + 60, ctbaki2, 2, 2 );
setEffScaleKey( spep_1 -3 + 62, ctbaki2, 2.02, 2.02 );
setEffScaleKey( spep_1 -3 + 64, ctbaki2, 2.04, 2.04 );
setEffScaleKey( spep_1 -3 + 66, ctbaki2, 2.06, 2.06 );
setEffScaleKey( spep_1 -3 + 68, ctbaki2, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 70, ctbaki2, 2.1, 2.1 );
setEffScaleKey( spep_1 -3 + 72, ctbaki2, 2.13, 2.13 );
setEffScaleKey( spep_1 -3 + 74, ctbaki2, 2.17, 2.17 );
setEffScaleKey( spep_1 -3 + 76, ctbaki2, 2.2, 2.2 );

setEffRotateKey( spep_1 -3 + 56, ctbaki2, 0 );
setEffRotateKey( spep_1 -3 + 76, ctbaki2, 0 );

setEffAlphaKey( spep_1 -3 + 56, ctbaki2, 255 );
setEffAlphaKey( spep_1 -3 + 70, ctbaki2, 255 );
setEffAlphaKey( spep_1 -3 + 72, ctbaki2, 179 );
setEffAlphaKey( spep_1 -3 + 74, ctbaki2, 102 );
setEffAlphaKey( spep_1 -3 + 76, ctbaki2, 26 );

--文字エントリー
ctdigin = entryEffectLife( spep_1 -3 + 106,  10018, 18, 0x100, -1, 0, 30, 93.3 );--ドゴォンッ

setEffMoveKey( spep_1 -3 + 106, ctdigin, 30, 93.3 , 0 );
setEffMoveKey( spep_1 -3 + 108, ctdigin, -1.5, 154.1 , 0 );
setEffMoveKey( spep_1 -3 + 110, ctdigin, -20, 212.7 , 0 );
setEffMoveKey( spep_1 -3 + 112, ctdigin, -33.7, 224.8 , 0 );
setEffMoveKey( spep_1 -3 + 114, ctdigin, -29.6, 223.8 , 0 );
setEffMoveKey( spep_1 -3 + 116, ctdigin, -46.1, 228.8 , 0 );
setEffMoveKey( spep_1 -3 + 118, ctdigin, -52.5, 234.4 , 0 );
setEffMoveKey( spep_1 -3 + 120, ctdigin, -50.1, 245.1 , 0 );
setEffMoveKey( spep_1 -3 + 122, ctdigin, -53.2, 237.6 , 0 );
setEffMoveKey( spep_1 -3 + 124, ctdigin, -56.5, 241.3 , 0 );

setEffScaleKey( spep_1 -3 + 106, ctdigin, 0.33, 0.33 );
setEffScaleKey( spep_1 -3 + 108, ctdigin, 1.2, 1.2 );
setEffScaleKey( spep_1 -3 + 110, ctdigin, 2.08, 2.08 );
setEffScaleKey( spep_1 -3 + 112, ctdigin, 2.15, 2.15 );
setEffScaleKey( spep_1 -3 + 114, ctdigin, 2.21, 2.21 );
setEffScaleKey( spep_1 -3 + 116, ctdigin, 2.28, 2.28 );
setEffScaleKey( spep_1 -3 + 118, ctdigin, 2.34, 2.34 );
setEffScaleKey( spep_1 -3 + 120, ctdigin, 2.38, 2.38 );
setEffScaleKey( spep_1 -3 + 122, ctdigin, 2.43, 2.43 );
setEffScaleKey( spep_1 -3 + 124, ctdigin, 2.47, 2.47 );

setEffRotateKey( spep_1 -3 + 106, ctdigin, -27 );
setEffRotateKey( spep_1 -3 + 124, ctdigin, -27 );

setEffAlphaKey( spep_1 -3 + 106, ctdigin, 255 );
setEffAlphaKey( spep_1 -3 + 118, ctdigin, 255 );
setEffAlphaKey( spep_1 -3 + 120, ctdigin, 170 );
setEffAlphaKey( spep_1 -3 + 122, ctdigin, 85 );
setEffAlphaKey( spep_1 -3 + 124, ctdigin, 0 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 158, 1, 0 );

changeAnime( spep_1  + 0, 1, 101 );
changeAnime( spep_1 -3 + 18, 1, 108 );
changeAnime( spep_1 -3 + 30, 1, 106 );
changeAnime( spep_1 -3 + 36, 1, 108 );
changeAnime( spep_1 -3 + 46, 1, 106 );
changeAnime( spep_1 -3 + 56, 1, 108 );
changeAnime( spep_1 -3 + 64, 1, 106 );
changeAnime( spep_1 -3 + 106, 1, 108 );

setMoveKey( spep_1  + 0, 1, 280, 0 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 276.9, 0 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 269, 0 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 257.2, 0 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 241.9, 0 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 222.8, 0 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 198.7, 0 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 166.6, 0 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 100, 0 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 51.9, 25.9 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 84.5, 19.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 95.7, 21.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 153.5, 23 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 106.7, 21.5 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 79, 19.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 60, 19.9 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 68.1, 19.8 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 76.1, 19.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 85.1, 37 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 124.8, 30 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 169.3, 29.1 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 177.3, 30.1 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 141.5, 28.9 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 128, 19.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 127, 19.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 125.9, 19.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 74.9, 19.9 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 23.9, 19.9 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 135.2, 98.3 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 126, 125.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 146.1, 125.2 , 0 );
setMoveKey( spep_1 -3 + 63, 1, 174.7, 153.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 200.6, 224.9 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 224, 222.5 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 242.3, 225.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 255.9, 226.9 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 266.5, 227.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 275.2, 226.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 282.2, 225.9 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 288, 224.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 292.6, 222.6 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 296.1, 220.5 , 0 );
setMoveKey( spep_1 -3 + 84, 1, 298.6, 218 , 0 );
setMoveKey( spep_1 -3 + 86, 1, 300, 215 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 300.2, 211.8 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 299.4, 208 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 297.1, 203.8 , 0 );
setMoveKey( spep_1 -3 + 94, 1, 293.2, 199 , 0 );
setMoveKey( spep_1 -3 + 96, 1, 282.9, 189.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 264.1, 174.3 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 237.7, 152.8 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 201, 123.6 , 0 );
setMoveKey( spep_1 -3 + 105, 1, 121.8, 61.8 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 109.4, 44.3 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 76.4, 23.7 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 88, 26.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 102.1, 29.1 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 105.9, 28.1 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 83.7, 25.6 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 97.6, 25.2 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 90.7, 20.6 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 87.4, 22.3 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 83.8, 24.3 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 96.3, 25.9 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 123, 33.3 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 140.3, 38.8 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 156, 44 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 171, 49 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 185.4, 53.9 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 199.3, 58.8 , 0 );
setMoveKey( spep_1 -3 + 140, 1, 212.9, 63.6 , 0 );
setMoveKey( spep_1 -3 + 142, 1, 226.3, 68.3 , 0 );
setMoveKey( spep_1 -3 + 144, 1, 239.5, 73 , 0 );
setMoveKey( spep_1 -3 + 146, 1, 252.6, 77.7 , 0 );
setMoveKey( spep_1 -3 + 148, 1, 265.4, 82.2 , 0 );
setMoveKey( spep_1 -3 + 150, 1, 390.5, 121.4 , 0 );
setMoveKey( spep_1 -3 + 152, 1, 499.2, 155.5 , 0 );
setMoveKey( spep_1 -3 + 154, 1, 593.1, 185.2 , 0 );
setMoveKey( spep_1 -3 + 156, 1, 671.8, 210.3 , 0 );
setMoveKey( spep_1 -3 + 158, 1, 731.7, 229.7 , 0 );

b=0.3;

setScaleKey( spep_1  + 0, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 17, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 18, 1, 1.82 + b, 1.82 + b );
setScaleKey( spep_1 -3 + 20, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 22, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 24, 1, 1.61 + b, 1.61 + b );
setScaleKey( spep_1 -3 + 26, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 29, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 35, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 36, 1, 1.82 + b, 1.82 + b );
setScaleKey( spep_1 -3 + 38, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 40, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 42, 1, 1.61 + b, 1.61 + b );
setScaleKey( spep_1 -3 + 45, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 46, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 55, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 56, 1, 1.56 + b, 1.56 + b );
setScaleKey( spep_1 -3 + 58, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 60, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 63, 1, 1.61 + b, 1.61 + b );
setScaleKey( spep_1 -3 + 64, 1, 1.51 + b, 1.51 + b );
setScaleKey( spep_1 -3 + 66, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 105, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 106, 1, 1.96 + b, 1.96 + b );
setScaleKey( spep_1 -3 + 108, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 110, 1, 1.54 + b, 1.54 + b );
setScaleKey( spep_1 -3 + 112, 1, 1.68 + b, 1.68 + b );
setScaleKey( spep_1 -3 + 114, 1, 1.54 + b, 1.54 + b );
setScaleKey( spep_1 -3 + 116, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 118, 1, 1.47 + b, 1.47 + b );
setScaleKey( spep_1 -3 + 120, 1, 1.54 + b, 1.54 + b );
setScaleKey( spep_1 -3 + 122, 1, 1.47 + b, 1.47 + b );
setScaleKey( spep_1 -3 + 124, 1, 1.4 + b, 1.4 + b );
setScaleKey( spep_1 -3 + 158, 1, 1.4 + b, 1.4 + b );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 17, 1, 0 );
setRotateKey( spep_1 -3 + 18, 1, 15 );
setRotateKey( spep_1 -3 + 29, 1, 15 );
setRotateKey( spep_1 -3 + 30, 1, -50 );
setRotateKey( spep_1 -3 + 35, 1, -50 );
setRotateKey( spep_1 -3 + 36, 1, 5 );
setRotateKey( spep_1 -3 + 38, 1, 15 );
setRotateKey( spep_1 -3 + 45, 1, 15 );
setRotateKey( spep_1 -3 + 46, 1, -20 );
setRotateKey( spep_1 -3 + 48, 1, -18.7 );
setRotateKey( spep_1 -3 + 50, 1, -17.5 );
setRotateKey( spep_1 -3 + 52, 1, -16.2 );
setRotateKey( spep_1 -3 + 55, 1, -15 );
setRotateKey( spep_1 -3 + 56, 1, -35.1 );
setRotateKey( spep_1 -3 + 58, 1, -36.6 );
setRotateKey( spep_1 -3 + 60, 1, -38.3 );
setRotateKey( spep_1 -3 + 63, 1, -40 );
setRotateKey( spep_1 -3 + 64, 1, -40 );
setRotateKey( spep_1 -3 + 66, 1, -39 );
setRotateKey( spep_1 -3 + 68, 1, -38.3 );
setRotateKey( spep_1 -3 + 70, 1, -37.8 );
setRotateKey( spep_1 -3 + 72, 1, -37.4 );
setRotateKey( spep_1 -3 + 74, 1, -37 );
setRotateKey( spep_1 -3 + 76, 1, -36.7 );
setRotateKey( spep_1 -3 + 78, 1, -36.4 );
setRotateKey( spep_1 -3 + 80, 1, -36.1 );
setRotateKey( spep_1 -3 + 82, 1, -35.8 );
setRotateKey( spep_1 -3 + 84, 1, -35.6 );
setRotateKey( spep_1 -3 + 86, 1, -35.5 );
setRotateKey( spep_1 -3 + 88, 1, -35.3 );
setRotateKey( spep_1 -3 + 90, 1, -35.2 );
setRotateKey( spep_1 -3 + 92, 1, -35.1 );
setRotateKey( spep_1 -3 + 94, 1, -35.1 );
setRotateKey( spep_1 -3 + 96, 1, -34.5 );
setRotateKey( spep_1 -3 + 98, 1, -33.1 );
setRotateKey( spep_1 -3 + 100, 1, -30.9 );
setRotateKey( spep_1 -3 + 102, 1, -27.7 );
setRotateKey( spep_1 -3 + 105, 1, -20 );
setRotateKey( spep_1 -3 + 106, 1, -20 );
setRotateKey( spep_1 -3 + 108, 1, -18.3 );
setRotateKey( spep_1 -3 + 110, 1, -16.7 );
setRotateKey( spep_1 -3 + 112, 1, -15 );
setRotateKey( spep_1 -3 + 116, 1, -15 );
setRotateKey( spep_1 -3 + 118, 1, -14 );
setRotateKey( spep_1 -3 + 120, 1, -13 );
setRotateKey( spep_1 -3 + 122, 1, -12 );
setRotateKey( spep_1 -3 + 124, 1, -11 );
setRotateKey( spep_1 -3 + 126, 1, -10 );
setRotateKey( spep_1 -3 + 158, 1, -10 );

--SE
playSe( spep_1+16, 1001);--パンチ
playSe( spep_1+34, 1009);--パンチ
playSe( spep_1+54, 1010);--キック
playSe( spep_1+102, 1011);--パンチ
--SE1=playSe( spep_1+116, 1121);--飛んでいく
--stopSe( spep_1+150, SE1, 30 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 160 , 0, 0, 0, 0, 130 );  --黒　背景
entryFadeBg( spep_1 + 15, 0, 3 , 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_1 + 33, 0, 3 , 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_1 + 53, 0, 3 , 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_1 + 53, 0, 3 , 0, 0, 0, 0, 255 );  --黒　背景
entryFadeBg( spep_1 + 103, 0, 12 , 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_1 + 152, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2 =spep_1+160;

------------------------------------------------------
-- かめはめ波を溜める
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 100, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 100, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 100, tame, 255 );

--***カットイン***
--speff = entryEffect(  spep_2 - 4 +14,   1504,   0,     -1,  0,  0,  0);   -- eff_005 (カットイン)
--setEffReplaceTexture( speff, 3, 2);                           -- カットイン差し替え
--speff3 = entryEffect(  spep_2 - 4 +14,   1505,   0,     -1,  0,  0,  0);   -- eff_006 (セリフ)
--setEffReplaceTexture( speff3, 4, 5);                           -- セリフ差し替え

--集中線
shuchusen6 = entryEffectLife( spep_2 + 0,  906, 98, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_2 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_2 + 98, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen6, 1, 1 );
setEffScaleKey( spep_2 + 98, shuchusen6, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen6, 0 );
setEffRotateKey( spep_2 + 98, shuchusen6, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_2 + 98, shuchusen6, 255 );

-- 書き文字エントリー --
ctgogo = entryEffectLife( spep_2 - 4 +26, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 - 4 +26,  ctgogo,  0,  540);
setEffMoveKey(  spep_2 - 4 +98,  ctgogo,  0,  540);

setEffAlphaKey( spep_2 - 4  + 26, ctgogo, 0 );
setEffAlphaKey( spep_2 - 4  + 27, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 28, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 88, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 - 4  + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 - 4  + 94, ctgogo, 128 );
setEffAlphaKey( spep_2 - 4  + 96, ctgogo, 64 );
setEffAlphaKey( spep_2 - 4  + 98, ctgogo, 0 );

setEffRotateKey(  spep_2 - 4 +26,  ctgogo,  0);
setEffRotateKey(  spep_2 - 4 +98,  ctgogo,  0);

setEffScaleKey(  spep_2 - 4 +26,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 - 4 +90,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 - 4 +98,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_2+22, 1018);--ごごご

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 100 , 0, 0, 0, 0, 130 );  --黒　背景

--白フェード
entryFade( spep_2 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 =spep_2+100;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
--speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_3 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え]]

-- ** 極限用に調整 ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    
    
    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
    end

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
--playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- かめはめ波を放つ
-----------------------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, shoot, 0, 0 , 0 );
setEffMoveKey( spep_4 + 116, shoot, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shoot, -1.0, 1.0 );
setEffScaleKey( spep_4 + 116, shoot, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shoot, 0 );
setEffRotateKey( spep_4 + 116, shoot, 0 );
setEffAlphaKey( spep_4 + 0, shoot, 255 );
setEffAlphaKey( spep_4 + 116, shoot, 255 );

-- ** 音 ** --
playSe( spep_4 + 16, 1022 ); --発射

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 116 , 0, 0, 0, 0, 190 );  --黒　背景

--次の準備
spep_5 =spep_4+116;


------------------------------------------------------
-- かめはめ波を放つ
-----------------------------------------------------
-- ** エフェクト等 ** --
semaru_f = entryEffect( spep_5 + 0, SP_05,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, semaru_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, semaru_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_f, 0 );
setEffRotateKey( spep_5 + 56, semaru_f, 0 );
setEffAlphaKey( spep_5 + 0, semaru_f, 255 );
setEffAlphaKey( spep_5 + 56, semaru_f, 255 );

--流線
ryusen4 = entryEffectLife( spep_5 + 0,  921, 56, 0x80, -1, 0, 18.9, -28.7 );

setEffMoveKey( spep_5 + 0, ryusen4, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, ryusen4, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, ryusen4, 1.5, 1.24 );
setEffScaleKey( spep_5 + 56, ryusen4, 1.5, 1.24 );

setEffRotateKey( spep_5 + 0, ryusen4, -125 );
setEffRotateKey( spep_5 + 56, ryusen4, -125 );

setEffAlphaKey( spep_5 + 0, ryusen4, 255 );
setEffAlphaKey( spep_5 + 56, ryusen4, 255 );


-- ** エフェクト等 ** --
semaru_b = entryEffect( spep_5 + 0, SP_06,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, semaru_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, semaru_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, semaru_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, semaru_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, semaru_b, 0 );
setEffRotateKey( spep_5 + 56, semaru_b, 0 );
setEffAlphaKey( spep_5 + 0, semaru_b, 255 );
setEffAlphaKey( spep_5 + 56, semaru_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -160, 279.9 , 0 );
setMoveKey( spep_5 + 2, 1, -141.4, 258.6 , 0 );
setMoveKey( spep_5 + 4, 1, -123.3, 237.8 , 0 );
setMoveKey( spep_5 + 6, 1, -105.7, 217.5 , 0 );
setMoveKey( spep_5 + 8, 1, -88.5, 197.7 , 0 );
setMoveKey( spep_5 + 10, 1, -71.6, 178.3 , 0 );
setMoveKey( spep_5 + 12, 1, -55.2, 159.4 , 0 );
setMoveKey( spep_5 + 14, 1, -39.1, 140.9 , 0 );
setMoveKey( spep_5 + 16, 1, -23.3, 122.7 , 0 );
setMoveKey( spep_5 + 18, 1, -7.9, 105 , 0 );
setMoveKey( spep_5 + 20, 1, 7.3, 87.6 , 0 );
setMoveKey( spep_5 + 22, 1, 22.1, 70.5 , 0 );
setMoveKey( spep_5 + 24, 1, 36.7, 53.8 , 0 );
setMoveKey( spep_5 + 26, 1, 50.9, 37.4 , 0 );
setMoveKey( spep_5 + 28, 1, 64.9, 21.3 , 0 );
setMoveKey( spep_5 + 30, 1, 78.6, 5.5 , 0 );
setMoveKey( spep_5 + 32, 1, 92.1, -9.9 , 0 );
setMoveKey( spep_5 + 34, 1, 105.2, -25.1 , 0 );
setMoveKey( spep_5 + 36, 1, 118.1, -39.9 , 0 );
setMoveKey( spep_5 + 38, 1, 130.7, -54.4 , 0 );
setMoveKey( spep_5 + 40, 1, 143, -68.6 , 0 );
setMoveKey( spep_5 + 42, 1, 155.1, -82.4 , 0 );
setMoveKey( spep_5 + 44, 1, 166.8, -96 , 0 );
setMoveKey( spep_5 + 46, 1, 178.3, -109.1 , 0 );
setMoveKey( spep_5 + 48, 1, 189.4, -122 , 0 );
setMoveKey( spep_5 + 50, 1, 200.3, -134.4 , 0 );
setMoveKey( spep_5 + 52, 1, 210.8, -146.5 , 0 );
setMoveKey( spep_5 + 54, 1, 220.9, -158.2 , 0 );
setMoveKey( spep_5 + 56, 1, 230.7, -169.4 , 0 );
--setMoveKey( spep_5 + 58, 1, 240, -180 , 0 );

setScaleKey( spep_5 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 2, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 4, 1, 0.91, 0.91 );
setScaleKey( spep_5 + 6, 1, 0.96, 0.96 );
setScaleKey( spep_5 + 8, 1, 1.01, 1.01 );
setScaleKey( spep_5 + 10, 1, 1.06, 1.06 );
setScaleKey( spep_5 + 12, 1, 1.11, 1.11 );
setScaleKey( spep_5 + 14, 1, 1.16, 1.16 );
setScaleKey( spep_5 + 16, 1, 1.21, 1.21 );
setScaleKey( spep_5 + 18, 1, 1.26, 1.26 );
setScaleKey( spep_5 + 20, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 22, 1, 1.35, 1.35 );
setScaleKey( spep_5 + 24, 1, 1.39, 1.39 );
setScaleKey( spep_5 + 26, 1, 1.43, 1.43 );
setScaleKey( spep_5 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_5 + 30, 1, 1.52, 1.52 );
setScaleKey( spep_5 + 32, 1, 1.56, 1.56 );
setScaleKey( spep_5 + 34, 1, 1.6, 1.6 );
setScaleKey( spep_5 + 36, 1, 1.63, 1.63 );
setScaleKey( spep_5 + 38, 1, 1.67, 1.67 );
setScaleKey( spep_5 + 40, 1, 1.71, 1.71 );
setScaleKey( spep_5 + 42, 1, 1.75, 1.75 );
setScaleKey( spep_5 + 44, 1, 1.78, 1.78 );
setScaleKey( spep_5 + 46, 1, 1.82, 1.82 );
setScaleKey( spep_5 + 48, 1, 1.85, 1.85 );
setScaleKey( spep_5 + 50, 1, 1.88, 1.88 );
setScaleKey( spep_5 + 52, 1, 1.91, 1.91 );
setScaleKey( spep_5 + 54, 1, 1.94, 1.94 );
setScaleKey( spep_5 + 56, 1, 1.97, 1.97 );
--setScaleKey( spep_5 + 58, 1, 2, 2 );

setRotateKey( spep_5 + 0, 1, -10.1 );
setRotateKey( spep_5 + 8, 1, -10.1 );
setRotateKey( spep_5 + 10, 1, -10 );
setRotateKey( spep_5 + 56, 1, -10 );

-- ** 音 ** --
playSe( spep_5, 1021 ); --発射

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 116 , 0, 0, 0, 0, 190 );  --黒　背景

--次の準備
spep_6 =spep_5+56;

------------------------------------------------------
-- ギャン
-----------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_6 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 60, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 60, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 60, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 60, gyan, 255 );

ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 7.1, 306.8 );--ギャンッ

setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 7.1, 306.8 , 0 );

a=2.7;

setEffScaleKey( spep_6 + 0, ctgyan, 0.6 + a, 0.6 + a );
setEffScaleKey( spep_6 + 2, ctgyan, 0.7 + a, 0.7 + a );
setEffScaleKey( spep_6 + 4, ctgyan, 0.8 + a, 0.8 + a );
setEffScaleKey( spep_6 + 6, ctgyan, 0.9 + a, 0.9 + a );
setEffScaleKey( spep_6 + 8, ctgyan, 1 + a, 1 + a );
setEffScaleKey( spep_6 + 10, ctgyan, 1.01 + a, 1.01 + a );
setEffScaleKey( spep_6 + 12, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_6 + 14, ctgyan, 1.02 + a, 1.02 + a );
setEffScaleKey( spep_6 + 16, ctgyan, 1.03 + a, 1.03 + a );
setEffScaleKey( spep_6 + 18, ctgyan, 1.04 + a, 1.04 + a );
setEffScaleKey( spep_6 + 20, ctgyan, 1.05 + a, 1.05 + a );
setEffScaleKey( spep_6 + 22, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_6 + 24, ctgyan, 1.06 + a, 1.06 + a );
setEffScaleKey( spep_6 + 26, ctgyan, 1.07 + a, 1.07 + a );
setEffScaleKey( spep_6 + 28, ctgyan, 1.08 + a, 1.08 + a );
setEffScaleKey( spep_6 + 30, ctgyan, 1.09 + a, 1.09 + a );
setEffScaleKey( spep_6 + 32, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_6 + 34, ctgyan, 1.1 + a, 1.1 + a );
setEffScaleKey( spep_6 + 36, ctgyan, 1.11 + a, 1.11 + a );
setEffScaleKey( spep_6 + 38, ctgyan, 1.12 + a, 1.12 + a );
setEffScaleKey( spep_6 + 40, ctgyan, 1.13 + a, 1.13 + a );
setEffScaleKey( spep_6 + 42, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_6 + 44, ctgyan, 1.14 + a, 1.14 + a );
setEffScaleKey( spep_6 + 46, ctgyan, 1.15 + a, 1.15 + a );
setEffScaleKey( spep_6 + 48, ctgyan, 1.16 + a, 1.16 + a );
setEffScaleKey( spep_6 + 50, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_6 + 52, ctgyan, 1.17 + a, 1.17 + a );
setEffScaleKey( spep_6 + 54, ctgyan, 1.18 + a, 1.18 + a );
setEffScaleKey( spep_6 + 56, ctgyan, 1.19 + a, 1.19 + a );
setEffScaleKey( spep_6 + 58, ctgyan, 1.2 + a, 1.2 + a );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

--白フェード
entryFade( spep_6 + 52, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6, 1023 ); --爆発

--次の準備
spep_7 =spep_6+60;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_7 + 240, explosion, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_7 + 240, explosion, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 240, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 240, explosion, 255 );

--集中線
shuchusen7 = entryEffectLife( spep_7 + 0,  906, 238, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_7 + 0, shuchusen7, 0, 0 , 0 );
setEffMoveKey( spep_7 + 238, shuchusen7, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen7, 1.32, 1.92 );
setEffScaleKey( spep_7 + 238, shuchusen7, 1.32, 1.92 );

setEffRotateKey( spep_7 + 0, shuchusen7, 0 );
setEffRotateKey( spep_7 + 238, shuchusen7, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen7, 255 );
setEffAlphaKey( spep_7 + 238, shuchusen7, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 240 , 0, 0, 0, 0, 190 );  --黒　背景

-- ** 音 ** --
playSe( spep_7, 1024 ); --爆発

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 16 );
endPhase( spep_7 + 230 );
end




