--4020780:魔人ブウ(善)_イノセンスキャノン
--sp_effect_a1_00251

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
SP_01=	155961	;--	飛び込み
SP_02=	155962	;--	頭突き
SP_03=	155963	;--	背景
SP_04=	155964	;--	気溜め
SP_05=	155965	;--	発射
SP_06=	155966	;--	迫ってくる気玉（手前）
SP_07=	155967	;--	爆破
SP_08=	155968	;--	背景
SP_09=	155969	;--	迫ってくる気玉
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
]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 飛び込み
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
plunge_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, plunge_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 60, plunge_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, plunge_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, plunge_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, plunge_f, 0 );
setEffRotateKey( spep_0 + 60, plunge_f, 0 );
setEffAlphaKey( spep_0 + 0, plunge_f, 255 );
setEffAlphaKey( spep_0 + 60, plunge_f, 255 );

-- ** エフェクト等 ** --
plunge_b = entryEffect( spep_0 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, plunge_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 60, plunge_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, plunge_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, plunge_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, plunge_b, 0 );
setEffRotateKey( spep_0 + 60, plunge_b, 0 );
setEffAlphaKey( spep_0 + 0, plunge_b, 255 );
setEffAlphaKey( spep_0 + 60, plunge_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 254.6, 68.5 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 255.7, 68.5 , 0 );
setMoveKey( spep_0-3 + 4, 1, 256.5, 68.5 , 0 );
setMoveKey( spep_0-3 + 6, 1, 257.2, 68.5 , 0 );
setMoveKey( spep_0-3 + 8, 1, 257.7, 68.5 , 0 );
setMoveKey( spep_0-3 + 10, 1, 258.2, 68.5 , 0 );
setMoveKey( spep_0-3 + 12, 1, 258.5, 68.5 , 0 );
setMoveKey( spep_0-3 + 14, 1, 258.9, 68.5 , 0 );
setMoveKey( spep_0-3 + 16, 1, 259.2, 68.5 , 0 );
setMoveKey( spep_0-3 + 18, 1, 259.5, 68.5 , 0 );
setMoveKey( spep_0-3 + 20, 1, 259.7, 68.5 , 0 );
setMoveKey( spep_0-3 + 22, 1, 260, 68.5 , 0 );
setMoveKey( spep_0-3 + 24, 1, 260.2, 68.5 , 0 );
setMoveKey( spep_0-3 + 26, 1, 260.4, 68.5 , 0 );
setMoveKey( spep_0-3 + 29, 1, 260.6, 68.5 , 0 );
--setMoveKey( spep_0-3 + 30, 1, 260.6, 68.5 , 0 );
--setMoveKey( spep_0-3 + 33, 1, 257.7, 65.5 , 0 );

setScaleKey( spep_0 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 2, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 3, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 4, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 5, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 30, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 +29, 1, 0 );

--SE
--入り
SE001 =playSe( spep_0 + 0 , 8 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 54 );
setTimeStretch( SE001, 0.67, 10, 1 );

--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 26; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE001, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge  + 10, 1, 257.7, 65.5 , 0 );
    setScaleKey( SP_dodge + 10, 1, 0.36, 0.36 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
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

--敵動き
setDisp( spep_0 + 58, 1, 0 );

changeAnime( spep_0-3 + 30, 1, 16 );

setMoveKey( spep_0-3 + 30, 1, 243.6, 85.2 , 0 );
--setMoveKey( spep_0-3 + 36, 1, 238.6, 82.1 , 0 );
setMoveKey( spep_0-3 + 38, 1, 234.7, 84.7 , 0 );
setMoveKey( spep_0-3 + 40, 1, 231.5, 88.8 , 0 );
setMoveKey( spep_0-3 + 42, 1, 228.8, 86.4 , 0 );
setMoveKey( spep_0-3 + 44, 1, 226.6, 90.8 , 0 );
setMoveKey( spep_0-3 + 46, 1, 224.7, 89.3 , 0 );
setMoveKey( spep_0-3 + 48, 1, 223.1, 91.7 , 0 );
setMoveKey( spep_0-3 + 50, 1, 221.6, 90.9 , 0 );
setMoveKey( spep_0-3 + 52, 1, 220.4, 92.6 , 0 );
setMoveKey( spep_0-3 + 54, 1, 219.3, 92.4 , 0 );
setMoveKey( spep_0-3 + 56, 1, 218.3, 92.8 , 0 );
setMoveKey( spep_0 + 58, 1, 217.4, 93 , 0 );

setScaleKey( spep_0-3 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 36, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 38, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 40, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 42, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 44, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 46, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 50, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 58, 1, 0.42, 0.42 );

setRotateKey( spep_0-3 + 30, 1, 2.8 );
setRotateKey( spep_0-3 + 36, 1, 2.1 );
setRotateKey( spep_0-3 + 38, 1, 1.6 );
setRotateKey( spep_0-3 + 40, 1, 1.1 );
setRotateKey( spep_0-3 + 42, 1, 0.8 );
setRotateKey( spep_0-3 + 44, 1, 0.5 );
setRotateKey( spep_0-3 + 46, 1, 0.2 );
setRotateKey( spep_0-3 + 48, 1, 0 );
setRotateKey( spep_0-3 + 50, 1, -0.2 );
setRotateKey( spep_0-3 + 52, 1, -0.4 );
setRotateKey( spep_0-3 + 54, 1, -0.5 );
setRotateKey( spep_0-3 + 56, 1, -0.7 );
setRotateKey( spep_0 + 58, 1, -0.8 );

--SE
--飛んでいく
SE002 =playSe( spep_0 + 24 , 9 );

--白フェード
entryFade( spep_0+52 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+60;
------------------------------------------------------
-- 頭突き
------------------------------------------------------
-- ** エフェクト等 ** --
butting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, butting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, butting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, butting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, butting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, butting_f, 0 );
setEffRotateKey( spep_1 + 60, butting_f, 0 );
setEffAlphaKey( spep_1 + 0, butting_f, 255 );
setEffAlphaKey( spep_1 + 60, butting_f, 255 );

-- ** エフェクト等 ** --
butting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, butting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, butting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, butting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, butting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, butting_b, 0 );
setEffRotateKey( spep_1 + 60, butting_b, 0 );
setEffAlphaKey( spep_1 + 0, butting_b, 255 );
setEffAlphaKey( spep_1 + 60, butting_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 58, 1, 0 );

