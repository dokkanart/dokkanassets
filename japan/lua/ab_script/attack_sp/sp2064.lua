--1020500:フリーザ(最終形態)(天使)_デスサイコキネシス
--sp_effect_a5_00014

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
SP_01 = 156109;  --登場（敵味方共通）   ef_001
SP_02 = 156110;  --発射①（味方側）    ef_002
SP_03 = 156112;  --命中①（味方側）    ef_003
SP_04 = 156114;  --↑背景部分（敵味方共通）    ef_003_bg
SP_05 = 156115;  --発射②（味方側）    ef_004
SP_06 = 156117;  --命中②（味方側）    ef_005
SP_07 = 156119;  --↑背景部分   ef_005_bg
SP_08 = 156120;  --発射③（敵味方共通）  ef_006
SP_09 = 156121;  --発射③（味方側）    ef_007
SP_10 = 156123;  --命中③（味方側）    ef_008

--敵側
SP_02r = 156111;  --発射①（敵側） ef_002_r
SP_03r = 156113;  --命中①（敵側） ef_003_r
SP_05r = 156116;  --発射②（敵側） ef_004_r
SP_06r = 156118;  --命中②（敵側） ef_005_r
SP_09r = 156122;  --発射③（敵側） ef_007_r
SP_10r = 156124;  --命中③（敵側） ef_008_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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
-- 登場(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --立ち〜背中パンチ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 255 );

