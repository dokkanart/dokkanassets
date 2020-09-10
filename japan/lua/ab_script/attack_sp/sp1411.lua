--1019170_トテッポ_アングリーキャノン
--sp_effect_a1_00221

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
SP_01=	155019	;--	突進
SP_02=	155020	;--	顔アップ
SP_03=	155022	;--	頭突き：エフェクト
SP_04=	155023	;--	頭突き：キャラ
SP_05=	155025	;--	気タメ
SP_06=	155027	;--	気弾発射
SP_07=	155029	;--	気弾着弾から爆破：エフェクト
SP_08=	155030	;--	気弾着弾から爆発

--てき側
SP_01x=	155019	;--	突進
SP_02x=	155021	;--	顔アップ（敵側）
SP_03x=	155022	;--	頭突き：エフェクト
SP_04x=	155024	;--	頭突き：キャラ（敵側）
SP_05x=	155026	;--	気タメ（敵側）
SP_06x=	155028	;--	気弾発射（敵側）
SP_07x=	155029	;--	気弾着弾から爆破：エフェクト
SP_08x=	155030	;--	気弾着弾から爆発

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

--adjustAttackerLabel( 0, 205);
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, tossin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 76, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 76, tossin, 255 );
setEffAlphaKey( spep_0 + 77, tossin, 0 );
setEffAlphaKey( spep_0 + 78, tossin, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 76, 20 );
setEffMoveKey( spep_0 + 0,shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76,shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0,shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 76,shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0,shuchusen1, 180 );
setEffRotateKey( spep_0 + 76,shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0,shuchusen1, 255 );
setEffAlphaKey( spep_0 + 74,shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75,shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76,shuchusen1, 0 );

--SE
SE0=playSe( spep_0 + 0, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
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
--SE
playSe( spep_0 + 40, 1072 );
se_1183 = playSe( spep_0 + 40, 1183 );
setSeVolume( spep_0 + 40, 1183, 0 );

setSeVolume( spep_0 + 48, 1183, 0 );
setSeVolume( spep_0 + 49, 1183, 3.82 );
setSeVolume( spep_0 + 50, 1183, 7.64 );
setSeVolume( spep_0 + 51, 1183, 11.45 );
setSeVolume( spep_0 + 52, 1183, 15.27 );
setSeVolume( spep_0 + 53, 1183, 19.09 );
setSeVolume( spep_0 + 54, 1183, 22.91 );
setSeVolume( spep_0 + 55, 1183, 26.73 );
setSeVolume( spep_0 + 56, 1183, 30.55 );
setSeVolume( spep_0 + 57, 1183, 34.36 );
setSeVolume( spep_0 + 58, 1183, 38.18 );
setSeVolume( spep_0 + 59, 1183, 42.00 );
setSeVolume( spep_0 + 60, 1183, 45.82 );
setSeVolume( spep_0 + 61, 1183, 49.64 );
setSeVolume( spep_0 + 62, 1183, 53.45 );
setSeVolume( spep_0 + 63, 1183, 57.27 );
setSeVolume( spep_0 + 64, 1183, 61.09 );
setSeVolume( spep_0 + 65, 1183, 64.91 );
setSeVolume( spep_0 + 66, 1183, 68.73 );
setSeVolume( spep_0 + 67, 1183, 72.55 );
setSeVolume( spep_0 + 68, 1183, 76.36 );
setSeVolume( spep_0 + 69, 1183, 80.18 );
setSeVolume( spep_0 + 70, 1183, 84.00 );
setSeVolume( spep_0 + 71, 1183, 87.82 );
setSeVolume( spep_0 + 72, 1183, 91.64 );
setSeVolume( spep_0 + 73, 1183, 95.45 );
setSeVolume( spep_0 + 74, 1183, 99.27 );
setSeVolume( spep_0 + 75, 1183, 103.09 );
setSeVolume( spep_0 + 76, 1183, 106.91 );
setSeVolume( spep_0 + 77, 1183, 110.73 );
setSeVolume( spep_0 + 78, 1183, 114.55 );
setSeVolume( spep_0 + 79, 1183, 118.36 );
setSeVolume( spep_0 + 80, 1183, 122.18 );
setSeVolume( spep_0 + 81, 1183, 126 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_1 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_1 + 50, face, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_1 + 50, face, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, face, 0 );
setEffRotateKey( spep_1 + 50, face, 0 );
setEffAlphaKey( spep_1 + 0, face, 255 );
setEffAlphaKey( spep_1 + 50, face, 255 );

shuchusen2 = entryEffectLife( spep_1 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchusen2, 48, 20 );
setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 48, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 48, shuchusen2, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_1 + 3, 8 );
playSe( spep_1 + 3, 1182 );
se_1116 = playSe( spep_1 + 3, 1116 );
playSe( spep_1 + 46, 1003 );
setSeVolume( spep_1 + 46, 1003, 63 );

stopSe( spep_1 + 40, se_1183, 42 );
stopSe( spep_1 + 34, se_1116, 25 );

--白フェード
entryFade( spep_1 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 50;

------------------------------------------------------
-- 頭突き
------------------------------------------------------
-- ** エフェクト等 ** --
zutuki_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, zutuki_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, zutuki_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, zutuki_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, zutuki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zutuki_f, 0 );
setEffRotateKey( spep_2 + 90, zutuki_f, 0 );
setEffAlphaKey( spep_2 + 0, zutuki_f, 255 );
setEffAlphaKey( spep_2 + 90, zutuki_f, 255 );

-- ** エフェクト等 ** --
zutuki_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, zutuki_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, zutuki_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, zutuki_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, zutuki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zutuki_b, 0 );
setEffRotateKey( spep_2 + 90, zutuki_b, 0 );
setEffAlphaKey( spep_2 + 0, zutuki_b, 255 );
setEffAlphaKey( spep_2 + 90, zutuki_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 28,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 28, shuchusen3, 8, 18 );
setEffMoveKey( spep_2-3 + 28, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 36, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 28, shuchusen3, 1, 1 );
setEffScaleKey( spep_2-3 + 36, shuchusen3, 1, 1 );

