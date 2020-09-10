--1019510:クリリン_かめはめ波
--sp_effect_a1_00227

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
SP_01=	155198	;--	移動
SP_02=	155200	;--	移動
SP_03=	155201	;--	格闘
SP_04=	155203	;--	格闘
SP_05=	155204	;--	かめはめ波　溜め
SP_06=	155206	;--	かめはめ波　発射
SP_07=	155208	;--	かめはめ波　引き絵
SP_08=	155210	;--	かめはめ波　引き絵

--エフェクト(敵)
SP_01x=	155199	;--	移動	(敵)
SP_02x=	155200	;--	移動	
SP_03x=	155202	;--	格闘	(敵)
SP_04x=	155203	;--	格闘	
SP_05x=	155205	;--	かめはめ波　溜め	(敵)
SP_06x=	155207	;--	かめはめ波　発射	
SP_07x=	155209	;--	かめはめ波　引き絵	(敵)
SP_08x=	155210	;--	かめはめ波　引き絵	

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
-- 移動
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
idou_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 40, idou_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 40, idou_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou_f, 0 );
setEffRotateKey( spep_0 + 40, idou_f, 0 );
setEffAlphaKey( spep_0 + 0, idou_f, 255 );
setEffAlphaKey( spep_0 + 40, idou_f, 255 );
setEffAlphaKey( spep_0 + 41, idou_f, 0 );
setEffAlphaKey( spep_0 + 42, idou_f, 0 );

-- ** エフェクト等 ** --
idou_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 40, idou_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 40, idou_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou_b, 0 );
setEffRotateKey( spep_0 + 40, idou_b, 0 );
setEffAlphaKey( spep_0 + 0, idou_b, 255 );
setEffAlphaKey( spep_0 + 40, idou_b, 255 );
setEffAlphaKey( spep_0 + 41, idou_b, 0 );
setEffAlphaKey( spep_0 + 42, idou_b, 0 );

-- ** くろ背景 ** --
entryFadeBg(   spep_0, 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
se_0008 = playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0008, 0 );
    pauseAll( SP_dodge, 67);

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

playSe( spep_0 + 29, 1109 );
se_1121 = playSe( spep_0 + 36, 1121 );
setSeVolume( spep_0 + 36, 1121, 0 );

stopSe( spep_0 + 31, se_0008, 22 );
--次の準備
spep_1=spep_0+40;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 90, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 90, fighting_f, 255 );
setEffAlphaKey( spep_1 + 91, fighting_f, 0 );
setEffAlphaKey( spep_1 + 92, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 90, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 90, fighting_b, 255 );
setEffAlphaKey( spep_1 + 91, fighting_b, 0 );
setEffAlphaKey( spep_1 + 92, fighting_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 82, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 8, 1, 104 );
changeAnime( spep_1-3 + 32, 1, 106 );

setMoveKey( spep_1 + 0, 1, 94.4, 2.1 , 0 );
setMoveKey( spep_1-3 + 31, 1, 94.4, 2.1 , 0 );
setMoveKey( spep_1-3 + 32, 1, 84.2, 18.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 138.8, -95.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, 217.7, -144.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, 279.7, -253.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 311, -300.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 356.5, -399.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 399.8, -444 , 0 );
setMoveKey( spep_1-3 + 46, 1, 443.7, -508.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 494.4, -583.6 , 0 );
setMoveKey( spep_1-3 + 50, 1, 543.1, -656 , 0 );
setMoveKey( spep_1-3 + 52, 1, 589.9, -725.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, 634.6, -792.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 677.5, -855.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 718.5, -916.7 , 0 );
setMoveKey( spep_1-3 + 60, 1, 757.4, -974.6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 794.3, -1029.5 , 0 );
setMoveKey( spep_1-3 + 64, 1, 829.2, -1081.4 , 0 );
setMoveKey( spep_1-3 + 66, 1, 862, -1130 , 0 );
setMoveKey( spep_1-3 + 68, 1, 892.5, -1175.4 , 0 );
setMoveKey( spep_1-3 + 70, 1, 920.8, -1217.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 946.6, -1255.7 , 0 );
setMoveKey( spep_1-3 + 74, 1, 969.9, -1290.2 , 0 );
setMoveKey( spep_1-3 + 76, 1, 1006.2, -1344.1 , 0 );
setMoveKey( spep_1-3 + 78, 1, 1005, -1342.2 , 0 );
setMoveKey( spep_1-3 + 82, 1, 1003.8, -1340.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1-3 + 82, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 31, 1, 0 );
setRotateKey( spep_1-3 + 32, 1, 75 );
setRotateKey( spep_1-3 + 34, 1, 75.9 );
setRotateKey( spep_1-3 + 36, 1, 76.8 );
setRotateKey( spep_1-3 + 38, 1, 77.6 );
setRotateKey( spep_1-3 + 40, 1, 78.4 );
setRotateKey( spep_1-3 + 42, 1, 79.1 );
setRotateKey( spep_1-3 + 44, 1, 79.8 );
setRotateKey( spep_1-3 + 46, 1, 80.5 );
setRotateKey( spep_1-3 + 48, 1, 81.2 );
setRotateKey( spep_1-3 + 50, 1, 81.8 );
setRotateKey( spep_1-3 + 52, 1, 82.5 );
setRotateKey( spep_1-3 + 54, 1, 83.1 );
setRotateKey( spep_1-3 + 56, 1, 83.6 );
setRotateKey( spep_1-3 + 58, 1, 84.2 );
setRotateKey( spep_1-3 + 60, 1, 84.7 );
setRotateKey( spep_1-3 + 62, 1, 85.2 );
setRotateKey( spep_1-3 + 64, 1, 85.6 );
setRotateKey( spep_1-3 + 66, 1, 86.1 );
setRotateKey( spep_1-3 + 68, 1, 86.5 );
setRotateKey( spep_1-3 + 70, 1, 86.9 );
setRotateKey( spep_1-3 + 72, 1, 87.2 );
setRotateKey( spep_1-3 + 74, 1, 87.5 );
setRotateKey( spep_1-3 + 76, 1, 88 );
setRotateKey( spep_1-3 + 82, 1, 88 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 6,  10000, 16, 0x100, -1, 0, 185.4, 176.5 );--!!

