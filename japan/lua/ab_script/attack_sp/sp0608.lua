--1018920:ブロリー(幼年期)_ギガンティッククラスター
--sp_effect_a2_00126

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
SP_01=	154877	;--	ジャンプからの気弾待機
SP_02=	154879	;--	気玉群発動
SP_03=	154881	;--	敵に向かっていく気球群

--エフェクト(敵側)
SP_01x=	154878	;--	ジャンプからの気弾待機 敵側
SP_02x=	154880	;--	気玉群発動 敵側
SP_03x=	154881	;--	敵に向かっていく気球群
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
-- ジャンプからの気弾待機
------------------------------------------------------
--初めの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 150 ,tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150 ,tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0,tame, 0 );
setEffRotateKey( spep_0 + 150 ,tame, 0 );
setEffAlphaKey( spep_0 + 0,tame, 255 );
setEffAlphaKey( spep_0 + 150 ,tame, 255 );

--流線
ryusen1 = entryEffectLife( spep_0 -3 + 66,  921, 82, 0x80, -1, 0, 0, 60 );

setEffMoveKey( spep_0 -3 + 66, ryusen1, 0, 0 , 60 );
setEffMoveKey( spep_0 -3 + 148, ryusen1, 0, 0 , 60 );

setEffScaleKey( spep_0 -3 + 66, ryusen1, 2.25, 1.13 );
setEffScaleKey( spep_0 -3 + 148, ryusen1, 2.25, 1.13 );

setEffRotateKey( spep_0 -3 + 66, ryusen1, -131 );
setEffRotateKey( spep_0 -3 + 148, ryusen1, -131 );

setEffAlphaKey( spep_0 -3 + 66, ryusen1, 255 );
setEffAlphaKey( spep_0 -3 + 148, ryusen1, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0 + 60, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0 + 60, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0  + 72, 190006, 72, 0x100, -1, 0, 200, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_0  + 72,  ctgogo, 200, 530 );
setEffMoveKey(  spep_0  + 144,  ctgogo, 200, 530 );

setEffAlphaKey( spep_0  + 72, ctgogo, 0 );
setEffAlphaKey( spep_0  + 73, ctgogo, 255 );
setEffAlphaKey( spep_0  + 74, ctgogo, 255 );
setEffAlphaKey( spep_0  + 138, ctgogo, 255 );
setEffAlphaKey( spep_0  + 140, ctgogo, 191 );
setEffAlphaKey( spep_0  + 142, ctgogo, 112 );
setEffAlphaKey( spep_0  + 144, ctgogo, 64 );

setEffRotateKey( spep_0  + 72,  ctgogo,  0);
setEffRotateKey( spep_0  + 144,  ctgogo,  0);

setEffScaleKey( spep_0  + 72,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0  + 134,  ctgogo,  0.7,  0.7);
setEffScaleKey( spep_0  + 144,  ctgogo, 1.07, 1.07 );

-- ** 音 ** --
playSe( spep_0+72, 1018 );

se_0044 = playSe( spep_0 + 21, 44 );
setSeVolume( spep_0 + 21, 44, 0 );
setSeVolume( spep_0 + 28, 44, 0 );
setSeVolume( spep_0 + 29, 44, 33 );
setSeVolume( spep_0 + 30, 44, 66 );
setSeVolume( spep_0 + 31, 44, 100 );
playSe( spep_0 + 25, 1232 );
setSeVolume( spep_0 + 25, 1232, 126 );
playSe( spep_0 + 28, 1003 );
setSeVolume( spep_0 + 28, 1003, 79 );
playSe( spep_0 + 70, 49 );
se_1154 = playSe( spep_0 + 70, 1154 );
setSeVolume( spep_0 + 70, 1154, 0 );
setSeVolume( spep_0 + 78, 1154, 0 );
setSeVolume( spep_0 + 79, 1154, 38.5 );
setSeVolume( spep_0 + 80, 1154, 77 );
setSeVolume( spep_0 + 81, 1154, 115.5 );
setSeVolume( spep_0 + 82, 1154, 154 );
se_1144 = playSe( spep_0 + 73, 1144 );
setSeVolume( spep_0 + 73, 1144, 32 );

stopSe( spep_0 + 75, se_0044, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 180 );  --黒　背景

