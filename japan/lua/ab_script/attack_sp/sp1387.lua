--1018620:ゴジータ_かめはめ波
--sp_effect_a1_00217

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
SP_01=	154840	;--	カードカットインまで
SP_02=	154841	;--	カードカットイン後　前側
SP_03=	154842	;--	カードカットイン後　後ろ側

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
-- カードカットインまで
------------------------------------------------------
--初めの準備
spep_0=0;

-- ** エフェクト等 ** --
mae = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,  mae, 0, 0, 0 );
setEffMoveKey( spep_0 + 184,  mae, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,  mae, 1.0, 1.0 );
setEffScaleKey( spep_0 + 184,  mae, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0,  mae, 0 );
setEffRotateKey( spep_0 + 184,  mae, 0 );
setEffAlphaKey( spep_0 + 0,  mae, 255 );
setEffAlphaKey( spep_0 + 184,  mae, 255 );

-- ** 顔カットイン ** --
speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0-4 +16, 190006, 72, 0x100, -1, 0, 30, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0-4 +16,  ctgogo,  30,  510);
setEffMoveKey(  spep_0-4 +88,  ctgogo,  30,  510);

setEffAlphaKey( spep_0-4 +16, ctgogo, 0 );
setEffAlphaKey( spep_0-4 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 84, ctgogo, 191 );
setEffAlphaKey( spep_0-4 + 86, ctgogo, 112 );
setEffAlphaKey( spep_0-4 + 88, ctgogo, 64 );

setEffRotateKey(  spep_0-4 +16,  ctgogo,  0);
setEffRotateKey(  spep_0-4 +88,  ctgogo,  0);

setEffScaleKey(  spep_0-4 +16,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0-4 +78,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0-4 +88,  ctgogo, 1.07, 1.07 );

--SE
playSe( spep_0 + 12, 1018 );--ゴゴゴ

playSe( spep_0 + 0, 1072 );
playSe( spep_0 + 79, 1004 );
setSeVolume( spep_0 + 79, 1004, 50 );
playSe( spep_0 + 153, 1003 );
setSeVolume( spep_0 + 153, 1003, 40 );
playSe( spep_0 + 156, 1233 );
playSe( spep_0 + 164, 1006 );
setSeVolume( spep_0 + 164, 1006, 79 );

--白フェード
entryFade( spep_0 + 172, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+184

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
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- カードカットイン後
------------------------------------------------------
-- ** エフェクト等 ** --
usiro_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  usiro_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 784,  usiro_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  usiro_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 784,  usiro_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  usiro_f, 0 );
setEffRotateKey( spep_2 + 784,  usiro_f, 0 );
setEffAlphaKey( spep_2 + 0,  usiro_f, 255 );
setEffAlphaKey( spep_2 + 784,  usiro_f, 255 );

-- ** エフェクト等 ** --
usiro_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  usiro_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 784,  usiro_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  usiro_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 784,  usiro_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  usiro_b, 0 );
setEffRotateKey( spep_2 + 784,  usiro_b, 0 );
setEffAlphaKey( spep_2 + 0,  usiro_b, 255 );
setEffAlphaKey( spep_2 + 784,  usiro_b, 255 );

--SE
se_1117 = playSe( spep_2 + 0, 1117 );
se_1109 = playSe( spep_2 + 13, 1109 );
setSeVolume( spep_2 + 13, 1109, 71 );
setSeVolume( spep_2 + 13, 44, 71 );
se_0044 = playSe( spep_2 + 13, 44 );
SE0=playSe( spep_2 + 51, 1035 );
SE1=playSe( spep_2 + 53, 1011 );
se_1182 = playSe( spep_2 + 53, 1182 );
setSeVolume( spep_2 + 53, 1182, 158 );
se_0063 = playSe( spep_2 + 70, 63 );
SE2=playSe( spep_2 + 74, 148 );
se_0044 = playSe( spep_2 + 75, 44 );
setSeVolume( spep_2 + 75, 44, 79 );
SE3=playSe( spep_2 + 93, 1143 );
setSeVolume( spep_2 + 93, 1143, 0 );

stopSe( spep_2 + 21, se_1109, 7 );
stopSe( spep_2 + 57, se_1117, 0 );
stopSe( spep_2 + 57, se_0044, 0 );
stopSe( spep_2 + 59, se_1182, 20 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );

    stopSe( SP_dodge, se_0063, 0 );
    stopSe( SP_dodge, se_0044, 0 );
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
--エネミーの動き
setDisp( spep_2-3 + 188, 1, 1);
setDisp( spep_2-1 + 242, 1, 0);
changeAnime( spep_2-3 + 188, 1, 100);
changeAnime( spep_2-3 + 202, 1, 101);
changeAnime( spep_2-3 + 236, 1, 111);
changeAnime( spep_2-3 + 238, 1, 103);

setMoveKey( spep_2 -3 + 188, 1, 42, 163.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, 186, 133.9 , 0 );
setMoveKey( spep_2 -3 + 192, 1, 186, 133.9 , 0 );
setMoveKey( spep_2 -3 + 194, 1, 215, 127.9 , 0 );
setMoveKey( spep_2 -3 + 196, 1, 237, 113.9 , 0 );
setMoveKey( spep_2 -3 + 198, 1, 237, 113.9 , 0 );
setMoveKey( spep_2 -3 + 200, 1, 262, 93.9 , 0 );
setMoveKey( spep_2 -3 + 201, 1, 262, 93.9 , 0 );

setMoveKey( spep_2 -3 + 202, 1, 267, 73.9 , 0 );
setMoveKey( spep_2 -3 + 204, 1, 285, 62 , 0 );
setMoveKey( spep_2 -3 + 206, 1, 294.9, 60 , 0 );
setMoveKey( spep_2 -3 + 208, 1, 295.6, 53.3 , 0 );
setMoveKey( spep_2 -3 + 210, 1, 296.2, 46.6 , 0 );
setMoveKey( spep_2 -3 + 212, 1, 296.9, 39.9 , 0 );
setMoveKey( spep_2 -3 + 214, 1, 306.9, 27.9 , 0 );
setMoveKey( spep_2 -3 + 216, 1, 306.9, 27.9 , 0 );
setMoveKey( spep_2 -3 + 218, 1, 278.9, 45.9 , 0 );
setMoveKey( spep_2 -3 + 220, 1, 262.9, 23.9 , 0 );
setMoveKey( spep_2 -3 + 222, 1, 262.9, 23.9 , 0 );
setMoveKey( spep_2 -3 + 224, 1, 290.9, 23.9 , 0 );
setMoveKey( spep_2 -3 + 226, 1, 290.9, 23.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 288.9, 41.9 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 278.9, 41.9 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 296.9, 39.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 277, 38 , 0 );
setMoveKey( spep_2 -3 + 235, 1, 277, 38 , 0 );

setMoveKey( spep_2 -3 + 236, 1, 261, 32 , 0 );
setMoveKey( spep_2 -3 + 237, 1, 261, 32 , 0 );

setMoveKey( spep_2 -3 + 238, 1, 174, 26 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 174, 26 , 0 );
setMoveKey( spep_2 -1 + 242, 1, 28.1, 27.9 , 0 );

setScaleKey( spep_2 -3 + 188, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 201, 1, 0.35, 0.35 );

setScaleKey( spep_2 -3 + 202, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 204, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 206, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 208, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 210, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 212, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 232, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 234, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 235, 1, 0.35, 0.35 );

setScaleKey( spep_2 -3 + 236, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 237, 1, 0.35, 0.35 );

setScaleKey( spep_2 -3 + 238, 1, 0.35, 0.35 );
setScaleKey( spep_2 -1 + 242, 1, 0.35, 0.35 );

setRotateKey( spep_2 -3 + 188, 1, 0 );
setRotateKey( spep_2 -3 + 194, 1, 0 );
setRotateKey( spep_2 -3 + 195, 1, 0 );
setRotateKey( spep_2 -3 + 196, 1, 11.4 );
setRotateKey( spep_2 -3 + 201, 1, 11.4 );

setRotateKey( spep_2 -3 + 202, 1, 11.4 );
setRotateKey( spep_2 -3 + 235, 1, 11.4 );

setRotateKey( spep_2 -3 + 236, 1, -3.3 );
setRotateKey( spep_2 -3 + 237, 1, -3.3 );

setRotateKey( spep_2 -3 + 238, 1, -3.3 );
setRotateKey( spep_2 -3 + 240, 1, -3.3 );
setRotateKey( spep_2 -1 + 242, 1, -11 );

--エネミーの動き
setDisp( spep_2-3 + 254, 1, 1);
setDisp( spep_2-1 + 388, 1, 0);

changeAnime( spep_2-3 + 254, 1, 103);
changeAnime( spep_2-3 + 258, 1, 106);
changeAnime( spep_2-3 + 262, 1, 108);
changeAnime( spep_2-3 + 268, 1, 107);
changeAnime( spep_2-3 + 272, 1, 106);
changeAnime( spep_2-3 + 276, 1, 108);
changeAnime( spep_2-3 + 282, 1, 107);
changeAnime( spep_2-3 + 288, 1, 106);
changeAnime( spep_2-3 + 294, 1, 7);
changeAnime( spep_2-3 + 300, 1, 107);
changeAnime( spep_2-3 + 316, 1, 5);
changeAnime( spep_2-3 + 348, 1, 107);
changeAnime( spep_2-3 + 362, 1, 7);

setMoveKey( spep_2 -3 + 254, 1, 10.1, 17.9 , 0 );
setMoveKey( spep_2 -3 + 256, 1, 10.1, 17.9 , 0 );
setMoveKey( spep_2 -3 + 257, 1, 10.1, 17.9 , 0 );

setMoveKey( spep_2 -3 + 258, 1, 26.1, 63.9 , 0 );
setMoveKey( spep_2 -3 + 260, 1, 12.1, 42.9 , 0 );
setMoveKey( spep_2 -3 + 261, 1, 12.1, 42.9 , 0 );

setMoveKey( spep_2 -3 + 262, 1, 12.1, 42.9 , 0 );
setMoveKey( spep_2 -3 + 264, 1, 18.1, 50.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, 18.1, 50.9 , 0 );
setMoveKey( spep_2 -3 + 267, 1, 18.1, 50.9 , 0 );

setMoveKey( spep_2 -3 + 268, 1, 10.1, 48 , 0 );
setMoveKey( spep_2 -3 + 270, 1, 9.1, 20 , 0 );
setMoveKey( spep_2 -3 + 271, 1, 9.1, 20 , 0 );

setMoveKey( spep_2 -3 + 272, 1, -3.9, 57.7 , 0 );
setMoveKey( spep_2 -3 + 274, 1, 10, 48.8 , 0 );
setMoveKey( spep_2 -3 + 275, 1, 10, 48.8 , 0 );

setMoveKey( spep_2 -3 + 276, 1, 11.2, 52.9 , 0 );
setMoveKey( spep_2 -3 + 278, 1, 11.2, 52.9 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 13.2, 38.9 , 0 );
setMoveKey( spep_2 -3 + 281, 1, 13.2, 38.9 , 0 );

setMoveKey( spep_2 -3 + 282, 1, -16.9, 32 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 26.1, 12 , 0 );
setMoveKey( spep_2 -3 + 286, 1, 26.1, 12 , 0 );
setMoveKey( spep_2 -3 + 287, 1, 26.1, 12 , 0 );

setMoveKey( spep_2 -3 + 288, 1, 5.1, 51.6 , 0 );
setMoveKey( spep_2 -3 + 290, 1, 2.9, 42.6 , 0 );
setMoveKey( spep_2 -3 + 293, 1, 2.9, 42.6 , 0 );

setMoveKey( spep_2 -3 + 294, 1, -125.2, -120.3 , 0 );
setMoveKey( spep_2 -3 + 296, 1, -125.2, -120.3 , 0 );
setMoveKey( spep_2 -3 + 298, 1, -113.2, -166.3 , 0 );
setMoveKey( spep_2 -3 + 299, 1, -113.2, -166.3 , 0 );

setMoveKey( spep_2 -3 + 300, 1, -330.3, -137.7 , 0 );
setMoveKey( spep_2 -3 + 306, 1, -330.3, -137.7 , 0 );
setMoveKey( spep_2 -3 + 308, 1, -82.9, 0.2 , 0 );
setMoveKey( spep_2 -3 + 310, 1, -82.9, 0.2 , 0 );
setMoveKey( spep_2 -3 + 312, 1, 41, 28.1 , 0 );
setMoveKey( spep_2 -3 + 314, 1, 41, 68.1 , 0 );
setMoveKey( spep_2 -3 + 315, 1, 41, 68.1 , 0 );

