--1020160:カーセラル_ジャスティスサーベル
--sp_effect_b2_00033

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
SP_01=	155612	;--	待機→溜め
SP_02=	155613	;--	正面に迫ってくる
SP_03=	155614	;--	斬撃
SP_04=	155663	;--	斬撃
SP_05=	155666	;--	背景

--エフェクト(てき方)
SP_01x=	155612	;--	待機→溜め
SP_02x=	155613	;--	正面に迫ってくる
SP_03x=	155615	;--	斬撃(敵)
SP_04x=	155664	;--	斬撃(敵)
SP_05x=	155666	;--	背景

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
-- 待機→溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 136, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 136, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+22  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+22  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +34, 190006, 72, 0x100, -1, 0, 230, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +34,  ctgogo,  230,  510);
setEffMoveKey(  spep_0 +106,  ctgogo,  230,  510);

setEffAlphaKey( spep_0 +34, ctgogo, 0 );
setEffAlphaKey( spep_0 + 35, ctgogo, 255 );
setEffAlphaKey( spep_0 + 36, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );
setEffAlphaKey( spep_0 + 102, ctgogo, 191 );
setEffAlphaKey( spep_0 + 104, ctgogo, 112 );
setEffAlphaKey( spep_0 + 106, ctgogo, 64 );

setEffRotateKey(  spep_0 +34,  ctgogo,  0);
setEffRotateKey(  spep_0 +106,  ctgogo,  0);

setEffScaleKey(  spep_0 +34,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +96,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +106,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 28, 1062 );--気ダメ
setSeVolume( spep_0 + 28, 1062, 0 );
setSeVolume( spep_0 + 29, 1062, 4.50 );
setSeVolume( spep_0 + 30, 1062, 9 );
setSeVolume( spep_0 + 31, 1062, 13.50 );
setSeVolume( spep_0 + 32, 1062, 18 );
setSeVolume( spep_0 + 33, 1062, 22.50 );
setSeVolume( spep_0 + 34, 1062, 27 );
setSeVolume( spep_0 + 35, 1062, 31.50 );
setSeVolume( spep_0 + 36, 1062, 36 );
setSeVolume( spep_0 + 37, 1062, 40.50 );
setSeVolume( spep_0 + 38, 1062, 45 );
setSeVolume( spep_0 + 39, 1062, 49.50 );
setSeVolume( spep_0 + 40, 1062, 54 );
playSe( spep_0 + 28, 1042 );--気ダメ
setSeVolume( spep_0 + 28, 1042, 83 );
playSe( spep_0 + 32, 1035 );--気ダメ
se_0103 = playSe( spep_0 + 32, 103 );--気ダメ
setSeVolume( spep_0 + 32, 103, 124 );
setSeVolume( spep_0 + 60, 103,124);
setSeVolume( spep_0 + 61, 103,120);
setSeVolume( spep_0 + 62, 103,116);
setSeVolume( spep_0 + 63, 103,112);
setSeVolume( spep_0 + 64, 103,108);
setSeVolume( spep_0 + 65, 103,104);
setSeVolume( spep_0 + 66, 103,100);
setSeVolume( spep_0 + 67, 103,96);
setSeVolume( spep_0 + 68, 103,92);
setSeVolume( spep_0 + 69, 103,88);
setSeVolume( spep_0 + 70, 103,84);
setSeVolume( spep_0 + 71, 103,80);
setSeVolume( spep_0 + 72, 103,76);
setSeVolume( spep_0 + 73, 103,72);
setSeVolume( spep_0 + 74, 103,68);
setSeVolume( spep_0 + 75, 103,64);
setSeVolume( spep_0 + 76, 103,60);
setSeVolume( spep_0 + 77, 103,56);
setSeVolume( spep_0 + 78, 103,52);
setSeVolume( spep_0 + 79, 103,48);
setSeVolume( spep_0 + 80, 103,44);
setSeVolume( spep_0 + 81, 103,40);
setSeVolume( spep_0 + 82, 103,36);
setSeVolume( spep_0 + 83, 103,32);
setSeVolume( spep_0 + 84, 103,28);
setSeVolume( spep_0 + 85, 103,24);
setSeVolume( spep_0 + 86, 103,20);
setSeVolume( spep_0 + 87, 103,16);
setSeVolume( spep_0 + 88, 103,12);
setSeVolume( spep_0 + 89, 103,8);
setSeVolume( spep_0 + 90, 103,4);
setSeVolume( spep_0 + 91, 103,0);

playSe( spep_0 + 34, 1018 );--顔カットイン
setSeVolume( spep_0 + 34, 1018, 79 );


stopSe( spep_0 + 91, se_0103, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+124 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 136;
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
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 正面に迫ってくる
------------------------------------------------------
demand = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, demand, 0, 0, 0 );
setEffMoveKey( spep_2 + 52, demand, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, demand, 1.0, 1.0 );
setEffScaleKey( spep_2 + 52, demand, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, demand, 0 );
setEffRotateKey( spep_2 + 52, demand, 0 );
setEffAlphaKey( spep_2 + 0, demand, 255 );
setEffAlphaKey( spep_2 + 52, demand, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0, 906, 52, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 52, 20 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 52, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 52, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 52, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 52, shuchusen1, 255 );

--SE
SE0=playSe( spep_2 + 0, 9 );--ダッシュ
setSeVolume( spep_2 + 0, 9, 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
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

--白フェード
entryFade( spep_2+44 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 52;

------------------------------------------------------
-- 斬撃
------------------------------------------------------

--エフェクト
slash_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, slash_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, slash_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slash_f, 0 );
setEffRotateKey( spep_3 + 100, slash_f, 0 );
setEffAlphaKey( spep_3 + 0, slash_f, 255 );
setEffAlphaKey( spep_3 + 100, slash_f, 255 );


--エフェクト
slash_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, slash_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, slash_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slash_b, 0 );
setEffRotateKey( spep_3 + 100, slash_b, 0 );
setEffAlphaKey( spep_3 + 0, slash_b, 255 );
setEffAlphaKey( spep_3 + 100, slash_b, 255 );

--敵の動き
ryusen1 = entryEffectLife( spep_3 + 0,  921, 98, 0x80, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, ryusen1, 98, 15 );
setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1, 1 );
setEffScaleKey( spep_3 + 98, ryusen1, 1, 1 );

setEffRotateKey( spep_3 + 0, ryusen1, 0 );
setEffRotateKey( spep_3 + 98, ryusen1, 0 );

setEffAlphaKey( spep_3 + 0, ryusen1, 255 );
setEffAlphaKey( spep_3 + 98, ryusen1, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 86, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 10, 1, 106 );
changeAnime( spep_3-3 + 60, 1, 108 );


