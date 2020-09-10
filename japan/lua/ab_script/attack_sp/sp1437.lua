--1019820:孫悟空(身勝手の極意“兆”)_無我の拳
--sp_effect_a1_00228

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
SP_01=	155422	;--	前半奥
SP_02=	155423	;--	前半手前
SP_03=	155424	;--	後半奥
SP_04=	155425	;--	後半手前

--エフェクト(てき)
SP_01x=	155426	;--	前半奥	(敵)
SP_02x=	155427	;--	前半手前	(敵)
SP_03x=	155424	;--	後半奥	
SP_04x=	155425	;--	後半手前	

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

--[[
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
]]--

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
--初めの準備
spep_0=0;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 540, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 540, first_f, 255 );
setEffAlphaKey( spep_0 + 541, first_f, 0 );
setEffAlphaKey( spep_0 + 542, first_f, 0 );

-- ** エフェクト等 ** --
first_b = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 540, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 540, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 540, first_b, 255 );
setEffAlphaKey( spep_0 + 541, first_b, 0 );
setEffAlphaKey( spep_0 + 542, first_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1);
setDisp( spep_0-1 + 60, 1, 0);

changeAnime( spep_0 + 0, 1, 100);

setMoveKey( spep_0 + 0, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 1, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 2, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 3, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 4, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 5, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 -1 + 60, 1, 190.3, 114.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 2, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 3, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 4, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 5, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 60, 1, 0.21, 0.21 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0-1 + 60, 1, 0 );

--SE
se_1181 = playSe( spep_0 + 0, 1181 );
setSeVolume( spep_0 + 0, 1181, 141 );
se_1226 = playSe( spep_0 + 0, 1226 );
setSeVolume( spep_0 + 0, 1226, 63 );
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 28 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 542, 0, 0, 0, 0, 255 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1181, 0 );
    stopSe( SP_dodge - 12, se_1226, 0 );
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
setDisp( spep_0 -3 + 138, 1, 1);
setDisp( spep_0 -1 + 216, 1, 0);

setBlendColor(spep_0 -3 + 138,1,2,0.2,0.3,1,0.8);
setBlendColor(spep_0  + 216,1,2,0.2,0.3,1,0);
setGaussBlurKey(spep_0 -3 + 138,1,0.002);
setGaussBlurKey(spep_0 -1 + 212,1,0);

changeAnime( spep_0 -3 + 138, 1, 17);

setMoveKey( spep_0 -3 + 138, 1, 130.1, -256.7 , 0 );
setMoveKey( spep_0 -3 + 140, 1, 139.7, -250.7 , 0 );
setMoveKey( spep_0 -3 + 142, 1, 149, -244.9 , 0 );
setMoveKey( spep_0 -3 + 144, 1, 158, -239.2 , 0 );
setMoveKey( spep_0 -3 + 146, 1, 166.7, -233.7 , 0 );
setMoveKey( spep_0 -3 + 148, 1, 175.2, -228.4 , 0 );
setMoveKey( spep_0 -3 + 150, 1, 183.3, -223.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, 191.1, -218.3 , 0 );
setMoveKey( spep_0 -3 + 154, 1, 198.7, -213.6 , 0 );
setMoveKey( spep_0 -3 + 156, 1, 205.9, -209 , 0 );
setMoveKey( spep_0 -3 + 158, 1, 212.9, -204.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, 219.6, -200.3 , 0 );
setMoveKey( spep_0 -3 + 162, 1, 226, -196.2 , 0 );
setMoveKey( spep_0 -3 + 164, 1, 232.2, -192.3 , 0 );
setMoveKey( spep_0 -3 + 166, 1, 238.1, -188.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, 243.7, -185 , 0 );
setMoveKey( spep_0 -3 + 170, 1, 249.1, -181.6 , 0 );
setMoveKey( spep_0 -3 + 172, 1, 254.2, -178.4 , 0 );
setMoveKey( spep_0 -3 + 174, 1, 259.1, -175.3 , 0 );
setMoveKey( spep_0 -3 + 176, 1, 263.7, -172.4 , 0 );
setMoveKey( spep_0 -3 + 178, 1, 268, -169.8 , 0 );
setMoveKey( spep_0 -3 + 180, 1, 272.1, -167.2 , 0 );
setMoveKey( spep_0 -3 + 182, 1, 276, -164.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, 279.6, -162.7 , 0 );
setMoveKey( spep_0 -3 + 186, 1, 283, -160.7 , 0 );
setMoveKey( spep_0 -3 + 188, 1, 286.2, -158.9 , 0 );
setMoveKey( spep_0 -3 + 190, 1, 289.1, -157.2 , 0 );
setMoveKey( spep_0 -3 + 192, 1, 291.8, -155.8 , 0 );
setMoveKey( spep_0 -3 + 194, 1, 294.3, -154.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, 296.6, -153.3 , 0 );
setMoveKey( spep_0 -3 + 198, 1, 298.6, -152.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, 300.5, -151.6 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 302.1, -151 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 303.5, -150.5 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 304.7, -150.3 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 305.7, -150.2 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 306.8, -150.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 307.7, -150.1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 308.6, -150.1 , 0 );
setMoveKey( spep_0 -1 + 216, 1, 309.5, -150.1 , 0 );

setScaleKey( spep_0-3 + 138, 1, 7.11, 7.11 );
setScaleKey( spep_0-3 + 140, 1, 6.94, 6.94 );
setScaleKey( spep_0-3 + 142, 1, 6.78, 6.78 );
setScaleKey( spep_0-3 + 144, 1, 6.62, 6.62 );
setScaleKey( spep_0-3 + 146, 1, 6.47, 6.47 );
setScaleKey( spep_0-3 + 148, 1, 6.33, 6.33 );
setScaleKey( spep_0-3 + 150, 1, 6.18, 6.18 );
setScaleKey( spep_0-3 + 152, 1, 6.05, 6.05 );
setScaleKey( spep_0-3 + 154, 1, 5.91, 5.91 );
setScaleKey( spep_0-3 + 156, 1, 5.79, 5.79 );
setScaleKey( spep_0-3 + 158, 1, 5.66, 5.66 );
setScaleKey( spep_0-3 + 160, 1, 5.55, 5.55 );
setScaleKey( spep_0-3 + 162, 1, 5.43, 5.43 );
setScaleKey( spep_0-3 + 164, 1, 5.32, 5.32 );
setScaleKey( spep_0-3 + 166, 1, 5.22, 5.22 );
setScaleKey( spep_0-3 + 168, 1, 5.12, 5.12 );
setScaleKey( spep_0-3 + 170, 1, 5.03, 5.03 );
setScaleKey( spep_0-3 + 172, 1, 4.94, 4.94 );
setScaleKey( spep_0-3 + 174, 1, 4.85, 4.85 );
setScaleKey( spep_0-3 + 176, 1, 4.78, 4.78 );
setScaleKey( spep_0-3 + 178, 1, 4.7, 4.7 );
setScaleKey( spep_0-3 + 180, 1, 4.63, 4.63 );
setScaleKey( spep_0-3 + 182, 1, 4.57, 4.57 );
setScaleKey( spep_0-3 + 184, 1, 4.51, 4.51 );
setScaleKey( spep_0-3 + 186, 1, 4.45, 4.45 );
setScaleKey( spep_0-3 + 188, 1, 4.4, 4.4 );
setScaleKey( spep_0-3 + 190, 1, 4.35, 4.35 );
setScaleKey( spep_0-3 + 192, 1, 4.31, 4.31 );
setScaleKey( spep_0-3 + 194, 1, 4.28, 4.28 );
setScaleKey( spep_0-3 + 196, 1, 4.25, 4.25 );
setScaleKey( spep_0-3 + 198, 1, 4.22, 4.22 );
setScaleKey( spep_0-3 + 200, 1, 4.2, 4.2 );
setScaleKey( spep_0-3 + 202, 1, 4.18, 4.18 );
setScaleKey( spep_0-3 + 204, 1, 4.17, 4.17 );
setScaleKey( spep_0-3 + 206, 1, 4.16, 4.16 );
setScaleKey( spep_0-1 + 216, 1, 4.16, 4.16 );

setRotateKey( spep_0 -3 + 138, 1, 0 );
setRotateKey( spep_0 -1 + 216, 1, 0 );

--敵の動き
setDisp( spep_0 -3 + 312, 1, 1);
setDisp( spep_0 -1 + 346, 1, 0);

changeAnime( spep_0 -3 + 312, 1, 107);

setMoveKey( spep_0 -3 + 312, 1, -2, 89 , 0 );
setMoveKey( spep_0 -3 + 314, 1, -2.5, 88.5 , 0 );
setMoveKey( spep_0 -3 + 316, 1, -2.8, 87.9 , 0 );
setMoveKey( spep_0 -3 + 318, 1, -2.5, 86.9 , 0 );
setMoveKey( spep_0 -3 + 320, 1, -1.5, 85.4 , 0 );
setMoveKey( spep_0 -3 + 322, 1, 0.5, 83.3 , 0 );
setMoveKey( spep_0 -3 + 324, 1, 3.7, 80.4 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 8.4, 76.6 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 14.7, 71.7 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 23.1, 65.5 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 34, 57.7 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 47.9, 47.9 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 65.8, 35.6 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 88.8, 20 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 119, -0.3 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 84.4, 14.7 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 62.1, 20.3 , 0 );
setMoveKey( spep_0 -1 + 346, 1, 50, 10.5 , 0 );

setScaleKey( spep_0-3 + 312, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 314, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 316, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 318, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 320, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 322, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 324, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 326, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 328, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 330, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 332, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 334, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 336, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 338, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 340, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 342, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 344, 1, 0.54, 0.54 );
setScaleKey( spep_0-1 + 346, 1, 0.78, 0.78 );

