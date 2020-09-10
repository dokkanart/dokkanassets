--1019240:バーダックタイラントランサー
--sp_effect_a1_00218

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
SP_01=	155031	;--	カメラ寄り→突進
SP_02=	155032	;--	エルボー：ヒットエフェクト
SP_03=	155033	;--	エルボー：キャラ
SP_04=	155034	;--	エルボー；背景
SP_05=	155035	;--	気溜め
SP_06=	155036	;--	ビーム発射
SP_07=	155037	;--	ビーム敵にヒット；ビーム
SP_08=	155038	;--	ビーム敵にヒット：背景
SP_09=	155039	;--	爆発

--てき側
SP_01x=	155040	;--	カメラ寄り→突進	(敵)
SP_02x=	155032	;--	エルボー：ヒットエフェクト	(敵)
SP_03x=	155041	;--	エルボー：キャラ	
SP_04x=	155034	;--	エルボー；背景	
SP_05x=	155042	;--	気溜め	(敵)
SP_06x=	155043	;--	ビーム発射	(敵)
SP_07x=	155037	;--	ビーム敵にヒット；ビーム	
SP_08x=	155038	;--	ビーム敵にヒット：背景	
SP_09x=	155044	;--	爆発	(敵)	

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


--adjustAttackerLabel( 0, 205);
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カメラ寄り→突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;
-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, tossin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 146, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 146, tossin, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 18, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 144.1, 53.6 , 0 );
setMoveKey( spep_0 + 1, 1, 144.1, 53.6 , 0 );
setMoveKey( spep_0 + 2, 1, 218.6, 31.6 , 0 );
setMoveKey( spep_0 + 3, 1, 218.6, 31.6 , 0 );
setMoveKey( spep_0 + 4, 1, 294.1, 9.2 , 0 );
setMoveKey( spep_0 + 5, 1, 294.1, 9.2 , 0 );
setMoveKey( spep_0 + 6, 1, 370.1, -13.5 , 0 );
setMoveKey( spep_0 + 8, 1, 445.9, -36 , 0 );
setMoveKey( spep_0 + 10, 1, 521.1, -58.3 , 0 );
setMoveKey( spep_0 + 12, 1, 594.9, -80.1 , 0 );
setMoveKey( spep_0 + 14, 1, 667, -101.1 , 0 );
setMoveKey( spep_0 + 16, 1, 736.5, -121.1 , 0 );
setMoveKey( spep_0 + 18, 1, 803.1, -139.8 , 0 );

setScaleKey( spep_0 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 1, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 2, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 3, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 4, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 5, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 6, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 8, 1, 6.48, 6.48 );
setScaleKey( spep_0 + 10, 1, 7.47, 7.47 );
setScaleKey( spep_0 + 12, 1, 8.44, 8.44 );
setScaleKey( spep_0 + 14, 1, 9.37, 9.37 );
setScaleKey( spep_0 + 16, 1, 10.27, 10.27 );
setScaleKey( spep_0 + 18, 1, 11.11, 11.11 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 18, 1, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 68,  906, 80, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 68, shuchusen1, 80+1, 20 );
setEffMoveKey( spep_0-3 + 68, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 68, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 148, shuchusen1, 1, 1 );

setEffRotateKey( spep_0-3 + 68, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 68, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 148, shuchusen1, 255 );

--SE
playSe( spep_0 + 0, 8 );
SE0=playSe( spep_0 + 67, 9 );
SE1=playSe( spep_0 + 67, 1182 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 118; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    
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

playSe( spep_0 + 105, 1072 );

--次の準備
spep_1 = spep_0+146;
------------------------------------------------------
-- エルボー
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, elbow_f, 0 );
setEffRotateKey( spep_1 + 48, elbow_f, 0 );
setEffAlphaKey( spep_1 + 0, elbow_f, 255 );
setEffAlphaKey( spep_1 + 48, elbow_f, 255 );

-- ** エフェクト等 ** --
elbow_bg = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, elbow_bg, 0, 0, 0 );
setEffMoveKey( spep_1 + 80, elbow_bg, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, elbow_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, elbow_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, elbow_bg, 0 );
setEffRotateKey( spep_1 + 80, elbow_bg, 0 );
setEffAlphaKey( spep_1 + 0, elbow_bg, 255 );
setEffAlphaKey( spep_1 + 80, elbow_bg, 255 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  921, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 78, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.1, 1.1 );
setEffScaleKey( spep_1 + 78, ryusen1, 1.1, 1.1 );

setEffRotateKey( spep_1 + 0, ryusen1, 180 );
setEffRotateKey( spep_1 + 78, ryusen1, 180 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 78, ryusen1, 255 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 80, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, elbow_b, 0 );
setEffRotateKey( spep_1 + 80, elbow_b, 0 );
setEffAlphaKey( spep_1 + 0, elbow_b, 255 );
setEffAlphaKey( spep_1 + 80, elbow_b, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 40, 1, 0 );

changeAnime( spep_1  + 0, 1, 118 );
changeAnime( spep_1 -3 + 28, 1, 107 );

