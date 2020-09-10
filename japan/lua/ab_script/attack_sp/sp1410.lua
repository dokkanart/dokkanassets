--1019220:パンブーキン_ワイルドボンバー
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
SP_01=	155010	;--	突進
SP_02=	155011	;--	蹴り：キャラ
SP_03=	155012	;--	蹴り：背景
SP_04=	155013	;--	気溜め
SP_05=	155014	;--	気弾発射
SP_06=	155015	;--	ラスト爆発：敵に迫る気弾
SP_07=	155016	;--	ラスト爆発：背景
SP_08=	155017	;--	ラスト爆発：爆発エフェクト

--てき側
SP_01x=	155010	;--	突進	
SP_02x=	155018	;--	蹴り：キャラ(敵)
SP_03x=	155012	;--	蹴り：背景	
SP_04x=	155013	;--	気溜め	
SP_05x=	155014	;--	気弾発射	
SP_06x=	155015	;--	ラスト爆発：敵に迫る気弾	
SP_07x=	155016	;--	ラスト爆発：背景	
SP_08x=	155017	;--	ラスト爆発：爆発エフェクト	

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
playSe( spep_0 + 61, 8 );

--次の準備
spep_1 = spep_0+76;

------------------------------------------------------
-- 蹴り
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 86, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 86, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 86, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 86, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 86, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 86, kick_b, 255 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  921, 86, 0x80, -1, 0, 0, -20 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, -20 , 0 );
setEffMoveKey( spep_1 + 86, ryusen1, 0, -20 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.69, 1.05 );
setEffScaleKey( spep_1 + 86, ryusen1, 1.69, 1.05 );

setEffRotateKey( spep_1 + 0, ryusen1, 179 );
setEffRotateKey( spep_1 + 86, ryusen1, 179 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 84, ryusen1, 255 );
setEffAlphaKey( spep_1 + 85, ryusen1, 255 );
setEffAlphaKey( spep_1 + 86, ryusen1, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 40,  10020, 18, 0x100, -1, 0, -87.8, 334.2 );--バキッ
setEffShake( spep_1-3 + 40, ctbaki, 18, 10 );
setEffMoveKey( spep_1-3 + 40, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 54, ctbaki, -100.1, 342 , 0 );
setEffMoveKey( spep_1-3 + 58, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_1-3 + 40, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 42, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1-3 + 44, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 46, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1-3 + 48, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1-3 + 50, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 52, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1-3 + 54, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1-3 + 56, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1-3 + 58, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1-3 + 40, ctbaki, -12.4 );
setEffRotateKey( spep_1-3 + 58, ctbaki, -12.4 );

setEffAlphaKey( spep_1-3 + 40, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 54, ctbaki, 174 );
setEffAlphaKey( spep_1-3 + 56, ctbaki, 94 );
setEffAlphaKey( spep_1-3 + 58, ctbaki, 13 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 40,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 40, shuchusen2, 8, 20 );
setEffMoveKey( spep_1-3 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 40, shuchusen2, 1, 1 );
setEffScaleKey( spep_1-3 + 48, shuchusen2, 1, 1 );

setEffRotateKey( spep_1-3 + 40, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 40, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 42, shuchusen2, 228 );
setEffAlphaKey( spep_1-3 + 44, shuchusen2, 200 );
setEffAlphaKey( spep_1-3 + 46, shuchusen2, 173 );
setEffAlphaKey( spep_1-3 + 48, shuchusen2, 145 );

--敵の動き
setDisp( spep_1-3 +8, 1, 1 );
setDisp( spep_1-3 + 58, 1, 0 );
changeAnime( spep_1-3 + 8, 1, 118 );
changeAnime( spep_1-3 + 40, 1, 107 );

setMoveKey( spep_1-3 + 8, 1, 826, -47.3 , 0 );
setMoveKey( spep_1-3 + 10, 1, 801.1, -48.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, 774.3, -50.3 , 0 );
setMoveKey( spep_1-3 + 14, 1, 745.7, -51.8 , 0 );
setMoveKey( spep_1-3 + 16, 1, 715.3, -53.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 683, -54.8 , 0 );
setMoveKey( spep_1-3 + 20, 1, 631.6, -55.1 , 0 );
setMoveKey( spep_1-3 + 22, 1, 580.2, -55.3 , 0 );
setMoveKey( spep_1-3 + 24, 1, 528.8, -55.5 , 0 );
setMoveKey( spep_1-3 + 26, 1, 477.4, -55.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 425.9, -56 , 0 );
setMoveKey( spep_1-3 + 30, 1, 374.5, -56.3 , 0 );
setMoveKey( spep_1-3 + 32, 1, 323.1, -56.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 271.7, -56.7 , 0 );
setMoveKey( spep_1-3 + 36, 1, 220.3, -57 , 0 );
setMoveKey( spep_1-3 + 38, 1, 168.9, -57.3 , 0 );
setMoveKey( spep_1-3 + 39, 1, 168.9, -57.3 , 0 );

setMoveKey( spep_1-3 + 40, 1, 211.2, -84.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 258.4, -94.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 394.7, 9 , 0 );
setMoveKey( spep_1-3 + 46, 1, 444.9, -76.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, 495, -52.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 575.7, -56.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 664.4, -52.3 , 0 );
setMoveKey( spep_1-3 + 54, 1, 745.1, -52.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 833.8, -51.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 914.5, -55.7 , 0 );