setMoveKey( spep_3 + 0, 1, 394, 4.5 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 311.6, 14.7 , 0 );
setMoveKey( spep_3-3 + 4, 1, 211.1, 8.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, 126.7, 15 , 0 );
setMoveKey( spep_3-3 + 9, 1, 26.3, 9.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 40.1, 10.6 , 0 );
setMoveKey( spep_3-3 + 12, 1, 65.2, 18.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 102.4, 38.1 , 0 );
setMoveKey( spep_3-3 + 16, 1, 125.1, 47.8 , 0 );
setMoveKey( spep_3-3 + 18, 1, 96.1, -68.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 50.1, -49.9 , 0 );
setMoveKey( spep_3-3 + 22, 1, 10.2, -2.8 , 0 );
setMoveKey( spep_3-3 + 24, 1, -34.4, 24.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 88.1, -38.3 , 0 );
setMoveKey( spep_3-3 + 28, 1, 95.1, -13.6 , 0 );
setMoveKey( spep_3-3 + 30, 1, 118.1, 23.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, 125.1, 47.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, -66.9, -54.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, -18.6, -33.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 45.8, -1.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, 94.1, 18.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 74.1, -65.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 21.1, -42.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, -15.9, -7.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, -68.9, 14.8 , 0 );
setMoveKey( spep_3-3 + 50, 1, -42.9, -90.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, -22.9, -74.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 13.1, -46.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 33.1, -30.2 , 0 );
setMoveKey( spep_3-3 + 59, 1, 69.1, -2.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, 176.3, -10.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, 204.1, -0.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 267.3, -0.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 243.8, 8.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 234.5, 5.3 , 0 );
setMoveKey( spep_3-3 + 70, 1, 277.4, 16.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 295.2, 15.4 , 0 );
setMoveKey( spep_3-3 + 74, 1, 323.1, 25.8 , 0 );
setMoveKey( spep_3-3 + 76, 1, 334.9, 24.2 , 0 );
setMoveKey( spep_3-3 + 78, 1, 362.7, 34.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 374.6, 33 , 0 );
setMoveKey( spep_3-3 + 82, 1, 402.4, 43.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, 414.3, 41.7 , 0 );
setMoveKey( spep_3-3 + 86, 1, 434.1, 46.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.02, 1.02 );
--setScaleKey( spep_3-3 + 2, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 4, 1, 1.21, 1.21 );
setScaleKey( spep_3-3 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_3-3 + 9, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 10, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 12, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 24, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 59, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 60, 1, 2.02, 2.02 );
setScaleKey( spep_3-3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 64, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 66, 1, 1.67, 1.67 );
setScaleKey( spep_3-3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 70, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 72, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 74, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 76, 1, 1.09, 1.09 );
setScaleKey( spep_3-3 + 78, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 80, 1, 0.86, 0.86 );
setScaleKey( spep_3-3 + 82, 1, 0.74, 0.74 );
setScaleKey( spep_3-3 + 84, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 86, 1, 0.51, 0.51 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 10, 1, 0 );
setRotateKey( spep_3-3 + 12, 1, 3 );
setRotateKey( spep_3-3 + 14, 1, 6 );
setRotateKey( spep_3-3 + 16, 1, 9.1 );
setRotateKey( spep_3-3 + 18, 1, -0.7 );
setRotateKey( spep_3-3 + 20, 1, 6.1 );
setRotateKey( spep_3-3 + 22, 1, 12.9 );
setRotateKey( spep_3-3 + 24, 1, 19.7 );
setRotateKey( spep_3-3 + 26, 1, -1.9 );
setRotateKey( spep_3-3 + 28, 1, 4.8 );
setRotateKey( spep_3-3 + 30, 1, 11.4 );
setRotateKey( spep_3-3 + 32, 1, 18.1 );
setRotateKey( spep_3-3 + 34, 1, 0 );
setRotateKey( spep_3-3 + 36, 1, 3 );
setRotateKey( spep_3-3 + 38, 1, 6 );
setRotateKey( spep_3-3 + 40, 1, 9.1 );
setRotateKey( spep_3-3 + 42, 1, -0.7 );
setRotateKey( spep_3-3 + 44, 1, 7.5 );
setRotateKey( spep_3-3 + 46, 1, 15.6 );
setRotateKey( spep_3-3 + 48, 1, 23.8 );
setRotateKey( spep_3-3 + 50, 1, -1.9 );
setRotateKey( spep_3-3 + 52, 1, 3.1 );
setRotateKey( spep_3-3 + 54, 1, 8.1 );
setRotateKey( spep_3-3 + 56, 1, 13.1 );
setRotateKey( spep_3-3 + 59, 1, 18.1 );
setRotateKey( spep_3-3 + 60, 1, 0 );
setRotateKey( spep_3-3 + 86, 1, 0 );
--[[
--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 14,  10020, 10, 0x100, -1, 0, 191.9, 34 );
setEffShake( spep_3-3 + 14, ctbaki, 10, 10 );
setEffMoveKey( spep_3-3 + 14, ctbaki, 191.9, 34 , 0 );
setEffMoveKey( spep_3-3 + 16, ctbaki, 204.6, 44.6 , 0 );
setEffMoveKey( spep_3-3 + 18, ctbaki, 204.3, 58.9 , 0 );
setEffMoveKey( spep_3-3 + 20, ctbaki, 212, 55.9 , 0 );
setEffMoveKey( spep_3-3 + 22, ctbaki, 205.9, 62 , 0 );
setEffMoveKey( spep_3-3 + 24, ctbaki, 212, 55.9 , 0 );

setEffScaleKey( spep_3-3 + 14, ctbaki, 0.58, 0.58 );
--setEffScaleKey( spep_3-3 + 16, ctbaki, 0.25, 0.25 );
--setEffScaleKey( spep_3-3 + 18, ctbaki, 0.29, 0.29 );
setEffScaleKey( spep_3-3 + 20, ctbaki, 1.11, 1.11 );
setEffScaleKey( spep_3-3 + 24, ctbaki, 1.11, 1.11 );

setEffRotateKey( spep_3-3 + 14, ctbaki, 0 );
setEffRotateKey( spep_3-3 + 24, ctbaki, 0 );

setEffAlphaKey( spep_3-3 + 14, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 24, ctbaki, 255 );

--文字エントリー
ctbaki1 = entryEffectLife( spep_3-3 + 28,  10020, 10, 0x100, -1, 0, 131.9, -46 );
setEffShake( spep_3-3 + 28, ctbaki1, 10, 10 );
setEffMoveKey( spep_3-3 + 28, ctbaki1, 131.9, -46 , 0 );
setEffMoveKey( spep_3-3 + 30, ctbaki1, 87.2, 35.4 , 0 );
setEffMoveKey( spep_3-3 + 32, ctbaki1, 44.8, 85.6 , 0 );
setEffMoveKey( spep_3-3 + 34, ctbaki1, 47.4, 100 , 0 );
setEffMoveKey( spep_3-3 + 36, ctbaki1, 34, 102 , 0 );
setEffMoveKey( spep_3-3 + 38, ctbaki1, 47.4, 100 , 0 );

setEffScaleKey( spep_3-3 + 28, ctbaki1, 0.58, 0.58 );
--setEffScaleKey( spep_3-3 + 30, ctbaki1, 0.35, 0.35 );
--setEffScaleKey( spep_3-3 + 32, ctbaki1, 0.45, 0.45 );
setEffScaleKey( spep_3-3 + 34, ctbaki1, 1.48, 1.48 );
setEffScaleKey( spep_3-3 + 38, ctbaki1, 1.48, 1.48 );

setEffRotateKey( spep_3-3 + 28, ctbaki1, -44.5 );
setEffRotateKey( spep_3-3 + 30, ctbaki1, -40.2 );
setEffRotateKey( spep_3-3 + 32, ctbaki1, -37.6 );
setEffRotateKey( spep_3-3 + 34, ctbaki1, -36.7 );
setEffRotateKey( spep_3-3 + 38, ctbaki1, -36.7 );

setEffAlphaKey( spep_3-3 + 28, ctbaki1, 255 );
setEffAlphaKey( spep_3-3 + 38, ctbaki1, 255 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_3-3 + 42,  10020, 12, 0x100, -1, 0, 249.9, -14 );
setEffShake( spep_3-3 + 42, ctbaki2, 12, 10 );
setEffMoveKey( spep_3-3 + 42, ctbaki2, 249.9, -14 , 0 );
setEffMoveKey( spep_3-3 + 44, ctbaki2, 252.4, 52.9 , 0 );
setEffMoveKey( spep_3-3 + 46, ctbaki2, 253.5, 114 , 0 );
setEffMoveKey( spep_3-3 + 48, ctbaki2, 254.3, 110.4 , 0 );
setEffMoveKey( spep_3-3 + 50, ctbaki2, 253.9, 130 , 0 );
setEffMoveKey( spep_3-3 + 52, ctbaki2, 254.3, 110.4 , 0 );
setEffMoveKey( spep_3-3 + 54, ctbaki2, 254.3, 110.4 , 0 );

setEffScaleKey( spep_3-3 + 42, ctbaki2, 0.58, 0.58 );
--setEffScaleKey( spep_3-3 + 44, ctbaki2, 0.46, 0.46 );
--setEffScaleKey( spep_3-3 + 46, ctbaki2, 0.64, 0.64 );
setEffScaleKey( spep_3-3 + 48, ctbaki2, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 54, ctbaki2, 2.29, 2.29 );

setEffRotateKey( spep_3-3 + 42, ctbaki2, 43.5 );
setEffRotateKey( spep_3-3 + 44, ctbaki2, 43.7 );
setEffRotateKey( spep_3-3 + 46, ctbaki2, 43.9 );
setEffRotateKey( spep_3-3 + 48, ctbaki2, 44 );
setEffRotateKey( spep_3-3 + 54, ctbaki2, 44 );

setEffAlphaKey( spep_3-3 + 42, ctbaki2, 255 );
setEffAlphaKey( spep_3-3 + 48, ctbaki2, 255 );
setEffAlphaKey( spep_3-3 + 50, ctbaki2, 179 );
setEffAlphaKey( spep_3-3 + 52, ctbaki2, 102 );
setEffAlphaKey( spep_3-3 + 54, ctbaki2, 26 );


--文字エントリー
ctbaki3 = entryEffectLife( spep_3-3 + 40,  10020, 32, 0x100, -1, 0, 165.9, 24 );
setEffShake( spep_3-3 + 40, ctbaki, 32, 10 );
setEffMoveKey( spep_3-3 + 40, ctbaki3, 165.9, 24 , 0 );
setEffMoveKey( spep_3-3 + 50, ctbaki3, 121.4, 112.3 , 0 );
setEffMoveKey( spep_3-3 + 52, ctbaki3, 75.3, 178.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctbaki3, 83.1, 185.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctbaki3, 64, 198 , 0 );
setEffMoveKey( spep_3-3 + 58, ctbaki3, 84.7, 184.8 , 0 );
setEffMoveKey( spep_3-3 + 60, ctbaki3, 85.5, 184.3 , 0 );
setEffMoveKey( spep_3-3 + 62, ctbaki3, 86.4, 183.8 , 0 );
setEffMoveKey( spep_3-3 + 64, ctbaki3, 87.2, 183.2 , 0 );
setEffMoveKey( spep_3-3 + 66, ctbaki3, 88, 182.7 , 0 );
setEffMoveKey( spep_3-3 + 68, ctbaki3, 88.8, 182.2 , 0 );
setEffMoveKey( spep_3-3 + 70, ctbaki3, 89.7, 181.7 , 0 );
setEffMoveKey( spep_3-3 + 72, ctbaki3, 90.5, 181.1 , 0 );
setEffMoveKey( spep_3-3 + 74, ctbaki3, 91.3, 180.6 , 0 );
setEffMoveKey( spep_3-3 + 76, ctbaki3, 92.2, 180.1 , 0 );
setEffMoveKey( spep_3-3 + 78, ctbaki3, 93, 179.5 , 0 );
setEffMoveKey( spep_3-3 + 80, ctbaki3, 93.8, 179 , 0 );

setEffScaleKey( spep_3-3 + 40, ctbaki3, 0.58, 0.58 );
setEffScaleKey( spep_3-3 + 48, ctbaki3, 0.58, 0.58 );
setEffScaleKey( spep_3-3 + 50, ctbaki3, 1.12, 1.12 );
--setEffScaleKey( spep_3-3 + 52, ctbaki3, 0.73, 0.73 );
--setEffScaleKey( spep_3-3 + 54, ctbaki3, 0.8, 0.8 );
--setEffScaleKey( spep_3-3 + 56, ctbaki3, 0.83, 0.83 );
--setEffScaleKey( spep_3-3 + 58, ctbaki3, 0.87, 0.87 );
--setEffScaleKey( spep_3-3 + 60, ctbaki3, 0.9, 0.9 );
--setEffScaleKey( spep_3-3 + 62, ctbaki3, 0.94, 0.94 );
--setEffScaleKey( spep_3-3 + 64, ctbaki3, 0.97, 0.97 );
setEffScaleKey( spep_3-3 + 66, ctbaki3, 2.81, 2.81 );
--setEffScaleKey( spep_3-3 + 68, ctbaki3, 1.04, 1.04 );
--setEffScaleKey( spep_3-3 + 70, ctbaki3, 1.08, 1.08 );
--setEffScaleKey( spep_3-3 + 72, ctbaki3, 1.11, 1.11 );
--setEffScaleKey( spep_3-3 + 74, ctbaki3, 1.15, 1.15 );
--setEffScaleKey( spep_3-3 + 76, ctbaki3, 1.18, 1.18 );
--setEffScaleKey( spep_3-3 + 78, ctbaki3, 1.21, 1.21 );
setEffScaleKey( spep_3-3 + 80, ctbaki3, 3.85, 3.85 );

setEffRotateKey( spep_3-3 + 40, ctbaki3, -7.5 );
setEffRotateKey( spep_3-3 + 48, ctbaki3, -7.5 );
setEffRotateKey( spep_3-3 + 50, ctbaki3, -10.3 );
setEffRotateKey( spep_3-3 + 52, ctbaki3, -12 );
setEffRotateKey( spep_3-3 + 54, ctbaki3, -12.5 );
setEffRotateKey( spep_3-3 + 80, ctbaki3, -12.5 );

setEffAlphaKey( spep_3-3 + 40, ctbaki3, 0 );
setEffAlphaKey( spep_3-3 + 46, ctbaki3, 0 );
setEffAlphaKey( spep_3-3 + 47, ctbaki3, 0 );
setEffAlphaKey( spep_3-3 + 48, ctbaki3, 255 );
setEffAlphaKey( spep_3-3 + 54, ctbaki3, 255 );
setEffAlphaKey( spep_3-3 + 56, ctbaki3, 235 );
setEffAlphaKey( spep_3-3 + 58, ctbaki3, 216 );
setEffAlphaKey( spep_3-3 + 60, ctbaki3, 196 );
setEffAlphaKey( spep_3-3 + 62, ctbaki3, 177 );
setEffAlphaKey( spep_3-3 + 64, ctbaki3, 157 );
setEffAlphaKey( spep_3-3 + 66, ctbaki3, 137 );
setEffAlphaKey( spep_3-3 + 68, ctbaki3, 118 );
setEffAlphaKey( spep_3-3 + 70, ctbaki3, 98 );
setEffAlphaKey( spep_3-3 + 72, ctbaki3, 78 );
setEffAlphaKey( spep_3-3 + 74, ctbaki3, 59 );
setEffAlphaKey( spep_3-3 + 76, ctbaki3, 39 );
setEffAlphaKey( spep_3-3 + 78, ctbaki3, 20 );
setEffAlphaKey( spep_3-3 + 80, ctbaki3, 0 );
]]
--SE
playSe( spep_3 + 0, 1189 );--ラッシュ
playSe( spep_3 + 4, 1141 );--ラッシュ
setSeVolume( spep_3 + 4, 1141, 63 );
playSe( spep_3 + 4, 1032 );--ラッシュ
playSe( spep_3 + 16, 1141 );--ラッシュ
setSeVolume( spep_3 + 16, 1141, 56 );
playSe( spep_3 + 16, 1032 );--ラッシュ
setSeVolume( spep_3 + 16, 1032, 79 );
playSe( spep_3 + 30, 1141 );--ラッシュ
setSeVolume( spep_3 + 30, 1141, 47 );
playSe( spep_3 + 30, 1032 );--ラッシュ
setSeVolume( spep_3 + 30, 1032, 89 );
playSe( spep_3 + 44, 1141 );--ラッシュ
setSeVolume( spep_3 + 44, 1141, 48 );
playSe( spep_3 + 44, 1032 );--ラッシュ
setSeVolume( spep_3 + 44, 1032, 71 );
playSe( spep_3 + 58, 1003 );--ラスト斬り
setSeVolume( spep_3 + 58, 1003, 76 );
playSe( spep_3 + 58, 1142 );--ラスト斬り
setSeVolume( spep_3 + 58, 1142, 37 );
playSe( spep_3 + 62, 1143 );--ラスト斬り
setSeVolume( spep_3 + 62, 1143, 55 );
playSe( spep_3 + 62, 1032 );--ラスト斬り
playSe( spep_3 + 62, 1027 );--ラスト斬り
setSeVolume( spep_3 + 62, 1027, 56 );


