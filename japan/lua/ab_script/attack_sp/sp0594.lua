--1018350:ベジークス(ゼノ)_バーニングインパクト
--sp_effect_a2_00122

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

--エフェクト
SP_01=	154328	;--	構え
SP_02=	154329	;--	爆発
SP_03=	154330	;--	爆発

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

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め　
------------------------------------------------------
--はじめの準備
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 180, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 180, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 180, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-1 + 50,  906, 103, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-1 + 50, shuchusen1, 103, 20 );

setEffMoveKey( spep_0-3 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 152, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 50, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 58, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 60, shuchusen1, 1.01, 1.01 );
setEffScaleKey( spep_0-3 + 138, shuchusen1, 1.01, 1.01 );
setEffScaleKey( spep_0-3 + 140, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_0-3 + 152, shuchusen1, 1.21, 1.21 );

setEffRotateKey( spep_0-3 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 152, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 50, shuchusen1, 23 );
setEffAlphaKey( spep_0-3 + 52, shuchusen1, 46 );
setEffAlphaKey( spep_0-3 + 54, shuchusen1, 70 );
setEffAlphaKey( spep_0-3 + 56, shuchusen1, 93 );
setEffAlphaKey( spep_0-3 + 58, shuchusen1, 116 );
setEffAlphaKey( spep_0-3 + 60, shuchusen1, 139 );
setEffAlphaKey( spep_0-3 + 62, shuchusen1, 162 );
setEffAlphaKey( spep_0-3 + 64, shuchusen1, 185 );
setEffAlphaKey( spep_0-3 + 66, shuchusen1, 209 );
setEffAlphaKey( spep_0-3 + 68, shuchusen1, 232 );
setEffAlphaKey( spep_0-3 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 140, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 142, shuchusen1, 213 );
setEffAlphaKey( spep_0-3 + 144, shuchusen1, 170 );
setEffAlphaKey( spep_0-3 + 146, shuchusen1, 128 );
setEffAlphaKey( spep_0-3 + 148, shuchusen1, 85 );
setEffAlphaKey( spep_0-3 + 150, shuchusen1, 42 );
setEffAlphaKey( spep_0-3 + 152, shuchusen1, 0 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 76, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 76, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 + 88 , 190006, 72, 0x100, -1, 0, -40, 540);    -- ゴゴゴゴ

setEffShake(spep_0 + 88 ,ctgogo,72,10);

setEffMoveKey(  spep_0 +88 ,  ctgogo,  -40,  540);
setEffMoveKey(  spep_0 +160 ,  ctgogo,  -40,  540);

setEffAlphaKey( spep_0 +88 , ctgogo, 0 );
setEffAlphaKey( spep_0 + 89 , ctgogo, 255 );
setEffAlphaKey( spep_0 + 150 , ctgogo, 255 );
setEffAlphaKey( spep_0 + 152 , ctgogo, 255 );
setEffAlphaKey( spep_0 + 154 , ctgogo, 255 );
setEffAlphaKey( spep_0 + 156 , ctgogo, 191 );
setEffAlphaKey( spep_0 + 158 , ctgogo, 128 );
setEffAlphaKey( spep_0 + 160 , ctgogo, 64 );

setEffRotateKey(  spep_0 +88 ,  ctgogo,  0);
setEffRotateKey(  spep_0 +160 ,  ctgogo,  0);

setEffScaleKey(  spep_0 +88 ,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +150 ,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +160 ,  ctgogo, 1.07, 1.07 );

--黒背景
entryFadeBg( spep_0, 0, 180, 0, 0, 0, 0, 200 );