setEffMoveKey( spep_1-3 + 6, ctbikkuri, 185.4, 176.5 , 0 );
setEffMoveKey( spep_1-3 + 8, ctbikkuri, 156.5, 157.9 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbikkuri, 149.5, 157.4 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbikkuri, 156.1, 164.8 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbikkuri, 156.5, 157.9 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbikkuri, 149.5, 157.4 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbikkuri, 156.1, 164.8 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbikkuri, 156.5, 157.9 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbikkuri, 149.5, 157.4 , 0 );

a=0.2;

setEffScaleKey( spep_1-3 + 6, ctbikkuri, 2.41+a, 2.41+a );
setEffScaleKey( spep_1-3 + 8, ctbikkuri, 1.61+a, 1.61+a );
setEffScaleKey( spep_1-3 + 22, ctbikkuri, 1.61+a, 1.61+a );

setEffRotateKey( spep_1-3 + 6, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 22, ctbikkuri, 18 );

setEffAlphaKey( spep_1-3 + 6, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 22, ctbikkuri, 255 );

--文字エントリー

ctbaki = entryEffectLife( spep_1-3 + 32,  10020, 20, 0x100, -1, 0, 95.3, 171.7 );--バキッ

setEffMoveKey( spep_1-3 + 32, ctbaki, 95.3, 171.7 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbaki, 215.2, 228.9 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbaki, 166.9, 241.5 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbaki, 193.9, 232.3 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbaki, 108.5, 227.8 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbaki, 137.4, 252.7 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbaki, 122, 302.7 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbaki, 114.2, 317.7 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbaki, 113.1, 318.2 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbaki, 111.9, 318.8 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbaki, 105.3, 326.7 , 0 );
--[[
setEffMoveKey( spep_1-3 + 54, ctbaki, 103.7, 328.5 , 0 );
setEffMoveKey( spep_1-3 + 56, ctbaki, 102.5, 330.4 , 0 );
setEffMoveKey( spep_1-3 + 58, ctbaki, 101.4, 332.3 , 0 );
setEffMoveKey( spep_1-3 + 60, ctbaki, 100.2, 334.2 , 0 );
setEffMoveKey( spep_1-3 + 62, ctbaki, 99, 336.2 , 0 );
setEffMoveKey( spep_1-3 + 64, ctbaki, 97.8, 338.1 , 0 );
setEffMoveKey( spep_1-3 + 66, ctbaki, 96.6, 340 , 0 );
setEffMoveKey( spep_1-3 + 68, ctbaki, 95.4, 341.9 , 0 );
setEffMoveKey( spep_1-3 + 70, ctbaki, 94.2, 343.9 , 0 );
setEffMoveKey( spep_1-3 + 72, ctbaki, 93, 345.8 , 0 );
setEffMoveKey( spep_1-3 + 74, ctbaki, 91.8, 347.7 , 0 );
setEffMoveKey( spep_1-3 + 76, ctbaki, 90.6, 349.6 , 0 );
setEffMoveKey( spep_1-3 + 78, ctbaki, 89.5, 351.6 , 0 );
setEffMoveKey( spep_1-3 + 80, ctbaki, 88.3, 353.5 , 0 );
setEffMoveKey( spep_1-3 + 82, ctbaki, 87.1, 355.4 , 0 );
setEffMoveKey( spep_1-3 + 84, ctbaki, 85.9, 357.3 , 0 );
setEffMoveKey( spep_1-3 + 86, ctbaki, 84.7, 359.3 , 0 );
setEffMoveKey( spep_1-3 + 88, ctbaki, 83.5, 361.2 , 0 );
]]--
b=0.1;
setEffScaleKey( spep_1-3 + 32, ctbaki, 0.93, 0.93 );
setEffScaleKey( spep_1-3 + 34, ctbaki, 1.04+b, 1.04+b );
setEffScaleKey( spep_1-3 + 36, ctbaki, 1.44+b, 1.44+b );
setEffScaleKey( spep_1-3 + 38, ctbaki, 1.26+b, 1.26+b );
setEffScaleKey( spep_1-3 + 40, ctbaki, 1.26+b, 1.26+b );
setEffScaleKey( spep_1-3 + 42, ctbaki, 1.2+b, 1.2+b );
setEffScaleKey( spep_1-3 + 44, ctbaki, 1.26+b, 1.26+b );
setEffScaleKey( spep_1-3 + 46, ctbaki, 1.27+b, 1.27+b );
setEffScaleKey( spep_1-3 + 48, ctbaki, 1.27+b, 1.27+b );
setEffScaleKey( spep_1-3 + 50, ctbaki, 1.28+b, 1.28+b );
setEffScaleKey( spep_1-3 + 52, ctbaki, 1.28+b, 1.28+b );
--setEffScaleKey( spep_1-3 + 54, ctbaki, 1.29, 1.29 );

setEffRotateKey( spep_1-3 + 32, ctbaki, 45.9 );
setEffRotateKey( spep_1-3 + 34, ctbaki, 11.3 );
setEffRotateKey( spep_1-3 + 36, ctbaki, 26.3 );
setEffRotateKey( spep_1-3 + 38, ctbaki, 21 );
setEffRotateKey( spep_1-3 + 40, ctbaki, 31.2 );
setEffRotateKey( spep_1-3 + 42, ctbaki, 23.6 );
setEffRotateKey( spep_1-3 + 50, ctbaki, 23.6 );
setEffRotateKey( spep_1-3 + 52, ctbaki, 23.5 );
--setEffRotateKey( spep_1-3 + 54, ctbaki, 23.6 );