setScaleKey( spep_1-3 + 8, 1, 3.27, 3.27 );
setScaleKey( spep_1-3 + 10, 1, 3.23, 3.23 );
setScaleKey( spep_1-3 + 12, 1, 3.19, 3.19 );
setScaleKey( spep_1-3 + 14, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 16, 1, 3.1, 3.1 );
setScaleKey( spep_1-3 + 18, 1, 3.05, 3.05 );
setScaleKey( spep_1-3 + 20, 1, 2.94, 2.94 );
setScaleKey( spep_1-3 + 22, 1, 2.83, 2.83 );
setScaleKey( spep_1-3 + 24, 1, 2.72, 2.72 );
setScaleKey( spep_1-3 + 26, 1, 2.61, 2.61 );
setScaleKey( spep_1-3 + 28, 1, 2.5, 2.5 );
setScaleKey( spep_1-3 + 30, 1, 2.39, 2.39 );
setScaleKey( spep_1-3 + 32, 1, 2.27, 2.27 );
setScaleKey( spep_1-3 + 34, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 36, 1, 2.05, 2.05 );
setScaleKey( spep_1-3 + 38, 1, 1.94, 1.94 );
setScaleKey( spep_1-3 + 39, 1, 1.94, 1.94 );

setScaleKey( spep_1-3 + 40, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 42, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 44, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 46, 1, 1.06, 1.06 );
setScaleKey( spep_1-3 + 48, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 50, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 52, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 54, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 56, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 58, 1, 1.83, 1.83 );

setRotateKey( spep_1-3 + 8, 1, 0 );
setRotateKey( spep_1-3 + 39, 1, 0 );

setRotateKey( spep_1-3 + 40, 1, -55 );
setRotateKey( spep_1-3 + 42, 1, -54.5 );
setRotateKey( spep_1-3 + 44, 1, -53.9 );
setRotateKey( spep_1-3 + 46, 1, -53.4 );
setRotateKey( spep_1-3 + 48, 1, -52.8 );
setRotateKey( spep_1-3 + 50, 1, -52.3 );
setRotateKey( spep_1-3 + 52, 1, -51.7 );
setRotateKey( spep_1-3 + 54, 1, -51.2 );
setRotateKey( spep_1-3 + 56, 1, -50.7 );
setRotateKey( spep_1-3 + 58, 1, -50.1 );

--SE
playSe( spep_1 + 38, 1003 );
playSe( spep_1 + 43, 1010 );
playSe( spep_1 + 47, 1110 );

