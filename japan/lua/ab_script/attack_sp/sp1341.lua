--1017960:超サイヤ人ベジータ_ビッグ・バン・アタック
--sp_effect_b4_00110

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
SP_01 =	154169	;--	アイドリング～蹴り飛ばし
SP_02 =	154170	;--	打ち落とし
SP_03 =	154171	;--	気溜め
SP_04 =	154172	;--	発射
SP_05 =	154173	;--	フィニッシュ

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
-- アイドリング～蹴り飛ばし(100F)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, idling, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, idling, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 100, idling, 0 );

setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 100, idling, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_0 -3 + 18, 914, 42, 0x80, -1, 0, -2508.5, -67.8 );
setEffMoveKey( spep_0 -3 + 18, ryusen1, -2508.5, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 20, ryusen1, 545.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 22, ryusen1, -65.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ryusen1, -676.2, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 26, ryusen1, -1287, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 28, ryusen1, -1897.8, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 30, ryusen1, -2508.5, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 32, ryusen1, 545.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 34, ryusen1, -65.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 36, ryusen1, -676.2, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 38, ryusen1, -1287, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 40, ryusen1, -1897.8, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 42, ryusen1, -2508.5, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 44, ryusen1, 545.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 46, ryusen1, -65.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 48, ryusen1, -676.2, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 50, ryusen1, -1287, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 52, ryusen1, -1897.8, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 54, ryusen1, -2508.5, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 56, ryusen1, -676.2, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 58, ryusen1, -1287, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 60, ryusen1, -1287, -67.8 , 0 );

setEffScaleKey( spep_0 -3 + 18, ryusen1, 9.77, 1.17 );
setEffScaleKey( spep_0 -3 + 60, ryusen1, 9.77, 1.17 );

setEffRotateKey( spep_0 -3 + 18, ryusen1, 0 );
setEffRotateKey( spep_0 -3 + 60, ryusen1, 0 );

setEffAlphaKey( spep_0 -3 + 18, ryusen1, 77 );
setEffAlphaKey( spep_0 -3 + 20, ryusen1, 153 );
setEffAlphaKey( spep_0 -3 + 56, ryusen1, 153 );
setEffAlphaKey( spep_0 -3 + 58, ryusen1, 77 );
setEffAlphaKey( spep_0 -3 + 60, ryusen1, 0 );

-- ** 敵の動き ** --
setDisp( spep_0 + 1, 1, 1 );
changeAnime( spep_0 + 1, 1, 101 );

--setMoveKey( spep_0 -3 + 0, 1, 2529.4, 9.6 , 0 );
setMoveKey( spep_0 + 0, 1, 2410.7, 8.3 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 2292.6, 7.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 2174.3, 6.2 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 2056.2, 5.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 1938, 4.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 1819.9, 3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 1701.6, 2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 1583.5, 0.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 1465.4, -0.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 1347.2, -1.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 1228.9, -2.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 1110.8, -3.3 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 992.7, -4.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 874.7, -5.5 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 756.4, -6.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 701.2, -8 , 0 );
setMoveKey( spep_0 -3 + 33, 1, 701.2, -8 , 0 );

setScaleKey( spep_0 + 1, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 33, 1, 1.38, 1.38 );

setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 -3 + 33, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 180); --薄い黒フェード

-- ** 音 ** --
SE0 = playSe( spep_0 + 18, 8 );  --移動

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    --stopSe( SP_dodge - 12, SE1, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
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


-- ** 流線 ** --
ryusen1a = entryEffectLife( spep_0 -3 + 76, 914, 24, 0x80, -1, 0, -1401.4, -850.2 );
setEffMoveKey( spep_0 -3 + 76, ryusen1a, -1401.4, -850.2 , 0 );
setEffMoveKey( spep_0 -3 + 78, ryusen1a, -852.5, -510.7 , 0 );
setEffMoveKey( spep_0 -3 + 80, ryusen1a, -1401.4, -850.2 , 0 );
setEffMoveKey( spep_0 -3 + 82, ryusen1a, -1950.3, -1189.6 , 0 );
setEffMoveKey( spep_0 -3 + 84, ryusen1a, -2499.2, -1529.1 , 0 );
setEffMoveKey( spep_0 -3 + 86, ryusen1a, 245.4, 168.2 , 0 );
setEffMoveKey( spep_0 -3 + 88, ryusen1a, -303.5, -171.2 , 0 );
setEffMoveKey( spep_0 -3 + 90, ryusen1a, -852.5, -510.7 , 0 );
setEffMoveKey( spep_0 -3 + 92, ryusen1a, -1401.4, -850.2 , 0 );
setEffMoveKey( spep_0 -3 + 94, ryusen1a, -1950.3, -1189.6 , 0 );
setEffMoveKey( spep_0 -3 + 96, ryusen1a, -2499.2, -1529.1 , 0 );
setEffMoveKey( spep_0 -3 + 98, ryusen1a, 245.4, 168.2 , 0 );
setEffMoveKey( spep_0 -3 + 100, ryusen1a, -303.5, -171.2 , 0 );

setEffScaleKey( spep_0 -3 + 76, ryusen1a, 10.32, 2.3 );
setEffScaleKey( spep_0 -3 + 100, ryusen1a, 10.32, 2.3 );

setEffRotateKey( spep_0 -3 + 76, ryusen1a, -31.7 );
setEffRotateKey( spep_0 -3 + 100, ryusen1a, -31.7 );

setEffAlphaKey( spep_0 -3 + 76, ryusen1a, 0 );
setEffAlphaKey( spep_0 -3 + 78, ryusen1a, 77 );
setEffAlphaKey( spep_0 -3 + 80, ryusen1a, 153 );
setEffAlphaKey( spep_0 -3 + 100, ryusen1a, 153 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 85, 1, 0 );
changeAnime(spep_0 -3 + 60, 1, 108 );

setMoveKey( spep_0 -3 + 34, 1, 645.9, -9.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 590.9, -10.7 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 535.6, -12 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 480.2, -13.2 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 425, -14.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 369.7, -16 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 314.7, -17.2 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 259.4, -18.7 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 231, -19.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 202.7, -21.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 174.5, -22.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 146.2, -23.9 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 117.9, -25.4 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 89.6, 19.5 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 84.5, -30.6 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 96.3, 23.6 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 95.6, 9.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 82.7, 28.4 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 93.3, -16 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 113.3, 27.6 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 243.8, 136.4 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 374.3, 245.3 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 504.8, 354 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 635.3, 462.7 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 765.8, 571.6 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 896.3, 680.3 , 0 );

setScaleKey( spep_0 -3 + 34, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 59, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 60, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 84, 1, 1.44, 1.44 );

setRotateKey( spep_0 -3 + 34, 1, 0 );
setRotateKey( spep_0 -3 + 59, 1, 0 );

setRotateKey( spep_0 -3 + 60, 1, -30 );
setRotateKey( spep_0 -3 + 84, 1, -30 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 58, 906, 22, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 58, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 80, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 58, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_0 -3 + 80, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_0 -3 + 58, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 60, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 62, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 64, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 66, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 68, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 72, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 74, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 76, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 78, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 80, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 58, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 60, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 76, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 78, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 80, shuchusen1, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_0 -3 + 60, 10005, 20, 0x100, -1, 0, -1.6, 288 );
setEffMoveKey( spep_0 -3 + 60, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 76, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 80, ctga, -1.6, 288 , 0 );

setEffScaleKey( spep_0 -3 + 60, ctga, 1.8, 1.8 );
setEffScaleKey( spep_0 -3 + 80, ctga, 1.8, 1.8 );

setEffRotateKey( spep_0 -3 + 60, ctga, -23 );
setEffRotateKey( spep_0 -3 + 80, ctga, -23 );

setEffAlphaKey( spep_0 -3 + 60, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 80, ctga, 255 );

-- ** 音 ** --
playSe( spep_0 -3 + 60, 1010 );  --ガッ
playSe( spep_0 + 84, 43 );  --瞬間移動

-- ** 白フェード ** --
entryFade( spep_0 + 94, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 + 100;

--------------------------------------
--打ち落とし(84F)
--------------------------------------
-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_1 + 0, 914, 81, 0x80, -1, 0, 335.8, 161.5 );
--setEffMoveKey( spep_1 -3 + 0, ryusen2, 335.8, 161.5 , 0 );
setEffMoveKey( spep_1 -3 + 3, ryusen2, 905.7, 464.5 , 0 );
setEffMoveKey( spep_1 -3 + 4, ryusen2, 1475.6, 767.6 , 0 );
setEffMoveKey( spep_1 -3 + 6, ryusen2, 2045.5, 1070.6 , 0 );
setEffMoveKey( spep_1 -3 + 8, ryusen2, 2615.4, 1373.6 , 0 );
setEffMoveKey( spep_1 -3 + 10, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 12, ryusen2, 335.8, 161.5 , 0 );
setEffMoveKey( spep_1 -3 + 14, ryusen2, 905.7, 464.5 , 0 );
setEffMoveKey( spep_1 -3 + 16, ryusen2, 1475.6, 767.6 , 0 );
setEffMoveKey( spep_1 -3 + 18, ryusen2, 2045.5, 1070.6 , 0 );
setEffMoveKey( spep_1 -3 + 20, ryusen2, 2615.4, 1373.6 , 0 );
setEffMoveKey( spep_1 -3 + 22, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 24, ryusen2, 335.8, 161.5 , 0 );
setEffMoveKey( spep_1 -3 + 26, ryusen2, 905.7, 464.5 , 0 );
setEffMoveKey( spep_1 -3 + 28, ryusen2, 1475.6, 767.6 , 0 );
setEffMoveKey( spep_1 -3 + 30, ryusen2, 2045.5, 1070.6 , 0 );
setEffMoveKey( spep_1 -3 + 32, ryusen2, 2615.4, 1373.6 , 0 );
setEffMoveKey( spep_1 -3 + 34, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 36, ryusen2, 2615.4, 1373.6 , 0 );
setEffMoveKey( spep_1 -3 + 38, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 40, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 58, ryusen2, 125.4, 298.2 , 0 );
setEffMoveKey( spep_1 -3 + 60, ryusen2, 125.4, 298.2 , 0 );
setEffMoveKey( spep_1 -3 + 62, ryusen2, -126.8, -296 , 0 );
setEffMoveKey( spep_1 -3 + 64, ryusen2, -379, -890.1 , 0 );
setEffMoveKey( spep_1 -3 + 66, ryusen2, -631.2, -1484.3 , 0 );
setEffMoveKey( spep_1 -3 + 68, ryusen2, -883.4, -2078.4 , 0 );
setEffMoveKey( spep_1 -3 + 70, ryusen2, -1135.6, -2672.6 , 0 );
setEffMoveKey( spep_1 -3 + 72, ryusen2, 125.4, 298.2 , 0 );
setEffMoveKey( spep_1 -3 + 74, ryusen2, -126.8, -296 , 0 );
setEffMoveKey( spep_1 -3 + 76, ryusen2, -379, -890.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ryusen2, -631.2, -1484.3 , 0 );
setEffMoveKey( spep_1 -3 + 80, ryusen2, -883.4, -2078.4 , 0 );
setEffMoveKey( spep_1 -3 + 82, ryusen2, -1135.6, -2672.6 , 0 );
setEffMoveKey( spep_1 -3 + 84, ryusen2, 125.4, 298.2 , 0 );

setEffScaleKey( spep_1 + 0, ryusen2, 10.32, 2.3 );
setEffScaleKey( spep_1 -3 + 84, ryusen2, 10.32, 2.3 );

setEffRotateKey( spep_1 + 0, ryusen2, 152 );
setEffRotateKey( spep_1 -3 + 40, ryusen2, 152 );
setEffRotateKey( spep_1 -3 + 58, ryusen2, 293 );
setEffRotateKey( spep_1 -3 + 84, ryusen2, 293 );

setEffAlphaKey( spep_1 + 0, ryusen2, 154 );
setEffAlphaKey( spep_1 -3 + 36, ryusen2, 200 );
setEffAlphaKey( spep_1 -3 + 38, ryusen2, 77 );
setEffAlphaKey( spep_1 -3 + 40, ryusen2, 0 );
setEffAlphaKey( spep_1 -3 + 58, ryusen2, 0 );
setEffAlphaKey( spep_1 -3 + 60, ryusen2, 77 );
setEffAlphaKey( spep_1 -3 + 62, ryusen2, 200 );
setEffAlphaKey( spep_1 -3 + 84, ryusen2, 200 );

-- ** エフェクト等 ** --
uchiotoshi = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, uchiotoshi, 0, 0 , 0 );
setEffMoveKey( spep_1 + 84, uchiotoshi, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, uchiotoshi, 1.0, 1.0 );
setEffScaleKey( spep_1 + 84, uchiotoshi, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, uchiotoshi, 0 );
setEffRotateKey( spep_1 + 84, uchiotoshi, 0 );
setEffAlphaKey( spep_1 + 0, uchiotoshi, 255 );
setEffAlphaKey( spep_1 + 84, uchiotoshi, 255 );