setMoveKey( spep_1  + 0, 1, 661.7, 3.6 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 543.1, 0.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 464.9, -1.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 406.8, -3.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 361.3, -4.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 324.3, -5.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 293.5, -6.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 267.5, -7.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 245.3, -7.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 226, -8.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 209.2, -8.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 194.5, -9.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 181.4, -9.7 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 169.6, -10.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 212.9, -33.4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 468.2, 42.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 528.8, 13.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 709.6, 41.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 903.6, 77.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 1087.1, 110.1 , 0 );
setMoveKey( spep_1  + 40, 1, 1278.6, 142.1 , 0 );

setScaleKey( spep_1  + 0, 1, 3, 3 );
--setScaleKey( spep_1 -3 + 2, 1, 2.77, 2.77 );
setScaleKey( spep_1 -3 + 4, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 6, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 8, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 10, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 12, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 14, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 16, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 18, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 20, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 22, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 24, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 27, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 30, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 32, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 36, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 38, 1, 2.23, 2.23 );
setScaleKey( spep_1  + 40, 1, 2.5, 2.5 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 27, 1, 0 );
setRotateKey( spep_1 -3 + 28, 1, -55.2 );
setRotateKey( spep_1 -3 + 30, 1, -54.3 );
setRotateKey( spep_1 -3 + 32, 1, -53.5 );
setRotateKey( spep_1 -3 + 34, 1, -52.7 );
setRotateKey( spep_1 -3 + 36, 1, -51.8 );
setRotateKey( spep_1 -3 + 38, 1, -51 );
setRotateKey( spep_1  + 40, 1, -50.1 );

--白フェード
entryFade( spep_1 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_1 + 24, 1189 );
playSe( spep_1 + 28, 1009 );
playSe( spep_1 + 32, 1110 );
playSe( spep_1 + 35, 1006 );
playSe( spep_1 + 76, 1154 );
setSeVolume( spep_1 + 76, 1154, 0 );


playSe( spep_1 + 79, 49 );

--次の準備
spep_2 = spep_1+80;

------------------------------------------------------
-- 気タメ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 98, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 98, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 98, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 98, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_2 + 12  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_2 + 12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +24, 190006, 72, 0x100, -1, 0, -80, 515);-- ゴゴゴゴ
setEffMoveKey(  spep_2 +24,  ctgogo,  -80,  515);
setEffMoveKey(  spep_2 +96,  ctgogo,  -80,  515);

setEffAlphaKey( spep_2 +24, ctgogo, 0 );
setEffAlphaKey( spep_2 + 25, ctgogo, 255 );
setEffAlphaKey( spep_2 + 26, ctgogo, 255 );
setEffAlphaKey( spep_2 + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 + 94, ctgogo, 112 );
setEffAlphaKey( spep_2 + 96, ctgogo, 64 );

setEffRotateKey(  spep_2 +24,  ctgogo,  0);
setEffRotateKey(  spep_2 +96,  ctgogo,  0);

setEffScaleKey(  spep_2 +24,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +86,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_2 +96,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 96, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen2, 96, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1, 1 );
setEffScaleKey( spep_2 + 96, shuchusen2, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen2, 255 );

--SE
playSe( spep_2 + 12, 1018 );

