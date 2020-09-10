--4019750:超サイヤ人ケフラ_ギガンティックキャノンボール
--sp_effect_b4_00148

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
SP_01=	155522	;--	冒頭〜横ダッシュパンチ・手前
SP_02=	155523	;--	冒頭〜横ダッシュパンチ・奥
SP_03=	155524	;--	連打・手前
SP_04=	155525	;--	連打・奥
SP_05=	155526	;--	溜め〜発射
SP_06=	155527	;--	爆発・手前
SP_07=	155528	;--	爆発・奥

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


kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭〜横ダッシュパンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 286, punching_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, punching_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, punching_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punching_f, 0 );
setEffRotateKey( spep_0 + 286, punching_f, 0 );
setEffAlphaKey( spep_0 + 0, punching_f, 255 );
setEffAlphaKey( spep_0 + 286, punching_f, 255 );

-- ** エフェクト等 ** --
punching_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 286, punching_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, punching_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, punching_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punching_b, 0 );
setEffRotateKey( spep_0 + 286, punching_b, 0 );
setEffAlphaKey( spep_0 + 0, punching_b, 255 );
setEffAlphaKey( spep_0 + 286, punching_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -2 + 49, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 118.3, 114.5 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 124.9, 112.8 , 0 );
setMoveKey( spep_0-3 + 4, 1, 131.4, 111.1 , 0 );
setMoveKey( spep_0-3 + 6, 1, 137.9, 109.3 , 0 );
setMoveKey( spep_0-3 + 8, 1, 144.4, 107.4 , 0 );
setMoveKey( spep_0-3 + 10, 1, 150.9, 105.5 , 0 );
setMoveKey( spep_0-3 + 12, 1, 157.4, 103.4 , 0 );
setMoveKey( spep_0-3 + 14, 1, 164, 101.3 , 0 );
setMoveKey( spep_0-3 + 16, 1, 170.6, 99.1 , 0 );
setMoveKey( spep_0-3 + 18, 1, 177.3, 96.8 , 0 );
setMoveKey( spep_0-3 + 20, 1, 184, 94.4 , 0 );
setMoveKey( spep_0-3 + 22, 1, 190.9, 91.9 , 0 );
setMoveKey( spep_0-3 + 24, 1, 197.8, 89.3 , 0 );
setMoveKey( spep_0-3 + 26, 1, 204.9, 86.6 , 0 );
setMoveKey( spep_0-3 + 28, 1, 212.1, 83.8 , 0 );
setMoveKey( spep_0-3 + 30, 1, 219.4, 81 , 0 );
setMoveKey( spep_0-3 + 32, 1, 226.9, 78 , 0 );
setMoveKey( spep_0-3 + 34, 1, 234.6, 75 , 0 );
setMoveKey( spep_0-3 + 36, 1, 242.5, 71.8 , 0 );
setMoveKey( spep_0-3 + 38, 1, 250.5, 68.5 , 0 );
setMoveKey( spep_0-3 + 40, 1, 258.8, 65.2 , 0 );
setMoveKey( spep_0-3 + 42, 1, 267.2, 61.7 , 0 );
setMoveKey( spep_0-3 + 44, 1, 275.9, 58.2 , 0 );
setMoveKey( spep_0-3 + 46, 1, 284.9, 54.5 , 0 );
setMoveKey( spep_0-2 + 49, 1, 294.1, 50.7 , 0 );


setScaleKey( spep_0 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 1, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 2, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 6, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 7, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 8, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 12, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 14, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 18, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 20, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 22, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 24, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 28, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 30, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 32, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 34, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 36, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 38, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 40, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 42, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 44, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_0-2 + 49, 1, 0.48, 0.48 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0-2 + 49, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 290, 0,  0, 0, 0, 255 ); --くろ 背景
--SE
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 56 );
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 32 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 56 );
SE0=playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 56 );
SE1=playSe( spep_0 + 48, 44 );
setSeVolume( spep_0 + 48, 44, 79 );
SE2=playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 56 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1175, 0 );
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

--敵の動き
setDisp( spep_0-3 + 218, 1, 1 );
setDisp( spep_0-3 + 288, 1, 0 );

changeAnime( spep_0-3 + 218, 1, 117 );
changeAnime( spep_0-3 + 244, 1, 108 );

setMoveKey( spep_0-3 + 218, 1, 807.4, -23.8 , 0 );
setMoveKey( spep_0-3 + 220, 1, 727.4, -23.8 , 0 );
setMoveKey( spep_0-3 + 222, 1, 678.5, -22.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, 623.9, -20.7 , 0 );
setMoveKey( spep_0-3 + 226, 1, 563.5, -19.1 , 0 );
setMoveKey( spep_0-3 + 228, 1, 497.4, -17.6 , 0 );
setMoveKey( spep_0-3 + 230, 1, 448.8, -16.1 , 0 );
setMoveKey( spep_0-3 + 232, 1, 396.4, -14.6 , 0 );
setMoveKey( spep_0-3 + 234, 1, 340.4, -13.1 , 0 );
setMoveKey( spep_0-3 + 236, 1, 280.8, -11.6 , 0 );
setMoveKey( spep_0-3 + 238, 1, 217.5, -10.1 , 0 );
setMoveKey( spep_0-3 + 240, 1, 150.6, -8.7 , 0 );
setMoveKey( spep_0-3 + 242, 1, 80.1, -7.4 , 0 );
setMoveKey( spep_0-3 + 243, 1, 80.1, -7.4 , 0 );

setMoveKey( spep_0-3 + 244, 1, 141.2, 10.7 , 0 );
setMoveKey( spep_0-3 + 246, 1, 122.3, 45 , 0 );
setMoveKey( spep_0-3 + 248, 1, 144.6, 8.9 , 0 );
setMoveKey( spep_0-3 + 250, 1, 138.2, -7.9 , 0 );
setMoveKey( spep_0-3 + 252, 1, 135.5, 7.4 , 0 );
setMoveKey( spep_0-3 + 254, 1, 134.2, 3.8 , 0 );
setMoveKey( spep_0-3 + 256, 1, 151.3, 6.7 , 0 );
setMoveKey( spep_0-3 + 258, 1, 162.7, -3.2 , 0 );
setMoveKey( spep_0-3 + 260, 1, 174.1, 15.7 , 0 );
setMoveKey( spep_0-3 + 262, 1, 194.9, 5.8 , 0 );
setMoveKey( spep_0-3 + 264, 1, 209.2, 5.5 , 0 );
setMoveKey( spep_0-3 + 266, 1, 216.7, 5.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, 226.5, 5.1 , 0 );
setMoveKey( spep_0-3 + 270, 1, 250.9, 4.8 , 0 );
setMoveKey( spep_0-3 + 272, 1, 290.1, 4.1 , 0 );
setMoveKey( spep_0-3 + 274, 1, 345.1, 3.2 , 0 );
setMoveKey( spep_0-3 + 276, 1, 477.7, -44.7 , 0 );
setMoveKey( spep_0-3 + 278, 1, 625.5, -97.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, 788.9, -154.9 , 0 );
setMoveKey( spep_0-3 + 282, 1, 968.3, -217.4 , 0 );
setMoveKey( spep_0-3 + 284, 1, 1163.9, -284.6 , 0 );
setMoveKey( spep_0-3 + 286, 1, 1376, -356.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, 1602.6, -432.3 , 0 );

setScaleKey( spep_0-3 + 218, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 220, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 222, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 224, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 226, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 228, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 230, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 232, 1, 0.92, 0.92 );
setScaleKey( spep_0-3 + 234, 1, 0.95, 0.95 );
setScaleKey( spep_0-3 + 236, 1, 0.99, 0.99 );
setScaleKey( spep_0-3 + 238, 1, 1.02, 1.02 );
setScaleKey( spep_0-3 + 240, 1, 1.06, 1.06 );
setScaleKey( spep_0-3 + 242, 1, 1.09, 1.09 );
setScaleKey( spep_0-3 + 243, 1, 1.09, 1.09 );

setScaleKey( spep_0-3 + 244, 1, 3.58, 3.58 );
setScaleKey( spep_0-3 + 246, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 248, 1, 2.79, 2.79 );
setScaleKey( spep_0-3 + 250, 1, 2.39, 2.39 );
setScaleKey( spep_0-3 + 252, 1, 2, 2 );
setScaleKey( spep_0-3 + 254, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 256, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 258, 1, 1.96, 1.96 );
setScaleKey( spep_0-3 + 260, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 262, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 264, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 266, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 268, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 270, 1, 2.11, 2.11 );
setScaleKey( spep_0-3 + 272, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 274, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 276, 1, 3.42, 3.42 );
setScaleKey( spep_0-3 + 278, 1, 4.23, 4.23 );
setScaleKey( spep_0-3 + 280, 1, 5.12, 5.12 );
setScaleKey( spep_0-3 + 282, 1, 6.08, 6.08 );
setScaleKey( spep_0-3 + 284, 1, 7.11, 7.11 );
setScaleKey( spep_0-3 + 286, 1, 8.23, 8.23 );
setScaleKey( spep_0-3 + 288, 1, 9.41, 9.41 );

setRotateKey( spep_0-3 + 218, 1, 0 );
setRotateKey( spep_0-3 + 288, 1, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_0-3 + 244,  10016, 24, 0x100, -1, 0, 14.3, 361.2 );

setEffMoveKey( spep_0-3 + 244, ctzun, 14.3, 361.2 , 0 );
setEffMoveKey( spep_0-3 + 246, ctzun, 14.5, 360.9 , 0 );
setEffMoveKey( spep_0-3 + 248, ctzun, 5.7, 367.6 , 0 );
setEffMoveKey( spep_0-3 + 250, ctzun, 14.9, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 252, ctzun, 6.8, 366.7 , 0 );
setEffMoveKey( spep_0-3 + 254, ctzun, 14.7, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 256, ctzun, 7.1, 366.4 , 0 );
setEffMoveKey( spep_0-3 + 258, ctzun, 14.6, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 260, ctzun, 7.3, 366.1 , 0 );
setEffMoveKey( spep_0-3 + 262, ctzun, 7.5, 366 , 0 );
setEffMoveKey( spep_0-3 + 264, ctzun, 14.5, 360.9 , 0 );
setEffMoveKey( spep_0-3 + 266, ctzun, 7.8, 365.9 , 0 );
setEffMoveKey( spep_0-3 + 268, ctzun, 14.4, 361 , 0 );

setEffScaleKey( spep_0-3 + 244, ctzun, 1.43, 1.43 );
setEffScaleKey( spep_0-3 + 246, ctzun, 4.17, 4.17 );
setEffScaleKey( spep_0-3 + 248, ctzun, 3.8, 3.8 );
setEffScaleKey( spep_0-3 + 250, ctzun, 3.42, 3.42 );
setEffScaleKey( spep_0-3 + 252, ctzun, 3.34, 3.34 );
setEffScaleKey( spep_0-3 + 254, ctzun, 3.26, 3.26 );
setEffScaleKey( spep_0-3 + 256, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 258, ctzun, 3.09, 3.09 );
setEffScaleKey( spep_0-3 + 260, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_0-3 + 262, ctzun, 2.93, 2.93 );
setEffScaleKey( spep_0-3 + 264, ctzun, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 266, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_0-3 + 268, ctzun, 2.69, 2.69 );