setEffRotateKey( spep_2-3 + 28, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 36, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 30, shuchusen3, 228 );
setEffAlphaKey( spep_2-3 + 32, shuchusen3, 200 );
setEffAlphaKey( spep_2-3 + 34, shuchusen3, 173 );
setEffAlphaKey( spep_2-3 + 36, shuchusen3, 145 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 28,  10020, 18, 0x100, -1, 0, -87.8, 334.2 );--バキッ
setEffShake( spep_2-3 + 28, ctbaki, 18, 10 );
setEffMoveKey( spep_2-3 + 28, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbaki, -100.1, 342 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_2-3 + 28, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2-3 + 30, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_2-3 + 32, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 34, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 36, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_2-3 + 38, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 40, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 42, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_2-3 + 44, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 46, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_2-3 + 28, ctbaki, -12.4 );
setEffRotateKey( spep_2-3 + 46, ctbaki, -12.4 );

setEffAlphaKey( spep_2-3 + 28, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 40, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 42, ctbaki, 174 );
setEffAlphaKey( spep_2-3 + 44, ctbaki, 94 );
setEffAlphaKey( spep_2-3 + 46, ctbaki, 13 );

--敵の動き
setDisp( spep_2-3 +4, 1, 1 );
setDisp( spep_2-3 + 42, 1, 0 );
changeAnime( spep_2-3 + 4, 1, 118 );
changeAnime( spep_2-3 + 28, 1, 107 );

setMoveKey( spep_2-3 + 4, 1, 776.5, 148.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 601.9, 107 , 0 );
setMoveKey( spep_2-3 + 8, 1, 492.3, 81.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, 413.2, 62.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 352.3, 48.2 , 0 );
setMoveKey( spep_2-3 + 14, 1, 303.7, 36.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, 263.9, 27.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 230.9, 19.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, 202.9, 13.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 179, 7.4 , 0 );
setMoveKey( spep_2-3 + 24, 1, 158.3, 2.6 , 0 );
setMoveKey( spep_2-3 + 26, 1, 140.2, -1.7 , 0 );
setMoveKey( spep_2-3 + 27, 1, 140.2, -1.7 , 0 );

setMoveKey( spep_2-3 + 28, 1, 169.5, -21.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, 452.6, 89.7 , 0 );
setMoveKey( spep_2-3 + 32, 1, 568.2, 77.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, 485.9, 102.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, 679.3, 137.7 , 0 );
setMoveKey( spep_2-3 + 38, 1, 862.1, 168.7 , 0 );
setMoveKey( spep_2-3 + 40, 1, 1053, 199.7 , 0 );
setMoveKey( spep_2-3 + 42, 1, 1235.9, 226.6 , 0 );

setScaleKey( spep_2-3 + 4, 1, 3, 3 );
setScaleKey( spep_2-3 + 6, 1, 2.81, 2.81 );
setScaleKey( spep_2-3 + 8, 1, 2.69, 2.69 );
setScaleKey( spep_2-3 + 10, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 12, 1, 2.53, 2.53 );
setScaleKey( spep_2-3 + 14, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 16, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 20, 1, 2.37, 2.37 );
setScaleKey( spep_2-3 + 22, 1, 2.34, 2.34 );
setScaleKey( spep_2-3 + 24, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 26, 1, 2.3, 2.3 );
setScaleKey( spep_2-3 + 27, 1, 2.3, 2.3 );

setScaleKey( spep_2-3 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 30, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 34, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 36, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_2-3 + 40, 1, 2.23, 2.23 );
setScaleKey( spep_2-3 + 42, 1, 2.5, 2.5 );

setRotateKey( spep_2-3 + 4, 1, 0 );
setRotateKey( spep_2-3 + 27, 1, 0 );

setRotateKey( spep_2-3 + 28, 1, -55.2 );
setRotateKey( spep_2-3 + 30, 1, -54.3 );
setRotateKey( spep_2-3 + 32, 1, -53.5 );
setRotateKey( spep_2-3 + 34, 1, -53.5 );
setRotateKey( spep_2-3 + 36, 1, -52.7 );
setRotateKey( spep_2-3 + 38, 1, -51.8 );
setRotateKey( spep_2-3 + 40, 1, -51 );
setRotateKey( spep_2-3 + 42, 1, -50.1 );

--SE
playSe( spep_2 + 19, 1004 );
playSe( spep_2 + 26, 1009 );
playSe( spep_2 + 28, 1110 );

--白フェード
entryFade( spep_2 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;

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
entryFade( spep_3 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気タメ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_4 + 98, tame, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 98, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 98, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_4 + 12  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_4 + 12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_4 +24, 190006, 72, 0x100, -1, 0, -100, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_4 +24,  ctgogo,  -100,  510);
setEffMoveKey(  spep_4 +96,  ctgogo,  -100,  510);

setEffAlphaKey( spep_4 +24, ctgogo, 0 );
setEffAlphaKey( spep_4 + 25, ctgogo, 255 );
setEffAlphaKey( spep_4 + 26, ctgogo, 255 );
setEffAlphaKey( spep_4 + 90, ctgogo, 255 );
setEffAlphaKey( spep_4 + 92, ctgogo, 191 );
setEffAlphaKey( spep_4 + 94, ctgogo, 112 );
setEffAlphaKey( spep_4 + 96, ctgogo, 64 );

setEffRotateKey(  spep_4 +24,  ctgogo,  0);
setEffRotateKey(  spep_4 +96,  ctgogo,  0);

setEffScaleKey(  spep_4 +24,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4 +86,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4 +96,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 96, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen4, 96, 20 );
setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 96, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 96, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 96, shuchusen4, 255 );

--SE
playSe( spep_4 + 12, 1018 );