--白フェード
entryFade( spep_0 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+150;

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

-- ** 白フェード ** --
entryFade( spep_1 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1, 1035 );

stopSe( spep_1 + 2, se_1154, 0 );
stopSe( spep_1 + 4, se_1144, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 気玉群発動
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 60 ,beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60 ,beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,beam, 0 );
setEffRotateKey( spep_2 + 60 ,beam, 0 );
setEffAlphaKey( spep_2 + 0,beam, 255 );
setEffAlphaKey( spep_2 + 60 ,beam, 255 );

--流線
ryusen2 = entryEffectLife( spep_2 + 0,  921, 56, 0x80, -1, 0, 4.5, -33.3 );

setEffMoveKey( spep_2 + 0, ryusen2, 4.5, -20.3 , 0 );
setEffMoveKey( spep_2 + 56, ryusen2, 4.5, -20.3 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.81, 1.17 );
setEffScaleKey( spep_2 + 56, ryusen2, 1.81, 1.17 );

setEffRotateKey( spep_2 + 0, ryusen2, -160 );
setEffRotateKey( spep_2 + 56, ryusen2, -160 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 54, ryusen2, 255 );
setEffAlphaKey( spep_2 + 55, ryusen2, 255 );
setEffAlphaKey( spep_2 + 56, ryusen2, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 30,  906, 12, 0x100, -1, 0,0, 0);

setEffMoveKey( spep_2-3 + 30, shuchusen1,0, 0, 0 );
setEffMoveKey( spep_2-3 + 42, shuchusen1,0, 0, 0 );

setEffScaleKey( spep_2-3 + 30, shuchusen1, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 42, shuchusen1, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 30, shuchusen1, 180 );
setEffRotateKey( spep_2-3 + 42, shuchusen1, 180 );

setEffAlphaKey( spep_2-3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 42, shuchusen1, 255 );

--SE
playSe( spep_2 + 2, 49 );
setSeVolume( spep_2 + 2, 49, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 180 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
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
--SE
playSe( spep_2 + 32, 1007 );
setSeVolume( spep_2 + 32, 1007, 71 );
playSe( spep_2 + 32, 1003 );
setSeVolume( spep_2 + 32, 1003, 79 );
playSe( spep_2 + 32, 1016 );
setSeVolume( spep_2 + 32, 1016, 79 );
playSe( spep_2 + 32, 1015 );
setSeVolume( spep_2 + 32, 1015, 63 );
playSe( spep_2 + 36, 1004 );
setSeVolume( spep_2 + 36, 1004, 83 );
playSe( spep_2 + 37, 1016 );
setSeVolume( spep_2 + 37, 1016, 79 );
se_0116 = playSe( spep_2 + 41, 116 );
-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 敵に向かっていく気球群
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,hit, 0, 0, 0 );
setEffMoveKey( spep_3 + 62 ,hit, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 62 ,hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,hit, 0 );
setEffRotateKey( spep_3 + 62 ,hit, 0 );
setEffAlphaKey( spep_3 + 0,hit, 255 );
setEffAlphaKey( spep_3 + 62 ,hit, 255 );

--流線
ryusen3 = entryEffectLife( spep_3 + 0,  921, 62, 0x80, -1, 0, 4, 2.8 );

setEffMoveKey( spep_3 + 0, ryusen3, 4, 2.8 , 0 );
setEffMoveKey( spep_3 + 62, ryusen3, 4, 2.8 , 0 );

setEffScaleKey( spep_3 + 0, ryusen3, 1.69, 1.05 );
setEffScaleKey( spep_3 + 62, ryusen3, 1.69, 1.05 );

setEffRotateKey( spep_3 + 0, ryusen3, 12.3 );
setEffRotateKey( spep_3 + 62, ryusen3, 12.3 );

setEffAlphaKey( spep_3 + 0, ryusen3, 255 );
setEffAlphaKey( spep_3 + 62, ryusen3, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 62, 1, 0 );

changeAnime( spep_3  + 0, 1, 104);
changeAnime( spep_3 -3 + 18, 1, 108 );

setMoveKey( spep_3  + 0, 1, 52.3, 9 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 46.8, 10.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 43, 11.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 40.2, 12.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 38.1, 12.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 36.5, 13 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 35.3, 13.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 34.3, 13.5 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 33.7, 13.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 32.4, 24.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 91.3, -12.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 131.1, -6.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 152.7, -29.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 168.5, -24.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 176.8, -32.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 184.8, -33.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 189.2, -32 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 193.2, -34.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 196.5, -36.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 199.8, -38.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 203, -40.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 204.7, -28.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 214.5, -50.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 230.2, -36.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 252.4, -55.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 287.8, -48.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 330.3, -59 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 380.9, -76.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 428.5, -78.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 470.1, -88.3 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 502.9, -94.4 , 0 );
setMoveKey( spep_3  + 62, 1, 527.5, -98.9 , 0 );

setScaleKey( spep_3  + 0, 1, 1.45, 1.45 );
--setScaleKey( spep_3 -3 + 2, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 4, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 6, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 8, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 12, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 20, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 22, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 26, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 28, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 30, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 32, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 34, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 36, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 38, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 40, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 42, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 44, 1, 1.23, 1.23 );
setScaleKey( spep_3 -3 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 48, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 50, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 52, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 54, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 56, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 58, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 60, 1, 0.63, 0.63 );
setScaleKey( spep_3  + 62, 1, 0.57, 0.57 );

setRotateKey( spep_3  + 0, 1, 11 );
setRotateKey( spep_3 -3 + 50, 1, 11 );
setRotateKey( spep_3 -3 + 52, 1, 10.9 );
setRotateKey( spep_3 -3 + 58, 1, 10.9 );
setRotateKey( spep_3 -3 + 60, 1, 10.8 );
setRotateKey( spep_3  + 62, 1, 10.8 );

--SE
playSe( spep_3 + 17, 1002 );
setSeVolume( spep_3 + 17, 1002, 126 );
playSe( spep_3 + 27, 1001 );
setSeVolume( spep_3 + 27, 1001, 79 );
playSe( spep_3 + 27, 1017 );
playSe( spep_3 + 38, 1002 );
setSeVolume( spep_3 + 38, 1002, 71 );
playSe( spep_3 + 38, 1023 );

stopSe( spep_3 + 12, se_0116, 10 );
--白フェード
entryFade( spep_3 + 54, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 62;

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

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

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 112, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 112, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 112, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.5, 3.5 );
setEffScaleKey( spep_4 + 112, ctga, 3.5, 3.5 );

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
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 122, 1, -45.3, -142.1 , 0 );