setEffRotateKey( spep_0-3 + 244, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 254, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 256, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 260, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 262, ctzun, -5.8 );
setEffRotateKey( spep_0-3 + 264, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 266, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 268, ctzun, -5.6 );

setEffAlphaKey( spep_0-3 + 244, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 250, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 252, ctzun, 244 );
setEffAlphaKey( spep_0-3 + 254, ctzun, 234 );
setEffAlphaKey( spep_0-3 + 256, ctzun, 223 );
setEffAlphaKey( spep_0-3 + 258, ctzun, 213 );
setEffAlphaKey( spep_0-3 + 260, ctzun, 202 );
setEffAlphaKey( spep_0-3 + 262, ctzun, 191 );
setEffAlphaKey( spep_0-3 + 264, ctzun, 132 );
setEffAlphaKey( spep_0-3 + 266, ctzun, 72 );
setEffAlphaKey( spep_0-3 + 268, ctzun, 13 );

--SE
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 56 );
playSe( spep_0 + 111, 1192 );
setSeVolume( spep_0 + 111, 1192, 0 );
setSeVolume( spep_0 + 116, 1192, 0 );
setSeVolume( spep_0 + 117, 1192, 63.2 );
setSeVolume( spep_0 + 118, 1192, 126.4 );
setSeVolume( spep_0 + 119, 1192, 189.6 );
setSeVolume( spep_0 + 120, 1192, 252.8 );
setSeVolume( spep_0 + 121, 1192, 316 );
playSe( spep_0 + 118, 1111 );
setSeVolume( spep_0 + 118, 1111, 200 );
playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 56 );
se_1153 = playSe( spep_0 + 120, 1153 );
setSeVolume( spep_0 + 120, 1153, 40 );
playSe( spep_0 + 124, 1111 );
playSe( spep_0 + 140, 1182 );
setSeVolume( spep_0 + 140, 1182, 126 );
playSe( spep_0 + 140, 9 );
playSe( spep_0 + 140, 1183 );
se_1116 = playSe( spep_0 + 176, 1116 );
playSe( spep_0 + 188, 1167 );
setSeVolume( spep_0 + 188, 1167, 54 );
playSe( spep_0 + 239, 1003 );
playSe( spep_0 + 246, 1010 );
playSe( spep_0 + 248, 1187 );


stopSe( spep_0 + 162, se_1175, 0 );
stopSe( spep_0 + 130, se_1153, 8 );
stopSe( spep_0 + 212, se_1116, 19 );

--次の準備
spep_1=spep_0+286;

------------------------------------------------------
-- 連打
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 150, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 150, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 150, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 150, rush_b, 255 );

--敵の動き
setDisp( spep_1-3 + 100, 1, 1 );
setDisp( spep_1-3 + 148, 1, 0 );

changeAnime( spep_1-3 + 100, 1, 108 );
changeAnime( spep_1-3 + 106, 1, 105 );

setMoveKey( spep_1-3 + 100, 1, 22.7, 45.1 , 0 );
setMoveKey( spep_1-3 + 102, 1, 44.3, 29.4 , 0 );
setMoveKey( spep_1-3 + 104, 1, 61.9, 9.7 , 0 );
setMoveKey( spep_1-3 + 105, 1, 61.9, 9.7 , 0 );

setMoveKey( spep_1-3 + 106, 1, 76.6, 205.7 , 0 );
setMoveKey( spep_1-3 + 108, 1, 82, 220.8 , 0 );
setMoveKey( spep_1-3 + 110, 1, 75.7, 214.7 , 0 );
setMoveKey( spep_1-3 + 112, 1, 86.1, 219.4 , 0 );
setMoveKey( spep_1-3 + 114, 1, 84.8, 206.8 , 0 );
setMoveKey( spep_1-3 + 116, 1, 98.7, 279.9 , 0 );
setMoveKey( spep_1-3 + 118, 1, 96.6, 357.1 , 0 );
setMoveKey( spep_1-3 + 120, 1, 109.5, 336.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 106.3, 327.3 , 0 );
setMoveKey( spep_1-3 + 124, 1, 111.2, 334.4 , 0 );
setMoveKey( spep_1-3 + 126, 1, 108, 325.5 , 0 );
setMoveKey( spep_1-3 + 128, 1, 112.9, 332.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, 105.7, 327.8 , 0 );
setMoveKey( spep_1-3 + 132, 1, 114.6, 331 , 0 );
setMoveKey( spep_1-3 + 134, 1, 115.5, 330.1 , 0 );
setMoveKey( spep_1-3 + 136, 1, 116.3, 329.3 , 0 );
setMoveKey( spep_1-3 + 138, 1, 117.2, 328.5 , 0 );
setMoveKey( spep_1-3 + 140, 1, 118, 327.6 , 0 );
setMoveKey( spep_1-3 + 142, 1, 118.9, 326.8 , 0 );
setMoveKey( spep_1-3 + 144, 1, 119.8, 326 , 0 );
setMoveKey( spep_1-3 + 146, 1, 120.6, 325.3 , 0 );
setMoveKey( spep_1-3 + 148, 1, 121.5, 324.5 , 0 );

setScaleKey( spep_1-3 + 100, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 102, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 104, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 105, 1, 1.62, 1.62 );

setScaleKey( spep_1-3 + 106, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 108, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 110, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 112, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 114, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 116, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 118, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 120, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 122, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 124, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 126, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 128, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 130, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 132, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 134, 1, 0.16, 0.16 );
setScaleKey( spep_1-3 + 136, 1, 0.15, 0.15 );
setScaleKey( spep_1-3 + 138, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 140, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 142, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 144, 1, 0.12, 0.12 );
setScaleKey( spep_1-3 + 146, 1, 0.11, 0.11 );
setScaleKey( spep_1-3 + 148, 1, 0.1, 0.1 );


setRotateKey( spep_1-3 + 100, 1, 0.5 );
setRotateKey( spep_1-3 + 104, 1, 0.5 );
setRotateKey( spep_1-3 + 105, 1, 0.5 );

setRotateKey( spep_1-3 + 106, 1, 7 );
setRotateKey( spep_1-3 + 108, 1, 5.8 );
setRotateKey( spep_1-3 + 110, 1, 4.6 );
setRotateKey( spep_1-3 + 112, 1, 3.5 );
setRotateKey( spep_1-3 + 114, 1, 2.3 );
setRotateKey( spep_1-3 + 116, 1, 1.2 );
setRotateKey( spep_1-3 + 118, 1, 0 );


--文字エントリー
ctdogagaga = entryEffectLife( spep_1 + 0,  10017, 98 -2, 0x100, -1, 0, 22.7, 407.8 );
setEffShake( spep_1 , ctdogagaga, 98-2, 10 );
setEffMoveKey( spep_1 + 0, ctdogagaga, 22.7, 407.8 , 0 );
setEffMoveKey( spep_1 + 2, ctdogagaga, 14.6, 415.6 , 0 );
setEffMoveKey( spep_1 + 4, ctdogagaga, 22.6, 408.6 , 0 );
setEffMoveKey( spep_1 + 6, ctdogagaga, 13.2, 417.5 , 0 );
setEffMoveKey( spep_1 + 8, ctdogagaga, 22.5, 409.3 , 0 );
setEffMoveKey( spep_1 + 10, ctdogagaga, 12.4, 418.9 , 0 );
setEffMoveKey( spep_1 + 12, ctdogagaga, 22.3, 410 , 0 );
setEffMoveKey( spep_1 + 14, ctdogagaga, 12.2, 419.7 , 0 );
setEffMoveKey( spep_1 + 16, ctdogagaga, 22.2, 410.7 , 0 );
setEffMoveKey( spep_1 + 18, ctdogagaga, 11.9, 420.4 , 0 );
setEffMoveKey( spep_1 + 20, ctdogagaga, 22, 411.4 , 0 );
setEffMoveKey( spep_1 + 22, ctdogagaga, 11.7, 421.2 , 0 );
setEffMoveKey( spep_1 + 24, ctdogagaga, 21.8, 412.1 , 0 );
setEffMoveKey( spep_1 + 26, ctdogagaga, 11.4, 422 , 0 );
setEffMoveKey( spep_1 + 28, ctdogagaga, 21.7, 412.9 , 0 );
setEffMoveKey( spep_1 + 30, ctdogagaga, 11.2, 422.8 , 0 );
setEffMoveKey( spep_1 + 32, ctdogagaga, 21.5, 413.6 , 0 );
setEffMoveKey( spep_1 + 34, ctdogagaga, 10.9, 423.6 , 0 );
setEffMoveKey( spep_1 + 36, ctdogagaga, 21.3, 414.3 , 0 );
setEffMoveKey( spep_1 + 38, ctdogagaga, 10.7, 424.4 , 0 );
setEffMoveKey( spep_1 + 40, ctdogagaga, 21.2, 415 , 0 );
setEffMoveKey( spep_1 + 42, ctdogagaga, 10.5, 425.1 , 0 );
setEffMoveKey( spep_1 + 44, ctdogagaga, 21, 415.7 , 0 );
setEffMoveKey( spep_1 + 46, ctdogagaga, 10.2, 425.9 , 0 );
setEffMoveKey( spep_1 + 48, ctdogagaga, 20.8, 416.4 , 0 );
setEffMoveKey( spep_1 + 50, ctdogagaga, 10, 426.7 , 0 );
setEffMoveKey( spep_1 + 52, ctdogagaga, 20.7, 417.2 , 0 );
setEffMoveKey( spep_1 + 54, ctdogagaga, 9.7, 427.5 , 0 );
setEffMoveKey( spep_1 + 56, ctdogagaga, 20.5, 417.9 , 0 );
setEffMoveKey( spep_1 + 58, ctdogagaga, 9.5, 428.3 , 0 );
setEffMoveKey( spep_1 + 60, ctdogagaga, 20.3, 418.6 , 0 );
setEffMoveKey( spep_1 + 62, ctdogagaga, 9.3, 429.1 , 0 );
setEffMoveKey( spep_1 + 64, ctdogagaga, 20.2, 419.3 , 0 );
setEffMoveKey( spep_1 + 66, ctdogagaga, 9, 429.8 , 0 );
setEffMoveKey( spep_1 + 68, ctdogagaga, 20, 420 , 0 );
setEffMoveKey( spep_1 + 70, ctdogagaga, 8.8, 430.6 , 0 );
setEffMoveKey( spep_1 + 72, ctdogagaga, 19.8, 420.7 , 0 );
setEffMoveKey( spep_1 + 74, ctdogagaga, 8.5, 431.4 , 0 );
setEffMoveKey( spep_1 + 76, ctdogagaga, 19.7, 421.5 , 0 );
setEffMoveKey( spep_1 + 78, ctdogagaga, 8.3, 432.2 , 0 );
setEffMoveKey( spep_1 + 80, ctdogagaga, 19.5, 422.2 , 0 );
setEffMoveKey( spep_1 + 82, ctdogagaga, 8.1, 433 , 0 );
setEffMoveKey( spep_1 + 84, ctdogagaga, 19.3, 422.9 , 0 );
setEffMoveKey( spep_1 + 86, ctdogagaga, 7.8, 433.8 , 0 );
setEffMoveKey( spep_1 + 88, ctdogagaga, 19.2, 423.6 , 0 );
setEffMoveKey( spep_1 + 90, ctdogagaga, 7.6, 434.5 , 0 );
setEffMoveKey( spep_1 + 92, ctdogagaga, 19, 424.3 , 0 );
setEffMoveKey( spep_1 + 94, ctdogagaga, 7.3, 435.3 , 0 );
--setEffMoveKey( spep_1 + 96, ctdogagaga, 18.8, 425 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctdogagaga, 18.8, 425.4 , 0 );