setSeVolume( spep_2 + 1, 1154, 14.2 );
setSeVolume( spep_2 + 2, 1154, 28.4 );
setSeVolume( spep_2 + 3, 1154, 42.6 );
setSeVolume( spep_2 + 4, 1154, 56.8 );
setSeVolume( spep_2 + 5, 1154, 71 );
setSeVolume( spep_2 + 6, 1154, 85.2 );
setSeVolume( spep_2 + 7, 1154, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 98;

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
stopSe( spep_3 + 0, se_1037, 0 );

--白フェード
entryFade( spep_3 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 88,  beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88,  beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  beam, 0 );
setEffRotateKey( spep_4 + 88,  beam, 0 );
setEffAlphaKey( spep_4 + 0,  beam, 255 );
setEffAlphaKey( spep_4 + 88,  beam, 255 );
setEffAlphaKey( spep_4 + 89,  beam, 0 );
setEffAlphaKey( spep_4 + 90,  beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-3 + 20,  10012, 60, 0x100, -1, 0, 9.6, 282.4 );--ズオッ
setEffShake( spep_4-3 + 20, ctzuo, 60, 10 );
setEffMoveKey( spep_4-3 + 20, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_4-3 + 22, ctzuo, 26.1, 318.3 , 0 );
setEffMoveKey( spep_4-3 + 24, ctzuo, 22.9, 366.4 , 0 );
setEffMoveKey( spep_4-3 + 26, ctzuo, 39.5, 351.3 , 0 );
setEffMoveKey( spep_4-3 + 28, ctzuo, 24, 368.5 , 0 );
setEffMoveKey( spep_4-3 + 30, ctzuo, 40.8, 353.4 , 0 );
setEffMoveKey( spep_4-3 + 32, ctzuo, 25.2, 370.5 , 0 );
setEffMoveKey( spep_4-3 + 34, ctzuo, 41.9, 355.4 , 0 );
setEffMoveKey( spep_4-3 + 36, ctzuo, 26.4, 372.6 , 0 );
setEffMoveKey( spep_4-3 + 38, ctzuo, 43.2, 357.4 , 0 );
setEffMoveKey( spep_4-3 + 40, ctzuo, 27.5, 374.7 , 0 );
setEffMoveKey( spep_4-3 + 42, ctzuo, 44.4, 359.4 , 0 );
setEffMoveKey( spep_4-3 + 44, ctzuo, 28.6, 376.9 , 0 );
setEffMoveKey( spep_4-3 + 46, ctzuo, 45.6, 361.5 , 0 );
setEffMoveKey( spep_4-3 + 48, ctzuo, 29.7, 378.9 , 0 );
setEffMoveKey( spep_4-3 + 50, ctzuo, 46.9, 363.5 , 0 );
setEffMoveKey( spep_4-3 + 52, ctzuo, 30.9, 381 , 0 );
setEffMoveKey( spep_4-3 + 54, ctzuo, 48.1, 365.5 , 0 );
setEffMoveKey( spep_4-3 + 56, ctzuo, 32.1, 383.1 , 0 );
setEffMoveKey( spep_4-3 + 58, ctzuo, 49.3, 367.5 , 0 );
setEffMoveKey( spep_4-3 + 60, ctzuo, 33.2, 385.3 , 0 );
setEffMoveKey( spep_4-3 + 62, ctzuo, 50.5, 369.5 , 0 );
setEffMoveKey( spep_4-3 + 64, ctzuo, 34.3, 387.3 , 0 );
setEffMoveKey( spep_4-3 + 66, ctzuo, 51.7, 371.6 , 0 );
setEffMoveKey( spep_4-3 + 68, ctzuo, 35.5, 389.4 , 0 );
setEffMoveKey( spep_4-3 + 70, ctzuo, 52.9, 373.6 , 0 );
setEffMoveKey( spep_4-3 + 72, ctzuo, 36.6, 391.5 , 0 );
setEffMoveKey( spep_4-3 + 74, ctzuo, 54.2, 375.6 , 0 );
setEffMoveKey( spep_4-3 + 76, ctzuo, 37.8, 393.6 , 0 );
setEffMoveKey( spep_4-3 + 78, ctzuo, 100.8, 374.8 , 0 );
setEffMoveKey( spep_4-3 + 80, ctzuo, 146.9, 372.9 , 0 );

setEffScaleKey( spep_4-3 + 20, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4-3 + 22, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_4-3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-3 + 26, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4-3 + 28, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4-3 + 30, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 32, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4-3 + 34, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4-3 + 36, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_4-3 + 38, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_4-3 + 40, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_4-3 + 42, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_4-3 + 44, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-3 + 46, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-3 + 48, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_4-3 + 50, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_4-3 + 52, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_4-3 + 54, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4-3 + 56, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4-3 + 58, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_4-3 + 60, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_4-3 + 62, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_4-3 + 64, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_4-3 + 66, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4-3 + 68, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4-3 + 70, ctzuo, 2.88, 2.88 );
setEffScaleKey( spep_4-3 + 72, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_4-3 + 74, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_4-3 + 76, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4-3 + 78, ctzuo, 4.86, 4.86 );
setEffScaleKey( spep_4-3 + 80, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4-3 + 20, ctzuo, 9.7 );
setEffRotateKey( spep_4-3 + 22, ctzuo, 18.4 );
setEffRotateKey( spep_4-3 + 24, ctzuo, 27.2 );
setEffRotateKey( spep_4-3 + 80, ctzuo, 27.2 );

setEffAlphaKey( spep_4-3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 76, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 78, ctzuo, 128 );
setEffAlphaKey( spep_4-3 + 80, ctzuo, 0 );

--SE
playSe( spep_4 + 14, 1027 );
playSe( spep_4 + 16, 1146 );
setSeVolume( spep_4 + 16, 1146, 79 );

--白フェード
entryFade( spep_4 + 12, 0, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 88;

------------------------------------------------------
-- ビーム敵にヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 100, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 100, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 100, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 100, hit_b, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 44, 1, 0 );

changeAnime( spep_5  + 0, 1, 105 );

setMoveKey( spep_5  + 0, 1, -149.9, -20 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -142.3, -17.8 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -125.6, -7.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -115.8, -8.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -97, 7.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -85, 11.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -64.1, 24.2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -54.1, 29.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -27, 43.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -10.9, 45.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 14.2, 64.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 32.4, 72.5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 59.6, 88.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 75.8, 93.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 109, 115.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 161.2, 202.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 158.1, 197.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 117.9, 177.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 140.9, 208.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 142.7, 212.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 146, 216.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 137.7, 206.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 142.7, 212.3 , 0 );
setMoveKey( spep_5  + 44, 1, 140.4, 208.1 , 0 );

setScaleKey( spep_5  + 0, 1, 4.5, 4.5 );
--setScaleKey( spep_5 -3 + 2, 1, 4.43, 4.43 );
setScaleKey( spep_5 -3 + 4, 1, 4.35, 4.35 );
setScaleKey( spep_5 -3 + 6, 1, 4.25, 4.25 );
setScaleKey( spep_5 -3 + 8, 1, 4.14, 4.14 );
setScaleKey( spep_5 -3 + 10, 1, 4.01, 4.01 );
setScaleKey( spep_5 -3 + 12, 1, 3.87, 3.87 );
setScaleKey( spep_5 -3 + 14, 1, 3.72, 3.72 );
setScaleKey( spep_5 -3 + 16, 1, 3.55, 3.55 );
setScaleKey( spep_5 -3 + 18, 1, 3.36, 3.36 );
setScaleKey( spep_5 -3 + 20, 1, 3.16, 3.16 );
setScaleKey( spep_5 -3 + 22, 1, 2.95, 2.95 );
setScaleKey( spep_5 -3 + 24, 1, 2.72, 2.72 );
setScaleKey( spep_5 -3 + 26, 1, 2.48, 2.48 );
setScaleKey( spep_5 -3 + 28, 1, 2.22, 2.22 );
setScaleKey( spep_5 -3 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 42, 1, 0.27, 0.27 );
setScaleKey( spep_5  + 44, 1, 0.27, 0.27 );

setRotateKey( spep_5  + 0, 1, 18 );
--setRotateKey( spep_5 -3 + 2, 1, 18 );
setRotateKey( spep_5 -3 + 4, 1, 17.8 );
setRotateKey( spep_5 -3 + 6, 1, 17.7 );
setRotateKey( spep_5 -3 + 8, 1, 17.6 );
setRotateKey( spep_5 -3 + 10, 1, 17.5 );
setRotateKey( spep_5 -3 + 12, 1, 17.3 );
setRotateKey( spep_5 -3 + 14, 1, 17.2 );
setRotateKey( spep_5 -3 + 16, 1, 17.1 );
setRotateKey( spep_5 -3 + 18, 1, 16.9 );
setRotateKey( spep_5 -3 + 20, 1, 16.8 );
setRotateKey( spep_5 -3 + 22, 1, 16.7 );
setRotateKey( spep_5 -3 + 24, 1, 16.5 );
setRotateKey( spep_5 -3 + 26, 1, 16.4 );
setRotateKey( spep_5 -3 + 28, 1, 16.2 );
setRotateKey( spep_5 -3 + 30, 1, 21 );
setRotateKey( spep_5 -3 + 32, 1, 18.5 );
setRotateKey( spep_5 -3 + 34, 1, 16.2 );
setRotateKey( spep_5 -3 + 36, 1, 14 );
setRotateKey( spep_5 -3 + 38, 1, 11.6 );
setRotateKey( spep_5 -3 + 40, 1, 11.6 );
setRotateKey( spep_5 -3 + 42, 1, 11.4 );
setRotateKey( spep_5 -3 + 44, 1, 11.2 );
setRotateKey( spep_5  + 44, 1, 11 );

--SE
playSe( spep_5 + 24, 1021 );

--白フェード
entryFade( spep_5 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 100;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 140, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 140, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 140, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 140, explosion, 255 );

--SE
playSe( spep_6 + 12, 1023 );
playSe( spep_6 + 15, 1159 );
setSeVolume( spep_6 + 15, 1159, 79 );

--終わり
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 130 );

