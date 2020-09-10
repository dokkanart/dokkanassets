--4018890:ゴクウブラック(超サイヤ人ロゼ)_悲憤の大鎌
--sp_effect_a9_00063

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
SP_01=	154971	;--	構え
SP_02=	154972	;--	発射初動
SP_03=	154973	;--	発射・手前
SP_04=	154974	;--	発射・奥
SP_05=	154975	;--	ヒット
SP_06=	154983	;--	K.O.

--敵側
SP_01x=	154971	;--	構え	
SP_02x=	154972	;--	発射初動	
SP_03x=	154973	;--	発射・手前	
SP_04x=	154976	;--	発射・奥	(敵)
SP_05x=	154977	;--	ヒット	(敵)
SP_06x=	154983	;--	K.O.

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
-- 構え
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 170, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 170, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 170, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 170, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 64,  906, 104, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 64, shuchusen1, 104, 10 );
setEffMoveKey( spep_0 + 64, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 64, shuchusen1, 1.41, 2.04 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.41, 2.04 );

setEffRotateKey( spep_0 + 64, shuchusen1, 180);
setEffRotateKey( spep_0 + 168, shuchusen1, 180);

setEffAlphaKey( spep_0 + 64, shuchusen1, 32 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 64 );
setEffAlphaKey( spep_0 + 68, shuchusen1, 96 );
setEffAlphaKey( spep_0 + 70, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 128 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +76, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +76,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +148,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +76, ctgogo, 0 );
setEffAlphaKey( spep_0 + 77, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 142, ctgogo, 255 );
setEffAlphaKey( spep_0 + 144, ctgogo, 191 );
setEffAlphaKey( spep_0 + 146, ctgogo, 112 );
setEffAlphaKey( spep_0 + 148, ctgogo, 64 );

setEffRotateKey(  spep_0 +76,  ctgogo,  0);
setEffRotateKey(  spep_0 +148,  ctgogo,  0);

setEffScaleKey(  spep_0 +76,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +138,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0 +148,  ctgogo, 1.07, 1.07 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0+64  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+64  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_0 + 76, 1018 );
se_1194 = playSe( spep_0 + 0, 1194 );
setSeVolume( spep_0 + 0, 1194, 112 );
se_1161 = playSe( spep_0 + 0, 1161 );
setSeVolume( spep_0 + 0, 1161, 25 );
playSe( spep_0 + 29, 1072 );
playSe( spep_0 + 36, 1172 );
setSeVolume( spep_0 + 36, 1172, 0 );
setSeVolume( spep_0 + 58, 1172, 12.5 );
setSeVolume( spep_0 + 59, 1172, 25 );
setSeVolume( spep_0 + 60, 1172, 37.5 );
setSeVolume( spep_0 + 61, 1172, 50 );
setSeVolume( spep_0 + 62, 1172, 62.5 );
setSeVolume( spep_0 + 63, 1172, 75 );
setSeVolume( spep_0 + 64, 1172, 87.5 );
setSeVolume( spep_0 + 65, 1172, 100 );
playSe( spep_0 + 47, 1126 );
setSeVolume( spep_0 + 47, 1126, 0 );
setSeVolume( spep_0 + 62, 1126, 6.7 );
setSeVolume( spep_0 + 63, 1126, 13.4 );
setSeVolume( spep_0 + 64, 1126, 20.1 );
setSeVolume( spep_0 + 65, 1126, 26.8 );
setSeVolume( spep_0 + 66, 1126, 33.5 );
setSeVolume( spep_0 + 67, 1126, 40 );
playSe( spep_0 + 59, 1004 );
setSeVolume( spep_0 + 59, 1004, 79 );
playSe( spep_0 + 59, 1046 );
setSeVolume( spep_0 + 59, 1046, 79 );

stopSe( spep_0 + 70, se_1194, 21 );
stopSe( spep_0 + 72, se_1161, 19 );

--白フェード
entryFade( spep_0 + 160, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+170;

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

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射初動
------------------------------------------------------
-- ** エフェクト等 ** --
syodou = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, syodou, 0, 0, 0 );
setEffMoveKey( spep_2 + 80, syodou, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, syodou, 1.0, 1.0 );
setEffScaleKey( spep_2 + 80, syodou, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, syodou, 0 );
setEffRotateKey( spep_2 + 80, syodou, 0 );
setEffAlphaKey( spep_2 + 0, syodou, 255 );
setEffAlphaKey( spep_2 + 78, syodou, 255 );
setEffAlphaKey( spep_2 + 79, syodou, 255 );
setEffAlphaKey( spep_2 + 80, syodou, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 56,  906, 110, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 56, shuchusen2, 110, 10 );
setEffMoveKey( spep_2-3 + 56, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 163, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 56, shuchusen2, 1.21, 1.84 );
setEffScaleKey( spep_2 + 163, shuchusen2, 1.21, 1.84 );

setEffRotateKey( spep_2-3 + 56, shuchusen2, 0 );
setEffRotateKey( spep_2 + 163, shuchusen2, 0 );

setEffAlphaKey( spep_2-3 + 56, shuchusen2, 41 );
setEffAlphaKey( spep_2-3 + 58, shuchusen2, 68 );
setEffAlphaKey( spep_2-3 + 60, shuchusen2, 95 );
setEffAlphaKey( spep_2-3 + 62, shuchusen2, 123 );
setEffAlphaKey( spep_2-3 + 64, shuchusen2, 150 );
setEffAlphaKey( spep_2-3 + 66, shuchusen2, 177 );
setEffAlphaKey( spep_2-3 + 68, shuchusen2, 204 );
setEffAlphaKey( spep_2 + 163, shuchusen2, 204 );