-- ** 敵の動き ** ---
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 75, 1, 0 );
changeAnime( spep_1 + 0, 1, 108 );
changeAnime( spep_1 -3 + 40, 1, 106 );


--setMoveKey( spep_1 -3 + 0, 1, -1811.1, -1070.9 , 0 );
setMoveKey( spep_1 -3 + 3, 1, -1720.6, -1011.7 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -1630.2, -952.7 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -1540, -894 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -1449.5, -835.1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -1359.2, -776.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -1269, -717.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -1178.6, -658.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -1088.2, -600 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -998, -541.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -907.6, -482.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -817.2, -424.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -727, -365.5 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -636.6, -306.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -546.4, -248.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -455.9, -189.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -365.7, -131.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -275.3, -72.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -185.1, -14.4 , 0 );
setMoveKey( spep_1 -3 + 39, 1, -94.7, 44.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 4.2, 79.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -3.2, 94.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 16.7, 45.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -32.4, 89.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 2.2, 48.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -10.7, 66.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 5.5, 31.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -8.9, 54.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -60, -70.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -109.8, -197.3 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -158.4, -324.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -205.8, -452.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -251.5, -574.7 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -297, -696.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -342.6, -819.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -388.2, -941.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -433.7, -1063.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -479, -1186.1 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 39, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 40, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 74, 1, 1.43, 1.43 );

--setRotateKey( spep_1 -3 + 0, 1, -14 );
setRotateKey( spep_1 -3 + 3, 1, -15.1 );
setRotateKey( spep_1 -3 + 4, 1, -16.2 );
setRotateKey( spep_1 -3 + 6, 1, -17.3 );
setRotateKey( spep_1 -3 + 8, 1, -18.4 );
setRotateKey( spep_1 -3 + 10, 1, -19.6 );
setRotateKey( spep_1 -3 + 12, 1, -20.7 );
setRotateKey( spep_1 -3 + 14, 1, -21.8 );
setRotateKey( spep_1 -3 + 16, 1, -22.9 );
setRotateKey( spep_1 -3 + 18, 1, -24 );
setRotateKey( spep_1 -3 + 20, 1, -25.1 );
setRotateKey( spep_1 -3 + 22, 1, -26.2 );
setRotateKey( spep_1 -3 + 24, 1, -27.3 );
setRotateKey( spep_1 -3 + 26, 1, -28.4 );
setRotateKey( spep_1 -3 + 28, 1, -29.5 );
setRotateKey( spep_1 -3 + 30, 1, -30.7 );
setRotateKey( spep_1 -3 + 32, 1, -31.8 );
setRotateKey( spep_1 -3 + 34, 1, -32.9 );
setRotateKey( spep_1 -3 + 36, 1, -34 );
setRotateKey( spep_1 -3 + 39, 1, -35.1 );
setRotateKey( spep_1 -3 + 40, 1, -129.6 );
setRotateKey( spep_1 -3 + 42, 1, -131.5 );
setRotateKey( spep_1 -3 + 44, 1, -133.3 );
setRotateKey( spep_1 -3 + 46, 1, -135.2 );
setRotateKey( spep_1 -3 + 48, 1, -137 );
setRotateKey( spep_1 -3 + 50, 1, -138.8 );
setRotateKey( spep_1 -3 + 52, 1, -140.7 );
setRotateKey( spep_1 -3 + 54, 1, -142.5 );
setRotateKey( spep_1 -3 + 56, 1, -154.8 );
setRotateKey( spep_1 -3 + 58, 1, -167 );
setRotateKey( spep_1 -3 + 60, 1, -179.3 );
setRotateKey( spep_1 -3 + 62, 1, -191.5 );
setRotateKey( spep_1 -3 + 64, 1, -194.2 );
setRotateKey( spep_1 -3 + 66, 1, -196.9 );
setRotateKey( spep_1 -3 + 68, 1, -199.5 );
setRotateKey( spep_1 -3 + 70, 1, -202.2 );
setRotateKey( spep_1 -3 + 72, 1, -204.9 );
setRotateKey( spep_1 -3 + 74, 1, -207.6 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 -3 + 38, 906, 24, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 38, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 62, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 38, shuchusen2, 1.5, 1.7 );
setEffScaleKey( spep_1 -3 + 62, shuchusen2, 1.5, 1.7 );

setEffRotateKey( spep_1 -3 + 38, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 42, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 44, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 46, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 48, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 50, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 52, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 54, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 56, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 58, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 60, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 62, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 38, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 40, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 58, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 60, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 62, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 40, 10020, 20, 0x100, -1, 0, -129.8, 346.1 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctbaki, -129.8, 346.1 , 0 );

setEffScaleKey( spep_1 -3 + 40, ctbaki, 1.54, 1.54 );
setEffScaleKey( spep_1 -3 + 60, ctbaki, 1.54, 1.54 );

setEffRotateKey( spep_1 -3 + 40, ctbaki, -12.5 );
setEffRotateKey( spep_1 -3 + 60, ctbaki, -12.5 );

setEffAlphaKey( spep_1 -3 + 40, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctbaki, 255 );

-- ** 音 ** --
playSe( spep_1 + 10, 1109 );  --瞬間移動
playSe( spep_1 -3 + 40, 1011 );  --バキッ

--白フェード
entryFade( spep_1 + 78, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 84, 0, 0, 0, 0, 180); --薄い黒フェード

-- ** 次の準備 ** --
spep_2 = spep_1 + 84;


