--1020490:フリーザ(最終形態)(天使)_サイコキネシス
--sp_effect_a5_00013

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
SP_01 = 156125;  --登場（敵味方共通）   ef_001
SP_02 = 156126;  --発射①（味方側）    ef_002
SP_03 = 156128;  --命中①（味方側）    ef_003
SP_04 = 156130;  --↑背景部分（敵味方共通）    ef_003_bg
SP_05 = 156131;  --発射②（味方側）    ef_004
SP_06 = 156133;  --命中②（味方側）    ef_005
SP_07 = 156135;  --↑背景部分   ef_005_bg

--敵側
SP_02r = 156127;  --発射①（敵側） ef_002_r
SP_03r = 156129;  --命中①（敵側） ef_003_r
SP_05r = 156132;  --発射②（敵側） ef_004_r
SP_06r = 156134;  --命中②（敵側） ef_005_r

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
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, 160, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, 160, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 160, 515.5 , 0 );
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
--SE002 = playSe( spep_0 + 96, 1072 );
--setSeVolumeByWorkId( spep_0 + 96, SE002, 0 );
--setSeVolumeByWorkId( spep_0 + 98, SE002, 8 );
--setSeVolumeByWorkId( spep_0 + 100, SE002, 16 );
--setSeVolumeByWorkId( spep_0 + 102, SE002, 24 );
--setSeVolumeByWorkId( spep_0 + 104, SE002, 32 );
--setSeVolumeByWorkId( spep_0 + 106, SE002, 40 );
--setSeVolumeByWorkId( spep_0 + 108, SE002, 48 );
--setSeVolumeByWorkId( spep_0 + 110, SE002, 56 );
--setSeVolumeByWorkId( spep_0 + 112, SE002, 63 );
--setStartTimeMs( SE002,  250 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 100, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--発射①(86F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffectLife( spep_2 + 0, SP_02, 85 -1, 0x100, -1, 0, 0, 0 );  --発射①（味方側）(ef_002)
setEffMoveKey( spep_2 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 85 -1, shot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot, 1.0, 1.0 );
setEffScaleKey( spep_2 + 85 -1, shot, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot, 0 );
setEffRotateKey( spep_2 + 85 -1, shot, 0 );
setEffAlphaKey( spep_2 + 0, shot, 255 );
setEffAlphaKey( spep_2 + 85 -2, shot, 255 );
setEffAlphaKey( spep_2 + 85 -1, shot, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 18 ; --エンドフェイズのフレーム数を置き換える
    
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
--腕前出す
SE003 = playSe( spep_2 + 14, 1208 );
setSeVolumeByWorkId( spep_2 + 14, SE003, 33 );
setPitch( spep_2 + 14, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );

--気弾溜め1
SE004 = playSe( spep_2 + 32, 1281 );
setSeVolumeByWorkId( spep_2 + 32, SE004, 126 );
stopSe( spep_2 + 80, SE004, 24 );

--気弾溜め2
SE005 = playSe( spep_2 + 32, 1282 );
setSeVolumeByWorkId( spep_2 + 32, SE005, 36 );

--気弾発射1
SE007 = playSe( spep_2 + 76, 1027 );
setSeVolumeByWorkId( spep_2 + 76, SE007, 66 );

--気弾発射2
SE008 = playSe( spep_2 + 76, 1212 );
setSeVolumeByWorkId( spep_2 + 76, SE008, 52 );
setPitch( spep_2 + 76, SE008, 400 );
setTimeStretch( SE008, 0.84, 10, 1 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86 -2;

--------------------------------------
--命中①(88F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --命中①（味方側）(ef_003)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 88, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 88, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --背景部分（敵味方共通）(ef_003_bg)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 88, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 88, hit_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 7,  906, 13, 0x80, -1, 20, -90, 0 );  --集中線
setEffShake( spep_3 + 7, shuchusen1, 13, 25 );
setEffMoveKey(   spep_3 + 7, shuchusen1, 20, -90 , 0 );
setEffMoveKey(   spep_3 + 20, shuchusen1, 20, -90 , 0 );

setEffScaleKey(  spep_3 + 7, shuchusen1, 3.9, 3,9 );
setEffScaleKey(  spep_3 + 9, shuchusen1, 3.6, 3,6 );
setEffScaleKey(  spep_3 + 11, shuchusen1, 3.0, 3.0 );
setEffScaleKey(  spep_3 + 13, shuchusen1, 2.8, 2.8 );
setEffScaleKey(  spep_3 + 15, shuchusen1, 2.2, 2.2 );
setEffScaleKey(  spep_3 + 17, shuchusen1, 1.8, 1.8 );
setEffScaleKey(  spep_3 + 19, shuchusen1, 1.6, 1.6 );

setEffScaleKey(  spep_3 + 20, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_3 + 7, shuchusen1, 0 );
setEffRotateKey( spep_3 + 20, shuchusen1, 0 );
setEffAlphaKey(  spep_3 + 7, shuchusen1, 255 );
setEffAlphaKey(  spep_3 + 20, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 36, 1, 106 );

setMoveKey( spep_3 + 0, 1, 31, -133 , 10 );
setMoveKey( spep_3 -3 + 28, 1, 31, -133 , 10 );
setMoveKey( spep_3 -3 + 29, 1, 31, -133 , 10 );
setMoveKey( spep_3 -3 + 30, 1, 50.5, -136.9 , 10 );
setMoveKey( spep_3 -3 + 31, 1, 50.5, -136.9 , 10 );
setMoveKey( spep_3 -3 + 32, 1, 31, -131.1 , 10 );
setMoveKey( spep_3 -3 + 35, 1, 50.5, -136.9 , 10 );

--a1 = -20;
--b1 = 40;

setMoveKey( spep_3 -3 + 36, 1, 11, -90.6, 0 );
setMoveKey( spep_3 -3 + 37, 1, 11, -90.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 30.5, -90.2, 0 );
setMoveKey( spep_3 -3 + 39, 1, 30.5, -90.2, 0 );
setMoveKey( spep_3 -3 + 40, 1, 11, -95.6, 0 );
setMoveKey( spep_3 -3 + 42, 1, 28.6, -87.3, 0 );
setMoveKey( spep_3 -3 + 44, 1, 13, -94.7, 0 );
setMoveKey( spep_3 -3 + 46, 1, 28.6, -86.4, 0 );
setMoveKey( spep_3 -3 + 48, 1, 13, -93.8, 0 );
setMoveKey( spep_3 -3 + 50, 1, 28.6, -85.5, 0 );
setMoveKey( spep_3 -3 + 52, 1, 13, -92.9, 0 );
setMoveKey( spep_3 -3 + 54, 1, 28.6, -84.6, 0 );
setMoveKey( spep_3 -3 + 56, 1, 7.1, -86.1, 0 );
setMoveKey( spep_3 -3 + 58, 1, 34.4, -89.6, 0 );
setMoveKey( spep_3 -3 + 60, 1, 11, -83.3, 0 );
setMoveKey( spep_3 -3 + 62, 1, 30.5, -90.7, 0 );
setMoveKey( spep_3 -3 + 64, 1, 14.9, -82.4, 0 );
setMoveKey( spep_3 -3 + 66, 1, 34.4, -89.8, 0 );
setMoveKey( spep_3 -3 + 68, 1, 7.1, -81.5, 0 );
setMoveKey( spep_3 -3 + 70, 1, 32.5, -83, 0 );
setMoveKey( spep_3 -3 + 72, 1, 9.1, -82.6, 0 );
setMoveKey( spep_3 -3 + 74, 1, 32.5, -82.1, 0 );
setMoveKey( spep_3 -3 + 76, 1, 11, -77.8, 0 );
setMoveKey( spep_3 -3 + 78, 1, 30.5, -89, 0 );
setMoveKey( spep_3 -3 + 80, 1, 11, -78.8, 0 );
setMoveKey( spep_3 -3 + 82, 1, 30.5, -86.2, 0 );
setMoveKey( spep_3 -3 + 84, 1, 11, -77.9, 0 );
setMoveKey( spep_3 -3 + 86, 1, 30.5, -85.3, 0 );
setMoveKey( spep_3 -3 + 88, 1, 11, -75.1, 0 );
setMoveKey( spep_3 -3 + 90, 1, 30.5, -84.4, 0 );
setMoveKey( spep_3 -3 + 91, 1, 30.5, -84.4, 0 );

setScaleKey( spep_3 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 91, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 35, 1, 0 );
setRotateKey( spep_3 -3 + 36, 1, -50 );
setRotateKey( spep_3 -3 + 91, 1, -50 );


-- ** 音 ** --
--気弾発射3
SE010 = playSe( spep_3 + 8, 1021 );
setSeVolumeByWorkId( spep_3 + 8, SE010, 52 );

--気弾発射4
SE011 = playSe( spep_3 + 44, 1236 );
setSeVolumeByWorkId( spep_3 + 44, SE011, 122 );
stopSe( spep_3 + 80, SE011, 14 );
setPitch( spep_3 + 44, SE011, 400 );
setTimeStretch( SE011, 0.64, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;


--------------------------------------
--発射②(106F)
--------------------------------------
-- ** エフェクト等 ** --
shot2 = entryEffectLife( spep_4 + 0, SP_05, 105 -1, 0x100, -1, 0, 0, 0 );  --発射②（味方側）(ef_004)
setEffMoveKey( spep_4 + 0, shot2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 105 -1, shot2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 105 -1, shot2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot2, 0 );
setEffRotateKey( spep_4 + 105 -1, shot2, 0 );
setEffAlphaKey( spep_4 + 0, shot2, 255 );
setEffAlphaKey( spep_4 + 105 -2, shot2, 255 );
setEffAlphaKey( spep_4 + 105 -1, shot2, 0 );

-- ** 音 ** --
--岩持ち上げる1
SE006 = playSe( spep_4 + 20, 1168 );
setSeVolumeByWorkId( spep_4 + 20, SE006, 0 );
setSeVolumeByWorkId( spep_4 + 21, SE006, 11 );
setSeVolumeByWorkId( spep_4 + 22, SE006, 21 );
setSeVolumeByWorkId( spep_4 + 23, SE006, 51 );
setSeVolumeByWorkId( spep_4 + 24, SE006, 81 );
setSeVolumeByWorkId( spep_4 + 25, SE006, 111 );
setSeVolumeByWorkId( spep_4 + 26, SE006, 141 );
setStartTimeMs( SE006,  2133 );

--岩持ち上げる2
SE009 = playSe( spep_4 + 18, 1175 );
setSeVolumeByWorkId( spep_4 + 18, SE009, 0 );
setSeVolumeByWorkId( spep_4 + 20, SE009, 5 );
setSeVolumeByWorkId( spep_4 + 24, SE009, 10 );
setSeVolumeByWorkId( spep_4 + 28, SE009, 15 );
setSeVolumeByWorkId( spep_4 + 34, SE009, 20 );
setSeVolumeByWorkId( spep_4 + 38, SE009, 25 );
stopSe( spep_4 + 86, SE009, 42 );
setStartTimeMs( SE009,  1817 );

--岩持ち上げる3
SE012 = playSe( spep_4 + 20, 1117 );
setSeVolumeByWorkId( spep_4 + 20, SE012, 71 );

--岩投げる1
SE013 = playSe( spep_4 + 88, 1258 );
setSeVolumeByWorkId( spep_4 + 88, SE013, 71 );

--岩投げる2
SE014 = playSe( spep_4 + 88, 1027 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 106 -2;


--------------------------------------
--命中②(152)
--------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --命中②（味方側）(ef_005)
setEffMoveKey( spep_5 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 152, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 152, hit2_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit2_f, 0 );
setEffRotateKey( spep_5 + 152, hit2_f, 0 );
setEffAlphaKey( spep_5 + 0, hit2_f, 255 );
setEffAlphaKey( spep_5 + 152, hit2_f, 255 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --背景部分（敵味方共通）(ef_003_bg)
setEffMoveKey( spep_5 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 152, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 152, hit2_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit2_b, 0 );
setEffRotateKey( spep_5 + 152, hit2_b, 0 );
setEffAlphaKey( spep_5 + 0, hit2_b, 255 );
setEffAlphaKey( spep_5 + 152, hit2_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 30, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 4, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 5, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_5 + 6, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_5 + 7, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 8, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 13, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_5 + 14, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_5 + 15, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 16, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 17, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_5 + 18, 1, 82.7, -142.1 , 0 );
setMoveKey( spep_5 + 19, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 30, 1, 52.7, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 30, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, -50 );
setRotateKey( spep_5 + 30, 1, -50 );

-- ** 音 ** --
--爆発1
SE015 = playSe( spep_5 + 10, 1011 );

--爆発2
SE016 = playSe( spep_5 + 26, 1023 );

--爆発3
SE017 = playSe( spep_5 + 38, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 138, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 42 );
endPhase( spep_5 + 142 );


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
--peff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--etEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--peff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--etEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 13,  190006, 71, 0x100, -1, 0, 160 -170, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 13, ctgogo, 71, 10 );
setEffMoveKey( spep_x + 13, ctgogo, 160 -170, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 160 -170, 515.5 , 0 );
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
--SE002 = playSe( spep_0 + 96, 1072 );
--setSeVolumeByWorkId( spep_0 + 96, SE002, 0 );
--setSeVolumeByWorkId( spep_0 + 98, SE002, 8 );
--setSeVolumeByWorkId( spep_0 + 100, SE002, 16 );
--setSeVolumeByWorkId( spep_0 + 102, SE002, 24 );
--setSeVolumeByWorkId( spep_0 + 104, SE002, 32 );
--setSeVolumeByWorkId( spep_0 + 106, SE002, 40 );
--setSeVolumeByWorkId( spep_0 + 108, SE002, 48 );
--setSeVolumeByWorkId( spep_0 + 110, SE002, 56 );
--setSeVolumeByWorkId( spep_0 + 112, SE002, 63 );
--setStartTimeMs( SE002,  250 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_0 + 100, 8, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
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
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


--------------------------------------
--発射①(86F)
--------------------------------------
-- ** エフェクト等 ** --
shot = entryEffectLife( spep_2 + 0, SP_02r, 85 -1, 0x100, -1, 0, 0, 0 );  --発射①（味方側）(ef_002)
setEffMoveKey( spep_2 + 0, shot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 85 -1, shot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shot, -1.0, 1.0 );
setEffScaleKey( spep_2 + 85 -1, shot, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, shot, 0 );
setEffRotateKey( spep_2 + 85 -1, shot, 0 );
setEffAlphaKey( spep_2 + 0, shot, 255 );
setEffAlphaKey( spep_2 + 85 -2, shot, 255 );
setEffAlphaKey( spep_2 + 85 -1, shot, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 18 ; --エンドフェイズのフレーム数を置き換える
    
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
--腕前出す
SE003 = playSe( spep_2 + 14, 1208 );
setSeVolumeByWorkId( spep_2 + 14, SE003, 33 );
setPitch( spep_2 + 14, SE003, -300 );
setTimeStretch( SE003, 0.8, 10, 1 );

--気弾溜め1
SE004 = playSe( spep_2 + 32, 1281 );
setSeVolumeByWorkId( spep_2 + 32, SE004, 126 );
stopSe( spep_2 + 80, SE004, 24 );

--気弾溜め2
SE005 = playSe( spep_2 + 32, 1282 );
setSeVolumeByWorkId( spep_2 + 32, SE005, 36 );

--気弾発射1
SE007 = playSe( spep_2 + 76, 1027 );
setSeVolumeByWorkId( spep_2 + 76, SE007, 66 );

--気弾発射2
SE008 = playSe( spep_2 + 76, 1212 );
setSeVolumeByWorkId( spep_2 + 76, SE008, 52 );
setPitch( spep_2 + 76, SE008, 400 );
setTimeStretch( SE008, 0.84, 10, 1 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 86 -2;

--------------------------------------
--命中①(88F)
--------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --命中①（味方側）(ef_003)
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 88, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 88, hit_f, 255 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --背景部分（敵味方共通）(ef_003_bg)
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 88, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 88, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 88, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 88, hit_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_3 + 7,  906, 13, 0x80, -1, 20, -90, 0 );  --集中線
setEffShake( spep_3 + 7, shuchusen1, 13, 25 );
setEffMoveKey(   spep_3 + 7, shuchusen1, 20, -90 , 0 );
setEffMoveKey(   spep_3 + 20, shuchusen1, 20, -90 , 0 );

setEffScaleKey(  spep_3 + 7, shuchusen1, 3.9, 3,9 );
setEffScaleKey(  spep_3 + 9, shuchusen1, 3.6, 3,6 );
setEffScaleKey(  spep_3 + 11, shuchusen1, 3.0, 3.0 );
setEffScaleKey(  spep_3 + 13, shuchusen1, 2.8, 2.8 );
setEffScaleKey(  spep_3 + 15, shuchusen1, 2.2, 2.2 );
setEffScaleKey(  spep_3 + 17, shuchusen1, 1.8, 1.8 );
setEffScaleKey(  spep_3 + 19, shuchusen1, 1.6, 1.6 );

setEffScaleKey(  spep_3 + 20, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_3 + 7, shuchusen1, 0 );
setEffRotateKey( spep_3 + 20, shuchusen1, 0 );
setEffAlphaKey(  spep_3 + 7, shuchusen1, 255 );
setEffAlphaKey(  spep_3 + 20, shuchusen1, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 88, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 36, 1, 106 );

setMoveKey( spep_3 + 0, 1, 31, -133 , 10 );
setMoveKey( spep_3 -3 + 28, 1, 31, -133 , 10 );
setMoveKey( spep_3 -3 + 29, 1, 31, -133 , 10 );
setMoveKey( spep_3 -3 + 30, 1, 50.5, -136.9 , 10 );
setMoveKey( spep_3 -3 + 31, 1, 50.5, -136.9 , 10 );
setMoveKey( spep_3 -3 + 32, 1, 31, -131.1 , 10 );
setMoveKey( spep_3 -3 + 35, 1, 50.5, -136.9 , 10 );

--a1 = -20;
--b1 = 40;

setMoveKey( spep_3 -3 + 36, 1, 11, -90.6, 0 );
setMoveKey( spep_3 -3 + 37, 1, 11, -90.6 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 30.5, -90.2, 0 );
setMoveKey( spep_3 -3 + 39, 1, 30.5, -90.2, 0 );
setMoveKey( spep_3 -3 + 40, 1, 11, -95.6, 0 );
setMoveKey( spep_3 -3 + 42, 1, 28.6, -87.3, 0 );
setMoveKey( spep_3 -3 + 44, 1, 13, -94.7, 0 );
setMoveKey( spep_3 -3 + 46, 1, 28.6, -86.4, 0 );
setMoveKey( spep_3 -3 + 48, 1, 13, -93.8, 0 );
setMoveKey( spep_3 -3 + 50, 1, 28.6, -85.5, 0 );
setMoveKey( spep_3 -3 + 52, 1, 13, -92.9, 0 );
setMoveKey( spep_3 -3 + 54, 1, 28.6, -84.6, 0 );
setMoveKey( spep_3 -3 + 56, 1, 7.1, -86.1, 0 );
setMoveKey( spep_3 -3 + 58, 1, 34.4, -89.6, 0 );
setMoveKey( spep_3 -3 + 60, 1, 11, -83.3, 0 );
setMoveKey( spep_3 -3 + 62, 1, 30.5, -90.7, 0 );
setMoveKey( spep_3 -3 + 64, 1, 14.9, -82.4, 0 );
setMoveKey( spep_3 -3 + 66, 1, 34.4, -89.8, 0 );
setMoveKey( spep_3 -3 + 68, 1, 7.1, -81.5, 0 );
setMoveKey( spep_3 -3 + 70, 1, 32.5, -83, 0 );
setMoveKey( spep_3 -3 + 72, 1, 9.1, -82.6, 0 );
setMoveKey( spep_3 -3 + 74, 1, 32.5, -82.1, 0 );
setMoveKey( spep_3 -3 + 76, 1, 11, -77.8, 0 );
setMoveKey( spep_3 -3 + 78, 1, 30.5, -89, 0 );
setMoveKey( spep_3 -3 + 80, 1, 11, -78.8, 0 );
setMoveKey( spep_3 -3 + 82, 1, 30.5, -86.2, 0 );
setMoveKey( spep_3 -3 + 84, 1, 11, -77.9, 0 );
setMoveKey( spep_3 -3 + 86, 1, 30.5, -85.3, 0 );
setMoveKey( spep_3 -3 + 88, 1, 11, -75.1, 0 );
setMoveKey( spep_3 -3 + 90, 1, 30.5, -84.4, 0 );
setMoveKey( spep_3 -3 + 91, 1, 30.5, -84.4, 0 );

setScaleKey( spep_3 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_3 -3 + 91, 1, 1.6, 1.6 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 35, 1, 0 );
setRotateKey( spep_3 -3 + 36, 1, -50 );
setRotateKey( spep_3 -3 + 91, 1, -50 );


-- ** 音 ** --
--気弾発射3
SE010 = playSe( spep_3 + 8, 1021 );
setSeVolumeByWorkId( spep_3 + 8, SE010, 52 );

--気弾発射4
SE011 = playSe( spep_3 + 44, 1236 );
setSeVolumeByWorkId( spep_3 + 44, SE011, 122 );
stopSe( spep_3 + 80, SE011, 14 );
setPitch( spep_3 + 44, SE011, 400 );
setTimeStretch( SE011, 0.64, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 88, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 88;


--------------------------------------
--発射②(106F)
--------------------------------------
-- ** エフェクト等 ** --
shot2 = entryEffectLife( spep_4 + 0, SP_05r, 105-1, 0x100, -1, 0, 0, 0 );  --発射②（味方側）(ef_004)
setEffMoveKey( spep_4 + 0, shot2, 0, 0 , 0 );
setEffMoveKey( spep_4 + 105-1, shot2, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 105-1, shot2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot2, 0 );
setEffRotateKey( spep_4 + 105-1, shot2, 0 );
setEffAlphaKey( spep_4 + 0, shot2, 255 );
setEffAlphaKey( spep_4 + 105-2, shot2, 255 );
setEffAlphaKey( spep_4 + 105-1, shot2, 0 );

-- ** 音 ** --
--岩持ち上げる1
SE006 = playSe( spep_4 + 20, 1168 );
setSeVolumeByWorkId( spep_4 + 20, SE006, 0 );
setSeVolumeByWorkId( spep_4 + 21, SE006, 11 );
setSeVolumeByWorkId( spep_4 + 22, SE006, 21 );
setSeVolumeByWorkId( spep_4 + 23, SE006, 51 );
setSeVolumeByWorkId( spep_4 + 24, SE006, 81 );
setSeVolumeByWorkId( spep_4 + 25, SE006, 111 );
setSeVolumeByWorkId( spep_4 + 26, SE006, 141 );
setStartTimeMs( SE006,  2133 );

--岩持ち上げる2
SE009 = playSe( spep_4 + 18, 1175 );
setSeVolumeByWorkId( spep_4 + 18, SE009, 0 );
setSeVolumeByWorkId( spep_4 + 20, SE009, 5 );
setSeVolumeByWorkId( spep_4 + 24, SE009, 10 );
setSeVolumeByWorkId( spep_4 + 28, SE009, 15 );
setSeVolumeByWorkId( spep_4 + 34, SE009, 20 );
setSeVolumeByWorkId( spep_4 + 38, SE009, 25 );
stopSe( spep_4 + 86, SE009, 42 );
setStartTimeMs( SE009,  1817 );

--岩持ち上げる3
SE012 = playSe( spep_4 + 20, 1117 );
setSeVolumeByWorkId( spep_4 + 20, SE012, 71 );

--岩投げる1
SE013 = playSe( spep_4 + 88, 1258 );
setSeVolumeByWorkId( spep_4 + 88, SE013, 71 );

--岩投げる2
SE014 = playSe( spep_4 + 88, 1027 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 106, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 106 -2;


--------------------------------------
--命中②(152)
--------------------------------------
-- ** エフェクト等 ** --
hit2_f = entryEffect( spep_5 + 0, SP_06r, 0x100, -1, 0, 0, 0 );  --命中②（味方側）(ef_005)
setEffMoveKey( spep_5 + 0, hit2_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 152, hit2_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 152, hit2_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit2_f, 0 );
setEffRotateKey( spep_5 + 152, hit2_f, 0 );
setEffAlphaKey( spep_5 + 0, hit2_f, 255 );
setEffAlphaKey( spep_5 + 152, hit2_f, 255 );

-- ** エフェクト等 ** --
hit2_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --背景部分（敵味方共通）(ef_003_bg)
setEffMoveKey( spep_5 + 0, hit2_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 152, hit2_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit2_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 152, hit2_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit2_b, 0 );
setEffRotateKey( spep_5 + 152, hit2_b, 0 );
setEffAlphaKey( spep_5 + 0, hit2_b, 255 );
setEffAlphaKey( spep_5 + 152, hit2_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 30, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 4, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 5, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_5 + 6, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_5 + 7, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 8, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 13, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_5 + 14, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_5 + 15, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 16, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 17, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_5 + 18, 1, 22.7, -142.1 , 0 );
setMoveKey( spep_5 + 19, 1, 52.7, -142.1 , 0 );
setMoveKey( spep_5 + 30, 1, 52.7, -142.1 , 0 );

setScaleKey( spep_5 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_5 + 30, 1, 1.2, 1.2 );

setRotateKey( spep_5 + 0, 1, -50 );
setRotateKey( spep_5 + 30, 1, -50 );

-- ** 音 ** --
--爆発1
SE015 = playSe( spep_5 + 10, 1011 );

--爆発2
SE016 = playSe( spep_5 + 26, 1023 );

--爆発3
SE017 = playSe( spep_5 + 38, 1024 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_5 + 138, 8, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 42 );
endPhase( spep_5 + 142 );

end