--SE
SE0=playSe( spep_2 + 2, 1021 );
setSeVolume( spep_2 + 2, 1021, 0 );
setSeVolume( spep_2 + 20, 1021, 33 );
setSeVolume( spep_2 + 21, 1021, 66 );
setSeVolume( spep_2 + 22, 1021, 100 );
SE1=playSe( spep_2 + 18, 1003 );
SE2=playSe( spep_2 + 18, 1232 );
setSeVolume( spep_2 + 18, 1232, 79 );
se_1212 = playSe( spep_2 + 18, 1212 );
setSeVolume( spep_2 + 18, 1212, 56 );
SE3=playSe( spep_2 + 24, 1004 );
setSeVolume( spep_2 + 24, 1004, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    stopSe( SP_dodge, se_1212, 0 );
    stopSe( SP_dodge, SE0, 0 );
    stopSe( SP_dodge, SE1, 0 );
    stopSe( SP_dodge, SE2, 0 );
    stopSe( SP_dodge, SE3, 0 );

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
--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 50,  10012, 30, 0x100, -1, 0, 118, 255.2 );
setEffShake( spep_2-3 + 50, ctzuo, 30, 10 );
setEffMoveKey( spep_2-3 + 50, ctzuo, 118, 255.2 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, 122.3, 293.5 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, 128.6, 309.8 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, 123.3, 329.6 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, 126.8, 308.4 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, 122.5, 325.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, 124.9, 307.1 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, 121.9, 324 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, 125, 308.1 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, 121.8, 325.6 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, 125.1, 309.3 , 0 );
setEffMoveKey( spep_2-3 + 72, ctzuo, 121.7, 327.3 , 0 );
setEffMoveKey( spep_2-3 + 74, ctzuo, 125.1, 310.5 , 0 );
setEffMoveKey( spep_2-3 + 76, ctzuo, 121.7, 328.9 , 0 );
setEffMoveKey( spep_2-3 + 78, ctzuo, 125.2, 311.6 , 0 );
setEffMoveKey( spep_2-3 + 80, ctzuo, 121.5, 330.5 , 0 );
--setEffMoveKey( spep_2-4 + 82, ctzuo, 125.3, 312.8 , 0 );

setEffScaleKey( spep_2-3 + 50, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 52, ctzuo, 1.82, 1.82 );
setEffScaleKey( spep_2-3 + 54, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_2-3 + 56, ctzuo, 3.08, 3.08 );
setEffScaleKey( spep_2-3 + 58, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_2-3 + 60, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_2-3 + 62, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 64, ctzuo, 2.45, 2.45 );
setEffScaleKey( spep_2-3 + 66, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_2-3 + 68, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_2-3 + 70, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_2-3 + 72, ctzuo, 2.59, 2.59 );
setEffScaleKey( spep_2-3 + 74, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_2-3 + 76, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_2-3 + 78, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_2-3 + 80, ctzuo, 2.74, 2.74 );
--setEffScaleKey( spep_2-4 + 82, ctzuo, 2.78, 2.78 );

setEffRotateKey( spep_2-3 + 50, ctzuo, 36.8 );
setEffRotateKey( spep_2-3 + 52, ctzuo, 30.4 );
setEffRotateKey( spep_2-3 + 54, ctzuo, 24 );
setEffRotateKey( spep_2-3 + 56, ctzuo, 24.6 );
setEffRotateKey( spep_2-3 + 58, ctzuo, 25.2 );
setEffRotateKey( spep_2-3 + 60, ctzuo, 25.7 );
setEffRotateKey( spep_2-3 + 62, ctzuo, 26.3 );
setEffRotateKey( spep_2-3 + 64, ctzuo, 26.2 );
setEffRotateKey( spep_2-3 + 66, ctzuo, 26.1 );
setEffRotateKey( spep_2-3 + 68, ctzuo, 26 );
setEffRotateKey( spep_2-3 + 70, ctzuo, 25.8 );
setEffRotateKey( spep_2-3 + 72, ctzuo, 25.7 );
setEffRotateKey( spep_2-3 + 74, ctzuo, 25.6 );
setEffRotateKey( spep_2-3 + 76, ctzuo, 25.5 );
setEffRotateKey( spep_2-3 + 78, ctzuo, 25.4 );
setEffRotateKey( spep_2-3 + 80, ctzuo, 25.2 );
--setEffRotateKey( spep_2-4 + 82, ctzuo, 25.1 );

setEffAlphaKey( spep_2-3 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 80, ctzuo, 255 );

--SE
playSe( spep_2 + 46, 1142 );
setSeVolume( spep_2 + 46, 1142, 79 );
playSe( spep_2 + 46, 1179 );
se_1116 = playSe( spep_2 + 49, 1116 );
setSeVolume( spep_2 + 49, 1116, 89 );
playSe( spep_2 + 49, 1022 );
setSeVolume( spep_2 + 49, 1022, 71 );
playSe( spep_2 + 49, 1145 );
setSeVolume( spep_2 + 49, 1145, 63 );

stopSe( spep_2 + 37, se_1212, 17 );
stopSe( spep_2 + 69, se_1116, 10 );

--白フェード
entryFade( spep_2 + 76, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+78;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, beam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 86, beam_f, 0 );
setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 86, beam_f, 255 );
setEffAlphaKey( spep_3 + 87, beam_f, 0 );
setEffAlphaKey( spep_3 + 88, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, beam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 86, beam_b, 0 );
setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 86, beam_b, 255 );
setEffAlphaKey( spep_3 + 87, beam_b, 0 );
setEffAlphaKey( spep_3 + 88, beam_b, 0 );

--敵の動き
setDisp( spep_3 -3 + 30, 1, 1 );
setDisp( spep_3 -4 + 88, 1, 0 );

changeAnime( spep_3-3 + 30, 1, 102 );

setMoveKey( spep_3-3 + 30, 1, 326, -1097.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 309.6, -1018.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 284.9, -942.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, 268.1, -866.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 247.2, -794 , 0 );
setMoveKey( spep_3-3 + 40, 1, 226, -712.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 196.7, -638.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 183, -555.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 157.1, -479.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, 139.2, -395.5 , 0 );
setMoveKey( spep_3-3 + 50, 1, 113.2, -319 , 0 );
setMoveKey( spep_3-3 + 52, 1, 113.8, -300 , 0 );
setMoveKey( spep_3-3 + 54, 1, 102.4, -289 , 0 );
setMoveKey( spep_3-3 + 56, 1, 107, -269.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 99.5, -266.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, 100.1, -239.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 84.6, -227.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 93.1, -208.5 , 0 );
setMoveKey( spep_3-3 + 66, 1, 85.6, -201 , 0 );
setMoveKey( spep_3-3 + 68, 1, 86.1, -177.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, 74.5, -165.8 , 0 );
setMoveKey( spep_3-3 + 72, 1, 79, -146.2 , 0 );
setMoveKey( spep_3-3 + 74, 1, 71.5, -142.4 , 0 );
setMoveKey( spep_3-3 + 76, 1, 71.9, -114.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, 64.2, -102.8 , 0 );
setMoveKey( spep_3-3 + 80, 1, 64.6, -82.8 , 0 );
setMoveKey( spep_3-3 + 82, 1, 57, -74.7 , 0 );
setMoveKey( spep_3-3 + 84, 1, 57.3, -50.7 , 0 );
setMoveKey( spep_3-2 + 86, 1, 49.8, -42.6 , 0 );
--setMoveKey( spep_3-2 + 88, 1, 50.1, -18.4 , 0 );