a = 0.8;

setScaleKey( spep_4 + 0, 1, 0.22 * a, 0.22 * a );
setScaleKey( spep_4 + 2, 1, 0.35 * a, 0.35 * a );
setScaleKey( spep_4 + 4, 1, 0.51 * a, 0.51 * a );
setScaleKey( spep_4 + 6, 1, 0.7 * a, 0.7 * a );
setScaleKey( spep_4 + 8, 1, 0.93 * a, 0.93 * a );
setScaleKey( spep_4 + 10, 1, 1.2 * a, 1.2 * a );
setScaleKey( spep_4 + 12, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 14, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 16, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 18, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 20, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 22, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 24, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 26, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 122, 1, 1.6 * a, 1.6 * a );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 122, 1, -40 );


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 180 );  --黒　背景


--SE
playSe( spep_4 +0, 1025 );
playSe( spep_4 + 16, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );


else 

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ジャンプからの気弾待機
------------------------------------------------------
--初めの準備
spep_0=0;
-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 150 ,tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 150 ,tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0,tame, 0 );
setEffRotateKey( spep_0 + 150 ,tame, 0 );
setEffAlphaKey( spep_0 + 0,tame, 255 );
setEffAlphaKey( spep_0 + 150 ,tame, 255 );

--流線
ryusen1 = entryEffectLife( spep_0 -3 + 66,  921, 82, 0x80, -1, 0, 0, 60 );

setEffMoveKey( spep_0 -3 + 66, ryusen1, 0, 0 , 60 );
setEffMoveKey( spep_0 -3 + 148, ryusen1, 0, 0 , 60 );

setEffScaleKey( spep_0 -3 + 66, ryusen1, 2.25, 1.13 );
setEffScaleKey( spep_0 -3 + 148, ryusen1, 2.25, 1.13 );

setEffRotateKey( spep_0 -3 + 66, ryusen1, -131 );
setEffRotateKey( spep_0 -3 + 148, ryusen1, -131 );