setRotateKey( spep_0 -3 + 312, 1, 0 );
setRotateKey( spep_0 -1 + 346, 1, 0 );

--敵の動き
setDisp( spep_0 -3 + 368, 1, 1);
setDisp( spep_0 -1 + 386, 1, 0);

changeAnime( spep_0 -3 + 368, 1, 106);

setMoveKey( spep_0 -3 + 368, 1, -438.6, 266.5 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -364.9, 207.7 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -304.1, 154.8 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -256.2, 108 , 0 );
setMoveKey( spep_0 -3 + 376, 1, -221.2, 67.1 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -163.1, 40.2 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -118, 19.3 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -85.7, 4.4 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -66.3, -4.6 , 0 );
setMoveKey( spep_0 -1 + 386, 1, -59.9, -7.6 , 0 );

setScaleKey( spep_0-3 + 368, 1, 1.97, 1.97 );
setScaleKey( spep_0-1 + 386, 1, 1.97, 1.97 );

setRotateKey( spep_0 -3 + 368, 1, 59 );
setRotateKey( spep_0 -3 + 370, 1, 60.8 );
setRotateKey( spep_0 -3 + 372, 1, 62.4 );
setRotateKey( spep_0 -3 + 374, 1, 63.7 );
setRotateKey( spep_0 -3 + 376, 1, 64.9 );
setRotateKey( spep_0 -3 + 378, 1, 65.8 );
setRotateKey( spep_0 -3 + 380, 1, 66.5 );
setRotateKey( spep_0 -3 + 382, 1, 67.1 );
setRotateKey( spep_0 -3 + 384, 1, 67.4 );
setRotateKey( spep_0 -1 + 386, 1, 67.5 );

--敵の動き
setDisp( spep_0 -3 + 404, 1, 1);
setDisp( spep_0 -1 + 434, 1, 0);

changeAnime( spep_0 -3 + 404, 1, 105);

setMoveKey( spep_0 -3 + 404, 1, -30.6, 28.7 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -107.2, 33.1 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -256.2, 19 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -360, 15.7 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -266.5, 11.8 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -287.8, 6.4 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -290.9, 3.2 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -305.3, -0.3 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -317.2, -4.6 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -319.9, -8.1 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -318.1, -25.3 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -322.7, -25.3 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -326.4, -26.4 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -321.7, -28.2 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -328.2, -25.8 , 0 );
setMoveKey( spep_0 -1 + 434, 1, -334.6, -23.5 , 0 );

setScaleKey( spep_0-3 + 404, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 406, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 408, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 410, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 412, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 414, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 416, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 418, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 420, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 422, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 424, 1, 0.03, 0.03 );
setScaleKey( spep_0-1 + 434, 1, 0.03, 0.03 );

setRotateKey( spep_0 -3 + 404, 1, -43.7 );
setRotateKey( spep_0 -3 + 406, 1, -43.7 );
setRotateKey( spep_0 -3 + 408, 1, -43.6 );
setRotateKey( spep_0 -3 + 412, 1, -43.6 );
setRotateKey( spep_0 -3 + 414, 1, -43.7 );
setRotateKey( spep_0 -1 + 434, 1, -43.7 );

--敵の動き
setDisp( spep_0 -3 + 508, 1, 1);
setDisp( spep_0 -2 + 542, 1, 0);

changeAnime( spep_0 -3 + 508, 1, 7);

setMoveKey( spep_0 -3 + 508, 1, 88.4, -24.4 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 89.1, 3.4 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 84.5, -17.2 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 87.3, 0.2 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 88, -10.6 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 91.7, 7.2 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 89, 10.9 , 0 );
setMoveKey( spep_0 -3 + 522, 1, 82.9, 13.3 , 0 );
setMoveKey( spep_0 -3 + 524, 1, 84, 12.6 , 0 );
setMoveKey( spep_0 -3 + 526, 1, 79.5, 18.7 , 0 );
setMoveKey( spep_0 -3 + 528, 1, 72.4, 23.9 , 0 );
setMoveKey( spep_0 -3 + 530, 1, 71.9, 46.1 , 0 );
setMoveKey( spep_0 -3 + 532, 1, 69.8, 39.3 , 0 );
setMoveKey( spep_0 -3 + 534, 1, 69.3, 56.6 , 0 );
setMoveKey( spep_0 -3 + 536, 1, 62.7, 55.1 , 0 );
setMoveKey( spep_0 -3 + 538, 1, 51.1, 81.7 , 0 );
setMoveKey( spep_0 -3 + 540, 1, 18.1, 127 , 0 );
setMoveKey( spep_0 -2 + 542, 1, -126.2, 357.9 , 0 );

setScaleKey( spep_0-3 + 508, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 510, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 518, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 520, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 522, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 524, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 526, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 528, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 530, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 532, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 534, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 536, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 538, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 540, 1, 0.5, 0.5 );
setScaleKey( spep_0-2 + 542, 1, 1.52, 1.52 );

setRotateKey( spep_0 -3 + 508, 1, 80 );
setRotateKey( spep_0 -3 + 510, 1, 80.1 );
setRotateKey( spep_0 -3 + 526, 1, 80.1 );
setRotateKey( spep_0 -3 + 528, 1, 80.2 );
setRotateKey( spep_0 -3 + 538, 1, 80.2 );
setRotateKey( spep_0 -3 + 540, 1, 80.1 );
setRotateKey( spep_0 -2 + 542, 1, 80 );

--SE

se_1004 = playSe( spep_0 + 60, 1004 );
setSeVolume( spep_0 + 60, 1004, 56 );
se_1173 = playSe( spep_0 + 60, 1173 );
setSeVolume( spep_0 + 60, 1173, 0 );
setSeVolume( spep_0 + 144, 1173, 0 );
setSeVolume( spep_0 + 145, 1173, 33.33 );
setSeVolume( spep_0 + 146, 1173, 66.67 );
setSeVolume( spep_0 + 147, 1173, 100 );
playSe( spep_0 + 61, 1003 );
setSeVolume( spep_0 + 61, 1003, 63 );
playSe( spep_0 + 83, 1072 );
playSe( spep_0 + 117, 1182 );
setSeVolume( spep_0 + 117, 1182, 126 );
se_1109 = playSe( spep_0 + 117, 1109 );
setSeVolume( spep_0 + 117, 1109, 79 );
se_1116 = playSe( spep_0 + 117, 1116 );
playSe( spep_0 + 118, 1027 );
playSe( spep_0 + 120, 1046 );
setSeVolume( spep_0 + 120, 1046, 89 );
se_1227 = playSe( spep_0 + 131, 1227 );
se_1216 = playSe( spep_0 + 131, 1216 );
setSeVolume( spep_0 + 131, 1216, 75 );
se_1241 = playSe( spep_0 + 141, 1241 );
se_1240 = playSe( spep_0 + 159, 1240 );
se_1116 = playSe( spep_0 + 235, 1116 );
se_0009 = playSe( spep_0 + 235, 9 );
setSeVolume( spep_0 + 235, 9, 0 );
setSeVolume( spep_0 + 236, 9, 3.85 );
setSeVolume( spep_0 + 237, 9, 7.69 );
setSeVolume( spep_0 + 238, 9, 11.54 );
setSeVolume( spep_0 + 239, 9, 15.38 );
setSeVolume( spep_0 + 240, 9, 19.23 );
setSeVolume( spep_0 + 241, 9, 23.08 );
setSeVolume( spep_0 + 242, 9, 26.92 );
setSeVolume( spep_0 + 243, 9, 30.77 );
setSeVolume( spep_0 + 244, 9, 34.62 );
setSeVolume( spep_0 + 245, 9, 38.46 );
setSeVolume( spep_0 + 246, 9, 42.31 );
setSeVolume( spep_0 + 247, 9, 46.15 );
setSeVolume( spep_0 + 248, 9, 50 );
setSeVolume( spep_0 + 249, 9, 53.85 );
setSeVolume( spep_0 + 250, 9, 57.69 );
setSeVolume( spep_0 + 251, 9, 61.54 );
setSeVolume( spep_0 + 252, 9, 65.38 );
setSeVolume( spep_0 + 253, 9, 69.23 );
setSeVolume( spep_0 + 254, 9, 73.08 );
setSeVolume( spep_0 + 255, 9, 76.92 );
setSeVolume( spep_0 + 256, 9, 80.77 );
setSeVolume( spep_0 + 257, 9, 84.62 );
setSeVolume( spep_0 + 258, 9, 88.46 );
setSeVolume( spep_0 + 259, 9, 92.31 );
setSeVolume( spep_0 + 260, 9, 96.15 );
setSeVolume( spep_0 + 261, 9, 100 );
playSe( spep_0 + 235, 20 );
setSeVolume( spep_0 + 235, 20, 0 );
setSeVolume( spep_0 + 239, 20, 7.14 );
setSeVolume( spep_0 + 240, 20, 14.29 );
setSeVolume( spep_0 + 241, 20, 21.43 );
setSeVolume( spep_0 + 242, 20, 28.57 );
setSeVolume( spep_0 + 243, 20, 35.71 );
setSeVolume( spep_0 + 244, 20, 42.86 );
setSeVolume( spep_0 + 245, 20, 50 );
setSeVolume( spep_0 + 246, 20, 57.14 );
setSeVolume( spep_0 + 247, 20, 64.29 );
setSeVolume( spep_0 + 248, 20, 71.43 );
setSeVolume( spep_0 + 249, 20, 78.57 );
setSeVolume( spep_0 + 250, 20, 85.71 );
setSeVolume( spep_0 + 251, 20, 92.86 );
setSeVolume( spep_0 + 252, 20, 100 );
se_1004 = playSe( spep_0 + 242, 1004 );
playSe( spep_0 + 261, 1009 );
se_11821 = playSe( spep_0 + 261, 1182 );
setSeVolume( spep_0 + 261, 1182, 158 );
playSe( spep_0 + 262, 1187 );
setSeVolume( spep_0 + 262, 1187, 89 );
playSe( spep_0 + 270, 1110 );
setSeVolume( spep_0 + 270, 1110, 63 );
se_1183 = playSe( spep_0 + 312, 1183 );
se_1182 = playSe( spep_0 + 348, 1182 );
se_1118 = playSe( spep_0 + 349, 1118 );
setSeVolume( spep_0 + 349, 1118, 56 );
se_0044 = playSe( spep_0 + 349, 44 );
setSeVolume( spep_0 + 349, 44, 68 );
playSe( spep_0 + 375, 1189 );
playSe( spep_0 + 388, 1004 );
playSe( spep_0 + 403, 1120 );
playSe( spep_0 + 433, 19 );
setSeVolume( spep_0 + 433, 19, 76 );
playSe( spep_0 + 433, 1023 );
setSeVolume( spep_0 + 433, 1023, 79 );
se_1168 = playSe( spep_0 + 433, 1168 );
se_1044 = playSe( spep_0 + 433, 1044 );
setSeVolume( spep_0 + 433, 1044, 56 );
playSe( spep_0 + 451, 1007 );
se_1002 = playSe( spep_0 + 456, 1002 );
se_1188 = playSe( spep_0 + 474, 1188 );
se_1033 = playSe( spep_0 + 499, 1033 );
setSeVolume( spep_0 + 499, 1033, 67 );
se_1023 = playSe( spep_0 + 499, 1023 );
se_1025 = playSe( spep_0 + 501, 1025 );
se_1024 = playSe( spep_0 + 501, 1024 );
setSeVolume( spep_0 + 501, 1024, 67 );