setScaleKey( spep_3-3 + 30, 1, 5.98, 5.98 );
setScaleKey( spep_3-3 + 32, 1, 5.68, 5.68 );
setScaleKey( spep_3-3 + 34, 1, 5.36, 5.36 );
setScaleKey( spep_3-3 + 36, 1, 5.05, 5.05 );
setScaleKey( spep_3-3 + 38, 1, 4.74, 4.74 );
setScaleKey( spep_3-3 + 40, 1, 4.42, 4.42 );
setScaleKey( spep_3-3 + 42, 1, 4.1, 4.1 );
setScaleKey( spep_3-3 + 44, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 46, 1, 3.44, 3.44 );
setScaleKey( spep_3-3 + 48, 1, 3.1, 3.1 );
setScaleKey( spep_3-3 + 50, 1, 2.77, 2.77 );
setScaleKey( spep_3-3 + 52, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 54, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 56, 1, 2.61, 2.61 );
setScaleKey( spep_3-3 + 58, 1, 2.55, 2.55 );
setScaleKey( spep_3-3 + 60, 1, 2.5, 2.5 );
setScaleKey( spep_3-3 + 62, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 64, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 66, 1, 2.33, 2.33 );
setScaleKey( spep_3-3 + 68, 1, 2.28, 2.28 );
setScaleKey( spep_3-3 + 70, 1, 2.22, 2.22 );
setScaleKey( spep_3-3 + 72, 1, 2.16, 2.16 );
setScaleKey( spep_3-3 + 74, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 76, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 78, 1, 1.99, 1.99 );
setScaleKey( spep_3-3 + 80, 1, 1.94, 1.94 );
setScaleKey( spep_3-3 + 82, 1, 1.88, 1.88 );
setScaleKey( spep_3-3 + 84, 1, 1.82, 1.82 );
setScaleKey( spep_3-2 + 86, 1, 1.76, 1.76 );
--setScaleKey( spep_3-2 + 88, 1, 1.7, 1.7 );

setRotateKey( spep_3-3 + 30, 1, -7.5 );
setRotateKey( spep_3-3 + 32, 1, -7.2 );
setRotateKey( spep_3-3 + 34, 1, -7 );
setRotateKey( spep_3-3 + 36, 1, -6.8 );
setRotateKey( spep_3-3 + 38, 1, -6.6 );
setRotateKey( spep_3-3 + 40, 1, -6.3 );
setRotateKey( spep_3-3 + 42, 1, -6.1 );
setRotateKey( spep_3-3 + 44, 1, -5.9 );
setRotateKey( spep_3-3 + 46, 1, -5.7 );
setRotateKey( spep_3-3 + 48, 1, -5.4 );
setRotateKey( spep_3-3 + 50, 1, -5.2 );
setRotateKey( spep_3-3 + 52, 1, -4.9 );
setRotateKey( spep_3-3 + 54, 1, -4.7 );
setRotateKey( spep_3-3 + 56, 1, -4.4 );
setRotateKey( spep_3-3 + 58, 1, -4.1 );
setRotateKey( spep_3-3 + 60, 1, -3.8 );
setRotateKey( spep_3-3 + 62, 1, -3.6 );
setRotateKey( spep_3-3 + 64, 1, -3.3 );
setRotateKey( spep_3-3 + 66, 1, -3 );
setRotateKey( spep_3-3 + 68, 1, -2.7 );
setRotateKey( spep_3-3 + 70, 1, -2.5 );
setRotateKey( spep_3-3 + 72, 1, -2.2 );
setRotateKey( spep_3-3 + 74, 1, -1.9 );
setRotateKey( spep_3-3 + 76, 1, -1.6 );
setRotateKey( spep_3-3 + 78, 1, -1.4 );
setRotateKey( spep_3-3 + 80, 1, -1.1 );
setRotateKey( spep_3-3 + 82, 1, -0.8 );
setRotateKey( spep_3-3 + 84, 1, -0.5 );
setRotateKey( spep_3-2 + 86, 1, -0.3 );
--setRotateKey( spep_3-2 + 88, 1, 0 );