-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3+92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 100, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga, 0 );
setEffRotateKey( spep_4 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_4 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_4 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

--SE
playSe( spep_4 + 0, 1023 );--爆発
playSe( spep_4 + 14, 1054 );--ガッ

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 98 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 待機→溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 136, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 136, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 136, tame, 255 );

--- ** 顔カットイン ** --
--speff = entryEffect( spep_0+22  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+22  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え


-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +34, 190006, 72, 0x100, -1, 0, 30, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +34,  ctgogo,  30,  510);
setEffMoveKey(  spep_0 +106,  ctgogo,  30,  510);

setEffAlphaKey( spep_0 +34, ctgogo, 0 );
setEffAlphaKey( spep_0 + 35, ctgogo, 255 );
setEffAlphaKey( spep_0 + 36, ctgogo, 255 );
setEffAlphaKey( spep_0 + 100, ctgogo, 255 );
setEffAlphaKey( spep_0 + 102, ctgogo, 191 );
setEffAlphaKey( spep_0 + 104, ctgogo, 112 );
setEffAlphaKey( spep_0 + 106, ctgogo, 64 );

setEffRotateKey(  spep_0 +34,  ctgogo,  0);
setEffRotateKey(  spep_0 +106,  ctgogo,  0);

setEffScaleKey(  spep_0 +34,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +96,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +106,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 28, 1062 );--気ダメ
setSeVolume( spep_0 + 28, 1062, 0 );
setSeVolume( spep_0 + 29, 1062, 4.50 );
setSeVolume( spep_0 + 30, 1062, 9 );
setSeVolume( spep_0 + 31, 1062, 13.50 );
setSeVolume( spep_0 + 32, 1062, 18 );
setSeVolume( spep_0 + 33, 1062, 22.50 );
setSeVolume( spep_0 + 34, 1062, 27 );
setSeVolume( spep_0 + 35, 1062, 31.50 );
setSeVolume( spep_0 + 36, 1062, 36 );
setSeVolume( spep_0 + 37, 1062, 40.50 );
setSeVolume( spep_0 + 38, 1062, 45 );
setSeVolume( spep_0 + 39, 1062, 49.50 );
setSeVolume( spep_0 + 40, 1062, 54 );
playSe( spep_0 + 28, 1042 );--気ダメ
setSeVolume( spep_0 + 28, 1042, 83 );
playSe( spep_0 + 32, 1035 );--気ダメ
se_0103 = playSe( spep_0 + 32, 103 );--気ダメ
setSeVolume( spep_0 + 32, 103, 124 );
setSeVolume( spep_0 + 60, 103,124);
setSeVolume( spep_0 + 61, 103,120);
setSeVolume( spep_0 + 62, 103,116);
setSeVolume( spep_0 + 63, 103,112);
setSeVolume( spep_0 + 64, 103,108);
setSeVolume( spep_0 + 65, 103,104);
setSeVolume( spep_0 + 66, 103,100);
setSeVolume( spep_0 + 67, 103,96);
setSeVolume( spep_0 + 68, 103,92);
setSeVolume( spep_0 + 69, 103,88);
setSeVolume( spep_0 + 70, 103,84);
setSeVolume( spep_0 + 71, 103,80);
setSeVolume( spep_0 + 72, 103,76);
setSeVolume( spep_0 + 73, 103,72);
setSeVolume( spep_0 + 74, 103,68);
setSeVolume( spep_0 + 75, 103,64);
setSeVolume( spep_0 + 76, 103,60);
setSeVolume( spep_0 + 77, 103,56);
setSeVolume( spep_0 + 78, 103,52);
setSeVolume( spep_0 + 79, 103,48);
setSeVolume( spep_0 + 80, 103,44);
setSeVolume( spep_0 + 81, 103,40);
setSeVolume( spep_0 + 82, 103,36);
setSeVolume( spep_0 + 83, 103,32);
setSeVolume( spep_0 + 84, 103,28);
setSeVolume( spep_0 + 85, 103,24);
setSeVolume( spep_0 + 86, 103,20);
setSeVolume( spep_0 + 87, 103,16);
setSeVolume( spep_0 + 88, 103,12);
setSeVolume( spep_0 + 89, 103,8);
setSeVolume( spep_0 + 90, 103,4);
setSeVolume( spep_0 + 91, 103,0);