setEffScaleKey( spep_1 + 0, ctdogagaga, 2.36, 2.36 );
setEffScaleKey( spep_1 + 2, ctdogagaga, 2.57, 2.57 );
setEffScaleKey( spep_1 + 4, ctdogagaga, 2.78, 2.78 );
setEffScaleKey( spep_1 + 6, ctdogagaga, 2.99, 2.99 );
setEffScaleKey( spep_1 + 8, ctdogagaga, 3.2, 3.2 );
setEffScaleKey( spep_1 + 10, ctdogagaga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 12, ctdogagaga, 3.22, 3.22 );
setEffScaleKey( spep_1 + 14, ctdogagaga, 3.24, 3.24 );
setEffScaleKey( spep_1 + 16, ctdogagaga, 3.25, 3.25 );
setEffScaleKey( spep_1 + 18, ctdogagaga, 3.26, 3.26 );
setEffScaleKey( spep_1 + 20, ctdogagaga, 3.27, 3.27 );
setEffScaleKey( spep_1 + 22, ctdogagaga, 3.28, 3.28 );
setEffScaleKey( spep_1 + 24, ctdogagaga, 3.3, 3.3 );
setEffScaleKey( spep_1 + 26, ctdogagaga, 3.31, 3.31 );
setEffScaleKey( spep_1 + 28, ctdogagaga, 3.32, 3.32 );
setEffScaleKey( spep_1 + 30, ctdogagaga, 3.33, 3.33 );
setEffScaleKey( spep_1 + 32, ctdogagaga, 3.34, 3.34 );
setEffScaleKey( spep_1 + 34, ctdogagaga, 3.35, 3.35 );
setEffScaleKey( spep_1 + 36, ctdogagaga, 3.37, 3.37 );
setEffScaleKey( spep_1 + 38, ctdogagaga, 3.38, 3.38 );
setEffScaleKey( spep_1 + 40, ctdogagaga, 3.39, 3.39 );
setEffScaleKey( spep_1 + 42, ctdogagaga, 3.4, 3.4 );
setEffScaleKey( spep_1 + 44, ctdogagaga, 3.41, 3.41 );
setEffScaleKey( spep_1 + 46, ctdogagaga, 3.42, 3.42 );
setEffScaleKey( spep_1 + 48, ctdogagaga, 3.44, 3.44 );
setEffScaleKey( spep_1 + 50, ctdogagaga, 3.45, 3.45 );
setEffScaleKey( spep_1 + 52, ctdogagaga, 3.46, 3.46 );
setEffScaleKey( spep_1 + 54, ctdogagaga, 3.47, 3.47 );
setEffScaleKey( spep_1 + 56, ctdogagaga, 3.48, 3.48 );
setEffScaleKey( spep_1 + 58, ctdogagaga, 3.49, 3.49 );
setEffScaleKey( spep_1 + 60, ctdogagaga, 3.51, 3.51 );
setEffScaleKey( spep_1 + 62, ctdogagaga, 3.52, 3.52 );
setEffScaleKey( spep_1 + 64, ctdogagaga, 3.53, 3.53 );
setEffScaleKey( spep_1 + 66, ctdogagaga, 3.54, 3.54 );
setEffScaleKey( spep_1 + 68, ctdogagaga, 3.55, 3.55 );
setEffScaleKey( spep_1 + 70, ctdogagaga, 3.56, 3.56 );
setEffScaleKey( spep_1 + 72, ctdogagaga, 3.58, 3.58 );
setEffScaleKey( spep_1 + 74, ctdogagaga, 3.59, 3.59 );
setEffScaleKey( spep_1 + 76, ctdogagaga, 3.6, 3.6 );
setEffScaleKey( spep_1 + 78, ctdogagaga, 3.61, 3.61 );
setEffScaleKey( spep_1 + 80, ctdogagaga, 3.62, 3.62 );
setEffScaleKey( spep_1 + 82, ctdogagaga, 3.64, 3.64 );
setEffScaleKey( spep_1 + 84, ctdogagaga, 3.65, 3.65 );
setEffScaleKey( spep_1 + 86, ctdogagaga, 3.66, 3.66 );
setEffScaleKey( spep_1 + 88, ctdogagaga, 3.67, 3.67 );
setEffScaleKey( spep_1 + 90, ctdogagaga, 3.68, 3.68 );
setEffScaleKey( spep_1 + 92, ctdogagaga, 3.69, 3.69 );
setEffScaleKey( spep_1 + 94, ctdogagaga, 3.71, 3.71 );
--setEffScaleKey( spep_1 + 96, ctdogagaga, 3.72, 3.72 );
setEffScaleKey( spep_1-2 + 98, ctdogagaga, 3.73, 3.73 );

setEffRotateKey( spep_1 + 0, ctdogagaga, -2.4 );
setEffRotateKey( spep_1 + 4, ctdogagaga, -2.4 );
setEffRotateKey( spep_1 + 6, ctdogagaga, -2.3 );
setEffRotateKey( spep_1 + 48, ctdogagaga, -2.3 );
setEffRotateKey( spep_1 + 50, ctdogagaga, -2.4 );
setEffRotateKey( spep_1-2 + 98, ctdogagaga, -2.4 );

setEffAlphaKey( spep_1 + 0, ctdogagaga, 255 );
setEffAlphaKey( spep_1-2 + 98, ctdogagaga, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_1-3 + 106,  10021, 26, 0x100, -1, 0, -71.1, 193.8 );
setEffShake( spep_1-3 + 106 , ctbago, 26, 10 );
setEffMoveKey( spep_1-3 + 106, ctbago, -71.1, 193.8 , 0 );
setEffMoveKey( spep_1-3 + 108, ctbago, -71.2, 192.9 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbago, -70.9, 193.4 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbago, -92.2, 210.7 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbago, -70.9, 193.4 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbago, -92.1, 210.7 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbago, -70.9, 193.4 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbago, -92, 210.6 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbago, -71, 193.4 , 0 );
setEffMoveKey( spep_1-3 + 124, ctbago, -91.6, 210.3 , 0 );
setEffMoveKey( spep_1-3 + 126, ctbago, -70.8, 193.5 , 0 );
setEffMoveKey( spep_1-3 + 128, ctbago, -90.7, 209.7 , 0 );
setEffMoveKey( spep_1-3 + 130, ctbago, -70.6, 193.5 , 0 );
setEffMoveKey( spep_1-3 + 132, ctbago, -70.5, 193.6 , 0 );

setEffScaleKey( spep_1-3 + 106, ctbago, 1.29, 1.29 );
setEffScaleKey( spep_1-3 + 108, ctbago, 3.57, 3.57 );
setEffScaleKey( spep_1-3 + 110, ctbago, 3.2, 3.2 );
setEffScaleKey( spep_1-3 + 112, ctbago, 3.19, 3.19 );
setEffScaleKey( spep_1-3 + 114, ctbago, 3.19, 3.19 );
setEffScaleKey( spep_1-3 + 116, ctbago, 3.18, 3.18 );
setEffScaleKey( spep_1-3 + 118, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_1-3 + 120, ctbago, 3.16, 3.16 );
setEffScaleKey( spep_1-3 + 122, ctbago, 3.16, 3.16 );
setEffScaleKey( spep_1-3 + 124, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_1-3 + 126, ctbago, 3.04, 3.04 );
setEffScaleKey( spep_1-3 + 128, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 130, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_1-3 + 132, ctbago, 2.88, 2.88 );

setEffRotateKey( spep_1-3 + 106, ctbago, -15.3 );
setEffRotateKey( spep_1-3 + 132, ctbago, -15.3 );

setEffAlphaKey( spep_1-3 + 106, ctbago, 255 );
setEffAlphaKey( spep_1-3 + 122, ctbago, 255 );
setEffAlphaKey( spep_1-3 + 124, ctbago, 204 );
setEffAlphaKey( spep_1-3 + 126, ctbago, 153 );
setEffAlphaKey( spep_1-3 + 128, ctbago, 102 );
setEffAlphaKey( spep_1-3 + 130, ctbago, 51 );
setEffAlphaKey( spep_1-3 + 132, ctbago, 0 );

--SE
playSe( spep_1 + 6, 1000 );
playSe( spep_1 + 6, 1010 );
playSe( spep_1 + 8, 1110 );
playSe( spep_1 + 14, 1001 );
playSe( spep_1 + 16, 1000 );
setSeVolume( spep_1 + 16, 1000, 74 );
playSe( spep_1 + 18, 1110 );
setSeVolume( spep_1 + 18, 1110, 80 );
playSe( spep_1 + 24, 1009 );
playSe( spep_1 + 24, 1010 );
playSe( spep_1 + 26, 1110 );
setSeVolume( spep_1 + 26, 1110, 82 );
playSe( spep_1 + 34, 1000 );
setSeVolume( spep_1 + 34, 1000, 64 );
playSe( spep_1 + 36, 1001 );
setSeVolume( spep_1 + 36, 1001, 75 );
playSe( spep_1 + 38, 1110 );
setSeVolume( spep_1 + 38, 1110, 68 );
playSe( spep_1 + 48, 1000 );
playSe( spep_1 + 48, 1009 );
setSeVolume( spep_1 + 48, 1009, 89 );
playSe( spep_1 + 50, 1110 );
setSeVolume( spep_1 + 50, 1110, 85 );
playSe( spep_1 + 60, 1000 );
playSe( spep_1 + 60, 1001 );
playSe( spep_1 + 62, 1110 );
setSeVolume( spep_1 + 62, 1110, 74 );
playSe( spep_1 + 70, 1000 );
setSeVolume( spep_1 + 70, 1000, 81 );
playSe( spep_1 + 70, 1010 );
setSeVolume( spep_1 + 70, 1010, 85 );
playSe( spep_1 + 72, 1110 );
setSeVolume( spep_1 + 72, 1110, 115 );
playSe( spep_1 + 80, 1000 );
setSeVolume( spep_1 + 80, 1000, 60 );
playSe( spep_1 + 80, 1010 );
setSeVolume( spep_1 + 80, 1010, 65 );
playSe( spep_1 + 82, 1110 );
setSeVolume( spep_1 + 82, 1110, 77 );
playSe( spep_1 + 90, 1010 );
playSe( spep_1 + 90, 1110 );
playSe( spep_1 + 104, 1189 );
playSe( spep_1 + 112, 1120 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+150;
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
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 溜め〜発射
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 236, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 236, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 236, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 236, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3+68  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3+68  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +76, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_3 +76,  ctgogo,  0,  510);
setEffMoveKey(  spep_3 +148,  ctgogo,  0,  510);

setEffAlphaKey( spep_3 +76, ctgogo, 0 );
setEffAlphaKey( spep_3 + 77, ctgogo, 255 );
setEffAlphaKey( spep_3 + 78, ctgogo, 255 );
setEffAlphaKey( spep_3 + 142, ctgogo, 255 );
setEffAlphaKey( spep_3 + 144, ctgogo, 191 );
setEffAlphaKey( spep_3 + 146, ctgogo, 112 );
setEffAlphaKey( spep_3 + 148, ctgogo, 64 );

setEffRotateKey(  spep_3 +76,  ctgogo,  0);
setEffRotateKey(  spep_3 +148,  ctgogo,  0);

