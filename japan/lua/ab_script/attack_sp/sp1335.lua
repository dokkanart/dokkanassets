--4018040:人造人間16号_トリニティデストロイド
--sp_effect_a7_00030

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
SP_01=	154127	;--	手前突進
SP_02=	154128	;--	17号18号パンチキック・手前
SP_03=	154129	;--	17号18号パンチキック・奥
SP_04=	154130	;--	16号攻撃→床落ち・手前
SP_05=	154131	;--	16号攻撃→床落ち・奥
SP_06=	154132	;--	手前飛行
SP_07=	154133	;--	気弾発射
SP_08=	154134	;--	爆発

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
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 66, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 66, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 66, rush, 255 );
setEffAlphaKey( spep_0 + 67, rush, 0 );
setEffAlphaKey( spep_0 + 68, rush, 0 );

--白フェード
entryFade( spep_0 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 58, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 9 );  --迫る

--次の準備
spep_1 = spep_0 +66;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 17号18号パンチキック・手前
------------------------------------------------------

-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, panting_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 120, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 120, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, panting_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 120, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 120, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 120, panting_b, 255 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 118, 1, 0 );

changeAnime( spep_2  + 0, 1, 100 );
changeAnime( spep_2 -3 + 44, 1, 108 );
changeAnime( spep_2 -3 + 78, 1, 106 );

setMoveKey( spep_2  + 0, 1, 1.5, 10 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 2.9, 12.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 1.6, 11.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 3.2, 14.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 1.9, 13.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 3.3, 16.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 2, 15.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 3.4, 17.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 2.1, 16.9 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 3.6, 19.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 2.3, 18.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 3.7, 21.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 2.4, 20.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 4, 23.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 2.7, 22.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 4.1, 24.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 2.8, 23.8 , 0 );

a4 = 0.25;
setScaleKey( spep_2  + 0, 1, 0.4 +a4, 0.4 +a4 );
--setScaleKey( spep_2 -3 + 2, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 4, 1, 0.48 +a4, 0.48 +a4 );
setScaleKey( spep_2 -3 + 6, 1, 0.52 +a4, 0.52 +a4 );
setScaleKey( spep_2 -3 + 8, 1, 0.56 +a4, 0.56 +a4 );
setScaleKey( spep_2 -3 + 10, 1, 0.6 +a4, 0.6 +a4 );
setScaleKey( spep_2 -3 + 12, 1, 0.63 +a4, 0.63 +a4 );
setScaleKey( spep_2 -3 + 14, 1, 0.67 +a4, 0.67 +a4 );
setScaleKey( spep_2 -3 + 16, 1, 0.71 +a4, 0.71 +a4 );
setScaleKey( spep_2 -3 + 18, 1, 0.75 +a4, 0.75 +a4 );
setScaleKey( spep_2 -3 + 20, 1, 0.79 +a4, 0.79 +a4 );
setScaleKey( spep_2 -3 + 22, 1, 0.83 +a4, 0.83 +a4 );
setScaleKey( spep_2 -3 + 24, 1, 0.86 +a4, 0.86 +a4 );
setScaleKey( spep_2 -3 + 26, 1, 0.9 +a4, 0.9 +a4 );
setScaleKey( spep_2 -3 + 28, 1, 0.94 +a4, 0.94 +a4 );
setScaleKey( spep_2 -3 + 30, 1, 0.98 +a4, 0.98 +a4 );
setScaleKey( spep_2 -3 + 32, 1, 1.02 +a4, 1.02 +a4 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2  + 30, 1, 0 );