spep_x = spep_0 + 22;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, 190, 518.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, 190, 518.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 190, 518.5 , 0 );
setEffScaleKey( spep_x + 13, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 13, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 24, 1018 );
--カメラ遷移
SE002 = playSe( spep_0 + 96, 1072 );
setSeVolumeByWorkId( spep_0 + 96, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 98, SE002, 8 );
setSeVolumeByWorkId( spep_0 + 100, SE002, 16 );
setSeVolumeByWorkId( spep_0 + 102, SE002, 24 );
setSeVolumeByWorkId( spep_0 + 104, SE002, 32 );
setSeVolumeByWorkId( spep_0 + 106, SE002, 40 );
setSeVolumeByWorkId( spep_0 + 108, SE002, 48 );
setSeVolumeByWorkId( spep_0 + 110, SE002, 56 );
setSeVolumeByWorkId( spep_0 + 112, SE002, 63 );
setStartTimeMs( SE002,  250 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 100, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--発射①(86F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffectLife( spep_1 + 0, SP_02, 85, 0x100, -1, 0, 0, 0 );  --発射①（味方側）(ef_002)
setEffMoveKey( spep_1 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_1 + 85, shot, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_1 + 85, shot, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot, 0 );
setEffRotateKey( spep_1 + 85, shot, 0 );
setEffAlphaKey( spep_1 + 0, shot, 255 );
setEffAlphaKey( spep_1 + 85, shot, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE00, 0);
    --stopSe( SP_dodge - 12, SE01, 0);
    --stopSe( SP_dodge - 12, SE02, 0);
    --stopSe( SP_dodge - 12, SE03, 0);
    --stopSe( SP_dodge - 12, SE04, 0);
    --stopSe( SP_dodge - 12, SE05, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--腕前にだす
SE003 = playSe( spep_1 + 16, 1208 );
setSeVolumeByWorkId( spep_1 + 16, SE003, 33 );
setPitch( spep_1 + 16, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );

--気弾溜め1
SE004 = playSe( spep_1 + 34, 1281 );
setSeVolumeByWorkId( spep_1 + 34, SE004, 126 );
stopSe( spep_1 + 84, SE004, 22 );

--気弾溜め2
SE005 = playSe( spep_1 + 34, 1282 );
setSeVolumeByWorkId( spep_1 + 34, SE005, 36 );

--気弾発射1
SE007 = playSe( spep_1 + 78, 1027 );
setSeVolumeByWorkId( spep_1 + 78, SE007, 66 );

--気弾発射2
SE008 = playSe( spep_1 + 78, 1212 );
setSeVolumeByWorkId( spep_1 + 78, SE008, 52 );
stopSe( spep_1 +86 +88 + 0, SE008, 20 );
setPitch( spep_1 + 78, SE008, 400 );
setTimeStretch( SE008, 0.84, 10, 1 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

--------------------------------------
--命中①(88F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --命中①（味方側）(ef_003)
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 88, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 88, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --背景部分（敵味方共通）(ef_003_bg)
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 88, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 88, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 88, hit_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 7,  906, 13, 0x80, -1, 20, -90, 0 );  --集中線
setEffShake( spep_2 + 7, shuchusen1, 13, 25 );
setEffMoveKey(   spep_2 + 7, shuchusen1, 20, -90 , 0 );
setEffMoveKey(   spep_2 + 20, shuchusen1, 20, -90 , 0 );

setEffScaleKey(  spep_2 + 7, shuchusen1, 3.9, 3,9 );
setEffScaleKey(  spep_2 + 9, shuchusen1, 3.6, 3,6 );
setEffScaleKey(  spep_2 + 11, shuchusen1, 3.0, 3.0 );
setEffScaleKey(  spep_2 + 13, shuchusen1, 2.8, 2.8 );
setEffScaleKey(  spep_2 + 15, shuchusen1, 2.2, 2.2 );
setEffScaleKey(  spep_2 + 17, shuchusen1, 1.8, 1.8 );
setEffScaleKey(  spep_2 + 19, shuchusen1, 1.6, 1.6 );

setEffScaleKey(  spep_2 + 20, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_2 + 7, shuchusen1, 0 );
setEffRotateKey( spep_2 + 20, shuchusen1, 0 );
setEffAlphaKey(  spep_2 + 7, shuchusen1, 255 );
setEffAlphaKey(  spep_2 + 20, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 88, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 -3 + 36, 1, 106 );

setMoveKey( spep_2 + 0, 1, 31, -133 , 10 );
setMoveKey( spep_2 -3 + 28, 1, 31, -133 , 10 );
setMoveKey( spep_2 -3 + 29, 1, 31, -133 , 10 );
setMoveKey( spep_2 -3 + 30, 1, 50.5, -136.9 , 10 );
setMoveKey( spep_2 -3 + 31, 1, 50.5, -136.9 , 10 );
setMoveKey( spep_2 -3 + 32, 1, 31, -131.1 , 10 );
setMoveKey( spep_2 -3 + 35, 1, 50.5, -136.9 , 10 );

--a1 = -20;
--b1 = 40;

setMoveKey( spep_2 -3 + 36, 1, 11, -90.6, 0 );
setMoveKey( spep_2 -3 + 37, 1, 11, -90.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 30.5, -90.2, 0 );
setMoveKey( spep_2 -3 + 39, 1, 30.5, -90.2, 0 );
setMoveKey( spep_2 -3 + 40, 1, 11, -95.6, 0 );
setMoveKey( spep_2 -3 + 42, 1, 28.6, -87.3, 0 );
setMoveKey( spep_2 -3 + 44, 1, 13, -94.7, 0 );
setMoveKey( spep_2 -3 + 46, 1, 28.6, -86.4, 0 );
setMoveKey( spep_2 -3 + 48, 1, 13, -93.8, 0 );
setMoveKey( spep_2 -3 + 50, 1, 28.6, -85.5, 0 );
setMoveKey( spep_2 -3 + 52, 1, 13, -92.9, 0 );
setMoveKey( spep_2 -3 + 54, 1, 28.6, -84.6, 0 );
setMoveKey( spep_2 -3 + 56, 1, 7.1, -86.1, 0 );
setMoveKey( spep_2 -3 + 58, 1, 34.4, -89.6, 0 );
setMoveKey( spep_2 -3 + 60, 1, 11, -83.3, 0 );
setMoveKey( spep_2 -3 + 62, 1, 30.5, -90.7, 0 );
setMoveKey( spep_2 -3 + 64, 1, 14.9, -82.4, 0 );
setMoveKey( spep_2 -3 + 66, 1, 34.4, -89.8, 0 );
setMoveKey( spep_2 -3 + 68, 1, 7.1, -81.5, 0 );
setMoveKey( spep_2 -3 + 70, 1, 32.5, -83, 0 );
setMoveKey( spep_2 -3 + 72, 1, 9.1, -82.6, 0 );
setMoveKey( spep_2 -3 + 74, 1, 32.5, -82.1, 0 );
setMoveKey( spep_2 -3 + 76, 1, 11, -77.8, 0 );
setMoveKey( spep_2 -3 + 78, 1, 30.5, -89, 0 );
setMoveKey( spep_2 -3 + 80, 1, 11, -78.8, 0 );
setMoveKey( spep_2 -3 + 82, 1, 30.5, -86.2, 0 );
setMoveKey( spep_2 -3 + 84, 1, 11, -77.9, 0 );
setMoveKey( spep_2 -3 + 86, 1, 30.5, -85.3, 0 );
setMoveKey( spep_2 -3 + 88, 1, 11, -75.1, 0 );
setMoveKey( spep_2 -3 + 90, 1, 30.5, -84.4, 0 );
setMoveKey( spep_2 -3 + 91, 1, 30.5, -84.4, 0 );

setScaleKey( spep_2 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 91, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 35, 1, 0 );
setRotateKey( spep_2 -3 + 36, 1, -50 );
setRotateKey( spep_2 -3 + 91, 1, -50 );


-- ** 音 ** --
--気弾発射3
SE010 = playSe( spep_2 + 10, 1021 );
setSeVolumeByWorkId( spep_2 + 10, SE010, 52 );

--気弾発射4
SE011 = playSe( spep_2 + 46, 1236 );
setSeVolumeByWorkId( spep_2 + 46, SE011, 122 );
setTimeStretch( SE011, 0.5, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;


--------------------------------------
--発射②(106F)
--------------------------------------
-- ** エフェクト等 ** --
shot2 = entryEffectLife( spep_3 + 0, SP_05, 105 -2, 0x100, -1, 0, 0, 0 );  --発射②（味方側）(ef_004)
setEffMoveKey( spep_3 + 0, shot2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 105 -2, shot2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 105 -2, shot2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot2, 0 );
setEffRotateKey( spep_3 + 105 -2, shot2, 0 );
setEffAlphaKey( spep_3 + 0, shot2, 255 );
setEffAlphaKey( spep_3 + 105 -2, shot2, 255 );
setEffAlphaKey( spep_3 + 105 -1, shot2, 0 );


-- ** 音 ** --
--岩持ち上げる1
SE006 = playSe( spep_3 + 20, 1168 );
setSeVolumeByWorkId( spep_3 + 20, SE006, 0 );
setSeVolumeByWorkId( spep_3 + 21, SE006, 11 );
setSeVolumeByWorkId( spep_3 + 22, SE006, 21 );
setSeVolumeByWorkId( spep_3 + 23, SE006, 41 );
setSeVolumeByWorkId( spep_3 + 24, SE006, 61 );
setSeVolumeByWorkId( spep_3 + 25, SE006, 81 );
setSeVolumeByWorkId( spep_3 + 26, SE006, 101 );
setSeVolumeByWorkId( spep_3 + 27, SE006, 121 );
setSeVolumeByWorkId( spep_3 + 28, SE006, 141 );
setStartTimeMs( SE006,  2100 );

--岩持ち上げる2
SE009 = playSe( spep_3 + 20, 1175 );
setSeVolumeByWorkId( spep_3 + 20, SE009, 0 );
setSeVolumeByWorkId( spep_3 + 25, SE009, 10 );
setSeVolumeByWorkId( spep_3 + 30, SE009, 15 );
setSeVolumeByWorkId( spep_3 + 35, SE009, 20 );
setSeVolumeByWorkId( spep_3 + 40, SE009, 25 );
stopSe( spep_3 + 90, SE009, 40 );
setStartTimeMs( SE009,  1817 );

--岩持ち上げる3
SE012 = playSe( spep_3 + 22, 1117 );
setSeVolumeByWorkId( spep_3 + 22, SE012, 71 );

--岩投げる1
SE013 = playSe( spep_3 + 90, 1258 );
setSeVolumeByWorkId( spep_3 + 90, SE013, 70 );

--岩投げる1
SE014 = playSe( spep_3 + 90, 1027 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 106 -2;


--------------------------------------
--命中②(76F)
--------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --命中②（味方側）(ef_005)
setEffMoveKey( spep_4 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit2_f, 0 );
setEffRotateKey( spep_4 + 76, hit2_f, 0 );
setEffAlphaKey( spep_4 + 0, hit2_f, 255 );
setEffAlphaKey( spep_4 + 76, hit2_f, 255 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --背景部分（敵味方共通）(ef_003_bg)
setEffMoveKey( spep_4 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit2_b, 0 );
setEffRotateKey( spep_4 + 76, hit2_b, 0 );
setEffAlphaKey( spep_4 + 0, hit2_b, 255 );
setEffAlphaKey( spep_4 + 76, hit2_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 30, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 4, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 5, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_4 + 6, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_4 + 7, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 8, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 13, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_4 + 14, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_4 + 15, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 16, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 17, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_4 + 18, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_4 + 19, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 30, 1, 52.7, -142.1 , 0 );

setScaleKey( spep_4 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_4 + 30, 1, 1.2, 1.2 );

setRotateKey( spep_4 + 0, 1, -50 );
setRotateKey( spep_4 + 30, 1, -50 );

-- ** 音 ** --
--爆発1
SE015 = playSe( spep_4 + 12, 1011 );
stopSe( spep_4 +76 + 4, SE015, 0 );

--爆発2
SE016 = playSe( spep_4 + 28, 1023 );
stopSe( spep_4 +76 + 4, SE016, 0 );

--爆発3
SE017 = playSe( spep_4 + 40, 1024 );
stopSe( spep_4 +76 + 4, SE017, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 68, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


--------------------------------------
--発射③(176F)
--------------------------------------
-- ** エフェクト等 ** --
shot3_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --命中②（味方側）(ef_005)
setEffMoveKey( spep_6 + 0, shot3_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, shot3_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot3_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 176, shot3_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot3_f, 0 );
setEffRotateKey( spep_6 + 176, shot3_f, 0 );
setEffAlphaKey( spep_6 + 0, shot3_f, 255 );
setEffAlphaKey( spep_6 + 176, shot3_f, 255 );

-- ** 音 ** --
--両手上げる
SE019 = playSe( spep_6 + 0, 1003 );
setSeVolumeByWorkId( spep_6 + 0, SE019, 53 );

--気弾溜め1
SE020 = playSe( spep_6 + 26, 1281 );
setSeVolumeByWorkId( spep_6 + 62, SE020, 43 );
setSeVolumeByWorkId( spep_6 + 72, SE020, 77 );
setSeVolumeByWorkId( spep_6 + 154, SE020, 77 );
setSeVolumeByWorkId( spep_6 + 158, SE020, 133 );
stopSe( spep_6 +176 + 92, SE020, 40 );

--気弾溜め1
SE021 = playSe( spep_6 + 26, 1161 );
setSeVolumeByWorkId( spep_6 + 26, SE021, 52 );

--気弾溜め2
SE022 = playSe( spep_6 + 26, 1200 );
setSeVolumeByWorkId( spep_6 + 26, SE022, 153 );
stopSe( spep_6 +176 + 68, SE022, 38 );
setTimeStretch( SE022, 1.25, 10, 1 );

--気弾溜め3
SE023 = playSe( spep_6 + 26, 1227 );
stopSe( spep_6 +176 + 90, SE023, 80 );

--気弾大きくなる1
SE024 = playSe( spep_6 + 86, 1271 );
setSeVolumeByWorkId( spep_6 + 86, SE024, 141 );
stopSe( spep_6 +176 +100 + 0, SE024, 48 );

--気弾大きくなる2
SE025 = playSe( spep_6 + 90, 1282 );
setSeVolumeByWorkId( spep_6 + 90, SE025, 49 );

--気弾大きくなる3
SE026 = playSe( spep_6 + 106, 1072 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 176;


------------------------------------------------------
-- 発射③（味方側）(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot4_f = entryEffectLife( spep_7 + 0, SP_09, 100, 0x100, -1, 0, 0, 0 );  --発射③（味方側）(ef_007)
setEffMoveKey( spep_7 + 0, shot4_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shot4_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shot4_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, shot4_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, shot4_f, 0 );
setEffRotateKey( spep_7 + 100, shot4_f, 0 );
setEffAlphaKey( spep_7 + 0, shot4_f, 255 );
setEffAlphaKey( spep_7 + 100, shot4_f, 255 );

-- ** 音 ** --
--顔アップ
SE027 = playSe( spep_7 + 8, 1116 );
setSeVolumeByWorkId( spep_7 + 8, SE027, 112 );
stopSe( spep_7 + 34, SE027, 24 );

--気弾発射1
SE028 = playSe( spep_7 + 90, 1027 );

--気弾発射2
SE029 = playSe( spep_7 + 90, 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 100;


------------------------------------------------------
-- 命中③（味方側）(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit4_f = entryEffect( spep_8 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --命中③（味方側）(ef_008)
setEffMoveKey( spep_8 + 0, hit4_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 178, hit4_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hit4_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 178, hit4_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit4_f, 0 );
setEffRotateKey( spep_8 + 178, hit4_f, 0 );
setEffAlphaKey( spep_8 + 0, hit4_f, 255 );
setEffAlphaKey( spep_8 + 178, hit4_f, 255 );

-- ** 音 ** --
--爆発
SE030 = playSe( spep_8 + 36, 1024 );

--ラスト爆発1
SE031 = playSe( spep_8 + 66, 1023 );

--ラスト爆発2
SE032 = playSe( spep_8 + 66, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 154, 16, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 66 );
endPhase( spep_8 + 166 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --立ち〜背中パンチ(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 255 );

spep_x = spep_0 + 22;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, 190 -200, 518.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, 190 -200, 518.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 190 -200, 518.5 , 0 );
setEffScaleKey( spep_x + 13, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 13, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--顔カットイン
SE001 = playSe( spep_0 + 24, 1018 );
--カメラ遷移
SE002 = playSe( spep_0 + 96, 1072 );
setSeVolumeByWorkId( spep_0 + 96, SE002, 0 );
setSeVolumeByWorkId( spep_0 + 98, SE002, 8 );
setSeVolumeByWorkId( spep_0 + 100, SE002, 16 );
setSeVolumeByWorkId( spep_0 + 102, SE002, 24 );
setSeVolumeByWorkId( spep_0 + 104, SE002, 32 );
setSeVolumeByWorkId( spep_0 + 106, SE002, 40 );
setSeVolumeByWorkId( spep_0 + 108, SE002, 48 );
setSeVolumeByWorkId( spep_0 + 110, SE002, 56 );
setSeVolumeByWorkId( spep_0 + 112, SE002, 63 );
setStartTimeMs( SE002,  250 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 100, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


--------------------------------------
--発射①(86F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffectLife( spep_1 + 0, SP_02r, 85, 0x100, -1, 0, 0, 0 );  --発射①（味方側）(ef_002)
setEffMoveKey( spep_1 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_1 + 85, shot, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_1 + 85, shot, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shot, 0 );
setEffRotateKey( spep_1 + 85, shot, 0 );
setEffAlphaKey( spep_1 + 0, shot, 255 );
setEffAlphaKey( spep_1 + 85, shot, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 18 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE00, 0);
    --stopSe( SP_dodge - 12, SE01, 0);
    --stopSe( SP_dodge - 12, SE02, 0);
    --stopSe( SP_dodge - 12, SE03, 0);
    --stopSe( SP_dodge - 12, SE04, 0);
    --stopSe( SP_dodge - 12, SE05, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--腕前にだす
SE003 = playSe( spep_1 + 16, 1208 );
setSeVolumeByWorkId( spep_1 + 16, SE003, 33 );
setPitch( spep_1 + 16, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );

--気弾溜め1
SE004 = playSe( spep_1 + 34, 1281 );
setSeVolumeByWorkId( spep_1 + 34, SE004, 126 );
stopSe( spep_1 + 84, SE004, 22 );

--気弾溜め2
SE005 = playSe( spep_1 + 34, 1282 );
setSeVolumeByWorkId( spep_1 + 34, SE005, 36 );

--気弾発射1
SE007 = playSe( spep_1 + 78, 1027 );
setSeVolumeByWorkId( spep_1 + 78, SE007, 66 );

--気弾発射2
SE008 = playSe( spep_1 + 78, 1212 );
setSeVolumeByWorkId( spep_1 + 78, SE008, 52 );
stopSe( spep_1 +86 +88 + 0, SE008, 20 );
setPitch( spep_1 + 78, SE008, 400 );
setTimeStretch( SE008, 0.84, 10, 1 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 86;

--------------------------------------
--命中①(88F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --命中①（味方側）(ef_003)
setEffMoveKey( spep_2 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 88, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_f, 0 );
setEffRotateKey( spep_2 + 88, hit_f, 0 );
setEffAlphaKey( spep_2 + 0, hit_f, 255 );
setEffAlphaKey( spep_2 + 88, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --背景部分（敵味方共通）(ef_003_bg)
setEffMoveKey( spep_2 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 88, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 88, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, hit_b, 0 );
setEffRotateKey( spep_2 + 88, hit_b, 0 );
setEffAlphaKey( spep_2 + 0, hit_b, 255 );
setEffAlphaKey( spep_2 + 88, hit_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 7,  906, 13, 0x80, -1, 20, -90, 0 );  --集中線
setEffShake( spep_2 + 7, shuchusen1, 13, 25 );
setEffMoveKey(   spep_2 + 7, shuchusen1, 20, -90 , 0 );
setEffMoveKey(   spep_2 + 20, shuchusen1, 20, -90 , 0 );

setEffScaleKey(  spep_2 + 7, shuchusen1, 3.9, 3,9 );
setEffScaleKey(  spep_2 + 9, shuchusen1, 3.6, 3,6 );
setEffScaleKey(  spep_2 + 11, shuchusen1, 3.0, 3.0 );
setEffScaleKey(  spep_2 + 13, shuchusen1, 2.8, 2.8 );
setEffScaleKey(  spep_2 + 15, shuchusen1, 2.2, 2.2 );
setEffScaleKey(  spep_2 + 17, shuchusen1, 1.8, 1.8 );
setEffScaleKey(  spep_2 + 19, shuchusen1, 1.6, 1.6 );

setEffScaleKey(  spep_2 + 20, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_2 + 7, shuchusen1, 0 );
setEffRotateKey( spep_2 + 20, shuchusen1, 0 );
setEffAlphaKey(  spep_2 + 7, shuchusen1, 255 );
setEffAlphaKey(  spep_2 + 20, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 88, 1, 0 );
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2 -3 + 36, 1, 106 );

setMoveKey( spep_2 + 0, 1, 31, -133 , 10 );
setMoveKey( spep_2 -3 + 28, 1, 31, -133 , 10 );
setMoveKey( spep_2 -3 + 29, 1, 31, -133 , 10 );
setMoveKey( spep_2 -3 + 30, 1, 50.5, -136.9 , 10 );
setMoveKey( spep_2 -3 + 31, 1, 50.5, -136.9 , 10 );
setMoveKey( spep_2 -3 + 32, 1, 31, -131.1 , 10 );
setMoveKey( spep_2 -3 + 35, 1, 50.5, -136.9 , 10 );

--a1 = -20;
--b1 = 40;

setMoveKey( spep_2 -3 + 36, 1, 11, -90.6, 0 );
setMoveKey( spep_2 -3 + 37, 1, 11, -90.6 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 30.5, -90.2, 0 );
setMoveKey( spep_2 -3 + 39, 1, 30.5, -90.2, 0 );
setMoveKey( spep_2 -3 + 40, 1, 11, -95.6, 0 );
setMoveKey( spep_2 -3 + 42, 1, 28.6, -87.3, 0 );
setMoveKey( spep_2 -3 + 44, 1, 13, -94.7, 0 );
setMoveKey( spep_2 -3 + 46, 1, 28.6, -86.4, 0 );
setMoveKey( spep_2 -3 + 48, 1, 13, -93.8, 0 );
setMoveKey( spep_2 -3 + 50, 1, 28.6, -85.5, 0 );
setMoveKey( spep_2 -3 + 52, 1, 13, -92.9, 0 );
setMoveKey( spep_2 -3 + 54, 1, 28.6, -84.6, 0 );
setMoveKey( spep_2 -3 + 56, 1, 7.1, -86.1, 0 );
setMoveKey( spep_2 -3 + 58, 1, 34.4, -89.6, 0 );
setMoveKey( spep_2 -3 + 60, 1, 11, -83.3, 0 );
setMoveKey( spep_2 -3 + 62, 1, 30.5, -90.7, 0 );
setMoveKey( spep_2 -3 + 64, 1, 14.9, -82.4, 0 );
setMoveKey( spep_2 -3 + 66, 1, 34.4, -89.8, 0 );
setMoveKey( spep_2 -3 + 68, 1, 7.1, -81.5, 0 );
setMoveKey( spep_2 -3 + 70, 1, 32.5, -83, 0 );
setMoveKey( spep_2 -3 + 72, 1, 9.1, -82.6, 0 );
setMoveKey( spep_2 -3 + 74, 1, 32.5, -82.1, 0 );
setMoveKey( spep_2 -3 + 76, 1, 11, -77.8, 0 );
setMoveKey( spep_2 -3 + 78, 1, 30.5, -89, 0 );
setMoveKey( spep_2 -3 + 80, 1, 11, -78.8, 0 );
setMoveKey( spep_2 -3 + 82, 1, 30.5, -86.2, 0 );
setMoveKey( spep_2 -3 + 84, 1, 11, -77.9, 0 );
setMoveKey( spep_2 -3 + 86, 1, 30.5, -85.3, 0 );
setMoveKey( spep_2 -3 + 88, 1, 11, -75.1, 0 );
setMoveKey( spep_2 -3 + 90, 1, 30.5, -84.4, 0 );
setMoveKey( spep_2 -3 + 91, 1, 30.5, -84.4, 0 );

setScaleKey( spep_2 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_2 -3 + 91, 1, 1.6, 1.6 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 35, 1, 0 );
setRotateKey( spep_2 -3 + 36, 1, -50 );
setRotateKey( spep_2 -3 + 91, 1, -50 );


-- ** 音 ** --
--気弾発射3
SE010 = playSe( spep_2 + 10, 1021 );
setSeVolumeByWorkId( spep_2 + 10, SE010, 52 );

--気弾発射4
SE011 = playSe( spep_2 + 46, 1236 );
setSeVolumeByWorkId( spep_2 + 46, SE011, 122 );
setTimeStretch( SE011, 0.5, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 88;


--------------------------------------
--発射②(106F)
--------------------------------------
-- ** エフェクト等 ** --
shot2 = entryEffectLife( spep_3 + 0, SP_05r, 105 -2, 0x100, -1, 0, 0, 0 );  --発射②（味方側）(ef_004)
setEffMoveKey( spep_3 + 0, shot2, 0, 0 , 0 );
setEffMoveKey( spep_3 + 105 -2, shot2, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shot2, -1.0, 1.0 );
setEffScaleKey( spep_3 + 105 -2, shot2, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, shot2, 0 );
setEffRotateKey( spep_3 + 105 -2, shot2, 0 );
setEffAlphaKey( spep_3 + 0, shot2, 255 );
setEffAlphaKey( spep_3 + 105 -2, shot2, 255 );
setEffAlphaKey( spep_3 + 105 -1, shot2, 0 );


-- ** 音 ** --
--岩持ち上げる1
SE006 = playSe( spep_3 + 20, 1168 );
setSeVolumeByWorkId( spep_3 + 20, SE006, 0 );
setSeVolumeByWorkId( spep_3 + 21, SE006, 11 );
setSeVolumeByWorkId( spep_3 + 22, SE006, 21 );
setSeVolumeByWorkId( spep_3 + 23, SE006, 41 );
setSeVolumeByWorkId( spep_3 + 24, SE006, 61 );
setSeVolumeByWorkId( spep_3 + 25, SE006, 81 );
setSeVolumeByWorkId( spep_3 + 26, SE006, 101 );
setSeVolumeByWorkId( spep_3 + 27, SE006, 121 );
setSeVolumeByWorkId( spep_3 + 28, SE006, 141 );
setStartTimeMs( SE006,  2100 );

--岩持ち上げる2
SE009 = playSe( spep_3 + 20, 1175 );
setSeVolumeByWorkId( spep_3 + 20, SE009, 0 );
setSeVolumeByWorkId( spep_3 + 25, SE009, 10 );
setSeVolumeByWorkId( spep_3 + 30, SE009, 15 );
setSeVolumeByWorkId( spep_3 + 35, SE009, 20 );
setSeVolumeByWorkId( spep_3 + 40, SE009, 25 );
stopSe( spep_3 + 90, SE009, 40 );
setStartTimeMs( SE009,  1817 );

--岩持ち上げる3
SE012 = playSe( spep_3 + 22, 1117 );
setSeVolumeByWorkId( spep_3 + 22, SE012, 71 );

--岩投げる1
SE013 = playSe( spep_3 + 90, 1258 );
setSeVolumeByWorkId( spep_3 + 90, SE013, 70 );

--岩投げる1
SE014 = playSe( spep_3 + 90, 1027 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4 = spep_3 + 106 -2;


--------------------------------------
--命中②(76F)
--------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_4 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --命中②（味方側）(ef_005)
setEffMoveKey( spep_4 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit2_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit2_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit2_f, 0 );
setEffRotateKey( spep_4 + 76, hit2_f, 0 );
setEffAlphaKey( spep_4 + 0, hit2_f, 255 );
setEffAlphaKey( spep_4 + 76, hit2_f, 255 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --背景部分（敵味方共通）(ef_003_bg)
setEffMoveKey( spep_4 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 76, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hit2_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 76, hit2_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hit2_b, 0 );
setEffRotateKey( spep_4 + 76, hit2_b, 0 );
setEffAlphaKey( spep_4 + 0, hit2_b, 255 );
setEffAlphaKey( spep_4 + 76, hit2_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 30, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );

setMoveKey( spep_4 + 0, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 4, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 5, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_4 + 6, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_4 + 7, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 8, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 13, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_4 + 14, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_4 + 15, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 16, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 17, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_4 + 18, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_4 + 19, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_4 + 30, 1, 52.7, -142.1 , 0 );

setRotateKey( spep_4 + 0, 1, -50 );
setRotateKey( spep_4 + 30, 1, -50 );

-- ** 音 ** --
--爆発1
SE015 = playSe( spep_4 + 12, 1011 );
stopSe( spep_4 +76 + 4, SE015, 0 );

--爆発2
SE016 = playSe( spep_4 + 28, 1023 );
stopSe( spep_4 +76 + 4, SE016, 0 );

--爆発3
SE017 = playSe( spep_4 + 40, 1024 );
stopSe( spep_4 +76 + 4, SE017, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 68, 6, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 76;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6 = spep_5 + 94;


--------------------------------------
--発射③(176F)
--------------------------------------
-- ** エフェクト等 ** --
shot3_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --命中②（味方側）(ef_005)
setEffMoveKey( spep_6 + 0, shot3_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 176, shot3_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, shot3_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 176, shot3_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, shot3_f, 0 );
setEffRotateKey( spep_6 + 176, shot3_f, 0 );
setEffAlphaKey( spep_6 + 0, shot3_f, 255 );
setEffAlphaKey( spep_6 + 176, shot3_f, 255 );

-- ** 音 ** --
--両手上げる
SE019 = playSe( spep_6 + 0, 1003 );
setSeVolumeByWorkId( spep_6 + 0, SE019, 53 );

--気弾溜め1
SE020 = playSe( spep_6 + 26, 1281 );
setSeVolumeByWorkId( spep_6 + 62, SE020, 43 );
setSeVolumeByWorkId( spep_6 + 72, SE020, 77 );
setSeVolumeByWorkId( spep_6 + 154, SE020, 77 );
setSeVolumeByWorkId( spep_6 + 158, SE020, 133 );
stopSe( spep_6 +176 + 92, SE020, 40 );

--気弾溜め1
SE021 = playSe( spep_6 + 26, 1161 );
setSeVolumeByWorkId( spep_6 + 26, SE021, 52 );

--気弾溜め2
SE022 = playSe( spep_6 + 26, 1200 );
setSeVolumeByWorkId( spep_6 + 26, SE022, 153 );
stopSe( spep_6 +176 + 68, SE022, 38 );
setTimeStretch( SE022, 1.25, 10, 1 );

--気弾溜め3
SE023 = playSe( spep_6 + 26, 1227 );
stopSe( spep_6 +176 + 90, SE023, 80 );

--気弾大きくなる1
SE024 = playSe( spep_6 + 86, 1271 );
setSeVolumeByWorkId( spep_6 + 86, SE024, 141 );
stopSe( spep_6 +176 +100 + 0, SE024, 48 );

--気弾大きくなる2
SE025 = playSe( spep_6 + 90, 1282 );
setSeVolumeByWorkId( spep_6 + 90, SE025, 49 );

--気弾大きくなる3
SE026 = playSe( spep_6 + 106, 1072 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 176;


------------------------------------------------------
-- 発射③（味方側）(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
shot4_f = entryEffectLife( spep_7 + 0, SP_09r, 100, 0x100, -1, 0, 0, 0 );  --発射③（味方側）(ef_007)
setEffMoveKey( spep_7 + 0, shot4_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shot4_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, shot4_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 100, shot4_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, shot4_f, 0 );
setEffRotateKey( spep_7 + 100, shot4_f, 0 );
setEffAlphaKey( spep_7 + 0, shot4_f, 255 );
setEffAlphaKey( spep_7 + 100, shot4_f, 255 );

-- ** 音 ** --
--顔アップ
SE027 = playSe( spep_7 + 8, 1116 );
setSeVolumeByWorkId( spep_7 + 8, SE027, 112 );
stopSe( spep_7 + 34, SE027, 24 );

--気弾発射1
SE028 = playSe( spep_7 + 90, 1027 );

--気弾発射2
SE029 = playSe( spep_7 + 90, 1021 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 100;


------------------------------------------------------
-- 命中③（味方側）(176F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit4_f = entryEffect( spep_8 + 0, SP_10r, 0x100, -1, 0, 0, 0 );  --命中③（味方側）(ef_008)
setEffMoveKey( spep_8 + 0, hit4_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 178, hit4_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, hit4_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 178, hit4_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, hit4_f, 0 );
setEffRotateKey( spep_8 + 178, hit4_f, 0 );
setEffAlphaKey( spep_8 + 0, hit4_f, 255 );
setEffAlphaKey( spep_8 + 178, hit4_f, 255 );

-- ** 音 ** --
--爆発
SE030 = playSe( spep_8 + 36, 1024 );

--ラスト爆発1
SE031 = playSe( spep_8 + 66, 1023 );

--ラスト爆発2
SE032 = playSe( spep_8 + 66, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 176, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_8 + 154, 16, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 66 );
endPhase( spep_8 + 166 );

end