setEffScaleKey(  spep_3 +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +138,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +148,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_3+68, 1018 );

se_1191 = playSe( spep_3 + 18, 1191 );
se_0017 = playSe( spep_3 + 18, 17 );
setSeVolume( spep_3 + 18, 17, 71 );
se_0063 = playSe( spep_3 + 18, 63 );
playSe( spep_3 + 62, 1202 );
setSeVolume( spep_3 + 62, 1202, 224 );
playSe( spep_3 + 68, 1245 );
setSeVolume( spep_3 + 68, 1245, 54 );
se_1240 = playSe( spep_3 + 68, 1240 );
setSeVolume( spep_3 + 68, 1240, 122 );
se_0017 = playSe( spep_3 + 68, 17 );
setSeVolume( spep_3 + 68, 17, 79 );
playSe( spep_3 + 124, 1072 );
playSe( spep_3 + 136, 9 );
setSeVolume( spep_3 + 136, 9, 0 );
setSeVolume( spep_3 + 137, 9, 3.45 );
setSeVolume( spep_3 + 138, 9, 6.9 );
setSeVolume( spep_3 + 139, 9, 10.34 );
setSeVolume( spep_3 + 140, 9, 13.79 );
setSeVolume( spep_3 + 141, 9, 17.24 );
setSeVolume( spep_3 + 142, 9, 20.69 );
setSeVolume( spep_3 + 143, 9, 24.14 );
setSeVolume( spep_3 + 144, 9, 27.59 );
setSeVolume( spep_3 + 145, 9, 31.03 );
setSeVolume( spep_3 + 146, 9, 34.48 );
setSeVolume( spep_3 + 147, 9, 37.93 );
setSeVolume( spep_3 + 148, 9, 41.38 );
setSeVolume( spep_3 + 149, 9, 44.83 );
setSeVolume( spep_3 + 150, 9, 48.28 );
setSeVolume( spep_3 + 151, 9, 51.72 );
setSeVolume( spep_3 + 152, 9, 55.17 );
setSeVolume( spep_3 + 153, 9, 58.62 );
setSeVolume( spep_3 + 154, 9, 62.07 );
setSeVolume( spep_3 + 155, 9, 65.52 );
setSeVolume( spep_3 + 156, 9, 68.97 );
setSeVolume( spep_3 + 157, 9, 72.41 );
setSeVolume( spep_3 + 158, 9, 75.86 );
setSeVolume( spep_3 + 159, 9, 79.31 );
setSeVolume( spep_3 + 160, 9, 82.76 );
setSeVolume( spep_3 + 161, 9, 86.21 );
setSeVolume( spep_3 + 162, 9, 89.66 );
setSeVolume( spep_3 + 163, 9, 93.10 );
setSeVolume( spep_3 + 164, 9, 96.55 );
setSeVolume( spep_3 + 165, 9, 100 );
playSe( spep_3 + 180, 1003 );
playSe( spep_3 + 184, 1178 );
setSeVolume( spep_3 + 184, 1027, 66 );
playSe( spep_3 + 184, 1064 );
playSe( spep_3 + 184, 1027 );
playSe( spep_3 + 198, 1003 );
playSe( spep_3 + 202, 1021 );
playSe( spep_3 + 202, 1178 );
playSe( spep_3 + 202, 1064 );
playSe( spep_3 + 202, 1027 );
setSeVolume( spep_3 + 202, 1027, 62 );

stopSe( spep_3 + 75, se_1191, 0 );
stopSe( spep_3 + 75, se_0017, 0 );
stopSe( spep_3 + 75, se_0063, 0 );
stopSe( spep_3 + 148, se_1240, 0 );
stopSe( spep_3 + 110, se_0017, 25 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 240, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 236;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 300, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 300, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 300, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 300, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 300, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 300, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 52, 1, 0 );

changeAnime( spep_4, 1, 105 );

setMoveKey( spep_4 + 0, 1, 229.6, -2792.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 202.4, -2440.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, 173, -2055.5 , 0 );
setMoveKey( spep_4-3 + 6, 1, 141.8, -1644.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 109.6, -1216.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 78.4, -789.4 , 0 );
setMoveKey( spep_4-3 + 12, 1, 49.3, -362.4 , 0 );
setMoveKey( spep_4-3 + 14, 1, 17.2, 110.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 15.7, 105.9 , 0 );
setMoveKey( spep_4-3 + 18, 1, 14.3, 101.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 12.9, 96.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 11.7, 92.3 , 0 );
setMoveKey( spep_4-3 + 24, 1, 10.4, 88.2 , 0 );
setMoveKey( spep_4-3 + 26, 1, 9.3, 84.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 8.2, 80.3 , 0 );
setMoveKey( spep_4-3 + 30, 1, 7.2, 76.7 , 0 );
setMoveKey( spep_4-3 + 32, 1, 6.2, 73.3 , 0 );
setMoveKey( spep_4-3 + 34, 1, 5.3, 70.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 4.4, 66.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 3.6, 63.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 2.9, 61.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 2.2, 58.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, 1.6, 56.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 1, 54 , 0 );
setMoveKey( spep_4-3 + 48, 1, 0.6, 51.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 0.1, 49.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, -4.3, 24.1 , 0 );

setScaleKey( spep_4 + 0, 1, 18.23, 18.23 );
--setScaleKey( spep_4-3 + 2, 1, 16.14, 16.14 );
setScaleKey( spep_4-3 + 4, 1, 13.85, 13.85 );
setScaleKey( spep_4-3 + 6, 1, 11.42, 11.42 );
setScaleKey( spep_4-3 + 8, 1, 8.89, 8.89 );
setScaleKey( spep_4-3 + 10, 1, 6.39, 6.39 );
setScaleKey( spep_4-3 + 12, 1, 3.96, 3.96 );
setScaleKey( spep_4-3 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_4-3 + 16, 1, 1.18, 1.18 );
setScaleKey( spep_4-3 + 18, 1, 1.11, 1.11 );
setScaleKey( spep_4-3 + 20, 1, 1.04, 1.04 );
setScaleKey( spep_4-3 + 22, 1, 0.97, 0.97 );
setScaleKey( spep_4-3 + 24, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 26, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 28, 1, 0.79, 0.79 );
setScaleKey( spep_4-3 + 30, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 32, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 34, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 36, 1, 0.58, 0.58 );
setScaleKey( spep_4-3 + 38, 1, 0.53, 0.53 );
setScaleKey( spep_4-3 + 40, 1, 0.49, 0.49 );
setScaleKey( spep_4-3 + 42, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 44, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 48, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 50, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 52, 1, 0.29, 0.29 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 52, 1, 0 );

--SE
playSe( spep_4 + 30, 1046 );
setSeVolume( spep_4 + 30, 1046, 84 );
playSe( spep_4 + 30, 1021 );
se_1118 = playSe( spep_4 + 30, 1118 );
setSeVolume( spep_4 + 30, 1118, 52 );
playSe( spep_4 + 46, 1021 );
playSe( spep_4 + 58, 1011 );
playSe( spep_4 + 74, 1023 );
playSe( spep_4 + 124, 1042 );
playSe( spep_4 + 188, 1023 );
playSe( spep_4 + 188, 1159 );
setSeVolume( spep_4 + 188, 1159, 79 );
playSe( spep_4 + 188, 1067 );
setSeVolume( spep_4 + 188, 1067, 79 );
playSe( spep_4 + 204, 1188 );
setSeVolume( spep_4 + 204, 1188, 0 );
setSeVolume( spep_4 + 205, 1188, 4.76 );
setSeVolume( spep_4 + 206, 1188, 9.52 );
setSeVolume( spep_4 + 207, 1188, 14.29 );
setSeVolume( spep_4 + 208, 1188, 19.05 );
setSeVolume( spep_4 + 209, 1188, 23.81 );
setSeVolume( spep_4 + 210, 1188, 28.57 );
setSeVolume( spep_4 + 211, 1188, 33.33 );
setSeVolume( spep_4 + 212, 1188, 38.10 );
setSeVolume( spep_4 + 213, 1188, 42.86 );
setSeVolume( spep_4 + 214, 1188, 47.62 );
setSeVolume( spep_4 + 215, 1188, 52.38 );
setSeVolume( spep_4 + 216, 1188, 57.14 );
setSeVolume( spep_4 + 217, 1188, 61.9 );
setSeVolume( spep_4 + 218, 1188, 66.67 );
setSeVolume( spep_4 + 219, 1188, 71.43 );
setSeVolume( spep_4 + 220, 1188, 76.19 );
setSeVolume( spep_4 + 221, 1188, 80.95 );
setSeVolume( spep_4 + 222, 1188, 85.71 );
setSeVolume( spep_4 + 223, 1188, 90.48 );
setSeVolume( spep_4 + 224, 1188, 95.24 );
setSeVolume( spep_4 + 225, 1188, 100 );

stopSe( spep_4 + 76, se_1118, 11 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 300, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 190 );
endPhase( spep_4 + 290 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭〜横ダッシュパンチ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
punching_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, punching_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 286, punching_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, punching_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, punching_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punching_f, 0 );
setEffRotateKey( spep_0 + 286, punching_f, 0 );
setEffAlphaKey( spep_0 + 0, punching_f, 255 );
setEffAlphaKey( spep_0 + 286, punching_f, 255 );

-- ** エフェクト等 ** --
punching_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, punching_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 286, punching_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, punching_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 286, punching_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, punching_b, 0 );
setEffRotateKey( spep_0 + 286, punching_b, 0 );
setEffAlphaKey( spep_0 + 0, punching_b, 255 );
setEffAlphaKey( spep_0 + 286, punching_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -2 + 49, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 118.3, 114.5 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 124.9, 112.8 , 0 );
setMoveKey( spep_0-3 + 4, 1, 131.4, 111.1 , 0 );
setMoveKey( spep_0-3 + 6, 1, 137.9, 109.3 , 0 );
setMoveKey( spep_0-3 + 8, 1, 144.4, 107.4 , 0 );
setMoveKey( spep_0-3 + 10, 1, 150.9, 105.5 , 0 );
setMoveKey( spep_0-3 + 12, 1, 157.4, 103.4 , 0 );
setMoveKey( spep_0-3 + 14, 1, 164, 101.3 , 0 );
setMoveKey( spep_0-3 + 16, 1, 170.6, 99.1 , 0 );
setMoveKey( spep_0-3 + 18, 1, 177.3, 96.8 , 0 );
setMoveKey( spep_0-3 + 20, 1, 184, 94.4 , 0 );
setMoveKey( spep_0-3 + 22, 1, 190.9, 91.9 , 0 );
setMoveKey( spep_0-3 + 24, 1, 197.8, 89.3 , 0 );
setMoveKey( spep_0-3 + 26, 1, 204.9, 86.6 , 0 );
setMoveKey( spep_0-3 + 28, 1, 212.1, 83.8 , 0 );
setMoveKey( spep_0-3 + 30, 1, 219.4, 81 , 0 );
setMoveKey( spep_0-3 + 32, 1, 226.9, 78 , 0 );
setMoveKey( spep_0-3 + 34, 1, 234.6, 75 , 0 );
setMoveKey( spep_0-3 + 36, 1, 242.5, 71.8 , 0 );
setMoveKey( spep_0-3 + 38, 1, 250.5, 68.5 , 0 );
setMoveKey( spep_0-3 + 40, 1, 258.8, 65.2 , 0 );
setMoveKey( spep_0-3 + 42, 1, 267.2, 61.7 , 0 );
setMoveKey( spep_0-3 + 44, 1, 275.9, 58.2 , 0 );
setMoveKey( spep_0-3 + 46, 1, 284.9, 54.5 , 0 );
setMoveKey( spep_0-2 + 49, 1, 294.1, 50.7 , 0 );