--白フェード
entryFade( spep_1 + 78, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2 = spep_1+86;

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
entryFade( spep_2 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 96, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 96, tame, 255 );
setEffAlphaKey( spep_3 + 97, tame, 0 );
setEffAlphaKey( spep_3 + 98, tame, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_3 + 12  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_3 + 12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +24, 190006, 72, 0x100, -1, 0, -50, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_3 +24,  ctgogo,  -50,  510);
setEffMoveKey(  spep_3 +96,  ctgogo,  -50,  510);

setEffAlphaKey( spep_3 +24, ctgogo, 0 );
setEffAlphaKey( spep_3 + 25, ctgogo, 255 );
setEffAlphaKey( spep_3 + 26, ctgogo, 255 );
setEffAlphaKey( spep_3 + 90, ctgogo, 255 );
setEffAlphaKey( spep_3 + 92, ctgogo, 191 );
setEffAlphaKey( spep_3 + 94, ctgogo, 112 );
setEffAlphaKey( spep_3 + 96, ctgogo, 64 );

setEffRotateKey(  spep_3 +24,  ctgogo,  0);
setEffRotateKey(  spep_3 +96,  ctgogo,  0);

setEffScaleKey(  spep_3 +24,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +86,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_3 +96,  ctgogo, 1.07, 1.07 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 96, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen3, 96, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 + 96, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 96, shuchusen3, 255 );

--SE
playSe( spep_3 + 8, 49 );
playSe( spep_3 + 12, 1018 );
playSe( spep_3 + 22, 1037 );
setSeVolume( spep_3 + 22, 1037, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 92, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, kidan, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_4 + 80, kidan, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan, 0 );
setEffRotateKey( spep_4 + 80, kidan, 0 );
setEffAlphaKey( spep_4 + 0, kidan, 255 );
setEffAlphaKey( spep_4 + 80, kidan, 255 );
setEffAlphaKey( spep_4 + 81, kidan, 0 );
setEffAlphaKey( spep_4 + 82, kidan, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-3 + 30,  10012, 24, 0x100, -1, 0, 58.7, 239.5 );--ズオッ

setEffMoveKey( spep_4-3 + 30, ctzuo, 58.7, 239.5 , 0 );
setEffMoveKey( spep_4-3 + 32, ctzuo, 107, 332.8 , 0 );
setEffMoveKey( spep_4-3 + 34, ctzuo, 111.7, 336.2 , 0 );
setEffMoveKey( spep_4-3 + 36, ctzuo, 125.9, 347.5 , 0 );
setEffMoveKey( spep_4-3 + 38, ctzuo, 130.7, 350.9 , 0 );
setEffMoveKey( spep_4-3 + 40, ctzuo, 144.9, 362.3 , 0 );
setEffMoveKey( spep_4-3 + 42, ctzuo, 149.7, 365.6 , 0 );
setEffMoveKey( spep_4-3 + 44, ctzuo, 163.9, 377 , 0 );
setEffMoveKey( spep_4-3 + 46, ctzuo, 168.7, 380.4 , 0 );
setEffMoveKey( spep_4-3 + 48, ctzuo, 188, 389.2 , 0 );
setEffMoveKey( spep_4-3 + 50, ctzuo, 197.9, 390.1 , 0 );
setEffMoveKey( spep_4-3 + 52, ctzuo, 217.3, 399 , 0 );
setEffMoveKey( spep_4-3 + 54, ctzuo, 227.2, 399.9 , 0 );

setEffScaleKey( spep_4-3 + 30, ctzuo, 1.38, 1.38 );
setEffScaleKey( spep_4-3 + 32, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_4-3 + 54, ctzuo, 2.4, 2.4 );

setEffRotateKey( spep_4-3 + 30, ctzuo, 25 );
setEffRotateKey( spep_4-3 + 54, ctzuo, 25 );

setEffAlphaKey( spep_4-3 + 30, ctzuo, 128 );
setEffAlphaKey( spep_4-3 + 32, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 46, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 48, ctzuo, 198 );
setEffAlphaKey( spep_4-3 + 50, ctzuo, 140 );
setEffAlphaKey( spep_4-3 + 52, ctzuo, 83 );
setEffAlphaKey( spep_4-3 + 54, ctzuo, 26 );

--集中線
shuchusen4 = entryEffectLife( spep_4-3 + 28,  906, 50, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4-3 + 28, shuchusen4, 50, 20 );
setEffMoveKey( spep_4-3 + 28, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4-3 + 28, shuchusen4, 1.5, 1.2 );
setEffScaleKey( spep_4-3 + 78, shuchusen4, 1.5, 1.2 );

setEffRotateKey( spep_4-3 + 28, shuchusen4, 0 );
setEffRotateKey( spep_4-3 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_4-3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 78, shuchusen4, 255 );

--SE
playSe( spep_4 + 29, 1021 );
playSe( spep_4 + 29, 1027 );
playSe( spep_4 + 61, 1022 );
setSeVolume( spep_4 + 61, 1022, 0 );
setSeVolume( spep_4 + 72, 1022, 0 );
setSeVolume( spep_4 + 73, 1022, 6.3 );
setSeVolume( spep_4 + 74, 1022, 12.6 );
setSeVolume( spep_4 + 75, 1022, 18.9 );
setSeVolume( spep_4 + 76, 1022, 25.2 );
setSeVolume( spep_4 + 77, 1022, 31.5 );
setSeVolume( spep_4 + 78, 1022, 37.8 );
setSeVolume( spep_4 + 79, 1022, 44.1 );
setSeVolume( spep_4 + 80, 1022, 50.4 );
setSeVolume( spep_4 + 81, 1022, 56.7 );
setSeVolume( spep_4 + 82, 1022, 63 );
setSeVolume( spep_4 + 83, 1022, 69.3 );
setSeVolume( spep_4 + 84, 1022, 75.6 );
setSeVolume( spep_4 + 85, 1022, 81.9 );
setSeVolume( spep_4 + 86, 1022, 88.2 );
setSeVolume( spep_4 + 87, 1022, 94.5 );
setSeVolume( spep_4 + 88, 1022, 100.8 );
setSeVolume( spep_4 + 89, 1022, 107.1 );
setSeVolume( spep_4 + 90, 1022, 113.4 );
setSeVolume( spep_4 + 91, 1022, 119.7 );
setSeVolume( spep_4 + 92, 1022, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 72, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 72, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 72, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 72, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 180, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 180, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 70, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 0.7, 0 , 0 );
setMoveKey( spep_5 + 2, 1, 0.8, 0 , 0 );
setMoveKey( spep_5 + 4, 1, 0.9, 0 , 0 );
setMoveKey( spep_5 + 6, 1, 1, 0 , 0 );
setMoveKey( spep_5 + 8, 1, 1.2, 0.1 , 0 );
setMoveKey( spep_5 + 10, 1, 1.4, 0.1 , 0 );
setMoveKey( spep_5 + 12, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_5 + 14, 1, 1.9, 0.1 , 0 );
setMoveKey( spep_5 + 16, 1, 2.2, 0.2 , 0 );
setMoveKey( spep_5 + 18, 1, 2.5, 0.2 , 0 );
setMoveKey( spep_5 + 20, 1, 2.9, 0.3 , 0 );
setMoveKey( spep_5 + 22, 1, 3.3, 0.3 , 0 );
setMoveKey( spep_5 + 24, 1, 3.7, 0.4 , 0 );
setMoveKey( spep_5 + 26, 1, 4.2, 0.4 , 0 );
setMoveKey( spep_5 + 28, 1, 4.7, 0.5 , 0 );
setMoveKey( spep_5 + 30, 1, 5.2, 0.6 , 0 );
setMoveKey( spep_5 + 32, 1, 5.8, 0.6 , 0 );
setMoveKey( spep_5 + 34, 1, 6.4, 0.7 , 0 );
setMoveKey( spep_5 + 36, 1, 7, 0.8 , 0 );
setMoveKey( spep_5 + 38, 1, 7.7, 0.9 , 0 );
setMoveKey( spep_5 + 40, 1, 8.4, 1 , 0 );
setMoveKey( spep_5 + 42, 1, 9.1, 1.1 , 0 );
setMoveKey( spep_5 + 44, 1, 9.9, 1.2 , 0 );
setMoveKey( spep_5 + 46, 1, 10.7, 1.3 , 0 );
setMoveKey( spep_5 + 48, 1, 11.6, 1.4 , 0 );
setMoveKey( spep_5 + 50, 1, 12.5, 1.6 , 0 );
setMoveKey( spep_5 + 52, 1, 13.4, 1.7 , 0 );
setMoveKey( spep_5 + 54, 1, 14.4, 1.9 , 0 );
setMoveKey( spep_5 + 56, 1, 15.4, 2 , 0 );
setMoveKey( spep_5 + 58, 1, 22, 3.2 , 0 );
setMoveKey( spep_5 + 60, 1, 30.1, -4.4 , 0 );
setMoveKey( spep_5 + 62, 1, 39.1, -11.9 , 0 );
setMoveKey( spep_5 + 64, 1, 59.8, -17.5 , 0 );
setMoveKey( spep_5 + 66, 1, 66.4, -16.8 , 0 );
setMoveKey( spep_5 + 68, 1, 73.1, -16.1 , 0 );
setMoveKey( spep_5 + 70, 1, 80, -15.5 , 0 );

setScaleKey( spep_5 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_5 + 2, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 4, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 6, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 8, 1, 0.09, 0.09 );
setScaleKey( spep_5 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_5 + 12, 1, 0.11, 0.11 );
setScaleKey( spep_5 + 14, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_5 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 24, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 26, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_5 + 32, 1, 0.38, 0.38 );
setScaleKey( spep_5 + 34, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 36, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_5 + 42, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 46, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 50, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 52, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 54, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 56, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 58, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 60, 1, 1.92, 1.92 );
setScaleKey( spep_5 + 62, 1, 2.49, 2.49 );
setScaleKey( spep_5 + 64, 1, 3.78, 3.78 );
setScaleKey( spep_5 + 66, 1, 4.18, 4.18 );
setScaleKey( spep_5 + 68, 1, 4.58, 4.58 );
setScaleKey( spep_5 + 70, 1, 4.99, 4.99 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 70, 1, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 70, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen5, 50, 20 );
setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 70, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 0, shuchusen5, 180 );
setEffRotateKey( spep_5 + 70, shuchusen5, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 70, shuchusen5, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 70, 0x100, -1, 0, -70.7, 404.1 );--ズドドドッ
setEffShake( spep_5 + 0, ctzudodo, 70, 10 );
setEffMoveKey( spep_5 + 0, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 2, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 4, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 6, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 8, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 10, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 12, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 14, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 16, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 18, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 20, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 22, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 24, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 26, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 28, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 30, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 32, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 34, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 36, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 38, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 40, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 42, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 44, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 46, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 48, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 50, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 52, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 54, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 56, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 58, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 60, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 62, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 64, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 66, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 68, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 70, ctzudodo, -68.5, 387 , 0 );