else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カメラ寄り→突進
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;
-- ** エフェクト等 ** --
tossin = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tossin, 0, 0, 0 );
setEffMoveKey( spep_0 + 146, tossin, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tossin, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, tossin, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tossin, 0 );
setEffRotateKey( spep_0 + 146, tossin, 0 );
setEffAlphaKey( spep_0 + 0, tossin, 255 );
setEffAlphaKey( spep_0 + 146, tossin, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 18, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 144.1, 53.6 , 0 );
setMoveKey( spep_0 + 1, 1, 144.1, 53.6 , 0 );
setMoveKey( spep_0 + 2, 1, 218.6, 31.6 , 0 );
setMoveKey( spep_0 + 3, 1, 218.6, 31.6 , 0 );
setMoveKey( spep_0 + 4, 1, 294.1, 9.2 , 0 );
setMoveKey( spep_0 + 5, 1, 294.1, 9.2 , 0 );
setMoveKey( spep_0 + 6, 1, 370.1, -13.5 , 0 );
setMoveKey( spep_0 + 8, 1, 445.9, -36 , 0 );
setMoveKey( spep_0 + 10, 1, 521.1, -58.3 , 0 );
setMoveKey( spep_0 + 12, 1, 594.9, -80.1 , 0 );
setMoveKey( spep_0 + 14, 1, 667, -101.1 , 0 );
setMoveKey( spep_0 + 16, 1, 736.5, -121.1 , 0 );
setMoveKey( spep_0 + 18, 1, 803.1, -139.8 , 0 );