-- ** 白フェード ** --
entryFade( spep_0 + 170, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
playSe( spep_0 +76, 1018 );  --ごごご

playSe( spep_0 + 24, 43 );
setSeVolume( spep_0 + 24,43 ,25 );
playSe( spep_0 + 32, 43 );
setSeVolume( spep_0 + 32,43 ,20 );
playSe( spep_0 + 40, 43 );
setSeVolume( spep_0 + 40,43 ,16 );
playSe( spep_0 + 48, 43 );
setSeVolume( spep_0 + 48,43 ,13 );
playSe( spep_0 + 56, 43 );
setSeVolume( spep_0 + 56,43 ,16 );
playSe( spep_0 + 64, 43 );
setSeVolume( spep_0 + 64,43 ,20 );
playSe( spep_0 + 72, 43 );
setSeVolume( spep_0 + 72,43 ,16 );
playSe( spep_0 + 80, 43 );
setSeVolume( spep_0 + 80,43 ,10 );
playSe( spep_0 + 88, 43 );
setSeVolume( spep_0 + 88,43 ,25 );
playSe( spep_0 + 96, 43 );
setSeVolume( spep_0 + 96,43 ,16 );
playSe( spep_0 + 104, 43 );
setSeVolume( spep_0 + 104,43 ,13 );
playSe( spep_0 + 112, 43 );
setSeVolume( spep_0 + 112,43 ,10 );
playSe( spep_0 + 120, 43 );
setSeVolume( spep_0 + 120,43 ,20 );
playSe( spep_0 + 128, 43 );
setSeVolume( spep_0 + 128,43, 25 );
playSe( spep_0 + 24, 4 );
setSeVolume( spep_0 + 24,4 ,63 );
playSe( spep_0 + 30, 4 );
setSeVolume( spep_0 + 30,4 ,126 );
playSe( spep_0 + 36, 4 );
setSeVolume( spep_0 + 36,4 ,79 );
playSe( spep_0 + 42, 4 );
playSe( spep_0 + 48, 4 );
setSeVolume( spep_0 + 48,4 ,71 );
playSe( spep_0 + 54, 4 );
setSeVolume( spep_0 + 54,4 ,126 );
playSe( spep_0 + 60, 4 );
playSe( spep_0 + 66, 4 );
setSeVolume( spep_0 + 66,4 ,79 );
playSe( spep_0 + 72, 4 );
playSe( spep_0 + 78, 4 );
setSeVolume( spep_0 + 78,4 ,71 );
playSe( spep_0 + 84, 4 );
setSeVolume( spep_0 + 84,4, 79 );
playSe( spep_0 + 90, 4 );
playSe( spep_0 + 96, 4 );
setSeVolume( spep_0 + 96,4 ,126 );
playSe( spep_0 + 102, 4 );
setSeVolume( spep_0 + 102,4 ,79 );
playSe( spep_0 + 108, 4 );
playSe( spep_0 + 114, 4 );
setSeVolume( spep_0 + 114,4 ,71 );
playSe( spep_0 + 120, 4 );
playSe( spep_0 + 126, 4 );
setSeVolume( spep_0 + 126,4, 89 );
playSe( spep_0 + 132, 4 );
setSeVolume( spep_0 + 132,4, 112 );
playSe( spep_0 + 138, 4 );
setSeVolume( spep_0 + 138,4, 126 );
playSe( spep_0 + 150, 1109 );
setSeVolume( spep_0 + 150,1109, 63 );

--次の準備
spep_1 = spep_0+180;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--手をバッてする
--------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, explosion, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, explosion, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, explosion, 0 );
setEffRotateKey( spep_2 + 240, explosion, 0 );
setEffAlphaKey( spep_2 + 0, explosion, 255 );
setEffAlphaKey( spep_2 + 240, explosion, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2-2 + 60,  906, 39, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-2 + 60, shuchusen2, 39, 20 );

setEffMoveKey( spep_2-3 + 60, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 99, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 60, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 62, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_2-3 + 64, shuchusen2, 1.17, 1.17 );
setEffScaleKey( spep_2-3 + 66, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_2-3 + 68, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_2-3 + 70, shuchusen2, 1.28, 1.28 );
setEffScaleKey( spep_2-3 + 72, shuchusen2, 1.34, 1.34 );
setEffScaleKey( spep_2-3 + 74, shuchusen2, 1.41, 1.41 );
setEffScaleKey( spep_2-3 + 76, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2-3 + 78, shuchusen2, 1.59, 1.59 );
setEffScaleKey( spep_2-3 + 99, shuchusen2, 1.59, 1.59 );

setEffRotateKey( spep_2-3 + 60, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 99, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 60, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 99, shuchusen2, 255 );

--SE
se_1037 = playSe( spep_2 + 0, 1037 );
setSeVolume( spep_2 + 0,1037, 63 );

--黒背景
entryFadeBg( spep_2, 0, 97, 0, 0, 0, 0, 200 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1037, 0 );
    --stopSe( SP_dodge - 12, SE1, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );


    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    
    
    
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--流線
ryusen1 = entryEffectLife( spep_2 -2 + 102,  921, 116, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 -2 + 102, ryusen1, 116, 20 );

setEffMoveKey( spep_2 -3 + 102, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 218, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 102, ryusen1, 1.69, 1.69 );
setEffScaleKey( spep_2 -3 + 218, ryusen1, 1.69, 1.69 );

setEffRotateKey( spep_2 -3 + 102, ryusen1, -58.6 );
setEffRotateKey( spep_2 -3 + 218, ryusen1, -58.6 );

setEffAlphaKey( spep_2 -3 + 102, ryusen1, 64 );
setEffAlphaKey( spep_2 -3 + 104, ryusen1, 128 );
setEffAlphaKey( spep_2 -3 + 106, ryusen1, 191 );
setEffAlphaKey( spep_2 -3 + 108, ryusen1, 255 );
setEffAlphaKey( spep_2 -3 + 218, ryusen1, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-2 + 124,  906, 114, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-2 + 124, shuchusen3, 114, 20 );