changeAnime( spep_1 + 0, 1, 16 );
changeAnime( spep_1-3 + 20, 1, 105 );

setMoveKey( spep_1 + 0, 1, 199.8, -48.3 , 0 );
setMoveKey( spep_1-3 + 2, 1, 169.4, -50.5 , 0 );
setMoveKey( spep_1-3 + 4, 1, 146, -52.2 , 0 );
setMoveKey( spep_1-3 + 6, 1, 127, -53.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 111.4, -54.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 98.2, -55.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, 87, -56.5 , 0 );
setMoveKey( spep_1-3 + 14, 1, 77.5, -57.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 69.2, -57.8 , 0 );
setMoveKey( spep_1-3 + 19, 1, 61.8, -58.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, 40.3, -38.5 , 0 );
setMoveKey( spep_1-3 + 22, 1, 47.6, -11.5 , 0 );
setMoveKey( spep_1-3 + 24, 1, 66.8, -16.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, 73.7, -31.4 , 0 );
setMoveKey( spep_1-3 + 28, 1, 63, 21 , 0 );
setMoveKey( spep_1-3 + 30, 1, 93, 15.7 , 0 );
setMoveKey( spep_1-3 + 32, 1, 115.4, 19.7 , 0 );
setMoveKey( spep_1-3 + 34, 1, 93.3, 23 , 0 );
setMoveKey( spep_1-3 + 36, 1, 104, 21.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, 145.2, 45.7 , 0 );
setMoveKey( spep_1-3 + 40, 1, 118.2, 46.4 , 0 );
setMoveKey( spep_1-3 + 42, 1, 124.4, 52.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 129.5, 56.9 , 0 );
setMoveKey( spep_1-3 + 46, 1, 133.8, 60.9 , 0 );
setMoveKey( spep_1-3 + 48, 1, 137.3, 64.1 , 0 );
setMoveKey( spep_1-3 + 50, 1, 140.1, 66.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 142.3, 68.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 143.8, 70.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 144.8, 71 , 0 );
setMoveKey( spep_1 + 58, 1, 145.2, 71.4 , 0 );

setScaleKey( spep_1 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 2, 1, 0.88, 0.88 );
setScaleKey( spep_1-3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 6, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 10, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 14, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 16, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 19, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 20, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 22, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 24, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 26, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 28, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 30, 1, 1, 1 );
setScaleKey( spep_1-3 + 32, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 36, 1, 0.73, 0.75 );
setScaleKey( spep_1-3 + 38, 1, 0.67, 0.65 );
setScaleKey( spep_1-3 + 40, 1, 0.56, 0.58 );
setScaleKey( spep_1-3 + 42, 1, 0.5, 0.52 );
setScaleKey( spep_1-3 + 44, 1, 0.45, 0.46 );
setScaleKey( spep_1-3 + 46, 1, 0.41, 0.42 );
setScaleKey( spep_1-3 + 48, 1, 0.37, 0.38 );
setScaleKey( spep_1-3 + 50, 1, 0.34, 0.36 );
setScaleKey( spep_1-3 + 52, 1, 0.32, 0.33 );
setScaleKey( spep_1-3 + 54, 1, 0.31, 0.32 );
setScaleKey( spep_1-3 + 56, 1, 0.3, 0.31 );
setScaleKey( spep_1 + 58, 1, 0.29, 0.3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 20, 1, 0 );
setRotateKey( spep_1-3 + 22, 1, 0.4 );
setRotateKey( spep_1-3 + 24, 1, 1.6 );
setRotateKey( spep_1-3 + 26, 1, 3.3 );
setRotateKey( spep_1-3 + 28, 1, 5.3 );
setRotateKey( spep_1-3 + 30, 1, 7.3 );
setRotateKey( spep_1-3 + 32, 1, 9.3 );
setRotateKey( spep_1-3 + 34, 1, 11 );
setRotateKey( spep_1-3 + 36, 1, 12.6 );
setRotateKey( spep_1-3 + 38, 1, 14 );
setRotateKey( spep_1-3 + 40, 1, 15.2 );
setRotateKey( spep_1-3 + 42, 1, 16.3 );
setRotateKey( spep_1-3 + 44, 1, 17.1 );
setRotateKey( spep_1-3 + 46, 1, 17.9 );
setRotateKey( spep_1-3 + 48, 1, 18.5 );
setRotateKey( spep_1-3 + 50, 1, 18.9 );
setRotateKey( spep_1-3 + 52, 1, 19.3 );
setRotateKey( spep_1-3 + 54, 1, 19.5 );
setRotateKey( spep_1-3 + 56, 1, 19.7 );
setRotateKey( spep_1 + 58, 1, 19.8 );

