--1019100:バーダックチーム_大猿大進撃
--sp_effect_b4_00137

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
SP_01=	155128	;--	ナビラッシュ
SP_02=	155129	;--	皆でボッコボコ・手前
SP_03=	155130	;--	皆でボッコボコ・奥


--エフェクト(敵)
SP_01x=	155128	;--	ナビラッシュ	
SP_02x=	155131	;--	皆でボッコボコ・手前	(敵)
SP_03x=	155132	;--	皆でボッコボコ・奥	(敵)

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
-- ナビラッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 260, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 260, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 260, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 260, rush, 255 );

--顔カットイン
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0-12 + 140  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 142,  906, 116, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 142, shuchusen1, 116, 20 );
setEffMoveKey( spep_0-3 + 142, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 258, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 142, shuchusen1, 1.11, 2.32 );
setEffScaleKey( spep_0-3 + 258, shuchusen1, 1.11, 2.32 );

setEffRotateKey( spep_0-3 + 142, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 258, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 142, shuchusen1, 68 );
setEffAlphaKey( spep_0-3 + 144, shuchusen1, 136 );
setEffAlphaKey( spep_0-3 + 146, shuchusen1, 204 );
setEffAlphaKey( spep_0-3 + 258, shuchusen1, 204 );

--SE
playSe( spep_0 + 140, 1018 );--ごごご
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 0, 1072 );
se_1188 = playSe( spep_0 + 31, 1188 );
setSeVolume( spep_0 + 31, 1188, 0 );
setSeVolume( spep_0 + 34, 1188, 10 );
setSeVolume( spep_0 + 35, 1188, 20 );
setSeVolume( spep_0 + 36, 1188, 30 );
setSeVolume( spep_0 + 37, 1188, 40 );
setSeVolume( spep_0 + 38, 1188, 50 );
setSeVolume( spep_0 + 39, 1188, 60 );
setSeVolume( spep_0 + 40, 1188, 70 );
setSeVolume( spep_0 + 41, 1188, 80 );
setSeVolume( spep_0 + 42, 1188, 90 );
setSeVolume( spep_0 + 42, 1188, 100 );
se_1062 = playSe( spep_0 + 43, 1062 );
setSeVolume( spep_0 + 43, 1062, 0 );
setSeVolume( spep_0 + 58, 1062, 16.6 );
setSeVolume( spep_0 + 59, 1062, 33.2 );
setSeVolume( spep_0 + 60, 1062, 50 );
se_1190 = playSe( spep_0 + 52, 1190 );
setSeVolume( spep_0 + 52, 1190, 7.1 );
setSeVolume( spep_0 + 53, 1190, 14.2 );
setSeVolume( spep_0 + 54, 1190, 21.3 );
setSeVolume( spep_0 + 55, 1190, 28.4 );
setSeVolume( spep_0 + 56, 1190, 35.5 );
setSeVolume( spep_0 + 57, 1190, 42.6 );
setSeVolume( spep_0 + 58, 1190, 49.7 );
setSeVolume( spep_0 + 59, 1190, 56.8 );
setSeVolume( spep_0 + 60, 1190, 63.9 );
setSeVolume( spep_0 + 61, 1190, 71 );
setSeVolume( spep_0 + 62, 1190, 78.1 );
setSeVolume( spep_0 + 63, 1190, 85.2 );
setSeVolume( spep_0 + 64, 1190, 92.3 );
setSeVolume( spep_0 + 65, 1190, 100 );
playSe( spep_0 + 57, 1003 );
setSeVolume( spep_0 + 57, 1003, 112 );
se_1116 = playSe( spep_0 + 90, 1116 );
playSe( spep_0 + 93, 1004 );
setSeVolume( spep_0 + 93, 1004, 63 );
playSe( spep_0 + 111, 1025 );
setSeVolume( spep_0 + 111, 1025, 12.6 );
setSeVolume( spep_0 + 112, 1025, 25.2 );
setSeVolume( spep_0 + 113, 1025, 37.8 );
setSeVolume( spep_0 + 114, 1025, 50.4 );
setSeVolume( spep_0 + 115, 1025, 63 );
setSeVolume( spep_0 + 116, 1025, 75.6 );
setSeVolume( spep_0 + 117, 1025, 88.2 );
setSeVolume( spep_0 + 118, 1025, 100.8 );
setSeVolume( spep_0 + 119, 1025, 113.4 );
setSeVolume( spep_0 + 120, 1025, 126 );
se_1067 = playSe( spep_0 + 143, 1067 );
setSeVolume( spep_0 + 143, 1067, 79 );
se_1125 = playSe( spep_0 + 178, 1125 );
setSeVolume( spep_0 + 178, 1125, 141 );
se_1024 = playSe( spep_0 + 179, 1024 );
setSeVolume( spep_0 + 179, 1024, 89 );
SE0=playSe( spep_0 + 209, 1072 );
se_1167 = playSe( spep_0 + 219, 1167 );
setSeVolume( spep_0 + 219, 1167, 40 );
se_11161 = playSe( spep_0 + 224, 1116 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 262, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 240; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1125, 0 );
    stopSe( SP_dodge - 12, se_1024, 0 );
    stopSe( SP_dodge - 12, se_1167, 0 );
    stopSe( SP_dodge - 12, se_11161, 0 );


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
stopSe( spep_0 + 57, se_1188, 33 );
stopSe( spep_0 + 79, se_1062, 31 );
stopSe( spep_0 + 74, se_1190, 22 );
stopSe( spep_0 + 112, se_1116, 13 );
stopSe( spep_0 + 240, se_1024, 28 );
stopSe( spep_0 + 257, se_11161, 11 );

--白フェード
entryFade( spep_0 + 252, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+260;

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

stopSe( spep_1 + 8, se_1067, 0 );
stopSe( spep_1 + 1, se_1125, 7 );
stopSe( spep_1 + 8, se_1167, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- 皆でボッコボコ・手前
------------------------------------------------------
-- ** エフェクト等 ** --
bokoboko_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bokoboko_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 630, bokoboko_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, bokoboko_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 630, bokoboko_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bokoboko_f, 0 );
setEffRotateKey( spep_2 + 630, bokoboko_f, 0 );
setEffAlphaKey( spep_2 + 0, bokoboko_f, 255 );
setEffAlphaKey( spep_2 + 630, bokoboko_f, 255 );

-- ** エフェクト等 ** --
bokoboko_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bokoboko_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 630, bokoboko_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, bokoboko_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 630, bokoboko_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bokoboko_b, 0 );
setEffRotateKey( spep_2 + 630, bokoboko_b, 0 );
setEffAlphaKey( spep_2 + 0, bokoboko_b, 255 );
setEffAlphaKey( spep_2 + 630, bokoboko_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -1 + 88, 1, 0 );
setDisp( spep_2 -1 + 146, 1, 1 );
setDisp( spep_2 -1 + 171, 1, 0 );
setDisp( spep_2 -1 + 173, 1, 1 );
setDisp( spep_2 -1 + 198, 1, 0 );
setDisp( spep_2 -1 + 241, 1, 1 );
setDisp( spep_2 -1 + 263, 1, 0 );
setDisp( spep_2 -1 + 292, 1, 1 );
setDisp( spep_2 -1 + 307, 1, 0 );
setDisp( spep_2 -1 + 394, 1, 1 );
setDisp( spep_2 -1 + 409, 1, 0 );
setDisp( spep_2 -1 + 434, 1, 1 );
setDisp( spep_2 -1 + 494, 1, 0 );


changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2-3 + 30, 1, 107 );
changeAnime( spep_2-3 + 70, 1, 105 );
changeAnime( spep_2-3 + 172, 1, 8 );
changeAnime( spep_2-3 + 188, 1, 6 );
changeAnime( spep_2-3 + 260, 1, 108 );
changeAnime( spep_2-3 + 294, 1, 105 );
changeAnime( spep_2-3 + 392, 1, 106 );


setMoveKey( spep_2-3 + 0, 1, 123.6, -89.3 , 0 );
setMoveKey( spep_2-3 + 2, 1, 129, -96.2 , 0 );
setMoveKey( spep_2-3 + 4, 1, 134.5, -103.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 139.9, -110 , 0 );
setMoveKey( spep_2-3 + 8, 1, 145.5, -117 , 0 );
setMoveKey( spep_2-3 + 10, 1, 150.9, -123.9 , 0 );
setMoveKey( spep_2-3 + 12, 1, 156.4, -130.8 , 0 );
setMoveKey( spep_2-3 + 14, 1, 161.9, -137.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 167.3, -144.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 172.8, -151.6 , 0 );
setMoveKey( spep_2-3 + 20, 1, 178.2, -158.4 , 0 );
setMoveKey( spep_2-3 + 22, 1, 183.7, -165.4 , 0 );
setMoveKey( spep_2-3 + 24, 1, 189.2, -172.3 , 0 );
setMoveKey( spep_2-3 + 26, 1, 194.7, -179.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, 200.2, -186.1 , 0 );
setMoveKey( spep_2-3 + 29, 1, 200.2, -186.1 , 0 );

setMoveKey( spep_2-3 + 30, 1, 131.1, -222.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 113.2, -180.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, 82.1, -160.4 , 0 );
setMoveKey( spep_2-3 + 36, 1, 65.3, -129.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 34.5, -115.8 , 0 );
setMoveKey( spep_2-3 + 40, 1, 9.5, -66.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 2.1, -76.4 , 0 );
setMoveKey( spep_2-3 + 44, 1, 18.9, -79 , 0 );
setMoveKey( spep_2-3 + 46, 1, 20.1, -94.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 29.5, -93.8 , 0 );
setMoveKey( spep_2-3 + 50, 1, 31.1, -105.7 , 0 );
setMoveKey( spep_2-3 + 52, 1, 40.9, -110 , 0 );
setMoveKey( spep_2-3 + 54, 1, 46.8, -118.4 , 0 );
setMoveKey( spep_2-3 + 56, 1, 52.8, -127 , 0 );
setMoveKey( spep_2-3 + 58, 1, 58.9, -135.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 65.1, -144.7 , 0 );
setMoveKey( spep_2-3 + 62, 1, 71.3, -153.6 , 0 );
setMoveKey( spep_2-3 + 64, 1, 77.4, -162.6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 83.5, -171.4 , 0 );
setMoveKey( spep_2-3 + 68, 1, 89.5, -180.1 , 0 );
setMoveKey( spep_2-3 + 69, 1, 89.5, -180.1 , 0 );

setMoveKey( spep_2-3 + 70, 1, -142.8, -255.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, -101.5, -167.9 , 0 );
setMoveKey( spep_2-3 + 74, 1, -58.4, -76.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, -13.8, 19 , 0 );
setMoveKey( spep_2-3 + 78, 1, -11.5, 26.4 , 0 );
setMoveKey( spep_2-3 + 80, 1, -8.9, 34.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, -6.2, 42.2 , 0 );
setMoveKey( spep_2-3 + 84, 1, -3.4, 50.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, -0.4, 59.2 , 0 );
setMoveKey( spep_2-3 + 88, 1, 2.7, 68.2 , 0 );

setMoveKey( spep_2-3 + 148, 1, -217.2, 106.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, -220.5, 103.4 , 0 );
setMoveKey( spep_2-3 + 152, 1, -223.7, 100.1 , 0 );
setMoveKey( spep_2-3 + 154, 1, -226.8, 96.9 , 0 );
setMoveKey( spep_2-3 + 156, 1, -229.7, 94 , 0 );
setMoveKey( spep_2-3 + 158, 1, -232.3, 91.3 , 0 );
setMoveKey( spep_2-3 + 160, 1, -234.4, 89 , 0 );
setMoveKey( spep_2-3 + 162, 1, -235.9, 87.3 , 0 );
setMoveKey( spep_2-3 + 164, 1, -236.8, 86.1 , 0 );
setMoveKey( spep_2-3 + 166, 1, -236.8, 85.6 , 0 );
setMoveKey( spep_2-3 + 168, 1, -236, 86 , 0 );
setMoveKey( spep_2-3 + 170, 1, -234.1, 87.1 , 0 );
setMoveKey( spep_2-3 + 171, 1, -234.1, 87.1 , 0 );

setMoveKey( spep_2-3 + 172, 1, 527.8, 426.5 , 0 );
setMoveKey( spep_2-3 + 174, 1, 501, 390.3 , 0 );
setMoveKey( spep_2-3 + 176, 1, 453.9, 337.1 , 0 );
setMoveKey( spep_2-3 + 178, 1, 387, 267.5 , 0 );
setMoveKey( spep_2-3 + 180, 1, 300.7, 182.3 , 0 );
setMoveKey( spep_2-3 + 182, 1, 195.6, 82 , 0 );
setMoveKey( spep_2-3 + 184, 1, 72.1, -32.8 , 0 );
setMoveKey( spep_2-3 + 186, 1, -69.2, -161.3 , 0 );
setMoveKey( spep_2-3 + 187, 1, -69.2, -161.3 , 0 );

setMoveKey( spep_2-3 + 188, 1, -120.5, -88.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, -216.7, -22 , 0 );
setMoveKey( spep_2-3 + 192, 1, -305.5, 26.1 , 0 );
setMoveKey( spep_2-3 + 194, 1, -375.2, 92.3 , 0 );
setMoveKey( spep_2-3 + 196, 1, -450.3, 136.5 , 0 );
setMoveKey( spep_2-3 + 198, 1, -490.8, 182.8 , 0 );
setMoveKey( spep_2-3 + 200, 1, -537.3, 211.5 , 0 );
setMoveKey( spep_2-3 + 202, 1, -565.9, 250.4 , 0 );
setMoveKey( spep_2-3 + 204, 1, -593.1, 267.8 , 0 );
setMoveKey( spep_2-3 + 206, 1, -603.1, 295.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, -608.2, 310.3 , 0 );
setMoveKey( spep_2-3 + 210, 1, -604.7, 319.6 , 0 );

setMoveKey( spep_2-3 + 238, 1, 1186.7, -892.1 , 0 );
setMoveKey( spep_2-3 + 240, 1, 969.3, -705 , 0 );
setMoveKey( spep_2-3 + 242, 1, 774.5, -537.7 , 0 );
setMoveKey( spep_2-3 + 244, 1, 602, -389.6 , 0 );
setMoveKey( spep_2-3 + 246, 1, 451.2, -260.4 , 0 );
setMoveKey( spep_2-3 + 248, 1, 321.9, -149.8 , 0 );
setMoveKey( spep_2-3 + 250, 1, 213.5, -57.4 , 0 );
setMoveKey( spep_2-3 + 252, 1, 125.6, 17.3 , 0 );
setMoveKey( spep_2-3 + 254, 1, 98.9, 46.3 , 0 );
setMoveKey( spep_2-3 + 256, 1, 77.5, 69 , 0 );
setMoveKey( spep_2-3 + 258, 1, 61.5, 85.4 , 0 );
setMoveKey( spep_2-3 + 259, 1, 61.5, 85.4 , 0 );