setEffAlphaKey( spep_0 -3 + 66, ryusen1, 255 );
setEffAlphaKey( spep_0 -3 + 148, ryusen1, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0 + 60, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0 + 60, 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0  + 72, 190006, 72, 0x100, -1, 0, 0, 530 );-- ゴゴゴゴ

setEffMoveKey(  spep_0  + 72,  ctgogo, 0, 530 );
setEffMoveKey(  spep_0  + 144,  ctgogo, 0, 530 );

setEffAlphaKey( spep_0  + 72, ctgogo, 0 );
setEffAlphaKey( spep_0  + 73, ctgogo, 255 );
setEffAlphaKey( spep_0  + 74, ctgogo, 255 );
setEffAlphaKey( spep_0  + 138, ctgogo, 255 );
setEffAlphaKey( spep_0  + 140, ctgogo, 191 );
setEffAlphaKey( spep_0  + 142, ctgogo, 112 );
setEffAlphaKey( spep_0  + 144, ctgogo, 64 );

setEffRotateKey( spep_0  + 72,  ctgogo,  0);
setEffRotateKey( spep_0  + 144,  ctgogo,  0);

setEffScaleKey( spep_0  + 72,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0  + 134,  ctgogo,  -0.7,  0.7);
setEffScaleKey( spep_0  + 144,  ctgogo, -1.07, 1.07 );

-- ** 音 ** --
playSe( spep_0+72, 1018 );

se_0044 = playSe( spep_0 + 21, 44 );
setSeVolume( spep_0 + 21, 44, 0 );
setSeVolume( spep_0 + 28, 44, 0 );
setSeVolume( spep_0 + 29, 44, 33 );
setSeVolume( spep_0 + 30, 44, 66 );
setSeVolume( spep_0 + 31, 44, 100 );
playSe( spep_0 + 25, 1232 );
setSeVolume( spep_0 + 25, 1232, 126 );
playSe( spep_0 + 28, 1003 );
setSeVolume( spep_0 + 28, 1003, 79 );
playSe( spep_0 + 70, 49 );
se_1154 = playSe( spep_0 + 70, 1154 );
setSeVolume( spep_0 + 70, 1154, 0 );
setSeVolume( spep_0 + 78, 1154, 0 );
setSeVolume( spep_0 + 79, 1154, 38.5 );
setSeVolume( spep_0 + 80, 1154, 77 );
setSeVolume( spep_0 + 81, 1154, 115.5 );
setSeVolume( spep_0 + 82, 1154, 154 );
se_1144 = playSe( spep_0 + 73, 1144 );
setSeVolume( spep_0 + 73, 1144, 32 );

stopSe( spep_0 + 75, se_0044, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 150, 0, 0, 0, 0, 180 );  --黒　背景