setMoveKey( spep_2 -3 + 316, 1, 147, 34.2 , 0 );
setMoveKey( spep_2 -3 + 318, 1, 207, 78.3 , 0 );
setMoveKey( spep_2 -3 + 320, 1, 211.5, 79.3 , 0 );
setMoveKey( spep_2 -3 + 322, 1, 186.1, 40.2 , 0 );
setMoveKey( spep_2 -3 + 324, 1, 190.7, 121.2 , 0 );
setMoveKey( spep_2 -3 + 326, 1, 219.2, 98.1 , 0 );
setMoveKey( spep_2 -3 + 328, 1, 195.8, 127.1 , 0 );
setMoveKey( spep_2 -3 + 330, 1, 200.4, 108.1 , 0 );
setMoveKey( spep_2 -3 + 332, 1, 204.9, 109 , 0 );
setMoveKey( spep_2 -3 + 334, 1, 241.5, 142 , 0 );
setMoveKey( spep_2 -3 + 336, 1, 246.1, 122.9 , 0 );
setMoveKey( spep_2 -3 + 338, 1, 238.6, 155.9 , 0 );
setMoveKey( spep_2 -3 + 340, 1, 259.2, 124.9 , 0 );
setMoveKey( spep_2 -3 + 342, 1, 263.8, 125.8 , 0 );
setMoveKey( spep_2 -3 + 344, 1, 258.3, 160.7 , 0 );
setMoveKey( spep_2 -3 + 346, 1, 270.9, 91.8 , 0 );
setMoveKey( spep_2 -3 + 347, 1, 270.9, 91.8 , 0 );

setMoveKey( spep_2 -3 + 348, 1, -303.6, -308.5 , 0 );
setMoveKey( spep_2 -3 + 350, 1, -302.2, -307.5 , 0 );
setMoveKey( spep_2 -3 + 352, 1, -292.8, -300.1 , 0 );
setMoveKey( spep_2 -3 + 354, 1, -267.3, -280.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, -217.7, -241 , 0 );
setMoveKey( spep_2 -3 + 358, 1, -135.8, -176.7 , 0 );
setMoveKey( spep_2 -3 + 360, 1, -13.6, -80.7 , 0 );
setMoveKey( spep_2 -3 + 361, 1, -13.6, -80.7 , 0 );

setMoveKey( spep_2 -3 + 362, 1, -3.7, -188.5 , 0 );
setMoveKey( spep_2 -3 + 367, 1, -3.7, -188.5 , 0 );

setMoveKey( spep_2 -3 + 368, 1, -172.7, -156.7 , 0 );
setMoveKey( spep_2 -3 + 370, 1, -172.7, -156.7 , 0 );
setMoveKey( spep_2 -3 + 372, 1, -231.7, -185.2 , 0 );
setMoveKey( spep_2 -3 + 374, 1, -242.3, -190.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, -244.9, -187.4 , 0 );
setMoveKey( spep_2 -3 + 378, 1, -271.6, -208.6 , 0 );
setMoveKey( spep_2 -3 + 380, 1, -282.2, -197.7 , 0 );
setMoveKey( spep_2 -3 + 382, 1, -276.8, -218.8 , 0 );
setMoveKey( spep_2 -3 + 384, 1, -357.2, -254.5 , 0 );
setMoveKey( spep_2 -3 + 386, 1, -391.8, -282.4 , 0 );
setMoveKey( spep_2 -1 + 388, 1, -393, -267.2 , 0 );


setScaleKey( spep_2 -3 + 254, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 257, 1, 0.31, 0.31 );

setScaleKey( spep_2 -3 + 258, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 260, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 261, 1, 0.31, 0.31 );

setScaleKey( spep_2 -3 + 262, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 266, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 267, 1, 0.31, 0.31 );

setScaleKey( spep_2 -3 + 268, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 270, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 271, 1, 0.09, 0.09 );

setScaleKey( spep_2 -3 + 272, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 274, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 275, 1, 0.27, 0.27 );

setScaleKey( spep_2 -3 + 276, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 281, 1, 0.31, 0.31 );

setScaleKey( spep_2 -3 + 282, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 286, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 287, 1, 0.09, 0.09 );

setScaleKey( spep_2 -3 + 288, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 293, 1, 0.28, 0.28 );

setScaleKey( spep_2 -3 + 294, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 298, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 299, 1, 0.95, 0.95 );

setScaleKey( spep_2 -3 + 300, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 306, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 308, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 314, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 315, 1, 0.71, 0.71 );

setScaleKey( spep_2 -3 + 316, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 318, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 320, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 322, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 324, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 326, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 328, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 330, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 332, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 334, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 336, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 338, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 340, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 342, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 344, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 346, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 347, 1, 2.03, 2.03 );

setScaleKey( spep_2 -3 + 348, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 352, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 354, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 356, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 358, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 360, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 361, 1, 1.4, 1.4 );

setScaleKey( spep_2 -3 + 362, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 367, 1, 1.38, 1.38 );

setScaleKey( spep_2 -3 + 368, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 370, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 372, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 374, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 376, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 378, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 380, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 382, 1, 0.62, 0.62 );
setScaleKey( spep_2 -1 + 388, 1, 0.62, 0.62 );

setRotateKey( spep_2 -3 + 254, 1, -11 );
setRotateKey( spep_2 -3 + 257, 1, -11 );

setRotateKey( spep_2 -3 + 258, 1, -11 );
setRotateKey( spep_2 -3 + 260, 1, -2.3 );
setRotateKey( spep_2 -3 + 261, 1, -2.3 );

setRotateKey( spep_2 -3 + 262, 1, -2.3 );
setRotateKey( spep_2 -3 + 266, 1, -2.3 );
setRotateKey( spep_2 -3 + 267, 1, -2.3 );

setRotateKey( spep_2 -3 + 268, 1, -2.2 );
setRotateKey( spep_2 -3 + 270, 1, -2.2 );
setRotateKey( spep_2 -3 + 271, 1, -2.2 );

setRotateKey( spep_2 -3 + 272, 1, -24.2 );
setRotateKey( spep_2 -3 + 274, 1, -12.5 );
setRotateKey( spep_2 -3 + 275, 1, -12.5 );

setRotateKey( spep_2 -3 + 276, 1, -31.7 );
setRotateKey( spep_2 -3 + 281, 1, -31.7 );

setRotateKey( spep_2 -3 + 282, 1, -2.2 );
setRotateKey( spep_2 -3 + 286, 1, -2.2 );
setRotateKey( spep_2 -3 + 287, 1, -2.2 );

setRotateKey( spep_2 -3 + 288, 1, -35.2 );
setRotateKey( spep_2 -3 + 290, 1, -17.5 );
setRotateKey( spep_2 -3 + 293, 1, -17.5 );

setRotateKey( spep_2 -3 + 294, 1, 94 );
setRotateKey( spep_2 -3 + 298, 1, 94 );
setRotateKey( spep_2 -3 + 299, 1, 94 );

setRotateKey( spep_2 -3 + 300, 1, 249 );
setRotateKey( spep_2 -3 + 306, 1, 249 );
setRotateKey( spep_2 -3 + 308, 1, 285.2 );
setRotateKey( spep_2 -3 + 310, 1, 285.2 );
setRotateKey( spep_2 -3 + 312, 1, 297.2 );
setRotateKey( spep_2 -3 + 314, 1, 297.2 );
setRotateKey( spep_2 -3 + 315, 1, 297.2 );

setRotateKey( spep_2 -3 + 316, 1, 450.9 );
setRotateKey( spep_2 -3 + 318, 1, 450.9 );
setRotateKey( spep_2 -3 + 320, 1, 450.4 );
setRotateKey( spep_2 -3 + 322, 1, 449.8 );
setRotateKey( spep_2 -3 + 324, 1, 449.3 );
setRotateKey( spep_2 -3 + 326, 1, 448.8 );
setRotateKey( spep_2 -3 + 328, 1, 448.2 );
setRotateKey( spep_2 -3 + 330, 1, 447.7 );
setRotateKey( spep_2 -3 + 332, 1, 447.2 );
setRotateKey( spep_2 -3 + 334, 1, 446.6 );
setRotateKey( spep_2 -3 + 336, 1, 446.1 );
setRotateKey( spep_2 -3 + 338, 1, 445.6 );
setRotateKey( spep_2 -3 + 340, 1, 445 );
setRotateKey( spep_2 -3 + 342, 1, 444.5 );
setRotateKey( spep_2 -3 + 344, 1, 444 );
setRotateKey( spep_2 -3 + 346, 1, 443.4 );
setRotateKey( spep_2 -3 + 347, 1, 443.4 );

setRotateKey( spep_2 -3 + 348, 1, 279.8 );
setRotateKey( spep_2 -3 + 350, 1, 279.8 );
setRotateKey( spep_2 -3 + 352, 1, 279.6 );
setRotateKey( spep_2 -3 + 354, 1, 279.1 );
setRotateKey( spep_2 -3 + 356, 1, 278.1 );
setRotateKey( spep_2 -3 + 358, 1, 276.4 );
setRotateKey( spep_2 -3 + 360, 1, 273.9 );
setRotateKey( spep_2 -3 + 361, 1, 273.9 );

setRotateKey( spep_2 -3 + 362, 1, 444.2 );
setRotateKey( spep_2 -3 + 367, 1, 444.2 );

setRotateKey( spep_2 -3 + 368, 1, 459.3 );
setRotateKey( spep_2 -3 + 370, 1, 459.3 );
setRotateKey( spep_2 -3 + 372, 1, 454.3 );
setRotateKey( spep_2 -3 + 374, 1, 451.9 );
setRotateKey( spep_2 -3 + 376, 1, 449.5 );
setRotateKey( spep_2 -3 + 378, 1, 447.1 );
setRotateKey( spep_2 -3 + 380, 1, 444.8 );
setRotateKey( spep_2 -3 + 382, 1, 442.4 );
setRotateKey( spep_2 -3 + 384, 1, 408.3 );
setRotateKey( spep_2 -3 + 386, 1, 400.4 );
setRotateKey( spep_2 -1 + 388, 1, 399.9 );

--エネミーの動き
setDisp( spep_2-3 + 466, 1, 1);
setDisp( spep_2-1 + 528, 1, 0);

changeAnime( spep_2-3 + 466, 1, 107);
setBlendColor( spep_2 + 515, 1, 2, 0.1, 0.3, 0.75, 0.32);

setMoveKey( spep_2 -3 + 466, 1, 523.5, -361.2 , 0 );
setMoveKey( spep_2 -3 + 468, 1, 404, -324.6 , 0 );
setMoveKey( spep_2 -3 + 470, 1, 284.6, -288.1 , 0 );
setMoveKey( spep_2 -3 + 472, 1, -153.4, -183.4 , 0 );
setMoveKey( spep_2 -3 + 474, 1, -283, -137 , 0 );
setMoveKey( spep_2 -3 + 476, 1, -412.6, -90.6 , 0 );
setMoveKey( spep_2 -3 + 478, 1, -542.2, -44.2 , 0 );
setMoveKey( spep_2 -3 + 480, 1, -558, -37.6 , 0 );
setMoveKey( spep_2 -3 + 482, 1, -573.9, -31 , 0 );
setMoveKey( spep_2 -3 + 484, 1, -617.9, 4 , 0 );
setMoveKey( spep_2 -3 + 486, 1, -611.2, 3.4 , 0 );
setMoveKey( spep_2 -3 + 488, 1, -591, 1.5 , 0 );
setMoveKey( spep_2 -3 + 490, 1, -557.5, -1.6 , 0 );
setMoveKey( spep_2 -3 + 492, 1, -510.5, -5.9 , 0 );
setMoveKey( spep_2 -3 + 494, 1, -450.1, -11.5 , 0 );
setMoveKey( spep_2 -3 + 496, 1, -376.2, -18.4 , 0 );
setMoveKey( spep_2 -3 + 498, 1, -288.9, -26.5 , 0 );
setMoveKey( spep_2 -3 + 500, 1, -188.1, -35.8 , 0 );
setMoveKey( spep_2 -3 + 502, 1, -73.8, -46.4 , 0 );
setMoveKey( spep_2 -3 + 504, 1, 54, -58.3 , 0 );
setMoveKey( spep_2 -3 + 506, 1, 195.3, -71.3 , 0 );
setMoveKey( spep_2 -3 + 508, 1, 350.1, -85.6 , 0 );
setMoveKey( spep_2 -3 + 510, 1, 334.1, -94.3 , 0 );
setMoveKey( spep_2 -3 + 512, 1, 286.2, -120.4 , 0 );
setMoveKey( spep_2 -3 + 514, 1, 138.7, -138 , 0 );
setMoveKey( spep_2 -3 + 516, 1, -8.7, -155.7 , 0 );
setMoveKey( spep_2 -3 + 518, 1, -154, -139.4 , 0 );
setMoveKey( spep_2 -3 + 520, 1, -209.2, -133.4 , 0 );
setMoveKey( spep_2 -3 + 522, 1, -264.3, -127.4 , 0 );
setMoveKey( spep_2 -3 + 524, 1, -319.5, -121.4 , 0 );
setMoveKey( spep_2 -3 + 526, 1, -374.7, -115.5 , 0 );
setMoveKey( spep_2 -1 + 528, 1, -429.8, -109.5 , 0 );