--文字エントリー
ctdon = entryEffectLife( spep_1-3 + 20,  10019, 26, 0x100, -1, 0, 36.3, 102 );--ドンッ
setEffShake( spep_1-3 + 20, ctdon, 26, 10 );
setEffMoveKey( spep_1-3 + 20, ctdon, 36.3, 102 , 0 );
setEffMoveKey( spep_1-3 + 22, ctdon, 32.8, 159.1 , 0 );
setEffMoveKey( spep_1-3 + 24, ctdon, 45.5, 206.3 , 0 );
setEffMoveKey( spep_1-3 + 26, ctdon, 26.9, 216.1 , 0 );
setEffMoveKey( spep_1-3 + 28, ctdon, 28.3, 236.5 , 0 );
setEffMoveKey( spep_1-3 + 30, ctdon, 24.1, 234 , 0 );
setEffMoveKey( spep_1-3 + 32, ctdon, 13.4, 260.6 , 0 );
setEffMoveKey( spep_1-3 + 34, ctdon, 14.7, 261.7 , 0 );
setEffMoveKey( spep_1-3 + 36, ctdon, 1.3, 277.1 , 0 );
setEffMoveKey( spep_1-3 + 38, ctdon, 6.1, 286.2 , 0 );
setEffMoveKey( spep_1-3 + 40, ctdon, -15.5, 315 , 0 );
setEffMoveKey( spep_1-3 + 42, ctdon, -6.2, 323.7 , 0 );
setEffMoveKey( spep_1-3 + 44, ctdon, -34.4, 339.9 , 0 );
setEffMoveKey( spep_1-3 + 46, ctdon, -44.2, 358.4 , 0 );

setEffScaleKey( spep_1-3 + 20, ctdon, 0.5, 0.5 );
setEffScaleKey( spep_1-3 + 22, ctdon, 1.36, 1.36 );
setEffScaleKey( spep_1-3 + 24, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 26, ctdon, 2.25, 2.25 );
setEffScaleKey( spep_1-3 + 28, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 30, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_1-3 + 32, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_1-3 + 34, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_1-3 + 36, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_1-3 + 38, ctdon, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 40, ctdon, 2.74, 2.74 );
setEffScaleKey( spep_1-3 + 42, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_1-3 + 44, ctdon, 3.4, 3.4 );
setEffScaleKey( spep_1-3 + 46, ctdon, 3.73, 3.73 );

setEffRotateKey( spep_1-3 + 20, ctdon, -3 );
setEffRotateKey( spep_1-3 + 22, ctdon, -3 );
setEffRotateKey( spep_1-3 + 24, ctdon, -2.9 );
setEffRotateKey( spep_1-3 + 28, ctdon, -2.9 );
setEffRotateKey( spep_1-3 + 30, ctdon, -3 );
setEffRotateKey( spep_1-3 + 46, ctdon, -3 );

setEffAlphaKey( spep_1-3 + 20, ctdon, 255 );
setEffAlphaKey( spep_1-3 + 38, ctdon, 255 );
setEffAlphaKey( spep_1-3 + 40, ctdon, 191 );
setEffAlphaKey( spep_1-3 + 42, ctdon, 128 );
setEffAlphaKey( spep_1-3 + 44, ctdon, 64 );
setEffAlphaKey( spep_1-3 + 46, ctdon, 0 );

--SE
--頭突き
SE003 =playSe( spep_1 + 18 , 19 );
setSeVolumeByWorkId( spep_1 + 18 , SE003 , 68 );
SE004 =playSe( spep_1 + 18 , 1110 );
setSeVolumeByWorkId( spep_1 + 18 , SE004 , 79 );
SE005 =playSe( spep_1 + 18 , 1187 );
setSeVolumeByWorkId( spep_1 + 18 , SE005 , 74 );
stopSe( spep_1 + 26, SE005, 24);
SE006 =playSe( spep_1 + 20 , 1009 );


--白フェード
entryFade( spep_1+52 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+60;
------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 98, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 98, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 98, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 98, tame, 255 );
setEffAlphaKey( spep_2 + 99, tame, 0 );
setEffAlphaKey( spep_2 + 100, tame, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 20,  906, 76 +1, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 20, shuchusen1, 76 +1, 20 );
setEffMoveKey( spep_2-3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2-2 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 20, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_2-2 + 96, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_2-3 + 20, shuchusen1, 0 );
setEffRotateKey( spep_2-2 + 96, shuchusen1, 0 );

setEffAlphaKey( spep_2-3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_2-2 + 96, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2+10  , 1504, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2+10  , 1505, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +22, 190006, 72, 0x100, -1, 0, 150, 510,10000);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +22,  ctgogo,  150,  510);
setEffMoveKey(  spep_2 +96,  ctgogo,  150,  510);

setEffAlphaKey( spep_2 +22, ctgogo, 0 );
setEffAlphaKey( spep_2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_2 + 92, ctgogo, 255 );
setEffAlphaKey( spep_2 + 94, ctgogo, 191 );
setEffAlphaKey( spep_2 + 96, ctgogo, 112 );
setEffAlphaKey( spep_2 + 98, ctgogo, 64 );

setEffRotateKey(  spep_2 +22,  ctgogo,  0);
setEffRotateKey(  spep_2 +96,  ctgogo,  0);

setEffScaleKey(  spep_2 +22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +86,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +96,  ctgogo, 1.07, 1.07 );

--SE
--気弾溜め
SE008 =playSe( spep_2 + 14 , 1262 );
setSeVolumeByWorkId( spep_2 + 14 , SE008 , 132 );
setPitch( spep_2 + 14, SE008, 100 );
setTimeStretch( SE008, 1.07, 10, 1 );
SE009 =playSe( spep_2 + 14 , 1144 );
setSeVolumeByWorkId( spep_2 + 14 , SE009 , 69 );
SE010 =playSe( spep_2 + 14 , 1043 );

--顔カットイン
SE007 =playSe( spep_2 + 22 , 1018 );



--白フェード
entryFade( spep_2+92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+98;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]
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

-- ** 極限用 ** --
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

-- ** 音 ** --
--playSe( spep_3 + 0, SE_05 );