setScaleKey( spep_0 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 1, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 2, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 6, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 7, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 8, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 12, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 14, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 18, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 20, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 22, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 24, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 26, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 28, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 30, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 32, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 34, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 36, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 38, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 40, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 42, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 44, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 46, 1, 0.47, 0.47 );
setScaleKey( spep_0-2 + 49, 1, 0.48, 0.48 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0-2 + 49, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 290, 0,  0, 0, 0, 255 ); --くろ 背景
--SE
playSe( spep_0 + 0, 1036 );
setSeVolume( spep_0 + 0, 1036, 56 );
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 32 );
playSe( spep_0 + 24, 1036 );
setSeVolume( spep_0 + 24, 1036, 56 );
SE0=playSe( spep_0 + 48, 1036 );
setSeVolume( spep_0 + 48, 1036, 56 );
SE1=playSe( spep_0 + 48, 44 );
setSeVolume( spep_0 + 48, 44, 79 );
SE2=playSe( spep_0 + 72, 1036 );
setSeVolume( spep_0 + 72, 1036, 56 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, SE2, 0 );
    stopSe( SP_dodge - 12, se_1175, 0 );
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

--敵の動き
setDisp( spep_0-3 + 218, 1, 1 );
setDisp( spep_0-3 + 288, 1, 0 );

changeAnime( spep_0-3 + 218, 1, 117 );
changeAnime( spep_0-3 + 244, 1, 108 );

setMoveKey( spep_0-3 + 218, 1, 807.4, -23.8 , 0 );
setMoveKey( spep_0-3 + 220, 1, 727.4, -23.8 , 0 );
setMoveKey( spep_0-3 + 222, 1, 678.5, -22.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, 623.9, -20.7 , 0 );
setMoveKey( spep_0-3 + 226, 1, 563.5, -19.1 , 0 );
setMoveKey( spep_0-3 + 228, 1, 497.4, -17.6 , 0 );
setMoveKey( spep_0-3 + 230, 1, 448.8, -16.1 , 0 );
setMoveKey( spep_0-3 + 232, 1, 396.4, -14.6 , 0 );
setMoveKey( spep_0-3 + 234, 1, 340.4, -13.1 , 0 );
setMoveKey( spep_0-3 + 236, 1, 280.8, -11.6 , 0 );
setMoveKey( spep_0-3 + 238, 1, 217.5, -10.1 , 0 );
setMoveKey( spep_0-3 + 240, 1, 150.6, -8.7 , 0 );
setMoveKey( spep_0-3 + 242, 1, 80.1, -7.4 , 0 );
setMoveKey( spep_0-3 + 243, 1, 80.1, -7.4 , 0 );

setMoveKey( spep_0-3 + 244, 1, 141.2, 10.7 , 0 );
setMoveKey( spep_0-3 + 246, 1, 122.3, 45 , 0 );
setMoveKey( spep_0-3 + 248, 1, 144.6, 8.9 , 0 );
setMoveKey( spep_0-3 + 250, 1, 138.2, -7.9 , 0 );
setMoveKey( spep_0-3 + 252, 1, 135.5, 7.4 , 0 );
setMoveKey( spep_0-3 + 254, 1, 134.2, 3.8 , 0 );
setMoveKey( spep_0-3 + 256, 1, 151.3, 6.7 , 0 );
setMoveKey( spep_0-3 + 258, 1, 162.7, -3.2 , 0 );
setMoveKey( spep_0-3 + 260, 1, 174.1, 15.7 , 0 );
setMoveKey( spep_0-3 + 262, 1, 194.9, 5.8 , 0 );
setMoveKey( spep_0-3 + 264, 1, 209.2, 5.5 , 0 );
setMoveKey( spep_0-3 + 266, 1, 216.7, 5.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, 226.5, 5.1 , 0 );
setMoveKey( spep_0-3 + 270, 1, 250.9, 4.8 , 0 );
setMoveKey( spep_0-3 + 272, 1, 290.1, 4.1 , 0 );
setMoveKey( spep_0-3 + 274, 1, 345.1, 3.2 , 0 );
setMoveKey( spep_0-3 + 276, 1, 477.7, -44.7 , 0 );
setMoveKey( spep_0-3 + 278, 1, 625.5, -97.4 , 0 );
setMoveKey( spep_0-3 + 280, 1, 788.9, -154.9 , 0 );
setMoveKey( spep_0-3 + 282, 1, 968.3, -217.4 , 0 );
setMoveKey( spep_0-3 + 284, 1, 1163.9, -284.6 , 0 );
setMoveKey( spep_0-3 + 286, 1, 1376, -356.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, 1602.6, -432.3 , 0 );

setScaleKey( spep_0-3 + 218, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 220, 1, 0.7, 0.7 );
setScaleKey( spep_0-3 + 222, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 224, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 226, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 228, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 230, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 232, 1, 0.92, 0.92 );
setScaleKey( spep_0-3 + 234, 1, 0.95, 0.95 );
setScaleKey( spep_0-3 + 236, 1, 0.99, 0.99 );
setScaleKey( spep_0-3 + 238, 1, 1.02, 1.02 );
setScaleKey( spep_0-3 + 240, 1, 1.06, 1.06 );
setScaleKey( spep_0-3 + 242, 1, 1.09, 1.09 );
setScaleKey( spep_0-3 + 243, 1, 1.09, 1.09 );

setScaleKey( spep_0-3 + 244, 1, 3.58, 3.58 );
setScaleKey( spep_0-3 + 246, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 248, 1, 2.79, 2.79 );
setScaleKey( spep_0-3 + 250, 1, 2.39, 2.39 );
setScaleKey( spep_0-3 + 252, 1, 2, 2 );
setScaleKey( spep_0-3 + 254, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 256, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 258, 1, 1.96, 1.96 );
setScaleKey( spep_0-3 + 260, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 262, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 264, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 266, 1, 1.92, 1.92 );
setScaleKey( spep_0-3 + 268, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 270, 1, 2.11, 2.11 );
setScaleKey( spep_0-3 + 272, 1, 2.35, 2.35 );
setScaleKey( spep_0-3 + 274, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 276, 1, 3.42, 3.42 );
setScaleKey( spep_0-3 + 278, 1, 4.23, 4.23 );
setScaleKey( spep_0-3 + 280, 1, 5.12, 5.12 );
setScaleKey( spep_0-3 + 282, 1, 6.08, 6.08 );
setScaleKey( spep_0-3 + 284, 1, 7.11, 7.11 );
setScaleKey( spep_0-3 + 286, 1, 8.23, 8.23 );
setScaleKey( spep_0-3 + 288, 1, 9.41, 9.41 );

setRotateKey( spep_0-3 + 218, 1, 0 );
setRotateKey( spep_0-3 + 288, 1, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_0-3 + 244,  10016, 24, 0x100, -1, 0, 14.3, 361.2 );

setEffMoveKey( spep_0-3 + 244, ctzun, 14.3, 361.2 , 0 );
setEffMoveKey( spep_0-3 + 246, ctzun, 14.5, 360.9 , 0 );
setEffMoveKey( spep_0-3 + 248, ctzun, 5.7, 367.6 , 0 );
setEffMoveKey( spep_0-3 + 250, ctzun, 14.9, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 252, ctzun, 6.8, 366.7 , 0 );
setEffMoveKey( spep_0-3 + 254, ctzun, 14.7, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 256, ctzun, 7.1, 366.4 , 0 );
setEffMoveKey( spep_0-3 + 258, ctzun, 14.6, 360.8 , 0 );
setEffMoveKey( spep_0-3 + 260, ctzun, 7.3, 366.1 , 0 );
setEffMoveKey( spep_0-3 + 262, ctzun, 7.5, 366 , 0 );
setEffMoveKey( spep_0-3 + 264, ctzun, 14.5, 360.9 , 0 );
setEffMoveKey( spep_0-3 + 266, ctzun, 7.8, 365.9 , 0 );
setEffMoveKey( spep_0-3 + 268, ctzun, 14.4, 361 , 0 );

setEffScaleKey( spep_0-3 + 244, ctzun, 1.43, 1.43 );
setEffScaleKey( spep_0-3 + 246, ctzun, 4.17, 4.17 );
setEffScaleKey( spep_0-3 + 248, ctzun, 3.8, 3.8 );
setEffScaleKey( spep_0-3 + 250, ctzun, 3.42, 3.42 );
setEffScaleKey( spep_0-3 + 252, ctzun, 3.34, 3.34 );
setEffScaleKey( spep_0-3 + 254, ctzun, 3.26, 3.26 );
setEffScaleKey( spep_0-3 + 256, ctzun, 3.17, 3.17 );
setEffScaleKey( spep_0-3 + 258, ctzun, 3.09, 3.09 );
setEffScaleKey( spep_0-3 + 260, ctzun, 3.01, 3.01 );
setEffScaleKey( spep_0-3 + 262, ctzun, 2.93, 2.93 );
setEffScaleKey( spep_0-3 + 264, ctzun, 2.85, 2.85 );
setEffScaleKey( spep_0-3 + 266, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_0-3 + 268, ctzun, 2.69, 2.69 );

setEffRotateKey( spep_0-3 + 244, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 254, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 256, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 260, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 262, ctzun, -5.8 );
setEffRotateKey( spep_0-3 + 264, ctzun, -5.7 );
setEffRotateKey( spep_0-3 + 266, ctzun, -5.6 );
setEffRotateKey( spep_0-3 + 268, ctzun, -5.6 );

setEffAlphaKey( spep_0-3 + 244, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 250, ctzun, 255 );
setEffAlphaKey( spep_0-3 + 252, ctzun, 244 );
setEffAlphaKey( spep_0-3 + 254, ctzun, 234 );
setEffAlphaKey( spep_0-3 + 256, ctzun, 223 );
setEffAlphaKey( spep_0-3 + 258, ctzun, 213 );
setEffAlphaKey( spep_0-3 + 260, ctzun, 202 );
setEffAlphaKey( spep_0-3 + 262, ctzun, 191 );
setEffAlphaKey( spep_0-3 + 264, ctzun, 132 );
setEffAlphaKey( spep_0-3 + 266, ctzun, 72 );
setEffAlphaKey( spep_0-3 + 268, ctzun, 13 );

--SE
playSe( spep_0 + 96, 1036 );
setSeVolume( spep_0 + 96, 1036, 56 );
playSe( spep_0 + 111, 1192 );
setSeVolume( spep_0 + 111, 1192, 0 );
setSeVolume( spep_0 + 116, 1192, 0 );
setSeVolume( spep_0 + 117, 1192, 63.2 );
setSeVolume( spep_0 + 118, 1192, 126.4 );
setSeVolume( spep_0 + 119, 1192, 189.6 );
setSeVolume( spep_0 + 120, 1192, 252.8 );
setSeVolume( spep_0 + 121, 1192, 316 );
playSe( spep_0 + 118, 1111 );
setSeVolume( spep_0 + 118, 1111, 200 );
playSe( spep_0 + 120, 1036 );
setSeVolume( spep_0 + 120, 1036, 56 );
se_1153 = playSe( spep_0 + 120, 1153 );
setSeVolume( spep_0 + 120, 1153, 40 );
playSe( spep_0 + 124, 1111 );
playSe( spep_0 + 140, 1182 );
setSeVolume( spep_0 + 140, 1182, 126 );
playSe( spep_0 + 140, 9 );
playSe( spep_0 + 140, 1183 );
se_1116 = playSe( spep_0 + 176, 1116 );
playSe( spep_0 + 188, 1167 );
setSeVolume( spep_0 + 188, 1167, 54 );
playSe( spep_0 + 239, 1003 );
playSe( spep_0 + 246, 1010 );
playSe( spep_0 + 248, 1187 );