setEffScaleKey( spep_5 + 0, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_5 + 70, ctzudodo, 1.9, 1.9 );

setEffRotateKey( spep_5 + 0, ctzudodo, 3.7 );
setEffRotateKey( spep_5 + 70, ctzudodo, 3.7 );

setEffAlphaKey( spep_5 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 70, ctzudodo, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 64, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 68;

------------------------------------------------------
-- ラスト爆発：爆発エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 108, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 108, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 108, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 108, finish, 255 );

--SE
playSe( spep_6 + 29, 1023 );
playSe( spep_6 + 31, 1159 );
setSeVolume( spep_6 + 31, 1159, 56 );

--終わり
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 100 );
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
playSe( spep_0 + 61, 8 );

--次の準備
spep_1 = spep_0+76;

------------------------------------------------------
-- 蹴り
------------------------------------------------------

-- ** エフェクト等 ** --
kick_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 86, kick_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_f, 0 );
setEffRotateKey( spep_1 + 86, kick_f, 0 );
setEffAlphaKey( spep_1 + 0, kick_f, 255 );
setEffAlphaKey( spep_1 + 86, kick_f, 255 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 86, kick_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, kick_b, 0 );
setEffRotateKey( spep_1 + 86, kick_b, 0 );
setEffAlphaKey( spep_1 + 0, kick_b, 255 );
setEffAlphaKey( spep_1 + 86, kick_b, 255 );

--流線
ryusen1 = entryEffectLife( spep_1 + 0,  921, 86, 0x80, -1, 0, 0, -20 );

setEffMoveKey( spep_1 + 0, ryusen1, 0, -20 , 0 );
setEffMoveKey( spep_1 + 86, ryusen1, 0, -20 , 0 );

setEffScaleKey( spep_1 + 0, ryusen1, 1.69, 1.05 );
setEffScaleKey( spep_1 + 86, ryusen1, 1.69, 1.05 );

setEffRotateKey( spep_1 + 0, ryusen1, 179 );
setEffRotateKey( spep_1 + 86, ryusen1, 179 );

setEffAlphaKey( spep_1 + 0, ryusen1, 255 );
setEffAlphaKey( spep_1 + 84, ryusen1, 255 );
setEffAlphaKey( spep_1 + 85, ryusen1, 255 );
setEffAlphaKey( spep_1 + 86, ryusen1, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_1-3 + 40,  10020, 18, 0x100, -1, 0, -87.8, 334.2 );--バキッ
setEffShake( spep_1-3 + 40, ctbaki, 18, 10 );
setEffMoveKey( spep_1-3 + 40, ctbaki, -87.8, 334.2 , 0 );
setEffMoveKey( spep_1-3 + 42, ctbaki, -108.5, 347.3 , 0 );
setEffMoveKey( spep_1-3 + 44, ctbaki, -87.8, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 46, ctbaki, -87.7, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 48, ctbaki, -101, 342.6 , 0 );
setEffMoveKey( spep_1-3 + 50, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 52, ctbaki, -87.6, 334.1 , 0 );
setEffMoveKey( spep_1-3 + 54, ctbaki, -100.1, 342 , 0 );
setEffMoveKey( spep_1-3 + 58, ctbaki, -87.7, 334.1 , 0 );

setEffScaleKey( spep_1-3 + 40, ctbaki, 1.6, 1.6 );
setEffScaleKey( spep_1-3 + 42, ctbaki, 2.88, 2.88 );
setEffScaleKey( spep_1-3 + 44, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_1-3 + 46, ctbaki, 1.94, 1.94 );
setEffScaleKey( spep_1-3 + 48, ctbaki, 1.87, 1.87 );
setEffScaleKey( spep_1-3 + 50, ctbaki, 1.8, 1.8 );
setEffScaleKey( spep_1-3 + 52, ctbaki, 1.73, 1.73 );
setEffScaleKey( spep_1-3 + 54, ctbaki, 1.74, 1.74 );
setEffScaleKey( spep_1-3 + 56, ctbaki, 1.75, 1.75 );
setEffScaleKey( spep_1-3 + 58, ctbaki, 1.76, 1.76 );