--気弾溜め
stopSe( spep_3 + 6 , SE008, 0);
stopSe( spep_3 + 6 , SE009, 0);
stopSe( spep_3 + 6 , SE010, 0);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_4 + 62, kidan, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 62, kidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan, 0 );
setEffRotateKey( spep_4 + 62, kidan, 0 );
setEffAlphaKey( spep_4 + 0, kidan, 255 );
setEffAlphaKey( spep_4 + 62, kidan, 255 );

--SE
--気弾発射
SE012 =playSe( spep_4 + 18 , 1027 );
SE013 =playSe( spep_4 + 18 , 1021 );
SE014 =playSe( spep_4 + 18 , 1236 );
setSeVolumeByWorkId( spep_4 + 18 , SE014 , 269 );
SE015 =playSe( spep_4 + 26 , 1241 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 54, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 62;
------------------------------------------------------
-- 迫ってくる気玉
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 50, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 50, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 50, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 50, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 50, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 50, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -137.4, 26.9 , 0 );
setMoveKey( spep_5 + 2, 1, -116, 28.2 , 0 );
setMoveKey( spep_5 + 4, 1, -99.6, 29.1 , 0 );
setMoveKey( spep_5 + 6, 1, -85.5, 29.9 , 0 );
setMoveKey( spep_5 + 8, 1, -72.9, 30.6 , 0 );
setMoveKey( spep_5 + 10, 1, -61.4, 31.2 , 0 );
setMoveKey( spep_5 + 12, 1, -50.8, 31.8 , 0 );
setMoveKey( spep_5 + 14, 1, -40.7, 32.4 , 0 );
setMoveKey( spep_5 + 16, 1, -31.3, 32.9 , 0 );
setMoveKey( spep_5 + 18, 1, -22.4, 33.4 , 0 );
setMoveKey( spep_5 + 20, 1, -13.9, 33.9 , 0 );
setMoveKey( spep_5 + 22, 1, -5.7, 34.3 , 0 );
setMoveKey( spep_5 + 24, 1, 2.1, 34.8 , 0 );
setMoveKey( spep_5 + 26, 1, 9.5, 35.2 , 0 );
setMoveKey( spep_5 + 28, 1, 16.6, 35.6 , 0 );
setMoveKey( spep_5 + 30, 1, 23.5, 36 , 0 );
setMoveKey( spep_5 + 32, 1, 30.2, 36.3 , 0 );
setMoveKey( spep_5 + 34, 1, 36.6, 36.7 , 0 );
setMoveKey( spep_5 + 36, 1, 42.8, 37 , 0 );
setMoveKey( spep_5 + 38, 1, 48.7, 37.3 , 0 );
setMoveKey( spep_5 + 40, 1, 54.4, 37.7 , 0 );
setMoveKey( spep_5 + 42, 1, 60, 38 , 0 );
setMoveKey( spep_5 + 44, 1, 65.3, 38.3 , 0 );
setMoveKey( spep_5 + 46, 1, 70.5, 38.5 , 0 );
setMoveKey( spep_5 + 48, 1, 75.2, 38.8 , 0 );

setScaleKey( spep_5 + 0, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 2, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 4, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 8, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 10, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 12, 1, 0.43, 0.43 );
setScaleKey( spep_5 + 14, 1, 0.45, 0.45 );
setScaleKey( spep_5 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 18, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 20, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 22, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 24, 1, 0.54, 0.54 );
setScaleKey( spep_5 + 26, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 28, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 30, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 32, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 34, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 36, 1, 0.63, 0.63 );
setScaleKey( spep_5 + 38, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 40, 1, 0.65, 0.65 );
setScaleKey( spep_5 + 42, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 46, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 48, 1, 0.7, 0.7 );

setRotateKey( spep_5 + 0, 1, -17 );
setRotateKey( spep_5 + 48, 1, -17 );

--白フェード
entryFade( spep_5 + 42, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 50;

------------------------------------------------------
-- 爆破
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 120, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 120, finish, 255 );

--SE
--気弾溜め
stopSe( spep_6 + 0 , SE014, 6);

--爆発
SE016 =playSe( spep_6 + 0 , 1023 );
setSeVolumeByWorkId( spep_6 + 0 , SE016 , 111 );
SE017 =playSe( spep_6 + 0 , 1159 );
setSeVolumeByWorkId( spep_6 + 0 , SE017 , 73 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +14 );
endPhase( spep_6 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 飛び込み
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
plunge_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, plunge_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 60, plunge_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, plunge_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, plunge_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, plunge_f, 0 );
setEffRotateKey( spep_0 + 60, plunge_f, 0 );
setEffAlphaKey( spep_0 + 0, plunge_f, 255 );
setEffAlphaKey( spep_0 + 60, plunge_f, 255 );

-- ** エフェクト等 ** --
plunge_b = entryEffect( spep_0 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, plunge_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 60, plunge_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, plunge_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 60, plunge_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, plunge_b, 0 );
setEffRotateKey( spep_0 + 60, plunge_b, 0 );
setEffAlphaKey( spep_0 + 0, plunge_b, 255 );
setEffAlphaKey( spep_0 + 60, plunge_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 254.6, 68.5 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 255.7, 68.5 , 0 );
setMoveKey( spep_0-3 + 4, 1, 256.5, 68.5 , 0 );
setMoveKey( spep_0-3 + 6, 1, 257.2, 68.5 , 0 );
setMoveKey( spep_0-3 + 8, 1, 257.7, 68.5 , 0 );
setMoveKey( spep_0-3 + 10, 1, 258.2, 68.5 , 0 );
setMoveKey( spep_0-3 + 12, 1, 258.5, 68.5 , 0 );
setMoveKey( spep_0-3 + 14, 1, 258.9, 68.5 , 0 );
setMoveKey( spep_0-3 + 16, 1, 259.2, 68.5 , 0 );
setMoveKey( spep_0-3 + 18, 1, 259.5, 68.5 , 0 );
setMoveKey( spep_0-3 + 20, 1, 259.7, 68.5 , 0 );
setMoveKey( spep_0-3 + 22, 1, 260, 68.5 , 0 );
setMoveKey( spep_0-3 + 24, 1, 260.2, 68.5 , 0 );
setMoveKey( spep_0-3 + 26, 1, 260.4, 68.5 , 0 );
setMoveKey( spep_0-3 + 29, 1, 260.6, 68.5 , 0 );
--setMoveKey( spep_0-3 + 30, 1, 260.6, 68.5 , 0 );
--setMoveKey( spep_0-3 + 33, 1, 257.7, 65.5 , 0 );

