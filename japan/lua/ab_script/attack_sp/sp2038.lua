--1020170:カーセラル(プライド・トルーパーズ)_ユナイテッドジャスティスストリーム
--sp_effect_a1_00244

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
SP_01=	155616	;--	ポーズ
SP_02=	155617	;--	集合ポーズ
SP_03=	155618	;--	技発射
SP_04=	155619	;--	迫る
SP_05=	155620	;--	被弾
SP_06=	155660	;--	被弾

--エフェクト(てき)
SP_01x=	155616	;--	ポーズ	
SP_02x=	155617	;--	集合ポーズ	
SP_03x=	155640	;--	技発射	(敵)
SP_04x=	155641	;--	迫る	
SP_05x=	155642	;--	被弾	
SP_06x=	155661	;--	被弾	

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
-- ポーズ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pause = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pause, 0, 0, 0 );
setEffMoveKey( spep_0 + 302, pause, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pause, 1.0, 1.0 );
setEffScaleKey( spep_0 + 302, pause, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pause, 0 );
setEffRotateKey( spep_0 + 302, pause, 0 );
setEffAlphaKey( spep_0 + 0, pause, 255 );
setEffAlphaKey( spep_0 + 302, pause, 255 );

--SE
playSe( spep_0 + 30, 1003 );--腕水平切り
setSeVolume( spep_0 + 30, 1003, 63 );
playSe( spep_0 + 74, 4 );--カーセラル決め
playSe( spep_0 + 76, 1048 );--カーセラル決め
playSe( spep_0 + 78, 1042 );--カーセラル決め
setSeVolume( spep_0 + 78, 1042, 71 );
playSe( spep_0 + 82, 1062 );--カーセラル決め
playSe( spep_0 + 124, 1062 );--タッパー決め
playSe( spep_0 + 124, 20 );--タッパー決め
setSeVolume( spep_0 + 124, 20, 22 );
playSe( spep_0 + 168, 1062 );--ゾイレー決め
playSe( spep_0 + 168, 1112 );--ゾイレー決め
setSeVolume( spep_0 + 168, 1112, 22 );
playSe( spep_0 + 202, 1062 );--ココット決め
playSe( spep_0 + 202, 46 );--ココット決め
setSeVolume( spep_0 + 202, 46, 56 );
playSe( spep_0 + 242, 1062 );--ケットル決め
playSe( spep_0 + 242, 1153 );--ケットル決め
setSeVolume( spep_0 + 242, 1153, 36 );

--白フェード
entryFade( spep_0+294 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 304, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_1=spep_0+302;
------------------------------------------------------
-- 集合ポーズ
------------------------------------------------------
-- ** エフェクト等 ** --
pause_all = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, pause_all, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, pause_all, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, pause_all, 1.0, 1.0 );
setEffScaleKey( spep_1 + 140, pause_all, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pause_all, 0 );
setEffRotateKey( spep_1 + 140, pause_all, 0 );
setEffAlphaKey( spep_1 + 0, pause_all, 255 );
setEffAlphaKey( spep_1 + 140, pause_all, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+4  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_1+4  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 140, 0, 0, 0, 0, 255 );  --薄い黒　背景

--白フェード
entryFade( spep_1 + 132, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_1 + 4, 1018 );--顔カットイン
se_1023 = playSe( spep_1 + 58, 1023 );--全員決め
setSeVolume( spep_1 + 58, 1023, 77 );
se_1024 = playSe( spep_1 + 62, 1024 );--全員決め
setSeVolume( spep_1 + 62, 1024, 76 );

-- ** 次の準備 ** --
spep_2=spep_1+140;

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

stopSe( spep_2 + 2, se_1023, 0 );
stopSe( spep_2 + 2, se_1024, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 技発射
------------------------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, shoot, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, shoot, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, shoot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shoot, 0 );
setEffRotateKey( spep_3 + 116, shoot, 0 );
setEffAlphaKey( spep_3 + 0, shoot, 255 );
setEffAlphaKey( spep_3 + 116, shoot, 255 );
setEffAlphaKey( spep_3 + 117, shoot, 0 );
setEffAlphaKey( spep_3 + 118, shoot, 0 );

--SE
se_0017 = playSe( spep_3 + 2, 17 );--気弾溜め
se_1262 = playSe( spep_3 + 2, 1262 );--気弾溜め
se_1154 = playSe( spep_3 + 2, 1154 );--気弾溜め
SE0=playSe( spep_3 + 22, 1022 );--気弾発射
SE1=playSe( spep_3 + 24, 1027 );--気弾発射
setSeVolume( spep_3 + 24, 1027, 69 );
se_1213 = playSe( spep_3 + 24, 1213 );--気弾発射
setSeVolume( spep_3 + 24, 1213, 35 );

stopSe( spep_3 + 32, se_0017, 5 );
stopSe( spep_3 + 32, se_1262, 5 );
stopSe( spep_3 + 32, se_1154, 5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 120, 0, 0, 0, 0, 255 );  --薄い黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 90; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_1213, 0 );

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
-- ** 次の準備 ** --
spep_4 = spep_3 + 116;
------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 100, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 100, beam, 255 );