setScaleKey( spep_2 -3 + 466, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 470, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 472, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 474, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 476, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 478, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 480, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 482, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 484, 1, 1, 1 );
setScaleKey( spep_2 -3 + 488, 1, 1, 1 );
setScaleKey( spep_2 -3 + 490, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 492, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 494, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 496, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 498, 1, 0.94, 0.95 );
setScaleKey( spep_2 -3 + 500, 1, 0.92, 0.93 );
setScaleKey( spep_2 -3 + 502, 1, 0.9, 0.91 );
setScaleKey( spep_2 -3 + 504, 1, 0.88, 0.89 );
setScaleKey( spep_2 -3 + 506, 1, 0.85, 0.87 );
setScaleKey( spep_2 -3 + 508, 1, 0.83, 0.84 );
setScaleKey( spep_2 -3 + 510, 1, 0.81, 0.82 );
setScaleKey( spep_2 -3 + 512, 1, 0.76, 0.77 );
setScaleKey( spep_2 -3 + 514, 1, 0.67, 0.68 );
setScaleKey( spep_2 -3 + 516, 1, 0.59, 0.6 );
setScaleKey( spep_2 -3 + 518, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 520, 1, 0.51, 0.52 );
setScaleKey( spep_2 -3 + 522, 1, 0.48, 0.49 );
setScaleKey( spep_2 -3 + 524, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 526, 1, 0.41, 0.42 );
setScaleKey( spep_2 -1 + 528, 1, 0.38, 0.38 );

setRotateKey( spep_2 -3 + 466, 1, 366 );
setRotateKey( spep_2 -3 + 470, 1, 366 );
setRotateKey( spep_2 -3 + 472, 1, 433 );
setRotateKey( spep_2 -3 + 474, 1, 437.3 );
setRotateKey( spep_2 -3 + 476, 1, 441.7 );
setRotateKey( spep_2 -3 + 478, 1, 446 );
setRotateKey( spep_2 -3 + 480, 1, 450.7 );
setRotateKey( spep_2 -3 + 482, 1, 455.5 );
setRotateKey( spep_2 -3 + 484, 1, 460 );
setRotateKey( spep_2 -3 + 486, 1, 459.2 );
setRotateKey( spep_2 -3 + 488, 1, 457 );
setRotateKey( spep_2 -3 + 490, 1, 453.4 );
setRotateKey( spep_2 -3 + 492, 1, 448.2 );
setRotateKey( spep_2 -3 + 494, 1, 441.6 );
setRotateKey( spep_2 -3 + 496, 1, 433.5 );
setRotateKey( spep_2 -3 + 498, 1, 423.9 );
setRotateKey( spep_2 -3 + 500, 1, 412.9 );
setRotateKey( spep_2 -3 + 502, 1, 400.4 );
setRotateKey( spep_2 -3 + 504, 1, 386.4 );
setRotateKey( spep_2 -3 + 506, 1, 370.9 );
setRotateKey( spep_2 -3 + 508, 1, 354 );
setRotateKey( spep_2 -3 + 510, 1, 355.1 );
setRotateKey( spep_2 -3 + 512, 1, 358.2 );
setRotateKey( spep_2 -3 + 514, 1, 383.1 );
setRotateKey( spep_2 -3 + 516, 1, 408 );
setRotateKey( spep_2 -3 + 518, 1, 451.4 );
setRotateKey( spep_2 -3 + 520, 1, 456.7 );
setRotateKey( spep_2 -3 + 522, 1, 462 );
setRotateKey( spep_2 -3 + 524, 1, 467.3 );
setRotateKey( spep_2 -3 + 526, 1, 472.6 );
setRotateKey( spep_2 -1 + 528, 1, 477.9 );

--エネミーの動き
setDisp( spep_2-3 + 614, 1, 1);
setDisp( spep_2 + 634, 1, 0);

changeAnime( spep_2-3 + 614, 1, 105);
setBlendColor( spep_2-3 + 614, 1, 2, 0.1, 0.3, 0.75, 0);

setMoveKey( spep_2 -3 + 614, 1, -412.8, -103.8 , 0 );
setMoveKey( spep_2 -3 + 616, 1, -415.5, -111.2 , 0 );
setMoveKey( spep_2 -3 + 618, 1, -391.6, -109.4 , 0 );
setMoveKey( spep_2 -3 + 620, 1, -373, -98.4 , 0 );
setMoveKey( spep_2 -3 + 622, 1, -327.8, -94.2 , 0 );
setMoveKey( spep_2 -3 + 624, 1, -288, -97 , 0 );
setMoveKey( spep_2 -3 + 626, 1, -221.7, -90.6 , 0 );
setMoveKey( spep_2 -3 + 628, 1, -229.7, -82.6 , 0 );
setMoveKey( spep_2 -3 + 630, 1, -153.1, -93.1 , 0 );
setMoveKey( spep_2 -3 + 632, 1, 7.2, -46.1 , 0 );
setMoveKey( spep_2  + 634, 1, 27.2, -42.1 , 0 );

setScaleKey( spep_2 -3 + 614, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 616, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 618, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 620, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 622, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 624, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 626, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 628, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 630, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 632, 1, 3.8, 3.8 );
setScaleKey( spep_2  + 634, 1, 4.01, 4.01 );

setRotateKey( spep_2 -3 + 614, 1, 627 );
setRotateKey( spep_2 -3 + 616, 1, 627.5 );
setRotateKey( spep_2 -3 + 618, 1, 629 );
setRotateKey( spep_2 -3 + 620, 1, 631.5 );
setRotateKey( spep_2 -3 + 622, 1, 635.1 );
setRotateKey( spep_2 -3 + 624, 1, 639.6 );
setRotateKey( spep_2 -3 + 626, 1, 645.1 );
setRotateKey( spep_2 -3 + 628, 1, 645.1 );
setRotateKey( spep_2 -3 + 630, 1, 645 );
setRotateKey( spep_2 -3 + 632, 1, 657.3 );
setRotateKey( spep_2  + 634, 1, 657.3 );

--文字エントリー
ctgyan = entryEffectLife( spep_2-3 + 44,  10006, 24, 0x100, -1, 0, 14.5, -281 );--ギャンッ

setEffMoveKey( spep_2-3 + 44, ctgyan, 14.5, -281 , 0 );
setEffMoveKey( spep_2-3 + 46, ctgyan, 17.6, -248.4 , 0 );
setEffMoveKey( spep_2-3 + 48, ctgyan, 19.5, -221.1 , 0 );
setEffMoveKey( spep_2-3 + 50, ctgyan, 23.5, -185.9 , 0 );
setEffMoveKey( spep_2-3 + 52, ctgyan, 22, -191.2 , 0 );
setEffMoveKey( spep_2-3 + 54, ctgyan, 23.5, -185.9 , 0 );
setEffMoveKey( spep_2-3 + 56, ctgyan, 22, -191.2 , 0 );
setEffMoveKey( spep_2-3 + 58, ctgyan, 23.5, -185.9 , 0 );
setEffMoveKey( spep_2-3 + 60, ctgyan, 22, -191.2 , 0 );
setEffMoveKey( spep_2-3 + 62, ctgyan, 23.5, -185.9 , 0 );
setEffMoveKey( spep_2-3 + 64, ctgyan, 25.7, -148.8 , 0 );
setEffMoveKey( spep_2-3 + 66, ctgyan, 31.8, -97.4 , 0 );
setEffMoveKey( spep_2-3 + 68, ctgyan, 33, -64.1 , 0 );

setEffScaleKey( spep_2-3 + 44, ctgyan, 0.37, 0.37 );
setEffScaleKey( spep_2-3 + 46, ctgyan, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 48, ctgyan, 1.16, 1.16 );
setEffScaleKey( spep_2-3 + 50, ctgyan, 1.61, 1.61 );
setEffScaleKey( spep_2-3 + 52, ctgyan, 1.55, 1.55 );
setEffScaleKey( spep_2-3 + 54, ctgyan, 1.61, 1.61 );
setEffScaleKey( spep_2-3 + 56, ctgyan, 1.55, 1.55 );
setEffScaleKey( spep_2-3 + 58, ctgyan, 1.61, 1.61 );
setEffScaleKey( spep_2-3 + 60, ctgyan, 1.55, 1.55 );
setEffScaleKey( spep_2-3 + 62, ctgyan, 1.61, 1.61 );
setEffScaleKey( spep_2-3 + 64, ctgyan, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 66, ctgyan, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 68, ctgyan, 3.22, 3.22 );

setEffRotateKey( spep_2-3 + 44, ctgyan, -25.3 );
setEffRotateKey( spep_2-3 + 46, ctgyan, -25.5 );
setEffRotateKey( spep_2-3 + 68, ctgyan, -25.5 );

setEffAlphaKey( spep_2-3 + 44, ctgyan, 255 );
setEffAlphaKey( spep_2-3 + 62, ctgyan, 255 );
setEffAlphaKey( spep_2-3 + 64, ctgyan, 179 );
setEffAlphaKey( spep_2-3 + 66, ctgyan, 102 );
setEffAlphaKey( spep_2-3 + 68, ctgyan, 26 );

--文字エントリー
ctga = entryEffectLife( spep_2-3 + 314,  10005, 32+1, 0x100, -1, 0, -129.8, 144.2 );--ガッ

setEffMoveKey( spep_2-3 + 314, ctga, -129.8, 144.2 , 0 );
setEffMoveKey( spep_2-3 + 316, ctga, -99.7, 295.3 , 0 );
setEffMoveKey( spep_2-3 + 318, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 320, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 322, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 324, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 326, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 328, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 330, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 332, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 334, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 336, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 338, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 340, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 342, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 344, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-2 + 346, ctga, -50.1, 406.9 , 0 );

setEffScaleKey( spep_2-3 + 314, ctga, 0.65, 0.65 );
setEffScaleKey( spep_2-3 + 316, ctga, 1.46, 1.46 );
setEffScaleKey( spep_2-3 + 318, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 320, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 322, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 324, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 326, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 328, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 330, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 332, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 334, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 336, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 338, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 340, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 342, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 344, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-2 + 346, ctga, 1.98, 1.98 );

setEffRotateKey( spep_2-3 + 314, ctga, -58.2 );
setEffRotateKey( spep_2-3 + 316, ctga, -45.6 );
setEffRotateKey( spep_2-3 + 318, ctga, -33.2 );
setEffRotateKey( spep_2-2 + 346, ctga, -33.2 );

setEffAlphaKey( spep_2-3 + 314, ctga, 255 );
setEffAlphaKey( spep_2-2 + 346, ctga, 255 );

