--4020380:魔人ブウ(アルティメット悟飯吸収)_アルティメットキャノン
--sp_effect_a2_00137

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
SP_01=	155890	;--	岩山から飛び立つ〜気弾溜め
SP_02=	155891	;--	岩山から飛び立つ〜気弾溜め
SP_03=	155892	;--	気弾を掲げながら突進〜フィニッシュ

--エフェクト(てき)
SP_01x=	155893	;--	岩山から飛び立つ〜気弾溜め	(敵)
SP_02x=	155894	;--	岩山から飛び立つ〜気弾溜め	(敵)
SP_03x=	155892	;--	気弾を掲げながら突進〜フィニッシュ	
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
-- 岩山から飛び立つ〜気弾溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 720, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 720, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 720, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 720, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 720, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 720, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 720, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 720, tame_b, 255 );

--SE
--入り
SE_001= playSe( spep_0 + 4, 44 );
setPitch( spep_0 + 4, SE_001, -600 );
setTimeStretch( SE_001, 0.6, 10, 1 );

--腕を広げる
SE_002= playSe( spep_0 + 44, 1233 );
setSeVolumeByWorkId( spep_0 + 44, SE_002, 14 );
setPitch( spep_0 + 44, SE_002, -800 );
setTimeStretch( SE_002, 0.47, 10, 1 );
SE_003= playSe( spep_0 + 48, 1003 );

--崖から飛び立つ
SE_004= playSe( spep_0 + 98, 1182 );
setSeVolumeByWorkId( spep_0 + 98, SE_005, 84 );
SE_005= playSe( spep_0 + 98, 9 );
SE_006= playSe( spep_0 + 98, 1183 );
SE_007= playSe( spep_0 + 124, 1121 );
setSeVolumeByWorkId( spep_0 + 124, SE_007, 56 );
stopSe( spep_0 + 180, SE_007, 0 );
SE_008= playSe( spep_0 + 128, 1277 );
setSeVolumeByWorkId( spep_0 + 128, SE_008, 74 );

--連続気弾
SE_009= playSe( spep_0 + 174, 1016 );
SE_010= playSe( spep_0 + 174, 1021 );
setSeVolumeByWorkId( spep_0 + 174, SE_010, 76 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_006, 0 );
    stopSe( SP_dodge - 12, SE_008, 0 );
    stopSe( SP_dodge - 12, SE_009, 0 );
    stopSe( SP_dodge - 12, SE_010, 0 );
    
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

--文字エントリー
ctzudododo = entryEffectLife( spep_0-3 + 268,  10014, 74, 0x100, -1, 0, 23.9, 96 );
setEffShake( spep_0-3 + 268, ctzudododo, 74, 10 );
setEffMoveKey( spep_0-3 + 268, ctzudododo, 23.9, 96 , 0 );
setEffMoveKey( spep_0-3 + 270, ctzudododo, 44.6, 153.1 , 0 );
setEffMoveKey( spep_0-3 + 272, ctzudododo, 33.9, 135.5 , 0 );
setEffMoveKey( spep_0-3 + 274, ctzudododo, 80.6, 252.3 , 0 );
setEffMoveKey( spep_0-3 + 276, ctzudododo, 67.1, 231.4 , 0 );
setEffMoveKey( spep_0-3 + 278, ctzudododo, 82.2, 257.1 , 0 );
setEffMoveKey( spep_0-3 + 280, ctzudododo, 68.6, 235.7 , 0 );
setEffMoveKey( spep_0-3 + 282, ctzudododo, 83.8, 261.5 , 0 );
setEffMoveKey( spep_0-3 + 284, ctzudododo, 70, 239.6 , 0 );
setEffMoveKey( spep_0-3 + 286, ctzudododo, 85.4, 265.5 , 0 );

setEffMoveKey( spep_0-3 + 292, ctzudododo, 72.4, 246.5 , 0 );
setEffMoveKey( spep_0-3 + 294, ctzudododo, 87.8, 272.2 , 0 );
setEffMoveKey( spep_0-3 + 296, ctzudododo, 73.4, 249.3 , 0 );
setEffMoveKey( spep_0-3 + 298, ctzudododo, 88.8, 275.1 , 0 );
setEffMoveKey( spep_0-3 + 300, ctzudododo, 74.2, 251.8 , 0 );
setEffMoveKey( spep_0-3 + 302, ctzudododo, 89.7, 277.6 , 0 );
setEffMoveKey( spep_0-3 + 304, ctzudododo, 74.9, 254 , 0 );
setEffMoveKey( spep_0-3 + 306, ctzudododo, 90.5, 279.7 , 0 );
setEffMoveKey( spep_0-3 + 308, ctzudododo, 75.6, 255.8 , 0 );
setEffMoveKey( spep_0-3 + 310, ctzudododo, 91, 281.5 , 0 );
setEffMoveKey( spep_0-3 + 312, ctzudododo, 76, 257.2 , 0 );

setEffMoveKey( spep_0-3 + 316, ctzudododo, 76.4, 258.2 , 0 );
setEffMoveKey( spep_0-3 + 318, ctzudododo, 91.8, 283.8 , 0 );
setEffMoveKey( spep_0-3 + 320, ctzudododo, 76.7, 259 , 0 );
setEffMoveKey( spep_0-3 + 322, ctzudododo, 92.1, 284.3 , 0 );
setEffMoveKey( spep_0-3 + 324, ctzudododo, 76.8, 259.4 , 0 );
setEffMoveKey( spep_0-3 + 326, ctzudododo, 92.2, 284.5 , 0 );
setEffMoveKey( spep_0-3 + 328, ctzudododo, 77.7, 261.7 , 0 );
setEffMoveKey( spep_0-3 + 330, ctzudododo, 95.8, 294.5 , 0 );
setEffMoveKey( spep_0-3 + 332, ctzudododo, 84.3, 280.5 , 0 );
setEffMoveKey( spep_0-3 + 334, ctzudododo, 106.6, 324.3 , 0 );
setEffMoveKey( spep_0-3 + 336, ctzudododo, 95.6, 313.2 , 0 );
setEffMoveKey( spep_0-3 + 338, ctzudododo, 117.5, 354.1 , 0 );
setEffMoveKey( spep_0-3 + 340, ctzudododo, 102.2, 332 , 0 );
setEffMoveKey( spep_0-3 + 342, ctzudododo, 103, 334.3 , 0 );

setEffScaleKey( spep_0-3 + 268, ctzudododo, 1.87, 1.87 );
setEffScaleKey( spep_0-3 + 270, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_0-3 + 272, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_0-3 + 274, ctzudododo, 3.05, 3.05 );
setEffScaleKey( spep_0-3 + 276, ctzudododo, 3.07, 3.07 );
setEffScaleKey( spep_0-3 + 278, ctzudododo, 3.09, 3.09 );
setEffScaleKey( spep_0-3 + 280, ctzudododo, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 282, ctzudododo, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 284, ctzudododo, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 286, ctzudododo, 3.15, 3.15 );

setEffScaleKey( spep_0-3 + 292, ctzudododo, 3.19, 3.19 );
setEffScaleKey( spep_0-3 + 294, ctzudododo, 3.2, 3.2 );
setEffScaleKey( spep_0-3 + 296, ctzudododo, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 298, ctzudododo, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 300, ctzudododo, 3.23, 3.23 );
setEffScaleKey( spep_0-3 + 302, ctzudododo, 3.24, 3.24 );
setEffScaleKey( spep_0-3 + 304, ctzudododo, 3.25, 3.25 );
setEffScaleKey( spep_0-3 + 306, ctzudododo, 3.26, 3.26 );
setEffScaleKey( spep_0-3 + 308, ctzudododo, 3.26, 3.26 );
setEffScaleKey( spep_0-3 + 310, ctzudododo, 3.27, 3.27 );
setEffScaleKey( spep_0-3 + 312, ctzudododo, 3.28, 3.28 );

