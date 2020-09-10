--1020010:トッポ(プライド・トルーパーズ)_ジャスティスフォーメーション
--sp_effect_a2_00136

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
SP_01=	155546	;--	3人　構え
SP_02=	155547	;--	トッポ　指差し
SP_03=	155548	;--	降下キック　トッポのみ
SP_04=	155549	;--	キック　HIT
SP_05=	155550	;--	降下キック　二人
SP_06=	155551	;--	キック　ＨＩＴ　二人
SP_07=	155553	;--	二人攻撃　ビーム溜め～発動
SP_08=	155554	;--	ビーム着弾
SP_09=	155555	;--	気弾　溜め
SP_10=	155556	;--	遠景　爆発(3人佇む込み)
SP_11=	155557	;--	背景のみ
SP_12=	155558	;--	背景(エフェクト込み)
SP_13=	155559	;--	背景のみ

--エフェクト(てき)
SP_01x=	155546	;--	3人　構え	
SP_02x=	155547	;--	トッポ　指差し	
SP_03x=	155548	;--	降下キック　トッポのみ	
SP_04x=	155549	;--	キック　HIT	
SP_05x=	155550	;--	降下キック　二人	
SP_06x=	155552	;--	キック　ＨＩＴ　二人	(敵)
SP_07x=	155553	;--	二人攻撃　ビーム溜め～発動	
SP_08x=	155554	;--	ビーム着弾	
SP_09x=	155555	;--	気弾　溜め	
SP_10x=	155556	;--	遠景　爆発(3人佇む込み)	
SP_11x=	155557	;--	背景のみ	
SP_12x=	155558	;--	背景(エフェクト込み)	
SP_13x=	155559	;--	背景のみ	

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
-- 3人　構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 10,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 10, shuchusen1, 98, 20 );
setEffMoveKey( spep_0-3 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 10, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_0-3 + 10, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+18  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+18  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +30, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +30,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +102,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +30, ctgogo, 0 );
setEffAlphaKey( spep_0 + 31, ctgogo, 255 );
setEffAlphaKey( spep_0 + 32, ctgogo, 255 );
setEffAlphaKey( spep_0 + 96, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 191 );
setEffAlphaKey( spep_0 + 100, ctgogo, 112 );
setEffAlphaKey( spep_0 + 102, ctgogo, 64 );

setEffRotateKey(  spep_0 +30,  ctgogo,  0);
setEffRotateKey(  spep_0 +102,  ctgogo,  0);

setEffScaleKey(  spep_0 +30,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +92,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +102,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 30, 1018 );
setSeVolume( spep_0 + 30, 1018, 79 );
playSe( spep_0 + 30, 1062 );
setSeVolume( spep_0 + 30, 1062, 85 );
playSe( spep_0 + 30, 1033 );
setSeVolume( spep_0 + 30, 1033, 79 );
playSe( spep_0 + 30, 1004 );
playSe( spep_0 + 32, 1003 );
se_1017 = playSe( spep_0 + 60, 1017 );
setSeVolume( spep_0 + 60, 1017, 75 );
se_1023 = playSe( spep_0 + 70, 1023 );
setSeVolume( spep_0 + 70, 1023, 67 );