stopSe( spep_0 + 131, se_1181, 0 );
stopSe( spep_0 + 131, se_1226, 0 );
stopSe( spep_0 + 71, se_1175, 57 );
stopSe( spep_0 + 69, se_1004, 9 );
stopSe( spep_0 + 180, se_1173, 22 );
stopSe( spep_0 + 130, se_1109, 8 );
stopSe( spep_0 + 138, se_1116, 16 );
stopSe( spep_0 + 193, se_1227, 43 );
stopSe( spep_0 + 158, se_1216, 22 );
stopSe( spep_0 + 170, se_1241, 61 );
stopSe( spep_0 + 215, se_1240, 25 );
stopSe( spep_0 + 259, se_1116, 15 );
stopSe( spep_0 + 270, se_0009, 0 );
stopSe( spep_0 + 253, se_1004, 5 );
stopSe( spep_0 + 268, se_11821, 10 );
stopSe( spep_0 + 388, se_1183, 0 );
stopSe( spep_0 + 384, se_1182, 16 );
stopSe( spep_0 + 383, se_1118, 5 );
stopSe( spep_0 + 377, se_0044, 7 );
stopSe( spep_0 + 506, se_1044, 0 );
stopSe( spep_0 + 479, se_1002, 0 );



--次の準備
spep_1=spep_0+540;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 80-1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 80-1, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1-1 + 80, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1-1 + 80, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1-1 + 80, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1-1 + 80, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

stopSe( spep_1 + 3, se_1168, 0 );
stopSe( spep_1 + 3, se_1188, 0 );
stopSe( spep_1 + 3, se_1033, 0 );
stopSe( spep_1 + 3, se_1023, 0 );
stopSe( spep_1 + 3, se_1025, 0 );
stopSe( spep_1 + 3, se_1024, 0 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 80;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 896, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 896, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 896, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 896, finish_f, 255 );


-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 896, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 896, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 896, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 896, finish_b, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 0, 1504, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--敵の動き
setDisp( spep_2 -3 + 156, 1, 1);
setDisp( spep_2 -1 + 302, 1, 0);

setGaussBlurKey(spep_2 -3 + 138,1,0.002);
setGaussBlurKey(spep_2 -3 + 216,1,0);

changeAnime( spep_2 -3 + 156, 1, 8);
changeAnime( spep_2 -3 + 220, 1, 105);
changeAnime( spep_2 -3 + 224, 1, 6);
changeAnime( spep_2 -3 + 258, 1, 105);

setMoveKey( spep_2-3 + 156, 1, 105.1, -57 , 0 );
setMoveKey( spep_2-3 + 158, 1, 106.4, -58.6 , 0 );
setMoveKey( spep_2-3 + 160, 1, 107.8, -60.3 , 0 );
setMoveKey( spep_2-3 + 162, 1, 2.6, -43.2 , 0 );
setMoveKey( spep_2-3 + 164, 1, -62.5, -84.3 , 0 );
setMoveKey( spep_2-3 + 166, 1, -60.1, -27.7 , 0 );
setMoveKey( spep_2-3 + 168, 1, -58.1, -71 , 0 );
setMoveKey( spep_2-3 + 170, 1, -64.8, -33.9 , 0 );
setMoveKey( spep_2-3 + 172, 1, -70.2, -35.2 , 0 );
setMoveKey( spep_2-3 + 174, 1, -67.7, -31 , 0 );
setMoveKey( spep_2-3 + 176, 1, -77.7, -455.2 , 0 );
setMoveKey( spep_2-3 + 178, 1, -66.2, -385.7 , 0 );
setMoveKey( spep_2-3 + 180, 1, -59.4, -344 , 0 );
setMoveKey( spep_2-3 + 182, 1, -57.1, -330.1 , 0 );
setMoveKey( spep_2-3 + 184, 1, 69.9, -186.8 , 0 );
setMoveKey( spep_2-3 + 188, 1, 69.9, -186.8 , 0 );
setMoveKey( spep_2-3 + 190, 1, 28, -92 , 0 );
setMoveKey( spep_2-3 + 192, 1, 16.4, -84.5 , 0 );
setMoveKey( spep_2-3 + 194, 1, 5.8, -77.6 , 0 );
setMoveKey( spep_2-3 + 196, 1, -4.1, -71.2 , 0 );
setMoveKey( spep_2-3 + 198, 1, -13.1, -65.4 , 0 );
setMoveKey( spep_2-3 + 200, 1, -21.2, -60.1 , 0 );
setMoveKey( spep_2-3 + 202, 1, -28.5, -55.4 , 0 );
setMoveKey( spep_2-3 + 204, 1, -34.9, -51.3 , 0 );
setMoveKey( spep_2-3 + 206, 1, -40.5, -47.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, -45.2, -44.6 , 0 );
setMoveKey( spep_2-3 + 210, 1, -49, -42.1 , 0 );
setMoveKey( spep_2-3 + 212, 1, -52, -40.2 , 0 );
setMoveKey( spep_2-3 + 214, 1, -54.2, -38.8 , 0 );
setMoveKey( spep_2-3 + 216, 1, -55.4, -38 , 0 );
setMoveKey( spep_2-3 + 218, 1, -55.9, -37.7 , 0 );
setMoveKey( spep_2-3 + 219, 1, -55.9, -37.7 , 0 );

setMoveKey( spep_2-3 + 220, 1, -140.4, 146.3 , 0 );
setMoveKey( spep_2-3 + 223, 1, -140.4, 146.3 , 0 );

setMoveKey( spep_2-3 + 224, 1, 393.6, 136.5 , 0 );
setMoveKey( spep_2-3 + 226, 1, 213.5, 158.6 , 0 );
setMoveKey( spep_2-3 + 228, 1, 162.8, 132.6 , 0 );
setMoveKey( spep_2-3 + 230, 1, 112.1, 106.6 , 0 );
setMoveKey( spep_2-3 + 232, 1, 61.4, 80.5 , 0 );
setMoveKey( spep_2-3 + 234, 1, 94.8, 72.5 , 0 );
setMoveKey( spep_2-3 + 236, 1, 128.2, 64.5 , 0 );
setMoveKey( spep_2-3 + 238, 1, 161.6, 56.4 , 0 );
setMoveKey( spep_2-3 + 240, 1, 188.9, 73.1 , 0 );
setMoveKey( spep_2-3 + 242, 1, 216.3, 89.8 , 0 );
setMoveKey( spep_2-3 + 244, 1, 243.6, 106.4 , 0 );
setMoveKey( spep_2-3 + 246, 1, 163.5, 84.4 , 0 );
setMoveKey( spep_2-3 + 248, 1, 83.3, 62.4 , 0 );
setMoveKey( spep_2-3 + 250, 1, 3.2, 40.4 , 0 );
setMoveKey( spep_2-3 + 252, 1, -10.8, 47.1 , 0 );
setMoveKey( spep_2-3 + 254, 1, -24.8, 53.8 , 0 );
setMoveKey( spep_2-3 + 256, 1, -38.7, 60.5 , 0 );
setMoveKey( spep_2-3 + 257, 1, -38.7, 60.5 , 0 );