-- ** 音 ** --
SE0 = playSe( spep_2 + 0, 8 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の座標
    setMoveKey( SP_dodge , 1, 2.8, 23.8 , 0 );
    setScaleKey( SP_dodge , 1, 1.02, 1.02 );
    setRotateKey( SP_dodge  , 1, 0 );

    setMoveKey( SP_dodge+9 , 1, 2.8, 23.8 , 0 );
    setScaleKey( SP_dodge+9 , 1, 1.02, 1.02 );
    setRotateKey( SP_dodge+9  , 1, 0 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------
setMoveKey( spep_2 -3 + 34, 1, 4.2, 26.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 2.9, 25.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 4.4, 28.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 5.8, 30.9 , 0 );
setMoveKey( spep_2 -3 + 43, 1, 4.5, 30 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 55.3, 84.4 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 67.7, 109.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 58, 106.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 77.3, 110.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 58.4, 98.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 50.3, 117.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 22.9, 112 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 20.6, 121.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 4.2, 117.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 18.2, 121.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 13, 117.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 18.8, 125 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 16.1, 123 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 16.5, 125 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 16.8, 126.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 14, 124.9 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 14.4, 126.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -17.8, 101 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -26.4, 104.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, -34.1, 79.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, -47.1, 92.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -35.4, 70.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -23.9, 94.6 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -29.2, 96.2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -14.5, 106.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -17.4, 95.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -9.9, 111.7 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -125, -42.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -216.1, -187.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -319.9, -343.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -416.1, -476.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -518.9, -625.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -605.7, -751.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -697.7, -884.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -787.6, -1014.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -875.4, -1141.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -961.1, -1265.2 , 0 );
setMoveKey( spep_2  + 118, 1, -1044.8, -1386.1 , 0 );

setScaleKey( spep_2 -3 + 34, 1, 1.06 +a4, 1.06 +a4 );
setScaleKey( spep_2 -3 + 36, 1, 1.09 +a4, 1.09 +a4 );
setScaleKey( spep_2 -3 + 38, 1, 1.13 +a4, 1.13 +a4 );
setScaleKey( spep_2 -3 + 40, 1, 1.17 +a4, 1.17 +a4 );
setScaleKey( spep_2 -3 + 43, 1, 1.21 +a4, 1.21 +a4 );
setScaleKey( spep_2 -3 + 44, 1, 1.52 +a4, 1.52 +a4 );
setScaleKey( spep_2 -3 + 46, 1, 1.45 +a4, 1.45 +a4 );
setScaleKey( spep_2 -3 + 48, 1, 1.37 +a4, 1.37 +a4 );
setScaleKey( spep_2 -3 + 50, 1, 1.29 +a4, 1.29 +a4 );
setScaleKey( spep_2 -3 + 52, 1, 1.31 +a4, 1.31 +a4 );
setScaleKey( spep_2 -3 + 54, 1, 1.33 +a4, 1.33 +a4 );
setScaleKey( spep_2 -3 + 56, 1, 1.35 +a4, 1.35 +a4 );
setScaleKey( spep_2 -3 + 58, 1, 1.37 +a4, 1.37 +a4 );
setScaleKey( spep_2 -3 + 60, 1, 1.37 +a4, 1.37 +a4 );
setScaleKey( spep_2 -3 + 62, 1, 1.36 +a4, 1.36 +a4 );
setScaleKey( spep_2 -3 + 77, 1, 1.36 +a4, 1.36 +a4 );
setScaleKey( spep_2 -3 + 78, 1, 1.41 +a4, 1.41 +a4 );
setScaleKey( spep_2 -3 + 80, 1, 1.63 +a4, 1.63 +a4 );
setScaleKey( spep_2 -3 + 82, 1, 1.58 +a4, 1.58 +a4 );
setScaleKey( spep_2 -3 + 84, 1, 1.54 +a4, 1.54 +a4 );
setScaleKey( spep_2 -3 + 86, 1, 1.49 +a4, 1.49 +a4 );
setScaleKey( spep_2 -3 + 88, 1, 1.45 +a4, 1.45 +a4 );
setScaleKey( spep_2 -3 + 90, 1, 1.4 +a4, 1.4 +a4 );
setScaleKey( spep_2 -3 + 92, 1, 1.39 +a4, 1.39 +a4 );
setScaleKey( spep_2 -3 + 94, 1, 1.38 +a4, 1.38 +a4 );
setScaleKey( spep_2 -3 + 96, 1, 1.36 +a4, 1.36 +a4 );
setScaleKey( spep_2 -3 + 98, 1, 1.52 +a4, 1.52 +a4 );
setScaleKey( spep_2 -3 + 100, 1, 1.66 +a4, 1.66 +a4 );
setScaleKey( spep_2 -3 + 102, 1, 1.81 +a4, 1.81 +a4 );
setScaleKey( spep_2 -3 + 104, 1, 1.95 +a4, 1.95 +a4 );
setScaleKey( spep_2 -3 + 106, 1, 2.09 +a4, 2.09 +a4 );
setScaleKey( spep_2 -3 + 108, 1, 2.22 +a4, 2.22 +a4 );
setScaleKey( spep_2 -3 + 110, 1, 2.36 +a4, 2.36 +a4 );
setScaleKey( spep_2 -3 + 112, 1, 2.49 +a4, 2.49 +a4 );
setScaleKey( spep_2 -3 + 114, 1, 2.6 +a4, 2.6 +a4 );
setScaleKey( spep_2 -3 + 116, 1, 2.73 +a4, 2.73 +a4 );
setScaleKey( spep_2  + 118, 1, 2.85 +a4, 2.85 +a4 );

setRotateKey( spep_2 -3 + 43, 1, 0 );
setRotateKey( spep_2 -3 + 44, 1, -10.7 );
setRotateKey( spep_2 -3 + 46, 1, -10.7 );
setRotateKey( spep_2 -3 + 48, 1, -10.6 );
setRotateKey( spep_2 -3 + 62, 1, -10.6 );
setRotateKey( spep_2 -3 + 64, 1, -10.7 );
setRotateKey( spep_2 -3 + 77, 1, -10.7 );
setRotateKey( spep_2 -3 + 78, 1, -85 );
setRotateKey( spep_2 -3 + 80, 1, -85.9 );
setRotateKey( spep_2 -3 + 82, 1, -86.8 );
setRotateKey( spep_2 -3 + 84, 1, -87.8 );
setRotateKey( spep_2 -3 + 86, 1, -88.7 );
setRotateKey( spep_2 -3 + 88, 1, -88.9 );
setRotateKey( spep_2 -3 + 90, 1, -89.1 );
setRotateKey( spep_2 -3 + 92, 1, -89.3 );
setRotateKey( spep_2 -3 + 94, 1, -89.5 );
setRotateKey( spep_2 -3 + 96, 1, -89.7 );
setRotateKey( spep_2 -3 + 98, 1, -94.9 );
setRotateKey( spep_2 -3 + 100, 1, -100 );
setRotateKey( spep_2 -3 + 102, 1, -105.2 );
setRotateKey( spep_2 -3 + 104, 1, -110.4 );
setRotateKey( spep_2 -3 + 106, 1, -115.6 );
setRotateKey( spep_2 -3 + 108, 1, -120.7 );
setRotateKey( spep_2 -3 + 110, 1, -125.9 );
setRotateKey( spep_2 -3 + 112, 1, -131.1 );
setRotateKey( spep_2 -3 + 114, 1, -136.3 );
setRotateKey( spep_2 -3 + 116, 1, -141.4 );
setRotateKey( spep_2  + 118, 1, -146.6 );

--文字エントリー
ctzun = entryEffectLife( spep_2 -3 + 44,  10016, 16, 0x100, -1, 0, 14.2, 365.5 );--ズンッ

setEffMoveKey( spep_2 -3 + 44, ctzun, 14.2, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzun, 14.2, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzun, 7.7, 369.8 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzun, 14.3, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzun, 14.4, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzun, 8.8, 368.9 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzun, 9.1, 368.6 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzun, 14.2, 365.4 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzun, 14.2, 365.6 , 0 );

setEffScaleKey( spep_2 -3 + 44, ctzun, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 46, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_2 -3 + 48, ctzun, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 50, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 52, ctzun, 2.34, 2.34 );
setEffScaleKey( spep_2 -3 + 54, ctzun, 2.18, 2.18 );
setEffScaleKey( spep_2 -3 + 56, ctzun, 2.03, 2.03 );
setEffScaleKey( spep_2 -3 + 58, ctzun, 1.84, 1.84 );
setEffScaleKey( spep_2 -3 + 60, ctzun, 1.64, 1.64 );

setEffRotateKey( spep_2 -3 + 44, ctzun, -9.2 );
setEffRotateKey( spep_2 -3 + 52, ctzun, -9.2 );
setEffRotateKey( spep_2 -3 + 54, ctzun, -9.3 );
setEffRotateKey( spep_2 -3 + 56, ctzun, -9.4 );
setEffRotateKey( spep_2 -3 + 58, ctzun, -9.3 );
setEffRotateKey( spep_2 -3 + 60, ctzun, -9.2 );

setEffAlphaKey( spep_2 -3 + 44, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctzun, 223 );
setEffAlphaKey( spep_2 -3 + 56, ctzun, 191 );
setEffAlphaKey( spep_2 -3 + 58, ctzun, 102 );
setEffAlphaKey( spep_2 -3 + 60, ctzun, 13 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -3 + 78,  10020, 16, 0x100, -1, 0, -87.8, 334.2 );--バキッ

setEffMoveKey( spep_2 -3 + 78, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbaki, -100.1, 342.1 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_2 -3 + 78, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2 -3 + 80, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_2 -3 + 82, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_2 -3 + 84, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_2 -3 + 86, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_2 -3 + 88, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2 -3 + 90, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_2 -3 + 92, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_2 -3 + 94, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_2 -3 + 78, ctbaki, -12.4 );
setEffRotateKey( spep_2 -3 + 94, ctbaki, -12.4 );

setEffAlphaKey( spep_2 -3 + 78, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 90, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 92, ctbaki, 134 );
setEffAlphaKey( spep_2 -3 + 94, ctbaki, 13 );

--白フェード
entryFade( spep_2 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 -3 + 44, 1009 );  --ズン
playSe( spep_2 -3 + 78, 1011 );  --バキ
--playSe( spep_2 -3 + 122, 1053 );  --飛ぶ
playSe( spep_2 -3 + 122, 44 );  --飛ぶ

--次の準備
spep_3 = spep_2 + 120;


------------------------------------------------------
-- 16号攻撃→床落ち
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 320, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 320, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 320, attack_f, 255 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_3 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 320, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 320, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 320, attack_b, 255 );

-- 書き文字
ctton = entryEffect( spep_3 + 0, 154141,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ctton, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, ctton, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ctton, 1.0, 1.0 );
setEffScaleKey( spep_3 + 320, ctton, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctton, 0 );
setEffRotateKey( spep_3 + 320, ctton, 0 );
setEffAlphaKey( spep_3 + 0, ctton, 255 );
setEffAlphaKey( spep_3 + 320, ctton, 255 );


-- 書き文字
ctdoka = entryEffect( spep_3 + 0, 154142,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ctdoka, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, ctdoka, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ctdoka, 1.0, 1.0 );
setEffScaleKey( spep_3 + 320, ctdoka, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctdoka, 0 );
setEffRotateKey( spep_3 + 320, ctdoka, 0 );
setEffAlphaKey( spep_3 + 0, ctdoka, 255 );
setEffAlphaKey( spep_3 + 320, ctdoka, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 127, 1, 0 );
setDisp( spep_3-3  + 180, 1, 1 );
setDisp( spep_3  + 287, 1, 0 );

changeAnime( spep_3  + 0, 1, 7 );
changeAnime( spep_3 -3 + 40, 1, 4 );
changeAnime( spep_3 -3 + 48, 1, 18 );
changeAnime( spep_3 -3 + 180, 1, 105 );

setMoveKey( spep_3  + 0, 1, 483.7, 681.9 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 443.6, 624 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 402.6, 564.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 360.7, 504.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 317.8, 442.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 274.1, 379.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 229.6, 315.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 220.8, 294.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 212.6, 283.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 204.3, 271.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 195.6, 259.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 186.9, 247.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 178, 235.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 168.9, 222.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 159.6, 209.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 150.1, 196.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 140.4, 183 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 130.5, 169.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 120.8, 147 , 0 );
setMoveKey( spep_3 -3 + 39, 1, 110.6, 132.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 69, 71.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 44.7, 53.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 35.3, 22.4 , 0 );
setMoveKey( spep_3 -3 + 47, 1, 43, 12.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -5.6, -4.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -20.1, -10.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -35.2, -16.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -52.6, -16.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -68.6, -22.9 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -66, -10.7 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -61.2, -4.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -56.5, 1.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -58.4, 0.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -60.5, -1.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -62.7, -2.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -67.2, 2.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -69.5, 1.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -71.9, -0.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, -74.3, -1.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, -73.1, 0.2 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -72.1, 2 , 0 );
setMoveKey( spep_3 -3 + 82, 1, -70.6, 4.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -69.1, 6.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, -67.6, 9.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, -66.1, 11.7 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -66.2, 11.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -66.2, 11.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -68.4, 7.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -66.2, 11.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -68.4, 9.4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -66.2, 11.6 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -68.4, 7.2 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -68.2, 7.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -68.2, 7.8 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -68.2, 8.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -68.2, 8.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -68.2, 8.5 , 0 );
setMoveKey( spep_3 -3 + 122, 1, -68, 8.8 , 0 );
setMoveKey( spep_3 -3 + 124, 1, -68, 9.1 , 0 );
setMoveKey( spep_3 -3 + 126, 1, -68, 9.4 , 0 );
setMoveKey( spep_3  + 129, 1, -67.9, 9.7 , 0 );

a2 = 60;
a3 = 40;
setMoveKey( spep_3 + 180, 1, 170.3 -a2, -21.9 -a3, 0 );
setMoveKey( spep_3 + 182, 1, 149.1 -a2, 43.3 -a3 , 0 );
setMoveKey( spep_3 + 184, 1, 107.6 -a2, 53.3 -a3 , 0 );
setMoveKey( spep_3 + 186, 1, 96.5 -a2, 79.3 -a3 , 0 );
setMoveKey( spep_3 + 188, 1, 68.5 -a2, 84.3 -a3 , 0 );
setMoveKey( spep_3 + 190, 1, 68.9 -a2, 94.6 -a3 , 0 );
setMoveKey( spep_3 + 192, 1, 61.2 -a2, 101 -a3 , 0 );
setMoveKey( spep_3 + 194, 1, 63.8 -a2, 103.8 -a3 , 0 );
setMoveKey( spep_3 + 196, 1, 59.5 -a2, 95.5 -a3 , 0 );
setMoveKey( spep_3 + 198, 1, 59.5 -a2, 104.9 -a3 , 0 );
setMoveKey( spep_3 + 200, 1, 53.2 -a2, 103.1 -a3 , 0 );
setMoveKey( spep_3 + 202, 1, 55.2 -a2, 105.7 -a3 , 0 );
setMoveKey( spep_3 + 204, 1, 51.1 -a2, 100.1 -a3 , 0 );
setMoveKey( spep_3 + 206, 1, 50.1 -a2, 114.6 -a3 , 0 );
setMoveKey( spep_3 + 208, 1, 46 -a2, 113.1 -a3 , 0 );
setMoveKey( spep_3 + 210, 1, 45.8 -45, 115.3 -25 , 0 );
setMoveKey( spep_3 + 212, 1, 38.2 -40, 113.7 -20 , 0 );
setMoveKey( spep_3 + 214, 1, 52.6 -35, 139.2 -15 , 0 );
setMoveKey( spep_3 + 216, 1, 49 -30, 131.2 -10 , 0 );
setMoveKey( spep_3 + 218, 1, 48.9 -25, 139 -5 , 0 );
setMoveKey( spep_3 + 220, 1, 47.5 -20, 134.5 -3 , 0 );
setMoveKey( spep_3 + 222, 1, 46.1 -10, 129.6 , 0 );
setMoveKey( spep_3 + 224, 1, 45.8 -8, 135.1 , 0 );
setMoveKey( spep_3 + 226, 1, 45.4, 140.6 , 0 );
setMoveKey( spep_3 + 228, 1, 46, 131.7 , 0 );
setMoveKey( spep_3 + 230, 1, 45.7, 131.2 , 0 );
setMoveKey( spep_3 + 232, 1, 45.3, 130.7 , 0 );
setMoveKey( spep_3 + 234, 1, 45.8, 122.1 , 0 );
setMoveKey( spep_3 + 236, 1, 45.4, 121.7 , 0 );
setMoveKey( spep_3 + 238, 1, 45.1, 121.3 , 0 );
setMoveKey( spep_3 + 240, 1, 44.7, 120.8 , 0 );
setMoveKey( spep_3 + 242, 1, 45.3, 112.3 , 0 );
setMoveKey( spep_3 + 244, 1, 45, 101.6 , 0 );
setMoveKey( spep_3 + 246, 1, 44.6, 90.8 , 0 );
setMoveKey( spep_3 + 248, 1, 44.4, 80 , 0 );
setMoveKey( spep_3 + 250, 1, 44.8, 61.7 , 0 );
setMoveKey( spep_3 + 252, 1, 44.6, 51 , 0 );
setMoveKey( spep_3 + 254, 1, 44.2, 40.3 , 0 );
setMoveKey( spep_3 + 256, 1, 44.8, 22.6 , 0 );
setMoveKey( spep_3 + 258, 1, 44.5, 12.1 , 0 );
setMoveKey( spep_3 + 260, 1, 133.5, -699.9 , 0 );
setMoveKey( spep_3 + 262, 1, 108, -510.4 , 0 );
setMoveKey( spep_3 + 264, 1, 82.5, -320.7 , 0 );
setMoveKey( spep_3 + 266, 1, 57, -130.8 , 0 );
setMoveKey( spep_3 + 268, 1, 31.5, 59.1 , 0 );
setMoveKey( spep_3 + 270, 1, 29.7, 57.8 , 0 );
setMoveKey( spep_3 + 272, 1, 27.9, 56.6 , 0 );
setMoveKey( spep_3 + 274, 1, 26.1, 55.3 , 0 );
setMoveKey( spep_3 + 276, 1, 24.3, 54 , 0 );
setMoveKey( spep_3 + 278, 1, 23.2, 53.3 , 0 );
setMoveKey( spep_3 + 280, 1, 22.2, 52.5 , 0 );
setMoveKey( spep_3 + 282, 1, 21.1, 51.7 , 0 );
setMoveKey( spep_3 + 284, 1, 20.1, 50.9 , 0 );
setMoveKey( spep_3 + 286, 1, 19, 50.2 , 0 );
setMoveKey( spep_3 + 288, 1, 17.9, 49.4 , 0 );

a1 = 0.5;
setScaleKey( spep_3  + 0, 1, 0.2 +a1, 0.2 +a1 );
--setScaleKey( spep_3 -3 + 2, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 4, 1, 0.27 +a1, 0.27 +a1 );
setScaleKey( spep_3 -3 + 6, 1, 0.3 +a1, 0.3 +a1 );
setScaleKey( spep_3 -3 + 8, 1, 0.34 +a1, 0.34 +a1 );
setScaleKey( spep_3 -3 + 10, 1, 0.38 +a1, 0.38 +a1 );
setScaleKey( spep_3 -3 + 12, 1, 0.41 +a1, 0.41 +a1 );
setScaleKey( spep_3 -3 + 14, 1, 0.42 +a1, 0.42 +a1 );
setScaleKey( spep_3 -3 + 16, 1, 0.43 +a1, 0.43 +a1 );
setScaleKey( spep_3 -3 + 18, 1, 0.44 +a1, 0.44 +a1 );
setScaleKey( spep_3 -3 + 20, 1, 0.46 +a1, 0.46 +a1 );
setScaleKey( spep_3 -3 + 22, 1, 0.47 +a1, 0.47 +a1 );
setScaleKey( spep_3 -3 + 24, 1, 0.48 +a1, 0.48 +a1 );
setScaleKey( spep_3 -3 + 26, 1, 0.49 +a1, 0.49 +a1 );
setScaleKey( spep_3 -3 + 28, 1, 0.5 +a1, 0.5 +a1 );
setScaleKey( spep_3 -3 + 30, 1, 0.52 +a1, 0.52 +a1 );
setScaleKey( spep_3 -3 + 32, 1, 0.53 +a1, 0.53 +a1 );
setScaleKey( spep_3 -3 + 34, 1, 0.54 +a1, 0.54 +a1 );
setScaleKey( spep_3 -3 + 36, 1, 0.55 +a1, 0.55 +a1 );
setScaleKey( spep_3 -3 + 39, 1, 0.56 +a1, 0.56 +a1 );
setScaleKey( spep_3 -3 + 40, 1, 1.74 +a1, 1.74 +a1 );
setScaleKey( spep_3 -3 + 42, 1, 1.76 +a1, 1.76 +a1 );
setScaleKey( spep_3 -3 + 44, 1, 1.77 +a1, 1.77 +a1 );
setScaleKey( spep_3 -3 + 47, 1, 1.79 +a1, 1.79 +a1 );
setScaleKey( spep_3 -3 + 48, 1, 1.97 +a1, 1.97 +a1 );
setScaleKey( spep_3 -3 + 50, 1, 2.02 +a1, 2.02 +a1 );
setScaleKey( spep_3 -3 + 52, 1, 2.08 +a1, 2.08 +a1 );
setScaleKey( spep_3 -3 + 54, 1, 2.16 +a1, 2.16 +a1 );
setScaleKey( spep_3 -3 + 56, 1, 2.21 +a1, 2.21 +a1 );
setScaleKey( spep_3 -3 + 58, 1, 2.27 +a1, 2.27 +a1 );
setScaleKey( spep_3 -3 + 60, 1, 2.31 +a1, 2.31 +a1 );
setScaleKey( spep_3 -3 + 62, 1, 2.35 +a1, 2.35 +a1 );
setScaleKey( spep_3 -3 + 64, 1, 2.39 +a1, 2.39 +a1 );
setScaleKey( spep_3 -3 + 66, 1, 2.43 +a1, 2.43 +a1 );
setScaleKey( spep_3 -3 + 68, 1, 2.47 +a1, 2.47 +a1 );
setScaleKey( spep_3 -3 + 70, 1, 2.52 +a1, 2.52 +a1 );
setScaleKey( spep_3 -3 + 72, 1, 2.56 +a1, 2.56 +a1 );
setScaleKey( spep_3 -3 + 74, 1, 2.6 +a1, 2.6 +a1 );
setScaleKey( spep_3 -3 + 76, 1, 2.65 +a1, 2.65 +a1 );
setScaleKey( spep_3 -3 + 78, 1, 2.66 +a1, 2.66 +a1 );
setScaleKey( spep_3 -3 + 80, 1, 2.68 +a1, 2.68 +a1 );
setScaleKey( spep_3 -3 + 82, 1, 2.7 +a1, 2.7 +a1 );
setScaleKey( spep_3 -3 + 84, 1, 2.72 +a1, 2.72 +a1 );
setScaleKey( spep_3 -3 + 86, 1, 2.74 +a1, 2.74 +a1 );
setScaleKey( spep_3 -3 + 88, 1, 2.76 +a1, 2.76 +a1 );
setScaleKey( spep_3  + 129, 1, 2.76 +a1, 2.76 +a1 );

setScaleKey( spep_3 + 180, 1, 7.41 +a1, 7.41 +a1 );
setScaleKey( spep_3 + 182, 1, 6.27 +a1, 6.27 +a1 );
setScaleKey( spep_3 + 184, 1, 5.14 +a1, 5.14 +a1 );
setScaleKey( spep_3 + 186, 1, 4.08 +a1, 4.08 +a1 );
setScaleKey( spep_3 + 188, 1, 3.1 +a1, 3.1 +a1 );
setScaleKey( spep_3 + 190, 1, 3.02 +a1, 3.02 +a1 );
setScaleKey( spep_3 + 192, 1, 2.97 +a1, 2.97 +a1 );
setScaleKey( spep_3 + 194, 1, 2.89 +a1, 2.89 +a1 );
setScaleKey( spep_3 + 196, 1, 2.81 +a1, 2.81 +a1 );
setScaleKey( spep_3 + 198, 1, 2.73 +a1, 2.73 +a1 );
setScaleKey( spep_3 + 200, 1, 2.66 +a1, 2.66 +a1 );
setScaleKey( spep_3 + 202, 1, 2.58 +a1, 2.58 +a1 );
setScaleKey( spep_3 + 204, 1, 2.5 +a1, 2.5 +a1 );
setScaleKey( spep_3 + 206, 1, 2.45 +a1, 2.45 +a1 );
setScaleKey( spep_3 + 208, 1, 2.38 +a1, 2.38 +a1 );
setScaleKey( spep_3 + 210, 1, 2.3 +a1, 2.3 +a1 );
setScaleKey( spep_3 + 212, 1, 2.23 +a1, 2.23 +a1 );
setScaleKey( spep_3 + 214, 1, 2.66 +a1, 2.66 +a1 );
setScaleKey( spep_3 + 216, 1, 2.42 +a1, 2.42 +a1 );
setScaleKey( spep_3 + 218, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 220, 1, 2.04, 2.04 );
setScaleKey( spep_3 + 222, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 224, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 226, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 228, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 230, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 232, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 234, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 236, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 238, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 240, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 242, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 244, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 246, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 248, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 250, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 252, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 254, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 256, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 258, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 260, 1, 12.25, 12.25 );
setScaleKey( spep_3 + 262, 1, 9.69, 9.69 );
setScaleKey( spep_3 + 264, 1, 7.12, 7.12 );
setScaleKey( spep_3 + 266, 1, 4.56, 4.56 );
setScaleKey( spep_3 + 268, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 270, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 272, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 274, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 276, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 278, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 280, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 282, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 284, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 286, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 288, 1, 0.6, 0.6 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3 -3 + 39, 1, 0 );
setRotateKey( spep_3 -3 + 40, 1, -100 );
setRotateKey( spep_3 -3 + 56, 1, -10 );
--setRotateKey( spep_3 -3 + 49, 1, 0 );
setRotateKey( spep_3 -3 + 129, 1, -10 );

setRotateKey( spep_3 + 180, 1, 0 );
setRotateKey( spep_3 + 288, 1, 0 );

--文字エントリー
shuchusen1 = entryEffectLife( spep_3 -3 + 130,  906, 128, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 130, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 258, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 130, shuchusen1, 1.17, 1.57 );
setEffScaleKey( spep_3 -3 + 178, shuchusen1, 1.17, 1.57 );
setEffScaleKey( spep_3 -3 + 258, shuchusen1, 1.11, 1.14 );

setEffRotateKey( spep_3 -3 + 130, shuchusen1, 180 );
setEffRotateKey( spep_3 -3 + 258, shuchusen1, 180 );

setEffAlphaKey( spep_3 -3 + 130, shuchusen1, 255 );
setEffAlphaKey( spep_3 -3 + 258, shuchusen1, 255 );


--白フェード
entryFade( spep_3 + 37, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_3 + 126, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 176, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 256, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 312, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_3 -3 + 220 -120, 1012 );  --トン
playSe( spep_3 -3 + 220 -120, 1106 );  --トン
setSeVolume( spep_3 -3 + 220 -120, 1106, 350 );
playSe( spep_3 -3 + 254 -120, 8 );  --顔アップ
playSe( spep_3 + 300 -120, 1120 );  --殴る
playSe( spep_3 + 336 -120, 1121 );  --敵が飛ぶ
setSeVolume( spep_3 + 350 -120, 1121, 80 );
setSeVolume( spep_3 + 394 -120, 1121, 50 );
setSeVolume( spep_3 + 408 -120, 1121, 0 );
playSe( spep_3 + 408 -120, 1023 );  --衝突
setSeVolume( spep_3 + 408 -120, 1023, 55 );
playSe( spep_3 + 408 -120, 1008 );  --衝突
setSeVolume( spep_3 + 408 -120, 1008, 90 );

--次の準備
spep_4 = spep_3 + 320;

------------------------------------------------------
-- 手前飛行
------------------------------------------------------
-- ** エフェクト等 ** --
fry = entryEffect( spep_4 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fry, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, fry, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fry, 1.0, 1.0 );
setEffScaleKey( spep_4 + 150, fry, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fry, 0 );
setEffRotateKey( spep_4 + 150, fry, 0 );
setEffAlphaKey( spep_4 + 0, fry, 255 );
setEffAlphaKey( spep_4 + 150, fry, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_4+20  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_4+20  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_4 +32, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_4 +32,  ctgogo,  0,  540);
setEffMoveKey(  spep_4 +104,  ctgogo,  0,  540);

setEffAlphaKey( spep_4 +32, ctgogo, 0 );
setEffAlphaKey( spep_4 + 33, ctgogo, 255 );
setEffAlphaKey( spep_4 + 94, ctgogo, 255 );
setEffAlphaKey( spep_4 + 96, ctgogo, 255 );
setEffAlphaKey( spep_4 + 98, ctgogo, 255 );
setEffAlphaKey( spep_4 + 100, ctgogo, 191 );
setEffAlphaKey( spep_4 + 102, ctgogo, 128 );
setEffAlphaKey( spep_4 + 104, ctgogo, 64 );

setEffRotateKey(  spep_4 +32,  ctgogo,  0);
setEffRotateKey(  spep_4 +104,  ctgogo,  0);

setEffScaleKey(  spep_4 +32,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4 +94,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_4 +104,  ctgogo, 1.07, 1.07 );

--おと
--playSe( spep_4 + 0, 44 );  --迫る
--setSeVolume( spep_4 + 0, 44, 85 );
playSe( spep_4 + 0, 1003 );  --迫る
setSeVolume( spep_4 + 0, 1003, 120 );
playSe( spep_4 + 0, 8 );  --迫る
setSeVolume( spep_4 + 0, 8, 85 );
playSe( spep_4 + 32, 1018 );  --ごごご
playSe( spep_4 + 104, 1072 );  --迫る

--白フェード
entryFade( spep_4 + 142, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5 = spep_4 + 150;


------------------------------------------------------
-- 気弾発射
------------------------------------------------------

-- ** エフェクト等 ** --
ef_ki = entryEffect( spep_5 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ef_ki, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, ef_ki, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ef_ki, 1.0, 1.0 );
setEffScaleKey( spep_5 + 156, ef_ki, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ef_ki, 0 );
setEffRotateKey( spep_5 + 156, ef_ki, 0 );
setEffAlphaKey( spep_5 + 0, ef_ki, 255 );
setEffAlphaKey( spep_5 + 154, ef_ki, 255 );
setEffAlphaKey( spep_5 + 155, ef_ki, 255 );
setEffAlphaKey( spep_5 + 156, ef_ki, 0 );

--文字エントリー
shuchusen2 = entryEffectLife( spep_5  + 68,  906, 88, 0x100, -1, 0, 0, 100 );

setEffMoveKey( spep_5  + 68, shuchusen2, 0, 100 , 0 );
setEffMoveKey( spep_5  + 156, shuchusen2, 0, 100 , 0 );

setEffScaleKey( spep_5  + 68, shuchusen2, 1.17, 1.57 );
setEffScaleKey( spep_5  + 156, shuchusen2, 1.17, 1.57 );

setEffRotateKey( spep_5  + 68, shuchusen2, 0 );
setEffRotateKey( spep_5  + 156, shuchusen2, 0 );

setEffAlphaKey( spep_5  + 68, shuchusen2, 0 );
setEffAlphaKey( spep_5  + 69, shuchusen2, 255 );
setEffAlphaKey( spep_5  + 70, shuchusen2, 255 );
setEffAlphaKey( spep_5  + 154, shuchusen2, 255 );
setEffAlphaKey( spep_5  + 155, shuchusen2, 255 );
setEffAlphaKey( spep_5  + 156, shuchusen2, 0 );


--白フェード
entryFade( spep_5 + 69, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_5 + 156, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade

--黒背景
entryFadeBg( spep_5, 0, 160, 0, 10, 10, 10, 255);       -- ベース暗め　背景



-- ** 音 ** --
playSe( spep_5 + 170 -150, 1154 );  --溜める
playSe( spep_5 + 228 -150, 1017 );  --投げる
playSe( spep_5 + 236 -150, 1017 );  --投げる
playSe( spep_5 + 254 -150, 1017 );  --投げる
playSe( spep_5 + 254 -150, 1073 );  --向かう

--次の準備
spep_6 = spep_5 + 156;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
fry = entryEffect( spep_6 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fry, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, fry, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, fry, 1.0, 1.0 );
setEffScaleKey( spep_6 + 200, fry, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fry, 0 );
setEffRotateKey( spep_6 + 200, fry, 0 );
setEffAlphaKey( spep_6 + 0, fry, 255 );
setEffAlphaKey( spep_6 + 200, fry, 255 );

--文字エントリー
shuchusen3 = entryEffectLife( spep_6 + 0,  906, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen3, 1.17, 1.57 );
setEffScaleKey( spep_6 + 200, shuchusen3, 1.17, 1.57 );

setEffRotateKey( spep_6 + 0, shuchusen3, 0 );
setEffRotateKey( spep_6 + 200, shuchusen3, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 200, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_6 + 342 -150 -156, 1024 );  --当たる
playSe( spep_6 + 350 -150 -156, 1024 );  --当たる
playSe( spep_6 + 366 -150 -156, 1024 );  --当たる
playSe( spep_6 + 382 -150 -156, 1024 );  --当たる

-- ** ダメージ表示 ** --
dealDamage(spep_6 + 42);
endPhase( spep_6 + 190 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 手前突進
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0 , 0 );
setEffMoveKey( spep_0 + 66, rush, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 66, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 66, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 66, rush, 255 );
setEffAlphaKey( spep_0 + 67, rush, 0 );
setEffAlphaKey( spep_0 + 68, rush, 0 );

--白フェード
entryFade( spep_0 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 58, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_0 + 0, 9 );  --迫る

--次の準備
spep_1 = spep_0 +66;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 17号18号パンチキック・手前
------------------------------------------------------

-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_02,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, panting_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 120, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 120, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 120, panting_f, 255 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_2 + 0, SP_03,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 120, panting_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 120, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_b, 0 );
setEffRotateKey( spep_2 + 120, panting_b, 0 );
setEffAlphaKey( spep_2 + 0, panting_b, 255 );
setEffAlphaKey( spep_2 + 120, panting_b, 255 );

--敵の動き
setDisp( spep_2  + 0, 1, 1 );
setDisp( spep_2  + 118, 1, 0 );

changeAnime( spep_2  + 0, 1, 0 );
changeAnime( spep_2 -3 + 44, 1, 8 );
changeAnime( spep_2 -3 + 78, 1, 6 );

setMoveKey( spep_2  + 0, 1, -1.5, 10 , 0 );
--setMoveKey( spep_2 -3 + 2, 1, 2.9, 12.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, -1.6, 11.7 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -3.2, 14.4 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -1.9, 13.4 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -3.3, 16.1 , 0 );
setMoveKey( spep_2 -3 + 12, 1, -2, 15.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -3.4, 17.9 , 0 );
setMoveKey( spep_2 -3 + 16, 1, -2.1, 16.9 , 0 );
setMoveKey( spep_2 -3 + 18, 1, -3.6, 19.6 , 0 );
setMoveKey( spep_2 -3 + 20, 1, -2.3, 18.7 , 0 );
setMoveKey( spep_2 -3 + 22, 1, -3.7, 21.3 , 0 );
setMoveKey( spep_2 -3 + 24, 1, -2.4, 20.4 , 0 );
setMoveKey( spep_2 -3 + 26, 1, -4, 23.1 , 0 );
setMoveKey( spep_2 -3 + 28, 1, -2.7, 22.1 , 0 );
setMoveKey( spep_2 -3 + 30, 1, -4.1, 24.8 , 0 );
setMoveKey( spep_2 -3 + 32, 1, -2.8, 23.8 , 0 );

a4 = 0.25;
setScaleKey( spep_2  + 0, 1, 0.4 +a4, 0.4 +a4 );
--setScaleKey( spep_2 -3 + 2, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 4, 1, 0.48 +a4, 0.48 +a4 );
setScaleKey( spep_2 -3 + 6, 1, 0.52 +a4, 0.52 +a4 );
setScaleKey( spep_2 -3 + 8, 1, 0.56 +a4, 0.56 +a4 );
setScaleKey( spep_2 -3 + 10, 1, 0.6 +a4, 0.6 +a4 );
setScaleKey( spep_2 -3 + 12, 1, 0.63 +a4, 0.63 +a4 );
setScaleKey( spep_2 -3 + 14, 1, 0.67 +a4, 0.67 +a4 );
setScaleKey( spep_2 -3 + 16, 1, 0.71 +a4, 0.71 +a4 );
setScaleKey( spep_2 -3 + 18, 1, 0.75 +a4, 0.75 +a4 );
setScaleKey( spep_2 -3 + 20, 1, 0.79 +a4, 0.79 +a4 );
setScaleKey( spep_2 -3 + 22, 1, 0.83 +a4, 0.83 +a4 );
setScaleKey( spep_2 -3 + 24, 1, 0.86 +a4, 0.86 +a4 );
setScaleKey( spep_2 -3 + 26, 1, 0.9 +a4, 0.9 +a4 );
setScaleKey( spep_2 -3 + 28, 1, 0.94 +a4, 0.94 +a4 );
setScaleKey( spep_2 -3 + 30, 1, 0.98 +a4, 0.98 +a4 );
setScaleKey( spep_2 -3 + 32, 1, 1.02 +a4, 1.02 +a4 );

setRotateKey( spep_2  + 0, 1, 0 );
setRotateKey( spep_2  + 30, 1, 0 );

-- ** 音 ** --
SE0 = playSe( spep_2 + 0, 8 );  --迫る

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

    
    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵の座標
    setMoveKey( SP_dodge , 1, 2.8, 23.8 , 0 );
    setScaleKey( SP_dodge , 1, 1.02, 1.02 );
    setRotateKey( SP_dodge  , 1, 0 );

    setMoveKey( SP_dodge+9 , 1, 2.8, 23.8 , 0 );
    setScaleKey( SP_dodge+9 , 1, 1.02, 1.02 );
    setRotateKey( SP_dodge+9  , 1, 0 );

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
    ------------------------------------------------------
    -- 回避しなかった場合
    ------------------------------------------------------
setMoveKey( spep_2 -3 + 34, 1, -4.2, 26.6 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -2.9, 25.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, -4.4, 28.2 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -5.8, 30.9 , 0 );
setMoveKey( spep_2 -3 + 43, 1, -4.5, 30 , 0 );
setMoveKey( spep_2 -3 + 44, 1, -55.3, 84.4 , 0 );
setMoveKey( spep_2 -3 + 46, 1, -67.7, 109.4 , 0 );
setMoveKey( spep_2 -3 + 48, 1, -58, 106.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, -77.3, 110.8 , 0 );
setMoveKey( spep_2 -3 + 52, 1, -58.4, 98.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, -50.3, 117.9 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -22.9, 112 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -20.6, 121.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -4.2, 117.5 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -18.2, 121.1 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -13, 117.5 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -18.8, 125 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -16.1, 123 , 0 );
setMoveKey( spep_2 -3 + 70, 1, -16.5, 125 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -16.8, 126.9 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -14, 124.9 , 0 );
setMoveKey( spep_2 -3 + 77, 1, -14.4, 126.8 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 17.8, 101 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 26.4, 104.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 34.1, 79.6 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 47.1, 92.5 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 35.4, 70.1 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 23.9, 94.6 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 29.2, 96.2 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 14.5, 106.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 17.4, 95.9 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 9.9, 111.7 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 125, -42.9 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 216.1, -187.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 319.9, -343.2 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 416.1, -476.4 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 518.9, -625.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 605.7, -751.3 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 697.7, -884.4 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 787.6, -1014.6 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 875.4, -1141.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 961.1, -1265.2 , 0 );
setMoveKey( spep_2  + 118, 1, 1044.8, -1386.1 , 0 );

setScaleKey( spep_2 -3 + 34, 1, 1.06 +a4, 1.06 +a4 );
setScaleKey( spep_2 -3 + 36, 1, 1.09 +a4, 1.09 +a4 );
setScaleKey( spep_2 -3 + 38, 1, 1.13 +a4, 1.13 +a4 );
setScaleKey( spep_2 -3 + 40, 1, 1.17 +a4, 1.17 +a4 );
setScaleKey( spep_2 -3 + 43, 1, 1.21 +a4, 1.21 +a4 );
setScaleKey( spep_2 -3 + 44, 1, 1.52 +a4, 1.52 +a4 );
setScaleKey( spep_2 -3 + 46, 1, 1.45 +a4, 1.45 +a4 );
setScaleKey( spep_2 -3 + 48, 1, 1.37 +a4, 1.37 +a4 );
setScaleKey( spep_2 -3 + 50, 1, 1.29 +a4, 1.29 +a4 );
setScaleKey( spep_2 -3 + 52, 1, 1.31 +a4, 1.31 +a4 );
setScaleKey( spep_2 -3 + 54, 1, 1.33 +a4, 1.33 +a4 );
setScaleKey( spep_2 -3 + 56, 1, 1.35 +a4, 1.35 +a4 );
setScaleKey( spep_2 -3 + 58, 1, 1.37 +a4, 1.37 +a4 );
setScaleKey( spep_2 -3 + 60, 1, 1.37 +a4, 1.37 +a4 );
setScaleKey( spep_2 -3 + 62, 1, 1.36 +a4, 1.36 +a4 );
setScaleKey( spep_2 -3 + 77, 1, 1.36 +a4, 1.36 +a4 );
setScaleKey( spep_2 -3 + 78, 1, 1.41 +a4, 1.41 +a4 );
setScaleKey( spep_2 -3 + 80, 1, 1.63 +a4, 1.63 +a4 );
setScaleKey( spep_2 -3 + 82, 1, 1.58 +a4, 1.58 +a4 );
setScaleKey( spep_2 -3 + 84, 1, 1.54 +a4, 1.54 +a4 );
setScaleKey( spep_2 -3 + 86, 1, 1.49 +a4, 1.49 +a4 );
setScaleKey( spep_2 -3 + 88, 1, 1.45 +a4, 1.45 +a4 );
setScaleKey( spep_2 -3 + 90, 1, 1.4 +a4, 1.4 +a4 );
setScaleKey( spep_2 -3 + 92, 1, 1.39 +a4, 1.39 +a4 );
setScaleKey( spep_2 -3 + 94, 1, 1.38 +a4, 1.38 +a4 );
setScaleKey( spep_2 -3 + 96, 1, 1.36 +a4, 1.36 +a4 );
setScaleKey( spep_2 -3 + 98, 1, 1.52 +a4, 1.52 +a4 );
setScaleKey( spep_2 -3 + 100, 1, 1.66 +a4, 1.66 +a4 );
setScaleKey( spep_2 -3 + 102, 1, 1.81 +a4, 1.81 +a4 );
setScaleKey( spep_2 -3 + 104, 1, 1.95 +a4, 1.95 +a4 );
setScaleKey( spep_2 -3 + 106, 1, 2.09 +a4, 2.09 +a4 );
setScaleKey( spep_2 -3 + 108, 1, 2.22 +a4, 2.22 +a4 );
setScaleKey( spep_2 -3 + 110, 1, 2.36 +a4, 2.36 +a4 );
setScaleKey( spep_2 -3 + 112, 1, 2.49 +a4, 2.49 +a4 );
setScaleKey( spep_2 -3 + 114, 1, 2.6 +a4, 2.6 +a4 );
setScaleKey( spep_2 -3 + 116, 1, 2.73 +a4, 2.73 +a4 );
setScaleKey( spep_2  + 118, 1, 2.85 +a4, 2.85 +a4 );

setRotateKey( spep_2 -3 + 43, 1, 0 );
setRotateKey( spep_2 -3 + 44, 1, -10.7 );
setRotateKey( spep_2 -3 + 46, 1, -10.7 );
setRotateKey( spep_2 -3 + 48, 1, -10.6 );
setRotateKey( spep_2 -3 + 62, 1, -10.6 );
setRotateKey( spep_2 -3 + 64, 1, -10.7 );
setRotateKey( spep_2 -3 + 77, 1, -10.7 );
setRotateKey( spep_2 -3 + 78, 1, 85 );
setRotateKey( spep_2 -3 + 80, 1, 85.9 );
setRotateKey( spep_2 -3 + 82, 1, 86.8 );
setRotateKey( spep_2 -3 + 84, 1, 87.8 );
setRotateKey( spep_2 -3 + 86, 1, 88.7 );
setRotateKey( spep_2 -3 + 88, 1, 88.9 );
setRotateKey( spep_2 -3 + 90, 1, 89.1 );
setRotateKey( spep_2 -3 + 92, 1, 89.3 );
setRotateKey( spep_2 -3 + 94, 1, 89.5 );
setRotateKey( spep_2 -3 + 96, 1, 89.7 );
setRotateKey( spep_2 -3 + 98, 1, 94.9 );
setRotateKey( spep_2 -3 + 100, 1, 100 );
setRotateKey( spep_2 -3 + 102, 1, 105.2 );
setRotateKey( spep_2 -3 + 104, 1, 110.4 );
setRotateKey( spep_2 -3 + 106, 1, 115.6 );
setRotateKey( spep_2 -3 + 108, 1, 120.7 );
setRotateKey( spep_2 -3 + 110, 1, 125.9 );
setRotateKey( spep_2 -3 + 112, 1, 131.1 );
setRotateKey( spep_2 -3 + 114, 1, 136.3 );
setRotateKey( spep_2 -3 + 116, 1, 141.4 );
setRotateKey( spep_2  + 118, 1, 146.6 );

--文字エントリー
ctzun = entryEffectLife( spep_2 -3 + 44,  10016, 16, 0x100, -1, 0, 14.2, 365.5 );--ズンッ

setEffMoveKey( spep_2 -3 + 44, ctzun, 14.2, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctzun, 14.2, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctzun, 7.7, 369.8 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctzun, 14.3, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctzun, 14.4, 365.5 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctzun, 8.8, 368.9 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctzun, 9.1, 368.6 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctzun, 14.2, 365.4 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctzun, 14.2, 365.6 , 0 );

setEffScaleKey( spep_2 -3 + 44, ctzun, 1.14, 1.14 );
setEffScaleKey( spep_2 -3 + 46, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_2 -3 + 48, ctzun, 2.63, 2.63 );
setEffScaleKey( spep_2 -3 + 50, ctzun, 2.48, 2.48 );
setEffScaleKey( spep_2 -3 + 52, ctzun, 2.34, 2.34 );
setEffScaleKey( spep_2 -3 + 54, ctzun, 2.18, 2.18 );
setEffScaleKey( spep_2 -3 + 56, ctzun, 2.03, 2.03 );
setEffScaleKey( spep_2 -3 + 58, ctzun, 1.84, 1.84 );
setEffScaleKey( spep_2 -3 + 60, ctzun, 1.64, 1.64 );

setEffRotateKey( spep_2 -3 + 44, ctzun, -9.2 );
setEffRotateKey( spep_2 -3 + 52, ctzun, -9.2 );
setEffRotateKey( spep_2 -3 + 54, ctzun, -9.3 );
setEffRotateKey( spep_2 -3 + 56, ctzun, -9.4 );
setEffRotateKey( spep_2 -3 + 58, ctzun, -9.3 );
setEffRotateKey( spep_2 -3 + 60, ctzun, -9.2 );

setEffAlphaKey( spep_2 -3 + 44, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 52, ctzun, 255 );
setEffAlphaKey( spep_2 -3 + 54, ctzun, 223 );
setEffAlphaKey( spep_2 -3 + 56, ctzun, 191 );
setEffAlphaKey( spep_2 -3 + 58, ctzun, 102 );
setEffAlphaKey( spep_2 -3 + 60, ctzun, 13 );

--文字エントリー
ctbaki = entryEffectLife( spep_2 -3 + 78,  10020, 16, 0x100, -1, 0, -87.8, 334.2 );--バキッ

setEffMoveKey( spep_2 -3 + 78, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctbaki, -100.1, 342.1 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_2 -3 + 78, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_2 -3 + 80, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_2 -3 + 82, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_2 -3 + 84, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_2 -3 + 86, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_2 -3 + 88, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_2 -3 + 90, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_2 -3 + 92, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_2 -3 + 94, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_2 -3 + 78, ctbaki, -12.4 );
setEffRotateKey( spep_2 -3 + 94, ctbaki, -12.4 );

setEffAlphaKey( spep_2 -3 + 78, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 90, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 92, ctbaki, 134 );
setEffAlphaKey( spep_2 -3 + 94, ctbaki, 13 );

--白フェード
entryFade( spep_2 + 112, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_2 -3 + 44, 1009 );  --ズン
playSe( spep_2 -3 + 78, 1011 );  --バキ
--playSe( spep_2 -3 + 122, 1053 );  --飛ぶ
playSe( spep_2 -3 + 122, 44 );  --飛ぶ

--次の準備
spep_3 = spep_2 + 120;


------------------------------------------------------
-- 16号攻撃→床落ち
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_04,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, attack_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 320, attack_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 320, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 320, attack_f, 255 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_3 + 0, SP_05,  0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, attack_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, attack_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 320, attack_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 320, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 320, attack_b, 255 );

-- 書き文字
ctton = entryEffect( spep_3 + 0, 154141,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ctton, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, ctton, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ctton, -1.0, 1.0 );
setEffScaleKey( spep_3 + 320, ctton, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctton, 0 );
setEffRotateKey( spep_3 + 320, ctton, 0 );
setEffAlphaKey( spep_3 + 0, ctton, 255 );
setEffAlphaKey( spep_3 + 320, ctton, 255 );


-- 書き文字
ctdoka = entryEffect( spep_3 + 0, 154142,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, ctdoka, 0, 0 , 0 );
setEffMoveKey( spep_3 + 320, ctdoka, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ctdoka, -1.0, 1.0 );
setEffScaleKey( spep_3 + 320, ctdoka, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, ctdoka, 0 );
setEffRotateKey( spep_3 + 320, ctdoka, 0 );
setEffAlphaKey( spep_3 + 0, ctdoka, 255 );
setEffAlphaKey( spep_3 + 320, ctdoka, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 127, 1, 0 );
setDisp( spep_3-3  + 180, 1, 1 );
setDisp( spep_3  + 287, 1, 0 );

changeAnime( spep_3  + 0, 1, 107 );
changeAnime( spep_3 -3 + 40, 1, 104 );
changeAnime( spep_3 -3 + 48, 1, 118 );
changeAnime( spep_3 -3 + 180, 1, 105 );

setMoveKey( spep_3  + 0, 1, -483.7, 681.9 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 443.6, 624 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -402.6, 564.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -360.7, 504.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -317.8, 442.7 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -274.1, 379.6 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -229.6, 315.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -220.8, 294.3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -212.6, 283.1 , 0 );
setMoveKey( spep_3 -3 + 18, 1, -204.3, 271.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -195.6, 259.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -186.9, 247.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -178, 235.3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -168.9, 222.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -159.6, 209.7 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -150.1, 196.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -140.4, 183 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -130.5, 169.3 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -120.8, 147 , 0 );
setMoveKey( spep_3 -3 + 39, 1, -110.6, 132.9 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -69, 71.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -44.7, 53.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -35.3, 22.4 , 0 );
setMoveKey( spep_3 -3 + 47, 1, -43, 12.1 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 5.6, -4.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 20.1, -10.3 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 35.2, -16.4 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 52.6, -16.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 68.6, -22.9 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 66, -10.7 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 61.2, -4.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 56.5, 1.1 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 58.4, 0.1 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 60.5, -1.1 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 62.7, -2.3 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 67.2, 2.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 69.5, 1.1 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 71.9, -0.2 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 74.3, -1.8 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 73.1, 0.2 , 0 );
setMoveKey( spep_3 -3 + 80, 1, 72.1, 2 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 70.6, 4.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, 69.1, 6.8 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 67.6, 9.2 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 66.1, 11.7 , 0 );
setMoveKey( spep_3 -3 + 90, 1, 66.2, 11.6 , 0 );
setMoveKey( spep_3 -3 + 100, 1, 66.2, 11.6 , 0 );
setMoveKey( spep_3 -3 + 102, 1, 68.4, 7.2 , 0 );
setMoveKey( spep_3 -3 + 104, 1, 66.2, 11.6 , 0 );
setMoveKey( spep_3 -3 + 106, 1, 68.4, 9.4 , 0 );
setMoveKey( spep_3 -3 + 108, 1, 66.2, 11.6 , 0 );
setMoveKey( spep_3 -3 + 110, 1, 68.4, 7.2 , 0 );
setMoveKey( spep_3 -3 + 112, 1, 68.2, 7.5 , 0 );
setMoveKey( spep_3 -3 + 114, 1, 68.2, 7.8 , 0 );
setMoveKey( spep_3 -3 + 116, 1, 68.2, 8.1 , 0 );
setMoveKey( spep_3 -3 + 118, 1, 68.2, 8.2 , 0 );
setMoveKey( spep_3 -3 + 120, 1, 68.2, 8.5 , 0 );
setMoveKey( spep_3 -3 + 122, 1, 68, 8.8 , 0 );
setMoveKey( spep_3 -3 + 124, 1, 68, 9.1 , 0 );
setMoveKey( spep_3 -3 + 126, 1, 68, 9.4 , 0 );
setMoveKey( spep_3  + 129, 1, 67.9, 9.7 , 0 );

a2 = 60;
a3 = 40;
setMoveKey( spep_3 + 180, 1, 170.3 -a2, -21.9 -a3, 0 );
setMoveKey( spep_3 + 182, 1, 149.1 -a2, 43.3 -a3 , 0 );
setMoveKey( spep_3 + 184, 1, 107.6 -a2, 53.3 -a3 , 0 );
setMoveKey( spep_3 + 186, 1, 96.5 -a2, 79.3 -a3 , 0 );
setMoveKey( spep_3 + 188, 1, 68.5 -a2, 84.3 -a3 , 0 );
setMoveKey( spep_3 + 190, 1, 68.9 -a2, 94.6 -a3 , 0 );
setMoveKey( spep_3 + 192, 1, 61.2 -a2, 101 -a3 , 0 );
setMoveKey( spep_3 + 194, 1, 63.8 -a2, 103.8 -a3 , 0 );
setMoveKey( spep_3 + 196, 1, 59.5 -a2, 95.5 -a3 , 0 );
setMoveKey( spep_3 + 198, 1, 59.5 -a2, 104.9 -a3 , 0 );
setMoveKey( spep_3 + 200, 1, 53.2 -a2, 103.1 -a3 , 0 );
setMoveKey( spep_3 + 202, 1, 55.2 -a2, 105.7 -a3 , 0 );
setMoveKey( spep_3 + 204, 1, 51.1 -a2, 100.1 -a3 , 0 );
setMoveKey( spep_3 + 206, 1, 50.1 -a2, 114.6 -a3 , 0 );
setMoveKey( spep_3 + 208, 1, 46 -a2, 113.1 -a3 , 0 );
setMoveKey( spep_3 + 210, 1, 45.8 -45, 115.3 -25 , 0 );
setMoveKey( spep_3 + 212, 1, 38.2 -40, 113.7 -20 , 0 );
setMoveKey( spep_3 + 214, 1, 52.6 -35, 139.2 -15 , 0 );
setMoveKey( spep_3 + 216, 1, 49 -30, 131.2 -10 , 0 );
setMoveKey( spep_3 + 218, 1, 48.9 -25, 139 -5 , 0 );
setMoveKey( spep_3 + 220, 1, 47.5 -20, 134.5 -3 , 0 );
setMoveKey( spep_3 + 222, 1, 46.1 -10, 129.6 , 0 );
setMoveKey( spep_3 + 224, 1, 45.8 -8, 135.1 , 0 );
setMoveKey( spep_3 + 226, 1, 45.4, 140.6 , 0 );
setMoveKey( spep_3 + 228, 1, 46, 131.7 , 0 );
setMoveKey( spep_3 + 230, 1, 45.7, 131.2 , 0 );
setMoveKey( spep_3 + 232, 1, 45.3, 130.7 , 0 );
setMoveKey( spep_3 + 234, 1, 45.8, 122.1 , 0 );
setMoveKey( spep_3 + 236, 1, 45.4, 121.7 , 0 );
setMoveKey( spep_3 + 238, 1, 45.1, 121.3 , 0 );
setMoveKey( spep_3 + 240, 1, 44.7, 120.8 , 0 );
setMoveKey( spep_3 + 242, 1, 45.3, 112.3 , 0 );
setMoveKey( spep_3 + 244, 1, 45, 101.6 , 0 );
setMoveKey( spep_3 + 246, 1, 44.6, 90.8 , 0 );
setMoveKey( spep_3 + 248, 1, 44.4, 80 , 0 );
setMoveKey( spep_3 + 250, 1, 44.8, 61.7 , 0 );
setMoveKey( spep_3 + 252, 1, 44.6, 51 , 0 );
setMoveKey( spep_3 + 254, 1, 44.2, 40.3 , 0 );
setMoveKey( spep_3 + 256, 1, 44.8, 22.6 , 0 );
setMoveKey( spep_3 + 258, 1, 44.5, 12.1 , 0 );
setMoveKey( spep_3 + 260, 1, 133.5, -699.9 , 0 );
setMoveKey( spep_3 + 262, 1, 108, -510.4 , 0 );
setMoveKey( spep_3 + 264, 1, 82.5, -320.7 , 0 );
setMoveKey( spep_3 + 266, 1, 57, -130.8 , 0 );
setMoveKey( spep_3 + 268, 1, 31.5, 59.1 , 0 );
setMoveKey( spep_3 + 270, 1, 29.7, 57.8 , 0 );
setMoveKey( spep_3 + 272, 1, 27.9, 56.6 , 0 );
setMoveKey( spep_3 + 274, 1, 26.1, 55.3 , 0 );
setMoveKey( spep_3 + 276, 1, 24.3, 54 , 0 );
setMoveKey( spep_3 + 278, 1, 23.2, 53.3 , 0 );
setMoveKey( spep_3 + 280, 1, 22.2, 52.5 , 0 );
setMoveKey( spep_3 + 282, 1, 21.1, 51.7 , 0 );
setMoveKey( spep_3 + 284, 1, 20.1, 50.9 , 0 );
setMoveKey( spep_3 + 286, 1, 19, 50.2 , 0 );
setMoveKey( spep_3 + 288, 1, 17.9, 49.4 , 0 );

a1 = 0.5;
setScaleKey( spep_3  + 0, 1, 0.2 +a1, 0.2 +a1 );
--setScaleKey( spep_3 -3 + 2, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 4, 1, 0.27 +a1, 0.27 +a1 );
setScaleKey( spep_3 -3 + 6, 1, 0.3 +a1, 0.3 +a1 );
setScaleKey( spep_3 -3 + 8, 1, 0.34 +a1, 0.34 +a1 );
setScaleKey( spep_3 -3 + 10, 1, 0.38 +a1, 0.38 +a1 );
setScaleKey( spep_3 -3 + 12, 1, 0.41 +a1, 0.41 +a1 );
setScaleKey( spep_3 -3 + 14, 1, 0.42 +a1, 0.42 +a1 );
setScaleKey( spep_3 -3 + 16, 1, 0.43 +a1, 0.43 +a1 );
setScaleKey( spep_3 -3 + 18, 1, 0.44 +a1, 0.44 +a1 );
setScaleKey( spep_3 -3 + 20, 1, 0.46 +a1, 0.46 +a1 );
setScaleKey( spep_3 -3 + 22, 1, 0.47 +a1, 0.47 +a1 );
setScaleKey( spep_3 -3 + 24, 1, 0.48 +a1, 0.48 +a1 );
setScaleKey( spep_3 -3 + 26, 1, 0.49 +a1, 0.49 +a1 );
setScaleKey( spep_3 -3 + 28, 1, 0.5 +a1, 0.5 +a1 );
setScaleKey( spep_3 -3 + 30, 1, 0.52 +a1, 0.52 +a1 );
setScaleKey( spep_3 -3 + 32, 1, 0.53 +a1, 0.53 +a1 );
setScaleKey( spep_3 -3 + 34, 1, 0.54 +a1, 0.54 +a1 );
setScaleKey( spep_3 -3 + 36, 1, 0.55 +a1, 0.55 +a1 );
setScaleKey( spep_3 -3 + 39, 1, 0.56 +a1, 0.56 +a1 );
setScaleKey( spep_3 -3 + 40, 1, 1.74 +a1, 1.74 +a1 );
setScaleKey( spep_3 -3 + 42, 1, 1.76 +a1, 1.76 +a1 );
setScaleKey( spep_3 -3 + 44, 1, 1.77 +a1, 1.77 +a1 );
setScaleKey( spep_3 -3 + 47, 1, 1.79 +a1, 1.79 +a1 );
setScaleKey( spep_3 -3 + 48, 1, 1.97 +a1, 1.97 +a1 );
setScaleKey( spep_3 -3 + 50, 1, 2.02 +a1, 2.02 +a1 );
setScaleKey( spep_3 -3 + 52, 1, 2.08 +a1, 2.08 +a1 );
setScaleKey( spep_3 -3 + 54, 1, 2.16 +a1, 2.16 +a1 );
setScaleKey( spep_3 -3 + 56, 1, 2.21 +a1, 2.21 +a1 );
setScaleKey( spep_3 -3 + 58, 1, 2.27 +a1, 2.27 +a1 );
setScaleKey( spep_3 -3 + 60, 1, 2.31 +a1, 2.31 +a1 );
setScaleKey( spep_3 -3 + 62, 1, 2.35 +a1, 2.35 +a1 );
setScaleKey( spep_3 -3 + 64, 1, 2.39 +a1, 2.39 +a1 );
setScaleKey( spep_3 -3 + 66, 1, 2.43 +a1, 2.43 +a1 );
setScaleKey( spep_3 -3 + 68, 1, 2.47 +a1, 2.47 +a1 );
setScaleKey( spep_3 -3 + 70, 1, 2.52 +a1, 2.52 +a1 );
setScaleKey( spep_3 -3 + 72, 1, 2.56 +a1, 2.56 +a1 );
setScaleKey( spep_3 -3 + 74, 1, 2.6 +a1, 2.6 +a1 );
setScaleKey( spep_3 -3 + 76, 1, 2.65 +a1, 2.65 +a1 );
setScaleKey( spep_3 -3 + 78, 1, 2.66 +a1, 2.66 +a1 );
setScaleKey( spep_3 -3 + 80, 1, 2.68 +a1, 2.68 +a1 );
setScaleKey( spep_3 -3 + 82, 1, 2.7 +a1, 2.7 +a1 );
setScaleKey( spep_3 -3 + 84, 1, 2.72 +a1, 2.72 +a1 );
setScaleKey( spep_3 -3 + 86, 1, 2.74 +a1, 2.74 +a1 );
setScaleKey( spep_3 -3 + 88, 1, 2.76 +a1, 2.76 +a1 );
setScaleKey( spep_3  + 129, 1, 2.76 +a1, 2.76 +a1 );

setScaleKey( spep_3 + 180, 1, 7.41 +a1, 7.41 +a1 );
setScaleKey( spep_3 + 182, 1, 6.27 +a1, 6.27 +a1 );
setScaleKey( spep_3 + 184, 1, 5.14 +a1, 5.14 +a1 );
setScaleKey( spep_3 + 186, 1, 4.08 +a1, 4.08 +a1 );
setScaleKey( spep_3 + 188, 1, 3.1 +a1, 3.1 +a1 );
setScaleKey( spep_3 + 190, 1, 3.02 +a1, 3.02 +a1 );
setScaleKey( spep_3 + 192, 1, 2.97 +a1, 2.97 +a1 );
setScaleKey( spep_3 + 194, 1, 2.89 +a1, 2.89 +a1 );
setScaleKey( spep_3 + 196, 1, 2.81 +a1, 2.81 +a1 );
setScaleKey( spep_3 + 198, 1, 2.73 +a1, 2.73 +a1 );
setScaleKey( spep_3 + 200, 1, 2.66 +a1, 2.66 +a1 );
setScaleKey( spep_3 + 202, 1, 2.58 +a1, 2.58 +a1 );
setScaleKey( spep_3 + 204, 1, 2.5 +a1, 2.5 +a1 );
setScaleKey( spep_3 + 206, 1, 2.45 +a1, 2.45 +a1 );
setScaleKey( spep_3 + 208, 1, 2.38 +a1, 2.38 +a1 );
setScaleKey( spep_3 + 210, 1, 2.3 +a1, 2.3 +a1 );
setScaleKey( spep_3 + 212, 1, 2.23 +a1, 2.23 +a1 );
setScaleKey( spep_3 + 214, 1, 2.66 +a1, 2.66 +a1 );
setScaleKey( spep_3 + 216, 1, 2.42 +a1, 2.42 +a1 );
setScaleKey( spep_3 + 218, 1, 2.24, 2.24 );
setScaleKey( spep_3 + 220, 1, 2.04, 2.04 );
setScaleKey( spep_3 + 222, 1, 1.85, 1.85 );
setScaleKey( spep_3 + 224, 1, 1.74, 1.74 );
setScaleKey( spep_3 + 226, 1, 1.63, 1.63 );
setScaleKey( spep_3 + 228, 1, 1.56, 1.56 );
setScaleKey( spep_3 + 230, 1, 1.5, 1.5 );
setScaleKey( spep_3 + 232, 1, 1.45, 1.45 );
setScaleKey( spep_3 + 234, 1, 1.38, 1.38 );
setScaleKey( spep_3 + 236, 1, 1.33, 1.33 );
setScaleKey( spep_3 + 238, 1, 1.27, 1.27 );
setScaleKey( spep_3 + 240, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 242, 1, 1.15, 1.15 );
setScaleKey( spep_3 + 244, 1, 1.06, 1.06 );
setScaleKey( spep_3 + 246, 1, 0.97, 0.97 );
setScaleKey( spep_3 + 248, 1, 0.88, 0.88 );
setScaleKey( spep_3 + 250, 1, 0.78, 0.78 );
setScaleKey( spep_3 + 252, 1, 0.69, 0.69 );
setScaleKey( spep_3 + 254, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 256, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 258, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 260, 1, 12.25, 12.25 );
setScaleKey( spep_3 + 262, 1, 9.69, 9.69 );
setScaleKey( spep_3 + 264, 1, 7.12, 7.12 );
setScaleKey( spep_3 + 266, 1, 4.56, 4.56 );
setScaleKey( spep_3 + 268, 1, 1.99, 1.99 );
setScaleKey( spep_3 + 270, 1, 1.81, 1.81 );
setScaleKey( spep_3 + 272, 1, 1.62, 1.62 );
setScaleKey( spep_3 + 274, 1, 1.44, 1.44 );
setScaleKey( spep_3 + 276, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 278, 1, 1.14, 1.14 );
setScaleKey( spep_3 + 280, 1, 1.03, 1.03 );
setScaleKey( spep_3 + 282, 1, 0.93, 0.93 );
setScaleKey( spep_3 + 284, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 286, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 288, 1, 0.6, 0.6 );

setRotateKey( spep_3  + 0, 1, 0 );
setRotateKey( spep_3 -3 + 39, 1, 0 );
setRotateKey( spep_3 -3 + 40, 1, 100 );
setRotateKey( spep_3 -3 + 56, 1, 10 );
--setRotateKey( spep_3 -3 + 49, 1, 0 );
setRotateKey( spep_3 -3 + 129, 1, 10 );

setRotateKey( spep_3 + 180, 1, 0 );
setRotateKey( spep_3 + 288, 1, 0 );

--文字エントリー
shuchusen1 = entryEffectLife( spep_3 -3 + 130,  906, 128, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3 -3 + 130, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 258, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 -3 + 130, shuchusen1, 1.17, 1.57 );
setEffScaleKey( spep_3 -3 + 178, shuchusen1, 1.17, 1.57 );
setEffScaleKey( spep_3 -3 + 258, shuchusen1, 1.11, 1.14 );

setEffRotateKey( spep_3 -3 + 130, shuchusen1, 180 );
setEffRotateKey( spep_3 -3 + 258, shuchusen1, 180 );

setEffAlphaKey( spep_3 -3 + 130, shuchusen1, 255 );
setEffAlphaKey( spep_3 -3 + 258, shuchusen1, 255 );


--白フェード
entryFade( spep_3 + 37, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_3 + 126, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 176, 0, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 256, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 312, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_3 -3 + 220 -120, 1012 );  --トン
playSe( spep_3 -3 + 220 -120, 1106 );  --トン
setSeVolume( spep_3 -3 + 220 -120, 1106, 350 );
playSe( spep_3 -3 + 254 -120, 8 );  --顔アップ
playSe( spep_3 + 300 -120, 1120 );  --殴る
playSe( spep_3 + 336 -120, 1121 );  --敵が飛ぶ
setSeVolume( spep_3 + 350 -120, 1121, 80 );
setSeVolume( spep_3 + 394 -120, 1121, 50 );
setSeVolume( spep_3 + 408 -120, 1121, 0 );
playSe( spep_3 + 408 -120, 1023 );  --衝突
setSeVolume( spep_3 + 408 -120, 1023, 55 );
playSe( spep_3 + 408 -120, 1008 );  --衝突
setSeVolume( spep_3 + 408 -120, 1008, 90 );

--次の準備
spep_4 = spep_3 + 320;

------------------------------------------------------
-- 手前飛行
------------------------------------------------------
-- ** エフェクト等 ** --
fry = entryEffect( spep_4 + 0, SP_06,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, fry, 0, 0 , 0 );
setEffMoveKey( spep_4 + 150, fry, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, fry, -1.0, 1.0 );
setEffScaleKey( spep_4 + 150, fry, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, fry, 0 );
setEffRotateKey( spep_4 + 150, fry, 0 );
setEffAlphaKey( spep_4 + 0, fry, 255 );
setEffAlphaKey( spep_4 + 150, fry, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_4+20  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_4+20  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_4 +32, 190006, 72, 0x100, -1, 0, 0, 540);    -- ゴゴゴゴ

setEffMoveKey(  spep_4 +32,  ctgogo,  0,  540);
setEffMoveKey(  spep_4 +104,  ctgogo,  0,  540);

setEffAlphaKey( spep_4 +32, ctgogo, 0 );
setEffAlphaKey( spep_4 + 33, ctgogo, 255 );
setEffAlphaKey( spep_4 + 94, ctgogo, 255 );
setEffAlphaKey( spep_4 + 96, ctgogo, 255 );
setEffAlphaKey( spep_4 + 98, ctgogo, 255 );
setEffAlphaKey( spep_4 + 100, ctgogo, 191 );
setEffAlphaKey( spep_4 + 102, ctgogo, 128 );
setEffAlphaKey( spep_4 + 104, ctgogo, 64 );

setEffRotateKey(  spep_4 +32,  ctgogo,  0);
setEffRotateKey(  spep_4 +104,  ctgogo,  0);

setEffScaleKey(  spep_4 +32,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4 +94,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_4 +104,  ctgogo, -1.07, 1.07 );

--おと
--playSe( spep_4 + 0, 44 );  --迫る
--setSeVolume( spep_4 + 0, 44, 85 );
playSe( spep_4 + 0, 1003 );  --迫る
setSeVolume( spep_4 + 0, 1003, 120 );
playSe( spep_4 + 0, 8 );  --迫る
setSeVolume( spep_4 + 0, 8, 85 );
playSe( spep_4 + 32, 1018 );  --ごごご
playSe( spep_4 + 104, 1072 );  --迫る

--白フェード
entryFade( spep_4 + 142, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_5 = spep_4 + 150;


------------------------------------------------------
-- 気弾発射
------------------------------------------------------

-- ** エフェクト等 ** --
ef_ki = entryEffect( spep_5 + 0, SP_07,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, ef_ki, 0, 0 , 0 );
setEffMoveKey( spep_5 + 156, ef_ki, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, ef_ki, -1.0, 1.0 );
setEffScaleKey( spep_5 + 156, ef_ki, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, ef_ki, 0 );
setEffRotateKey( spep_5 + 156, ef_ki, 0 );
setEffAlphaKey( spep_5 + 0, ef_ki, 255 );
setEffAlphaKey( spep_5 + 154, ef_ki, 255 );
setEffAlphaKey( spep_5 + 155, ef_ki, 255 );
setEffAlphaKey( spep_5 + 156, ef_ki, 0 );

--文字エントリー
shuchusen2 = entryEffectLife( spep_5  + 68,  906, 88, 0x100, -1, 0, 0, 100 );

setEffMoveKey( spep_5  + 68, shuchusen2, 0, 100 , 0 );
setEffMoveKey( spep_5  + 156, shuchusen2, 0, 100 , 0 );

setEffScaleKey( spep_5  + 68, shuchusen2, 1.17, 1.57 );
setEffScaleKey( spep_5  + 156, shuchusen2, 1.17, 1.57 );

setEffRotateKey( spep_5  + 68, shuchusen2, 0 );
setEffRotateKey( spep_5  + 156, shuchusen2, 0 );

setEffAlphaKey( spep_5  + 68, shuchusen2, 0 );
setEffAlphaKey( spep_5  + 69, shuchusen2, 255 );
setEffAlphaKey( spep_5  + 70, shuchusen2, 255 );
setEffAlphaKey( spep_5  + 154, shuchusen2, 255 );
setEffAlphaKey( spep_5  + 155, shuchusen2, 255 );
setEffAlphaKey( spep_5  + 156, shuchusen2, 0 );


--白フェード
entryFade( spep_5 + 69, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade
entryFade( spep_5 + 156, 0, 0, 4, fcolor_r, fcolor_g, fcolor_b, 180 );  --white fade

--黒背景
entryFadeBg( spep_5, 0, 160, 0, 10, 10, 10, 255);       -- ベース暗め　背景



-- ** 音 ** --
playSe( spep_5 + 170 -150, 1154 );  --溜める
playSe( spep_5 + 228 -150, 1017 );  --投げる
playSe( spep_5 + 236 -150, 1017 );  --投げる
playSe( spep_5 + 254 -150, 1017 );  --投げる
playSe( spep_5 + 254 -150, 1073 );  --向かう

--次の準備
spep_6 = spep_5 + 156;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
fry = entryEffect( spep_6 + 0, SP_08,  0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fry, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, fry, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, fry, -1.0, 1.0 );
setEffScaleKey( spep_6 + 200, fry, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fry, 0 );
setEffRotateKey( spep_6 + 200, fry, 0 );
setEffAlphaKey( spep_6 + 0, fry, 255 );
setEffAlphaKey( spep_6 + 200, fry, 255 );

--文字エントリー
shuchusen3 = entryEffectLife( spep_6 + 0,  906, 200, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_6 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_6 + 200, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen3, 1.17, 1.57 );
setEffScaleKey( spep_6 + 200, shuchusen3, 1.17, 1.57 );

setEffRotateKey( spep_6 + 0, shuchusen3, 0 );
setEffRotateKey( spep_6 + 200, shuchusen3, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_6 + 200, shuchusen3, 255 );

-- ** 音 ** --
playSe( spep_6 + 342 -150 -156, 1024 );  --当たる
playSe( spep_6 + 350 -150 -156, 1024 );  --当たる
playSe( spep_6 + 366 -150 -156, 1024 );  --当たる
playSe( spep_6 + 382 -150 -156, 1024 );  --当たる

-- ** ダメージ表示 ** --
dealDamage(spep_6 + 42);
endPhase( spep_6 + 190 );


end

