--1020810_URウーブ(少年期)_気合砲_sp2076
--sp_effect_a7_00039

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
SP_01 = 156039; --敵に突っ込む	ef_001
SP_02 = 156040; --格闘	ef_002
SP_03 = 156042; --格闘	ef_003
SP_04 = 156043; --格闘	ef_004
SP_05 = 156044; --蹴り	ef_005
SP_06 = 156046; --敵吹っ飛び	ef_006
SP_07 = 156048; --敵吹っ飛び	ef_007
SP_08 = 156049; --気合溜め	ef_008
SP_09 = 156050; --気合砲を放つ	ef_009
SP_10 = 156052; --気合砲が敵にあたり吹っ飛ぶ	ef_010
SP_11 = 156053; --気合砲が敵にあたり吹っ飛ぶ	ef_011
SP_12 = 156061; --敵が画面手前に吹っ飛ぶ ef_012

--敵側
SP_02r = 156041;	--格闘(反転用)	ef_002r
SP_05r = 156045;	--蹴り(反転用)	ef_005r
SP_06r = 156047;	--敵吹っ飛び(反転用)	ef_006r
SP_09r = 156051;	--気合砲を放つ	ef_009r
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
-- 敵に突っ込む(26F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --敵に突っ込む(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 26, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 26, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 26, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 26, first_f, 255 );

-- ** 音 ** --
--手前ダッシュ
SE001 = playSe( spep_0 + 0, 9 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 26, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 26;


------------------------------------------------------
-- 格闘(136F)
------------------------------------------------------
Fight_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, Fight_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, Fight_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, Fight_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, Fight_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Fight_f, 0 );
setEffRotateKey( spep_1 + 136, Fight_f, 0 );
setEffAlphaKey( spep_1 + 0, Fight_f, 255 );
setEffAlphaKey( spep_1 + 136, Fight_f, 255 );

Fight_e = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --格闘(ef_004)
setEffMoveKey( spep_1 + 0, Fight_e, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, Fight_e, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, Fight_e, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, Fight_e, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Fight_e, 0 );
setEffRotateKey( spep_1 + 136, Fight_e, 0 );
setEffAlphaKey( spep_1 + 0, Fight_e, 255 );
setEffAlphaKey( spep_1 + 136, Fight_e, 255 );

Fight_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_1 + 0, Fight_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, Fight_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, Fight_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, Fight_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Fight_b, 0 );
setEffRotateKey( spep_1 + 136, Fight_b, 0 );
setEffAlphaKey( spep_1 + 0, Fight_b, 255 );
setEffAlphaKey( spep_1 + 136, Fight_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 8, 1, 104 );

setMoveKey( spep_1 + 0, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 + 1, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 + 2, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 + 3, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 -3 + 7, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 53.4, -125 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 53.4, -125 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 53.4, -125 , 0 );

setScaleKey( spep_1 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 1, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 2, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 3, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 4, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 5, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 6, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 7, 1, 1.6, 1.6 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 + 7, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 8 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE007, 0);
    --stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 2, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 4, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 6, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 8, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 10, 1, 53.4, -125 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 2, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 4, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 6, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 8, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 10, 1, 1.6, 1.6 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350, 1000 ); -- eff_005 (カットイン)
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

-- ** 敵キャラクター ** --
setDisp( spep_1 + 136, 1, 0 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 56, 1, 106 );
changeAnime( spep_1 -3 + 86, 1, 108 );
changeAnime( spep_1 -3 + 96, 1, 106 );

setMoveKey( spep_1 -3 + 21, 1, 53.4, -125 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -3.9, -109.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -1.3, -107.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -1.1, -109 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 22.1, -96.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 25, -88.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 36.9, -77.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 31.5, -83.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 38.5, -87.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 36.7, -78.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 39.4, -76.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 41.9, -75.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 44.1, -74.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 46.1, -73.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 47.9, -72.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 49.5, -71.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 51, -71.5 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 52.2, -71.2 , 0 );

setMoveKey( spep_1 -3 + 56, 1, -1.1, -88.7 , 0 ); -- -76.7
setMoveKey( spep_1 -3 + 58, 1, 2.9, -96.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 2.9, -92.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 8.4, -82.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 18, -84.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 20.6, -82.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 23.2, -80.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 23.6, -78.4 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 24.2, -76.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 27.2, -76.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 30.2, -77.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 30.9, -75.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 31.7, -73.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 34.2, -73.7 , 0 );
setMoveKey( spep_1 -3 + 85, 1, 35.5, -74.4 , 0 );

setMoveKey( spep_1 -3 + 86, 1, 26.8, -63.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 36.4, -71.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 36.8, -65.9 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 48.1, -68.6 , 0 );
setMoveKey( spep_1 -3 + 95, 1, 44.4, -74.3 , 0 );

setMoveKey( spep_1 -3 + 96, 1, 48, -77.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 49.1, -82.1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 41.4, -75.3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 39.4, -81.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 45.5, -80.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 54.4, -84.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 51.4, -82.2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 44.5, -80.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 50.7, -82.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 54.4, -79 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 45, -83.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 53.1, -82.3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 60.7, -80.9 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 48.3, -79.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 61.4, -82.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 53, -81.9 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 46.5, -82.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 57.2, -80.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 54.4, -80.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 72.2, -80.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 60.7, -82.1 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 70.7, -79.5 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 70.7, -79.5 , 0 );

setScaleKey( spep_1 -3 + 98, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 100, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 102, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 104, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 108, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 110, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 112, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 114, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 116, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 118, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 120, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 122, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 124, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 126, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 128, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 139, 1, 1.6, 1.6 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 21, 1, 0 );
setRotateKey( spep_1 -3 + 22, 1, -5 );
setRotateKey( spep_1 -3 + 24, 1, -4.8 );
setRotateKey( spep_1 -3 + 26, 1, -4.1 );
setRotateKey( spep_1 -3 + 28, 1, -3.3 );
setRotateKey( spep_1 -3 + 30, 1, -2.9 );
setRotateKey( spep_1 -3 + 32, 1, -2.5 );
setRotateKey( spep_1 -3 + 34, 1, -2.2 );
setRotateKey( spep_1 -3 + 36, 1, -2 );
setRotateKey( spep_1 -3 + 38, 1, -1.8 );
setRotateKey( spep_1 -3 + 40, 1, -1.6 );
setRotateKey( spep_1 -3 + 42, 1, -1.4 );
setRotateKey( spep_1 -3 + 44, 1, -1.3 );
setRotateKey( spep_1 -3 + 46, 1, -1.2 );
setRotateKey( spep_1 -3 + 48, 1, -1.1 );
setRotateKey( spep_1 -3 + 50, 1, -1.1 );
setRotateKey( spep_1 -3 + 52, 1, -1 );
setRotateKey( spep_1 -3 + 55, 1, -1 );
setRotateKey( spep_1 -3 + 56, 1, -52 );
setRotateKey( spep_1 -3 + 58, 1, -51.8 );
setRotateKey( spep_1 -3 + 60, 1, -51 );
setRotateKey( spep_1 -3 + 62, 1, -50.8 );
setRotateKey( spep_1 -3 + 64, 1, -50.6 );
setRotateKey( spep_1 -3 + 66, 1, -50.4 );
setRotateKey( spep_1 -3 + 68, 1, -50.1 );
setRotateKey( spep_1 -3 + 70, 1, -49.8 );
setRotateKey( spep_1 -3 + 72, 1, -49.4 );
setRotateKey( spep_1 -3 + 74, 1, -49 );
setRotateKey( spep_1 -3 + 76, 1, -48.5 );
setRotateKey( spep_1 -3 + 78, 1, -48 );
setRotateKey( spep_1 -3 + 80, 1, -47.5 );
setRotateKey( spep_1 -3 + 82, 1, -47 );
setRotateKey( spep_1 -3 + 85, 1, -47 );
setRotateKey( spep_1 -3 + 86, 1, -10 );
setRotateKey( spep_1 -3 + 88, 1, -8 );
setRotateKey( spep_1 -3 + 90, 1, -6.2 );
setRotateKey( spep_1 -3 + 92, 1, -4.6 );
setRotateKey( spep_1 -3 + 95, 1, -3 );
setRotateKey( spep_1 -3 + 96, 1, -45 );
setRotateKey( spep_1 -3 + 98, 1, -47.1 );
setRotateKey( spep_1 -3 + 100, 1, -49 );
setRotateKey( spep_1 -3 + 102, 1, -52.1 );
setRotateKey( spep_1 -3 + 104, 1, -50.5 );
setRotateKey( spep_1 -3 + 106, 1, -49 );
setRotateKey( spep_1 -3 + 108, 1, -50.6 );
setRotateKey( spep_1 -3 + 110, 1, -52.1 );
setRotateKey( spep_1 -3 + 112, 1, -50.5 );
setRotateKey( spep_1 -3 + 114, 1, -49 );
setRotateKey( spep_1 -3 + 116, 1, -52.1 );
setRotateKey( spep_1 -3 + 118, 1, -57 );
setRotateKey( spep_1 -3 + 120, 1, -49 );
setRotateKey( spep_1 -3 + 122, 1, -52.1 );
setRotateKey( spep_1 -3 + 124, 1, -58 );
setRotateKey( spep_1 -3 + 126, 1, -48 );
setRotateKey( spep_1 -3 + 128, 1, -47 );
setRotateKey( spep_1 -3 + 130, 1, -52 );
setRotateKey( spep_1 -3 + 132, 1, -56 );
setRotateKey( spep_1 -3 + 134, 1, -49 );
setRotateKey( spep_1 -3 + 136, 1, -52.1 );
setRotateKey( spep_1 -3 + 138, 1, -47 );
setRotateKey( spep_1 -3 + 139, 1, -47 );