--白フェード
entryFade( spep_0 + 142, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+150;

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

-- ** 白フェード ** --
entryFade( spep_1 + 80, 6, 8, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1, 1035 );

stopSe( spep_1 + 2, se_1154, 0 );
stopSe( spep_1 + 4, se_1144, 0 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 気玉群発動
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,beam, 0, 0, 0 );
setEffMoveKey( spep_2 + 60 ,beam, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,beam, 1.0, 1.0 );
setEffScaleKey( spep_2 + 60 ,beam, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,beam, 0 );
setEffRotateKey( spep_2 + 60 ,beam, 0 );
setEffAlphaKey( spep_2 + 0,beam, 255 );
setEffAlphaKey( spep_2 + 60 ,beam, 255 );

--流線
ryusen2 = entryEffectLife( spep_2 + 0,  921, 56, 0x80, -1, 0, 4.5, -33.3 );

setEffMoveKey( spep_2 + 0, ryusen2, 4.5, -20.3 , 0 );
setEffMoveKey( spep_2 + 56, ryusen2, 4.5, -20.3 , 0 );

setEffScaleKey( spep_2 + 0, ryusen2, 1.81, 1.17 );
setEffScaleKey( spep_2 + 56, ryusen2, 1.81, 1.17 );

setEffRotateKey( spep_2 + 0, ryusen2, -160 );
setEffRotateKey( spep_2 + 56, ryusen2, -160 );

setEffAlphaKey( spep_2 + 0, ryusen2, 255 );
setEffAlphaKey( spep_2 + 54, ryusen2, 255 );
setEffAlphaKey( spep_2 + 55, ryusen2, 255 );
setEffAlphaKey( spep_2 + 56, ryusen2, 0 );

--集中線
shuchusen1 = entryEffectLife( spep_2-3 + 30,  906, 12, 0x100, -1, 0,0, 0);

setEffMoveKey( spep_2-3 + 30, shuchusen1,0, 0, 0 );
setEffMoveKey( spep_2-3 + 42, shuchusen1,0, 0, 0 );

setEffScaleKey( spep_2-3 + 30, shuchusen1, 1.58, 1.55 );
setEffScaleKey( spep_2-3 + 42, shuchusen1, 1.58, 1.55 );

setEffRotateKey( spep_2-3 + 30, shuchusen1, 180 );
setEffRotateKey( spep_2-3 + 42, shuchusen1, 180 );

setEffAlphaKey( spep_2-3 + 30, shuchusen1, 255 );
setEffAlphaKey( spep_2-3 + 42, shuchusen1, 255 );

--SE
playSe( spep_2 + 2, 49 );
setSeVolume( spep_2 + 2, 49, 126 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 118, 0, 0, 0, 0, 180 );  --黒　背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
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
--SE
playSe( spep_2 + 32, 1007 );
setSeVolume( spep_2 + 32, 1007, 71 );
playSe( spep_2 + 32, 1003 );
setSeVolume( spep_2 + 32, 1003, 79 );
playSe( spep_2 + 32, 1016 );
setSeVolume( spep_2 + 32, 1016, 79 );
playSe( spep_2 + 32, 1015 );
setSeVolume( spep_2 + 32, 1015, 63 );
playSe( spep_2 + 36, 1004 );
setSeVolume( spep_2 + 36, 1004, 83 );
playSe( spep_2 + 37, 1016 );
setSeVolume( spep_2 + 37, 1016, 79 );
se_0116 = playSe( spep_2 + 41, 116 );
-- ** 次の準備 ** --
spep_3 = spep_2 + 56;

------------------------------------------------------
-- 敵に向かっていく気球群
------------------------------------------------------
-- ** エフェクト等 ** --
hit = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0,hit, 0, 0, 0 );
setEffMoveKey( spep_3 + 62 ,hit, 0, 0, 0 );
setEffScaleKey( spep_3 + 0,hit, 1.0, 1.0 );
setEffScaleKey( spep_3 + 62 ,hit, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,hit, 0 );
setEffRotateKey( spep_3 + 62 ,hit, 0 );
setEffAlphaKey( spep_3 + 0,hit, 255 );
setEffAlphaKey( spep_3 + 62 ,hit, 255 );

--流線
ryusen3 = entryEffectLife( spep_3 + 0,  921, 62, 0x80, -1, 0, 4, 2.8 );

setEffMoveKey( spep_3 + 0, ryusen3, 4, 2.8 , 0 );
setEffMoveKey( spep_3 + 62, ryusen3, 4, 2.8 , 0 );

setEffScaleKey( spep_3 + 0, ryusen3, 1.69, 1.05 );
setEffScaleKey( spep_3 + 62, ryusen3, 1.69, 1.05 );

setEffRotateKey( spep_3 + 0, ryusen3, 12.3 );
setEffRotateKey( spep_3 + 62, ryusen3, 12.3 );

setEffAlphaKey( spep_3 + 0, ryusen3, 255 );
setEffAlphaKey( spep_3 + 62, ryusen3, 255 );

--敵の動き
setDisp( spep_3  + 0, 1, 1 );
setDisp( spep_3  + 62, 1, 0 );

changeAnime( spep_3  + 0, 1, 104);
changeAnime( spep_3 -3 + 18, 1, 108 );

setMoveKey( spep_3  + 0, 1, 52.3, 9 , 0 );
--setMoveKey( spep_3 -3 + 2, 1, 46.8, 10.5 , 0 );
setMoveKey( spep_3 -3 + 4, 1, 43, 11.4 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 40.2, 12.1 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 38.1, 12.6 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 36.5, 13 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 35.3, 13.3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 34.3, 13.5 , 0 );
setMoveKey( spep_3 -3 + 17, 1, 33.7, 13.6 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 32.4, 24.6 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 91.3, -12.2 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 131.1, -6.6 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 152.7, -29.4 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 168.5, -24.4 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 176.8, -32.2 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 184.8, -33.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 189.2, -32 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 193.2, -34.5 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 196.5, -36.4 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 199.8, -38.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 203, -40.2 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 204.7, -28.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 214.5, -50.6 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 230.2, -36.9 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 252.4, -55.2 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 287.8, -48.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 330.3, -59 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 380.9, -76.6 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 428.5, -78.7 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 470.1, -88.3 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 502.9, -94.4 , 0 );
setMoveKey( spep_3  + 62, 1, 527.5, -98.9 , 0 );