setScaleKey( spep_0 + 0, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 2, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 3, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 4, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 5, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 30, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 +29, 1, 0 );

--SE
--入り
SE001 =playSe( spep_0 + 0 , 8 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 54 );
setTimeStretch( SE001, 0.67, 10, 1 );

--白フェード
entryFade( spep_0 , 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 26; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    
    stopSe( SP_dodge - 12, SE001, 0 );
    
    pauseAll( SP_dodge, 67 );
    
    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge  + 10, 1, 257.7, 65.5 , 0 );
    setScaleKey( SP_dodge + 10, 1, 0.36, 0.36 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
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

--敵動き
setDisp( spep_0 + 58, 1, 0 );

changeAnime( spep_0-3 + 30, 1, 16 );

setMoveKey( spep_0-3 + 30, 1, 243.6, 85.2 , 0 );
--setMoveKey( spep_0-3 + 36, 1, 238.6, 82.1 , 0 );
setMoveKey( spep_0-3 + 38, 1, 234.7, 84.7 , 0 );
setMoveKey( spep_0-3 + 40, 1, 231.5, 88.8 , 0 );
setMoveKey( spep_0-3 + 42, 1, 228.8, 86.4 , 0 );
setMoveKey( spep_0-3 + 44, 1, 226.6, 90.8 , 0 );
setMoveKey( spep_0-3 + 46, 1, 224.7, 89.3 , 0 );
setMoveKey( spep_0-3 + 48, 1, 223.1, 91.7 , 0 );
setMoveKey( spep_0-3 + 50, 1, 221.6, 90.9 , 0 );
setMoveKey( spep_0-3 + 52, 1, 220.4, 92.6 , 0 );
setMoveKey( spep_0-3 + 54, 1, 219.3, 92.4 , 0 );
setMoveKey( spep_0-3 + 56, 1, 218.3, 92.8 , 0 );
setMoveKey( spep_0 + 58, 1, 217.4, 93 , 0 );

setScaleKey( spep_0-3 + 34, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 36, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 38, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 40, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 42, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 44, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 46, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 50, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 58, 1, 0.42, 0.42 );

setRotateKey( spep_0-3 + 30, 1, 2.8 );
setRotateKey( spep_0-3 + 36, 1, 2.1 );
setRotateKey( spep_0-3 + 38, 1, 1.6 );
setRotateKey( spep_0-3 + 40, 1, 1.1 );
setRotateKey( spep_0-3 + 42, 1, 0.8 );
setRotateKey( spep_0-3 + 44, 1, 0.5 );
setRotateKey( spep_0-3 + 46, 1, 0.2 );
setRotateKey( spep_0-3 + 48, 1, 0 );
setRotateKey( spep_0-3 + 50, 1, -0.2 );
setRotateKey( spep_0-3 + 52, 1, -0.4 );
setRotateKey( spep_0-3 + 54, 1, -0.5 );
setRotateKey( spep_0-3 + 56, 1, -0.7 );
setRotateKey( spep_0 + 58, 1, -0.8 );

--SE
--飛んでいく
SE002 =playSe( spep_0 + 24 , 9 );

--白フェード
entryFade( spep_0+52 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+60;
------------------------------------------------------
-- 頭突き
------------------------------------------------------
-- ** エフェクト等 ** --
butting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, butting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, butting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, butting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, butting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, butting_f, 0 );
setEffRotateKey( spep_1 + 60, butting_f, 0 );
setEffAlphaKey( spep_1 + 0, butting_f, 255 );
setEffAlphaKey( spep_1 + 60, butting_f, 255 );

-- ** エフェクト等 ** --
butting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, butting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 60, butting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, butting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 60, butting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, butting_b, 0 );
setEffRotateKey( spep_1 + 60, butting_b, 0 );
setEffAlphaKey( spep_1 + 0, butting_b, 255 );
setEffAlphaKey( spep_1 + 60, butting_b, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 58, 1, 0 );

changeAnime( spep_1 + 0, 1, 16 );
changeAnime( spep_1-3 + 20, 1, 105 );

