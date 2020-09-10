--1018380:ゴテンクス：ゼノ_超バーニングかめはめ波
--sp_effect_a1_00193

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
SP_01=	154363	;--	かめはめ波構え
SP_02=	154365	;--	かめはめ波溜め
SP_03=	154367	;--	かめはめ波発射
SP_04=	154369	;--	敵に命中：エフェクト
SP_05=	154370	;--	敵に命中：集中線

--敵側
SP_01x=	154364	;--	かめはめ波構え	(敵)
SP_02x=	154366	;--	かめはめ波溜め	(敵)
SP_03x=	154368	;--	かめはめ波発射	(敵)
SP_04x=	154369	;--	敵に命中：エフェクト	
SP_05x=	154370	;--	敵に命中：集中線	

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--かめはめ波構え
------------------------------------------------------
--初めの準備
spep_0 = 0;
-- ** エフェクト等 ** --
kamae = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 196, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 196, kamae, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 20,  906, 278, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 298, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 20, shuchusen1, 1.5, 1.61 );
setEffScaleKey( spep_0 -3 + 298, shuchusen1, 1.5, 1.61 );

setEffRotateKey( spep_0 -3 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 298, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 298, shuchusen1, 255 );

--黒背景
entryFadeBg( spep_0 + 60, 20, 116,0, 0, 0, 0, 100 );  --white fade

--音
--高速手クロス
playSe( spep_0 + 0, 1003 );
setSeVolume( spep_0 + 0, 1003, 70 );

playSe( spep_0 + 2, 43 );
setSeVolume( spep_0 + 2, 43, 40 );

playSe( spep_0 + 2, 4 );
setSeVolume( spep_0 + 2, 4, 89 );

playSe( spep_0 + 8, 4 );
setSeVolume( spep_0 + 8, 4, 140 );

playSe( spep_0 + 10, 43 );
setSeVolume( spep_0 + 10, 43, 35 );

playSe( spep_0 + 14, 4 );
setSeVolume( spep_0 + 14, 4, 95 );

playSe( spep_0 + 18, 43 );
setSeVolume( spep_0 + 18, 43, 30 );

playSe( spep_0 + 20, 4 );

playSe( spep_0 + 26, 43 );
setSeVolume( spep_0 + 26, 43, 30 );

playSe( spep_0 + 26, 4 );
setSeVolume( spep_0 + 26, 4, 90 );

playSe( spep_0 + 32, 4 );
setSeVolume( spep_0 + 32, 4, 140 );

playSe( spep_0 + 34, 43 );
setSeVolume( spep_0 + 34, 43, 30 );

playSe( spep_0 + 38, 4 );

playSe( spep_0 + 42, 43 );
setSeVolume( spep_0 + 42, 43, 35 );

playSe( spep_0 + 44, 4 );
setSeVolume( spep_0 + 44, 4, 90 );

--最後の決め
playSe( spep_0 + 48, 1120 );
setSeVolume( spep_0 + 48, 1120, 0 );
setSeVolume( spep_0 + 73, 1120, 160 );
setSeVolume( spep_0 + 74, 1120, 170 );

--高速手クロス
playSe( spep_0 + 50, 43 );
setSeVolume( spep_0 + 50, 43, 30 );

playSe( spep_0 + 50, 4 );

playSe( spep_0 + 56, 4 );
setSeVolume( spep_0 + 56, 4, 85 );

playSe( spep_0 + 58, 43 );
setSeVolume( spep_0 + 58, 43, 25 );

playSe( spep_0 + 62, 4 );
setSeVolume( spep_0 + 62, 4, 95 );

playSe( spep_0 + 66, 43 );
setSeVolume( spep_0 + 66, 43, 40 );

playSe( spep_0 + 68, 4 );

playSe( spep_0 + 68, 1042 );
setSeVolume( spep_0 + 68, 1042, 80 );

--気弾溜め
playSe( spep_0 + 114, 1036 );
setSeVolume( spep_0 + 114, 1036, 90 );

playSe( spep_0 + 138, 1036 );
setSeVolume( spep_0 + 138, 1036, 90 );

playSe( spep_0 + 162, 1036 );
setSeVolume( spep_0 + 162, 1036, 90 );

playSe( spep_0 + 174, 1132 );
setSeVolume( spep_0 + 174, 1132, 80 );

playSe( spep_0 + 186, 1036 );
setSeVolume( spep_0 + 186, 1036, 90 );

--次の準備
spep_1 = spep_0+196;

------------------------------------------------------
--かめはめ波溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 100, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 100, tame, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_1+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +22, 190006, 72, 0x100, -1, 0, 70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_1 +22,  ctgogo,  70,  510);
setEffMoveKey(  spep_1 +94,  ctgogo,  70,  510);