setEffScaleKey( spep_0-3 + 316, ctzudododo, 3.28, 3.28 );
setEffScaleKey( spep_0-3 + 318, ctzudododo, 3.29, 3.29 );
setEffScaleKey( spep_0-3 + 324, ctzudododo, 3.29, 3.29 );
setEffScaleKey( spep_0-3 + 326, ctzudododo, 3.3, 3.3 );
setEffScaleKey( spep_0-3 + 328, ctzudododo, 3.32, 3.32 );
setEffScaleKey( spep_0-3 + 330, ctzudododo, 3.37, 3.37 );
setEffScaleKey( spep_0-3 + 332, ctzudododo, 3.47, 3.47 );
setEffScaleKey( spep_0-3 + 334, ctzudododo, 3.6, 3.6 );
setEffScaleKey( spep_0-3 + 336, ctzudododo, 3.73, 3.73 );
setEffScaleKey( spep_0-3 + 338, ctzudododo, 3.83, 3.83 );
setEffScaleKey( spep_0-3 + 340, ctzudododo, 3.88, 3.88 );
setEffScaleKey( spep_0-3 + 342, ctzudododo, 3.9, 3.9 );

setEffRotateKey( spep_0-3 + 268, ctzudododo, 48.4 );
setEffRotateKey( spep_0-3 + 274, ctzudododo, 48.4 );
setEffRotateKey( spep_0-3 + 276, ctzudododo, 48.5 );
setEffRotateKey( spep_0-3 + 286, ctzudododo, 48.5 );

setEffRotateKey( spep_0-3 + 292, ctzudododo, 48.5 );
setEffRotateKey( spep_0-3 + 312, ctzudododo, 48.5 );

setEffRotateKey( spep_0-3 + 316, ctzudododo, 48.5 );
setEffRotateKey( spep_0-3 + 324, ctzudododo, 48.5 );
setEffRotateKey( spep_0-3 + 326, ctzudododo, 48.4 );
setEffRotateKey( spep_0-3 + 342, ctzudododo, 48.4 );

setEffAlphaKey( spep_0-3 + 268, ctzudododo, 82 );
setEffAlphaKey( spep_0-3 + 272, ctzudododo, 82 );
setEffAlphaKey( spep_0-3 + 274, ctzudododo, 255 );
setEffAlphaKey( spep_0-3 + 286, ctzudododo, 255 );
setEffAlphaKey( spep_0-3 + 316, ctzudododo, 255 );
setEffAlphaKey( spep_0-3 + 326, ctzudododo, 255 );
setEffAlphaKey( spep_0-3 + 328, ctzudododo, 247 );
setEffAlphaKey( spep_0-3 + 330, ctzudododo, 223 );
setEffAlphaKey( spep_0-3 + 332, ctzudododo, 183 );
setEffAlphaKey( spep_0-3 + 334, ctzudododo, 128 );
setEffAlphaKey( spep_0-3 + 336, ctzudododo, 72 );
setEffAlphaKey( spep_0-3 + 338, ctzudododo, 32 );
setEffAlphaKey( spep_0-3 + 340, ctzudododo, 8 );
setEffAlphaKey( spep_0-3 + 342, ctzudododo, 0 );

--敵の動き
setDisp( spep_0-3 + 256, 1, 1);
setDisp( spep_0-1 + 344, 1, 0);

changeAnime( spep_0-3 + 256, 1, 104);
changeAnime( spep_0-3 + 298, 1, 108);

setMoveKey( spep_0-3 + 256, 1, 14.1, 0 , 0 );
setMoveKey( spep_0-3 + 266, 1, 14.1, 0 , 0 );
setMoveKey( spep_0-3 + 268, 1, 16.7, -2.9 , 0 );
setMoveKey( spep_0-3 + 270, 1, 19.2, 5 , 0 );
setMoveKey( spep_0-3 + 272, 1, 16.5, -6.4 , 0 );
setMoveKey( spep_0-3 + 274, 1, 14.6, 3.1 , 0 );
setMoveKey( spep_0-3 + 276, 1, 21.8, -1.9 , 0 );
setMoveKey( spep_0-3 + 278, 1, 14.4, -2.6 , 0 );
setMoveKey( spep_0-3 + 280, 1, 19.1, -1.3 , 0 );
setMoveKey( spep_0-3 + 282, 1, 13.4, 0.4 , 0 );
setMoveKey( spep_0-3 + 284, 1, 19.5, -2.5 , 0 );
setMoveKey( spep_0-3 + 286, 1, 16.2, 2.6 , 0 );
setMoveKey( spep_0-3 + 288, 1, 14.8, -2.7 , 0 );
setMoveKey( spep_0-3 + 290, 1, 18.8, 0.9 , 0 );
setMoveKey( spep_0-3 + 292, 1, 15, -1.7 , 0 );
setMoveKey( spep_0-3 + 294, 1, 18.9, 2 , 0 );
setMoveKey( spep_0-3 + 296, 1, 14.5, -1.1 , 0 );
setMoveKey( spep_0-3 + 297, 1, 14.5, -1.1 , 0 );

setMoveKey( spep_0-3 + 298, 1, 19.8, -2.9 , 0 );
setMoveKey( spep_0-3 + 300, 1, 16.3, 0.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, 19.4, -5.3 , 0 );
setMoveKey( spep_0-3 + 304, 1, 25.8, -11.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, 36.4, -22 , 0 );
setMoveKey( spep_0-3 + 308, 1, 53.3, -38.7 , 0 );
setMoveKey( spep_0-3 + 310, 1, 79.7, -64.7 , 0 );
setMoveKey( spep_0-3 + 312, 1, 115.7, -100.3 , 0 );
setMoveKey( spep_0-3 + 314, 1, 152.5, -136.5 , 0 );
setMoveKey( spep_0-3 + 316, 1, 182.7, -166.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, 206.5, -189.7 , 0 );
setMoveKey( spep_0-3 + 320, 1, 225.5, -208.5 , 0 );
setMoveKey( spep_0-3 + 322, 1, 241, -223.8 , 0 );
setMoveKey( spep_0-3 + 324, 1, 254, -236.5 , 0 );
setMoveKey( spep_0-3 + 326, 1, 265, -247.4 , 0 );
setMoveKey( spep_0-3 + 328, 1, 274.4, -256.7 , 0 );
setMoveKey( spep_0-3 + 330, 1, 282.5, -264.7 , 0 );
setMoveKey( spep_0-3 + 332, 1, 289.6, -271.7 , 0 );
setMoveKey( spep_0-3 + 334, 1, 295.8, -277.8 , 0 );
setMoveKey( spep_0-3 + 336, 1, 301.2, -283.2 , 0 );
setMoveKey( spep_0-3 + 338, 1, 306, -287.9 , 0 );
setMoveKey( spep_0-3 + 340, 1, 310.2, -292 , 0 );
setMoveKey( spep_0-3 + 342, 1, 313.9, -295.6 , 0 );
setMoveKey( spep_0-1 + 344, 1, 316.9, -298.7 , 0 );

setScaleKey( spep_0-3 + 256, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 297, 1, 0.9, 0.9 );