stopSe( spep_0 + 162, se_1175, 0 );
stopSe( spep_0 + 130, se_1153, 8 );
stopSe( spep_0 + 212, se_1116, 19 );

--次の準備
spep_1=spep_0+286;

------------------------------------------------------
-- 連打
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, rush_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_f, 0 );
setEffRotateKey( spep_1 + 150, rush_f, 0 );
setEffAlphaKey( spep_1 + 0, rush_f, 255 );
setEffAlphaKey( spep_1 + 150, rush_f, 255 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 150, rush_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 150, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, rush_b, 0 );
setEffRotateKey( spep_1 + 150, rush_b, 0 );
setEffAlphaKey( spep_1 + 0, rush_b, 255 );
setEffAlphaKey( spep_1 + 150, rush_b, 255 );

--敵の動き
setDisp( spep_1-3 + 100, 1, 1 );
setDisp( spep_1-3 + 148, 1, 0 );

changeAnime( spep_1-3 + 100, 1, 108 );
changeAnime( spep_1-3 + 106, 1, 105 );

setMoveKey( spep_1-3 + 100, 1, 22.7, 45.1 , 0 );
setMoveKey( spep_1-3 + 102, 1, 44.3, 29.4 , 0 );
setMoveKey( spep_1-3 + 104, 1, 61.9, 9.7 , 0 );
setMoveKey( spep_1-3 + 105, 1, 61.9, 9.7 , 0 );

setMoveKey( spep_1-3 + 106, 1, 76.6, 205.7 , 0 );
setMoveKey( spep_1-3 + 108, 1, 82, 220.8 , 0 );
setMoveKey( spep_1-3 + 110, 1, 75.7, 214.7 , 0 );
setMoveKey( spep_1-3 + 112, 1, 86.1, 219.4 , 0 );
setMoveKey( spep_1-3 + 114, 1, 84.8, 206.8 , 0 );
setMoveKey( spep_1-3 + 116, 1, 98.7, 279.9 , 0 );
setMoveKey( spep_1-3 + 118, 1, 96.6, 357.1 , 0 );
setMoveKey( spep_1-3 + 120, 1, 109.5, 336.2 , 0 );
setMoveKey( spep_1-3 + 122, 1, 106.3, 327.3 , 0 );
setMoveKey( spep_1-3 + 124, 1, 111.2, 334.4 , 0 );
setMoveKey( spep_1-3 + 126, 1, 108, 325.5 , 0 );
setMoveKey( spep_1-3 + 128, 1, 112.9, 332.7 , 0 );
setMoveKey( spep_1-3 + 130, 1, 105.7, 327.8 , 0 );
setMoveKey( spep_1-3 + 132, 1, 114.6, 331 , 0 );
setMoveKey( spep_1-3 + 134, 1, 115.5, 330.1 , 0 );
setMoveKey( spep_1-3 + 136, 1, 116.3, 329.3 , 0 );
setMoveKey( spep_1-3 + 138, 1, 117.2, 328.5 , 0 );
setMoveKey( spep_1-3 + 140, 1, 118, 327.6 , 0 );
setMoveKey( spep_1-3 + 142, 1, 118.9, 326.8 , 0 );
setMoveKey( spep_1-3 + 144, 1, 119.8, 326 , 0 );
setMoveKey( spep_1-3 + 146, 1, 120.6, 325.3 , 0 );
setMoveKey( spep_1-3 + 148, 1, 121.5, 324.5 , 0 );

setScaleKey( spep_1-3 + 100, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 102, 1, 1.39, 1.39 );
setScaleKey( spep_1-3 + 104, 1, 1.62, 1.62 );
setScaleKey( spep_1-3 + 105, 1, 1.62, 1.62 );

setScaleKey( spep_1-3 + 106, 1, 1.64, 1.64 );
setScaleKey( spep_1-3 + 108, 1, 1.43, 1.43 );
setScaleKey( spep_1-3 + 110, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 112, 1, 0.99, 0.99 );
setScaleKey( spep_1-3 + 114, 1, 0.75, 0.75 );
setScaleKey( spep_1-3 + 116, 1, 0.49, 0.49 );
setScaleKey( spep_1-3 + 118, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 120, 1, 0.22, 0.22 );
setScaleKey( spep_1-3 + 122, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 124, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 126, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 128, 1, 0.19, 0.19 );
setScaleKey( spep_1-3 + 130, 1, 0.18, 0.18 );
setScaleKey( spep_1-3 + 132, 1, 0.17, 0.17 );
setScaleKey( spep_1-3 + 134, 1, 0.16, 0.16 );
setScaleKey( spep_1-3 + 136, 1, 0.15, 0.15 );
setScaleKey( spep_1-3 + 138, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 140, 1, 0.14, 0.14 );
setScaleKey( spep_1-3 + 142, 1, 0.13, 0.13 );
setScaleKey( spep_1-3 + 144, 1, 0.12, 0.12 );
setScaleKey( spep_1-3 + 146, 1, 0.11, 0.11 );
setScaleKey( spep_1-3 + 148, 1, 0.1, 0.1 );


setRotateKey( spep_1-3 + 100, 1, 0.5 );
setRotateKey( spep_1-3 + 104, 1, 0.5 );
setRotateKey( spep_1-3 + 105, 1, 0.5 );

setRotateKey( spep_1-3 + 106, 1, 7 );
setRotateKey( spep_1-3 + 108, 1, 5.8 );
setRotateKey( spep_1-3 + 110, 1, 4.6 );
setRotateKey( spep_1-3 + 112, 1, 3.5 );
setRotateKey( spep_1-3 + 114, 1, 2.3 );
setRotateKey( spep_1-3 + 116, 1, 1.2 );
setRotateKey( spep_1-3 + 118, 1, 0 );


--文字エントリー
ctdogagaga = entryEffectLife( spep_1 + 0,  10017, 98 -2, 0x100, -1, 0, 22.7, 407.8 );
setEffShake( spep_1 , ctdogagaga, 98-2, 10 );
setEffMoveKey( spep_1 + 0, ctdogagaga, 22.7, 407.8 , 0 );
setEffMoveKey( spep_1 + 2, ctdogagaga, 14.6, 415.6 , 0 );
setEffMoveKey( spep_1 + 4, ctdogagaga, 22.6, 408.6 , 0 );
setEffMoveKey( spep_1 + 6, ctdogagaga, 13.2, 417.5 , 0 );
setEffMoveKey( spep_1 + 8, ctdogagaga, 22.5, 409.3 , 0 );
setEffMoveKey( spep_1 + 10, ctdogagaga, 12.4, 418.9 , 0 );
setEffMoveKey( spep_1 + 12, ctdogagaga, 22.3, 410 , 0 );
setEffMoveKey( spep_1 + 14, ctdogagaga, 12.2, 419.7 , 0 );
setEffMoveKey( spep_1 + 16, ctdogagaga, 22.2, 410.7 , 0 );
setEffMoveKey( spep_1 + 18, ctdogagaga, 11.9, 420.4 , 0 );
setEffMoveKey( spep_1 + 20, ctdogagaga, 22, 411.4 , 0 );
setEffMoveKey( spep_1 + 22, ctdogagaga, 11.7, 421.2 , 0 );
setEffMoveKey( spep_1 + 24, ctdogagaga, 21.8, 412.1 , 0 );
setEffMoveKey( spep_1 + 26, ctdogagaga, 11.4, 422 , 0 );
setEffMoveKey( spep_1 + 28, ctdogagaga, 21.7, 412.9 , 0 );
setEffMoveKey( spep_1 + 30, ctdogagaga, 11.2, 422.8 , 0 );
setEffMoveKey( spep_1 + 32, ctdogagaga, 21.5, 413.6 , 0 );
setEffMoveKey( spep_1 + 34, ctdogagaga, 10.9, 423.6 , 0 );
setEffMoveKey( spep_1 + 36, ctdogagaga, 21.3, 414.3 , 0 );
setEffMoveKey( spep_1 + 38, ctdogagaga, 10.7, 424.4 , 0 );
setEffMoveKey( spep_1 + 40, ctdogagaga, 21.2, 415 , 0 );
setEffMoveKey( spep_1 + 42, ctdogagaga, 10.5, 425.1 , 0 );
setEffMoveKey( spep_1 + 44, ctdogagaga, 21, 415.7 , 0 );
setEffMoveKey( spep_1 + 46, ctdogagaga, 10.2, 425.9 , 0 );
setEffMoveKey( spep_1 + 48, ctdogagaga, 20.8, 416.4 , 0 );
setEffMoveKey( spep_1 + 50, ctdogagaga, 10, 426.7 , 0 );
setEffMoveKey( spep_1 + 52, ctdogagaga, 20.7, 417.2 , 0 );
setEffMoveKey( spep_1 + 54, ctdogagaga, 9.7, 427.5 , 0 );
setEffMoveKey( spep_1 + 56, ctdogagaga, 20.5, 417.9 , 0 );
setEffMoveKey( spep_1 + 58, ctdogagaga, 9.5, 428.3 , 0 );
setEffMoveKey( spep_1 + 60, ctdogagaga, 20.3, 418.6 , 0 );
setEffMoveKey( spep_1 + 62, ctdogagaga, 9.3, 429.1 , 0 );
setEffMoveKey( spep_1 + 64, ctdogagaga, 20.2, 419.3 , 0 );
setEffMoveKey( spep_1 + 66, ctdogagaga, 9, 429.8 , 0 );
setEffMoveKey( spep_1 + 68, ctdogagaga, 20, 420 , 0 );
setEffMoveKey( spep_1 + 70, ctdogagaga, 8.8, 430.6 , 0 );
setEffMoveKey( spep_1 + 72, ctdogagaga, 19.8, 420.7 , 0 );
setEffMoveKey( spep_1 + 74, ctdogagaga, 8.5, 431.4 , 0 );
setEffMoveKey( spep_1 + 76, ctdogagaga, 19.7, 421.5 , 0 );
setEffMoveKey( spep_1 + 78, ctdogagaga, 8.3, 432.2 , 0 );
setEffMoveKey( spep_1 + 80, ctdogagaga, 19.5, 422.2 , 0 );
setEffMoveKey( spep_1 + 82, ctdogagaga, 8.1, 433 , 0 );
setEffMoveKey( spep_1 + 84, ctdogagaga, 19.3, 422.9 , 0 );
setEffMoveKey( spep_1 + 86, ctdogagaga, 7.8, 433.8 , 0 );
setEffMoveKey( spep_1 + 88, ctdogagaga, 19.2, 423.6 , 0 );
setEffMoveKey( spep_1 + 90, ctdogagaga, 7.6, 434.5 , 0 );
setEffMoveKey( spep_1 + 92, ctdogagaga, 19, 424.3 , 0 );
setEffMoveKey( spep_1 + 94, ctdogagaga, 7.3, 435.3 , 0 );
--setEffMoveKey( spep_1 + 96, ctdogagaga, 18.8, 425 , 0 );
setEffMoveKey( spep_1 -3 + 98, ctdogagaga, 18.8, 425.4 , 0 );