setMoveKey( spep_1 + 0, 1, 199.8, -48.3 , 0 );
setMoveKey( spep_1-3 + 2, 1, 169.4, -50.5 , 0 );
setMoveKey( spep_1-3 + 4, 1, 146, -52.2 , 0 );
setMoveKey( spep_1-3 + 6, 1, 127, -53.6 , 0 );
setMoveKey( spep_1-3 + 8, 1, 111.4, -54.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 98.2, -55.7 , 0 );
setMoveKey( spep_1-3 + 12, 1, 87, -56.5 , 0 );
setMoveKey( spep_1-3 + 14, 1, 77.5, -57.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 69.2, -57.8 , 0 );
setMoveKey( spep_1-3 + 19, 1, 61.8, -58.3 , 0 );
setMoveKey( spep_1-3 + 20, 1, 40.3, -38.5 , 0 );
setMoveKey( spep_1-3 + 22, 1, 47.6, -11.5 , 0 );
setMoveKey( spep_1-3 + 24, 1, 66.8, -16.7 , 0 );
setMoveKey( spep_1-3 + 26, 1, 73.7, -31.4 , 0 );
setMoveKey( spep_1-3 + 28, 1, 63, 21 , 0 );
setMoveKey( spep_1-3 + 30, 1, 93, 15.7 , 0 );
setMoveKey( spep_1-3 + 32, 1, 115.4, 19.7 , 0 );
setMoveKey( spep_1-3 + 34, 1, 93.3, 23 , 0 );
setMoveKey( spep_1-3 + 36, 1, 104, 21.8 , 0 );
setMoveKey( spep_1-3 + 38, 1, 145.2, 45.7 , 0 );
setMoveKey( spep_1-3 + 40, 1, 118.2, 46.4 , 0 );
setMoveKey( spep_1-3 + 42, 1, 124.4, 52.1 , 0 );
setMoveKey( spep_1-3 + 44, 1, 129.5, 56.9 , 0 );
setMoveKey( spep_1-3 + 46, 1, 133.8, 60.9 , 0 );
setMoveKey( spep_1-3 + 48, 1, 137.3, 64.1 , 0 );
setMoveKey( spep_1-3 + 50, 1, 140.1, 66.7 , 0 );
setMoveKey( spep_1-3 + 52, 1, 142.3, 68.7 , 0 );
setMoveKey( spep_1-3 + 54, 1, 143.8, 70.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 144.8, 71 , 0 );
setMoveKey( spep_1 + 58, 1, 145.2, 71.4 , 0 );

setScaleKey( spep_1 + 0, 1, 0.7, 0.7 );
setScaleKey( spep_1-3 + 2, 1, 0.88, 0.88 );
setScaleKey( spep_1-3 + 4, 1, 1.01, 1.01 );
setScaleKey( spep_1-3 + 6, 1, 1.12, 1.12 );
setScaleKey( spep_1-3 + 8, 1, 1.21, 1.21 );
setScaleKey( spep_1-3 + 10, 1, 1.29, 1.29 );
setScaleKey( spep_1-3 + 12, 1, 1.35, 1.35 );
setScaleKey( spep_1-3 + 14, 1, 1.41, 1.41 );
setScaleKey( spep_1-3 + 16, 1, 1.46, 1.46 );
setScaleKey( spep_1-3 + 19, 1, 1.5, 1.5 );
setScaleKey( spep_1-3 + 20, 1, 1.8, 1.8 );
setScaleKey( spep_1-3 + 22, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 24, 1, 1.55, 1.55 );
setScaleKey( spep_1-3 + 26, 1, 1.17, 1.17 );
setScaleKey( spep_1-3 + 28, 1, 1.24, 1.24 );
setScaleKey( spep_1-3 + 30, 1, 1, 1 );
setScaleKey( spep_1-3 + 32, 1, 0.97, 0.97 );
setScaleKey( spep_1-3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_1-3 + 36, 1, 0.73, 0.75 );
setScaleKey( spep_1-3 + 38, 1, 0.67, 0.65 );
setScaleKey( spep_1-3 + 40, 1, 0.56, 0.58 );
setScaleKey( spep_1-3 + 42, 1, 0.5, 0.52 );
setScaleKey( spep_1-3 + 44, 1, 0.45, 0.46 );
setScaleKey( spep_1-3 + 46, 1, 0.41, 0.42 );
setScaleKey( spep_1-3 + 48, 1, 0.37, 0.38 );
setScaleKey( spep_1-3 + 50, 1, 0.34, 0.36 );
setScaleKey( spep_1-3 + 52, 1, 0.32, 0.33 );
setScaleKey( spep_1-3 + 54, 1, 0.31, 0.32 );
setScaleKey( spep_1-3 + 56, 1, 0.3, 0.31 );
setScaleKey( spep_1 + 58, 1, 0.29, 0.3 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-3 + 20, 1, 0 );
setRotateKey( spep_1-3 + 22, 1, 0.4 );
setRotateKey( spep_1-3 + 24, 1, 1.6 );
setRotateKey( spep_1-3 + 26, 1, 3.3 );
setRotateKey( spep_1-3 + 28, 1, 5.3 );
setRotateKey( spep_1-3 + 30, 1, 7.3 );
setRotateKey( spep_1-3 + 32, 1, 9.3 );
setRotateKey( spep_1-3 + 34, 1, 11 );
setRotateKey( spep_1-3 + 36, 1, 12.6 );
setRotateKey( spep_1-3 + 38, 1, 14 );
setRotateKey( spep_1-3 + 40, 1, 15.2 );
setRotateKey( spep_1-3 + 42, 1, 16.3 );
setRotateKey( spep_1-3 + 44, 1, 17.1 );
setRotateKey( spep_1-3 + 46, 1, 17.9 );
setRotateKey( spep_1-3 + 48, 1, 18.5 );
setRotateKey( spep_1-3 + 50, 1, 18.9 );
setRotateKey( spep_1-3 + 52, 1, 19.3 );
setRotateKey( spep_1-3 + 54, 1, 19.5 );
setRotateKey( spep_1-3 + 56, 1, 19.7 );
setRotateKey( spep_1 + 58, 1, 19.8 );