setScaleKey( spep_3  + 0, 1, 1.45, 1.45 );
--setScaleKey( spep_3 -3 + 2, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 4, 1, 1.47, 1.47 );
setScaleKey( spep_3 -3 + 6, 1, 1.48, 1.48 );
setScaleKey( spep_3 -3 + 8, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 12, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 14, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 18, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 20, 1, 1.43, 1.43 );
setScaleKey( spep_3 -3 + 22, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 24, 1, 1.35, 1.35 );
setScaleKey( spep_3 -3 + 26, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 28, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 30, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 32, 1, 1.31, 1.31 );
setScaleKey( spep_3 -3 + 34, 1, 1.3, 1.3 );
setScaleKey( spep_3 -3 + 36, 1, 1.28, 1.28 );
setScaleKey( spep_3 -3 + 38, 1, 1.27, 1.27 );
setScaleKey( spep_3 -3 + 40, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 42, 1, 1.24, 1.24 );
setScaleKey( spep_3 -3 + 44, 1, 1.23, 1.23 );
setScaleKey( spep_3 -3 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 48, 1, 1.15, 1.15 );
setScaleKey( spep_3 -3 + 50, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 52, 1, 0.98, 0.98 );
setScaleKey( spep_3 -3 + 54, 1, 0.88, 0.88 );
setScaleKey( spep_3 -3 + 56, 1, 0.78, 0.78 );
setScaleKey( spep_3 -3 + 58, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 60, 1, 0.63, 0.63 );
setScaleKey( spep_3  + 62, 1, 0.57, 0.57 );

setRotateKey( spep_3  + 0, 1, 11 );
setRotateKey( spep_3 -3 + 50, 1, 11 );
setRotateKey( spep_3 -3 + 52, 1, 10.9 );
setRotateKey( spep_3 -3 + 58, 1, 10.9 );
setRotateKey( spep_3 -3 + 60, 1, 10.8 );
setRotateKey( spep_3  + 62, 1, 10.8 );

--SE
playSe( spep_3 + 17, 1002 );
setSeVolume( spep_3 + 17, 1002, 126 );
playSe( spep_3 + 27, 1001 );
setSeVolume( spep_3 + 27, 1001, 79 );
playSe( spep_3 + 27, 1017 );
playSe( spep_3 + 38, 1002 );
setSeVolume( spep_3 + 38, 1002, 71 );
playSe( spep_3 + 38, 1023 );

stopSe( spep_3 + 12, se_0116, 10 );