setEffScaleKey( spep_1 + 0, ctdogagaga, 2.36, 2.36 );
setEffScaleKey( spep_1 + 2, ctdogagaga, 2.57, 2.57 );
setEffScaleKey( spep_1 + 4, ctdogagaga, 2.78, 2.78 );
setEffScaleKey( spep_1 + 6, ctdogagaga, 2.99, 2.99 );
setEffScaleKey( spep_1 + 8, ctdogagaga, 3.2, 3.2 );
setEffScaleKey( spep_1 + 10, ctdogagaga, 3.21, 3.21 );
setEffScaleKey( spep_1 + 12, ctdogagaga, 3.22, 3.22 );
setEffScaleKey( spep_1 + 14, ctdogagaga, 3.24, 3.24 );
setEffScaleKey( spep_1 + 16, ctdogagaga, 3.25, 3.25 );
setEffScaleKey( spep_1 + 18, ctdogagaga, 3.26, 3.26 );
setEffScaleKey( spep_1 + 20, ctdogagaga, 3.27, 3.27 );
setEffScaleKey( spep_1 + 22, ctdogagaga, 3.28, 3.28 );
setEffScaleKey( spep_1 + 24, ctdogagaga, 3.3, 3.3 );
setEffScaleKey( spep_1 + 26, ctdogagaga, 3.31, 3.31 );
setEffScaleKey( spep_1 + 28, ctdogagaga, 3.32, 3.32 );
setEffScaleKey( spep_1 + 30, ctdogagaga, 3.33, 3.33 );
setEffScaleKey( spep_1 + 32, ctdogagaga, 3.34, 3.34 );
setEffScaleKey( spep_1 + 34, ctdogagaga, 3.35, 3.35 );
setEffScaleKey( spep_1 + 36, ctdogagaga, 3.37, 3.37 );
setEffScaleKey( spep_1 + 38, ctdogagaga, 3.38, 3.38 );
setEffScaleKey( spep_1 + 40, ctdogagaga, 3.39, 3.39 );
setEffScaleKey( spep_1 + 42, ctdogagaga, 3.4, 3.4 );
setEffScaleKey( spep_1 + 44, ctdogagaga, 3.41, 3.41 );
setEffScaleKey( spep_1 + 46, ctdogagaga, 3.42, 3.42 );
setEffScaleKey( spep_1 + 48, ctdogagaga, 3.44, 3.44 );
setEffScaleKey( spep_1 + 50, ctdogagaga, 3.45, 3.45 );
setEffScaleKey( spep_1 + 52, ctdogagaga, 3.46, 3.46 );
setEffScaleKey( spep_1 + 54, ctdogagaga, 3.47, 3.47 );
setEffScaleKey( spep_1 + 56, ctdogagaga, 3.48, 3.48 );
setEffScaleKey( spep_1 + 58, ctdogagaga, 3.49, 3.49 );
setEffScaleKey( spep_1 + 60, ctdogagaga, 3.51, 3.51 );
setEffScaleKey( spep_1 + 62, ctdogagaga, 3.52, 3.52 );
setEffScaleKey( spep_1 + 64, ctdogagaga, 3.53, 3.53 );
setEffScaleKey( spep_1 + 66, ctdogagaga, 3.54, 3.54 );
setEffScaleKey( spep_1 + 68, ctdogagaga, 3.55, 3.55 );
setEffScaleKey( spep_1 + 70, ctdogagaga, 3.56, 3.56 );
setEffScaleKey( spep_1 + 72, ctdogagaga, 3.58, 3.58 );
setEffScaleKey( spep_1 + 74, ctdogagaga, 3.59, 3.59 );
setEffScaleKey( spep_1 + 76, ctdogagaga, 3.6, 3.6 );
setEffScaleKey( spep_1 + 78, ctdogagaga, 3.61, 3.61 );
setEffScaleKey( spep_1 + 80, ctdogagaga, 3.62, 3.62 );
setEffScaleKey( spep_1 + 82, ctdogagaga, 3.64, 3.64 );
setEffScaleKey( spep_1 + 84, ctdogagaga, 3.65, 3.65 );
setEffScaleKey( spep_1 + 86, ctdogagaga, 3.66, 3.66 );
setEffScaleKey( spep_1 + 88, ctdogagaga, 3.67, 3.67 );
setEffScaleKey( spep_1 + 90, ctdogagaga, 3.68, 3.68 );
setEffScaleKey( spep_1 + 92, ctdogagaga, 3.69, 3.69 );
setEffScaleKey( spep_1 + 94, ctdogagaga, 3.71, 3.71 );
--setEffScaleKey( spep_1 + 96, ctdogagaga, 3.72, 3.72 );
setEffScaleKey( spep_1-2 + 98, ctdogagaga, 3.73, 3.73 );

setEffRotateKey( spep_1 + 0, ctdogagaga, -2.4 );
setEffRotateKey( spep_1 + 4, ctdogagaga, -2.4 );
setEffRotateKey( spep_1 + 6, ctdogagaga, -2.3 );
setEffRotateKey( spep_1 + 48, ctdogagaga, -2.3 );
setEffRotateKey( spep_1 + 50, ctdogagaga, -2.4 );
setEffRotateKey( spep_1-2 + 98, ctdogagaga, -2.4 );

setEffAlphaKey( spep_1 + 0, ctdogagaga, 255 );
setEffAlphaKey( spep_1-2 + 98, ctdogagaga, 255 );

--文字エントリー
ctbago = entryEffectLife( spep_1-3 + 106,  10021, 26, 0x100, -1, 0, -71.1, 193.8 );
setEffShake( spep_1-3 + 106 , ctbago, 26, 10 );
setEffMoveKey( spep_1-3 + 106, ctbago, -71.1, 193.8 , 0 );
setEffMoveKey( spep_1-3 + 108, ctbago, -71.2, 192.9 , 0 );
setEffMoveKey( spep_1-3 + 110, ctbago, -70.9, 193.4 , 0 );
setEffMoveKey( spep_1-3 + 112, ctbago, -92.2, 210.7 , 0 );
setEffMoveKey( spep_1-3 + 114, ctbago, -70.9, 193.4 , 0 );
setEffMoveKey( spep_1-3 + 116, ctbago, -92.1, 210.7 , 0 );
setEffMoveKey( spep_1-3 + 118, ctbago, -70.9, 193.4 , 0 );
setEffMoveKey( spep_1-3 + 120, ctbago, -92, 210.6 , 0 );
setEffMoveKey( spep_1-3 + 122, ctbago, -71, 193.4 , 0 );
setEffMoveKey( spep_1-3 + 124, ctbago, -91.6, 210.3 , 0 );
setEffMoveKey( spep_1-3 + 126, ctbago, -70.8, 193.5 , 0 );
setEffMoveKey( spep_1-3 + 128, ctbago, -90.7, 209.7 , 0 );
setEffMoveKey( spep_1-3 + 130, ctbago, -70.6, 193.5 , 0 );
setEffMoveKey( spep_1-3 + 132, ctbago, -70.5, 193.6 , 0 );

setEffScaleKey( spep_1-3 + 106, ctbago, 1.29, 1.29 );
setEffScaleKey( spep_1-3 + 108, ctbago, 3.57, 3.57 );
setEffScaleKey( spep_1-3 + 110, ctbago, 3.2, 3.2 );
setEffScaleKey( spep_1-3 + 112, ctbago, 3.19, 3.19 );
setEffScaleKey( spep_1-3 + 114, ctbago, 3.19, 3.19 );
setEffScaleKey( spep_1-3 + 116, ctbago, 3.18, 3.18 );
setEffScaleKey( spep_1-3 + 118, ctbago, 3.17, 3.17 );
setEffScaleKey( spep_1-3 + 120, ctbago, 3.16, 3.16 );
setEffScaleKey( spep_1-3 + 122, ctbago, 3.16, 3.16 );
setEffScaleKey( spep_1-3 + 124, ctbago, 3.1, 3.1 );
setEffScaleKey( spep_1-3 + 126, ctbago, 3.04, 3.04 );
setEffScaleKey( spep_1-3 + 128, ctbago, 2.99, 2.99 );
setEffScaleKey( spep_1-3 + 130, ctbago, 2.93, 2.93 );
setEffScaleKey( spep_1-3 + 132, ctbago, 2.88, 2.88 );

setEffRotateKey( spep_1-3 + 106, ctbago, -15.3 );
setEffRotateKey( spep_1-3 + 132, ctbago, -15.3 );

setEffAlphaKey( spep_1-3 + 106, ctbago, 255 );
setEffAlphaKey( spep_1-3 + 122, ctbago, 255 );
setEffAlphaKey( spep_1-3 + 124, ctbago, 204 );
setEffAlphaKey( spep_1-3 + 126, ctbago, 153 );
setEffAlphaKey( spep_1-3 + 128, ctbago, 102 );
setEffAlphaKey( spep_1-3 + 130, ctbago, 51 );
setEffAlphaKey( spep_1-3 + 132, ctbago, 0 );

--SE
playSe( spep_1 + 6, 1000 );
playSe( spep_1 + 6, 1010 );
playSe( spep_1 + 8, 1110 );
playSe( spep_1 + 14, 1001 );
playSe( spep_1 + 16, 1000 );
setSeVolume( spep_1 + 16, 1000, 74 );
playSe( spep_1 + 18, 1110 );
setSeVolume( spep_1 + 18, 1110, 80 );
playSe( spep_1 + 24, 1009 );
playSe( spep_1 + 24, 1010 );
playSe( spep_1 + 26, 1110 );
setSeVolume( spep_1 + 26, 1110, 82 );
playSe( spep_1 + 34, 1000 );
setSeVolume( spep_1 + 34, 1000, 64 );
playSe( spep_1 + 36, 1001 );
setSeVolume( spep_1 + 36, 1001, 75 );
playSe( spep_1 + 38, 1110 );
setSeVolume( spep_1 + 38, 1110, 68 );
playSe( spep_1 + 48, 1000 );
playSe( spep_1 + 48, 1009 );
setSeVolume( spep_1 + 48, 1009, 89 );
playSe( spep_1 + 50, 1110 );
setSeVolume( spep_1 + 50, 1110, 85 );
playSe( spep_1 + 60, 1000 );
playSe( spep_1 + 60, 1001 );
playSe( spep_1 + 62, 1110 );
setSeVolume( spep_1 + 62, 1110, 74 );
playSe( spep_1 + 70, 1000 );
setSeVolume( spep_1 + 70, 1000, 81 );
playSe( spep_1 + 70, 1010 );
setSeVolume( spep_1 + 70, 1010, 85 );
playSe( spep_1 + 72, 1110 );
setSeVolume( spep_1 + 72, 1110, 115 );
playSe( spep_1 + 80, 1000 );
setSeVolume( spep_1 + 80, 1000, 60 );
playSe( spep_1 + 80, 1010 );
setSeVolume( spep_1 + 80, 1010, 65 );
playSe( spep_1 + 82, 1110 );
setSeVolume( spep_1 + 82, 1110, 77 );
playSe( spep_1 + 90, 1010 );
playSe( spep_1 + 90, 1110 );
playSe( spep_1 + 104, 1189 );
playSe( spep_1 + 112, 1120 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+150;
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
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 溜め〜発射
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 236, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 236, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 236, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 236, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3+68  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3+68  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +76, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_3 +76,  ctgogo,  0,  510);
setEffMoveKey(  spep_3 +148,  ctgogo,  0,  510);