------------------------------------------------------
-- 気溜め(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 158, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 158, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 158, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 158, tame, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 158, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 158, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.5, 1.6 );
setEffScaleKey( spep_2 + 158, shuchusen3, 1.5, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 2, shuchusen3, 180 );
setEffRotateKey( spep_2 + 4, shuchusen3, 0 );
setEffRotateKey( spep_2 + 6, shuchusen3, 180 );
setEffRotateKey( spep_2 + 8, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 180 );
setEffRotateKey( spep_2 + 20, shuchusen3, 0 );
setEffRotateKey( spep_2 + 22, shuchusen3, 180 );
setEffRotateKey( spep_2 + 24, shuchusen3, 0 );
setEffRotateKey( spep_2 + 26, shuchusen3, 180 );
setEffRotateKey( spep_2 + 28, shuchusen3, 0 );
setEffRotateKey( spep_2 + 30, shuchusen3, 180 );
setEffRotateKey( spep_2 + 32, shuchusen3, 0 );
setEffRotateKey( spep_2 + 34, shuchusen3, 180 );
setEffRotateKey( spep_2 + 36, shuchusen3, 0 );
setEffRotateKey( spep_2 + 38, shuchusen3, 180 );
setEffRotateKey( spep_2 + 40, shuchusen3, 0 );
setEffRotateKey( spep_2 + 42, shuchusen3, 180 );
setEffRotateKey( spep_2 + 44, shuchusen3, 0 );
setEffRotateKey( spep_2 + 46, shuchusen3, 180 );
setEffRotateKey( spep_2 + 48, shuchusen3, 0 );
setEffRotateKey( spep_2 + 50, shuchusen3, 180 );
setEffRotateKey( spep_2 + 52, shuchusen3, 0 );
setEffRotateKey( spep_2 + 54, shuchusen3, 180 );
setEffRotateKey( spep_2 + 56, shuchusen3, 0 );
setEffRotateKey( spep_2 + 58, shuchusen3, 180 );
setEffRotateKey( spep_2 + 60, shuchusen3, 0 );
setEffRotateKey( spep_2 + 62, shuchusen3, 180 );
setEffRotateKey( spep_2 + 64, shuchusen3, 0 );
setEffRotateKey( spep_2 + 66, shuchusen3, 180 );
setEffRotateKey( spep_2 + 68, shuchusen3, 0 );
setEffRotateKey( spep_2 + 70, shuchusen3, 180 );
setEffRotateKey( spep_2 + 72, shuchusen3, 0 );
setEffRotateKey( spep_2 + 74, shuchusen3, 180 );
setEffRotateKey( spep_2 + 76, shuchusen3, 0 );
setEffRotateKey( spep_2 + 78, shuchusen3, 180 );
setEffRotateKey( spep_2 + 80, shuchusen3, 0 );
setEffRotateKey( spep_2 + 82, shuchusen3, 180 );
setEffRotateKey( spep_2 + 84, shuchusen3, 0 );
setEffRotateKey( spep_2 + 86, shuchusen3, 180 );
setEffRotateKey( spep_2 + 88, shuchusen3, 0 );
setEffRotateKey( spep_2 + 90, shuchusen3, 180 );
setEffRotateKey( spep_2 + 92, shuchusen3, 0 );
setEffRotateKey( spep_2 + 94, shuchusen3, 180 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );
setEffRotateKey( spep_2 + 98, shuchusen3, 180 );
setEffRotateKey( spep_2 + 100, shuchusen3, 0 );
setEffRotateKey( spep_2 + 102, shuchusen3, 180 );
setEffRotateKey( spep_2 + 104, shuchusen3, 0 );
setEffRotateKey( spep_2 + 106, shuchusen3, 180 );
setEffRotateKey( spep_2 + 108, shuchusen3, 0 );
setEffRotateKey( spep_2 + 110, shuchusen3, 180 );
setEffRotateKey( spep_2 + 112, shuchusen3, 0 );
setEffRotateKey( spep_2 + 114, shuchusen3, 180 );
setEffRotateKey( spep_2 + 116, shuchusen3, 0 );
setEffRotateKey( spep_2 + 118, shuchusen3, 180 );
setEffRotateKey( spep_2 + 120, shuchusen3, 0 );
setEffRotateKey( spep_2 + 122, shuchusen3, 180 );
setEffRotateKey( spep_2 + 124, shuchusen3, 0 );
setEffRotateKey( spep_2 + 126, shuchusen3, 180 );
setEffRotateKey( spep_2 + 128, shuchusen3, 0 );
setEffRotateKey( spep_2 + 130, shuchusen3, 180 );
setEffRotateKey( spep_2 + 132, shuchusen3, 0 );
setEffRotateKey( spep_2 + 134, shuchusen3, 180 );
setEffRotateKey( spep_2 + 136, shuchusen3, 0 );
setEffRotateKey( spep_2 + 138, shuchusen3, 180 );
setEffRotateKey( spep_2 + 140, shuchusen3, 0 );
setEffRotateKey( spep_2 + 142, shuchusen3, 180 );
setEffRotateKey( spep_2 + 144, shuchusen3, 0 );
setEffRotateKey( spep_2 + 146, shuchusen3, 180 );
setEffRotateKey( spep_2 + 148, shuchusen3, 0 );
setEffRotateKey( spep_2 + 150, shuchusen3, 180 );
setEffRotateKey( spep_2 + 152, shuchusen3, 0 );
setEffRotateKey( spep_2 + 154, shuchusen3, 180 );
setEffRotateKey( spep_2 + 156, shuchusen3, 0 );
setEffRotateKey( spep_2 + 158, shuchusen3, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 158, shuchusen3, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 34 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 34 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 -3 + 50, 190006, 72, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 -3 + 50,  ctgogo,  0,  510);
setEffMoveKey(  spep_2 -3 + 122,  ctgogo,  0,  510);

setEffAlphaKey( spep_2 -3 + 50, ctgogo, 0 );
setEffAlphaKey( spep_2 -3 + 51, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 114, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 116, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 118, ctgogo, 191 );
setEffAlphaKey( spep_2 -3 + 120, ctgogo, 128 );
setEffAlphaKey( spep_2 -3 + 122, ctgogo, 64 );

setEffRotateKey(  spep_2 -3 + 50,  ctgogo,  0);
setEffRotateKey(  spep_2 -3 + 122,  ctgogo,  0);

setEffScaleKey(  spep_2 -3 + 50,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 -3 + 112,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 -3 + 122,  ctgogo, 1.07, 1.07 );

-- ** 音 ** --
playSe( spep_2 + 10, 17 );  --溜める
playSe( spep_2 -3 + 50, 1018 );  --ゴゴゴ

-- ** 白フェード ** --
entryFade( spep_2 + 144, 10, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 158, 0, 0, 0, 0, 180); --薄い黒フェード

-- ** 次の準備 ** --
spep_3 = spep_2 + 158;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 90, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 白フェード ** --
entryFade( spep_3 + 80, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 225); --黒フェード

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 発射(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, 1.0, 1.0 );
setEffScaleKey( spep_4 + 78, hassha, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 78, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 78, hassha, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 56, 1, 1 );
setDisp( spep_4 -3 + 79, 1, 0 );
changeAnime( spep_4 -3 + 56, 1, 107 );

setMoveKey( spep_4 -3 + 56, 1, -34.9, -31 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -35.9, -31.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, -41.2, -39.2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -40.7, -37.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, -46, -43.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, -45.2, -43.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, -50.4, -51.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -50.8, -51.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -51.3, -52 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -56.3, -57.5 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -55.2, -56.9 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -59.7, -62.9 , 0 );

setScaleKey( spep_4 -3 + 56, 1, 1, 1 );
setScaleKey( spep_4 -3 + 58, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 62, 1, 1.01, 1.01 );
setScaleKey( spep_4 -3 + 64, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 68, 1, 1.03, 1.03 );
setScaleKey( spep_4 -3 + 70, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 74, 1, 1.05, 1.05 );
setScaleKey( spep_4 -3 + 76, 1, 1.07, 1.07 );
setScaleKey( spep_4 -3 + 78, 1, 1.07, 1.07 );

setRotateKey( spep_4 -3 + 56, 1, 65.6 );
setRotateKey( spep_4 -3 + 78, 1, 65.6 );

-- ** 流線 ** --
ryusen5 = entryEffectLife( spep_4 + 0, 921, 78, 0x80, -1, 0, -32.7, -7.1 );
setEffMoveKey( spep_4 + 0, ryusen5, -32.7, -7.1 , 0 );
setEffMoveKey( spep_4 + 78, ryusen5, -32.7, -7.1 , 0 );

setEffScaleKey( spep_4 + 0, ryusen5, 2.01, 1.55 );
setEffScaleKey( spep_4 + 78, ryusen5, 2.01, 1.55 );

setEffRotateKey( spep_4 + 0, ryusen5, -58.5 );
setEffRotateKey( spep_4 + 78, ryusen5, -58.5 );

setEffAlphaKey( spep_4 + 0, ryusen5, 255 );
setEffAlphaKey( spep_4 + 78, ryusen5, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 68, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 180); --薄い黒フェード

-- ** 音 ** --
playSe( spep_4 + 0 -10, 1072 );  --発射前
playSe( spep_4 + 20, 1022 );  --発射
--playSe( spep_4 + 54, 1021 );  --敵に向かう

-- ** 次の準備 ** --
spep_5 = spep_4 + 78;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, 190000, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 58, gyan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 );
setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_5 -3 + 61, ctgyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_5 -3 + 3, ctgyan, 2, 2 );
setEffScaleKey( spep_5 -3 + 10, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_5 -3 + 61, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 -3 + 61, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 -3 + 61, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, 1023 );  --ギャン

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 225); --黒フェード

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;

------------------------------------------------------
-- フィニッシュ(238F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 238, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 238, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 238, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 238, finish, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 0, 906, 234, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 234, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1.5, 2 );
setEffScaleKey( spep_6 + 234, shuchusen6, 1.5, 2 );

setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 2, shuchusen6, 180 );
setEffRotateKey( spep_6 + 4, shuchusen6, 0 );
setEffRotateKey( spep_6 + 6, shuchusen6, 180 );
setEffRotateKey( spep_6 + 8, shuchusen6, 0 );
setEffRotateKey( spep_6 + 10, shuchusen6, 180 );
setEffRotateKey( spep_6 + 12, shuchusen6, 0 );
setEffRotateKey( spep_6 + 14, shuchusen6, 180 );
setEffRotateKey( spep_6 + 16, shuchusen6, 0 );
setEffRotateKey( spep_6 + 18, shuchusen6, 180 );
setEffRotateKey( spep_6 + 20, shuchusen6, 0 );
setEffRotateKey( spep_6 + 22, shuchusen6, 180 );
setEffRotateKey( spep_6 + 24, shuchusen6, 0 );
setEffRotateKey( spep_6 + 26, shuchusen6, 180 );
setEffRotateKey( spep_6 + 28, shuchusen6, 0 );
setEffRotateKey( spep_6 + 30, shuchusen6, 180 );
setEffRotateKey( spep_6 + 32, shuchusen6, 0 );
setEffRotateKey( spep_6 + 34, shuchusen6, 180 );
setEffRotateKey( spep_6 + 36, shuchusen6, 0 );
setEffRotateKey( spep_6 + 38, shuchusen6, 180 );
setEffRotateKey( spep_6 + 40, shuchusen6, 0 );
setEffRotateKey( spep_6 + 42, shuchusen6, 180 );
setEffRotateKey( spep_6 + 44, shuchusen6, 0 );
setEffRotateKey( spep_6 + 46, shuchusen6, 180 );
setEffRotateKey( spep_6 + 48, shuchusen6, 0 );
setEffRotateKey( spep_6 + 50, shuchusen6, 180 );
setEffRotateKey( spep_6 + 52, shuchusen6, 0 );
setEffRotateKey( spep_6 + 54, shuchusen6, 180 );
setEffRotateKey( spep_6 + 56, shuchusen6, 0 );
setEffRotateKey( spep_6 + 58, shuchusen6, 180 );
setEffRotateKey( spep_6 + 60, shuchusen6, 0 );
setEffRotateKey( spep_6 + 62, shuchusen6, 180 );
setEffRotateKey( spep_6 + 64, shuchusen6, 0 );
setEffRotateKey( spep_6 + 66, shuchusen6, 180 );
setEffRotateKey( spep_6 + 68, shuchusen6, 0 );
setEffRotateKey( spep_6 + 70, shuchusen6, 180 );
setEffRotateKey( spep_6 + 72, shuchusen6, 0 );
setEffRotateKey( spep_6 + 74, shuchusen6, 180 );
setEffRotateKey( spep_6 + 76, shuchusen6, 0 );
setEffRotateKey( spep_6 + 78, shuchusen6, 180 );
setEffRotateKey( spep_6 + 80, shuchusen6, 0 );
setEffRotateKey( spep_6 + 82, shuchusen6, 180 );
setEffRotateKey( spep_6 + 84, shuchusen6, 0 );
setEffRotateKey( spep_6 + 86, shuchusen6, 180 );
setEffRotateKey( spep_6 + 88, shuchusen6, 0 );
setEffRotateKey( spep_6 + 90, shuchusen6, 180 );
setEffRotateKey( spep_6 + 92, shuchusen6, 0 );
setEffRotateKey( spep_6 + 94, shuchusen6, 180 );
setEffRotateKey( spep_6 + 96, shuchusen6, 0 );
setEffRotateKey( spep_6 + 98, shuchusen6, 180 );
setEffRotateKey( spep_6 + 100, shuchusen6, 0 );
setEffRotateKey( spep_6 + 102, shuchusen6, 180 );
setEffRotateKey( spep_6 + 104, shuchusen6, 0 );
setEffRotateKey( spep_6 + 106, shuchusen6, 180 );
setEffRotateKey( spep_6 + 108, shuchusen6, 0 );
setEffRotateKey( spep_6 + 110, shuchusen6, 180 );
setEffRotateKey( spep_6 + 112, shuchusen6, 0 );
setEffRotateKey( spep_6 + 114, shuchusen6, 180 );
setEffRotateKey( spep_6 + 116, shuchusen6, 0 );
setEffRotateKey( spep_6 + 118, shuchusen6, 180 );
setEffRotateKey( spep_6 + 120, shuchusen6, 0 );
setEffRotateKey( spep_6 + 122, shuchusen6, 180 );
setEffRotateKey( spep_6 + 124, shuchusen6, 0 );
setEffRotateKey( spep_6 + 126, shuchusen6, 180 );
setEffRotateKey( spep_6 + 128, shuchusen6, 0 );
setEffRotateKey( spep_6 + 130, shuchusen6, 180 );
setEffRotateKey( spep_6 + 132, shuchusen6, 0 );
setEffRotateKey( spep_6 + 134, shuchusen6, 180 );
setEffRotateKey( spep_6 + 136, shuchusen6, 0 );
setEffRotateKey( spep_6 + 138, shuchusen6, 180 );
setEffRotateKey( spep_6 + 140, shuchusen6, 0 );
setEffRotateKey( spep_6 + 142, shuchusen6, 180 );
setEffRotateKey( spep_6 + 144, shuchusen6, 0 );
setEffRotateKey( spep_6 + 146, shuchusen6, 180 );
setEffRotateKey( spep_6 + 148, shuchusen6, 0 );
setEffRotateKey( spep_6 + 150, shuchusen6, 180 );
setEffRotateKey( spep_6 + 152, shuchusen6, 0 );
setEffRotateKey( spep_6 + 154, shuchusen6, 180 );
setEffRotateKey( spep_6 + 156, shuchusen6, 0 );
setEffRotateKey( spep_6 + 158, shuchusen6, 180 );
setEffRotateKey( spep_6 + 160, shuchusen6, 0 );
setEffRotateKey( spep_6 + 162, shuchusen6, 180 );
setEffRotateKey( spep_6 + 164, shuchusen6, 0 );
setEffRotateKey( spep_6 + 166, shuchusen6, 180 );
setEffRotateKey( spep_6 + 168, shuchusen6, 0 );
setEffRotateKey( spep_6 + 170, shuchusen6, 180 );
setEffRotateKey( spep_6 + 172, shuchusen6, 0 );
setEffRotateKey( spep_6 + 174, shuchusen6, 180 );
setEffRotateKey( spep_6 + 176, shuchusen6, 0 );
setEffRotateKey( spep_6 + 178, shuchusen6, 180 );
setEffRotateKey( spep_6 + 180, shuchusen6, 0 );
setEffRotateKey( spep_6 + 182, shuchusen6, 180 );
setEffRotateKey( spep_6 + 184, shuchusen6, 0 );
setEffRotateKey( spep_6 + 186, shuchusen6, 180 );
setEffRotateKey( spep_6 + 188, shuchusen6, 0 );
setEffRotateKey( spep_6 + 190, shuchusen6, 180 );
setEffRotateKey( spep_6 + 192, shuchusen6, 0 );
setEffRotateKey( spep_6 + 194, shuchusen6, 180 );
setEffRotateKey( spep_6 + 196, shuchusen6, 0 );
setEffRotateKey( spep_6 + 198, shuchusen6, 180 );
setEffRotateKey( spep_6 + 200, shuchusen6, 0 );
setEffRotateKey( spep_6 + 202, shuchusen6, 180 );
setEffRotateKey( spep_6 + 204, shuchusen6, 0 );
setEffRotateKey( spep_6 + 206, shuchusen6, 180 );
setEffRotateKey( spep_6 + 208, shuchusen6, 0 );
setEffRotateKey( spep_6 + 210, shuchusen6, 180 );
setEffRotateKey( spep_6 + 212, shuchusen6, 0 );
setEffRotateKey( spep_6 + 214, shuchusen6, 180 );
setEffRotateKey( spep_6 + 216, shuchusen6, 0 );
setEffRotateKey( spep_6 + 218, shuchusen6, 180 );
setEffRotateKey( spep_6 + 220, shuchusen6, 0 );
setEffRotateKey( spep_6 + 222, shuchusen6, 180 );
setEffRotateKey( spep_6 + 224, shuchusen6, 0 );
setEffRotateKey( spep_6 + 226, shuchusen6, 180 );
setEffRotateKey( spep_6 + 228, shuchusen6, 0 );
setEffRotateKey( spep_6 + 230, shuchusen6, 180 );
setEffRotateKey( spep_6 + 232, shuchusen6, 0 );
setEffRotateKey( spep_6 + 234, shuchusen6, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 234, shuchusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 238, 0, 0, 0, 0, 180); --黒フェード

-- ** 白フェード ** --
entryFade( spep_6 -3 +  0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 -3 + 18, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 0, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage(spep_6 + 18 );
endPhase( spep_6 + 236 );
else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- アイドリング～蹴り飛ばし(100F)
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
idling = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idling, 0, 0, 0 );
setEffMoveKey( spep_0 + 100, idling, 0, 0, 0 );

setEffScaleKey( spep_0 + 0, idling, 1.0, 1.0 );
setEffScaleKey( spep_0 + 100, idling, 1.0, 1.0 );

setEffRotateKey( spep_0 + 0, idling, 0 );
setEffRotateKey( spep_0 + 100, idling, 0 );

setEffAlphaKey( spep_0 + 0, idling, 255 );
setEffAlphaKey( spep_0 + 100, idling, 255 );

-- ** 流線 ** --
ryusen1 = entryEffectLife( spep_0 -3 + 18, 914, 42, 0x80, -1, 0, -2508.5, -67.8 );
setEffMoveKey( spep_0 -3 + 18, ryusen1, -2508.5, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 20, ryusen1, 545.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 22, ryusen1, -65.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 24, ryusen1, -676.2, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 26, ryusen1, -1287, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 28, ryusen1, -1897.8, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 30, ryusen1, -2508.5, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 32, ryusen1, 545.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 34, ryusen1, -65.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 36, ryusen1, -676.2, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 38, ryusen1, -1287, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 40, ryusen1, -1897.8, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 42, ryusen1, -2508.5, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 44, ryusen1, 545.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 46, ryusen1, -65.4, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 48, ryusen1, -676.2, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 50, ryusen1, -1287, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 52, ryusen1, -1897.8, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 54, ryusen1, -2508.5, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 56, ryusen1, -676.2, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 58, ryusen1, -1287, -67.8 , 0 );
setEffMoveKey( spep_0 -3 + 60, ryusen1, -1287, -67.8 , 0 );

setEffScaleKey( spep_0 -3 + 18, ryusen1, 9.77, 1.17 );
setEffScaleKey( spep_0 -3 + 60, ryusen1, 9.77, 1.17 );

setEffRotateKey( spep_0 -3 + 18, ryusen1, 0 );
setEffRotateKey( spep_0 -3 + 60, ryusen1, 0 );

setEffAlphaKey( spep_0 -3 + 18, ryusen1, 77 );
setEffAlphaKey( spep_0 -3 + 20, ryusen1, 153 );
setEffAlphaKey( spep_0 -3 + 56, ryusen1, 153 );
setEffAlphaKey( spep_0 -3 + 58, ryusen1, 77 );
setEffAlphaKey( spep_0 -3 + 60, ryusen1, 0 );

-- ** 敵の動き ** --
setDisp( spep_0 + 1, 1, 1 );
changeAnime( spep_0 + 1, 1, 101 );

--setMoveKey( spep_0 -3 + 0, 1, 2529.4, 9.6 , 0 );
setMoveKey( spep_0 + 0, 1, 2410.7, 8.3 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 2292.6, 7.4 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 2174.3, 6.2 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 2056.2, 5.3 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 1938, 4.1 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 1819.9, 3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 1701.6, 2 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 1583.5, 0.9 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 1465.4, -0.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 1347.2, -1.2 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 1228.9, -2.3 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 1110.8, -3.3 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 992.7, -4.4 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 874.7, -5.5 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 756.4, -6.5 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 701.2, -8 , 0 );
setMoveKey( spep_0 -3 + 33, 1, 701.2, -8 , 0 );

setScaleKey( spep_0 + 1, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 33, 1, 1.38, 1.38 );

setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 -3 + 33, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 180); --薄い黒フェード

-- ** 音 ** --
SE0 = playSe( spep_0 + 18, 8 );  --移動

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    
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