playSe( spep_4 + 0, 49 );
se_1037 = playSe( spep_4 + 13, 1037 );
setSeVolume( spep_4 + 13, 1037, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 92, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 98;

------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 80, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 80, beam, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 26 -2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen5, 26-2, 20 );
setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5-2 + 26, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.5, 1.2 );
setEffScaleKey( spep_5-2 + 26, shuchusen5, 1.5, 1.2 );

setEffRotateKey( spep_5 + 0, shuchusen5, 0 );
setEffRotateKey( spep_5-2 + 26, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5-2 + 26, shuchusen5, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_5-3 + 30,  10012, 24, 0x100, -1, 0, 58.7, 239.5 );--ズオッ

setEffMoveKey( spep_5-3 + 30, ctzuo, 58.7, 239.5 , 0 );
setEffMoveKey( spep_5-3 + 32, ctzuo, 107, 332.8 , 0 );
setEffMoveKey( spep_5-3 + 34, ctzuo, 111.7, 336.2 , 0 );
setEffMoveKey( spep_5-3 + 36, ctzuo, 125.9, 347.5 , 0 );
setEffMoveKey( spep_5-3 + 38, ctzuo, 130.7, 350.9 , 0 );
setEffMoveKey( spep_5-3 + 40, ctzuo, 144.9, 362.3 , 0 );
setEffMoveKey( spep_5-3 + 42, ctzuo, 149.7, 365.6 , 0 );
setEffMoveKey( spep_5-3 + 44, ctzuo, 163.9, 377 , 0 );
setEffMoveKey( spep_5-3 + 46, ctzuo, 168.7, 380.4 , 0 );
setEffMoveKey( spep_5-3 + 48, ctzuo, 188, 389.2 , 0 );
setEffMoveKey( spep_5-3 + 50, ctzuo, 197.9, 390.1 , 0 );
setEffMoveKey( spep_5-3 + 52, ctzuo, 217.3, 399 , 0 );
setEffMoveKey( spep_5-3 + 54, ctzuo, 227.2, 399.9 , 0 );

setEffScaleKey( spep_5-3 + 30, ctzuo, 1.38, 1.38 );
setEffScaleKey( spep_5-3 + 32, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_5-3 + 54, ctzuo, 2.4, 2.4 );

setEffRotateKey( spep_5-3 + 30, ctzuo, 25 );
setEffRotateKey( spep_5-3 + 54, ctzuo, 25 );

setEffAlphaKey( spep_5-3 + 30, ctzuo, 128 );
setEffAlphaKey( spep_5-3 + 32, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 46, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 48, ctzuo, 198 );
setEffAlphaKey( spep_5-3 + 50, ctzuo, 140 );
setEffAlphaKey( spep_5-3 + 52, ctzuo, 83 );
setEffAlphaKey( spep_5-3 + 54, ctzuo, 26 );

--SE
playSe( spep_5 + 20, 1027 );
playSe( spep_5 + 20, 1021 );
playSe( spep_5 + 56, 1022 );
setSeVolume( spep_5 + 56, 1022, 0 );
setSeVolume( spep_5 + 65, 1022, 0 );
setSeVolume( spep_5 + 66, 1022, 4.94 );
setSeVolume( spep_5 + 67, 1022, 9.89 );
setSeVolume( spep_5 + 68, 1022, 14.83 );
setSeVolume( spep_5 + 69, 1022, 19.78 );
setSeVolume( spep_5 + 70, 1022, 24.72 );
setSeVolume( spep_5 + 71, 1022, 29.67 );
setSeVolume( spep_5 + 72, 1022, 34.61 );
setSeVolume( spep_5 + 73, 1022, 39.56 );
setSeVolume( spep_5 + 74, 1022, 44.5 );
setSeVolume( spep_5 + 75, 1022, 49.44 );
setSeVolume( spep_5 + 76, 1022, 54.39 );
setSeVolume( spep_5 + 77, 1022, 59.33 );
setSeVolume( spep_5 + 78, 1022, 64.28 );
setSeVolume( spep_5 + 79, 1022, 69.22 );
setSeVolume( spep_5 + 80, 1022, 74.17 );
setSeVolume( spep_5 + 81, 1022, 79.11 );
setSeVolume( spep_5 + 82, 1022, 84.06 );
setSeVolume( spep_5 + 83, 1022, 89 );

stopSe( spep_5 + 26, se_1037, 0 );


-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 80;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 240, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 240, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 240, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 240, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 240, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 240, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 240, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 240, finish_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 57, 1, 0 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -558.5, 708.8 , 0 );
setMoveKey( spep_6 + 2, 1, -475.4, 591.8 , 0 );
setMoveKey( spep_6 + 4, 1, -424.6, 519.8 , 0 );
setMoveKey( spep_6 + 6, 1, -383.6, 461.5 , 0 );
setMoveKey( spep_6 + 8, 1, -347.8, 410.5 , 0 );
setMoveKey( spep_6 + 10, 1, -315.4, 364.1 , 0 );
setMoveKey( spep_6 + 12, 1, -285.4, 321.1 , 0 );
setMoveKey( spep_6 + 14, 1, -257.3, 280.7 , 0 );
setMoveKey( spep_6 + 16, 1, -230.5, 242.2 , 0 );
setMoveKey( spep_6 + 18, 1, -205.1, 205.6 , 0 );
setMoveKey( spep_6 + 20, 1, -180.7, 170.5 , 0 );
setMoveKey( spep_6 + 22, 1, -157.3, 136.6 , 0 );
setMoveKey( spep_6 + 24, 1, -134.9, 104.2 , 0 );
setMoveKey( spep_6 + 26, 1, -113.4, 73 , 0 );
setMoveKey( spep_6 + 28, 1, -92.8, 42.9 , 0 );
setMoveKey( spep_6 + 30, 1, -73, 14.2 , 0 );
setMoveKey( spep_6 + 32, 1, -54.2, -13.1 , 0 );
setMoveKey( spep_6 + 34, 1, -36.2, -39.3 , 0 );
setMoveKey( spep_6 + 36, 1, -19.3, -64.2 , 0 );
setMoveKey( spep_6 + 38, 1, -3.3, -87.6 , 0 );
setMoveKey( spep_6 + 40, 1, 11.4, -109.4 , 0 );
setMoveKey( spep_6 + 42, 1, 25, -129.6 , 0 );
setMoveKey( spep_6 + 44, 1, 37.4, -148 , 0 );
setMoveKey( spep_6 + 46, 1, 48.3, -164.5 , 0 );
setMoveKey( spep_6 + 48, 1, 57.7, -179.1 , 0 );
setMoveKey( spep_6 + 50, 1, 67.5, -202.6 , 0 );
setMoveKey( spep_6 + 52, 1, 78.2, -227.5 , 0 );
setMoveKey( spep_6 + 54, 1, 89.6, -253.8 , 0 );
setMoveKey( spep_6 + 56, 1, 101.8, -281.5 , 0 );
setMoveKey( spep_6 + 57, 1, 114.8, -310.5 , 0 );

