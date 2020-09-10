--1020370:魔人ブウ(ゴテンクス吸収)_破壊光弾
--sp_effect_a2_00140

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
SP_01=	155895	;--	前半　手前
SP_02=	155896	;--	前半　奥
SP_03=	155897	;--	後半

--敵側
SP_01x=	155898	;--	前半　手前	(敵)
SP_02x=	155899	;--	前半　奥	(敵)
SP_03x=	155900	;--	後半	(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
spep_0=0;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 720, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 720, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 720, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 718, first_f, 255 );
setEffAlphaKey( spep_0 + 719, first_f, 255 );
setEffAlphaKey( spep_0 + 720, first_f, 0 );

-- ** エフェクト等 ** --
first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 720, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 720, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 720, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 718, first_b, 255 );
setEffAlphaKey( spep_0 + 719, first_b, 255 );
setEffAlphaKey( spep_0 + 720, first_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 184.2, -146.2 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 185.7, -146.2 , 0 );
setMoveKey( spep_0-3 + 4, 1, 187.3, -146.2 , 0 );
setMoveKey( spep_0-3 + 6, 1, 188.8, -146.2 , 0 );
setMoveKey( spep_0-3 + 8, 1, 190.3, -146.2 , 0 );
setMoveKey( spep_0-3 + 10, 1, 191.9, -146.2 , 0 );
setMoveKey( spep_0-3 + 12, 1, 193.4, -146.2 , 0 );
setMoveKey( spep_0-3 + 14, 1, 195, -146.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, 196.5, -146.2 , 0 );
setMoveKey( spep_0-3 + 18, 1, 198, -146.2 , 0 );
setMoveKey( spep_0-3 + 20, 1, 199.6, -146.2 , 0 );
setMoveKey( spep_0-3 + 22, 1, 201.1, -146.2 , 0 );
setMoveKey( spep_0-3 + 24, 1, 202.6, -146.2 , 0 );
setMoveKey( spep_0-3 + 26, 1, 204.2, -146.2 , 0 );
setMoveKey( spep_0-3 + 28, 1, 205.7, -146.2 , 0 );
setMoveKey( spep_0-3 + 30, 1, 207.3, -146.2 , 0 );
setMoveKey( spep_0-3 + 32, 1, 208.8, -146.2 , 0 );
setMoveKey( spep_0-3 + 34, 1, 210.3, -146.2 , 0 );
setMoveKey( spep_0-3 + 36, 1, 211.9, -146.2 , 0 );
setMoveKey( spep_0-3 + 38, 1, 213.4, -146.2 , 0 );
setMoveKey( spep_0-3 + 40, 1, 215, -146.2 , 0 );
setMoveKey( spep_0-3 + 42, 1, 216.5, -146.2 , 0 );
setMoveKey( spep_0-3 + 44, 1, 218, -146.2 , 0 );
setMoveKey( spep_0-3 + 46, 1, 219.6, -146.2 , 0 );
setMoveKey( spep_0-3 + 48, 1, 221.1, -146.2 , 0 );
setMoveKey( spep_0-3 + 50, 1, 222.6, -146.2 , 0 );
setMoveKey( spep_0-3 + 53, 1, 224.2, -146.2 , 0 );

setScaleKey( spep_0 + 0, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 1, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 2, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 3, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 4, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 5, 1, 3.46, 3.46 );
setScaleKey( spep_0-3 + 53, 1, 3.46, 3.46 );

setRotateKey( spep_0 + 0, 1, 12.2 );
setRotateKey( spep_0 + 1, 1, 12.2 );
setRotateKey( spep_0 + 2, 1, 12.2 );
setRotateKey( spep_0 + 3, 1, 12.2 );
setRotateKey( spep_0 + 4, 1, 12.2 );
setRotateKey( spep_0 + 5, 1, 12.2 );
setRotateKey( spep_0-3 + 53, 1, 12.2 );