-- ** 流線 ** --
ryusen1a = entryEffectLife( spep_0 -3 + 76, 914, 24, 0x80, -1, 0, -1401.4, -850.2 );
setEffMoveKey( spep_0 -3 + 76, ryusen1a, -1401.4, -850.2 , 0 );
setEffMoveKey( spep_0 -3 + 78, ryusen1a, -852.5, -510.7 , 0 );
setEffMoveKey( spep_0 -3 + 80, ryusen1a, -1401.4, -850.2 , 0 );
setEffMoveKey( spep_0 -3 + 82, ryusen1a, -1950.3, -1189.6 , 0 );
setEffMoveKey( spep_0 -3 + 84, ryusen1a, -2499.2, -1529.1 , 0 );
setEffMoveKey( spep_0 -3 + 86, ryusen1a, 245.4, 168.2 , 0 );
setEffMoveKey( spep_0 -3 + 88, ryusen1a, -303.5, -171.2 , 0 );
setEffMoveKey( spep_0 -3 + 90, ryusen1a, -852.5, -510.7 , 0 );
setEffMoveKey( spep_0 -3 + 92, ryusen1a, -1401.4, -850.2 , 0 );
setEffMoveKey( spep_0 -3 + 94, ryusen1a, -1950.3, -1189.6 , 0 );
setEffMoveKey( spep_0 -3 + 96, ryusen1a, -2499.2, -1529.1 , 0 );
setEffMoveKey( spep_0 -3 + 98, ryusen1a, 245.4, 168.2 , 0 );
setEffMoveKey( spep_0 -3 + 100, ryusen1a, -303.5, -171.2 , 0 );

setEffScaleKey( spep_0 -3 + 76, ryusen1a, 10.32, 2.3 );
setEffScaleKey( spep_0 -3 + 100, ryusen1a, 10.32, 2.3 );

setEffRotateKey( spep_0 -3 + 76, ryusen1a, -31.7 );
setEffRotateKey( spep_0 -3 + 100, ryusen1a, -31.7 );

setEffAlphaKey( spep_0 -3 + 76, ryusen1a, 0 );
setEffAlphaKey( spep_0 -3 + 78, ryusen1a, 77 );
setEffAlphaKey( spep_0 -3 + 80, ryusen1a, 153 );
setEffAlphaKey( spep_0 -3 + 100, ryusen1a, 153 );

-- ** 敵の動き ** --
setDisp( spep_0 -3 + 85, 1, 0 );
changeAnime(spep_0 -3 + 60, 1, 108 );

setMoveKey( spep_0 -3 + 34, 1, 645.9, -9.2 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 590.9, -10.7 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 535.6, -12 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 480.2, -13.2 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 425, -14.7 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 369.7, -16 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 314.7, -17.2 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 259.4, -18.7 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 231, -19.9 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 202.7, -21.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 174.5, -22.7 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 146.2, -23.9 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 117.9, -25.4 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 89.6, 19.5 , 0 );
setMoveKey( spep_0 -3 + 62, 1, 84.5, -30.6 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 96.3, 23.6 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 95.6, 9.2 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 82.7, 28.4 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 93.3, -16 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 113.3, 27.6 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 243.8, 136.4 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 374.3, 245.3 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 504.8, 354 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 635.3, 462.7 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 765.8, 571.6 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 896.3, 680.3 , 0 );

setScaleKey( spep_0 -3 + 34, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 59, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 60, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 84, 1, 1.44, 1.44 );

setRotateKey( spep_0 -3 + 34, 1, 0 );
setRotateKey( spep_0 -3 + 59, 1, 0 );

setRotateKey( spep_0 -3 + 60, 1, -30 );
setRotateKey( spep_0 -3 + 84, 1, -30 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 -3 + 58, 906, 22, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 -3 + 58, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 80, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 58, shuchusen1, 1.5, 1.5 );
setEffScaleKey( spep_0 -3 + 80, shuchusen1, 1.5, 1.5 );

setEffRotateKey( spep_0 -3 + 58, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 60, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 62, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 64, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 66, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 68, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 70, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 72, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 74, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 76, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 78, shuchusen1, 180 );
setEffRotateKey( spep_0 -3 + 80, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 58, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 60, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 76, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 78, shuchusen1, 128 );
setEffAlphaKey( spep_0 -3 + 80, shuchusen1, 0 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_0 -3 + 60, 10005, 20, 0x100, -1, 0, -1.6, 288 );
setEffMoveKey( spep_0 -3 + 60, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 62, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 64, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 66, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 68, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 70, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 72, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 74, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 76, ctga, -1.6, 288 , 0 );
setEffMoveKey( spep_0 -3 + 78, ctga, -10.2, 291.5 , 0 );
setEffMoveKey( spep_0 -3 + 80, ctga, -1.6, 288 , 0 );

setEffScaleKey( spep_0 -3 + 60, ctga, 1.8, 1.8 );
setEffScaleKey( spep_0 -3 + 80, ctga, 1.8, 1.8 );

setEffRotateKey( spep_0 -3 + 60, ctga, -23 );
setEffRotateKey( spep_0 -3 + 80, ctga, -23 );

setEffAlphaKey( spep_0 -3 + 60, ctga, 255 );
setEffAlphaKey( spep_0 -3 + 80, ctga, 255 );

-- ** 音 ** --
playSe( spep_0 -3 + 60, 1010 );  --ガッ
playSe( spep_0 + 84, 43 );  --瞬間移動

-- ** 白フェード ** --
entryFade( spep_0 + 94, 4, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1 = spep_0 + 100;

--------------------------------------
--打ち落とし(84F)
--------------------------------------
-- ** 流線 ** --
ryusen2 = entryEffectLife( spep_1 + 0, 914, 81, 0x80, -1, 0, 335.8, 161.5 );
--setEffMoveKey( spep_1 -3 + 0, ryusen2, 335.8, 161.5 , 0 );
setEffMoveKey( spep_1 -3 + 3, ryusen2, 905.7, 464.5 , 0 );
setEffMoveKey( spep_1 -3 + 4, ryusen2, 1475.6, 767.6 , 0 );
setEffMoveKey( spep_1 -3 + 6, ryusen2, 2045.5, 1070.6 , 0 );
setEffMoveKey( spep_1 -3 + 8, ryusen2, 2615.4, 1373.6 , 0 );
setEffMoveKey( spep_1 -3 + 10, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 12, ryusen2, 335.8, 161.5 , 0 );
setEffMoveKey( spep_1 -3 + 14, ryusen2, 905.7, 464.5 , 0 );
setEffMoveKey( spep_1 -3 + 16, ryusen2, 1475.6, 767.6 , 0 );
setEffMoveKey( spep_1 -3 + 18, ryusen2, 2045.5, 1070.6 , 0 );
setEffMoveKey( spep_1 -3 + 20, ryusen2, 2615.4, 1373.6 , 0 );
setEffMoveKey( spep_1 -3 + 22, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 24, ryusen2, 335.8, 161.5 , 0 );
setEffMoveKey( spep_1 -3 + 26, ryusen2, 905.7, 464.5 , 0 );
setEffMoveKey( spep_1 -3 + 28, ryusen2, 1475.6, 767.6 , 0 );
setEffMoveKey( spep_1 -3 + 30, ryusen2, 2045.5, 1070.6 , 0 );
setEffMoveKey( spep_1 -3 + 32, ryusen2, 2615.4, 1373.6 , 0 );
setEffMoveKey( spep_1 -3 + 34, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 36, ryusen2, 2615.4, 1373.6 , 0 );
setEffMoveKey( spep_1 -3 + 38, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 40, ryusen2, -234.1, -141.5 , 0 );
setEffMoveKey( spep_1 -3 + 58, ryusen2, 125.4, 298.2 , 0 );
setEffMoveKey( spep_1 -3 + 60, ryusen2, 125.4, 298.2 , 0 );
setEffMoveKey( spep_1 -3 + 62, ryusen2, -126.8, -296 , 0 );
setEffMoveKey( spep_1 -3 + 64, ryusen2, -379, -890.1 , 0 );
setEffMoveKey( spep_1 -3 + 66, ryusen2, -631.2, -1484.3 , 0 );
setEffMoveKey( spep_1 -3 + 68, ryusen2, -883.4, -2078.4 , 0 );
setEffMoveKey( spep_1 -3 + 70, ryusen2, -1135.6, -2672.6 , 0 );
setEffMoveKey( spep_1 -3 + 72, ryusen2, 125.4, 298.2 , 0 );
setEffMoveKey( spep_1 -3 + 74, ryusen2, -126.8, -296 , 0 );
setEffMoveKey( spep_1 -3 + 76, ryusen2, -379, -890.1 , 0 );
setEffMoveKey( spep_1 -3 + 78, ryusen2, -631.2, -1484.3 , 0 );
setEffMoveKey( spep_1 -3 + 80, ryusen2, -883.4, -2078.4 , 0 );
setEffMoveKey( spep_1 -3 + 82, ryusen2, -1135.6, -2672.6 , 0 );
setEffMoveKey( spep_1 -3 + 84, ryusen2, 125.4, 298.2 , 0 );

setEffScaleKey( spep_1 + 0, ryusen2, 10.32, 2.3 );
setEffScaleKey( spep_1 -3 + 84, ryusen2, 10.32, 2.3 );

setEffRotateKey( spep_1 + 0, ryusen2, 152 );
setEffRotateKey( spep_1 -3 + 40, ryusen2, 152 );
setEffRotateKey( spep_1 -3 + 58, ryusen2, 293 );
setEffRotateKey( spep_1 -3 + 84, ryusen2, 293 );

setEffAlphaKey( spep_1 + 0, ryusen2, 154 );
setEffAlphaKey( spep_1 -3 + 36, ryusen2, 200 );
setEffAlphaKey( spep_1 -3 + 38, ryusen2, 77 );
setEffAlphaKey( spep_1 -3 + 40, ryusen2, 0 );
setEffAlphaKey( spep_1 -3 + 58, ryusen2, 0 );
setEffAlphaKey( spep_1 -3 + 60, ryusen2, 77 );
setEffAlphaKey( spep_1 -3 + 62, ryusen2, 200 );
setEffAlphaKey( spep_1 -3 + 84, ryusen2, 200 );

-- ** エフェクト等 ** --
uchiotoshi = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, uchiotoshi, 0, 0 , 0 );
setEffMoveKey( spep_1 + 84, uchiotoshi, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, uchiotoshi, 1.0, 1.0 );
setEffScaleKey( spep_1 + 84, uchiotoshi, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, uchiotoshi, 0 );
setEffRotateKey( spep_1 + 84, uchiotoshi, 0 );
setEffAlphaKey( spep_1 + 0, uchiotoshi, 255 );
setEffAlphaKey( spep_1 + 84, uchiotoshi, 255 );