--白フェード
entryFade( spep_0 , 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 112, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1=spep_0+110;
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

stopSe( spep_1 , se_1017, 0 );
stopSe( spep_1 , se_1023, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- トッポ　指差し
------------------------------------------------------
-- ** エフェクト等 ** --
point = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, point, 0, 0, 0 );
setEffMoveKey( spep_2 + 68, point, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, point, 1.0, 1.0 );
setEffScaleKey( spep_2 + 68, point, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, point, 0 );
setEffRotateKey( spep_2 + 68, point, 0 );
setEffAlphaKey( spep_2 + 0, point, 255 );
setEffAlphaKey( spep_2 + 68, point, 255 );
setEffAlphaKey( spep_2 + 69, point, 0 );
setEffAlphaKey( spep_2 + 70, point, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景


--SE
SE0=playSe( spep_2 + 14, 1003 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

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
--SE
playSe( spep_2 + 48, 43 );
se_1116 = playSe( spep_2+10 + 56, 1116 );
se_1183 = playSe( spep_2+10 + 56, 1183 );
setSeVolume( spep_2+10 + 56, 1183, 71 );
playSe( spep_2+10 + 56, 1182 );
setSeVolume( spep_2+10 + 56, 1182, 63 );

--白フェード
entryFade( spep_2+60 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3=spep_2+68;

------------------------------------------------------
-- 降下キック　トッポのみ
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_3 + 36, kick, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_3 + 36, kick, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick, 0 );
setEffRotateKey( spep_3 + 36, kick, 0 );
setEffAlphaKey( spep_3 + 0, kick, 255 );
setEffAlphaKey( spep_3 + 36, kick, 255 );
setEffAlphaKey( spep_3 + 37, kick, 0 );
setEffAlphaKey( spep_3 + 38, kick, 0 );

--SE
playSe( spep_3 + 32, 1001 );
setSeVolume( spep_3 + 32, 1001, 66 );
playSe( spep_3 + 32, 1010 );
playSe( spep_3 + 34, 1110 );
setSeVolume( spep_3 + 34, 1110, 79 );

stopSe( spep_3 + 27, se_1116, 21 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4=spep_3+36;
------------------------------------------------------
-- キック　HIT
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 46, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 46, kick_f, 255 );
setEffAlphaKey( spep_4 + 47, kick_f, 0 );
setEffAlphaKey( spep_4 + 48, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_11, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 46, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 46, kick_b, 255 );
setEffAlphaKey( spep_4 + 47, kick_b, 0 );
setEffAlphaKey( spep_4 + 48, kick_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_4 + 2,  10020, 26, 0x100, -1, 0, -77.4, -117 );
setEffShake( spep_4 + 2, ctbaki, 26, 10 );
setEffMoveKey( spep_4 + 2, ctbaki, -77.4, -117 , 0 );
setEffMoveKey( spep_4 + 4, ctbaki, -80.4, -195.7 , 0 );
setEffMoveKey( spep_4 + 6, ctbaki, -67.1, -284.4 , 0 );
setEffMoveKey( spep_4 + 8, ctbaki, -75.2, -292.4 , 0 );
setEffMoveKey( spep_4 + 10, ctbaki, -63.3, -289.8 , 0 );
setEffMoveKey( spep_4 + 12, ctbaki, -57, -310.2 , 0 );
setEffMoveKey( spep_4 + 14, ctbaki, -57.1, -301.4 , 0 );
setEffMoveKey( spep_4 + 16, ctbaki, -45.3, -318.1 , 0 );
setEffMoveKey( spep_4 + 18, ctbaki, -48.2, -320.5 , 0 );
setEffMoveKey( spep_4 + 20, ctbaki, -32.9, -329.1 , 0 );
setEffMoveKey( spep_4 + 22, ctbaki, -38.2, -342.7 , 0 );
setEffMoveKey( spep_4 + 24, ctbaki, -12.5, -376.5 , 0 );
setEffMoveKey( spep_4 + 26, ctbaki, -24.4, -402.6 , 0 );
setEffMoveKey( spep_4 + 28, ctbaki, -17.9, -426.5 , 0 );

setEffScaleKey( spep_4 + 2, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_4 + 4, ctbaki, 1.36, 1.36 );
setEffScaleKey( spep_4 + 6, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_4 + 8, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4 + 10, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_4 + 12, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_4 + 14, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_4 + 16, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_4 + 18, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_4 + 20, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_4 + 22, ctbaki, 2.74, 2.74 );
setEffScaleKey( spep_4 + 24, ctbaki, 3.07, 3.07 );
setEffScaleKey( spep_4 + 26, ctbaki, 3.4, 3.4 );
setEffScaleKey( spep_4 + 28, ctbaki, 3.73, 3.73 );

setEffRotateKey( spep_4 + 2, ctbaki, -3 );
setEffRotateKey( spep_4 + 4, ctbaki, -3 );
setEffRotateKey( spep_4 + 6, ctbaki, -2.9 );
setEffRotateKey( spep_4 + 10, ctbaki, -2.9 );
setEffRotateKey( spep_4 + 12, ctbaki, -3 );
setEffRotateKey( spep_4 + 28, ctbaki, -3 );

setEffAlphaKey( spep_4 + 2, ctbaki, 255 );
setEffAlphaKey( spep_4 + 20, ctbaki, 255 );
setEffAlphaKey( spep_4 + 22, ctbaki, 191 );
setEffAlphaKey( spep_4 + 24, ctbaki, 128 );
setEffAlphaKey( spep_4 + 26, ctbaki, 64 );
setEffAlphaKey( spep_4 + 28, ctbaki, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 2,  906, 18, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 2, shuchusen2, 18, 20 );
setEffMoveKey( spep_4 + 2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 20, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 2, shuchusen2, 2, 2 );
setEffScaleKey( spep_4 + 20, shuchusen2, 2, 2 );

setEffRotateKey( spep_4 + 2, shuchusen2, 0 );
setEffRotateKey( spep_4 + 20, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 2, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 12, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 14, shuchusen2, 191 );
setEffAlphaKey( spep_4 + 16, shuchusen2, 128 );
setEffAlphaKey( spep_4 + 18, shuchusen2, 64 );
setEffAlphaKey( spep_4 + 20, shuchusen2, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3+ 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 26.3, 5.3 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 6, -21.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 52.2, -4.4 , 0 );
setMoveKey( spep_4-3 + 6, 1, 44.6, -40.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, 28.3, -2 , 0 );
setMoveKey( spep_4-3 + 10, 1, 29.1, -26.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 35.3, -58.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 26.2, -4.4 , 0 );
setMoveKey( spep_4-3 + 16, 1, 168, -134.1 , 0 );
setMoveKey( spep_4-3 + 18, 1, 259.4, -201.6 , 0 );
setMoveKey( spep_4-3 + 20, 1, 335, -260.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 394.3, -305.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 445.5, -348.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 493.8, -383.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 533.8, -416.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 570.9, -444.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, 605.3, -470.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 634.8, -495.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 663.3, -515.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 688.3, -535.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 711.4, -553.6 , 0 );
setMoveKey( spep_4-3 + 42, 1, 732.5, -570.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 751.8, -585.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 769.4, -598.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 785.3, -611.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.1, 1.1 );
--setScaleKey( spep_4-3 + 2, 1, 1.32, 1.32 );
setScaleKey( spep_4-3 + 4, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 6, 1, 1.14, 1.14 );
setScaleKey( spep_4-3 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 14, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 16, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 18, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 20, 1, 1.14, 1.14 );
setScaleKey( spep_4-3 + 22, 1, 1.14, 1.14 );
setScaleKey( spep_4-3 + 24, 1, 1.15, 1.15 );
setScaleKey( spep_4-3 + 26, 1, 1.15, 1.15 );
setScaleKey( spep_4-3 + 28, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 30, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 32, 1, 1.17, 1.17 );
setScaleKey( spep_4-3 + 34, 1, 1.17, 1.17 );
setScaleKey( spep_4-3 + 36, 1, 1.18, 1.18 );
setScaleKey( spep_4-3 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_4-3 + 44, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 48, 1, 1.19, 1.19 );

setRotateKey( spep_4 + 0, 1, -4 );
--setRotateKey( spep_4-3 + 2, 1, -3.4 );
setRotateKey( spep_4-3 + 4, 1, -2.9 );
setRotateKey( spep_4-3 + 6, 1, -2.3 );
setRotateKey( spep_4-3 + 8, 1, -1.7 );
setRotateKey( spep_4-3 + 10, 1, -1.1 );
setRotateKey( spep_4-3 + 12, 1, -0.6 );
setRotateKey( spep_4-3 + 14, 1, 0 );
setRotateKey( spep_4-3 + 16, 1, 6.9 );
setRotateKey( spep_4-3 + 18, 1, 12 );
setRotateKey( spep_4-3 + 20, 1, 16.1 );
setRotateKey( spep_4-3 + 22, 1, 19.5 );
setRotateKey( spep_4-3 + 24, 1, 22.5 );
setRotateKey( spep_4-3 + 26, 1, 25.1 );
setRotateKey( spep_4-3 + 28, 1, 27.5 );
setRotateKey( spep_4-3 + 30, 1, 29.5 );
setRotateKey( spep_4-3 + 32, 1, 31.4 );
setRotateKey( spep_4-3 + 34, 1, 33.1 );
setRotateKey( spep_4-3 + 36, 1, 34.7 );
setRotateKey( spep_4-3 + 38, 1, 36.1 );
setRotateKey( spep_4-3 + 40, 1, 37.4 );
setRotateKey( spep_4-3 + 42, 1, 38.6 );
setRotateKey( spep_4-3 + 44, 1, 39.7 );
setRotateKey( spep_4-3 + 46, 1, 40.7 );
setRotateKey( spep_4-3 + 48, 1, 41.6 );

--SE
se_1072 = playSe( spep_4 + 32, 1072 );

stopSe( spep_4 + 1, se_1183, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5=spep_4+46;
------------------------------------------------------
-- 降下キック　二人
------------------------------------------------------
-- ** エフェクト等 ** --
kick2 = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick2, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, kick2, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 70, kick2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick2, 0 );
setEffRotateKey( spep_5 + 70, kick2, 0 );
setEffAlphaKey( spep_5 + 0, kick2, 255 );
setEffAlphaKey( spep_5 + 70, kick2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 68, 0x100, -1, 0, 0, 38.9 );
setEffShake( spep_5 + 0, shuchusen3, 68, 20 );
setEffMoveKey( spep_5 + 0, shuchusen3, 0, 38.9 , 0 );
setEffMoveKey( spep_5 + 68, shuchusen3, 0, 38.9 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.75, 1.4 );
setEffScaleKey( spep_5 + 68, shuchusen3, 1.75, 1.4 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 68, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 68, shuchusen3, 255 );

--SE
se_1183 = playSe( spep_5 + 12, 1183 );
setSeVolume( spep_5 + 12, 1183, 32 );
se_0008 = playSe( spep_5 + 38, 8 );
setSeVolume( spep_5 + 38, 8, 60 );
playSe( spep_5 + 46, 1232 );
setSeVolume( spep_5 + 46, 1232, 0 );
setSeVolume( spep_5 + 47, 1232, 16.67 );
setSeVolume( spep_5 + 48, 1232, 33.33 );
setSeVolume( spep_5 + 49, 1232, 50 );
setSeVolume( spep_5 + 50, 1232, 66.67 );
setSeVolume( spep_5 + 51, 1232, 83.33 );
setSeVolume( spep_5 + 52, 1232, 100.00 );
playSe( spep_5 + 66, 1009 );
playSe( spep_5 + 66, 1187 );
setSeVolume( spep_5 + 66, 1187, 58 );
playSe( spep_5 + 68, 1001 );
setSeVolume( spep_5 + 68, 1001, 65 );

stopSe( spep_5 + 25, se_1072, 23 );
stopSe( spep_5 + 68, se_1183, 0 );
stopSe( spep_5 + 68, se_0008, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5+62 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6=spep_5+70;
------------------------------------------------------
-- キック　ＨＩＴ　二人
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_6 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 80, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick2_f, 0 );
setEffRotateKey( spep_6 + 80, kick2_f, 0 );
setEffAlphaKey( spep_6 + 0, kick2_f, 255 );
setEffAlphaKey( spep_6 + 80, kick2_f, 255 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_6 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 80, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick2_b, 0 );
setEffRotateKey( spep_6 + 80, kick2_b, 0 );
setEffAlphaKey( spep_6 + 0, kick2_b, 255 );
setEffAlphaKey( spep_6 + 80, kick2_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6 + 0,  906, 28, 0x100, -1, 0, 0, 38.8 );
setEffShake( spep_6 + 0, shuchusen4, 28, 20 );
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 38.8 , 0 );
setEffMoveKey( spep_6 + 4, shuchusen4, 0, 38.8 , 0 );
setEffMoveKey( spep_6 + 6, shuchusen4, 0, 38.9 , 0 );
setEffMoveKey( spep_6 + 16, shuchusen4, 0, 38.9 , 0 );
setEffMoveKey( spep_6 + 18, shuchusen4, 0, 38.8 , 0 )
setEffMoveKey( spep_6 + 28, shuchusen4, 0, 38.8 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1.5, 1.2 );
setEffScaleKey( spep_6 + 28, shuchusen4, 1.5, 1.2 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 28, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 20, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 22, shuchusen4, 191 );
setEffAlphaKey( spep_6 + 24, shuchusen4, 128 );
setEffAlphaKey( spep_6 + 26, shuchusen4, 64 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 78, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );
changeAnime( spep_6-3 + 48, 1, 106 );
changeAnime( spep_6-3 + 54, 1, 108 );

setMoveKey( spep_6 + 0, 1, 37.4, -11.4 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 39.4, -14.9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 36.8, -14.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, 36.8, -14.4 , 0 );
setMoveKey( spep_6-3 + 14, 1, 44.4, -37.7 , 0 );
setMoveKey( spep_6-3 + 16, 1, 29.1, -31.4 , 0 );
setMoveKey( spep_6-3 + 18, 1, 41.9, 1.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, 21.5, 4.4 , 0 );
setMoveKey( spep_6-3 + 22, 1, 54.6, -35.8 , 0 );
setMoveKey( spep_6-3 + 24, 1, 81.1, -159.6 , 0 );
setMoveKey( spep_6-3 + 26, 1, 131.9, -233.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 152.6, -364 , 0 );
setMoveKey( spep_6-3 + 30, 1, 202.1, -444.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 219, -524.7 , 0 );
setMoveKey( spep_6-3 + 34, 1, 226.1, -566 , 0 );
setMoveKey( spep_6-3 + 36, 1, 213.2, -545.6 , 0 );
setMoveKey( spep_6-3 + 38, 1, 186.1, -510.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 166, -475.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, 162.1, -492.8 , 0 );
setMoveKey( spep_6-3 + 44, 1, 171.8, -529.1 , 0 );
setMoveKey( spep_6-3 + 47, 1, 191.1, -597.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, 169.8, -460.9 , 0 );
setMoveKey( spep_6-3 + 50, 1, 150.2, -406.6 , 0 );
setMoveKey( spep_6-3 + 53, 1, 155.7, -413.9 , 0 );
setMoveKey( spep_6-3 + 54, 1, 125.2, -451.7 , 0 );
setMoveKey( spep_6-3 + 56, 1, 119.4, -439.6 , 0 );
setMoveKey( spep_6-3 + 58, 1, 114.7, -454.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, 115.3, -408.5 , 0 );
setMoveKey( spep_6-3 + 62, 1, 115.8, -457.6 , 0 );
setMoveKey( spep_6-3 + 64, 1, 116.3, -409.8 , 0 );
setMoveKey( spep_6-3 + 66, 1, 116.6, -457.8 , 0 );
setMoveKey( spep_6-3 + 68, 1, 117, -421.7 , 0 );
setMoveKey( spep_6-3 + 70, 1, 117, -447 , 0 );
setMoveKey( spep_6-3 + 72, 1, 117, -426.7 , 0 );
setMoveKey( spep_6-3 + 74, 1, 117, -444 , 0 );
setMoveKey( spep_6-3 + 76, 1, 117, -426.7 , 0 );
setMoveKey( spep_6-3 + 78, 1, 117, -444.4 , 0 );

setScaleKey( spep_6 + 0, 1, 1.32, 1.32 );
setScaleKey( spep_6 + 2, 1, 1.21, 1.21 );
setScaleKey( spep_6 + 4, 1, 1.1, 1.1 );
setScaleKey( spep_6-3 + 78, 1, 1.1, 1.1 );

setRotateKey( spep_6 + 0, 1, 35 );
setRotateKey( spep_6-3 + 22, 1, 35 );
setRotateKey( spep_6-3 + 24, 1, 38.7 );
setRotateKey( spep_6-3 + 26, 1, 42.5 );
setRotateKey( spep_6-3 + 28, 1, 46.2 );
setRotateKey( spep_6-3 + 30, 1, 50 );
setRotateKey( spep_6-3 + 32, 1, 53.7 );
setRotateKey( spep_6-3 + 34, 1, 57.5 );
setRotateKey( spep_6-3 + 36, 1, 61.2 );
setRotateKey( spep_6-3 + 38, 1, 65 );
setRotateKey( spep_6-3 + 40, 1, 68.7 );
setRotateKey( spep_6-3 + 42, 1, 72.4 );
setRotateKey( spep_6-3 + 44, 1, 76.2 );
setRotateKey( spep_6-3 + 47, 1, 79.9 );
setRotateKey( spep_6-3 + 48, 1, 28.9 );
setRotateKey( spep_6-3 + 50, 1, 28.9 );
setRotateKey( spep_6-3 + 53, 1, 28.8 );
setRotateKey( spep_6-3 + 54, 1, 81.8 );
setRotateKey( spep_6-3 + 78, 1, 81.8 );

--文字エントリー
ctdogon = entryEffectLife( spep_6-3 + 46,  10018, 26, 0x100, -1, 0, 82, -392.2 );
setEffShake( spep_6-3 + 46, ctdogon, 26, 10 );
setEffMoveKey( spep_6-3 + 46, ctdogon, 82, -392.2 , 0 );
setEffMoveKey( spep_6-3 + 48, ctdogon, 45.8, -240.9 , 0 );
setEffMoveKey( spep_6-3 + 50, ctdogon, 26, -99.5 , 0 );
setEffMoveKey( spep_6-3 + 52, ctdogon, 6.9, -96.3 , 0 );
setEffMoveKey( spep_6-3 + 54, ctdogon, 7.7, -82.6 , 0 );
setEffMoveKey( spep_6-3 + 56, ctdogon, 3, -91.7 , 0 );
setEffMoveKey( spep_6-3 + 58, ctdogon, -8.1, -71.8 , 0 );
setEffMoveKey( spep_6-3 + 60, ctdogon, -7.3, -77.3 , 0 );
setEffMoveKey( spep_6-3 + 62, ctdogon, -21.2, -68.6 , 0 );
setEffMoveKey( spep_6-3 + 64, ctdogon, -16.9, -66 , 0 );
setEffMoveKey( spep_6-3 + 66, ctdogon, -27.5, -57.6 , 0 );
setEffMoveKey( spep_6-3 + 68, ctdogon, -7, -69.3 , 0 );
setEffMoveKey( spep_6-3 + 70, ctdogon, -24.1, -73.4 , 0 );
setEffMoveKey( spep_6-3 + 72, ctdogon, -22.9, -75.3 , 0 );

setEffScaleKey( spep_6-3 + 46, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_6-3 + 48, ctdogon, 1.77, 1.77 );
setEffScaleKey( spep_6-3 + 50, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_6-3 + 52, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_6-3 + 54, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_6-3 + 56, ctdogon, 3, 3 );
setEffScaleKey( spep_6-3 + 58, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_6-3 + 60, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_6-3 + 62, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_6-3 + 64, ctdogon, 3.13, 3.13 );
setEffScaleKey( spep_6-3 + 66, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_6-3 + 68, ctdogon, 3.99, 3.99 );
setEffScaleKey( spep_6-3 + 70, ctdogon, 4.42, 4.42 );
setEffScaleKey( spep_6-3 + 72, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_6-3 + 46, ctdogon, -30 );
setEffRotateKey( spep_6-3 + 48, ctdogon, -30 );
setEffRotateKey( spep_6-3 + 50, ctdogon, -29.9 );
setEffRotateKey( spep_6-3 + 54, ctdogon, -29.9 );
setEffRotateKey( spep_6-3 + 56, ctdogon, -30 );
setEffRotateKey( spep_6-3 + 72, ctdogon, -30 );

setEffAlphaKey( spep_6-3 + 46, ctdogon, 255 );
setEffAlphaKey( spep_6-3 + 64, ctdogon, 255 );
setEffAlphaKey( spep_6-3 + 66, ctdogon, 191 );
setEffAlphaKey( spep_6-3 + 68, ctdogon, 128 );
setEffAlphaKey( spep_6-3 + 70, ctdogon, 64 );
setEffAlphaKey( spep_6-3 + 72, ctdogon, 0 );

--SE
playSe( spep_6 + 46, 1025 );
playSe( spep_6 + 46, 19 );
se_1144 = playSe( spep_6 + 54, 1144 );
setSeVolume( spep_6 + 54, 1144, 0 );
se_1154 = playSe( spep_6 + 78, 1154 );
setSeVolume( spep_6 + 78, 1154, 0 );
se_1212 = playSe( spep_6 + 78, 1212 );
setSeVolume( spep_6 + 78, 1212, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6+72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7=spep_6+80;
------------------------------------------------------
-- 二人攻撃　ビーム溜め～発動
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 80, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_7 + 80, beam, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 80, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 80, beam, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_7 + 0,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 0, shuchusen5, 78, 20 );
setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 78, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen5, 1.4, 1.4 );
setEffScaleKey( spep_7 + 78, shuchusen5, 1.4, 1.4 );

setEffRotateKey( spep_7 + 0, shuchusen5, 0 );
setEffRotateKey( spep_7 + 78, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 78, shuchusen5, 255 );

--SE
setSeVolume( spep_7 + 6, 1144, 0 );
setSeVolume( spep_7 + 7, 1144, 8.33 );
setSeVolume( spep_7 + 8, 1144, 16.67 );
setSeVolume( spep_7 + 9, 1144, 25 );
setSeVolume( spep_7 + 10, 1144, 33.33 );
setSeVolume( spep_7 + 11, 1144, 41.67 );
setSeVolume( spep_7 + 12, 1144, 50 );

setSeVolume( spep_7 + 7, 1154, 0 );
setSeVolume( spep_7 + 8, 1154, 50 );
setSeVolume( spep_7 + 9, 1154, 100 );

setSeVolume( spep_7 + 54, 1212, 0);
setSeVolume( spep_7 + 55, 1212, 1.72 );
setSeVolume( spep_7 + 56, 1212, 3.45 );
setSeVolume( spep_7 + 57, 1212, 5.17 );
setSeVolume( spep_7 + 58, 1212, 6.9 );
setSeVolume( spep_7 + 59, 1212, 8.62 );
setSeVolume( spep_7 + 60, 1212, 10.34 );
setSeVolume( spep_7 + 61, 1212, 12.07 );
setSeVolume( spep_7 + 62, 1212, 13.79 );
setSeVolume( spep_7 + 63, 1212, 15.52 );
setSeVolume( spep_7 + 64, 1212, 17.24 );
setSeVolume( spep_7 + 65, 1212, 18.97 );
setSeVolume( spep_7 + 66, 1212, 20.69 );
setSeVolume( spep_7 + 67, 1212, 22.41 );
setSeVolume( spep_7 + 68, 1212, 24.14 );
setSeVolume( spep_7 + 69, 1212, 25.86 );
setSeVolume( spep_7 + 70, 1212, 27.59 );
setSeVolume( spep_7 + 71, 1212, 29.31 );
setSeVolume( spep_7 + 72, 1212, 31.03 );
setSeVolume( spep_7 + 73, 1212, 32.76 );
setSeVolume( spep_7 + 74, 1212, 34.48 );
setSeVolume( spep_7 + 75, 1212, 36.21 );
setSeVolume( spep_7 + 76, 1212, 37.93 );
setSeVolume( spep_7 + 77, 1212, 39.66 );
setSeVolume( spep_7 + 78, 1212, 41.38 );
setSeVolume( spep_7 + 79, 1212, 43.1 );
setSeVolume( spep_7 + 80, 1212, 44.83 );
setSeVolume( spep_7 + 81, 1212, 46.55 );
setSeVolume( spep_7 + 82, 1212, 48.28 );
setSeVolume( spep_7 + 83, 1212, 50 );

se_1262 = playSe( spep_7 + 8, 1262 );
playSe( spep_7 + 50, 1027 );
se_1177 = playSe( spep_7 + 50, 1177 );
setSeVolume( spep_7 + 50, 1177, 60 );
se_1236 = playSe( spep_7 + 50, 1236 );
setSeVolume( spep_7 + 50, 1236, 122 );

stopSe( spep_7 + 66, se_1144, 0 );
stopSe( spep_7 + 64, se_1154, 0 );
stopSe( spep_7 + 64, se_1262, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_7+72 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8=spep_7+80;
------------------------------------------------------
-- ビーム着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 70, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 70, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 70, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 70, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 70, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 70, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 70, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 70, hit_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 68, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, 35.3, -365.6 , 0 );
setMoveKey( spep_8 + 2, 1, 28.2, -367.9 , 0 );
setMoveKey( spep_8 + 4, 1, 25.3, -368.9 , 0 );
setMoveKey( spep_8 + 6, 1, 22.9, -371.1 , 0 );
setMoveKey( spep_8 + 8, 1, 20.7, -369.9 , 0 );
setMoveKey( spep_8 + 10, 1, 19.4, -374 , 0 );
setMoveKey( spep_8 + 12, 1, 18.9, -367.5 , 0 );
setMoveKey( spep_8 + 14, 1, 18.5, -375.2 , 0 );
setMoveKey( spep_8 + 16, 1, 18.1, -366.8 , 0 );
setMoveKey( spep_8 + 18, 1, 17.9, -374.9 , 0 );
setMoveKey( spep_8 + 20, 1, 17.6, -367.2 , 0 );
setMoveKey( spep_8 + 22, 1, 17.4, -375 , 0 );
setMoveKey( spep_8 + 24, 1, 17.2, -369.2 , 0 );
setMoveKey( spep_8 + 26, 1, 16.9, -374.8 , 0 );
setMoveKey( spep_8 + 28, 1, 16.8, -368.4 , 0 );
setMoveKey( spep_8 + 30, 1, 16.6, -367.3 , 0 );
setMoveKey( spep_8 + 32, 1, 54.5, -363.1 , 0 );
setMoveKey( spep_8 + 34, 1, 2.9, -343.3 , 0 );
setMoveKey( spep_8 + 36, 1, 1.9, -378.2 , 0 );
setMoveKey( spep_8 + 38, 1, 38.5, -363.5 , 0 );
setMoveKey( spep_8 + 40, 1, 9.3, -386.3 , 0 );
setMoveKey( spep_8 + 42, 1, 9.9, -361.1 , 0 );
setMoveKey( spep_8 + 44, 1, 33, -382.4 , 0 );
setMoveKey( spep_8 + 46, 1, 13.3, -388.8 , 0 );
setMoveKey( spep_8 + 48, 1, 23.8, -369.5 , 0 );
setMoveKey( spep_8 + 50, 1, 24.1, -375.6 , 0 );
setMoveKey( spep_8 + 52, 1, 24.3, -362.1 , 0 );
setMoveKey( spep_8 + 54, 1, 24.5, -375.4 , 0 );
setMoveKey( spep_8 + 56, 1, 24.8, -363.5 , 0 );
setMoveKey( spep_8 + 58, 1, 25, -375.3 , 0 );
setMoveKey( spep_8 + 60, 1, 26, -361.6 , 0 );
setMoveKey( spep_8 + 62, 1, 26.5, -374.8 , 0 );
setMoveKey( spep_8 + 64, 1, 26.8, -364.8 , 0 );
setMoveKey( spep_8 + 66, 1, 26.9, -374.6 , 0 );
setMoveKey( spep_8 + 68, 1, 27.2, -368.4 , 0 );

setScaleKey( spep_8 + 0, 1, 1.87, 1.87 );
setScaleKey( spep_8 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 4, 1, 1.34, 1.34 );
setScaleKey( spep_8 + 6, 1, 1.21, 1.21 );
setScaleKey( spep_8 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_8 + 10, 1, 1.03, 1.03 );
setScaleKey( spep_8 + 12, 1, 1, 1 );
setScaleKey( spep_8 + 14, 1, 0.98, 0.98 );
setScaleKey( spep_8 + 16, 1, 0.96, 0.96 );
setScaleKey( spep_8 + 18, 1, 0.95, 0.95 );
setScaleKey( spep_8 + 20, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 22, 1, 0.92, 0.92 );
setScaleKey( spep_8 + 24, 1, 0.91, 0.91 );
setScaleKey( spep_8 + 26, 1, 0.9, 0.9 );
setScaleKey( spep_8 + 28, 1, 0.89, 0.89 );
setScaleKey( spep_8 + 30, 1, 0.88, 0.88 );
setScaleKey( spep_8 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_8 + 34, 1, 1.18, 1.18 );
setScaleKey( spep_8 + 36, 1, 1.13, 1.13 );
setScaleKey( spep_8 + 38, 1, 1.1, 1.1 );
setScaleKey( spep_8 + 40, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_8 + 46, 1, 1.24, 1.24 );
setScaleKey( spep_8 + 48, 1, 1.26, 1.26 );
setScaleKey( spep_8 + 50, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 52, 1, 1.29, 1.29 );
setScaleKey( spep_8 + 54, 1, 1.3, 1.3 );
setScaleKey( spep_8 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_8 + 58, 1, 1.32, 1.32 );
setScaleKey( spep_8 + 60, 1, 1.37, 1.37 );
setScaleKey( spep_8 + 62, 1, 1.4, 1.4 );
setScaleKey( spep_8 + 64, 1, 1.41, 1.41 );
setScaleKey( spep_8 + 66, 1, 1.42, 1.42 );
setScaleKey( spep_8 + 68, 1, 1.43, 1.43 );

setRotateKey( spep_8 + 0, 1, 79.9 );
setRotateKey( spep_8 + 68, 1, 79.9 );

--SE
setSeVolume(spep_8 + 32, 1212,47.62);
setSeVolume(spep_8 + 33, 1212,45.24);
setSeVolume(spep_8 + 34, 1212,42.86);
setSeVolume(spep_8 + 35, 1212,40.48);
setSeVolume(spep_8 + 36, 1212,38.1);
setSeVolume(spep_8 + 37, 1212,35.72);
setSeVolume(spep_8 + 38, 1212,33.34);
setSeVolume(spep_8 + 39, 1212,30.96);
setSeVolume(spep_8 + 40, 1212,28.58);
setSeVolume(spep_8 + 41, 1212,26.2);
setSeVolume(spep_8 + 42, 1212,23.82);
setSeVolume(spep_8 + 43, 1212,21.44);
setSeVolume(spep_8 + 44, 1212,19.06);
setSeVolume(spep_8 + 45, 1212,16.68);
setSeVolume(spep_8 + 46, 1212,14.3);
setSeVolume(spep_8 + 47, 1212,11.92);
setSeVolume(spep_8 + 48, 1212,9.53);
setSeVolume(spep_8 + 49, 1212,7.15);
setSeVolume(spep_8 + 50, 1212,4.78);
setSeVolume(spep_8 + 51, 1212,2.4);
setSeVolume(spep_8 + 52, 1212,0);

se_1159 = playSe( spep_8 + 30, 1159 );
se_1227 = playSe( spep_8 + 64, 1227 );
setSeVolume( spep_8 + 64, 1227, 207 );
se_1158 = playSe( spep_8 + 64, 1158 );
se_1240 = playSe( spep_8 + 66, 1240 );
setSeVolume( spep_8 + 66, 1240, 155 );
se_1191 = playSe( spep_8 + 66, 1191 );
setSeVolume( spep_8 + 66, 1191, 123 );

stopSe( spep_8 + 52, se_1212, 0 )
stopSe( spep_8 + 28, se_1177, 21 );
stopSe( spep_8 + 28, se_1236, 17 );
stopSe( spep_8 + 67, se_1159, 18 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_8+26 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8+62 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_9=spep_8+70;
------------------------------------------------------
-- 気弾　溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame3 = entryEffect( spep_9 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, tame3, 0, 0, 0 );
setEffMoveKey( spep_9 + 80, tame3, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, tame3, 1.0, 1.0 );
setEffScaleKey( spep_9 + 80, tame3, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame3, 0 );
setEffRotateKey( spep_9 + 80, tame3, 0 );
setEffAlphaKey( spep_9 + 0, tame3, 255 );
setEffAlphaKey( spep_9 + 80, tame3, 255 );

--SE
se_1252 = playSe( spep_9 + 0, 1252 );
setSeVolume( spep_9 + 0, 1252, 117 );
playSe( spep_9 + 40, 1027 );
setSeVolume( spep_9 + 40, 1027, 89 );
playSe( spep_9 + 42, 1145 );
setSeVolume( spep_9 + 42, 1145, 60 );

stopSe( spep_9 + 50, se_1227, 0 );
stopSe( spep_9 + 50, se_1158, 0 );
stopSe( spep_9 + 50, se_1240, 0 );
stopSe( spep_9 + 33, se_1191, 23 );
stopSe( spep_9 + 50, se_1252, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_9+72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10=spep_9+80;
------------------------------------------------------
-- 遠景　爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_10 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_10 + 220, finish, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_10 + 220, finish, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish, 0 );
setEffRotateKey( spep_10 + 220, finish, 0 );
setEffAlphaKey( spep_10 + 0, finish, 255 );
setEffAlphaKey( spep_10 + 220, finish, 255 );


--SE
playSe( spep_10 + 6, 1137 );
setSeVolume( spep_10 + 6, 1137, 47 );
playSe( spep_10 + 6, 20 );
setSeVolume( spep_10 + 6, 20, 55 );
playSe( spep_10 + 36, 1023 );
playSe( spep_10 + 36, 1024 );
setSeVolume( spep_10 + 36, 1024, 74 );
playSe( spep_10 + 76, 1137 );
setSeVolume( spep_10 + 76, 1137, 74 );
playSe( spep_10 + 82, 1024 );
playSe( spep_10 + 84, 1168 );
setSeVolume( spep_10 + 84, 1168, 71 );
playSe( spep_10 + 120, 1267 );
playSe( spep_10 + 120, 1268 );

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 40 );
endPhase( spep_10 + 210 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 3人　構え
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 10,  906, 98, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 10, shuchusen1, 98, 20 );
setEffMoveKey( spep_0-3 + 10, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 108, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 10, shuchusen1, 1.05, 1.05 );
setEffScaleKey( spep_0-3 + 108, shuchusen1, 1.05, 1.05 );

setEffRotateKey( spep_0-3 + 10, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 108, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 10, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 108, shuchusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+18  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+18  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +30, 190006, 72, 0x102, -1, 0, 100, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +30,  ctgogo,  100,  510);
setEffMoveKey(  spep_0 +102,  ctgogo,  100,  510);

setEffAlphaKey( spep_0 +30, ctgogo, 0 );
setEffAlphaKey( spep_0 + 31, ctgogo, 255 );
setEffAlphaKey( spep_0 + 32, ctgogo, 255 );
setEffAlphaKey( spep_0 + 96, ctgogo, 255 );
setEffAlphaKey( spep_0 + 98, ctgogo, 191 );
setEffAlphaKey( spep_0 + 100, ctgogo, 112 );
setEffAlphaKey( spep_0 + 102, ctgogo, 64 );

setEffRotateKey(  spep_0 +30,  ctgogo,  0);
setEffRotateKey(  spep_0 +102,  ctgogo,  0);

setEffScaleKey(  spep_0 +30,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +92,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +102,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 30, 1018 );
setSeVolume( spep_0 + 30, 1018, 79 );
playSe( spep_0 + 30, 1062 );
setSeVolume( spep_0 + 30, 1062, 85 );
playSe( spep_0 + 30, 1033 );
setSeVolume( spep_0 + 30, 1033, 79 );
playSe( spep_0 + 30, 1004 );
playSe( spep_0 + 32, 1003 );
se_1017 = playSe( spep_0 + 60, 1017 );
setSeVolume( spep_0 + 60, 1017, 75 );
se_1023 = playSe( spep_0 + 70, 1023 );
setSeVolume( spep_0 + 70, 1023, 67 );

--白フェード
entryFade( spep_0 , 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 112, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_1=spep_0+110;
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

stopSe( spep_1 , se_1017, 0 );
stopSe( spep_1 , se_1023, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- トッポ　指差し
------------------------------------------------------
-- ** エフェクト等 ** --
point = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, point, 0, 0, 0 );
setEffMoveKey( spep_2 + 68, point, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, point, -1.0, 1.0 );
setEffScaleKey( spep_2 + 68, point, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, point, 0 );
setEffRotateKey( spep_2 + 68, point, 0 );
setEffAlphaKey( spep_2 + 0, point, 255 );
setEffAlphaKey( spep_2 + 68, point, 255 );
setEffAlphaKey( spep_2 + 69, point, 0 );
setEffAlphaKey( spep_2 + 70, point, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景


--SE
SE0=playSe( spep_2 + 14, 1003 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );

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
--SE
playSe( spep_2 + 48, 43 );
se_1116 = playSe( spep_2+10 + 56, 1116 );
se_1183 = playSe( spep_2+10 + 56, 1183 );
setSeVolume( spep_2+10 + 56, 1183, 71 );
playSe( spep_2+10 + 56, 1182 );
setSeVolume( spep_2+10 + 56, 1182, 63 );


--白フェード
entryFade( spep_2+60 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3=spep_2+68;

------------------------------------------------------
-- 降下キック　トッポのみ
------------------------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick, 0, 0, 0 );
setEffMoveKey( spep_3 + 36, kick, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_3 + 36, kick, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick, 0 );
setEffRotateKey( spep_3 + 36, kick, 0 );
setEffAlphaKey( spep_3 + 0, kick, 255 );
setEffAlphaKey( spep_3 + 36, kick, 255 );
setEffAlphaKey( spep_3 + 37, kick, 0 );
setEffAlphaKey( spep_3 + 38, kick, 0 );

--SE
playSe( spep_3 + 32, 1001 );
setSeVolume( spep_3 + 32, 1001, 66 );
playSe( spep_3 + 32, 1010 );
playSe( spep_3 + 34, 1110 );
setSeVolume( spep_3 + 34, 1110, 79 );

stopSe( spep_3 + 27, se_1116, 21 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4=spep_3+36;
------------------------------------------------------
-- キック　HIT
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, kick_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 46, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 46, kick_f, 255 );
setEffAlphaKey( spep_4 + 47, kick_f, 0 );
setEffAlphaKey( spep_4 + 48, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_4 + 0, SP_11x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 46, kick_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 46, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 46, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 46, kick_b, 255 );
setEffAlphaKey( spep_4 + 47, kick_b, 0 );
setEffAlphaKey( spep_4 + 48, kick_b, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_4 + 2,  10020, 26, 0x100, -1, 0, -77.4, -117 );
setEffShake( spep_4 + 2, ctbaki, 26, 10 );
setEffMoveKey( spep_4 + 2, ctbaki, -77.4, -117 , 0 );
setEffMoveKey( spep_4 + 4, ctbaki, -80.4, -195.7 , 0 );
setEffMoveKey( spep_4 + 6, ctbaki, -67.1, -284.4 , 0 );
setEffMoveKey( spep_4 + 8, ctbaki, -75.2, -292.4 , 0 );
setEffMoveKey( spep_4 + 10, ctbaki, -63.3, -289.8 , 0 );
setEffMoveKey( spep_4 + 12, ctbaki, -57, -310.2 , 0 );
setEffMoveKey( spep_4 + 14, ctbaki, -57.1, -301.4 , 0 );
setEffMoveKey( spep_4 + 16, ctbaki, -45.3, -318.1 , 0 );
setEffMoveKey( spep_4 + 18, ctbaki, -48.2, -320.5 , 0 );
setEffMoveKey( spep_4 + 20, ctbaki, -32.9, -329.1 , 0 );
setEffMoveKey( spep_4 + 22, ctbaki, -38.2, -342.7 , 0 );
setEffMoveKey( spep_4 + 24, ctbaki, -12.5, -376.5 , 0 );
setEffMoveKey( spep_4 + 26, ctbaki, -24.4, -402.6 , 0 );
setEffMoveKey( spep_4 + 28, ctbaki, -17.9, -426.5 , 0 );

setEffScaleKey( spep_4 + 2, ctbaki, 0.5, 0.5 );
setEffScaleKey( spep_4 + 4, ctbaki, 1.36, 1.36 );
setEffScaleKey( spep_4 + 6, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_4 + 8, ctbaki, 2.25, 2.25 );
setEffScaleKey( spep_4 + 10, ctbaki, 2.28, 2.28 );
setEffScaleKey( spep_4 + 12, ctbaki, 2.31, 2.31 );
setEffScaleKey( spep_4 + 14, ctbaki, 2.33, 2.33 );
setEffScaleKey( spep_4 + 16, ctbaki, 2.36, 2.36 );
setEffScaleKey( spep_4 + 18, ctbaki, 2.38, 2.38 );
setEffScaleKey( spep_4 + 20, ctbaki, 2.41, 2.41 );
setEffScaleKey( spep_4 + 22, ctbaki, 2.74, 2.74 );
setEffScaleKey( spep_4 + 24, ctbaki, 3.07, 3.07 );
setEffScaleKey( spep_4 + 26, ctbaki, 3.4, 3.4 );
setEffScaleKey( spep_4 + 28, ctbaki, 3.73, 3.73 );

setEffRotateKey( spep_4 + 2, ctbaki, -3 );
setEffRotateKey( spep_4 + 4, ctbaki, -3 );
setEffRotateKey( spep_4 + 6, ctbaki, -2.9 );
setEffRotateKey( spep_4 + 10, ctbaki, -2.9 );
setEffRotateKey( spep_4 + 12, ctbaki, -3 );
setEffRotateKey( spep_4 + 28, ctbaki, -3 );

setEffAlphaKey( spep_4 + 2, ctbaki, 255 );
setEffAlphaKey( spep_4 + 20, ctbaki, 255 );
setEffAlphaKey( spep_4 + 22, ctbaki, 191 );
setEffAlphaKey( spep_4 + 24, ctbaki, 128 );
setEffAlphaKey( spep_4 + 26, ctbaki, 64 );
setEffAlphaKey( spep_4 + 28, ctbaki, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_4 + 2,  906, 18, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 2, shuchusen2, 18, 20 );
setEffMoveKey( spep_4 + 2, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 20, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 2, shuchusen2, 2, 2 );
setEffScaleKey( spep_4 + 20, shuchusen2, 2, 2 );

setEffRotateKey( spep_4 + 2, shuchusen2, 0 );
setEffRotateKey( spep_4 + 20, shuchusen2, 0 );

setEffAlphaKey( spep_4 + 2, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 12, shuchusen2, 255 );
setEffAlphaKey( spep_4 + 14, shuchusen2, 191 );
setEffAlphaKey( spep_4 + 16, shuchusen2, 128 );
setEffAlphaKey( spep_4 + 18, shuchusen2, 64 );
setEffAlphaKey( spep_4 + 20, shuchusen2, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3+ 48, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 26.3, 5.3 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 6, -21.2 , 0 );
setMoveKey( spep_4-3 + 4, 1, 52.2, -4.4 , 0 );
setMoveKey( spep_4-3 + 6, 1, 44.6, -40.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, 28.3, -2 , 0 );
setMoveKey( spep_4-3 + 10, 1, 29.1, -26.5 , 0 );
setMoveKey( spep_4-3 + 12, 1, 35.3, -58.5 , 0 );
setMoveKey( spep_4-3 + 14, 1, 26.2, -4.4 , 0 );
setMoveKey( spep_4-3 + 16, 1, 168, -134.1 , 0 );
setMoveKey( spep_4-3 + 18, 1, 259.4, -201.6 , 0 );
setMoveKey( spep_4-3 + 20, 1, 335, -260.4 , 0 );
setMoveKey( spep_4-3 + 22, 1, 394.3, -305.6 , 0 );
setMoveKey( spep_4-3 + 24, 1, 445.5, -348.7 , 0 );
setMoveKey( spep_4-3 + 26, 1, 493.8, -383.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 533.8, -416.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 570.9, -444.1 , 0 );
setMoveKey( spep_4-3 + 32, 1, 605.3, -470.2 , 0 );
setMoveKey( spep_4-3 + 34, 1, 634.8, -495.1 , 0 );
setMoveKey( spep_4-3 + 36, 1, 663.3, -515.7 , 0 );
setMoveKey( spep_4-3 + 38, 1, 688.3, -535.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 711.4, -553.6 , 0 );
setMoveKey( spep_4-3 + 42, 1, 732.5, -570.1 , 0 );
setMoveKey( spep_4-3 + 44, 1, 751.8, -585.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 769.4, -598.7 , 0 );
setMoveKey( spep_4-3 + 48, 1, 785.3, -611.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.1, 1.1 );
--setScaleKey( spep_4-3 + 2, 1, 1.32, 1.32 );
setScaleKey( spep_4-3 + 4, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 6, 1, 1.14, 1.14 );
setScaleKey( spep_4-3 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 14, 1, 1.1, 1.1 );
setScaleKey( spep_4-3 + 16, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 18, 1, 1.13, 1.13 );
setScaleKey( spep_4-3 + 20, 1, 1.14, 1.14 );
setScaleKey( spep_4-3 + 22, 1, 1.14, 1.14 );
setScaleKey( spep_4-3 + 24, 1, 1.15, 1.15 );
setScaleKey( spep_4-3 + 26, 1, 1.15, 1.15 );
setScaleKey( spep_4-3 + 28, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 30, 1, 1.16, 1.16 );
setScaleKey( spep_4-3 + 32, 1, 1.17, 1.17 );
setScaleKey( spep_4-3 + 34, 1, 1.17, 1.17 );
setScaleKey( spep_4-3 + 36, 1, 1.18, 1.18 );
setScaleKey( spep_4-3 + 42, 1, 1.18, 1.18 );
setScaleKey( spep_4-3 + 44, 1, 1.19, 1.19 );
setScaleKey( spep_4-3 + 48, 1, 1.19, 1.19 );

setRotateKey( spep_4 + 0, 1, -4 );
--setRotateKey( spep_4-3 + 2, 1, -3.4 );
setRotateKey( spep_4-3 + 4, 1, -2.9 );
setRotateKey( spep_4-3 + 6, 1, -2.3 );
setRotateKey( spep_4-3 + 8, 1, -1.7 );
setRotateKey( spep_4-3 + 10, 1, -1.1 );
setRotateKey( spep_4-3 + 12, 1, -0.6 );
setRotateKey( spep_4-3 + 14, 1, 0 );
setRotateKey( spep_4-3 + 16, 1, 6.9 );
setRotateKey( spep_4-3 + 18, 1, 12 );
setRotateKey( spep_4-3 + 20, 1, 16.1 );
setRotateKey( spep_4-3 + 22, 1, 19.5 );
setRotateKey( spep_4-3 + 24, 1, 22.5 );
setRotateKey( spep_4-3 + 26, 1, 25.1 );
setRotateKey( spep_4-3 + 28, 1, 27.5 );
setRotateKey( spep_4-3 + 30, 1, 29.5 );
setRotateKey( spep_4-3 + 32, 1, 31.4 );
setRotateKey( spep_4-3 + 34, 1, 33.1 );
setRotateKey( spep_4-3 + 36, 1, 34.7 );
setRotateKey( spep_4-3 + 38, 1, 36.1 );
setRotateKey( spep_4-3 + 40, 1, 37.4 );
setRotateKey( spep_4-3 + 42, 1, 38.6 );
setRotateKey( spep_4-3 + 44, 1, 39.7 );
setRotateKey( spep_4-3 + 46, 1, 40.7 );
setRotateKey( spep_4-3 + 48, 1, 41.6 );

--SE
se_1072 = playSe( spep_4 + 32, 1072 );

stopSe( spep_4 + 1, se_1183, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5=spep_4+46;
------------------------------------------------------
-- 降下キック　二人
------------------------------------------------------
-- ** エフェクト等 ** --
kick2 = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick2, 0, 0, 0 );
setEffMoveKey( spep_5 + 70, kick2, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick2, -1.0, 1.0 );
setEffScaleKey( spep_5 + 70, kick2, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick2, 0 );
setEffRotateKey( spep_5 + 70, kick2, 0 );
setEffAlphaKey( spep_5 + 0, kick2, 255 );
setEffAlphaKey( spep_5 + 70, kick2, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_5 + 0,  906, 68, 0x100, -1, 0, 0, 38.9 );
setEffShake( spep_5 + 0, shuchusen3, 68, 20 );
setEffMoveKey( spep_5 + 0, shuchusen3, 0, 38.9 , 0 );
setEffMoveKey( spep_5 + 68, shuchusen3, 0, 38.9 , 0 );

setEffScaleKey( spep_5 + 0, shuchusen3, 1.75, 1.4 );
setEffScaleKey( spep_5 + 68, shuchusen3, 1.75, 1.4 );

setEffRotateKey( spep_5 + 0, shuchusen3, 0 );
setEffRotateKey( spep_5 + 68, shuchusen3, 0 );

setEffAlphaKey( spep_5 + 0, shuchusen3, 255 );
setEffAlphaKey( spep_5 + 68, shuchusen3, 255 );

--SE
se_1183 = playSe( spep_5 + 12, 1183 );
setSeVolume( spep_5 + 12, 1183, 32 );
se_0008 = playSe( spep_5 + 38, 8 );
setSeVolume( spep_5 + 38, 8, 60 );
playSe( spep_5 + 46, 1232 );
setSeVolume( spep_5 + 46, 1232, 0 );
setSeVolume( spep_5 + 47, 1232, 16.67 );
setSeVolume( spep_5 + 48, 1232, 33.33 );
setSeVolume( spep_5 + 49, 1232, 50 );
setSeVolume( spep_5 + 50, 1232, 66.67 );
setSeVolume( spep_5 + 51, 1232, 83.33 );
setSeVolume( spep_5 + 52, 1232, 100.00 );
playSe( spep_5 + 66, 1009 );
playSe( spep_5 + 66, 1187 );
setSeVolume( spep_5 + 66, 1187, 58 );
playSe( spep_5 + 68, 1001 );
setSeVolume( spep_5 + 68, 1001, 65 );

stopSe( spep_5 + 25, se_1072, 23 );
stopSe( spep_5 + 68, se_1183, 0 );
stopSe( spep_5 + 68, se_0008, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_5+62 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6=spep_5+70;
------------------------------------------------------
-- キック　ＨＩＴ　二人
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_6 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 80, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick2_f, 0 );
setEffRotateKey( spep_6 + 80, kick2_f, 0 );
setEffAlphaKey( spep_6 + 0, kick2_f, 255 );
setEffAlphaKey( spep_6 + 80, kick2_f, 255 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_6 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 80, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 80, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kick2_b, 0 );
setEffRotateKey( spep_6 + 80, kick2_b, 0 );
setEffAlphaKey( spep_6 + 0, kick2_b, 255 );
setEffAlphaKey( spep_6 + 80, kick2_b, 255 );

--集中線
shuchusen4 = entryEffectLife( spep_6 + 0,  906, 28, 0x100, -1, 0, 0, 38.8 );
setEffShake( spep_6 + 0, shuchusen4, 28, 20 );
setEffMoveKey( spep_6 + 0, shuchusen4, 0, 38.8 , 0 );
setEffMoveKey( spep_6 + 4, shuchusen4, 0, 38.8 , 0 );
setEffMoveKey( spep_6 + 6, shuchusen4, 0, 38.9 , 0 );
setEffMoveKey( spep_6 + 16, shuchusen4, 0, 38.9 , 0 );
setEffMoveKey( spep_6 + 18, shuchusen4, 0, 38.8 , 0 )
setEffMoveKey( spep_6 + 28, shuchusen4, 0, 38.8 , 0 );

setEffScaleKey( spep_6 + 0, shuchusen4, 1.5, 1.2 );
setEffScaleKey( spep_6 + 28, shuchusen4, 1.5, 1.2 );

setEffRotateKey( spep_6 + 0, shuchusen4, 0 );
setEffRotateKey( spep_6 + 28, shuchusen4, 0 );

setEffAlphaKey( spep_6 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 20, shuchusen4, 255 );
setEffAlphaKey( spep_6 + 22, shuchusen4, 191 );
setEffAlphaKey( spep_6 + 24, shuchusen4, 128 );
setEffAlphaKey( spep_6 + 26, shuchusen4, 64 );
setEffAlphaKey( spep_6 + 28, shuchusen4, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-3 + 78, 1, 0 );

changeAnime( spep_6 + 0, 1, 108 );
changeAnime( spep_6-3 + 48, 1, 106 );
changeAnime( spep_6-3 + 54, 1, 108 );

setMoveKey( spep_6 + 0, 1, 37.4, -11.4 , 0 );
--setMoveKey( spep_6-3 + 2, 1, 39.4, -14.9 , 0 );
setMoveKey( spep_6-3 + 4, 1, 36.8, -14.4 , 0 );
setMoveKey( spep_6-3 + 12, 1, 36.8, -14.4 , 0 );
setMoveKey( spep_6-3 + 14, 1, 44.4, -37.7 , 0 );
setMoveKey( spep_6-3 + 16, 1, 29.1, -31.4 , 0 );
setMoveKey( spep_6-3 + 18, 1, 41.9, 1.8 , 0 );
setMoveKey( spep_6-3 + 20, 1, 21.5, 4.4 , 0 );
setMoveKey( spep_6-3 + 22, 1, 54.6, -35.8 , 0 );
setMoveKey( spep_6-3 + 24, 1, 81.1, -159.6 , 0 );
setMoveKey( spep_6-3 + 26, 1, 131.9, -233.4 , 0 );
setMoveKey( spep_6-3 + 28, 1, 152.6, -364 , 0 );
setMoveKey( spep_6-3 + 30, 1, 202.1, -444.1 , 0 );
setMoveKey( spep_6-3 + 32, 1, 219, -524.7 , 0 );
setMoveKey( spep_6-3 + 34, 1, 226.1, -566 , 0 );
setMoveKey( spep_6-3 + 36, 1, 213.2, -545.6 , 0 );
setMoveKey( spep_6-3 + 38, 1, 186.1, -510.5 , 0 );
setMoveKey( spep_6-3 + 40, 1, 166, -475.7 , 0 );
setMoveKey( spep_6-3 + 42, 1, 162.1, -492.8 , 0 );
setMoveKey( spep_6-3 + 44, 1, 171.8, -529.1 , 0 );
setMoveKey( spep_6-3 + 47, 1, 191.1, -597.7 , 0 );
setMoveKey( spep_6-3 + 48, 1, 169.8, -460.9 , 0 );
setMoveKey( spep_6-3 + 50, 1, 150.2, -406.6 , 0 );
setMoveKey( spep_6-3 + 53, 1, 155.7, -413.9 , 0 );
setMoveKey( spep_6-3 + 54, 1, 125.2, -451.7 , 0 );
setMoveKey( spep_6-3 + 56, 1, 119.4, -439.6 , 0 );
setMoveKey( spep_6-3 + 58, 1, 114.7, -454.7 , 0 );
setMoveKey( spep_6-3 + 60, 1, 115.3, -408.5 , 0 );
setMoveKey( spep_6-3 + 62, 1, 115.8, -457.6 , 0 );
setMoveKey( spep_6-3 + 64, 1, 116.3, -409.8 , 0 );
setMoveKey( spep_6-3 + 66, 1, 116.6, -457.8 , 0 );
setMoveKey( spep_6-3 + 68, 1, 117, -421.7 , 0 );
setMoveKey( spep_6-3 + 70, 1, 117, -447 , 0 );
setMoveKey( spep_6-3 + 72, 1, 117, -426.7 , 0 );
setMoveKey( spep_6-3 + 74, 1, 117, -444 , 0 );
setMoveKey( spep_6-3 + 76, 1, 117, -426.7 , 0 );
setMoveKey( spep_6-3 + 78, 1, 117, -444.4 , 0 );

setScaleKey( spep_6 + 0, 1, 1.32, 1.32 );
setScaleKey( spep_6 + 2, 1, 1.21, 1.21 );
setScaleKey( spep_6 + 4, 1, 1.1, 1.1 );
setScaleKey( spep_6-3 + 78, 1, 1.1, 1.1 );

setRotateKey( spep_6 + 0, 1, 35 );
setRotateKey( spep_6-3 + 22, 1, 35 );
setRotateKey( spep_6-3 + 24, 1, 38.7 );
setRotateKey( spep_6-3 + 26, 1, 42.5 );
setRotateKey( spep_6-3 + 28, 1, 46.2 );
setRotateKey( spep_6-3 + 30, 1, 50 );
setRotateKey( spep_6-3 + 32, 1, 53.7 );
setRotateKey( spep_6-3 + 34, 1, 57.5 );
setRotateKey( spep_6-3 + 36, 1, 61.2 );
setRotateKey( spep_6-3 + 38, 1, 65 );
setRotateKey( spep_6-3 + 40, 1, 68.7 );
setRotateKey( spep_6-3 + 42, 1, 72.4 );
setRotateKey( spep_6-3 + 44, 1, 76.2 );
setRotateKey( spep_6-3 + 47, 1, 79.9 );
setRotateKey( spep_6-3 + 48, 1, 28.9 );
setRotateKey( spep_6-3 + 50, 1, 28.9 );
setRotateKey( spep_6-3 + 53, 1, 28.8 );
setRotateKey( spep_6-3 + 54, 1, 81.8 );
setRotateKey( spep_6-3 + 78, 1, 81.8 );

--文字エントリー
ctdogon = entryEffectLife( spep_6-3 + 46,  10018, 26, 0x100, -1, 0, 82, -392.2 );
setEffShake( spep_6-3 + 46, ctdogon, 26, 10 );
setEffMoveKey( spep_6-3 + 46, ctdogon, 82, -392.2 , 0 );
setEffMoveKey( spep_6-3 + 48, ctdogon, 45.8, -240.9 , 0 );
setEffMoveKey( spep_6-3 + 50, ctdogon, 26, -99.5 , 0 );
setEffMoveKey( spep_6-3 + 52, ctdogon, 6.9, -96.3 , 0 );
setEffMoveKey( spep_6-3 + 54, ctdogon, 7.7, -82.6 , 0 );
setEffMoveKey( spep_6-3 + 56, ctdogon, 3, -91.7 , 0 );
setEffMoveKey( spep_6-3 + 58, ctdogon, -8.1, -71.8 , 0 );
setEffMoveKey( spep_6-3 + 60, ctdogon, -7.3, -77.3 , 0 );
setEffMoveKey( spep_6-3 + 62, ctdogon, -21.2, -68.6 , 0 );
setEffMoveKey( spep_6-3 + 64, ctdogon, -16.9, -66 , 0 );
setEffMoveKey( spep_6-3 + 66, ctdogon, -27.5, -57.6 , 0 );
setEffMoveKey( spep_6-3 + 68, ctdogon, -7, -69.3 , 0 );
setEffMoveKey( spep_6-3 + 70, ctdogon, -24.1, -73.4 , 0 );
setEffMoveKey( spep_6-3 + 72, ctdogon, -22.9, -75.3 , 0 );

setEffScaleKey( spep_6-3 + 46, ctdogon, 0.65, 0.65 );
setEffScaleKey( spep_6-3 + 48, ctdogon, 1.77, 1.77 );
setEffScaleKey( spep_6-3 + 50, ctdogon, 2.9, 2.9 );
setEffScaleKey( spep_6-3 + 52, ctdogon, 2.93, 2.93 );
setEffScaleKey( spep_6-3 + 54, ctdogon, 2.96, 2.96 );
setEffScaleKey( spep_6-3 + 56, ctdogon, 3, 3 );
setEffScaleKey( spep_6-3 + 58, ctdogon, 3.03, 3.03 );
setEffScaleKey( spep_6-3 + 60, ctdogon, 3.07, 3.07 );
setEffScaleKey( spep_6-3 + 62, ctdogon, 3.1, 3.1 );
setEffScaleKey( spep_6-3 + 64, ctdogon, 3.13, 3.13 );
setEffScaleKey( spep_6-3 + 66, ctdogon, 3.56, 3.56 );
setEffScaleKey( spep_6-3 + 68, ctdogon, 3.99, 3.99 );
setEffScaleKey( spep_6-3 + 70, ctdogon, 4.42, 4.42 );
setEffScaleKey( spep_6-3 + 72, ctdogon, 4.85, 4.85 );

setEffRotateKey( spep_6-3 + 46, ctdogon, -30 );
setEffRotateKey( spep_6-3 + 48, ctdogon, -30 );
setEffRotateKey( spep_6-3 + 50, ctdogon, -29.9 );
setEffRotateKey( spep_6-3 + 54, ctdogon, -29.9 );
setEffRotateKey( spep_6-3 + 56, ctdogon, -30 );
setEffRotateKey( spep_6-3 + 72, ctdogon, -30 );

setEffAlphaKey( spep_6-3 + 46, ctdogon, 255 );
setEffAlphaKey( spep_6-3 + 64, ctdogon, 255 );
setEffAlphaKey( spep_6-3 + 66, ctdogon, 191 );
setEffAlphaKey( spep_6-3 + 68, ctdogon, 128 );
setEffAlphaKey( spep_6-3 + 70, ctdogon, 64 );
setEffAlphaKey( spep_6-3 + 72, ctdogon, 0 );

--SE
playSe( spep_6 + 46, 1025 );
playSe( spep_6 + 46, 19 );
se_1144 = playSe( spep_6 + 54, 1144 );
setSeVolume( spep_6 + 54, 1144, 0 );
se_1154 = playSe( spep_6 + 78, 1154 );
setSeVolume( spep_6 + 78, 1154, 0 );
se_1212 = playSe( spep_6 + 78, 1212 );
setSeVolume( spep_6 + 78, 1212, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_6+72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_7=spep_6+80;
------------------------------------------------------
-- 二人攻撃　ビーム溜め～発動
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_7 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_7 + 80, beam, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, beam, -1.0, 1.0 );
setEffScaleKey( spep_7 + 80, beam, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, beam, 0 );
setEffRotateKey( spep_7 + 80, beam, 0 );
setEffAlphaKey( spep_7 + 0, beam, 255 );
setEffAlphaKey( spep_7 + 80, beam, 255 );

--集中線
shuchusen5 = entryEffectLife( spep_7 + 0,  906, 78, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 0, shuchusen5, 78, 20 );
setEffMoveKey( spep_7 + 0, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_7 + 78, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen5, 1.4, 1.4 );
setEffScaleKey( spep_7 + 78, shuchusen5, 1.4, 1.4 );

setEffRotateKey( spep_7 + 0, shuchusen5, 0 );
setEffRotateKey( spep_7 + 78, shuchusen5, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen5, 255 );
setEffAlphaKey( spep_7 + 78, shuchusen5, 255 );

--SE
setSeVolume( spep_7 + 6, 1144, 0 );
setSeVolume( spep_7 + 7, 1144, 8.33 );
setSeVolume( spep_7 + 8, 1144, 16.67 );
setSeVolume( spep_7 + 9, 1144, 25 );
setSeVolume( spep_7 + 10, 1144, 33.33 );
setSeVolume( spep_7 + 11, 1144, 41.67 );
setSeVolume( spep_7 + 12, 1144, 50 );

setSeVolume( spep_7 + 7, 1154, 0 );
setSeVolume( spep_7 + 8, 1154, 50 );
setSeVolume( spep_7 + 9, 1154, 100 );

setSeVolume( spep_7 + 54, 1212, 0);
setSeVolume( spep_7 + 55, 1212, 1.72 );
setSeVolume( spep_7 + 56, 1212, 3.45 );
setSeVolume( spep_7 + 57, 1212, 5.17 );
setSeVolume( spep_7 + 58, 1212, 6.9 );
setSeVolume( spep_7 + 59, 1212, 8.62 );
setSeVolume( spep_7 + 60, 1212, 10.34 );
setSeVolume( spep_7 + 61, 1212, 12.07 );
setSeVolume( spep_7 + 62, 1212, 13.79 );
setSeVolume( spep_7 + 63, 1212, 15.52 );
setSeVolume( spep_7 + 64, 1212, 17.24 );
setSeVolume( spep_7 + 65, 1212, 18.97 );
setSeVolume( spep_7 + 66, 1212, 20.69 );
setSeVolume( spep_7 + 67, 1212, 22.41 );
setSeVolume( spep_7 + 68, 1212, 24.14 );
setSeVolume( spep_7 + 69, 1212, 25.86 );
setSeVolume( spep_7 + 70, 1212, 27.59 );
setSeVolume( spep_7 + 71, 1212, 29.31 );
setSeVolume( spep_7 + 72, 1212, 31.03 );
setSeVolume( spep_7 + 73, 1212, 32.76 );
setSeVolume( spep_7 + 74, 1212, 34.48 );
setSeVolume( spep_7 + 75, 1212, 36.21 );
setSeVolume( spep_7 + 76, 1212, 37.93 );
setSeVolume( spep_7 + 77, 1212, 39.66 );
setSeVolume( spep_7 + 78, 1212, 41.38 );
setSeVolume( spep_7 + 79, 1212, 43.1 );
setSeVolume( spep_7 + 80, 1212, 44.83 );
setSeVolume( spep_7 + 81, 1212, 46.55 );
setSeVolume( spep_7 + 82, 1212, 48.28 );
setSeVolume( spep_7 + 83, 1212, 50 );

se_1262 = playSe( spep_7 + 8, 1262 );
playSe( spep_7 + 50, 1027 );
se_1177 = playSe( spep_7 + 50, 1177 );
setSeVolume( spep_7 + 50, 1177, 60 );
se_1236 = playSe( spep_7 + 50, 1236 );
setSeVolume( spep_7 + 50, 1236, 122 );

stopSe( spep_7 + 66, se_1144, 0 );
stopSe( spep_7 + 64, se_1154, 0 );
stopSe( spep_7 + 64, se_1262, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_7+72 , 4, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_8=spep_7+80;
------------------------------------------------------
-- ビーム着弾
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_8 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_8 + 70, hit_f, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 70, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_f, 0 );
setEffRotateKey( spep_8 + 70, hit_f, 0 );
setEffAlphaKey( spep_8 + 0, hit_f, 255 );
setEffAlphaKey( spep_8 + 70, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_8 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_8 + 70, hit_b, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 70, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit_b, 0 );
setEffRotateKey( spep_8 + 70, hit_b, 0 );
setEffAlphaKey( spep_8 + 0, hit_b, 255 );
setEffAlphaKey( spep_8 + 70, hit_b, 255 );

--敵の動き
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 68, 1, 0 );

changeAnime( spep_8 + 0, 1, 108 );

setMoveKey( spep_8 + 0, 1, 35.3, -365.6 , 0 );
setMoveKey( spep_8 + 2, 1, 28.2, -367.9 , 0 );
setMoveKey( spep_8 + 4, 1, 25.3, -368.9 , 0 );
setMoveKey( spep_8 + 6, 1, 22.9, -371.1 , 0 );
setMoveKey( spep_8 + 8, 1, 20.7, -369.9 , 0 );
setMoveKey( spep_8 + 10, 1, 19.4, -374 , 0 );
setMoveKey( spep_8 + 12, 1, 18.9, -367.5 , 0 );
setMoveKey( spep_8 + 14, 1, 18.5, -375.2 , 0 );
setMoveKey( spep_8 + 16, 1, 18.1, -366.8 , 0 );
setMoveKey( spep_8 + 18, 1, 17.9, -374.9 , 0 );
setMoveKey( spep_8 + 20, 1, 17.6, -367.2 , 0 );
setMoveKey( spep_8 + 22, 1, 17.4, -375 , 0 );
setMoveKey( spep_8 + 24, 1, 17.2, -369.2 , 0 );
setMoveKey( spep_8 + 26, 1, 16.9, -374.8 , 0 );
setMoveKey( spep_8 + 28, 1, 16.8, -368.4 , 0 );
setMoveKey( spep_8 + 30, 1, 16.6, -367.3 , 0 );
setMoveKey( spep_8 + 32, 1, 54.5, -363.1 , 0 );
setMoveKey( spep_8 + 34, 1, 2.9, -343.3 , 0 );
setMoveKey( spep_8 + 36, 1, 1.9, -378.2 , 0 );
setMoveKey( spep_8 + 38, 1, 38.5, -363.5 , 0 );
setMoveKey( spep_8 + 40, 1, 9.3, -386.3 , 0 );
setMoveKey( spep_8 + 42, 1, 9.9, -361.1 , 0 );
setMoveKey( spep_8 + 44, 1, 33, -382.4 , 0 );
setMoveKey( spep_8 + 46, 1, 13.3, -388.8 , 0 );
setMoveKey( spep_8 + 48, 1, 23.8, -369.5 , 0 );
setMoveKey( spep_8 + 50, 1, 24.1, -375.6 , 0 );
setMoveKey( spep_8 + 52, 1, 24.3, -362.1 , 0 );
setMoveKey( spep_8 + 54, 1, 24.5, -375.4 , 0 );
setMoveKey( spep_8 + 56, 1, 24.8, -363.5 , 0 );
setMoveKey( spep_8 + 58, 1, 25, -375.3 , 0 );
setMoveKey( spep_8 + 60, 1, 26, -361.6 , 0 );
setMoveKey( spep_8 + 62, 1, 26.5, -374.8 , 0 );
setMoveKey( spep_8 + 64, 1, 26.8, -364.8 , 0 );
setMoveKey( spep_8 + 66, 1, 26.9, -374.6 , 0 );
setMoveKey( spep_8 + 68, 1, 27.2, -368.4 , 0 );

setScaleKey( spep_8 + 0, 1, 1.87, 1.87 );
setScaleKey( spep_8 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_8 + 4, 1, 1.34, 1.34 );
setScaleKey( spep_8 + 6, 1, 1.21, 1.21 );
setScaleKey( spep_8 + 8, 1, 1.1, 1.1 );
setScaleKey( spep_8 + 10, 1, 1.03, 1.03 );
setScaleKey( spep_8 + 12, 1, 1, 1 );
setScaleKey( spep_8 + 14, 1, 0.98, 0.98 );
setScaleKey( spep_8 + 16, 1, 0.96, 0.96 );
setScaleKey( spep_8 + 18, 1, 0.95, 0.95 );
setScaleKey( spep_8 + 20, 1, 0.93, 0.93 );
setScaleKey( spep_8 + 22, 1, 0.92, 0.92 );
setScaleKey( spep_8 + 24, 1, 0.91, 0.91 );
setScaleKey( spep_8 + 26, 1, 0.9, 0.9 );
setScaleKey( spep_8 + 28, 1, 0.89, 0.89 );
setScaleKey( spep_8 + 30, 1, 0.88, 0.88 );
setScaleKey( spep_8 + 32, 1, 1.32, 1.32 );
setScaleKey( spep_8 + 34, 1, 1.18, 1.18 );
setScaleKey( spep_8 + 36, 1, 1.13, 1.13 );
setScaleKey( spep_8 + 38, 1, 1.1, 1.1 );
setScaleKey( spep_8 + 40, 1, 1.17, 1.17 );
setScaleKey( spep_8 + 42, 1, 1.2, 1.2 );
setScaleKey( spep_8 + 44, 1, 1.22, 1.22 );
setScaleKey( spep_8 + 46, 1, 1.24, 1.24 );
setScaleKey( spep_8 + 48, 1, 1.26, 1.26 );
setScaleKey( spep_8 + 50, 1, 1.27, 1.27 );
setScaleKey( spep_8 + 52, 1, 1.29, 1.29 );
setScaleKey( spep_8 + 54, 1, 1.3, 1.3 );
setScaleKey( spep_8 + 56, 1, 1.31, 1.31 );
setScaleKey( spep_8 + 58, 1, 1.32, 1.32 );
setScaleKey( spep_8 + 60, 1, 1.37, 1.37 );
setScaleKey( spep_8 + 62, 1, 1.4, 1.4 );
setScaleKey( spep_8 + 64, 1, 1.41, 1.41 );
setScaleKey( spep_8 + 66, 1, 1.42, 1.42 );
setScaleKey( spep_8 + 68, 1, 1.43, 1.43 );

setRotateKey( spep_8 + 0, 1, 79.9 );
setRotateKey( spep_8 + 68, 1, 79.9 );

--SE
setSeVolume(spep_8 + 32, 1212,47.62);
setSeVolume(spep_8 + 33, 1212,45.24);
setSeVolume(spep_8 + 34, 1212,42.86);
setSeVolume(spep_8 + 35, 1212,40.48);
setSeVolume(spep_8 + 36, 1212,38.1);
setSeVolume(spep_8 + 37, 1212,35.72);
setSeVolume(spep_8 + 38, 1212,33.34);
setSeVolume(spep_8 + 39, 1212,30.96);
setSeVolume(spep_8 + 40, 1212,28.58);
setSeVolume(spep_8 + 41, 1212,26.2);
setSeVolume(spep_8 + 42, 1212,23.82);
setSeVolume(spep_8 + 43, 1212,21.44);
setSeVolume(spep_8 + 44, 1212,19.06);
setSeVolume(spep_8 + 45, 1212,16.68);
setSeVolume(spep_8 + 46, 1212,14.3);
setSeVolume(spep_8 + 47, 1212,11.92);
setSeVolume(spep_8 + 48, 1212,9.53);
setSeVolume(spep_8 + 49, 1212,7.15);
setSeVolume(spep_8 + 50, 1212,4.78);
setSeVolume(spep_8 + 51, 1212,2.4);
setSeVolume(spep_8 + 52, 1212,0);

se_1159 = playSe( spep_8 + 30, 1159 );
se_1227 = playSe( spep_8 + 64, 1227 );
setSeVolume( spep_8 + 64, 1227, 207 );
se_1158 = playSe( spep_8 + 64, 1158 );
se_1240 = playSe( spep_8 + 66, 1240 );
setSeVolume( spep_8 + 66, 1240, 155 );
se_1191 = playSe( spep_8 + 66, 1191 );
setSeVolume( spep_8 + 66, 1191, 123 );

stopSe( spep_8 + 52, se_1212, 0 )
stopSe( spep_8 + 28, se_1177, 21 );
stopSe( spep_8 + 28, se_1236, 17 );
stopSe( spep_8 + 67, se_1159, 18 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 72, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_8+26 , 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8+62 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_9=spep_8+70;
------------------------------------------------------
-- 気弾　溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame3 = entryEffect( spep_9 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, tame3, 0, 0, 0 );
setEffMoveKey( spep_9 + 80, tame3, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, tame3, -1.0, 1.0 );
setEffScaleKey( spep_9 + 80, tame3, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, tame3, 0 );
setEffRotateKey( spep_9 + 80, tame3, 0 );
setEffAlphaKey( spep_9 + 0, tame3, 255 );
setEffAlphaKey( spep_9 + 80, tame3, 255 );

--SE
se_1252 = playSe( spep_9 + 0, 1252 );
setSeVolume( spep_9 + 0, 1252, 117 );
playSe( spep_9 + 40, 1027 );
setSeVolume( spep_9 + 40, 1027, 89 );
playSe( spep_9 + 42, 1145 );
setSeVolume( spep_9 + 42, 1145, 60 );

stopSe( spep_9 + 50, se_1227, 0 );
stopSe( spep_9 + 50, se_1158, 0 );
stopSe( spep_9 + 50, se_1240, 0 );
stopSe( spep_9 + 33, se_1191, 23 );
stopSe( spep_9 + 50, se_1252, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 82, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_9+72 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_10=spep_9+80;
------------------------------------------------------
-- 遠景　爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_10 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_10 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_10 + 220, finish, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_10 + 220, finish, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, finish, 0 );
setEffRotateKey( spep_10 + 220, finish, 0 );
setEffAlphaKey( spep_10 + 0, finish, 255 );
setEffAlphaKey( spep_10 + 220, finish, 255 );


--SE
playSe( spep_10 + 6, 1137 );
setSeVolume( spep_10 + 6, 1137, 47 );
playSe( spep_10 + 6, 20 );
setSeVolume( spep_10 + 6, 20, 55 );
playSe( spep_10 + 36, 1023 );
playSe( spep_10 + 36, 1024 );
setSeVolume( spep_10 + 36, 1024, 74 );
playSe( spep_10 + 76, 1137 );
setSeVolume( spep_10 + 76, 1137, 74 );
playSe( spep_10 + 82, 1024 );
playSe( spep_10 + 84, 1168 );
setSeVolume( spep_10 + 84, 1168, 71 );
playSe( spep_10 + 120, 1267 );
playSe( spep_10 + 120, 1268 );

-- ** ダメージ表示 ** --
dealDamage( spep_10 + 40 );
endPhase( spep_10 + 210 );


end