--SE
--入り
SE001 =playSe( spep_0 + 0 , 8 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 69 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 730, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    pauseAll( SP_dodge, 67 );

    --敵の動き
    setMoveKey( SP_dodge + 9, 1, 224.2, -146.2 , 0 );
    setScaleKey( SP_dodge + 9, 1, 3.46, 3.46 );
    setRotateKey( SP_dodge + 9, 1, 12.2 );
    
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

--敵の動き
setDisp( spep_0-1 + 143, 1, 0 );

--setGaussBlurKey(spep_0-3 + 102, 1,  0.002 );
--setGaussBlurKey(spep_0-3 + 143, 1,  0.002 );
--setGaussBlurKey(spep_0-3 + 144, 1,  0 );

changeAnime( spep_0-3 + 54, 1, 103 );
changeAnime( spep_0-3 + 70, 1, 111 );
changeAnime( spep_0-3 + 70, 1, 111 );
changeAnime( spep_0-3 + 71, 1, 111 );
changeAnime( spep_0-3 + 72, 1, 111 );
changeAnime( spep_0-3 + 73, 1, 111 );
changeAnime( spep_0-3 + 74, 1, 112 );


setMoveKey( spep_0-3 + 54, 1, 466.1, -10 , 0 );
setMoveKey( spep_0-3 + 56, 1, 457.3, -10 , 0 );
setMoveKey( spep_0-3 + 58, 1, 444.2, -10 , 0 );
setMoveKey( spep_0-3 + 60, 1, 426.8, -10 , 0 );
setMoveKey( spep_0-3 + 62, 1, 405, -10 , 0 );
setMoveKey( spep_0-3 + 64, 1, 378.9, -10 , 0 );
setMoveKey( spep_0-3 + 66, 1, 348.6, -10 , 0 );
setMoveKey( spep_0-3 + 69, 1, 313.9, -10 , 0 );
setMoveKey( spep_0-3 + 70, 1, 229.2, -12.7 , 0 );
setMoveKey( spep_0-3 + 73, 1, 159.3, -13.4 , 0 );
setMoveKey( spep_0-3 + 74, 1, 44.6, -13.5 , 0 );
setMoveKey( spep_0-3 + 76, 1, 18.3, -13.6 , 0 );
setMoveKey( spep_0-3 + 78, 1, 6.4, -13.7 , 0 );
setMoveKey( spep_0-3 + 80, 1, -0.4, -13.7 , 0 );
setMoveKey( spep_0-3 + 82, 1, -5, -13.7 , 0 );
setMoveKey( spep_0-3 + 84, 1, -8.1, -13.8 , 0 );
setMoveKey( spep_0-3 + 86, 1, -10.3, -13.8 , 0 );
setMoveKey( spep_0-3 + 88, 1, -11.8, -13.8 , 0 );
setMoveKey( spep_0-3 + 90, 1, -12.9, -13.8 , 0 );
setMoveKey( spep_0-3 + 92, 1, -13.6, -13.8 , 0 );
setMoveKey( spep_0-3 + 94, 1, -14.1, -13.8 , 0 );
setMoveKey( spep_0-3 + 96, 1, -14.4, -13.8 , 0 );
setMoveKey( spep_0-3 + 98, 1, -14.6, -13.8 , 0 );
setMoveKey( spep_0-3 + 100, 1, -14.6, -13.9 , 0 );
setMoveKey( spep_0-3 + 101, 1, -14.6, -13.9 , 0 );
setMoveKey( spep_0-3 + 102, 1, -272.7, -325 , 0 );
setMoveKey( spep_0-1 + 143, 1, -272.7, -325 , 0 );

setScaleKey( spep_0-3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 100, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 101, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 102, 1, 6.14, 6.14 );
setScaleKey( spep_0-1 + 143, 1, 6.14, 6.14 );

setRotateKey( spep_0-3 + 54, 1, 0 );
setRotateKey( spep_0-3 + 69, 1, 0 );
setRotateKey( spep_0-3 + 70, 1, 3.7 );
setRotateKey( spep_0-3 + 73, 1, 15.7 );
setRotateKey( spep_0-3 + 74, 1, -7.7 );
setRotateKey( spep_0-3 + 76, 1, -5.1 );
setRotateKey( spep_0-3 + 78, 1, -4 );
setRotateKey( spep_0-3 + 80, 1, -3.3 );
setRotateKey( spep_0-3 + 82, 1, -2.9 );
setRotateKey( spep_0-3 + 84, 1, -2.6 );
setRotateKey( spep_0-3 + 86, 1, -2.4 );
setRotateKey( spep_0-3 + 88, 1, -2.2 );
setRotateKey( spep_0-3 + 90, 1, -2.1 );
setRotateKey( spep_0-3 + 92, 1, -2.1 );
setRotateKey( spep_0-3 + 94, 1, -2 );
setRotateKey( spep_0-3 + 100, 1, -2 );
setRotateKey( spep_0-3 + 101, 1, -2 );
setRotateKey( spep_0-3 + 102, 1, -16.5 );
setRotateKey( spep_0-1 + 143, 1, -16.5 );

--敵の動き
setDisp( spep_0-3 + 196, 1, 1 );
setDisp( spep_0-1 + 260, 1, 0 );

changeAnime( spep_0-3 + 196, 1, 107 );

g=100;

setMoveKey( spep_0-3 + 196, 1, -84.9, -474.9+g , 0 );
setMoveKey( spep_0-3 + 198, 1, -84.1, -473.7+g , 0 );
setMoveKey( spep_0-3 + 200, 1, -81.7, -470.1+g , 0 );
setMoveKey( spep_0-3 + 202, 1, -77.7, -464.1+g , 0 );
setMoveKey( spep_0-3 + 204, 1, -72.1, -455.8+g , 0 );
setMoveKey( spep_0-3 + 206, 1, -77.1, -451.8+g , 0 );
setMoveKey( spep_0-3 + 208, 1, -43.4, -431.3+g , 0 );
setMoveKey( spep_0-3 + 210, 1, -63.9, -426.5+g , 0 );
setMoveKey( spep_0-3 + 212, 1, -36.4, -416+g , 0 );
setMoveKey( spep_0-3 + 214, 1, -55.6, -416.2+g , 0 );
setMoveKey( spep_0-3 + 216, 1, -40.8, -412.4+g , 0 );
setMoveKey( spep_0-3 + 218, 1, -55.5, -414.5+g , 0 );
setMoveKey( spep_0-3 + 220, 1, -40.3, -415.3+g , 0 );
setMoveKey( spep_0-3 + 222, 1, -45, -415.1+g , 0 );
setMoveKey( spep_0-3 + 228, 1, -45, -415.1+g , 0 );
setMoveKey( spep_0-3 + 230, 1, -47.8, -414.6+g , 0 );
setMoveKey( spep_0-3 + 232, 1, -56.1, -413.4+g , 0 );
setMoveKey( spep_0-3 + 234, 1, -70.2, -411.1+g , 0 );
setMoveKey( spep_0-3 + 236, 1, -90.3, -407.9+g , 0 );
setMoveKey( spep_0-3 + 238, 1, -196.5, -389+g , 0 );
setMoveKey( spep_0-3 + 240, 1, -371.6, -357.9+g , 0 );
setMoveKey( spep_0-3 + 242, 1, -606.6, -316.1+g , 0 );
setMoveKey( spep_0-3 + 244, 1, -872.6, -268.7+g , 0 );
setMoveKey( spep_0-3 + 246, 1, -1019.7, -248.9+g , 0 );
setMoveKey( spep_0-3 + 248, 1, -1157.3, -230.3+g , 0 );
setMoveKey( spep_0-3 + 250, 1, -1280.2, -213.7+g , 0 );
setMoveKey( spep_0-3 + 252, 1, -1384.3, -199.6+g , 0 );
setMoveKey( spep_0-3 + 254, 1, -1466.8, -188.5+g , 0 );
setMoveKey( spep_0-3 + 256, 1, -1526.1, -180.5+g , 0 );
setMoveKey( spep_0-3 + 258, 1, -1561.3, -175.7+g , 0 );
setMoveKey( spep_0-1 + 260, 1, -1573, -174.1+g , 0 );

setScaleKey( spep_0-3 + 196, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 230, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 232, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 234, 1, 3.28, 3.28 );
setScaleKey( spep_0-3 + 236, 1, 3.27, 3.27 );
setScaleKey( spep_0-3 + 238, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 240, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 242, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 244, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 246, 1, 2.66, 2.66 );
setScaleKey( spep_0-3 + 248, 1, 2.59, 2.59 );
setScaleKey( spep_0-3 + 250, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 252, 1, 2.47, 2.47 );
setScaleKey( spep_0-3 + 254, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 256, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 258, 1, 2.38, 2.38 );
setScaleKey( spep_0-1 + 260, 1, 2.38, 2.38 );

a=20;

setRotateKey( spep_0-3 + 196, 1, -90+a );
setRotateKey( spep_0-3 + 198, 1, -90.1+a );
setRotateKey( spep_0-3 + 200, 1, -90.4+a );
setRotateKey( spep_0-3 + 202, 1, -90.9+a );
setRotateKey( spep_0-3 + 204, 1, -91.6+a );
setRotateKey( spep_0-3 + 206, 1, -92.5+a );
setRotateKey( spep_0-3 + 208, 1, -93.4+a );
setRotateKey( spep_0-3 + 210, 1, -94.1+a );
setRotateKey( spep_0-3 + 212, 1, -94.6+a );
setRotateKey( spep_0-3 + 214, 1, -94.9+a );
setRotateKey( spep_0-3 + 216, 1, -95+a );
setRotateKey( spep_0-1 + 260, 1, -95+a );


--敵の動き
setDisp( spep_0-3 + 302, 1, 1 );
setDisp( spep_0-1 + 308, 1, 0 );

changeAnime( spep_0-3 + 302, 1, 106 );

setMoveKey( spep_0-3 + 302, 1, -584.1, -134.6 , 0 );
setMoveKey( spep_0-3 + 303, 1, -584.1, -134.6 , 0 );
setMoveKey( spep_0-3 + 304, 1, -444.1, -74.6 , 0 );
setMoveKey( spep_0-3 + 305, 1, -444.1, -74.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, -234.1, 31.4 , 0 );
setMoveKey( spep_0-1 + 308, 1, -234.1, 31.4 , 0 );

setScaleKey( spep_0-3 + 302, 1, 2.5, 2.5 );
setScaleKey( spep_0-1 + 308, 1, 2.5, 2.5 );

setRotateKey( spep_0-3 + 302, 1, 0 );
setRotateKey( spep_0-1 + 308, 1, 0 );

--敵の動き
setDisp( spep_0 +1 + 310, 1, 1 );
setDisp( spep_0 -3 + 410, 1, 0 );

changeAnime( spep_0 +1 + 310, 1, 7 );
changeAnime( spep_0-3 + 324, 1, 105 );
changeAnime( spep_0-3 + 364, 1, 6 );
changeAnime( spep_0-3 + 394, 1, 108 );
changeAnime( spep_0-3 + 398, 1, 106 );

b=380;
g=290;

setMoveKey( spep_0 +1 + 310, 1, -20.4+b, -462.7+g , 0 );
setMoveKey( spep_0 +1 + 312, 1, -63.8+b, -462.4+g , 0 );
setMoveKey( spep_0 +1 + 314, 1, -97.5+b, -462.3+g , 0 );
setMoveKey( spep_0 +1 + 316, 1, -97.5+b, -462.3+g , 0 );
setMoveKey( spep_0 +1 + 318, 1, -129.8+b, -462.6+g , 0 );
setMoveKey( spep_0 + 320, 1, -140.4+b, -462.7+g , 0 );

setMoveKey( spep_0-3 + 324, 1, -29.9, 7.9 , 0 );
setMoveKey( spep_0-3 + 326, 1, -131.2, -11.9 , 0 );
setMoveKey( spep_0-3 + 328, 1, -47.6, 49.6 , 0 );
setMoveKey( spep_0-3 + 330, 1, -341.2, -155.1 , 0 );
setMoveKey( spep_0-3 + 332, 1, -194.9, -52.1 , 0 );
setMoveKey( spep_0-3 + 334, 1, -211.7, -70.4 , 0 );
setMoveKey( spep_0-3 + 336, 1, -245.3, -84 , 0 );
setMoveKey( spep_0-3 + 338, 1, -244.1, -80.8 , 0 );
setMoveKey( spep_0-3 + 340, 1, -254.2, -103.4 , 0 );
setMoveKey( spep_0-3 + 342, 1, -260.1, -90.2 , 0 );
setMoveKey( spep_0-3 + 344, 1, -265.2, -106.9 , 0 );
setMoveKey( spep_0-3 + 346, 1, -268.3, -94.8 , 0 );
setMoveKey( spep_0-3 + 348, 1, -280, -108.8 , 0 );
setMoveKey( spep_0-3 + 350, 1, -273.1, -101 , 0 );
setMoveKey( spep_0-3 + 352, 1, -281.2, -112.7 , 0 );
setMoveKey( spep_0-3 + 354, 1, -277.4, -104.3 , 0 );
setMoveKey( spep_0-3 + 356, 1, -285.2, -110.6 , 0 );
setMoveKey( spep_0-3 + 358, 1, -280.1, -106.6 , 0 );
setMoveKey( spep_0-3 + 360, 1, -282.6, -110.6 , 0 );
setMoveKey( spep_0-3 + 362, 1, -282.9, -108.5 , 0 );
setMoveKey( spep_0-3 + 363, 1, -282.9, -108.5 , 0 );


setMoveKey( spep_0-3 + 364, 1, 481.2, -361.8 , 0 );
setMoveKey( spep_0-3 + 366, 1, 452.3, -340.1 , 0 );
setMoveKey( spep_0-3 + 368, 1, 423.4, -318.3 , 0 );
setMoveKey( spep_0-3 + 370, 1, 394.6, -296.6 , 0 );
setMoveKey( spep_0-3 + 372, 1, 365.7, -274.9 , 0 );
setMoveKey( spep_0-3 + 374, 1, 336.8, -253.1 , 0 );
setMoveKey( spep_0-3 + 376, 1, 307.9, -231.4 , 0 );
setMoveKey( spep_0-3 + 378, 1, 279, -209.7 , 0 );
setMoveKey( spep_0-3 + 380, 1, 250.1, -187.9 , 0 );
setMoveKey( spep_0-3 + 382, 1, 221.3, -166.2 , 0 );
setMoveKey( spep_0-3 + 384, 1, 192.4, -144.5 , 0 );
setMoveKey( spep_0-3 + 386, 1, 163.5, -122.7 , 0 );
setMoveKey( spep_0-3 + 388, 1, 134.6, -101 , 0 );
setMoveKey( spep_0-3 + 390, 1, 105.7, -79.3 , 0 );
setMoveKey( spep_0-3 + 392, 1, 76.9, -57.6 , 0 );
setMoveKey( spep_0-3 + 393, 1, 76.9, -57.6 , 0 );

setMoveKey( spep_0-3 + 394, 1, 82.9, 0.5 , 0 );
setMoveKey( spep_0-3 + 396, 1, 69.8, 7.5 , 0 );
setMoveKey( spep_0-3 + 397, 1, 69.8, 7.5 , 0 );

setMoveKey( spep_0-3 + 398, 1, 243.5, 40.3 , 0 );
setMoveKey( spep_0-3 + 400, 1, 285.4, 65.1 , 0 );
setMoveKey( spep_0-3 + 402, 1, 334.5, 64.6 , 0 );
setMoveKey( spep_0-3 + 404, 1, 405.1, 85.8 , 0 );
setMoveKey( spep_0-3 + 406, 1, 467.9, 86.3 , 0 );
setMoveKey( spep_0-3 + 408, 1, 542.3, 105.7 , 0 );
setMoveKey( spep_0-3 + 410, 1, 602.2, 115.8 , 0 );

setScaleKey( spep_0 +1 + 310, 1, 3.25, 3.25 );
setScaleKey( spep_0  + 320, 1, 3.25, 3.25 );

setScaleKey( spep_0-3 + 324, 1, 3.21, 3.21 );
setScaleKey( spep_0-3 + 326, 1, 3.62, 3.62 );
setScaleKey( spep_0-3 + 328, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 330, 1, 2.51, 2.51 );
setScaleKey( spep_0-3 + 332, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 334, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 336, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 338, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 340, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 342, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 344, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 346, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 348, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 350, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 352, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 354, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 356, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 357, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 363, 1, 0.2, 0.2 );

setScaleKey( spep_0-3 + 364, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 393, 1, 1.3, 1.3 );

c=0.4;

setScaleKey( spep_0-3 + 394, 1, 1.91+c, 1.91+c );
setScaleKey( spep_0-3 + 396, 1, 1.21+c, 1.21+c );
setScaleKey( spep_0-3 + 397, 1, 1.21+c, 1.21+c );

setScaleKey( spep_0-3 + 398, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 410, 1, 1.3, 1.3 );

h=70;

setRotateKey( spep_0 +1 + 310, 1, 120.3 -h);
setRotateKey( spep_0  + 320, 1, 120.3 -h);

setRotateKey( spep_0-3 + 324, 1, -90.5 );
setRotateKey( spep_0-3 + 363, 1, -90.5 );

setRotateKey( spep_0-3 + 364, 1, 6.7 );
setRotateKey( spep_0-3 + 393, 1, 6.7 );

setRotateKey( spep_0-3 + 394, 1, -14.9 );
setRotateKey( spep_0-3 + 397, 1, -14.9 );

setRotateKey( spep_0-3 + 398, 1, 6.7 );
setRotateKey( spep_0-3 + 400, 1, 8.2 );
setRotateKey( spep_0-3 + 402, 1, 10.5 );
setRotateKey( spep_0-3 + 404, 1, 13.1 );
setRotateKey( spep_0-3 + 406, 1, 15.8 );
setRotateKey( spep_0-3 + 408, 1, 18.6 );
setRotateKey( spep_0-3 + 410, 1, 21.4 );

--敵の動き
setDisp( spep_0-3 + 450, 1, 1 );
setDisp( spep_0-3 + 492, 1, 0 );
--setGaussBlurKey(spep_0-3 + 492, 1,  0 );

changeAnime( spep_0 -3 + 450, 1, 5 );
changeAnime( spep_0 -3 + 466, 1, 108 );

setMoveKey( spep_0-3 + 450, 1, -714.3, -918.2 , 0 );
setMoveKey( spep_0-3 + 452, 1, -553.6, -692.8 , 0 );
setMoveKey( spep_0-3 + 454, 1, -416.4, -500.2 , 0 );
setMoveKey( spep_0-3 + 456, 1, -302.8, -340.6 , 0 );
setMoveKey( spep_0-3 + 458, 1, -212.5, -213.8 , 0 );
setMoveKey( spep_0-3 + 460, 1, -145.8, -120 , 0 );
setMoveKey( spep_0-3 + 462, 1, -102.5, -59.1 , 0 );
setMoveKey( spep_0-3 + 465, 1, -102.5, -59.1 , 0 );

setMoveKey( spep_0-3 + 466, 1, -49.4, -418.8 , 0 );
setMoveKey( spep_0-3 + 468, 1, 31.7, -260.6 , 0 );
setMoveKey( spep_0-3 + 470, 1, -101.4, -426.1 , 0 );
setMoveKey( spep_0-3 + 472, 1, -85.7, -593.1 , 0 );
setMoveKey( spep_0-3 + 474, 1, -87.6, -472.2 , 0 );
setMoveKey( spep_0-3 + 476, 1, -87.1, -621.3 , 0 );
setMoveKey( spep_0-3 + 478, 1, -103.6, -752.6 , 0 );
setMoveKey( spep_0-3 + 480, 1, -95.6, -757.5 , 0 );
setMoveKey( spep_0-3 + 481, 1, -95.6, -757.5 , 0 );

setMoveKey( spep_0-3 + 482, 1, -31.9, 38.9 , 0 );
setMoveKey( spep_0-3 + 484, 1, -31.9, -56.7 , 0 );
setMoveKey( spep_0-3 + 486, 1, -31.9, -152.3 , 0 );
setMoveKey( spep_0-3 + 488, 1, -31.9, -247.9 , 0 );
setMoveKey( spep_0-3 + 490, 1, -31.9, -343.6 , 0 );
setMoveKey( spep_0-3 + 492, 1, -49, -474.5 , 0 );

d=0.6;

setScaleKey( spep_0-3 + 450, 1, 8.35+d, 8.35+d );
setScaleKey( spep_0-3 + 452, 1, 6.72+d, 6.72+d );
setScaleKey( spep_0-3 + 454, 1, 5.33+d, 5.33+d );
setScaleKey( spep_0-3 + 456, 1, 4.18+d, 4.18+d );
setScaleKey( spep_0-3 + 458, 1, 3.26+d, 3.26+d );
setScaleKey( spep_0-3 + 460, 1, 2.58+d, 2.58+d );
setScaleKey( spep_0-3 + 462, 1, 2.14+d, 2.14+d );
setScaleKey( spep_0-3 + 465, 1, 2.14+d, 2.14+d );

e=0.5;

setScaleKey( spep_0-3 + 466, 1, 4.41+e, 4.41+e );
setScaleKey( spep_0-3 + 468, 1, 4.73+e, 4.73+e );
setScaleKey( spep_0-3 + 470, 1, 3.1+e, 3.1+e );
setScaleKey( spep_0-3 + 472, 1, 2.66+e, 2.66+e );
setScaleKey( spep_0-3 + 474, 1, 2.29+e, 2.29+e );
setScaleKey( spep_0-3 + 481, 1, 2.29+e, 2.29+e );

f=0.3;

setScaleKey( spep_0-3 + 482, 1, 0.45+f, 0.45+f );
setScaleKey( spep_0-3 + 492, 1, 0.45+f, 0.45+f );

setRotateKey( spep_0-3 + 450, 1, 44.9 );
setRotateKey( spep_0-3 + 452, 1, 44.9 );
setRotateKey( spep_0-3 + 453, 1, 44.9 );
setRotateKey( spep_0-3 + 454, 1, 45 );
setRotateKey( spep_0-3 + 462, 1, 45 );
setRotateKey( spep_0-3 + 465, 1, 45 );

setRotateKey( spep_0-3 + 466, 1, 71.8 );
setRotateKey( spep_0-3 + 468, 1, 71.8 );
setRotateKey( spep_0-3 + 470, 1, 75 );
setRotateKey( spep_0-3 + 472, 1, 78.1 );
setRotateKey( spep_0-3 + 474, 1, 81.3 );
setRotateKey( spep_0-3 + 476, 1, 84.5 );
setRotateKey( spep_0-3 + 478, 1, 87.7 );

setRotateKey( spep_0-3 + 482, 1, 87.7 );
setRotateKey( spep_0-3 + 492, 1, 87.7 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 566, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


--SE
--敵向かっていく
SE002 =playSe( spep_0 + 58 , 63 );
setSeVolumeByWorkId( spep_0 + 58 , SE002 , 62 );
stopSe( spep_0 + 80, SE002, 10);
SE003 =playSe( spep_0 + 72 , 1003 );
setSeVolumeByWorkId( spep_0 + 72 , SE003 , 74 );

--瞬間移動
SE004 =playSe( spep_0 + 74 , 1109 );
SE005 =playSe( spep_0 + 110 , 1109 );

--触手振り回す
SE006 =playSe( spep_0 + 146 , 1116 );
setTimeStretch( SE006, 2.0, 40, 6 );
stopSe( spep_0 + 205, SE006, 27);
SE007 =playSe( spep_0 + 146 , 1117 );
stopSe( spep_0 + 161, SE007, 17);
SE008 =playSe( spep_0 + 152 , 1004 );

--触手巻きつく
SE009 =playSe( spep_0 + 198 , 1151 );
setSeVolumeByWorkId( spep_0 + 198 , SE009 , 170 );
SE010 =playSe( spep_0 + 198 , 1112 );
setSeVolumeByWorkId( spep_0 + 198 , SE010 , 43 );
setTimeStretch( SE010, 0.7, 10, 1 );
SE011 =playSe( spep_0 + 198 , 1041 );
setSeVolumeByWorkId( spep_0 + 198 , SE011 , 60 );
setPitch( spep_0 + 198, SE011, -300 );
setTimeStretch( SE011, 0.8, 10, 1 );
SE012 =playSe( spep_0 + 204 , 1151 );
setSeVolumeByWorkId( spep_0 + 204 , SE012 , 88 );
setPitch( spep_0 + 204, SE012, 300 );
setTimeStretch( SE012, 1.2, 10, 1 );
SE013 =playSe( spep_0 + 210 , 1151 );
setSeVolumeByWorkId( spep_0 + 210 , SE013 , 60 );
setPitch( spep_0 + 210, SE013, 600 );
setTimeStretch( SE013, 1.4, 10, 1 );
SE014 =playSe( spep_0 + 214 , 1151 );
setSeVolumeByWorkId( spep_0 + 214 , SE014 , 43 );
setPitch( spep_0 + 214, SE014, 800 );
setTimeStretch( SE014, 1.53, 10, 1 );

--カメラズームアウト
SE015 =playSe( spep_0 + 258 , 1072 );
setTimeStretch( SE015, 0.77, 10, 1 );

--敵引き寄せる
SE016 =playSe( spep_0 + 298 , 1004 );
SE017 =playSe( spep_0 + 300 , 1003 );

--殴る
SE018 =playSe( spep_0 + 312 , 1182 );
setSeVolumeByWorkId( spep_0 + 312 , SE018 , 178 );
stopSe( spep_0 + 318, SE018, 7);
SE019 =playSe( spep_0 + 312 , 1187 );
setSeVolumeByWorkId( spep_0 + 312 , SE019 , 70 );
setPitch( spep_0 + 312, SE019, -400 );
setTimeStretch( SE019, 0.73, 10, 1 );
SE020 =playSe( spep_0 + 312 , 1010 );
setSeVolumeByWorkId( spep_0 + 312 , SE020 , 178 );
setPitch( spep_0 + 312, SE020, -300 );
setTimeStretch( SE020, 0.8, 10, 1 );
SE021 =playSe( spep_0 + 312 , 1068 );
setSeVolumeByWorkId( spep_0 + 312 , SE021 , 83 );
stopSe( spep_0 + 336, SE021, 49);
SE022 =playSe( spep_0 + 318 , 1109 );
setSeVolumeByWorkId( spep_0 + 318 , SE022 , 44 );
setPitch( spep_0 + 318, SE022, 200 );
setTimeStretch( SE022, 1.13, 10, 1 );

--敵飛んでいく
SE023 =playSe( spep_0 + 344 , 1183 );
stopSe( spep_0 + 400 , SE023, 0);

--瞬間移動
SE024 =playSe( spep_0 + 380 , 1109 );

--裏拳
SE025 =playSe( spep_0 + 400 , 1009 );
SE026 =playSe( spep_0 + 400 , 1187 );
setSeVolumeByWorkId( spep_0 + 400 , SE026 , 52 );
SE027 =playSe( spep_0 + 402 , 1110 );

--瞬間移動
SE028 =playSe( spep_0 + 438 , 1109 );

--エルボー
SE029 =playSe( spep_0 + 460 , 1011 );
setSeVolumeByWorkId( spep_0 + 460 , SE029 , 112 );
stopSe( spep_0 + 482, SE029, 37);
SE030 =playSe( spep_0 + 460 , 1123 );
setSeVolumeByWorkId( spep_0 + 460 , SE030 , 48 );
SE031 =playSe( spep_0 + 460 , 1182 );
setSeVolumeByWorkId( spep_0 + 460 , SE031 , 112 );
stopSe( spep_0 + 472, SE031, 14);
SE032 =playSe( spep_0 + 470 , 1109 );
setSeVolumeByWorkId( spep_0 + 470 , SE032 , 76 );

--地面ドーン
SE033 =playSe( spep_0 + 490 , 1023 );
SE034 =playSe( spep_0 + 494 , 1159 );
setSeVolumeByWorkId( spep_0 + 494 , SE034 , 65 );
stopSe( spep_0 + 565, SE034, 110);
SE035 =playSe( spep_0 + 494 , 1168 );
setSeVolumeByWorkId( spep_0 + 494 , SE035 , 87 );
stopSe( spep_0 + 560, SE035, 80);

--気弾溜め
SE036 =playSe( spep_0 + 552 , 1274 );
setSeVolumeByWorkId( spep_0 + 552 , SE036 , 126 );
setPitch( spep_0 + 552, SE036, -100 );
setTimeStretch( SE036, 0.66, 10, 1 );
SE037 =playSe( spep_0 + 562 , 1242 );
setSeVolumeByWorkId( spep_0 + 562 , SE037 , 141 );
setPitch( spep_0 + 562, SE037, -1200 );
setTimeStretch( SE037, 0.2, 10, 1 );
SE038 =playSe( spep_0 + 564 , 1214 );
setSeVolumeByWorkId( spep_0 + 564 , SE038 , 135 );
setPitch( spep_0 + 564, SE038, -900 );
setTimeStretch( SE038, 0.4, 10, 1 );

--顔カットイン
SE039 =playSe( spep_0 + 578 , 1018 );

--ぐわっ
SE040 =playSe( spep_0 + 656 , 8 );
setSeVolumeByWorkId( spep_0 + 656 , SE040 , 79 );
setPitch( spep_0 + 656, SE040, -800 );
setTimeStretch( SE040, 0.33, 10, 1 );
SE041 =playSe( spep_0 + 662 , 1232 );
setPitch( spep_0 + 662, SE041, -400 );
setTimeStretch( SE041, 0.61, 10, 1 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 720;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

stopSe( spep_1 + 7 , SE037, 0);
stopSe( spep_1 + 7 , SE038, 0);
stopSe( spep_1 + 7 , SE040, 0);

--白フェード
--entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 270, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 270, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 270, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 270, finish, 255 );

--SE
--気弾発射予兆
SE043 =playSe( spep_2 + 0 , 1242 );
setSeVolumeByWorkId( spep_2 + 0 , SE043 , 0 );
setSeVolumeByWorkId( spep_2 + 1 , SE043 , 35.2 );
setSeVolumeByWorkId( spep_2 + 2 , SE043 , 70.4 );
setSeVolumeByWorkId( spep_2 + 3 , SE043 , 105.6 );
setSeVolumeByWorkId( spep_2 + 4 , SE043 , 141 );
setStartTimeMs( SE043,  733 );
setPitch( spep_2 + 0, SE043, -1200 );
setTimeStretch( SE043, 0.2, 10, 1 );
stopSe( spep_2 + 49 , SE043, 0);
SE044 =playSe( spep_2 + 0 , 1240 );
setSeVolumeByWorkId( spep_2 + 0 , SE044 , 168 );
setPitch( spep_0 + 806, SE044, -500 );
setTimeStretch( SE044, 0.67, 10, 1 );
stopSe( spep_2 + 49 , SE044, 0);
SE045 =playSe( spep_2 + 0 , 1214 );
setSeVolumeByWorkId( spep_2 + 0 , SE045 , 135 );
setPitch( spep_0 + 806, SE045, -900 );
setTimeStretch( SE045, 0.4, 10, 1 );
stopSe( spep_2 + 49 , SE045, 0);

--気弾発射
SE046 =playSe( spep_2 + 40 , 1193 );
setSeVolumeByWorkId( spep_2 + 40 , SE046 , 10 );
setSeVolumeByWorkId( spep_2 + 41 , SE046 , 20 );
setSeVolumeByWorkId( spep_2 + 42 , SE046 , 30 );
setSeVolumeByWorkId( spep_2 + 43 , SE046 , 40 );
setSeVolumeByWorkId( spep_2 + 44 , SE046 , 50 );
setSeVolumeByWorkId( spep_2 + 45 , SE046 , 60 );
setSeVolumeByWorkId( spep_2 + 46 , SE046 , 70 );
setSeVolumeByWorkId( spep_2 + 47 , SE046 , 80 );
setSeVolumeByWorkId( spep_2 + 48 , SE046 , 90 );
setSeVolumeByWorkId( spep_2 + 49 , SE046 , 100 );
setStartTimeMs( SE046,  567 );
stopSe( spep_2 + 121, SE046, 15);
SE047 =playSe( spep_2 + 36 , 1133 );
setPitch( spep_2 + 36, SE047, -100 );
setTimeStretch( SE047, 0.93, 10, 1 );
SE048 =playSe( spep_2 + 36 , 1027 );
setSeVolumeByWorkId( spep_2 + 36 , SE048 , 76 );
SE049 =playSe( spep_2 + 42 , 1277 );
SE050 =playSe( spep_2 + 42 , 1215 );
stopSe( spep_2 + 121, SE050, 13);

--爆発
SE051 =playSe( spep_2 + 108 , 1159 );
SE052 =playSe( spep_2 + 118 , 1023 );
SE053 =playSe( spep_2 + 130 , 1188 );
setSeVolumeByWorkId( spep_2 + 130 , SE053 , 89 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 270, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +110 );
endPhase( spep_2 + 240 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
spep_0=0;
-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 720, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 720, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 720, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 718, first_f, 255 );
setEffAlphaKey( spep_0 + 719, first_f, 255 );
setEffAlphaKey( spep_0 + 720, first_f, 0 );

-- ** エフェクト等 ** --
first_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 720, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 720, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 720, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 718, first_b, 255 );
setEffAlphaKey( spep_0 + 719, first_b, 255 );
setEffAlphaKey( spep_0 + 720, first_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 184.2, -146.2 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 185.7, -146.2 , 0 );
setMoveKey( spep_0-3 + 4, 1, 187.3, -146.2 , 0 );
setMoveKey( spep_0-3 + 6, 1, 188.8, -146.2 , 0 );
setMoveKey( spep_0-3 + 8, 1, 190.3, -146.2 , 0 );
setMoveKey( spep_0-3 + 10, 1, 191.9, -146.2 , 0 );
setMoveKey( spep_0-3 + 12, 1, 193.4, -146.2 , 0 );
setMoveKey( spep_0-3 + 14, 1, 195, -146.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, 196.5, -146.2 , 0 );
setMoveKey( spep_0-3 + 18, 1, 198, -146.2 , 0 );
setMoveKey( spep_0-3 + 20, 1, 199.6, -146.2 , 0 );
setMoveKey( spep_0-3 + 22, 1, 201.1, -146.2 , 0 );
setMoveKey( spep_0-3 + 24, 1, 202.6, -146.2 , 0 );
setMoveKey( spep_0-3 + 26, 1, 204.2, -146.2 , 0 );
setMoveKey( spep_0-3 + 28, 1, 205.7, -146.2 , 0 );
setMoveKey( spep_0-3 + 30, 1, 207.3, -146.2 , 0 );
setMoveKey( spep_0-3 + 32, 1, 208.8, -146.2 , 0 );
setMoveKey( spep_0-3 + 34, 1, 210.3, -146.2 , 0 );
setMoveKey( spep_0-3 + 36, 1, 211.9, -146.2 , 0 );
setMoveKey( spep_0-3 + 38, 1, 213.4, -146.2 , 0 );
setMoveKey( spep_0-3 + 40, 1, 215, -146.2 , 0 );
setMoveKey( spep_0-3 + 42, 1, 216.5, -146.2 , 0 );
setMoveKey( spep_0-3 + 44, 1, 218, -146.2 , 0 );
setMoveKey( spep_0-3 + 46, 1, 219.6, -146.2 , 0 );
setMoveKey( spep_0-3 + 48, 1, 221.1, -146.2 , 0 );
setMoveKey( spep_0-3 + 50, 1, 222.6, -146.2 , 0 );
setMoveKey( spep_0-3 + 53, 1, 224.2, -146.2 , 0 );

setScaleKey( spep_0 + 0, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 1, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 2, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 3, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 4, 1, 3.46, 3.46 );
setScaleKey( spep_0 + 5, 1, 3.46, 3.46 );
setScaleKey( spep_0-3 + 53, 1, 3.46, 3.46 );

setRotateKey( spep_0 + 0, 1, 12.2 );
setRotateKey( spep_0 + 1, 1, 12.2 );
setRotateKey( spep_0 + 2, 1, 12.2 );
setRotateKey( spep_0 + 3, 1, 12.2 );
setRotateKey( spep_0 + 4, 1, 12.2 );
setRotateKey( spep_0 + 5, 1, 12.2 );
setRotateKey( spep_0-3 + 53, 1, 12.2 );

--SE
--入り
SE001 =playSe( spep_0 + 0 , 8 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 69 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 730, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    pauseAll( SP_dodge, 67 );

    --敵の動き
    setMoveKey( SP_dodge + 9, 1, 224.2, -146.2 , 0 );
    setScaleKey( SP_dodge + 9, 1, 3.46, 3.46 );
    setRotateKey( SP_dodge + 9, 1, 12.2 );
    
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

--敵の動き
setDisp( spep_0-1 + 143, 1, 0 );

--setGaussBlurKey(spep_0-3 + 102, 1,  0.002 );
--setGaussBlurKey(spep_0-3 + 143, 1,  0.002 );
--setGaussBlurKey(spep_0-3 + 144, 1,  0 );

changeAnime( spep_0-3 + 54, 1, 103 );
changeAnime( spep_0-3 + 70, 1, 111 );
changeAnime( spep_0-3 + 70, 1, 111 );
changeAnime( spep_0-3 + 71, 1, 111 );
changeAnime( spep_0-3 + 72, 1, 111 );
changeAnime( spep_0-3 + 73, 1, 111 );
changeAnime( spep_0-3 + 74, 1, 112 );


setMoveKey( spep_0-3 + 54, 1, 466.1, -10 , 0 );
setMoveKey( spep_0-3 + 56, 1, 457.3, -10 , 0 );
setMoveKey( spep_0-3 + 58, 1, 444.2, -10 , 0 );
setMoveKey( spep_0-3 + 60, 1, 426.8, -10 , 0 );
setMoveKey( spep_0-3 + 62, 1, 405, -10 , 0 );
setMoveKey( spep_0-3 + 64, 1, 378.9, -10 , 0 );
setMoveKey( spep_0-3 + 66, 1, 348.6, -10 , 0 );
setMoveKey( spep_0-3 + 69, 1, 313.9, -10 , 0 );
setMoveKey( spep_0-3 + 70, 1, 229.2, -12.7 , 0 );
setMoveKey( spep_0-3 + 73, 1, 159.3, -13.4 , 0 );
setMoveKey( spep_0-3 + 74, 1, 44.6, -13.5 , 0 );
setMoveKey( spep_0-3 + 76, 1, 18.3, -13.6 , 0 );
setMoveKey( spep_0-3 + 78, 1, 6.4, -13.7 , 0 );
setMoveKey( spep_0-3 + 80, 1, -0.4, -13.7 , 0 );
setMoveKey( spep_0-3 + 82, 1, -5, -13.7 , 0 );
setMoveKey( spep_0-3 + 84, 1, -8.1, -13.8 , 0 );
setMoveKey( spep_0-3 + 86, 1, -10.3, -13.8 , 0 );
setMoveKey( spep_0-3 + 88, 1, -11.8, -13.8 , 0 );
setMoveKey( spep_0-3 + 90, 1, -12.9, -13.8 , 0 );
setMoveKey( spep_0-3 + 92, 1, -13.6, -13.8 , 0 );
setMoveKey( spep_0-3 + 94, 1, -14.1, -13.8 , 0 );
setMoveKey( spep_0-3 + 96, 1, -14.4, -13.8 , 0 );
setMoveKey( spep_0-3 + 98, 1, -14.6, -13.8 , 0 );
setMoveKey( spep_0-3 + 100, 1, -14.6, -13.9 , 0 );
setMoveKey( spep_0-3 + 101, 1, -14.6, -13.9 , 0 );
setMoveKey( spep_0-3 + 102, 1, -272.7, -325 , 0 );
setMoveKey( spep_0-1 + 143, 1, -272.7, -325 , 0 );

setScaleKey( spep_0-3 + 54, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 100, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 101, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 102, 1, 6.14, 6.14 );
setScaleKey( spep_0-1 + 143, 1, 6.14, 6.14 );

setRotateKey( spep_0-3 + 54, 1, 0 );
setRotateKey( spep_0-3 + 69, 1, 0 );
setRotateKey( spep_0-3 + 70, 1, 3.7 );
setRotateKey( spep_0-3 + 73, 1, 15.7 );
setRotateKey( spep_0-3 + 74, 1, -7.7 );
setRotateKey( spep_0-3 + 76, 1, -5.1 );
setRotateKey( spep_0-3 + 78, 1, -4 );
setRotateKey( spep_0-3 + 80, 1, -3.3 );
setRotateKey( spep_0-3 + 82, 1, -2.9 );
setRotateKey( spep_0-3 + 84, 1, -2.6 );
setRotateKey( spep_0-3 + 86, 1, -2.4 );
setRotateKey( spep_0-3 + 88, 1, -2.2 );
setRotateKey( spep_0-3 + 90, 1, -2.1 );
setRotateKey( spep_0-3 + 92, 1, -2.1 );
setRotateKey( spep_0-3 + 94, 1, -2 );
setRotateKey( spep_0-3 + 100, 1, -2 );
setRotateKey( spep_0-3 + 101, 1, -2 );
setRotateKey( spep_0-3 + 102, 1, -16.5 );
setRotateKey( spep_0-1 + 143, 1, -16.5 );

--敵の動き
setDisp( spep_0-3 + 196, 1, 1 );
setDisp( spep_0-1 + 260, 1, 0 );

changeAnime( spep_0-3 + 196, 1, 7 );

g=100;

setMoveKey( spep_0-3 + 196, 1, 84.9, -474.9+g , 0 );
setMoveKey( spep_0-3 + 198, 1, 84.1, -473.7+g , 0 );
setMoveKey( spep_0-3 + 200, 1, 81.7, -470.1+g , 0 );
setMoveKey( spep_0-3 + 202, 1, 77.7, -464.1+g , 0 );
setMoveKey( spep_0-3 + 204, 1, 72.1, -455.8+g , 0 );
setMoveKey( spep_0-3 + 206, 1, 77.1, -451.8+g , 0 );
setMoveKey( spep_0-3 + 208, 1, 43.4, -431.3+g , 0 );
setMoveKey( spep_0-3 + 210, 1, 63.9, -426.5+g , 0 );
setMoveKey( spep_0-3 + 212, 1, 36.4, -416+g , 0 );
setMoveKey( spep_0-3 + 214, 1, 55.6, -416.2+g , 0 );
setMoveKey( spep_0-3 + 216, 1, 40.8, -412.4+g , 0 );
setMoveKey( spep_0-3 + 218, 1, 55.5, -414.5+g , 0 );
setMoveKey( spep_0-3 + 220, 1, 40.3, -415.3+g , 0 );
setMoveKey( spep_0-3 + 222, 1, 45, -415.1+g , 0 );
setMoveKey( spep_0-3 + 228, 1, 45, -415.1+g , 0 );
setMoveKey( spep_0-3 + 230, 1, 47.8, -414.6+g , 0 );
setMoveKey( spep_0-3 + 232, 1, 56.1, -413.4+g , 0 );
setMoveKey( spep_0-3 + 234, 1, 70.2, -411.1+g , 0 );
setMoveKey( spep_0-3 + 236, 1, 90.3, -407.9+g , 0 );
setMoveKey( spep_0-3 + 238, 1, 196.5, -389+g , 0 );
setMoveKey( spep_0-3 + 240, 1, 371.6, -357.9+g , 0 );
setMoveKey( spep_0-3 + 242, 1, 606.6, -316.1+g , 0 );
setMoveKey( spep_0-3 + 244, 1, 872.6, -268.7+g , 0 );
setMoveKey( spep_0-3 + 246, 1, 1019.7, -248.9+g , 0 );
setMoveKey( spep_0-3 + 248, 1, 1157.3, -230.3+g , 0 );
setMoveKey( spep_0-3 + 250, 1, 1280.2, -213.7+g , 0 );
setMoveKey( spep_0-3 + 252, 1, 1384.3, -199.6+g , 0 );
setMoveKey( spep_0-3 + 254, 1, 1466.8, -188.5+g , 0 );
setMoveKey( spep_0-3 + 256, 1, 1526.1, -180.5+g , 0 );
setMoveKey( spep_0-3 + 258, 1, 1561.3, -175.7+g , 0 );
setMoveKey( spep_0-1 + 260, 1, 1573, -174.1+g , 0 );

setScaleKey( spep_0-3 + 196, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 230, 1, 3.3, 3.3 );
setScaleKey( spep_0-3 + 232, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 234, 1, 3.28, 3.28 );
setScaleKey( spep_0-3 + 236, 1, 3.27, 3.27 );
setScaleKey( spep_0-3 + 238, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 240, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 242, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 244, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 246, 1, 2.66, 2.66 );
setScaleKey( spep_0-3 + 248, 1, 2.59, 2.59 );
setScaleKey( spep_0-3 + 250, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 252, 1, 2.47, 2.47 );
setScaleKey( spep_0-3 + 254, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 256, 1, 2.4, 2.4 );
setScaleKey( spep_0-3 + 258, 1, 2.38, 2.38 );
setScaleKey( spep_0-1 + 260, 1, 2.38, 2.38 );

a=20;

setRotateKey( spep_0-3 + 196, 1, 90+a );
setRotateKey( spep_0-3 + 198, 1, 90.1+a );
setRotateKey( spep_0-3 + 200, 1, 90.4+a );
setRotateKey( spep_0-3 + 202, 1, 90.9+a );
setRotateKey( spep_0-3 + 204, 1, 91.6+a );
setRotateKey( spep_0-3 + 206, 1, 92.5+a );
setRotateKey( spep_0-3 + 208, 1, 93.4+a );
setRotateKey( spep_0-3 + 210, 1, 94.1+a );
setRotateKey( spep_0-3 + 212, 1, 94.6+a );
setRotateKey( spep_0-3 + 214, 1, 94.9+a );
setRotateKey( spep_0-3 + 216, 1, 95+a );
setRotateKey( spep_0-1 + 260, 1, 95+a );


--敵の動き
setDisp( spep_0-3 + 302, 1, 1 );
setDisp( spep_0-1 + 308, 1, 0 );

changeAnime( spep_0-3 + 302, 1, 6 );

setMoveKey( spep_0-3 + 302, 1, 584.1, -134.6 , 0 );
setMoveKey( spep_0-3 + 303, 1, 584.1, -134.6 , 0 );
setMoveKey( spep_0-3 + 304, 1, 444.1, -74.6 , 0 );
setMoveKey( spep_0-3 + 305, 1, 444.1, -74.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, 234.1, 31.4 , 0 );
setMoveKey( spep_0-1 + 308, 1, 234.1, 31.4 , 0 );

setScaleKey( spep_0-3 + 302, 1, 2.5, 2.5 );
setScaleKey( spep_0-1 + 308, 1, 2.5, 2.5 );

setRotateKey( spep_0-3 + 302, 1, 0 );
setRotateKey( spep_0-1 + 308, 1, 0 );

--敵の動き
setDisp( spep_0 +1 + 310, 1, 1 );
setDisp( spep_0 -3 + 410, 1, 0 );

changeAnime( spep_0 +1 + 310, 1, 107 );
changeAnime( spep_0-3 + 324, 1, 5 );
changeAnime( spep_0-3 + 364, 1, 106 );
changeAnime( spep_0-3 + 394, 1, 8 );
changeAnime( spep_0-3 + 398, 1, 6 );

b=-380;
g=290;

setMoveKey( spep_0 +1 + 310, 1, 20.4+b, -462.7+g , 0 );
setMoveKey( spep_0 +1 + 312, 1, 63.8+b, -462.4+g , 0 );
setMoveKey( spep_0 +1 + 314, 1, 97.5+b, -462.3+g , 0 );
setMoveKey( spep_0 +1 + 316, 1, 97.5+b, -462.3+g , 0 );
setMoveKey( spep_0 +1 + 318, 1, 129.8+b, -462.6+g , 0 );
setMoveKey( spep_0 + 320, 1, 140.4+b, -462.7+g , 0 );

setMoveKey( spep_0-3 + 324, 1, 29.9, 7.9 , 0 );
setMoveKey( spep_0-3 + 326, 1, 131.2, -11.9 , 0 );
setMoveKey( spep_0-3 + 328, 1, 47.6, 49.6 , 0 );
setMoveKey( spep_0-3 + 330, 1, 341.2, -155.1 , 0 );
setMoveKey( spep_0-3 + 332, 1, 194.9, -52.1 , 0 );
setMoveKey( spep_0-3 + 334, 1, 211.7, -70.4 , 0 );
setMoveKey( spep_0-3 + 336, 1, 245.3, -84 , 0 );
setMoveKey( spep_0-3 + 338, 1, 244.1, -80.8 , 0 );
setMoveKey( spep_0-3 + 340, 1, 254.2, -103.4 , 0 );
setMoveKey( spep_0-3 + 342, 1, 260.1, -90.2 , 0 );
setMoveKey( spep_0-3 + 344, 1, 265.2, -106.9 , 0 );
setMoveKey( spep_0-3 + 346, 1, 268.3, -94.8 , 0 );
setMoveKey( spep_0-3 + 348, 1, 280, -108.8 , 0 );
setMoveKey( spep_0-3 + 350, 1, 273.1, -101 , 0 );
setMoveKey( spep_0-3 + 352, 1, 281.2, -112.7 , 0 );
setMoveKey( spep_0-3 + 354, 1, 277.4, -104.3 , 0 );
setMoveKey( spep_0-3 + 356, 1, 285.2, -110.6 , 0 );
setMoveKey( spep_0-3 + 358, 1, 280.1, -106.6 , 0 );
setMoveKey( spep_0-3 + 360, 1, 282.6, -110.6 , 0 );
setMoveKey( spep_0-3 + 362, 1, 282.9, -108.5 , 0 );
setMoveKey( spep_0-3 + 363, 1, 282.9, -108.5 , 0 );


setMoveKey( spep_0-3 + 364, 1, -481.2, -361.8 , 0 );
setMoveKey( spep_0-3 + 366, 1, -452.3, -340.1 , 0 );
setMoveKey( spep_0-3 + 368, 1, -423.4, -318.3 , 0 );
setMoveKey( spep_0-3 + 370, 1, -394.6, -296.6 , 0 );
setMoveKey( spep_0-3 + 372, 1, -365.7, -274.9 , 0 );
setMoveKey( spep_0-3 + 374, 1, -336.8, -253.1 , 0 );
setMoveKey( spep_0-3 + 376, 1, -307.9, -231.4 , 0 );
setMoveKey( spep_0-3 + 378, 1, -279, -209.7 , 0 );
setMoveKey( spep_0-3 + 380, 1, -250.1, -187.9 , 0 );
setMoveKey( spep_0-3 + 382, 1, -221.3, -166.2 , 0 );
setMoveKey( spep_0-3 + 384, 1, -192.4, -144.5 , 0 );
setMoveKey( spep_0-3 + 386, 1, -163.5, -122.7 , 0 );
setMoveKey( spep_0-3 + 388, 1, -134.6, -101 , 0 );
setMoveKey( spep_0-3 + 390, 1, -105.7, -79.3 , 0 );
setMoveKey( spep_0-3 + 392, 1, -76.9, -57.6 , 0 );
setMoveKey( spep_0-3 + 393, 1, -76.9, -57.6 , 0 );

setMoveKey( spep_0-3 + 394, 1, -82.9, 0.5 , 0 );
setMoveKey( spep_0-3 + 396, 1, -69.8, 7.5 , 0 );
setMoveKey( spep_0-3 + 397, 1, -69.8, 7.5 , 0 );

setMoveKey( spep_0-3 + 398, 1, -243.5, 40.3 , 0 );
setMoveKey( spep_0-3 + 400, 1, -285.4, 65.1 , 0 );
setMoveKey( spep_0-3 + 402, 1, -334.5, 64.6 , 0 );
setMoveKey( spep_0-3 + 404, 1, -405.1, 85.8 , 0 );
setMoveKey( spep_0-3 + 406, 1, -467.9, 86.3 , 0 );
setMoveKey( spep_0-3 + 408, 1, -542.3, 105.7 , 0 );
setMoveKey( spep_0-3 + 410, 1, -602.2, 115.8 , 0 );

setScaleKey( spep_0 +1 + 310, 1, 3.25, 3.25 );
setScaleKey( spep_0  + 320, 1, 3.25, 3.25 );

setScaleKey( spep_0-3 + 324, 1, 3.21, 3.21 );
setScaleKey( spep_0-3 + 326, 1, 3.62, 3.62 );
setScaleKey( spep_0-3 + 328, 1, 1.68, 1.68 );
setScaleKey( spep_0-3 + 330, 1, 2.51, 2.51 );
setScaleKey( spep_0-3 + 332, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 334, 1, 0.53, 0.53 );
setScaleKey( spep_0-3 + 336, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 338, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 340, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 342, 1, 0.3, 0.3 );
setScaleKey( spep_0-3 + 344, 1, 0.27, 0.27 );
setScaleKey( spep_0-3 + 346, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 348, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 350, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 352, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 354, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 356, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 357, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 363, 1, 0.2, 0.2 );

setScaleKey( spep_0-3 + 364, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 393, 1, 1.3, 1.3 );

c=0.4;

setScaleKey( spep_0-3 + 394, 1, 1.91+c, 1.91+c );
setScaleKey( spep_0-3 + 396, 1, 1.21+c, 1.21+c );
setScaleKey( spep_0-3 + 397, 1, 1.21+c, 1.21+c );

setScaleKey( spep_0-3 + 398, 1, 1.3, 1.3 );
setScaleKey( spep_0-3 + 410, 1, 1.3, 1.3 );

h=70;

setRotateKey( spep_0 +1 + 310, 1, -120.3 +h);
setRotateKey( spep_0  + 320, 1, -120.3 +h);

setRotateKey( spep_0-3 + 324, 1, 90.5 );
setRotateKey( spep_0-3 + 363, 1, 90.5 );

setRotateKey( spep_0-3 + 364, 1, -6.7 );
setRotateKey( spep_0-3 + 393, 1, -6.7 );

setRotateKey( spep_0-3 + 394, 1, 14.9 );
setRotateKey( spep_0-3 + 397, 1, 14.9 );

setRotateKey( spep_0-3 + 398, 1, -6.7 );
setRotateKey( spep_0-3 + 400, 1, -8.2 );
setRotateKey( spep_0-3 + 402, 1, -10.5 );
setRotateKey( spep_0-3 + 404, 1, -13.1 );
setRotateKey( spep_0-3 + 406, 1, -15.8 );
setRotateKey( spep_0-3 + 408, 1, -18.6 );
setRotateKey( spep_0-3 + 410, 1, -21.4 );

--敵の動き
setDisp( spep_0-3 + 450, 1, 1 );
setDisp( spep_0-3 + 492, 1, 0 );
--setGaussBlurKey(spep_0-3 + 492, 1,  0 );

changeAnime( spep_0 -3 + 450, 1, 5 );
changeAnime( spep_0 -3 + 466, 1, 108 );

setMoveKey( spep_0-3 + 450, 1, -714.3, -918.2 , 0 );
setMoveKey( spep_0-3 + 452, 1, -553.6, -692.8 , 0 );
setMoveKey( spep_0-3 + 454, 1, -416.4, -500.2 , 0 );
setMoveKey( spep_0-3 + 456, 1, -302.8, -340.6 , 0 );
setMoveKey( spep_0-3 + 458, 1, -212.5, -213.8 , 0 );
setMoveKey( spep_0-3 + 460, 1, -145.8, -120 , 0 );
setMoveKey( spep_0-3 + 462, 1, -102.5, -59.1 , 0 );
setMoveKey( spep_0-3 + 465, 1, -102.5, -59.1 , 0 );

setMoveKey( spep_0-3 + 466, 1, -49.4, -418.8 , 0 );
setMoveKey( spep_0-3 + 468, 1, 31.7, -260.6 , 0 );
setMoveKey( spep_0-3 + 470, 1, -101.4, -426.1 , 0 );
setMoveKey( spep_0-3 + 472, 1, -85.7, -593.1 , 0 );
setMoveKey( spep_0-3 + 474, 1, -87.6, -472.2 , 0 );
setMoveKey( spep_0-3 + 476, 1, -87.1, -621.3 , 0 );
setMoveKey( spep_0-3 + 478, 1, -103.6, -752.6 , 0 );
setMoveKey( spep_0-3 + 480, 1, -95.6, -757.5 , 0 );
setMoveKey( spep_0-3 + 481, 1, -95.6, -757.5 , 0 );

setMoveKey( spep_0-3 + 482, 1, -31.9, 38.9 , 0 );
setMoveKey( spep_0-3 + 484, 1, -31.9, -56.7 , 0 );
setMoveKey( spep_0-3 + 486, 1, -31.9, -152.3 , 0 );
setMoveKey( spep_0-3 + 488, 1, -31.9, -247.9 , 0 );
setMoveKey( spep_0-3 + 490, 1, -31.9, -343.6 , 0 );
setMoveKey( spep_0-3 + 492, 1, -49, -474.5 , 0 );

d=0.6;

setScaleKey( spep_0-3 + 450, 1, 8.35+d, 8.35+d );
setScaleKey( spep_0-3 + 452, 1, 6.72+d, 6.72+d );
setScaleKey( spep_0-3 + 454, 1, 5.33+d, 5.33+d );
setScaleKey( spep_0-3 + 456, 1, 4.18+d, 4.18+d );
setScaleKey( spep_0-3 + 458, 1, 3.26+d, 3.26+d );
setScaleKey( spep_0-3 + 460, 1, 2.58+d, 2.58+d );
setScaleKey( spep_0-3 + 462, 1, 2.14+d, 2.14+d );
setScaleKey( spep_0-3 + 465, 1, 2.14+d, 2.14+d );

e=0.5;

setScaleKey( spep_0-3 + 466, 1, 4.41+e, 4.41+e );
setScaleKey( spep_0-3 + 468, 1, 4.73+e, 4.73+e );
setScaleKey( spep_0-3 + 470, 1, 3.1+e, 3.1+e );
setScaleKey( spep_0-3 + 472, 1, 2.66+e, 2.66+e );
setScaleKey( spep_0-3 + 474, 1, 2.29+e, 2.29+e );
setScaleKey( spep_0-3 + 481, 1, 2.29+e, 2.29+e );

f=0.3;

setScaleKey( spep_0-3 + 482, 1, 0.45+f, 0.45+f );
setScaleKey( spep_0-3 + 492, 1, 0.45+f, 0.45+f );

setRotateKey( spep_0-3 + 450, 1, 44.9 );
setRotateKey( spep_0-3 + 452, 1, 44.9 );
setRotateKey( spep_0-3 + 453, 1, 44.9 );
setRotateKey( spep_0-3 + 454, 1, 45 );
setRotateKey( spep_0-3 + 462, 1, 45 );
setRotateKey( spep_0-3 + 465, 1, 45 );

setRotateKey( spep_0-3 + 466, 1, 71.8 );
setRotateKey( spep_0-3 + 468, 1, 71.8 );
setRotateKey( spep_0-3 + 470, 1, 75 );
setRotateKey( spep_0-3 + 472, 1, 78.1 );
setRotateKey( spep_0-3 + 474, 1, 81.3 );
setRotateKey( spep_0-3 + 476, 1, 84.5 );
setRotateKey( spep_0-3 + 478, 1, 87.7 );

setRotateKey( spep_0-3 + 482, 1, 87.7 );
setRotateKey( spep_0-3 + 492, 1, 87.7 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 566, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


--SE
--敵向かっていく
SE002 =playSe( spep_0 + 58 , 63 );
setSeVolumeByWorkId( spep_0 + 58 , SE002 , 62 );
stopSe( spep_0 + 80, SE002, 10);
SE003 =playSe( spep_0 + 72 , 1003 );
setSeVolumeByWorkId( spep_0 + 72 , SE003 , 74 );

--瞬間移動
SE004 =playSe( spep_0 + 74 , 1109 );
SE005 =playSe( spep_0 + 110 , 1109 );

--触手振り回す
SE006 =playSe( spep_0 + 146 , 1116 );
setTimeStretch( SE006, 2.0, 40, 6 );
stopSe( spep_0 + 205, SE006, 27);
SE007 =playSe( spep_0 + 146 , 1117 );
stopSe( spep_0 + 161, SE007, 17);
SE008 =playSe( spep_0 + 152 , 1004 );

--触手巻きつく
SE009 =playSe( spep_0 + 198 , 1151 );
setSeVolumeByWorkId( spep_0 + 198 , SE009 , 170 );
SE010 =playSe( spep_0 + 198 , 1112 );
setSeVolumeByWorkId( spep_0 + 198 , SE010 , 43 );
setTimeStretch( SE010, 0.7, 10, 1 );
SE011 =playSe( spep_0 + 198 , 1041 );
setSeVolumeByWorkId( spep_0 + 198 , SE011 , 60 );
setPitch( spep_0 + 198, SE011, -300 );
setTimeStretch( SE011, 0.8, 10, 1 );
SE012 =playSe( spep_0 + 204 , 1151 );
setSeVolumeByWorkId( spep_0 + 204 , SE012 , 88 );
setPitch( spep_0 + 204, SE012, 300 );
setTimeStretch( SE012, 1.2, 10, 1 );
SE013 =playSe( spep_0 + 210 , 1151 );
setSeVolumeByWorkId( spep_0 + 210 , SE013 , 60 );
setPitch( spep_0 + 210, SE013, 600 );
setTimeStretch( SE013, 1.4, 10, 1 );
SE014 =playSe( spep_0 + 214 , 1151 );
setSeVolumeByWorkId( spep_0 + 214 , SE014 , 43 );
setPitch( spep_0 + 214, SE014, 800 );
setTimeStretch( SE014, 1.53, 10, 1 );

--カメラズームアウト
SE015 =playSe( spep_0 + 258 , 1072 );
setTimeStretch( SE015, 0.77, 10, 1 );

--敵引き寄せる
SE016 =playSe( spep_0 + 298 , 1004 );
SE017 =playSe( spep_0 + 300 , 1003 );

--殴る
SE018 =playSe( spep_0 + 312 , 1182 );
setSeVolumeByWorkId( spep_0 + 312 , SE018 , 178 );
stopSe( spep_0 + 318, SE018, 7);
SE019 =playSe( spep_0 + 312 , 1187 );
setSeVolumeByWorkId( spep_0 + 312 , SE019 , 70 );
setPitch( spep_0 + 312, SE019, -400 );
setTimeStretch( SE019, 0.73, 10, 1 );
SE020 =playSe( spep_0 + 312 , 1010 );
setSeVolumeByWorkId( spep_0 + 312 , SE020 , 178 );
setPitch( spep_0 + 312, SE020, -300 );
setTimeStretch( SE020, 0.8, 10, 1 );
SE021 =playSe( spep_0 + 312 , 1068 );
setSeVolumeByWorkId( spep_0 + 312 , SE021 , 83 );
stopSe( spep_0 + 336, SE021, 49);
SE022 =playSe( spep_0 + 318 , 1109 );
setSeVolumeByWorkId( spep_0 + 318 , SE022 , 44 );
setPitch( spep_0 + 318, SE022, 200 );
setTimeStretch( SE022, 1.13, 10, 1 );

--敵飛んでいく
SE023 =playSe( spep_0 + 344 , 1183 );
stopSe( spep_0 + 400 , SE023, 0);

--瞬間移動
SE024 =playSe( spep_0 + 380 , 1109 );

--裏拳
SE025 =playSe( spep_0 + 400 , 1009 );
SE026 =playSe( spep_0 + 400 , 1187 );
setSeVolumeByWorkId( spep_0 + 400 , SE026 , 52 );
SE027 =playSe( spep_0 + 402 , 1110 );

--瞬間移動
SE028 =playSe( spep_0 + 438 , 1109 );

--エルボー
SE029 =playSe( spep_0 + 460 , 1011 );
setSeVolumeByWorkId( spep_0 + 460 , SE029 , 112 );
stopSe( spep_0 + 482, SE029, 37);
SE030 =playSe( spep_0 + 460 , 1123 );
setSeVolumeByWorkId( spep_0 + 460 , SE030 , 48 );
SE031 =playSe( spep_0 + 460 , 1182 );
setSeVolumeByWorkId( spep_0 + 460 , SE031 , 112 );
stopSe( spep_0 + 472, SE031, 14);
SE032 =playSe( spep_0 + 470 , 1109 );
setSeVolumeByWorkId( spep_0 + 470 , SE032 , 76 );

--地面ドーン
SE033 =playSe( spep_0 + 490 , 1023 );
SE034 =playSe( spep_0 + 494 , 1159 );
setSeVolumeByWorkId( spep_0 + 494 , SE034 , 65 );
stopSe( spep_0 + 565, SE034, 110);
SE035 =playSe( spep_0 + 494 , 1168 );
setSeVolumeByWorkId( spep_0 + 494 , SE035 , 87 );
stopSe( spep_0 + 560, SE035, 80);

--気弾溜め
SE036 =playSe( spep_0 + 552 , 1274 );
setSeVolumeByWorkId( spep_0 + 552 , SE036 , 126 );
setPitch( spep_0 + 552, SE036, -100 );
setTimeStretch( SE036, 0.66, 10, 1 );
SE037 =playSe( spep_0 + 562 , 1242 );
setSeVolumeByWorkId( spep_0 + 562 , SE037 , 141 );
setPitch( spep_0 + 562, SE037, -1200 );
setTimeStretch( SE037, 0.2, 10, 1 );
SE038 =playSe( spep_0 + 564 , 1214 );
setSeVolumeByWorkId( spep_0 + 564 , SE038 , 135 );
setPitch( spep_0 + 564, SE038, -900 );
setTimeStretch( SE038, 0.4, 10, 1 );

--顔カットイン
SE039 =playSe( spep_0 + 578 , 1018 );

--ぐわっ
SE040 =playSe( spep_0 + 656 , 8 );
setSeVolumeByWorkId( spep_0 + 656 , SE040 , 79 );
setPitch( spep_0 + 656, SE040, -800 );
setTimeStretch( SE040, 0.33, 10, 1 );
SE041 =playSe( spep_0 + 662 , 1232 );
setPitch( spep_0 + 662, SE041, -400 );
setTimeStretch( SE041, 0.61, 10, 1 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 720;
--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

stopSe( spep_1 + 7 , SE037, 0);
stopSe( spep_1 + 7 , SE038, 0);
stopSe( spep_1 + 7 , SE040, 0);


--白フェード
--entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;
------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 270, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_2 + 270, finish, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 270, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 270, finish, 255 );

--SE
--気弾発射予兆
SE043 =playSe( spep_2 + 0 , 1242 );
setSeVolumeByWorkId( spep_2 + 0 , SE043 , 0 );
setSeVolumeByWorkId( spep_2 + 1 , SE043 , 35.2 );
setSeVolumeByWorkId( spep_2 + 2 , SE043 , 70.4 );
setSeVolumeByWorkId( spep_2 + 3 , SE043 , 105.6 );
setSeVolumeByWorkId( spep_2 + 4 , SE043 , 141 );
setStartTimeMs( SE043,  733 );
setPitch( spep_2 + 0, SE043, -1200 );
setTimeStretch( SE043, 0.2, 10, 1 );
stopSe( spep_2 + 49 , SE043, 0);
SE044 =playSe( spep_2 + 0 , 1240 );
setSeVolumeByWorkId( spep_2 + 0 , SE044 , 168 );
setPitch( spep_0 + 806, SE044, -500 );
setTimeStretch( SE044, 0.67, 10, 1 );
stopSe( spep_2 + 49 , SE044, 0);
SE045 =playSe( spep_2 + 0 , 1214 );
setSeVolumeByWorkId( spep_2 + 0 , SE045 , 135 );
setPitch( spep_0 + 806, SE045, -900 );
setTimeStretch( SE045, 0.4, 10, 1 );
stopSe( spep_2 + 49 , SE045, 0);

--気弾発射
SE046 =playSe( spep_2 + 40 , 1193 );
setSeVolumeByWorkId( spep_2 + 40 , SE046 , 10 );
setSeVolumeByWorkId( spep_2 + 41 , SE046 , 20 );
setSeVolumeByWorkId( spep_2 + 42 , SE046 , 30 );
setSeVolumeByWorkId( spep_2 + 43 , SE046 , 40 );
setSeVolumeByWorkId( spep_2 + 44 , SE046 , 50 );
setSeVolumeByWorkId( spep_2 + 45 , SE046 , 60 );
setSeVolumeByWorkId( spep_2 + 46 , SE046 , 70 );
setSeVolumeByWorkId( spep_2 + 47 , SE046 , 80 );
setSeVolumeByWorkId( spep_2 + 48 , SE046 , 90 );
setSeVolumeByWorkId( spep_2 + 49 , SE046 , 100 );
setStartTimeMs( SE046,  567 );
stopSe( spep_2 + 121, SE046, 15);
SE047 =playSe( spep_2 + 36 , 1133 );
setPitch( spep_2 + 36, SE047, -100 );
setTimeStretch( SE047, 0.93, 10, 1 );
SE048 =playSe( spep_2 + 36 , 1027 );
setSeVolumeByWorkId( spep_2 + 36 , SE048 , 76 );
SE049 =playSe( spep_2 + 42 , 1277 );
SE050 =playSe( spep_2 + 42 , 1215 );
stopSe( spep_2 + 121, SE050, 13);

--爆発
SE051 =playSe( spep_2 + 108 , 1159 );
SE052 =playSe( spep_2 + 118 , 1023 );
SE053 =playSe( spep_2 + 130 , 1188 );
setSeVolumeByWorkId( spep_2 + 130 , SE053 , 89 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 270, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_2 +110 );
endPhase( spep_2 + 240 );
end