setMoveKey( spep_2-3 + 260, 1, 129, 151.5 , 0 );
setMoveKey( spep_2-3 + 262, 1, 303.4, 267.8 , 0 );
setMoveKey( spep_2-3 + 264, 1, 451.9, 367.3 , 0 );
setMoveKey( spep_2-3 + 266, 1, 570.9, 426.3 , 0 );
setMoveKey( spep_2-3 + 268, 1, 673.1, 517.2 , 0 );
setMoveKey( spep_2-3 + 270, 1, 731, 564.4 , 0 );
setMoveKey( spep_2-3 + 272, 1, 797.1, 604.1 , 0 );
setMoveKey( spep_2-3 + 274, 1, 820.1, 608.9 , 0 );

setMoveKey( spep_2-3 + 294, 1, 80.9, -502.6 , 0 );
setMoveKey( spep_2-3 + 296, 1, 63.5, -353.4 , 0 );
setMoveKey( spep_2-3 + 298, 1, 48.7, -230 , 0 );
setMoveKey( spep_2-3 + 300, 1, 36.3, -131.7 , 0 );
setMoveKey( spep_2-3 + 302, 1, 26.3, -57.8 , 0 );
setMoveKey( spep_2-3 + 304, 1, 18.6, -7.3 , 0 );
setMoveKey( spep_2-3 + 306, 1, 13.2, 20.4 , 0 );

setMoveKey( spep_2-3 + 392, 1, 25.3, 177.1 , 0 );
setMoveKey( spep_2-3 + 394, 1, 6.3, 55.6 , 0 );
setMoveKey( spep_2-3 + 396, 1, 19.5, -44.4 , 0 );
setMoveKey( spep_2-3 + 398, 1, 8.9, -163 , 0 );
setMoveKey( spep_2-3 + 400, 1, 14.5, -244.3 , 0 );
setMoveKey( spep_2-3 + 402, 1, 12.4, -336.3 , 0 );
setMoveKey( spep_2-3 + 404, 1, 10.6, -423 , 0 );
setMoveKey( spep_2-3 + 406, 1, 9, -504.6 , 0 );
setMoveKey( spep_2-3 + 408, 1, 7.7, -581.2 ,0);
setMoveKey( spep_2-3 + 410, 1, 6.6, -652.7 , 0 );
setMoveKey( spep_2-3 + 412, 1, 5.8, -719.3 , 0 );
setMoveKey( spep_2-3 + 414, 1, 5.1, -781 , 0 );
setMoveKey( spep_2-3 + 416, 1, 4.6, -837.7 , 0 );
setMoveKey( spep_2-3 + 418, 1, 4.4, -889.6 , 0 );

setMoveKey( spep_2-3 + 432, 1, 34.5, 920.3 , 0 );
setMoveKey( spep_2-3 + 434, 1, 38.3, 765.9 , 0 );
setMoveKey( spep_2-3 + 436, 1, 42.2, 610 , 0 );
setMoveKey( spep_2-3 + 438, 1, 46.3, 452.4 , 0 );
setMoveKey( spep_2-3 + 440, 1, 50.6, 292.9 , 0 );
setMoveKey( spep_2-3 + 442, 1, 55, 131.9 , 0 );
setMoveKey( spep_2-3 + 444, 1, 59.4, -34.1 , 0 );
setMoveKey( spep_2-3 + 446, 1, 63.9, -200.7 , 0 );
setMoveKey( spep_2-3 + 447, 1, 63.9, -200.7 , 0 );

setMoveKey( spep_2-3 + 448, 1, 31.4, -219.4 , 0 );
setMoveKey( spep_2-3 + 450, 1, 31.5, -206.8 , 0 );
setMoveKey( spep_2-3 + 452, 1, 31.6, -195.5 , 0 );
setMoveKey( spep_2-3 + 454, 1, 27.6, -193.3 , 0 );
setMoveKey( spep_2-3 + 456, 1, 31.7, -176.4 , 0 );
setMoveKey( spep_2-3 + 458, 1, 22.3, -185.3 , 0 );
setMoveKey( spep_2-3 + 460, 1, 28.9, -188.3 , 0 );
setMoveKey( spep_2-3 + 462, 1, 23.6, -201.2 , 0 );
setMoveKey( spep_2-3 + 464, 1, 26.2, -207.8 , 0 );
setMoveKey( spep_2-3 + 466, 1, 16.8, -224 , 0 );
setMoveKey( spep_2-3 + 468, 1, 23.5, -215.3 , 0 );
setMoveKey( spep_2-3 + 470, 1, 18.1, -216.4 , 0 );
setMoveKey( spep_2-3 + 472, 1, 20.8, -211 , 0 );
setMoveKey( spep_2-3 + 474, 1, 15.4, -220.1 , 0 );
setMoveKey( spep_2-3 + 476, 1, 18, -221 , 0 );
setMoveKey( spep_2-3 + 478, 1, 18.8, -222.9 , 0 );
setMoveKey( spep_2-3 + 480, 1, 19.6, -224.7 , 0 );
setMoveKey( spep_2-3 + 482, 1, 20.5, -223.5 , 0 );
setMoveKey( spep_2-3 + 484, 1, 21.3, -222.2 , 0 );
setMoveKey( spep_2-3 + 486, 1, 22.1, -220.9 , 0 );
setMoveKey( spep_2-3 + 488, 1, 22.9, -219.5 , 0 );
setMoveKey( spep_2-3 + 490, 1, 23.8, -218.3 , 0 );
setMoveKey( spep_2-3 + 492, 1, 24.6, -216.9 , 0 );
setMoveKey( spep_2-1 + 494, 1, 25.4, -215.7 , 0 );


setScaleKey( spep_2-3 + 0, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 2, 1, 0.55, 0.55 );
setScaleKey( spep_2-3 + 4, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 8, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 10, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 12, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 14, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 16, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 18, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 20, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_2-3 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 26, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 28, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 29, 1, 0.78, 0.78 );

setScaleKey( spep_2-3 + 30, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 32, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 34, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 36, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 38, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 40, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 42, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 44, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 46, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 50, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 52, 1, 0.73, 0.73 );
setScaleKey( spep_2-3 + 54, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 56, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 58, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 60, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 62, 1, 1.03, 1.03 );
setScaleKey( spep_2-3 + 64, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 66, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 68, 1, 1.21, 1.21 );
setScaleKey( spep_2-3 + 69, 1, 1.21, 1.21 );

setScaleKey( spep_2-3 + 70, 1, 4.63, 4.63 );
setScaleKey( spep_2-3 + 72, 1, 3.5, 3.5 );
setScaleKey( spep_2-3 + 74, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 76, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 78, 1, 1, 1 );
setScaleKey( spep_2-3 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 82, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 84, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 86, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 88, 1, 0.5, 0.5 );

setScaleKey( spep_2-3 + 148, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 150, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 152, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 154, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 156, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 158, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 160, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 162, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 164, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 166, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 168, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 170, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 171, 1, 0.09, 0.09 );

setScaleKey( spep_2-3 + 172, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 174, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 176, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 178, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 180, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 182, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 184, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 186, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 187, 1, 0.86, 0.86 );

setScaleKey( spep_2-3 + 188, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 190, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 192, 1, 0.88, 0.88 );
setScaleKey( spep_2-3 + 194, 1, 0.87, 0.87 );
setScaleKey( spep_2-3 + 196, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 198, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 200, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 202, 1, 0.83, 0.83 );
setScaleKey( spep_2-3 + 204, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 206, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 208, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 210, 1, 0.8, 0.8 );

setScaleKey( spep_2-3 + 238, 1, 6.56, 6.56 );
setScaleKey( spep_2-3 + 240, 1, 5.41, 5.41 );
setScaleKey( spep_2-3 + 242, 1, 4.38, 4.38 );
setScaleKey( spep_2-3 + 244, 1, 3.47, 3.47 );
setScaleKey( spep_2-3 + 246, 1, 2.68, 2.68 );
setScaleKey( spep_2-3 + 248, 1, 2, 2 );
setScaleKey( spep_2-3 + 250, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 252, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 254, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 256, 1, 0.72, 0.72 );
setScaleKey( spep_2-3 + 258, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 259, 1, 0.64, 0.64 );

setScaleKey( spep_2-3 + 260, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 262, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 264, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 266, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 268, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 270, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 272, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 274, 1, 0.65, 0.65 );

setScaleKey( spep_2-3 + 294, 1, 6.54, 6.54 );
setScaleKey( spep_2-3 + 296, 1, 4.82, 4.82 );
setScaleKey( spep_2-3 + 298, 1, 3.39, 3.39 );
setScaleKey( spep_2-3 + 300, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 302, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 304, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 306, 1, 0.37, 0.37 );


setScaleKey( spep_2-3 + 392, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 418, 1, 0.9, 0.9 );


setScaleKey( spep_2-3 + 432, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 434, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 436, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 438, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 440, 1, 0.94, 0.94 );
setScaleKey( spep_2-3 + 442, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 444, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 446, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 447, 1, 0.9, 0.9 );

setScaleKey( spep_2-3 + 448, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 450, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 456, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 458, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 460, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 462, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 464, 1, 1.03, 1.04 );
setScaleKey( spep_2-3 + 466, 1, 1.02, 1.02 );
setScaleKey( spep_2-3 + 468, 1, 1, 1 );
setScaleKey( spep_2-3 + 470, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 472, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 474, 1, 0.94, 0.94 );
setScaleKey( spep_2-3 + 476, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 478, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 480, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 486, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 488, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 492, 1, 0.9, 0.9 );
setScaleKey( spep_2-1 + 494, 1, 0.89, 0.89 );


setRotateKey( spep_2-3 + 0, 1, 0 );
setRotateKey( spep_2-3 + 28, 1, 0 );
setRotateKey( spep_2-3 + 29, 1, 0 );

setRotateKey( spep_2-3 + 30, 1, -4.7 );
setRotateKey( spep_2-3 + 32, 1, -4 );
setRotateKey( spep_2-3 + 34, 1, -3.2 );
setRotateKey( spep_2-3 + 36, 1, -2.3 );
setRotateKey( spep_2-3 + 38, 1, -1.4 );
setRotateKey( spep_2-3 + 40, 1, -0.4 );
setRotateKey( spep_2-3 + 42, 1, 0.7 );
setRotateKey( spep_2-3 + 44, 1, 1.8 );
setRotateKey( spep_2-3 + 46, 1, 3 );
setRotateKey( spep_2-3 + 48, 1, 4.3 );
setRotateKey( spep_2-3 + 50, 1, 5.6 );
setRotateKey( spep_2-3 + 52, 1, 7 );
setRotateKey( spep_2-3 + 54, 1, 8.5 );
setRotateKey( spep_2-3 + 56, 1, 10.1 );
setRotateKey( spep_2-3 + 58, 1, 11.7 );
setRotateKey( spep_2-3 + 60, 1, 13.4 );
setRotateKey( spep_2-3 + 62, 1, 15.2 );
setRotateKey( spep_2-3 + 64, 1, 17.1 );
setRotateKey( spep_2-3 + 66, 1, 19 );
setRotateKey( spep_2-3 + 68, 1, 21 );
setRotateKey( spep_2-3 + 69, 1, 21 );

setRotateKey( spep_2-3 + 70, 1, 19.7 );
setRotateKey( spep_2-3 + 72, 1, 19.7 );
setRotateKey( spep_2-3 + 74, 1, 19.6 );
setRotateKey( spep_2-3 + 80, 1, 19.6 );
setRotateKey( spep_2-3 + 82, 1, 19.7 );
setRotateKey( spep_2-3 + 88, 1, 19.7 );

setRotateKey( spep_2-3 + 148, 1, -84.6 );
setRotateKey( spep_2-3 + 171, 1, -84.6 );

setRotateKey( spep_2-3 + 172, 1, 0 );
setRotateKey( spep_2-3 + 174, 1, 0.1 );
setRotateKey( spep_2-3 + 176, 1, 0.3 );
setRotateKey( spep_2-3 + 178, 1, 0.4 );
setRotateKey( spep_2-3 + 180, 1, 0.6 );
setRotateKey( spep_2-3 + 182, 1, 0.7 );
setRotateKey( spep_2-3 + 184, 1, 0.9 );
setRotateKey( spep_2-3 + 186, 1, 1 );
setRotateKey( spep_2-3 + 187, 1, 1 );

setRotateKey( spep_2-3 + 188, 1, 1.1 );
setRotateKey( spep_2-3 + 190, 1, 1.3 );
setRotateKey( spep_2-3 + 192, 1, 1.4 );
setRotateKey( spep_2-3 + 194, 1, 1.6 );
setRotateKey( spep_2-3 + 196, 1, 1.7 );
setRotateKey( spep_2-3 + 198, 1, 1.9 );
setRotateKey( spep_2-3 + 200, 1, 2 );
setRotateKey( spep_2-3 + 202, 1, 2.1 );
setRotateKey( spep_2-3 + 204, 1, 2.3 );
setRotateKey( spep_2-3 + 206, 1, 2.4 );
setRotateKey( spep_2-3 + 208, 1, 2.6 );
setRotateKey( spep_2-3 + 210, 1, 2.7 );

setRotateKey( spep_2-3 + 238, 1, 0 );
setRotateKey( spep_2-3 + 258, 1, 0 );
setRotateKey( spep_2-3 + 259, 1, 0 );

setRotateKey( spep_2-3 + 260, 1, -21.2 );
setRotateKey( spep_2-3 + 274, 1, -21.2 );

setRotateKey( spep_2-3 + 294, 1, -16.4 );
setRotateKey( spep_2-3 + 296, 1, -13.6 );
setRotateKey( spep_2-3 + 298, 1, -11.3 );
setRotateKey( spep_2-3 + 300, 1, -9.3 );
setRotateKey( spep_2-3 + 302, 1, -7.8 );
setRotateKey( spep_2-3 + 304, 1, -6.7 );
setRotateKey( spep_2-3 + 306, 1, -6.1 );

setRotateKey( spep_2-3 + 392, 1, 39.3 );
setRotateKey( spep_2-3 + 394, 1, 45.2 );
setRotateKey( spep_2-3 + 396, 1, 50.9 );
setRotateKey( spep_2-3 + 398, 1, 56.2 );
setRotateKey( spep_2-3 + 400, 1, 61.4 );
setRotateKey( spep_2-3 + 402, 1, 66.2 );
setRotateKey( spep_2-3 + 404, 1, 70.8 );
setRotateKey( spep_2-3 + 406, 1, 75.2 );
setRotateKey( spep_2-3 + 408, 1, 79.2 );
setRotateKey( spep_2-3 + 410, 1, 83.1 );
setRotateKey( spep_2-3 + 412, 1, 86.6 );
setRotateKey( spep_2-3 + 414, 1, 89.9 );
setRotateKey( spep_2-3 + 416, 1, 93 );
setRotateKey( spep_2-3 + 418, 1, 95.8 );

setRotateKey( spep_2-3 + 432, 1, 81.5 );
setRotateKey( spep_2-3 + 434, 1, 83.9 );
setRotateKey( spep_2-3 + 436, 1, 86.2 );
setRotateKey( spep_2-3 + 438, 1, 88.5 );
setRotateKey( spep_2-3 + 440, 1, 90.8 );
setRotateKey( spep_2-3 + 442, 1, 93.1 );
setRotateKey( spep_2-3 + 444, 1, 95.5 );
setRotateKey( spep_2-3 + 446, 1, 97.8 );
setRotateKey( spep_2-3 + 447, 1, 97.8 );