setScaleKey( spep_0 + 0, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 1, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 2, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 3, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 4, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 5, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 6, 1, 5.48, 5.48 );
setScaleKey( spep_0 + 8, 1, 6.48, 6.48 );
setScaleKey( spep_0 + 10, 1, 7.47, 7.47 );
setScaleKey( spep_0 + 12, 1, 8.44, 8.44 );
setScaleKey( spep_0 + 14, 1, 9.37, 9.37 );
setScaleKey( spep_0 + 16, 1, 10.27, 10.27 );
setScaleKey( spep_0 + 18, 1, 11.11, 11.11 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 18, 1, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 68,  906, 80, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 68, shuchusen1, 80+1, 20 );
setEffMoveKey( spep_0-3 + 68, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 148, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 68, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 148, shuchusen1, 1, 1 );

setEffRotateKey( spep_0-3 + 68, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 148, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 68, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 148, shuchusen1, 255 );

--SE
playSe( spep_0 + 0, 8 );
SE0=playSe( spep_0 + 67, 9 );
SE1=playSe( spep_0 + 67, 1182 );


-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 118; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    
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

playSe( spep_0 + 105, 1072 );

--次の準備
spep_1 = spep_0+146;
------------------------------------------------------
-- エルボー
------------------------------------------------------
-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, elbow_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 48, elbow_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 48, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, elbow_f, 0 );
setEffRotateKey( spep_1 + 48, elbow_f, 0 );
setEffAlphaKey( spep_1 + 0, elbow_f, 255 );
setEffAlphaKey( spep_1 + 48, elbow_f, 255 );

-- ** エフェクト等 ** --
elbow_bg = entryEffect( spep_1 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, elbow_bg, 0, 0, 0 );
setEffMoveKey( spep_1 + 80, elbow_bg, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, elbow_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, elbow_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, elbow_bg, 0 );
setEffRotateKey( spep_1 + 80, elbow_bg, 0 );
setEffAlphaKey( spep_1 + 0, elbow_bg, 255 );
setEffAlphaKey( spep_1 + 80, elbow_bg, 255 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  921, 78, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_1 + 78, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.1, 1.1 );
setEffScaleKey( spep_1 + 78, ryusen1, 1.1, 1.1 );

setEffRotateKey( spep_1 + 0, ryusen1, 180 );
setEffRotateKey( spep_1 + 78, ryusen1, 180 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 78, ryusen1, 255 );

-- ** エフェクト等 ** --
elbow_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, elbow_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 80, elbow_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 80, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, elbow_b, 0 );
setEffRotateKey( spep_1 + 80, elbow_b, 0 );
setEffAlphaKey( spep_1 + 0, elbow_b, 255 );
setEffAlphaKey( spep_1 + 80, elbow_b, 255 );

--敵の動き
setDisp( spep_1  + 0, 1, 1 );
setDisp( spep_1  + 40, 1, 0 );

changeAnime( spep_1  + 0, 1, 118 );
changeAnime( spep_1 -3 + 28, 1, 107 );

setMoveKey( spep_1  + 0, 1, 661.7, 3.6 , 0 );
--setMoveKey( spep_1 -3 + 2, 1, 543.1, 0.4 , 0 );
setMoveKey( spep_1 -3 + 4, 1, 464.9, -1.8 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 406.8, -3.4 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 361.3, -4.7 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 324.3, -5.7 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 293.5, -6.6 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 267.5, -7.3 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 245.3, -7.9 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 226, -8.4 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 209.2, -8.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 194.5, -9.3 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 181.4, -9.7 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 169.6, -10.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 212.9, -33.4 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 468.2, 42.2 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 528.8, 13.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 709.6, 41.7 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 903.6, 77.9 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 1087.1, 110.1 , 0 );
setMoveKey( spep_1  + 40, 1, 1278.6, 142.1 , 0 );

setScaleKey( spep_1  + 0, 1, 3, 3 );
--setScaleKey( spep_1 -3 + 2, 1, 2.77, 2.77 );
setScaleKey( spep_1 -3 + 4, 1, 2.62, 2.62 );
setScaleKey( spep_1 -3 + 6, 1, 2.51, 2.51 );
setScaleKey( spep_1 -3 + 8, 1, 2.42, 2.42 );
setScaleKey( spep_1 -3 + 10, 1, 2.35, 2.35 );
setScaleKey( spep_1 -3 + 12, 1, 2.29, 2.29 );
setScaleKey( spep_1 -3 + 14, 1, 2.24, 2.24 );
setScaleKey( spep_1 -3 + 16, 1, 2.2, 2.2 );
setScaleKey( spep_1 -3 + 18, 1, 2.16, 2.16 );
setScaleKey( spep_1 -3 + 20, 1, 2.13, 2.13 );
setScaleKey( spep_1 -3 + 22, 1, 2.1, 2.1 );
setScaleKey( spep_1 -3 + 24, 1, 2.07, 2.07 );
setScaleKey( spep_1 -3 + 27, 1, 2.05, 2.05 );
setScaleKey( spep_1 -3 + 28, 1, 1.03, 1.03 );
setScaleKey( spep_1 -3 + 30, 1, 1.25, 1.25 );
setScaleKey( spep_1 -3 + 32, 1, 1.43, 1.43 );
setScaleKey( spep_1 -3 + 34, 1, 1.7, 1.7 );
setScaleKey( spep_1 -3 + 36, 1, 1.96, 1.96 );
setScaleKey( spep_1 -3 + 38, 1, 2.23, 2.23 );
setScaleKey( spep_1  + 40, 1, 2.5, 2.5 );