--SE
playSe( spep_4 + 2, 1021 );--気弾合体
setSeVolume( spep_4 + 2, 1021, 89 );
se_1215 = playSe( spep_4 + 6, 1215 );--気弾合体
setSeVolume( spep_4 + 6, 1215, 44 );
se_1184 = playSe( spep_4 + 8, 1184 );--気弾合体
setSeVolume( spep_4 + 8, 1184, 47 );
se_1212 = playSe( spep_4-1 + 17, 1212 );--気弾合体
setSeVolume( spep_4-1 + 17, 1212, 0 );
setSeVolume( spep_4-1 + 18, 1212, 0.46 );
setSeVolume( spep_4-1 + 19, 1212, 0.91 );
setSeVolume( spep_4-1 + 20, 1212, 1.37 );
setSeVolume( spep_4-1 + 21, 1212, 1.83 );
setSeVolume( spep_4-1 + 22, 1212, 2.28 );
setSeVolume( spep_4-1 + 23, 1212, 2.74 );
setSeVolume( spep_4-1 + 24, 1212, 3.20 );
setSeVolume( spep_4-1 + 25, 1212, 3.65 );
setSeVolume( spep_4-1 + 26, 1212, 4.11 );
setSeVolume( spep_4-1 + 27, 1212, 4.57 );
setSeVolume( spep_4-1 + 28, 1212, 5.02 );
setSeVolume( spep_4-1 + 29, 1212, 5.48 );
setSeVolume( spep_4-1 + 30, 1212, 5.93 );
setSeVolume( spep_4-1 + 31, 1212, 6.39 );
setSeVolume( spep_4-1 + 32, 1212, 6.85 );
setSeVolume( spep_4-1 + 33, 1212, 7.30 );
setSeVolume( spep_4-1 + 34, 1212, 7.76 );
setSeVolume( spep_4-1 + 35, 1212, 8.22 );
setSeVolume( spep_4-1 + 36, 1212, 8.67 );
setSeVolume( spep_4-1 + 37, 1212, 9.13 );
setSeVolume( spep_4-1 + 38, 1212, 9.59 );
setSeVolume( spep_4-1 + 39, 1212, 10.04 );
setSeVolume( spep_4-1 + 40, 1212, 10.50 );
setSeVolume( spep_4-1 + 41, 1212, 10.96 );
setSeVolume( spep_4-1 + 42, 1212, 11.41 );
setSeVolume( spep_4-1 + 43, 1212, 11.87 );
setSeVolume( spep_4-1 + 44, 1212, 12.33 );
setSeVolume( spep_4-1 + 45, 1212, 12.78 );
setSeVolume( spep_4-1 + 46, 1212, 13.24 );
setSeVolume( spep_4-1 + 47, 1212, 13.70 );
setSeVolume( spep_4-1 + 48, 1212, 14.15 );
setSeVolume( spep_4-1 + 49, 1212, 14.61 );
setSeVolume( spep_4-1 + 50, 1212, 15.07 );
setSeVolume( spep_4-1 + 51, 1212, 15.52 );
setSeVolume( spep_4-1 + 52, 1212, 15.98 );
setSeVolume( spep_4-1 + 53, 1212, 16.43 );
setSeVolume( spep_4-1 + 54, 1212, 16.89 );
setSeVolume( spep_4-1 + 55, 1212, 17.35 );
setSeVolume( spep_4-1 + 56, 1212, 17.80 );
setSeVolume( spep_4-1 + 57, 1212, 18.26 );
setSeVolume( spep_4-1 + 58, 1212, 18.72 );
setSeVolume( spep_4-1 + 59, 1212, 19.17 );
setSeVolume( spep_4-1 + 60, 1212, 19.63 );
setSeVolume( spep_4-1 + 61, 1212, 20.09 );
setSeVolume( spep_4-1 + 62, 1212, 20.54 );
setSeVolume( spep_4-1 + 63, 1212, 21 );
setSeVolume( spep_4-1 + 64, 1212, 21.46 );
setSeVolume( spep_4-1 + 65, 1212, 21.91 );
setSeVolume( spep_4-1 + 66, 1212, 22.37 );
setSeVolume( spep_4-1 + 67, 1212, 22.83 );
setSeVolume( spep_4-1 + 68, 1212, 23.28 );
setSeVolume( spep_4-1 + 69, 1212, 23.74 );
setSeVolume( spep_4-1 + 70, 1212, 24.2 );
setSeVolume( spep_4-1 + 71, 1212, 24.65 );
setSeVolume( spep_4-1 + 72, 1212, 25.11 );
setSeVolume( spep_4-1 + 73, 1212, 25.57 );
setSeVolume( spep_4-1 + 74, 1212, 26.02 );
setSeVolume( spep_4-1 + 75, 1212, 26.48 );
setSeVolume( spep_4-1 + 76, 1212, 26.93 );
setSeVolume( spep_4-1 + 77, 1212, 27.39 );
setSeVolume( spep_4-1 + 78, 1212, 27.85 );
setSeVolume( spep_4-1 + 79, 1212, 28.30 );
setSeVolume( spep_4-1 + 80, 1212, 28.76 );
setSeVolume( spep_4-1 + 81, 1212, 29.22 );
setSeVolume( spep_4-1 + 82, 1212, 29.67 );
setSeVolume( spep_4-1 + 83, 1212, 30.13 );
setSeVolume( spep_4-1 + 84, 1212, 30.59 );
setSeVolume( spep_4-1 + 85, 1212, 31.04 );
setSeVolume( spep_4-1 + 86, 1212, 31.5 );
setSeVolume( spep_4-1 + 87, 1212, 31.96 );
setSeVolume( spep_4-1 + 88, 1212, 32.41 );
setSeVolume( spep_4-1 + 89, 1212, 32.87 );
setSeVolume( spep_4-1 + 90, 1212, 33.33 );
setSeVolume( spep_4-1 + 91, 1212, 33.78 );
setSeVolume( spep_4-1 + 92, 1212, 34.24 );
setSeVolume( spep_4-1 + 93, 1212, 34.7 );
setSeVolume( spep_4-1 + 94, 1212, 35.15 );
setSeVolume( spep_4-1 + 95, 1212, 35.61 );
setSeVolume( spep_4-1 + 96, 1212, 36.07 );
setSeVolume( spep_4-1 + 97, 1212, 36.52 );
setSeVolume( spep_4-1 + 98, 1212, 36.98 );
setSeVolume( spep_4-1 + 99, 1212, 37.43 );
setSeVolume( spep_4-1 + 100, 1212, 37.89 );
setSeVolume( spep_4-1 + 101, 1212, 38.35 );
setSeVolume( spep_4-1 + 102, 1212, 38.80 );
setSeVolume( spep_4-1 + 103, 1212, 39.26 );
setSeVolume( spep_4-1 + 104, 1212, 39.72 );
setSeVolume( spep_4-1 + 105, 1212, 40.17 );
setSeVolume( spep_4-1 + 106, 1212, 40.63 );
setSeVolume( spep_4-1 + 107, 1212, 41.09 );
setSeVolume( spep_4-1 + 108, 1212, 41.54 );
setSeVolume( spep_4-1 + 109, 1212, 42 );
playSe( spep_4 + 38, 1202 );--気弾合体
setSeVolume( spep_4 + 38, 1202, 158 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --薄い黒　背景

--白フェード
entryFade( spep_4 + 96, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- 被弾
------------------------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 54, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 54, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 54, hit_f, 255 );
setEffAlphaKey( spep_5 + 55, hit_f, 0 );
setEffAlphaKey( spep_5 + 56, hit_f, 0 );


-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 54, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 54, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 54, hit_b, 255 );
setEffAlphaKey( spep_5 + 55, hit_b, 0 );
setEffAlphaKey( spep_5 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-1 + 54, 1, 0 );

changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 46, 1, 108 );

setMoveKey( spep_5 + 0, 1, -16.7, -134.1 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -9, -137.7 , 0 );
setMoveKey( spep_5-3 + 4, 1, 6.8, -133.3 , 0 );
setMoveKey( spep_5-3 + 6, 1, 14.6, -140.8 , 0 );
setMoveKey( spep_5-3 + 8, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_5-3 + 10, 1, 38.1, -139.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, 53.8, -130.6 , 0 );
setMoveKey( spep_5-3 + 14, 1, 61.4, -133.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, 67.1, -128.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, 64.7, -131.5 , 0 );
setMoveKey( spep_5-3 + 20, 1, 70.2, -126.1 , 0 );
setMoveKey( spep_5-3 + 22, 1, 63.9, -132.3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 73.1, -122.4 , 0 );
setMoveKey( spep_5-3 + 26, 1, 70.6, -124 , 0 );
setMoveKey( spep_5-3 + 28, 1, 75.7, -117.3 , 0 );
setMoveKey( spep_5-3 + 30, 1, 69.2, -121.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, 77.9, -110.6 , 0 );
setMoveKey( spep_5-3 + 34, 1, 75.1, -110.3 , 0 );
setMoveKey( spep_5-3 + 36, 1, 79.5, -102 , 0 );
setMoveKey( spep_5-3 + 38, 1, 72.9, -104.2 , 0 );
setMoveKey( spep_5-3 + 40, 1, 80.6, -91.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, 77.3, -88.6 , 0 );
setMoveKey( spep_5-3 + 45, 1, 80.8, -78.3 , 0 );
setMoveKey( spep_5-3 + 46, 1, 43.3, -32.8 , 0 );
setMoveKey( spep_5-3 + 48, 1, 47.3, -72.8 , 0 );
setMoveKey( spep_5-3 + 50, 1, 41, -69.7 , 0 );
setMoveKey( spep_5-3 + 52, 1, 34.7, -66.6 , 0 );
setMoveKey( spep_5-1 + 54, 1, 28.3, -63.5 , 0 );


setScaleKey( spep_5 + 0, 1, 3.09, 3.09 );
--setScaleKey( spep_5-3 + 2, 1, 2.85, 2.85 );
setScaleKey( spep_5-3 + 4, 1, 2.61, 2.61 );
setScaleKey( spep_5-3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_5-3 + 8, 1, 2.14, 2.14 );
setScaleKey( spep_5-3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 12, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 14, 1, 1.42, 1.42 );
setScaleKey( spep_5-3 + 16, 1, 1.38, 1.38 );
setScaleKey( spep_5-3 + 18, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 20, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 22, 1, 1.25, 1.25 );
setScaleKey( spep_5-3 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_5-3 + 28, 1, 1.11, 1.11 );
setScaleKey( spep_5-3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_5-3 + 32, 1, 1.02, 1.02 );
setScaleKey( spep_5-3 + 34, 1, 0.97, 0.97 );
setScaleKey( spep_5-3 + 36, 1, 0.92, 0.92 );
setScaleKey( spep_5-3 + 38, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_5-3 + 42, 1, 0.77, 0.77 );
setScaleKey( spep_5-3 + 45, 1, 0.72, 0.72 );
setScaleKey( spep_5-3 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_5-3 + 48, 1, 0.58, 0.58 );
setScaleKey( spep_5-3 + 50, 1, 0.43, 0.43 );
setScaleKey( spep_5-3 + 52, 1, 0.34, 0.34 );
setScaleKey( spep_5-1 + 54, 1, 0.29, 0.29 );