--文字エントリー
ctdon = entryEffectLife( spep_1-3 + 20,  10019, 26, 0x100, -1, 0, 36.3, 102 );--ドンッ
setEffShake( spep_1-3 + 20, ctdon, 26, 10 );
setEffMoveKey( spep_1-3 + 20, ctdon, 36.3, 102 , 0 );
setEffMoveKey( spep_1-3 + 22, ctdon, 32.8, 159.1 , 0 );
setEffMoveKey( spep_1-3 + 24, ctdon, 45.5, 206.3 , 0 );
setEffMoveKey( spep_1-3 + 26, ctdon, 26.9, 216.1 , 0 );
setEffMoveKey( spep_1-3 + 28, ctdon, 28.3, 236.5 , 0 );
setEffMoveKey( spep_1-3 + 30, ctdon, 24.1, 234 , 0 );
setEffMoveKey( spep_1-3 + 32, ctdon, 13.4, 260.6 , 0 );
setEffMoveKey( spep_1-3 + 34, ctdon, 14.7, 261.7 , 0 );
setEffMoveKey( spep_1-3 + 36, ctdon, 1.3, 277.1 , 0 );
setEffMoveKey( spep_1-3 + 38, ctdon, 6.1, 286.2 , 0 );
setEffMoveKey( spep_1-3 + 40, ctdon, -15.5, 315 , 0 );
setEffMoveKey( spep_1-3 + 42, ctdon, -6.2, 323.7 , 0 );
setEffMoveKey( spep_1-3 + 44, ctdon, -34.4, 339.9 , 0 );
setEffMoveKey( spep_1-3 + 46, ctdon, -44.2, 358.4 , 0 );

setEffScaleKey( spep_1-3 + 20, ctdon, 0.5, 0.5 );
setEffScaleKey( spep_1-3 + 22, ctdon, 1.36, 1.36 );
setEffScaleKey( spep_1-3 + 24, ctdon, 2.23, 2.23 );
setEffScaleKey( spep_1-3 + 26, ctdon, 2.25, 2.25 );
setEffScaleKey( spep_1-3 + 28, ctdon, 2.28, 2.28 );
setEffScaleKey( spep_1-3 + 30, ctdon, 2.31, 2.31 );
setEffScaleKey( spep_1-3 + 32, ctdon, 2.33, 2.33 );
setEffScaleKey( spep_1-3 + 34, ctdon, 2.36, 2.36 );
setEffScaleKey( spep_1-3 + 36, ctdon, 2.38, 2.38 );
setEffScaleKey( spep_1-3 + 38, ctdon, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 40, ctdon, 2.74, 2.74 );
setEffScaleKey( spep_1-3 + 42, ctdon, 3.07, 3.07 );
setEffScaleKey( spep_1-3 + 44, ctdon, 3.4, 3.4 );
setEffScaleKey( spep_1-3 + 46, ctdon, 3.73, 3.73 );

setEffRotateKey( spep_1-3 + 20, ctdon, -3 );
setEffRotateKey( spep_1-3 + 22, ctdon, -3 );
setEffRotateKey( spep_1-3 + 24, ctdon, -2.9 );
setEffRotateKey( spep_1-3 + 28, ctdon, -2.9 );
setEffRotateKey( spep_1-3 + 30, ctdon, -3 );
setEffRotateKey( spep_1-3 + 46, ctdon, -3 );

setEffAlphaKey( spep_1-3 + 20, ctdon, 255 );
setEffAlphaKey( spep_1-3 + 38, ctdon, 255 );
setEffAlphaKey( spep_1-3 + 40, ctdon, 191 );
setEffAlphaKey( spep_1-3 + 42, ctdon, 128 );
setEffAlphaKey( spep_1-3 + 44, ctdon, 64 );
setEffAlphaKey( spep_1-3 + 46, ctdon, 0 );

--SE
--頭突き
SE003 =playSe( spep_1 + 18 , 19 );
setSeVolumeByWorkId( spep_1 + 18 , SE003 , 68 );
SE004 =playSe( spep_1 + 18 , 1110 );
setSeVolumeByWorkId( spep_1 + 18 , SE004 , 79 );
SE005 =playSe( spep_1 + 18 , 1187 );
setSeVolumeByWorkId( spep_1 + 18 , SE005 , 74 );
stopSe( spep_1 + 26, SE005, 24);
SE006 =playSe( spep_1 + 20 , 1009 );


--白フェード
entryFade( spep_1+52 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+60;
------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 98, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 98, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 98, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 98, tame, 255 );
setEffAlphaKey( spep_2 + 99, tame, 0 );
setEffAlphaKey( spep_2 + 100, tame, 0 );


--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 20,  906, 76 +1, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 20, shuchusen1, 76 +1, 20 );
setEffMoveKey( spep_2-3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2-2 + 96, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 20, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_2-2 + 96, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_2-3 + 20, shuchusen1, 0 );
setEffRotateKey( spep_2-2 + 96, shuchusen1, 0 );

setEffAlphaKey( spep_2-3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_2-2 + 96, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2+10  , 1504, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2+10  , 1505, 0x100, -1, 0, 0, 0 ,10000);  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +22, 190006, 72, 0x100, -1, 0, 150, 510,10000);-- ゴゴゴゴ

setEffMoveKey(  spep_2 +22,  ctgogo,  150,  510);
setEffMoveKey(  spep_2 +96,  ctgogo,  150,  510);

setEffAlphaKey( spep_2 +22, ctgogo, 0 );
setEffAlphaKey( spep_2 + 23, ctgogo, 255 );
setEffAlphaKey( spep_2 + 24, ctgogo, 255 );
setEffAlphaKey( spep_2 + 92, ctgogo, 255 );
setEffAlphaKey( spep_2 + 94, ctgogo, 191 );
setEffAlphaKey( spep_2 + 96, ctgogo, 112 );
setEffAlphaKey( spep_2 + 98, ctgogo, 64 );

setEffRotateKey(  spep_2 +22,  ctgogo,  0);
setEffRotateKey(  spep_2 +96,  ctgogo,  0);

setEffScaleKey(  spep_2 +22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +86,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +96,  ctgogo, -1.07, 1.07 );

--SE
--気弾溜め
SE008 =playSe( spep_2 + 14 , 1262 );
setSeVolumeByWorkId( spep_2 + 14 , SE008 , 132 );
setPitch( spep_2 + 14, SE008, 100 );
setTimeStretch( SE008, 1.07, 10, 1 );
SE009 =playSe( spep_2 + 14 , 1144 );
setSeVolumeByWorkId( spep_2 + 14 , SE009 , 69 );
SE010 =playSe( spep_2 + 14 , 1043 );