setEffAlphaKey( spep_1-3 + 32, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 44, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 46, ctbaki, 198 );
setEffAlphaKey( spep_1-3 + 48, ctbaki, 142 );
setEffAlphaKey( spep_1-3 + 50, ctbaki, 85 );
setEffAlphaKey( spep_1-3 + 52, ctbaki, 0 );

--白フェード
entryFade( spep_1 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_1 + 26, 1003 );
playSe( spep_1 + 30, 1012 );
playSe( spep_1 + 34, 1009 );
playSe( spep_1 + 38, 1110 );

setSeVolume( spep_1 + 49, 1121, 14.2 );
setSeVolume( spep_1 + 50, 1121, 28.4 );
setSeVolume( spep_1 + 51, 1121, 42.6 );
setSeVolume( spep_1 + 52, 1121, 56.8 );
setSeVolume( spep_1 + 53, 1121, 71 );


-- ** くろ背景 ** --
entryFadeBg(   spep_1, 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 110, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 110, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 10,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 10, shuchusen1, 98, 20 );
setEffMoveKey( spep_2-3 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 10, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_2-3 + 108, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 10, shuchusen1, 180 );
setEffRotateKey( spep_2-3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_2-3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 108, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +22, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +22,  ctgogo,  80,  510);
setEffMoveKey(  spep_2 +94,  ctgogo,  80,  510);

setEffAlphaKey( spep_2 +22, ctgogo, 0 );
setEffAlphaKey( spep_2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_2 + 88, ctgogo, 255 );
setEffAlphaKey( spep_2 + 90, ctgogo, 191 );
setEffAlphaKey( spep_2 + 92, ctgogo, 112 );
setEffAlphaKey( spep_2 + 94, ctgogo, 64 );

setEffRotateKey(  spep_2 +22,  ctgogo,  0);
setEffRotateKey(  spep_2 +94,  ctgogo,  0);

setEffScaleKey(  spep_2 +22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +94,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_2 + 22, 1018 );
playSe( spep_2 + 3, 1037 );
setSeVolume( spep_2 + 3, 1037, 79 );
playSe( spep_2 + 9, 1036 );
setSeVolume( spep_2 + 9, 1036, 79 );
playSe( spep_2 + 33, 1036 );
setSeVolume( spep_2 + 33, 1036, 79 );
playSe( spep_2 + 57, 1036 );
setSeVolume( spep_2 + 57, 1036, 79 );
playSe( spep_2 + 81, 1036 );
setSeVolume( spep_2 + 81, 1036, 79 );
playSe( spep_2 + 105, 1036 );
setSeVolume( spep_2 + 105, 1036, 79 );

stopSe( spep_2 + 1, se_1121, 31 );

--白フェード
entryFade( spep_2 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg(   spep_2, 0, 112, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+110;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 78, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;
--------------------------------------
--かめはめ波　発射
--------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 76, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 76, beam, 255 );
setEffAlphaKey( spep_4 + 77, beam, 0 );
setEffAlphaKey( spep_4 + 78, beam, 0 );

--SE
playSe( spep_4 + 7, 1003 );
playSe( spep_4 + 7, 1022 );

-- ** くろ背景 ** --
entryFadeBg(   spep_4, 0, 78, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;
--------------------------------------
--かめはめ波　引き絵
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 56, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 56, hit_f, 255 );
setEffAlphaKey( spep_5 + 57, hit_f, 0 );
setEffAlphaKey( spep_5 + 58, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 56, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 56, hit_b, 255 );
setEffAlphaKey( spep_5 + 57, hit_b, 0 );
setEffAlphaKey( spep_5 + 58, hit_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 244.4, -423.1 , 0 );
setMoveKey( spep_5 + 2, 1, 236.5, -422.3 , 0 );
setMoveKey( spep_5 + 4, 1, 242.1, -416.3 , 0 );
setMoveKey( spep_5 + 6, 1, 236.6, -410.8 , 0 );
setMoveKey( spep_5 + 8, 1, 233.2, -409.6 , 0 );
setMoveKey( spep_5 + 10, 1, 237.8, -416.1 , 0 );
setMoveKey( spep_5 + 12, 1, 240.4, -419 , 0 );
setMoveKey( spep_5 + 14, 1, 247, -414.3 , 0 );
setMoveKey( spep_5 + 16, 1, 242.1, -405.8 , 0 );
setMoveKey( spep_5 + 18, 1, 241.1, -410.9 , 0 );
setMoveKey( spep_5 + 20, 1, 240.2, -408.4 , 0 );
setMoveKey( spep_5 + 22, 1, 241.2, -407.9 , 0 );
setMoveKey( spep_5 + 24, 1, 242.3, -399.8 , 0 );
setMoveKey( spep_5 + 26, 1, 239.5, -393.6 , 0 );
setMoveKey( spep_5 + 28, 1, 244.6, -395.1 , 0 );
setMoveKey( spep_5 + 30, 1, 240, -394.9 , 0 );
setMoveKey( spep_5 + 32, 1, 239.3, -398.4 , 0 );
setMoveKey( spep_5 + 34, 1, 242.5, -402 , 0 );
setMoveKey( spep_5 + 36, 1, 234.1, -401.8 , 0 );
setMoveKey( spep_5 + 38, 1, 229.7, -397.9 , 0 );
setMoveKey( spep_5 + 40, 1, 236.8, -405.5 , 0 );
setMoveKey( spep_5 + 42, 1, 228.5, -409.3 , 0 );
setMoveKey( spep_5 + 44, 1, 235.6, -417 , 0 );
setMoveKey( spep_5 + 46, 1, 227.4, -409.3 , 0 );
setMoveKey( spep_5 + 48, 1, 226.9, -417.1 , 0 );
setMoveKey( spep_5 + 50, 1, 226.4, -413.4 , 0 );
setMoveKey( spep_5 + 52, 1, 226, -413.5 , 0 );
setMoveKey( spep_5 + 54, 1, 221.8, -409.9 , 0 );
setMoveKey( spep_5 + 56, 1, 221.5, -406.3 , 0 );
--setMoveKey( spep_5 + 58, 1, 221.3, -407.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.21, 0.21 );
setScaleKey( spep_5 + 2, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 6, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 8, 1, 0.24, 0.24 );
setScaleKey( spep_5 + 38, 1, 0.24, 0.24 );
setScaleKey( spep_5 + 40, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 48, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 50, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 56, 1, 0.22, 0.22 );

setRotateKey( spep_5 + 0, 1, 79.2 );
setRotateKey( spep_5 + 56, 1, 79.2 );

--SE
playSe( spep_5 + 4, 1021 );

-- ** くろ背景 ** --
entryFadeBg(   spep_5, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;
------------------------------------------------------
-- ギャン(56)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_6 + 0, 190000, 56, 0x100, -1, 0, 0, 0 );  --ギャン(ef_006)
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 56, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 56, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6 + 0,  10006, 56, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 56, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_6 + 6, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_6 + 8, ctgyan, 3, 3 );
setEffScaleKey( spep_6 + 10, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_6 + 14, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_6 + 16, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_6 + 18, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_6 + 20, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_6 + 22, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_6 + 24, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_6 + 26, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_6 + 28, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_6 + 30, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_6 + 32, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_6 + 34, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_6 + 36, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_6 + 38, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_6 + 40, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_6 + 42, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_6 + 44, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_6 + 46, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_6 + 48, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_6 + 50, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_6 + 52, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_6 + 54, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_6 + 56, ctgyan, 5, 5 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 56, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 56, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 + 2, 1023 );  --ギャン

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );
setMoveKey( spep_7 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_7 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_7 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_7 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_7 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_7 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_7 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_7 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_7 + 0, 1, 0-z );
setRotateKey( spep_7 + 2, 1, 105-z );
setRotateKey( spep_7 + 4, 1, 240-z );
setRotateKey( spep_7 + 6, 1, 405-z );
setRotateKey( spep_7 + 8, 1, 600-z );
setRotateKey( spep_7 + 10, 1, 825-z );
setRotateKey( spep_7 + 12, 1, 1080-z );
setRotateKey( spep_7 + 110, 1, 1080-z );