-- ** 音 ** --
--ラッシュ1
SE002 = playSe( spep_1 + 22, 1189 );
--ラッシュ2
SE003 = playSe( spep_1 + 26, 1000 );
--ラッシュ3
SE004 = playSe( spep_1 + 26, 1110 );
setSeVolumeByWorkId( spep_1 + 26, SE004, 76 );
--ラッシュ4
SE005 = playSe( spep_1 + 60, 1009 );
--ラッシュ5
SE006 = playSe( spep_1 + 60, 1000 );
--ラッシュ6
SE007 = playSe( spep_1 + 92, 1000 );
--ラッシュ7
SE008 = playSe( spep_1 + 92, 1010 );
--ラッシュ8
SE009 = playSe( spep_1 + 102, 1000 );
--ラッシュ9
SE010 = playSe( spep_1 + 112, 1009 );
setSeVolumeByWorkId( spep_1 + 112, SE010, 54 );

--向かってくる
SE011 = playSe( spep_1 + 130, 1072 );
setSeVolumeByWorkId( spep_1 + 130, SE011, 0 );
setSeVolumeByWorkId( spep_1 + 132, SE011, 25 );
setSeVolumeByWorkId( spep_1 + 134, SE011, 50 );
setSeVolumeByWorkId( spep_1 + 136, SE011, 75 );
setSeVolumeByWorkId( spep_1 + 139, SE011, 100 );