setScaleKey( spep_6 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 2, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_6 + 6, 1, 0.84, 0.84 );
setScaleKey( spep_6 + 8, 1, 0.87, 0.87 );
setScaleKey( spep_6 + 10, 1, 0.91, 0.91 );
setScaleKey( spep_6 + 12, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 14, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 16, 1, 1, 1 );
setScaleKey( spep_6 + 18, 1, 1.03, 1.03 );
setScaleKey( spep_6 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_6 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_6 + 26, 1, 1.15, 1.15 );
setScaleKey( spep_6 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_6 + 30, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 32, 1, 1.23, 1.23 );
setScaleKey( spep_6 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_6 + 36, 1, 1.28, 1.28 );
setScaleKey( spep_6 + 38, 1, 1.31, 1.31 );
setScaleKey( spep_6 + 40, 1, 1.33, 1.33 );
setScaleKey( spep_6 + 42, 1, 1.36, 1.36 );
setScaleKey( spep_6 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_6 + 46, 1, 1.4, 1.4 );
setScaleKey( spep_6 + 48, 1, 1.43, 1.43 );
setScaleKey( spep_6 + 50, 1, 1.55, 1.55 );
setScaleKey( spep_6 + 52, 1, 1.68, 1.68 );
setScaleKey( spep_6 + 54, 1, 1.8, 1.8 );
setScaleKey( spep_6 + 56, 1, 1.93, 1.93 );
setScaleKey( spep_6 + 57, 1, 2.06, 2.06 );

setRotateKey( spep_6 + 0, 1, 5.8 );
setRotateKey( spep_6 + 57, 1, 5.8 );

--文字エントリー
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 58-1, 0x100, -1, 0, -70.7, 404.1 );
setEffShake( spep_6 + 0, ctzudodo, 58-1, 10 );
setEffMoveKey( spep_6 + 0, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 4, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 6, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 8, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 10, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 12, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 14, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 16, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 18, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 20, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 22, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 24, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 26, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 28, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 30, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 32, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 34, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 36, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 38, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 40, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 42, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 44, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 46, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 48, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 50, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 52, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 54, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 56, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 57, ctzudodo, -68.5, 387 , 0 );

setEffScaleKey( spep_6 + 0, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_6 + 57, ctzudodo, 1.9, 1.9 );

setEffRotateKey( spep_6 + 0, ctzudodo, -3.7 );
setEffRotateKey( spep_6 + 57, ctzudodo, -3.7 );

setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 + 57, ctzudodo, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_6-3 + 60,  906, 180, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6-3 + 60, shuchusen6, 180, 20 );
setEffMoveKey( spep_6-3 + 60, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 240, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 60, shuchusen6, 1, 1 );
setEffScaleKey( spep_6-3 + 240, shuchusen6, 1, 1 );

setEffRotateKey( spep_6-3 + 60, shuchusen6, 180 );
setEffRotateKey( spep_6-3 + 240, shuchusen6, 180 );

setEffAlphaKey( spep_6-3 + 60, shuchusen6, 255 );
setEffAlphaKey( spep_6-3 + 240, shuchusen6, 255 );

--白フェード
entryFade( spep_6 + 52, 4, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_6 + 62, 1023 );
playSe( spep_6 + 65, 1159 );
setSeVolume( spep_6 + 65, 1159, 56 );

--終わり
dealDamage( spep_6 + 90 );
endPhase( spep_6 + 230 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_0 + 76, tossin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin, -1.0, 1.0 );
setEffScaleKey( spep_0 + 76, tossin, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 76, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 76, tossin, 255 );
setEffAlphaKey( spep_0 + 77, tossin, 0 );
setEffAlphaKey( spep_0 + 78, tossin, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 0,  906, 76, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 0, shuchusen1, 76, 20 );
setEffMoveKey( spep_0 + 0,shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 76,shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 0,shuchusen1, 1, 1 );
setEffScaleKey( spep_0 + 76,shuchusen1, 1, 1 );

setEffRotateKey( spep_0 + 0,shuchusen1, 180 );
setEffRotateKey( spep_0 + 76,shuchusen1, 180 );

setEffAlphaKey( spep_0 + 0,shuchusen1, 255 );
setEffAlphaKey( spep_0 + 74,shuchusen1, 255 );
setEffAlphaKey( spep_0 + 75,shuchusen1, 255 );
setEffAlphaKey( spep_0 + 76,shuchusen1, 0 );