setRotateKey( spep_2-3 + 448, 1, 27.4 );
setRotateKey( spep_2-1 + 494, 1, 27.4 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 90,  906, 20, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 90, shuchusen2, 20, 20 );
setEffMoveKey( spep_2-3 + 90, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 110, shuchusen2, 0, 0 , 0 )

setEffScaleKey( spep_2-3 + 90, shuchusen2, 1.21, 1.84 );
setEffScaleKey( spep_2-3 + 110, shuchusen2, 1.21, 1.84 );

setEffRotateKey( spep_2-3 + 90, shuchusen2, 0 );
setEffRotateKey( spep_2-3 + 110, shuchusen2, 0 );

setEffAlphaKey( spep_2-3 + 90, shuchusen2, 204 );
setEffAlphaKey( spep_2-3 + 102, shuchusen2, 204 );
setEffAlphaKey( spep_2-3 + 104, shuchusen2, 153 );
setEffAlphaKey( spep_2-3 + 106, shuchusen2, 102 );
setEffAlphaKey( spep_2-3 + 108, shuchusen2, 51 );
setEffAlphaKey( spep_2-3 + 110, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 260,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 260, shuchusen3, 32, 20 );
setEffMoveKey( spep_2-3 + 260, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 292, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 260, shuchusen3, 1.3, 1.84 );
setEffScaleKey( spep_2-3 + 292, shuchusen3, 1.3, 1.84 );

setEffRotateKey( spep_2-3 + 260, shuchusen3, 0 );
setEffRotateKey( spep_2-3 + 292, shuchusen3, 0 );

setEffAlphaKey( spep_2-3 + 260, shuchusen3, 204 );
setEffAlphaKey( spep_2-3 + 292, shuchusen3, 204 );

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 372,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 372, shuchusen4, 24, 20 );
setEffMoveKey( spep_2-3 + 372, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 396, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 372, shuchusen4, 1.19, 1.89 );
setEffScaleKey( spep_2-3 + 396, shuchusen4, 1.19, 1.89 );

setEffRotateKey( spep_2-3 + 372, shuchusen4, 0 );
setEffRotateKey( spep_2-3 + 396, shuchusen4, 0 );

setEffAlphaKey( spep_2-3 + 372, shuchusen4, 204 );
setEffAlphaKey( spep_2-3 + 384, shuchusen4, 204 );
setEffAlphaKey( spep_2-3 + 386, shuchusen4, 170 );
setEffAlphaKey( spep_2-3 + 388, shuchusen4, 136 );
setEffAlphaKey( spep_2-3 + 390, shuchusen4, 102 );
setEffAlphaKey( spep_2-3 + 392, shuchusen4, 68 );
setEffAlphaKey( spep_2-3 + 394, shuchusen4, 34 );
setEffAlphaKey( spep_2-3 + 396, shuchusen4, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_2-3 + 496,  906, 36, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 496, shuchusen5, 36, 20 );
setEffMoveKey( spep_2-3 + 496, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 532, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 496, shuchusen5, 1.19, 1.89 );
setEffScaleKey( spep_2-3 + 532, shuchusen5, 1.19, 1.89 );

setEffRotateKey( spep_2-3 + 496, shuchusen5, 0.3 );
setEffRotateKey( spep_2-3 + 532, shuchusen5, 0.3 );

setEffAlphaKey( spep_2-3 + 496, shuchusen5, 204 );
setEffAlphaKey( spep_2-3 + 520, shuchusen5, 204 );
setEffAlphaKey( spep_2-3 + 522, shuchusen5, 170 );
setEffAlphaKey( spep_2-3 + 524, shuchusen5, 136 );
setEffAlphaKey( spep_2-3 + 526, shuchusen5, 102 );
setEffAlphaKey( spep_2-3 + 528, shuchusen5, 68 );
setEffAlphaKey( spep_2-3 + 530, shuchusen5, 34 );
setEffAlphaKey( spep_2-3 + 532, shuchusen5, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_2-3 + 544,  906, 84, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 544, shuchusen6, 84, 20 );
setEffMoveKey( spep_2-3 + 544, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 628, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 544, shuchusen6, 1.19, 2.32 );
setEffScaleKey( spep_2-3 + 628, shuchusen6, 1.19, 2.32 );

setEffRotateKey( spep_2-3 + 544, shuchusen6, 0 );
setEffRotateKey( spep_2-3 + 628, shuchusen6, 0 );

setEffAlphaKey( spep_2-3 + 544, shuchusen6, 204 );
setEffAlphaKey( spep_2-3 + 628, shuchusen6, 204 );

--文字エントリー
ctbako = entryEffectLife( spep_2-3 + 30,  10021, 30, 0x100, -1, 0, 149.4, 329.5 );--バゴォッ
setEffShake( spep_2-3 + 30, ctbako, 30, 10 );
setEffMoveKey( spep_2-3 + 30, ctbako, 149.4, 329.5 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbako, 148.5, 329.1 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbako, 149.3, 329.4 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbako, 147.6, 356.6 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbako, 149.3, 329.4 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbako, 147.7, 355.9 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbako, 149.4, 329.4 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbako, 147.8, 355.3 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbako, 149.4, 329.5 , 0 );
setEffMoveKey( spep_2-3 + 48, ctbako, 147.9, 354.6 , 0 );
setEffMoveKey( spep_2-3 + 50, ctbako, 149.5, 329.5 , 0 );
setEffMoveKey( spep_2-3 + 52, ctbako, 149.5, 329.5 , 0 );
setEffMoveKey( spep_2-3 + 54, ctbako, 148.1, 352.6 , 0 );
setEffMoveKey( spep_2-3 + 56, ctbako, 149.6, 329.6 , 0 );
setEffMoveKey( spep_2-3 + 58, ctbako, 148.4, 350 , 0 );
setEffMoveKey( spep_2-3 + 60, ctbako, 148.5, 348.6 , 0 );

setEffScaleKey( spep_2-3 + 30, ctbako, 1.55, 1.55 );
setEffScaleKey( spep_2-3 + 32, ctbako, 4.28, 4.28 );
setEffScaleKey( spep_2-3 + 34, ctbako, 3.21, 3.21 );
setEffScaleKey( spep_2-3 + 36, ctbako, 3.17, 3.17 );
setEffScaleKey( spep_2-3 + 38, ctbako, 3.13, 3.13 );
setEffScaleKey( spep_2-3 + 40, ctbako, 3.09, 3.09 );
setEffScaleKey( spep_2-3 + 42, ctbako, 3.05, 3.05 );
setEffScaleKey( spep_2-3 + 44, ctbako, 3.01, 3.01 );
setEffScaleKey( spep_2-3 + 46, ctbako, 2.97, 2.97 );
setEffScaleKey( spep_2-3 + 48, ctbako, 2.93, 2.93 );
setEffScaleKey( spep_2-3 + 50, ctbako, 2.89, 2.89 );
setEffScaleKey( spep_2-3 + 52, ctbako, 2.85, 2.85 );
setEffScaleKey( spep_2-3 + 54, ctbako, 2.69, 2.69 );
setEffScaleKey( spep_2-3 + 56, ctbako, 2.53, 2.53 );
setEffScaleKey( spep_2-3 + 58, ctbako, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 60, ctbako, 2.2, 2.2 );

setEffRotateKey( spep_2-3 + 30, ctbako, 32 );
setEffRotateKey( spep_2-3 + 60, ctbako, 32 );

setEffAlphaKey( spep_2-3 + 30, ctbako, 255 );
setEffAlphaKey( spep_2-3 + 52, ctbako, 255 );
setEffAlphaKey( spep_2-3 + 54, ctbako, 191 );
setEffAlphaKey( spep_2-3 + 56, ctbako, 128 );
setEffAlphaKey( spep_2-3 + 58, ctbako, 64 );
setEffAlphaKey( spep_2-3 + 60, ctbako, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 260,  10020, 24, 0x100, -1, 0, 162.8, 364.1 );--バキッ
setEffShake( spep_2-3 + 260, ctbaki, 24, 10 );
setEffMoveKey( spep_2-3 + 260, ctbaki, 162.8, 364.1 , 0 );
setEffMoveKey( spep_2-3 + 262, ctbaki, 161.7, 392.9 , 0 );
setEffMoveKey( spep_2-3 + 264, ctbaki, 162.8, 364.1 , 0 );
setEffMoveKey( spep_2-3 + 266, ctbaki, 162.8, 363.9 , 0 );
setEffMoveKey( spep_2-3 + 268, ctbaki, 162.1, 382.8 , 0 );
setEffMoveKey( spep_2-3 + 270, ctbaki, 162.9, 363.9 , 0 );
setEffMoveKey( spep_2-3 + 272, ctbaki, 162.2, 382.1 , 0 );
setEffMoveKey( spep_2-3 + 274, ctbaki, 162.9, 363.9 , 0 );
setEffMoveKey( spep_2-3 + 276, ctbaki, 162.2, 381.4 , 0 );
setEffMoveKey( spep_2-3 + 278, ctbaki, 162.9, 363.9 , 0 );
setEffMoveKey( spep_2-3 + 280, ctbaki, 162.2, 381.2 , 0 );
setEffMoveKey( spep_2-3 + 282, ctbaki, 162.9, 364 , 0 );
setEffMoveKey( spep_2-3 + 284, ctbaki, 162.8, 364 , 0 );

setEffScaleKey( spep_2-3 + 260, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_2-3 + 262, ctbaki, 3.38, 3.38 );
setEffScaleKey( spep_2-3 + 264, ctbaki, 2.83, 2.83 );
setEffScaleKey( spep_2-3 + 266, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_2-3 + 268, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 270, ctbaki, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 272, ctbaki, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 274, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 276, ctbaki, 2.07, 2.07 );
setEffScaleKey( spep_2-3 + 278, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 280, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_2-3 + 282, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 284, ctbaki, 2.06, 2.06 );

setEffRotateKey( spep_2-3 + 260, ctbaki, 42.9 );
setEffRotateKey( spep_2-3 + 284, ctbaki, 42.9 );

setEffAlphaKey( spep_2-3 + 260, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 278, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 280, ctbaki, 174 );
setEffAlphaKey( spep_2-3 + 282, ctbaki, 94 );
setEffAlphaKey( spep_2-3 + 284, ctbaki, 13 );

--文字エントリー
ctdogon = entryEffectLife( spep_2-3 + 372,  10018, 20, 0x100, -1, 0, 1.7, 429.2 );--ドゴォンッ
setEffShake( spep_2-3 + 372, ctdogon, 20, 10 );
setEffMoveKey( spep_2-3 + 372, ctdogon, 1.7, 429.2 , 0 );
setEffMoveKey( spep_2-3 + 374, ctdogon, 3.2, 427.9 , 0 );
setEffMoveKey( spep_2-3 + 376, ctdogon, 0.8, 429.8 , 0 );
setEffMoveKey( spep_2-3 + 378, ctdogon, 3.2, 428 , 0 );
setEffMoveKey( spep_2-3 + 380, ctdogon, 0.8, 429.7 , 0 );
setEffMoveKey( spep_2-3 + 382, ctdogon, 3.2, 427.8 , 0 );
setEffMoveKey( spep_2-3 + 384, ctdogon, 0.8, 429.5 , 0 );
setEffMoveKey( spep_2-3 + 386, ctdogon, 3.1, 427.7 , 0 );
setEffMoveKey( spep_2-3 + 388, ctdogon, 3.1, 427.7 , 0 );
setEffMoveKey( spep_2-3 + 390, ctdogon, 1, 429.4 , 0 );
setEffMoveKey( spep_2-3 + 392, ctdogon, 1.1, 429.4 , 0 );

setEffScaleKey( spep_2-3 + 372, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_2-3 + 374, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_2-3 + 376, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_2-3 + 378, ctdogon, 3.34, 3.34 );
setEffScaleKey( spep_2-3 + 380, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_2-3 + 382, ctdogon, 3.26, 3.26 );
setEffScaleKey( spep_2-3 + 384, ctdogon, 3.22, 3.22 );
setEffScaleKey( spep_2-3 + 386, ctdogon, 3.18, 3.18 );
setEffScaleKey( spep_2-3 + 388, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_2-3 + 390, ctdogon, 3.04, 3.04 );
setEffScaleKey( spep_2-3 + 392, ctdogon, 2.93, 2.93 );

setEffRotateKey( spep_2-3 + 372, ctdogon, 3.2 );
setEffRotateKey( spep_2-3 + 376, ctdogon, 3.2 );
setEffRotateKey( spep_2-3 + 378, ctdogon, 3.3 );
setEffRotateKey( spep_2-3 + 386, ctdogon, 3.3 );
setEffRotateKey( spep_2-3 + 388, ctdogon, 3.4 );
setEffRotateKey( spep_2-3 + 392, ctdogon, 3.4 );

setEffAlphaKey( spep_2-3 + 372, ctdogon, 255 );
setEffAlphaKey( spep_2-3 + 388, ctdogon, 255 );
setEffAlphaKey( spep_2-3 + 390, ctdogon, 128 );
setEffAlphaKey( spep_2-3 + 392, ctdogon, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 496,  10016, 30, 0x100, -1, 0, -122.6, 366 );--ズンッ
setEffShake( spep_2-3 + 496, ctzun, 30, 10 );
setEffMoveKey( spep_2-3 + 496, ctzun, -122.6, 366 , 0 );
setEffMoveKey( spep_2-3 + 498, ctzun, -122.5, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 500, ctzun, -131.7, 367.7 , 0 );
setEffMoveKey( spep_2-3 + 502, ctzun, -122.2, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 504, ctzun, -130.6, 367.5 , 0 );
setEffMoveKey( spep_2-3 + 506, ctzun, -122.2, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 508, ctzun, -130.5, 367.4 , 0 );
setEffMoveKey( spep_2-3 + 510, ctzun, -122.3, 365.8 , 0 );
setEffMoveKey( spep_2-3 + 512, ctzun, -130.4, 367.3 , 0 );
setEffMoveKey( spep_2-3 + 514, ctzun, -122.3, 365.7 , 0 );
setEffMoveKey( spep_2-3 + 516, ctzun, -130.4, 367.2 , 0 );
setEffMoveKey( spep_2-3 + 518, ctzun, -122.3, 365.7 , 0 );
setEffMoveKey( spep_2-3 + 520, ctzun, -130.3, 367.2 , 0 );
setEffMoveKey( spep_2-3 + 522, ctzun, -122.4, 365.7 , 0 );
setEffMoveKey( spep_2-3 + 524, ctzun, -130, 367.2 , 0 );
setEffMoveKey( spep_2-3 + 526, ctzun, -122.5, 365.9 , 0 );