setStartTimeMs( SE011,  283 );
--ラッシュ10
SE012 = playSe( spep_1 + 114, 1000 );
--ラッシュ11
SE013 = playSe( spep_1 + 122, 1009 );
setSeVolumeByWorkId( spep_1 + 122, SE013, 85 );
--ラッシュ12
SE014 = playSe( spep_1 + 122, 1000 );
--ラッシュ13
SE015 = playSe( spep_1 + 128, 1009 );
setSeVolumeByWorkId( spep_1 + 128, SE015, 82 );
stopSe( spep_1 +136 + 8, SE015, 0 );
--ラッシュ14
SE016 = playSe( spep_1 + 128, 1000 );
--ラッシュ15
SE017 = playSe( spep_1 + 134, 1000 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;


--------------------------------------
--蹴り(32F)
--------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --蹴り(ef_005)
setEffMoveKey( spep_2 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_2 + 32, kick, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick, 1.0, 1.0 );
setEffScaleKey( spep_2 + 32, kick, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick, 0 );
setEffRotateKey( spep_2 + 32, kick, 0 );
setEffAlphaKey( spep_2 + 0, kick, 255 );
setEffAlphaKey( spep_2 + 32, kick, 255 );

-- ** 音 ** --
--蹴り1
SE018 = playSe( spep_2 + 24, 1004 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 32, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 32;


--------------------------------------
--敵吹っ飛び(56F)
--------------------------------------
-- ** エフェクト等 ** --
lkick_f = entryEffectLife( spep_3 + 0, SP_06, 55, 0x100, -1, 0, 0, 0 );  --敵吹っ飛び(ef_006)
setEffMoveKey( spep_3 + 0, lkick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 55, lkick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, lkick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 55, lkick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lkick_f, 0 );
setEffRotateKey( spep_3 + 55, lkick_f, 0 );
setEffAlphaKey( spep_3 + 0, lkick_f, 255 );
setEffAlphaKey( spep_3 + 55, lkick_f, 255 );

-- ** エフェクト等 ** --
lkick_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵吹っ飛び(ef_007)
setEffMoveKey( spep_3 + 0, lkick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, lkick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, lkick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, lkick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lkick_b, 0 );
setEffRotateKey( spep_3 + 56, lkick_b, 0 );
setEffAlphaKey( spep_3 + 0, lkick_b, 255 );
setEffAlphaKey( spep_3 + 56, lkick_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 56, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, 31.7, -12.7 , 0 );
setMoveKey( spep_3 + 1, 1, 124.6, -76 , 0 );
setMoveKey( spep_3 + 2, 1, 101.5, -399.8 , 0 );
setMoveKey( spep_3 + 3, 1, 101.5, -399.8 , 0 );
setMoveKey( spep_3 -3 + 7, 1, -347.2, -442.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 158.1, -88.1 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 158.1, -88.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 176.9, -78.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 166.6, -93.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 177.3, -94.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 157.8, -76.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 171.3, -74.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 160.7, -88.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 172.9, -86.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 166.6, -75.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 170.2, -87.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 167.5, -79.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 173.7, -77 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 174.6, -81.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 169.8, -73.2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 168.7, -80.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 173.5, -75.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 168.4, -75.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 170.3, -78.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 168.9, -78.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 173.7, -76.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 168.5, -79.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 167.2, -79.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 168.8, -80.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 168.5, -78.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 166.2, -79.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 165.4, -78 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 165.4, -78 , 0 );

setScaleKey( spep_3 + 0, 1, 0.52, 0.67 );
setScaleKey( spep_3 + 1, 1, 0.49, 0.6 );
setScaleKey( spep_3 + 2, 1, 0.26, 0.59 );
setScaleKey( spep_3 + 3, 1, 0.26, 0.59 );
setScaleKey( spep_3 -3 + 7, 1, 0.08, 0.53 );
setScaleKey( spep_3 -3 + 8, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 9, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 10, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 12, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 16, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 18, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 20, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 22, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 24, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 26, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 28, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 32, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 34, 1, 0.31, 0.31 );
setScaleKey( spep_3 -3 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 46, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 48, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 50, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 52, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 54, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 56, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 58, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 59, 1, 0.2, 0.2 );

setRotateKey( spep_3 + 0, 1, -138 );
setRotateKey( spep_3 + 1, 1, -80.9 );
setRotateKey( spep_3 + 2, 1, -20.1 );
setRotateKey( spep_3 + 3, 1, -20.1 );
setRotateKey( spep_3 -3 + 7, 1, 36.9 );
setRotateKey( spep_3 -3 + 8, 1, -20 );
setRotateKey( spep_3 -3 + 9, 1, -20 );
setRotateKey( spep_3 -3 + 10, 1, -26.4 );
setRotateKey( spep_3 -3 + 12, 1, -30.9 );
setRotateKey( spep_3 -3 + 14, 1, -34 );
setRotateKey( spep_3 -3 + 16, 1, -35.9 );
setRotateKey( spep_3 -3 + 18, 1, -37.3 );
setRotateKey( spep_3 -3 + 20, 1, -38.3 );
setRotateKey( spep_3 -3 + 22, 1, -39.1 );
setRotateKey( spep_3 -3 + 24, 1, -39.7 );
setRotateKey( spep_3 -3 + 26, 1, -40.2 );
setRotateKey( spep_3 -3 + 28, 1, -40.7 );
setRotateKey( spep_3 -3 + 30, 1, -41.1 );
setRotateKey( spep_3 -3 + 32, 1, -41.4 );
setRotateKey( spep_3 -3 + 34, 1, -41.7 );
setRotateKey( spep_3 -3 + 36, 1, -41.9 );
setRotateKey( spep_3 -3 + 38, 1, -42.1 );
setRotateKey( spep_3 -3 + 40, 1, -42.3 );
setRotateKey( spep_3 -3 + 42, 1, -42.5 );
setRotateKey( spep_3 -3 + 44, 1, -42.7 );
setRotateKey( spep_3 -3 + 46, 1, -42.8 );
setRotateKey( spep_3 -3 + 48, 1, -43 );
setRotateKey( spep_3 -3 + 50, 1, -43.1 );
setRotateKey( spep_3 -3 + 52, 1, -43.2 );
setRotateKey( spep_3 -3 + 54, 1, -43.4 );
setRotateKey( spep_3 -3 + 56, 1, -43.5 );
setRotateKey( spep_3 -3 + 58, 1, -43.6 );
setRotateKey( spep_3 -3 + 59, 1, -43.6 );

-- ** 音 ** --
--蹴り2
SE019 = playSe( spep_3 + 0, 1010 );
--蹴り3
SE020 = playSe( spep_3 + 0, 1001 );
--蹴り4
SE021 = playSe( spep_3 + 2, 1110 );
--敵飛んでいく
SE022 = playSe( spep_3 + 10, 1183 );
setSeVolumeByWorkId( spep_3 + 10, SE022, 65 );
stopSe( spep_3 +56 + 16, SE022, 14 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


--------------------------------------
--気合溜め(86F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_08, 86, 0x80, -1, 0, 0, 0 );  --気合溜め(ef_008)
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 86, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 86, tame, 255 );

spep_x = spep_3 + 54;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--気ダメ1
SE023 = playSe( spep_4 + 14, 1011 );
stopSe( spep_4 +86 + 20, SE023, 0 );
--気ダメ2
SE024 = playSe( spep_4 + 14, 1024 );
setSeVolumeByWorkId( spep_4 + 14, SE024, 71 );
stopSe( spep_4 +86 + 20, SE024, 0 );
--気ダメ3
SE025 = playSe( spep_4 + 16, 20 );
stopSe( spep_4 +86 + 20, SE025, 0 );
--顔カットイン
SE026 = playSe( spep_4 + 18, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 76, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
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
--playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_6 = spep_5 + 94;


------------------------------------------------------
-- 気合砲を放つ(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
hanatu = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --気合砲を放つ(ef_009)
setEffMoveKey( spep_6 + 0, hanatu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, hanatu, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hanatu, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hanatu, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hanatu, 0 );
setEffRotateKey( spep_6 + 56, hanatu, 0 );
setEffAlphaKey( spep_6 + 0, hanatu, 255 );
setEffAlphaKey( spep_6 + 56, hanatu, 255 );

-- ** 音 ** --
--気合い入れる1
SE028 = playSe( spep_6 + 16, 1258 );
setSeVolumeByWorkId( spep_6 + 16, SE028, 43 );
--気合い入れる2
SE029 = playSe( spep_6 + 22, 20 );
setSeVolumeByWorkId( spep_6 + 22, SE029, 63 );
--気合い入れる3
SE030 = playSe( spep_6 + 22, 1025 );
setSeVolumeByWorkId( spep_6 + 22, SE030, 74 );
--気合い入れる4
SE031 = playSe( spep_6 + 22, 1060 );
--空気圧1
SE032 = playSe( spep_6 + 38, 1278 );
stopSe( spep_6 +56 + 50, SE032, 28 );
--空気圧2
SE033 = playSe( spep_6 + 52, 1259 );
setSeVolumeByWorkId( spep_6 + 52, SE033, 60 );
stopSe( spep_6 +56 +66 + 21, SE033, 11 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
-- 気合砲が敵にあたり吹っ飛ぶ(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
huttobi_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --気合砲が敵にあたり吹っ飛ぶ(ef_010)
setEffMoveKey( spep_7 + 0, huttobi_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, huttobi_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, huttobi_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, huttobi_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, huttobi_f, 0 );
setEffRotateKey( spep_7 + 66, huttobi_f, 0 );
setEffAlphaKey( spep_7 + 0, huttobi_f, 255 );
setEffAlphaKey( spep_7 + 66, huttobi_f, 255 );

-- ** エフェクト等 ** --
huttobi_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --気合砲が敵にあたり吹っ飛ぶ(ef_011)
setEffMoveKey( spep_7 + 0, huttobi_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, huttobi_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, huttobi_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, huttobi_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, huttobi_b, 0 );
setEffRotateKey( spep_7 + 66, huttobi_b, 0 );
setEffAlphaKey( spep_7 + 0, huttobi_b, 255 );
setEffAlphaKey( spep_7 + 66, huttobi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 166, 1, 0 );
changeAnime( spep_7 + 0, 1, 104 );
changeAnime( spep_7 -3 + 26, 1, 106 );
changeAnime( spep_7 -3 + 40, 1, 5 );
changeAnime( spep_7 + 66, 1, 107 );

setMoveKey( spep_7 + 0, 1, -212.6, -4.5 , 0 );
setMoveKey( spep_7 + 1, 1, -208.6, -19.2 , 0 );
setMoveKey( spep_7 + 2, 1, -202.6, -7 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -191.2, -7.2 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -177.7, -10.6 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -171.8, -18.1 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -166, -8.9 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -152.5, -8.3 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -134.8, -15.6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -139.6, -4.1 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -119.5, 0.2 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -108.7, -4.8 , 0 );
setMoveKey( spep_7 -3 + 25, 1, -118, -19.1 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -115.4, -25.5 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -96.3, -31.8 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -81.5, -29.9 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -87.3, -25.4 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -67.8, -49.6 , 0 );
setMoveKey( spep_7 -3 + 37, 1, -64.3, -38.1 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 2.1, -73.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 17.2, -48.8 , 0 );
setMoveKey( spep_7 -3 + 43, 1, -16.2, -81.9 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 3.2, -69.9 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -17.2, -29.4 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 13.4, -29.5 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 25, -82.3 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 39.5, -71.4 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 32.8, -64.4 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 87.4, -71 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 79.9, -78.8 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 96.5, -78.2 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 102.8, -77.6 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 112.5, -87.2 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 130.8, -84.9 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 149.1, -96.3 , 0 );
--setMoveKey( spep_7 -3 + 69, 1, 149.1, -96.3 , 0 );

setMoveKey( spep_7 +66  + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_7 +66  -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_7 +66  -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_7 +66  -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_7 +66  -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_7 +66  -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_7 +66  -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_7 +66  + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_7 + 0, 1, 3.37, 3.37 );
setScaleKey( spep_7 + 1, 1, 3.32, 3.33 );
setScaleKey( spep_7 + 2, 1, 3.28, 3.28 );
setScaleKey( spep_7 -3 + 6, 1, 3.23, 3.23 );
setScaleKey( spep_7 -3 + 8, 1, 3.18, 3.19 );
setScaleKey( spep_7 -3 + 10, 1, 3.14, 3.14 );
setScaleKey( spep_7 -3 + 12, 1, 3.09, 3.1 );
setScaleKey( spep_7 -3 + 14, 1, 3.05, 3.05 );
setScaleKey( spep_7 -3 + 16, 1, 3.0, 3.01 );
setScaleKey( spep_7 -3 + 18, 1, 2.96, 2.97 );
setScaleKey( spep_7 -3 + 20, 1, 2.91, 2.92 );
setScaleKey( spep_7 -3 + 22, 1, 2.87, 2.88 );
setScaleKey( spep_7 -3 + 25, 1, 2.83, 2.84 );
setScaleKey( spep_7 -3 + 26, 1, 2.78, 2.79 );
setScaleKey( spep_7 -3 + 28, 1, 2.74, 2.75 );
setScaleKey( spep_7 -3 + 30, 1, 2.7, 2.71 );
setScaleKey( spep_7 -3 + 32, 1, 2.66, 2.67 );
setScaleKey( spep_7 -3 + 34, 1, 2.62, 2.63 );
setScaleKey( spep_7 -3 + 37, 1, 2.58, 2.59 );
setScaleKey( spep_7 -3 + 43, 1, 2.58, 2.59 );
setScaleKey( spep_7 -3 + 44, 1, 2.19, 2.2 );
setScaleKey( spep_7 -3 + 46, 1, 2.08, 2.09 );
setScaleKey( spep_7 -3 + 48, 1, 1.97, 1.97 );
setScaleKey( spep_7 -3 + 50, 1, 1.85, 1.86 );
setScaleKey( spep_7 -3 + 52, 1, 1.74, 1.75 );
setScaleKey( spep_7 -3 + 54, 1, 1.62, 1.63 );
setScaleKey( spep_7 -3 + 56, 1, 1.51, 1.52 );
setScaleKey( spep_7 -3 + 58, 1, 1.4, 1.4 );
setScaleKey( spep_7 -3 + 60, 1, 1.28, 1.29 );
setScaleKey( spep_7 -3 + 62, 1, 1.17, 1.17 );
setScaleKey( spep_7 -3 + 64, 1, 1.06, 1.06 );
setScaleKey( spep_7 -3 + 66, 1, 0.94, 0.94 );
setScaleKey( spep_7 -3 + 68, 1, 0.83, 0.83 );
--setScaleKey( spep_7 -3 + 69, 1, 0.43, 0.43 );

setScaleKey( spep_7 +66  + 0, 1, 0.35, 0.35 );
setScaleKey( spep_7 +66  -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 +66  -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 +66  -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 +66  -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 +66  -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 +66  -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 +66  -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 +66  -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 +66  -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 +66  -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 +66  -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 +66  -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 +66  + 100, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 -3 + 25, 1, 0 );
setRotateKey( spep_7 -3 + 26, 1, -53 );
setRotateKey( spep_7 -3 + 39, 1, -53 );
setRotateKey( spep_7 -3 + 40, 1, 58 );
setRotateKey( spep_7 -3 + 43, 1, 58 );
setRotateKey( spep_7 -3 + 44, 1, 58 );
setRotateKey( spep_7 -3 + 68, 1, 58 );

setRotateKey( spep_7 +66  + 0, 1, 105 );
setRotateKey( spep_7 +66  -3 + 4, 1, 240 );
setRotateKey( spep_7 +66  -3 + 6, 1, 405 );
setRotateKey( spep_7 +66  -3 + 8, 1, 600 );
setRotateKey( spep_7 +66  -3 + 10, 1, 825 );
setRotateKey( spep_7 +66  -3 + 12, 1, 1080 );
setRotateKey( spep_7 +66  + 100, 1, 1080 );


-- ** 音 ** --
--敵ヒット1
SE034 = playSe( spep_7 + 44, 1027 );
--敵ヒット2
SE035 = playSe( spep_7 + 44, 1011 );
setSeVolumeByWorkId( spep_7 + 44, SE035, 86 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 56, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面手前に吹っ飛ぶ(画面割れ)
setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 100, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 100, finish_f, 255 );

finish_b = entryEffectLife( spep_8 + 0, SP_12, 100, 0x80, -1, 0, 0, 0 );  --敵が画面手前に吹っ飛ぶ(ef_012)
setEffMoveKey( spep_8 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.5, 1.5 );
setEffScaleKey( spep_8 + 100, finish_b, 1.5, 1.5 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 100, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 100, finish_b, 255 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_8 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_8 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_8 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_8 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_8 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_8 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_8 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_8 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_8 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_8 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_8 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_8 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_8 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_8 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_8 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_8 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_8 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_8 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_8 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_8 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_8 + 14, ctga, 14, 20 );

setEffMoveKey( spep_8 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_8 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_8 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_8 + 14, ctga, -10.9 );
setEffRotateKey( spep_8 + 15, ctga, -10.9 );
setEffRotateKey( spep_8 + 16, ctga, -14.9 );
setEffRotateKey( spep_8 + 17, ctga, -14.9 );
setEffRotateKey( spep_8 + 18, ctga, -10.9 );
setEffRotateKey( spep_8 + 19, ctga, -10.9 );
setEffRotateKey( spep_8 + 20, ctga, -14.9 );
setEffRotateKey( spep_8 + 21, ctga, -14.9 );
setEffRotateKey( spep_8 + 22, ctga, -10.9 );
setEffRotateKey( spep_8 + 23, ctga, -10.9 );
setEffRotateKey( spep_8 + 24, ctga, -14.9 );
setEffRotateKey( spep_8 + 25, ctga, -14.9 );
setEffRotateKey( spep_8 + 26, ctga, -10.9 );
setEffRotateKey( spep_8 + 27, ctga, -10.9 );
setEffRotateKey( spep_8 + 28, ctga, -14.9 );
setEffRotateKey( spep_8 + 100, ctga, -14.9 );

setEffAlphaKey( spep_8 + 14, ctga, 255 );
setEffAlphaKey( spep_8 + 100, ctga, 255 );

-- ** 音 ** --

--ガッ
playSe( spep_8 + 8, 1054 );
setSeVolume( spep_8 + 8, 1054, 126 );


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 10 );
endPhase( spep_8 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 敵に突っ込む(26F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --敵に突っ込む(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 26, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 26, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 26, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 26, first_f, 255 );

-- ** 音 ** --
--手前ダッシュ
SE001 = playSe( spep_0 + 0, 9 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 26, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 26;


------------------------------------------------------
-- 格闘(136F)
------------------------------------------------------
Fight_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --格闘(ef_002)
setEffMoveKey( spep_1 + 0, Fight_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, Fight_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, Fight_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 136, Fight_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Fight_f, 0 );
setEffRotateKey( spep_1 + 136, Fight_f, 0 );
setEffAlphaKey( spep_1 + 0, Fight_f, 255 );
setEffAlphaKey( spep_1 + 136, Fight_f, 255 );

Fight_e = entryEffect( spep_1 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --格闘(ef_004)
setEffMoveKey( spep_1 + 0, Fight_e, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, Fight_e, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, Fight_e, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, Fight_e, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Fight_e, 0 );
setEffRotateKey( spep_1 + 136, Fight_e, 0 );
setEffAlphaKey( spep_1 + 0, Fight_e, 255 );
setEffAlphaKey( spep_1 + 136, Fight_e, 255 );

Fight_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --格闘(ef_003)
setEffMoveKey( spep_1 + 0, Fight_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 136, Fight_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, Fight_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 136, Fight_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, Fight_b, 0 );
setEffRotateKey( spep_1 + 136, Fight_b, 0 );
setEffAlphaKey( spep_1 + 0, Fight_b, 255 );
setEffAlphaKey( spep_1 + 136, Fight_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 101 );
changeAnime( spep_1 -3 + 8, 1, 104 );

setMoveKey( spep_1 + 0, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 + 1, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 + 2, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 + 3, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 -3 + 7, 1, 53.4, -123.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 53.4, -125 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 53.4, -125 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 53.4, -125 , 0 );

setScaleKey( spep_1 + 0, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 1, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 2, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 3, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 4, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 5, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 6, 1, 1.6, 1.6 );
setScaleKey( spep_1 + 7, 1, 1.6, 1.6 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 + 7, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 8 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
    --stopSe( SP_dodge - 12, SE007, 0);
    --stopSe( SP_dodge - 12, SE008, 0);
    --stopSe( SP_dodge - 12, SE06, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 2, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 4, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 6, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 8, 1, 53.4, -125 , 0 );
    setMoveKey( SP_dodge + 10, 1, 53.4, -125 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 2, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 4, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 6, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 8, 1, 1.6, 1.6 );
    setScaleKey( SP_dodge + 10, 1, 1.6, 1.6 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    --キャラクターの固定
    
    setMoveKey(SP_dodge, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge,   1, 0);
    
    --キャラクターの固定
    setMoveKey(SP_dodge+10, 1, 99.2, -69.8, 0);
    setScaleKey(SP_dodge+10 , 1 ,0.53, 0.53 );
    setRotateKey(SP_dodge+10,   1, 0);
    
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350, 1000 ); -- eff_005 (カットイン)
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

-- ** 敵キャラクター ** --
setDisp( spep_1 + 136, 1, 0 );
changeAnime( spep_1 -3 + 22, 1, 108 );
changeAnime( spep_1 -3 + 56, 1, 106 );
changeAnime( spep_1 -3 + 86, 1, 108 );
changeAnime( spep_1 -3 + 96, 1, 106 );

setMoveKey( spep_1 -3 + 21, 1, 53.4, -125 , 0 );
setMoveKey( spep_1 -3 + 22, 1, -3.9, -109.5 , 0 );
setMoveKey( spep_1 -3 + 24, 1, -1.3, -107.9 , 0 );
setMoveKey( spep_1 -3 + 26, 1, -1.1, -109 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 22.1, -96.9 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 25, -88.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 36.9, -77.4 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 31.5, -83.6 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 38.5, -87.1 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 36.7, -78.4 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 39.4, -76.7 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 41.9, -75.3 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 44.1, -74.2 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 46.1, -73.2 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 47.9, -72.5 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 49.5, -71.9 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 51, -71.5 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 52.2, -71.2 , 0 );

setMoveKey( spep_1 -3 + 56, 1, -1.1, -88.7 , 0 ); -- -76.7
setMoveKey( spep_1 -3 + 58, 1, 2.9, -96.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 2.9, -92.5 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 8.4, -82.5 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 18, -84.1 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 20.6, -82.3 , 0 );
setMoveKey( spep_1 -3 + 68, 1, 23.2, -80.5 , 0 );
setMoveKey( spep_1 -3 + 70, 1, 23.6, -78.4 , 0 );
setMoveKey( spep_1 -3 + 72, 1, 24.2, -76.2 , 0 );
setMoveKey( spep_1 -3 + 74, 1, 27.2, -76.8 , 0 );
setMoveKey( spep_1 -3 + 76, 1, 30.2, -77.4 , 0 );
setMoveKey( spep_1 -3 + 78, 1, 30.9, -75.5 , 0 );
setMoveKey( spep_1 -3 + 80, 1, 31.7, -73.7 , 0 );
setMoveKey( spep_1 -3 + 82, 1, 34.2, -73.7 , 0 );
setMoveKey( spep_1 -3 + 85, 1, 35.5, -74.4 , 0 );

setMoveKey( spep_1 -3 + 86, 1, 26.8, -63.7 , 0 );
setMoveKey( spep_1 -3 + 88, 1, 36.4, -71.2 , 0 );
setMoveKey( spep_1 -3 + 90, 1, 36.8, -65.9 , 0 );
setMoveKey( spep_1 -3 + 92, 1, 48.1, -68.6 , 0 );
setMoveKey( spep_1 -3 + 95, 1, 44.4, -74.3 , 0 );

setMoveKey( spep_1 -3 + 96, 1, 48, -77.8 , 0 );
setMoveKey( spep_1 -3 + 98, 1, 49.1, -82.1 , 0 );
setMoveKey( spep_1 -3 + 100, 1, 41.4, -75.3 , 0 );
setMoveKey( spep_1 -3 + 102, 1, 39.4, -81.3 , 0 );
setMoveKey( spep_1 -3 + 104, 1, 45.5, -80.3 , 0 );
setMoveKey( spep_1 -3 + 106, 1, 54.4, -84.9 , 0 );
setMoveKey( spep_1 -3 + 108, 1, 51.4, -82.2 , 0 );
setMoveKey( spep_1 -3 + 110, 1, 44.5, -80.6 , 0 );
setMoveKey( spep_1 -3 + 112, 1, 50.7, -82.6 , 0 );
setMoveKey( spep_1 -3 + 114, 1, 54.4, -79 , 0 );
setMoveKey( spep_1 -3 + 116, 1, 45, -83.2 , 0 );
setMoveKey( spep_1 -3 + 118, 1, 53.1, -82.3 , 0 );
setMoveKey( spep_1 -3 + 120, 1, 60.7, -80.9 , 0 );
setMoveKey( spep_1 -3 + 122, 1, 48.3, -79.1 , 0 );
setMoveKey( spep_1 -3 + 124, 1, 61.4, -82.9 , 0 );
setMoveKey( spep_1 -3 + 126, 1, 53, -81.9 , 0 );
setMoveKey( spep_1 -3 + 128, 1, 46.5, -82.7 , 0 );
setMoveKey( spep_1 -3 + 130, 1, 57.2, -80.1 , 0 );
setMoveKey( spep_1 -3 + 132, 1, 54.4, -80.7 , 0 );
setMoveKey( spep_1 -3 + 134, 1, 72.2, -80.6 , 0 );
setMoveKey( spep_1 -3 + 136, 1, 60.7, -82.1 , 0 );
setMoveKey( spep_1 -3 + 138, 1, 70.7, -79.5 , 0 );
setMoveKey( spep_1 -3 + 139, 1, 70.7, -79.5 , 0 );

setScaleKey( spep_1 -3 + 98, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 100, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 102, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 104, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 108, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 110, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 112, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 114, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 116, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 118, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 120, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 122, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 124, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 126, 1, 1.59, 1.59 );
setScaleKey( spep_1 -3 + 128, 1, 1.6, 1.6 );
setScaleKey( spep_1 -3 + 139, 1, 1.6, 1.6 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1 + 1, 1, 0 );
setRotateKey( spep_1 + 2, 1, 0 );
setRotateKey( spep_1 + 3, 1, 0 );
setRotateKey( spep_1 + 4, 1, 0 );
setRotateKey( spep_1 + 5, 1, 0 );
setRotateKey( spep_1 + 6, 1, 0 );
setRotateKey( spep_1 -3 + 21, 1, 0 );
setRotateKey( spep_1 -3 + 22, 1, -5 );
setRotateKey( spep_1 -3 + 24, 1, -4.8 );
setRotateKey( spep_1 -3 + 26, 1, -4.1 );
setRotateKey( spep_1 -3 + 28, 1, -3.3 );
setRotateKey( spep_1 -3 + 30, 1, -2.9 );
setRotateKey( spep_1 -3 + 32, 1, -2.5 );
setRotateKey( spep_1 -3 + 34, 1, -2.2 );
setRotateKey( spep_1 -3 + 36, 1, -2 );
setRotateKey( spep_1 -3 + 38, 1, -1.8 );
setRotateKey( spep_1 -3 + 40, 1, -1.6 );
setRotateKey( spep_1 -3 + 42, 1, -1.4 );
setRotateKey( spep_1 -3 + 44, 1, -1.3 );
setRotateKey( spep_1 -3 + 46, 1, -1.2 );
setRotateKey( spep_1 -3 + 48, 1, -1.1 );
setRotateKey( spep_1 -3 + 50, 1, -1.1 );
setRotateKey( spep_1 -3 + 52, 1, -1 );
setRotateKey( spep_1 -3 + 55, 1, -1 );
setRotateKey( spep_1 -3 + 56, 1, -52 );
setRotateKey( spep_1 -3 + 58, 1, -51.8 );
setRotateKey( spep_1 -3 + 60, 1, -51 );
setRotateKey( spep_1 -3 + 62, 1, -50.8 );
setRotateKey( spep_1 -3 + 64, 1, -50.6 );
setRotateKey( spep_1 -3 + 66, 1, -50.4 );
setRotateKey( spep_1 -3 + 68, 1, -50.1 );
setRotateKey( spep_1 -3 + 70, 1, -49.8 );
setRotateKey( spep_1 -3 + 72, 1, -49.4 );
setRotateKey( spep_1 -3 + 74, 1, -49 );
setRotateKey( spep_1 -3 + 76, 1, -48.5 );
setRotateKey( spep_1 -3 + 78, 1, -48 );
setRotateKey( spep_1 -3 + 80, 1, -47.5 );
setRotateKey( spep_1 -3 + 82, 1, -47 );
setRotateKey( spep_1 -3 + 85, 1, -47 );
setRotateKey( spep_1 -3 + 86, 1, -10 );
setRotateKey( spep_1 -3 + 88, 1, -8 );
setRotateKey( spep_1 -3 + 90, 1, -6.2 );
setRotateKey( spep_1 -3 + 92, 1, -4.6 );
setRotateKey( spep_1 -3 + 95, 1, -3 );
setRotateKey( spep_1 -3 + 96, 1, -45 );
setRotateKey( spep_1 -3 + 98, 1, -47.1 );
setRotateKey( spep_1 -3 + 100, 1, -49 );
setRotateKey( spep_1 -3 + 102, 1, -52.1 );
setRotateKey( spep_1 -3 + 104, 1, -50.5 );
setRotateKey( spep_1 -3 + 106, 1, -49 );
setRotateKey( spep_1 -3 + 108, 1, -50.6 );
setRotateKey( spep_1 -3 + 110, 1, -52.1 );
setRotateKey( spep_1 -3 + 112, 1, -50.5 );
setRotateKey( spep_1 -3 + 114, 1, -49 );
setRotateKey( spep_1 -3 + 116, 1, -52.1 );
setRotateKey( spep_1 -3 + 118, 1, -57 );
setRotateKey( spep_1 -3 + 120, 1, -49 );
setRotateKey( spep_1 -3 + 122, 1, -52.1 );
setRotateKey( spep_1 -3 + 124, 1, -58 );
setRotateKey( spep_1 -3 + 126, 1, -48 );
setRotateKey( spep_1 -3 + 128, 1, -47 );
setRotateKey( spep_1 -3 + 130, 1, -52 );
setRotateKey( spep_1 -3 + 132, 1, -56 );
setRotateKey( spep_1 -3 + 134, 1, -49 );
setRotateKey( spep_1 -3 + 136, 1, -52.1 );
setRotateKey( spep_1 -3 + 138, 1, -47 );
setRotateKey( spep_1 -3 + 139, 1, -47 );

-- ** 音 ** --
--ラッシュ1
SE002 = playSe( spep_1 + 22, 1189 );
--ラッシュ2
SE003 = playSe( spep_1 + 26, 1000 );
--ラッシュ3
SE004 = playSe( spep_1 + 26, 1110 );
setSeVolumeByWorkId( spep_1 + 26, SE004, 76 );
--ラッシュ4
SE005 = playSe( spep_1 + 60, 1009 );
--ラッシュ5
SE006 = playSe( spep_1 + 60, 1000 );
--ラッシュ6
SE007 = playSe( spep_1 + 92, 1000 );
--ラッシュ7
SE008 = playSe( spep_1 + 92, 1010 );
--ラッシュ8
SE009 = playSe( spep_1 + 102, 1000 );
--ラッシュ9
SE010 = playSe( spep_1 + 112, 1009 );
setSeVolumeByWorkId( spep_1 + 112, SE010, 54 );

--向かってくる
SE011 = playSe( spep_1 + 130, 1072 );
setSeVolumeByWorkId( spep_1 + 130, SE011, 0 );
setSeVolumeByWorkId( spep_1 + 132, SE011, 25 );
setSeVolumeByWorkId( spep_1 + 134, SE011, 50 );
setSeVolumeByWorkId( spep_1 + 136, SE011, 75 );
setSeVolumeByWorkId( spep_1 + 139, SE011, 100 );

setStartTimeMs( SE011,  283 );
--ラッシュ10
SE012 = playSe( spep_1 + 114, 1000 );
--ラッシュ11
SE013 = playSe( spep_1 + 122, 1009 );
setSeVolumeByWorkId( spep_1 + 122, SE013, 85 );
--ラッシュ12
SE014 = playSe( spep_1 + 122, 1000 );
--ラッシュ13
SE015 = playSe( spep_1 + 128, 1009 );
setSeVolumeByWorkId( spep_1 + 128, SE015, 82 );
stopSe( spep_1 +136 + 8, SE015, 0 );
--ラッシュ14
SE016 = playSe( spep_1 + 128, 1000 );
--ラッシュ15
SE017 = playSe( spep_1 + 134, 1000 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 136;


--------------------------------------
--蹴り(32F)
--------------------------------------
-- ** エフェクト等 ** --
kick = entryEffect( spep_2 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --蹴り(ef_005)
setEffMoveKey( spep_2 + 0, kick, 0, 0 , 0 );
setEffMoveKey( spep_2 + 32, kick, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kick, -1.0, 1.0 );
setEffScaleKey( spep_2 + 32, kick, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick, 0 );
setEffRotateKey( spep_2 + 32, kick, 0 );
setEffAlphaKey( spep_2 + 0, kick, 255 );
setEffAlphaKey( spep_2 + 32, kick, 255 );

-- ** 音 ** --
--蹴り1
SE018 = playSe( spep_2 + 24, 1004 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 32, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 32;


--------------------------------------
--敵吹っ飛び(56F)
--------------------------------------
-- ** エフェクト等 ** --
lkick_f = entryEffectLife( spep_3 + 0, SP_06r, 55, 0x100, -1, 0, 0, 0 );  --敵吹っ飛び(ef_006)
setEffMoveKey( spep_3 + 0, lkick_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 55, lkick_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, lkick_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 55, lkick_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lkick_f, 0 );
setEffRotateKey( spep_3 + 55, lkick_f, 0 );
setEffAlphaKey( spep_3 + 0, lkick_f, 255 );
setEffAlphaKey( spep_3 + 55, lkick_f, 255 );

-- ** エフェクト等 ** --
lkick_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --敵吹っ飛び(ef_007)
setEffMoveKey( spep_3 + 0, lkick_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 56, lkick_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, lkick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 56, lkick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, lkick_b, 0 );
setEffRotateKey( spep_3 + 56, lkick_b, 0 );
setEffAlphaKey( spep_3 + 0, lkick_b, 255 );
setEffAlphaKey( spep_3 + 56, lkick_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 56, 1, 0 );
changeAnime( spep_3 + 0, 1, 105 );

setMoveKey( spep_3 + 0, 1, 31.7, -12.7 , 0 );
setMoveKey( spep_3 + 1, 1, 124.6, -76 , 0 );
setMoveKey( spep_3 + 2, 1, 101.5, -399.8 , 0 );
setMoveKey( spep_3 + 3, 1, 101.5, -399.8 , 0 );
setMoveKey( spep_3 -3 + 7, 1, -347.2, -442.4 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 158.1, -88.1 , 0 );
setMoveKey( spep_3 -3 + 9, 1, 158.1, -88.1 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 176.9, -78.1 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 166.6, -93.1 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 177.3, -94.7 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 157.8, -76.2 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 171.3, -74.5 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 160.7, -88.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 172.9, -86.7 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 166.6, -75.6 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 170.2, -87.6 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 167.5, -79.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 173.7, -77 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 174.6, -81.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 169.8, -73.2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 168.7, -80.1 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 173.5, -75.3 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 168.4, -75.3 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 170.3, -78.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 168.9, -78.2 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 173.7, -76.3 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 168.5, -79.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 167.2, -79.4 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 168.8, -80.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 168.5, -78.4 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 166.2, -79.4 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 165.4, -78 , 0 );
setMoveKey( spep_3 -3 + 59, 1, 165.4, -78 , 0 );

setScaleKey( spep_3 + 0, 1, 0.52, 0.67 );
setScaleKey( spep_3 + 1, 1, 0.49, 0.6 );
setScaleKey( spep_3 + 2, 1, 0.26, 0.59 );
setScaleKey( spep_3 + 3, 1, 0.26, 0.59 );
setScaleKey( spep_3 -3 + 7, 1, 0.08, 0.53 );
setScaleKey( spep_3 -3 + 8, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 9, 1, 2.1, 2.1 );
setScaleKey( spep_3 -3 + 10, 1, 1.49, 1.49 );
setScaleKey( spep_3 -3 + 12, 1, 1.07, 1.07 );
setScaleKey( spep_3 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 16, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 18, 1, 0.54, 0.54 );
setScaleKey( spep_3 -3 + 20, 1, 0.49, 0.49 );
setScaleKey( spep_3 -3 + 22, 1, 0.44, 0.44 );
setScaleKey( spep_3 -3 + 24, 1, 0.41, 0.41 );
setScaleKey( spep_3 -3 + 26, 1, 0.38, 0.38 );
setScaleKey( spep_3 -3 + 28, 1, 0.36, 0.36 );
setScaleKey( spep_3 -3 + 30, 1, 0.34, 0.34 );
setScaleKey( spep_3 -3 + 32, 1, 0.32, 0.32 );
setScaleKey( spep_3 -3 + 34, 1, 0.31, 0.31 );
setScaleKey( spep_3 -3 + 36, 1, 0.29, 0.29 );
setScaleKey( spep_3 -3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_3 -3 + 40, 1, 0.27, 0.27 );
setScaleKey( spep_3 -3 + 42, 1, 0.26, 0.26 );
setScaleKey( spep_3 -3 + 44, 1, 0.25, 0.25 );
setScaleKey( spep_3 -3 + 46, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 48, 1, 0.24, 0.24 );
setScaleKey( spep_3 -3 + 50, 1, 0.23, 0.23 );
setScaleKey( spep_3 -3 + 52, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 54, 1, 0.22, 0.22 );
setScaleKey( spep_3 -3 + 56, 1, 0.21, 0.21 );
setScaleKey( spep_3 -3 + 58, 1, 0.2, 0.2 );
setScaleKey( spep_3 -3 + 59, 1, 0.2, 0.2 );

setRotateKey( spep_3 + 0, 1, -138 );
setRotateKey( spep_3 + 1, 1, -80.9 );
setRotateKey( spep_3 + 2, 1, -20.1 );
setRotateKey( spep_3 + 3, 1, -20.1 );
setRotateKey( spep_3 -3 + 7, 1, 36.9 );
setRotateKey( spep_3 -3 + 8, 1, -20 );
setRotateKey( spep_3 -3 + 9, 1, -20 );
setRotateKey( spep_3 -3 + 10, 1, -26.4 );
setRotateKey( spep_3 -3 + 12, 1, -30.9 );
setRotateKey( spep_3 -3 + 14, 1, -34 );
setRotateKey( spep_3 -3 + 16, 1, -35.9 );
setRotateKey( spep_3 -3 + 18, 1, -37.3 );
setRotateKey( spep_3 -3 + 20, 1, -38.3 );
setRotateKey( spep_3 -3 + 22, 1, -39.1 );
setRotateKey( spep_3 -3 + 24, 1, -39.7 );
setRotateKey( spep_3 -3 + 26, 1, -40.2 );
setRotateKey( spep_3 -3 + 28, 1, -40.7 );
setRotateKey( spep_3 -3 + 30, 1, -41.1 );
setRotateKey( spep_3 -3 + 32, 1, -41.4 );
setRotateKey( spep_3 -3 + 34, 1, -41.7 );
setRotateKey( spep_3 -3 + 36, 1, -41.9 );
setRotateKey( spep_3 -3 + 38, 1, -42.1 );
setRotateKey( spep_3 -3 + 40, 1, -42.3 );
setRotateKey( spep_3 -3 + 42, 1, -42.5 );
setRotateKey( spep_3 -3 + 44, 1, -42.7 );
setRotateKey( spep_3 -3 + 46, 1, -42.8 );
setRotateKey( spep_3 -3 + 48, 1, -43 );
setRotateKey( spep_3 -3 + 50, 1, -43.1 );
setRotateKey( spep_3 -3 + 52, 1, -43.2 );
setRotateKey( spep_3 -3 + 54, 1, -43.4 );
setRotateKey( spep_3 -3 + 56, 1, -43.5 );
setRotateKey( spep_3 -3 + 58, 1, -43.6 );
setRotateKey( spep_3 -3 + 59, 1, -43.6 );

-- ** 音 ** --
--蹴り2
SE019 = playSe( spep_3 + 0, 1010 );
--蹴り3
SE020 = playSe( spep_3 + 0, 1001 );
--蹴り4
SE021 = playSe( spep_3 + 2, 1110 );
--敵飛んでいく
SE022 = playSe( spep_3 + 10, 1183 );
setSeVolumeByWorkId( spep_3 + 10, SE022, 65 );
stopSe( spep_3 +56 + 16, SE022, 14 );

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 56;


--------------------------------------
--気合溜め(86F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_08, 86, 0x80, -1, 0, 0, 0 );  --気合溜め(ef_008)
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, tame, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 86, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 86, tame, 255 );

spep_x = spep_3 + 54;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--気ダメ1
SE023 = playSe( spep_4 + 14, 1011 );
stopSe( spep_4 +86 + 20, SE023, 0 );
--気ダメ2
SE024 = playSe( spep_4 + 14, 1024 );
setSeVolumeByWorkId( spep_4 + 14, SE024, 71 );
stopSe( spep_4 +86 + 20, SE024, 0 );
--気ダメ3
SE025 = playSe( spep_4 + 16, 20 );
stopSe( spep_4 +86 + 20, SE025, 0 );
--顔カットイン
SE026 = playSe( spep_4 + 18, 1018 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_4 + 76, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え


elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_5, SE_05);
speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
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
--playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_6 = spep_5 + 94;


------------------------------------------------------
-- 気合砲を放つ(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
hanatu = entryEffect( spep_6 + 0, SP_09r, 0x80, -1, 0, 0, 0 );  --気合砲を放つ(ef_009)
setEffMoveKey( spep_6 + 0, hanatu, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, hanatu, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hanatu, -1.0, 1.0 );
setEffScaleKey( spep_6 + 56, hanatu, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hanatu, 0 );
setEffRotateKey( spep_6 + 56, hanatu, 0 );
setEffAlphaKey( spep_6 + 0, hanatu, 255 );
setEffAlphaKey( spep_6 + 56, hanatu, 255 );

-- ** 音 ** --
--気合い入れる1
SE028 = playSe( spep_6 + 16, 1258 );
setSeVolumeByWorkId( spep_6 + 16, SE028, 43 );
--気合い入れる2
SE029 = playSe( spep_6 + 22, 20 );
setSeVolumeByWorkId( spep_6 + 22, SE029, 63 );
--気合い入れる3
SE030 = playSe( spep_6 + 22, 1025 );
setSeVolumeByWorkId( spep_6 + 22, SE030, 74 );
--気合い入れる4
SE031 = playSe( spep_6 + 22, 1060 );
--空気圧1
SE032 = playSe( spep_6 + 38, 1278 );
stopSe( spep_6 +56 + 50, SE032, 28 );
--空気圧2
SE033 = playSe( spep_6 + 52, 1259 );
setSeVolumeByWorkId( spep_6 + 52, SE033, 60 );
stopSe( spep_6 +56 +66 + 21, SE033, 11 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
-- 気合砲が敵にあたり吹っ飛ぶ(66F)
------------------------------------------------------
-- ** エフェクト等 ** --
huttobi_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --気合砲が敵にあたり吹っ飛ぶ(ef_010)
setEffMoveKey( spep_7 + 0, huttobi_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, huttobi_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, huttobi_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, huttobi_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, huttobi_f, 0 );
setEffRotateKey( spep_7 + 66, huttobi_f, 0 );
setEffAlphaKey( spep_7 + 0, huttobi_f, 255 );
setEffAlphaKey( spep_7 + 66, huttobi_f, 255 );

-- ** エフェクト等 ** --
huttobi_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --気合砲が敵にあたり吹っ飛ぶ(ef_011)
setEffMoveKey( spep_7 + 0, huttobi_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66, huttobi_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, huttobi_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66, huttobi_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, huttobi_b, 0 );
setEffRotateKey( spep_7 + 66, huttobi_b, 0 );
setEffAlphaKey( spep_7 + 0, huttobi_b, 255 );
setEffAlphaKey( spep_7 + 66, huttobi_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 + 166, 1, 0 );
changeAnime( spep_7 + 0, 1, 104 );
changeAnime( spep_7 -3 + 26, 1, 106 );
changeAnime( spep_7 -3 + 40, 1, 5 );
changeAnime( spep_7 + 66, 1, 107 );

setMoveKey( spep_7 + 0, 1, -212.6, -4.5 , 0 );
setMoveKey( spep_7 + 1, 1, -208.6, -19.2 , 0 );
setMoveKey( spep_7 + 2, 1, -202.6, -7 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -191.2, -7.2 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -177.7, -10.6 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -171.8, -18.1 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -166, -8.9 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -152.5, -8.3 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -134.8, -15.6 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -139.6, -4.1 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -119.5, 0.2 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -108.7, -4.8 , 0 );
setMoveKey( spep_7 -3 + 25, 1, -118, -19.1 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -115.4, -25.5 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -96.3, -31.8 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -81.5, -29.9 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -87.3, -25.4 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -67.8, -49.6 , 0 );
setMoveKey( spep_7 -3 + 37, 1, -64.3, -38.1 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 2.1, -73.5 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 17.2, -48.8 , 0 );
setMoveKey( spep_7 -3 + 43, 1, -16.2, -81.9 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 3.2, -69.9 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -17.2, -29.4 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 13.4, -29.5 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 25, -82.3 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 39.5, -71.4 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 32.8, -64.4 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 87.4, -71 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 79.9, -78.8 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 96.5, -78.2 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 102.8, -77.6 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 112.5, -87.2 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 130.8, -84.9 , 0 );
setMoveKey( spep_7 -3 + 68, 1, 149.1, -96.3 , 0 );
--setMoveKey( spep_7 -3 + 69, 1, 149.1, -96.3 , 0 );

setMoveKey( spep_7 +66  + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_7 +66  -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_7 +66  -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_7 +66  -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_7 +66  -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_7 +66  -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_7 +66  -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_7 +66  + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_7 + 0, 1, 3.37, 3.37 );
setScaleKey( spep_7 + 1, 1, 3.32, 3.33 );
setScaleKey( spep_7 + 2, 1, 3.28, 3.28 );
setScaleKey( spep_7 -3 + 6, 1, 3.23, 3.23 );
setScaleKey( spep_7 -3 + 8, 1, 3.18, 3.19 );
setScaleKey( spep_7 -3 + 10, 1, 3.14, 3.14 );
setScaleKey( spep_7 -3 + 12, 1, 3.09, 3.1 );
setScaleKey( spep_7 -3 + 14, 1, 3.05, 3.05 );
setScaleKey( spep_7 -3 + 16, 1, 3.0, 3.01 );
setScaleKey( spep_7 -3 + 18, 1, 2.96, 2.97 );
setScaleKey( spep_7 -3 + 20, 1, 2.91, 2.92 );
setScaleKey( spep_7 -3 + 22, 1, 2.87, 2.88 );
setScaleKey( spep_7 -3 + 25, 1, 2.83, 2.84 );
setScaleKey( spep_7 -3 + 26, 1, 2.78, 2.79 );
setScaleKey( spep_7 -3 + 28, 1, 2.74, 2.75 );
setScaleKey( spep_7 -3 + 30, 1, 2.7, 2.71 );
setScaleKey( spep_7 -3 + 32, 1, 2.66, 2.67 );
setScaleKey( spep_7 -3 + 34, 1, 2.62, 2.63 );
setScaleKey( spep_7 -3 + 37, 1, 2.58, 2.59 );
setScaleKey( spep_7 -3 + 43, 1, 2.58, 2.59 );
setScaleKey( spep_7 -3 + 44, 1, 2.19, 2.2 );
setScaleKey( spep_7 -3 + 46, 1, 2.08, 2.09 );
setScaleKey( spep_7 -3 + 48, 1, 1.97, 1.97 );
setScaleKey( spep_7 -3 + 50, 1, 1.85, 1.86 );
setScaleKey( spep_7 -3 + 52, 1, 1.74, 1.75 );
setScaleKey( spep_7 -3 + 54, 1, 1.62, 1.63 );
setScaleKey( spep_7 -3 + 56, 1, 1.51, 1.52 );
setScaleKey( spep_7 -3 + 58, 1, 1.4, 1.4 );
setScaleKey( spep_7 -3 + 60, 1, 1.28, 1.29 );
setScaleKey( spep_7 -3 + 62, 1, 1.17, 1.17 );
setScaleKey( spep_7 -3 + 64, 1, 1.06, 1.06 );
setScaleKey( spep_7 -3 + 66, 1, 0.94, 0.94 );
setScaleKey( spep_7 -3 + 68, 1, 0.83, 0.83 );
--setScaleKey( spep_7 -3 + 69, 1, 0.43, 0.43 );

setScaleKey( spep_7 +66  + 0, 1, 0.35, 0.35 );
setScaleKey( spep_7 +66  -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_7 +66  -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 +66  -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 +66  -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 +66  -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 +66  -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 +66  -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 +66  -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 +66  -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 +66  -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 +66  -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 +66  -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 +66  + 100, 1, 1.6, 1.6 );

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7 -3 + 25, 1, 0 );
setRotateKey( spep_7 -3 + 26, 1, -53 );
setRotateKey( spep_7 -3 + 39, 1, -53 );
setRotateKey( spep_7 -3 + 40, 1, 58 );
setRotateKey( spep_7 -3 + 43, 1, 58 );
setRotateKey( spep_7 -3 + 44, 1, 58 );
setRotateKey( spep_7 -3 + 68, 1, 58 );

setRotateKey( spep_7 +66  + 0, 1, 105 );
setRotateKey( spep_7 +66  -3 + 4, 1, 240 );
setRotateKey( spep_7 +66  -3 + 6, 1, 405 );
setRotateKey( spep_7 +66  -3 + 8, 1, 600 );
setRotateKey( spep_7 +66  -3 + 10, 1, 825 );
setRotateKey( spep_7 +66  -3 + 12, 1, 1080 );
setRotateKey( spep_7 +66  + 100, 1, 1080 );


-- ** 音 ** --
--敵ヒット1
SE034 = playSe( spep_7 + 44, 1027 );
--敵ヒット2
SE035 = playSe( spep_7 + 44, 1011 );
setSeVolumeByWorkId( spep_7 + 44, SE035, 86 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_7 + 56, 10, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 66;

------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面手前に吹っ飛ぶ(画面割れ)
setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 100, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 100, finish_f, 255 );

finish_b = entryEffectLife( spep_8 + 0, SP_12, 100, 0x80, -1, 0, 0, 0 );  --敵が画面手前に吹っ飛ぶ(ef_012)
setEffMoveKey( spep_8 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.5, 1.5 );
setEffScaleKey( spep_8 + 100, finish_b, 1.5, 1.5 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 100, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 100, finish_b, 255 );


-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_8 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_8 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_8 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_8 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_8 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_8 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_8 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_8 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_8 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_8 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_8 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_8 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_8 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_8 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_8 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_8 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_8 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_8 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_8 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_8 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_8 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_8 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_8 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_8 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_8 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_8 + 14, ctga, 14, 20 );

setEffMoveKey( spep_8 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_8 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_8 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_8 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_8 + 14, ctga, -10.9 );
setEffRotateKey( spep_8 + 15, ctga, -10.9 );
setEffRotateKey( spep_8 + 16, ctga, -14.9 );
setEffRotateKey( spep_8 + 17, ctga, -14.9 );
setEffRotateKey( spep_8 + 18, ctga, -10.9 );
setEffRotateKey( spep_8 + 19, ctga, -10.9 );
setEffRotateKey( spep_8 + 20, ctga, -14.9 );
setEffRotateKey( spep_8 + 21, ctga, -14.9 );
setEffRotateKey( spep_8 + 22, ctga, -10.9 );
setEffRotateKey( spep_8 + 23, ctga, -10.9 );
setEffRotateKey( spep_8 + 24, ctga, -14.9 );
setEffRotateKey( spep_8 + 25, ctga, -14.9 );
setEffRotateKey( spep_8 + 26, ctga, -10.9 );
setEffRotateKey( spep_8 + 27, ctga, -10.9 );
setEffRotateKey( spep_8 + 28, ctga, -14.9 );
setEffRotateKey( spep_8 + 100, ctga, -14.9 );

setEffAlphaKey( spep_8 + 14, ctga, 255 );
setEffAlphaKey( spep_8 + 100, ctga, 255 );

-- ** 音 ** --

--ガッ
playSe( spep_8 + 8, 1054 );
setSeVolume( spep_8 + 8, 1054, 126 );


-- ** ダメージ表示 ** --
dealDamage( spep_8 + 10 );
endPhase( spep_8 + 98 );

end