-- ** エフェクト等 ** --
bg = entryEffect( spep_7 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_7 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bg, 0 );
setEffRotateKey( spep_7 + 100, bg, 0 );
setEffAlphaKey( spep_7 + 0, bg, 255 );
setEffAlphaKey( spep_7 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_7 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_7 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen4, 0 );
setEffRotateKey( spep_7 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_7 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen5, 0 );
setEffRotateKey( spep_7 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_7 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_7 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_7 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_7 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_7 + 2, hibiware, 0 );
setEffRotateKey( spep_7 + 100, hibiware, 0 );

setEffAlphaKey( spep_7 + 2, hibiware, 0 );
setEffAlphaKey( spep_7 + 13, hibiware, 0 );
setEffAlphaKey( spep_7 + 14, hibiware, 255 );
setEffAlphaKey( spep_7 + 100, hibiware, 255 );

--SE
playSe( spep_7 + 0, 1014 );
playSe( spep_7 + 14, 1054 );

--終わり
dealDamage( spep_7  );
endPhase( spep_7 + 98 );


else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 移動
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
idou_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 40, idou_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 40, idou_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou_f, 0 );
setEffRotateKey( spep_0 + 40, idou_f, 0 );
setEffAlphaKey( spep_0 + 0, idou_f, 255 );
setEffAlphaKey( spep_0 + 40, idou_f, 255 );
setEffAlphaKey( spep_0 + 41, idou_f, 0 );
setEffAlphaKey( spep_0 + 42, idou_f, 0 );

-- ** エフェクト等 ** --
idou_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, idou_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 40, idou_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, idou_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 40, idou_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, idou_b, 0 );
setEffRotateKey( spep_0 + 40, idou_b, 0 );
setEffAlphaKey( spep_0 + 0, idou_b, 255 );
setEffAlphaKey( spep_0 + 40, idou_b, 255 );
setEffAlphaKey( spep_0 + 41, idou_b, 0 );
setEffAlphaKey( spep_0 + 42, idou_b, 0 );

-- ** くろ背景 ** --
entryFadeBg(   spep_0, 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

--SE
se_0008 = playSe( spep_0 + 0, 8 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_0008, 0 );
    pauseAll( SP_dodge, 67);

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

playSe( spep_0 + 29, 1109 );
se_1121 = playSe( spep_0 + 36, 1121 );
setSeVolume( spep_0 + 36, 1121, 0 );

stopSe( spep_0 + 31, se_0008, 22 );
--次の準備
spep_1=spep_0+40;
------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 90, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_f, 0 );
setEffRotateKey( spep_1 + 90, fighting_f, 0 );
setEffAlphaKey( spep_1 + 0, fighting_f, 255 );
setEffAlphaKey( spep_1 + 90, fighting_f, 255 );
setEffAlphaKey( spep_1 + 91, fighting_f, 0 );
setEffAlphaKey( spep_1 + 92, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 90, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 90, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fighting_b, 0 );
setEffRotateKey( spep_1 + 90, fighting_b, 0 );
setEffAlphaKey( spep_1 + 0, fighting_b, 255 );
setEffAlphaKey( spep_1 + 90, fighting_b, 255 );
setEffAlphaKey( spep_1 + 91, fighting_b, 0 );
setEffAlphaKey( spep_1 + 92, fighting_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-3 + 82, 1, 0 );

changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1-3 + 8, 1, 104 );
changeAnime( spep_1-3 + 32, 1, 106 );