setMoveKey( spep_2-3 + 258, 1, -21.3, 82.6 , 0 );
setMoveKey( spep_2-3 + 260, 1, -3.8, 104.7 , 0 );
setMoveKey( spep_2-3 + 262, 1, 13.6, 126.8 , 0 );
setMoveKey( spep_2-3 + 264, 1, -16.2, 105.8 , 0 );
setMoveKey( spep_2-3 + 266, 1, -30.6, 95.7 , 0 );
setMoveKey( spep_2-3 + 268, 1, -40.2, 88.9 , 0 );
setMoveKey( spep_2-3 + 270, 1, -52.5, 78.6 , 0 );
setMoveKey( spep_2-3 + 272, 1, -61.9, 70.7 , 0 );
setMoveKey( spep_2-3 + 274, 1, -69.2, 64.5 , 0 );
setMoveKey( spep_2-3 + 276, 1, -76.5, 57.9 , 0 );
setMoveKey( spep_2-3 + 278, 1, -82.3, 52.6 , 0 );
setMoveKey( spep_2-3 + 280, 1, -86.6, 48.3 , 0 );
setMoveKey( spep_2-3 + 282, 1, -90, 44.8 , 0 );
setMoveKey( spep_2-3 + 284, 1, -94.6, 41.3 , 0 );
setMoveKey( spep_2-3 + 286, 1, -98.1, 38.6 , 0 );
setMoveKey( spep_2-3 + 288, 1, -100.7, 35.8 , 0 );
setMoveKey( spep_2-3 + 290, 1, -102.5, 33.7 , 0 );
setMoveKey( spep_2-3 + 292, 1, -105.3, 31.1 , 0 );
setMoveKey( spep_2-3 + 294, 1, -107.1, 29.4 , 0 );
setMoveKey( spep_2-3 + 296, 1, -108.2, 28.3 , 0 );
setMoveKey( spep_2-3 + 298, 1, -108.7, 27.8 , 0 );
setMoveKey( spep_2-3 + 300, 1, -108.9, 27.6 , 0 );
setMoveKey( spep_2-1 + 302, 1, -109, 27.6 , 0 );

setScaleKey( spep_2-3 + 156, 1, 9.3, 9.3 );
setScaleKey( spep_2-3 + 160, 1, 9.3, 9.3 );
setScaleKey( spep_2-3 + 162, 1, 9.1, 9.1 );
setScaleKey( spep_2-3 + 164, 1, 9.02, 9.02 );
setScaleKey( spep_2-3 + 166, 1, 9, 9 );
setScaleKey( spep_2-3 + 168, 1, 8.99, 8.99 );
setScaleKey( spep_2-3 + 174, 1, 8.99, 8.99 );
setScaleKey( spep_2-3 + 176, 1, 13.39, 13.39 );
setScaleKey( spep_2-3 + 178, 1, 11.78, 11.78 );
setScaleKey( spep_2-3 + 180, 1, 10.82, 10.82 );
setScaleKey( spep_2-3 + 182, 1, 10.5, 10.5 );
setScaleKey( spep_2-3 + 184, 1, 6.28, 6.28 );
setScaleKey( spep_2-3 + 188, 1, 6.28, 6.28 );
setScaleKey( spep_2-3 + 190, 1, 4.4, 4.4 );
setScaleKey( spep_2-3 + 192, 1, 4.22, 4.22 );
setScaleKey( spep_2-3 + 194, 1, 4.06, 4.06 );
setScaleKey( spep_2-3 + 196, 1, 3.91, 3.91 );
setScaleKey( spep_2-3 + 198, 1, 3.77, 3.77 );
setScaleKey( spep_2-3 + 200, 1, 3.64, 3.64 );
setScaleKey( spep_2-3 + 202, 1, 3.53, 3.53 );
setScaleKey( spep_2-3 + 204, 1, 3.43, 3.43 );
setScaleKey( spep_2-3 + 206, 1, 3.35, 3.35 );
setScaleKey( spep_2-3 + 208, 1, 3.27, 3.27 );
setScaleKey( spep_2-3 + 210, 1, 3.21, 3.21 );
setScaleKey( spep_2-3 + 212, 1, 3.17, 3.17 );
setScaleKey( spep_2-3 + 214, 1, 3.14, 3.14 );
setScaleKey( spep_2-3 + 216, 1, 3.12, 3.12 );
setScaleKey( spep_2-3 + 218, 1, 3.11, 3.11 );
setScaleKey( spep_2-3 + 219, 1, 3.11, 3.11 );

setScaleKey( spep_2-3 + 220, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 223, 1, 2.5, 2.5 );

setScaleKey( spep_2-3 + 224, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 226, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 228, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 230, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 232, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 234, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 236, 1, 1.13, 1.13 );
setScaleKey( spep_2-3 + 238, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 240, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 242, 1, 1.29, 1.29 );
setScaleKey( spep_2-3 + 244, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 246, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 248, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 250, 1, 1.22, 1.22 );
setScaleKey( spep_2-3 + 252, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 254, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 256, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 257, 1, 1.01, 1.01 );

setScaleKey( spep_2-3 + 258, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 260, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 262, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 264, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 266, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 268, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 270, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 272, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 274, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 276, 1, 0.12, 0.12 );
setScaleKey( spep_2-3 + 278, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 280, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 282, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 284, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 286, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 292, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 294, 1, 0.06, 0.06 );
setScaleKey( spep_2-1 + 302, 1, 0.06, 0.06 );

setRotateKey( spep_2-3 + 156, 1, 5 );
setRotateKey( spep_2-3 + 174, 1, 5 );
setRotateKey( spep_2-3 + 176, 1, -4 );
setRotateKey( spep_2-3 + 182, 1, -4 );
setRotateKey( spep_2-3 + 184, 1, -6 );
setRotateKey( spep_2-3 + 188, 1, -6 );
setRotateKey( spep_2-3 + 190, 1, 0 );
setRotateKey( spep_2-3 + 192, 1, -2.7 );
setRotateKey( spep_2-3 + 194, 1, -5.3 );
setRotateKey( spep_2-3 + 196, 1, -7.6 );
setRotateKey( spep_2-3 + 198, 1, -9.8 );
setRotateKey( spep_2-3 + 200, 1, -11.7 );
setRotateKey( spep_2-3 + 202, 1, -13.4 );
setRotateKey( spep_2-3 + 204, 1, -15 );
setRotateKey( spep_2-3 + 206, 1, -16.3 );
setRotateKey( spep_2-3 + 208, 1, -17.4 );
setRotateKey( spep_2-3 + 210, 1, -18.3 );
setRotateKey( spep_2-3 + 212, 1, -19 );
setRotateKey( spep_2-3 + 214, 1, -19.5 );
setRotateKey( spep_2-3 + 216, 1, -19.8 );
setRotateKey( spep_2-3 + 218, 1, -20 );
setRotateKey( spep_2-3 + 219, 1, -20 );

setRotateKey( spep_2-3 + 220, 1, -50.8 );
setRotateKey( spep_2-3 + 223, 1, -50.8 );

setRotateKey( spep_2-3 + 224, 1, -56 );
setRotateKey( spep_2-3 + 232, 1, -56 );
setRotateKey( spep_2-3 + 234, 1, -58.4 );
setRotateKey( spep_2-3 + 236, 1, -60.8 );
setRotateKey( spep_2-3 + 238, 1, -63.2 );
setRotateKey( spep_2-3 + 240, 1, -62 );
setRotateKey( spep_2-3 + 242, 1, -60.7 );
setRotateKey( spep_2-3 + 244, 1, -59.5 );
setRotateKey( spep_2-3 + 250, 1, -59.5 );
setRotateKey( spep_2-3 + 252, 1, -57.9 );
setRotateKey( spep_2-3 + 254, 1, -56.3 );
setRotateKey( spep_2-3 + 256, 1, -54.7 );
setRotateKey( spep_2-3 + 257, 1, -54.7 );

setRotateKey( spep_2-3 + 258, 1, -54.7 );
setRotateKey( spep_2-3 + 262, 1, -54.7 );
setRotateKey( spep_2-3 + 264, 1, -56.2 );
setRotateKey( spep_2-3 + 266, 1, -56.9 );
setRotateKey( spep_2-3 + 268, 1, -57.4 );
setRotateKey( spep_2-3 + 270, 1, -57.8 );
setRotateKey( spep_2-3 + 272, 1, -58.1 );
setRotateKey( spep_2-3 + 274, 1, -58.4 );
setRotateKey( spep_2-3 + 276, 1, -58.5 );
setRotateKey( spep_2-3 + 278, 1, -58.7 );
setRotateKey( spep_2-3 + 280, 1, -58.8 );
setRotateKey( spep_2-3 + 282, 1, -58.9 );
setRotateKey( spep_2-3 + 290, 1, -58.9 );
setRotateKey( spep_2-3 + 292, 1, -59 );
setRotateKey( spep_2-1 + 302, 1, -59 );

--SE
playSe( spep_2 + 12, 1018 );
se_1190 = playSe( spep_2 + 0, 1190 );
setSeVolume( spep_2 + 0, 1190, 0 );
setSeVolume( spep_2 + 5, 1190, 0 );
setSeVolume( spep_2 + 6, 1190, 24 );
setSeVolume( spep_2 + 7, 1190, 48 );
playSe( spep_2 + 4, 1233 );
setSeVolume( spep_2 + 4, 1233, 63 );
playSe( spep_2 + 4, 1006 );
playSe( spep_2 + 4, 1012 );
playSe( spep_2 + 58, 1004 );
se_1116 = playSe( spep_2 + 58, 1116 );
playSe( spep_2 + 90, 1027 );
playSe( spep_2 + 90, 1258 );
playSe( spep_2 + 90, 1259 );
se_1190 = playSe( spep_2 + 155, 1190 );
playSe( spep_2 + 158, 1027 );
playSe( spep_2 + 160, 1188 );
playSe( spep_2 + 160, 1060 );
se_1182 = playSe( spep_2 + 160, 1182 );
playSe( spep_2 + 183, 1024 );
setSeVolume( spep_2 + 183, 1024, 126 );
se_1190 = playSe( spep_2 + 183, 1190 );
se_1183 = playSe( spep_2 + 215, 1183 );
se_1121 = playSe( spep_2 + 255, 1121 );
setSeVolume( spep_2 + 255, 1121, 79 );
playSe( spep_2 + 312, 1023 );
playSe( spep_2 + 312, 1159 );