setRotateKey( spep_5 + 0, 1, -2 );
setRotateKey( spep_5-3 + 45, 1, -2 );
setRotateKey( spep_5-3 + 46, 1, 22.8 );
setRotateKey( spep_5-3 + 48, 1, 20.6 );
setRotateKey( spep_5-1 + 54, 1, 20.6 );
--[[
--文字エントリー
ctzuo = entryEffectLife( spep_5-3 + 36,  10012, 18, 0x100, -1, 0, -17.7, 313.1 );

setEffMoveKey( spep_5-3 + 36, ctzuo, -17.7, 313.1 , 0 );
setEffMoveKey( spep_5-3 + 38, ctzuo, -23.3, 328.7 , 0 );
setEffMoveKey( spep_5-3 + 40, ctzuo, -41.9, 349.7 , 0 );
setEffMoveKey( spep_5-3 + 42, ctzuo, -40.2, 365.4 , 0 );
setEffMoveKey( spep_5-3 + 44, ctzuo, -67.6, 387.7 , 0 );
setEffMoveKey( spep_5-3 + 46, ctzuo, -58.7, 405.5 , 0 );
setEffMoveKey( spep_5-3 + 48, ctzuo, -86.9, 407.3 , 0 );
setEffMoveKey( spep_5-3 + 50, ctzuo, -70.1, 405.9 , 0 );
setEffMoveKey( spep_5-3 + 52, ctzuo, -98.4, 407.5 , 0 );
setEffMoveKey( spep_5-3 + 54, ctzuo, -81.4, 406.3 , 0 );
setEffMoveKey( spep_5-3 + 56, ctzuo, -109.7, 407.6 , 0 );
setEffMoveKey( spep_5-3 + 58, ctzuo, -85.3, 417.4 , 0 );
setEffMoveKey( spep_5-3 + 60, ctzuo, -127.4, 433.5 , 0 );
setEffMoveKey( spep_5-3 + 62, ctzuo, -134.9, 445.2 , 0 );

setEffScaleKey( spep_5-3 + 36, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_5-3 + 38, ctzuo, 0.82, 0.82 );
setEffScaleKey( spep_5-3 + 40, ctzuo, 1.3, 1.3 );
setEffScaleKey( spep_5-3 + 42, ctzuo, 1.77, 1.77 );
setEffScaleKey( spep_5-3 + 44, ctzuo, 2.25, 2.25 );
setEffScaleKey( spep_5-3 + 46, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_5-3 + 54, ctzuo, 2.73, 2.73 );


setEffRotateKey( spep_5-3 + 36, ctzuo, 6.9 );
setEffRotateKey( spep_5-3 + 38, ctzuo, 2.8 );
setEffRotateKey( spep_5-3 + 40, ctzuo, -1.3 );
setEffRotateKey( spep_5-3 + 42, ctzuo, -5.4 );
setEffRotateKey( spep_5-3 + 44, ctzuo, -9.4 );
setEffRotateKey( spep_5-3 + 46, ctzuo, -13.5 );
setEffRotateKey( spep_5-3 + 48, ctzuo, -13.8 );
setEffRotateKey( spep_5-3 + 50, ctzuo, -14.1 );
setEffRotateKey( spep_5-3 + 52, ctzuo, -14.4 );
setEffRotateKey( spep_5-3 + 54, ctzuo, -14.7 );


setEffAlphaKey( spep_5-3 + 36, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 54, ctzuo, 255 );
]]