--SE
setSeVolume( spep_3 + 28, 1022, 75.2);
setSeVolume( spep_3 + 29, 1022, 79.4);
setSeVolume( spep_3 + 30, 1022, 83.6);
setSeVolume( spep_3 + 31, 1022, 87.8);
setSeVolume( spep_3 + 32, 1022, 92);
setSeVolume( spep_3 + 33, 1022, 96.2);
setSeVolume( spep_3 + 34, 1022, 100.4);
setSeVolume( spep_3 + 35, 1022, 104.6);
setSeVolume( spep_3 + 36, 1022, 108.8);
setSeVolume( spep_3 + 37, 1022, 113);
setSeVolume( spep_3 + 38, 1022, 117.2);
setSeVolume( spep_3 + 39, 1022, 121.4);
setSeVolume( spep_3 + 40, 1022, 125.6);
setSeVolume( spep_3 + 41, 1022, 129.8);
setSeVolume( spep_3 + 42, 1022, 134);
setSeVolume( spep_3 + 43, 1022, 138.2);
setSeVolume( spep_3 + 44, 1022, 142.4);
setSeVolume( spep_3 + 45, 1022, 146.6);
setSeVolume( spep_3 + 46, 1022, 150.8);
setSeVolume( spep_3 + 47, 1022, 155);
setSeVolume( spep_3 + 48, 1022, 159.2);
setSeVolume( spep_3 + 49, 1022, 163.4);
setSeVolume( spep_3 + 50, 1022, 167.6);
setSeVolume( spep_3 + 51, 1022, 171.8);
setSeVolume( spep_3 + 52, 1022, 176);
setSeVolume( spep_3 + 53, 1022, 180.2);
setSeVolume( spep_3 + 54, 1022, 184.4);
setSeVolume( spep_3 + 55, 1022, 188.6);
setSeVolume( spep_3 + 56, 1022, 192.8);
setSeVolume( spep_3 + 57, 1022, 197);
setSeVolume( spep_3 + 58, 1022, 201.2);
setSeVolume( spep_3 + 59, 1022, 205.4);
setSeVolume( spep_3 + 60, 1022, 209.6);
setSeVolume( spep_3 + 61, 1022, 213.8);
setSeVolume( spep_3 + 62, 1022, 218);
setSeVolume( spep_3 + 63, 1022, 222.2);
setSeVolume( spep_3 + 64, 1022, 226.4);
setSeVolume( spep_3 + 65, 1022, 230.6);
setSeVolume( spep_3 + 66, 1022, 234.8);
setSeVolume( spep_3 + 67, 1022, 239);
setSeVolume( spep_3 + 68, 1022, 243.2);
setSeVolume( spep_3 + 69, 1022, 247.4);
setSeVolume( spep_3 + 70, 1022, 251.6);
setSeVolume( spep_3 + 71, 1022, 255.8);
setSeVolume( spep_3 + 72, 1022, 260);
setSeVolume( spep_3 + 73, 1022, 264.2);
setSeVolume( spep_3 + 74, 1022, 268.4);
setSeVolume( spep_3 + 75, 1022, 272.6);
setSeVolume( spep_3 + 76, 1022, 276.8);
setSeVolume( spep_3 + 77, 1022, 281);
setSeVolume( spep_3 + 78, 1022, 285.2);
setSeVolume( spep_3 + 79, 1022, 289.4);
setSeVolume( spep_3 + 80, 1022, 293.6);
setSeVolume( spep_3 + 81, 1022, 297.8);
setSeVolume( spep_3 + 82, 1022, 302);
setSeVolume( spep_3 + 83, 1022, 306.2);
setSeVolume( spep_3 + 84, 1022, 310.4);
setSeVolume( spep_3 + 85, 1022, 314.6);
setSeVolume( spep_3 + 86, 1022, 318.8);
setSeVolume( spep_3 + 87, 1022, 323);
setSeVolume( spep_3 + 88, 1022, 327.2);
setSeVolume( spep_3 + 89, 1022, 331.4);
setSeVolume( spep_3 + 90, 1022, 335.6);
setSeVolume( spep_3 + 91, 1022, 339.8);
setSeVolume( spep_3 + 92, 1022, 344);
setSeVolume( spep_3 + 93, 1022, 348.2);
setSeVolume( spep_3 + 94, 1022, 352.4);
setSeVolume( spep_3 + 95, 1022, 356.6);
setSeVolume( spep_3 + 96, 1022, 360.8);
setSeVolume( spep_3 + 97, 1022, 365);
setSeVolume( spep_3 + 98, 1022, 369.2);
setSeVolume( spep_3 + 99, 1022, 373.4);
setSeVolume( spep_3 + 100, 1022, 377.6);
setSeVolume( spep_3 + 101, 1022, 381.8);
setSeVolume( spep_3 + 102, 1022, 386);
setSeVolume( spep_3 + 103, 1022, 390.2);
setSeVolume( spep_3 + 104, 1022, 394.4);
setSeVolume( spep_3 + 105, 1022, 398);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+84;
------------------------------------------------------
-- ヒット
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 250, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 250, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 250, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 250, finish, 255 );

--SE
playSe( spep_4 + 0, 1172 );
setSeVolume( spep_4 + 0, 1172, 0 );
setSeVolume( spep_4 + 10, 1172, 13 );
setSeVolume( spep_4 + 11, 1172, 26 );
setSeVolume( spep_4 + 12, 1172, 40 );
playSe( spep_4 + 10, 1017 );
setSeVolume( spep_4 + 10, 1017, 71 );
playSe( spep_4 + 11, 1141 );
setSeVolume( spep_4 + 11, 1141, 63 );
playSe( spep_4 + 16, 1042 );
se_1175 = playSe( spep_4 + 74, 1175 );
setSeVolume( spep_4 + 74, 1175, 71 );
se_1044 = playSe( spep_4 + 74, 1044 );
setSeVolume( spep_4 + 74, 1044, 25 );
se_1176 = playSe( spep_4 + 74, 1176 );
setSeVolume( spep_4 + 74, 1176, 79 );
se_1173 = playSe( spep_4 + 74, 1173 );
se_1173 = playSe( spep_4 + 169, 1173 );
setSeVolume( spep_4 + 169, 1173, 71 );

stopSe( spep_4 + 235, se_1175, 15 );
stopSe( spep_4 + 223, se_1044, 27 );
stopSe( spep_4 + 163, se_1176, 87 );
stopSe( spep_4 + 113, se_1173, 38 );
stopSe( spep_4 + 205, se_1173, 22 );

ko = entryEffect(  spep_4+238,  SP_06,    0x100,  -1, 0, 0, 0);

setEffMoveKey(  spep_4+238,  ko,  0,  0);
setEffMoveKey(  spep_4+368,  ko,  0,  0);
setEffScaleKey(  spep_4+238,  ko,  1.0,  1.0);
setEffScaleKey(  spep_4+368,  ko,  1.0,  1.0);
setEffRotateKey(  spep_4+238,  ko,  0);
setEffRotateKey(  spep_4+368,  ko,  0);
setEffAlphaKey(  spep_4+238,  ko,  255);
setEffAlphaKey(  spep_4+368,  ko,  255);

-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_4 + 66 );
entryFade( spep_4 +236, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_4 + 240 );

else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 構え
------------------------------------------------------
-- ** はじめの準備 ** --
spep_0 = 0;

-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 170, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 170, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 170, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 170, tame, 255 );

--集中線
shuchusen1 = entryEffectLife( spep_0 + 64,  906, 104, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0 + 64, shuchusen1, 104, 10 );
setEffMoveKey( spep_0 + 64, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 168, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0 + 64, shuchusen1, 1.41, 2.04 );
setEffScaleKey( spep_0 + 168, shuchusen1, 1.41, 2.04 );

setEffRotateKey( spep_0 + 64, shuchusen1, 180);
setEffRotateKey( spep_0 + 168, shuchusen1, 180);

setEffAlphaKey( spep_0 + 64, shuchusen1, 32 );
setEffAlphaKey( spep_0 + 66, shuchusen1, 64 );
setEffAlphaKey( spep_0 + 68, shuchusen1, 96 );
setEffAlphaKey( spep_0 + 70, shuchusen1, 128 );
setEffAlphaKey( spep_0 + 168, shuchusen1, 128 );

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0 +76, 190006, 72, 0x100, -1, 0, 0, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0 +76,  ctgogo,  0,  510);
setEffMoveKey(  spep_0 +148,  ctgogo,  0,  510);

setEffAlphaKey( spep_0 +76, ctgogo, 0 );
setEffAlphaKey( spep_0 + 77, ctgogo, 255 );
setEffAlphaKey( spep_0 + 78, ctgogo, 255 );
setEffAlphaKey( spep_0 + 142, ctgogo, 255 );
setEffAlphaKey( spep_0 + 144, ctgogo, 191 );
setEffAlphaKey( spep_0 + 146, ctgogo, 112 );
setEffAlphaKey( spep_0 + 148, ctgogo, 64 );

setEffRotateKey(  spep_0 +76,  ctgogo,  0);
setEffRotateKey(  spep_0 +148,  ctgogo,  0);