setEffScaleKey( spep_2-3 + 496, ctzun, 1.33, 1.33 );
setEffScaleKey( spep_2-3 + 498, ctzun, 3.56, 3.56 );
setEffScaleKey( spep_2-3 + 500, ctzun, 3.22, 3.22 );
setEffScaleKey( spep_2-3 + 502, ctzun, 2.88, 2.88 );
setEffScaleKey( spep_2-3 + 504, ctzun, 2.86, 2.86 );
setEffScaleKey( spep_2-3 + 506, ctzun, 2.85, 2.85 );
setEffScaleKey( spep_2-3 + 508, ctzun, 2.83, 2.83 );
setEffScaleKey( spep_2-3 + 510, ctzun, 2.81, 2.81 );
setEffScaleKey( spep_2-3 + 512, ctzun, 2.79, 2.79 );
setEffScaleKey( spep_2-3 + 514, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 516, ctzun, 2.76, 2.76 );
setEffScaleKey( spep_2-3 + 518, ctzun, 2.74, 2.74 );
setEffScaleKey( spep_2-3 + 520, ctzun, 2.72, 2.72 );
setEffScaleKey( spep_2-3 + 522, ctzun, 2.65, 2.65 );
setEffScaleKey( spep_2-3 + 524, ctzun, 2.58, 2.58 );
setEffScaleKey( spep_2-3 + 526, ctzun, 2.5, 2.5 );

setEffRotateKey( spep_2-3 + 496, ctzun, -31.6 );
setEffRotateKey( spep_2-3 + 508, ctzun, -31.6 );
setEffRotateKey( spep_2-3 + 510, ctzun, -31.7 );
setEffRotateKey( spep_2-3 + 518, ctzun, -31.7 );
setEffRotateKey( spep_2-3 + 520, ctzun, -31.8 );
setEffRotateKey( spep_2-3 + 522, ctzun, -31.7 );
setEffRotateKey( spep_2-3 + 524, ctzun, -31.6 );
setEffRotateKey( spep_2-3 + 526, ctzun, -31.6 );

setEffAlphaKey( spep_2-3 + 496, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 502, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 504, ctzun, 248 );
setEffAlphaKey( spep_2-3 + 506, ctzun, 241 );
setEffAlphaKey( spep_2-3 + 508, ctzun, 234 );
setEffAlphaKey( spep_2-3 + 510, ctzun, 227 );
setEffAlphaKey( spep_2-3 + 512, ctzun, 220 );
setEffAlphaKey( spep_2-3 + 514, ctzun, 213 );
setEffAlphaKey( spep_2-3 + 516, ctzun, 205 );
setEffAlphaKey( spep_2-3 + 518, ctzun, 198 );
setEffAlphaKey( spep_2-3 + 520, ctzun, 191 );
setEffAlphaKey( spep_2-3 + 522, ctzun, 132 );
setEffAlphaKey( spep_2-3 + 524, ctzun, 72 );
setEffAlphaKey( spep_2-3 + 526, ctzun, 13 );

--SE
se_0009 = playSe( spep_2 + 0, 9 );
se_1183 = playSe( spep_2 + 0, 1183 );
se_1182 = playSe( spep_2 + 0, 1182 );
setSeVolume( spep_2 + 0, 1182, 89 );
playSe( spep_2 + 34, 1003 );
se_1190 = playSe( spep_2 + 42, 1190 );
setSeVolume( spep_2 + 42, 1190, 141 );
playSe( spep_2 + 44, 1187 );
setSeVolume( spep_2 + 44, 1187, 79 );
playSe( spep_2 + 48, 1110 );
setSeVolume( spep_2 + 48, 1110, 79 );
playSe( spep_2 + 53, 1009 );
se_1121 = playSe( spep_2 + 65, 1121 );
setSeVolume( spep_2 + 65, 1121, 71 );
se_1183 = playSe( spep_2 + 65, 1183 );
setSeVolume( spep_2 + 65, 1183, 79 );
se_1190 = playSe( spep_2 + 100, 1190 );
setSeVolume( spep_2 + 100, 1190, 89 );
playSe( spep_2 + 103, 1012 );
setSeVolume( spep_2 + 103, 1012, 89 );
playSe( spep_2 + 108, 1006 );
setSeVolume( spep_2 + 108, 1006, 79 );
se_1190 = playSe( spep_2 + 121, 1190 );
setSeVolume( spep_2 + 121, 1190, 9.1 );
setSeVolume( spep_2 + 122, 1190, 18.2 );
setSeVolume( spep_2 + 123, 1190, 27.3 );
setSeVolume( spep_2 + 124, 1190, 36.4 );
setSeVolume( spep_2 + 125, 1190, 45.5 );
setSeVolume( spep_2 + 126, 1190, 54.6 );
setSeVolume( spep_2 + 127, 1190, 63.7 );
setSeVolume( spep_2 + 128, 1190, 72.8 );
setSeVolume( spep_2 + 129, 1190, 81.9 );
setSeVolume( spep_2 + 130, 1190, 91 );
setSeVolume( spep_2 + 131, 1190, 100 );
se_1125 = playSe( spep_2 + 155, 1125 );
setSeVolume( spep_2 + 155, 1125, 0 );
setSeVolume( spep_2 + 233, 1125, 16.6 );
setSeVolume( spep_2 + 234, 1125, 33.2 );
setSeVolume( spep_2 + 235, 1125, 49.8 );
setSeVolume( spep_2 + 236, 1125, 66.4 );
setSeVolume( spep_2 + 237, 1125, 83 );
setSeVolume( spep_2 + 238, 1125, 100 );
playSe( spep_2 + 161, 1004 );
playSe( spep_2 + 161, 1014 );
se_0009 = playSe( spep_2 + 164, 9 );
playSe( spep_2 + 193, 1010 );
setSeVolume( spep_2 + 193, 1010, 63 );
se_1153 = playSe( spep_2 + 195, 1153 );
setSeVolume( spep_2 + 195, 1153, 71 );
playSe( spep_2 + 230, 1014 );
setSeVolume( spep_2 + 230, 1014, 7.9 );
setSeVolume( spep_2 + 231, 1014, 15.8 );
setSeVolume( spep_2 + 232, 1014, 23.7 );
setSeVolume( spep_2 + 233, 1014, 31.6 );
setSeVolume( spep_2 + 234, 1014, 39.5 );
setSeVolume( spep_2 + 235, 1014, 47.4 );
setSeVolume( spep_2 + 236, 1014, 55.3 );
setSeVolume( spep_2 + 237, 1014, 63.2 );
setSeVolume( spep_2 + 238, 1014, 71.1 );
setSeVolume( spep_2 + 239, 1014, 79 );
playSe( spep_2 + 260, 1003 );
playSe( spep_2 + 269, 1010 );
se_1190 = playSe( spep_2 + 269, 1190 );
playSe( spep_2 + 272, 1169 );
setSeVolume( spep_2 + 272, 1169, 63 );
playSe( spep_2 + 311, 1023 );
playSe( spep_2 + 314, 1033 );
playSe( spep_2 + 327, 1111 );
setSeVolume( spep_2 + 327, 1111, 178 );
se_1190 = playSe( spep_2 + 332, 1190 );
playSe( spep_2 + 340, 1182 );
setSeVolume( spep_2 + 340, 1182, 6.7 );
setSeVolume( spep_2 + 341, 1182, 13.4 );
setSeVolume( spep_2 + 342, 1182, 20.1 );
setSeVolume( spep_2 + 343, 1182, 28.8 );
setSeVolume( spep_2 + 344, 1182, 33.5 );
setSeVolume( spep_2 + 345, 1182, 40.2 );
setSeVolume( spep_2 + 346, 1182, 46.9 );
setSeVolume( spep_2 + 347, 1182, 53.6 );
setSeVolume( spep_2 + 348, 1182, 60.3 );
setSeVolume( spep_2 + 349, 1182, 67 );
setSeVolume( spep_2 + 350, 1182, 73.7 );
setSeVolume( spep_2 + 351, 1182, 80.4 );
setSeVolume( spep_2 + 352, 1182, 87.1 );
setSeVolume( spep_2 + 353, 1182, 93.8 );
setSeVolume( spep_2 + 354, 1182, 100 );
se_1116 = playSe( spep_2 + 382, 1116 );
setSeVolume( spep_2 + 388, 1160, 50 );
playSe( spep_2 + 382, 1011 );
se_1160 = playSe( spep_2 + 388, 1160 );
se_1159 = playSe( spep_2 + 394, 1159 );
setSeVolume( spep_2 + 394, 1159, 50 );
playSe( spep_2 + 453, 1012 );
se_1190 = playSe( spep_2 + 453, 1190 );
setSeVolume( spep_2 + 453, 1190, 63 );
playSe( spep_2 + 457, 1007 );
se_1159 = playSe( spep_2 + 504, 1159 );
setSeVolume( spep_2 + 504, 1159, 63 );
se_1024 = playSe( spep_2 + 504, 1024 );
se_1144 = playSe( spep_2 + 511, 1144 );
setSeVolume( spep_2 + 511, 1144, 0 );
setSeVolume( spep_2 + 550, 1144, 3.3 );
setSeVolume( spep_2 + 551, 1144, 6.6 );
setSeVolume( spep_2 + 552, 1144, 9.9 );
setSeVolume( spep_2 + 553, 1144, 13.2 );
setSeVolume( spep_2 + 554, 1144, 16.5 );
setSeVolume( spep_2 + 555, 1144, 19.8 );
setSeVolume( spep_2 + 556, 1144, 23.1 );
setSeVolume( spep_2 + 557, 1144, 26.4 );
setSeVolume( spep_2 + 558, 1144, 29.7 );
setSeVolume( spep_2 + 559, 1144, 33 );
setSeVolume( spep_2 + 560, 1144, 36.3 );
setSeVolume( spep_2 + 561, 1144, 39.6 );
setSeVolume( spep_2 + 562, 1144, 42.9 );
setSeVolume( spep_2 + 563, 1144, 46.2 );
setSeVolume( spep_2 + 564, 1144, 49.5 );
setSeVolume( spep_2 + 565, 1144, 52.8 );
setSeVolume( spep_2 + 566, 1144, 56.1 );
setSeVolume( spep_2 + 567, 1144, 59.4 );
setSeVolume( spep_2 + 568, 1144, 63 );
playSe( spep_2 + 551, 49 );
setSeVolume( spep_2 + 551, 49, 126 );
se_1157 = playSe( spep_2 + 557, 1157 );
setSeVolume( spep_2 + 557, 1157, 79 );
se_0017 = playSe( spep_2 + 557, 17 );
setSeVolume( spep_2 + 557, 17, 71 );
se_1213 = playSe( spep_2 + 590, 1213 );
setSeVolume( spep_2 + 590, 1213, 79 );
playSe( spep_2 + 590, 1027 );


stopSe( spep_2 + 55, se_0009, 0 );
stopSe( spep_2 + 50, se_1183, 0 );
stopSe( spep_2 + 50, se_1182, 0 );
stopSe( spep_2 + 57, se_1190, 14 );
stopSe( spep_2 + 107, se_1121, 0 );
stopSe( spep_2 + 107, se_1183, 0 );
stopSe( spep_2 + 107, se_1190, 7 );
stopSe( spep_2 + 145, se_1190, 23 );
stopSe( spep_2 + 268, se_1125, 27 );
stopSe( spep_2 + 250, se_0009, -17 );
stopSe( spep_2 + 217, se_1153, 20 );
stopSe( spep_2 + 279, se_1190, 33 );
stopSe( spep_2 + 351, se_1190, 27 );
stopSe( spep_2 + 407, se_1116, 18 );
stopSe( spep_2 + 433, se_1160, 48 );
stopSe( spep_2 + 476, se_1159, 58 );
stopSe( spep_2 + 475, se_1190, 14 );
stopSe( spep_2 + 562, se_1159, 37 );
stopSe( spep_2 + 560, se_1024, 29 );
stopSe( spep_2 + 591, se_1144, 27 );
stopSe( spep_2 + 612, se_1157, 0 );
stopSe( spep_2 + 603, se_0017, 20 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 634, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 622, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+630;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, 3112, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 130, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_3 + 130, finish, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 130, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 130, finish, 255 );

--SE
playSe( spep_3 + 19, 1159 );
setSeVolume( spep_3 + 19, 1159, 79 );
playSe( spep_3 + 20, 1044 );
setSeVolume( spep_3 + 20, 1044, 79 );

stopSe( spep_3 + 36, se_1213, 59 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0,  255, 255, 255, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 130 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ナビラッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 260, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 260, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 260, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 260, rush, 255 );