setScaleKey( spep_0-3 + 298, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 300, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 302, 1, 0.89, 0.89 );
setScaleKey( spep_0-3 + 304, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 306, 1, 0.87, 0.87 );
setScaleKey( spep_0-3 + 308, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 310, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 312, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 314, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 316, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 318, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 320, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 322, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 324, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 326, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 328, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 330, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 332, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 334, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 336, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 338, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 340, 1, 0.51, 0.51 );
setScaleKey( spep_0-1 + 344, 1, 0.5, 0.5 );

setRotateKey( spep_0-3 + 256, 1, 0 );
setRotateKey( spep_0-3 + 298, 1, 0 );
setRotateKey( spep_0-3 + 300, 1, 0.2 );
setRotateKey( spep_0-3 + 302, 1, 0.6 );
setRotateKey( spep_0-3 + 304, 1, 1.4 );
setRotateKey( spep_0-3 + 306, 1, 2.6 );
setRotateKey( spep_0-3 + 308, 1, 4.5 );
setRotateKey( spep_0-3 + 310, 1, 7.6 );
setRotateKey( spep_0-3 + 312, 1, 11.7 );
setRotateKey( spep_0-3 + 314, 1, 16 );
setRotateKey( spep_0-3 + 316, 1, 19.5 );
setRotateKey( spep_0-3 + 318, 1, 22.2 );
setRotateKey( spep_0-3 + 320, 1, 24.4 );
setRotateKey( spep_0-3 + 322, 1, 26.2 );
setRotateKey( spep_0-3 + 324, 1, 27.7 );
setRotateKey( spep_0-3 + 326, 1, 29 );
setRotateKey( spep_0-3 + 328, 1, 30.1 );
setRotateKey( spep_0-3 + 330, 1, 31 );
setRotateKey( spep_0-3 + 332, 1, 31.8 );
setRotateKey( spep_0-3 + 334, 1, 32.5 );
setRotateKey( spep_0-3 + 336, 1, 33.2 );
setRotateKey( spep_0-3 + 338, 1, 33.7 );
setRotateKey( spep_0-3 + 340, 1, 34.2 );
setRotateKey( spep_0-3 + 342, 1, 34.6 );
setRotateKey( spep_0-1 + 344, 1, 35 );

--敵の動き
setDisp( spep_0-3 + 436, 1, 1);
setDisp( spep_0-1 + 480, 1, 0);

changeAnime( spep_0-3 + 436, 1, 108);

setMoveKey( spep_0-3 + 436, 1, 69.2, -103.8 , 0 );
setMoveKey( spep_0-3 + 438, 1, 66.6, -99.2 , 0 );
setMoveKey( spep_0-3 + 440, 1, 68.4, -99.7 , 0 );
setMoveKey( spep_0-3 + 442, 1, 63, -97.2 , 0 );
setMoveKey( spep_0-3 + 444, 1, 65.1, -98.8 , 0 );
setMoveKey( spep_0-3 + 446, 1, 60.6, -94.2 , 0 );
setMoveKey( spep_0-3 + 448, 1, 61, -98.1 , 0 );
setMoveKey( spep_0-3 + 450, 1, 57.6, -94.8 , 0 );
setMoveKey( spep_0-3 + 452, 1, 60.1, -95.3 , 0 );
setMoveKey( spep_0-3 + 454, 1, 55.1, -94 , 0 );
setMoveKey( spep_0-3 + 456, 1, 57.6, -92.4 , 0 );
setMoveKey( spep_0-3 + 458, 1, 53.9, -95 , 0 );
setMoveKey( spep_0-3 + 460, 1, 57.2, -93.5 , 0 );
setMoveKey( spep_0-3 + 462, 1, 53.8, -94.8 , 0 );
setMoveKey( spep_0-3 + 464, 1, 58.5, -92.8 , 0 );
setMoveKey( spep_0-3 + 466, 1, 56.2, -96 , 0 );
setMoveKey( spep_0-3 + 468, 1, 57.8, -92.8 , 0 );
setMoveKey( spep_0-3 + 470, 1, 58.5, -99.7 , 0 );
setMoveKey( spep_0-3 + 472, 1, 67, -100.3 , 0 );
setMoveKey( spep_0-3 + 474, 1, 73.7, -109.4 , 0 );
setMoveKey( spep_0-3 + 477, 1, 73.7, -109.4 , 0 );

setMoveKey( spep_0-3 + 478, 1, 68.4, -116.3 , 0 );
setMoveKey( spep_0-1 + 480, 1, 104.5, -114.5 , 0 );

a=0.3;

setScaleKey( spep_0-3 + 436, 1, 0.6+a, 0.6+a );
setScaleKey( spep_0-3 + 438, 1, 0.59+a, 0.59+a );
setScaleKey( spep_0-3 + 440, 1, 0.58+a, 0.58+a );
setScaleKey( spep_0-3 + 442, 1, 0.57+a, 0.57+a );
setScaleKey( spep_0-3 + 444, 1, 0.55+a, 0.55+a );
setScaleKey( spep_0-3 + 446, 1, 0.55+a, 0.55+a );
setScaleKey( spep_0-3 + 448, 1, 0.54+a, 0.54+a );
setScaleKey( spep_0-3 + 450, 1, 0.53+a, 0.53+a );
setScaleKey( spep_0-3 + 452, 1, 0.52+a, 0.52+a );
setScaleKey( spep_0-3 + 454, 1, 0.51+a, 0.51+a );
setScaleKey( spep_0-3 + 460, 1, 0.51+a, 0.51+a );
setScaleKey( spep_0-3 + 462, 1, 0.52+a, 0.52+a );
setScaleKey( spep_0-3 + 464, 1, 0.54+a, 0.54+a );
setScaleKey( spep_0-3 + 466, 1, 0.56+a, 0.56+a );
setScaleKey( spep_0-3 + 468, 1, 0.59+a, 0.59+a );
setScaleKey( spep_0-3 + 470, 1, 0.63+a, 0.63+a );
setScaleKey( spep_0-3 + 472, 1, 0.79+a, 0.79+a );
setScaleKey( spep_0-3 + 474, 1, 0.96+a, 0.96+a );
setScaleKey( spep_0-3 + 477, 1, 0.96+a, 0.96+a );

setScaleKey( spep_0-3 + 478, 1, 1.06+a, 1.06+a );
setScaleKey( spep_0-1 + 480, 1, 1.06+a, 1.06+a );

setRotateKey( spep_0-3 + 436, 1, 30 );
setRotateKey( spep_0-1 + 480, 1, 30 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+584  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+584  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +596, 190006, 72, 0x100, -1, 0,  100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +596,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +668,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +596, ctgogo, 0 );
setEffAlphaKey( spep_0 + 597, ctgogo, 255 );
setEffAlphaKey( spep_0 + 598, ctgogo, 255 );
setEffAlphaKey( spep_0 + 662, ctgogo, 255 );
setEffAlphaKey( spep_0 + 664, ctgogo, 191 );
setEffAlphaKey( spep_0 + 666, ctgogo, 112 );
setEffAlphaKey( spep_0 + 668, ctgogo, 64 );

setEffRotateKey(  spep_0 +596,  ctgogo,  0);
setEffRotateKey(  spep_0 +668,  ctgogo,  0);

setEffScaleKey(  spep_0 +596,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +658,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +668,  ctgogo, 1.07, 1.07 )

--SE
--連続気弾
SE_011= playSe( spep_0 + 180, 1016 );
SE_012= playSe( spep_0 + 188, 1016 );
SE_013= playSe( spep_0 + 196, 1016 );
SE_014= playSe( spep_0 + 204, 1016 );
SE_015= playSe( spep_0 + 214, 1016 );
SE_016= playSe( spep_0 + 222, 1016 );
SE_017= playSe( spep_0 + 230, 1016 );
SE_018= playSe( spep_0 + 238, 1016 );
SE_019= playSe( spep_0 + 244, 1016 );
SE_020= playSe( spep_0 + 256, 1016 );
setSeVolumeByWorkId( spep_0 + 256, SE_020, 78 );
SE_021= playSe( spep_0 + 264, 1016 );
setSeVolumeByWorkId( spep_0 + 264, SE_021, 75 );