--白フェード
entryFade( spep_3 + 54, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 62;

------------------------------------------------------
-- 敵吹っ飛びシーン(112F)
------------------------------------------------------

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

-- ** ひび割れ ** --
hibiware = entryEffect( spep_4 + 2, 1600, 0x100, -1, 0, 70, -60 );  --ひび割れ
setEffMoveKey( spep_4 + 2, hibiware, 70, -60, 0 ); 
setEffMoveKey( spep_4 + 112, hibiware, 70, -60, 0 ); 

setEffScaleKey( spep_4 + 2, hibiware, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, hibiware, 1.0, 1.0 );

setEffRotateKey( spep_4 + 2, hibiware, 0 );
setEffRotateKey( spep_4 + 112, hibiware, 0 );

setEffAlphaKey( spep_4 + 2, hibiware, 0 );
setEffAlphaKey( spep_4 + 13, hibiware, 0 );
setEffAlphaKey( spep_4 + 14, hibiware, 255 );
setEffAlphaKey( spep_4 + 112, hibiware, 255 );

-- ** 集中線 ** --
shuchusen4 = entryEffectLife( spep_4 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_4 + 14, shuchusen4, 32, 25 );

setEffMoveKey( spep_4 + 14, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_4 + 46, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen4, 1, 1 );
setEffScaleKey( spep_4 + 46, shuchusen4, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen4, 0 );
setEffRotateKey( spep_4 + 46, shuchusen4, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 28, shuchusen4, 255 );
setEffAlphaKey( spep_4 + 30, shuchusen4, 252 );
setEffAlphaKey( spep_4 + 32, shuchusen4, 242 );
setEffAlphaKey( spep_4 + 34, shuchusen4, 227 );
setEffAlphaKey( spep_4 + 36, shuchusen4, 205 );
setEffAlphaKey( spep_4 + 38, shuchusen4, 176 );
setEffAlphaKey( spep_4 + 40, shuchusen4, 142 );
setEffAlphaKey( spep_4 + 42, shuchusen4, 101 );
setEffAlphaKey( spep_4 + 44, shuchusen4, 54 );
setEffAlphaKey( spep_4 + 46, shuchusen4, 0 );

shuchusen5 = entryEffectLife( spep_4 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_4 + 14, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_4 + 14, shuchusen5, 1, 1 );
setEffScaleKey( spep_4 + 112, shuchusen5, 1, 1 );

setEffRotateKey( spep_4 + 14, shuchusen5, 0 );
setEffRotateKey( spep_4 + 112, shuchusen5, 0 );

setEffAlphaKey( spep_4 + 14, shuchusen5, 255 );
setEffAlphaKey( spep_4 + 112, shuchusen5, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_4 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_4 + 14, ctga, 14, 20 );

setEffMoveKey( spep_4 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_4 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_4 + 14, ctga, 3.5, 3.5 );
setEffScaleKey( spep_4 + 112, ctga, 3.5, 3.5 );

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
setEffRotateKey( spep_4 + 112, ctga, -14.9 );

setEffAlphaKey( spep_4 + 14, ctga, 255 );
setEffAlphaKey( spep_4 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
changeAnime( spep_4 + 0, 1, 107 );  --ダメージ 手前

setMoveKey( spep_4 + 0, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 1, 1, 36.2, 7.9 , 0 );
setMoveKey( spep_4 + 2, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 3, 1, 31, -3.9 , 0 );
setMoveKey( spep_4 + 4, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 5, 1, 27.7, -21.4 , 0 );
setMoveKey( spep_4 + 6, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 7, 1, 21.9, -41.6 , 0 );
setMoveKey( spep_4 + 8, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 9, 1, 15, -65.4 , 0 );
setMoveKey( spep_4 + 10, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 11, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_4 + 12, 1, -45.3, -142.1 , 0 );  --画面にぶつかる
setMoveKey( spep_4 + 122, 1, -45.3, -142.1 , 0 );

a = 0.8;

setScaleKey( spep_4 + 0, 1, 0.22 * a, 0.22 * a );
setScaleKey( spep_4 + 2, 1, 0.35 * a, 0.35 * a );
setScaleKey( spep_4 + 4, 1, 0.51 * a, 0.51 * a );
setScaleKey( spep_4 + 6, 1, 0.7 * a, 0.7 * a );
setScaleKey( spep_4 + 8, 1, 0.93 * a, 0.93 * a );
setScaleKey( spep_4 + 10, 1, 1.2 * a, 1.2 * a );
setScaleKey( spep_4 + 12, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 14, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 16, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 18, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 20, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 22, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 24, 1, 1.5 * a, 1.5 * a );
setScaleKey( spep_4 + 26, 1, 1.6 * a, 1.6 * a );
setScaleKey( spep_4 + 122, 1, 1.6 * a, 1.6 * a );

setRotateKey( spep_4 + 0, 1, -40 );
setRotateKey( spep_4 + 1, 1, -40 );
setRotateKey( spep_4 + 2, 1, 80 );
setRotateKey( spep_4 + 3, 1, 80 );
setRotateKey( spep_4 + 4, 1, 200 );
setRotateKey( spep_4 + 5, 1, 200 );
setRotateKey( spep_4 + 6, 1, 360 );
setRotateKey( spep_4 + 7, 1, 360 );
setRotateKey( spep_4 + 8, 1, 558 );
setRotateKey( spep_4 + 9, 1, 558 );
setRotateKey( spep_4 + 10, 1, 425 );
setRotateKey( spep_4 + 11, 1, 425 );
setRotateKey( spep_4 + 12, 1, -40 );
setRotateKey( spep_4 + 122, 1, -40 );


-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 180 );  --黒　背景

--SE
playSe( spep_4 +0, 1025 );
playSe( spep_4 + 16, 1054 );

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 );
endPhase( spep_4 + 106 );
end