-- ** 敵の動き ** ---
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 75, 1, 0 );
changeAnime( spep_1 + 0, 1, 108 );
changeAnime( spep_1 -3 + 40, 1, 106 );


--setMoveKey( spep_1 -3 + 0, 1, -1811.1, -1070.9 , 0 );
setMoveKey( spep_1 -3 + 3, 1, -1720.6, -1011.7 , 0 );
setMoveKey( spep_1 -3 + 4, 1, -1630.2, -952.7 , 0 );
setMoveKey( spep_1 -3 + 6, 1, -1540, -894 , 0 );
setMoveKey( spep_1 -3 + 8, 1, -1449.5, -835.1 , 0 );
setMoveKey( spep_1 -3 + 10, 1, -1359.2, -776.3 , 0 );
setMoveKey( spep_1 -3 + 12, 1, -1269, -717.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, -1178.6, -658.9 , 0 );
setMoveKey( spep_1 -3 + 16, 1, -1088.2, -600 , 0 );
setMoveKey( spep_1 -3 + 18, 1, -998, -541.3 , 0 );
setMoveKey( spep_1 -3 + 20, 1, -907.6, -482.8 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -817.2, -424.1 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -727, -365.5 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -636.6, -306.8 , 0 );
setMoveKey( spep_1 -3 + 28, 1, -546.4, -248.3 , 0 );
setMoveKey( spep_1 -3 + 30, 1, -455.9, -189.7 , 0 );
setMoveKey( spep_1 -3 + 32, 1, -365.7, -131.2 , 0 );
setMoveKey( spep_1 -3 + 34, 1, -275.3, -72.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, -185.1, -14.4 , 0 );
setMoveKey( spep_1 -3 + 39, 1, -94.7, 44.1 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 4.2, 79.2 , 0 );
setMoveKey( spep_1 -3 + 42, 1, -3.2, 94.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 16.7, 45.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, -32.4, 89.9 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 2.2, 48.9 , 0 );
setMoveKey( spep_1 -3 + 50, 1, -10.7, 66.5 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 5.5, 31.7 , 0 );
setMoveKey( spep_1 -3 + 54, 1, -8.9, 54.8 , 0 );
setMoveKey( spep_1 -3 + 56, 1, -60, -70.8 , 0 );
setMoveKey( spep_1 -3 + 58, 1, -109.8, -197.3 , 0 );
setMoveKey( spep_1 -3 + 60, 1, -158.4, -324.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, -205.8, -452.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, -251.5, -574.7 , 0 );
setMoveKey( spep_1 -3 + 66, 1, -297, -696.8 , 0 );
setMoveKey( spep_1 -3 + 68, 1, -342.6, -819.2 , 0 );
setMoveKey( spep_1 -3 + 70, 1, -388.2, -941.5 , 0 );
setMoveKey( spep_1 -3 + 72, 1, -433.7, -1063.8 , 0 );
setMoveKey( spep_1 -3 + 74, 1, -479, -1186.1 , 0 );

setScaleKey( spep_1 -3 + 3, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 39, 1, 1.48, 1.48 );
setScaleKey( spep_1 -3 + 40, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 74, 1, 1.43, 1.43 );

--setRotateKey( spep_1 -3 + 0, 1, -14 );
setRotateKey( spep_1 -3 + 3, 1, -15.1 );
setRotateKey( spep_1 -3 + 4, 1, -16.2 );
setRotateKey( spep_1 -3 + 6, 1, -17.3 );
setRotateKey( spep_1 -3 + 8, 1, -18.4 );
setRotateKey( spep_1 -3 + 10, 1, -19.6 );
setRotateKey( spep_1 -3 + 12, 1, -20.7 );
setRotateKey( spep_1 -3 + 14, 1, -21.8 );
setRotateKey( spep_1 -3 + 16, 1, -22.9 );
setRotateKey( spep_1 -3 + 18, 1, -24 );
setRotateKey( spep_1 -3 + 20, 1, -25.1 );
setRotateKey( spep_1 -3 + 22, 1, -26.2 );
setRotateKey( spep_1 -3 + 24, 1, -27.3 );
setRotateKey( spep_1 -3 + 26, 1, -28.4 );
setRotateKey( spep_1 -3 + 28, 1, -29.5 );
setRotateKey( spep_1 -3 + 30, 1, -30.7 );
setRotateKey( spep_1 -3 + 32, 1, -31.8 );
setRotateKey( spep_1 -3 + 34, 1, -32.9 );
setRotateKey( spep_1 -3 + 36, 1, -34 );
setRotateKey( spep_1 -3 + 39, 1, -35.1 );
setRotateKey( spep_1 -3 + 40, 1, -129.6 );
setRotateKey( spep_1 -3 + 42, 1, -131.5 );
setRotateKey( spep_1 -3 + 44, 1, -133.3 );
setRotateKey( spep_1 -3 + 46, 1, -135.2 );
setRotateKey( spep_1 -3 + 48, 1, -137 );
setRotateKey( spep_1 -3 + 50, 1, -138.8 );
setRotateKey( spep_1 -3 + 52, 1, -140.7 );
setRotateKey( spep_1 -3 + 54, 1, -142.5 );
setRotateKey( spep_1 -3 + 56, 1, -154.8 );
setRotateKey( spep_1 -3 + 58, 1, -167 );
setRotateKey( spep_1 -3 + 60, 1, -179.3 );
setRotateKey( spep_1 -3 + 62, 1, -191.5 );
setRotateKey( spep_1 -3 + 64, 1, -194.2 );
setRotateKey( spep_1 -3 + 66, 1, -196.9 );
setRotateKey( spep_1 -3 + 68, 1, -199.5 );
setRotateKey( spep_1 -3 + 70, 1, -202.2 );
setRotateKey( spep_1 -3 + 72, 1, -204.9 );
setRotateKey( spep_1 -3 + 74, 1, -207.6 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_1 -3 + 38, 906, 24, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 -3 + 38, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 -3 + 62, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 -3 + 38, shuchusen2, 1.5, 1.7 );
setEffScaleKey( spep_1 -3 + 62, shuchusen2, 1.5, 1.7 );

setEffRotateKey( spep_1 -3 + 38, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 40, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 42, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 44, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 46, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 48, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 50, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 52, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 54, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 56, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 58, shuchusen2, 180 );
setEffRotateKey( spep_1 -3 + 60, shuchusen2, 0 );
setEffRotateKey( spep_1 -3 + 62, shuchusen2, 180 );

setEffAlphaKey( spep_1 -3 + 38, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 40, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 58, shuchusen2, 255 );
setEffAlphaKey( spep_1 -3 + 60, shuchusen2, 128 );
setEffAlphaKey( spep_1 -3 + 62, shuchusen2, 0 );

-- ** 書き文字エントリー ** --
ctbaki = entryEffectLife( spep_1 -3 + 40, 10020, 20, 0x100, -1, 0, -129.8, 346.1 );
setEffMoveKey( spep_1 -3 + 40, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 48, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 50, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 52, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 54, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 56, ctbaki, -129.8, 346.1 , 0 );
setEffMoveKey( spep_1 -3 + 58, ctbaki, -140.8, 353.1 , 0 );
setEffMoveKey( spep_1 -3 + 60, ctbaki, -129.8, 346.1 , 0 );

setEffScaleKey( spep_1 -3 + 40, ctbaki, 1.54, 1.54 );
setEffScaleKey( spep_1 -3 + 60, ctbaki, 1.54, 1.54 );

setEffRotateKey( spep_1 -3 + 40, ctbaki, -20.5 );
setEffRotateKey( spep_1 -3 + 60, ctbaki, -20.5 );

setEffAlphaKey( spep_1 -3 + 40, ctbaki, 255 );
setEffAlphaKey( spep_1 -3 + 60, ctbaki, 255 );

-- ** 音 ** --
playSe( spep_1 + 10, 1109 );  --瞬間移動
playSe( spep_1 -3 + 40, 1011 );  --バキッ

--白フェード
entryFade( spep_1 + 78, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 84, 0, 0, 0, 0, 180); --薄い黒フェード

-- ** 次の準備 ** --
spep_2 = spep_1 + 84;


------------------------------------------------------
-- 気溜め(158F)
------------------------------------------------------