--白フェード
entryFade( spep_5 + 46, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
se_1022 = playSe( spep_5 , 1022 );--追い気弾

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 54;
------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_6 + 0, 190002, 58, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 58, gyan, 255 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_6 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_6 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_6 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

-- ** 音 ** --
--ギャン
playSe( spep_6 + 0, 1023 );


stopSe( spep_6 + 12, se_1213, 18 );
stopSe( spep_6 + 9, se_1215, 20 );
stopSe( spep_6 + 10, se_1184, 21 );
stopSe( spep_6 + 8, se_1212, 21 );
setSeVolume( spep_6 +8,1212,42);
setSeVolume( spep_6 +9,1212,39.8);
setSeVolume( spep_6 +10,1212,37.6);
setSeVolume( spep_6 +11,1212,35.4);
setSeVolume( spep_6 +12,1212,33.2);
setSeVolume( spep_6 +13,1212,31);
setSeVolume( spep_6 +14,1212,28.8);
setSeVolume( spep_6 +15,1212,26.6);
setSeVolume( spep_6 +16,1212,24.4);
setSeVolume( spep_6 +17,1212,22.2);
setSeVolume( spep_6 +18,1212,20);
setSeVolume( spep_6 +19,1212,17.8);
setSeVolume( spep_6 +20,1212,15.6);
setSeVolume( spep_6 +21,1212,13.4);
setSeVolume( spep_6 +22,1212,11.2);
setSeVolume( spep_6 +23,1212,9);
setSeVolume( spep_6 +24,1212,6.8);
setSeVolume( spep_6 +25,1212,4.6);
setSeVolume( spep_6 +26,1212,2.4);
setSeVolume( spep_6 +27,1212,0.1);
setSeVolume( spep_6 +28,1212,0);
stopSe( spep_6 + 28, se_1022, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 18, 40, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;
------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, 155662, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.1, 1.1 );
setEffScaleKey( spep_7 + 180, explosion, 1.1, 1.1 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 180, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 180, explosion, 255 );

--[[
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_7 + 0, 906, 180, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen1, 180, 20 );

setEffMoveKey( spep_7 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_7 + 180, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_7 + 180, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen1, 0 );
setEffRotateKey( spep_7 + 180, shuchusen1, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_7 + 180, shuchusen1, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 170, 0, 0, 0, 0, 255 );  --薄い黒　背景

--SE
playSe( spep_7 + 4, 1159 );--爆発
playSe( spep_7 + 4, 1024 );--爆発

--終わり
dealDamage( spep_7 +16 );
endPhase( spep_7 + 170 );
else
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ポーズ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
pause = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, pause, 0, 0, 0 );
setEffMoveKey( spep_0 + 302, pause, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, pause, -1.0, 1.0 );
setEffScaleKey( spep_0 + 302, pause, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, pause, 0 );
setEffRotateKey( spep_0 + 302, pause, 0 );
setEffAlphaKey( spep_0 + 0, pause, 255 );
setEffAlphaKey( spep_0 + 302, pause, 255 );

--SE
playSe( spep_0 + 30, 1003 );--腕水平切り
setSeVolume( spep_0 + 30, 1003, 63 );
playSe( spep_0 + 74, 4 );--カーセラル決め
playSe( spep_0 + 76, 1048 );--カーセラル決め
playSe( spep_0 + 78, 1042 );--カーセラル決め
setSeVolume( spep_0 + 78, 1042, 71 );
playSe( spep_0 + 82, 1062 );--カーセラル決め
playSe( spep_0 + 124, 1062 );--タッパー決め
playSe( spep_0 + 124, 20 );--タッパー決め
setSeVolume( spep_0 + 124, 20, 22 );
playSe( spep_0 + 168, 1062 );--ゾイレー決め
playSe( spep_0 + 168, 1112 );--ゾイレー決め
setSeVolume( spep_0 + 168, 1112, 22 );
playSe( spep_0 + 202, 1062 );--ココット決め
playSe( spep_0 + 202, 46 );--ココット決め
setSeVolume( spep_0 + 202, 46, 56 );
playSe( spep_0 + 242, 1062 );--ケットル決め
playSe( spep_0 + 242, 1153 );--ケットル決め
setSeVolume( spep_0 + 242, 1153, 36 );

--白フェード
entryFade( spep_0+294 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 304, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_1=spep_0+302;
------------------------------------------------------
-- 集合ポーズ
------------------------------------------------------
-- ** エフェクト等 ** --
pause_all = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, pause_all, 0, 0, 0 );
setEffMoveKey( spep_1 + 140, pause_all, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, pause_all, -1.0, 1.0 );
setEffScaleKey( spep_1 + 140, pause_all, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, pause_all, 0 );
setEffRotateKey( spep_1 + 140, pause_all, 0 );
setEffAlphaKey( spep_1 + 0, pause_all, 255 );
setEffAlphaKey( spep_1 + 140, pause_all, 255 );


-- ** 顔カットイン ** --
--speff = entryEffect( spep_1+4  , 1504, 0x101, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_1+4  , 1505, 0x101, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 140, 0, 0, 0, 0, 255 );  --薄い黒　背景

--白フェード
entryFade( spep_1 + 132, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--SE
playSe( spep_1 + 4, 1018 );--顔カットイン
se_1023 = playSe( spep_1 + 58, 1023 );--全員決め
setSeVolume( spep_1 + 58, 1023, 77 );
se_1024 = playSe( spep_1 + 62, 1024 );--全員決め
setSeVolume( spep_1 + 62, 1024, 76 );

-- ** 次の準備 ** --
spep_2=spep_1+140;

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

stopSe( spep_2 + 2, se_1023, 0 );
stopSe( spep_2 + 2, se_1024, 0 );

--白フェード
entryFade( spep_2 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 技発射
------------------------------------------------------
-- ** エフェクト等 ** --
shoot = entryEffect( spep_3 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, shoot, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, shoot, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, shoot, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, shoot, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shoot, 0 );
setEffRotateKey( spep_3 + 116, shoot, 0 );
setEffAlphaKey( spep_3 + 0, shoot, 255 );
setEffAlphaKey( spep_3 + 116, shoot, 255 );
setEffAlphaKey( spep_3 + 117, shoot, 0 );
setEffAlphaKey( spep_3 + 118, shoot, 0 );

--SE
se_0017 = playSe( spep_3 + 2, 17 );--気弾溜め
se_1262 = playSe( spep_3 + 2, 1262 );--気弾溜め
se_1154 = playSe( spep_3 + 2, 1154 );--気弾溜め
SE0=playSe( spep_3 + 22, 1022 );--気弾発射
SE1=playSe( spep_3 + 24, 1027 );--気弾発射
setSeVolume( spep_3 + 24, 1027, 69 );
se_1213 = playSe( spep_3 + 24, 1213 );--気弾発射
setSeVolume( spep_3 + 24, 1213, 35 );

stopSe( spep_3 + 32, se_0017, 5 );
stopSe( spep_3 + 32, se_1262, 5 );
stopSe( spep_3 + 32, se_1154, 5 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 120, 0, 0, 0, 0, 255 );  --薄い黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 90; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, SE1, 0 );
    stopSe( SP_dodge - 12, se_1213, 0 );

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

-- ** 次の準備 ** --
spep_4 = spep_3 + 116;
------------------------------------------------------
-- 迫る
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_4 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_4 + 100, beam, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_4 + 100, beam, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, beam, 0 );
setEffRotateKey( spep_4 + 100, beam, 0 );
setEffAlphaKey( spep_4 + 0, beam, 255 );
setEffAlphaKey( spep_4 + 100, beam, 255 );

--SE
playSe( spep_4 + 2, 1021 );--気弾合体
setSeVolume( spep_4 + 2, 1021, 89 );
se_1215 = playSe( spep_4 + 6, 1215 );--気弾合体
setSeVolume( spep_4 + 6, 1215, 44 );
se_1184 = playSe( spep_4 + 8, 1184 );--気弾合体
setSeVolume( spep_4 + 8, 1184, 47 );
se_1212 = playSe( spep_4-1 + 17, 1212 );--気弾合体
setSeVolume( spep_4-1 + 17, 1212, 0 );
setSeVolume( spep_4-1 + 18, 1212, 0.46 );
setSeVolume( spep_4-1 + 19, 1212, 0.91 );
setSeVolume( spep_4-1 + 20, 1212, 1.37 );
setSeVolume( spep_4-1 + 21, 1212, 1.83 );
setSeVolume( spep_4-1 + 22, 1212, 2.28 );
setSeVolume( spep_4-1 + 23, 1212, 2.74 );
setSeVolume( spep_4-1 + 24, 1212, 3.20 );
setSeVolume( spep_4-1 + 25, 1212, 3.65 );
setSeVolume( spep_4-1 + 26, 1212, 4.11 );
setSeVolume( spep_4-1 + 27, 1212, 4.57 );
setSeVolume( spep_4-1 + 28, 1212, 5.02 );
setSeVolume( spep_4-1 + 29, 1212, 5.48 );
setSeVolume( spep_4-1 + 30, 1212, 5.93 );
setSeVolume( spep_4-1 + 31, 1212, 6.39 );
setSeVolume( spep_4-1 + 32, 1212, 6.85 );
setSeVolume( spep_4-1 + 33, 1212, 7.30 );
setSeVolume( spep_4-1 + 34, 1212, 7.76 );
setSeVolume( spep_4-1 + 35, 1212, 8.22 );
setSeVolume( spep_4-1 + 36, 1212, 8.67 );
setSeVolume( spep_4-1 + 37, 1212, 9.13 );
setSeVolume( spep_4-1 + 38, 1212, 9.59 );
setSeVolume( spep_4-1 + 39, 1212, 10.04 );
setSeVolume( spep_4-1 + 40, 1212, 10.50 );
setSeVolume( spep_4-1 + 41, 1212, 10.96 );
setSeVolume( spep_4-1 + 42, 1212, 11.41 );
setSeVolume( spep_4-1 + 43, 1212, 11.87 );
setSeVolume( spep_4-1 + 44, 1212, 12.33 );
setSeVolume( spep_4-1 + 45, 1212, 12.78 );
setSeVolume( spep_4-1 + 46, 1212, 13.24 );
setSeVolume( spep_4-1 + 47, 1212, 13.70 );
setSeVolume( spep_4-1 + 48, 1212, 14.15 );
setSeVolume( spep_4-1 + 49, 1212, 14.61 );
setSeVolume( spep_4-1 + 50, 1212, 15.07 );
setSeVolume( spep_4-1 + 51, 1212, 15.52 );
setSeVolume( spep_4-1 + 52, 1212, 15.98 );
setSeVolume( spep_4-1 + 53, 1212, 16.43 );
setSeVolume( spep_4-1 + 54, 1212, 16.89 );
setSeVolume( spep_4-1 + 55, 1212, 17.35 );
setSeVolume( spep_4-1 + 56, 1212, 17.80 );
setSeVolume( spep_4-1 + 57, 1212, 18.26 );
setSeVolume( spep_4-1 + 58, 1212, 18.72 );
setSeVolume( spep_4-1 + 59, 1212, 19.17 );
setSeVolume( spep_4-1 + 60, 1212, 19.63 );
setSeVolume( spep_4-1 + 61, 1212, 20.09 );
setSeVolume( spep_4-1 + 62, 1212, 20.54 );
setSeVolume( spep_4-1 + 63, 1212, 21 );
setSeVolume( spep_4-1 + 64, 1212, 21.46 );
setSeVolume( spep_4-1 + 65, 1212, 21.91 );
setSeVolume( spep_4-1 + 66, 1212, 22.37 );
setSeVolume( spep_4-1 + 67, 1212, 22.83 );
setSeVolume( spep_4-1 + 68, 1212, 23.28 );
setSeVolume( spep_4-1 + 69, 1212, 23.74 );
setSeVolume( spep_4-1 + 70, 1212, 24.2 );
setSeVolume( spep_4-1 + 71, 1212, 24.65 );
setSeVolume( spep_4-1 + 72, 1212, 25.11 );
setSeVolume( spep_4-1 + 73, 1212, 25.57 );
setSeVolume( spep_4-1 + 74, 1212, 26.02 );
setSeVolume( spep_4-1 + 75, 1212, 26.48 );
setSeVolume( spep_4-1 + 76, 1212, 26.93 );
setSeVolume( spep_4-1 + 77, 1212, 27.39 );
setSeVolume( spep_4-1 + 78, 1212, 27.85 );
setSeVolume( spep_4-1 + 79, 1212, 28.30 );
setSeVolume( spep_4-1 + 80, 1212, 28.76 );
setSeVolume( spep_4-1 + 81, 1212, 29.22 );
setSeVolume( spep_4-1 + 82, 1212, 29.67 );
setSeVolume( spep_4-1 + 83, 1212, 30.13 );
setSeVolume( spep_4-1 + 84, 1212, 30.59 );
setSeVolume( spep_4-1 + 85, 1212, 31.04 );
setSeVolume( spep_4-1 + 86, 1212, 31.5 );
setSeVolume( spep_4-1 + 87, 1212, 31.96 );
setSeVolume( spep_4-1 + 88, 1212, 32.41 );
setSeVolume( spep_4-1 + 89, 1212, 32.87 );
setSeVolume( spep_4-1 + 90, 1212, 33.33 );
setSeVolume( spep_4-1 + 91, 1212, 33.78 );
setSeVolume( spep_4-1 + 92, 1212, 34.24 );
setSeVolume( spep_4-1 + 93, 1212, 34.7 );
setSeVolume( spep_4-1 + 94, 1212, 35.15 );
setSeVolume( spep_4-1 + 95, 1212, 35.61 );
setSeVolume( spep_4-1 + 96, 1212, 36.07 );
setSeVolume( spep_4-1 + 97, 1212, 36.52 );
setSeVolume( spep_4-1 + 98, 1212, 36.98 );
setSeVolume( spep_4-1 + 99, 1212, 37.43 );
setSeVolume( spep_4-1 + 100, 1212, 37.89 );
setSeVolume( spep_4-1 + 101, 1212, 38.35 );
setSeVolume( spep_4-1 + 102, 1212, 38.80 );
setSeVolume( spep_4-1 + 103, 1212, 39.26 );
setSeVolume( spep_4-1 + 104, 1212, 39.72 );
setSeVolume( spep_4-1 + 105, 1212, 40.17 );
setSeVolume( spep_4-1 + 106, 1212, 40.63 );
setSeVolume( spep_4-1 + 107, 1212, 41.09 );
setSeVolume( spep_4-1 + 108, 1212, 41.54 );
setSeVolume( spep_4-1 + 109, 1212, 42 );
playSe( spep_4 + 38, 1202 );--気弾合体
setSeVolume( spep_4 + 38, 1202, 158 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 100, 0, 0, 0, 0, 255 );  --薄い黒　背景

--白フェード
entryFade( spep_4 + 96, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 100;

------------------------------------------------------
-- 被弾
------------------------------------------------------

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 54, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 54, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 54, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 54, hit_f, 255 );
setEffAlphaKey( spep_5 + 55, hit_f, 0 );
setEffAlphaKey( spep_5 + 56, hit_f, 0 );


-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 54, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 54, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 54, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 54, hit_b, 255 );
setEffAlphaKey( spep_5 + 55, hit_b, 0 );
setEffAlphaKey( spep_5 + 56, hit_b, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-1 + 54, 1, 0 );

changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5-3 + 46, 1, 108 );

setMoveKey( spep_5 + 0, 1, -16.7, -134.1 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -9, -137.7 , 0 );
setMoveKey( spep_5-3 + 4, 1, 6.8, -133.3 , 0 );
setMoveKey( spep_5-3 + 6, 1, 14.6, -140.8 , 0 );
setMoveKey( spep_5-3 + 8, 1, 30.3, -132.2 , 0 );
setMoveKey( spep_5-3 + 10, 1, 38.1, -139.5 , 0 );
setMoveKey( spep_5-3 + 12, 1, 53.8, -130.6 , 0 );
setMoveKey( spep_5-3 + 14, 1, 61.4, -133.5 , 0 );
setMoveKey( spep_5-3 + 16, 1, 67.1, -128.6 , 0 );
setMoveKey( spep_5-3 + 18, 1, 64.7, -131.5 , 0 );
setMoveKey( spep_5-3 + 20, 1, 70.2, -126.1 , 0 );
setMoveKey( spep_5-3 + 22, 1, 63.9, -132.3 , 0 );
setMoveKey( spep_5-3 + 24, 1, 73.1, -122.4 , 0 );
setMoveKey( spep_5-3 + 26, 1, 70.6, -124 , 0 );
setMoveKey( spep_5-3 + 28, 1, 75.7, -117.3 , 0 );
setMoveKey( spep_5-3 + 30, 1, 69.2, -121.8 , 0 );
setMoveKey( spep_5-3 + 32, 1, 77.9, -110.6 , 0 );
setMoveKey( spep_5-3 + 34, 1, 75.1, -110.3 , 0 );
setMoveKey( spep_5-3 + 36, 1, 79.5, -102 , 0 );
setMoveKey( spep_5-3 + 38, 1, 72.9, -104.2 , 0 );
setMoveKey( spep_5-3 + 40, 1, 80.6, -91.3 , 0 );
setMoveKey( spep_5-3 + 42, 1, 77.3, -88.6 , 0 );
setMoveKey( spep_5-3 + 45, 1, 80.8, -78.3 , 0 );
setMoveKey( spep_5-3 + 46, 1, 43.3, -32.8 , 0 );
setMoveKey( spep_5-3 + 48, 1, 47.3, -72.8 , 0 );
setMoveKey( spep_5-3 + 50, 1, 41, -69.7 , 0 );
setMoveKey( spep_5-3 + 52, 1, 34.7, -66.6 , 0 );
setMoveKey( spep_5-1 + 54, 1, 28.3, -63.5 , 0 );