--SE
setSeVolume( spep_2 + 103, 1143, 0);
setSeVolume( spep_2 + 104, 1143, 28 );
setSeVolume( spep_2 + 105, 1143, 56 );
se_1042 = playSe( spep_2 + 102, 1042 );
setSeVolume( spep_2 + 102, 1042, 63 );
se_1121 = playSe( spep_2 + 111, 1121 );
setSeVolume( spep_2 + 111, 1121, 0 );
setSeVolume( spep_2 + 147, 1121, 0 );
setSeVolume( spep_2 + 148, 1121, 13.17 );
setSeVolume( spep_2 + 149, 1121, 26.33 );
setSeVolume( spep_2 + 150, 1121, 39.50 );
setSeVolume( spep_2 + 151, 1121, 52.67 );
setSeVolume( spep_2 + 152, 1121, 65.83 );
setSeVolume( spep_2 + 153, 1121, 79.00 );
setSeVolume( spep_2 + 154, 1121, 92.17 );
setSeVolume( spep_2 + 155, 1121, 105.33 );
setSeVolume( spep_2 + 156, 1121, 118.5 );
setSeVolume( spep_2 + 157, 1121, 131.67 );
setSeVolume( spep_2 + 158, 1121, 144.83 );
setSeVolume( spep_2 + 159, 1121, 158 );
se_1183 = playSe( spep_2 + 111, 1183 );
setSeVolume( spep_2 + 111, 1183, 0 );
setSeVolume( spep_2 + 112, 1183, 2.2 );
setSeVolume( spep_2 + 113, 1183, 4.4 );
setSeVolume( spep_2 + 114, 1183, 6.59 );
setSeVolume( spep_2 + 115, 1183, 8.79 );
setSeVolume( spep_2 + 116, 1183, 10.99 );
setSeVolume( spep_2 + 117, 1183, 13.19 );
setSeVolume( spep_2 + 118, 1183, 15.38 );
setSeVolume( spep_2 + 119, 1183, 17.58 );
setSeVolume( spep_2 + 120, 1183, 19.78 );
setSeVolume( spep_2 + 121, 1183, 21.98 );
setSeVolume( spep_2 + 122, 1183, 24.17 );
setSeVolume( spep_2 + 123, 1183, 26.37 );
setSeVolume( spep_2 + 124, 1183, 28.57 );
setSeVolume( spep_2 + 125, 1183, 30.77 );
setSeVolume( spep_2 + 126, 1183, 32.96 );
setSeVolume( spep_2 + 127, 1183, 35.16 );
setSeVolume( spep_2 + 128, 1183, 37.36 );
setSeVolume( spep_2 + 129, 1183, 39.56 );
setSeVolume( spep_2 + 130, 1183, 41.75 );
setSeVolume( spep_2 + 131, 1183, 43.95 );
setSeVolume( spep_2 + 132, 1183, 46.15 );
setSeVolume( spep_2 + 133, 1183, 48.35 );
setSeVolume( spep_2 + 134, 1183, 50.54 );
setSeVolume( spep_2 + 135, 1183, 52.74 );
setSeVolume( spep_2 + 136, 1183, 54.94 );
setSeVolume( spep_2 + 137, 1183, 57.14 );
setSeVolume( spep_2 + 138, 1183, 59.33 );
setSeVolume( spep_2 + 139, 1183, 61.53 );
setSeVolume( spep_2 + 140, 1183, 63.73 );
setSeVolume( spep_2 + 141, 1183, 65.93 );
setSeVolume( spep_2 + 142, 1183, 68.12 );
setSeVolume( spep_2 + 143, 1183, 70.32 );
setSeVolume( spep_2 + 144, 1183, 72.52 );
setSeVolume( spep_2 + 145, 1183, 74.72 );
setSeVolume( spep_2 + 146, 1183, 76.91 );
setSeVolume( spep_2 + 147, 1183, 79.11 );
setSeVolume( spep_2 + 148, 1183, 81.31 );
setSeVolume( spep_2 + 149, 1183, 83.51 );
setSeVolume( spep_2 + 150, 1183, 85.70 );
setSeVolume( spep_2 + 151, 1183, 87.90 );
setSeVolume( spep_2 + 152, 1183, 90.10 );
setSeVolume( spep_2 + 153, 1183, 92.30 );
setSeVolume( spep_2 + 154, 1183, 94.49 );
setSeVolume( spep_2 + 155, 1183, 96.69 );
setSeVolume( spep_2 + 156, 1183, 98.89 );
setSeVolume( spep_2 + 157, 1183, 101.09 );
setSeVolume( spep_2 + 158, 1183, 103.28 );
setSeVolume( spep_2 + 159, 1183, 105.48 );
setSeVolume( spep_2 + 160, 1183, 107.68 );
setSeVolume( spep_2 + 161, 1183, 109.88 );
setSeVolume( spep_2 + 162, 1183, 112.07 );
setSeVolume( spep_2 + 163, 1183, 114.27 );
setSeVolume( spep_2 + 164, 1183, 116.47 );
setSeVolume( spep_2 + 165, 1183, 118.67 );
setSeVolume( spep_2 + 166, 1183, 120.86 );
setSeVolume( spep_2 + 167, 1183, 123.06 );
setSeVolume( spep_2 + 168, 1183, 125.26 );
setSeVolume( spep_2 + 169, 1183, 127.46 );
setSeVolume( spep_2 + 170, 1183, 129.65 );
setSeVolume( spep_2 + 171, 1183, 131.85 );
setSeVolume( spep_2 + 172, 1183, 134.05 );
setSeVolume( spep_2 + 173, 1183, 136.25 );
setSeVolume( spep_2 + 174, 1183, 138.44 );
setSeVolume( spep_2 + 175, 1183, 140.64 );
setSeVolume( spep_2 + 176, 1183, 142.84 );
setSeVolume( spep_2 + 177, 1183, 145.04 );
setSeVolume( spep_2 + 178, 1183, 147.23 );
setSeVolume( spep_2 + 179, 1183, 149.43 );
setSeVolume( spep_2 + 180, 1183, 151.63 );
setSeVolume( spep_2 + 181, 1183, 153.83 );
setSeVolume( spep_2 + 182, 1183, 156.02 );
setSeVolume( spep_2 + 183, 1183, 158.22 );
setSeVolume( spep_2 + 184, 1183, 160.42 );
setSeVolume( spep_2 + 185, 1183, 162.62 );
setSeVolume( spep_2 + 186, 1183, 164.81 );
setSeVolume( spep_2 + 187, 1183, 167.01 );
setSeVolume( spep_2 + 188, 1183, 169.21 );
setSeVolume( spep_2 + 189, 1183, 171.41 );
setSeVolume( spep_2 + 190, 1183, 173.6 );
setSeVolume( spep_2 + 191, 1183, 175.8 );
setSeVolume( spep_2 + 192, 1183, 178 );
playSe( spep_2 + 156, 1072 );
playSe( spep_2 + 176, 1182 );
setSeVolume( spep_2 + 176, 1182, 0 );
setSeVolume( spep_2 + 186, 1182, 0 );
setSeVolume( spep_2 + 187, 1182, 8.33 );
setSeVolume( spep_2 + 188, 1182, 16.67 );
setSeVolume( spep_2 + 189, 1182, 25 );
setSeVolume( spep_2 + 190, 1182, 33.33 );
setSeVolume( spep_2 + 191, 1182, 41.67 );
setSeVolume( spep_2 + 192, 1182, 50 );
setSeVolume( spep_2 + 193, 1182, 58.33 );
setSeVolume( spep_2 + 194, 1182, 66.67 );
setSeVolume( spep_2 + 195, 1182, 75.00 );
setSeVolume( spep_2 + 196, 1182, 83.33 );
setSeVolume( spep_2 + 197, 1182, 91.67 );
setSeVolume( spep_2 + 198, 1182, 100 );
playSe( spep_2 + 245, 1232 );
setSeVolume( spep_2 + 245, 1232, 63 );
playSe( spep_2 + 248, 1003 );
setSeVolume( spep_2 + 248, 1003, 126 );
playSe( spep_2 + 254, 1110 );
playSe( spep_2 + 260, 1009 );
setSeVolume( spep_2 + 260, 1009, 89 );
playSe( spep_2 + 262, 1110 );
setSeVolume( spep_2 + 262, 1110, 79 );
playSe( spep_2 + 270, 1012 );
se_1110 = playSe( spep_2 + 270, 1110 );
setSeVolume( spep_2 + 270, 1110, 63 );
playSe( spep_2 + 277, 1000 );
setSeVolume( spep_2 + 277, 1000, 89 );
playSe( spep_2 + 282, 1110 );
setSeVolume( spep_2 + 282, 1110, 63 );
playSe( spep_2 + 284, 1010 );
setSeVolume( spep_2 + 284, 1010, 112 );
playSe( spep_2 + 284, 1189 );
setSeVolume( spep_2 + 284, 1189, 50 );
playSe( spep_2 + 293, 1000 );
playSe( spep_2 + 314, 1004 );
se_1190 = playSe( spep_2 + 325, 1190 );
se_1182 = playSe( spep_2 + 325, 1182 );
playSe( spep_2 + 325, 1110 );
se_1183 = playSe( spep_2 + 334, 1183 );
setSeVolume( spep_2 + 334, 1183, 0 );
setSeVolume( spep_2 + 362, 1183, 0 );
setSeVolume( spep_2 + 363, 1183, 11.29 );
setSeVolume( spep_2 + 364, 1183, 22.57 );
setSeVolume( spep_2 + 365, 1183, 33.86 );
setSeVolume( spep_2 + 366, 1183, 45.14 );
setSeVolume( spep_2 + 367, 1183, 56.43 );
setSeVolume( spep_2 + 368, 1183, 67.71 );
setSeVolume( spep_2 + 369, 1183, 79 );
setSeVolume( spep_2 + 370, 1183, 90.29 );
setSeVolume( spep_2 + 371, 1183, 101.57 );
setSeVolume( spep_2 + 372, 1183, 112.86 );
setSeVolume( spep_2 + 373, 1183, 124.14 );
setSeVolume( spep_2 + 374, 1183, 135.43 );
setSeVolume( spep_2 + 375, 1183, 146.71 );
setSeVolume( spep_2 + 376, 1183, 158 );
se_1190 = playSe( spep_2 + 381, 1190 );
setSeVolume( spep_2 + 325, 1190, 79 );
se_1182 = playSe( spep_2 + 381, 1182 );
setSeVolume( spep_2 + 381, 1182, 200 );
setSeVolume( spep_2 + 325, 1182, 158 );
playSe( spep_2 + 381, 1110 );
setSeVolume( spep_2 + 381, 1110, 112 );
playSe( spep_2 + 381, 1047 );
playSe( spep_2 + 385, 1001 );
se_1116 = playSe( spep_2 + 419, 1116 );
se_1128 = playSe( spep_2 + 442, 1128 );
setSeVolume( spep_2 + 442, 1128, 0 );
setSeVolume( spep_2 + 458, 1128, 0 );
setSeVolume( spep_2 + 459, 1128, 0.51 );
setSeVolume( spep_2 + 460, 1128, 1.02 );
setSeVolume( spep_2 + 461, 1128, 1.53 );
setSeVolume( spep_2 + 462, 1128, 2.04 );
setSeVolume( spep_2 + 463, 1128, 2.55 );
setSeVolume( spep_2 + 464, 1128, 3.06 );
setSeVolume( spep_2 + 465, 1128, 3.57 );
setSeVolume( spep_2 + 466, 1128, 4.08 );
setSeVolume( spep_2 + 467, 1128, 4.59 );
setSeVolume( spep_2 + 468, 1128, 5.10 );
setSeVolume( spep_2 + 469, 1128, 5.61 );
setSeVolume( spep_2 + 470, 1128, 6.12 );
setSeVolume( spep_2 + 471, 1128, 6.63 );
setSeVolume( spep_2 + 472, 1128, 7.14 );
setSeVolume( spep_2 + 473, 1128, 7.65 );
setSeVolume( spep_2 + 474, 1128, 8.16 );
setSeVolume( spep_2 + 475, 1128, 8.67 );
setSeVolume( spep_2 + 476, 1128, 9.18 );
setSeVolume( spep_2 + 477, 1128, 9.69 );
setSeVolume( spep_2 + 478, 1128, 10.2 );
setSeVolume( spep_2 + 479, 1128, 10.71 );
setSeVolume( spep_2 + 480, 1128, 11.22 );
setSeVolume( spep_2 + 481, 1128, 11.73 );
setSeVolume( spep_2 + 482, 1128, 12.24 );
setSeVolume( spep_2 + 483, 1128, 12.76 );
setSeVolume( spep_2 + 484, 1128, 13.27 );
setSeVolume( spep_2 + 485, 1128, 13.78 );
setSeVolume( spep_2 + 486, 1128, 14.29 );
setSeVolume( spep_2 + 487, 1128, 14.8 );
setSeVolume( spep_2 + 488, 1128, 15.31 );
setSeVolume( spep_2 + 489, 1128, 15.82 );
setSeVolume( spep_2 + 490, 1128, 16.33 );
setSeVolume( spep_2 + 491, 1128, 16.84 );
setSeVolume( spep_2 + 492, 1128, 17.35 );
setSeVolume( spep_2 + 493, 1128, 17.86 );
setSeVolume( spep_2 + 494, 1128, 18.37 );
setSeVolume( spep_2 + 495, 1128, 18.88 );
setSeVolume( spep_2 + 496, 1128, 19.39 );
setSeVolume( spep_2 + 497, 1128, 19.9 );
setSeVolume( spep_2 + 498, 1128, 20.41 );
setSeVolume( spep_2 + 499, 1128, 20.92 );
setSeVolume( spep_2 + 500, 1128, 21.43 );
setSeVolume( spep_2 + 501, 1128, 21.94 );
setSeVolume( spep_2 + 502, 1128, 22.45 );
setSeVolume( spep_2 + 503, 1128, 22.96 );
setSeVolume( spep_2 + 504, 1128, 23.47 );
setSeVolume( spep_2 + 505, 1128, 23.98 );
setSeVolume( spep_2 + 506, 1128, 24.49 );
setSeVolume( spep_2 + 507, 1128, 25 );
playSe( spep_2 + 454, 1209 );
setSeVolume( spep_2 + 454, 1209, 56 );
playSe( spep_2 + 454, 1109 );
setSeVolume( spep_2 + 454, 1109, 79 );
se_1119 = playSe( spep_2 + 454, 1119 );
setSeVolume( spep_2 + 454, 1119, 32 );
se_1210 = playSe( spep_2 + 454, 1210 );

playSe( spep_2 -20 + 575, 1223 );
playSe( spep_2 -20 + 575, 1027 );
playSe( spep_2 -20 + 575, 1022 );
setSeVolume( spep_2 -20 + 575, 1022, 126 );

playSe( spep_2 -10 + 657, 1024 );
playSe( spep_2 -10 + 657, 1156 );
playSe( spep_2 -10 + 657, 1159 );
setSeVolume( spep_2 -10 + 657, 1159, 71 );
playSe( spep_2 -10 + 707, 1023 );

stopSe( spep_2 + 89, se_0063, 45 );
stopSe( spep_2 + 90, se_0044, 32 );
stopSe( spep_2 + 113, se_1042, 36 );
stopSe( spep_2 + 199, se_1121, 11 );
stopSe( spep_2 + 199, se_1183, 10 );
stopSe( spep_2 + 282, se_1110, 0 );
stopSe( spep_2 + 350, se_1190, 21 );
stopSe( spep_2 + 332, se_1182, 14 );
stopSe( spep_2 + 391, se_1183, 0 );
stopSe( spep_2 + 406, se_1190, 21 );
stopSe( spep_2 + 388, se_1182, 14 );
stopSe( spep_2 + 441, se_1116, 26 );
stopSe( spep_2 + 579, se_1128, 0 );
stopSe( spep_2 + 502, se_1119, 0 );
stopSe( spep_2 + 576, se_1210, 0 );

--終わり
dealDamage( spep_2 + 646 );
endPhase( spep_2 + 774 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カードカットインまで
------------------------------------------------------
--初めの準備
spep_0=0;

-- ** エフェクト等 ** --
mae = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0,  mae, 0, 0, 0 );
setEffMoveKey( spep_0 + 184,  mae, 0, 0, 0 );
setEffScaleKey( spep_0 + 0,  mae, -1.0, 1.0 );
setEffScaleKey( spep_0 + 184,  mae, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0,  mae, 0 );
setEffRotateKey( spep_0 + 184,  mae, 0 );
setEffAlphaKey( spep_0 + 0,  mae, 255 );
setEffAlphaKey( spep_0 + 184,  mae, 255 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0-4 +16, 190006, 72, 0x100, -1, 0, 30, 510);-- ゴゴゴゴ

