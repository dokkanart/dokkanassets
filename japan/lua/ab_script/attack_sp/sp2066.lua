--1020600_パーフェクトセル(天使)_パーフェクトショット
--sp_effect_b4_00161

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
SP_01 = 156068;   --セルと敵の対面、敵より手前(ef_001_front)
SP_02 = 156069;   --セルと敵の対面背景   (ef_001_back)
SP_03 = 156070;   --迫るセルの手  (ef_002)
SP_04 = 156071;   --敵を手にとって、投げる、敵寄れて前   (ef_003_front)
SP_05 = 156072;   --敵を手にとって、投げる、セルと背景   (ef_003_back)
SP_06 = 156073;   --カットイン、溜め    (ef_004)
SP_07 = 156074;   --溜めからビーム発射   (ef_005)
SP_08 = 156075;   --被弾する。敵より手前  (ef_006_front)
SP_09 = 156076;   --被弾する。敵より奥   (ef_006_back)
SP_10 = 156077;   --フィニッシュ。敵より手前    (ef_007_front)
SP_11 = 156078;   --フィニッシュ。敵より奥 (ef_007_back)

--敵側

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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
setRotateKey( 6,   1,  0 );]]

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- セルと敵の対面(64F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 64, 0x100, -1, 0, 0, 0 );  --セルと敵の対面、敵より手前(ef_001_front)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 64, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 64, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 64, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 64, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 64, 0x80, -1, 0, 0, 0 );  --セルと敵の対面背景 (ef_001_back)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 64, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 64, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 64, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 64, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 54.7, -45.1, 0 );
setMoveKey( spep_0 + 1, 1, 54.9, -45.1, 0 );
setMoveKey( spep_0 + 2, 1, 55.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 6, 1, 56.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 7, 1, 56.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 8, 1, 57.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 9, 1, 57.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 10, 1, 59.7, -45.1, 0 );
setMoveKey( spep_0 -3 + 12, 1, 62, -45.1, 0 );
setMoveKey( spep_0 -3 + 14, 1, 64.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 16, 1, 67.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 18, 1, 71, -45.1, 0 );
setMoveKey( spep_0 -3 + 20, 1, 74.8, -45.1, 0 );
setMoveKey( spep_0 -3 + 22, 1, 79, -45.1, 0 );
setMoveKey( spep_0 -3 + 24, 1, 83.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 26, 1, 88.7, -45.1, 0 );
setMoveKey( spep_0 -3 + 28, 1, 94.1, -45.1, 0 );
setMoveKey( spep_0 -3 + 30, 1, 99.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 32, 1, 106.1, -45.1, 0 );
setMoveKey( spep_0 -3 + 34, 1, 112.8, -45.1, 0 );
setMoveKey( spep_0 -3 + 36, 1, 119.4, -45.1, 0 );
setMoveKey( spep_0 -3 + 38, 1, 125.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 40, 1, 131.4, -45.1, 0 );
setMoveKey( spep_0 -3 + 42, 1, 136.8, -45.1, 0 );
setMoveKey( spep_0 -3 + 44, 1, 141.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 46, 1, 146.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 48, 1, 150.7, -45.1, 0 );
setMoveKey( spep_0 -3 + 50, 1, 154.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 52, 1, 157.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 54, 1, 160.9, -45.1, 0 );