playSe( spep_0 + 34, 1018 );--顔カットイン
setSeVolume( spep_0 + 34, 1018, 79 );


stopSe( spep_0 + 90, se_0103, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 140, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_0+124 , 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 136;
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
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 正面に迫ってくる
------------------------------------------------------
demand = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, demand, 0, 0, 0 );
setEffMoveKey( spep_2 + 52, demand, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, demand, -1.0, 1.0 );
setEffScaleKey( spep_2 + 52, demand, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, demand, 0 );
setEffRotateKey( spep_2 + 52, demand, 0 );
setEffAlphaKey( spep_2 + 0, demand, 255 );
setEffAlphaKey( spep_2 + 52, demand, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 0, 906, 52, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen1, 52, 20 );

setEffMoveKey( spep_2 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 + 52, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_2 + 52, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen1, 0 );
setEffRotateKey( spep_2 + 52, shuchusen1, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 52, shuchusen1, 255 );

--SE
SE0=playSe( spep_2 + 0, 9 );--ダッシュ
setSeVolume( spep_2 + 0, 9, 112 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
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

--白フェード
entryFade( spep_2+44 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 52;

------------------------------------------------------
-- 斬撃
------------------------------------------------------
--エフェクト
slash_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, slash_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, slash_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slash_f, 0 );
setEffRotateKey( spep_3 + 100, slash_f, 0 );
setEffAlphaKey( spep_3 + 0, slash_f, 255 );
setEffAlphaKey( spep_3 + 100, slash_f, 255 );


--エフェクト
slash_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, slash_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 100, slash_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 100, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slash_b, 0 );
setEffRotateKey( spep_3 + 100, slash_b, 0 );
setEffAlphaKey( spep_3 + 0, slash_b, 255 );
setEffAlphaKey( spep_3 + 100, slash_b, 255 );