setEffMoveKey( spep_2-3 + 124, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 238, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 124, shuchusen3, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 126, shuchusen3, 1.15, 1.15 );
setEffScaleKey( spep_2-3 + 128, shuchusen3, 1.16, 1.16 );
setEffScaleKey( spep_2-3 + 130, shuchusen3, 1.18, 1.18 );
setEffScaleKey( spep_2-3 + 132, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_2-3 + 134, shuchusen3, 1.24, 1.24 );
setEffScaleKey( spep_2-3 + 136, shuchusen3, 1.28, 1.28 );
setEffScaleKey( spep_2-3 + 138, shuchusen3, 1.32, 1.32 );
setEffScaleKey( spep_2-3 + 140, shuchusen3, 1.38, 1.38 );
setEffScaleKey( spep_2-3 + 142, shuchusen3, 1.44, 1.44 );
setEffScaleKey( spep_2-3 + 144, shuchusen3, 1.51, 1.51 );
setEffScaleKey( spep_2-3 + 146, shuchusen3, 1.59, 1.59 );
setEffScaleKey( spep_2-3 + 238, shuchusen3, 1.59, 1.59 );

setEffRotateKey( spep_2-3 + 124, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 238, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 124, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 238, shuchusen3, 255 );

-- ** 敵の動き ** --
setDisp( spep_2-3 + 100, 1, 1 );
setDisp( spep_2 + 220, 1, 0 );

changeAnime( spep_2-3 + 100, 1, 101 );
changeAnime( spep_2-3 + 128, 1, 106 );

setMoveKey( spep_2-3 + 100, 1, 76, 76 , 0 );
setMoveKey( spep_2-3 + 126, 1, 76, 76 , 0 );
setMoveKey( spep_2-3 + 127, 1, 76, 76 , 0 );

setMoveKey( spep_2-3 + 128, 1, 56.7, 92 , 0 );
setMoveKey( spep_2-3 + 130, 1, 63.4, 100 , 0 );
setMoveKey( spep_2-3 + 132, 1, 70, 108 , 0 );
setMoveKey( spep_2-3 + 134, 1, 76.7, 116 , 0 );
setMoveKey( spep_2-3 + 136, 1, 66, 106.7 , 0 );
setMoveKey( spep_2-3 + 138, 1, 55.4, 97.3 , 0 );
setMoveKey( spep_2-3 + 140, 1, 44.7, 88 , 0 );
setMoveKey( spep_2-3 + 142, 1, 62, 88 , 0 );
setMoveKey( spep_2-3 + 144, 1, 79.4, 88 , 0 );
setMoveKey( spep_2-3 + 146, 1, 96.7, 88 , 0 );
setMoveKey( spep_2-3 + 148, 1, 90, 96 , 0 );
setMoveKey( spep_2-3 + 150, 1, 83.4, 104 , 0 );
setMoveKey( spep_2-3 + 152, 1, 76.7, 112 , 0 );
setMoveKey( spep_2-3 + 154, 1, 74, 102.7 , 0 );
setMoveKey( spep_2-3 + 156, 1, 71.4, 93.3 , 0 );
setMoveKey( spep_2-3 + 158, 1, 68.7, 84 , 0 );
setMoveKey( spep_2-3 + 160, 1, 67.4, 92 , 0 );
setMoveKey( spep_2-3 + 162, 1, 66, 100 , 0 );
setMoveKey( spep_2-3 + 164, 1, 64.7, 108 , 0 );
setMoveKey( spep_2-3 + 166, 1, 68.7, 98.7 , 0 );
setMoveKey( spep_2-3 + 168, 1, 72.7, 89.3 , 0 );
setMoveKey( spep_2-3 + 170, 1, 76.7, 80 , 0 );
setMoveKey( spep_2-3 + 172, 1, 70.7, 83 , 0 );
setMoveKey( spep_2-3 + 174, 1, 64.7, 86 , 0 );
setMoveKey( spep_2-3 + 176, 1, 58.7, 89 , 0 );
setMoveKey( spep_2-3 + 178, 1, 52.7, 92 , 0 );
setMoveKey( spep_2-3 + 180, 1, 59.4, 85.3 , 0 );
setMoveKey( spep_2-3 + 182, 1, 66, 78.7 , 0 );
setMoveKey( spep_2-3 + 184, 1, 72.7, 72 , 0 );
setMoveKey( spep_2-3 + 186, 1, 72.7, 76 , 0 );
setMoveKey( spep_2-3 + 188, 1, 68.7, 86 , 0 );
setMoveKey( spep_2-3 + 190, 1, 64.7, 96 , 0 );
setMoveKey( spep_2-3 + 192, 1, 62.7, 94 , 0 );
setMoveKey( spep_2-3 + 194, 1, 61.7, 109 , 0 );
setMoveKey( spep_2-3 + 196, 1, 60.7, 124 , 0 );
setMoveKey( spep_2-3 + 198, 1, 70.7, 120 , 0 );
setMoveKey( spep_2-3 + 200, 1, 67.7, 106 , 0 );
setMoveKey( spep_2-3 + 202, 1, 64.7, 92 , 0 );
setMoveKey( spep_2-3 + 204, 1, 78.7, 84 , 0 );
setMoveKey( spep_2-3 + 206, 1, 77.7, 88 , 0 );
setMoveKey( spep_2-3 + 208, 1, 76.7, 92 , 0 );
setMoveKey( spep_2-3 + 210, 1, 64.7, 104 , 0 );
setMoveKey( spep_2-3 + 212, 1, 70.7, 110 , 0 );
setMoveKey( spep_2-3 + 214, 1, 76.7, 116 , 0 );
setMoveKey( spep_2 + 220, 1, 72.7, 104 , 0 );