setMoveKey( spep_1 + 0, 1, 94.4, 2.1 , 0 );
setMoveKey( spep_1-3 + 31, 1, 94.4, 2.1 , 0 );
setMoveKey( spep_1-3 + 32, 1, 84.2, 18.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 138.8, -95.1 , 0 );
setMoveKey( spep_1-3 + 36, 1, 217.7, -144.6 , 0 );
setMoveKey( spep_1-3 + 38, 1, 279.7, -253.8 , 0 );
setMoveKey( spep_1-3 + 40, 1, 311, -300.3 , 0 );
setMoveKey( spep_1-3 + 42, 1, 356.5, -399.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 399.8, -444 , 0 );
setMoveKey( spep_1-3 + 46, 1, 443.7, -508.1 , 0 );
setMoveKey( spep_1-3 + 48, 1, 494.4, -583.6 , 0 );
setMoveKey( spep_1-3 + 50, 1, 543.1, -656 , 0 );
setMoveKey( spep_1-3 + 52, 1, 589.9, -725.6 , 0 );
setMoveKey( spep_1-3 + 54, 1, 634.6, -792.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 677.5, -855.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 718.5, -916.7 , 0 );
setMoveKey( spep_1-3 + 60, 1, 757.4, -974.6 , 0 );
setMoveKey( spep_1-3 + 62, 1, 794.3, -1029.5 , 0 );
setMoveKey( spep_1-3 + 64, 1, 829.2, -1081.4 , 0 );
setMoveKey( spep_1-3 + 66, 1, 862, -1130 , 0 );
setMoveKey( spep_1-3 + 68, 1, 892.5, -1175.4 , 0 );
setMoveKey( spep_1-3 + 70, 1, 920.8, -1217.3 , 0 );
setMoveKey( spep_1-3 + 72, 1, 946.6, -1255.7 , 0 );
setMoveKey( spep_1-3 + 74, 1, 969.9, -1290.2 , 0 );
setMoveKey( spep_1-3 + 76, 1, 1006.2, -1344.1 , 0 );
setMoveKey( spep_1-3 + 78, 1, 1005, -1342.2 , 0 );
setMoveKey( spep_1-3 + 82, 1, 1003.8, -1340.3 , 0 );

setScaleKey( spep_1 + 0, 1, 1, 1 );
setScaleKey( spep_1-3 + 82, 1, 1, 1 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 31, 1, 0 );
setRotateKey( spep_1-3 + 32, 1, 75 );
setRotateKey( spep_1-3 + 34, 1, 75.9 );
setRotateKey( spep_1-3 + 36, 1, 76.8 );
setRotateKey( spep_1-3 + 38, 1, 77.6 );
setRotateKey( spep_1-3 + 40, 1, 78.4 );
setRotateKey( spep_1-3 + 42, 1, 79.1 );
setRotateKey( spep_1-3 + 44, 1, 79.8 );
setRotateKey( spep_1-3 + 46, 1, 80.5 );
setRotateKey( spep_1-3 + 48, 1, 81.2 );
setRotateKey( spep_1-3 + 50, 1, 81.8 );
setRotateKey( spep_1-3 + 52, 1, 82.5 );
setRotateKey( spep_1-3 + 54, 1, 83.1 );
setRotateKey( spep_1-3 + 56, 1, 83.6 );
setRotateKey( spep_1-3 + 58, 1, 84.2 );
setRotateKey( spep_1-3 + 60, 1, 84.7 );
setRotateKey( spep_1-3 + 62, 1, 85.2 );
setRotateKey( spep_1-3 + 64, 1, 85.6 );
setRotateKey( spep_1-3 + 66, 1, 86.1 );
setRotateKey( spep_1-3 + 68, 1, 86.5 );
setRotateKey( spep_1-3 + 70, 1, 86.9 );
setRotateKey( spep_1-3 + 72, 1, 87.2 );
setRotateKey( spep_1-3 + 74, 1, 87.5 );
setRotateKey( spep_1-3 + 76, 1, 88 );
setRotateKey( spep_1-3 + 82, 1, 88 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_1-3 + 6,  10000, 16, 0x100, -1, 0, 185.4, 176.5 );--!!

setEffMoveKey( spep_1-3 + 6, ctbikkuri, 185.4, 176.5 , 0 );
setEffMoveKey( spep_1-3 + 8, ctbikkuri, 156.5, 157.9 , 0 );
setEffMoveKey( spep_1-3 + 10, ctbikkuri, 149.5, 157.4 , 0 );
setEffMoveKey( spep_1-3 + 12, ctbikkuri, 156.1, 164.8 , 0 );
setEffMoveKey( spep_1-3 + 14, ctbikkuri, 156.5, 157.9 , 0 );
setEffMoveKey( spep_1-3 + 16, ctbikkuri, 149.5, 157.4 , 0 );
setEffMoveKey( spep_1-3 + 18, ctbikkuri, 156.1, 164.8 , 0 );
setEffMoveKey( spep_1-3 + 20, ctbikkuri, 156.5, 157.9 , 0 );
setEffMoveKey( spep_1-3 + 22, ctbikkuri, 149.5, 157.4 , 0 );

a=0.2;

setEffScaleKey( spep_1-3 + 6, ctbikkuri, 2.41+a, 2.41+a );
setEffScaleKey( spep_1-3 + 8, ctbikkuri, 1.61+a, 1.61+a );
setEffScaleKey( spep_1-3 + 22, ctbikkuri, 1.61+a, 1.61+a );

setEffRotateKey( spep_1-3 + 6, ctbikkuri, 18 );
setEffRotateKey( spep_1-3 + 22, ctbikkuri, 18 );

setEffAlphaKey( spep_1-3 + 6, ctbikkuri, 255 );
setEffAlphaKey( spep_1-3 + 22, ctbikkuri, 255 );

--文字エントリー

ctbaki = entryEffectLife( spep_1-3 + 32,  10020, 20, 0x100, -1, 0, 95.3, 171.7 );--バキッ