--敵の動き
ryusen1 = entryEffectLife( spep_3 + 0,  921, 98, 0x80, -1, 0, 0, 0 );
setEffShake( spep_3 + 0, ryusen1, 98, 15 );
setEffMoveKey( spep_3 + 0, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, ryusen1, 1, 1 );
setEffScaleKey( spep_3 + 98, ryusen1, 1, 1 );

setEffRotateKey( spep_3 + 0, ryusen1, 0 );
setEffRotateKey( spep_3 + 98, ryusen1, 0 );

setEffAlphaKey( spep_3 + 0, ryusen1, 255 );
setEffAlphaKey( spep_3 + 98, ryusen1, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 86, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 10, 1, 106 );
changeAnime( spep_3-3 + 60, 1, 108 );


setMoveKey( spep_3 + 0, 1, 394, 4.5 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 311.6, 14.7 , 0 );
setMoveKey( spep_3-3 + 4, 1, 211.1, 8.8 , 0 );
setMoveKey( spep_3-3 + 6, 1, 126.7, 15 , 0 );
setMoveKey( spep_3-3 + 9, 1, 26.3, 9.1 , 0 );
setMoveKey( spep_3-3 + 10, 1, 40.1, 10.6 , 0 );
setMoveKey( spep_3-3 + 12, 1, 65.2, 18.1 , 0 );
setMoveKey( spep_3-3 + 14, 1, 102.4, 38.1 , 0 );
setMoveKey( spep_3-3 + 16, 1, 125.1, 47.8 , 0 );
setMoveKey( spep_3-3 + 18, 1, 96.1, -68.3 , 0 );
setMoveKey( spep_3-3 + 20, 1, 50.1, -49.9 , 0 );
setMoveKey( spep_3-3 + 22, 1, 10.2, -2.8 , 0 );
setMoveKey( spep_3-3 + 24, 1, -34.4, 24.9 , 0 );
setMoveKey( spep_3-3 + 26, 1, 88.1, -38.3 , 0 );
setMoveKey( spep_3-3 + 28, 1, 95.1, -13.6 , 0 );
setMoveKey( spep_3-3 + 30, 1, 118.1, 23.1 , 0 );
setMoveKey( spep_3-3 + 32, 1, 125.1, 47.8 , 0 );
setMoveKey( spep_3-3 + 34, 1, -66.9, -54.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, -18.6, -33.9 , 0 );
setMoveKey( spep_3-3 + 38, 1, 45.8, -1.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, 94.1, 18.8 , 0 );
setMoveKey( spep_3-3 + 42, 1, 74.1, -65.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 21.1, -42.6 , 0 );
setMoveKey( spep_3-3 + 46, 1, -15.9, -7.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, -68.9, 14.8 , 0 );
setMoveKey( spep_3-3 + 50, 1, -42.9, -90.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, -22.9, -74.2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 13.1, -46.2 , 0 );
setMoveKey( spep_3-3 + 56, 1, 33.1, -30.2 , 0 );
setMoveKey( spep_3-3 + 59, 1, 69.1, -2.2 , 0 );
setMoveKey( spep_3-3 + 60, 1, 176.3, -10.9 , 0 );
setMoveKey( spep_3-3 + 62, 1, 204.1, -0.5 , 0 );
setMoveKey( spep_3-3 + 64, 1, 267.3, -0.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, 243.8, 8.2 , 0 );
setMoveKey( spep_3-3 + 68, 1, 234.5, 5.3 , 0 );
setMoveKey( spep_3-3 + 70, 1, 277.4, 16.5 , 0 );
setMoveKey( spep_3-3 + 72, 1, 295.2, 15.4 , 0 );
setMoveKey( spep_3-3 + 74, 1, 323.1, 25.8 , 0 );
setMoveKey( spep_3-3 + 76, 1, 334.9, 24.2 , 0 );
setMoveKey( spep_3-3 + 78, 1, 362.7, 34.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 374.6, 33 , 0 );
setMoveKey( spep_3-3 + 82, 1, 402.4, 43.3 , 0 );
setMoveKey( spep_3-3 + 84, 1, 414.3, 41.7 , 0 );
setMoveKey( spep_3-3 + 86, 1, 434.1, 46.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.02, 1.02 );
--setScaleKey( spep_3-3 + 2, 1, 1.12, 1.12 );
setScaleKey( spep_3-3 + 4, 1, 1.21, 1.21 );
setScaleKey( spep_3-3 + 6, 1, 1.3, 1.3 );
setScaleKey( spep_3-3 + 9, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 10, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 12, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 14, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 18, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 22, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 24, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 26, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 59, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 60, 1, 2.02, 2.02 );
setScaleKey( spep_3-3 + 62, 1, 1.9, 1.9 );
setScaleKey( spep_3-3 + 64, 1, 2.32, 2.32 );
setScaleKey( spep_3-3 + 66, 1, 1.67, 1.67 );
setScaleKey( spep_3-3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 70, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 72, 1, 1.32, 1.32 );
setScaleKey( spep_3-3 + 74, 1, 1.2, 1.2 );
setScaleKey( spep_3-3 + 76, 1, 1.09, 1.09 );
setScaleKey( spep_3-3 + 78, 1, 0.97, 0.97 );
setScaleKey( spep_3-3 + 80, 1, 0.86, 0.86 );
setScaleKey( spep_3-3 + 82, 1, 0.74, 0.74 );
setScaleKey( spep_3-3 + 84, 1, 0.62, 0.62 );
setScaleKey( spep_3-3 + 86, 1, 0.51, 0.51 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-3 + 10, 1, 0 );
setRotateKey( spep_3-3 + 12, 1, 3 );
setRotateKey( spep_3-3 + 14, 1, 6 );
setRotateKey( spep_3-3 + 16, 1, 9.1 );
setRotateKey( spep_3-3 + 18, 1, -0.7 );
setRotateKey( spep_3-3 + 20, 1, 6.1 );
setRotateKey( spep_3-3 + 22, 1, 12.9 );
setRotateKey( spep_3-3 + 24, 1, 19.7 );
setRotateKey( spep_3-3 + 26, 1, -1.9 );
setRotateKey( spep_3-3 + 28, 1, 4.8 );
setRotateKey( spep_3-3 + 30, 1, 11.4 );
setRotateKey( spep_3-3 + 32, 1, 18.1 );
setRotateKey( spep_3-3 + 34, 1, 0 );
setRotateKey( spep_3-3 + 36, 1, 3 );
setRotateKey( spep_3-3 + 38, 1, 6 );
setRotateKey( spep_3-3 + 40, 1, 9.1 );
setRotateKey( spep_3-3 + 42, 1, -0.7 );
setRotateKey( spep_3-3 + 44, 1, 7.5 );
setRotateKey( spep_3-3 + 46, 1, 15.6 );
setRotateKey( spep_3-3 + 48, 1, 23.8 );
setRotateKey( spep_3-3 + 50, 1, -1.9 );
setRotateKey( spep_3-3 + 52, 1, 3.1 );
setRotateKey( spep_3-3 + 54, 1, 8.1 );
setRotateKey( spep_3-3 + 56, 1, 13.1 );
setRotateKey( spep_3-3 + 59, 1, 18.1 );
setRotateKey( spep_3-3 + 60, 1, 0 );
setRotateKey( spep_3-3 + 86, 1, 0 );
--[[
--文字エントリー
ctbaki = entryEffectLife( spep_3-3 + 14,  10020, 10, 0x100, -1, 0, 191.9, 34 );
setEffShake( spep_3-3 + 14, ctbaki, 10, 10 );
setEffMoveKey( spep_3-3 + 14, ctbaki, 191.9, 34 , 0 );
setEffMoveKey( spep_3-3 + 16, ctbaki, 204.6, 44.6 , 0 );
setEffMoveKey( spep_3-3 + 18, ctbaki, 204.3, 58.9 , 0 );
setEffMoveKey( spep_3-3 + 20, ctbaki, 212, 55.9 , 0 );
setEffMoveKey( spep_3-3 + 22, ctbaki, 205.9, 62 , 0 );
setEffMoveKey( spep_3-3 + 24, ctbaki, 212, 55.9 , 0 );

setEffScaleKey( spep_3-3 + 14, ctbaki, 0.58, 0.58 );
--setEffScaleKey( spep_3-3 + 16, ctbaki, 0.25, 0.25 );
--setEffScaleKey( spep_3-3 + 18, ctbaki, 0.29, 0.29 );
setEffScaleKey( spep_3-3 + 20, ctbaki, 1.11, 1.11 );
setEffScaleKey( spep_3-3 + 24, ctbaki, 1.11, 1.11 );

setEffRotateKey( spep_3-3 + 14, ctbaki, 0 );
setEffRotateKey( spep_3-3 + 24, ctbaki, 0 );

setEffAlphaKey( spep_3-3 + 14, ctbaki, 255 );
setEffAlphaKey( spep_3-3 + 24, ctbaki, 255 );

--文字エントリー
ctbaki1 = entryEffectLife( spep_3-3 + 28,  10020, 10, 0x100, -1, 0, 131.9, -46 );
setEffShake( spep_3-3 + 28, ctbaki1, 10, 10 );
setEffMoveKey( spep_3-3 + 28, ctbaki1, 131.9, -46 , 0 );
setEffMoveKey( spep_3-3 + 30, ctbaki1, 87.2, 35.4 , 0 );
setEffMoveKey( spep_3-3 + 32, ctbaki1, 44.8, 85.6 , 0 );
setEffMoveKey( spep_3-3 + 34, ctbaki1, 47.4, 100 , 0 );
setEffMoveKey( spep_3-3 + 36, ctbaki1, 34, 102 , 0 );
setEffMoveKey( spep_3-3 + 38, ctbaki1, 47.4, 100 , 0 );

setEffScaleKey( spep_3-3 + 28, ctbaki1, 0.58, 0.58 );
--setEffScaleKey( spep_3-3 + 30, ctbaki1, 0.35, 0.35 );
--setEffScaleKey( spep_3-3 + 32, ctbaki1, 0.45, 0.45 );
setEffScaleKey( spep_3-3 + 34, ctbaki1, 1.48, 1.48 );
setEffScaleKey( spep_3-3 + 38, ctbaki1, 1.48, 1.48 );

setEffRotateKey( spep_3-3 + 28, ctbaki1, -44.5 );
setEffRotateKey( spep_3-3 + 30, ctbaki1, -40.2 );
setEffRotateKey( spep_3-3 + 32, ctbaki1, -37.6 );
setEffRotateKey( spep_3-3 + 34, ctbaki1, -36.7 );
setEffRotateKey( spep_3-3 + 38, ctbaki1, -36.7 );

setEffAlphaKey( spep_3-3 + 28, ctbaki1, 255 );
setEffAlphaKey( spep_3-3 + 38, ctbaki1, 255 );

--文字エントリー
ctbaki2 = entryEffectLife( spep_3-3 + 42,  10020, 12, 0x100, -1, 0, 249.9, -14 );
setEffShake( spep_3-3 + 42, ctbaki2, 12, 10 );
setEffMoveKey( spep_3-3 + 42, ctbaki2, 249.9, -14 , 0 );
setEffMoveKey( spep_3-3 + 44, ctbaki2, 252.4, 52.9 , 0 );
setEffMoveKey( spep_3-3 + 46, ctbaki2, 253.5, 114 , 0 );
setEffMoveKey( spep_3-3 + 48, ctbaki2, 254.3, 110.4 , 0 );
setEffMoveKey( spep_3-3 + 50, ctbaki2, 253.9, 130 , 0 );
setEffMoveKey( spep_3-3 + 52, ctbaki2, 254.3, 110.4 , 0 );
setEffMoveKey( spep_3-3 + 54, ctbaki2, 254.3, 110.4 , 0 );

setEffScaleKey( spep_3-3 + 42, ctbaki2, 0.58, 0.58 );
--setEffScaleKey( spep_3-3 + 44, ctbaki2, 0.46, 0.46 );
--setEffScaleKey( spep_3-3 + 46, ctbaki2, 0.64, 0.64 );
setEffScaleKey( spep_3-3 + 48, ctbaki2, 2.29, 2.29 );
setEffScaleKey( spep_3-3 + 54, ctbaki2, 2.29, 2.29 );

setEffRotateKey( spep_3-3 + 42, ctbaki2, 43.5 );
setEffRotateKey( spep_3-3 + 44, ctbaki2, 43.7 );
setEffRotateKey( spep_3-3 + 46, ctbaki2, 43.9 );
setEffRotateKey( spep_3-3 + 48, ctbaki2, 44 );
setEffRotateKey( spep_3-3 + 54, ctbaki2, 44 );

setEffAlphaKey( spep_3-3 + 42, ctbaki2, 255 );
setEffAlphaKey( spep_3-3 + 48, ctbaki2, 255 );
setEffAlphaKey( spep_3-3 + 50, ctbaki2, 179 );
setEffAlphaKey( spep_3-3 + 52, ctbaki2, 102 );
setEffAlphaKey( spep_3-3 + 54, ctbaki2, 26 );


--文字エントリー
ctbaki3 = entryEffectLife( spep_3-3 + 40,  10020, 32, 0x100, -1, 0, 165.9, 24 );
setEffShake( spep_3-3 + 40, ctbaki, 32, 10 );
setEffMoveKey( spep_3-3 + 40, ctbaki3, 165.9, 24 , 0 );
setEffMoveKey( spep_3-3 + 50, ctbaki3, 121.4, 112.3 , 0 );
setEffMoveKey( spep_3-3 + 52, ctbaki3, 75.3, 178.7 , 0 );
setEffMoveKey( spep_3-3 + 54, ctbaki3, 83.1, 185.9 , 0 );
setEffMoveKey( spep_3-3 + 56, ctbaki3, 64, 198 , 0 );
setEffMoveKey( spep_3-3 + 58, ctbaki3, 84.7, 184.8 , 0 );
setEffMoveKey( spep_3-3 + 60, ctbaki3, 85.5, 184.3 , 0 );
setEffMoveKey( spep_3-3 + 62, ctbaki3, 86.4, 183.8 , 0 );
setEffMoveKey( spep_3-3 + 64, ctbaki3, 87.2, 183.2 , 0 );
setEffMoveKey( spep_3-3 + 66, ctbaki3, 88, 182.7 , 0 );
setEffMoveKey( spep_3-3 + 68, ctbaki3, 88.8, 182.2 , 0 );
setEffMoveKey( spep_3-3 + 70, ctbaki3, 89.7, 181.7 , 0 );
setEffMoveKey( spep_3-3 + 72, ctbaki3, 90.5, 181.1 , 0 );
setEffMoveKey( spep_3-3 + 74, ctbaki3, 91.3, 180.6 , 0 );
setEffMoveKey( spep_3-3 + 76, ctbaki3, 92.2, 180.1 , 0 );
setEffMoveKey( spep_3-3 + 78, ctbaki3, 93, 179.5 , 0 );
setEffMoveKey( spep_3-3 + 80, ctbaki3, 93.8, 179 , 0 );

setEffScaleKey( spep_3-3 + 40, ctbaki3, 0.58, 0.58 );
setEffScaleKey( spep_3-3 + 48, ctbaki3, 0.58, 0.58 );
setEffScaleKey( spep_3-3 + 50, ctbaki3, 1.12, 1.12 );
--setEffScaleKey( spep_3-3 + 52, ctbaki3, 0.73, 0.73 );
--setEffScaleKey( spep_3-3 + 54, ctbaki3, 0.8, 0.8 );
--setEffScaleKey( spep_3-3 + 56, ctbaki3, 0.83, 0.83 );
--setEffScaleKey( spep_3-3 + 58, ctbaki3, 0.87, 0.87 );
--setEffScaleKey( spep_3-3 + 60, ctbaki3, 0.9, 0.9 );
--setEffScaleKey( spep_3-3 + 62, ctbaki3, 0.94, 0.94 );
--setEffScaleKey( spep_3-3 + 64, ctbaki3, 0.97, 0.97 );
setEffScaleKey( spep_3-3 + 66, ctbaki3, 2.81, 2.81 );
--setEffScaleKey( spep_3-3 + 68, ctbaki3, 1.04, 1.04 );
--setEffScaleKey( spep_3-3 + 70, ctbaki3, 1.08, 1.08 );
--setEffScaleKey( spep_3-3 + 72, ctbaki3, 1.11, 1.11 );
--setEffScaleKey( spep_3-3 + 74, ctbaki3, 1.15, 1.15 );
--setEffScaleKey( spep_3-3 + 76, ctbaki3, 1.18, 1.18 );
--setEffScaleKey( spep_3-3 + 78, ctbaki3, 1.21, 1.21 );
setEffScaleKey( spep_3-3 + 80, ctbaki3, 3.85, 3.85 );

setEffRotateKey( spep_3-3 + 40, ctbaki3, -7.5 );
setEffRotateKey( spep_3-3 + 48, ctbaki3, -7.5 );
setEffRotateKey( spep_3-3 + 50, ctbaki3, -10.3 );
setEffRotateKey( spep_3-3 + 52, ctbaki3, -12 );
setEffRotateKey( spep_3-3 + 54, ctbaki3, -12.5 );
setEffRotateKey( spep_3-3 + 80, ctbaki3, -12.5 );

setEffAlphaKey( spep_3-3 + 40, ctbaki3, 0 );
setEffAlphaKey( spep_3-3 + 46, ctbaki3, 0 );
setEffAlphaKey( spep_3-3 + 47, ctbaki3, 0 );
setEffAlphaKey( spep_3-3 + 48, ctbaki3, 255 );
setEffAlphaKey( spep_3-3 + 54, ctbaki3, 255 );
setEffAlphaKey( spep_3-3 + 56, ctbaki3, 235 );
setEffAlphaKey( spep_3-3 + 58, ctbaki3, 216 );
setEffAlphaKey( spep_3-3 + 60, ctbaki3, 196 );
setEffAlphaKey( spep_3-3 + 62, ctbaki3, 177 );
setEffAlphaKey( spep_3-3 + 64, ctbaki3, 157 );
setEffAlphaKey( spep_3-3 + 66, ctbaki3, 137 );
setEffAlphaKey( spep_3-3 + 68, ctbaki3, 118 );
setEffAlphaKey( spep_3-3 + 70, ctbaki3, 98 );
setEffAlphaKey( spep_3-3 + 72, ctbaki3, 78 );
setEffAlphaKey( spep_3-3 + 74, ctbaki3, 59 );
setEffAlphaKey( spep_3-3 + 76, ctbaki3, 39 );
setEffAlphaKey( spep_3-3 + 78, ctbaki3, 20 );
setEffAlphaKey( spep_3-3 + 80, ctbaki3, 0 );
]]
--SE
playSe( spep_3 + 0, 1189 );--ラッシュ
playSe( spep_3 + 4, 1141 );--ラッシュ
setSeVolume( spep_3 + 4, 1141, 63 );
playSe( spep_3 + 4, 1032 );--ラッシュ
playSe( spep_3 + 16, 1141 );--ラッシュ
setSeVolume( spep_3 + 16, 1141, 56 );
playSe( spep_3 + 16, 1032 );--ラッシュ
setSeVolume( spep_3 + 16, 1032, 79 );
playSe( spep_3 + 30, 1141 );--ラッシュ
setSeVolume( spep_3 + 30, 1141, 47 );
playSe( spep_3 + 30, 1032 );--ラッシュ
setSeVolume( spep_3 + 30, 1032, 89 );
playSe( spep_3 + 44, 1141 );--ラッシュ
setSeVolume( spep_3 + 44, 1141, 48 );
playSe( spep_3 + 44, 1032 );--ラッシュ
setSeVolume( spep_3 + 44, 1032, 71 );
playSe( spep_3 + 58, 1003 );--ラスト斬り
setSeVolume( spep_3 + 58, 1003, 76 );
playSe( spep_3 + 58, 1142 );--ラスト斬り
setSeVolume( spep_3 + 58, 1142, 37 );
playSe( spep_3 + 62, 1143 );--ラスト斬り
setSeVolume( spep_3 + 62, 1143, 55 );
playSe( spep_3 + 62, 1032 );--ラスト斬り
playSe( spep_3 + 62, 1027 );--ラスト斬り
setSeVolume( spep_3 + 62, 1027, 56 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_3+92 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 98;
------------------------------------------------------
-- ガ
------------------------------------------------------
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );
setMoveKey( spep_4 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_4 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_4 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_4 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_4 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_4 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_4 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_4 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_4 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_4 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_4 + 0, 1, 105 );
setRotateKey( spep_4 -3 + 4, 1, 240 );
setRotateKey( spep_4 -3 + 6, 1, 405 );
setRotateKey( spep_4 -3 + 8, 1, 600 );
setRotateKey( spep_4 -3 + 10, 1, 825 );
setRotateKey( spep_4 -3 + 12, 1, 1080 );
setRotateKey( spep_4 + 100, 1, 1080 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, bg, 0 );
setEffRotateKey( spep_4 + 100, bg, 0 );
setEffAlphaKey( spep_4 + 0, bg, 255 );
setEffAlphaKey( spep_4 + 100, bg, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_4 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_4 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_4 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_4 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_4 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_4 + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_4 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_4 + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_4 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_4 + 112, bakuhatsu, 255 );