setScaleKey( spep_0 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 2, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 3, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 4, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 5, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 6, 1, 1.9, 1.9 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 64, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 16, 8 );
setPitch( spep_0 + 16, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 52 ; --エンドフェイズのフレーム数を置き換える
    
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
    setMoveKey( SP_dodge + 0, 1, 160.9, -45.1, 0 );
    setMoveKey( SP_dodge + 2, 1, 163.6, -45.1, 0 );
    setMoveKey( SP_dodge + 4, 1, 165.8, -45.1, 0 );
    setMoveKey( SP_dodge + 6, 1, 167.6, -45.1, 0 );
    setMoveKey( SP_dodge + 8, 1, 169, -45.1, 0 );
    setMoveKey( SP_dodge + 10, 1, 170, -45.1, 0 );

    setScaleKey( SP_dodge + 0, 1, 1.9, 1.9 );
    setScaleKey( SP_dodge + 2, 1, 1.9, 1.9 );
    setScaleKey( SP_dodge + 4, 1, 1.9, 1.9 );
    setScaleKey( SP_dodge + 6, 1, 1.9, 1.9 );
    setScaleKey( SP_dodge + 8, 1, 1.9, 1.9 );
    setScaleKey( SP_dodge + 10, 1, 1.9, 1.9 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 64, 1, 0 );

setMoveKey( spep_0 -3 + 56, 1, 163.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 58, 1, 165.8, -45.1, 0 );
setMoveKey( spep_0 -3 + 60, 1, 167.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 62, 1, 169, -45.1, 0 );
setMoveKey( spep_0 -3 + 64, 1, 170, -45.1, 0 );
setMoveKey( spep_0 -3 + 66, 1, 170.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 67, 1, 170.8, -45.1, 0 );
--setMoveKey( spep_0 -3 + 69, 1, 170.8, -45.1, 0 );

setScaleKey( spep_0 -3 + 67, 1, 1.9, 1.9 );

setRotateKey( spep_0 -3 + 67, 1, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 64;


--------------------------------------
--迫るセルの手(44F)
--------------------------------------

-- ** エフェクト等 ** --
shand = entryEffectLife( spep_1 + 0, SP_03, 46, 0x100, -1, 0, 0, 0 );  --迫るセルの手 (ef_002)
setEffMoveKey( spep_1 + 0, shand, 0, 0 , 0 );
setEffMoveKey( spep_1 + 46, shand, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shand, 1.0, 1.0 );
setEffScaleKey( spep_1 + 46, shand, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shand, 0 );
setEffRotateKey( spep_1 + 46, shand, 0 );
setEffAlphaKey( spep_1 + 0, shand, 255 );
setEffAlphaKey( spep_1 + 46, shand, 255 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵つかむ1
SE002 = playSe( spep_1 + 17, 1116 );
setSeVolumeByWorkId( spep_1 + 17, SE002, 65 );
stopSe( spep_1 +37 + 2, SE002, 14 );

--敵つかむ2
SE003 = playSe( spep_1 + 23, 1004 );
setSeVolumeByWorkId( spep_1 + 23, SE003, 73 );

--敵つかむ3
SE004 = playSe( spep_1 + 41, 1233 );
setSeVolumeByWorkId( spep_1 + 41, SE004, 0 );
setSeVolumeByWorkId( spep_1 + 42, SE004, 25 );
setSeVolumeByWorkId( spep_1 + 43, SE004, 50 );
setSeVolumeByWorkId( spep_1 + 44, SE004, 75 );
setSeVolumeByWorkId( spep_1 + 45, SE004, 100 );
setStartTimeMs( SE004,  133 );

--敵つかむ4
SE005 = playSe( spep_1 + 43, 1012 );
setSeVolumeByWorkId( spep_1 + 43, SE005, 81 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 46;


--------------------------------------
--敵を手にとって、投げる(76F)
--------------------------------------
-- ** エフェクト等 ** --
throw_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --敵を手にとって、投げる、敵寄れて前    (ef_003_front)
setEffMoveKey( spep_2 + 0, throw_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, throw_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, throw_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, throw_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, throw_f, 0 );
setEffRotateKey( spep_2 + 76, throw_f, 0 );
setEffAlphaKey( spep_2 + 0, throw_f, 255 );
setEffAlphaKey( spep_2 + 76, throw_f, 255 );

-- ** エフェクト等 ** --
throw_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --敵を手にとって、投げる、セルと背景 (ef_003_back)
setEffMoveKey( spep_2 + 0, throw_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, throw_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, throw_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, throw_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, throw_b, 0 );
setEffRotateKey( spep_2 + 76, throw_b, 0 );
setEffAlphaKey( spep_2 + 0, throw_b, 255 );
setEffAlphaKey( spep_2 + 76, throw_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 76, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );
changeAnime( spep_2 -3 + 52, 1, 105 );

a2=120;
b2=90;

setMoveKey( spep_2 + 0, 1, 530.7 -a2, -74.5 +b2, 0 );
setMoveKey( spep_2 + 1, 1, 530.4 -a2, -73.9 +b2, 0 );
setMoveKey( spep_2 + 2, 1, 530.1 -a2, -73.1 +b2, 0 );
setMoveKey( spep_2 -3 + 6, 1, 529.9 -a2, -72 +b2, 0 );
setMoveKey( spep_2 -3 + 7, 1, 529.9 -a2, -72 +b2, 0 );
setMoveKey( spep_2 -3 + 8, 1, 529.6 -a2, -70.8 +b2, 0 );
setMoveKey( spep_2 -3 + 9, 1, 529.6 -a2, -70.8 +b2, 0 );
setMoveKey( spep_2 -3 + 10, 1, 529.4 -a2, -69.5 +b2, 0 );
setMoveKey( spep_2 -3 + 12, 1, 529.2 -a2, -68 +b2, 0 );
setMoveKey( spep_2 -3 + 14, 1, 529 -a2, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 16, 1, 528.8 -a2, -65 +b2, 0 );
setMoveKey( spep_2 -3 + 18, 1, 528.7 -a2, -63.5 +b2, 0 );
setMoveKey( spep_2 -3 + 20, 1, 528.5 -a2, -62 +b2, 0 );
setMoveKey( spep_2 -3 + 22, 1, 528.4 -a2, -60.6 +b2, 0 );
setMoveKey( spep_2 -3 + 24, 1, 528.3 -a2, -59.4 +b2, 0 );
setMoveKey( spep_2 -3 + 26, 1, 528.2 -a2, -58.2 +b2, 0 );
setMoveKey( spep_2 -3 + 28, 1, 528.2 -a2, -57.3 +b2, 0 );
setMoveKey( spep_2 -3 + 30, 1, 528.1 -a2, -56.6 +b2, 0 );
setMoveKey( spep_2 -3 + 32, 1, 528.1 -a2, -56.1 +b2, 0 );
setMoveKey( spep_2 -3 + 34, 1, 528.1 -a2, -56 +b2, 0 );
setMoveKey( spep_2 -3 + 36, 1, 502.1 -a2, -91.3 +b2, 0 );
setMoveKey( spep_2 -3 + 38, 1, 483.4 -a2, -108.9 +b2, 0 );
setMoveKey( spep_2 -3 + 40, 1, 468.4 -a2, -108.9 +b2, 0 );
setMoveKey( spep_2 -3 + 41, 1, 468.4 -a2, -108.9 +b2, 0 );
setMoveKey( spep_2 -3 + 42, 1, 55 -a2, -370.4 +b2, 0 );
setMoveKey( spep_2 -3 + 43, 1, 55 -a2, -370.4 +b2, 0 );

setMoveKey( spep_2 -3 + 44, 1, -352.8, -240.9, 0 );
setMoveKey( spep_2 -3 + 46, 1, -218.1, -240.9, 0 );
setMoveKey( spep_2 -3 + 48, 1, -64.1, -241, 0 );
setMoveKey( spep_2 -3 + 50, 1, -419.4, -241.4, 0 );
setMoveKey( spep_2 -3 + 51, 1, -419.4, -241.4, 0 );
setMoveKey( spep_2 -3 + 52, 1, 131.3, -179.2, 0 );
setMoveKey( spep_2 -3 + 54, 1, 107.7, -139, 0 );
setMoveKey( spep_2 -3 + 56, 1, 82.4, -99.5, 0 );
setMoveKey( spep_2 -3 + 58, 1, 61.8, -61.1, 0 );
setMoveKey( spep_2 -3 + 60, 1, 40.2, -24.4, 0 );
setMoveKey( spep_2 -3 + 62, 1, 20, 11.9, 0 );
setMoveKey( spep_2 -3 + 64, 1, 2.7, 42.3, 0 );
setMoveKey( spep_2 -3 + 66, 1, -15.4, 70.2, 0 );
setMoveKey( spep_2 -3 + 68, 1, -30, 95, 0 );
setMoveKey( spep_2 -3 + 70, 1, -42.2, 115.8, 0 );
setMoveKey( spep_2 -3 + 72, 1, -52, 132.3, 0 );
setMoveKey( spep_2 -3 + 74, 1, -59, 144.3, 0 );
setMoveKey( spep_2 -3 + 76, 1, -63.3, 151.5, 0 );
setMoveKey( spep_2 -3 + 78, 1, -64.7, 154, 0 );
setMoveKey( spep_2 -3 + 79, 1, -64.7, 154, 0 );

a=0.4;

setScaleKey( spep_2 + 0, 1, 5.9 +a, 5.9 +a );
setScaleKey( spep_2 -3 + 51, 1, 5.9 +a, 5.9 +a );
setScaleKey( spep_2 -3 + 52, 1, 2.89 +a, 2.89 +a );
setScaleKey( spep_2 -3 + 54, 1, 2.64 +a, 2.64 +a );
setScaleKey( spep_2 -3 + 56, 1, 2.39 +a, 2.39 +a );
setScaleKey( spep_2 -3 + 58, 1, 2.15 +a, 2.15 +a );
setScaleKey( spep_2 -3 + 60, 1, 1.91 +a, 1.91 +a );
setScaleKey( spep_2 -3 + 62, 1, 1.7 +a, 1.7 +a );
setScaleKey( spep_2 -3 + 64, 1, 1.5 +a, 1.5 +a );
setScaleKey( spep_2 -3 + 66, 1, 1.32 +a, 1.32 +a );
setScaleKey( spep_2 -3 + 68, 1, 1.16 +a, 1.16 +a );
setScaleKey( spep_2 -3 + 70, 1, 1.03 +a, 1.03 +a );
setScaleKey( spep_2 -3 + 72, 1, 0.93 +a, 0.93 +a );
setScaleKey( spep_2 -3 + 74, 1, 0.85 +a, 0.85 +a );
setScaleKey( spep_2 -3 + 76, 1, 0.81 +a, 0.81 +a );
setScaleKey( spep_2 -3 + 78, 1, 0.79 +a, 0.79 +a );
setScaleKey( spep_2 -3 + 79, 1, 0.79 +a, 0.79 +a );

setRotateKey( spep_2 + 0, 1, 40 );
setRotateKey( spep_2 -3 + 35, 1, 40 );
setRotateKey( spep_2 -3 + 36, 1, 38 );
setRotateKey( spep_2 -3 + 38, 1, 36 );
setRotateKey( spep_2 -3 + 40, 1, 33 );
setRotateKey( spep_2 -3 + 49, 1, 33 );
setRotateKey( spep_2 -3 + 50, 1, 5 );
setRotateKey( spep_2 -3 + 51, 1, 5 );
setRotateKey( spep_2 -3 + 52, 1, -75.5 );
setRotateKey( spep_2 -3 + 79, 1, -75.5 );


-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --

--敵ぶんなげる1
SE006 = playSe( spep_2 + 42, 1117 );
setSeVolumeByWorkId( spep_2 + 42, SE006, 71 );
stopSe( spep_2 +68, SE006, 26 );

--敵ぶんなげる2
SE007 = playSe( spep_2 + 42, 1027 );

--敵ぶんなげる3
SE008 = playSe( spep_2 + 42, 1183 );
stopSe( spep_2 +71 + 17, SE008, 28 );

--敵ぶんなげる4
SE009 = playSe( spep_2 + 42, 1121 );
setSeVolumeByWorkId( spep_2 + 42, SE009, 58 );
stopSe( spep_2 +76 + 12, SE009, 28 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


--------------------------------------
--カットイン、溜め  (96F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_06, 96, 0x100, -1, 0, 0, 0 );  --カットイン、溜め(ef_004)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 96, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 96, tame, 255 );

spep_x = spep_3 + 8;
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

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め1
SE010 = playSe( spep_3 + 14, 1262 );
setSeVolumeByWorkId( spep_3 + 14, SE010, 126 );

--気弾溜め2
SE011 = playSe( spep_3 + 14, 1144 );
setSeVolumeByWorkId( spep_3 + 14, SE011, 43 );
setTimeStretch( SE011, 0.67, 10, 1 );

--顔カットイン
SE012 = playSe( spep_3 + 18, 1018 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 溜めからビーム発射(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffectLife( spep_5 + 0, SP_07, 56, 0x100, -1, 0, 0, 0 );  --溜めからビーム発射(ef_005)
setEffMoveKey( spep_5 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, beam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 56, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 56, beam, 255 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾発射1
SE014 = playSe( spep_5 + 15, 1027 );
setSeVolumeByWorkId( spep_5 + 15, SE014, 66 );

--気弾発射2
SE015 = playSe( spep_5 + 15, 1021 );
setSeVolumeByWorkId( spep_5 + 15, SE015, 68 );

--気弾発射3
SE016 = playSe( spep_5 + 15, 1177 );
--stopSe( spep_5 +56 +36 + 4, SE016, 22 );
stopSe( spep_5 +56 +25, SE016, 22 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 被弾する(36F)
------------------------------------------------------
-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_6 + 0, SP_08, 36, 0x100, -1, 0, 0, 0 );  --被弾する。敵より手前(ef_006_front)
setEffMoveKey( spep_6 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 36, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 36, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_f, 0 );
setEffRotateKey( spep_6 + 36, hidan_f, 0 );
setEffAlphaKey( spep_6 + 0, hidan_f, 255 );
setEffAlphaKey( spep_6 + 36, hidan_f, 255 );

-- ** エフェクト等 ** --
hidan_b = entryEffectLife( spep_6 + 0, SP_09, 36, 0x80, -1, 0, 0, 0 );  --被弾する。敵より奥(ef_006_back)
setEffMoveKey( spep_6 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 36, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 36, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_b, 0 );
setEffRotateKey( spep_6 + 36, hidan_b, 0 );
setEffAlphaKey( spep_6 + 0, hidan_b, 255 );
setEffAlphaKey( spep_6 + 36, hidan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 36, 1, 0 );
changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, -9, 38.7 , 0 );
setMoveKey( spep_6 + 1, 1, -15.8, 46.6 , 0 );
setMoveKey( spep_6 + 2, 1, -22.7, 54.6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -29.5, 62.5 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -36.4, 70.4 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -43.2, 78.3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -50.1, 86.3 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -56.9, 94.2 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -63.8, 102.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -70.6, 110.1 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -77.5, 118 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -84.3, 125.9 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -91.2, 133.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -98, 141.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -104.9, 149.7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -111.7, 157.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -118.5, 165.5 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -120.9, 170.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -123.2, 176 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -125.6, 181.2 , 0 );
setMoveKey( spep_6 -3 + 39, 1, -125.6, 181.2 , 0 );

setScaleKey( spep_6 + 0, 1, 1.845, 1.845 );
setScaleKey( spep_6 + 1, 1, 1.785, 1.785 );
setScaleKey( spep_6 + 2, 1, 1.725, 1.725 );
setScaleKey( spep_6 -3 + 6, 1, 1.68, 1.68 );
setScaleKey( spep_6 -3 + 8, 1, 1.62, 1.62 );
setScaleKey( spep_6 -3 + 10, 1, 1.56, 1.56 );
setScaleKey( spep_6 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 14, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 16, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 18, 1, 1.335, 1.335 );
setScaleKey( spep_6 -3 + 20, 1, 1.275, 1.275 );
setScaleKey( spep_6 -3 + 22, 1, 1.215, 1.215 );
setScaleKey( spep_6 -3 + 24, 1, 1.155, 1.155 );
setScaleKey( spep_6 -3 + 26, 1, 1.095, 1.095 );
setScaleKey( spep_6 -3 + 28, 1, 1.035, 1.035 );
setScaleKey( spep_6 -3 + 30, 1, 0.99, 0.99 );
setScaleKey( spep_6 -3 + 32, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 36, 1, 0.69, 0.69 );
setScaleKey( spep_6 -3 + 38, 1, 0.57, 0.57 );
setScaleKey( spep_6 -3 + 39, 1, 0.57, 0.57 );

setRotateKey( spep_6 + 0, 1, -75.5 );
setRotateKey( spep_6 -3 + 39, 1, -75.5 );


-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 36, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--追い気弾
SE017 = playSe( spep_6 + 2, 1021 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 36;


------------------------------------------------------
-- ギャン(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_7 + 0, 190002, 56, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_7 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, gyan, 255 );
setEffAlphaKey( spep_7 + 56, gyan, 255 );
setEffRotateKey( spep_7 + 0, gyan, 0 );
setEffRotateKey( spep_7 + 56, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_7 + 0,  10006, 56, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_7 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_7 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_7 + 56, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_7 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_7 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_7 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_7 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_7 + 56, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_7 + 0, ctgyan, 0 );
setEffRotateKey( spep_7 + 56, ctgyan, 0 );

setEffAlphaKey( spep_7 + 0, ctgyan, 255 );
setEffAlphaKey( spep_7 + 56, ctgyan, 255 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ギャン
SE018 = playSe( spep_7 + 0, 1023 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 56;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 100, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 100, finish_f, 255 );

finish_b = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_8 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 100, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 100, 1, 0 );
changeAnime( spep_8 + 0, 1, 107 );

setMoveKey( spep_8 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_8 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_8 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_8 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_8 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_8 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_8 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_8 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_8 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_8 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_8 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_8 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_8 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_8 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_8 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_8 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_8 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_8 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_8 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_8 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_8 + 0, 1, 105 );
setRotateKey( spep_8 -3 + 4, 1, 240 );
setRotateKey( spep_8 -3 + 6, 1, 405 );
setRotateKey( spep_8 -3 + 8, 1, 600 );
setRotateKey( spep_8 -3 + 10, 1, 825 );
setRotateKey( spep_8 -3 + 12, 1, 1080 );
setRotateKey( spep_8 + 100, 1, 1080 );


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
--爆発
playSe( spep_8 + 0, 1025 );
--ガッ
playSe( spep_8 + 8, 1054 );

-- ** 背景 ** --
entryFadeBg( spep_8 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 10 );
endPhase( spep_8 + 98 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- セルと敵の対面(64F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 64, 0x100, -1, 0, 0, 0 );  --セルと敵の対面、敵より手前(ef_001_front)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 64, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 64, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 64, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 64, first_f, 255 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 64, 0x80, -1, 0, 0, 0 );  --セルと敵の対面背景 (ef_001_back)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 64, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 64, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 64, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 64, first_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_0 + 0, 1, 1 );
changeAnime( spep_0 + 0, 1, 0 );

setMoveKey( spep_0 + 0, 1, 54.7, -45.1, 0 );
setMoveKey( spep_0 + 1, 1, 54.9, -45.1, 0 );
setMoveKey( spep_0 + 2, 1, 55.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 6, 1, 56.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 7, 1, 56.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 8, 1, 57.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 9, 1, 57.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 10, 1, 59.7, -45.1, 0 );
setMoveKey( spep_0 -3 + 12, 1, 62, -45.1, 0 );
setMoveKey( spep_0 -3 + 14, 1, 64.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 16, 1, 67.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 18, 1, 71, -45.1, 0 );
setMoveKey( spep_0 -3 + 20, 1, 74.8, -45.1, 0 );
setMoveKey( spep_0 -3 + 22, 1, 79, -45.1, 0 );
setMoveKey( spep_0 -3 + 24, 1, 83.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 26, 1, 88.7, -45.1, 0 );
setMoveKey( spep_0 -3 + 28, 1, 94.1, -45.1, 0 );
setMoveKey( spep_0 -3 + 30, 1, 99.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 32, 1, 106.1, -45.1, 0 );
setMoveKey( spep_0 -3 + 34, 1, 112.8, -45.1, 0 );
setMoveKey( spep_0 -3 + 36, 1, 119.4, -45.1, 0 );
setMoveKey( spep_0 -3 + 38, 1, 125.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 40, 1, 131.4, -45.1, 0 );
setMoveKey( spep_0 -3 + 42, 1, 136.8, -45.1, 0 );
setMoveKey( spep_0 -3 + 44, 1, 141.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 46, 1, 146.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 48, 1, 150.7, -45.1, 0 );
setMoveKey( spep_0 -3 + 50, 1, 154.5, -45.1, 0 );
setMoveKey( spep_0 -3 + 52, 1, 157.9, -45.1, 0 );
setMoveKey( spep_0 -3 + 54, 1, 160.9, -45.1, 0 );

setScaleKey( spep_0 + 0, 1, -1.9, 1.9 );
setScaleKey( spep_0 + 1, 1, -1.9, 1.9 );
setScaleKey( spep_0 + 2, 1, -1.9, 1.9 );
setScaleKey( spep_0 + 3, 1, -1.9, 1.9 );
setScaleKey( spep_0 + 4, 1, -1.9, 1.9 );
setScaleKey( spep_0 + 5, 1, -1.9, 1.9 );
setScaleKey( spep_0 + 6, 1, -1.9, 1.9 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 64, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 16, 8 );
setPitch( spep_0 + 16, SE001, -300 );
setTimeStretch( SE001, 0.8, 10, 1 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 52 ; --エンドフェイズのフレーム数を置き換える
    
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
    setMoveKey( SP_dodge + 0, 1, 160.9, -45.1, 0 );
    setMoveKey( SP_dodge + 2, 1, 163.6, -45.1, 0 );
    setMoveKey( SP_dodge + 4, 1, 165.8, -45.1, 0 );
    setMoveKey( SP_dodge + 6, 1, 167.6, -45.1, 0 );
    setMoveKey( SP_dodge + 8, 1, 169, -45.1, 0 );
    setMoveKey( SP_dodge + 10, 1, 170, -45.1, 0 );

    setScaleKey( SP_dodge + 0, 1, -1.9, 1.9 );
    setScaleKey( SP_dodge + 2, 1, -1.9, 1.9 );
    setScaleKey( SP_dodge + 4, 1, -1.9, 1.9 );
    setScaleKey( SP_dodge + 6, 1, -1.9, 1.9 );
    setScaleKey( SP_dodge + 8, 1, -1.9, 1.9 );
    setScaleKey( SP_dodge + 10, 1, -1.9, 1.9 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 2, 1, 0 );
    setRotateKey( SP_dodge + 4, 1, 0 );
    setRotateKey( SP_dodge + 6, 1, 0 );
    setRotateKey( SP_dodge + 8, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
    
    --キャラクターの固定
    changeAnime( spep_0 + 0, 1, 0 );

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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 64, 1, 0 );

setMoveKey( spep_0 -3 + 56, 1, 163.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 58, 1, 165.8, -45.1, 0 );
setMoveKey( spep_0 -3 + 60, 1, 167.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 62, 1, 169, -45.1, 0 );
setMoveKey( spep_0 -3 + 64, 1, 170, -45.1, 0 );
setMoveKey( spep_0 -3 + 66, 1, 170.6, -45.1, 0 );
setMoveKey( spep_0 -3 + 67, 1, 170.8, -45.1, 0 );
--setMoveKey( spep_0 -3 + 69, 1, 170.8, -45.1, 0 );

setScaleKey( spep_0 -3 + 67, 1, -1.9, 1.9 );

setRotateKey( spep_0 -3 + 67, 1, 0 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 64;


--------------------------------------
--迫るセルの手(44F)
--------------------------------------

-- ** エフェクト等 ** --
shand = entryEffectLife( spep_1 + 0, SP_03, 46, 0x100, -1, 0, 0, 0 );  --迫るセルの手 (ef_002)
setEffMoveKey( spep_1 + 0, shand, 0, 0 , 0 );
setEffMoveKey( spep_1 + 46, shand, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shand, 1.0, 1.0 );
setEffScaleKey( spep_1 + 46, shand, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, shand, 0 );
setEffRotateKey( spep_1 + 46, shand, 0 );
setEffAlphaKey( spep_1 + 0, shand, 255 );
setEffAlphaKey( spep_1 + 46, shand, 255 );

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 46, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--敵つかむ1
SE002 = playSe( spep_1 + 17, 1116 );
setSeVolumeByWorkId( spep_1 + 17, SE002, 65 );
stopSe( spep_1 +37 + 2, SE002, 14 );

--敵つかむ2
SE003 = playSe( spep_1 + 23, 1004 );
setSeVolumeByWorkId( spep_1 + 23, SE003, 73 );

--敵つかむ3
SE004 = playSe( spep_1 + 41, 1233 );
setSeVolumeByWorkId( spep_1 + 41, SE004, 0 );
setSeVolumeByWorkId( spep_1 + 42, SE004, 25 );
setSeVolumeByWorkId( spep_1 + 43, SE004, 50 );
setSeVolumeByWorkId( spep_1 + 44, SE004, 75 );
setSeVolumeByWorkId( spep_1 + 45, SE004, 100 );
setStartTimeMs( SE004,  133 );

--敵つかむ4
SE005 = playSe( spep_1 + 43, 1012 );
setSeVolumeByWorkId( spep_1 + 43, SE005, 81 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 46;


--------------------------------------
--敵を手にとって、投げる(76F)
--------------------------------------
-- ** エフェクト等 ** --
throw_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --敵を手にとって、投げる、敵寄れて前    (ef_003_front)
setEffMoveKey( spep_2 + 0, throw_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, throw_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, throw_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, throw_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, throw_f, 0 );
setEffRotateKey( spep_2 + 76, throw_f, 0 );
setEffAlphaKey( spep_2 + 0, throw_f, 255 );
setEffAlphaKey( spep_2 + 76, throw_f, 255 );

-- ** エフェクト等 ** --
throw_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );  --敵を手にとって、投げる、セルと背景 (ef_003_back)
setEffMoveKey( spep_2 + 0, throw_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 76, throw_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, throw_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, throw_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, throw_b, 0 );
setEffRotateKey( spep_2 + 76, throw_b, 0 );
setEffAlphaKey( spep_2 + 0, throw_b, 255 );
setEffAlphaKey( spep_2 + 76, throw_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 76, 1, 0 );
changeAnime( spep_2 + 0, 1, 6 );
changeAnime( spep_2 -3 + 52, 1, 105 );

a2=120;
b2=90;

setMoveKey( spep_2 + 0, 1, 530.7 -a2, -74.5 +b2, 0 );
setMoveKey( spep_2 + 1, 1, 530.4 -a2, -73.9 +b2, 0 );
setMoveKey( spep_2 + 2, 1, 530.1 -a2, -73.1 +b2, 0 );
setMoveKey( spep_2 -3 + 6, 1, 529.9 -a2, -72 +b2, 0 );
setMoveKey( spep_2 -3 + 7, 1, 529.9 -a2, -72 +b2, 0 );
setMoveKey( spep_2 -3 + 8, 1, 529.6 -a2, -70.8 +b2, 0 );
setMoveKey( spep_2 -3 + 9, 1, 529.6 -a2, -70.8 +b2, 0 );
setMoveKey( spep_2 -3 + 10, 1, 529.4 -a2, -69.5 +b2, 0 );
setMoveKey( spep_2 -3 + 12, 1, 529.2 -a2, -68 +b2, 0 );
setMoveKey( spep_2 -3 + 14, 1, 529 -a2, -66.5 +b2, 0 );
setMoveKey( spep_2 -3 + 16, 1, 528.8 -a2, -65 +b2, 0 );
setMoveKey( spep_2 -3 + 18, 1, 528.7 -a2, -63.5 +b2, 0 );
setMoveKey( spep_2 -3 + 20, 1, 528.5 -a2, -62 +b2, 0 );
setMoveKey( spep_2 -3 + 22, 1, 528.4 -a2, -60.6 +b2, 0 );
setMoveKey( spep_2 -3 + 24, 1, 528.3 -a2, -59.4 +b2, 0 );
setMoveKey( spep_2 -3 + 26, 1, 528.2 -a2, -58.2 +b2, 0 );
setMoveKey( spep_2 -3 + 28, 1, 528.2 -a2, -57.3 +b2, 0 );
setMoveKey( spep_2 -3 + 30, 1, 528.1 -a2, -56.6 +b2, 0 );
setMoveKey( spep_2 -3 + 32, 1, 528.1 -a2, -56.1 +b2, 0 );
setMoveKey( spep_2 -3 + 34, 1, 528.1 -a2, -56 +b2, 0 );
setMoveKey( spep_2 -3 + 36, 1, 502.1 -a2, -91.3 +b2, 0 );
setMoveKey( spep_2 -3 + 38, 1, 483.4 -a2, -108.9 +b2, 0 );
setMoveKey( spep_2 -3 + 40, 1, 468.4 -a2, -108.9 +b2, 0 );
setMoveKey( spep_2 -3 + 41, 1, 468.4 -a2, -108.9 +b2, 0 );
setMoveKey( spep_2 -3 + 42, 1, 55 -a2, -370.4 +b2, 0 );
setMoveKey( spep_2 -3 + 43, 1, 55 -a2, -370.4 +b2, 0 );

setMoveKey( spep_2 -3 + 44, 1, -352.8, -240.9, 0 );
setMoveKey( spep_2 -3 + 46, 1, -218.1, -240.9, 0 );
setMoveKey( spep_2 -3 + 48, 1, -64.1, -241, 0 );
setMoveKey( spep_2 -3 + 50, 1, -419.4, -241.4, 0 );
setMoveKey( spep_2 -3 + 51, 1, -419.4, -241.4, 0 );
setMoveKey( spep_2 -3 + 52, 1, 131.3, -179.2, 0 );
setMoveKey( spep_2 -3 + 54, 1, 107.7, -139, 0 );
setMoveKey( spep_2 -3 + 56, 1, 82.4, -99.5, 0 );
setMoveKey( spep_2 -3 + 58, 1, 61.8, -61.1, 0 );
setMoveKey( spep_2 -3 + 60, 1, 40.2, -24.4, 0 );
setMoveKey( spep_2 -3 + 62, 1, 20, 11.9, 0 );
setMoveKey( spep_2 -3 + 64, 1, 2.7, 42.3, 0 );
setMoveKey( spep_2 -3 + 66, 1, -15.4, 70.2, 0 );
setMoveKey( spep_2 -3 + 68, 1, -30, 95, 0 );
setMoveKey( spep_2 -3 + 70, 1, -42.2, 115.8, 0 );
setMoveKey( spep_2 -3 + 72, 1, -52, 132.3, 0 );
setMoveKey( spep_2 -3 + 74, 1, -59, 144.3, 0 );
setMoveKey( spep_2 -3 + 76, 1, -63.3, 151.5, 0 );
setMoveKey( spep_2 -3 + 78, 1, -64.7, 154, 0 );
setMoveKey( spep_2 -3 + 79, 1, -64.7, 154, 0 );

a=0.4;

setScaleKey( spep_2 + 0, 1, 5.9 +a, 5.9 +a );
setScaleKey( spep_2 -3 + 51, 1, 5.9 +a, 5.9 +a );
setScaleKey( spep_2 -3 + 52, 1, 2.89 +a, 2.89 +a );
setScaleKey( spep_2 -3 + 54, 1, 2.64 +a, 2.64 +a );
setScaleKey( spep_2 -3 + 56, 1, 2.39 +a, 2.39 +a );
setScaleKey( spep_2 -3 + 58, 1, 2.15 +a, 2.15 +a );
setScaleKey( spep_2 -3 + 60, 1, 1.91 +a, 1.91 +a );
setScaleKey( spep_2 -3 + 62, 1, 1.7 +a, 1.7 +a );
setScaleKey( spep_2 -3 + 64, 1, 1.5 +a, 1.5 +a );
setScaleKey( spep_2 -3 + 66, 1, 1.32 +a, 1.32 +a );
setScaleKey( spep_2 -3 + 68, 1, 1.16 +a, 1.16 +a );
setScaleKey( spep_2 -3 + 70, 1, 1.03 +a, 1.03 +a );
setScaleKey( spep_2 -3 + 72, 1, 0.93 +a, 0.93 +a );
setScaleKey( spep_2 -3 + 74, 1, 0.85 +a, 0.85 +a );
setScaleKey( spep_2 -3 + 76, 1, 0.81 +a, 0.81 +a );
setScaleKey( spep_2 -3 + 78, 1, 0.79 +a, 0.79 +a );
setScaleKey( spep_2 -3 + 79, 1, 0.79 +a, 0.79 +a );

setRotateKey( spep_2 + 0, 1, 40 );
setRotateKey( spep_2 -3 + 35, 1, 40 );
setRotateKey( spep_2 -3 + 36, 1, 38 );
setRotateKey( spep_2 -3 + 38, 1, 36 );
setRotateKey( spep_2 -3 + 40, 1, 33 );
setRotateKey( spep_2 -3 + 49, 1, 33 );
setRotateKey( spep_2 -3 + 50, 1, 5 );
setRotateKey( spep_2 -3 + 51, 1, 5 );
setRotateKey( spep_2 -3 + 52, 1, -75.5 );
setRotateKey( spep_2 -3 + 79, 1, -75.5 );


-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 76, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --

--敵ぶんなげる1
SE006 = playSe( spep_2 + 42, 1117 );
setSeVolumeByWorkId( spep_2 + 42, SE006, 71 );
stopSe( spep_2 +68, SE006, 26 );

--敵ぶんなげる2
SE007 = playSe( spep_2 + 42, 1027 );

--敵ぶんなげる3
SE008 = playSe( spep_2 + 42, 1183 );
stopSe( spep_2 +71 + 17, SE008, 28 );

--敵ぶんなげる4
SE009 = playSe( spep_2 + 42, 1121 );
setSeVolumeByWorkId( spep_2 + 42, SE009, 58 );
stopSe( spep_2 +76 + 12, SE009, 28 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 76;


--------------------------------------
--カットイン、溜め  (96F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_3 + 0, SP_06, 96, 0x100, -1, 0, 0, 0 );  --カットイン、溜め(ef_004)
setEffMoveKey( spep_3 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_3 + 96, tame, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_3 + 96, tame, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, tame, 0 );
setEffRotateKey( spep_3 + 96, tame, 0 );
setEffAlphaKey( spep_3 + 0, tame, 255 );
setEffAlphaKey( spep_3 + 96, tame, 255 );

spep_x = spep_3 + 8;
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

-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾溜め1
SE010 = playSe( spep_3 + 14, 1262 );
setSeVolumeByWorkId( spep_3 + 14, SE010, 126 );

--気弾溜め2
SE011 = playSe( spep_3 + 14, 1144 );
setSeVolumeByWorkId( spep_3 + 14, SE011, 43 );
setTimeStretch( SE011, 0.67, 10, 1 );

--顔カットイン
SE012 = playSe( spep_3 + 18, 1018 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 96;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );

setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 次の準備 ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;


------------------------------------------------------
-- 溜めからビーム発射(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffectLife( spep_5 + 0, SP_07, 56, 0x100, -1, 0, 0, 0 );  --溜めからビーム発射(ef_005)
setEffMoveKey( spep_5 + 0, beam, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, beam, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 56, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 56, beam, 255 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--気弾発射1
SE014 = playSe( spep_5 + 15, 1027 );
setSeVolumeByWorkId( spep_5 + 15, SE014, 66 );

--気弾発射2
SE015 = playSe( spep_5 + 15, 1021 );
setSeVolumeByWorkId( spep_5 + 15, SE015, 68 );

--気弾発射3
SE016 = playSe( spep_5 + 15, 1177 );
--stopSe( spep_5 +56 +36 + 4, SE016, 22 );
stopSe( spep_5 +56 +25, SE016, 22 );

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


------------------------------------------------------
-- 被弾する(36F)
------------------------------------------------------
-- ** エフェクト等 ** --
hidan_f = entryEffectLife( spep_6 + 0, SP_08, 36, 0x100, -1, 0, 0, 0 );  --被弾する。敵より手前(ef_006_front)
setEffMoveKey( spep_6 + 0, hidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 36, hidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 36, hidan_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_f, 0 );
setEffRotateKey( spep_6 + 36, hidan_f, 0 );
setEffAlphaKey( spep_6 + 0, hidan_f, 255 );
setEffAlphaKey( spep_6 + 36, hidan_f, 255 );

-- ** エフェクト等 ** --
hidan_b = entryEffectLife( spep_6 + 0, SP_09, 36, 0x80, -1, 0, 0, 0 );  --被弾する。敵より奥(ef_006_back)
setEffMoveKey( spep_6 + 0, hidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 36, hidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, hidan_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 36, hidan_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hidan_b, 0 );
setEffRotateKey( spep_6 + 36, hidan_b, 0 );
setEffAlphaKey( spep_6 + 0, hidan_b, 255 );
setEffAlphaKey( spep_6 + 36, hidan_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 36, 1, 0 );
changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, -9, 38.7 , 0 );
setMoveKey( spep_6 + 1, 1, -15.8, 46.6 , 0 );
setMoveKey( spep_6 + 2, 1, -22.7, 54.6 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -29.5, 62.5 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -36.4, 70.4 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -43.2, 78.3 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -50.1, 86.3 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -56.9, 94.2 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -63.8, 102.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -70.6, 110.1 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -77.5, 118 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -84.3, 125.9 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -91.2, 133.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -98, 141.8 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -104.9, 149.7 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -111.7, 157.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -118.5, 165.5 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -120.9, 170.7 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -123.2, 176 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -125.6, 181.2 , 0 );
setMoveKey( spep_6 -3 + 39, 1, -125.6, 181.2 , 0 );

setScaleKey( spep_6 + 0, 1, 1.845, 1.845 );
setScaleKey( spep_6 + 1, 1, 1.785, 1.785 );
setScaleKey( spep_6 + 2, 1, 1.725, 1.725 );
setScaleKey( spep_6 -3 + 6, 1, 1.68, 1.68 );
setScaleKey( spep_6 -3 + 8, 1, 1.62, 1.62 );
setScaleKey( spep_6 -3 + 10, 1, 1.56, 1.56 );
setScaleKey( spep_6 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_6 -3 + 14, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 16, 1, 1.38, 1.38 );
setScaleKey( spep_6 -3 + 18, 1, 1.335, 1.335 );
setScaleKey( spep_6 -3 + 20, 1, 1.275, 1.275 );
setScaleKey( spep_6 -3 + 22, 1, 1.215, 1.215 );
setScaleKey( spep_6 -3 + 24, 1, 1.155, 1.155 );
setScaleKey( spep_6 -3 + 26, 1, 1.095, 1.095 );
setScaleKey( spep_6 -3 + 28, 1, 1.035, 1.035 );
setScaleKey( spep_6 -3 + 30, 1, 0.99, 0.99 );
setScaleKey( spep_6 -3 + 32, 1, 0.93, 0.93 );
setScaleKey( spep_6 -3 + 34, 1, 0.81, 0.81 );
setScaleKey( spep_6 -3 + 36, 1, 0.69, 0.69 );
setScaleKey( spep_6 -3 + 38, 1, 0.57, 0.57 );
setScaleKey( spep_6 -3 + 39, 1, 0.57, 0.57 );

setRotateKey( spep_6 + 0, 1, -75.5 );
setRotateKey( spep_6 -3 + 39, 1, -75.5 );


-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 36, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--追い気弾
SE017 = playSe( spep_6 + 2, 1021 );

-- ** 次の準備 ** --
spep_7 = spep_6 + 36;


------------------------------------------------------
-- ギャン(56F)
------------------------------------------------------
-- ** エフェクト等 ** --
gyan = entryEffectLife( spep_7 + 0, 190002, 56, 0x100, -1, 0, 0, 0 ); --ギャン(ef_005)
setEffMoveKey( spep_7 + 0, gyan, 0, 0 , 0 );
setEffMoveKey( spep_7 + 56, gyan, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, gyan, 1.0, 1.0 );
setEffScaleKey( spep_7 + 56, gyan, 1.0, 1.0 );
setEffAlphaKey( spep_7 + 0, gyan, 255 );
setEffAlphaKey( spep_7 + 56, gyan, 255 );
setEffRotateKey( spep_7 + 0, gyan, 0 );
setEffRotateKey( spep_7 + 56, gyan, 0 );

-- 書き文字エントリー --
ctgyan = entryEffectLife( spep_7 + 0,  10006, 56, 0x100, -1, 0, 15.1, 298.8 ); --ギャン
--setEffMoveKey( spep_7 + 0, ctgyan, 12.6, 286.8 , 0 );
setEffMoveKey( spep_7 + 0, ctgyan, 15.1, 298.8 , 0 );
setEffMoveKey( spep_7 + 56, ctgyan, 15.1, 298.8 , 0 );

setEffScaleKey( spep_7 + 0, ctgyan, 2.5, 2.5 );
setEffScaleKey( spep_7 + 2, ctgyan, 2.8, 2.8 );
setEffScaleKey( spep_7 + 4, ctgyan, 3.2, 3.2 );
setEffScaleKey( spep_7 + 6, ctgyan, 3.5, 3.5 );
setEffScaleKey( spep_7 + 56, ctgyan, 4.0, 4.0 );

setEffRotateKey( spep_7 + 0, ctgyan, 0 );
setEffRotateKey( spep_7 + 56, ctgyan, 0 );

setEffAlphaKey( spep_7 + 0, ctgyan, 255 );
setEffAlphaKey( spep_7 + 56, ctgyan, 255 );

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--ギャン
SE018 = playSe( spep_7 + 0, 1023 );

-- ** 次の準備 ** --
spep_8 = spep_7 + 56;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_8 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_8 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_f, 0 );
setEffRotateKey( spep_8 + 100, finish_f, 0 );
setEffAlphaKey( spep_8 + 0, finish_f, 255 );
setEffAlphaKey( spep_8 + 100, finish_f, 255 );

finish_b = entryEffect( spep_8 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_8 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish_b, 0 );
setEffRotateKey( spep_8 + 100, finish_b, 0 );
setEffAlphaKey( spep_8 + 0, finish_b, 255 );
setEffAlphaKey( spep_8 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
setDisp( spep_8 + 100, 1, 0 );
changeAnime( spep_8 + 0, 1, 107 );

setMoveKey( spep_8 + 0, 1, -3.7, -43 , 0 );
setMoveKey( spep_8 -3 + 4, 1, -3.4, -57 , 0 );
setMoveKey( spep_8 -3 + 6, 1, -3.1, -74.1 , 0 );
setMoveKey( spep_8 -3 + 8, 1, -2.8, -94.3 , 0 );
setMoveKey( spep_8 -3 + 10, 1, -2.4, -117.6 , 0 );
setMoveKey( spep_8 -3 + 12, 1, -1.9, -144.1 , 0 );
setMoveKey( spep_8 -3 + 14, 1, -1.9, -143.1 , 0 );
setMoveKey( spep_8 + 100, 1, -1.9, -143.1 , 0 );

setScaleKey( spep_8 + 0, 1, 0.35, 0.35 );
setScaleKey( spep_8 -3 + 4, 1, 0.51, 0.51 );
setScaleKey( spep_8 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_8 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_8 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_8 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_8 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_8 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_8 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_8 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_8 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_8 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_8 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_8 + 100, 1, 1.6, 1.6 );

setRotateKey( spep_8 + 0, 1, 105 );
setRotateKey( spep_8 -3 + 4, 1, 240 );
setRotateKey( spep_8 -3 + 6, 1, 405 );
setRotateKey( spep_8 -3 + 8, 1, 600 );
setRotateKey( spep_8 -3 + 10, 1, 825 );
setRotateKey( spep_8 -3 + 12, 1, 1080 );
setRotateKey( spep_8 + 100, 1, 1080 );


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
--爆発
playSe( spep_8 + 0, 1025 );
--ガッ
playSe( spep_8 + 8, 1054 );

-- ** 背景 ** --
entryFadeBg( spep_8 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_8 + 10 );
endPhase( spep_8 + 98 );

end