--顔カットイン
--speff = entryEffect( spep_0 + 4  , 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0-12 + 140  , 1505, 0x100, -1, 0, 0, 0 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--集中線
shuchusen1 = entryEffectLife( spep_0-3 + 142,  906, 116, 0x100, -1, 0, 0, 0 );
setEffShake( spep_0-3 + 142, shuchusen1, 116, 20 );
setEffMoveKey( spep_0-3 + 142, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0-3 + 258, shuchusen1, 0, 0 , 0 );

setEffScaleKey( spep_0-3 + 142, shuchusen1, 1.11, 2.32 );
setEffScaleKey( spep_0-3 + 258, shuchusen1, 1.11, 2.32 );

setEffRotateKey( spep_0-3 + 142, shuchusen1, 180 );
setEffRotateKey( spep_0-3 + 258, shuchusen1, 180 );

setEffAlphaKey( spep_0-3 + 142, shuchusen1, 68 );
setEffAlphaKey( spep_0-3 + 144, shuchusen1, 136 );
setEffAlphaKey( spep_0-3 + 146, shuchusen1, 204 );
setEffAlphaKey( spep_0-3 + 258, shuchusen1, 204 );

--SE
playSe( spep_0 + 140, 1018 );--ごごご
playSe( spep_0 + 0, 8 );
playSe( spep_0 + 0, 1072 );
se_1188 = playSe( spep_0 + 31, 1188 );
setSeVolume( spep_0 + 31, 1188, 0 );
setSeVolume( spep_0 + 34, 1188, 10 );
setSeVolume( spep_0 + 35, 1188, 20 );
setSeVolume( spep_0 + 36, 1188, 30 );
setSeVolume( spep_0 + 37, 1188, 40 );
setSeVolume( spep_0 + 38, 1188, 50 );
setSeVolume( spep_0 + 39, 1188, 60 );
setSeVolume( spep_0 + 40, 1188, 70 );
setSeVolume( spep_0 + 41, 1188, 80 );
setSeVolume( spep_0 + 42, 1188, 90 );
setSeVolume( spep_0 + 42, 1188, 100 );
se_1062 = playSe( spep_0 + 43, 1062 );
setSeVolume( spep_0 + 43, 1062, 0 );
setSeVolume( spep_0 + 58, 1062, 16.6 );
setSeVolume( spep_0 + 59, 1062, 33.2 );
setSeVolume( spep_0 + 60, 1062, 50 );
se_1190 = playSe( spep_0 + 52, 1190 );
setSeVolume( spep_0 + 52, 1190, 7.1 );
setSeVolume( spep_0 + 53, 1190, 14.2 );
setSeVolume( spep_0 + 54, 1190, 21.3 );
setSeVolume( spep_0 + 55, 1190, 28.4 );
setSeVolume( spep_0 + 56, 1190, 35.5 );
setSeVolume( spep_0 + 57, 1190, 42.6 );
setSeVolume( spep_0 + 58, 1190, 49.7 );
setSeVolume( spep_0 + 59, 1190, 56.8 );
setSeVolume( spep_0 + 60, 1190, 63.9 );
setSeVolume( spep_0 + 61, 1190, 71 );
setSeVolume( spep_0 + 62, 1190, 78.1 );
setSeVolume( spep_0 + 63, 1190, 85.2 );
setSeVolume( spep_0 + 64, 1190, 92.3 );
setSeVolume( spep_0 + 65, 1190, 100 );
playSe( spep_0 + 57, 1003 );
setSeVolume( spep_0 + 57, 1003, 112 );
se_1116 = playSe( spep_0 + 90, 1116 );
playSe( spep_0 + 93, 1004 );
setSeVolume( spep_0 + 93, 1004, 63 );
playSe( spep_0 + 111, 1025 );
setSeVolume( spep_0 + 111, 1025, 12.6 );
setSeVolume( spep_0 + 112, 1025, 25.2 );
setSeVolume( spep_0 + 113, 1025, 37.8 );
setSeVolume( spep_0 + 114, 1025, 50.4 );
setSeVolume( spep_0 + 115, 1025, 63 );
setSeVolume( spep_0 + 116, 1025, 75.6 );
setSeVolume( spep_0 + 117, 1025, 88.2 );
setSeVolume( spep_0 + 118, 1025, 100.8 );
setSeVolume( spep_0 + 119, 1025, 113.4 );
setSeVolume( spep_0 + 120, 1025, 126 );
se_1067 = playSe( spep_0 + 143, 1067 );
setSeVolume( spep_0 + 143, 1067, 79 );
se_1125 = playSe( spep_0 + 178, 1125 );
setSeVolume( spep_0 + 178, 1125, 141 );
se_1024 = playSe( spep_0 + 179, 1024 );
setSeVolume( spep_0 + 179, 1024, 89 );
SE0=playSe( spep_0 + 209, 1072 );
se_1167 = playSe( spep_0 + 219, 1167 );
setSeVolume( spep_0 + 219, 1167, 40 );
se_11161 = playSe( spep_0 + 224, 1116 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 262, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 240; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE0, 0 );
    stopSe( SP_dodge - 12, se_1125, 0 );
    stopSe( SP_dodge - 12, se_1024, 0 );
    stopSe( SP_dodge - 12, se_1167, 0 );
    stopSe( SP_dodge - 12, se_11161, 0 );


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
stopSe( spep_0 + 57, se_1188, 33 );
stopSe( spep_0 + 79, se_1062, 31 );
stopSe( spep_0 + 74, se_1190, 22 );
stopSe( spep_0 + 112, se_1116, 13 );
stopSe( spep_0 + 240, se_1024, 28 );
stopSe( spep_0 + 257, se_11161, 11 );

--白フェード
entryFade( spep_0 + 252, 4, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+260;

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

stopSe( spep_1 + 8, se_1067, 0 );
stopSe( spep_1 + 1, se_1125, 7 );
stopSe( spep_1 + 8, se_1167, 0 );

--白フェード
entryFade( spep_1 + 80, 6, 10, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 皆でボッコボコ・手前
------------------------------------------------------
-- ** エフェクト等 ** --
bokoboko_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bokoboko_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 630, bokoboko_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, bokoboko_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 630, bokoboko_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bokoboko_f, 0 );
setEffRotateKey( spep_2 + 630, bokoboko_f, 0 );
setEffAlphaKey( spep_2 + 0, bokoboko_f, 255 );
setEffAlphaKey( spep_2 + 630, bokoboko_f, 255 );

-- ** エフェクト等 ** --
bokoboko_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, bokoboko_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 630, bokoboko_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, bokoboko_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 630, bokoboko_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, bokoboko_b, 0 );
setEffRotateKey( spep_2 + 630, bokoboko_b, 0 );
setEffAlphaKey( spep_2 + 0, bokoboko_b, 255 );
setEffAlphaKey( spep_2 + 630, bokoboko_b, 255 );

--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -1 + 88, 1, 0 );
setDisp( spep_2 -1 + 146, 1, 1 );
setDisp( spep_2 -1 + 171, 1, 0 );
setDisp( spep_2 -1 + 173, 1, 1 );
setDisp( spep_2 -1 + 198, 1, 0 );
setDisp( spep_2 -1 + 241, 1, 1 );
setDisp( spep_2 -1 + 263, 1, 0 );
setDisp( spep_2 -1 + 292, 1, 1 );
setDisp( spep_2 -1 + 307, 1, 0 );
setDisp( spep_2 -1 + 394, 1, 1 );
setDisp( spep_2 -1 + 409, 1, 0 );
setDisp( spep_2 -1 + 434, 1, 1 );
setDisp( spep_2 -1 + 494, 1, 0 );


changeAnime( spep_2 + 0, 1, 102 );
changeAnime( spep_2-3 + 30, 1, 107 );
changeAnime( spep_2-3 + 70, 1, 105 );
changeAnime( spep_2-3 + 172, 1, 8 );
changeAnime( spep_2-3 + 188, 1, 6 );
changeAnime( spep_2-3 + 260, 1, 108 );
changeAnime( spep_2-3 + 294, 1, 105 );
changeAnime( spep_2-3 + 392, 1, 106 );


setMoveKey( spep_2-3 + 0, 1, 123.6, -89.3 , 0 );
setMoveKey( spep_2-3 + 2, 1, 129, -96.2 , 0 );
setMoveKey( spep_2-3 + 4, 1, 134.5, -103.1 , 0 );
setMoveKey( spep_2-3 + 6, 1, 139.9, -110 , 0 );
setMoveKey( spep_2-3 + 8, 1, 145.5, -117 , 0 );
setMoveKey( spep_2-3 + 10, 1, 150.9, -123.9 , 0 );
setMoveKey( spep_2-3 + 12, 1, 156.4, -130.8 , 0 );
setMoveKey( spep_2-3 + 14, 1, 161.9, -137.7 , 0 );
setMoveKey( spep_2-3 + 16, 1, 167.3, -144.6 , 0 );
setMoveKey( spep_2-3 + 18, 1, 172.8, -151.6 , 0 );
setMoveKey( spep_2-3 + 20, 1, 178.2, -158.4 , 0 );
setMoveKey( spep_2-3 + 22, 1, 183.7, -165.4 , 0 );
setMoveKey( spep_2-3 + 24, 1, 189.2, -172.3 , 0 );
setMoveKey( spep_2-3 + 26, 1, 194.7, -179.2 , 0 );
setMoveKey( spep_2-3 + 28, 1, 200.2, -186.1 , 0 );
setMoveKey( spep_2-3 + 29, 1, 200.2, -186.1 , 0 );

setMoveKey( spep_2-3 + 30, 1, 131.1, -222.1 , 0 );
setMoveKey( spep_2-3 + 32, 1, 113.2, -180.3 , 0 );
setMoveKey( spep_2-3 + 34, 1, 82.1, -160.4 , 0 );
setMoveKey( spep_2-3 + 36, 1, 65.3, -129.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 34.5, -115.8 , 0 );
setMoveKey( spep_2-3 + 40, 1, 9.5, -66.1 , 0 );
setMoveKey( spep_2-3 + 42, 1, 2.1, -76.4 , 0 );
setMoveKey( spep_2-3 + 44, 1, 18.9, -79 , 0 );
setMoveKey( spep_2-3 + 46, 1, 20.1, -94.3 , 0 );
setMoveKey( spep_2-3 + 48, 1, 29.5, -93.8 , 0 );
setMoveKey( spep_2-3 + 50, 1, 31.1, -105.7 , 0 );
setMoveKey( spep_2-3 + 52, 1, 40.9, -110 , 0 );
setMoveKey( spep_2-3 + 54, 1, 46.8, -118.4 , 0 );
setMoveKey( spep_2-3 + 56, 1, 52.8, -127 , 0 );
setMoveKey( spep_2-3 + 58, 1, 58.9, -135.9 , 0 );
setMoveKey( spep_2-3 + 60, 1, 65.1, -144.7 , 0 );
setMoveKey( spep_2-3 + 62, 1, 71.3, -153.6 , 0 );
setMoveKey( spep_2-3 + 64, 1, 77.4, -162.6 , 0 );
setMoveKey( spep_2-3 + 66, 1, 83.5, -171.4 , 0 );
setMoveKey( spep_2-3 + 68, 1, 89.5, -180.1 , 0 );
setMoveKey( spep_2-3 + 69, 1, 89.5, -180.1 , 0 );

setMoveKey( spep_2-3 + 70, 1, -142.8, -255.9 , 0 );
setMoveKey( spep_2-3 + 72, 1, -101.5, -167.9 , 0 );
setMoveKey( spep_2-3 + 74, 1, -58.4, -76.3 , 0 );
setMoveKey( spep_2-3 + 76, 1, -13.8, 19 , 0 );
setMoveKey( spep_2-3 + 78, 1, -11.5, 26.4 , 0 );
setMoveKey( spep_2-3 + 80, 1, -8.9, 34.1 , 0 );
setMoveKey( spep_2-3 + 82, 1, -6.2, 42.2 , 0 );
setMoveKey( spep_2-3 + 84, 1, -3.4, 50.6 , 0 );
setMoveKey( spep_2-3 + 86, 1, -0.4, 59.2 , 0 );
setMoveKey( spep_2-3 + 88, 1, 2.7, 68.2 , 0 );

setMoveKey( spep_2-3 + 148, 1, -217.2, 106.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, -220.5, 103.4 , 0 );
setMoveKey( spep_2-3 + 152, 1, -223.7, 100.1 , 0 );
setMoveKey( spep_2-3 + 154, 1, -226.8, 96.9 , 0 );
setMoveKey( spep_2-3 + 156, 1, -229.7, 94 , 0 );
setMoveKey( spep_2-3 + 158, 1, -232.3, 91.3 , 0 );
setMoveKey( spep_2-3 + 160, 1, -234.4, 89 , 0 );
setMoveKey( spep_2-3 + 162, 1, -235.9, 87.3 , 0 );
setMoveKey( spep_2-3 + 164, 1, -236.8, 86.1 , 0 );
setMoveKey( spep_2-3 + 166, 1, -236.8, 85.6 , 0 );
setMoveKey( spep_2-3 + 168, 1, -236, 86 , 0 );
setMoveKey( spep_2-3 + 170, 1, -234.1, 87.1 , 0 );
setMoveKey( spep_2-3 + 171, 1, -234.1, 87.1 , 0 );

setMoveKey( spep_2-3 + 172, 1, 527.8, 426.5 , 0 );
setMoveKey( spep_2-3 + 174, 1, 501, 390.3 , 0 );
setMoveKey( spep_2-3 + 176, 1, 453.9, 337.1 , 0 );
setMoveKey( spep_2-3 + 178, 1, 387, 267.5 , 0 );
setMoveKey( spep_2-3 + 180, 1, 300.7, 182.3 , 0 );
setMoveKey( spep_2-3 + 182, 1, 195.6, 82 , 0 );
setMoveKey( spep_2-3 + 184, 1, 72.1, -32.8 , 0 );
setMoveKey( spep_2-3 + 186, 1, -69.2, -161.3 , 0 );
setMoveKey( spep_2-3 + 187, 1, -69.2, -161.3 , 0 );

setMoveKey( spep_2-3 + 188, 1, -120.5, -88.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, -216.7, -22 , 0 );
setMoveKey( spep_2-3 + 192, 1, -305.5, 26.1 , 0 );
setMoveKey( spep_2-3 + 194, 1, -375.2, 92.3 , 0 );
setMoveKey( spep_2-3 + 196, 1, -450.3, 136.5 , 0 );
setMoveKey( spep_2-3 + 198, 1, -490.8, 182.8 , 0 );
setMoveKey( spep_2-3 + 200, 1, -537.3, 211.5 , 0 );
setMoveKey( spep_2-3 + 202, 1, -565.9, 250.4 , 0 );
setMoveKey( spep_2-3 + 204, 1, -593.1, 267.8 , 0 );
setMoveKey( spep_2-3 + 206, 1, -603.1, 295.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, -608.2, 310.3 , 0 );
setMoveKey( spep_2-3 + 210, 1, -604.7, 319.6 , 0 );

setMoveKey( spep_2-3 + 238, 1, 1186.7, -892.1 , 0 );
setMoveKey( spep_2-3 + 240, 1, 969.3, -705 , 0 );
setMoveKey( spep_2-3 + 242, 1, 774.5, -537.7 , 0 );
setMoveKey( spep_2-3 + 244, 1, 602, -389.6 , 0 );
setMoveKey( spep_2-3 + 246, 1, 451.2, -260.4 , 0 );
setMoveKey( spep_2-3 + 248, 1, 321.9, -149.8 , 0 );
setMoveKey( spep_2-3 + 250, 1, 213.5, -57.4 , 0 );
setMoveKey( spep_2-3 + 252, 1, 125.6, 17.3 , 0 );
setMoveKey( spep_2-3 + 254, 1, 98.9, 46.3 , 0 );
setMoveKey( spep_2-3 + 256, 1, 77.5, 69 , 0 );
setMoveKey( spep_2-3 + 258, 1, 61.5, 85.4 , 0 );
setMoveKey( spep_2-3 + 259, 1, 61.5, 85.4 , 0 );

setMoveKey( spep_2-3 + 260, 1, 129, 151.5 , 0 );
setMoveKey( spep_2-3 + 262, 1, 303.4, 267.8 , 0 );
setMoveKey( spep_2-3 + 264, 1, 451.9, 367.3 , 0 );
setMoveKey( spep_2-3 + 266, 1, 570.9, 426.3 , 0 );
setMoveKey( spep_2-3 + 268, 1, 673.1, 517.2 , 0 );
setMoveKey( spep_2-3 + 270, 1, 731, 564.4 , 0 );
setMoveKey( spep_2-3 + 272, 1, 797.1, 604.1 , 0 );
setMoveKey( spep_2-3 + 274, 1, 820.1, 608.9 , 0 );

setMoveKey( spep_2-3 + 294, 1, 80.9, -502.6 , 0 );
setMoveKey( spep_2-3 + 296, 1, 63.5, -353.4 , 0 );
setMoveKey( spep_2-3 + 298, 1, 48.7, -230 , 0 );
setMoveKey( spep_2-3 + 300, 1, 36.3, -131.7 , 0 );
setMoveKey( spep_2-3 + 302, 1, 26.3, -57.8 , 0 );
setMoveKey( spep_2-3 + 304, 1, 18.6, -7.3 , 0 );
setMoveKey( spep_2-3 + 306, 1, 13.2, 20.4 , 0 );