setEffRotateKey( spep_1-3 + 40, ctbaki, -12.4 );
setEffRotateKey( spep_1-3 + 58, ctbaki, -12.4 );

setEffAlphaKey( spep_1-3 + 40, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 52, ctbaki, 255 );
setEffAlphaKey( spep_1-3 + 54, ctbaki, 174 );
setEffAlphaKey( spep_1-3 + 56, ctbaki, 94 );
setEffAlphaKey( spep_1-3 + 58, ctbaki, 13 );

--集中線
shuchusen2 = entryEffectLife( spep_1-3 + 40,  906, 8, 0x100, -1, 0, 0, 0 );
setEffShake( spep_1-3 + 40, shuchusen2, 8, 20 );
setEffMoveKey( spep_1-3 + 40, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_1-3 + 48, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_1-3 + 40, shuchusen2, 1, 1 );
setEffScaleKey( spep_1-3 + 48, shuchusen2, 1, 1 );

setEffRotateKey( spep_1-3 + 40, shuchusen2, 180 );
setEffRotateKey( spep_1-3 + 48, shuchusen2, 180 );

setEffAlphaKey( spep_1-3 + 40, shuchusen2, 255 );
setEffAlphaKey( spep_1-3 + 42, shuchusen2, 228 );
setEffAlphaKey( spep_1-3 + 44, shuchusen2, 200 );
setEffAlphaKey( spep_1-3 + 46, shuchusen2, 173 );
setEffAlphaKey( spep_1-3 + 48, shuchusen2, 145 );

--敵の動き
setDisp( spep_1-3 +8, 1, 1 );
setDisp( spep_1-3 + 58, 1, 0 );
changeAnime( spep_1-3 + 8, 1, 118 );
changeAnime( spep_1-3 + 40, 1, 107 );

setMoveKey( spep_1-3 + 8, 1, 826, -47.3 , 0 );
setMoveKey( spep_1-3 + 10, 1, 801.1, -48.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, 774.3, -50.3 , 0 );
setMoveKey( spep_1-3 + 14, 1, 745.7, -51.8 , 0 );
setMoveKey( spep_1-3 + 16, 1, 715.3, -53.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 683, -54.8 , 0 );
setMoveKey( spep_1-3 + 20, 1, 631.6, -55.1 , 0 );
setMoveKey( spep_1-3 + 22, 1, 580.2, -55.3 , 0 );
setMoveKey( spep_1-3 + 24, 1, 528.8, -55.5 , 0 );
setMoveKey( spep_1-3 + 26, 1, 477.4, -55.8 , 0 );
setMoveKey( spep_1-3 + 28, 1, 425.9, -56 , 0 );
setMoveKey( spep_1-3 + 30, 1, 374.5, -56.3 , 0 );
setMoveKey( spep_1-3 + 32, 1, 323.1, -56.5 , 0 );
setMoveKey( spep_1-3 + 34, 1, 271.7, -56.7 , 0 );
setMoveKey( spep_1-3 + 36, 1, 220.3, -57 , 0 );
setMoveKey( spep_1-3 + 38, 1, 168.9, -57.3 , 0 );
setMoveKey( spep_1-3 + 39, 1, 168.9, -57.3 , 0 );

setMoveKey( spep_1-3 + 40, 1, 211.2, -84.9 , 0 );
setMoveKey( spep_1-3 + 42, 1, 258.4, -94.2 , 0 );
setMoveKey( spep_1-3 + 44, 1, 394.7, 9 , 0 );
setMoveKey( spep_1-3 + 46, 1, 444.9, -76.8 , 0 );
setMoveKey( spep_1-3 + 48, 1, 495, -52.7 , 0 );
setMoveKey( spep_1-3 + 50, 1, 575.7, -56.5 , 0 );
setMoveKey( spep_1-3 + 52, 1, 664.4, -52.3 , 0 );
setMoveKey( spep_1-3 + 54, 1, 745.1, -52.1 , 0 );
setMoveKey( spep_1-3 + 56, 1, 833.8, -51.9 , 0 );
setMoveKey( spep_1-3 + 58, 1, 914.5, -55.7 , 0 );

setScaleKey( spep_1-3 + 8, 1, 3.27, 3.27 );
setScaleKey( spep_1-3 + 10, 1, 3.23, 3.23 );
setScaleKey( spep_1-3 + 12, 1, 3.19, 3.19 );
setScaleKey( spep_1-3 + 14, 1, 3.15, 3.15 );
setScaleKey( spep_1-3 + 16, 1, 3.1, 3.1 );
setScaleKey( spep_1-3 + 18, 1, 3.05, 3.05 );
setScaleKey( spep_1-3 + 20, 1, 2.94, 2.94 );
setScaleKey( spep_1-3 + 22, 1, 2.83, 2.83 );
setScaleKey( spep_1-3 + 24, 1, 2.72, 2.72 );
setScaleKey( spep_1-3 + 26, 1, 2.61, 2.61 );
setScaleKey( spep_1-3 + 28, 1, 2.5, 2.5 );
setScaleKey( spep_1-3 + 30, 1, 2.39, 2.39 );
setScaleKey( spep_1-3 + 32, 1, 2.27, 2.27 );
setScaleKey( spep_1-3 + 34, 1, 2.16, 2.16 );
setScaleKey( spep_1-3 + 36, 1, 2.05, 2.05 );
setScaleKey( spep_1-3 + 38, 1, 1.94, 1.94 );
setScaleKey( spep_1-3 + 39, 1, 1.94, 1.94 );