setEffAlphaKey( spep_1 +22, ctgogo, 0 );
setEffAlphaKey( spep_1 + 23, ctgogo, 255 );
setEffAlphaKey( spep_1 + 24, ctgogo, 255 );
setEffAlphaKey( spep_1 + 86, ctgogo, 255 );
setEffAlphaKey( spep_1 + 88, ctgogo, 255 );
setEffAlphaKey( spep_1 + 90, ctgogo, 191 );
setEffAlphaKey( spep_1 + 92, ctgogo, 112 );
setEffAlphaKey( spep_1 + 94, ctgogo, 64 );

setEffRotateKey(  spep_1 +22,  ctgogo,  0);
setEffRotateKey(  spep_1 +94,  ctgogo,  0);

setEffScaleKey(  spep_1 +22,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +84,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_1 +94,  ctgogo, 1.07, 1.07 );

--黒背景
entryFadeBg( spep_1, 0,100,0, 0, 0, 0, 100 );  --white fade


--白フェード
entryFade( spep_1 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_1 +14, 1036 );  --気弾溜め
setSeVolume( spep_1 + 14, 1036, 90 );

playSe( spep_1 +22, 1018 );  --ゴゴゴ

playSe( spep_1 +38, 1036 );  --気弾溜め
setSeVolume( spep_1 + 38, 1036, 90 );

playSe( spep_1 +62, 1036 );  --気弾溜め
setSeVolume( spep_0 + 62, 1036, 90 );

--次の準備
spep_2 = spep_1+100;

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
entryFade( spep_2 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
--かめはめ波発射
------------------------------------------------------

-- ** エフェクト等 ** --
hhassya = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, hhassya, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, hhassya, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hhassya, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, hhassya, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hhassya, 0 );
setEffRotateKey( spep_3 + 90, hhassya, 0 );
setEffAlphaKey( spep_3 + 0, hhassya, 255 );
setEffAlphaKey( spep_3 + 90, hhassya, 255 );


--集中線
shuchusen2 = entryEffectLife( spep_3  + 0,  906, 18 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 0  , shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 18 ,shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3  + 0, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_3 -3 + 18, shuchusen2, 1.18, 1.18 );

setEffRotateKey( spep_3  + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 -3 + 18, shuchusen2, 0 );

setEffAlphaKey( spep_3  + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 18, shuchusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3 -3 + 20,  10012, 50, 0x100, -1, 0, 7.3, 281 );

setEffMoveKey( spep_3 -3 + 20, ctzuo, 7.3, 281 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzuo, 21.3, 327.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctzuo, 43.3, 370 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctzuo, 30.1, 393.2 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctzuo, 68.2, 365.3 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctzuo, 45.4, 398.1 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctzuo, 53, 400.6 , 0 );

setEffScaleKey( spep_3 -3 + 20, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_3 -3 + 22, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_3 -3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 60, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 62, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_3 -3 + 64, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_3 -3 + 66, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_3 -3 + 68, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_3 -3 + 70, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_3 -3 + 20, ctzuo, 9.6 );
setEffRotateKey( spep_3 -3 + 22, ctzuo, 18.3 );
setEffRotateKey( spep_3 -3 + 24, ctzuo, 27.2 );
setEffRotateKey( spep_3 -3 + 70, ctzuo, 27.2 );

setEffAlphaKey( spep_3 -3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 62, ctzuo, 204 );
setEffAlphaKey( spep_3 -3 + 64, ctzuo, 153 );
setEffAlphaKey( spep_3 -3 + 66, ctzuo, 102 );
setEffAlphaKey( spep_3 -3 + 68, ctzuo, 51 );
setEffAlphaKey( spep_3 -3 + 70, ctzuo, 0 );