setMoveKey( spep_2-3 + 392, 1, 25.3, 177.1 , 0 );
setMoveKey( spep_2-3 + 394, 1, 6.3, 55.6 , 0 );
setMoveKey( spep_2-3 + 396, 1, 19.5, -44.4 , 0 );
setMoveKey( spep_2-3 + 398, 1, 8.9, -163 , 0 );
setMoveKey( spep_2-3 + 400, 1, 14.5, -244.3 , 0 );
setMoveKey( spep_2-3 + 402, 1, 12.4, -336.3 , 0 );
setMoveKey( spep_2-3 + 404, 1, 10.6, -423 , 0 );
setMoveKey( spep_2-3 + 406, 1, 9, -504.6 , 0 );
setMoveKey( spep_2-3 + 408, 1, 7.7, -581.2 ,0);
setMoveKey( spep_2-3 + 410, 1, 6.6, -652.7 , 0 );
setMoveKey( spep_2-3 + 412, 1, 5.8, -719.3 , 0 );
setMoveKey( spep_2-3 + 414, 1, 5.1, -781 , 0 );
setMoveKey( spep_2-3 + 416, 1, 4.6, -837.7 , 0 );
setMoveKey( spep_2-3 + 418, 1, 4.4, -889.6 , 0 );

setMoveKey( spep_2-3 + 432, 1, 34.5, 920.3 , 0 );
setMoveKey( spep_2-3 + 434, 1, 38.3, 765.9 , 0 );
setMoveKey( spep_2-3 + 436, 1, 42.2, 610 , 0 );
setMoveKey( spep_2-3 + 438, 1, 46.3, 452.4 , 0 );
setMoveKey( spep_2-3 + 440, 1, 50.6, 292.9 , 0 );
setMoveKey( spep_2-3 + 442, 1, 55, 131.9 , 0 );
setMoveKey( spep_2-3 + 444, 1, 59.4, -34.1 , 0 );
setMoveKey( spep_2-3 + 446, 1, 63.9, -200.7 , 0 );
setMoveKey( spep_2-3 + 447, 1, 63.9, -200.7 , 0 );

setMoveKey( spep_2-3 + 448, 1, 31.4, -219.4 , 0 );
setMoveKey( spep_2-3 + 450, 1, 31.5, -206.8 , 0 );
setMoveKey( spep_2-3 + 452, 1, 31.6, -195.5 , 0 );
setMoveKey( spep_2-3 + 454, 1, 27.6, -193.3 , 0 );
setMoveKey( spep_2-3 + 456, 1, 31.7, -176.4 , 0 );
setMoveKey( spep_2-3 + 458, 1, 22.3, -185.3 , 0 );
setMoveKey( spep_2-3 + 460, 1, 28.9, -188.3 , 0 );
setMoveKey( spep_2-3 + 462, 1, 23.6, -201.2 , 0 );
setMoveKey( spep_2-3 + 464, 1, 26.2, -207.8 , 0 );
setMoveKey( spep_2-3 + 466, 1, 16.8, -224 , 0 );
setMoveKey( spep_2-3 + 468, 1, 23.5, -215.3 , 0 );
setMoveKey( spep_2-3 + 470, 1, 18.1, -216.4 , 0 );
setMoveKey( spep_2-3 + 472, 1, 20.8, -211 , 0 );
setMoveKey( spep_2-3 + 474, 1, 15.4, -220.1 , 0 );
setMoveKey( spep_2-3 + 476, 1, 18, -221 , 0 );
setMoveKey( spep_2-3 + 478, 1, 18.8, -222.9 , 0 );
setMoveKey( spep_2-3 + 480, 1, 19.6, -224.7 , 0 );
setMoveKey( spep_2-3 + 482, 1, 20.5, -223.5 , 0 );
setMoveKey( spep_2-3 + 484, 1, 21.3, -222.2 , 0 );
setMoveKey( spep_2-3 + 486, 1, 22.1, -220.9 , 0 );
setMoveKey( spep_2-3 + 488, 1, 22.9, -219.5 , 0 );
setMoveKey( spep_2-3 + 490, 1, 23.8, -218.3 , 0 );
setMoveKey( spep_2-3 + 492, 1, 24.6, -216.9 , 0 );
setMoveKey( spep_2-1 + 494, 1, 25.4, -215.7 , 0 );


setScaleKey( spep_2-3 + 0, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 2, 1, 0.55, 0.55 );
setScaleKey( spep_2-3 + 4, 1, 0.57, 0.57 );
setScaleKey( spep_2-3 + 6, 1, 0.59, 0.59 );
setScaleKey( spep_2-3 + 8, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 10, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 12, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 14, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 16, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 18, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 20, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 22, 1, 0.73, 0.73 );
setScaleKey( spep_2-3 + 24, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 26, 1, 0.76, 0.76 );
setScaleKey( spep_2-3 + 28, 1, 0.78, 0.78 );
setScaleKey( spep_2-3 + 29, 1, 0.78, 0.78 );

setScaleKey( spep_2-3 + 30, 1, 0.32, 0.32 );
setScaleKey( spep_2-3 + 32, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 34, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 36, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 38, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 40, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 42, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 44, 1, 0.51, 0.51 );
setScaleKey( spep_2-3 + 46, 1, 0.56, 0.56 );
setScaleKey( spep_2-3 + 48, 1, 0.62, 0.62 );
setScaleKey( spep_2-3 + 50, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 52, 1, 0.73, 0.73 );
setScaleKey( spep_2-3 + 54, 1, 0.79, 0.79 );
setScaleKey( spep_2-3 + 56, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 58, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 60, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 62, 1, 1.03, 1.03 );
setScaleKey( spep_2-3 + 64, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 66, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 68, 1, 1.21, 1.21 );
setScaleKey( spep_2-3 + 69, 1, 1.21, 1.21 );

setScaleKey( spep_2-3 + 70, 1, 4.63, 4.63 );
setScaleKey( spep_2-3 + 72, 1, 3.5, 3.5 );
setScaleKey( spep_2-3 + 74, 1, 2.32, 2.32 );
setScaleKey( spep_2-3 + 76, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 78, 1, 1, 1 );
setScaleKey( spep_2-3 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 82, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 84, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 86, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 88, 1, 0.5, 0.5 );

setScaleKey( spep_2-3 + 148, 1, 0.61, 0.61 );
setScaleKey( spep_2-3 + 150, 1, 0.54, 0.54 );
setScaleKey( spep_2-3 + 152, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 154, 1, 0.4, 0.4 );
setScaleKey( spep_2-3 + 156, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 158, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 160, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 162, 1, 0.18, 0.18 );
setScaleKey( spep_2-3 + 164, 1, 0.14, 0.14 );
setScaleKey( spep_2-3 + 166, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 168, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 170, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 171, 1, 0.09, 0.09 );

setScaleKey( spep_2-3 + 172, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 174, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 176, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 178, 1, 1.25, 1.25 );
setScaleKey( spep_2-3 + 180, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 182, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 184, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 186, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 187, 1, 0.86, 0.86 );

setScaleKey( spep_2-3 + 188, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 190, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 192, 1, 0.88, 0.88 );
setScaleKey( spep_2-3 + 194, 1, 0.87, 0.87 );
setScaleKey( spep_2-3 + 196, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 198, 1, 0.85, 0.85 );
setScaleKey( spep_2-3 + 200, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 202, 1, 0.83, 0.83 );
setScaleKey( spep_2-3 + 204, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 206, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 208, 1, 0.81, 0.81 );
setScaleKey( spep_2-3 + 210, 1, 0.8, 0.8 );

setScaleKey( spep_2-3 + 238, 1, 6.56, 6.56 );
setScaleKey( spep_2-3 + 240, 1, 5.41, 5.41 );
setScaleKey( spep_2-3 + 242, 1, 4.38, 4.38 );
setScaleKey( spep_2-3 + 244, 1, 3.47, 3.47 );
setScaleKey( spep_2-3 + 246, 1, 2.68, 2.68 );
setScaleKey( spep_2-3 + 248, 1, 2, 2 );
setScaleKey( spep_2-3 + 250, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 252, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 254, 1, 0.84, 0.84 );
setScaleKey( spep_2-3 + 256, 1, 0.72, 0.72 );
setScaleKey( spep_2-3 + 258, 1, 0.64, 0.64 );
setScaleKey( spep_2-3 + 259, 1, 0.64, 0.64 );

setScaleKey( spep_2-3 + 260, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 262, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 264, 1, 0.68, 0.68 );
setScaleKey( spep_2-3 + 266, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 268, 1, 0.67, 0.67 );
setScaleKey( spep_2-3 + 270, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 272, 1, 0.66, 0.66 );
setScaleKey( spep_2-3 + 274, 1, 0.65, 0.65 );

setScaleKey( spep_2-3 + 294, 1, 6.54, 6.54 );
setScaleKey( spep_2-3 + 296, 1, 4.82, 4.82 );
setScaleKey( spep_2-3 + 298, 1, 3.39, 3.39 );
setScaleKey( spep_2-3 + 300, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 302, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 304, 1, 0.74, 0.74 );
setScaleKey( spep_2-3 + 306, 1, 0.37, 0.37 );


setScaleKey( spep_2-3 + 392, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 418, 1, 0.9, 0.9 );


setScaleKey( spep_2-3 + 432, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 434, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 436, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 438, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 440, 1, 0.94, 0.94 );
setScaleKey( spep_2-3 + 442, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 444, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 446, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 447, 1, 0.9, 0.9 );

setScaleKey( spep_2-3 + 448, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 450, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 456, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 458, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 460, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 462, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 464, 1, 1.03, 1.04 );
setScaleKey( spep_2-3 + 466, 1, 1.02, 1.02 );
setScaleKey( spep_2-3 + 468, 1, 1, 1 );
setScaleKey( spep_2-3 + 470, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 472, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 474, 1, 0.94, 0.94 );
setScaleKey( spep_2-3 + 476, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 478, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 480, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 486, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 488, 1, 0.9, 0.9 );
setScaleKey( spep_2-3 + 492, 1, 0.9, 0.9 );
setScaleKey( spep_2-1 + 494, 1, 0.89, 0.89 );


setRotateKey( spep_2-3 + 0, 1, 0 );
setRotateKey( spep_2-3 + 28, 1, 0 );
setRotateKey( spep_2-3 + 29, 1, 0 );

setRotateKey( spep_2-3 + 30, 1, -4.7 );
setRotateKey( spep_2-3 + 32, 1, -4 );
setRotateKey( spep_2-3 + 34, 1, -3.2 );
setRotateKey( spep_2-3 + 36, 1, -2.3 );
setRotateKey( spep_2-3 + 38, 1, -1.4 );
setRotateKey( spep_2-3 + 40, 1, -0.4 );
setRotateKey( spep_2-3 + 42, 1, 0.7 );
setRotateKey( spep_2-3 + 44, 1, 1.8 );
setRotateKey( spep_2-3 + 46, 1, 3 );
setRotateKey( spep_2-3 + 48, 1, 4.3 );
setRotateKey( spep_2-3 + 50, 1, 5.6 );
setRotateKey( spep_2-3 + 52, 1, 7 );
setRotateKey( spep_2-3 + 54, 1, 8.5 );
setRotateKey( spep_2-3 + 56, 1, 10.1 );
setRotateKey( spep_2-3 + 58, 1, 11.7 );
setRotateKey( spep_2-3 + 60, 1, 13.4 );
setRotateKey( spep_2-3 + 62, 1, 15.2 );
setRotateKey( spep_2-3 + 64, 1, 17.1 );
setRotateKey( spep_2-3 + 66, 1, 19 );
setRotateKey( spep_2-3 + 68, 1, 21 );
setRotateKey( spep_2-3 + 69, 1, 21 );

setRotateKey( spep_2-3 + 70, 1, 19.7 );
setRotateKey( spep_2-3 + 72, 1, 19.7 );
setRotateKey( spep_2-3 + 74, 1, 19.6 );
setRotateKey( spep_2-3 + 80, 1, 19.6 );
setRotateKey( spep_2-3 + 82, 1, 19.7 );
setRotateKey( spep_2-3 + 88, 1, 19.7 );

setRotateKey( spep_2-3 + 148, 1, -84.6 );
setRotateKey( spep_2-3 + 171, 1, -84.6 );

setRotateKey( spep_2-3 + 172, 1, 0 );
setRotateKey( spep_2-3 + 174, 1, 0.1 );
setRotateKey( spep_2-3 + 176, 1, 0.3 );
setRotateKey( spep_2-3 + 178, 1, 0.4 );
setRotateKey( spep_2-3 + 180, 1, 0.6 );
setRotateKey( spep_2-3 + 182, 1, 0.7 );
setRotateKey( spep_2-3 + 184, 1, 0.9 );
setRotateKey( spep_2-3 + 186, 1, 1 );
setRotateKey( spep_2-3 + 187, 1, 1 );

setRotateKey( spep_2-3 + 188, 1, 1.1 );
setRotateKey( spep_2-3 + 190, 1, 1.3 );
setRotateKey( spep_2-3 + 192, 1, 1.4 );
setRotateKey( spep_2-3 + 194, 1, 1.6 );
setRotateKey( spep_2-3 + 196, 1, 1.7 );
setRotateKey( spep_2-3 + 198, 1, 1.9 );
setRotateKey( spep_2-3 + 200, 1, 2 );
setRotateKey( spep_2-3 + 202, 1, 2.1 );
setRotateKey( spep_2-3 + 204, 1, 2.3 );
setRotateKey( spep_2-3 + 206, 1, 2.4 );
setRotateKey( spep_2-3 + 208, 1, 2.6 );
setRotateKey( spep_2-3 + 210, 1, 2.7 );

setRotateKey( spep_2-3 + 238, 1, 0 );
setRotateKey( spep_2-3 + 258, 1, 0 );
setRotateKey( spep_2-3 + 259, 1, 0 );

setRotateKey( spep_2-3 + 260, 1, -21.2 );
setRotateKey( spep_2-3 + 274, 1, -21.2 );

setRotateKey( spep_2-3 + 294, 1, -16.4 );
setRotateKey( spep_2-3 + 296, 1, -13.6 );
setRotateKey( spep_2-3 + 298, 1, -11.3 );
setRotateKey( spep_2-3 + 300, 1, -9.3 );
setRotateKey( spep_2-3 + 302, 1, -7.8 );
setRotateKey( spep_2-3 + 304, 1, -6.7 );
setRotateKey( spep_2-3 + 306, 1, -6.1 );

setRotateKey( spep_2-3 + 392, 1, 39.3 );
setRotateKey( spep_2-3 + 394, 1, 45.2 );
setRotateKey( spep_2-3 + 396, 1, 50.9 );
setRotateKey( spep_2-3 + 398, 1, 56.2 );
setRotateKey( spep_2-3 + 400, 1, 61.4 );
setRotateKey( spep_2-3 + 402, 1, 66.2 );
setRotateKey( spep_2-3 + 404, 1, 70.8 );
setRotateKey( spep_2-3 + 406, 1, 75.2 );
setRotateKey( spep_2-3 + 408, 1, 79.2 );
setRotateKey( spep_2-3 + 410, 1, 83.1 );
setRotateKey( spep_2-3 + 412, 1, 86.6 );
setRotateKey( spep_2-3 + 414, 1, 89.9 );
setRotateKey( spep_2-3 + 416, 1, 93 );
setRotateKey( spep_2-3 + 418, 1, 95.8 );