setScaleKey( spep_1-3 + 40, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 42, 1, 0.84, 0.84 );
setScaleKey( spep_1-3 + 44, 1, 0.93, 0.93 );
setScaleKey( spep_1-3 + 46, 1, 1.06, 1.06 );
setScaleKey( spep_1-3 + 48, 1, 1.18, 1.18 );
setScaleKey( spep_1-3 + 50, 1, 1.31, 1.31 );
setScaleKey( spep_1-3 + 52, 1, 1.44, 1.44 );
setScaleKey( spep_1-3 + 54, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 56, 1, 1.7, 1.7 );
setScaleKey( spep_1-3 + 58, 1, 1.83, 1.83 );

setRotateKey( spep_1-3 + 8, 1, 0 );
setRotateKey( spep_1-3 + 39, 1, 0 );

setRotateKey( spep_1-3 + 40, 1, -55 );
setRotateKey( spep_1-3 + 42, 1, -54.5 );
setRotateKey( spep_1-3 + 44, 1, -53.9 );
setRotateKey( spep_1-3 + 46, 1, -53.4 );
setRotateKey( spep_1-3 + 48, 1, -52.8 );
setRotateKey( spep_1-3 + 50, 1, -52.3 );
setRotateKey( spep_1-3 + 52, 1, -51.7 );
setRotateKey( spep_1-3 + 54, 1, -51.2 );
setRotateKey( spep_1-3 + 56, 1, -50.7 );
setRotateKey( spep_1-3 + 58, 1, -50.1 );

--SE
playSe( spep_1 + 38, 1003 );
playSe( spep_1 + 43, 1010 );
playSe( spep_1 + 47, 1110 );