-- ** 集中線 ** --
shuchusenga = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusenga, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusenga, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusenga, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusenga, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga, 0 );
setEffRotateKey( spep_4 + 46, shuchusenga, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 28, shuchusenga, 255 );
setEffAlphaKey( spep_4 + 30, shuchusenga, 252 );
setEffAlphaKey( spep_4 + 32, shuchusenga, 242 );
setEffAlphaKey( spep_4 + 34, shuchusenga, 227 );
setEffAlphaKey( spep_4 + 36, shuchusenga, 205 );
setEffAlphaKey( spep_4 + 38, shuchusenga, 176 );
setEffAlphaKey( spep_4 + 40, shuchusenga, 142 );
setEffAlphaKey( spep_4 + 42, shuchusenga, 101 );
setEffAlphaKey( spep_4 + 44, shuchusenga, 54 );
setEffAlphaKey( spep_4 + 46, shuchusenga, 0 );

shuchusenga2 = entryEffectLife( spep_4 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusenga2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 100, shuchusenga2, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusenga2, 1, 1 );
setEffScaleKey( spep_4 + 100, shuchusenga2, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusenga2, 0 );
setEffRotateKey( spep_4 + 100, shuchusenga2, 0 );

setEffAlphaKey( spep_4 + 14, shuchusenga2, 255 );
setEffAlphaKey( spep_4 + 100, shuchusenga2, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_4 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_4 + 14, ctga, -10.9 );
setEffRotateKey( spep_4 + 15, ctga, -10.9 );
setEffRotateKey( spep_4 + 16, ctga, -14.9 );
setEffRotateKey( spep_4 + 17, ctga, -14.9 );
setEffRotateKey( spep_4 + 18, ctga, -10.9 );
setEffRotateKey( spep_4 + 19, ctga, -10.9 );
setEffRotateKey( spep_4 + 20, ctga, -14.9 );
setEffRotateKey( spep_4 + 21, ctga, -14.9 );
setEffRotateKey( spep_4 + 22, ctga, -10.9 );
setEffRotateKey( spep_4 + 23, ctga, -10.9 );
setEffRotateKey( spep_4 + 24, ctga, -14.9 );
setEffRotateKey( spep_4 + 25, ctga, -14.9 );
setEffRotateKey( spep_4 + 26, ctga, -10.9 );
setEffRotateKey( spep_4 + 27, ctga, -10.9 );
setEffRotateKey( spep_4 + 28, ctga, -14.9 );
setEffRotateKey( spep_4 + 100, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 100, ctga, 255 );

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2,  1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 100, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 100, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 100, hibiware, 255 );

--SE
playSe( spep_4 + 0, 1023 );--爆発
playSe( spep_4 + 14, 1054 );--ガッ

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

--終わり
dealDamage( spep_4 +10 );
endPhase( spep_4 + 98 );
end