setRotateKey( spep_2-3 + 432, 1, 81.5 );
setRotateKey( spep_2-3 + 434, 1, 83.9 );
setRotateKey( spep_2-3 + 436, 1, 86.2 );
setRotateKey( spep_2-3 + 438, 1, 88.5 );
setRotateKey( spep_2-3 + 440, 1, 90.8 );
setRotateKey( spep_2-3 + 442, 1, 93.1 );
setRotateKey( spep_2-3 + 444, 1, 95.5 );
setRotateKey( spep_2-3 + 446, 1, 97.8 );
setRotateKey( spep_2-3 + 447, 1, 97.8 );

setRotateKey( spep_2-3 + 448, 1, 27.4 );
setRotateKey( spep_2-1 + 494, 1, 27.4 );

--集中線
shuchusen2 = entryEffectLife( spep_2-3 + 90,  906, 20, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 90, shuchusen2, 20, 20 );
setEffMoveKey( spep_2-3 + 90, shuchusen2, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 110, shuchusen2, 0, 0 , 0 )

setEffScaleKey( spep_2-3 + 90, shuchusen2, 1.21, 1.84 );
setEffScaleKey( spep_2-3 + 110, shuchusen2, 1.21, 1.84 );

setEffRotateKey( spep_2-3 + 90, shuchusen2, 0 );
setEffRotateKey( spep_2-3 + 110, shuchusen2, 0 );

setEffAlphaKey( spep_2-3 + 90, shuchusen2, 204 );
setEffAlphaKey( spep_2-3 + 102, shuchusen2, 204 );
setEffAlphaKey( spep_2-3 + 104, shuchusen2, 153 );
setEffAlphaKey( spep_2-3 + 106, shuchusen2, 102 );
setEffAlphaKey( spep_2-3 + 108, shuchusen2, 51 );
setEffAlphaKey( spep_2-3 + 110, shuchusen2, 0 );

--集中線
shuchusen3 = entryEffectLife( spep_2-3 + 260,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 260, shuchusen3, 32, 20 );
setEffMoveKey( spep_2-3 + 260, shuchusen3, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 292, shuchusen3, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 260, shuchusen3, 1.3, 1.84 );
setEffScaleKey( spep_2-3 + 292, shuchusen3, 1.3, 1.84 );

setEffRotateKey( spep_2-3 + 260, shuchusen3, 0 );
setEffRotateKey( spep_2-3 + 292, shuchusen3, 0 );

setEffAlphaKey( spep_2-3 + 260, shuchusen3, 204 );
setEffAlphaKey( spep_2-3 + 292, shuchusen3, 204 );

--集中線
shuchusen4 = entryEffectLife( spep_2-3 + 372,  906, 24, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 372, shuchusen4, 24, 20 );
setEffMoveKey( spep_2-3 + 372, shuchusen4, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 396, shuchusen4, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 372, shuchusen4, 1.19, 1.89 );
setEffScaleKey( spep_2-3 + 396, shuchusen4, 1.19, 1.89 );

setEffRotateKey( spep_2-3 + 372, shuchusen4, 0 );
setEffRotateKey( spep_2-3 + 396, shuchusen4, 0 );

setEffAlphaKey( spep_2-3 + 372, shuchusen4, 204 );
setEffAlphaKey( spep_2-3 + 384, shuchusen4, 204 );
setEffAlphaKey( spep_2-3 + 386, shuchusen4, 170 );
setEffAlphaKey( spep_2-3 + 388, shuchusen4, 136 );
setEffAlphaKey( spep_2-3 + 390, shuchusen4, 102 );
setEffAlphaKey( spep_2-3 + 392, shuchusen4, 68 );
setEffAlphaKey( spep_2-3 + 394, shuchusen4, 34 );
setEffAlphaKey( spep_2-3 + 396, shuchusen4, 0 );

--集中線
shuchusen5 = entryEffectLife( spep_2-3 + 496,  906, 36, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 496, shuchusen5, 36, 20 );
setEffMoveKey( spep_2-3 + 496, shuchusen5, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 532, shuchusen5, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 496, shuchusen5, 1.19, 1.89 );
setEffScaleKey( spep_2-3 + 532, shuchusen5, 1.19, 1.89 );

setEffRotateKey( spep_2-3 + 496, shuchusen5, 0.3 );
setEffRotateKey( spep_2-3 + 532, shuchusen5, 0.3 );

setEffAlphaKey( spep_2-3 + 496, shuchusen5, 204 );
setEffAlphaKey( spep_2-3 + 520, shuchusen5, 204 );
setEffAlphaKey( spep_2-3 + 522, shuchusen5, 170 );
setEffAlphaKey( spep_2-3 + 524, shuchusen5, 136 );
setEffAlphaKey( spep_2-3 + 526, shuchusen5, 102 );
setEffAlphaKey( spep_2-3 + 528, shuchusen5, 68 );
setEffAlphaKey( spep_2-3 + 530, shuchusen5, 34 );
setEffAlphaKey( spep_2-3 + 532, shuchusen5, 0 );

--集中線
shuchusen6 = entryEffectLife( spep_2-3 + 544,  906, 84, 0x100, -1, 0, 0, 0 );
setEffShake( spep_2-3 + 544, shuchusen6, 84, 20 );
setEffMoveKey( spep_2-3 + 544, shuchusen6, 0, 0 , 0 );
setEffMoveKey( spep_2-3 + 628, shuchusen6, 0, 0 , 0 );

setEffScaleKey( spep_2-3 + 544, shuchusen6, 1.19, 2.32 );
setEffScaleKey( spep_2-3 + 628, shuchusen6, 1.19, 2.32 );

setEffRotateKey( spep_2-3 + 544, shuchusen6, 0 );
setEffRotateKey( spep_2-3 + 628, shuchusen6, 0 );

setEffAlphaKey( spep_2-3 + 544, shuchusen6, 204 );
setEffAlphaKey( spep_2-3 + 628, shuchusen6, 204 );

--文字エントリー
ctbako = entryEffectLife( spep_2-3 + 30,  10021, 30, 0x100, -1, 0, 149.4, 329.5 );--バゴォッ
setEffShake( spep_2-3 + 30, ctbako, 30, 10 );
setEffMoveKey( spep_2-3 + 30, ctbako, 149.4, 329.5 , 0 );
setEffMoveKey( spep_2-3 + 32, ctbako, 148.5, 329.1 , 0 );
setEffMoveKey( spep_2-3 + 34, ctbako, 149.3, 329.4 , 0 );
setEffMoveKey( spep_2-3 + 36, ctbako, 147.6, 356.6 , 0 );
setEffMoveKey( spep_2-3 + 38, ctbako, 149.3, 329.4 , 0 );
setEffMoveKey( spep_2-3 + 40, ctbako, 147.7, 355.9 , 0 );
setEffMoveKey( spep_2-3 + 42, ctbako, 149.4, 329.4 , 0 );
setEffMoveKey( spep_2-3 + 44, ctbako, 147.8, 355.3 , 0 );
setEffMoveKey( spep_2-3 + 46, ctbako, 149.4, 329.5 , 0 );
setEffMoveKey( spep_2-3 + 48, ctbako, 147.9, 354.6 , 0 );
setEffMoveKey( spep_2-3 + 50, ctbako, 149.5, 329.5 , 0 );
setEffMoveKey( spep_2-3 + 52, ctbako, 149.5, 329.5 , 0 );
setEffMoveKey( spep_2-3 + 54, ctbako, 148.1, 352.6 , 0 );
setEffMoveKey( spep_2-3 + 56, ctbako, 149.6, 329.6 , 0 );
setEffMoveKey( spep_2-3 + 58, ctbako, 148.4, 350 , 0 );
setEffMoveKey( spep_2-3 + 60, ctbako, 148.5, 348.6 , 0 );

setEffScaleKey( spep_2-3 + 30, ctbako, 1.55, 1.55 );
setEffScaleKey( spep_2-3 + 32, ctbako, 4.28, 4.28 );
setEffScaleKey( spep_2-3 + 34, ctbako, 3.21, 3.21 );
setEffScaleKey( spep_2-3 + 36, ctbako, 3.17, 3.17 );
setEffScaleKey( spep_2-3 + 38, ctbako, 3.13, 3.13 );
setEffScaleKey( spep_2-3 + 40, ctbako, 3.09, 3.09 );
setEffScaleKey( spep_2-3 + 42, ctbako, 3.05, 3.05 );
setEffScaleKey( spep_2-3 + 44, ctbako, 3.01, 3.01 );
setEffScaleKey( spep_2-3 + 46, ctbako, 2.97, 2.97 );
setEffScaleKey( spep_2-3 + 48, ctbako, 2.93, 2.93 );
setEffScaleKey( spep_2-3 + 50, ctbako, 2.89, 2.89 );
setEffScaleKey( spep_2-3 + 52, ctbako, 2.85, 2.85 );
setEffScaleKey( spep_2-3 + 54, ctbako, 2.69, 2.69 );
setEffScaleKey( spep_2-3 + 56, ctbako, 2.53, 2.53 );
setEffScaleKey( spep_2-3 + 58, ctbako, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 60, ctbako, 2.2, 2.2 );

setEffRotateKey( spep_2-3 + 30, ctbako, 32 );
setEffRotateKey( spep_2-3 + 60, ctbako, 32 );

setEffAlphaKey( spep_2-3 + 30, ctbako, 255 );
setEffAlphaKey( spep_2-3 + 52, ctbako, 255 );
setEffAlphaKey( spep_2-3 + 54, ctbako, 191 );
setEffAlphaKey( spep_2-3 + 56, ctbako, 128 );
setEffAlphaKey( spep_2-3 + 58, ctbako, 64 );
setEffAlphaKey( spep_2-3 + 60, ctbako, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_2-3 + 260,  10020, 24, 0x100, -1, 0, 162.8, 364.1 );--バキッ
setEffShake( spep_2-3 + 260, ctbaki, 24, 10 );
setEffMoveKey( spep_2-3 + 260, ctbaki, 162.8, 364.1 , 0 );
setEffMoveKey( spep_2-3 + 262, ctbaki, 161.7, 392.9 , 0 );
setEffMoveKey( spep_2-3 + 264, ctbaki, 162.8, 364.1 , 0 );
setEffMoveKey( spep_2-3 + 266, ctbaki, 162.8, 363.9 , 0 );
setEffMoveKey( spep_2-3 + 268, ctbaki, 162.1, 382.8 , 0 );
setEffMoveKey( spep_2-3 + 270, ctbaki, 162.9, 363.9 , 0 );
setEffMoveKey( spep_2-3 + 272, ctbaki, 162.2, 382.1 , 0 );
setEffMoveKey( spep_2-3 + 274, ctbaki, 162.9, 363.9 , 0 );
setEffMoveKey( spep_2-3 + 276, ctbaki, 162.2, 381.4 , 0 );
setEffMoveKey( spep_2-3 + 278, ctbaki, 162.9, 363.9 , 0 );
setEffMoveKey( spep_2-3 + 280, ctbaki, 162.2, 381.2 , 0 );
setEffMoveKey( spep_2-3 + 282, ctbaki, 162.9, 364 , 0 );
setEffMoveKey( spep_2-3 + 284, ctbaki, 162.8, 364 , 0 );

setEffScaleKey( spep_2-3 + 260, ctbaki, 1.88, 1.88 );
setEffScaleKey( spep_2-3 + 262, ctbaki, 3.38, 3.38 );
setEffScaleKey( spep_2-3 + 264, ctbaki, 2.83, 2.83 );
setEffScaleKey( spep_2-3 + 266, ctbaki, 2.27, 2.27 );
setEffScaleKey( spep_2-3 + 268, ctbaki, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 270, ctbaki, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 272, ctbaki, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 274, ctbaki, 2.11, 2.11 );
setEffScaleKey( spep_2-3 + 276, ctbaki, 2.07, 2.07 );
setEffScaleKey( spep_2-3 + 278, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_2-3 + 280, ctbaki, 2.04, 2.04 );
setEffScaleKey( spep_2-3 + 282, ctbaki, 2.05, 2.05 );
setEffScaleKey( spep_2-3 + 284, ctbaki, 2.06, 2.06 );

setEffRotateKey( spep_2-3 + 260, ctbaki, 2.9 );
setEffRotateKey( spep_2-3 + 284, ctbaki, 2.9 );

setEffAlphaKey( spep_2-3 + 260, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 278, ctbaki, 255 );
setEffAlphaKey( spep_2-3 + 280, ctbaki, 174 );
setEffAlphaKey( spep_2-3 + 282, ctbaki, 94 );
setEffAlphaKey( spep_2-3 + 284, ctbaki, 13 );

--文字エントリー
ctdogon = entryEffectLife( spep_2-3 + 372,  10018, 20, 0x100, -1, 0, 1.7, 429.2 );--ドゴォンッ
setEffShake( spep_2-3 + 372, ctdogon, 20, 10 );
setEffMoveKey( spep_2-3 + 372, ctdogon, 1.7, 429.2 , 0 );
setEffMoveKey( spep_2-3 + 374, ctdogon, 3.2, 427.9 , 0 );
setEffMoveKey( spep_2-3 + 376, ctdogon, 0.8, 429.8 , 0 );
setEffMoveKey( spep_2-3 + 378, ctdogon, 3.2, 428 , 0 );
setEffMoveKey( spep_2-3 + 380, ctdogon, 0.8, 429.7 , 0 );
setEffMoveKey( spep_2-3 + 382, ctdogon, 3.2, 427.8 , 0 );
setEffMoveKey( spep_2-3 + 384, ctdogon, 0.8, 429.5 , 0 );
setEffMoveKey( spep_2-3 + 386, ctdogon, 3.1, 427.7 , 0 );
setEffMoveKey( spep_2-3 + 388, ctdogon, 3.1, 427.7 , 0 );
setEffMoveKey( spep_2-3 + 390, ctdogon, 1, 429.4 , 0 );
setEffMoveKey( spep_2-3 + 392, ctdogon, 1.1, 429.4 , 0 );

setEffScaleKey( spep_2-3 + 372, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_2-3 + 374, ctdogon, 4.38, 4.38 );
setEffScaleKey( spep_2-3 + 376, ctdogon, 3.38, 3.38 );
setEffScaleKey( spep_2-3 + 378, ctdogon, 3.34, 3.34 );
setEffScaleKey( spep_2-3 + 380, ctdogon, 3.3, 3.3 );
setEffScaleKey( spep_2-3 + 382, ctdogon, 3.26, 3.26 );
setEffScaleKey( spep_2-3 + 384, ctdogon, 3.22, 3.22 );
setEffScaleKey( spep_2-3 + 386, ctdogon, 3.18, 3.18 );
setEffScaleKey( spep_2-3 + 388, ctdogon, 3.14, 3.14 );
setEffScaleKey( spep_2-3 + 390, ctdogon, 3.04, 3.04 );
setEffScaleKey( spep_2-3 + 392, ctdogon, 2.93, 2.93 );

setEffRotateKey( spep_2-3 + 372, ctdogon, 3.2 );
setEffRotateKey( spep_2-3 + 376, ctdogon, 3.2 );
setEffRotateKey( spep_2-3 + 378, ctdogon, 3.3 );
setEffRotateKey( spep_2-3 + 386, ctdogon, 3.3 );
setEffRotateKey( spep_2-3 + 388, ctdogon, 3.4 );
setEffRotateKey( spep_2-3 + 392, ctdogon, 3.4 );