setScaleKey( spep_5 + 0, 1, 3.09, 3.09 );
--setScaleKey( spep_5-3 + 2, 1, 2.85, 2.85 );
setScaleKey( spep_5-3 + 4, 1, 2.61, 2.61 );
setScaleKey( spep_5-3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_5-3 + 8, 1, 2.14, 2.14 );
setScaleKey( spep_5-3 + 10, 1, 1.9, 1.9 );
setScaleKey( spep_5-3 + 12, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 14, 1, 1.42, 1.42 );
setScaleKey( spep_5-3 + 16, 1, 1.38, 1.38 );
setScaleKey( spep_5-3 + 18, 1, 1.34, 1.34 );
setScaleKey( spep_5-3 + 20, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 22, 1, 1.25, 1.25 );
setScaleKey( spep_5-3 + 24, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 26, 1, 1.16, 1.16 );
setScaleKey( spep_5-3 + 28, 1, 1.11, 1.11 );
setScaleKey( spep_5-3 + 30, 1, 1.07, 1.07 );
setScaleKey( spep_5-3 + 32, 1, 1.02, 1.02 );
setScaleKey( spep_5-3 + 34, 1, 0.97, 0.97 );
setScaleKey( spep_5-3 + 36, 1, 0.92, 0.92 );
setScaleKey( spep_5-3 + 38, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_5-3 + 42, 1, 0.77, 0.77 );
setScaleKey( spep_5-3 + 45, 1, 0.72, 0.72 );
setScaleKey( spep_5-3 + 46, 1, 0.74, 0.74 );
setScaleKey( spep_5-3 + 48, 1, 0.58, 0.58 );
setScaleKey( spep_5-3 + 50, 1, 0.43, 0.43 );
setScaleKey( spep_5-3 + 52, 1, 0.34, 0.34 );
setScaleKey( spep_5-1 + 54, 1, 0.29, 0.29 );


setRotateKey( spep_5 + 0, 1, -2 );
setRotateKey( spep_5-3 + 45, 1, -2 );
setRotateKey( spep_5-3 + 46, 1, 22.8 );
setRotateKey( spep_5-3 + 48, 1, 20.6 );
setRotateKey( spep_5-1 + 54, 1, 20.6 );
--[[
--文字エントリー
ctzuo = entryEffectLife( spep_5-3 + 36,  10012, 18, 0x100, -1, 0, -17.7, 313.1 );

setEffMoveKey( spep_5-3 + 36, ctzuo, -17.7, 313.1 , 0 );
setEffMoveKey( spep_5-3 + 38, ctzuo, -23.3, 328.7 , 0 );
setEffMoveKey( spep_5-3 + 40, ctzuo, -41.9, 349.7 , 0 );
setEffMoveKey( spep_5-3 + 42, ctzuo, -40.2, 365.4 , 0 );
setEffMoveKey( spep_5-3 + 44, ctzuo, -67.6, 387.7 , 0 );
setEffMoveKey( spep_5-3 + 46, ctzuo, -58.7, 405.5 , 0 );
setEffMoveKey( spep_5-3 + 48, ctzuo, -86.9, 407.3 , 0 );
setEffMoveKey( spep_5-3 + 50, ctzuo, -70.1, 405.9 , 0 );
setEffMoveKey( spep_5-3 + 52, ctzuo, -98.4, 407.5 , 0 );
setEffMoveKey( spep_5-3 + 54, ctzuo, -81.4, 406.3 , 0 );
setEffMoveKey( spep_5-3 + 56, ctzuo, -109.7, 407.6 , 0 );
setEffMoveKey( spep_5-3 + 58, ctzuo, -85.3, 417.4 , 0 );
setEffMoveKey( spep_5-3 + 60, ctzuo, -127.4, 433.5 , 0 );
setEffMoveKey( spep_5-3 + 62, ctzuo, -134.9, 445.2 , 0 );

setEffScaleKey( spep_5-3 + 36, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_5-3 + 38, ctzuo, 0.82, 0.82 );
setEffScaleKey( spep_5-3 + 40, ctzuo, 1.3, 1.3 );
setEffScaleKey( spep_5-3 + 42, ctzuo, 1.77, 1.77 );
setEffScaleKey( spep_5-3 + 44, ctzuo, 2.25, 2.25 );
setEffScaleKey( spep_5-3 + 46, ctzuo, 2.73, 2.73 );
setEffScaleKey( spep_5-3 + 54, ctzuo, 2.73, 2.73 );


setEffRotateKey( spep_5-3 + 36, ctzuo, 6.9 );
setEffRotateKey( spep_5-3 + 38, ctzuo, 2.8 );
setEffRotateKey( spep_5-3 + 40, ctzuo, -1.3 );
setEffRotateKey( spep_5-3 + 42, ctzuo, -5.4 );
setEffRotateKey( spep_5-3 + 44, ctzuo, -9.4 );
setEffRotateKey( spep_5-3 + 46, ctzuo, -13.5 );
setEffRotateKey( spep_5-3 + 48, ctzuo, -13.8 );
setEffRotateKey( spep_5-3 + 50, ctzuo, -14.1 );
setEffRotateKey( spep_5-3 + 52, ctzuo, -14.4 );
setEffRotateKey( spep_5-3 + 54, ctzuo, -14.7 );


setEffAlphaKey( spep_5-3 + 36, ctzuo, 255 );
setEffAlphaKey( spep_5-3 + 54, ctzuo, 255 );
]]
--SE
se_1022 = playSe( spep_5 , 1022 );--追い気弾