-- ** 音 ** --
SE0 = playSe( spep_3 + 4, 1022 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    --stopSe( SP_dodge - 12, SE1, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
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


--黒背景
entryFadeBg( spep_3, 0,90,0, 0, 0, 0, 100 );  --white fade

--白フェード
entryFade( spep_3 + 14, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3+90;

------------------------------------------------------
-- 着弾(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudanf = entryEffect( spep_4 + 0, SP_04,  0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_4 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tyakudanf, 0 );
setEffRotateKey( spep_4 + 98, tyakudanf, 0 );
setEffAlphaKey( spep_4 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_4 + 97, tyakudanf, 255 );
setEffAlphaKey( spep_4 + 98, tyakudanf, 0 );

tyakudanb = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --着弾・奥(ef_004)
setEffMoveKey( spep_4 + 0, tyakudanb, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, tyakudanb, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tyakudanb, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, tyakudanb, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tyakudanb, 0 );
setEffRotateKey( spep_4 + 98, tyakudanb, 0 );
setEffAlphaKey( spep_4 + 0, tyakudanb, 255 );
setEffAlphaKey( spep_4 + 97, tyakudanb, 255 );
setEffAlphaKey( spep_4 + 98, tyakudanb, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_4 ,  906, 28 -2, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 , shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 28, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 , shuchusen3, 1.18, 1.18 );
setEffScaleKey( spep_4 -3 + 28, shuchusen3, 1.18, 1.18 );

setEffRotateKey( spep_4 , shuchusen3, 0 );
setEffRotateKey( spep_4 -3 + 28, shuchusen3, 0 );

setEffAlphaKey( spep_4 , shuchusen3, 255 );
setEffAlphaKey( spep_4 -3 + 28, shuchusen3, 255 );

--敵の動き
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4 -3 + 48, 1, 0 );

setShakeChara(spep_4,1,45,5);

changeAnime( spep_4  + 0, 1, 104 );
changeAnime( spep_4 -3 + 32, 1, 108 );

setMoveKey( spep_4  + 0, 1, 34.9, 49.9 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 34.9, 49.9 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 64.3, 76.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 75.9, 99.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 87.5, 122.4 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 99.1, 145.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 110.7, 168 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 122.3, 190.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 133.9, 213.7 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 145.5, 236.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 143.4, 233.9 , 0 );

setScaleKey( spep_4  + 0, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 31, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 32, 1, 1.51, 1.51 );
setScaleKey( spep_4 -3 + 34, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 36, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 38, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 40, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 42, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 44, 1, 0.34, 0.34 );
setScaleKey( spep_4 -3 + 47, 1, 0.15, 0.15 );
setScaleKey( spep_4 -3 + 48, 1, 0.15, 0.15 );

setRotateKey( spep_4  + 0, 1, -2 );
setRotateKey( spep_4 -3 + 31, 1, -2 );
setRotateKey( spep_4 -3 + 32, 1, 20.6 );
setRotateKey( spep_4 -3 + 47, 1, 20.6 );
setRotateKey( spep_4 -3 + 48, 1, -2 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_4 -3 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );--ズオッ

setEffMoveKey( spep_4 -3 + 30, ctzuo2, -17.7, 313 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo2, -35.7, 356 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo2, -81.2, 407.4 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo2, -64.3, 405.9 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo2, -92.6, 407.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzuo2, -75.6, 406.3 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzuo2, -103.9, 407.7 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo2, -87, 406.6 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo2, -118.9, 421.2 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo2, -82.5, 426.4 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo2, -79.3, 433.2 , 0 );

setEffScaleKey( spep_4 -3 + 30, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_4 -3 + 32, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_4 -3 + 34, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 + 44, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 + 46, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_4 -3 + 48, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_4 -3 + 50, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_4 -3 + 30, ctzuo2, 6.9 );
setEffRotateKey( spep_4 -3 + 32, ctzuo2, -3.4 );
setEffRotateKey( spep_4 -3 + 34, ctzuo2, -13.5 );
setEffRotateKey( spep_4 -3 + 36, ctzuo2, -13.8 );
setEffRotateKey( spep_4 -3 + 38, ctzuo2, -14.1 );
setEffRotateKey( spep_4 -3 + 40, ctzuo2, -14.4 );
setEffRotateKey( spep_4 -3 + 42, ctzuo2, -14.7 );
setEffRotateKey( spep_4 -3 + 44, ctzuo2, -15 );
setEffRotateKey( spep_4 -3 + 46, ctzuo2, -11.8 );
setEffRotateKey( spep_4 -3 + 48, ctzuo2, -8.5 );
setEffRotateKey( spep_4 -3 + 50, ctzuo2, -5.2 );

setEffAlphaKey( spep_4 -3 + 30, ctzuo2, 255 );
setEffAlphaKey( spep_4 -3 + 44, ctzuo2, 255 );
setEffAlphaKey( spep_4 -3 + 46, ctzuo2, 170 );
setEffAlphaKey( spep_4 -3 + 48, ctzuo2, 85 );
setEffAlphaKey( spep_4 -3 + 50, ctzuo2, 0 );

--黒背景
entryFadeBg( spep_4, 0,100,0, 0, 0, 0, 100 );  --white fade

--白フェード
entryFade( spep_4 + 27, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 100 );  --white fade
entryFade( spep_4 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 21, 1021 );

--次の準備
spep_5 = spep_4+100;
------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

--ひび割れエフェクト
hibiware = entryEffect( spep_5+1 ,  1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_5+1 , hibiware, 60, -92 , 0 );
setEffMoveKey( spep_5 + 100, hibiware, 60, -92 , 0 );

setEffScaleKey( spep_5+1 , hibiware, 1, 1 );
setEffScaleKey( spep_5 + 100, hibiware, 1, 1 );

setEffRotateKey( spep_5+1 , hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5+1 , hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen_ga = entryEffectLife( spep_5 + 12,  906, 34, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 12, shuchusen_ga, 32, 25 );

setEffMoveKey( spep_5 + 12, shuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, shuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, shuchusen_ga, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_ga, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_ga, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_ga, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_ga, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_ga, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_ga, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_ga, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_ga, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_ga, 0 );

--黒集中線
bkshuchusen_ga= entryEffectLife( spep_5 + 12,  1657, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 12, bkshuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bkshuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, bkshuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 100, bkshuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, bkshuchusen_ga, 0 );
setEffRotateKey( spep_5 + 100, bkshuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, bkshuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 100, bkshuchusen_ga, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 0,  10005, 100, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 0, ctga, 28, 20 );

setEffMoveKey( spep_5 + 0, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 0, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 0, ctga, -10.9 );
setEffRotateKey( spep_5 + 12, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 0, ctga, 0 );
setEffAlphaKey( spep_5 + 10, ctga, 0 );
setEffAlphaKey( spep_5 + 11, ctga, 0 );
setEffAlphaKey( spep_5 + 12, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 100, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2);
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1050 );
setRotateKey( spep_5 + 100, 1, 1050 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_10 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
--entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--かめはめ波構え
------------------------------------------------------
--初めの準備
spep_0 = 0;

-- ** エフェクト等 ** --
kamae = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, kamae, 0, 0 , 0 );
setEffMoveKey( spep_0 + 196, kamae, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, kamae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 196, kamae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, kamae, 0 );
setEffRotateKey( spep_0 + 196, kamae, 0 );
setEffAlphaKey( spep_0 + 0, kamae, 255 );
setEffAlphaKey( spep_0 + 196, kamae, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 -3 + 20,  906, 278, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_0 -3 + 20, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 -3 + 298, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 -3 + 20, shuchusen1, 1.5, 1.61 );
setEffScaleKey( spep_0 -3 + 298, shuchusen1, 1.5, 1.61 );

setEffRotateKey( spep_0 -3 + 20, shuchusen1, 0 );
setEffRotateKey( spep_0 -3 + 298, shuchusen1, 0 );

setEffAlphaKey( spep_0 -3 + 20, shuchusen1, 255 );
setEffAlphaKey( spep_0 -3 + 298, shuchusen1, 255 );

--黒背景
entryFadeBg( spep_0 + 60, 20, 116,0, 0, 0, 0, 100 );  --white fade

--音
--高速手クロス    
playSe( spep_0 + 0, 1003 ); 
setSeVolume( spep_0 + 0, 1003, 70 );

playSe( spep_0 + 2, 43 );   
setSeVolume( spep_0 + 2, 43, 40 );  

playSe( spep_0 + 2, 4 );    
setSeVolume( spep_0 + 2, 4, 89 );   

playSe( spep_0 + 8, 4 );    
setSeVolume( spep_0 + 8, 4, 140 );  

playSe( spep_0 + 10, 43 );  
setSeVolume( spep_0 + 10, 43, 35 ); 

playSe( spep_0 + 14, 4 );   
setSeVolume( spep_0 + 14, 4, 95 );  

playSe( spep_0 + 18, 43 );  
setSeVolume( spep_0 + 18, 43, 30 ); 

playSe( spep_0 + 20, 4 );   

playSe( spep_0 + 26, 43 );  
setSeVolume( spep_0 + 26, 43, 30 ); 

playSe( spep_0 + 26, 4 );   
setSeVolume( spep_0 + 26, 4, 90 );  

playSe( spep_0 + 32, 4 );   
setSeVolume( spep_0 + 32, 4, 140 ); 

playSe( spep_0 + 34, 43 );  
setSeVolume( spep_0 + 34, 43, 30 ); 

playSe( spep_0 + 38, 4 );   

playSe( spep_0 + 42, 43 );  
setSeVolume( spep_0 + 42, 43, 35 ); 

playSe( spep_0 + 44, 4 );   
setSeVolume( spep_0 + 44, 4, 90 );  

--最後の決め 
playSe( spep_0 + 48, 1120 );    
setSeVolume( spep_0 + 48, 1120, 0 );    
setSeVolume( spep_0 + 73, 1120, 160 );  
setSeVolume( spep_0 + 74, 1120, 170 );  

--高速手クロス    
playSe( spep_0 + 50, 43 );  
setSeVolume( spep_0 + 50, 43, 30 ); 

playSe( spep_0 + 50, 4 );   

playSe( spep_0 + 56, 4 );   
setSeVolume( spep_0 + 56, 4, 85 );  

playSe( spep_0 + 58, 43 );  
setSeVolume( spep_0 + 58, 43, 25 ); 

playSe( spep_0 + 62, 4 );   
setSeVolume( spep_0 + 62, 4, 95 );  

playSe( spep_0 + 66, 43 );  
setSeVolume( spep_0 + 66, 43, 40 ); 

playSe( spep_0 + 68, 4 );   

playSe( spep_0 + 68, 1042 );    
setSeVolume( spep_0 + 68, 1042, 80 );   

--気弾溜め  
playSe( spep_0 + 114, 1036 );   
setSeVolume( spep_0 + 114, 1036, 90 );  

playSe( spep_0 + 138, 1036 );   
setSeVolume( spep_0 + 138, 1036, 90 );  

playSe( spep_0 + 162, 1036 );   
setSeVolume( spep_0 + 162, 1036, 90 );  

playSe( spep_0 + 174, 1132 );   
setSeVolume( spep_0 + 174, 1132, 80 );  

playSe( spep_0 + 186, 1036 );   
setSeVolume( spep_0 + 186, 1036, 90 );

--次の準備
spep_1 = spep_0+196;

------------------------------------------------------
--かめはめ波溜め
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_1 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_1 + 100, tame, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 100, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 100, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 100, tame, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+10  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+10  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_1 +22, 190006, 72, 0x100, -1, 0, 70, 510);    -- ゴゴゴゴ

setEffMoveKey(  spep_1 +22,  ctgogo,  70,  510);
setEffMoveKey(  spep_1 +94,  ctgogo,  70,  510);

setEffAlphaKey( spep_1 +22, ctgogo, 0 );
setEffAlphaKey( spep_1 + 23, ctgogo, 255 );
setEffAlphaKey( spep_1 + 24, ctgogo, 255 );
setEffAlphaKey( spep_1 + 86, ctgogo, 255 );
setEffAlphaKey( spep_1 + 88, ctgogo, 255 );
setEffAlphaKey( spep_1 + 90, ctgogo, 191 );
setEffAlphaKey( spep_1 + 92, ctgogo, 112 );
setEffAlphaKey( spep_1 + 94, ctgogo, 64 );

setEffRotateKey(  spep_1 +22,  ctgogo,  0);
setEffRotateKey(  spep_1 +94,  ctgogo,  0);

setEffScaleKey(  spep_1 +22,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +84,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_1 +94,  ctgogo, -1.07, 1.07 );

--黒背景
entryFadeBg( spep_1, 0,100,0, 0, 0, 0, 100 );  --white fade


--白フェード
entryFade( spep_1 + 92, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_1 +14, 1036 ); --気弾溜め
setSeVolume( spep_1 + 14, 1036, 90 );   

playSe( spep_1 +22, 1018 ); --ゴゴゴ   

playSe( spep_1 +38, 1036 ); --気弾溜め  
setSeVolume( spep_1 + 38, 1036, 90 );   

playSe( spep_1 +62, 1036 ); --気弾溜め  
setSeVolume( spep_0 + 62, 1036, 90 );   

--次の準備
spep_2 = spep_1+100;

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
entryFade( spep_2 + 82, 6, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
--かめはめ波発射
------------------------------------------------------

-- ** エフェクト等 ** --
hhassya = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_3 + 0, hhassya, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, hhassya, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hhassya, 1.0, 1.0 );
setEffScaleKey( spep_3 + 90, hhassya, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hhassya, 0 );
setEffRotateKey( spep_3 + 90, hhassya, 0 );
setEffAlphaKey( spep_3 + 0, hhassya, 255 );
setEffAlphaKey( spep_3 + 90, hhassya, 255 );


--集中線
shuchusen2 = entryEffectLife( spep_3  + 0,  906, 18 -3, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_3  + 0  , shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_3 -3 + 18 ,shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_3  + 0, shuchusen2, 1.18, 1.18 );
setEffScaleKey( spep_3 -3 + 18, shuchusen2, 1.18, 1.18 );

setEffRotateKey( spep_3  + 0, shuchusen2, 0 );
setEffRotateKey( spep_3 -3 + 18, shuchusen2, 0 );

setEffAlphaKey( spep_3  + 0, shuchusen2, 255 );
setEffAlphaKey( spep_3 -3 + 18, shuchusen2, 255 );

--文字エントリー
ctzuo = entryEffectLife( spep_3 -3 + 20,  10012, 50, 0x100, -1, 0, 7.3, 281 );

setEffMoveKey( spep_3 -3 + 20, ctzuo, 7.3, 281 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctzuo, 21.3, 327.2 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctzuo, 30.9, 372.4 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctzuo, 14.9, 388.4 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctzuo, 43.3, 370 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctzuo, 30.1, 393.2 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctzuo, 68.2, 365.3 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctzuo, 45.4, 398.1 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctzuo, 53, 400.6 , 0 );

setEffScaleKey( spep_3 -3 + 20, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_3 -3 + 22, ctzuo, 1.54, 1.54 );
setEffScaleKey( spep_3 -3 + 24, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 60, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 62, ctzuo, 3.55, 3.55 );
setEffScaleKey( spep_3 -3 + 64, ctzuo, 4.37, 4.37 );
setEffScaleKey( spep_3 -3 + 66, ctzuo, 5.19, 5.19 );
setEffScaleKey( spep_3 -3 + 68, ctzuo, 6.01, 6.01 );
setEffScaleKey( spep_3 -3 + 70, ctzuo, 6.82, 6.82 );

setEffRotateKey( spep_3 -3 + 20, ctzuo, 9.6 );
setEffRotateKey( spep_3 -3 + 22, ctzuo, 18.3 );
setEffRotateKey( spep_3 -3 + 24, ctzuo, 27.2 );
setEffRotateKey( spep_3 -3 + 70, ctzuo, 27.2 );

setEffAlphaKey( spep_3 -3 + 20, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 60, ctzuo, 255 );
setEffAlphaKey( spep_3 -3 + 62, ctzuo, 204 );
setEffAlphaKey( spep_3 -3 + 64, ctzuo, 153 );
setEffAlphaKey( spep_3 -3 + 66, ctzuo, 102 );
setEffAlphaKey( spep_3 -3 + 68, ctzuo, 51 );
setEffAlphaKey( spep_3 -3 + 70, ctzuo, 0 );

-- ** 音 ** --
SE0 = playSe( spep_3 + 4, 1022 );

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    --stopSe( SP_dodge - 12, SE1, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
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


--黒背景
entryFadeBg( spep_3, 0,90,0, 0, 0, 0, 100 );  --white fade

--白フェード
entryFade( spep_3 + 14, 0, 2, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 82, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4 = spep_3+90;
------------------------------------------------------
-- 着弾(98F)
------------------------------------------------------

-- ** エフェクト等 ** --
tyakudanf = entryEffect( spep_4 + 0, SP_04x,  0x100, -1, 0, 0, 0 );  --着弾・手前(ef_003)
setEffMoveKey( spep_4 + 0, tyakudanf, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, tyakudanf, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tyakudanf, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, tyakudanf, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tyakudanf, 0 );
setEffRotateKey( spep_4 + 98, tyakudanf, 0 );
setEffAlphaKey( spep_4 + 0, tyakudanf, 255 );
setEffAlphaKey( spep_4 + 97, tyakudanf, 255 );
setEffAlphaKey( spep_4 + 98, tyakudanf, 0 );

tyakudanb = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 );  --着弾・奥(ef_004)
setEffMoveKey( spep_4 + 0, tyakudanb, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, tyakudanb, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tyakudanb, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, tyakudanb, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tyakudanb, 0 );
setEffRotateKey( spep_4 + 98, tyakudanb, 0 );
setEffAlphaKey( spep_4 + 0, tyakudanb, 255 );
setEffAlphaKey( spep_4 + 97, tyakudanb, 255 );
setEffAlphaKey( spep_4 + 98, tyakudanb, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_4 ,  906, 28 -2, 0x100, -1, 0, 0, 0 );

setEffMoveKey( spep_4 , shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_4 -3 + 28, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_4 , shuchusen3, 1.18, 1.18 );
setEffScaleKey( spep_4 -3 + 28, shuchusen3, 1.18, 1.18 );

setEffRotateKey( spep_4 , shuchusen3, 0 );
setEffRotateKey( spep_4 -3 + 28, shuchusen3, 0 );

setEffAlphaKey( spep_4 , shuchusen3, 255 );
setEffAlphaKey( spep_4 -3 + 28, shuchusen3, 255 );

--敵の動き
setDisp( spep_4  + 0, 1, 1 );
setDisp( spep_4 -3 + 48, 1, 0 );

setShakeChara(spep_4,1,45,5);

changeAnime( spep_4  + 0, 1, 104 );
changeAnime( spep_4 -3 + 32, 1, 108 );

setMoveKey( spep_4  + 0, 1, 34.9, 49.9 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 34.9, 49.9 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 64.3, 76.7 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 75.9, 99.5 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 87.5, 122.4 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 99.1, 145.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 110.7, 168 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 122.3, 190.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 133.9, 213.7 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 145.5, 236.5 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 143.4, 233.9 , 0 );

setScaleKey( spep_4  + 0, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 31, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 32, 1, 1.51, 1.51 );
setScaleKey( spep_4 -3 + 34, 1, 1.31, 1.31 );
setScaleKey( spep_4 -3 + 36, 1, 1.12, 1.12 );
setScaleKey( spep_4 -3 + 38, 1, 0.92, 0.92 );
setScaleKey( spep_4 -3 + 40, 1, 0.73, 0.73 );
setScaleKey( spep_4 -3 + 42, 1, 0.53, 0.53 );
setScaleKey( spep_4 -3 + 44, 1, 0.34, 0.34 );
setScaleKey( spep_4 -3 + 47, 1, 0.15, 0.15 );
setScaleKey( spep_4 -3 + 48, 1, 0.15, 0.15 );

setRotateKey( spep_4  + 0, 1, -2 );
setRotateKey( spep_4 -3 + 31, 1, -2 );
setRotateKey( spep_4 -3 + 32, 1, 20.6 );
setRotateKey( spep_4 -3 + 47, 1, 20.6 );
setRotateKey( spep_4 -3 + 48, 1, -2 );

--文字エントリー
ctzuo2 = entryEffectLife( spep_4 -3 + 30,  10012, 20, 0x100, -1, 0, -17.7, 313 );--ズオッ

setEffMoveKey( spep_4 -3 + 30, ctzuo2, -17.7, 313 , 0 );
setEffMoveKey( spep_4 -3 + 32, ctzuo2, -35.7, 356 , 0 );
setEffMoveKey( spep_4 -3 + 34, ctzuo2, -81.2, 407.4 , 0 );
setEffMoveKey( spep_4 -3 + 36, ctzuo2, -64.3, 405.9 , 0 );
setEffMoveKey( spep_4 -3 + 38, ctzuo2, -92.6, 407.5 , 0 );
setEffMoveKey( spep_4 -3 + 40, ctzuo2, -75.6, 406.3 , 0 );
setEffMoveKey( spep_4 -3 + 42, ctzuo2, -103.9, 407.7 , 0 );
setEffMoveKey( spep_4 -3 + 44, ctzuo2, -87, 406.6 , 0 );
setEffMoveKey( spep_4 -3 + 46, ctzuo2, -118.9, 421.2 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctzuo2, -82.5, 426.4 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctzuo2, -79.3, 433.2 , 0 );

setEffScaleKey( spep_4 -3 + 30, ctzuo2, 0.34, 0.34 );
setEffScaleKey( spep_4 -3 + 32, ctzuo2, 1.54, 1.54 );
setEffScaleKey( spep_4 -3 + 34, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 + 44, ctzuo2, 2.73, 2.73 );
setEffScaleKey( spep_4 -3 + 46, ctzuo2, 4.09, 4.09 );
setEffScaleKey( spep_4 -3 + 48, ctzuo2, 5.46, 5.46 );
setEffScaleKey( spep_4 -3 + 50, ctzuo2, 6.82, 6.82 );

setEffRotateKey( spep_4 -3 + 30, ctzuo2, 6.9 );
setEffRotateKey( spep_4 -3 + 32, ctzuo2, -3.4 );
setEffRotateKey( spep_4 -3 + 34, ctzuo2, -13.5 );
setEffRotateKey( spep_4 -3 + 36, ctzuo2, -13.8 );
setEffRotateKey( spep_4 -3 + 38, ctzuo2, -14.1 );
setEffRotateKey( spep_4 -3 + 40, ctzuo2, -14.4 );
setEffRotateKey( spep_4 -3 + 42, ctzuo2, -14.7 );
setEffRotateKey( spep_4 -3 + 44, ctzuo2, -15 );
setEffRotateKey( spep_4 -3 + 46, ctzuo2, -11.8 );
setEffRotateKey( spep_4 -3 + 48, ctzuo2, -8.5 );
setEffRotateKey( spep_4 -3 + 50, ctzuo2, -5.2 );

setEffAlphaKey( spep_4 -3 + 30, ctzuo2, 255 );
setEffAlphaKey( spep_4 -3 + 44, ctzuo2, 255 );
setEffAlphaKey( spep_4 -3 + 46, ctzuo2, 170 );
setEffAlphaKey( spep_4 -3 + 48, ctzuo2, 85 );
setEffAlphaKey( spep_4 -3 + 50, ctzuo2, 0 );

--黒背景
entryFadeBg( spep_4, 0,100,0, 0, 0, 0, 100 );  --white fade

--白フェード
entryFade( spep_4 + 27, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 100 );  --white fade
entryFade( spep_4 + 92, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_4 + 21, 1021 );

--次の準備
spep_5 = spep_4+100;
------------------------------------------------------
-- 敵吹っ飛びシーン(100F)
------------------------------------------------------

--ひび割れエフェクト
hibiware = entryEffect( spep_5+1 ,  1600,  0x100, -1, 0, 60, -92 );

setEffMoveKey( spep_5+1 , hibiware, 60, -92 , 0 );
setEffMoveKey( spep_5 + 100, hibiware, 60, -92 , 0 );

setEffScaleKey( spep_5+1 , hibiware, 1, 1 );
setEffScaleKey( spep_5 + 100, hibiware, 1, 1 );

setEffRotateKey( spep_5+1 , hibiware, 0 );
setEffRotateKey( spep_5 + 100, hibiware, 0 );

setEffAlphaKey( spep_5+1 , hibiware, 255 );
setEffAlphaKey( spep_5 + 100, hibiware, 255 );

-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_5 + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_5 + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_5 + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_5 + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_5 + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_5 + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_5 + 100, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_5 + 0, bakuhatsu, 0 );
setEffRotateKey( spep_5 + 100, bakuhatsu, 0 );

setEffAlphaKey( spep_5 + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_5 + 100, bakuhatsu, 255 );

-- ** 集中線 ** --
shuchusen_ga = entryEffectLife( spep_5 + 12,  906, 34, 0x100, -1, 0, 0, 0 );
setEffShake( spep_5 + 12, shuchusen_ga, 32, 25 );

setEffMoveKey( spep_5 + 12, shuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, shuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, shuchusen_ga, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_ga, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_ga, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_ga, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_ga, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_ga, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_ga, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_ga, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_ga, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_ga, 0 );

--黒集中線
bkshuchusen_ga= entryEffectLife( spep_5 + 12,  1657, 88, 0x80, -1, 0, 0, 0 );

setEffMoveKey( spep_5 + 12, bkshuchusen_ga, 0, 0 , 0 );
setEffMoveKey( spep_5 + 100, bkshuchusen_ga, 0, 0 , 0 );

setEffScaleKey( spep_5 + 12, bkshuchusen_ga, 1, 1 );
setEffScaleKey( spep_5 + 100, bkshuchusen_ga, 1, 1 );

setEffRotateKey( spep_5 + 12, bkshuchusen_ga, 0 );
setEffRotateKey( spep_5 + 100, bkshuchusen_ga, 0 );

setEffAlphaKey( spep_5 + 12, bkshuchusen_ga, 255 );
setEffAlphaKey( spep_5 + 100, bkshuchusen_ga, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 0,  10005, 100, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 0, ctga, 28, 20 );

setEffMoveKey( spep_5 + 0, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 0, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 0, ctga, -10.9 );
setEffRotateKey( spep_5 + 12, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 100, ctga, -14.9 );

setEffAlphaKey( spep_5 + 0, ctga, 0 );
setEffAlphaKey( spep_5 + 10, ctga, 0 );
setEffAlphaKey( spep_5 + 11, ctga, 0 );
setEffAlphaKey( spep_5 + 12, ctga, 255 );
setEffAlphaKey( spep_5 + 100, ctga, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
changeAnime( spep_5 + 0, 1, 107 );

setMoveKey( spep_5 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_5 + 2, 1, 32.5, -4.9 , 0 );
setMoveKey( spep_5 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_5 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_5 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_5 + 10, 1, 7.1, -92.9 , 0 );
setMoveKey( spep_5 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_5 + 100, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_5 + 0, 1, 0.22, 0.22 );
setScaleKey( spep_5 + 2, 1, 0.35, 0.35 );
setScaleKey( spep_5 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_5 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_5 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_5 + 10, 1, 1.1, 1.1 );
setScaleKey( spep_5 + 12, 1, 1.2, 1.2);
setScaleKey( spep_5 + 14, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 16, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 18, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 20, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 22, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 26, 1, 1.3, 1.3 );
setScaleKey( spep_5 + 28, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 100, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 + 2, 1, 105 );
setRotateKey( spep_5 + 4, 1, 240 );
setRotateKey( spep_5 + 6, 1, 405 );
setRotateKey( spep_5 + 8, 1, 600 );
setRotateKey( spep_5 + 10, 1, 825 );
setRotateKey( spep_5 + 12, 1, 1050 );
setRotateKey( spep_5 + 100, 1, 1050 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_10 );  --爆発音
playSe( spep_5 + 14, SE_11 );  --割れる音

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 10 );
--entryFade( spep_5 + 92, 9, 10, 1, 8, 8, 8, 255 ); -- black fade
endPhase( spep_5 + 100 );

end