-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_2 + 158, tame, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 158, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 158, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 158, tame, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_2 + 0, 906, 158, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2 + 158, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen3, 1.5, 1.6 );
setEffScaleKey( spep_2 + 158, shuchusen3, 1.5, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen3, 0 );
setEffRotateKey( spep_2 + 2, shuchusen3, 180 );
setEffRotateKey( spep_2 + 4, shuchusen3, 0 );
setEffRotateKey( spep_2 + 6, shuchusen3, 180 );
setEffRotateKey( spep_2 + 8, shuchusen3, 0 );
setEffRotateKey( spep_2 + 10, shuchusen3, 180 );
setEffRotateKey( spep_2 + 12, shuchusen3, 0 );
setEffRotateKey( spep_2 + 14, shuchusen3, 180 );
setEffRotateKey( spep_2 + 16, shuchusen3, 0 );
setEffRotateKey( spep_2 + 18, shuchusen3, 180 );
setEffRotateKey( spep_2 + 20, shuchusen3, 0 );
setEffRotateKey( spep_2 + 22, shuchusen3, 180 );
setEffRotateKey( spep_2 + 24, shuchusen3, 0 );
setEffRotateKey( spep_2 + 26, shuchusen3, 180 );
setEffRotateKey( spep_2 + 28, shuchusen3, 0 );
setEffRotateKey( spep_2 + 30, shuchusen3, 180 );
setEffRotateKey( spep_2 + 32, shuchusen3, 0 );
setEffRotateKey( spep_2 + 34, shuchusen3, 180 );
setEffRotateKey( spep_2 + 36, shuchusen3, 0 );
setEffRotateKey( spep_2 + 38, shuchusen3, 180 );
setEffRotateKey( spep_2 + 40, shuchusen3, 0 );
setEffRotateKey( spep_2 + 42, shuchusen3, 180 );
setEffRotateKey( spep_2 + 44, shuchusen3, 0 );
setEffRotateKey( spep_2 + 46, shuchusen3, 180 );
setEffRotateKey( spep_2 + 48, shuchusen3, 0 );
setEffRotateKey( spep_2 + 50, shuchusen3, 180 );
setEffRotateKey( spep_2 + 52, shuchusen3, 0 );
setEffRotateKey( spep_2 + 54, shuchusen3, 180 );
setEffRotateKey( spep_2 + 56, shuchusen3, 0 );
setEffRotateKey( spep_2 + 58, shuchusen3, 180 );
setEffRotateKey( spep_2 + 60, shuchusen3, 0 );
setEffRotateKey( spep_2 + 62, shuchusen3, 180 );
setEffRotateKey( spep_2 + 64, shuchusen3, 0 );
setEffRotateKey( spep_2 + 66, shuchusen3, 180 );
setEffRotateKey( spep_2 + 68, shuchusen3, 0 );
setEffRotateKey( spep_2 + 70, shuchusen3, 180 );
setEffRotateKey( spep_2 + 72, shuchusen3, 0 );
setEffRotateKey( spep_2 + 74, shuchusen3, 180 );
setEffRotateKey( spep_2 + 76, shuchusen3, 0 );
setEffRotateKey( spep_2 + 78, shuchusen3, 180 );
setEffRotateKey( spep_2 + 80, shuchusen3, 0 );
setEffRotateKey( spep_2 + 82, shuchusen3, 180 );
setEffRotateKey( spep_2 + 84, shuchusen3, 0 );
setEffRotateKey( spep_2 + 86, shuchusen3, 180 );
setEffRotateKey( spep_2 + 88, shuchusen3, 0 );
setEffRotateKey( spep_2 + 90, shuchusen3, 180 );
setEffRotateKey( spep_2 + 92, shuchusen3, 0 );
setEffRotateKey( spep_2 + 94, shuchusen3, 180 );
setEffRotateKey( spep_2 + 96, shuchusen3, 0 );
setEffRotateKey( spep_2 + 98, shuchusen3, 180 );
setEffRotateKey( spep_2 + 100, shuchusen3, 0 );
setEffRotateKey( spep_2 + 102, shuchusen3, 180 );
setEffRotateKey( spep_2 + 104, shuchusen3, 0 );
setEffRotateKey( spep_2 + 106, shuchusen3, 180 );
setEffRotateKey( spep_2 + 108, shuchusen3, 0 );
setEffRotateKey( spep_2 + 110, shuchusen3, 180 );
setEffRotateKey( spep_2 + 112, shuchusen3, 0 );
setEffRotateKey( spep_2 + 114, shuchusen3, 180 );
setEffRotateKey( spep_2 + 116, shuchusen3, 0 );
setEffRotateKey( spep_2 + 118, shuchusen3, 180 );
setEffRotateKey( spep_2 + 120, shuchusen3, 0 );
setEffRotateKey( spep_2 + 122, shuchusen3, 180 );
setEffRotateKey( spep_2 + 124, shuchusen3, 0 );
setEffRotateKey( spep_2 + 126, shuchusen3, 180 );
setEffRotateKey( spep_2 + 128, shuchusen3, 0 );
setEffRotateKey( spep_2 + 130, shuchusen3, 180 );
setEffRotateKey( spep_2 + 132, shuchusen3, 0 );
setEffRotateKey( spep_2 + 134, shuchusen3, 180 );
setEffRotateKey( spep_2 + 136, shuchusen3, 0 );
setEffRotateKey( spep_2 + 138, shuchusen3, 180 );
setEffRotateKey( spep_2 + 140, shuchusen3, 0 );
setEffRotateKey( spep_2 + 142, shuchusen3, 180 );
setEffRotateKey( spep_2 + 144, shuchusen3, 0 );
setEffRotateKey( spep_2 + 146, shuchusen3, 180 );
setEffRotateKey( spep_2 + 148, shuchusen3, 0 );
setEffRotateKey( spep_2 + 150, shuchusen3, 180 );
setEffRotateKey( spep_2 + 152, shuchusen3, 0 );
setEffRotateKey( spep_2 + 154, shuchusen3, 180 );
setEffRotateKey( spep_2 + 156, shuchusen3, 0 );
setEffRotateKey( spep_2 + 158, shuchusen3, 180 );

setEffAlphaKey( spep_2 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_2 + 158, shuchusen3, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 34 , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 34 , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_2 -3 + 50, 190006, 72, 0x100, -1, 0, 0, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_2 -3 + 50,  ctgogo,  0,  510);
setEffMoveKey(  spep_2 -3 + 122,  ctgogo,  0,  510);

setEffAlphaKey( spep_2 -3 + 50, ctgogo, 0 );
setEffAlphaKey( spep_2 -3 + 51, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 114, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 116, ctgogo, 255 );
setEffAlphaKey( spep_2 -3 + 118, ctgogo, 191 );
setEffAlphaKey( spep_2 -3 + 120, ctgogo, 128 );
setEffAlphaKey( spep_2 -3 + 122, ctgogo, 64 );

setEffRotateKey(  spep_2 -3 + 50,  ctgogo,  0);
setEffRotateKey(  spep_2 -3 + 122,  ctgogo,  0);

setEffScaleKey(  spep_2 -3 + 50,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 -3 + 112,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 -3 + 122,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_2 + 10, 17 );  --溜める
playSe( spep_2 -3 + 50, 1018 );  --ゴゴゴ


-- ** 白フェード ** --
entryFade( spep_2 + 144, 10, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 158, 0, 0, 0, 0, 180); --薄い黒フェード

-- ** 次の準備 ** --
spep_3 = spep_2 + 158;


--------------------------------------
--カードカットイン(90F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen4, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen4, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen4, 0 );
setEffRotateKey( spep_3 + 90, shuchusen4, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen4, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 白フェード ** --
entryFade( spep_3 + 80, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0, 0, 0, 0, 225); --黒フェード

-- ** 次の準備 ** --
spep_4 = spep_3 + 90;

------------------------------------------------------
-- 発射(78F)
------------------------------------------------------

-- ** エフェクト等 ** --
hassha = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, hassha, 0, 0 , 0 );
setEffMoveKey( spep_4 + 78, hassha, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hassha, -1.0, 1.0 );
setEffScaleKey( spep_4 + 78, hassha, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hassha, 0 );
setEffRotateKey( spep_4 + 78, hassha, 0 );
setEffAlphaKey( spep_4 + 0, hassha, 255 );
setEffAlphaKey( spep_4 + 78, hassha, 255 );

-- ** 敵の動き ** --
setDisp( spep_4 -3 + 56, 1, 1 );
setDisp( spep_4 -3 + 79, 1, 0 );
changeAnime( spep_4 -3 + 56, 1, 107 );

setMoveKey( spep_4 -3 + 56, 1, 34.9, -31 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 35.9, -31.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 41.2, -39.2 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 40.7, -37.8 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 46, -43.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 45.2, -43.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 50.4, -51.1 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 50.8, -51.5 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 51.3, -52 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 56.3, -57.5 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 55.2, -56.9 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 59.7, -62.9 , 0 );

setScaleKey( spep_4 -3 + 56, 1, -1, 1 );
setScaleKey( spep_4 -3 + 58, 1, -1.01, 1.01 );
setScaleKey( spep_4 -3 + 62, 1, -1.01, 1.01 );
setScaleKey( spep_4 -3 + 64, 1, -1.03, 1.03 );
setScaleKey( spep_4 -3 + 68, 1, -1.03, 1.03 );
setScaleKey( spep_4 -3 + 70, 1, -1.05, 1.05 );
setScaleKey( spep_4 -3 + 74, 1, -1.05, 1.05 );
setScaleKey( spep_4 -3 + 76, 1, -1.07, 1.07 );
setScaleKey( spep_4 -3 + 78, 1, -1.07, 1.07 );

setRotateKey( spep_4 -3 + 56, 1, -65.6 );
setRotateKey( spep_4 -3 + 78, 1, -65.6 );

-- ** 流線 ** --
ryusen5 = entryEffectLife( spep_4 + 0, 921, 78, 0x80, -1, 0, 32.7, -7.1 );
setEffMoveKey( spep_4 + 0, ryusen5, 32.7, -7.1 , 0 );
setEffMoveKey( spep_4 + 78, ryusen5, 32.7, -7.1 , 0 );

setEffScaleKey( spep_4 + 0, ryusen5, -2.01, 1.55 );
setEffScaleKey( spep_4 + 78, ryusen5, -2.01, 1.55 );

setEffRotateKey( spep_4 + 0, ryusen5, 58.5 );
setEffRotateKey( spep_4 + 78, ryusen5, 58.5 );

setEffAlphaKey( spep_4 + 0, ryusen5, 255 );
setEffAlphaKey( spep_4 + 78, ryusen5, 255 );

-- ** 白フェード ** --
entryFade( spep_4 + 68, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 78, 0, 0, 0, 0, 180); --薄い黒フェード

-- ** 音 ** --
playSe( spep_4 + 0 -10, 1072 );  --発射前
playSe( spep_4 + 20, 1022 );  --発射
--playSe( spep_4 + 54, 1021 );  --敵に向かう

-- ** 次の準備 ** --
spep_5 = spep_4 + 78;

------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffect( spep_5 + 0, 190000, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gyan, -1.0, 1.0 );
setEffScaleKey( spep_5 + 58, gyan, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gyan, 0 );
setEffRotateKey( spep_5 + 58, gyan, 0 );
setEffAlphaKey( spep_5 + 0, gyan, 255 );
setEffAlphaKey( spep_5 + 58, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_5 + 0, 10006, 58, 0x100, -1, 0, 7.1, 316.8 );
setEffMoveKey( spep_5 + 0, ctgyan, 7.1, 316.8 , 0 );
setEffMoveKey( spep_5 -3 + 61, ctgyan, 7.1, 316.8 , 0 );