setEffMoveKey(  spep_0-4 +16,  ctgogo,  30,  510);
setEffMoveKey(  spep_0-4 +88,  ctgogo,  30,  510);

setEffAlphaKey( spep_0-4 +16, ctgogo, 0 );
setEffAlphaKey( spep_0-4 + 17, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 18, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 82, ctgogo, 255 );
setEffAlphaKey( spep_0-4 + 84, ctgogo, 191 );
setEffAlphaKey( spep_0-4 + 86, ctgogo, 112 );
setEffAlphaKey( spep_0-4 + 88, ctgogo, 64 );

setEffRotateKey(  spep_0-4 +16,  ctgogo,  0);
setEffRotateKey(  spep_0-4 +88,  ctgogo,  0);

setEffScaleKey(  spep_0-4 +16,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0-4 +78,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0-4 +88,  ctgogo, -1.07, 1.07 );

--SE
playSe( spep_0 + 12, 1018 );--ゴゴゴ

playSe( spep_0 + 0, 1072 );
playSe( spep_0 + 79, 1004 );
setSeVolume( spep_0 + 79, 1004, 50 );
playSe( spep_0 + 153, 1003 );
setSeVolume( spep_0 + 153, 1003, 40 );
playSe( spep_0 + 156, 1233 );
playSe( spep_0 + 164, 1006 );
setSeVolume( spep_0 + 164, 1006, 79 );

--白フェード
entryFade( spep_0 + 172, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+184

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
entryFade( spep_1 + 80, 6, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- カードカットイン後
------------------------------------------------------
-- ** エフェクト等 ** --
usiro_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  usiro_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 784,  usiro_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  usiro_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 784,  usiro_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  usiro_f, 0 );
setEffRotateKey( spep_2 + 784,  usiro_f, 0 );
setEffAlphaKey( spep_2 + 0,  usiro_f, 255 );
setEffAlphaKey( spep_2 + 784,  usiro_f, 255 );

-- ** エフェクト等 ** --
usiro_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0,  usiro_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 784,  usiro_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0,  usiro_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 784,  usiro_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0,  usiro_b, 0 );
setEffRotateKey( spep_2 + 784,  usiro_b, 0 );
setEffAlphaKey( spep_2 + 0,  usiro_b, 255 );
setEffAlphaKey( spep_2 + 784,  usiro_b, 255 );

--SE
se_1117 = playSe( spep_2 + 0, 1117 );
se_1109 = playSe( spep_2 + 13, 1109 );
setSeVolume( spep_2 + 13, 1109, 71 );
setSeVolume( spep_2 + 13, 44, 71 );
se_0044 = playSe( spep_2 + 13, 44 );
SE0=playSe( spep_2 + 51, 1035 );
SE1=playSe( spep_2 + 53, 1011 );
se_1182 = playSe( spep_2 + 53, 1182 );
setSeVolume( spep_2 + 53, 1182, 158 );
se_0063 = playSe( spep_2 + 70, 63 );
SE2=playSe( spep_2 + 74, 148 );
se_0044 = playSe( spep_2 + 75, 44 );
setSeVolume( spep_2 + 75, 44, 79 );
SE3=playSe( spep_2 + 93, 1143 );
setSeVolume( spep_2 + 93, 1143, 0 );