setEffAlphaKey( spep_2-3 + 372, ctdogon, 255 );
setEffAlphaKey( spep_2-3 + 388, ctdogon, 255 );
setEffAlphaKey( spep_2-3 + 390, ctdogon, 128 );
setEffAlphaKey( spep_2-3 + 392, ctdogon, 0 );

--文字エントリー
ctzun = entryEffectLife( spep_2-3 + 496,  10016, 30, 0x100, -1, 0, -122.6, 366 );--ズンッ
setEffShake( spep_2-3 + 496, ctzun, 30, 10 );
setEffMoveKey( spep_2-3 + 496, ctzun, -122.6, 366 , 0 );
setEffMoveKey( spep_2-3 + 498, ctzun, -122.5, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 500, ctzun, -131.7, 367.7 , 0 );
setEffMoveKey( spep_2-3 + 502, ctzun, -122.2, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 504, ctzun, -130.6, 367.5 , 0 );
setEffMoveKey( spep_2-3 + 506, ctzun, -122.2, 365.9 , 0 );
setEffMoveKey( spep_2-3 + 508, ctzun, -130.5, 367.4 , 0 );
setEffMoveKey( spep_2-3 + 510, ctzun, -122.3, 365.8 , 0 );
setEffMoveKey( spep_2-3 + 512, ctzun, -130.4, 367.3 , 0 );
setEffMoveKey( spep_2-3 + 514, ctzun, -122.3, 365.7 , 0 );
setEffMoveKey( spep_2-3 + 516, ctzun, -130.4, 367.2 , 0 );
setEffMoveKey( spep_2-3 + 518, ctzun, -122.3, 365.7 , 0 );
setEffMoveKey( spep_2-3 + 520, ctzun, -130.3, 367.2 , 0 );
setEffMoveKey( spep_2-3 + 522, ctzun, -122.4, 365.7 , 0 );
setEffMoveKey( spep_2-3 + 524, ctzun, -130, 367.2 , 0 );
setEffMoveKey( spep_2-3 + 526, ctzun, -122.5, 365.9 , 0 );

setEffScaleKey( spep_2-3 + 496, ctzun, 1.33, 1.33 );
setEffScaleKey( spep_2-3 + 498, ctzun, 3.56, 3.56 );
setEffScaleKey( spep_2-3 + 500, ctzun, 3.22, 3.22 );
setEffScaleKey( spep_2-3 + 502, ctzun, 2.88, 2.88 );
setEffScaleKey( spep_2-3 + 504, ctzun, 2.86, 2.86 );
setEffScaleKey( spep_2-3 + 506, ctzun, 2.85, 2.85 );
setEffScaleKey( spep_2-3 + 508, ctzun, 2.83, 2.83 );
setEffScaleKey( spep_2-3 + 510, ctzun, 2.81, 2.81 );
setEffScaleKey( spep_2-3 + 512, ctzun, 2.79, 2.79 );
setEffScaleKey( spep_2-3 + 514, ctzun, 2.77, 2.77 );
setEffScaleKey( spep_2-3 + 516, ctzun, 2.76, 2.76 );
setEffScaleKey( spep_2-3 + 518, ctzun, 2.74, 2.74 );
setEffScaleKey( spep_2-3 + 520, ctzun, 2.72, 2.72 );
setEffScaleKey( spep_2-3 + 522, ctzun, 2.65, 2.65 );
setEffScaleKey( spep_2-3 + 524, ctzun, 2.58, 2.58 );
setEffScaleKey( spep_2-3 + 526, ctzun, 2.5, 2.5 );

setEffRotateKey( spep_2-3 + 496, ctzun, -31.6 );
setEffRotateKey( spep_2-3 + 508, ctzun, -31.6 );
setEffRotateKey( spep_2-3 + 510, ctzun, -31.7 );
setEffRotateKey( spep_2-3 + 518, ctzun, -31.7 );
setEffRotateKey( spep_2-3 + 520, ctzun, -31.8 );
setEffRotateKey( spep_2-3 + 522, ctzun, -31.7 );
setEffRotateKey( spep_2-3 + 524, ctzun, -31.6 );
setEffRotateKey( spep_2-3 + 526, ctzun, -31.6 );

setEffAlphaKey( spep_2-3 + 496, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 502, ctzun, 255 );
setEffAlphaKey( spep_2-3 + 504, ctzun, 248 );
setEffAlphaKey( spep_2-3 + 506, ctzun, 241 );
setEffAlphaKey( spep_2-3 + 508, ctzun, 234 );
setEffAlphaKey( spep_2-3 + 510, ctzun, 227 );
setEffAlphaKey( spep_2-3 + 512, ctzun, 220 );
setEffAlphaKey( spep_2-3 + 514, ctzun, 213 );
setEffAlphaKey( spep_2-3 + 516, ctzun, 205 );
setEffAlphaKey( spep_2-3 + 518, ctzun, 198 );
setEffAlphaKey( spep_2-3 + 520, ctzun, 191 );
setEffAlphaKey( spep_2-3 + 522, ctzun, 132 );
setEffAlphaKey( spep_2-3 + 524, ctzun, 72 );
setEffAlphaKey( spep_2-3 + 526, ctzun, 13 );

--SE
se_0009 = playSe( spep_2 + 0, 9 );
se_1183 = playSe( spep_2 + 0, 1183 );
se_1182 = playSe( spep_2 + 0, 1182 );
setSeVolume( spep_2 + 0, 1182, 89 );
playSe( spep_2 + 34, 1003 );
se_1190 = playSe( spep_2 + 42, 1190 );
setSeVolume( spep_2 + 42, 1190, 141 );
playSe( spep_2 + 44, 1187 );
setSeVolume( spep_2 + 44, 1187, 79 );
playSe( spep_2 + 48, 1110 );
setSeVolume( spep_2 + 48, 1110, 79 );
playSe( spep_2 + 53, 1009 );
se_1121 = playSe( spep_2 + 65, 1121 );
setSeVolume( spep_2 + 65, 1121, 71 );
se_1183 = playSe( spep_2 + 65, 1183 );
setSeVolume( spep_2 + 65, 1183, 79 );
se_1190 = playSe( spep_2 + 100, 1190 );
setSeVolume( spep_2 + 100, 1190, 89 );
playSe( spep_2 + 103, 1012 );
setSeVolume( spep_2 + 103, 1012, 89 );
playSe( spep_2 + 108, 1006 );
setSeVolume( spep_2 + 108, 1006, 79 );
se_1190 = playSe( spep_2 + 121, 1190 );
setSeVolume( spep_2 + 121, 1190, 9.1 );
setSeVolume( spep_2 + 122, 1190, 18.2 );
setSeVolume( spep_2 + 123, 1190, 27.3 );
setSeVolume( spep_2 + 124, 1190, 36.4 );
setSeVolume( spep_2 + 125, 1190, 45.5 );
setSeVolume( spep_2 + 126, 1190, 54.6 );
setSeVolume( spep_2 + 127, 1190, 63.7 );
setSeVolume( spep_2 + 128, 1190, 72.8 );
setSeVolume( spep_2 + 129, 1190, 81.9 );
setSeVolume( spep_2 + 130, 1190, 91 );
setSeVolume( spep_2 + 131, 1190, 100 );
se_1125 = playSe( spep_2 + 155, 1125 );
setSeVolume( spep_2 + 155, 1125, 0 );
setSeVolume( spep_2 + 233, 1125, 16.6 );
setSeVolume( spep_2 + 234, 1125, 33.2 );
setSeVolume( spep_2 + 235, 1125, 49.8 );
setSeVolume( spep_2 + 236, 1125, 66.4 );
setSeVolume( spep_2 + 237, 1125, 83 );
setSeVolume( spep_2 + 238, 1125, 100 );
playSe( spep_2 + 161, 1004 );
playSe( spep_2 + 161, 1014 );
se_0009 = playSe( spep_2 + 164, 9 );
playSe( spep_2 + 193, 1010 );
setSeVolume( spep_2 + 193, 1010, 63 );
se_1153 = playSe( spep_2 + 195, 1153 );
setSeVolume( spep_2 + 195, 1153, 71 );
playSe( spep_2 + 230, 1014 );
setSeVolume( spep_2 + 230, 1014, 7.9 );
setSeVolume( spep_2 + 231, 1014, 15.8 );
setSeVolume( spep_2 + 232, 1014, 23.7 );
setSeVolume( spep_2 + 233, 1014, 31.6 );
setSeVolume( spep_2 + 234, 1014, 39.5 );
setSeVolume( spep_2 + 235, 1014, 47.4 );
setSeVolume( spep_2 + 236, 1014, 55.3 );
setSeVolume( spep_2 + 237, 1014, 63.2 );
setSeVolume( spep_2 + 238, 1014, 71.1 );
setSeVolume( spep_2 + 239, 1014, 79 );
playSe( spep_2 + 260, 1003 );
playSe( spep_2 + 269, 1010 );
se_1190 = playSe( spep_2 + 269, 1190 );
playSe( spep_2 + 272, 1169 );
setSeVolume( spep_2 + 272, 1169, 63 );
playSe( spep_2 + 311, 1023 );
playSe( spep_2 + 314, 1033 );
playSe( spep_2 + 327, 1111 );
setSeVolume( spep_2 + 327, 1111, 178 );
se_1190 = playSe( spep_2 + 332, 1190 );
playSe( spep_2 + 340, 1182 );
setSeVolume( spep_2 + 340, 1182, 6.7 );
setSeVolume( spep_2 + 341, 1182, 13.4 );
setSeVolume( spep_2 + 342, 1182, 20.1 );
setSeVolume( spep_2 + 343, 1182, 28.8 );
setSeVolume( spep_2 + 344, 1182, 33.5 );
setSeVolume( spep_2 + 345, 1182, 40.2 );
setSeVolume( spep_2 + 346, 1182, 46.9 );
setSeVolume( spep_2 + 347, 1182, 53.6 );
setSeVolume( spep_2 + 348, 1182, 60.3 );
setSeVolume( spep_2 + 349, 1182, 67 );
setSeVolume( spep_2 + 350, 1182, 73.7 );
setSeVolume( spep_2 + 351, 1182, 80.4 );
setSeVolume( spep_2 + 352, 1182, 87.1 );
setSeVolume( spep_2 + 353, 1182, 93.8 );
setSeVolume( spep_2 + 354, 1182, 100 );
se_1116 = playSe( spep_2 + 382, 1116 );
setSeVolume( spep_2 + 388, 1160, 50 );
playSe( spep_2 + 382, 1011 );
se_1160 = playSe( spep_2 + 388, 1160 );
se_1159 = playSe( spep_2 + 394, 1159 );
setSeVolume( spep_2 + 394, 1159, 50 );
playSe( spep_2 + 453, 1012 );
se_1190 = playSe( spep_2 + 453, 1190 );
setSeVolume( spep_2 + 453, 1190, 63 );
playSe( spep_2 + 457, 1007 );
se_1159 = playSe( spep_2 + 504, 1159 );
setSeVolume( spep_2 + 504, 1159, 63 );
se_1024 = playSe( spep_2 + 504, 1024 );
se_1144 = playSe( spep_2 + 511, 1144 );
setSeVolume( spep_2 + 511, 1144, 0 );
setSeVolume( spep_2 + 550, 1144, 3.3 );
setSeVolume( spep_2 + 551, 1144, 6.6 );
setSeVolume( spep_2 + 552, 1144, 9.9 );
setSeVolume( spep_2 + 553, 1144, 13.2 );
setSeVolume( spep_2 + 554, 1144, 16.5 );
setSeVolume( spep_2 + 555, 1144, 19.8 );
setSeVolume( spep_2 + 556, 1144, 23.1 );
setSeVolume( spep_2 + 557, 1144, 26.4 );
setSeVolume( spep_2 + 558, 1144, 29.7 );
setSeVolume( spep_2 + 559, 1144, 33 );
setSeVolume( spep_2 + 560, 1144, 36.3 );
setSeVolume( spep_2 + 561, 1144, 39.6 );
setSeVolume( spep_2 + 562, 1144, 42.9 );
setSeVolume( spep_2 + 563, 1144, 46.2 );
setSeVolume( spep_2 + 564, 1144, 49.5 );
setSeVolume( spep_2 + 565, 1144, 52.8 );
setSeVolume( spep_2 + 566, 1144, 56.1 );
setSeVolume( spep_2 + 567, 1144, 59.4 );
setSeVolume( spep_2 + 568, 1144, 63 );
playSe( spep_2 + 551, 49 );
setSeVolume( spep_2 + 551, 49, 126 );
se_1157 = playSe( spep_2 + 557, 1157 );
setSeVolume( spep_2 + 557, 1157, 79 );
se_0017 = playSe( spep_2 + 557, 17 );
setSeVolume( spep_2 + 557, 17, 71 );
se_1213 = playSe( spep_2 + 590, 1213 );
setSeVolume( spep_2 + 590, 1213, 79 );
playSe( spep_2 + 590, 1027 );


stopSe( spep_2 + 55, se_0009, 0 );
stopSe( spep_2 + 50, se_1183, 0 );
stopSe( spep_2 + 50, se_1182, 0 );
stopSe( spep_2 + 57, se_1190, 14 );
stopSe( spep_2 + 107, se_1121, 0 );
stopSe( spep_2 + 107, se_1183, 0 );
stopSe( spep_2 + 107, se_1190, 7 );
stopSe( spep_2 + 145, se_1190, 23 );
stopSe( spep_2 + 268, se_1125, 27 );
stopSe( spep_2 + 250, se_0009, -17 );
stopSe( spep_2 + 217, se_1153, 20 );
stopSe( spep_2 + 279, se_1190, 33 );
stopSe( spep_2 + 351, se_1190, 27 );
stopSe( spep_2 + 407, se_1116, 18 );
stopSe( spep_2 + 433, se_1160, 48 );
stopSe( spep_2 + 476, se_1159, 58 );
stopSe( spep_2 + 475, se_1190, 14 );
stopSe( spep_2 + 562, se_1159, 37 );
stopSe( spep_2 + 560, se_1024, 29 );
stopSe( spep_2 + 591, se_1144, 27 );
stopSe( spep_2 + 612, se_1157, 0 );
stopSe( spep_2 + 603, se_0017, 20 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 634, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_2 + 622, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_3=spep_2+630;
------------------------------------------------------
-- 爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_3 + 0, 3112, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_3 + 130, finish, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_3 + 130, finish, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish, 0 );
setEffRotateKey( spep_3 + 130, finish, 0 );
setEffAlphaKey( spep_3 + 0, finish, 255 );
setEffAlphaKey( spep_3 + 130, finish, 255 );

--SE
playSe( spep_3 + 19, 1159 );
setSeVolume( spep_3 + 19, 1159, 79 );
playSe( spep_3 + 20, 1044 );
setSeVolume( spep_3 + 20, 1044, 79 );

stopSe( spep_3 + 36, se_1213, 59 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 140, 0,  255, 255, 255, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 10 );
endPhase( spep_3 + 130 );
end