setEffAlphaKey( spep_3 +76, ctgogo, 0 );
setEffAlphaKey( spep_3 + 77, ctgogo, 255 );
setEffAlphaKey( spep_3 + 78, ctgogo, 255 );
setEffAlphaKey( spep_3 + 142, ctgogo, 255 );
setEffAlphaKey( spep_3 + 144, ctgogo, 191 );
setEffAlphaKey( spep_3 + 146, ctgogo, 112 );
setEffAlphaKey( spep_3 + 148, ctgogo, 64 );

setEffRotateKey(  spep_3 +76,  ctgogo,  0);
setEffRotateKey(  spep_3 +148,  ctgogo,  0);

setEffScaleKey(  spep_3 +76,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +138,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +148,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_3+68, 1018 );

se_1191 = playSe( spep_3 + 18, 1191 );
se_0017 = playSe( spep_3 + 18, 17 );
setSeVolume( spep_3 + 18, 17, 71 );
se_0063 = playSe( spep_3 + 18, 63 );
playSe( spep_3 + 62, 1202 );
setSeVolume( spep_3 + 62, 1202, 224 );
playSe( spep_3 + 68, 1245 );
setSeVolume( spep_3 + 68, 1245, 54 );
se_1240 = playSe( spep_3 + 68, 1240 );
setSeVolume( spep_3 + 68, 1240, 122 );
se_0017 = playSe( spep_3 + 68, 17 );
setSeVolume( spep_3 + 68, 17, 79 );
playSe( spep_3 + 124, 1072 );
playSe( spep_3 + 136, 9 );
setSeVolume( spep_3 + 136, 9, 0 );
setSeVolume( spep_3 + 137, 9, 3.45 );
setSeVolume( spep_3 + 138, 9, 6.9 );
setSeVolume( spep_3 + 139, 9, 10.34 );
setSeVolume( spep_3 + 140, 9, 13.79 );
setSeVolume( spep_3 + 141, 9, 17.24 );
setSeVolume( spep_3 + 142, 9, 20.69 );
setSeVolume( spep_3 + 143, 9, 24.14 );
setSeVolume( spep_3 + 144, 9, 27.59 );
setSeVolume( spep_3 + 145, 9, 31.03 );
setSeVolume( spep_3 + 146, 9, 34.48 );
setSeVolume( spep_3 + 147, 9, 37.93 );
setSeVolume( spep_3 + 148, 9, 41.38 );
setSeVolume( spep_3 + 149, 9, 44.83 );
setSeVolume( spep_3 + 150, 9, 48.28 );
setSeVolume( spep_3 + 151, 9, 51.72 );
setSeVolume( spep_3 + 152, 9, 55.17 );
setSeVolume( spep_3 + 153, 9, 58.62 );
setSeVolume( spep_3 + 154, 9, 62.07 );
setSeVolume( spep_3 + 155, 9, 65.52 );
setSeVolume( spep_3 + 156, 9, 68.97 );
setSeVolume( spep_3 + 157, 9, 72.41 );
setSeVolume( spep_3 + 158, 9, 75.86 );
setSeVolume( spep_3 + 159, 9, 79.31 );
setSeVolume( spep_3 + 160, 9, 82.76 );
setSeVolume( spep_3 + 161, 9, 86.21 );
setSeVolume( spep_3 + 162, 9, 89.66 );
setSeVolume( spep_3 + 163, 9, 93.10 );
setSeVolume( spep_3 + 164, 9, 96.55 );
setSeVolume( spep_3 + 165, 9, 100 );
playSe( spep_3 + 180, 1003 );
playSe( spep_3 + 184, 1178 );
setSeVolume( spep_3 + 184, 1027, 66 );
playSe( spep_3 + 184, 1064 );
playSe( spep_3 + 184, 1027 );
playSe( spep_3 + 198, 1003 );
playSe( spep_3 + 202, 1021 );
playSe( spep_3 + 202, 1178 );
playSe( spep_3 + 202, 1064 );
playSe( spep_3 + 202, 1027 );
setSeVolume( spep_3 + 202, 1027, 62 );

stopSe( spep_3 + 75, se_1191, 0 );
stopSe( spep_3 + 75, se_0017, 0 );
stopSe( spep_3 + 75, se_0063, 0 );
stopSe( spep_3 + 148, se_1240, 0 );
stopSe( spep_3 + 110, se_0017, 25 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 240, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 236;

------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 300, finish_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 300, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 300, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 300, finish_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 300, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 300, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 300, finish_b, 255 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 52, 1, 0 );

changeAnime( spep_4, 1, 105 );

setMoveKey( spep_4 + 0, 1, 229.6, -2792.8 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 202.4, -2440.7 , 0 );
setMoveKey( spep_4-3 + 4, 1, 173, -2055.5 , 0 );
setMoveKey( spep_4-3 + 6, 1, 141.8, -1644.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 109.6, -1216.1 , 0 );
setMoveKey( spep_4-3 + 10, 1, 78.4, -789.4 , 0 );
setMoveKey( spep_4-3 + 12, 1, 49.3, -362.4 , 0 );
setMoveKey( spep_4-3 + 14, 1, 17.2, 110.9 , 0 );
setMoveKey( spep_4-3 + 16, 1, 15.7, 105.9 , 0 );
setMoveKey( spep_4-3 + 18, 1, 14.3, 101.2 , 0 );
setMoveKey( spep_4-3 + 20, 1, 12.9, 96.7 , 0 );
setMoveKey( spep_4-3 + 22, 1, 11.7, 92.3 , 0 );
setMoveKey( spep_4-3 + 24, 1, 10.4, 88.2 , 0 );
setMoveKey( spep_4-3 + 26, 1, 9.3, 84.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 8.2, 80.3 , 0 );
setMoveKey( spep_4-3 + 30, 1, 7.2, 76.7 , 0 );
setMoveKey( spep_4-3 + 32, 1, 6.2, 73.3 , 0 );
setMoveKey( spep_4-3 + 34, 1, 5.3, 70.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 4.4, 66.9 , 0 );
setMoveKey( spep_4-3 + 38, 1, 3.6, 63.9 , 0 );
setMoveKey( spep_4-3 + 40, 1, 2.9, 61.3 , 0 );
setMoveKey( spep_4-3 + 42, 1, 2.2, 58.7 , 0 );
setMoveKey( spep_4-3 + 44, 1, 1.6, 56.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 1, 54 , 0 );
setMoveKey( spep_4-3 + 48, 1, 0.6, 51.9 , 0 );
setMoveKey( spep_4-3 + 50, 1, 0.1, 49.9 , 0 );
setMoveKey( spep_4-3 + 52, 1, -4.3, 24.1 , 0 );

setScaleKey( spep_4 + 0, 1, 18.23, 18.23 );
--setScaleKey( spep_4-3 + 2, 1, 16.14, 16.14 );
setScaleKey( spep_4-3 + 4, 1, 13.85, 13.85 );
setScaleKey( spep_4-3 + 6, 1, 11.42, 11.42 );
setScaleKey( spep_4-3 + 8, 1, 8.89, 8.89 );
setScaleKey( spep_4-3 + 10, 1, 6.39, 6.39 );
setScaleKey( spep_4-3 + 12, 1, 3.96, 3.96 );
setScaleKey( spep_4-3 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_4-3 + 16, 1, 1.18, 1.18 );
setScaleKey( spep_4-3 + 18, 1, 1.11, 1.11 );
setScaleKey( spep_4-3 + 20, 1, 1.04, 1.04 );
setScaleKey( spep_4-3 + 22, 1, 0.97, 0.97 );
setScaleKey( spep_4-3 + 24, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 26, 1, 0.85, 0.85 );
setScaleKey( spep_4-3 + 28, 1, 0.79, 0.79 );
setScaleKey( spep_4-3 + 30, 1, 0.73, 0.73 );
setScaleKey( spep_4-3 + 32, 1, 0.68, 0.68 );
setScaleKey( spep_4-3 + 34, 1, 0.63, 0.63 );
setScaleKey( spep_4-3 + 36, 1, 0.58, 0.58 );
setScaleKey( spep_4-3 + 38, 1, 0.53, 0.53 );
setScaleKey( spep_4-3 + 40, 1, 0.49, 0.49 );
setScaleKey( spep_4-3 + 42, 1, 0.45, 0.45 );
setScaleKey( spep_4-3 + 44, 1, 0.42, 0.42 );
setScaleKey( spep_4-3 + 46, 1, 0.38, 0.38 );
setScaleKey( spep_4-3 + 48, 1, 0.35, 0.35 );
setScaleKey( spep_4-3 + 50, 1, 0.32, 0.32 );
setScaleKey( spep_4-3 + 52, 1, 0.29, 0.29 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4-3 + 52, 1, 0 );

--SE
playSe( spep_4 + 30, 1046 );
setSeVolume( spep_4 + 30, 1046, 84 );
playSe( spep_4 + 30, 1021 );
se_1118 = playSe( spep_4 + 30, 1118 );
setSeVolume( spep_4 + 30, 1118, 52 );
playSe( spep_4 + 46, 1021 );
playSe( spep_4 + 58, 1011 );
playSe( spep_4 + 74, 1023 );
playSe( spep_4 + 124, 1042 );
playSe( spep_4 + 188, 1023 );
playSe( spep_4 + 188, 1159 );
setSeVolume( spep_4 + 188, 1159, 79 );
playSe( spep_4 + 188, 1067 );
setSeVolume( spep_4 + 188, 1067, 79 );
playSe( spep_4 + 204, 1188 );
setSeVolume( spep_4 + 204, 1188, 0 );
setSeVolume( spep_4 + 205, 1188, 4.76 );
setSeVolume( spep_4 + 206, 1188, 9.52 );
setSeVolume( spep_4 + 207, 1188, 14.29 );
setSeVolume( spep_4 + 208, 1188, 19.05 );
setSeVolume( spep_4 + 209, 1188, 23.81 );
setSeVolume( spep_4 + 210, 1188, 28.57 );
setSeVolume( spep_4 + 211, 1188, 33.33 );
setSeVolume( spep_4 + 212, 1188, 38.10 );
setSeVolume( spep_4 + 213, 1188, 42.86 );
setSeVolume( spep_4 + 214, 1188, 47.62 );
setSeVolume( spep_4 + 215, 1188, 52.38 );
setSeVolume( spep_4 + 216, 1188, 57.14 );
setSeVolume( spep_4 + 217, 1188, 61.9 );
setSeVolume( spep_4 + 218, 1188, 66.67 );
setSeVolume( spep_4 + 219, 1188, 71.43 );
setSeVolume( spep_4 + 220, 1188, 76.19 );
setSeVolume( spep_4 + 221, 1188, 80.95 );
setSeVolume( spep_4 + 222, 1188, 85.71 );
setSeVolume( spep_4 + 223, 1188, 90.48 );
setSeVolume( spep_4 + 224, 1188, 95.24 );
setSeVolume( spep_4 + 225, 1188, 100 );

stopSe( spep_4 + 76, se_1118, 11 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 300, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 190 );
endPhase( spep_4 + 290 );

end