setEffScaleKey(  spep_0 +76,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +138,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0 +148,  ctgogo, -1.07, 1.07 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+64  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+64  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 音 ** --
playSe( spep_0 + 76, 1018 );
se_1194 = playSe( spep_0 + 0, 1194 );
setSeVolume( spep_0 + 0, 1194, 112 );
se_1161 = playSe( spep_0 + 0, 1161 );
setSeVolume( spep_0 + 0, 1161, 25 );
playSe( spep_0 + 29, 1072 );
playSe( spep_0 + 36, 1172 );
setSeVolume( spep_0 + 36, 1172, 0 );
setSeVolume( spep_0 + 58, 1172, 12.5 );
setSeVolume( spep_0 + 59, 1172, 25 );
setSeVolume( spep_0 + 60, 1172, 37.5 );
setSeVolume( spep_0 + 61, 1172, 50 );
setSeVolume( spep_0 + 62, 1172, 62.5 );
setSeVolume( spep_0 + 63, 1172, 75 );
setSeVolume( spep_0 + 64, 1172, 87.5 );
setSeVolume( spep_0 + 65, 1172, 100 );
playSe( spep_0 + 47, 1126 );
setSeVolume( spep_0 + 47, 1126, 0 );
setSeVolume( spep_0 + 62, 1126, 6.7 );
setSeVolume( spep_0 + 63, 1126, 13.4 );
setSeVolume( spep_0 + 64, 1126, 20.1 );
setSeVolume( spep_0 + 65, 1126, 26.8 );
setSeVolume( spep_0 + 66, 1126, 33.5 );
setSeVolume( spep_0 + 67, 1126, 40 );
playSe( spep_0 + 59, 1004 );
setSeVolume( spep_0 + 59, 1004, 79 );
playSe( spep_0 + 59, 1046 );
setSeVolume( spep_0 + 59, 1046, 79 );

stopSe( spep_0 + 70, se_1194, 21 );
stopSe( spep_0 + 72, se_1161, 19 );

--白フェード
entryFade( spep_0 + 160, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_1=spep_0+170;

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

--白フェード
entryFade( spep_1 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 発射初動
------------------------------------------------------
-- ** エフェクト等 ** --
syodou = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, syodou, 0, 0, 0 );
setEffMoveKey( spep_2 + 80, syodou, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, syodou, -1.0, 1.0 );
setEffScaleKey( spep_2 + 80, syodou, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, syodou, 0 );
setEffRotateKey( spep_2 + 80, syodou, 0 );
setEffAlphaKey( spep_2 + 0, syodou, 255 );
setEffAlphaKey( spep_2 + 78, syodou, 255 );
setEffAlphaKey( spep_2 + 79, syodou, 255 );
setEffAlphaKey( spep_2 + 80, syodou, 0 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 56,  906, 110, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 56, shuchusen2, 110, 10 );
setEffMoveKey( spep_2-3 + 56, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2 + 163, shuchusen2, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 56, shuchusen2, 1.21, 1.84 );
setEffScaleKey( spep_2 + 163, shuchusen2, 1.21, 1.84 );

setEffRotateKey( spep_2-3 + 56, shuchusen2, 0 );
setEffRotateKey( spep_2 + 163, shuchusen2, 0 );

setEffAlphaKey( spep_2-3 + 56, shuchusen2, 41 );
setEffAlphaKey( spep_2-3 + 58, shuchusen2, 68 );
setEffAlphaKey( spep_2-3 + 60, shuchusen2, 95 );
setEffAlphaKey( spep_2-3 + 62, shuchusen2, 123 );
setEffAlphaKey( spep_2-3 + 64, shuchusen2, 150 );
setEffAlphaKey( spep_2-3 + 66, shuchusen2, 177 );
setEffAlphaKey( spep_2-3 + 68, shuchusen2, 204 );
setEffAlphaKey( spep_2 + 163, shuchusen2, 204 );

--SE
SE0=playSe( spep_2 + 2, 1021 );
setSeVolume( spep_2 + 2, 1021, 0 );
setSeVolume( spep_2 + 20, 1021, 33 );
setSeVolume( spep_2 + 21, 1021, 66 );
setSeVolume( spep_2 + 22, 1021, 100 );
SE1=playSe( spep_2 + 18, 1003 );
SE2=playSe( spep_2 + 18, 1232 );
setSeVolume( spep_2 + 18, 1232, 79 );
se_1212 = playSe( spep_2 + 18, 1212 );
setSeVolume( spep_2 + 18, 1212, 56 );
SE3=playSe( spep_2 + 24, 1004 );
setSeVolume( spep_2 + 24, 1004, 79 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 50; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );
    stopSe( SP_dodge, se_1212, 0 );
    stopSe( SP_dodge, SE0, 0 );
    stopSe( SP_dodge, SE1, 0 );
    stopSe( SP_dodge, SE2, 0 );
    stopSe( SP_dodge, SE3, 0 );

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
--文字エントリー
ctzuo = entryEffectLife( spep_2-3 + 50,  10012, 30, 0x100, -1, 0, 118, 255.2 );
setEffShake( spep_2-3 + 50, ctzuo, 30, 10 );
setEffMoveKey( spep_2-3 + 50, ctzuo, 118, 255.2 , 0 );
setEffMoveKey( spep_2-3 + 52, ctzuo, 122.3, 293.5 , 0 );
setEffMoveKey( spep_2-3 + 54, ctzuo, 128.6, 309.8 , 0 );
setEffMoveKey( spep_2-3 + 56, ctzuo, 123.3, 329.6 , 0 );
setEffMoveKey( spep_2-3 + 58, ctzuo, 126.8, 308.4 , 0 );
setEffMoveKey( spep_2-3 + 60, ctzuo, 122.5, 325.3 , 0 );
setEffMoveKey( spep_2-3 + 62, ctzuo, 124.9, 307.1 , 0 );
setEffMoveKey( spep_2-3 + 64, ctzuo, 121.9, 324 , 0 );
setEffMoveKey( spep_2-3 + 66, ctzuo, 125, 308.1 , 0 );
setEffMoveKey( spep_2-3 + 68, ctzuo, 121.8, 325.6 , 0 );
setEffMoveKey( spep_2-3 + 70, ctzuo, 125.1, 309.3 , 0 );
setEffMoveKey( spep_2-3 + 72, ctzuo, 121.7, 327.3 , 0 );
setEffMoveKey( spep_2-3 + 74, ctzuo, 125.1, 310.5 , 0 );
setEffMoveKey( spep_2-3 + 76, ctzuo, 121.7, 328.9 , 0 );
setEffMoveKey( spep_2-3 + 78, ctzuo, 125.2, 311.6 , 0 );
setEffMoveKey( spep_2-3 + 80, ctzuo, 121.5, 330.5 , 0 );
--setEffMoveKey( spep_2-4 + 82, ctzuo, 125.3, 312.8 , 0 );

setEffScaleKey( spep_2-3 + 50, ctzuo, 0.34, 0.34 );
setEffScaleKey( spep_2-3 + 52, ctzuo, 1.82, 1.82 );
setEffScaleKey( spep_2-3 + 54, ctzuo, 3.31, 3.31 );
setEffScaleKey( spep_2-3 + 56, ctzuo, 3.08, 3.08 );
setEffScaleKey( spep_2-3 + 58, ctzuo, 2.86, 2.86 );
setEffScaleKey( spep_2-3 + 60, ctzuo, 2.64, 2.64 );
setEffScaleKey( spep_2-3 + 62, ctzuo, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 64, ctzuo, 2.45, 2.45 );
setEffScaleKey( spep_2-3 + 66, ctzuo, 2.49, 2.49 );
setEffScaleKey( spep_2-3 + 68, ctzuo, 2.52, 2.52 );
setEffScaleKey( spep_2-3 + 70, ctzuo, 2.56, 2.56 );
setEffScaleKey( spep_2-3 + 72, ctzuo, 2.59, 2.59 );
setEffScaleKey( spep_2-3 + 74, ctzuo, 2.63, 2.63 );
setEffScaleKey( spep_2-3 + 76, ctzuo, 2.67, 2.67 );
setEffScaleKey( spep_2-3 + 78, ctzuo, 2.7, 2.7 );
setEffScaleKey( spep_2-3 + 80, ctzuo, 2.74, 2.74 );
--setEffScaleKey( spep_2-4 + 82, ctzuo, 2.78, 2.78 );

setEffRotateKey( spep_2-3 + 50, ctzuo, 36.8 );
setEffRotateKey( spep_2-3 + 52, ctzuo, 30.4 );
setEffRotateKey( spep_2-3 + 54, ctzuo, 24 );
setEffRotateKey( spep_2-3 + 56, ctzuo, 24.6 );
setEffRotateKey( spep_2-3 + 58, ctzuo, 25.2 );
setEffRotateKey( spep_2-3 + 60, ctzuo, 25.7 );
setEffRotateKey( spep_2-3 + 62, ctzuo, 26.3 );
setEffRotateKey( spep_2-3 + 64, ctzuo, 26.2 );
setEffRotateKey( spep_2-3 + 66, ctzuo, 26.1 );
setEffRotateKey( spep_2-3 + 68, ctzuo, 26 );
setEffRotateKey( spep_2-3 + 70, ctzuo, 25.8 );
setEffRotateKey( spep_2-3 + 72, ctzuo, 25.7 );
setEffRotateKey( spep_2-3 + 74, ctzuo, 25.6 );
setEffRotateKey( spep_2-3 + 76, ctzuo, 25.5 );
setEffRotateKey( spep_2-3 + 78, ctzuo, 25.4 );
setEffRotateKey( spep_2-3 + 80, ctzuo, 25.2 );
--setEffRotateKey( spep_2-4 + 82, ctzuo, 25.1 );

setEffAlphaKey( spep_2-3 + 50, ctzuo, 255 );
setEffAlphaKey( spep_2-3 + 80, ctzuo, 255 );

--SE
playSe( spep_2 + 46, 1142 );
setSeVolume( spep_2 + 46, 1142, 79 );
playSe( spep_2 + 46, 1179 );
se_1116 = playSe( spep_2 + 49, 1116 );
setSeVolume( spep_2 + 49, 1116, 89 );
playSe( spep_2 + 49, 1022 );
setSeVolume( spep_2 + 49, 1022, 71 );
playSe( spep_2 + 49, 1145 );
setSeVolume( spep_2 + 49, 1145, 63 );

stopSe( spep_2 + 37, se_1212, 17 );
stopSe( spep_2 + 69, se_1116, 10 );

--白フェード
entryFade( spep_2 + 76, 2, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+78;

------------------------------------------------------
-- 発射
------------------------------------------------------
-- ** エフェクト等 ** --
beam_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, beam_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, beam_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_f, 0 );
setEffRotateKey( spep_3 + 86, beam_f, 0 );
setEffAlphaKey( spep_3 + 0, beam_f, 255 );
setEffAlphaKey( spep_3 + 86, beam_f, 255 );
setEffAlphaKey( spep_3 + 87, beam_f, 0 );
setEffAlphaKey( spep_3 + 88, beam_f, 0 );

-- ** エフェクト等 ** --
beam_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, beam_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 86, beam_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, beam_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 86, beam_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, beam_b, 0 );
setEffRotateKey( spep_3 + 86, beam_b, 0 );
setEffAlphaKey( spep_3 + 0, beam_b, 255 );
setEffAlphaKey( spep_3 + 86, beam_b, 255 );
setEffAlphaKey( spep_3 + 87, beam_b, 0 );
setEffAlphaKey( spep_3 + 88, beam_b, 0 );

--敵の動き
setDisp( spep_3 -3 + 30, 1, 1 );
setDisp( spep_3 -4 + 88, 1, 0 );

changeAnime( spep_3-3 + 30, 1, 102 );

setMoveKey( spep_3-3 + 30, 1, 326, -1097.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 309.6, -1018.4 , 0 );
setMoveKey( spep_3-3 + 34, 1, 284.9, -942.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, 268.1, -866.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 247.2, -794 , 0 );
setMoveKey( spep_3-3 + 40, 1, 226, -712.6 , 0 );
setMoveKey( spep_3-3 + 42, 1, 196.7, -638.7 , 0 );
setMoveKey( spep_3-3 + 44, 1, 183, -555.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 157.1, -479.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, 139.2, -395.5 , 0 );
setMoveKey( spep_3-3 + 50, 1, 113.2, -319 , 0 );
setMoveKey( spep_3-3 + 52, 1, 113.8, -300 , 0 );
setMoveKey( spep_3-3 + 54, 1, 102.4, -289 , 0 );
setMoveKey( spep_3-3 + 56, 1, 107, -269.8 , 0 );
setMoveKey( spep_3-3 + 58, 1, 99.5, -266.6 , 0 );
setMoveKey( spep_3-3 + 60, 1, 100.1, -239.3 , 0 );
setMoveKey( spep_3-3 + 62, 1, 84.6, -227.9 , 0 );
setMoveKey( spep_3-3 + 64, 1, 93.1, -208.5 , 0 );
setMoveKey( spep_3-3 + 66, 1, 85.6, -201 , 0 );
setMoveKey( spep_3-3 + 68, 1, 86.1, -177.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, 74.5, -165.8 , 0 );
setMoveKey( spep_3-3 + 72, 1, 79, -146.2 , 0 );
setMoveKey( spep_3-3 + 74, 1, 71.5, -142.4 , 0 );
setMoveKey( spep_3-3 + 76, 1, 71.9, -114.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, 64.2, -102.8 , 0 );
setMoveKey( spep_3-3 + 80, 1, 64.6, -82.8 , 0 );
setMoveKey( spep_3-3 + 82, 1, 57, -74.7 , 0 );
setMoveKey( spep_3-3 + 84, 1, 57.3, -50.7 , 0 );
setMoveKey( spep_3-2 + 86, 1, 49.8, -42.6 , 0 );
--setMoveKey( spep_3-2 + 88, 1, 50.1, -18.4 , 0 );

setScaleKey( spep_3-3 + 30, 1, 5.98, 5.98 );
setScaleKey( spep_3-3 + 32, 1, 5.68, 5.68 );
setScaleKey( spep_3-3 + 34, 1, 5.36, 5.36 );
setScaleKey( spep_3-3 + 36, 1, 5.05, 5.05 );
setScaleKey( spep_3-3 + 38, 1, 4.74, 4.74 );
setScaleKey( spep_3-3 + 40, 1, 4.42, 4.42 );
setScaleKey( spep_3-3 + 42, 1, 4.1, 4.1 );
setScaleKey( spep_3-3 + 44, 1, 3.77, 3.77 );
setScaleKey( spep_3-3 + 46, 1, 3.44, 3.44 );
setScaleKey( spep_3-3 + 48, 1, 3.1, 3.1 );
setScaleKey( spep_3-3 + 50, 1, 2.77, 2.77 );
setScaleKey( spep_3-3 + 52, 1, 2.72, 2.72 );
setScaleKey( spep_3-3 + 54, 1, 2.66, 2.66 );
setScaleKey( spep_3-3 + 56, 1, 2.61, 2.61 );
setScaleKey( spep_3-3 + 58, 1, 2.55, 2.55 );
setScaleKey( spep_3-3 + 60, 1, 2.5, 2.5 );
setScaleKey( spep_3-3 + 62, 1, 2.44, 2.44 );
setScaleKey( spep_3-3 + 64, 1, 2.39, 2.39 );
setScaleKey( spep_3-3 + 66, 1, 2.33, 2.33 );
setScaleKey( spep_3-3 + 68, 1, 2.28, 2.28 );
setScaleKey( spep_3-3 + 70, 1, 2.22, 2.22 );
setScaleKey( spep_3-3 + 72, 1, 2.16, 2.16 );
setScaleKey( spep_3-3 + 74, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 76, 1, 2.05, 2.05 );
setScaleKey( spep_3-3 + 78, 1, 1.99, 1.99 );
setScaleKey( spep_3-3 + 80, 1, 1.94, 1.94 );
setScaleKey( spep_3-3 + 82, 1, 1.88, 1.88 );
setScaleKey( spep_3-3 + 84, 1, 1.82, 1.82 );
setScaleKey( spep_3-2 + 86, 1, 1.76, 1.76 );
--setScaleKey( spep_3-2 + 88, 1, 1.7, 1.7 );

setRotateKey( spep_3-3 + 30, 1, -7.5 );
setRotateKey( spep_3-3 + 32, 1, -7.2 );
setRotateKey( spep_3-3 + 34, 1, -7 );
setRotateKey( spep_3-3 + 36, 1, -6.8 );
setRotateKey( spep_3-3 + 38, 1, -6.6 );
setRotateKey( spep_3-3 + 40, 1, -6.3 );
setRotateKey( spep_3-3 + 42, 1, -6.1 );
setRotateKey( spep_3-3 + 44, 1, -5.9 );
setRotateKey( spep_3-3 + 46, 1, -5.7 );
setRotateKey( spep_3-3 + 48, 1, -5.4 );
setRotateKey( spep_3-3 + 50, 1, -5.2 );
setRotateKey( spep_3-3 + 52, 1, -4.9 );
setRotateKey( spep_3-3 + 54, 1, -4.7 );
setRotateKey( spep_3-3 + 56, 1, -4.4 );
setRotateKey( spep_3-3 + 58, 1, -4.1 );
setRotateKey( spep_3-3 + 60, 1, -3.8 );
setRotateKey( spep_3-3 + 62, 1, -3.6 );
setRotateKey( spep_3-3 + 64, 1, -3.3 );
setRotateKey( spep_3-3 + 66, 1, -3 );
setRotateKey( spep_3-3 + 68, 1, -2.7 );
setRotateKey( spep_3-3 + 70, 1, -2.5 );
setRotateKey( spep_3-3 + 72, 1, -2.2 );
setRotateKey( spep_3-3 + 74, 1, -1.9 );
setRotateKey( spep_3-3 + 76, 1, -1.6 );
setRotateKey( spep_3-3 + 78, 1, -1.4 );
setRotateKey( spep_3-3 + 80, 1, -1.1 );
setRotateKey( spep_3-3 + 82, 1, -0.8 );
setRotateKey( spep_3-3 + 84, 1, -0.5 );
setRotateKey( spep_3-2 + 86, 1, -0.3 );
--setRotateKey( spep_3-2 + 88, 1, 0 );

--SE
setSeVolume( spep_3 + 28, 1022, 75.2);
setSeVolume( spep_3 + 29, 1022, 79.4);
setSeVolume( spep_3 + 30, 1022, 83.6);
setSeVolume( spep_3 + 31, 1022, 87.8);
setSeVolume( spep_3 + 32, 1022, 92);
setSeVolume( spep_3 + 33, 1022, 96.2);
setSeVolume( spep_3 + 34, 1022, 100.4);
setSeVolume( spep_3 + 35, 1022, 104.6);
setSeVolume( spep_3 + 36, 1022, 108.8);
setSeVolume( spep_3 + 37, 1022, 113);
setSeVolume( spep_3 + 38, 1022, 117.2);
setSeVolume( spep_3 + 39, 1022, 121.4);
setSeVolume( spep_3 + 40, 1022, 125.6);
setSeVolume( spep_3 + 41, 1022, 129.8);
setSeVolume( spep_3 + 42, 1022, 134);
setSeVolume( spep_3 + 43, 1022, 138.2);
setSeVolume( spep_3 + 44, 1022, 142.4);
setSeVolume( spep_3 + 45, 1022, 146.6);
setSeVolume( spep_3 + 46, 1022, 150.8);
setSeVolume( spep_3 + 47, 1022, 155);
setSeVolume( spep_3 + 48, 1022, 159.2);
setSeVolume( spep_3 + 49, 1022, 163.4);
setSeVolume( spep_3 + 50, 1022, 167.6);
setSeVolume( spep_3 + 51, 1022, 171.8);
setSeVolume( spep_3 + 52, 1022, 176);
setSeVolume( spep_3 + 53, 1022, 180.2);
setSeVolume( spep_3 + 54, 1022, 184.4);
setSeVolume( spep_3 + 55, 1022, 188.6);
setSeVolume( spep_3 + 56, 1022, 192.8);
setSeVolume( spep_3 + 57, 1022, 197);
setSeVolume( spep_3 + 58, 1022, 201.2);
setSeVolume( spep_3 + 59, 1022, 205.4);
setSeVolume( spep_3 + 60, 1022, 209.6);
setSeVolume( spep_3 + 61, 1022, 213.8);
setSeVolume( spep_3 + 62, 1022, 218);
setSeVolume( spep_3 + 63, 1022, 222.2);
setSeVolume( spep_3 + 64, 1022, 226.4);
setSeVolume( spep_3 + 65, 1022, 230.6);
setSeVolume( spep_3 + 66, 1022, 234.8);
setSeVolume( spep_3 + 67, 1022, 239);
setSeVolume( spep_3 + 68, 1022, 243.2);
setSeVolume( spep_3 + 69, 1022, 247.4);
setSeVolume( spep_3 + 70, 1022, 251.6);
setSeVolume( spep_3 + 71, 1022, 255.8);
setSeVolume( spep_3 + 72, 1022, 260);
setSeVolume( spep_3 + 73, 1022, 264.2);
setSeVolume( spep_3 + 74, 1022, 268.4);
setSeVolume( spep_3 + 75, 1022, 272.6);
setSeVolume( spep_3 + 76, 1022, 276.8);
setSeVolume( spep_3 + 77, 1022, 281);
setSeVolume( spep_3 + 78, 1022, 285.2);
setSeVolume( spep_3 + 79, 1022, 289.4);
setSeVolume( spep_3 + 80, 1022, 293.6);
setSeVolume( spep_3 + 81, 1022, 297.8);
setSeVolume( spep_3 + 82, 1022, 302);
setSeVolume( spep_3 + 83, 1022, 306.2);
setSeVolume( spep_3 + 84, 1022, 310.4);
setSeVolume( spep_3 + 85, 1022, 314.6);
setSeVolume( spep_3 + 86, 1022, 318.8);
setSeVolume( spep_3 + 87, 1022, 323);
setSeVolume( spep_3 + 88, 1022, 327.2);
setSeVolume( spep_3 + 89, 1022, 331.4);
setSeVolume( spep_3 + 90, 1022, 335.6);
setSeVolume( spep_3 + 91, 1022, 339.8);
setSeVolume( spep_3 + 92, 1022, 344);
setSeVolume( spep_3 + 93, 1022, 348.2);
setSeVolume( spep_3 + 94, 1022, 352.4);
setSeVolume( spep_3 + 95, 1022, 356.6);
setSeVolume( spep_3 + 96, 1022, 360.8);
setSeVolume( spep_3 + 97, 1022, 365);
setSeVolume( spep_3 + 98, 1022, 369.2);
setSeVolume( spep_3 + 99, 1022, 373.4);
setSeVolume( spep_3 + 100, 1022, 377.6);
setSeVolume( spep_3 + 101, 1022, 381.8);
setSeVolume( spep_3 + 102, 1022, 386);
setSeVolume( spep_3 + 103, 1022, 390.2);
setSeVolume( spep_3 + 104, 1022, 394.4);
setSeVolume( spep_3 + 105, 1022, 398);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_4=spep_3+84;
------------------------------------------------------
-- ヒット
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_4 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_4 + 250, finish, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_4 + 250, finish, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish, 0 );
setEffRotateKey( spep_4 + 250, finish, 0 );
setEffAlphaKey( spep_4 + 0, finish, 255 );
setEffAlphaKey( spep_4 + 250, finish, 255 );