stopSe( spep_2 + 33, se_1190, 17 );
stopSe( spep_2 + 82, se_1116, 19 );
stopSe( spep_2 + 166, se_1190, 26 );
stopSe( spep_2 + 173, se_1182, 33 );
stopSe( spep_2 + 198, se_1190, 15 );
stopSe( spep_2 + 318, se_1183, 0 );
stopSe( spep_2 + 318, se_1121, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 302 );
endPhase( spep_2 + 400 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
--初めの準備
spep_0=0;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, first_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 540, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 540, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 540, first_f, 255 );
setEffAlphaKey( spep_0 + 541, first_f, 0 );
setEffAlphaKey( spep_0 + 542, first_f, 0 );

-- ** エフェクト等 ** --
first_b = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, first_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 540, first_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 540, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 540, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 540, first_b, 255 );
setEffAlphaKey( spep_0 + 541, first_b, 0 );
setEffAlphaKey( spep_0 + 542, first_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1);
setDisp( spep_0-1 + 60, 1, 0);

changeAnime( spep_0 + 0, 1, 100);

setMoveKey( spep_0 + 0, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 1, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 2, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 3, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 4, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 + 5, 1, 190.3, 114.1 , 0 );
setMoveKey( spep_0 -1 + 60, 1, 190.3, 114.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 1, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 2, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 3, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 4, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 5, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 60, 1, 0.21, 0.21 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0-1 + 60, 1, 0 );

--SE
se_1181 = playSe( spep_0 + 0, 1181 );
setSeVolume( spep_0 + 0, 1181, 141 );
se_1226 = playSe( spep_0 + 0, 1226 );
setSeVolume( spep_0 + 0, 1226, 63 );
se_1175 = playSe( spep_0 + 0, 1175 );
setSeVolume( spep_0 + 0, 1175, 28 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 542, 0, 0, 0, 0, 255 );  --白　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1181, 0 );
    stopSe( SP_dodge - 12, se_1226, 0 );
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
setDisp( spep_0 -3 + 138, 1, 1);
setDisp( spep_0 -1 + 216, 1, 0);

setBlendColor(spep_0 -3 + 138,1,2,0.2,0.3,1,0.8);
setBlendColor(spep_0  + 216,1,2,0.2,0.3,1,0);
setGaussBlurKey(spep_0 -3 + 138,1,0.002);
setGaussBlurKey(spep_0 -1 + 212,1,0);

changeAnime( spep_0 -3 + 138, 1, 117);

setMoveKey( spep_0 -3 + 138, 1, -130.1, -256.7 , 0 );
setMoveKey( spep_0 -3 + 140, 1, -139.7, -250.7 , 0 );
setMoveKey( spep_0 -3 + 142, 1, -149, -244.9 , 0 );
setMoveKey( spep_0 -3 + 144, 1, -158, -239.2 , 0 );
setMoveKey( spep_0 -3 + 146, 1, -166.7, -233.7 , 0 );
setMoveKey( spep_0 -3 + 148, 1, -175.2, -228.4 , 0 );
setMoveKey( spep_0 -3 + 150, 1, -183.3, -223.3 , 0 );
setMoveKey( spep_0 -3 + 152, 1, -191.1, -218.3 , 0 );
setMoveKey( spep_0 -3 + 154, 1, -198.7, -213.6 , 0 );
setMoveKey( spep_0 -3 + 156, 1, -205.9, -209 , 0 );
setMoveKey( spep_0 -3 + 158, 1, -212.9, -204.5 , 0 );
setMoveKey( spep_0 -3 + 160, 1, -219.6, -200.3 , 0 );
setMoveKey( spep_0 -3 + 162, 1, -226, -196.2 , 0 );
setMoveKey( spep_0 -3 + 164, 1, -232.2, -192.3 , 0 );
setMoveKey( spep_0 -3 + 166, 1, -238.1, -188.5 , 0 );
setMoveKey( spep_0 -3 + 168, 1, -243.7, -185 , 0 );
setMoveKey( spep_0 -3 + 170, 1, -249.1, -181.6 , 0 );
setMoveKey( spep_0 -3 + 172, 1, -254.2, -178.4 , 0 );
setMoveKey( spep_0 -3 + 174, 1, -259.1, -175.3 , 0 );
setMoveKey( spep_0 -3 + 176, 1, -263.7, -172.4 , 0 );
setMoveKey( spep_0 -3 + 178, 1, -268, -169.8 , 0 );
setMoveKey( spep_0 -3 + 180, 1, -272.1, -167.2 , 0 );
setMoveKey( spep_0 -3 + 182, 1, -276, -164.9 , 0 );
setMoveKey( spep_0 -3 + 184, 1, -279.6, -162.7 , 0 );
setMoveKey( spep_0 -3 + 186, 1, -283, -160.7 , 0 );
setMoveKey( spep_0 -3 + 188, 1, -286.2, -158.9 , 0 );
setMoveKey( spep_0 -3 + 190, 1, -289.1, -157.2 , 0 );
setMoveKey( spep_0 -3 + 192, 1, -291.8, -155.8 , 0 );
setMoveKey( spep_0 -3 + 194, 1, -294.3, -154.5 , 0 );
setMoveKey( spep_0 -3 + 196, 1, -296.6, -153.3 , 0 );
setMoveKey( spep_0 -3 + 198, 1, -298.6, -152.4 , 0 );
setMoveKey( spep_0 -3 + 200, 1, -300.5, -151.6 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -302.1, -151 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -303.5, -150.5 , 0 );
setMoveKey( spep_0 -3 + 206, 1, -304.7, -150.3 , 0 );
setMoveKey( spep_0 -3 + 208, 1, -305.7, -150.2 , 0 );
setMoveKey( spep_0 -3 + 210, 1, -306.8, -150.1 , 0 );
setMoveKey( spep_0 -3 + 212, 1, -307.7, -150.1 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -308.6, -150.1 , 0 );
setMoveKey( spep_0 -1 + 216, 1, -309.5, -150.1 , 0 );

setScaleKey( spep_0-3 + 138, 1, 7.11, 7.11 );
setScaleKey( spep_0-3 + 140, 1, 6.94, 6.94 );
setScaleKey( spep_0-3 + 142, 1, 6.78, 6.78 );
setScaleKey( spep_0-3 + 144, 1, 6.62, 6.62 );
setScaleKey( spep_0-3 + 146, 1, 6.47, 6.47 );
setScaleKey( spep_0-3 + 148, 1, 6.33, 6.33 );
setScaleKey( spep_0-3 + 150, 1, 6.18, 6.18 );
setScaleKey( spep_0-3 + 152, 1, 6.05, 6.05 );
setScaleKey( spep_0-3 + 154, 1, 5.91, 5.91 );
setScaleKey( spep_0-3 + 156, 1, 5.79, 5.79 );
setScaleKey( spep_0-3 + 158, 1, 5.66, 5.66 );
setScaleKey( spep_0-3 + 160, 1, 5.55, 5.55 );
setScaleKey( spep_0-3 + 162, 1, 5.43, 5.43 );
setScaleKey( spep_0-3 + 164, 1, 5.32, 5.32 );
setScaleKey( spep_0-3 + 166, 1, 5.22, 5.22 );
setScaleKey( spep_0-3 + 168, 1, 5.12, 5.12 );
setScaleKey( spep_0-3 + 170, 1, 5.03, 5.03 );
setScaleKey( spep_0-3 + 172, 1, 4.94, 4.94 );
setScaleKey( spep_0-3 + 174, 1, 4.85, 4.85 );
setScaleKey( spep_0-3 + 176, 1, 4.78, 4.78 );
setScaleKey( spep_0-3 + 178, 1, 4.7, 4.7 );
setScaleKey( spep_0-3 + 180, 1, 4.63, 4.63 );
setScaleKey( spep_0-3 + 182, 1, 4.57, 4.57 );
setScaleKey( spep_0-3 + 184, 1, 4.51, 4.51 );
setScaleKey( spep_0-3 + 186, 1, 4.45, 4.45 );
setScaleKey( spep_0-3 + 188, 1, 4.4, 4.4 );
setScaleKey( spep_0-3 + 190, 1, 4.35, 4.35 );
setScaleKey( spep_0-3 + 192, 1, 4.31, 4.31 );
setScaleKey( spep_0-3 + 194, 1, 4.28, 4.28 );
setScaleKey( spep_0-3 + 196, 1, 4.25, 4.25 );
setScaleKey( spep_0-3 + 198, 1, 4.22, 4.22 );
setScaleKey( spep_0-3 + 200, 1, 4.2, 4.2 );
setScaleKey( spep_0-3 + 202, 1, 4.18, 4.18 );
setScaleKey( spep_0-3 + 204, 1, 4.17, 4.17 );
setScaleKey( spep_0-3 + 206, 1, 4.16, 4.16 );
setScaleKey( spep_0-1 + 216, 1, 4.16, 4.16 );

setRotateKey( spep_0 -3 + 138, 1, 0 );
setRotateKey( spep_0 -1 + 216, 1, 0 );

--敵の動き
setDisp( spep_0 -3 + 312, 1, 1);
setDisp( spep_0 -1 + 346, 1, 0);

changeAnime( spep_0 -3 + 312, 1, 7);