setScaleKey( spep_2-3 + 100, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 126, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 127, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 128, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 220, 1, 1.41, 1.41 );

setRotateKey( spep_2-3 + 100, 1, 0 );
setRotateKey( spep_2 + 220, 1, 0 );

--SE
playSe( spep_2 + 44, 1120 );
playSe( spep_2 + 44, 1003 );
playSe( spep_2 + 118, 1043 );
playSe( spep_2 + 204, 8 );

stopSe( spep_2 + 44, se_1037, 0 );

--黒背景
entryFadeBg( spep_2+97, 0, 134, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 220, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+230;

--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 160, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );

--流線
ryusen2 = entryEffectLife( spep_3  + 0,  921, 38 -3, 0x80, -1, 0, 0, 0 );
setEffShake( spep_3  + 0, ryusen2, 38 -3, 20 );

setEffMoveKey( spep_3 + 0, ryusen2, 0, 230 , 0 );
setEffMoveKey( spep_3 -3 + 38, ryusen2, 0, 230 , 0 );

setEffScaleKey( spep_3  + 0, ryusen2, 1.64, 1.32 );
setEffScaleKey( spep_3 -3 + 38, ryusen2, 1.64, 1.32 );

setEffRotateKey( spep_3 + 0, ryusen2, -36.6 );
setEffRotateKey( spep_3 -3 + 38, ryusen2, -36.6 );

setEffAlphaKey( spep_3  + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 -3 + 32, ryusen2, 255 );
setEffAlphaKey( spep_3 -3 + 34, ryusen2, 170 );
setEffAlphaKey( spep_3 -3 + 36, ryusen2, 85 );
setEffAlphaKey( spep_3 -3 + 38, ryusen2, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 158, 0x100, -1, 0, 238.4, 250 );
setEffShake( spep_3  + 0, shuchusen4, 158, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 238.4, 250 , 0 );
setEffMoveKey( spep_3 + 158, shuchusen4, 238.4, 250 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.65, 1.47 );
setEffScaleKey( spep_3 + 158, shuchusen4, 1.65, 1.47 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3 + 158, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 158, shuchusen4, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 18, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, 188, 200.1 , 0 );
setMoveKey( spep_3 + 18, 1, 188, 200.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 18, 1, 0.75, 0.75 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 18, 1, 0 );

--SE
se_1159 = playSe( spep_3 + 18, 1159 );
setSeVolume( spep_3 + 18,1159, 63 );
playSe( spep_3 + 18, 1023 );
setSeVolume( spep_3 + 18,1023 ,63 );
stopSe( spep_3 + 100, se_1159, 46 );

--黒い
entryFadeBg( spep_3, 0, 168, 0, 0, 0, 0, 255 );