--SE
playSe( spep_4 + 0, 1172 );
setSeVolume( spep_4 + 0, 1172, 0 );
setSeVolume( spep_4 + 10, 1172, 13 );
setSeVolume( spep_4 + 11, 1172, 26 );
setSeVolume( spep_4 + 12, 1172, 40 );
playSe( spep_4 + 10, 1017 );
setSeVolume( spep_4 + 10, 1017, 71 );
playSe( spep_4 + 11, 1141 );
setSeVolume( spep_4 + 11, 1141, 63 );
playSe( spep_4 + 16, 1042 );
se_1175 = playSe( spep_4 + 74, 1175 );
setSeVolume( spep_4 + 74, 1175, 71 );
se_1044 = playSe( spep_4 + 74, 1044 );
setSeVolume( spep_4 + 74, 1044, 25 );
se_1176 = playSe( spep_4 + 74, 1176 );
setSeVolume( spep_4 + 74, 1176, 79 );
se_1173 = playSe( spep_4 + 74, 1173 );
se_1173 = playSe( spep_4 + 169, 1173 );
setSeVolume( spep_4 + 169, 1173, 71 );

stopSe( spep_4 + 235, se_1175, 15 );
stopSe( spep_4 + 223, se_1044, 27 );
stopSe( spep_4 + 163, se_1176, 87 );
stopSe( spep_4 + 113, se_1173, 38 );
stopSe( spep_4 + 205, se_1173, 22 );

ko = entryEffect(  spep_4+238,  SP_06x,    0x100,  -1, 0, 0, 0);

setEffMoveKey(  spep_4+238,  ko,  0,  0);
setEffMoveKey(  spep_4+368,  ko,  0,  0);
setEffScaleKey(  spep_4+238,  ko,  -1.0,  1.0);
setEffScaleKey(  spep_4+368,  ko,  -1.0,  1.0);
setEffRotateKey(  spep_4+238,  ko,  0);
setEffRotateKey(  spep_4+368,  ko,  0);
setEffAlphaKey(  spep_4+238,  ko,  255);
setEffAlphaKey(  spep_4+368,  ko,  255);

-- ** ダメージ表示 ** --
hideKoScreen();  --黒フィルター削除
dealDamage( spep_4 + 66 );
entryFade( spep_4 +236, 2,  4, 2, 0, 0, 0, 255);             -- black fade
endPhase( spep_4 + 240 );
end