stopSe( spep_2 + 21, se_1109, 7 );
stopSe( spep_2 + 57, se_1117, 0 );
stopSe( spep_2 + 57, se_0044, 0 );
stopSe( spep_2 + 59, se_1182, 20 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    pauseAll( SP_dodge, 67 );

    stopSe( SP_dodge, se_0063, 0 );
    stopSe( SP_dodge, se_0044, 0 );
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
--エネミーの動き
setDisp( spep_2-3 + 188, 1, 1);
setDisp( spep_2-1 + 242, 1, 0);
changeAnime( spep_2-3 + 188, 1, 0);
changeAnime( spep_2-3 + 202, 1, 1);
changeAnime( spep_2-3 + 236, 1, 11);
changeAnime( spep_2-3 + 238, 1, 3);

setMoveKey( spep_2 -3 + 188, 1, -42, 163.9 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -186, 133.9 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -186, 133.9 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -215, 127.9 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -237, 113.9 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -237, 113.9 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -262, 93.9 , 0 );
setMoveKey( spep_2 -3 + 201, 1, -262, 93.9 , 0 );

setMoveKey( spep_2 -3 + 202, 1, -267, 73.9 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -285, 62 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -294.9, 60 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -295.6, 53.3 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -296.2, 46.6 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -296.9, 39.9 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -306.9, 27.9 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -306.9, 27.9 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -278.9, 45.9 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -262.9, 23.9 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -262.9, 23.9 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -290.9, 23.9 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -290.9, 23.9 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -288.9, 41.9 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -278.9, 41.9 , 0 );
setMoveKey( spep_2 -3 + 232, 1, -296.9, 39.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, -277, 38 , 0 );
setMoveKey( spep_2 -3 + 235, 1, -277, 38 , 0 );

setMoveKey( spep_2 -3 + 236, 1, -261, 32 , 0 );
setMoveKey( spep_2 -3 + 237, 1, -261, 32 , 0 );

setMoveKey( spep_2 -3 + 238, 1, -174, 26 , 0 );
setMoveKey( spep_2 -3 + 240, 1, -174, 26 , 0 );
setMoveKey( spep_2 -1 + 242, 1, -28.1, 27.9 , 0 );

setScaleKey( spep_2 -3 + 188, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 201, 1, 0.35, 0.35 );

setScaleKey( spep_2 -3 + 202, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 204, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 206, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 208, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 210, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 212, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 232, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 234, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 235, 1, 0.35, 0.35 );

setScaleKey( spep_2 -3 + 236, 1, 0.35, 0.35 );
setScaleKey( spep_2 -3 + 237, 1, 0.35, 0.35 );

setScaleKey( spep_2 -3 + 238, 1, 0.35, 0.35 );
setScaleKey( spep_2 -1 + 242, 1, 0.35, 0.35 );

setRotateKey( spep_2 -3 + 188, 1, 0 );
setRotateKey( spep_2 -3 + 194, 1, 0 );
setRotateKey( spep_2 -3 + 195, 1, 0 );
setRotateKey( spep_2 -3 + 196, 1, -11.4 );
setRotateKey( spep_2 -3 + 201, 1, -11.4 );

setRotateKey( spep_2 -3 + 202, 1, -11.4 );
setRotateKey( spep_2 -3 + 235, 1, -11.4 );

setRotateKey( spep_2 -3 + 236, 1, 3.3 );
setRotateKey( spep_2 -3 + 237, 1, 3.3 );

setRotateKey( spep_2 -3 + 238, 1, 3.3 );
setRotateKey( spep_2 -3 + 240, 1, 3.3 );
setRotateKey( spep_2 -1 + 242, 1, 11 );

--エネミーの動き
setDisp( spep_2-3 + 254, 1, 1);
setDisp( spep_2-1 + 388, 1, 0);

changeAnime( spep_2-3 + 254, 1, 3);
changeAnime( spep_2-3 + 258, 1, 6);
changeAnime( spep_2-3 + 262, 1, 8);
changeAnime( spep_2-3 + 268, 1, 7);
changeAnime( spep_2-3 + 272, 1, 6);
changeAnime( spep_2-3 + 276, 1, 8);
changeAnime( spep_2-3 + 282, 1, 7);
changeAnime( spep_2-3 + 288, 1, 6);
changeAnime( spep_2-3 + 294, 1, 107);
changeAnime( spep_2-3 + 300, 1, 7);
changeAnime( spep_2-3 + 316, 1, 105);
changeAnime( spep_2-3 + 348, 1, 7);
changeAnime( spep_2-3 + 362, 1, 107);

setMoveKey( spep_2 -3 + 254, 1, -10.1, 17.9 , 0 );
setMoveKey( spep_2 -3 + 256, 1, -10.1, 17.9 , 0 );
setMoveKey( spep_2 -3 + 257, 1, -10.1, 17.9 , 0 );

setMoveKey( spep_2 -3 + 258, 1, -26.1, 63.9 , 0 );
setMoveKey( spep_2 -3 + 260, 1, -12.1, 42.9 , 0 );
setMoveKey( spep_2 -3 + 261, 1, -12.1, 42.9 , 0 );

setMoveKey( spep_2 -3 + 262, 1, -12.1, 42.9 , 0 );
setMoveKey( spep_2 -3 + 264, 1, -18.1, 50.9 , 0 );
setMoveKey( spep_2 -3 + 266, 1, -18.1, 50.9 , 0 );
setMoveKey( spep_2 -3 + 267, 1, -18.1, 50.9 , 0 );

setMoveKey( spep_2 -3 + 268, 1, -10.1, 48 , 0 );
setMoveKey( spep_2 -3 + 270, 1, -9.1, 20 , 0 );
setMoveKey( spep_2 -3 + 271, 1, -9.1, 20 , 0 );

setMoveKey( spep_2 -3 + 272, 1, 3.9, 57.7 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -10, 48.8 , 0 );
setMoveKey( spep_2 -3 + 275, 1, -10, 48.8 , 0 );

setMoveKey( spep_2 -3 + 276, 1, -11.2, 52.9 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -11.2, 52.9 , 0 );
setMoveKey( spep_2 -3 + 280, 1, -13.2, 38.9 , 0 );
setMoveKey( spep_2 -3 + 281, 1, -13.2, 38.9 , 0 );

setMoveKey( spep_2 -3 + 282, 1, 16.9, 32 , 0 );
setMoveKey( spep_2 -3 + 284, 1, -26.1, 12 , 0 );
setMoveKey( spep_2 -3 + 286, 1, -26.1, 12 , 0 );
setMoveKey( spep_2 -3 + 287, 1, -26.1, 12 , 0 );

setMoveKey( spep_2 -3 + 288, 1, -5.1, 51.6 , 0 );
setMoveKey( spep_2 -3 + 290, 1, -2.9, 42.6 , 0 );
setMoveKey( spep_2 -3 + 293, 1, -2.9, 42.6 , 0 );

setMoveKey( spep_2 -3 + 294, 1, 125.2, -120.3 , 0 );
setMoveKey( spep_2 -3 + 296, 1, 125.2, -120.3 , 0 );
setMoveKey( spep_2 -3 + 298, 1, 113.2, -166.3 , 0 );
setMoveKey( spep_2 -3 + 299, 1, 113.2, -166.3 , 0 );

setMoveKey( spep_2 -3 + 300, 1, 330.3, -137.7 , 0 );
setMoveKey( spep_2 -3 + 306, 1, 330.3, -137.7 , 0 );
setMoveKey( spep_2 -3 + 308, 1, 82.9, 0.2 , 0 );
setMoveKey( spep_2 -3 + 310, 1, 82.9, 0.2 , 0 );
setMoveKey( spep_2 -3 + 312, 1, -41, 28.1 , 0 );
setMoveKey( spep_2 -3 + 314, 1, -41, 68.1 , 0 );
setMoveKey( spep_2 -3 + 315, 1, -41, 68.1 , 0 );

setMoveKey( spep_2 -3 + 316, 1, -147, 34.2 , 0 );
setMoveKey( spep_2 -3 + 318, 1, -207, 78.3 , 0 );
setMoveKey( spep_2 -3 + 320, 1, -211.5, 79.3 , 0 );
setMoveKey( spep_2 -3 + 322, 1, -186.1, 40.2 , 0 );
setMoveKey( spep_2 -3 + 324, 1, -190.7, 121.2 , 0 );
setMoveKey( spep_2 -3 + 326, 1, -219.2, 98.1 , 0 );
setMoveKey( spep_2 -3 + 328, 1, -195.8, 127.1 , 0 );
setMoveKey( spep_2 -3 + 330, 1, -200.4, 108.1 , 0 );
setMoveKey( spep_2 -3 + 332, 1, -204.9, 109 , 0 );
setMoveKey( spep_2 -3 + 334, 1, -241.5, 142 , 0 );
setMoveKey( spep_2 -3 + 336, 1, -246.1, 122.9 , 0 );
setMoveKey( spep_2 -3 + 338, 1, -238.6, 155.9 , 0 );
setMoveKey( spep_2 -3 + 340, 1, -259.2, 124.9 , 0 );
setMoveKey( spep_2 -3 + 342, 1, -263.8, 125.8 , 0 );
setMoveKey( spep_2 -3 + 344, 1, -258.3, 160.7 , 0 );
setMoveKey( spep_2 -3 + 346, 1, -270.9, 91.8 , 0 );
setMoveKey( spep_2 -3 + 347, 1, -270.9, 91.8 , 0 );

setMoveKey( spep_2 -3 + 348, 1, 303.6, -308.5 , 0 );
setMoveKey( spep_2 -3 + 350, 1, 302.2, -307.5 , 0 );
setMoveKey( spep_2 -3 + 352, 1, 292.8, -300.1 , 0 );
setMoveKey( spep_2 -3 + 354, 1, 267.3, -280.1 , 0 );
setMoveKey( spep_2 -3 + 356, 1, 217.7, -241 , 0 );
setMoveKey( spep_2 -3 + 358, 1, 135.8, -176.7 , 0 );
setMoveKey( spep_2 -3 + 360, 1, 13.6, -80.7 , 0 );
setMoveKey( spep_2 -3 + 361, 1, 13.6, -80.7 , 0 );

setMoveKey( spep_2 -3 + 362, 1, 3.7, -188.5 , 0 );
setMoveKey( spep_2 -3 + 367, 1, 3.7, -188.5 , 0 );

setMoveKey( spep_2 -3 + 368, 1, 172.7, -156.7 , 0 );
setMoveKey( spep_2 -3 + 370, 1, 172.7, -156.7 , 0 );
setMoveKey( spep_2 -3 + 372, 1, 231.7, -185.2 , 0 );
setMoveKey( spep_2 -3 + 374, 1, 242.3, -190.3 , 0 );
setMoveKey( spep_2 -3 + 376, 1, 244.9, -187.4 , 0 );
setMoveKey( spep_2 -3 + 378, 1, 271.6, -208.6 , 0 );
setMoveKey( spep_2 -3 + 380, 1, 282.2, -197.7 , 0 );
setMoveKey( spep_2 -3 + 382, 1, 276.8, -218.8 , 0 );
setMoveKey( spep_2 -3 + 384, 1, 357.2, -254.5 , 0 );
setMoveKey( spep_2 -3 + 386, 1, 391.8, -282.4 , 0 );
setMoveKey( spep_2 -1 + 388, 1, 393, -267.2 , 0 );


setScaleKey( spep_2 -3 + 254, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 257, 1, 0.31, 0.31 );

setScaleKey( spep_2 -3 + 258, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 260, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 261, 1, 0.31, 0.31 );

setScaleKey( spep_2 -3 + 262, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 266, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 267, 1, 0.31, 0.31 );

setScaleKey( spep_2 -3 + 268, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 270, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 271, 1, 0.09, 0.09 );

setScaleKey( spep_2 -3 + 272, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 274, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 275, 1, 0.27, 0.27 );

setScaleKey( spep_2 -3 + 276, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 281, 1, 0.31, 0.31 );

setScaleKey( spep_2 -3 + 282, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 286, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 287, 1, 0.09, 0.09 );

setScaleKey( spep_2 -3 + 288, 1, 0.28, 0.28 );
setScaleKey( spep_2 -3 + 293, 1, 0.28, 0.28 );

setScaleKey( spep_2 -3 + 294, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 298, 1, 0.95, 0.95 );
setScaleKey( spep_2 -3 + 299, 1, 0.95, 0.95 );

setScaleKey( spep_2 -3 + 300, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 306, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 308, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 314, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 315, 1, 0.71, 0.71 );

setScaleKey( spep_2 -3 + 316, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 318, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 320, 1, 2.18, 2.18 );
setScaleKey( spep_2 -3 + 322, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 324, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 326, 1, 2.14, 2.14 );
setScaleKey( spep_2 -3 + 328, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 330, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 332, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 334, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 336, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 338, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 340, 1, 2.06, 2.06 );
setScaleKey( spep_2 -3 + 342, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 344, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 346, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 347, 1, 2.03, 2.03 );

setScaleKey( spep_2 -3 + 348, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 352, 1, 1.36, 1.36 );
setScaleKey( spep_2 -3 + 354, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 356, 1, 1.37, 1.37 );
setScaleKey( spep_2 -3 + 358, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 360, 1, 1.4, 1.4 );
setScaleKey( spep_2 -3 + 361, 1, 1.4, 1.4 );

setScaleKey( spep_2 -3 + 362, 1, 1.38, 1.38 );
setScaleKey( spep_2 -3 + 367, 1, 1.38, 1.38 );

setScaleKey( spep_2 -3 + 368, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 370, 1, 0.62, 0.62 );
setScaleKey( spep_2 -3 + 372, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 374, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 376, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 378, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 380, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 382, 1, 0.62, 0.62 );
setScaleKey( spep_2 -1 + 388, 1, 0.62, 0.62 );

setRotateKey( spep_2 -3 + 254, 1, 11 );
setRotateKey( spep_2 -3 + 257, 1, 11 );

setRotateKey( spep_2 -3 + 258, 1, 11 );
setRotateKey( spep_2 -3 + 260, 1, 2.3 );
setRotateKey( spep_2 -3 + 261, 1, 2.3 );

setRotateKey( spep_2 -3 + 262, 1, 2.3 );
setRotateKey( spep_2 -3 + 266, 1, 2.3 );
setRotateKey( spep_2 -3 + 267, 1, 2.3 );

setRotateKey( spep_2 -3 + 268, 1, 2.2 );
setRotateKey( spep_2 -3 + 270, 1, 2.2 );
setRotateKey( spep_2 -3 + 271, 1, 2.2 );

setRotateKey( spep_2 -3 + 272, 1, 24.2 );
setRotateKey( spep_2 -3 + 274, 1, 12.5 );
setRotateKey( spep_2 -3 + 275, 1, 12.5 );

setRotateKey( spep_2 -3 + 276, 1, 31.7 );
setRotateKey( spep_2 -3 + 281, 1, 31.7 );

setRotateKey( spep_2 -3 + 282, 1, 2.2 );
setRotateKey( spep_2 -3 + 286, 1, 2.2 );
setRotateKey( spep_2 -3 + 287, 1, 2.2 );

setRotateKey( spep_2 -3 + 288, 1, 35.2 );
setRotateKey( spep_2 -3 + 290, 1, 17.5 );
setRotateKey( spep_2 -3 + 293, 1, 17.5 );

setRotateKey( spep_2 -3 + 294, 1, -94 );
setRotateKey( spep_2 -3 + 298, 1, -94 );
setRotateKey( spep_2 -3 + 299, 1, -94 );

setRotateKey( spep_2 -3 + 300, 1, -249 );
setRotateKey( spep_2 -3 + 306, 1, -249 );
setRotateKey( spep_2 -3 + 308, 1, -285.2 );
setRotateKey( spep_2 -3 + 310, 1, -285.2 );
setRotateKey( spep_2 -3 + 312, 1, -297.2 );
setRotateKey( spep_2 -3 + 314, 1, -297.2 );
setRotateKey( spep_2 -3 + 315, 1, -297.2 );

setRotateKey( spep_2 -3 + 316, 1, -450.9 );
setRotateKey( spep_2 -3 + 318, 1, -450.9 );
setRotateKey( spep_2 -3 + 320, 1, -450.4 );
setRotateKey( spep_2 -3 + 322, 1, -449.8 );
setRotateKey( spep_2 -3 + 324, 1, -449.3 );
setRotateKey( spep_2 -3 + 326, 1, -448.8 );
setRotateKey( spep_2 -3 + 328, 1, -448.2 );
setRotateKey( spep_2 -3 + 330, 1, -447.7 );
setRotateKey( spep_2 -3 + 332, 1, -447.2 );
setRotateKey( spep_2 -3 + 334, 1, -446.6 );
setRotateKey( spep_2 -3 + 336, 1, -446.1 );
setRotateKey( spep_2 -3 + 338, 1, -445.6 );
setRotateKey( spep_2 -3 + 340, 1, -445 );
setRotateKey( spep_2 -3 + 342, 1, -444.5 );
setRotateKey( spep_2 -3 + 344, 1, -444 );
setRotateKey( spep_2 -3 + 346, 1, -443.4 );
setRotateKey( spep_2 -3 + 347, 1, -443.4 );

setRotateKey( spep_2 -3 + 348, 1, -279.8 );
setRotateKey( spep_2 -3 + 350, 1, -279.8 );
setRotateKey( spep_2 -3 + 352, 1, -279.6 );
setRotateKey( spep_2 -3 + 354, 1, -279.1 );
setRotateKey( spep_2 -3 + 356, 1, -278.1 );
setRotateKey( spep_2 -3 + 358, 1, -276.4 );
setRotateKey( spep_2 -3 + 360, 1, -273.9 );
setRotateKey( spep_2 -3 + 361, 1, -273.9 );

setRotateKey( spep_2 -3 + 362, 1, -444.2 );
setRotateKey( spep_2 -3 + 367, 1, -444.2 );

setRotateKey( spep_2 -3 + 368, 1, -459.3 );
setRotateKey( spep_2 -3 + 370, 1, -459.3 );
setRotateKey( spep_2 -3 + 372, 1, -454.3 );
setRotateKey( spep_2 -3 + 374, 1, -451.9 );
setRotateKey( spep_2 -3 + 376, 1, -449.5 );
setRotateKey( spep_2 -3 + 378, 1, -447.1 );
setRotateKey( spep_2 -3 + 380, 1, -444.8 );
setRotateKey( spep_2 -3 + 382, 1, -442.4 );
setRotateKey( spep_2 -3 + 384, 1, -408.3 );
setRotateKey( spep_2 -3 + 386, 1, -400.4 );
setRotateKey( spep_2 -1 + 388, 1, -399.9 );

--エネミーの動き
setDisp( spep_2-3 + 466, 1, 1);
setDisp( spep_2-1 + 528, 1, 0);

changeAnime( spep_2-3 + 466, 1, 7);
setBlendColor( spep_2 + 515, 1, 2, 0.1, 0.3, 0.75, 0.32);

setMoveKey( spep_2 -3 + 466, 1, -523.5, -361.2 , 0 );
setMoveKey( spep_2 -3 + 468, 1, -404, -324.6 , 0 );
setMoveKey( spep_2 -3 + 470, 1, -284.6, -288.1 , 0 );
setMoveKey( spep_2 -3 + 472, 1, 153.4, -183.4 , 0 );
setMoveKey( spep_2 -3 + 474, 1, 283, -137 , 0 );
setMoveKey( spep_2 -3 + 476, 1, 412.6, -90.6 , 0 );
setMoveKey( spep_2 -3 + 478, 1, 542.2, -44.2 , 0 );
setMoveKey( spep_2 -3 + 480, 1, 558, -37.6 , 0 );
setMoveKey( spep_2 -3 + 482, 1, 573.9, -31 , 0 );
setMoveKey( spep_2 -3 + 484, 1, 617.9, 4 , 0 );
setMoveKey( spep_2 -3 + 486, 1, 611.2, 3.4 , 0 );
setMoveKey( spep_2 -3 + 488, 1, 591, 1.5 , 0 );
setMoveKey( spep_2 -3 + 490, 1, 557.5, -1.6 , 0 );
setMoveKey( spep_2 -3 + 492, 1, 510.5, -5.9 , 0 );
setMoveKey( spep_2 -3 + 494, 1, 450.1, -11.5 , 0 );
setMoveKey( spep_2 -3 + 496, 1, 376.2, -18.4 , 0 );
setMoveKey( spep_2 -3 + 498, 1, 288.9, -26.5 , 0 );
setMoveKey( spep_2 -3 + 500, 1, 188.1, -35.8 , 0 );
setMoveKey( spep_2 -3 + 502, 1, 73.8, -46.4 , 0 );
setMoveKey( spep_2 -3 + 504, 1, -54, -58.3 , 0 );
setMoveKey( spep_2 -3 + 506, 1, -195.3, -71.3 , 0 );
setMoveKey( spep_2 -3 + 508, 1, -350.1, -85.6 , 0 );
setMoveKey( spep_2 -3 + 510, 1, -334.1, -94.3 , 0 );
setMoveKey( spep_2 -3 + 512, 1, -286.2, -120.4 , 0 );
setMoveKey( spep_2 -3 + 514, 1, -138.7, -138 , 0 );
setMoveKey( spep_2 -3 + 516, 1, 8.7, -155.7 , 0 );
setMoveKey( spep_2 -3 + 518, 1, 154, -139.4 , 0 );
setMoveKey( spep_2 -3 + 520, 1, 209.2, -133.4 , 0 );
setMoveKey( spep_2 -3 + 522, 1, 264.3, -127.4 , 0 );
setMoveKey( spep_2 -3 + 524, 1, 319.5, -121.4 , 0 );
setMoveKey( spep_2 -3 + 526, 1, 374.7, -115.5 , 0 );
setMoveKey( spep_2 -1 + 528, 1, 429.8, -109.5 , 0 );

setScaleKey( spep_2 -3 + 466, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 470, 1, 1.5, 1.5 );
setScaleKey( spep_2 -3 + 472, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 474, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 476, 1, 1.18, 1.18 );
setScaleKey( spep_2 -3 + 478, 1, 1.15, 1.15 );
setScaleKey( spep_2 -3 + 480, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 482, 1, 1.04, 1.04 );
setScaleKey( spep_2 -3 + 484, 1, 1, 1 );
setScaleKey( spep_2 -3 + 488, 1, 1, 1 );
setScaleKey( spep_2 -3 + 490, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 492, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 494, 1, 0.97, 0.97 );
setScaleKey( spep_2 -3 + 496, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 498, 1, 0.94, 0.95 );
setScaleKey( spep_2 -3 + 500, 1, 0.92, 0.93 );
setScaleKey( spep_2 -3 + 502, 1, 0.9, 0.91 );
setScaleKey( spep_2 -3 + 504, 1, 0.88, 0.89 );
setScaleKey( spep_2 -3 + 506, 1, 0.85, 0.87 );
setScaleKey( spep_2 -3 + 508, 1, 0.83, 0.84 );
setScaleKey( spep_2 -3 + 510, 1, 0.81, 0.82 );
setScaleKey( spep_2 -3 + 512, 1, 0.76, 0.77 );
setScaleKey( spep_2 -3 + 514, 1, 0.67, 0.68 );
setScaleKey( spep_2 -3 + 516, 1, 0.59, 0.6 );
setScaleKey( spep_2 -3 + 518, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 520, 1, 0.51, 0.52 );
setScaleKey( spep_2 -3 + 522, 1, 0.48, 0.49 );
setScaleKey( spep_2 -3 + 524, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 526, 1, 0.41, 0.42 );
setScaleKey( spep_2 -1 + 528, 1, 0.38, 0.38 );

setRotateKey( spep_2 -3 + 466, 1, -366 );
setRotateKey( spep_2 -3 + 470, 1, -366 );
setRotateKey( spep_2 -3 + 472, 1, -433 );
setRotateKey( spep_2 -3 + 474, 1, -437.3 );
setRotateKey( spep_2 -3 + 476, 1, -441.7 );
setRotateKey( spep_2 -3 + 478, 1, -446 );
setRotateKey( spep_2 -3 + 480, 1, -450.7 );
setRotateKey( spep_2 -3 + 482, 1, -455.5 );
setRotateKey( spep_2 -3 + 484, 1, -460 );
setRotateKey( spep_2 -3 + 486, 1, -459.2 );
setRotateKey( spep_2 -3 + 488, 1, -457 );
setRotateKey( spep_2 -3 + 490, 1, -453.4 );
setRotateKey( spep_2 -3 + 492, 1, -448.2 );
setRotateKey( spep_2 -3 + 494, 1, -441.6 );
setRotateKey( spep_2 -3 + 496, 1, -433.5 );
setRotateKey( spep_2 -3 + 498, 1, -423.9 );
setRotateKey( spep_2 -3 + 500, 1, -412.9 );
setRotateKey( spep_2 -3 + 502, 1, -400.4 );
setRotateKey( spep_2 -3 + 504, 1, -386.4 );
setRotateKey( spep_2 -3 + 506, 1, -370.9 );
setRotateKey( spep_2 -3 + 508, 1, -354 );
setRotateKey( spep_2 -3 + 510, 1, -355.1 );
setRotateKey( spep_2 -3 + 512, 1, -358.2 );
setRotateKey( spep_2 -3 + 514, 1, -383.1 );
setRotateKey( spep_2 -3 + 516, 1, -408 );
setRotateKey( spep_2 -3 + 518, 1, -451.4 );
setRotateKey( spep_2 -3 + 520, 1, -456.7 );
setRotateKey( spep_2 -3 + 522, 1, -462 );
setRotateKey( spep_2 -3 + 524, 1, -467.3 );
setRotateKey( spep_2 -3 + 526, 1, -472.6 );
setRotateKey( spep_2 -1 + 528, 1, -477.9 );

--エネミーの動き
setDisp( spep_2-3 + 614, 1, 1);
setDisp( spep_2 + 634, 1, 0);

changeAnime( spep_2-3 + 614, 1, 5);
setBlendColor( spep_2-3 + 614, 1, 2, 0.1, 0.3, 0.75, 0);

setMoveKey( spep_2 -3 + 614, 1, 412.8, -103.8 , 0 );
setMoveKey( spep_2 -3 + 616, 1, 415.5, -111.2 , 0 );
setMoveKey( spep_2 -3 + 618, 1, 391.6, -109.4 , 0 );
setMoveKey( spep_2 -3 + 620, 1, 373, -98.4 , 0 );
setMoveKey( spep_2 -3 + 622, 1, 327.8, -94.2 , 0 );
setMoveKey( spep_2 -3 + 624, 1, 288, -97 , 0 );
setMoveKey( spep_2 -3 + 626, 1, 221.7, -90.6 , 0 );
setMoveKey( spep_2 -3 + 628, 1, 229.7, -82.6 , 0 );
setMoveKey( spep_2 -3 + 630, 1, 153.1, -93.1 , 0 );
setMoveKey( spep_2 -3 + 632, 1, -7.2, -46.1 , 0 );
setMoveKey( spep_2  + 634, 1, -27.2, -42.1 , 0 );

setScaleKey( spep_2 -3 + 614, 1, 0.21, 0.21 );
setScaleKey( spep_2 -3 + 616, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 618, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 620, 1, 0.47, 0.47 );
setScaleKey( spep_2 -3 + 622, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 624, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 626, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 628, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 630, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 632, 1, 3.8, 3.8 );
setScaleKey( spep_2  + 634, 1, 4.01, 4.01 );

setRotateKey( spep_2 -3 + 614, 1, -627 );
setRotateKey( spep_2 -3 + 616, 1, -627.5 );
setRotateKey( spep_2 -3 + 618, 1, -629 );
setRotateKey( spep_2 -3 + 620, 1, -631.5 );
setRotateKey( spep_2 -3 + 622, 1, -635.1 );
setRotateKey( spep_2 -3 + 624, 1, -639.6 );
setRotateKey( spep_2 -3 + 626, 1, -645.1 );
setRotateKey( spep_2 -3 + 628, 1, -645.1 );
setRotateKey( spep_2 -3 + 630, 1, -645 );
setRotateKey( spep_2 -3 + 632, 1, -657.3 );
setRotateKey( spep_2  + 634, 1, -657.3 );

--文字エントリー
ctgyan = entryEffectLife( spep_2-3 + 44,  10006, 24, 0x100, -1, 0, 14.5, -281 );--ギャンッ

setEffMoveKey( spep_2-3 + 44, ctgyan, 14.5, -281 , 0 );
setEffMoveKey( spep_2-3 + 46, ctgyan, 17.6, -248.4 , 0 );
setEffMoveKey( spep_2-3 + 48, ctgyan, 19.5, -221.1 , 0 );
setEffMoveKey( spep_2-3 + 50, ctgyan, 23.5, -185.9 , 0 );
setEffMoveKey( spep_2-3 + 52, ctgyan, 22, -191.2 , 0 );
setEffMoveKey( spep_2-3 + 54, ctgyan, 23.5, -185.9 , 0 );
setEffMoveKey( spep_2-3 + 56, ctgyan, 22, -191.2 , 0 );
setEffMoveKey( spep_2-3 + 58, ctgyan, 23.5, -185.9 , 0 );
setEffMoveKey( spep_2-3 + 60, ctgyan, 22, -191.2 , 0 );
setEffMoveKey( spep_2-3 + 62, ctgyan, 23.5, -185.9 , 0 );
setEffMoveKey( spep_2-3 + 64, ctgyan, 25.7, -148.8 , 0 );
setEffMoveKey( spep_2-3 + 66, ctgyan, 31.8, -97.4 , 0 );
setEffMoveKey( spep_2-3 + 68, ctgyan, 33, -64.1 , 0 );

setEffScaleKey( spep_2-3 + 44, ctgyan, 0.37, 0.37 );
setEffScaleKey( spep_2-3 + 46, ctgyan, 0.8, 0.8 );
setEffScaleKey( spep_2-3 + 48, ctgyan, 1.16, 1.16 );
setEffScaleKey( spep_2-3 + 50, ctgyan, 1.61, 1.61 );
setEffScaleKey( spep_2-3 + 52, ctgyan, 1.55, 1.55 );
setEffScaleKey( spep_2-3 + 54, ctgyan, 1.61, 1.61 );
setEffScaleKey( spep_2-3 + 56, ctgyan, 1.55, 1.55 );
setEffScaleKey( spep_2-3 + 58, ctgyan, 1.61, 1.61 );
setEffScaleKey( spep_2-3 + 60, ctgyan, 1.55, 1.55 );
setEffScaleKey( spep_2-3 + 62, ctgyan, 1.61, 1.61 );
setEffScaleKey( spep_2-3 + 64, ctgyan, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 66, ctgyan, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 68, ctgyan, 3.22, 3.22 );

setEffRotateKey( spep_2-3 + 44, ctgyan, -25.3 );
setEffRotateKey( spep_2-3 + 46, ctgyan, -25.5 );
setEffRotateKey( spep_2-3 + 68, ctgyan, -25.5 );

setEffAlphaKey( spep_2-3 + 44, ctgyan, 255 );
setEffAlphaKey( spep_2-3 + 62, ctgyan, 255 );
setEffAlphaKey( spep_2-3 + 64, ctgyan, 179 );
setEffAlphaKey( spep_2-3 + 66, ctgyan, 102 );
setEffAlphaKey( spep_2-3 + 68, ctgyan, 26 );

--文字エントリー
ctga = entryEffectLife( spep_2-3 + 314,  10005, 32+1, 0x100, -1, 0, -129.8, 144.2 );--ガッ

setEffMoveKey( spep_2-3 + 314, ctga, -129.8, 144.2 , 0 );
setEffMoveKey( spep_2-3 + 316, ctga, -99.7, 295.3 , 0 );
setEffMoveKey( spep_2-3 + 318, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 320, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 322, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 324, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 326, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 328, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 330, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 332, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 334, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 336, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 338, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 340, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-3 + 342, ctga, -50.1, 406.9 , 0 );
setEffMoveKey( spep_2-3 + 344, ctga, -42.7, 427.2 , 0 );
setEffMoveKey( spep_2-2 + 346, ctga, -50.1, 406.9 , 0 );

setEffScaleKey( spep_2-3 + 314, ctga, 0.65, 0.65 );
setEffScaleKey( spep_2-3 + 316, ctga, 1.46, 1.46 );
setEffScaleKey( spep_2-3 + 318, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 320, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 322, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 324, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 326, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 328, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 330, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 332, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 334, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 336, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 338, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 340, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 342, ctga, 1.98, 1.98 );
setEffScaleKey( spep_2-3 + 344, ctga, 2.19, 2.19 );
setEffScaleKey( spep_2-2 + 346, ctga, 1.98, 1.98 );

setEffRotateKey( spep_2-3 + 314, ctga, -58.2 );
setEffRotateKey( spep_2-3 + 316, ctga, -45.6 );
setEffRotateKey( spep_2-3 + 318, ctga, -33.2 );
setEffRotateKey( spep_2-2 + 346, ctga, -33.2 );

setEffAlphaKey( spep_2-3 + 314, ctga, 255 );
setEffAlphaKey( spep_2-2 + 346, ctga, 255 );

--SE
setSeVolume( spep_2 + 103, 1143, 0);
setSeVolume( spep_2 + 104, 1143, 28 );
setSeVolume( spep_2 + 105, 1143, 56 );
se_1042 = playSe( spep_2 + 102, 1042 );
setSeVolume( spep_2 + 102, 1042, 63 );
se_1121 = playSe( spep_2 + 111, 1121 );
setSeVolume( spep_2 + 111, 1121, 0 );
setSeVolume( spep_2 + 147, 1121, 0 );
setSeVolume( spep_2 + 148, 1121, 13.17 );
setSeVolume( spep_2 + 149, 1121, 26.33 );
setSeVolume( spep_2 + 150, 1121, 39.50 );
setSeVolume( spep_2 + 151, 1121, 52.67 );
setSeVolume( spep_2 + 152, 1121, 65.83 );
setSeVolume( spep_2 + 153, 1121, 79.00 );
setSeVolume( spep_2 + 154, 1121, 92.17 );
setSeVolume( spep_2 + 155, 1121, 105.33 );
setSeVolume( spep_2 + 156, 1121, 118.5 );
setSeVolume( spep_2 + 157, 1121, 131.67 );
setSeVolume( spep_2 + 158, 1121, 144.83 );
setSeVolume( spep_2 + 159, 1121, 158 );
se_1183 = playSe( spep_2 + 111, 1183 );
setSeVolume( spep_2 + 111, 1183, 0 );
setSeVolume( spep_2 + 112, 1183, 2.2 );
setSeVolume( spep_2 + 113, 1183, 4.4 );
setSeVolume( spep_2 + 114, 1183, 6.59 );
setSeVolume( spep_2 + 115, 1183, 8.79 );
setSeVolume( spep_2 + 116, 1183, 10.99 );
setSeVolume( spep_2 + 117, 1183, 13.19 );
setSeVolume( spep_2 + 118, 1183, 15.38 );
setSeVolume( spep_2 + 119, 1183, 17.58 );
setSeVolume( spep_2 + 120, 1183, 19.78 );
setSeVolume( spep_2 + 121, 1183, 21.98 );
setSeVolume( spep_2 + 122, 1183, 24.17 );
setSeVolume( spep_2 + 123, 1183, 26.37 );
setSeVolume( spep_2 + 124, 1183, 28.57 );
setSeVolume( spep_2 + 125, 1183, 30.77 );
setSeVolume( spep_2 + 126, 1183, 32.96 );
setSeVolume( spep_2 + 127, 1183, 35.16 );
setSeVolume( spep_2 + 128, 1183, 37.36 );
setSeVolume( spep_2 + 129, 1183, 39.56 );
setSeVolume( spep_2 + 130, 1183, 41.75 );
setSeVolume( spep_2 + 131, 1183, 43.95 );
setSeVolume( spep_2 + 132, 1183, 46.15 );
setSeVolume( spep_2 + 133, 1183, 48.35 );
setSeVolume( spep_2 + 134, 1183, 50.54 );
setSeVolume( spep_2 + 135, 1183, 52.74 );
setSeVolume( spep_2 + 136, 1183, 54.94 );
setSeVolume( spep_2 + 137, 1183, 57.14 );
setSeVolume( spep_2 + 138, 1183, 59.33 );
setSeVolume( spep_2 + 139, 1183, 61.53 );
setSeVolume( spep_2 + 140, 1183, 63.73 );
setSeVolume( spep_2 + 141, 1183, 65.93 );
setSeVolume( spep_2 + 142, 1183, 68.12 );
setSeVolume( spep_2 + 143, 1183, 70.32 );
setSeVolume( spep_2 + 144, 1183, 72.52 );
setSeVolume( spep_2 + 145, 1183, 74.72 );
setSeVolume( spep_2 + 146, 1183, 76.91 );
setSeVolume( spep_2 + 147, 1183, 79.11 );
setSeVolume( spep_2 + 148, 1183, 81.31 );
setSeVolume( spep_2 + 149, 1183, 83.51 );
setSeVolume( spep_2 + 150, 1183, 85.70 );
setSeVolume( spep_2 + 151, 1183, 87.90 );
setSeVolume( spep_2 + 152, 1183, 90.10 );
setSeVolume( spep_2 + 153, 1183, 92.30 );
setSeVolume( spep_2 + 154, 1183, 94.49 );
setSeVolume( spep_2 + 155, 1183, 96.69 );
setSeVolume( spep_2 + 156, 1183, 98.89 );
setSeVolume( spep_2 + 157, 1183, 101.09 );
setSeVolume( spep_2 + 158, 1183, 103.28 );
setSeVolume( spep_2 + 159, 1183, 105.48 );
setSeVolume( spep_2 + 160, 1183, 107.68 );
setSeVolume( spep_2 + 161, 1183, 109.88 );
setSeVolume( spep_2 + 162, 1183, 112.07 );
setSeVolume( spep_2 + 163, 1183, 114.27 );
setSeVolume( spep_2 + 164, 1183, 116.47 );
setSeVolume( spep_2 + 165, 1183, 118.67 );
setSeVolume( spep_2 + 166, 1183, 120.86 );
setSeVolume( spep_2 + 167, 1183, 123.06 );
setSeVolume( spep_2 + 168, 1183, 125.26 );
setSeVolume( spep_2 + 169, 1183, 127.46 );
setSeVolume( spep_2 + 170, 1183, 129.65 );
setSeVolume( spep_2 + 171, 1183, 131.85 );
setSeVolume( spep_2 + 172, 1183, 134.05 );
setSeVolume( spep_2 + 173, 1183, 136.25 );
setSeVolume( spep_2 + 174, 1183, 138.44 );
setSeVolume( spep_2 + 175, 1183, 140.64 );
setSeVolume( spep_2 + 176, 1183, 142.84 );
setSeVolume( spep_2 + 177, 1183, 145.04 );
setSeVolume( spep_2 + 178, 1183, 147.23 );
setSeVolume( spep_2 + 179, 1183, 149.43 );
setSeVolume( spep_2 + 180, 1183, 151.63 );
setSeVolume( spep_2 + 181, 1183, 153.83 );
setSeVolume( spep_2 + 182, 1183, 156.02 );
setSeVolume( spep_2 + 183, 1183, 158.22 );
setSeVolume( spep_2 + 184, 1183, 160.42 );
setSeVolume( spep_2 + 185, 1183, 162.62 );
setSeVolume( spep_2 + 186, 1183, 164.81 );
setSeVolume( spep_2 + 187, 1183, 167.01 );
setSeVolume( spep_2 + 188, 1183, 169.21 );
setSeVolume( spep_2 + 189, 1183, 171.41 );
setSeVolume( spep_2 + 190, 1183, 173.6 );
setSeVolume( spep_2 + 191, 1183, 175.8 );
setSeVolume( spep_2 + 192, 1183, 178 );
playSe( spep_2 + 156, 1072 );
playSe( spep_2 + 176, 1182 );
setSeVolume( spep_2 + 176, 1182, 0 );
setSeVolume( spep_2 + 186, 1182, 0 );
setSeVolume( spep_2 + 187, 1182, 8.33 );
setSeVolume( spep_2 + 188, 1182, 16.67 );
setSeVolume( spep_2 + 189, 1182, 25 );
setSeVolume( spep_2 + 190, 1182, 33.33 );
setSeVolume( spep_2 + 191, 1182, 41.67 );
setSeVolume( spep_2 + 192, 1182, 50 );
setSeVolume( spep_2 + 193, 1182, 58.33 );
setSeVolume( spep_2 + 194, 1182, 66.67 );
setSeVolume( spep_2 + 195, 1182, 75.00 );
setSeVolume( spep_2 + 196, 1182, 83.33 );
setSeVolume( spep_2 + 197, 1182, 91.67 );
setSeVolume( spep_2 + 198, 1182, 100 );
playSe( spep_2 + 245, 1232 );
setSeVolume( spep_2 + 245, 1232, 63 );
playSe( spep_2 + 248, 1003 );
setSeVolume( spep_2 + 248, 1003, 126 );
playSe( spep_2 + 254, 1110 );
playSe( spep_2 + 260, 1009 );
setSeVolume( spep_2 + 260, 1009, 89 );
playSe( spep_2 + 262, 1110 );
setSeVolume( spep_2 + 262, 1110, 79 );
playSe( spep_2 + 270, 1012 );
se_1110 = playSe( spep_2 + 270, 1110 );
setSeVolume( spep_2 + 270, 1110, 63 );
playSe( spep_2 + 277, 1000 );
setSeVolume( spep_2 + 277, 1000, 89 );
playSe( spep_2 + 282, 1110 );
setSeVolume( spep_2 + 282, 1110, 63 );
playSe( spep_2 + 284, 1010 );
setSeVolume( spep_2 + 284, 1010, 112 );
playSe( spep_2 + 284, 1189 );
setSeVolume( spep_2 + 284, 1189, 50 );
playSe( spep_2 + 293, 1000 );
playSe( spep_2 + 314, 1004 );
se_1190 = playSe( spep_2 + 325, 1190 );
se_1182 = playSe( spep_2 + 325, 1182 );
playSe( spep_2 + 325, 1110 );
se_1183 = playSe( spep_2 + 334, 1183 );
setSeVolume( spep_2 + 334, 1183, 0 );
setSeVolume( spep_2 + 362, 1183, 0 );
setSeVolume( spep_2 + 363, 1183, 11.29 );
setSeVolume( spep_2 + 364, 1183, 22.57 );
setSeVolume( spep_2 + 365, 1183, 33.86 );
setSeVolume( spep_2 + 366, 1183, 45.14 );
setSeVolume( spep_2 + 367, 1183, 56.43 );
setSeVolume( spep_2 + 368, 1183, 67.71 );
setSeVolume( spep_2 + 369, 1183, 79 );
setSeVolume( spep_2 + 370, 1183, 90.29 );
setSeVolume( spep_2 + 371, 1183, 101.57 );
setSeVolume( spep_2 + 372, 1183, 112.86 );
setSeVolume( spep_2 + 373, 1183, 124.14 );
setSeVolume( spep_2 + 374, 1183, 135.43 );
setSeVolume( spep_2 + 375, 1183, 146.71 );
setSeVolume( spep_2 + 376, 1183, 158 );
se_1190 = playSe( spep_2 + 381, 1190 );
setSeVolume( spep_2 + 325, 1190, 79 );
se_1182 = playSe( spep_2 + 381, 1182 );
setSeVolume( spep_2 + 381, 1182, 200 );
setSeVolume( spep_2 + 325, 1182, 158 );
playSe( spep_2 + 381, 1110 );
setSeVolume( spep_2 + 381, 1110, 112 );
playSe( spep_2 + 381, 1047 );
playSe( spep_2 + 385, 1001 );
se_1116 = playSe( spep_2 + 419, 1116 );
se_1128 = playSe( spep_2 + 442, 1128 );
setSeVolume( spep_2 + 442, 1128, 0 );
setSeVolume( spep_2 + 458, 1128, 0 );
setSeVolume( spep_2 + 459, 1128, 0.51 );
setSeVolume( spep_2 + 460, 1128, 1.02 );
setSeVolume( spep_2 + 461, 1128, 1.53 );
setSeVolume( spep_2 + 462, 1128, 2.04 );
setSeVolume( spep_2 + 463, 1128, 2.55 );
setSeVolume( spep_2 + 464, 1128, 3.06 );
setSeVolume( spep_2 + 465, 1128, 3.57 );
setSeVolume( spep_2 + 466, 1128, 4.08 );
setSeVolume( spep_2 + 467, 1128, 4.59 );
setSeVolume( spep_2 + 468, 1128, 5.10 );
setSeVolume( spep_2 + 469, 1128, 5.61 );
setSeVolume( spep_2 + 470, 1128, 6.12 );
setSeVolume( spep_2 + 471, 1128, 6.63 );
setSeVolume( spep_2 + 472, 1128, 7.14 );
setSeVolume( spep_2 + 473, 1128, 7.65 );
setSeVolume( spep_2 + 474, 1128, 8.16 );
setSeVolume( spep_2 + 475, 1128, 8.67 );
setSeVolume( spep_2 + 476, 1128, 9.18 );
setSeVolume( spep_2 + 477, 1128, 9.69 );
setSeVolume( spep_2 + 478, 1128, 10.2 );
setSeVolume( spep_2 + 479, 1128, 10.71 );
setSeVolume( spep_2 + 480, 1128, 11.22 );
setSeVolume( spep_2 + 481, 1128, 11.73 );
setSeVolume( spep_2 + 482, 1128, 12.24 );
setSeVolume( spep_2 + 483, 1128, 12.76 );
setSeVolume( spep_2 + 484, 1128, 13.27 );
setSeVolume( spep_2 + 485, 1128, 13.78 );
setSeVolume( spep_2 + 486, 1128, 14.29 );
setSeVolume( spep_2 + 487, 1128, 14.8 );
setSeVolume( spep_2 + 488, 1128, 15.31 );
setSeVolume( spep_2 + 489, 1128, 15.82 );
setSeVolume( spep_2 + 490, 1128, 16.33 );
setSeVolume( spep_2 + 491, 1128, 16.84 );
setSeVolume( spep_2 + 492, 1128, 17.35 );
setSeVolume( spep_2 + 493, 1128, 17.86 );
setSeVolume( spep_2 + 494, 1128, 18.37 );
setSeVolume( spep_2 + 495, 1128, 18.88 );
setSeVolume( spep_2 + 496, 1128, 19.39 );
setSeVolume( spep_2 + 497, 1128, 19.9 );
setSeVolume( spep_2 + 498, 1128, 20.41 );
setSeVolume( spep_2 + 499, 1128, 20.92 );
setSeVolume( spep_2 + 500, 1128, 21.43 );
setSeVolume( spep_2 + 501, 1128, 21.94 );
setSeVolume( spep_2 + 502, 1128, 22.45 );
setSeVolume( spep_2 + 503, 1128, 22.96 );
setSeVolume( spep_2 + 504, 1128, 23.47 );
setSeVolume( spep_2 + 505, 1128, 23.98 );
setSeVolume( spep_2 + 506, 1128, 24.49 );
setSeVolume( spep_2 + 507, 1128, 25 );
playSe( spep_2 + 454, 1209 );
setSeVolume( spep_2 + 454, 1209, 56 );
playSe( spep_2 + 454, 1109 );
setSeVolume( spep_2 + 454, 1109, 79 );
se_1119 = playSe( spep_2 + 454, 1119 );
setSeVolume( spep_2 + 454, 1119, 32 );
se_1210 = playSe( spep_2 + 454, 1210 );

playSe( spep_2 -20 + 575, 1223 );
playSe( spep_2 -20 + 575, 1027 );
playSe( spep_2 -20 + 575, 1022 );
setSeVolume( spep_2 -20 + 575, 1022, 126 );

playSe( spep_2 -10 + 657, 1024 );
playSe( spep_2 -10 + 657, 1156 );
playSe( spep_2 -10 + 657, 1159 );
setSeVolume( spep_2 -10 + 657, 1159, 71 );
playSe( spep_2 -10 + 707, 1023 );

stopSe( spep_2 + 89, se_0063, 45 );
stopSe( spep_2 + 90, se_0044, 32 );
stopSe( spep_2 + 113, se_1042, 36 );
stopSe( spep_2 + 199, se_1121, 11 );
stopSe( spep_2 + 199, se_1183, 10 );
stopSe( spep_2 + 282, se_1110, 0 );
stopSe( spep_2 + 350, se_1190, 21 );
stopSe( spep_2 + 332, se_1182, 14 );
stopSe( spep_2 + 391, se_1183, 0 );
stopSe( spep_2 + 406, se_1190, 21 );
stopSe( spep_2 + 388, se_1182, 14 );
stopSe( spep_2 + 441, se_1116, 26 );
stopSe( spep_2 + 579, se_1128, 0 );
stopSe( spep_2 + 502, se_1119, 0 );
stopSe( spep_2 + 576, se_1210, 0 );

--終わり
dealDamage( spep_2 + 646 );
endPhase( spep_2 + 774 );

end