--顔カットイン
SE007 =playSe( spep_2 + 22 , 1018 );



--白フェード
entryFade( spep_2+92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+98;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]

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

-- ** 極限用 ** --
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

-- ** 音 ** --
--playSe( spep_3 + 0, SE_05 );

--気弾溜め
stopSe( spep_3 + 6 , SE008, 0);
stopSe( spep_3 + 6 , SE009, 0);
stopSe( spep_3 + 6 , SE010, 0);

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 80, 6, 12, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;
------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_4 + 62, kidan, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 62, kidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan, 0 );
setEffRotateKey( spep_4 + 62, kidan, 0 );
setEffAlphaKey( spep_4 + 0, kidan, 255 );
setEffAlphaKey( spep_4 + 62, kidan, 255 );

--SE
--気弾発射
SE012 =playSe( spep_4 + 18 , 1027 );
SE013 =playSe( spep_4 + 18 , 1021 );
SE014 =playSe( spep_4 + 18 , 1236 );
setSeVolumeByWorkId( spep_4 + 18 , SE014 , 269 );
SE015 =playSe( spep_4 + 26 , 1241 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 62, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 54, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 62;
------------------------------------------------------
-- 迫ってくる気玉
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 50, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 50, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 50, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 50, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 50, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 50, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 50, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, -137.4, 26.9 , 0 );
setMoveKey( spep_5 + 2, 1, -116, 28.2 , 0 );
setMoveKey( spep_5 + 4, 1, -99.6, 29.1 , 0 );
setMoveKey( spep_5 + 6, 1, -85.5, 29.9 , 0 );
setMoveKey( spep_5 + 8, 1, -72.9, 30.6 , 0 );
setMoveKey( spep_5 + 10, 1, -61.4, 31.2 , 0 );
setMoveKey( spep_5 + 12, 1, -50.8, 31.8 , 0 );
setMoveKey( spep_5 + 14, 1, -40.7, 32.4 , 0 );
setMoveKey( spep_5 + 16, 1, -31.3, 32.9 , 0 );
setMoveKey( spep_5 + 18, 1, -22.4, 33.4 , 0 );
setMoveKey( spep_5 + 20, 1, -13.9, 33.9 , 0 );
setMoveKey( spep_5 + 22, 1, -5.7, 34.3 , 0 );
setMoveKey( spep_5 + 24, 1, 2.1, 34.8 , 0 );
setMoveKey( spep_5 + 26, 1, 9.5, 35.2 , 0 );
setMoveKey( spep_5 + 28, 1, 16.6, 35.6 , 0 );
setMoveKey( spep_5 + 30, 1, 23.5, 36 , 0 );
setMoveKey( spep_5 + 32, 1, 30.2, 36.3 , 0 );
setMoveKey( spep_5 + 34, 1, 36.6, 36.7 , 0 );
setMoveKey( spep_5 + 36, 1, 42.8, 37 , 0 );
setMoveKey( spep_5 + 38, 1, 48.7, 37.3 , 0 );
setMoveKey( spep_5 + 40, 1, 54.4, 37.7 , 0 );
setMoveKey( spep_5 + 42, 1, 60, 38 , 0 );
setMoveKey( spep_5 + 44, 1, 65.3, 38.3 , 0 );
setMoveKey( spep_5 + 46, 1, 70.5, 38.5 , 0 );
setMoveKey( spep_5 + 48, 1, 75.2, 38.8 , 0 );

setScaleKey( spep_5 + 0, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 2, 1, 0.29, 0.29 );
setScaleKey( spep_5 + 4, 1, 0.33, 0.33 );
setScaleKey( spep_5 + 6, 1, 0.36, 0.36 );
setScaleKey( spep_5 + 8, 1, 0.39, 0.39 );
setScaleKey( spep_5 + 10, 1, 0.41, 0.41 );
setScaleKey( spep_5 + 12, 1, 0.43, 0.43 );
setScaleKey( spep_5 + 14, 1, 0.45, 0.45 );
setScaleKey( spep_5 + 16, 1, 0.47, 0.47 );
setScaleKey( spep_5 + 18, 1, 0.49, 0.49 );
setScaleKey( spep_5 + 20, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 22, 1, 0.53, 0.53 );
setScaleKey( spep_5 + 24, 1, 0.54, 0.54 );
setScaleKey( spep_5 + 26, 1, 0.56, 0.56 );
setScaleKey( spep_5 + 28, 1, 0.58, 0.58 );
setScaleKey( spep_5 + 30, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 32, 1, 0.6, 0.6 );
setScaleKey( spep_5 + 34, 1, 0.62, 0.62 );
setScaleKey( spep_5 + 36, 1, 0.63, 0.63 );
setScaleKey( spep_5 + 38, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 40, 1, 0.65, 0.65 );
setScaleKey( spep_5 + 42, 1, 0.67, 0.67 );
setScaleKey( spep_5 + 44, 1, 0.68, 0.68 );
setScaleKey( spep_5 + 46, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 48, 1, 0.7, 0.7 );

setRotateKey( spep_5 + 0, 1, -17 );
setRotateKey( spep_5 + 48, 1, -17 );

--白フェード
entryFade( spep_5 + 42, 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 50;

------------------------------------------------------
-- 爆破
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 120, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 120, finish, 255 );

--SE
--気弾溜め
stopSe( spep_6 + 0 , SE014, 6);

--爆発
SE016 =playSe( spep_6 + 0 , 1023 );
setSeVolumeByWorkId( spep_6 + 0 , SE016 , 111 );
SE017 =playSe( spep_6 + 0 , 1159 );
setSeVolumeByWorkId( spep_6 + 0 , SE017 , 73 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_6 +14 );
endPhase( spep_6 + 110 );
end