setMoveKey( spep_0 -3 + 312, 1, 2, 89 , 0 );
setMoveKey( spep_0 -3 + 314, 1, 2.5, 88.5 , 0 );
setMoveKey( spep_0 -3 + 316, 1, 2.8, 87.9 , 0 );
setMoveKey( spep_0 -3 + 318, 1, 2.5, 86.9 , 0 );
setMoveKey( spep_0 -3 + 320, 1, 1.5, 85.4 , 0 );
setMoveKey( spep_0 -3 + 322, 1, -0.5, 83.3 , 0 );
setMoveKey( spep_0 -3 + 324, 1, -3.7, 80.4 , 0 );
setMoveKey( spep_0 -3 + 326, 1, -8.4, 76.6 , 0 );
setMoveKey( spep_0 -3 + 328, 1, -14.7, 71.7 , 0 );
setMoveKey( spep_0 -3 + 330, 1, -23.1, 65.5 , 0 );
setMoveKey( spep_0 -3 + 332, 1, -34, 57.7 , 0 );
setMoveKey( spep_0 -3 + 334, 1, -47.9, 47.9 , 0 );
setMoveKey( spep_0 -3 + 336, 1, -65.8, 35.6 , 0 );
setMoveKey( spep_0 -3 + 338, 1, -88.8, 20 , 0 );
setMoveKey( spep_0 -3 + 340, 1, -119, -0.3 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -84.4, 14.7 , 0 );
setMoveKey( spep_0 -3 + 344, 1, -62.1, 20.3 , 0 );
setMoveKey( spep_0 -1 + 346, 1, -50, 10.5 , 0 );

setScaleKey( spep_0-3 + 312, 1, 0.11, 0.11 );
setScaleKey( spep_0-3 + 314, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 316, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 318, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 320, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 322, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 324, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 326, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 328, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 330, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 332, 1, 0.26, 0.26 );
setScaleKey( spep_0-3 + 334, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 336, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 338, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 340, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 342, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 344, 1, 0.54, 0.54 );
setScaleKey( spep_0-1 + 346, 1, 0.78, 0.78 );

setRotateKey( spep_0 -3 + 312, 1, 0 );
setRotateKey( spep_0 -1 + 346, 1, 0 );

--敵の動き
setDisp( spep_0 -3 + 368, 1, 1);
setDisp( spep_0 -1 + 386, 1, 0);

changeAnime( spep_0 -3 + 368, 1, 6);

setMoveKey( spep_0 -3 + 368, 1, 438.6, 266.5 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 364.9, 207.7 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 304.1, 154.8 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 256.2, 108 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 221.2, 67.1 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 163.1, 40.2 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 118, 19.3 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 85.7, 4.4 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 66.3, -4.6 , 0 );
setMoveKey( spep_0 -1 + 386, 1, 59.9, -7.6 , 0 );

setScaleKey( spep_0-3 + 368, 1, 1.97, 1.97 );
setScaleKey( spep_0-1 + 386, 1, 1.97, 1.97 );

setRotateKey( spep_0 -3 + 368, 1, -59 );
setRotateKey( spep_0 -3 + 370, 1, -60.8 );
setRotateKey( spep_0 -3 + 372, 1, -62.4 );
setRotateKey( spep_0 -3 + 374, 1, -63.7 );
setRotateKey( spep_0 -3 + 376, 1, -64.9 );
setRotateKey( spep_0 -3 + 378, 1, -65.8 );
setRotateKey( spep_0 -3 + 380, 1, -66.5 );
setRotateKey( spep_0 -3 + 382, 1, -67.1 );
setRotateKey( spep_0 -3 + 384, 1, -67.4 );
setRotateKey( spep_0 -1 + 386, 1, -67.5 );

--敵の動き
setDisp( spep_0 -3 + 404, 1, 1);
setDisp( spep_0 -1 + 434, 1, 0);

changeAnime( spep_0 -3 + 404, 1, 5);

setMoveKey( spep_0 -3 + 404, 1, 30.6, 28.7 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 107.2, 33.1 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 256.2, 19 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 360, 15.7 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 266.5, 11.8 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 287.8, 6.4 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 290.9, 3.2 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 305.3, -0.3 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 317.2, -4.6 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 319.9, -8.1 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 318.1, -25.3 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 322.7, -25.3 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 326.4, -26.4 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 321.7, -28.2 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 328.2, -25.8 , 0 );
setMoveKey( spep_0 -1 + 434, 1, 334.6, -23.5 , 0 );

setScaleKey( spep_0-3 + 404, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 406, 1, 1.29, 1.29 );
setScaleKey( spep_0-3 + 408, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 410, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 412, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 414, 1, 0.14, 0.14 );
setScaleKey( spep_0-3 + 416, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 418, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 420, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 422, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 424, 1, 0.03, 0.03 );
setScaleKey( spep_0-1 + 434, 1, 0.03, 0.03 );

setRotateKey( spep_0 -3 + 404, 1, 43.7 );
setRotateKey( spep_0 -3 + 406, 1, 43.7 );
setRotateKey( spep_0 -3 + 408, 1, 43.6 );
setRotateKey( spep_0 -3 + 412, 1, 43.6 );
setRotateKey( spep_0 -3 + 414, 1, 43.7 );
setRotateKey( spep_0 -1 + 434, 1, 43.7 );

--敵の動き
setDisp( spep_0 -3 + 508, 1, 1);
setDisp( spep_0 -2 + 542, 1, 0);

changeAnime( spep_0 -3 + 508, 1, 107);

setMoveKey( spep_0 -3 + 508, 1, -88.4, -24.4 , 0 );
setMoveKey( spep_0 -3 + 510, 1, -89.1, 3.4 , 0 );
setMoveKey( spep_0 -3 + 512, 1, -84.5, -17.2 , 0 );
setMoveKey( spep_0 -3 + 514, 1, -87.3, 0.2 , 0 );
setMoveKey( spep_0 -3 + 516, 1, -88, -10.6 , 0 );
setMoveKey( spep_0 -3 + 518, 1, -91.7, 7.2 , 0 );
setMoveKey( spep_0 -3 + 520, 1, -89, 10.9 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -82.9, 13.3 , 0 );
setMoveKey( spep_0 -3 + 524, 1, -84, 12.6 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -79.5, 18.7 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -72.4, 23.9 , 0 );
setMoveKey( spep_0 -3 + 530, 1, -71.9, 46.1 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -69.8, 39.3 , 0 );
setMoveKey( spep_0 -3 + 534, 1, -69.3, 56.6 , 0 );
setMoveKey( spep_0 -3 + 536, 1, -62.7, 55.1 , 0 );
setMoveKey( spep_0 -3 + 538, 1, -51.1, 81.7 , 0 );
setMoveKey( spep_0 -3 + 540, 1, -18.1, 127 , 0 );
setMoveKey( spep_0 -2 + 542, 1, 126.2, 357.9 , 0 );

setScaleKey( spep_0-3 + 508, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 510, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 518, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 520, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 522, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 524, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 526, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 528, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 530, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 532, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 534, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 536, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 538, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 540, 1, 0.5, 0.5 );
setScaleKey( spep_0-2 + 542, 1, 1.52, 1.52 );

setRotateKey( spep_0 -3 + 508, 1, -80 );
setRotateKey( spep_0 -3 + 510, 1, -80.1 );
setRotateKey( spep_0 -3 + 526, 1, -80.1 );
setRotateKey( spep_0 -3 + 528, 1, -80.2 );
setRotateKey( spep_0 -3 + 538, 1, -80.2 );
setRotateKey( spep_0 -3 + 540, 1, -80.1 );
setRotateKey( spep_0 -2 + 542, 1, -80 );

--SE