setEffMoveKey( spep_1-3 + 32, ctbaki, 95.3, 171.7 , 0 );
setEffMoveKey( spep_1-3 + 34, ctbaki, 215.2, 228.9 , 0 );
setEffMoveKey( spep_1-3 + 36, ctbaki, 166.9, 241.5 , 0 );
setEffMoveKey( spep_1-3 + 38, ctbaki, 193.9, 232.3 , 0 );
setEffMoveKey( spep_1-3 + 40, ctbaki, 108.5, 227.8 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbaki, 137.4, 252.7 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbaki, 122, 302.7 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbaki, 114.2, 317.7 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbaki, 113.1, 318.2 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbaki, 111.9, 318.8 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbaki, 105.3, 326.7 , 0 );
--[[
setEffMoveKey( spep_1-3 + 54, ctbaki, 103.7, 328.5 , 0 );
setEffMoveKey( spep_1-3 + 56, ctbaki, 102.5, 330.4 , 0 );
setEffMoveKey( spep_1-3 + 58, ctbaki, 101.4, 332.3 , 0 );
setEffMoveKey( spep_1-3 + 60, ctbaki, 100.2, 334.2 , 0 );
setEffMoveKey( spep_1-3 + 62, ctbaki, 99, 336.2 , 0 );
setEffMoveKey( spep_1-3 + 64, ctbaki, 97.8, 338.1 , 0 );
setEffMoveKey( spep_1-3 + 66, ctbaki, 96.6, 340 , 0 );
setEffMoveKey( spep_1-3 + 68, ctbaki, 95.4, 341.9 , 0 );
setEffMoveKey( spep_1-3 + 70, ctbaki, 94.2, 343.9 , 0 );
setEffMoveKey( spep_1-3 + 72, ctbaki, 93, 345.8 , 0 );
setEffMoveKey( spep_1-3 + 74, ctbaki, 91.8, 347.7 , 0 );
setEffMoveKey( spep_1-3 + 76, ctbaki, 90.6, 349.6 , 0 );
setEffMoveKey( spep_1-3 + 78, ctbaki, 89.5, 351.6 , 0 );
setEffMoveKey( spep_1-3 + 80, ctbaki, 88.3, 353.5 , 0 );
setEffMoveKey( spep_1-3 + 82, ctbaki, 87.1, 355.4 , 0 );
setEffMoveKey( spep_1-3 + 84, ctbaki, 85.9, 357.3 , 0 );
setEffMoveKey( spep_1-3 + 86, ctbaki, 84.7, 359.3 , 0 );
setEffMoveKey( spep_1-3 + 88, ctbaki, 83.5, 361.2 , 0 );
]]--
b=0.1;
setEffScaleKey( spep_1-3 + 32, ctbaki, 0.93, 0.93 );
setEffScaleKey( spep_1-3 + 34, ctbaki, 1.04+b, 1.04+b );
setEffScaleKey( spep_1-3 + 36, ctbaki, 1.44+b, 1.44+b );
setEffScaleKey( spep_1-3 + 38, ctbaki, 1.26+b, 1.26+b );
setEffScaleKey( spep_1-3 + 40, ctbaki, 1.26+b, 1.26+b );
setEffScaleKey( spep_1-3 + 42, ctbaki, 1.2+b, 1.2+b );
setEffScaleKey( spep_1-3 + 44, ctbaki, 1.26+b, 1.26+b );
setEffScaleKey( spep_1-3 + 46, ctbaki, 1.27+b, 1.27+b );
setEffScaleKey( spep_1-3 + 48, ctbaki, 1.27+b, 1.27+b );
setEffScaleKey( spep_1-3 + 50, ctbaki, 1.28+b, 1.28+b );
setEffScaleKey( spep_1-3 + 52, ctbaki, 1.28+b, 1.28+b );
--setEffScaleKey( spep_1-3 + 54, ctbaki, 1.29, 1.29 );

setEffRotateKey( spep_1-3 + 32, ctbaki, 45.9 );
setEffRotateKey( spep_1-3 + 34, ctbaki, 11.3 );
setEffRotateKey( spep_1-3 + 36, ctbaki, 26.3 );
setEffRotateKey( spep_1-3 + 38, ctbaki, 21 );
setEffRotateKey( spep_1-3 + 40, ctbaki, 31.2 );
setEffRotateKey( spep_1-3 + 42, ctbaki, 23.6 );
setEffRotateKey( spep_1-3 + 50, ctbaki, 23.6 );
setEffRotateKey( spep_1-3 + 52, ctbaki, 23.5 );
--setEffRotateKey( spep_1-3 + 54, ctbaki, 23.6 );

setEffAlphaKey( spep_1-3 + 32, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 44, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 46, ctbaki, 198 );
setEffAlphaKey( spep_1-3 + 48, ctbaki, 142 );
setEffAlphaKey( spep_1-3 + 50, ctbaki, 85 );
setEffAlphaKey( spep_1-3 + 52, ctbaki, 0 );

--白フェード
entryFade( spep_1 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_1 + 26, 1003 );
playSe( spep_1 + 30, 1012 );
playSe( spep_1 + 34, 1009 );
playSe( spep_1 + 38, 1110 );

setSeVolume( spep_1 + 49, 1121, 14.2 );
setSeVolume( spep_1 + 50, 1121, 28.4 );
setSeVolume( spep_1 + 51, 1121, 42.6 );
setSeVolume( spep_1 + 52, 1121, 56.8 );
setSeVolume( spep_1 + 53, 1121, 71 );


-- ** くろ背景 ** --
entryFadeBg(   spep_1, 0, 92, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+90;

------------------------------------------------------
-- 格闘
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_2 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 110, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 110, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 10,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 10, shuchusen1, 98, 20 );
setEffMoveKey( spep_2-3 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 10, shuchusen1, 1.53, 1.53 );
setEffScaleKey( spep_2-3 + 108, shuchusen1, 1.53, 1.53 );

setEffRotateKey( spep_2-3 + 10, shuchusen1, 180 );
setEffRotateKey( spep_2-3 + 108, shuchusen1, 180 );