--爆発
SE_022= playSe( spep_0 + 268, 1002 );
SE_023= playSe( spep_0 + 270, 1023 );
SE_026= playSe( spep_0 + 292, 1023 );
SE_029= playSe( spep_0 + 312, 1025 );

--連続気弾
SE_024= playSe( spep_0 + 274, 1016 );
setSeVolumeByWorkId( spep_0 + 274, SE_024, 79 );
SE_025= playSe( spep_0 + 284, 1016 );
setSeVolumeByWorkId( spep_0 + 284, SE_025, 67 );
SE_027= playSe( spep_0 + 294, 1016 );
setSeVolumeByWorkId( spep_0 + 294, SE_027, 59 );
SE_028= playSe( spep_0 + 302, 1016 );
setSeVolumeByWorkId( spep_0 + 302, SE_028, 81 );
SE_030= playSe( spep_0 + 313, 1016 );
setSeVolumeByWorkId( spep_0 + 313, SE_030, 75 );
SE_031= playSe( spep_0 + 320, 1016 );
setSeVolumeByWorkId( spep_0 + 320, SE_031, 90 );
SE_032= playSe( spep_0 + 328, 1016 );
setSeVolumeByWorkId( spep_0 + 328, SE_032, 66 );
SE_033= playSe( spep_0 + 334, 1016 );
setSeVolumeByWorkId( spep_0 + 334, SE_033, 86 );
SE_034= playSe( spep_0 + 342, 1016 );
setSeVolumeByWorkId( spep_0 + 342, SE_034, 78 );

--顔アップ
SE_035= playSe( spep_0 + 348, 1232 );
setSeVolumeByWorkId( spep_0 + 348, SE_035, 82 );

--赤い気弾発射
SE_036= playSe( spep_0 + 388, 1027 );
setSeVolumeByWorkId( spep_0 + 388, SE_036, 79 );
SE_037= playSe( spep_0 + 388, 1213 );
setSeVolumeByWorkId( spep_0 + 388, SE_037, 83 );
stopSe( spep_0 + 570, SE_037, 10);
SE_038= playSe( spep_0 + 390, 1241 );
setSeVolumeByWorkId( spep_0 + 390, SE_038, 80 );
stopSe( spep_0 + 512, SE_038, 0 );
SE_039= playSe( spep_0 + 390, 1227 );
stopSe( spep_0 + 512, SE_039, 0 );
SE_040= playSe( spep_0 + 438, 1021 );

--爆発
SE_041= playSe( spep_0 + 488, 1159 );
stopSe( spep_0 + 488, SE_041, 84);
SE_042= playSe( spep_0 + 490, 1067 );
SE_043= playSe( spep_0 + 506, 1068 );
SE_044= playSe( spep_0 + 520, 1188 );

--気弾溜める
--45の音ちゃんとなってるか怪しい
SE_045= playSe( spep_0 + 582, 1184 );
setBandpassFilter( spep_0 + 582, SE_045, 657, 1.0 );
stopSe( spep_0 + 582, SE_045, 7);
SE_046= playSe( spep_0 + 584, 1019 );
SE_047= playSe( spep_0 + 590, 1276 );
setSeVolumeByWorkId( spep_0 + 590, SE_047, 112 );
SE_048= playSe( spep_0 + 594, 1262 );
setSeVolumeByWorkId( spep_0 + 594, SE_048, 52 );
stopSe( spep_0 + 656, SE_048, 0 );
setPitch( spep_0 + 594, SE_048, 400 );
setTimeStretch( SE_048, 1.27, 10, 1 );
SE_050= playSe( spep_0 + 648, 1178 );
setSeVolumeByWorkId( spep_0 + 648, SE_050, 66 );
SE_051= playSe( spep_0 + 658, 1056 );
setSeVolumeByWorkId( spep_0 + 658, SE_051, 63 );
SE_052= playSe( spep_0 + 706, 1056 );
setSeVolumeByWorkId( spep_0 + 706, SE_052, 63 );