setRotateKey( spep_1  + 0, 1, 0 );
setRotateKey( spep_1 -3 + 27, 1, 0 );
setRotateKey( spep_1 -3 + 28, 1, -55.2 );
setRotateKey( spep_1 -3 + 30, 1, -54.3 );
setRotateKey( spep_1 -3 + 32, 1, -53.5 );
setRotateKey( spep_1 -3 + 34, 1, -52.7 );
setRotateKey( spep_1 -3 + 36, 1, -51.8 );
setRotateKey( spep_1 -3 + 38, 1, -51 );
setRotateKey( spep_1  + 40, 1, -50.1 );

--白フェード
entryFade( spep_1 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_1 + 24, 1189 );
playSe( spep_1 + 28, 1009 );
playSe( spep_1 + 32, 1110 );
playSe( spep_1 + 35, 1006 );
playSe( spep_1 + 76, 1154 );
setSeVolume( spep_1 + 76, 1154, 0 );


playSe( spep_1 + 79, 49 );

--次の準備
spep_2 = spep_1+80;

------------------------------------------------------
-- 気タメ
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_2 + 98, tame, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_2 + 98, tame, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tame, 0 );
setEffRotateKey( spep_2 + 98, tame, 0 );
setEffAlphaKey( spep_2 + 0, tame, 255 );
setEffAlphaKey( spep_2 + 98, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_2 + 12  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_2 + 12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_2 +24, 190006, 72, 0x100, -1, 0, 80, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_2 +24,  ctgogo,  80,  510);
setEffMoveKey(  spep_2 +96,  ctgogo,  80,  510);

setEffAlphaKey( spep_2 +24, ctgogo, 0 );
setEffAlphaKey( spep_2 + 25, ctgogo, 255 );
setEffAlphaKey( spep_2 + 26, ctgogo, 255 );
setEffAlphaKey( spep_2 + 90, ctgogo, 255 );
setEffAlphaKey( spep_2 + 92, ctgogo, 191 );
setEffAlphaKey( spep_2 + 94, ctgogo, 112 );
setEffAlphaKey( spep_2 + 96, ctgogo, 64 );

setEffRotateKey(  spep_2 +24,  ctgogo,  0);
setEffRotateKey(  spep_2 +96,  ctgogo,  0);