setEffAlphaKey( spep_2-3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 108, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +22, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +22,  ctgogo,  80,  510);
setEffMoveKey(  spep_2 +94,  ctgogo,  80,  510);

setEffAlphaKey( spep_2 +22, ctgogo, 0 );
setEffAlphaKey( spep_2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_2 + 88, ctgogo, 255 );
setEffAlphaKey( spep_2 + 90, ctgogo, 191 );
setEffAlphaKey( spep_2 + 92, ctgogo, 112 );
setEffAlphaKey( spep_2 + 94, ctgogo, 64 );

setEffRotateKey(  spep_2 +22,  ctgogo,  0);
setEffRotateKey(  spep_2 +94,  ctgogo,  0);

setEffScaleKey(  spep_2 +22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +84,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +94,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_2 + 22, 1018 );
playSe( spep_2 + 3, 1037 );
setSeVolume( spep_2 + 3, 1037, 79 );
playSe( spep_2 + 9, 1036 );
setSeVolume( spep_2 + 9, 1036, 79 );
playSe( spep_2 + 33, 1036 );
setSeVolume( spep_2 + 33, 1036, 79 );
playSe( spep_2 + 57, 1036 );
setSeVolume( spep_2 + 57, 1036, 79 );
playSe( spep_2 + 81, 1036 );
setSeVolume( spep_2 + 81, 1036, 79 );
playSe( spep_2 + 105, 1036 );
setSeVolume( spep_2 + 105, 1036, 79 );

stopSe( spep_2 + 1, se_1121, 31 );