--顔カットイン
SE_049= playSe( spep_0 + 596, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 720, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--白フェード
entryFade( spep_0 + 716, 0, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+720;
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

stopSe( spep_1 + 0, SE_046, 0 );
stopSe( spep_1 + 2, SE_052, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94
------------------------------------------------------
-- 気弾を掲げながら突進〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 280, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 280, finish, 255 );

--SE
--気弾持って飛んでくる
SE_054= playSe( spep_2 + 0, 9 );
SE_055= playSe( spep_2 + 0, 1019 );
SE_056= playSe( spep_2 + 10, 1199 );
setSeVolumeByWorkId( spep_2 + 10, SE_056, 89 );
SE_057= playSe( spep_2 + 10, 1148 );
setSeVolumeByWorkId( spep_2 + 10, SE_057, 54 );
SE_058= playSe( spep_2 + 10, 1144 );
setSeVolumeByWorkId( spep_2 + 10, SE_058, 40 );
setPitch( spep_2 + 10, SE_058, 700 );
setTimeStretch( SE_058, 1.13, 10, 1 );

--気弾持って飛んでくる
SE_060= playSe( spep_2 + 106, 1004 );
setSeVolumeByWorkId( spep_2 + 106, SE_060, 77 );

--気弾投げる
SE_059= playSe( spep_2 + 115, 1212 );
setSeVolumeByWorkId( spep_2 + 115, SE_059, 6.7 );
setSeVolumeByWorkId( spep_2 + 116, SE_059, 13.4 );
setSeVolumeByWorkId( spep_2 + 117, SE_059, 19.1 );
setSeVolumeByWorkId( spep_2 + 118, SE_059, 25.8 );
setSeVolumeByWorkId( spep_2 + 119, SE_059, 32.5 );
setSeVolumeByWorkId( spep_2 + 120, SE_059, 39.2 );
setSeVolumeByWorkId( spep_2 + 121, SE_059, 45.9 );
setSeVolumeByWorkId( spep_2 + 122, SE_059, 52.6 );
setSeVolumeByWorkId( spep_2 + 123, SE_059, 59.8 );
setSeVolumeByWorkId( spep_2 + 124, SE_059, 66.4 );
setSeVolumeByWorkId( spep_2 + 125, SE_059, 73.1 );
setSeVolumeByWorkId( spep_2 + 126, SE_059, 81 );
setStartTimeMs( SE_059,  833 );
stopSe( spep_2 + 160, SE_059, 39);

SE_061= playSe( spep_2 + 110, 1027 );
setSeVolumeByWorkId( spep_2 + 110, SE_061, 68 );
SE_062= playSe( spep_2 + 110, 1021 );
setSeVolumeByWorkId( spep_2 + 110, SE_062, 92 );
SE_063= playSe( spep_2 + 116, 1277 );
setSeVolumeByWorkId( spep_2 + 116, SE_063, 158 );

--爆発
SE_064= playSe( spep_2 + 156, 1159 );
SE_065= playSe( spep_2 + 158, 1023 );
setSeVolumeByWorkId( spep_2 + 158, SE_065, 77 );

--爆発２
SE_066= playSe( spep_2 + 202, 1067 );
SE_067= playSe( spep_2 + 202, 1023 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 280, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--終わり
dealDamage( spep_2 +160 );
endPhase( spep_2 + 270 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 岩山から飛び立つ〜気弾溜め
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 720, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 720, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0 + 720, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0 + 720, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 720, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 720, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0 + 720, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0 + 720, tame_b, 255 );

--SE
--入り
SE_001= playSe( spep_0 + 4, 44 );
setPitch( spep_0 + 4, SE_001, -600 );
setTimeStretch( SE_001, 0.6, 10, 1 );

--腕を広げる
SE_002= playSe( spep_0 + 44, 1233 );
setSeVolumeByWorkId( spep_0 + 44, SE_002, 14 );
setPitch( spep_0 + 44, SE_002, -800 );
setTimeStretch( SE_002, 0.47, 10, 1 );
SE_003= playSe( spep_0 + 48, 1003 );

--崖から飛び立つ
SE_004= playSe( spep_0 + 98, 1182 );
setSeVolumeByWorkId( spep_0 + 98, SE_005, 84 );
SE_005= playSe( spep_0 + 98, 9 );
SE_006= playSe( spep_0 + 98, 1183 );
SE_007= playSe( spep_0 + 124, 1121 );
setSeVolumeByWorkId( spep_0 + 124, SE_007, 56 );
stopSe( spep_0 + 180, SE_007, 0 );
SE_008= playSe( spep_0 + 128, 1277 );
setSeVolumeByWorkId( spep_0 + 128, SE_008, 74 );

--連続気弾
SE_009= playSe( spep_0 + 174, 1016 );
SE_010= playSe( spep_0 + 174, 1021 );
setSeVolumeByWorkId( spep_0 + 174, SE_010, 76 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE_006, 0 );
    stopSe( SP_dodge - 12, SE_008, 0 );
    stopSe( SP_dodge - 12, SE_009, 0 );
    stopSe( SP_dodge - 12, SE_010, 0 );
    
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

--文字エントリー
ctzudododo = entryEffectLife( spep_0-3 + 268,  10014, 74, 0x100, -1, 0, 23.9, 96 );
setEffShake( spep_0-3 + 268, ctzudododo, 74, 10 );
setEffMoveKey( spep_0-3 + 268, ctzudododo, 23.9, 96 , 0 );
setEffMoveKey( spep_0-3 + 270, ctzudododo, 44.6, 153.1 , 0 );
setEffMoveKey( spep_0-3 + 272, ctzudododo, 33.9, 135.5 , 0 );
setEffMoveKey( spep_0-3 + 274, ctzudododo, 80.6, 252.3 , 0 );
setEffMoveKey( spep_0-3 + 276, ctzudododo, 67.1, 231.4 , 0 );
setEffMoveKey( spep_0-3 + 278, ctzudododo, 82.2, 257.1 , 0 );
setEffMoveKey( spep_0-3 + 280, ctzudododo, 68.6, 235.7 , 0 );
setEffMoveKey( spep_0-3 + 282, ctzudododo, 83.8, 261.5 , 0 );
setEffMoveKey( spep_0-3 + 284, ctzudododo, 70, 239.6 , 0 );
setEffMoveKey( spep_0-3 + 286, ctzudododo, 85.4, 265.5 , 0 );

setEffMoveKey( spep_0-3 + 292, ctzudododo, 72.4, 246.5 , 0 );
setEffMoveKey( spep_0-3 + 294, ctzudododo, 87.8, 272.2 , 0 );
setEffMoveKey( spep_0-3 + 296, ctzudododo, 73.4, 249.3 , 0 );
setEffMoveKey( spep_0-3 + 298, ctzudododo, 88.8, 275.1 , 0 );
setEffMoveKey( spep_0-3 + 300, ctzudododo, 74.2, 251.8 , 0 );
setEffMoveKey( spep_0-3 + 302, ctzudododo, 89.7, 277.6 , 0 );
setEffMoveKey( spep_0-3 + 304, ctzudododo, 74.9, 254 , 0 );
setEffMoveKey( spep_0-3 + 306, ctzudododo, 90.5, 279.7 , 0 );
setEffMoveKey( spep_0-3 + 308, ctzudododo, 75.6, 255.8 , 0 );
setEffMoveKey( spep_0-3 + 310, ctzudododo, 91, 281.5 , 0 );
setEffMoveKey( spep_0-3 + 312, ctzudododo, 76, 257.2 , 0 );

setEffMoveKey( spep_0-3 + 316, ctzudododo, 76.4, 258.2 , 0 );
setEffMoveKey( spep_0-3 + 318, ctzudododo, 91.8, 283.8 , 0 );
setEffMoveKey( spep_0-3 + 320, ctzudododo, 76.7, 259 , 0 );
setEffMoveKey( spep_0-3 + 322, ctzudododo, 92.1, 284.3 , 0 );
setEffMoveKey( spep_0-3 + 324, ctzudododo, 76.8, 259.4 , 0 );
setEffMoveKey( spep_0-3 + 326, ctzudododo, 92.2, 284.5 , 0 );
setEffMoveKey( spep_0-3 + 328, ctzudododo, 77.7, 261.7 , 0 );
setEffMoveKey( spep_0-3 + 330, ctzudododo, 95.8, 294.5 , 0 );
setEffMoveKey( spep_0-3 + 332, ctzudododo, 84.3, 280.5 , 0 );
setEffMoveKey( spep_0-3 + 334, ctzudododo, 106.6, 324.3 , 0 );
setEffMoveKey( spep_0-3 + 336, ctzudododo, 95.6, 313.2 , 0 );
setEffMoveKey( spep_0-3 + 338, ctzudododo, 117.5, 354.1 , 0 );
setEffMoveKey( spep_0-3 + 340, ctzudododo, 102.2, 332 , 0 );
setEffMoveKey( spep_0-3 + 342, ctzudododo, 103, 334.3 , 0 );

setEffScaleKey( spep_0-3 + 268, ctzudododo, 1.87, 1.87 );
setEffScaleKey( spep_0-3 + 270, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_0-3 + 272, ctzudododo, 2.3, 2.3 );
setEffScaleKey( spep_0-3 + 274, ctzudododo, 3.05, 3.05 );
setEffScaleKey( spep_0-3 + 276, ctzudododo, 3.07, 3.07 );
setEffScaleKey( spep_0-3 + 278, ctzudododo, 3.09, 3.09 );
setEffScaleKey( spep_0-3 + 280, ctzudododo, 3.1, 3.1 );
setEffScaleKey( spep_0-3 + 282, ctzudododo, 3.12, 3.12 );
setEffScaleKey( spep_0-3 + 284, ctzudododo, 3.13, 3.13 );
setEffScaleKey( spep_0-3 + 286, ctzudododo, 3.15, 3.15 );

setEffScaleKey( spep_0-3 + 292, ctzudododo, 3.19, 3.19 );
setEffScaleKey( spep_0-3 + 294, ctzudododo, 3.2, 3.2 );
setEffScaleKey( spep_0-3 + 296, ctzudododo, 3.21, 3.21 );
setEffScaleKey( spep_0-3 + 298, ctzudododo, 3.22, 3.22 );
setEffScaleKey( spep_0-3 + 300, ctzudododo, 3.23, 3.23 );
setEffScaleKey( spep_0-3 + 302, ctzudododo, 3.24, 3.24 );
setEffScaleKey( spep_0-3 + 304, ctzudododo, 3.25, 3.25 );
setEffScaleKey( spep_0-3 + 306, ctzudododo, 3.26, 3.26 );
setEffScaleKey( spep_0-3 + 308, ctzudododo, 3.26, 3.26 );
setEffScaleKey( spep_0-3 + 310, ctzudododo, 3.27, 3.27 );
setEffScaleKey( spep_0-3 + 312, ctzudododo, 3.28, 3.28 );

setEffScaleKey( spep_0-3 + 316, ctzudododo, 3.28, 3.28 );
setEffScaleKey( spep_0-3 + 318, ctzudododo, 3.29, 3.29 );
setEffScaleKey( spep_0-3 + 324, ctzudododo, 3.29, 3.29 );
setEffScaleKey( spep_0-3 + 326, ctzudododo, 3.3, 3.3 );
setEffScaleKey( spep_0-3 + 328, ctzudododo, 3.32, 3.32 );
setEffScaleKey( spep_0-3 + 330, ctzudododo, 3.37, 3.37 );
setEffScaleKey( spep_0-3 + 332, ctzudododo, 3.47, 3.47 );
setEffScaleKey( spep_0-3 + 334, ctzudododo, 3.6, 3.6 );
setEffScaleKey( spep_0-3 + 336, ctzudododo, 3.73, 3.73 );
setEffScaleKey( spep_0-3 + 338, ctzudododo, 3.83, 3.83 );
setEffScaleKey( spep_0-3 + 340, ctzudododo, 3.88, 3.88 );
setEffScaleKey( spep_0-3 + 342, ctzudododo, 3.9, 3.9 );

setEffRotateKey( spep_0-3 + 268, ctzudododo, -48.4 );
setEffRotateKey( spep_0-3 + 274, ctzudododo, -48.4 );
setEffRotateKey( spep_0-3 + 276, ctzudododo, -48.5 );
setEffRotateKey( spep_0-3 + 286, ctzudododo, -48.5 );

setEffRotateKey( spep_0-3 + 292, ctzudododo, -48.5 );
setEffRotateKey( spep_0-3 + 312, ctzudododo, -48.5 );

setEffRotateKey( spep_0-3 + 316, ctzudododo, -48.5 );
setEffRotateKey( spep_0-3 + 324, ctzudododo, -48.5 );
setEffRotateKey( spep_0-3 + 326, ctzudododo, -48.4 );
setEffRotateKey( spep_0-3 + 342, ctzudododo, -48.4 );

setEffAlphaKey( spep_0-3 + 268, ctzudododo, 82 );
setEffAlphaKey( spep_0-3 + 272, ctzudododo, 82 );
setEffAlphaKey( spep_0-3 + 274, ctzudododo, 255 );
setEffAlphaKey( spep_0-3 + 286, ctzudododo, 255 );
setEffAlphaKey( spep_0-3 + 316, ctzudododo, 255 );
setEffAlphaKey( spep_0-3 + 326, ctzudododo, 255 );
setEffAlphaKey( spep_0-3 + 328, ctzudododo, 247 );
setEffAlphaKey( spep_0-3 + 330, ctzudododo, 223 );
setEffAlphaKey( spep_0-3 + 332, ctzudododo, 183 );
setEffAlphaKey( spep_0-3 + 334, ctzudododo, 128 );
setEffAlphaKey( spep_0-3 + 336, ctzudododo, 72 );
setEffAlphaKey( spep_0-3 + 338, ctzudododo, 32 );
setEffAlphaKey( spep_0-3 + 340, ctzudododo, 8 );
setEffAlphaKey( spep_0-3 + 342, ctzudododo, 0 );

--敵の動き
setDisp( spep_0-3 + 256, 1, 1);
setDisp( spep_0-1 + 344, 1, 0);

changeAnime( spep_0-3 + 256, 1, 104);
changeAnime( spep_0-3 + 298, 1, 108);

setMoveKey( spep_0-3 + 256, 1, 14.1, 0 , 0 );
setMoveKey( spep_0-3 + 266, 1, 14.1, 0 , 0 );
setMoveKey( spep_0-3 + 268, 1, 16.7, -2.9 , 0 );
setMoveKey( spep_0-3 + 270, 1, 19.2, 5 , 0 );
setMoveKey( spep_0-3 + 272, 1, 16.5, -6.4 , 0 );
setMoveKey( spep_0-3 + 274, 1, 14.6, 3.1 , 0 );
setMoveKey( spep_0-3 + 276, 1, 21.8, -1.9 , 0 );
setMoveKey( spep_0-3 + 278, 1, 14.4, -2.6 , 0 );
setMoveKey( spep_0-3 + 280, 1, 19.1, -1.3 , 0 );
setMoveKey( spep_0-3 + 282, 1, 13.4, 0.4 , 0 );
setMoveKey( spep_0-3 + 284, 1, 19.5, -2.5 , 0 );
setMoveKey( spep_0-3 + 286, 1, 16.2, 2.6 , 0 );
setMoveKey( spep_0-3 + 288, 1, 14.8, -2.7 , 0 );
setMoveKey( spep_0-3 + 290, 1, 18.8, 0.9 , 0 );
setMoveKey( spep_0-3 + 292, 1, 15, -1.7 , 0 );
setMoveKey( spep_0-3 + 294, 1, 18.9, 2 , 0 );
setMoveKey( spep_0-3 + 296, 1, 14.5, -1.1 , 0 );
setMoveKey( spep_0-3 + 297, 1, 14.5, -1.1 , 0 );

setMoveKey( spep_0-3 + 298, 1, 19.8, -2.9 , 0 );
setMoveKey( spep_0-3 + 300, 1, 16.3, 0.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, 19.4, -5.3 , 0 );
setMoveKey( spep_0-3 + 304, 1, 25.8, -11.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, 36.4, -22 , 0 );
setMoveKey( spep_0-3 + 308, 1, 53.3, -38.7 , 0 );
setMoveKey( spep_0-3 + 310, 1, 79.7, -64.7 , 0 );
setMoveKey( spep_0-3 + 312, 1, 115.7, -100.3 , 0 );
setMoveKey( spep_0-3 + 314, 1, 152.5, -136.5 , 0 );
setMoveKey( spep_0-3 + 316, 1, 182.7, -166.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, 206.5, -189.7 , 0 );
setMoveKey( spep_0-3 + 320, 1, 225.5, -208.5 , 0 );
setMoveKey( spep_0-3 + 322, 1, 241, -223.8 , 0 );
setMoveKey( spep_0-3 + 324, 1, 254, -236.5 , 0 );
setMoveKey( spep_0-3 + 326, 1, 265, -247.4 , 0 );
setMoveKey( spep_0-3 + 328, 1, 274.4, -256.7 , 0 );
setMoveKey( spep_0-3 + 330, 1, 282.5, -264.7 , 0 );
setMoveKey( spep_0-3 + 332, 1, 289.6, -271.7 , 0 );
setMoveKey( spep_0-3 + 334, 1, 295.8, -277.8 , 0 );
setMoveKey( spep_0-3 + 336, 1, 301.2, -283.2 , 0 );
setMoveKey( spep_0-3 + 338, 1, 306, -287.9 , 0 );
setMoveKey( spep_0-3 + 340, 1, 310.2, -292 , 0 );
setMoveKey( spep_0-3 + 342, 1, 313.9, -295.6 , 0 );
setMoveKey( spep_0-1 + 344, 1, 316.9, -298.7 , 0 );

setScaleKey( spep_0-3 + 256, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 297, 1, 0.9, 0.9 );

setScaleKey( spep_0-3 + 298, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 300, 1, 0.9, 0.9 );
setScaleKey( spep_0-3 + 302, 1, 0.89, 0.89 );
setScaleKey( spep_0-3 + 304, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 306, 1, 0.87, 0.87 );
setScaleKey( spep_0-3 + 308, 1, 0.85, 0.85 );
setScaleKey( spep_0-3 + 310, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 312, 1, 0.77, 0.77 );
setScaleKey( spep_0-3 + 314, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 316, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 318, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 320, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 322, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 324, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 326, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 328, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 330, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 332, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 334, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 336, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 338, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 340, 1, 0.51, 0.51 );
setScaleKey( spep_0-1 + 344, 1, 0.5, 0.5 );

setRotateKey( spep_0-3 + 256, 1, 0 );
setRotateKey( spep_0-3 + 298, 1, 0 );
setRotateKey( spep_0-3 + 300, 1, 0.2 );
setRotateKey( spep_0-3 + 302, 1, 0.6 );
setRotateKey( spep_0-3 + 304, 1, 1.4 );
setRotateKey( spep_0-3 + 306, 1, 2.6 );
setRotateKey( spep_0-3 + 308, 1, 4.5 );
setRotateKey( spep_0-3 + 310, 1, 7.6 );
setRotateKey( spep_0-3 + 312, 1, 11.7 );
setRotateKey( spep_0-3 + 314, 1, 16 );
setRotateKey( spep_0-3 + 316, 1, 19.5 );
setRotateKey( spep_0-3 + 318, 1, 22.2 );
setRotateKey( spep_0-3 + 320, 1, 24.4 );
setRotateKey( spep_0-3 + 322, 1, 26.2 );
setRotateKey( spep_0-3 + 324, 1, 27.7 );
setRotateKey( spep_0-3 + 326, 1, 29 );
setRotateKey( spep_0-3 + 328, 1, 30.1 );
setRotateKey( spep_0-3 + 330, 1, 31 );
setRotateKey( spep_0-3 + 332, 1, 31.8 );
setRotateKey( spep_0-3 + 334, 1, 32.5 );
setRotateKey( spep_0-3 + 336, 1, 33.2 );
setRotateKey( spep_0-3 + 338, 1, 33.7 );
setRotateKey( spep_0-3 + 340, 1, 34.2 );
setRotateKey( spep_0-3 + 342, 1, 34.6 );
setRotateKey( spep_0-1 + 344, 1, 35 );

--敵の動き
setDisp( spep_0-3 + 436, 1, 1);
setDisp( spep_0-1 + 480, 1, 0);

changeAnime( spep_0-3 + 436, 1, 108);

setMoveKey( spep_0-3 + 436, 1, 69.2, -103.8 , 0 );
setMoveKey( spep_0-3 + 438, 1, 66.6, -99.2 , 0 );
setMoveKey( spep_0-3 + 440, 1, 68.4, -99.7 , 0 );
setMoveKey( spep_0-3 + 442, 1, 63, -97.2 , 0 );
setMoveKey( spep_0-3 + 444, 1, 65.1, -98.8 , 0 );
setMoveKey( spep_0-3 + 446, 1, 60.6, -94.2 , 0 );
setMoveKey( spep_0-3 + 448, 1, 61, -98.1 , 0 );
setMoveKey( spep_0-3 + 450, 1, 57.6, -94.8 , 0 );
setMoveKey( spep_0-3 + 452, 1, 60.1, -95.3 , 0 );
setMoveKey( spep_0-3 + 454, 1, 55.1, -94 , 0 );
setMoveKey( spep_0-3 + 456, 1, 57.6, -92.4 , 0 );
setMoveKey( spep_0-3 + 458, 1, 53.9, -95 , 0 );
setMoveKey( spep_0-3 + 460, 1, 57.2, -93.5 , 0 );
setMoveKey( spep_0-3 + 462, 1, 53.8, -94.8 , 0 );
setMoveKey( spep_0-3 + 464, 1, 58.5, -92.8 , 0 );
setMoveKey( spep_0-3 + 466, 1, 56.2, -96 , 0 );
setMoveKey( spep_0-3 + 468, 1, 57.8, -92.8 , 0 );
setMoveKey( spep_0-3 + 470, 1, 58.5, -99.7 , 0 );
setMoveKey( spep_0-3 + 472, 1, 67, -100.3 , 0 );
setMoveKey( spep_0-3 + 474, 1, 73.7, -109.4 , 0 );
setMoveKey( spep_0-3 + 477, 1, 73.7, -109.4 , 0 );

setMoveKey( spep_0-3 + 478, 1, 68.4, -116.3 , 0 );
setMoveKey( spep_0-1 + 480, 1, 104.5, -114.5 , 0 );

a=0.3;

setScaleKey( spep_0-3 + 436, 1, 0.6+a, 0.6+a );
setScaleKey( spep_0-3 + 438, 1, 0.59+a, 0.59+a );
setScaleKey( spep_0-3 + 440, 1, 0.58+a, 0.58+a );
setScaleKey( spep_0-3 + 442, 1, 0.57+a, 0.57+a );
setScaleKey( spep_0-3 + 444, 1, 0.55+a, 0.55+a );
setScaleKey( spep_0-3 + 446, 1, 0.55+a, 0.55+a );
setScaleKey( spep_0-3 + 448, 1, 0.54+a, 0.54+a );
setScaleKey( spep_0-3 + 450, 1, 0.53+a, 0.53+a );
setScaleKey( spep_0-3 + 452, 1, 0.52+a, 0.52+a );
setScaleKey( spep_0-3 + 454, 1, 0.51+a, 0.51+a );
setScaleKey( spep_0-3 + 460, 1, 0.51+a, 0.51+a );
setScaleKey( spep_0-3 + 462, 1, 0.52+a, 0.52+a );
setScaleKey( spep_0-3 + 464, 1, 0.54+a, 0.54+a );
setScaleKey( spep_0-3 + 466, 1, 0.56+a, 0.56+a );
setScaleKey( spep_0-3 + 468, 1, 0.59+a, 0.59+a );
setScaleKey( spep_0-3 + 470, 1, 0.63+a, 0.63+a );
setScaleKey( spep_0-3 + 472, 1, 0.79+a, 0.79+a );
setScaleKey( spep_0-3 + 474, 1, 0.96+a, 0.96+a );
setScaleKey( spep_0-3 + 477, 1, 0.96+a, 0.96+a );

setScaleKey( spep_0-3 + 478, 1, 1.06+a, 1.06+a );
setScaleKey( spep_0-1 + 480, 1, 1.06+a, 1.06+a );

setRotateKey( spep_0-3 + 436, 1, 30 );
setRotateKey( spep_0-1 + 480, 1, 30 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+584  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+584  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +596, 190006, 72, 0x100, -1, 0,  100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +596,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +668,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +596, ctgogo, 0 );
setEffAlphaKey( spep_0 + 597, ctgogo, 255 );
setEffAlphaKey( spep_0 + 598, ctgogo, 255 );
setEffAlphaKey( spep_0 + 662, ctgogo, 255 );
setEffAlphaKey( spep_0 + 664, ctgogo, 191 );
setEffAlphaKey( spep_0 + 666, ctgogo, 112 );
setEffAlphaKey( spep_0 + 668, ctgogo, 64 );

setEffRotateKey(  spep_0 +596,  ctgogo,  0);
setEffRotateKey(  spep_0 +668,  ctgogo,  0);

setEffScaleKey(  spep_0 +596,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +658,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +668,  ctgogo, -1.07, 1.07 )

--SE
--連続気弾
SE_011= playSe( spep_0 + 180, 1016 );
SE_012= playSe( spep_0 + 188, 1016 );
SE_013= playSe( spep_0 + 196, 1016 );
SE_014= playSe( spep_0 + 204, 1016 );
SE_015= playSe( spep_0 + 214, 1016 );
SE_016= playSe( spep_0 + 222, 1016 );
SE_017= playSe( spep_0 + 230, 1016 );
SE_018= playSe( spep_0 + 238, 1016 );
SE_019= playSe( spep_0 + 244, 1016 );
SE_020= playSe( spep_0 + 256, 1016 );
setSeVolumeByWorkId( spep_0 + 256, SE_020, 78 );
SE_021= playSe( spep_0 + 264, 1016 );
setSeVolumeByWorkId( spep_0 + 264, SE_021, 75 );

--爆発
SE_022= playSe( spep_0 + 268, 1002 );
SE_023= playSe( spep_0 + 270, 1023 );
SE_026= playSe( spep_0 + 292, 1023 );
SE_029= playSe( spep_0 + 312, 1025 );

--連続気弾
SE_024= playSe( spep_0 + 274, 1016 );
setSeVolumeByWorkId( spep_0 + 274, SE_024, 79 );
SE_025= playSe( spep_0 + 284, 1016 );
setSeVolumeByWorkId( spep_0 + 284, SE_025, 67 );
SE_027= playSe( spep_0 + 294, 1016 );
setSeVolumeByWorkId( spep_0 + 294, SE_027, 59 );
SE_028= playSe( spep_0 + 302, 1016 );
setSeVolumeByWorkId( spep_0 + 302, SE_028, 81 );
SE_030= playSe( spep_0 + 313, 1016 );
setSeVolumeByWorkId( spep_0 + 313, SE_030, 75 );
SE_031= playSe( spep_0 + 320, 1016 );
setSeVolumeByWorkId( spep_0 + 320, SE_031, 90 );
SE_032= playSe( spep_0 + 328, 1016 );
setSeVolumeByWorkId( spep_0 + 328, SE_032, 66 );
SE_033= playSe( spep_0 + 334, 1016 );
setSeVolumeByWorkId( spep_0 + 334, SE_033, 86 );
SE_034= playSe( spep_0 + 342, 1016 );
setSeVolumeByWorkId( spep_0 + 342, SE_034, 78 );

--顔アップ
SE_035= playSe( spep_0 + 348, 1232 );
setSeVolumeByWorkId( spep_0 + 348, SE_035, 82 );

--赤い気弾発射
SE_036= playSe( spep_0 + 388, 1027 );
setSeVolumeByWorkId( spep_0 + 388, SE_036, 79 );
SE_037= playSe( spep_0 + 388, 1213 );
setSeVolumeByWorkId( spep_0 + 388, SE_037, 83 );
stopSe( spep_0 + 570, SE_037, 10);
SE_038= playSe( spep_0 + 390, 1241 );
setSeVolumeByWorkId( spep_0 + 390, SE_038, 80 );
stopSe( spep_0 + 512, SE_038, 0 );
SE_039= playSe( spep_0 + 390, 1227 );
stopSe( spep_0 + 512, SE_039, 0 );
SE_040= playSe( spep_0 + 438, 1021 );

--爆発
SE_041= playSe( spep_0 + 488, 1159 );
stopSe( spep_0 + 488, SE_041, 84);
SE_042= playSe( spep_0 + 490, 1067 );
SE_043= playSe( spep_0 + 506, 1068 );
SE_044= playSe( spep_0 + 520, 1188 );

--気弾溜める
--45の音ちゃんとなってるか怪しい
SE_045= playSe( spep_0 + 582, 1184 );
setBandpassFilter( spep_0 + 582, SE_045, 657, 1.0 );
stopSe( spep_0 + 582, SE_045, 7);
SE_046= playSe( spep_0 + 584, 1019 );
SE_047= playSe( spep_0 + 590, 1276 );
setSeVolumeByWorkId( spep_0 + 590, SE_047, 112 );
SE_048= playSe( spep_0 + 594, 1262 );
setSeVolumeByWorkId( spep_0 + 594, SE_048, 52 );
stopSe( spep_0 + 656, SE_048, 0 );
setPitch( spep_0 + 594, SE_048, 400 );
setTimeStretch( SE_048, 1.27, 10, 1 );
SE_050= playSe( spep_0 + 648, 1178 );
setSeVolumeByWorkId( spep_0 + 648, SE_050, 66 );
SE_051= playSe( spep_0 + 658, 1056 );
setSeVolumeByWorkId( spep_0 + 658, SE_051, 63 );
SE_052= playSe( spep_0 + 706, 1056 );
setSeVolumeByWorkId( spep_0 + 706, SE_052, 63 );

--顔カットイン
SE_049= playSe( spep_0 + 596, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 720, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--白フェード
entryFade( spep_0 + 716, 0, 12, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1=spep_0+720;
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

stopSe( spep_1 + 0, SE_046, 0 );
stopSe( spep_1 + 2, SE_052, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94
------------------------------------------------------
-- 気弾を掲げながら突進〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 280, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 280, finish, 255 );

--SE
--気弾持って飛んでくる
SE_054= playSe( spep_2 + 0, 9 );
SE_055= playSe( spep_2 + 0, 1019 );
SE_056= playSe( spep_2 + 10, 1199 );
setSeVolumeByWorkId( spep_2 + 10, SE_056, 89 );
SE_057= playSe( spep_2 + 10, 1148 );
setSeVolumeByWorkId( spep_2 + 10, SE_057, 54 );
SE_058= playSe( spep_2 + 10, 1144 );
setSeVolumeByWorkId( spep_2 + 10, SE_058, 40 );
setPitch( spep_2 + 10, SE_058, 700 );
setTimeStretch( SE_058, 1.13, 10, 1 );

--気弾持って飛んでくる
SE_060= playSe( spep_2 + 106, 1004 );
setSeVolumeByWorkId( spep_2 + 106, SE_060, 77 );

--気弾投げる
SE_059= playSe( spep_2 + 115, 1212 );
setSeVolumeByWorkId( spep_2 + 115, SE_059, 6.7 );
setSeVolumeByWorkId( spep_2 + 116, SE_059, 13.4 );
setSeVolumeByWorkId( spep_2 + 117, SE_059, 19.1 );
setSeVolumeByWorkId( spep_2 + 118, SE_059, 25.8 );
setSeVolumeByWorkId( spep_2 + 119, SE_059, 32.5 );
setSeVolumeByWorkId( spep_2 + 120, SE_059, 39.2 );
setSeVolumeByWorkId( spep_2 + 121, SE_059, 45.9 );
setSeVolumeByWorkId( spep_2 + 122, SE_059, 52.6 );
setSeVolumeByWorkId( spep_2 + 123, SE_059, 59.8 );
setSeVolumeByWorkId( spep_2 + 124, SE_059, 66.4 );
setSeVolumeByWorkId( spep_2 + 125, SE_059, 73.1 );
setSeVolumeByWorkId( spep_2 + 126, SE_059, 81 );
setStartTimeMs( SE_059,  833 );
stopSe( spep_2 + 160, SE_059, 39);
SE_061= playSe( spep_2 + 110, 1027 );
setSeVolumeByWorkId( spep_2 + 110, SE_061, 68 );
SE_062= playSe( spep_2 + 110, 1021 );
setSeVolumeByWorkId( spep_2 + 110, SE_062, 92 );
SE_063= playSe( spep_2 + 116, 1277 );
setSeVolumeByWorkId( spep_2 + 116, SE_063, 158 );

--爆発
SE_064= playSe( spep_2 + 156, 1159 );
SE_065= playSe( spep_2 + 158, 1023 );
setSeVolumeByWorkId( spep_2 + 158, SE_065, 77 );

--爆発２
SE_066= playSe( spep_2 + 202, 1067 );
SE_067= playSe( spep_2 + 202, 1023 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 280, 0, 10, 10, 10, 255 );  --黒　背景       -- ベース暗め　背景

--終わり
dealDamage( spep_2 +160 );
endPhase( spep_2 + 270 );
end