-- ** ダメージ表示 ** --
dealDamage(spep_3 +22 );
endPhase( spep_3 + 148 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 気溜め　
------------------------------------------------------
--はじめの準備
spep_0 = 0;



-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --登場(ef_001)
setEffMoveKey( spep_0 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_0 + 180, tame, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 180, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 180, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 180, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 50,  906, 102, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-1 + 50, shuchusen1, 103, 20 );

setEffMoveKey( spep_0-3 + 50, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 152, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 50, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 58, shuchusen1, 1, 1 );
setEffScaleKey( spep_0-3 + 60, shuchusen1, 1.01, 1.01 );
setEffScaleKey( spep_0-3 + 138, shuchusen1, 1.01, 1.01 );
setEffScaleKey( spep_0-3 + 140, shuchusen1, 1.21, 1.21 );
setEffScaleKey( spep_0-3 + 152, shuchusen1, 1.21, 1.21 );

setEffRotateKey( spep_0-3 + 50, shuchusen1, 0 );
setEffRotateKey( spep_0-3 + 152, shuchusen1, 0 );

setEffAlphaKey( spep_0-3 + 50, shuchusen1, 23 );
setEffAlphaKey( spep_0-3 + 52, shuchusen1, 46 );
setEffAlphaKey( spep_0-3 + 54, shuchusen1, 70 );
setEffAlphaKey( spep_0-3 + 56, shuchusen1, 93 );
setEffAlphaKey( spep_0-3 + 58, shuchusen1, 116 );
setEffAlphaKey( spep_0-3 + 60, shuchusen1, 139 );
setEffAlphaKey( spep_0-3 + 62, shuchusen1, 162 );
setEffAlphaKey( spep_0-3 + 64, shuchusen1, 185 );
setEffAlphaKey( spep_0-3 + 66, shuchusen1, 209 );
setEffAlphaKey( spep_0-3 + 68, shuchusen1, 232 );
setEffAlphaKey( spep_0-3 + 70, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 140, shuchusen1, 255 );
setEffAlphaKey( spep_0-3 + 142, shuchusen1, 213 );
setEffAlphaKey( spep_0-3 + 144, shuchusen1, 170 );
setEffAlphaKey( spep_0-3 + 146, shuchusen1, 128 );
setEffAlphaKey( spep_0-3 + 148, shuchusen1, 85 );
setEffAlphaKey( spep_0-3 + 150, shuchusen1, 42 );
setEffAlphaKey( spep_0-3 + 152, shuchusen1, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 76, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 76, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 + 88 , 190006, 72, 0x100, -1, 0, -40, 540);    -- ゴゴゴゴ

setEffShake(spep_0 + 88 ,ctgogo,72,10);

setEffMoveKey(  spep_0 +88 ,  ctgogo,  -40,  540);
setEffMoveKey(  spep_0 +160 ,  ctgogo,  -40,  540);

setEffAlphaKey( spep_0 +88 , ctgogo, 0 );
setEffAlphaKey( spep_0 + 89 , ctgogo, 255 );
setEffAlphaKey( spep_0 + 150 , ctgogo, 255 );
setEffAlphaKey( spep_0 + 152 , ctgogo, 255 );
setEffAlphaKey( spep_0 + 154 , ctgogo, 255 );
setEffAlphaKey( spep_0 + 156 , ctgogo, 191 );
setEffAlphaKey( spep_0 + 158 , ctgogo, 128 );
setEffAlphaKey( spep_0 + 160 , ctgogo, 64 );

setEffRotateKey(  spep_0 +88 ,  ctgogo,  0);
setEffRotateKey(  spep_0 +160 ,  ctgogo,  0);

setEffScaleKey(  spep_0 +88 ,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +150 ,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +160 ,  ctgogo, -1.07, 1.07 );

--黒背景
entryFadeBg( spep_0, 0, 180, 0, 0, 0, 0, 200 );

-- ** 白フェード ** --
entryFade( spep_0 + 170, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--音
playSe( spep_0 +76, 1018 );  --ごごご

playSe( spep_0 + 24, 43 );
setSeVolume( spep_0 + 24,43 ,25 );
playSe( spep_0 + 32, 43 );
setSeVolume( spep_0 + 32,43 ,20 );
playSe( spep_0 + 40, 43 );
setSeVolume( spep_0 + 40,43 ,16 );
playSe( spep_0 + 48, 43 );
setSeVolume( spep_0 + 48,43 ,13 );
playSe( spep_0 + 56, 43 );
setSeVolume( spep_0 + 56,43 ,16 );
playSe( spep_0 + 64, 43 );
setSeVolume( spep_0 + 64,43 ,20 );
playSe( spep_0 + 72, 43 );
setSeVolume( spep_0 + 72,43 ,16 );
playSe( spep_0 + 80, 43 );
setSeVolume( spep_0 + 80,43 ,10 );
playSe( spep_0 + 88, 43 );
setSeVolume( spep_0 + 88,43 ,25 );
playSe( spep_0 + 96, 43 );
setSeVolume( spep_0 + 96,43 ,16 );
playSe( spep_0 + 104, 43 );
setSeVolume( spep_0 + 104,43 ,13 );
playSe( spep_0 + 112, 43 );
setSeVolume( spep_0 + 112,43 ,10 );
playSe( spep_0 + 120, 43 );
setSeVolume( spep_0 + 120,43 ,20 );
playSe( spep_0 + 128, 43 );
setSeVolume( spep_0 + 128,43, 25 );
playSe( spep_0 + 24, 4 );
setSeVolume( spep_0 + 24,4 ,63 );
playSe( spep_0 + 30, 4 );
setSeVolume( spep_0 + 30,4 ,126 );
playSe( spep_0 + 36, 4 );
setSeVolume( spep_0 + 36,4 ,79 );
playSe( spep_0 + 42, 4 );
playSe( spep_0 + 48, 4 );
setSeVolume( spep_0 + 48,4 ,71 );
playSe( spep_0 + 54, 4 );
setSeVolume( spep_0 + 54,4 ,126 );
playSe( spep_0 + 60, 4 );
playSe( spep_0 + 66, 4 );
setSeVolume( spep_0 + 66,4 ,79 );
playSe( spep_0 + 72, 4 );
playSe( spep_0 + 78, 4 );
setSeVolume( spep_0 + 78,4 ,71 );
playSe( spep_0 + 84, 4 );
setSeVolume( spep_0 + 84,4, 79 );
playSe( spep_0 + 90, 4 );
playSe( spep_0 + 96, 4 );
setSeVolume( spep_0 + 96,4 ,126 );
playSe( spep_0 + 102, 4 );
setSeVolume( spep_0 + 102,4 ,79 );
playSe( spep_0 + 108, 4 );
playSe( spep_0 + 114, 4 );
setSeVolume( spep_0 + 114,4 ,71 );
playSe( spep_0 + 120, 4 );
playSe( spep_0 + 126, 4 );
setSeVolume( spep_0 + 126,4, 89 );
playSe( spep_0 + 132, 4 );
setSeVolume( spep_0 + 132,4, 112 );
playSe( spep_0 + 138, 4 );
setSeVolume( spep_0 + 138,4, 126 );
playSe( spep_0 + 150, 1109 );
setSeVolume( spep_0 + 150,1109, 63 );

--次の準備
spep_1 = spep_0+180;

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
entryFade( spep_1 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--手をバッてする
--------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, explosion, 0, 0 , 0 );
setEffMoveKey( spep_2 + 240, explosion, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, explosion, 1.0, 1.0 );
setEffScaleKey( spep_2 + 240, explosion, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, explosion, 0 );
setEffRotateKey( spep_2 + 240, explosion, 0 );
setEffAlphaKey( spep_2 + 0, explosion, 255 );
setEffAlphaKey( spep_2 + 240, explosion, 255 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 60,  906, 38, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-2 + 60, shuchusen2, 39, 20 );

setEffMoveKey( spep_2-3 + 60, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 98, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 60, shuchusen2, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 62, shuchusen2, 1.15, 1.15 );
setEffScaleKey( spep_2-3 + 64, shuchusen2, 1.17, 1.17 );
setEffScaleKey( spep_2-3 + 66, shuchusen2, 1.19, 1.19 );
setEffScaleKey( spep_2-3 + 68, shuchusen2, 1.23, 1.23 );
setEffScaleKey( spep_2-3 + 70, shuchusen2, 1.28, 1.28 );
setEffScaleKey( spep_2-3 + 72, shuchusen2, 1.34, 1.34 );
setEffScaleKey( spep_2-3 + 74, shuchusen2, 1.41, 1.41 );
setEffScaleKey( spep_2-3 + 76, shuchusen2, 1.5, 1.5 );
setEffScaleKey( spep_2-3 + 78, shuchusen2, 1.59, 1.59 );
setEffScaleKey( spep_2-3 + 98, shuchusen2, 1.59, 1.59 );

setEffRotateKey( spep_2-3 + 60, shuchusen2, 180 );
setEffRotateKey( spep_2-3 + 98, shuchusen2, 180 );

setEffAlphaKey( spep_2-3 + 60, shuchusen2, 255 );
setEffAlphaKey( spep_2-3 + 98, shuchusen2, 255 );

--SE
se_1037 = playSe( spep_2 + 0, 1037 );
setSeVolume( spep_2 + 0,1037, 63 );

--黒背景
entryFadeBg( spep_2, 0, 97, 0, 0, 0, 0, 200 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, se_1037, 0 );
    --stopSe( SP_dodge - 12, SE1, 0 );
    --stopSe( SP_dodge - 12, SE2, 0 );
    
    pauseAll( SP_dodge, 67 );


    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,-1,  0,  0,  -350 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );   -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100, -1,  0,  0,  350 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    
    
    
    
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    setMoveKey( SP_dodge + 10,   0,-2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------


--流線
ryusen1 = entryEffectLife( spep_2 -3 + 102,  921, 116, 0x80, -1, 0, 0, 0 );
setEffShake( spep_2 -2 + 102, ryusen1, 116, 20 );

setEffMoveKey( spep_2 -3 + 102, ryusen1, 0, 0 , 0 );
setEffMoveKey( spep_2 -3 + 218, ryusen1, 0, 0 , 0 );

setEffScaleKey( spep_2 -3 + 102, ryusen1, 1.69, 1.69 );
setEffScaleKey( spep_2 -3 + 218, ryusen1, 1.69, 1.69 );

setEffRotateKey( spep_2 -3 + 102, ryusen1, -50.6 );
setEffRotateKey( spep_2 -3 + 218, ryusen1, -50.6 );

setEffAlphaKey( spep_2 -3 + 102, ryusen1, 64 );
setEffAlphaKey( spep_2 -3 + 104, ryusen1, 128 );
setEffAlphaKey( spep_2 -3 + 106, ryusen1, 191 );
setEffAlphaKey( spep_2 -3 + 108, ryusen1, 255 );
setEffAlphaKey( spep_2 -3 + 218, ryusen1, 255 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 124,  906, 114, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-2 + 124, shuchusen3, 114, 20 );

setEffMoveKey( spep_2-3 + 124, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 238, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 124, shuchusen3, 1.14, 1.14 );
setEffScaleKey( spep_2-3 + 126, shuchusen3, 1.15, 1.15 );
setEffScaleKey( spep_2-3 + 128, shuchusen3, 1.16, 1.16 );
setEffScaleKey( spep_2-3 + 130, shuchusen3, 1.18, 1.18 );
setEffScaleKey( spep_2-3 + 132, shuchusen3, 1.2, 1.2 );
setEffScaleKey( spep_2-3 + 134, shuchusen3, 1.24, 1.24 );
setEffScaleKey( spep_2-3 + 136, shuchusen3, 1.28, 1.28 );
setEffScaleKey( spep_2-3 + 138, shuchusen3, 1.32, 1.32 );
setEffScaleKey( spep_2-3 + 140, shuchusen3, 1.38, 1.38 );
setEffScaleKey( spep_2-3 + 142, shuchusen3, 1.44, 1.44 );
setEffScaleKey( spep_2-3 + 144, shuchusen3, 1.51, 1.51 );
setEffScaleKey( spep_2-3 + 146, shuchusen3, 1.59, 1.59 );
setEffScaleKey( spep_2-3 + 238, shuchusen3, 1.59, 1.59 );

setEffRotateKey( spep_2-3 + 124, shuchusen3, 180 );
setEffRotateKey( spep_2-3 + 238, shuchusen3, 180 );

setEffAlphaKey( spep_2-3 + 124, shuchusen3, 255 );
setEffAlphaKey( spep_2-3 + 238, shuchusen3, 255 );

-- ** 敵の動き ** --
setDisp( spep_2-3 + 100, 1, 1 );
setDisp( spep_2 + 220, 1, 0 );

changeAnime( spep_2-3 + 100, 1, 101 );
changeAnime( spep_2-3 + 128, 1, 106 );

setMoveKey( spep_2-3 + 100, 1, 76, 76 , 0 );
setMoveKey( spep_2-3 + 126, 1, 76, 76 , 0 );
setMoveKey( spep_2-3 + 127, 1, 76, 76 , 0 );

setMoveKey( spep_2-3 + 128, 1, 56.7, 92 , 0 );
setMoveKey( spep_2-3 + 130, 1, 63.4, 100 , 0 );
setMoveKey( spep_2-3 + 132, 1, 70, 108 , 0 );
setMoveKey( spep_2-3 + 134, 1, 76.7, 116 , 0 );
setMoveKey( spep_2-3 + 136, 1, 66, 106.7 , 0 );
setMoveKey( spep_2-3 + 138, 1, 55.4, 97.3 , 0 );
setMoveKey( spep_2-3 + 140, 1, 44.7, 88 , 0 );
setMoveKey( spep_2-3 + 142, 1, 62, 88 , 0 );
setMoveKey( spep_2-3 + 144, 1, 79.4, 88 , 0 );
setMoveKey( spep_2-3 + 146, 1, 96.7, 88 , 0 );
setMoveKey( spep_2-3 + 148, 1, 90, 96 , 0 );
setMoveKey( spep_2-3 + 150, 1, 83.4, 104 , 0 );
setMoveKey( spep_2-3 + 152, 1, 76.7, 112 , 0 );
setMoveKey( spep_2-3 + 154, 1, 74, 102.7 , 0 );
setMoveKey( spep_2-3 + 156, 1, 71.4, 93.3 , 0 );
setMoveKey( spep_2-3 + 158, 1, 68.7, 84 , 0 );
setMoveKey( spep_2-3 + 160, 1, 67.4, 92 , 0 );
setMoveKey( spep_2-3 + 162, 1, 66, 100 , 0 );
setMoveKey( spep_2-3 + 164, 1, 64.7, 108 , 0 );
setMoveKey( spep_2-3 + 166, 1, 68.7, 98.7 , 0 );
setMoveKey( spep_2-3 + 168, 1, 72.7, 89.3 , 0 );
setMoveKey( spep_2-3 + 170, 1, 76.7, 80 , 0 );
setMoveKey( spep_2-3 + 172, 1, 70.7, 83 , 0 );
setMoveKey( spep_2-3 + 174, 1, 64.7, 86 , 0 );
setMoveKey( spep_2-3 + 176, 1, 58.7, 89 , 0 );
setMoveKey( spep_2-3 + 178, 1, 52.7, 92 , 0 );
setMoveKey( spep_2-3 + 180, 1, 59.4, 85.3 , 0 );
setMoveKey( spep_2-3 + 182, 1, 66, 78.7 , 0 );
setMoveKey( spep_2-3 + 184, 1, 72.7, 72 , 0 );
setMoveKey( spep_2-3 + 186, 1, 72.7, 76 , 0 );
setMoveKey( spep_2-3 + 188, 1, 68.7, 86 , 0 );
setMoveKey( spep_2-3 + 190, 1, 64.7, 96 , 0 );
setMoveKey( spep_2-3 + 192, 1, 62.7, 94 , 0 );
setMoveKey( spep_2-3 + 194, 1, 61.7, 109 , 0 );
setMoveKey( spep_2-3 + 196, 1, 60.7, 124 , 0 );
setMoveKey( spep_2-3 + 198, 1, 70.7, 120 , 0 );
setMoveKey( spep_2-3 + 200, 1, 67.7, 106 , 0 );
setMoveKey( spep_2-3 + 202, 1, 64.7, 92 , 0 );
setMoveKey( spep_2-3 + 204, 1, 78.7, 84 , 0 );
setMoveKey( spep_2-3 + 206, 1, 77.7, 88 , 0 );
setMoveKey( spep_2-3 + 208, 1, 76.7, 92 , 0 );
setMoveKey( spep_2-3 + 210, 1, 64.7, 104 , 0 );
setMoveKey( spep_2-3 + 212, 1, 70.7, 110 , 0 );
setMoveKey( spep_2-3 + 214, 1, 76.7, 116 , 0 );
setMoveKey( spep_2 + 220, 1, 72.7, 104 , 0 );

setScaleKey( spep_2-3 + 100, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 126, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 127, 1, 1.55, 1.55 );
setScaleKey( spep_2-3 + 128, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 220, 1, 1.41, 1.41 );

setRotateKey( spep_2-3 + 100, 1, 0 );
setRotateKey( spep_2 + 220, 1, 0 );

--SE
playSe( spep_2 + 44, 1120 );
playSe( spep_2 + 44, 1003 );
playSe( spep_2 + 118, 1043 );
playSe( spep_2 + 204, 8 );

stopSe( spep_2 + 44, se_1037, 0 );

--黒背景
entryFadeBg( spep_2+97, 0, 134, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_2 + 220, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3 = spep_2+230;
--------------------------------------
--爆発
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_3 + 160, finish, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 160, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 160, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );

--流線
ryusen2 = entryEffectLife( spep_3  + 0,  921, 38 -3, 0x80, -1, 0, 0, 0 );
setEffShake( spep_3  + 0, ryusen2, 38 -3, 20 );

setEffMoveKey( spep_3 + 0, ryusen2, 0, 230 , 0 );
setEffMoveKey( spep_3 -3 + 38, ryusen2, 0, 230 , 0 );

setEffScaleKey( spep_3  + 0, ryusen2, 1.64, 1.32 );
setEffScaleKey( spep_3 -3 + 38, ryusen2, 1.64, 1.32 );

setEffRotateKey( spep_3 + 0, ryusen2, -36.6 );
setEffRotateKey( spep_3 -3 + 38, ryusen2, -36.6 );

setEffAlphaKey( spep_3  + 0, ryusen2, 255 );
setEffAlphaKey( spep_3 -3 + 32, ryusen2, 255 );
setEffAlphaKey( spep_3 -3 + 34, ryusen2, 170 );
setEffAlphaKey( spep_3 -3 + 36, ryusen2, 85 );
setEffAlphaKey( spep_3 -3 + 38, ryusen2, 0 );

--集中線
shuchusen4 = entryEffectLife( spep_3 + 0,  906, 158, 0x100, -1, 0, 238.4, 250 );
setEffShake( spep_3  + 0, shuchusen4, 158, 20 );

setEffMoveKey( spep_3 + 0, shuchusen4, 238.4, 250 , 0 );
setEffMoveKey( spep_3 + 158, shuchusen4, 238.4, 250 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen4, 1.65, 1.47 );
setEffScaleKey( spep_3 + 158, shuchusen4, 1.65, 1.47 );

setEffRotateKey( spep_3 + 0, shuchusen4, 180 );
setEffRotateKey( spep_3 + 158, shuchusen4, 180 );

setEffAlphaKey( spep_3 + 0, shuchusen4, 255 );
setEffAlphaKey( spep_3 + 158, shuchusen4, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 18, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, 188, 200.1 , 0 );
setMoveKey( spep_3 + 18, 1, 188, 200.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.75, 0.75 );
setScaleKey( spep_3 + 18, 1, 0.75, 0.75 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 18, 1, 0 );

--SE
se_1159 = playSe( spep_3 + 18, 1159 );
setSeVolume( spep_3 + 18,1159, 63 );
playSe( spep_3 + 18, 1023 );
setSeVolume( spep_3 + 18,1023 ,63 );
stopSe( spep_3 + 100, se_1159, 46 );

--黒い
entryFadeBg( spep_3, 0, 168, 0, 0, 0, 0, 255 );

-- ** ダメージ表示 ** --
dealDamage(spep_3 +22 );
endPhase( spep_3 + 148 );

end