--白フェード
entryFade( spep_2 + 102, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg(   spep_2, 0, 112, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+110;

--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 86, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

--白フェード
entryFade( spep_3 + 78, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 86;
--------------------------------------
--かめはめ波　発射
--------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 76, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_4 + 76, beam, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 76, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 76, beam, 255 );
setEffAlphaKey( spep_4 + 77, beam, 0 );
setEffAlphaKey( spep_4 + 78, beam, 0 );

--SE
playSe( spep_4 + 7, 1003 );
playSe( spep_4 + 7, 1022 );

-- ** くろ背景 ** --
entryFadeBg(   spep_4, 0, 78, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;
--------------------------------------
--かめはめ波　引き絵
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 56, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 56, hit_f, 255 );
setEffAlphaKey( spep_5 + 57, hit_f, 0 );
setEffAlphaKey( spep_5 + 58, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 56, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 56, hit_b, 255 );
setEffAlphaKey( spep_5 + 57, hit_b, 0 );
setEffAlphaKey( spep_5 + 58, hit_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 56, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 244.4, -423.1 , 0 );
setMoveKey( spep_5 + 2, 1, 236.5, -422.3 , 0 );
setMoveKey( spep_5 + 4, 1, 242.1, -416.3 , 0 );
setMoveKey( spep_5 + 6, 1, 236.6, -410.8 , 0 );
setMoveKey( spep_5 + 8, 1, 233.2, -409.6 , 0 );
setMoveKey( spep_5 + 10, 1, 237.8, -416.1 , 0 );
setMoveKey( spep_5 + 12, 1, 240.4, -419 , 0 );
setMoveKey( spep_5 + 14, 1, 247, -414.3 , 0 );
setMoveKey( spep_5 + 16, 1, 242.1, -405.8 , 0 );
setMoveKey( spep_5 + 18, 1, 241.1, -410.9 , 0 );
setMoveKey( spep_5 + 20, 1, 240.2, -408.4 , 0 );
setMoveKey( spep_5 + 22, 1, 241.2, -407.9 , 0 );
setMoveKey( spep_5 + 24, 1, 242.3, -399.8 , 0 );
setMoveKey( spep_5 + 26, 1, 239.5, -393.6 , 0 );
setMoveKey( spep_5 + 28, 1, 244.6, -395.1 , 0 );
setMoveKey( spep_5 + 30, 1, 240, -394.9 , 0 );
setMoveKey( spep_5 + 32, 1, 239.3, -398.4 , 0 );
setMoveKey( spep_5 + 34, 1, 242.5, -402 , 0 );
setMoveKey( spep_5 + 36, 1, 234.1, -401.8 , 0 );
setMoveKey( spep_5 + 38, 1, 229.7, -397.9 , 0 );
setMoveKey( spep_5 + 40, 1, 236.8, -405.5 , 0 );
setMoveKey( spep_5 + 42, 1, 228.5, -409.3 , 0 );
setMoveKey( spep_5 + 44, 1, 235.6, -417 , 0 );
setMoveKey( spep_5 + 46, 1, 227.4, -409.3 , 0 );
setMoveKey( spep_5 + 48, 1, 226.9, -417.1 , 0 );
setMoveKey( spep_5 + 50, 1, 226.4, -413.4 , 0 );
setMoveKey( spep_5 + 52, 1, 226, -413.5 , 0 );
setMoveKey( spep_5 + 54, 1, 221.8, -409.9 , 0 );
setMoveKey( spep_5 + 56, 1, 221.5, -406.3 , 0 );
--setMoveKey( spep_5 + 58, 1, 221.3, -407.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.21, 0.21 );
setScaleKey( spep_5 + 2, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 6, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 8, 1, 0.24, 0.24 );
setScaleKey( spep_5 + 38, 1, 0.24, 0.24 );
setScaleKey( spep_5 + 40, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 48, 1, 0.23, 0.23 );
setScaleKey( spep_5 + 50, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 56, 1, 0.22, 0.22 );

setRotateKey( spep_5 + 0, 1, 79.2 );
setRotateKey( spep_5 + 56, 1, 79.2 );

--SE
playSe( spep_5 + 4, 1021 );

-- ** くろ背景 ** --
entryFadeBg(   spep_5, 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;
------------------------------------------------------
-- ギャン(56)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_6 + 0, 190000, 56, 0x100, -1, 0, 0, 0 );  --ギャン(ef_006)
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, gyan, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 56, gyan, 0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 56, gyan, 255 );

-- ** 書き文字エントリー ** --
ctgyan = entryEffectLife( spep_6 + 0,  10006, 56, 0x100, -1, 0, 7.1, 306.8 );  --ギャンッ
setEffMoveKey( spep_6 + 0, ctgyan, 7.1, 306.8 , 0 );
setEffMoveKey( spep_6 + 56, ctgyan, 7.1, 306.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.6, 2.6 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 2.7, 2.7 );
setEffScaleKey( spep_6 + 6, ctgyan, 2.9, 2.9 );
setEffScaleKey( spep_6 + 8, ctgyan, 3, 3 );
setEffScaleKey( spep_6 + 10, ctgyan, 3.1, 3.1 );
setEffScaleKey( spep_6 + 12, ctgyan, 3.3, 3.3 );
setEffScaleKey( spep_6 + 14, ctgyan, 3.42, 3.42 );
setEffScaleKey( spep_6 + 16, ctgyan, 3.53, 3.53 );
setEffScaleKey( spep_6 + 18, ctgyan, 3.6, 3.6 );
setEffScaleKey( spep_6 + 20, ctgyan, 3.65, 3.65 );
setEffScaleKey( spep_6 + 22, ctgyan, 3.7, 3.7 );
setEffScaleKey( spep_6 + 24, ctgyan, 3.76, 3.76 );
setEffScaleKey( spep_6 + 26, ctgyan, 3.8, 3.8 );
setEffScaleKey( spep_6 + 28, ctgyan, 3.88, 3.88 );
setEffScaleKey( spep_6 + 30, ctgyan, 3.93, 3.93 );
setEffScaleKey( spep_6 + 32, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_6 + 34, ctgyan, 4.1, 4.1 );
setEffScaleKey( spep_6 + 36, ctgyan, 4.11, 4.11 );
setEffScaleKey( spep_6 + 38, ctgyan, 4.12, 4.12 );
setEffScaleKey( spep_6 + 40, ctgyan, 4.13, 4.13 );
setEffScaleKey( spep_6 + 42, ctgyan, 4.14, 4.14 );
setEffScaleKey( spep_6 + 44, ctgyan, 4.15, 4.15 );
setEffScaleKey( spep_6 + 46, ctgyan, 4.16, 4.16 );
setEffScaleKey( spep_6 + 48, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_6 + 50, ctgyan, 4.17, 4.17 );
setEffScaleKey( spep_6 + 52, ctgyan, 4.18, 4.18 );
setEffScaleKey( spep_6 + 54, ctgyan, 4.19, 4.19 );
setEffScaleKey( spep_6 + 56, ctgyan, 5, 5 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 56, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 56, ctgyan, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 58, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
playSe( spep_6 + 2, 1023 );  --ギャン

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_7 + 0, 1, 1 );
changeAnime( spep_7 + 0, 1, 107 );
setMoveKey( spep_7 + 0, 1, -3.8, -32.1 , 0 );
setMoveKey( spep_7 + 2, 1, -3.7, -56.6 , 0 );
setMoveKey( spep_7 + 4, 1, -3.4, -88.1 , 0 );
setMoveKey( spep_7 + 6, 1, -3.1, -126.6 , 0 );
setMoveKey( spep_7 + 8, 1, -2.8, -172.1 , 0 );
setMoveKey( spep_7 + 10, 1, -2.4, -224.6 , 0 );
setMoveKey( spep_7 + 12, 1, -1.9, -284.1 , 0 );
setMoveKey( spep_7 + 110, 1, -1.9, -284.1 , 0 );

y=0.4;

setScaleKey( spep_7 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_7 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 + 8, 1, 0.93, 0.93 );
--setScaleKey( spep_7 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 + 12, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 14, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 16, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 18, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 20, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 22, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 24, 1, 1.5-y, 1.5-y );
setScaleKey( spep_7 + 26, 1, 1.6-y, 1.6-y );
setScaleKey( spep_7 + 110, 1, 1.6-y, 1.6-y );

z=30;
setRotateKey( spep_7 + 0, 1, 0-z );
setRotateKey( spep_7 + 2, 1, 105-z );
setRotateKey( spep_7 + 4, 1, 240-z );
setRotateKey( spep_7 + 6, 1, 405-z );
setRotateKey( spep_7 + 8, 1, 600-z );
setRotateKey( spep_7 + 10, 1, 825-z );
setRotateKey( spep_7 + 12, 1, 1080-z );
setRotateKey( spep_7 + 110, 1, 1080-z );

-- ** エフェクト等 ** --
bg = entryEffect( spep_7 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_7 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, bg, -1.0, 1.0 );
setEffScaleKey( spep_7 + 100, bg, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, bg, 0 );
setEffRotateKey( spep_7 + 100, bg, 0 );
setEffAlphaKey( spep_7 + 0, bg, 255 );
setEffAlphaKey( spep_7 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_7 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_7 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_7 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_7 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_7 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_7 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_7 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_7 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_7 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_7 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_7 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen4, 0 );
setEffRotateKey( spep_7 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_7 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusen5, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen5, 0 );
setEffRotateKey( spep_7 + 100, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 100, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_7 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_7 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_7 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_7 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_7 + 2, hibiware, 0 );
setEffRotateKey( spep_7 + 100, hibiware, 0 );

setEffAlphaKey( spep_7 + 2, hibiware, 0 );
setEffAlphaKey( spep_7 + 13, hibiware, 0 );
setEffAlphaKey( spep_7 + 14, hibiware, 255 );
setEffAlphaKey( spep_7 + 100, hibiware, 255 );

--SE
playSe( spep_7 + 0, 1014 );
playSe( spep_7 + 14, 1054 );

--終わり
dealDamage( spep_7  );
endPhase( spep_7 + 98 );


end