--白フェード
entryFade( spep_5 + 46, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 );  --薄い黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 54;
------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------

-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_6 + 0, 190002, 58, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_6 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_6 + 58, gyan, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_6 + 58, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_6 + 0, gyan, 255 );
setEffAlphaKey( spep_6 + 58, gyan, 255 );
setEffRotateKey( spep_6 + 0, gyan, 0 );
setEffRotateKey( spep_6 + 58, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_6 + 0,  10006, 58, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_6 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_6 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_6 + 58, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_6 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_6 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_6 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_6 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_6 + 58, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_6 + 0, ctgyan, 0 );
setEffRotateKey( spep_6 + 58, ctgyan, 0 );

setEffAlphaKey( spep_6 + 0, ctgyan, 255 );
setEffAlphaKey( spep_6 + 58, ctgyan, 255 );

-- ** 音 ** --
--ギャン
playSe( spep_6 + 0, 1023 );


stopSe( spep_6 + 12, se_1213, 18 );
stopSe( spep_6 + 9, se_1215, 20 );
stopSe( spep_6 + 10, se_1184, 21 );
stopSe( spep_6 + 8, se_1212, 21 );
setSeVolume( spep_6 +8,1212,42);
setSeVolume( spep_6 +9,1212,39.8);
setSeVolume( spep_6 +10,1212,37.6);
setSeVolume( spep_6 +11,1212,35.4);
setSeVolume( spep_6 +12,1212,33.2);
setSeVolume( spep_6 +13,1212,31);
setSeVolume( spep_6 +14,1212,28.8);
setSeVolume( spep_6 +15,1212,26.6);
setSeVolume( spep_6 +16,1212,24.4);
setSeVolume( spep_6 +17,1212,22.2);
setSeVolume( spep_6 +18,1212,20);
setSeVolume( spep_6 +19,1212,17.8);
setSeVolume( spep_6 +20,1212,15.6);
setSeVolume( spep_6 +21,1212,13.4);
setSeVolume( spep_6 +22,1212,11.2);
setSeVolume( spep_6 +23,1212,9);
setSeVolume( spep_6 +24,1212,6.8);
setSeVolume( spep_6 +25,1212,4.6);
setSeVolume( spep_6 +26,1212,2.4);
setSeVolume( spep_6 +27,1212,0.1);
setSeVolume( spep_6 +28,1212,0);
stopSe( spep_6 + 28, se_1022, 0 );

-- ** ホワイトフェード ** --
entryFade( spep_6 + 18, 40, 4, 2, fcolor_r, fcolor_g, fcolor_b, 255);

-- ** 次の準備 ** --
spep_7 = spep_6 + 60;
------------------------------------------------------
-- ギャン(58F)
------------------------------------------------------
-- ** エフェクト等 ** --
explosion = entryEffect( spep_7 + 0, 155662, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, explosion, 0, 0, 0 );
setEffMoveKey( spep_7 + 180, explosion, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, explosion, 1.1, 1.1 );
setEffScaleKey( spep_7 + 180, explosion, 1.1, 1.1 );
setEffRotateKey( spep_7 + 0, explosion, 0 );
setEffRotateKey( spep_7 + 180, explosion, 0 );
setEffAlphaKey( spep_7 + 0, explosion, 255 );
setEffAlphaKey( spep_7 + 180, explosion, 255 );

--[[
-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_7 + 0, 906, 180, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 0, shuchusen1, 180, 20 );

setEffMoveKey( spep_7 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_7 + 180, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_7 + 0, shuchusen1, 1.6, 1.6 );
setEffScaleKey( spep_7 + 180, shuchusen1, 1.6, 1.6 );

setEffRotateKey( spep_7 + 0, shuchusen1, 0 );
setEffRotateKey( spep_7 + 180, shuchusen1, 0 );

setEffAlphaKey( spep_7 + 0, shuchusen1, 255 );
setEffAlphaKey( spep_7 + 180, shuchusen1, 255 );
]]

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 170, 0, 0, 0, 0, 255 );  --薄い黒　背景

--SE
playSe( spep_7 + 4, 1159 );--爆発
playSe( spep_7 + 4, 1024 );--爆発

--終わり
dealDamage( spep_7 +16 );
endPhase( spep_7 + 170 );
end