--白フェード
entryFade( spep_1 + 78, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 88, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2 = spep_1+86;

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
entryFade( spep_2 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- 気溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_3 + 96, tame, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tame, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 96, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 96, tame, 255 );
setEffAlphaKey( spep_3 + 97, tame, 0 );
setEffAlphaKey( spep_3 + 98, tame, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_3 + 12  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_3 + 12  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_3 +24, 190006, 72, 0x100, -1, 0, -50, 510);-- ゴゴゴゴ
setEffMoveKey(  spep_3 +24,  ctgogo,  -50,  510);
setEffMoveKey(  spep_3 +96,  ctgogo,  -50,  510);

setEffAlphaKey( spep_3 +24, ctgogo, 0 );
setEffAlphaKey( spep_3 + 25, ctgogo, 255 );
setEffAlphaKey( spep_3 + 26, ctgogo, 255 );
setEffAlphaKey( spep_3 + 90, ctgogo, 255 );
setEffAlphaKey( spep_3 + 92, ctgogo, 191 );
setEffAlphaKey( spep_3 + 94, ctgogo, 112 );
setEffAlphaKey( spep_3 + 96, ctgogo, 64 );

setEffRotateKey(  spep_3 +24,  ctgogo,  0);
setEffRotateKey(  spep_3 +96,  ctgogo,  0);

setEffScaleKey(  spep_3 +24,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +86,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_3 +96,  ctgogo, -1.07, 1.07 );

--集中線
shuchusen3 = entryEffectLife( spep_3 + 0,  906, 96, 0x100, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, shuchusen3, 96, 20 );
setEffMoveKey( spep_3 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen3, 1, 1 );
setEffScaleKey( spep_3 + 96, shuchusen3, 1, 1 );

setEffRotateKey( spep_3 + 0, shuchusen3, 0 );
setEffRotateKey( spep_3 + 96, shuchusen3, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_3 + 96, shuchusen3, 255 );

--SE
playSe( spep_3 + 8, 49 );
playSe( spep_3 + 12, 1018 );
playSe( spep_3 + 22, 1037 );
setSeVolume( spep_3 + 22, 1037, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3 + 92, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
kidan = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kidan, 0, 0, 0 );
setEffMoveKey( spep_4 + 80, kidan, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_4 + 80, kidan, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan, 0 );
setEffRotateKey( spep_4 + 80, kidan, 0 );
setEffAlphaKey( spep_4 + 0, kidan, 255 );
setEffAlphaKey( spep_4 + 80, kidan, 255 );
setEffAlphaKey( spep_4 + 81, kidan, 0 );
setEffAlphaKey( spep_4 + 82, kidan, 0 );

--文字エントリー
ctzuo = entryEffectLife( spep_4-3 + 30,  10012, 24, 0x100, -1, 0, -58.7, 239.5 );--ズオッ

setEffMoveKey( spep_4-3 + 30, ctzuo, -58.7, 239.5 , 0 );
setEffMoveKey( spep_4-3 + 32, ctzuo, -107, 332.8 , 0 );
setEffMoveKey( spep_4-3 + 34, ctzuo, -111.7, 336.2 , 0 );
setEffMoveKey( spep_4-3 + 36, ctzuo, -125.9, 347.5 , 0 );
setEffMoveKey( spep_4-3 + 38, ctzuo, -130.7, 350.9 , 0 );
setEffMoveKey( spep_4-3 + 40, ctzuo, -144.9, 362.3 , 0 );
setEffMoveKey( spep_4-3 + 42, ctzuo, -149.7, 365.6 , 0 );
setEffMoveKey( spep_4-3 + 44, ctzuo, -163.9, 377 , 0 );
setEffMoveKey( spep_4-3 + 46, ctzuo, -168.7, 380.4 , 0 );
setEffMoveKey( spep_4-3 + 48, ctzuo, -188, 389.2 , 0 );
setEffMoveKey( spep_4-3 + 50, ctzuo, -197.9, 390.1 , 0 );
setEffMoveKey( spep_4-3 + 52, ctzuo, -217.3, 399 , 0 );
setEffMoveKey( spep_4-3 + 54, ctzuo, -227.2, 399.9 , 0 );

setEffScaleKey( spep_4-3 + 30, ctzuo, 1.38, 1.38 );
setEffScaleKey( spep_4-3 + 32, ctzuo, 2.4, 2.4 );
setEffScaleKey( spep_4-3 + 54, ctzuo, 2.4, 2.4 );

setEffRotateKey( spep_4-3 + 30, ctzuo, -25 );
setEffRotateKey( spep_4-3 + 54, ctzuo, -25 );

setEffAlphaKey( spep_4-3 + 30, ctzuo, 128 );
setEffAlphaKey( spep_4-3 + 32, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 46, ctzuo, 255 );
setEffAlphaKey( spep_4-3 + 48, ctzuo, 198 );
setEffAlphaKey( spep_4-3 + 50, ctzuo, 140 );
setEffAlphaKey( spep_4-3 + 52, ctzuo, 83 );
setEffAlphaKey( spep_4-3 + 54, ctzuo, 26 );

--集中線
shuchusen4 = entryEffectLife( spep_4-3 + 28,  906, 50, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4-3 + 28, shuchusen4, 50, 20 );
setEffMoveKey( spep_4-3 + 28, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4-3 + 78, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4-3 + 28, shuchusen4, 1.5, 1.2 );
setEffScaleKey( spep_4-3 + 78, shuchusen4, 1.5, 1.2 );

setEffRotateKey( spep_4-3 + 28, shuchusen4, 0 );
setEffRotateKey( spep_4-3 + 78, shuchusen4, 0 );

setEffAlphaKey( spep_4-3 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4-3 + 78, shuchusen4, 255 );

--SE
playSe( spep_4 + 29, 1021 );
playSe( spep_4 + 29, 1027 );
playSe( spep_4 + 61, 1022 );
setSeVolume( spep_4 + 61, 1022, 0 );
setSeVolume( spep_4 + 72, 1022, 0 );
setSeVolume( spep_4 + 73, 1022, 6.3 );
setSeVolume( spep_4 + 74, 1022, 12.6 );
setSeVolume( spep_4 + 75, 1022, 18.9 );
setSeVolume( spep_4 + 76, 1022, 25.2 );
setSeVolume( spep_4 + 77, 1022, 31.5 );
setSeVolume( spep_4 + 78, 1022, 37.8 );
setSeVolume( spep_4 + 79, 1022, 44.1 );
setSeVolume( spep_4 + 80, 1022, 50.4 );
setSeVolume( spep_4 + 81, 1022, 56.7 );
setSeVolume( spep_4 + 82, 1022, 63 );
setSeVolume( spep_4 + 83, 1022, 69.3 );
setSeVolume( spep_4 + 84, 1022, 75.6 );
setSeVolume( spep_4 + 85, 1022, 81.9 );
setSeVolume( spep_4 + 86, 1022, 88.2 );
setSeVolume( spep_4 + 87, 1022, 94.5 );
setSeVolume( spep_4 + 88, 1022, 100.8 );
setSeVolume( spep_4 + 89, 1022, 107.1 );
setSeVolume( spep_4 + 90, 1022, 113.4 );
setSeVolume( spep_4 + 91, 1022, 119.7 );
setSeVolume( spep_4 + 92, 1022, 126 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_4 + 72, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 80;
------------------------------------------------------
-- 気弾発射
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 72, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 72, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 72, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 72, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 180, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 180, hit_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 70, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, 0.7, 0 , 0 );
setMoveKey( spep_5 + 2, 1, 0.8, 0 , 0 );
setMoveKey( spep_5 + 4, 1, 0.9, 0 , 0 );
setMoveKey( spep_5 + 6, 1, 1, 0 , 0 );
setMoveKey( spep_5 + 8, 1, 1.2, 0.1 , 0 );
setMoveKey( spep_5 + 10, 1, 1.4, 0.1 , 0 );
setMoveKey( spep_5 + 12, 1, 1.6, 0.1 , 0 );
setMoveKey( spep_5 + 14, 1, 1.9, 0.1 , 0 );
setMoveKey( spep_5 + 16, 1, 2.2, 0.2 , 0 );
setMoveKey( spep_5 + 18, 1, 2.5, 0.2 , 0 );
setMoveKey( spep_5 + 20, 1, 2.9, 0.3 , 0 );
setMoveKey( spep_5 + 22, 1, 3.3, 0.3 , 0 );
setMoveKey( spep_5 + 24, 1, 3.7, 0.4 , 0 );
setMoveKey( spep_5 + 26, 1, 4.2, 0.4 , 0 );
setMoveKey( spep_5 + 28, 1, 4.7, 0.5 , 0 );
setMoveKey( spep_5 + 30, 1, 5.2, 0.6 , 0 );
setMoveKey( spep_5 + 32, 1, 5.8, 0.6 , 0 );
setMoveKey( spep_5 + 34, 1, 6.4, 0.7 , 0 );
setMoveKey( spep_5 + 36, 1, 7, 0.8 , 0 );
setMoveKey( spep_5 + 38, 1, 7.7, 0.9 , 0 );
setMoveKey( spep_5 + 40, 1, 8.4, 1 , 0 );
setMoveKey( spep_5 + 42, 1, 9.1, 1.1 , 0 );
setMoveKey( spep_5 + 44, 1, 9.9, 1.2 , 0 );
setMoveKey( spep_5 + 46, 1, 10.7, 1.3 , 0 );
setMoveKey( spep_5 + 48, 1, 11.6, 1.4 , 0 );
setMoveKey( spep_5 + 50, 1, 12.5, 1.6 , 0 );
setMoveKey( spep_5 + 52, 1, 13.4, 1.7 , 0 );
setMoveKey( spep_5 + 54, 1, 14.4, 1.9 , 0 );
setMoveKey( spep_5 + 56, 1, 15.4, 2 , 0 );
setMoveKey( spep_5 + 58, 1, 22, 3.2 , 0 );
setMoveKey( spep_5 + 60, 1, 30.1, -4.4 , 0 );
setMoveKey( spep_5 + 62, 1, 39.1, -11.9 , 0 );
setMoveKey( spep_5 + 64, 1, 59.8, -17.5 , 0 );
setMoveKey( spep_5 + 66, 1, 66.4, -16.8 , 0 );
setMoveKey( spep_5 + 68, 1, 73.1, -16.1 , 0 );
setMoveKey( spep_5 + 70, 1, 80, -15.5 , 0 );

setScaleKey( spep_5 + 0, 1, 0.05, 0.05 );
setScaleKey( spep_5 + 2, 1, 0.06, 0.06 );
setScaleKey( spep_5 + 4, 1, 0.07, 0.07 );
setScaleKey( spep_5 + 6, 1, 0.08, 0.08 );
setScaleKey( spep_5 + 8, 1, 0.09, 0.09 );
setScaleKey( spep_5 + 10, 1, 0.1, 0.1 );
setScaleKey( spep_5 + 12, 1, 0.11, 0.11 );
setScaleKey( spep_5 + 14, 1, 0.13, 0.13 );
setScaleKey( spep_5 + 16, 1, 0.15, 0.15 );
setScaleKey( spep_5 + 18, 1, 0.17, 0.17 );
setScaleKey( spep_5 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_5 + 22, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 24, 1, 0.25, 0.25 );
setScaleKey( spep_5 + 26, 1, 0.28, 0.28 );
setScaleKey( spep_5 + 28, 1, 0.31, 0.31 );
setScaleKey( spep_5 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_5 + 32, 1, 0.38, 0.38 );
setScaleKey( spep_5 + 34, 1, 0.42, 0.42 );
setScaleKey( spep_5 + 36, 1, 0.46, 0.46 );
setScaleKey( spep_5 + 38, 1, 0.5, 0.5 );
setScaleKey( spep_5 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_5 + 42, 1, 0.59, 0.59 );
setScaleKey( spep_5 + 44, 1, 0.64, 0.64 );
setScaleKey( spep_5 + 46, 1, 0.69, 0.69 );
setScaleKey( spep_5 + 48, 1, 0.75, 0.75 );
setScaleKey( spep_5 + 50, 1, 0.8, 0.8 );
setScaleKey( spep_5 + 52, 1, 0.86, 0.86 );
setScaleKey( spep_5 + 54, 1, 0.92, 0.92 );
setScaleKey( spep_5 + 56, 1, 0.99, 0.99 );
setScaleKey( spep_5 + 58, 1, 1.4, 1.4 );
setScaleKey( spep_5 + 60, 1, 1.92, 1.92 );
setScaleKey( spep_5 + 62, 1, 2.49, 2.49 );
setScaleKey( spep_5 + 64, 1, 3.78, 3.78 );
setScaleKey( spep_5 + 66, 1, 4.18, 4.18 );
setScaleKey( spep_5 + 68, 1, 4.58, 4.58 );
setScaleKey( spep_5 + 70, 1, 4.99, 4.99 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 70, 1, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_5 + 0,  906, 70, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 0, shuchusen5, 50, 20 );
setEffMoveKey( spep_5 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_5 + 70, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen5, 1, 1 );
setEffScaleKey( spep_5 + 70, shuchusen5, 1, 1 );

setEffRotateKey( spep_5 + 0, shuchusen5, 180 );
setEffRotateKey( spep_5 + 70, shuchusen5, 180 );

setEffAlphaKey( spep_5 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_5 + 70, shuchusen5, 255 );

--文字エントリー
ctzudodo = entryEffectLife( spep_5 + 0,  10014, 70, 0x100, -1, 0, -70.7, 404.1 );--ズドドドッ
setEffShake( spep_5 + 0, ctzudodo, 70, 10 );
setEffMoveKey( spep_5 + 0, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 2, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 4, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 6, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 8, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 10, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 12, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 14, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 16, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 18, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 20, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 22, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 24, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 26, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 28, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 30, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 32, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 34, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 36, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 38, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 40, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 42, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 44, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 46, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 48, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 50, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 52, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 54, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 56, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 58, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 60, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 62, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 64, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 66, ctzudodo, -68.5, 387 , 0 );
setEffMoveKey( spep_5 + 68, ctzudodo, -70.7, 404.1 , 0 );
setEffMoveKey( spep_5 + 70, ctzudodo, -68.5, 387 , 0 );

setEffScaleKey( spep_5 + 0, ctzudodo, 1.9, 1.9 );
setEffScaleKey( spep_5 + 70, ctzudodo, 1.9, 1.9 );

setEffRotateKey( spep_5 + 0, ctzudodo, -67.7 );
setEffRotateKey( spep_5 + 70, ctzudodo, -67.7 );

setEffAlphaKey( spep_5 + 0, ctzudodo, 255 );
setEffAlphaKey( spep_5 + 70, ctzudodo, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5 + 64, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 68;

------------------------------------------------------
-- ラスト爆発：爆発エフェクト
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_6 + 108, finish, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_6 + 108, finish, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish, 0 );
setEffRotateKey( spep_6 + 108, finish, 0 );
setEffAlphaKey( spep_6 + 0, finish, 255 );
setEffAlphaKey( spep_6 + 108, finish, 255 );

--SE
playSe( spep_6 + 29, 1023 );
playSe( spep_6 + 31, 1159 );
setSeVolume( spep_6 + 31, 1159, 56 );

--終わり
dealDamage( spep_6 + 10 );
endPhase( spep_6 + 100 );
end