setEffScaleKey(  spep_2 +24,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +86,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_2 +96,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen2 = entryEffectLife( spep_2 + 0,  906, 96, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2 + 0, shuchusen2, 96, 20 );
setEffMoveKey( spep_2 + 0, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen2, 1, 1 );
setEffScaleKey( spep_2 + 96, shuchusen2, 1, 1 );

setEffRotateKey( spep_2 + 0, shuchusen2, 0 );
setEffRotateKey( spep_2 + 96, shuchusen2, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen2, 255 );
setEffAlphaKey( spep_2 + 96, shuchusen2, 255 );

--SE
playSe( spep_2 + 12, 1018 );

setSeVolume( spep_2 + 1, 1154, 14.2 );
setSeVolume( spep_2 + 2, 1154, 28.4 );
setSeVolume( spep_2 + 3, 1154, 42.6 );
setSeVolume( spep_2 + 4, 1154, 56.8 );
setSeVolume( spep_2 + 5, 1154, 71 );
setSeVolume( spep_2 + 6, 1154, 85.2 );
setSeVolume( spep_2 + 7, 1154, 100 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 98;

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
stopSe( spep_3 + 0, se_1037, 0 );

--白フェード
entryFade( spep_3 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 94;

------------------------------------------------------
-- ビーム発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0,  beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 88,  beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0,  beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 88,  beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0,  beam, 0 );
setEffRotateKey( spep_4 + 88,  beam, 0 );
setEffAlphaKey( spep_4 + 0,  beam, 255 );
setEffAlphaKey( spep_4 + 88,  beam, 255 );
setEffAlphaKey( spep_4 + 89,  beam, 0 );
setEffAlphaKey( spep_4 + 90,  beam, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-3 + 20,  10012, 60, 0x100, -1, 0, 9.6, 282.4 );--ズオッ
setEffShake( spep_4-3 + 20, ctzuo, 60, 10 );
setEffMoveKey( spep_4-3 + 20, ctzuo, 9.6, 282.4 , 0 );
setEffMoveKey( spep_4-3 + 22, ctzuo, 26.1, 318.3 , 0 );
setEffMoveKey( spep_4-3 + 24, ctzuo, 22.9, 366.4 , 0 );
setEffMoveKey( spep_4-3 + 26, ctzuo, 39.5, 351.3 , 0 );
setEffMoveKey( spep_4-3 + 28, ctzuo, 24, 368.5 , 0 );
setEffMoveKey( spep_4-3 + 30, ctzuo, 40.8, 353.4 , 0 );
setEffMoveKey( spep_4-3 + 32, ctzuo, 25.2, 370.5 , 0 );
setEffMoveKey( spep_4-3 + 34, ctzuo, 41.9, 355.4 , 0 );
setEffMoveKey( spep_4-3 + 36, ctzuo, 26.4, 372.6 , 0 );
setEffMoveKey( spep_4-3 + 38, ctzuo, 43.2, 357.4 , 0 );
setEffMoveKey( spep_4-3 + 40, ctzuo, 27.5, 374.7 , 0 );
setEffMoveKey( spep_4-3 + 42, ctzuo, 44.4, 359.4 , 0 );
setEffMoveKey( spep_4-3 + 44, ctzuo, 28.6, 376.9 , 0 );
setEffMoveKey( spep_4-3 + 46, ctzuo, 45.6, 361.5 , 0 );
setEffMoveKey( spep_4-3 + 48, ctzuo, 29.7, 378.9 , 0 );
setEffMoveKey( spep_4-3 + 50, ctzuo, 46.9, 363.5 , 0 );
setEffMoveKey( spep_4-3 + 52, ctzuo, 30.9, 381 , 0 );
setEffMoveKey( spep_4-3 + 54, ctzuo, 48.1, 365.5 , 0 );
setEffMoveKey( spep_4-3 + 56, ctzuo, 32.1, 383.1 , 0 );
setEffMoveKey( spep_4-3 + 58, ctzuo, 49.3, 367.5 , 0 );
setEffMoveKey( spep_4-3 + 60, ctzuo, 33.2, 385.3 , 0 );
setEffMoveKey( spep_4-3 + 62, ctzuo, 50.5, 369.5 , 0 );
setEffMoveKey( spep_4-3 + 64, ctzuo, 34.3, 387.3 , 0 );
setEffMoveKey( spep_4-3 + 66, ctzuo, 51.7, 371.6 , 0 );
setEffMoveKey( spep_4-3 + 68, ctzuo, 35.5, 389.4 , 0 );
setEffMoveKey( spep_4-3 + 70, ctzuo, 52.9, 373.6 , 0 );
setEffMoveKey( spep_4-3 + 72, ctzuo, 36.6, 391.5 , 0 );
setEffMoveKey( spep_4-3 + 74, ctzuo, 54.2, 375.6 , 0 );
setEffMoveKey( spep_4-3 + 76, ctzuo, 37.8, 393.6 , 0 );
setEffMoveKey( spep_4-3 + 78, ctzuo, 100.8, 374.8 , 0 );
setEffMoveKey( spep_4-3 + 80, ctzuo, 146.9, 372.9 , 0 );

setEffScaleKey( spep_4-3 + 20, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_4-3 + 22, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_4-3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_4-3 + 26, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4-3 + 28, ctzuo, 2.74, 2.74 );
setEffScaleKey( spep_4-3 + 30, ctzuo, 2.75, 2.75 );
setEffScaleKey( spep_4-3 + 32, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4-3 + 34, ctzuo, 2.76, 2.76 );
setEffScaleKey( spep_4-3 + 36, ctzuo, 2.77, 2.77 );
setEffScaleKey( spep_4-3 + 38, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_4-3 + 40, ctzuo, 2.78, 2.78 );
setEffScaleKey( spep_4-3 + 42, ctzuo, 2.79, 2.79 );
setEffScaleKey( spep_4-3 + 44, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-3 + 46, ctzuo, 2.8, 2.8 );
setEffScaleKey( spep_4-3 + 48, ctzuo, 2.81, 2.81 );
setEffScaleKey( spep_4-3 + 50, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_4-3 + 52, ctzuo, 2.82, 2.82 );
setEffScaleKey( spep_4-3 + 54, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4-3 + 56, ctzuo, 2.83, 2.83 );
setEffScaleKey( spep_4-3 + 58, ctzuo, 2.84, 2.84 );
setEffScaleKey( spep_4-3 + 60, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_4-3 + 62, ctzuo, 2.85, 2.85 );
setEffScaleKey( spep_4-3 + 64, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_4-3 + 66, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4-3 + 68, ctzuo, 2.87, 2.87 );
setEffScaleKey( spep_4-3 + 70, ctzuo, 2.88, 2.88 );
setEffScaleKey( spep_4-3 + 72, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_4-3 + 74, ctzuo, 2.89, 2.89 );
setEffScaleKey( spep_4-3 + 76, ctzuo, 2.9, 2.9 );
setEffScaleKey( spep_4-3 + 78, ctzuo, 4.86, 4.86 );
setEffScaleKey( spep_4-3 + 80, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_4-3 + 20, ctzuo, 9.7 );
setEffRotateKey( spep_4-3 + 22, ctzuo, 18.4 );
setEffRotateKey( spep_4-3 + 24, ctzuo, 27.2 );
setEffRotateKey( spep_4-3 + 80, ctzuo, 27.2 );

setEffAlphaKey( spep_4-3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 76, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 78, ctzuo, 128 );
setEffAlphaKey( spep_4-3 + 80, ctzuo, 0 );

--SE
playSe( spep_4 + 14, 1027 );
playSe( spep_4 + 16, 1146 );
setSeVolume( spep_4 + 16, 1146, 79 );

--白フェード
entryFade( spep_4 + 12, 0, 5, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 88;

------------------------------------------------------
-- ビーム敵にヒット
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 100, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 100, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 100, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 100, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 100, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 100, hit_b, 255 );

--敵の動き
setDisp( spep_5  + 0, 1, 1 );
setDisp( spep_5  + 44, 1, 0 );

changeAnime( spep_5  + 0, 1, 105 );

setMoveKey( spep_5  + 0, 1, -149.9, -20 , 0 );
--setMoveKey( spep_5 -3 + 2, 1, -142.3, -17.8 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -125.6, -7.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -115.8, -8.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -97, 7.3 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -85, 11.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -64.1, 24.2 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -54.1, 29.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -27, 43.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -10.9, 45.7 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 14.2, 64.8 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 32.4, 72.5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 59.6, 88.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 75.8, 93.7 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 109, 115.2 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 161.2, 202.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 158.1, 197.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 117.9, 177.6 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 140.9, 208.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 142.7, 212.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 146, 216.9 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 137.7, 206.3 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 142.7, 212.3 , 0 );
setMoveKey( spep_5  + 44, 1, 140.4, 208.1 , 0 );

setScaleKey( spep_5  + 0, 1, 4.5, 4.5 );
--setScaleKey( spep_5 -3 + 2, 1, 4.43, 4.43 );
setScaleKey( spep_5 -3 + 4, 1, 4.35, 4.35 );
setScaleKey( spep_5 -3 + 6, 1, 4.25, 4.25 );
setScaleKey( spep_5 -3 + 8, 1, 4.14, 4.14 );
setScaleKey( spep_5 -3 + 10, 1, 4.01, 4.01 );
setScaleKey( spep_5 -3 + 12, 1, 3.87, 3.87 );
setScaleKey( spep_5 -3 + 14, 1, 3.72, 3.72 );
setScaleKey( spep_5 -3 + 16, 1, 3.55, 3.55 );
setScaleKey( spep_5 -3 + 18, 1, 3.36, 3.36 );
setScaleKey( spep_5 -3 + 20, 1, 3.16, 3.16 );
setScaleKey( spep_5 -3 + 22, 1, 2.95, 2.95 );
setScaleKey( spep_5 -3 + 24, 1, 2.72, 2.72 );
setScaleKey( spep_5 -3 + 26, 1, 2.48, 2.48 );
setScaleKey( spep_5 -3 + 28, 1, 2.22, 2.22 );
setScaleKey( spep_5 -3 + 30, 1, 1.44, 1.44 );
setScaleKey( spep_5 -3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_5 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 36, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 40, 1, 0.28, 0.28 );
setScaleKey( spep_5 -3 + 42, 1, 0.27, 0.27 );
setScaleKey( spep_5  + 44, 1, 0.27, 0.27 );

setRotateKey( spep_5  + 0, 1, 18 );
--setRotateKey( spep_5 -3 + 2, 1, 18 );
setRotateKey( spep_5 -3 + 4, 1, 17.8 );
setRotateKey( spep_5 -3 + 6, 1, 17.7 );
setRotateKey( spep_5 -3 + 8, 1, 17.6 );
setRotateKey( spep_5 -3 + 10, 1, 17.5 );
setRotateKey( spep_5 -3 + 12, 1, 17.3 );
setRotateKey( spep_5 -3 + 14, 1, 17.2 );
setRotateKey( spep_5 -3 + 16, 1, 17.1 );
setRotateKey( spep_5 -3 + 18, 1, 16.9 );
setRotateKey( spep_5 -3 + 20, 1, 16.8 );
setRotateKey( spep_5 -3 + 22, 1, 16.7 );
setRotateKey( spep_5 -3 + 24, 1, 16.5 );
setRotateKey( spep_5 -3 + 26, 1, 16.4 );
setRotateKey( spep_5 -3 + 28, 1, 16.2 );
setRotateKey( spep_5 -3 + 30, 1, 21 );
setRotateKey( spep_5 -3 + 32, 1, 18.5 );
setRotateKey( spep_5 -3 + 34, 1, 16.2 );
setRotateKey( spep_5 -3 + 36, 1, 14 );
setRotateKey( spep_5 -3 + 38, 1, 11.6 );
setRotateKey( spep_5 -3 + 40, 1, 11.6 );
setRotateKey( spep_5 -3 + 42, 1, 11.4 );
setRotateKey( spep_5 -3 + 44, 1, 11.2 );
setRotateKey( spep_5  + 44, 1, 11 );

--SE
playSe( spep_5 + 24, 1021 );

--白フェード
entryFade( spep_5 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 100;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_6 + 140, explosion, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_6 + 140, explosion, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, explosion, 0 );
setEffRotateKey( spep_6 + 140, explosion, 0 );
setEffAlphaKey( spep_6 + 0, explosion, 255 );
setEffAlphaKey( spep_6 + 140, explosion, 255 );

--SE
playSe( spep_6 + 12, 1023 );
playSe( spep_6 + 15, 1159 );
setSeVolume( spep_6 + 15, 1159, 79 );

--終わり
dealDamage( spep_6 + 30 );
endPhase( spep_6 + 130 );
end