se_1004 = playSe( spep_0 + 60, 1004 );
setSeVolume( spep_0 + 60, 1004, 56 );
se_1173 = playSe( spep_0 + 60, 1173 );
setSeVolume( spep_0 + 60, 1173, 0 );
setSeVolume( spep_0 + 144, 1173, 0 );
setSeVolume( spep_0 + 145, 1173, 33.33 );
setSeVolume( spep_0 + 146, 1173, 66.67 );
setSeVolume( spep_0 + 147, 1173, 100 );
playSe( spep_0 + 61, 1003 );
setSeVolume( spep_0 + 61, 1003, 63 );
playSe( spep_0 + 83, 1072 );
playSe( spep_0 + 117, 1182 );
setSeVolume( spep_0 + 117, 1182, 126 );
se_1109 = playSe( spep_0 + 117, 1109 );
setSeVolume( spep_0 + 117, 1109, 79 );
se_1116 = playSe( spep_0 + 117, 1116 );
playSe( spep_0 + 118, 1027 );
playSe( spep_0 + 120, 1046 );
setSeVolume( spep_0 + 120, 1046, 89 );
se_1227 = playSe( spep_0 + 131, 1227 );
se_1216 = playSe( spep_0 + 131, 1216 );
setSeVolume( spep_0 + 131, 1216, 75 );
se_1241 = playSe( spep_0 + 141, 1241 );
se_1240 = playSe( spep_0 + 159, 1240 );
se_1116 = playSe( spep_0 + 235, 1116 );
se_0009 = playSe( spep_0 + 235, 9 );
setSeVolume( spep_0 + 235, 9, 0 );
setSeVolume( spep_0 + 236, 9, 3.85 );
setSeVolume( spep_0 + 237, 9, 7.69 );
setSeVolume( spep_0 + 238, 9, 11.54 );
setSeVolume( spep_0 + 239, 9, 15.38 );
setSeVolume( spep_0 + 240, 9, 19.23 );
setSeVolume( spep_0 + 241, 9, 23.08 );
setSeVolume( spep_0 + 242, 9, 26.92 );
setSeVolume( spep_0 + 243, 9, 30.77 );
setSeVolume( spep_0 + 244, 9, 34.62 );
setSeVolume( spep_0 + 245, 9, 38.46 );
setSeVolume( spep_0 + 246, 9, 42.31 );
setSeVolume( spep_0 + 247, 9, 46.15 );
setSeVolume( spep_0 + 248, 9, 50 );
setSeVolume( spep_0 + 249, 9, 53.85 );
setSeVolume( spep_0 + 250, 9, 57.69 );
setSeVolume( spep_0 + 251, 9, 61.54 );
setSeVolume( spep_0 + 252, 9, 65.38 );
setSeVolume( spep_0 + 253, 9, 69.23 );
setSeVolume( spep_0 + 254, 9, 73.08 );
setSeVolume( spep_0 + 255, 9, 76.92 );
setSeVolume( spep_0 + 256, 9, 80.77 );
setSeVolume( spep_0 + 257, 9, 84.62 );
setSeVolume( spep_0 + 258, 9, 88.46 );
setSeVolume( spep_0 + 259, 9, 92.31 );
setSeVolume( spep_0 + 260, 9, 96.15 );
setSeVolume( spep_0 + 261, 9, 100 );
playSe( spep_0 + 235, 20 );
setSeVolume( spep_0 + 235, 20, 0 );
setSeVolume( spep_0 + 239, 20, 7.14 );
setSeVolume( spep_0 + 240, 20, 14.29 );
setSeVolume( spep_0 + 241, 20, 21.43 );
setSeVolume( spep_0 + 242, 20, 28.57 );
setSeVolume( spep_0 + 243, 20, 35.71 );
setSeVolume( spep_0 + 244, 20, 42.86 );
setSeVolume( spep_0 + 245, 20, 50 );
setSeVolume( spep_0 + 246, 20, 57.14 );
setSeVolume( spep_0 + 247, 20, 64.29 );
setSeVolume( spep_0 + 248, 20, 71.43 );
setSeVolume( spep_0 + 249, 20, 78.57 );
setSeVolume( spep_0 + 250, 20, 85.71 );
setSeVolume( spep_0 + 251, 20, 92.86 );
setSeVolume( spep_0 + 252, 20, 100 );
se_1004 = playSe( spep_0 + 242, 1004 );
playSe( spep_0 + 261, 1009 );
se_11821 = playSe( spep_0 + 261, 1182 );
setSeVolume( spep_0 + 261, 1182, 158 );
playSe( spep_0 + 262, 1187 );
setSeVolume( spep_0 + 262, 1187, 89 );
playSe( spep_0 + 270, 1110 );
setSeVolume( spep_0 + 270, 1110, 63 );
se_1183 = playSe( spep_0 + 312, 1183 );
se_1182 = playSe( spep_0 + 348, 1182 );
se_1118 = playSe( spep_0 + 349, 1118 );
setSeVolume( spep_0 + 349, 1118, 56 );
se_0044 = playSe( spep_0 + 349, 44 );
setSeVolume( spep_0 + 349, 44, 68 );
playSe( spep_0 + 375, 1189 );
playSe( spep_0 + 388, 1004 );
playSe( spep_0 + 403, 1120 );
playSe( spep_0 + 433, 19 );
setSeVolume( spep_0 + 433, 19, 76 );
playSe( spep_0 + 433, 1023 );
setSeVolume( spep_0 + 433, 1023, 79 );
se_1168 = playSe( spep_0 + 433, 1168 );
se_1044 = playSe( spep_0 + 433, 1044 );
setSeVolume( spep_0 + 433, 1044, 56 );
playSe( spep_0 + 451, 1007 );
se_1002 = playSe( spep_0 + 456, 1002 );
se_1188 = playSe( spep_0 + 474, 1188 );
se_1033 = playSe( spep_0 + 499, 1033 );
setSeVolume( spep_0 + 499, 1033, 67 );
se_1023 = playSe( spep_0 + 499, 1023 );
se_1025 = playSe( spep_0 + 501, 1025 );
se_1024 = playSe( spep_0 + 501, 1024 );
setSeVolume( spep_0 + 501, 1024, 67 );

stopSe( spep_0 + 131, se_1181, 0 );
stopSe( spep_0 + 131, se_1226, 0 );
stopSe( spep_0 + 71, se_1175, 57 );
stopSe( spep_0 + 69, se_1004, 9 );
stopSe( spep_0 + 180, se_1173, 22 );
stopSe( spep_0 + 130, se_1109, 8 );
stopSe( spep_0 + 138, se_1116, 16 );
stopSe( spep_0 + 193, se_1227, 43 );
stopSe( spep_0 + 158, se_1216, 22 );
stopSe( spep_0 + 170, se_1241, 61 );
stopSe( spep_0 + 215, se_1240, 25 );
stopSe( spep_0 + 259, se_1116, 15 );
stopSe( spep_0 + 270, se_0009, 0 );
stopSe( spep_0 + 253, se_1004, 5 );
stopSe( spep_0 + 268, se_11821, 10 );
stopSe( spep_0 + 388, se_1183, 0 );
stopSe( spep_0 + 384, se_1182, 16 );
stopSe( spep_0 + 383, se_1118, 5 );
stopSe( spep_0 + 377, se_0044, 7 );
stopSe( spep_0 + 506, se_1044, 0 );
stopSe( spep_0 + 479, se_1002, 0 );



--次の準備
spep_1=spep_0+540;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 80-1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 80-1, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1-1 + 80, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1-1 + 80, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1-1 + 80, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1-1 + 80, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

stopSe( spep_1 + 3, se_1168, 0 );
stopSe( spep_1 + 3, se_1188, 0 );
stopSe( spep_1 + 3, se_1033, 0 );
stopSe( spep_1 + 3, se_1023, 0 );
stopSe( spep_1 + 3, se_1025, 0 );
stopSe( spep_1 + 3, se_1024, 0 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 80;

------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 896, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 896, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 896, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 896, finish_f, 255 );


-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 896, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 896, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 896, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 896, finish_b, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 0, 1504, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--敵の動き
setDisp( spep_2 -3 + 156, 1, 1);
setDisp( spep_2 -1 + 302, 1, 0);

setGaussBlurKey(spep_2 -3 + 138,1,0.002);
setGaussBlurKey(spep_2 -3 + 216,1,0);

changeAnime( spep_2 -3 + 156, 1, 108);
changeAnime( spep_2 -3 + 220, 1, 5);
changeAnime( spep_2 -3 + 224, 1, 106);
changeAnime( spep_2 -3 + 258, 1, 5);

setMoveKey( spep_2-3 + 156, 1, -105.1, -57 , 0 );
setMoveKey( spep_2-3 + 158, 1, -106.4, -58.6 , 0 );
setMoveKey( spep_2-3 + 160, 1, -107.8, -60.3 , 0 );
setMoveKey( spep_2-3 + 162, 1, -2.6, -43.2 , 0 );
setMoveKey( spep_2-3 + 164, 1, 62.5, -84.3 , 0 );
setMoveKey( spep_2-3 + 166, 1, 60.1, -27.7 , 0 );
setMoveKey( spep_2-3 + 168, 1, 58.1, -71 , 0 );
setMoveKey( spep_2-3 + 170, 1, 64.8, -33.9 , 0 );
setMoveKey( spep_2-3 + 172, 1, 70.2, -35.2 , 0 );
setMoveKey( spep_2-3 + 174, 1, 67.7, -31 , 0 );
setMoveKey( spep_2-3 + 176, 1, 77.7, -455.2 , 0 );
setMoveKey( spep_2-3 + 178, 1, 66.2, -385.7 , 0 );
setMoveKey( spep_2-3 + 180, 1, 59.4, -344 , 0 );
setMoveKey( spep_2-3 + 182, 1, 57.1, -330.1 , 0 );
setMoveKey( spep_2-3 + 184, 1, -69.9, -186.8 , 0 );
setMoveKey( spep_2-3 + 188, 1, -69.9, -186.8 , 0 );
setMoveKey( spep_2-3 + 190, 1, -28, -92 , 0 );
setMoveKey( spep_2-3 + 192, 1, -16.4, -84.5 , 0 );
setMoveKey( spep_2-3 + 194, 1, -5.8, -77.6 , 0 );
setMoveKey( spep_2-3 + 196, 1, 4.1, -71.2 , 0 );
setMoveKey( spep_2-3 + 198, 1, 13.1, -65.4 , 0 );
setMoveKey( spep_2-3 + 200, 1, 21.2, -60.1 , 0 );
setMoveKey( spep_2-3 + 202, 1, 28.5, -55.4 , 0 );
setMoveKey( spep_2-3 + 204, 1, 34.9, -51.3 , 0 );
setMoveKey( spep_2-3 + 206, 1, 40.5, -47.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, 45.2, -44.6 , 0 );
setMoveKey( spep_2-3 + 210, 1, 49, -42.1 , 0 );
setMoveKey( spep_2-3 + 212, 1, 52, -40.2 , 0 );
setMoveKey( spep_2-3 + 214, 1, 54.2, -38.8 , 0 );
setMoveKey( spep_2-3 + 216, 1, 55.4, -38 , 0 );
setMoveKey( spep_2-3 + 218, 1, 55.9, -37.7 , 0 );
setMoveKey( spep_2-3 + 219, 1, 55.9, -37.7 , 0 );

setMoveKey( spep_2-3 + 220, 1, 140.4, 146.3 , 0 );
setMoveKey( spep_2-3 + 223, 1, 140.4, 146.3 , 0 );

setMoveKey( spep_2-3 + 224, 1, -393.6, 136.5 , 0 );
setMoveKey( spep_2-3 + 226, 1, -213.5, 158.6 , 0 );
setMoveKey( spep_2-3 + 228, 1, -162.8, 132.6 , 0 );
setMoveKey( spep_2-3 + 230, 1, -112.1, 106.6 , 0 );
setMoveKey( spep_2-3 + 232, 1, -61.4, 80.5 , 0 );
setMoveKey( spep_2-3 + 234, 1, -94.8, 72.5 , 0 );
setMoveKey( spep_2-3 + 236, 1, -128.2, 64.5 , 0 );
setMoveKey( spep_2-3 + 238, 1, -161.6, 56.4 , 0 );
setMoveKey( spep_2-3 + 240, 1, -188.9, 73.1 , 0 );
setMoveKey( spep_2-3 + 242, 1, -216.3, 89.8 , 0 );
setMoveKey( spep_2-3 + 244, 1, -243.6, 106.4 , 0 );
setMoveKey( spep_2-3 + 246, 1, -163.5, 84.4 , 0 );
setMoveKey( spep_2-3 + 248, 1, -83.3, 62.4 , 0 );
setMoveKey( spep_2-3 + 250, 1, -3.2, 40.4 , 0 );
setMoveKey( spep_2-3 + 252, 1, 10.8, 47.1 , 0 );
setMoveKey( spep_2-3 + 254, 1, 24.8, 53.8 , 0 );
setMoveKey( spep_2-3 + 256, 1, 38.7, 60.5 , 0 );
setMoveKey( spep_2-3 + 257, 1, 38.7, 60.5 , 0 );