setEffScaleKey( spep_5 -3 + 3, ctgyan, 2, 2 );
setEffScaleKey( spep_5 -3 + 10, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_5 -3 + 61, ctgyan, 4.5, 4.5 );

setEffRotateKey( spep_5 + 0, ctgyan, 0 );
setEffRotateKey( spep_5 -3 + 61, ctgyan, 0 );

setEffAlphaKey( spep_5 + 0, ctgyan, 255 );
setEffAlphaKey( spep_5 -3 + 61, ctgyan, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, 1023 );  --ギャン

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 58, 0, 0, 0, 0, 225); --黒フェード

-- ** 次の準備 ** --
spep_6 = spep_5 + 58;

------------------------------------------------------
-- フィニッシュ(238F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_6 + 238, finish, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 238, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 238, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 238, finish, 255 );

-- ** 集中線 ** --
shuchusen6 = entryEffectLife( spep_6 + 0, 906, 234, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6 + 234, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen6, 1.5, 2 );
setEffScaleKey( spep_6 + 234, shuchusen6, 1.5, 2 );

setEffRotateKey( spep_6 + 0, shuchusen6, 0 );
setEffRotateKey( spep_6 + 2, shuchusen6, 180 );
setEffRotateKey( spep_6 + 4, shuchusen6, 0 );
setEffRotateKey( spep_6 + 6, shuchusen6, 180 );
setEffRotateKey( spep_6 + 8, shuchusen6, 0 );
setEffRotateKey( spep_6 + 10, shuchusen6, 180 );
setEffRotateKey( spep_6 + 12, shuchusen6, 0 );
setEffRotateKey( spep_6 + 14, shuchusen6, 180 );
setEffRotateKey( spep_6 + 16, shuchusen6, 0 );
setEffRotateKey( spep_6 + 18, shuchusen6, 180 );
setEffRotateKey( spep_6 + 20, shuchusen6, 0 );
setEffRotateKey( spep_6 + 22, shuchusen6, 180 );
setEffRotateKey( spep_6 + 24, shuchusen6, 0 );
setEffRotateKey( spep_6 + 26, shuchusen6, 180 );
setEffRotateKey( spep_6 + 28, shuchusen6, 0 );
setEffRotateKey( spep_6 + 30, shuchusen6, 180 );
setEffRotateKey( spep_6 + 32, shuchusen6, 0 );
setEffRotateKey( spep_6 + 34, shuchusen6, 180 );
setEffRotateKey( spep_6 + 36, shuchusen6, 0 );
setEffRotateKey( spep_6 + 38, shuchusen6, 180 );
setEffRotateKey( spep_6 + 40, shuchusen6, 0 );
setEffRotateKey( spep_6 + 42, shuchusen6, 180 );
setEffRotateKey( spep_6 + 44, shuchusen6, 0 );
setEffRotateKey( spep_6 + 46, shuchusen6, 180 );
setEffRotateKey( spep_6 + 48, shuchusen6, 0 );
setEffRotateKey( spep_6 + 50, shuchusen6, 180 );
setEffRotateKey( spep_6 + 52, shuchusen6, 0 );
setEffRotateKey( spep_6 + 54, shuchusen6, 180 );
setEffRotateKey( spep_6 + 56, shuchusen6, 0 );
setEffRotateKey( spep_6 + 58, shuchusen6, 180 );
setEffRotateKey( spep_6 + 60, shuchusen6, 0 );
setEffRotateKey( spep_6 + 62, shuchusen6, 180 );
setEffRotateKey( spep_6 + 64, shuchusen6, 0 );
setEffRotateKey( spep_6 + 66, shuchusen6, 180 );
setEffRotateKey( spep_6 + 68, shuchusen6, 0 );
setEffRotateKey( spep_6 + 70, shuchusen6, 180 );
setEffRotateKey( spep_6 + 72, shuchusen6, 0 );
setEffRotateKey( spep_6 + 74, shuchusen6, 180 );
setEffRotateKey( spep_6 + 76, shuchusen6, 0 );
setEffRotateKey( spep_6 + 78, shuchusen6, 180 );
setEffRotateKey( spep_6 + 80, shuchusen6, 0 );
setEffRotateKey( spep_6 + 82, shuchusen6, 180 );
setEffRotateKey( spep_6 + 84, shuchusen6, 0 );
setEffRotateKey( spep_6 + 86, shuchusen6, 180 );
setEffRotateKey( spep_6 + 88, shuchusen6, 0 );
setEffRotateKey( spep_6 + 90, shuchusen6, 180 );
setEffRotateKey( spep_6 + 92, shuchusen6, 0 );
setEffRotateKey( spep_6 + 94, shuchusen6, 180 );
setEffRotateKey( spep_6 + 96, shuchusen6, 0 );
setEffRotateKey( spep_6 + 98, shuchusen6, 180 );
setEffRotateKey( spep_6 + 100, shuchusen6, 0 );
setEffRotateKey( spep_6 + 102, shuchusen6, 180 );
setEffRotateKey( spep_6 + 104, shuchusen6, 0 );
setEffRotateKey( spep_6 + 106, shuchusen6, 180 );
setEffRotateKey( spep_6 + 108, shuchusen6, 0 );
setEffRotateKey( spep_6 + 110, shuchusen6, 180 );
setEffRotateKey( spep_6 + 112, shuchusen6, 0 );
setEffRotateKey( spep_6 + 114, shuchusen6, 180 );
setEffRotateKey( spep_6 + 116, shuchusen6, 0 );
setEffRotateKey( spep_6 + 118, shuchusen6, 180 );
setEffRotateKey( spep_6 + 120, shuchusen6, 0 );
setEffRotateKey( spep_6 + 122, shuchusen6, 180 );
setEffRotateKey( spep_6 + 124, shuchusen6, 0 );
setEffRotateKey( spep_6 + 126, shuchusen6, 180 );
setEffRotateKey( spep_6 + 128, shuchusen6, 0 );
setEffRotateKey( spep_6 + 130, shuchusen6, 180 );
setEffRotateKey( spep_6 + 132, shuchusen6, 0 );
setEffRotateKey( spep_6 + 134, shuchusen6, 180 );
setEffRotateKey( spep_6 + 136, shuchusen6, 0 );
setEffRotateKey( spep_6 + 138, shuchusen6, 180 );
setEffRotateKey( spep_6 + 140, shuchusen6, 0 );
setEffRotateKey( spep_6 + 142, shuchusen6, 180 );
setEffRotateKey( spep_6 + 144, shuchusen6, 0 );
setEffRotateKey( spep_6 + 146, shuchusen6, 180 );
setEffRotateKey( spep_6 + 148, shuchusen6, 0 );
setEffRotateKey( spep_6 + 150, shuchusen6, 180 );
setEffRotateKey( spep_6 + 152, shuchusen6, 0 );
setEffRotateKey( spep_6 + 154, shuchusen6, 180 );
setEffRotateKey( spep_6 + 156, shuchusen6, 0 );
setEffRotateKey( spep_6 + 158, shuchusen6, 180 );
setEffRotateKey( spep_6 + 160, shuchusen6, 0 );
setEffRotateKey( spep_6 + 162, shuchusen6, 180 );
setEffRotateKey( spep_6 + 164, shuchusen6, 0 );
setEffRotateKey( spep_6 + 166, shuchusen6, 180 );
setEffRotateKey( spep_6 + 168, shuchusen6, 0 );
setEffRotateKey( spep_6 + 170, shuchusen6, 180 );
setEffRotateKey( spep_6 + 172, shuchusen6, 0 );
setEffRotateKey( spep_6 + 174, shuchusen6, 180 );
setEffRotateKey( spep_6 + 176, shuchusen6, 0 );
setEffRotateKey( spep_6 + 178, shuchusen6, 180 );
setEffRotateKey( spep_6 + 180, shuchusen6, 0 );
setEffRotateKey( spep_6 + 182, shuchusen6, 180 );
setEffRotateKey( spep_6 + 184, shuchusen6, 0 );
setEffRotateKey( spep_6 + 186, shuchusen6, 180 );
setEffRotateKey( spep_6 + 188, shuchusen6, 0 );
setEffRotateKey( spep_6 + 190, shuchusen6, 180 );
setEffRotateKey( spep_6 + 192, shuchusen6, 0 );
setEffRotateKey( spep_6 + 194, shuchusen6, 180 );
setEffRotateKey( spep_6 + 196, shuchusen6, 0 );
setEffRotateKey( spep_6 + 198, shuchusen6, 180 );
setEffRotateKey( spep_6 + 200, shuchusen6, 0 );
setEffRotateKey( spep_6 + 202, shuchusen6, 180 );
setEffRotateKey( spep_6 + 204, shuchusen6, 0 );
setEffRotateKey( spep_6 + 206, shuchusen6, 180 );
setEffRotateKey( spep_6 + 208, shuchusen6, 0 );
setEffRotateKey( spep_6 + 210, shuchusen6, 180 );
setEffRotateKey( spep_6 + 212, shuchusen6, 0 );
setEffRotateKey( spep_6 + 214, shuchusen6, 180 );
setEffRotateKey( spep_6 + 216, shuchusen6, 0 );
setEffRotateKey( spep_6 + 218, shuchusen6, 180 );
setEffRotateKey( spep_6 + 220, shuchusen6, 0 );
setEffRotateKey( spep_6 + 222, shuchusen6, 180 );
setEffRotateKey( spep_6 + 224, shuchusen6, 0 );
setEffRotateKey( spep_6 + 226, shuchusen6, 180 );
setEffRotateKey( spep_6 + 228, shuchusen6, 0 );
setEffRotateKey( spep_6 + 230, shuchusen6, 180 );
setEffRotateKey( spep_6 + 232, shuchusen6, 0 );
setEffRotateKey( spep_6 + 234, shuchusen6, 180 );

setEffAlphaKey( spep_6 + 0, shuchusen6, 255 );
setEffAlphaKey( spep_6 + 234, shuchusen6, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 238, 0, 0, 0, 0, 180); --黒フェード

-- ** 白フェード ** --
entryFade( spep_6 -3 +  0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_6 -3 + 18, 0, 0, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_6 + 0, 1024 );  --爆発

-- ** ダメージ表示 ** --
dealDamage(spep_6 + 18 );
endPhase( spep_6 + 236 );

end