--SE
SE0=playSe( spep_0 + 0, 9 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
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
--SE
playSe( spep_0 + 40, 1072 );
se_1183 = playSe( spep_0 + 40, 1183 );
setSeVolume( spep_0 + 40, 1183, 0 );

setSeVolume( spep_0 + 48, 1183, 0 );
setSeVolume( spep_0 + 49, 1183, 3.82 );
setSeVolume( spep_0 + 50, 1183, 7.64 );
setSeVolume( spep_0 + 51, 1183, 11.45 );
setSeVolume( spep_0 + 52, 1183, 15.27 );
setSeVolume( spep_0 + 53, 1183, 19.09 );
setSeVolume( spep_0 + 54, 1183, 22.91 );
setSeVolume( spep_0 + 55, 1183, 26.73 );
setSeVolume( spep_0 + 56, 1183, 30.55 );
setSeVolume( spep_0 + 57, 1183, 34.36 );
setSeVolume( spep_0 + 58, 1183, 38.18 );
setSeVolume( spep_0 + 59, 1183, 42.00 );
setSeVolume( spep_0 + 60, 1183, 45.82 );
setSeVolume( spep_0 + 61, 1183, 49.64 );
setSeVolume( spep_0 + 62, 1183, 53.45 );
setSeVolume( spep_0 + 63, 1183, 57.27 );
setSeVolume( spep_0 + 64, 1183, 61.09 );
setSeVolume( spep_0 + 65, 1183, 64.91 );
setSeVolume( spep_0 + 66, 1183, 68.73 );
setSeVolume( spep_0 + 67, 1183, 72.55 );
setSeVolume( spep_0 + 68, 1183, 76.36 );
setSeVolume( spep_0 + 69, 1183, 80.18 );
setSeVolume( spep_0 + 70, 1183, 84.00 );
setSeVolume( spep_0 + 71, 1183, 87.82 );
setSeVolume( spep_0 + 72, 1183, 91.64 );
setSeVolume( spep_0 + 73, 1183, 95.45 );
setSeVolume( spep_0 + 74, 1183, 99.27 );
setSeVolume( spep_0 + 75, 1183, 103.09 );
setSeVolume( spep_0 + 76, 1183, 106.91 );
setSeVolume( spep_0 + 77, 1183, 110.73 );
setSeVolume( spep_0 + 78, 1183, 114.55 );
setSeVolume( spep_0 + 79, 1183, 118.36 );
setSeVolume( spep_0 + 80, 1183, 122.18 );
setSeVolume( spep_0 + 81, 1183, 126 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 76;

------------------------------------------------------
-- 顔アップ
------------------------------------------------------
-- ** エフェクト等 ** --
face = entryEffect( spep_1 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, face, 0, 0, 0 );
setEffMoveKey( spep_1 + 50, face, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, face, 1.0, 1.0 );
setEffScaleKey( spep_1 + 50, face, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, face, 0 );
setEffRotateKey( spep_1 + 50, face, 0 );
setEffAlphaKey( spep_1 + 0, face, 255 );
setEffAlphaKey( spep_1 + 50, face, 255 );

shuchusen2 = entryEffectLife( spep_1 + 0,  906, 48, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1 + 0, shuchusen2, 48, 20 );
setEffMoveKey( spep_1 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen2, 1, 1 );
setEffScaleKey( spep_1 + 48, shuchusen2, 1, 1 );

setEffRotateKey( spep_1 + 0, shuchusen2, 180 );
setEffRotateKey( spep_1 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_1 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_1 + 48, shuchusen2, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
playSe( spep_1 + 3, 8 );
playSe( spep_1 + 3, 1182 );
se_1116 = playSe( spep_1 + 3, 1116 );
playSe( spep_1 + 46, 1003 );
setSeVolume( spep_1 + 46, 1003, 63 );

stopSe( spep_1 + 40, se_1183, 42 );
stopSe( spep_1 + 34, se_1116, 25 );

--白フェード
entryFade( spep_1 + 42, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 50;

------------------------------------------------------
-- 頭突き
------------------------------------------------------
-- ** エフェクト等 ** --
zutuki_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, zutuki_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, zutuki_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, zutuki_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, zutuki_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zutuki_f, 0 );
setEffRotateKey( spep_2 + 90, zutuki_f, 0 );
setEffAlphaKey( spep_2 + 0, zutuki_f, 255 );
setEffAlphaKey( spep_2 + 90, zutuki_f, 255 );

-- ** エフェクト等 ** --
zutuki_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, zutuki_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, zutuki_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, zutuki_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, zutuki_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, zutuki_b, 0 );
setEffRotateKey( spep_2 + 90, zutuki_b, 0 );
setEffAlphaKey( spep_2 + 0, zutuki_b, 255 );
setEffAlphaKey( spep_2 + 90, zutuki_b, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 28,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 28, shuchusen3, 8, 18 );
setEffMoveKey( spep_2-3 + 28, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 36, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 28, shuchusen3, 1, 1 );
setEffScaleKey( spep_2-3 + 36, shuchusen3, 1, 1 );

setEffRotateKey( spep_2-3 + 28, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 36, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 28, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 30, shuchusen3, 228 );
setEffAlphaKey( spep_2-3 + 32, shuchusen3, 200 );
setEffAlphaKey( spep_2-3 + 34, shuchusen3, 173 );
setEffAlphaKey( spep_2-3 + 36, shuchusen3, 145 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 28,  10020, 18, 0x100, -1, 0, -87.8, 334.2 );--バキッ
setEffShake( spep_2-3 + 28, ctbaki, 18, 10 );
setEffMoveKey( spep_2-3 + 28, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_2-3 + 30, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbaki, -100.1, 342 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_2-3 + 28, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2-3 + 30, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_2-3 + 32, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 34, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_2-3 + 36, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_2-3 + 38, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2-3 + 40, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_2-3 + 42, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_2-3 + 44, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_2-3 + 46, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_2-3 + 28, ctbaki, -12.4 );
setEffRotateKey( spep_2-3 + 46, ctbaki, -12.4 );

setEffAlphaKey( spep_2-3 + 28, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 40, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 42, ctbaki, 174 );
setEffAlphaKey( spep_2-3 + 44, ctbaki, 94 );
setEffAlphaKey( spep_2-3 + 46, ctbaki, 13 );

--敵の動き
setDisp( spep_2-3 +4, 1, 1 );
setDisp( spep_2-3 + 42, 1, 0 );
changeAnime( spep_2-3 + 4, 1, 118 );
changeAnime( spep_2-3 + 28, 1, 107 );

setMoveKey( spep_2-3 + 4, 1, 776.5, 148.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 601.9, 107 , 0 );
setMoveKey( spep_2-3 + 8, 1, 492.3, 81.2 , 0 );
setMoveKey( spep_2-3 + 10, 1, 413.2, 62.6 , 0 );
setMoveKey( spep_2-3 + 12, 1, 352.3, 48.2 , 0 );
setMoveKey( spep_2-3 + 14, 1, 303.7, 36.8 , 0 );
setMoveKey( spep_2-3 + 16, 1, 263.9, 27.4 , 0 );
setMoveKey( spep_2-3 + 18, 1, 230.9, 19.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, 202.9, 13.1 , 0 );
setMoveKey( spep_2-3 + 22, 1, 179, 7.4 , 0 );
setMoveKey( spep_2-3 + 24, 1, 158.3, 2.6 , 0 );
setMoveKey( spep_2-3 + 26, 1, 140.2, -1.7 , 0 );
setMoveKey( spep_2-3 + 27, 1, 140.2, -1.7 , 0 );

setMoveKey( spep_2-3 + 28, 1, 169.5, -21.4 , 0 );
setMoveKey( spep_2-3 + 30, 1, 452.6, 89.7 , 0 );
setMoveKey( spep_2-3 + 32, 1, 568.2, 77.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, 485.9, 102.6 , 0 );
setMoveKey( spep_2-3 + 36, 1, 679.3, 137.7 , 0 );
setMoveKey( spep_2-3 + 38, 1, 862.1, 168.7 , 0 );
setMoveKey( spep_2-3 + 40, 1, 1053, 199.7 , 0 );
setMoveKey( spep_2-3 + 42, 1, 1235.9, 226.6 , 0 );

setScaleKey( spep_2-3 + 4, 1, 3, 3 );
setScaleKey( spep_2-3 + 6, 1, 2.81, 2.81 );
setScaleKey( spep_2-3 + 8, 1, 2.69, 2.69 );
setScaleKey( spep_2-3 + 10, 1, 2.6, 2.6 );
setScaleKey( spep_2-3 + 12, 1, 2.53, 2.53 );
setScaleKey( spep_2-3 + 14, 1, 2.48, 2.48 );
setScaleKey( spep_2-3 + 16, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_2-3 + 20, 1, 2.37, 2.37 );
setScaleKey( spep_2-3 + 22, 1, 2.34, 2.34 );
setScaleKey( spep_2-3 + 24, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 26, 1, 2.3, 2.3 );
setScaleKey( spep_2-3 + 27, 1, 2.3, 2.3 );

setScaleKey( spep_2-3 + 28, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 30, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 32, 1, 1.53, 1.53 );
setScaleKey( spep_2-3 + 34, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 36, 1, 1.7, 1.7 );
setScaleKey( spep_2-3 + 38, 1, 1.96, 1.96 );
setScaleKey( spep_2-3 + 40, 1, 2.23, 2.23 );
setScaleKey( spep_2-3 + 42, 1, 2.5, 2.5 );

setRotateKey( spep_2-3 + 4, 1, 0 );
setRotateKey( spep_2-3 + 27, 1, 0 );

setRotateKey( spep_2-3 + 28, 1, -55.2 );
setRotateKey( spep_2-3 + 30, 1, -54.3 );
setRotateKey( spep_2-3 + 32, 1, -53.5 );
setRotateKey( spep_2-3 + 34, 1, -53.5 );
setRotateKey( spep_2-3 + 36, 1, -52.7 );
setRotateKey( spep_2-3 + 38, 1, -51.8 );
setRotateKey( spep_2-3 + 40, 1, -51 );
setRotateKey( spep_2-3 + 42, 1, -50.1 );

--SE
playSe( spep_2 + 19, 1004 );
playSe( spep_2 + 26, 1009 );
playSe( spep_2 + 28, 1110 );

--白フェード
entryFade( spep_2 + 82, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 90;

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
entryFade( spep_3 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- 気タメ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_4 + 98, tame, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 98, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 98, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_4 + 12  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_4 + 12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_4 +24, 190006, 72, 0x100, -1, 0, -100, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_4 +24,  ctgogo,  -100,  510);
setEffMoveKey(  spep_4 +96,  ctgogo,  -100,  510);

setEffAlphaKey( spep_4 +24, ctgogo, 0 );
setEffAlphaKey( spep_4 + 25, ctgogo, 255 );
setEffAlphaKey( spep_4 + 26, ctgogo, 255 );
setEffAlphaKey( spep_4 + 90, ctgogo, 255 );
setEffAlphaKey( spep_4 + 92, ctgogo, 191 );
setEffAlphaKey( spep_4 + 94, ctgogo, 112 );
setEffAlphaKey( spep_4 + 96, ctgogo, 64 );

setEffRotateKey(  spep_4 +24,  ctgogo,  0);
setEffRotateKey(  spep_4 +96,  ctgogo,  0);

setEffScaleKey(  spep_4 +24,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4 +86,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4 +96,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen4 = entryEffectLife( spep_4 + 0,  906, 96, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 0, shuchusen4, 96, 20 );
setEffMoveKey( spep_4 + 0, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 96, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 96, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 0, shuchusen4, 0 );
setEffRotateKey( spep_4 + 96, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 96, shuchusen4, 255 );

--SE
playSe( spep_4 + 12, 1018 );

playSe( spep_4 + 0, 49 );
se_1037 = playSe( spep_4 + 13, 1037 );
setSeVolume( spep_4 + 13, 1037, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 92, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 98;

------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 80, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 80, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 80, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 80, beam, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 26 -2, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen5, 26-2, 20 );
setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5-2 + 26, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1.5, 1.2 );
setEffScaleKey( spep_5-2 + 26, shuchusen5, 1.5, 1.2 );

setEffRotateKey( spep_5 + 0, shuchusen5, 0 );
setEffRotateKey( spep_5-2 + 26, shuchusen5, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5-2 + 26, shuchusen5, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_5-3 + 30,  10012, 24, 0x100, -1, 0, 58.7, 239.5 );--ズオッ

setEffMoveKey( spep_5-3 + 30, ctzuo, 58.7, 239.5 , 0 );
setEffMoveKey( spep_5-3 + 32, ctzuo, 107, 332.8 , 0 );
setEffMoveKey( spep_5-3 + 34, ctzuo, 111.7, 336.2 , 0 );
setEffMoveKey( spep_5-3 + 36, ctzuo, 125.9, 347.5 , 0 );
setEffMoveKey( spep_5-3 + 38, ctzuo, 130.7, 350.9 , 0 );
setEffMoveKey( spep_5-3 + 40, ctzuo, 144.9, 362.3 , 0 );
setEffMoveKey( spep_5-3 + 42, ctzuo, 149.7, 365.6 , 0 );
setEffMoveKey( spep_5-3 + 44, ctzuo, 163.9, 377 , 0 );
setEffMoveKey( spep_5-3 + 46, ctzuo, 168.7, 380.4 , 0 );
setEffMoveKey( spep_5-3 + 48, ctzuo, 188, 389.2 , 0 );
setEffMoveKey( spep_5-3 + 50, ctzuo, 197.9, 390.1 , 0 );
setEffMoveKey( spep_5-3 + 52, ctzuo, 217.3, 399 , 0 );
setEffMoveKey( spep_5-3 + 54, ctzuo, 227.2, 399.9 , 0 );

setEffScaleKey( spep_5-3 + 30, ctzuo, 1.38, 1.38 );
setEffScaleKey( spep_5-3 + 32, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_5-3 + 54, ctzuo, 2.4, 2.4 );

setEffRotateKey( spep_5-3 + 30, ctzuo, 25 );
setEffRotateKey( spep_5-3 + 54, ctzuo, 25 );

setEffAlphaKey( spep_5-3 + 30, ctzuo, 128 );
setEffAlphaKey( spep_5-3 + 32, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 46, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 48, ctzuo, 198 );
setEffAlphaKey( spep_5-3 + 50, ctzuo, 140 );
setEffAlphaKey( spep_5-3 + 52, ctzuo, 83 );
setEffAlphaKey( spep_5-3 + 54, ctzuo, 26 );

--SE
playSe( spep_5 + 20, 1027 );
playSe( spep_5 + 20, 1021 );
playSe( spep_5 + 56, 1022 );
setSeVolume( spep_5 + 56, 1022, 0 );
setSeVolume( spep_5 + 65, 1022, 0 );
setSeVolume( spep_5 + 66, 1022, 4.94 );
setSeVolume( spep_5 + 67, 1022, 9.89 );
setSeVolume( spep_5 + 68, 1022, 14.83 );
setSeVolume( spep_5 + 69, 1022, 19.78 );
setSeVolume( spep_5 + 70, 1022, 24.72 );
setSeVolume( spep_5 + 71, 1022, 29.67 );
setSeVolume( spep_5 + 72, 1022, 34.61 );
setSeVolume( spep_5 + 73, 1022, 39.56 );
setSeVolume( spep_5 + 74, 1022, 44.5 );
setSeVolume( spep_5 + 75, 1022, 49.44 );
setSeVolume( spep_5 + 76, 1022, 54.39 );
setSeVolume( spep_5 + 77, 1022, 59.33 );
setSeVolume( spep_5 + 78, 1022, 64.28 );
setSeVolume( spep_5 + 79, 1022, 69.22 );
setSeVolume( spep_5 + 80, 1022, 74.17 );
setSeVolume( spep_5 + 81, 1022, 79.11 );
setSeVolume( spep_5 + 82, 1022, 84.06 );
setSeVolume( spep_5 + 83, 1022, 89 );

stopSe( spep_5 + 26, se_1037, 0 );


-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 80;

------------------------------------------------------
-- 突進
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_6 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 240, finish_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 240, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_f, 0 );
setEffRotateKey( spep_6 + 240, finish_f, 0 );
setEffAlphaKey( spep_6 + 0, finish_f, 255 );
setEffAlphaKey( spep_6 + 240, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_6 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 240, finish_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 240, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_b, 0 );
setEffRotateKey( spep_6 + 240, finish_b, 0 );
setEffAlphaKey( spep_6 + 0, finish_b, 255 );
setEffAlphaKey( spep_6 + 240, finish_b, 255 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 57, 1, 0 );
changeAnime( spep_6 + 0, 1, 107 );

setMoveKey( spep_6 + 0, 1, -558.5, 708.8 , 0 );
setMoveKey( spep_6 + 2, 1, -475.4, 591.8 , 0 );
setMoveKey( spep_6 + 4, 1, -424.6, 519.8 , 0 );
setMoveKey( spep_6 + 6, 1, -383.6, 461.5 , 0 );
setMoveKey( spep_6 + 8, 1, -347.8, 410.5 , 0 );
setMoveKey( spep_6 + 10, 1, -315.4, 364.1 , 0 );
setMoveKey( spep_6 + 12, 1, -285.4, 321.1 , 0 );
setMoveKey( spep_6 + 14, 1, -257.3, 280.7 , 0 );
setMoveKey( spep_6 + 16, 1, -230.5, 242.2 , 0 );
setMoveKey( spep_6 + 18, 1, -205.1, 205.6 , 0 );
setMoveKey( spep_6 + 20, 1, -180.7, 170.5 , 0 );
setMoveKey( spep_6 + 22, 1, -157.3, 136.6 , 0 );
setMoveKey( spep_6 + 24, 1, -134.9, 104.2 , 0 );
setMoveKey( spep_6 + 26, 1, -113.4, 73 , 0 );
setMoveKey( spep_6 + 28, 1, -92.8, 42.9 , 0 );
setMoveKey( spep_6 + 30, 1, -73, 14.2 , 0 );
setMoveKey( spep_6 + 32, 1, -54.2, -13.1 , 0 );
setMoveKey( spep_6 + 34, 1, -36.2, -39.3 , 0 );
setMoveKey( spep_6 + 36, 1, -19.3, -64.2 , 0 );
setMoveKey( spep_6 + 38, 1, -3.3, -87.6 , 0 );
setMoveKey( spep_6 + 40, 1, 11.4, -109.4 , 0 );
setMoveKey( spep_6 + 42, 1, 25, -129.6 , 0 );
setMoveKey( spep_6 + 44, 1, 37.4, -148 , 0 );
setMoveKey( spep_6 + 46, 1, 48.3, -164.5 , 0 );
setMoveKey( spep_6 + 48, 1, 57.7, -179.1 , 0 );
setMoveKey( spep_6 + 50, 1, 67.5, -202.6 , 0 );
setMoveKey( spep_6 + 52, 1, 78.2, -227.5 , 0 );
setMoveKey( spep_6 + 54, 1, 89.6, -253.8 , 0 );
setMoveKey( spep_6 + 56, 1, 101.8, -281.5 , 0 );
setMoveKey( spep_6 + 57, 1, 114.8, -310.5 , 0 );

setScaleKey( spep_6 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 2, 1, 0.76, 0.76 );
setScaleKey( spep_6 + 4, 1, 0.8, 0.8 );
setScaleKey( spep_6 + 6, 1, 0.84, 0.84 );
setScaleKey( spep_6 + 8, 1, 0.87, 0.87 );
setScaleKey( spep_6 + 10, 1, 0.91, 0.91 );
setScaleKey( spep_6 + 12, 1, 0.94, 0.94 );
setScaleKey( spep_6 + 14, 1, 0.97, 0.97 );
setScaleKey( spep_6 + 16, 1, 1, 1 );
setScaleKey( spep_6 + 18, 1, 1.03, 1.03 );
setScaleKey( spep_6 + 20, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 22, 1, 1.09, 1.09 );
setScaleKey( spep_6 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_6 + 26, 1, 1.15, 1.15 );
setScaleKey( spep_6 + 28, 1, 1.18, 1.18 );
setScaleKey( spep_6 + 30, 1, 1.2, 1.2 );
setScaleKey( spep_6 + 32, 1, 1.23, 1.23 );
setScaleKey( spep_6 + 34, 1, 1.26, 1.26 );
setScaleKey( spep_6 + 36, 1, 1.28, 1.28 );
setScaleKey( spep_6 + 38, 1, 1.31, 1.31 );
setScaleKey( spep_6 + 40, 1, 1.33, 1.33 );
setScaleKey( spep_6 + 42, 1, 1.36, 1.36 );
setScaleKey( spep_6 + 44, 1, 1.38, 1.38 );
setScaleKey( spep_6 + 46, 1, 1.4, 1.4 );
setScaleKey( spep_6 + 48, 1, 1.43, 1.43 );
setScaleKey( spep_6 + 50, 1, 1.55, 1.55 );
setScaleKey( spep_6 + 52, 1, 1.68, 1.68 );
setScaleKey( spep_6 + 54, 1, 1.8, 1.8 );
setScaleKey( spep_6 + 56, 1, 1.93, 1.93 );
setScaleKey( spep_6 + 57, 1, 2.06, 2.06 );

setRotateKey( spep_6 + 0, 1, 5.8 );
setRotateKey( spep_6 + 57, 1, 5.8 );

--文字エントリー
ctzudodo = entryEffectLife( spep_6 + 0,  10014, 58-1, 0x100, -1, 0, -70.7, 404.1 );
setEffShake( spep_6 + 0, ctzudodo, 58-1, 10 );
setEffMoveKey( spep_6 + 0, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 2, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 4, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 6, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 8, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 10, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 12, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 14, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 16, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 18, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 20, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 22, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 24, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 26, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 28, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 30, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 32, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 34, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 36, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 38, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 40, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 42, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 44, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 46, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 48, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 50, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 52, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 54, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_6 + 56, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_6 + 57, ctzudodo, -68.5, 387 , 0 );

setEffScaleKey( spep_6 + 0, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_6 + 57, ctzudodo, 1.9, 1.9 );

setEffRotateKey( spep_6 + 0, ctzudodo, -73.7 );
setEffRotateKey( spep_6 + 57, ctzudodo, -73.7 );

setEffAlphaKey( spep_6 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_6 + 57, ctzudodo, 255 );

--集中線
shuchusen6 = entryEffectLife( spep_6-3 + 60,  906, 180, 0x100, -1, 0, 0, 0 );
setEffShake( spep_6-3 + 60, shuchusen6, 180, 20 );
setEffMoveKey( spep_6-3 + 60, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_6-3 + 240, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_6-3 + 60, shuchusen6, 1, 1 );
setEffScaleKey( spep_6-3 + 240, shuchusen6, 1, 1 );

setEffRotateKey( spep_6-3 + 60, shuchusen6, 180 );
setEffRotateKey( spep_6-3 + 240, shuchusen6, 180 );

setEffAlphaKey( spep_6-3 + 60, shuchusen6, 255 );
setEffAlphaKey( spep_6-3 + 240, shuchusen6, 255 );

--白フェード
entryFade( spep_6 + 52, 4, 10, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_6 + 62, 1023 );
playSe( spep_6 + 65, 1159 );
setSeVolume( spep_6 + 65, 1159, 56 );

--終わり
dealDamage( spep_6 + 90 );
endPhase( spep_6 + 230 );
end