setMoveKey( spep_2-3 + 258, 1, 21.3, 82.6 , 0 );
setMoveKey( spep_2-3 + 260, 1, 3.8, 104.7 , 0 );
setMoveKey( spep_2-3 + 262, 1, -13.6, 126.8 , 0 );
setMoveKey( spep_2-3 + 264, 1, 16.2, 105.8 , 0 );
setMoveKey( spep_2-3 + 266, 1, 30.6, 95.7 , 0 );
setMoveKey( spep_2-3 + 268, 1, 40.2, 88.9 , 0 );
setMoveKey( spep_2-3 + 270, 1, 52.5, 78.6 , 0 );
setMoveKey( spep_2-3 + 272, 1, 61.9, 70.7 , 0 );
setMoveKey( spep_2-3 + 274, 1, 69.2, 64.5 , 0 );
setMoveKey( spep_2-3 + 276, 1, 76.5, 57.9 , 0 );
setMoveKey( spep_2-3 + 278, 1, 82.3, 52.6 , 0 );
setMoveKey( spep_2-3 + 280, 1, 86.6, 48.3 , 0 );
setMoveKey( spep_2-3 + 282, 1, 90, 44.8 , 0 );
setMoveKey( spep_2-3 + 284, 1, 94.6, 41.3 , 0 );
setMoveKey( spep_2-3 + 286, 1, 98.1, 38.6 , 0 );
setMoveKey( spep_2-3 + 288, 1, 100.7, 35.8 , 0 );
setMoveKey( spep_2-3 + 290, 1, 102.5, 33.7 , 0 );
setMoveKey( spep_2-3 + 292, 1, 105.3, 31.1 , 0 );
setMoveKey( spep_2-3 + 294, 1, 107.1, 29.4 , 0 );
setMoveKey( spep_2-3 + 296, 1, 108.2, 28.3 , 0 );
setMoveKey( spep_2-3 + 298, 1, 108.7, 27.8 , 0 );
setMoveKey( spep_2-3 + 300, 1, 108.9, 27.6 , 0 );
setMoveKey( spep_2-1 + 302, 1, 109, 27.6 , 0 );

setScaleKey( spep_2-3 + 220, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 223, 1, 2.5, 2.5 );

setScaleKey( spep_2-3 + 224, 1, 2.54, 2.54 );
setScaleKey( spep_2-3 + 226, 1, 1.66, 1.66 );
setScaleKey( spep_2-3 + 228, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 230, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 232, 1, 1.18, 1.18 );
setScaleKey( spep_2-3 + 234, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 236, 1, 1.13, 1.13 );
setScaleKey( spep_2-3 + 238, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 240, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 242, 1, 1.29, 1.29 );
setScaleKey( spep_2-3 + 244, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 246, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 248, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 250, 1, 1.22, 1.22 );
setScaleKey( spep_2-3 + 252, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 254, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 256, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 257, 1, 1.01, 1.01 );

setScaleKey( spep_2-3 + 258, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 260, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 262, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 264, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 266, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 268, 1, 0.23, 0.23 );
setScaleKey( spep_2-3 + 270, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 272, 1, 0.16, 0.16 );
setScaleKey( spep_2-3 + 274, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 276, 1, 0.12, 0.12 );
setScaleKey( spep_2-3 + 278, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 280, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 282, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 284, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 286, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 292, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 294, 1, 0.06, 0.06 );
setScaleKey( spep_2-1 + 302, 1, 0.06, 0.06 );

setRotateKey( spep_2-3 + 156, 1, -5 );
setRotateKey( spep_2-3 + 174, 1, -5 );
setRotateKey( spep_2-3 + 176, 1, 4 );
setRotateKey( spep_2-3 + 182, 1, 4 );
setRotateKey( spep_2-3 + 184, 1, 6 );
setRotateKey( spep_2-3 + 188, 1, 6 );
setRotateKey( spep_2-3 + 190, 1, 0 );
setRotateKey( spep_2-3 + 192, 1, 2.7 );
setRotateKey( spep_2-3 + 194, 1, 5.3 );
setRotateKey( spep_2-3 + 196, 1, 7.6 );
setRotateKey( spep_2-3 + 198, 1, 9.8 );
setRotateKey( spep_2-3 + 200, 1, 11.7 );
setRotateKey( spep_2-3 + 202, 1, 13.4 );
setRotateKey( spep_2-3 + 204, 1, 15 );
setRotateKey( spep_2-3 + 206, 1, 16.3 );
setRotateKey( spep_2-3 + 208, 1, 17.4 );
setRotateKey( spep_2-3 + 210, 1, 18.3 );
setRotateKey( spep_2-3 + 212, 1, 19 );
setRotateKey( spep_2-3 + 214, 1, 19.5 );
setRotateKey( spep_2-3 + 216, 1, 19.8 );
setRotateKey( spep_2-3 + 218, 1, 20 );
setRotateKey( spep_2-3 + 219, 1, 20 );

setRotateKey( spep_2-3 + 220, 1, 50.8 );
setRotateKey( spep_2-3 + 223, 1, 50.8 );

setRotateKey( spep_2-3 + 224, 1, 56 );
setRotateKey( spep_2-3 + 232, 1, 56 );
setRotateKey( spep_2-3 + 234, 1, 58.4 );
setRotateKey( spep_2-3 + 236, 1, 60.8 );
setRotateKey( spep_2-3 + 238, 1, 63.2 );
setRotateKey( spep_2-3 + 240, 1, 62 );
setRotateKey( spep_2-3 + 242, 1, 60.7 );
setRotateKey( spep_2-3 + 244, 1, 59.5 );
setRotateKey( spep_2-3 + 250, 1, 59.5 );
setRotateKey( spep_2-3 + 252, 1, 57.9 );
setRotateKey( spep_2-3 + 254, 1, 56.3 );
setRotateKey( spep_2-3 + 256, 1, 54.7 );
setRotateKey( spep_2-3 + 257, 1, 54.7 );

setRotateKey( spep_2-3 + 258, 1, 54.7 );
setRotateKey( spep_2-3 + 262, 1, 54.7 );
setRotateKey( spep_2-3 + 264, 1, 56.2 );
setRotateKey( spep_2-3 + 266, 1, 56.9 );
setRotateKey( spep_2-3 + 268, 1, 57.4 );
setRotateKey( spep_2-3 + 270, 1, 57.8 );
setRotateKey( spep_2-3 + 272, 1, 58.1 );
setRotateKey( spep_2-3 + 274, 1, 58.4 );
setRotateKey( spep_2-3 + 276, 1, 58.5 );
setRotateKey( spep_2-3 + 278, 1, 58.7 );
setRotateKey( spep_2-3 + 280, 1, 58.8 );
setRotateKey( spep_2-3 + 282, 1, 58.9 );
setRotateKey( spep_2-3 + 290, 1, 58.9 );
setRotateKey( spep_2-3 + 292, 1, 59 );
setRotateKey( spep_2-1 + 302, 1, 59 );

--SE
playSe( spep_2 + 12, 1018 );
se_1190 = playSe( spep_2 + 0, 1190 );
setSeVolume( spep_2 + 0, 1190, 0 );
setSeVolume( spep_2 + 5, 1190, 0 );
setSeVolume( spep_2 + 6, 1190, 24 );
setSeVolume( spep_2 + 7, 1190, 48 );
playSe( spep_2 + 4, 1233 );
setSeVolume( spep_2 + 4, 1233, 63 );
playSe( spep_2 + 4, 1006 );
playSe( spep_2 + 4, 1012 );
playSe( spep_2 + 58, 1004 );
se_1116 = playSe( spep_2 + 58, 1116 );
playSe( spep_2 + 90, 1027 );
playSe( spep_2 + 90, 1258 );
playSe( spep_2 + 90, 1259 );
se_1190 = playSe( spep_2 + 155, 1190 );
playSe( spep_2 + 158, 1027 );
playSe( spep_2 + 160, 1188 );
playSe( spep_2 + 160, 1060 );
se_1182 = playSe( spep_2 + 160, 1182 );
playSe( spep_2 + 183, 1024 );
setSeVolume( spep_2 + 183, 1024, 126 );
se_1190 = playSe( spep_2 + 183, 1190 );
se_1183 = playSe( spep_2 + 215, 1183 );
se_1121 = playSe( spep_2 + 255, 1121 );
setSeVolume( spep_2 + 255, 1121, 79 );
playSe( spep_2 + 312, 1023 );
playSe( spep_2 + 312, 1159 );

stopSe( spep_2 + 33, se_1190, 17 );
stopSe( spep_2 + 82, se_1116, 19 );
stopSe( spep_2 + 166, se_1190, 26 );
stopSe( spep_2 + 173, se_1182, 33 );
stopSe( spep_2 + 198, se_1190, 15 );
stopSe( spep_2 + 318, se_1183, 0 );
stopSe( spep_2 + 318, se_1121, 0 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 302 );
endPhase( spep_2 + 400 );

end