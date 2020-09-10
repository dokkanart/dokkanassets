--1020370:魔人ブウ(ゴテンクス吸収)_かめはめ波
--sp_effect_a1_00250

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
SP_01 = 155904;     --崖上から見下ろす→蹴り飛ばし　前  ef_001
SP_02 = 155905;     --崖上から見下ろす→蹴り飛ばし　中  ef_002
SP_03 = 155906;     --崖上から見下ろす→蹴り飛ばし　後  ef_003
SP_04 = 155907;     --着地    ef_004
SP_05 = 155908;     --ドーナツを放つ   ef_005
SP_06 = 155909;     --ドーナツが敵の周りに迫る　前    ef_006
SP_07 = 155910;     --ドーナツが敵の周りに迫る　後    ef_007
SP_08 = 155911;     --手を握る  ef_008
SP_09 = 155912;     --ドーナツが敵を締め付ける　前    ef_009
SP_10 = 155913;     --ドーナツが敵を締め付ける　後    ef_010
SP_11 = 155914;     --上空に移動しかめはめ波を溜め始める　前   ef_011
SP_12 = 155916;     --上空に移動しかめはめ波を溜め始める　後ろ  ef_012
SP_13 = 155917;     --上空に移動しかめはめ波を溜め始める　後ろ  ef_013
SP_14 = 155918;     --かめはめ波を溜める　アップ絵    ef_014
SP_15 = 155919;     --かめはめ波発射   ef_015
SP_16 = 155921;     --かめはめ波が敵に迫る　前  ef_016
SP_17 = 155922;     --かめはめ波が敵に迫る　後  ef_017
SP_18 = 155923;     --爆発    ef_018

--敵側
SP_05r = 155924;    --ドーナツを放つ   ef_005r
SP_09r = 155925;    --ドーナツが敵を締め付ける　前    ef_009r
SP_11r = 155915;    --上空に移動しかめはめ波を溜め始める　前   ef_011r
SP_15r = 155920;    --かめはめ波発射   ef_015r

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
-- 崖上から見下ろす→蹴り飛ばし(136F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_fa = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --崖上から見下ろす→蹴り飛ばし　前(ef_001)
setEffMoveKey( spep_0 + 0, first_fa, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, first_fa, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_fa, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, first_fa, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_fa, 0 );
setEffRotateKey( spep_0 + 136, first_fa, 0 );
setEffAlphaKey( spep_0 + 0, first_fa, 0 );
setEffAlphaKey( spep_0 + 50, first_fa, 0 );
setEffAlphaKey( spep_0 + 51, first_fa, 255 );
setEffAlphaKey( spep_0 + 136, first_fa, 255 );

first_b = entryEffect( spep_0 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --崖上から見下ろす→蹴り飛ばし　後(ef_003)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 136, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 136, first_b, 255 );

first_e = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --崖上から見下ろす→蹴り飛ばし　中(ef_002)
setEffMoveKey( spep_0 + 0, first_e, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, first_e, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_e, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, first_e, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_e, 0 );
setEffRotateKey( spep_0 + 136, first_e, 0 );
setEffAlphaKey( spep_0 + 0, first_e, 255 );
setEffAlphaKey( spep_0 + 136, first_e, 255 );

first_fb = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --崖上から見下ろす→蹴り飛ばし　前(ef_001)
setEffMoveKey( spep_0 + 0, first_fb, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, first_fb, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_fb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, first_fb, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_fb, 0 );
setEffRotateKey( spep_0 + 136, first_fb, 0 );
setEffAlphaKey( spep_0 + 0, first_fb, 255 );
setEffAlphaKey( spep_0 + 50, first_fb, 255 );
setEffAlphaKey( spep_0 + 51, first_fb, 0 );
setEffAlphaKey( spep_0 + 136, first_fb, 0 );

-- ** 敵キャラクター1 ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 20, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 246.3, -326.6 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 251.9, -332.3 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 257.5, -338.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 263.1, -343.8 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 268.7, -349.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 332.2, -442.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 395.8, -534.8 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 459.4, -627.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 523, -720.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 586.6, -812.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 1, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 2, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 3, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 4, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 5, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 6, 1, 3.5, 3.5 );
setScaleKey( spep_0 -3 + 20, 1, 3.5, 3.5 );

setRotateKey( spep_0 + 0, 1, 19.8 );
setRotateKey( spep_0 + 1, 1, 19.8 );
setRotateKey( spep_0 + 2, 1, 19.8 );
setRotateKey( spep_0 + 3, 1, 19.8 );
setRotateKey( spep_0 + 4, 1, 19.8 );
setRotateKey( spep_0 + 5, 1, 19.8 );
setRotateKey( spep_0 + 6, 1, 19.8 );
setRotateKey( spep_0 -3 + 20, 1, 19.8 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 8 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.81, 10, 1 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
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


-- ** 敵キャラクター2 ** --
setDisp( spep_0 -3 + 54, 1, 1 );
setDisp( spep_0 -3 + 139, 1, 0 );
changeAnime( spep_0 -3 + 54, 1, 103 );
changeAnime( spep_0 -3 + 64, 1, 112 );
changeAnime( spep_0 -3 + 100, 1, 105 );

setMoveKey( spep_0 -3 + 54, 1, 664.1, -287.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 572.7, -227.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 481.2, -167 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 389.5, -106.5 , 0 );
setMoveKey( spep_0 -3 + 63, 1, 297.8, -46 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 233.3, 22.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 194.1, 46.3 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 163.1, 65.3 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 137.8, 80.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 116.7, 93.9 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 98.8, 104.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 83.5, 114.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 70.5, 122.3 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 59.3, 129.1 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 49.7, 135 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 41.6, 140 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 34.8, 144.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 29, 147.7 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 24.3, 150.6 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 20.5, 152.9 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 17.6, 154.7 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 15.5, 156 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 14.1, 156.9 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 14.1, 156.9 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 33.5, 140.1 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 56.6, 164.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 74.4, 182.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 89, 197.8 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 101.3, 210.5 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 111.8, 221.5 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 121, 231 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 129, 239.3 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 136.1, 246.7 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 142.3, 253.2 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 147.9, 258.9 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 152.8, 264 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 157.2, 268.6 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 161, 272.5 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 164.4, 276.1 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 167.3, 279.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 169.9, 281.8 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 172.1, 284.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 173.9, 286 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 175.5, 287.6 , 0 );
setMoveKey( spep_0 -3 + 139, 1, 176.7, 288.8 , 0 );

setScaleKey( spep_0 -3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 99, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 100, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 102, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 104, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 106, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 108, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 110, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 112, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 114, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 116, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 118, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 120, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 122, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 124, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 126, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 128, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 130, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 132, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 134, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 136, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 138, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 139, 1, 0.14, 0.14 );

setRotateKey( spep_0 -3 + 54, 1, 19.8 );
setRotateKey( spep_0 -3 + 63, 1, 19.8 );
setRotateKey( spep_0 -3 + 64, 1, -8.8 );
setRotateKey( spep_0 -3 + 99, 1, -8.8 );
setRotateKey( spep_0 -3 + 100, 1, 20 );
setRotateKey( spep_0 -3 + 102, 1, 23.5 );
setRotateKey( spep_0 -3 + 104, 1, 26.2 );
setRotateKey( spep_0 -3 + 106, 1, 28.4 );
setRotateKey( spep_0 -3 + 108, 1, 30.2 );
setRotateKey( spep_0 -3 + 110, 1, 31.8 );
setRotateKey( spep_0 -3 + 112, 1, 33.2 );
setRotateKey( spep_0 -3 + 114, 1, 34.4 );
setRotateKey( spep_0 -3 + 116, 1, 35.4 );
setRotateKey( spep_0 -3 + 118, 1, 36.4 );
setRotateKey( spep_0 -3 + 120, 1, 37.2 );
setRotateKey( spep_0 -3 + 122, 1, 38 );
setRotateKey( spep_0 -3 + 124, 1, 38.6 );
setRotateKey( spep_0 -3 + 126, 1, 39.2 );
setRotateKey( spep_0 -3 + 128, 1, 39.7 );
setRotateKey( spep_0 -3 + 130, 1, 40.1 );
setRotateKey( spep_0 -3 + 132, 1, 40.5 );
setRotateKey( spep_0 -3 + 134, 1, 40.9 );
setRotateKey( spep_0 -3 + 136, 1, 41.1 );
setRotateKey( spep_0 -3 + 138, 1, 41.4 );
setRotateKey( spep_0 -3 + 139, 1, 41.6 );

-- ** 音 ** --
--敵かわす1
SE002 = playSe( spep_0 + 56, 1151 );
setSeVolumeByWorkId( spep_0 + 56, SE002, 79 );
--敵かわす2
SE003 = playSe( spep_0 + 58, 1003 );

--サマーソルト1       
SE004 = playSe( spep_0 + 102, 1011 );
setSeVolumeByWorkId( spep_0 + 102, SE004, 112 );
stopSe( spep_0 + 124, SE004, 36 );

--サマーソルト2
SE005 = playSe( spep_0 + 102, 1123 );
setSeVolumeByWorkId( spep_0 + 102, SE005, 71 ); 

--サマーソルト3
SE006 = playSe( spep_0 + 102, 1182 );
setSeVolumeByWorkId( spep_0 + 102, SE006, 126 );
stopSe( spep_0 + 114, SE006, 14 );

--サマーソルト4
SE007 = playSe( spep_0 + 112, 1109 );
setSeVolumeByWorkId( spep_0 + 112, SE007, 73 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 136;


--------------------------------------
--着地(56F)
--------------------------------------

-- ** エフェクト等 ** --
landing = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --着地(ef_004)
setEffMoveKey( spep_1 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, landing, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, landing, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, landing, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, landing, 0 );
setEffRotateKey( spep_1 + 56, landing, 0 );
setEffAlphaKey( spep_1 + 0, landing, 255 );
setEffAlphaKey( spep_1 + 56, landing, 255 );

-- ** 音 ** --
--着地1
SE008 = playSe( spep_0 +126 + 0, 44 );
setSeVolumeByWorkId( spep_0 +126 + 0, SE008, 75 );
stopSe( spep_0 +136 + 4, SE008, 18 );
setTimeStretch( SE008, 0.67, 10, 1 );

--着地2
SE009 = playSe( spep_0 +136 + 16, 1106 );
setSeVolumeByWorkId( spep_1 + 16, SE009, 158 );             

--着地3
SE010 = playSe( spep_1 + 24, 1108 );
setSeVolumeByWorkId( spep_1 + 24, SE010, 200 );             

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;

--------------------------------------
--ドーナツを放つ(96F)
--------------------------------------

-- ** エフェクト等 ** --
dshot = entryEffectLife( spep_2 + 0, SP_05, 96, 0x100, -1, 0, 0, 0 );  --ドーナツを放つ(ef_005)
setEffMoveKey( spep_2 + 0, dshot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, dshot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, dshot, 1.0, 1.0 );
setEffScaleKey( spep_2 + 96, dshot, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dshot, 0 );
setEffRotateKey( spep_2 + 96, dshot, 0 );
setEffAlphaKey( spep_2 + 0, dshot, 255 );
setEffAlphaKey( spep_2 + 96, dshot, 255 );

-- ** 音 ** --
--腕ひく1
SE011 = playSe( spep_2 + 2, 1190 );
setSeVolumeByWorkId( spep_2 + 2, SE011, 0 );
setSeVolumeByWorkId( spep_2 + 3, SE011, 39 );
setSeVolumeByWorkId( spep_2 + 4, SE011, 78 );
stopSe( spep_2 + 18, SE011, 20 );
setStartTimeMs( SE011,  100 );      

--腕ひく2
SE012 = playSe( spep_1 + 50, 1233 );
setSeVolumeByWorkId( spep_1 + 50, SE012, 89 );
setPitch( spep_1 + 50, SE012, -500 );
setTimeStretch( SE012, 0.57, 10, 1 );  

--気弾発射１_1
SE013 = playSe( spep_2 + 34, 1026 );
setSeVolumeByWorkId( spep_2 + 34, SE013, 0 );
setSeVolumeByWorkId( spep_2 + 35, SE013, 25 );
setSeVolumeByWorkId( spep_2 + 36, SE013, 50 );
setSeVolumeByWorkId( spep_2 + 37, SE013, 75 );
setSeVolumeByWorkId( spep_2 + 38, SE013, 100 );
setStartTimeMs( SE013,  300 );

--気弾発射１_2
SE014 = playSe( spep_2 + 32, 1028 );

--気弾発射１_3
SE015 = playSe( spep_2 + 34, 1008 );
setSeVolumeByWorkId( spep_2 + 34, SE015, 77 );

--気弾発射２_1
SE016 = playSe( spep_2 + 54, 1026 );
setSeVolumeByWorkId( spep_2 + 54, SE016, 0 );
setSeVolumeByWorkId( spep_2 + 55, SE016, 25 );
setSeVolumeByWorkId( spep_2 + 56, SE016, 50 );
setSeVolumeByWorkId( spep_2 + 57, SE016, 75 );
setSeVolumeByWorkId( spep_2 + 58, SE016, 100 );
setStartTimeMs( SE016,  300 );

--気弾発射２_2
SE017 = playSe( spep_2 + 54, 1028 );

--気弾発射２_3
SE018 = playSe( spep_2 + 56, 1008 );
setSeVolumeByWorkId( spep_2 + 66, SE018, 77 );

--気弾発射３_1
SE019 = playSe( spep_2 +76 + 2, 1026 );
setSeVolumeByWorkId( spep_2 +76 + 2, SE019, 0 );
setSeVolumeByWorkId( spep_2 +76 + 3, SE019, 20 );
setSeVolumeByWorkId( spep_2 +76 + 4, SE019, 40 );
setSeVolumeByWorkId( spep_2 +76 + 5, SE019, 60 );
setSeVolumeByWorkId( spep_2 +76 + 6, SE019, 80 );
setSeVolumeByWorkId( spep_2 +76 + 7, SE019, 100 );
setStartTimeMs( SE019,  300 );

--気弾発射３_2
SE020 = playSe( spep_2 +76 + 2, 1028 );

--気弾発射３_3
SE021 = playSe( spep_2 +78 + 4, 1008 );
setSeVolumeByWorkId( spep_2 +78 + 4, SE021, 78 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

--------------------------------------
--ドーナツが敵の周りに迫る(66F)
--------------------------------------

-- ** エフェクト等 ** --
dcircle_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --ドーナツが敵の周りに迫る　前(ef_006)
setEffMoveKey( spep_3 + 0, dcircle_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, dcircle_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, dcircle_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, dcircle_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dcircle_f, 0 );
setEffRotateKey( spep_3 + 66, dcircle_f, 0 );
setEffAlphaKey( spep_3 + 0, dcircle_f, 255 );
setEffAlphaKey( spep_3 + 66, dcircle_f, 255 );

-- ** エフェクト等 ** --
dcircle_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ドーナツが敵の周りに迫る　後  ef_007
setEffMoveKey( spep_3 + 0, dcircle_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, dcircle_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, dcircle_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, dcircle_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dcircle_b, 0 );
setEffRotateKey( spep_3 + 66, dcircle_b, 0 );
setEffAlphaKey( spep_3 + 0, dcircle_b, 255 );
setEffAlphaKey( spep_3 + 66, dcircle_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 69, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -175.8, -173.1 , 0 );
setMoveKey( spep_3 + 1, 1, -110.2, -106 , 0 );
setMoveKey( spep_3 + 2, 1, -85.8, -81.5 , 0 );
setMoveKey( spep_3 + 3, 1, -85.8, -81.5 , 0 );
setMoveKey( spep_3 + 4, 1, -85.8, -81.5 , 0 );
setMoveKey( spep_3 + 5, 1, -85.8, -81.5 , 0 );
setMoveKey( spep_3 + 6, 1, -68.3, -64.1 , 0 );
setMoveKey( spep_3 + 8, 1, -54.3, -50.5 , 0 );
setMoveKey( spep_3 + 10, 1, -42.7, -39.3 , 0 );
setMoveKey( spep_3 + 12, 1, -32.8, -29.8 , 0 );
setMoveKey( spep_3 + 14, 1, -24.3, -21.8 , 0 );
setMoveKey( spep_3 + 16, 1, -16.8, -14.8 , 0 );
setMoveKey( spep_3 + 18, 1, -10.3, -8.9 , 0 );
setMoveKey( spep_3 + 20, 1, -4.7, -3.9 , 0 );
setMoveKey( spep_3 + 22, 1, 0, 0.1 , 0 );
setMoveKey( spep_3 + 24, 1, 1, 0.9 , 0 );
setMoveKey( spep_3 + 26, 1, 2, 1.8 , 0 );
setMoveKey( spep_3 + 28, 1, 3, 2.6 , 0 );
setMoveKey( spep_3 + 30, 1, 4, 3.4 , 0 );
setMoveKey( spep_3 + 32, 1, 5, 4.3 , 0 );
setMoveKey( spep_3 + 34, 1, 6, 5.1 , 0 );
setMoveKey( spep_3 + 36, 1, 7, 6 , 0 );
setMoveKey( spep_3 + 38, 1, 8, 6.8 , 0 );
setMoveKey( spep_3 + 40, 1, 9, 7.6 , 0 );
setMoveKey( spep_3 + 42, 1, 10, 8.5 , 0 );
setMoveKey( spep_3 + 44, 1, 11, 9.3 , 0 );
setMoveKey( spep_3 + 46, 1, 12, 10.2 , 0 );
setMoveKey( spep_3 + 48, 1, 13, 11 , 0 );
setMoveKey( spep_3 + 50, 1, 14, 11.8 , 0 );
setMoveKey( spep_3 + 52, 1, 15, 12.7 , 0 );
setMoveKey( spep_3 + 54, 1, 16, 13.5 , 0 );
setMoveKey( spep_3 + 56, 1, 17, 14.4 , 0 );
setMoveKey( spep_3 + 58, 1, 18, 15.2 , 0 );
setMoveKey( spep_3 + 60, 1, 19, 16 , 0 );
setMoveKey( spep_3 + 62, 1, 20, 16.9 , 0 );
setMoveKey( spep_3 + 64, 1, 21, 17.7 , 0 );
setMoveKey( spep_3 + 66, 1, 22, 18.6 , 0 );
setMoveKey( spep_3 + 68, 1, 23, 19.4 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 23, 19.4 , 0 );

setScaleKey( spep_3 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 1, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 2, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 3, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 4, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 5, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 6, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 69, 1, 1.25, 1.25 );

setRotateKey( spep_3 + 0, 1, -30 );
setRotateKey( spep_3 + 1, 1, -30 );
setRotateKey( spep_3 + 2, 1, -30 );
setRotateKey( spep_3 + 3, 1, -30 );
setRotateKey( spep_3 + 4, 1, -30 );
setRotateKey( spep_3 + 5, 1, -30 );
setRotateKey( spep_3 + 6, 1, -30 );
setRotateKey( spep_3 -3 + 69, 1, -30 );

-- ** 音 ** --
--輪っか敵を包み込む1
SE022 = playSe( spep_2 +86 + 6, 1239 );
stopSe( spep_3 +66 + 22, SE022, 4 );

--輪っか敵を包み込む2
SE023 = playSe( spep_2 +86 + 6, 1240 );
stopSe( spep_3 +66 +24 + 0, SE023, 8 );
-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;

--------------------------------------
--手を握る(54F)
--------------------------------------
-- ** エフェクト等 ** --
hhold = entryEffectLife( spep_4 + 0, SP_08, 53, 0x100, -1, 0, 0, 0 );  --手を握る   (ef_008)
setEffMoveKey( spep_4 + 0, hhold, 0, 0 , 0 );
setEffMoveKey( spep_4 + 53, hhold, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hhold, 1.0, 1.0 );
setEffScaleKey( spep_4 + 53, hhold, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hhold, 0 );
setEffRotateKey( spep_4 + 53, hhold, 0 );
setEffAlphaKey( spep_4 + 0, hhold, 255 );
setEffAlphaKey( spep_4 + 53, hhold, 255 );

-- ** 音 ** --
--手握る
SE024 = playSe( spep_4 + 20, 1003 );
setSeVolumeByWorkId( spep_4 + 20, SE024, 89 );

--敵しめつける1
SE025 = playSe( spep_4 +44 + 6, 1195 );
setSeVolumeByWorkId( spep_4 +40 + 6, SE025, 0 );
setSeVolumeByWorkId( spep_4 +40 + 7, SE025, 50 );
setSeVolumeByWorkId( spep_4 +40 + 8, SE025, 100 );
setSeVolumeByWorkId( spep_4 +40 + 9, SE025, 150 );
setSeVolumeByWorkId( spep_4 +40 + 10, SE025, 200 );
setStartTimeMs( SE025,  133 );
setTimeStretch( SE025, 0.51, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 54, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 54;

--------------------------------------
--ドーナツが敵を締め付ける(56F)
--------------------------------------

-- ** エフェクト等 ** --
dshrink_f = entryEffectLife( spep_5 + 0, SP_09, 55, 0x100, -1, 0, 0, 0 );  --ドーナツが敵を締め付ける　前(ef_009)
setEffMoveKey( spep_5 + 0, dshrink_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 55, dshrink_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, dshrink_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 55, dshrink_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dshrink_f, 0 );
setEffRotateKey( spep_5 + 55, dshrink_f, 0 );
setEffAlphaKey( spep_5 + 0, dshrink_f, 255 );
setEffAlphaKey( spep_5 + 55, dshrink_f, 255 );

dshrink_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --ドーナツが敵を締め付ける　後(ef_010)
setEffMoveKey( spep_5 + 0, dshrink_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, dshrink_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, dshrink_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, dshrink_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dshrink_b, 0 );
setEffRotateKey( spep_5 + 56, dshrink_b, 0 );
setEffAlphaKey( spep_5 + 0, dshrink_b, 255 );
setEffAlphaKey( spep_5 + 56, dshrink_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, -1.9, 1.9 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -1.9, 1.9 , 0 );
setMoveKey( spep_5 -3 + 5, 1, -1.9, 1.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -2.2, 2.2 , 0 );
setMoveKey( spep_5 -3 + 7, 1, -2.2, 2.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 5.1, 8.7 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 5.1, 8.7 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -11.8, -0.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 4.6, 8.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -13.4, 2.5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 1.5, 8.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -7.7, 2.9 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -0.8, 7.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -7.3, 3.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -1.7, 6.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -5.4, 4.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -4.1, 5.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -2.8, 5.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -3.9, 4.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -5.1, 4.1 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -3.9, 4.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -2.7, 5.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -4.1, 5.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -5.6, 4.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -4.4, 5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -3.2, 5.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -2.7, 6 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -2.2, 6.5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -3.2, 7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -4.3, 7.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -4.5, 5.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -4.8, 3.9 , 0 );
--setMoveKey( spep_5 -3 + 59, 1, -4.8, 3.9 , 0 );
setMoveKey( spep_5 -3 + 59, 1, -163, 250.7 , 0 );

setScaleKey( spep_5 + 0, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 4, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 5, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 6, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 7, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 8, 1, 1.96, 1.96 );
setScaleKey( spep_5 -3 + 9, 1, 1.96, 1.96 );
setScaleKey( spep_5 -3 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 12, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 14, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 22, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 24, 1, 2.04, 2.04 );
setScaleKey( spep_5 -3 + 42, 1, 2.04, 2.04 );
setScaleKey( spep_5 -3 + 44, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 58, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 59, 1, 0.63, 0.63 );

setRotateKey( spep_5 + 0, 1, -32 );
setRotateKey( spep_5 + 1, 1, -32 );
setRotateKey( spep_5 + 2, 1, -32 );
setRotateKey( spep_5 + 3, 1, -32 );
setRotateKey( spep_5 + 4, 1, -32 );
setRotateKey( spep_5 + 5, 1, -32 );
setRotateKey( spep_5 + 6, 1, -32 );
setRotateKey( spep_5 -3 + 58, 1, -32 );
setRotateKey( spep_5 -3 + 59, 1, -59 );

-- ** 音 ** --
--敵しめつける2
SE026 = playSe( spep_5 + 16, 1153 );
setSeVolumeByWorkId( spep_5 + 16, SE026, 46 );
setTimeStretch( SE026, 0.83, 10, 1 );

--敵しめつける3
SE027 = playSe( spep_5 + 16, 1060 );
setSeVolumeByWorkId( spep_5 + 16, SE027, 61 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


--------------------------------------
--上空に移動しかめはめ波を溜め始める(96F)
--------------------------------------
-- ** エフェクト等 ** --
kstart_f = entryEffect( spep_6 + 0, SP_11, 0x100, -1, 0, 0, 0 );  --上空に移動しかめはめ波を溜め始める　前(ef_011)
setEffMoveKey( spep_6 + 0, kstart_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 96, kstart_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kstart_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, kstart_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kstart_f, 0 );
setEffRotateKey( spep_6 + 96, kstart_f, 0 );
setEffAlphaKey( spep_6 + 0, kstart_f, 255 );
setEffAlphaKey( spep_6 + 96, kstart_f, 255 );

-- ** エフェクト等 ** --
kstart_b = entryEffect( spep_6 + 0, SP_13, 0x80, -1, 0, 0, 0 );  --上空に移動しかめはめ波を溜め始める　後ろ(ef_013)
setEffMoveKey( spep_6 + 0, kstart_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 96, kstart_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kstart_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, kstart_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kstart_b, 0 );
setEffRotateKey( spep_6 + 96, kstart_b, 0 );
setEffAlphaKey( spep_6 + 0, kstart_b, 255 );
setEffAlphaKey( spep_6 + 96, kstart_b, 255 );

-- ** エフェクト等 ** --
kstart_e = entryEffect( spep_6 + 0, SP_12, 0x80, -1, 0, 0, 0 );  --上空に移動しかめはめ波を溜め始める　後ろ(ef_012)
setEffMoveKey( spep_6 + 0, kstart_e, 0, 0 , 0 );
setEffMoveKey( spep_6 + 96, kstart_e, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kstart_e, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, kstart_e, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kstart_e, 0 );
setEffRotateKey( spep_6 + 96, kstart_e, 0 );
setEffAlphaKey( spep_6 + 0, kstart_e, 255 );
setEffAlphaKey( spep_6 + 96, kstart_e, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 96, 1, 0 );
--changeAnime( spep_6 + 0, 1, 106 );

--setMoveKey( spep_6 + 0, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 0, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 1, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 2, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 3, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 4, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 5, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 6, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 30, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 31, 1, -161.7, 250.8 , 0 );
setMoveKey( spep_6 + 32, 1, -161.7, 250.8 , 0 );
setMoveKey( spep_6 + 33, 1, -159.6, 251.1 , 0 );
setMoveKey( spep_6 + 34, 1, -159.6, 251.1 , 0 );
setMoveKey( spep_6 + 35, 1, -156.5, 251.6 , 0 );
setMoveKey( spep_6 + 36, 1, -156.5, 251.6 , 0 );
setMoveKey( spep_6 + 37, 1, -152.6, 252.3 , 0 );
setMoveKey( spep_6 + 38, 1, -152.6, 252.3 , 0 );
setMoveKey( spep_6 + 39, 1, -147.6, 253.3 , 0 );
setMoveKey( spep_6 + 40, 1, -147.6, 253.3 , 0 );
setMoveKey( spep_6 + 41, 1, -141.7, 254.5 , 0 );
setMoveKey( spep_6 + 42, 1, -141.7, 254.5 , 0 );
setMoveKey( spep_6 + 43, 1, -134.8, 256 , 0 );
setMoveKey( spep_6 + 44, 1, -134.8, 256 , 0 );
setMoveKey( spep_6 + 45, 1, -126.7, 257.8 , 0 );
setMoveKey( spep_6 + 46, 1, -126.7, 257.8 , 0 );
setMoveKey( spep_6 + 47, 1, -117.5, 259.8 , 0 );
setMoveKey( spep_6 + 48, 1, -117.5, 259.8 , 0 );
setMoveKey( spep_6 + 49, 1, -107.1, 262.1 , 0 );
setMoveKey( spep_6 + 50, 1, -107.1, 262.1 , 0 );
setMoveKey( spep_6 + 51, 1, -95.4, 264.8 , 0 );
setMoveKey( spep_6 + 52, 1, -95.4, 264.8 , 0 );
setMoveKey( spep_6 + 53, 1, -82.3, 267.8 , 0 );
setMoveKey( spep_6 + 54, 1, -82.3, 267.8 , 0 );
setMoveKey( spep_6 + 55, 1, -67.7, 271.1 , 0 );
setMoveKey( spep_6 + 56, 1, -67.7, 271.1 , 0 );
setMoveKey( spep_6 + 57, 1, -51.5, 274.9 , 0 );
setMoveKey( spep_6 + 58, 1, -51.5, 274.9 , 0 );
setMoveKey( spep_6 + 59, 1, -33.6, 279 , 0 );
setMoveKey( spep_6 + 60, 1, -33.6, 279 , 0 );
setMoveKey( spep_6 + 61, 1, -13.7, 283.7 , 0 );
setMoveKey( spep_6 + 62, 1, -13.7, 283.7 , 0 );
setMoveKey( spep_6 + 63, 1, 8.3, 288.8 , 0 );
setMoveKey( spep_6 + 64, 1, 8.3, 288.8 , 0 );
setMoveKey( spep_6 + 65, 1, 32.9, 294.6 , 0 );
setMoveKey( spep_6 + 66, 1, 32.9, 294.6 , 0 );
setMoveKey( spep_6 + 67, 1, 60.5, 301.2 , 0 );
setMoveKey( spep_6 + 68, 1, 60.5, 301.2 , 0 );
setMoveKey( spep_6 + 69, 1, 92, 308.7 , 0 );
setMoveKey( spep_6 + 70, 1, 92, 308.7 , 0 );
setMoveKey( spep_6 + 71, 1, 129.8, 317.7 , 0 );
setMoveKey( spep_6 + 72, 1, 129.8, 317.7 , 0 );
setMoveKey( spep_6 + 73, 1, 132.7, 318.2 , 0 );
setMoveKey( spep_6 + 74, 1, 132.7, 318.2 , 0 );
setMoveKey( spep_6 + 75, 1, 135.5, 318.6 , 0 );
setMoveKey( spep_6 + 76, 1, 135.5, 318.6 , 0 );
setMoveKey( spep_6 + 77, 1, 138.4, 319.1 , 0 );
setMoveKey( spep_6 + 78, 1, 138.4, 319.1 , 0 );
setMoveKey( spep_6 + 79, 1, 141.2, 319.5 , 0 );
setMoveKey( spep_6 + 80, 1, 141.2, 319.5 , 0 );
setMoveKey( spep_6 + 81, 1, 144.1, 320 , 0 );
setMoveKey( spep_6 + 82, 1, 144.1, 320 , 0 );
setMoveKey( spep_6 + 83, 1, 146.9, 320.4 , 0 );
setMoveKey( spep_6 + 84, 1, 146.9, 320.4 , 0 );
setMoveKey( spep_6 + 85, 1, 149.8, 320.9 , 0 );
setMoveKey( spep_6 + 86, 1, 149.8, 320.9 , 0 );
setMoveKey( spep_6 + 87, 1, 152.6, 321.3 , 0 );
setMoveKey( spep_6 + 88, 1, 152.6, 321.3 , 0 );
setMoveKey( spep_6 + 89, 1, 155.5, 321.8 , 0 );
setMoveKey( spep_6 + 90, 1, 155.5, 321.8 , 0 );
setMoveKey( spep_6 + 91, 1, 158.3, 322.2 , 0 );
setMoveKey( spep_6 + 92, 1, 158.3, 322.2 , 0 );
setMoveKey( spep_6 + 93, 1, 161.2, 322.7 , 0 );
setMoveKey( spep_6 + 94, 1, 161.2, 322.7 , 0 );
setMoveKey( spep_6 + 95, 1, 164, 323.1 , 0 );
setMoveKey( spep_6 + 96, 1, 164, 323.1 , 0 );

--setScaleKey( spep_6 + 0, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 1, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 2, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 3, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 4, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 5, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 6, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 96, 1, 0.63, 0.63 );


--setRotateKey( spep_6 + 0, 1, -59 );
setRotateKey( spep_6 + 1, 1, -59 );
setRotateKey( spep_6 + 2, 1, -59 );
setRotateKey( spep_6 + 3, 1, -59 );
setRotateKey( spep_6 + 4, 1, -59 );
setRotateKey( spep_6 + 5, 1, -59 );
setRotateKey( spep_6 + 6, 1, -59 );
setRotateKey( spep_6 + 96, 1, -59 );

-- ** 音 ** --
-- ** 音 ** --
--下から現れる
SE030 = playSe( spep_6 + 2, 44 );
setTimeStretch( SE030, 0.67, 10, 1 );

--環境音
SE029 = playSe( spep_6 + 2, 1269 );
setSeVolumeByWorkId( spep_6 + 2, SE029, 20 );
stopSe( spep_6 +96 +86 + 14, SE029, 0 );

--カメラパン
SE028 = playSe( spep_6 + 36, 1278 );
setSeVolumeByWorkId( spep_6 + 36, SE028, 0 );
setSeVolumeByWorkId( spep_6 + 38, SE028, 6 );
setSeVolumeByWorkId( spep_6 + 30, SE028, 12 );
setSeVolumeByWorkId( spep_6 + 32, SE028, 18 );
setSeVolumeByWorkId( spep_6 + 34, SE028, 24 );
setSeVolumeByWorkId( spep_6 + 36, SE028, 28 );
setSeVolumeByWorkId( spep_6 + 38, SE028, 32 );
stopSe( spep_6 +66 + 14, SE028, 73 );
setStartTimeMs( SE028,  1233 );

--かめはめ波溜め1
SE031 = playSe( spep_6 +56 + 2, 1131 );
setSeVolumeByWorkId( spep_6 +56 + 2, SE031, 69 );

--かめはめ波溜め2
SE032 = playSe( spep_6 +56 + 12, 1132 );
setSeVolumeByWorkId( spep_6 +66 + 12, SE032, 158 );
stopSe( spep_6 +56 +86 + 44, SE032, 0 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 96;

--------------------------------------
--かめはめ波を溜める　アップ絵(86F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_7 + 0, SP_14, 86, 0x100, -1, 0, 0, 0 );  --かめはめ波を溜める　アップ絵(ef_014)
setEffMoveKey( spep_7 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_7 + 86, tame, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_7 + 86, tame, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame, 0 );
setEffRotateKey( spep_7 + 86, tame, 0 );
setEffAlphaKey( spep_7 + 0, tame, 255 );
setEffAlphaKey( spep_7 + 86, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_7 + 5,  906, 81, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 5, shuchusen1, 81, 25 );
setEffMoveKey(   spep_7 + 5, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_7 + 86, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_7 + 5, shuchusen1, 1.6, 1.6 );
setEffScaleKey(  spep_7 + 86, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_7 + 5, shuchusen1, 0 );
setEffRotateKey( spep_7 + 86, shuchusen1, 0 );
setEffAlphaKey(  spep_7 + 5, shuchusen1, 255 );
setEffAlphaKey(  spep_7 + 86, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
spep_x = spep_7 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50 +20, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50 -100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50 -100, 515.5 , 0 );

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
--顔カットイン
SE033 = playSe( spep_7 + 6, 1018 );       

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 78, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_8 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_8 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;


--------------------------------------
--かめはめ波発射(84F)
--------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffectLife( spep_9 + 0, SP_15, 83, 0x100, -1, 0, 0, 0 );  --かめはめ波発射(ef_015)
setEffMoveKey( spep_9 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_9 + 83, hassya, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hassya, 1.0, 1.0 );
setEffScaleKey( spep_9 + 83, hassya, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hassya, 0 );
setEffRotateKey( spep_9 + 83, hassya, 0 );
setEffAlphaKey( spep_9 + 0, hassya, 255 );
setEffAlphaKey( spep_9 + 83, hassya, 255 );

-- ** 音 ** --
--かめはめ波発射1
SE035 = playSe( spep_9 + 0, 1027 );
setSeVolumeByWorkId( spep_9 + 0, SE035, 60 );              

--かめはめ波発射2
SE036 = playSe( spep_9 + 0, 1022 );

--かめはめ波発射3
SE037 = playSe( spep_9 + 0, 1213 );
setSeVolumeByWorkId( spep_9 + 0, SE037, 77 );
stopSe( spep_9 +84 +56 + 18, SE037, 21 );

--かめはめ波発射4
SE038 = playSe( spep_9 + 10, 1124 );
setSeVolumeByWorkId( spep_9 + 10, SE038, 53 );
stopSe( spep_9 +84 +56 + 18, SE038, 16 );
setPitch( spep_9 + 10, SE038, -300 );
setTimeStretch( SE038, 0.8, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 84, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 84;

--------------------------------------
--かめはめ波が敵に迫る(56F)
--------------------------------------
-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_10 + 0, SP_16, 56, 0x100, -1, 0, 0, 0 );  --かめはめ波が敵に迫る　前(ef_016)
setEffMoveKey( spep_10 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, shot_f, 0 );
setEffRotateKey( spep_10 + 56, shot_f, 0 );
setEffAlphaKey( spep_10 + 0, shot_f, 255 );
setEffAlphaKey( spep_10 + 56, shot_f, 255 );

-- ** エフェクト等 ** --
shot_b = entryEffectLife( spep_10 + 0, SP_17, 56, 0x80, -1, 0, 0, 0 );  --かめはめ波が敵に迫る　後(ef_017)
setEffMoveKey( spep_10 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, shot_b, 0 );
setEffRotateKey( spep_10 + 56, shot_b, 0 );
setEffAlphaKey( spep_10 + 0, shot_b, 255 );
setEffAlphaKey( spep_10 + 56, shot_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -3 + 59, 1, 0 );
changeAnime( spep_10 -3 + 0, 1, 106 );

setMoveKey( spep_10 + 0, 1, 169.3, 28.1 , 0 );
setMoveKey( spep_10 + 1, 1, 171, 29.1 , 0 );
setMoveKey( spep_10 + 2, 1, 172.1, 30.1 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 168.6, 28 , 0 );
setMoveKey( spep_10 -3 + 7, 1, 168.6, 28 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 164.7, 26 , 0 );
setMoveKey( spep_10 -3 + 9, 1, 164.7, 26 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 164.2, 23.9 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 163.4, 21.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 158.1, 23.8 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 152.4, 25.7 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 150.3, 27.6 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 147.9, 29.5 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 145.2, 27.4 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 142.2, 25.3 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 134.8, 27.1 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 127.1, 29 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 120.2, 17.9 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 105, 18.7 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 101.5, 31.6 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 101.8, 28.4 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 104.4, 38 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 105.8, 28.7 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 83.8, 16.2 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 67.2, 27.2 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 63.4, 32.8 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 54.7, 31.4 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 37.8, 22 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 36.5, 28.5 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 35.1, 21.1 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 13.4, 30.7 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 7.2, 24.2 , 0 );
setMoveKey( spep_10 -3 + 59, 1, 7.2, 24.2 , 0 );

setScaleKey( spep_10 + 0, 1, 0.97, 0.97 );
setScaleKey( spep_10 + 1, 1, 0.98, 0.98 );
setScaleKey( spep_10 + 2, 1, 0.99, 0.99 );
setScaleKey( spep_10 -3 + 6, 1, 1, 1 );
setScaleKey( spep_10 -3 + 7, 1, 1, 1 );
setScaleKey( spep_10 -3 + 8, 1, 1.03, 1.02 );
setScaleKey( spep_10 -3 + 9, 1, 1.03, 1.02 );
setScaleKey( spep_10 -3 + 10, 1, 1.06, 1.05 );
setScaleKey( spep_10 -3 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_10 -3 + 14, 1, 1.13, 1.13 );
setScaleKey( spep_10 -3 + 16, 1, 1.18, 1.17 );
setScaleKey( spep_10 -3 + 18, 1, 1.23, 1.22 );
setScaleKey( spep_10 -3 + 20, 1, 1.28, 1.27 );
setScaleKey( spep_10 -3 + 22, 1, 1.34, 1.33 );
setScaleKey( spep_10 -3 + 24, 1, 1.4, 1.39 );
setScaleKey( spep_10 -3 + 26, 1, 1.47, 1.46 );
setScaleKey( spep_10 -3 + 28, 1, 1.54, 1.53 );
setScaleKey( spep_10 -3 + 30, 1, 1.62, 1.6 );
setScaleKey( spep_10 -3 + 32, 1, 1.69, 1.68 );
setScaleKey( spep_10 -3 + 34, 1, 1.78, 1.76 );
setScaleKey( spep_10 -3 + 36, 1, 1.86, 1.85 );
setScaleKey( spep_10 -3 + 38, 1, 1.95, 1.94 );
setScaleKey( spep_10 -3 + 40, 1, 2.05, 2.03 );
setScaleKey( spep_10 -3 + 42, 1, 2.14, 2.13 );
setScaleKey( spep_10 -3 + 44, 1, 2.24, 2.23 );
setScaleKey( spep_10 -3 + 46, 1, 2.34, 2.33 );
setScaleKey( spep_10 -3 + 48, 1, 2.45, 2.44 );
setScaleKey( spep_10 -3 + 50, 1, 2.56, 2.55 );
setScaleKey( spep_10 -3 + 52, 1, 2.67, 2.67 );
setScaleKey( spep_10 -3 + 54, 1, 2.79, 2.79 );
setScaleKey( spep_10 -3 + 56, 1, 2.91, 2.91 );
setScaleKey( spep_10 -3 + 58, 1, 3.04, 3.04 );
setScaleKey( spep_10 -3 + 59, 1, 3.04, 3.04 );

setRotateKey( spep_10 + 0, 1, -55 );
setRotateKey( spep_10 + 1, 1, -55 );
setRotateKey( spep_10 + 2, 1, -55 );
setRotateKey( spep_10 + 3, 1, -55 );
setRotateKey( spep_10 + 4, 1, -55 );
setRotateKey( spep_10 + 5, 1, -55 );
setRotateKey( spep_10 + 6, 1, -55 );
setRotateKey( spep_10 -3 + 59, 1, -55 );

-- ** 音 ** --
--かめはめ波弾道
SE039 = playSe( spep_9 +46 + 6, 1215 );
setSeVolumeByWorkId( spep_9 +46 + 6, SE039, 63 );
stopSe( spep_9 +46 +56 + 48, SE039, 32 );

--敵飲み込む
SE040 = playSe( spep_10 + 10, 1021 );

-- ** 背景 ** --
entryFadeBg( spep_10 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;

--------------------------------------
--爆発(146F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_18, 0x100, -1, 0, 0, 0 );  --爆発(ef_018)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 146, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_11 + 146, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 146, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 146, finish_f, 255 );

-- ** 音 ** --
--敵お星様に
SE041 = playSe( spep_11 + 4, 1146 );
setSeVolumeByWorkId( spep_11 + 4, SE041, 78 );
stopSe( spep_11 + 48, SE041, 25 );

--ラスト爆発1
SE042 = playSe( spep_11 + 42, 1159 );
setSeVolumeByWorkId( spep_11 + 42, SE042, 69 );

--ラスト爆発2
SE043 = playSe( spep_11 + 42, 1188 );
setSeVolumeByWorkId( spep_11 + 42, SE043, 61 );

--ラスト爆発3
SE044 = playSe( spep_11 + 44, 1023 );
setSeVolumeByWorkId( spep_11 + 44, SE044, 124 );

--ラスト爆発4
SE045 = playSe( spep_11 + 44, 1044 );
setSeVolumeByWorkId( spep_11 + 44, SE045, 47 );

--ラスト爆発5
SE046 = playSe( spep_11 + 44, 1024 );

-- ** 背景 ** --
entryFadeBg( spep_11 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 36 );
endPhase( spep_11+ 136 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 崖上から見下ろす→蹴り飛ばし(136F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_fa = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --崖上から見下ろす→蹴り飛ばし　前(ef_001)
setEffMoveKey( spep_0 + 0, first_fa, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, first_fa, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_fa, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, first_fa, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_fa, 0 );
setEffRotateKey( spep_0 + 136, first_fa, 0 );
setEffAlphaKey( spep_0 + 0, first_fa, 0 );
setEffAlphaKey( spep_0 + 50, first_fa, 0 );
setEffAlphaKey( spep_0 + 51, first_fa, 255 );
setEffAlphaKey( spep_0 + 136, first_fa, 255 );

first_b = entryEffect( spep_0 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --崖上から見下ろす→蹴り飛ばし　後(ef_003)
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 136, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 136, first_b, 255 );

first_e = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --崖上から見下ろす→蹴り飛ばし　中(ef_002)
setEffMoveKey( spep_0 + 0, first_e, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, first_e, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_e, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, first_e, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_e, 0 );
setEffRotateKey( spep_0 + 136, first_e, 0 );
setEffAlphaKey( spep_0 + 0, first_e, 255 );
setEffAlphaKey( spep_0 + 136, first_e, 255 );

first_fb = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --崖上から見下ろす→蹴り飛ばし　前(ef_001)
setEffMoveKey( spep_0 + 0, first_fb, 0, 0 , 0 );
setEffMoveKey( spep_0 + 136, first_fb, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_fb, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, first_fb, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_fb, 0 );
setEffRotateKey( spep_0 + 136, first_fb, 0 );
setEffAlphaKey( spep_0 + 0, first_fb, 255 );
setEffAlphaKey( spep_0 + 50, first_fb, 255 );
setEffAlphaKey( spep_0 + 51, first_fb, 0 );
setEffAlphaKey( spep_0 + 136, first_fb, 0 );

-- ** 敵キャラクター1 ** --
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 20, 1, 0 );
changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0 + 0, 1, 246.3, -326.6 , 0 );
setMoveKey( spep_0 -3 + 4, 1, 251.9, -332.3 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 257.5, -338.1 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 263.1, -343.8 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 268.7, -349.5 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 332.2, -442.1 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 395.8, -534.8 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 459.4, -627.5 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 523, -720.2 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 586.6, -812.8 , 0 );

setScaleKey( spep_0 + 0, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 1, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 2, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 3, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 4, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 5, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 6, 1, 3.5, 3.5 );
setScaleKey( spep_0 -3 + 20, 1, 3.5, 3.5 );

setRotateKey( spep_0 + 0, 1, 19.8 );
setRotateKey( spep_0 + 1, 1, 19.8 );
setRotateKey( spep_0 + 2, 1, 19.8 );
setRotateKey( spep_0 + 3, 1, 19.8 );
setRotateKey( spep_0 + 4, 1, 19.8 );
setRotateKey( spep_0 + 5, 1, 19.8 );
setRotateKey( spep_0 + 6, 1, 19.8 );
setRotateKey( spep_0 -3 + 20, 1, 19.8 );

-- ** 背景 ** --
entryFadeBg( spep_0 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--入り
SE001 = playSe( spep_0 + 0, 8 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.81, 10, 1 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 50 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
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


-- ** 敵キャラクター2 ** --
setDisp( spep_0 -3 + 54, 1, 1 );
setDisp( spep_0 -3 + 139, 1, 0 );
changeAnime( spep_0 -3 + 54, 1, 103 );
changeAnime( spep_0 -3 + 64, 1, 112 );
changeAnime( spep_0 -3 + 100, 1, 105 );

setMoveKey( spep_0 -3 + 54, 1, 664.1, -287.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 572.7, -227.3 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 481.2, -167 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 389.5, -106.5 , 0 );
setMoveKey( spep_0 -3 + 63, 1, 297.8, -46 , 0 );
setMoveKey( spep_0 -3 + 64, 1, 233.3, 22.2 , 0 );
setMoveKey( spep_0 -3 + 66, 1, 194.1, 46.3 , 0 );
setMoveKey( spep_0 -3 + 68, 1, 163.1, 65.3 , 0 );
setMoveKey( spep_0 -3 + 70, 1, 137.8, 80.9 , 0 );
setMoveKey( spep_0 -3 + 72, 1, 116.7, 93.9 , 0 );
setMoveKey( spep_0 -3 + 74, 1, 98.8, 104.9 , 0 );
setMoveKey( spep_0 -3 + 76, 1, 83.5, 114.2 , 0 );
setMoveKey( spep_0 -3 + 78, 1, 70.5, 122.3 , 0 );
setMoveKey( spep_0 -3 + 80, 1, 59.3, 129.1 , 0 );
setMoveKey( spep_0 -3 + 82, 1, 49.7, 135 , 0 );
setMoveKey( spep_0 -3 + 84, 1, 41.6, 140 , 0 );
setMoveKey( spep_0 -3 + 86, 1, 34.8, 144.2 , 0 );
setMoveKey( spep_0 -3 + 88, 1, 29, 147.7 , 0 );
setMoveKey( spep_0 -3 + 90, 1, 24.3, 150.6 , 0 );
setMoveKey( spep_0 -3 + 92, 1, 20.5, 152.9 , 0 );
setMoveKey( spep_0 -3 + 94, 1, 17.6, 154.7 , 0 );
setMoveKey( spep_0 -3 + 96, 1, 15.5, 156 , 0 );
setMoveKey( spep_0 -3 + 98, 1, 14.1, 156.9 , 0 );
setMoveKey( spep_0 -3 + 99, 1, 14.1, 156.9 , 0 );
setMoveKey( spep_0 -3 + 100, 1, 33.5, 140.1 , 0 );
setMoveKey( spep_0 -3 + 102, 1, 56.6, 164.1 , 0 );
setMoveKey( spep_0 -3 + 104, 1, 74.4, 182.7 , 0 );
setMoveKey( spep_0 -3 + 106, 1, 89, 197.8 , 0 );
setMoveKey( spep_0 -3 + 108, 1, 101.3, 210.5 , 0 );
setMoveKey( spep_0 -3 + 110, 1, 111.8, 221.5 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 121, 231 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 129, 239.3 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 136.1, 246.7 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 142.3, 253.2 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 147.9, 258.9 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 152.8, 264 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 157.2, 268.6 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 161, 272.5 , 0 );
setMoveKey( spep_0 -3 + 128, 1, 164.4, 276.1 , 0 );
setMoveKey( spep_0 -3 + 130, 1, 167.3, 279.1 , 0 );
setMoveKey( spep_0 -3 + 132, 1, 169.9, 281.8 , 0 );
setMoveKey( spep_0 -3 + 134, 1, 172.1, 284.1 , 0 );
setMoveKey( spep_0 -3 + 136, 1, 173.9, 286 , 0 );
setMoveKey( spep_0 -3 + 138, 1, 175.5, 287.6 , 0 );
setMoveKey( spep_0 -3 + 139, 1, 176.7, 288.8 , 0 );

setScaleKey( spep_0 -3 + 54, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 99, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 100, 1, 1.41, 1.41 );
setScaleKey( spep_0 -3 + 102, 1, 1.2, 1.2 );
setScaleKey( spep_0 -3 + 104, 1, 1.04, 1.04 );
setScaleKey( spep_0 -3 + 106, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 108, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 110, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 112, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 114, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 116, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 118, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 120, 1, 0.39, 0.39 );
setScaleKey( spep_0 -3 + 122, 1, 0.35, 0.35 );
setScaleKey( spep_0 -3 + 124, 1, 0.31, 0.31 );
setScaleKey( spep_0 -3 + 126, 1, 0.28, 0.28 );
setScaleKey( spep_0 -3 + 128, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 130, 1, 0.22, 0.22 );
setScaleKey( spep_0 -3 + 132, 1, 0.2, 0.2 );
setScaleKey( spep_0 -3 + 134, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 136, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 138, 1, 0.15, 0.15 );
setScaleKey( spep_0 -3 + 139, 1, 0.14, 0.14 );

setRotateKey( spep_0 -3 + 54, 1, 19.8 );
setRotateKey( spep_0 -3 + 63, 1, 19.8 );
setRotateKey( spep_0 -3 + 64, 1, -8.8 );
setRotateKey( spep_0 -3 + 99, 1, -8.8 );
setRotateKey( spep_0 -3 + 100, 1, 20 );
setRotateKey( spep_0 -3 + 102, 1, 23.5 );
setRotateKey( spep_0 -3 + 104, 1, 26.2 );
setRotateKey( spep_0 -3 + 106, 1, 28.4 );
setRotateKey( spep_0 -3 + 108, 1, 30.2 );
setRotateKey( spep_0 -3 + 110, 1, 31.8 );
setRotateKey( spep_0 -3 + 112, 1, 33.2 );
setRotateKey( spep_0 -3 + 114, 1, 34.4 );
setRotateKey( spep_0 -3 + 116, 1, 35.4 );
setRotateKey( spep_0 -3 + 118, 1, 36.4 );
setRotateKey( spep_0 -3 + 120, 1, 37.2 );
setRotateKey( spep_0 -3 + 122, 1, 38 );
setRotateKey( spep_0 -3 + 124, 1, 38.6 );
setRotateKey( spep_0 -3 + 126, 1, 39.2 );
setRotateKey( spep_0 -3 + 128, 1, 39.7 );
setRotateKey( spep_0 -3 + 130, 1, 40.1 );
setRotateKey( spep_0 -3 + 132, 1, 40.5 );
setRotateKey( spep_0 -3 + 134, 1, 40.9 );
setRotateKey( spep_0 -3 + 136, 1, 41.1 );
setRotateKey( spep_0 -3 + 138, 1, 41.4 );
setRotateKey( spep_0 -3 + 139, 1, 41.6 );

-- ** 音 ** --
--敵かわす1
SE002 = playSe( spep_0 + 56, 1151 );
setSeVolumeByWorkId( spep_0 + 56, SE002, 79 );
--敵かわす2
SE003 = playSe( spep_0 + 58, 1003 );

--サマーソルト1       
SE004 = playSe( spep_0 + 102, 1011 );
setSeVolumeByWorkId( spep_0 + 102, SE004, 112 );
stopSe( spep_0 + 124, SE004, 36 );

--サマーソルト2
SE005 = playSe( spep_0 + 102, 1123 );
setSeVolumeByWorkId( spep_0 + 102, SE005, 71 ); 

--サマーソルト3
SE006 = playSe( spep_0 + 102, 1182 );
setSeVolumeByWorkId( spep_0 + 102, SE006, 126 );
stopSe( spep_0 + 114, SE006, 14 );

--サマーソルト4
SE007 = playSe( spep_0 + 112, 1109 );
setSeVolumeByWorkId( spep_0 + 112, SE007, 73 ); 

-- ** 次の準備 ** --
spep_1 = spep_0 + 136;


--------------------------------------
--着地(56F)
--------------------------------------

-- ** エフェクト等 ** --
landing = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --着地(ef_004)
setEffMoveKey( spep_1 + 0, landing, 0, 0 , 0 );
setEffMoveKey( spep_1 + 56, landing, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, landing, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, landing, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, landing, 0 );
setEffRotateKey( spep_1 + 56, landing, 0 );
setEffAlphaKey( spep_1 + 0, landing, 255 );
setEffAlphaKey( spep_1 + 56, landing, 255 );

-- ** 音 ** --
--着地1
SE008 = playSe( spep_0 +126 + 0, 44 );
setSeVolumeByWorkId( spep_0 +126 + 0, SE008, 75 );
stopSe( spep_0 +136 + 4, SE008, 18 );
setTimeStretch( SE008, 0.67, 10, 1 );

--着地2
SE009 = playSe( spep_0 +136 + 16, 1106 );
setSeVolumeByWorkId( spep_1 + 16, SE009, 158 );             

--着地3
SE010 = playSe( spep_1 + 24, 1108 );
setSeVolumeByWorkId( spep_1 + 24, SE010, 200 );             

-- ** 背景 ** --
entryFadeBg( spep_1 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ホワイトフェード ** --
entryFade( spep_1 + 0, 0, 1, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 56;

--------------------------------------
--ドーナツを放つ(96F)
--------------------------------------

-- ** エフェクト等 ** --
dshot = entryEffectLife( spep_2 + 0, SP_05r, 96, 0x100, -1, 0, 0, 0 );  --ドーナツを放つ(ef_005)
setEffMoveKey( spep_2 + 0, dshot, 0, 0 , 0 );
setEffMoveKey( spep_2 + 96, dshot, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, dshot, -1.0, 1.0 );
setEffScaleKey( spep_2 + 96, dshot, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dshot, 0 );
setEffRotateKey( spep_2 + 96, dshot, 0 );
setEffAlphaKey( spep_2 + 0, dshot, 255 );
setEffAlphaKey( spep_2 + 96, dshot, 255 );

-- ** 音 ** --
--腕ひく1
SE011 = playSe( spep_2 + 2, 1190 );
setSeVolumeByWorkId( spep_2 + 2, SE011, 0 );
setSeVolumeByWorkId( spep_2 + 3, SE011, 39 );
setSeVolumeByWorkId( spep_2 + 4, SE011, 78 );
stopSe( spep_2 + 18, SE011, 20 );
setStartTimeMs( SE011,  100 );      

--腕ひく2
SE012 = playSe( spep_1 + 50, 1233 );
setSeVolumeByWorkId( spep_1 + 50, SE012, 89 );
setPitch( spep_1 + 50, SE012, -500 );
setTimeStretch( SE012, 0.57, 10, 1 );  

--気弾発射１_1
SE013 = playSe( spep_2 + 34, 1026 );
setSeVolumeByWorkId( spep_2 + 34, SE013, 0 );
setSeVolumeByWorkId( spep_2 + 35, SE013, 25 );
setSeVolumeByWorkId( spep_2 + 36, SE013, 50 );
setSeVolumeByWorkId( spep_2 + 37, SE013, 75 );
setSeVolumeByWorkId( spep_2 + 38, SE013, 100 );
setStartTimeMs( SE013,  300 );

--気弾発射１_2
SE014 = playSe( spep_2 + 32, 1028 );

--気弾発射１_3
SE015 = playSe( spep_2 + 34, 1008 );
setSeVolumeByWorkId( spep_2 + 34, SE015, 77 );

--気弾発射２_1
SE016 = playSe( spep_2 + 54, 1026 );
setSeVolumeByWorkId( spep_2 + 54, SE016, 0 );
setSeVolumeByWorkId( spep_2 + 55, SE016, 25 );
setSeVolumeByWorkId( spep_2 + 56, SE016, 50 );
setSeVolumeByWorkId( spep_2 + 57, SE016, 75 );
setSeVolumeByWorkId( spep_2 + 58, SE016, 100 );
setStartTimeMs( SE016,  300 );

--気弾発射２_2
SE017 = playSe( spep_2 + 54, 1028 );

--気弾発射２_3
SE018 = playSe( spep_2 + 56, 1008 );
setSeVolumeByWorkId( spep_2 + 66, SE018, 77 );

--気弾発射３_1
SE019 = playSe( spep_2 +76 + 2, 1026 );
setSeVolumeByWorkId( spep_2 +76 + 2, SE019, 0 );
setSeVolumeByWorkId( spep_2 +76 + 3, SE019, 20 );
setSeVolumeByWorkId( spep_2 +76 + 4, SE019, 40 );
setSeVolumeByWorkId( spep_2 +76 + 5, SE019, 60 );
setSeVolumeByWorkId( spep_2 +76 + 6, SE019, 80 );
setSeVolumeByWorkId( spep_2 +76 + 7, SE019, 100 );
setStartTimeMs( SE019,  300 );

--気弾発射３_2
SE020 = playSe( spep_2 +76 + 2, 1028 );

--気弾発射３_3
SE021 = playSe( spep_2 +78 + 4, 1008 );
setSeVolumeByWorkId( spep_2 +78 + 4, SE021, 78 );

-- ** 背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 96;

--------------------------------------
--ドーナツが敵の周りに迫る(66F)
--------------------------------------

-- ** エフェクト等 ** --
dcircle_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );  --ドーナツが敵の周りに迫る　前(ef_006)
setEffMoveKey( spep_3 + 0, dcircle_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, dcircle_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, dcircle_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, dcircle_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dcircle_f, 0 );
setEffRotateKey( spep_3 + 66, dcircle_f, 0 );
setEffAlphaKey( spep_3 + 0, dcircle_f, 255 );
setEffAlphaKey( spep_3 + 66, dcircle_f, 255 );

-- ** エフェクト等 ** --
dcircle_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --ドーナツが敵の周りに迫る　後  ef_007
setEffMoveKey( spep_3 + 0, dcircle_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 66, dcircle_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, dcircle_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, dcircle_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, dcircle_b, 0 );
setEffRotateKey( spep_3 + 66, dcircle_b, 0 );
setEffAlphaKey( spep_3 + 0, dcircle_b, 255 );
setEffAlphaKey( spep_3 + 66, dcircle_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 -3 + 69, 1, 0 );
changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, -175.8, -173.1 , 0 );
setMoveKey( spep_3 + 1, 1, -110.2, -106 , 0 );
setMoveKey( spep_3 + 2, 1, -85.8, -81.5 , 0 );
setMoveKey( spep_3 + 3, 1, -85.8, -81.5 , 0 );
setMoveKey( spep_3 + 4, 1, -85.8, -81.5 , 0 );
setMoveKey( spep_3 + 5, 1, -85.8, -81.5 , 0 );
setMoveKey( spep_3 + 6, 1, -68.3, -64.1 , 0 );
setMoveKey( spep_3 + 8, 1, -54.3, -50.5 , 0 );
setMoveKey( spep_3 + 10, 1, -42.7, -39.3 , 0 );
setMoveKey( spep_3 + 12, 1, -32.8, -29.8 , 0 );
setMoveKey( spep_3 + 14, 1, -24.3, -21.8 , 0 );
setMoveKey( spep_3 + 16, 1, -16.8, -14.8 , 0 );
setMoveKey( spep_3 + 18, 1, -10.3, -8.9 , 0 );
setMoveKey( spep_3 + 20, 1, -4.7, -3.9 , 0 );
setMoveKey( spep_3 + 22, 1, 0, 0.1 , 0 );
setMoveKey( spep_3 + 24, 1, 1, 0.9 , 0 );
setMoveKey( spep_3 + 26, 1, 2, 1.8 , 0 );
setMoveKey( spep_3 + 28, 1, 3, 2.6 , 0 );
setMoveKey( spep_3 + 30, 1, 4, 3.4 , 0 );
setMoveKey( spep_3 + 32, 1, 5, 4.3 , 0 );
setMoveKey( spep_3 + 34, 1, 6, 5.1 , 0 );
setMoveKey( spep_3 + 36, 1, 7, 6 , 0 );
setMoveKey( spep_3 + 38, 1, 8, 6.8 , 0 );
setMoveKey( spep_3 + 40, 1, 9, 7.6 , 0 );
setMoveKey( spep_3 + 42, 1, 10, 8.5 , 0 );
setMoveKey( spep_3 + 44, 1, 11, 9.3 , 0 );
setMoveKey( spep_3 + 46, 1, 12, 10.2 , 0 );
setMoveKey( spep_3 + 48, 1, 13, 11 , 0 );
setMoveKey( spep_3 + 50, 1, 14, 11.8 , 0 );
setMoveKey( spep_3 + 52, 1, 15, 12.7 , 0 );
setMoveKey( spep_3 + 54, 1, 16, 13.5 , 0 );
setMoveKey( spep_3 + 56, 1, 17, 14.4 , 0 );
setMoveKey( spep_3 + 58, 1, 18, 15.2 , 0 );
setMoveKey( spep_3 + 60, 1, 19, 16 , 0 );
setMoveKey( spep_3 + 62, 1, 20, 16.9 , 0 );
setMoveKey( spep_3 + 64, 1, 21, 17.7 , 0 );
setMoveKey( spep_3 + 66, 1, 22, 18.6 , 0 );
setMoveKey( spep_3 + 68, 1, 23, 19.4 , 0 );
setMoveKey( spep_3 -3 + 69, 1, 23, 19.4 , 0 );

setScaleKey( spep_3 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 1, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 2, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 3, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 4, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 5, 1, 1.25, 1.25 );
setScaleKey( spep_3 + 6, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 69, 1, 1.25, 1.25 );

setRotateKey( spep_3 + 0, 1, -30 );
setRotateKey( spep_3 + 1, 1, -30 );
setRotateKey( spep_3 + 2, 1, -30 );
setRotateKey( spep_3 + 3, 1, -30 );
setRotateKey( spep_3 + 4, 1, -30 );
setRotateKey( spep_3 + 5, 1, -30 );
setRotateKey( spep_3 + 6, 1, -30 );
setRotateKey( spep_3 -3 + 69, 1, -30 );

-- ** 音 ** --
--輪っか敵を包み込む1
SE022 = playSe( spep_2 +86 + 6, 1239 );
stopSe( spep_3 +66 + 22, SE022, 4 );

--輪っか敵を包み込む2
SE023 = playSe( spep_2 +86 + 6, 1240 );
stopSe( spep_3 +66 +24 + 0, SE023, 8 );
-- ** 背景 ** --
entryFadeBg( spep_3 + 0, 0, 66, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 66;

--------------------------------------
--手を握る(54F)
--------------------------------------
-- ** エフェクト等 ** --
hhold = entryEffectLife( spep_4 + 0, SP_08, 53, 0x100, -1, 0, 0, 0 );  --手を握る   (ef_008)
setEffMoveKey( spep_4 + 0, hhold, 0, 0 , 0 );
setEffMoveKey( spep_4 + 53, hhold, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, hhold, 1.0, 1.0 );
setEffScaleKey( spep_4 + 53, hhold, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, hhold, 0 );
setEffRotateKey( spep_4 + 53, hhold, 0 );
setEffAlphaKey( spep_4 + 0, hhold, 255 );
setEffAlphaKey( spep_4 + 53, hhold, 255 );

-- ** 音 ** --
--手握る
SE024 = playSe( spep_4 + 20, 1003 );
setSeVolumeByWorkId( spep_4 + 20, SE024, 89 );

--敵しめつける1
SE025 = playSe( spep_4 +44 + 6, 1195 );
setSeVolumeByWorkId( spep_4 +40 + 6, SE025, 0 );
setSeVolumeByWorkId( spep_4 +40 + 7, SE025, 50 );
setSeVolumeByWorkId( spep_4 +40 + 8, SE025, 100 );
setSeVolumeByWorkId( spep_4 +40 + 9, SE025, 150 );
setSeVolumeByWorkId( spep_4 +40 + 10, SE025, 200 );
setStartTimeMs( SE025,  133 );
setTimeStretch( SE025, 0.51, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_4 + 0, 0, 54, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 54;

--------------------------------------
--ドーナツが敵を締め付ける(56F)
--------------------------------------

-- ** エフェクト等 ** --
dshrink_f = entryEffectLife( spep_5 + 0, SP_09r, 55, 0x100, -1, 0, 0, 0 );  --ドーナツが敵を締め付ける　前(ef_009)
setEffMoveKey( spep_5 + 0, dshrink_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 55, dshrink_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, dshrink_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 55, dshrink_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dshrink_f, 0 );
setEffRotateKey( spep_5 + 55, dshrink_f, 0 );
setEffAlphaKey( spep_5 + 0, dshrink_f, 255 );
setEffAlphaKey( spep_5 + 55, dshrink_f, 255 );

dshrink_b = entryEffect( spep_5 + 0, SP_10, 0x80, -1, 0, 0, 0 );  --ドーナツが敵を締め付ける　後(ef_010)
setEffMoveKey( spep_5 + 0, dshrink_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, dshrink_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, dshrink_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, dshrink_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dshrink_b, 0 );
setEffRotateKey( spep_5 + 56, dshrink_b, 0 );
setEffAlphaKey( spep_5 + 0, dshrink_b, 255 );
setEffAlphaKey( spep_5 + 56, dshrink_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 56, 1, 0 );
changeAnime( spep_5 + 0, 1, 106 );

setMoveKey( spep_5 + 0, 1, -1.9, 1.9 , 0 );
setMoveKey( spep_5 -3 + 4, 1, -1.9, 1.9 , 0 );
setMoveKey( spep_5 -3 + 5, 1, -1.9, 1.9 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -2.2, 2.2 , 0 );
setMoveKey( spep_5 -3 + 7, 1, -2.2, 2.2 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 5.1, 8.7 , 0 );
setMoveKey( spep_5 -3 + 9, 1, 5.1, 8.7 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -11.8, -0.9 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 4.6, 8.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -13.4, 2.5 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 1.5, 8.8 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -7.7, 2.9 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -0.8, 7.5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -7.3, 3.8 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -1.7, 6.4 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -5.4, 4.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -4.1, 5.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -2.8, 5.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -3.9, 4.9 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -5.1, 4.1 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -3.9, 4.9 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -2.7, 5.7 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -4.1, 5.1 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -5.6, 4.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -4.4, 5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -3.2, 5.5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -2.7, 6 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -2.2, 6.5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -3.2, 7 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -4.3, 7.4 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -4.5, 5.7 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -4.8, 3.9 , 0 );
--setMoveKey( spep_5 -3 + 59, 1, -4.8, 3.9 , 0 );
setMoveKey( spep_5 -3 + 59, 1, -163, 250.7 , 0 );

setScaleKey( spep_5 + 0, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 4, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 5, 1, 1.56, 1.56 );
setScaleKey( spep_5 -3 + 6, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 7, 1, 1.76, 1.76 );
setScaleKey( spep_5 -3 + 8, 1, 1.96, 1.96 );
setScaleKey( spep_5 -3 + 9, 1, 1.96, 1.96 );
setScaleKey( spep_5 -3 + 10, 1, 2.15, 2.15 );
setScaleKey( spep_5 -3 + 12, 1, 2.09, 2.09 );
setScaleKey( spep_5 -3 + 14, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 22, 1, 2.03, 2.03 );
setScaleKey( spep_5 -3 + 24, 1, 2.04, 2.04 );
setScaleKey( spep_5 -3 + 42, 1, 2.04, 2.04 );
setScaleKey( spep_5 -3 + 44, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 58, 1, 2.05, 2.05 );
setScaleKey( spep_5 -3 + 59, 1, 0.63, 0.63 );

setRotateKey( spep_5 + 0, 1, -32 );
setRotateKey( spep_5 + 1, 1, -32 );
setRotateKey( spep_5 + 2, 1, -32 );
setRotateKey( spep_5 + 3, 1, -32 );
setRotateKey( spep_5 + 4, 1, -32 );
setRotateKey( spep_5 + 5, 1, -32 );
setRotateKey( spep_5 + 6, 1, -32 );
setRotateKey( spep_5 -3 + 58, 1, -32 );
setRotateKey( spep_5 -3 + 59, 1, -59 );

-- ** 音 ** --
--敵しめつける2
SE026 = playSe( spep_5 + 16, 1153 );
setSeVolumeByWorkId( spep_5 + 16, SE026, 46 );
setTimeStretch( SE026, 0.83, 10, 1 );

--敵しめつける3
SE027 = playSe( spep_5 + 16, 1060 );
setSeVolumeByWorkId( spep_5 + 16, SE027, 61 );

-- ** 背景 ** --
entryFadeBg( spep_5 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;


--------------------------------------
--上空に移動しかめはめ波を溜め始める(96F)
--------------------------------------
-- ** エフェクト等 ** --
kstart_f = entryEffect( spep_6 + 0, SP_11r, 0x100, -1, 0, 0, 0 );  --上空に移動しかめはめ波を溜め始める　前(ef_011)
setEffMoveKey( spep_6 + 0, kstart_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 96, kstart_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kstart_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 96, kstart_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kstart_f, 0 );
setEffRotateKey( spep_6 + 96, kstart_f, 0 );
setEffAlphaKey( spep_6 + 0, kstart_f, 255 );
setEffAlphaKey( spep_6 + 96, kstart_f, 255 );

-- ** エフェクト等 ** --
kstart_b = entryEffect( spep_6 + 0, SP_13, 0x80, -1, 0, 0, 0 );  --上空に移動しかめはめ波を溜め始める　後ろ(ef_013)
setEffMoveKey( spep_6 + 0, kstart_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 96, kstart_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kstart_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, kstart_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kstart_b, 0 );
setEffRotateKey( spep_6 + 96, kstart_b, 0 );
setEffAlphaKey( spep_6 + 0, kstart_b, 255 );
setEffAlphaKey( spep_6 + 96, kstart_b, 255 );

-- ** エフェクト等 ** --
kstart_e = entryEffect( spep_6 + 0, SP_12, 0x80, -1, 0, 0, 0 );  --上空に移動しかめはめ波を溜め始める　後ろ(ef_012)
setEffMoveKey( spep_6 + 0, kstart_e, 0, 0 , 0 );
setEffMoveKey( spep_6 + 96, kstart_e, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kstart_e, 1.0, 1.0 );
setEffScaleKey( spep_6 + 96, kstart_e, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kstart_e, 0 );
setEffRotateKey( spep_6 + 96, kstart_e, 0 );
setEffAlphaKey( spep_6 + 0, kstart_e, 255 );
setEffAlphaKey( spep_6 + 96, kstart_e, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 + 96, 1, 0 );
--changeAnime( spep_6 + 0, 1, 106 );

--setMoveKey( spep_6 + 0, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 0, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 1, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 2, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 3, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 4, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 5, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 6, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 30, 1, -163, 250.7 , 0 );
setMoveKey( spep_6 + 31, 1, -161.7, 250.8 , 0 );
setMoveKey( spep_6 + 32, 1, -161.7, 250.8 , 0 );
setMoveKey( spep_6 + 33, 1, -159.6, 251.1 , 0 );
setMoveKey( spep_6 + 34, 1, -159.6, 251.1 , 0 );
setMoveKey( spep_6 + 35, 1, -156.5, 251.6 , 0 );
setMoveKey( spep_6 + 36, 1, -156.5, 251.6 , 0 );
setMoveKey( spep_6 + 37, 1, -152.6, 252.3 , 0 );
setMoveKey( spep_6 + 38, 1, -152.6, 252.3 , 0 );
setMoveKey( spep_6 + 39, 1, -147.6, 253.3 , 0 );
setMoveKey( spep_6 + 40, 1, -147.6, 253.3 , 0 );
setMoveKey( spep_6 + 41, 1, -141.7, 254.5 , 0 );
setMoveKey( spep_6 + 42, 1, -141.7, 254.5 , 0 );
setMoveKey( spep_6 + 43, 1, -134.8, 256 , 0 );
setMoveKey( spep_6 + 44, 1, -134.8, 256 , 0 );
setMoveKey( spep_6 + 45, 1, -126.7, 257.8 , 0 );
setMoveKey( spep_6 + 46, 1, -126.7, 257.8 , 0 );
setMoveKey( spep_6 + 47, 1, -117.5, 259.8 , 0 );
setMoveKey( spep_6 + 48, 1, -117.5, 259.8 , 0 );
setMoveKey( spep_6 + 49, 1, -107.1, 262.1 , 0 );
setMoveKey( spep_6 + 50, 1, -107.1, 262.1 , 0 );
setMoveKey( spep_6 + 51, 1, -95.4, 264.8 , 0 );
setMoveKey( spep_6 + 52, 1, -95.4, 264.8 , 0 );
setMoveKey( spep_6 + 53, 1, -82.3, 267.8 , 0 );
setMoveKey( spep_6 + 54, 1, -82.3, 267.8 , 0 );
setMoveKey( spep_6 + 55, 1, -67.7, 271.1 , 0 );
setMoveKey( spep_6 + 56, 1, -67.7, 271.1 , 0 );
setMoveKey( spep_6 + 57, 1, -51.5, 274.9 , 0 );
setMoveKey( spep_6 + 58, 1, -51.5, 274.9 , 0 );
setMoveKey( spep_6 + 59, 1, -33.6, 279 , 0 );
setMoveKey( spep_6 + 60, 1, -33.6, 279 , 0 );
setMoveKey( spep_6 + 61, 1, -13.7, 283.7 , 0 );
setMoveKey( spep_6 + 62, 1, -13.7, 283.7 , 0 );
setMoveKey( spep_6 + 63, 1, 8.3, 288.8 , 0 );
setMoveKey( spep_6 + 64, 1, 8.3, 288.8 , 0 );
setMoveKey( spep_6 + 65, 1, 32.9, 294.6 , 0 );
setMoveKey( spep_6 + 66, 1, 32.9, 294.6 , 0 );
setMoveKey( spep_6 + 67, 1, 60.5, 301.2 , 0 );
setMoveKey( spep_6 + 68, 1, 60.5, 301.2 , 0 );
setMoveKey( spep_6 + 69, 1, 92, 308.7 , 0 );
setMoveKey( spep_6 + 70, 1, 92, 308.7 , 0 );
setMoveKey( spep_6 + 71, 1, 129.8, 317.7 , 0 );
setMoveKey( spep_6 + 72, 1, 129.8, 317.7 , 0 );
setMoveKey( spep_6 + 73, 1, 132.7, 318.2 , 0 );
setMoveKey( spep_6 + 74, 1, 132.7, 318.2 , 0 );
setMoveKey( spep_6 + 75, 1, 135.5, 318.6 , 0 );
setMoveKey( spep_6 + 76, 1, 135.5, 318.6 , 0 );
setMoveKey( spep_6 + 77, 1, 138.4, 319.1 , 0 );
setMoveKey( spep_6 + 78, 1, 138.4, 319.1 , 0 );
setMoveKey( spep_6 + 79, 1, 141.2, 319.5 , 0 );
setMoveKey( spep_6 + 80, 1, 141.2, 319.5 , 0 );
setMoveKey( spep_6 + 81, 1, 144.1, 320 , 0 );
setMoveKey( spep_6 + 82, 1, 144.1, 320 , 0 );
setMoveKey( spep_6 + 83, 1, 146.9, 320.4 , 0 );
setMoveKey( spep_6 + 84, 1, 146.9, 320.4 , 0 );
setMoveKey( spep_6 + 85, 1, 149.8, 320.9 , 0 );
setMoveKey( spep_6 + 86, 1, 149.8, 320.9 , 0 );
setMoveKey( spep_6 + 87, 1, 152.6, 321.3 , 0 );
setMoveKey( spep_6 + 88, 1, 152.6, 321.3 , 0 );
setMoveKey( spep_6 + 89, 1, 155.5, 321.8 , 0 );
setMoveKey( spep_6 + 90, 1, 155.5, 321.8 , 0 );
setMoveKey( spep_6 + 91, 1, 158.3, 322.2 , 0 );
setMoveKey( spep_6 + 92, 1, 158.3, 322.2 , 0 );
setMoveKey( spep_6 + 93, 1, 161.2, 322.7 , 0 );
setMoveKey( spep_6 + 94, 1, 161.2, 322.7 , 0 );
setMoveKey( spep_6 + 95, 1, 164, 323.1 , 0 );
setMoveKey( spep_6 + 96, 1, 164, 323.1 , 0 );

--setScaleKey( spep_6 + 0, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 1, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 2, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 3, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 4, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 5, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 6, 1, 0.63, 0.63 );
setScaleKey( spep_6 + 96, 1, 0.63, 0.63 );


--setRotateKey( spep_6 + 0, 1, -59 );
setRotateKey( spep_6 + 1, 1, -59 );
setRotateKey( spep_6 + 2, 1, -59 );
setRotateKey( spep_6 + 3, 1, -59 );
setRotateKey( spep_6 + 4, 1, -59 );
setRotateKey( spep_6 + 5, 1, -59 );
setRotateKey( spep_6 + 6, 1, -59 );
setRotateKey( spep_6 + 96, 1, -59 );

-- ** 音 ** --
-- ** 音 ** --
--下から現れる
SE030 = playSe( spep_6 + 2, 44 );
setTimeStretch( SE030, 0.67, 10, 1 );

--環境音
SE029 = playSe( spep_6 + 2, 1269 );
setSeVolumeByWorkId( spep_6 + 2, SE029, 20 );
stopSe( spep_6 +96 +86 + 14, SE029, 0 );

--カメラパン
SE028 = playSe( spep_6 + 36, 1278 );
setSeVolumeByWorkId( spep_6 + 36, SE028, 0 );
setSeVolumeByWorkId( spep_6 + 38, SE028, 6 );
setSeVolumeByWorkId( spep_6 + 30, SE028, 12 );
setSeVolumeByWorkId( spep_6 + 32, SE028, 18 );
setSeVolumeByWorkId( spep_6 + 34, SE028, 24 );
setSeVolumeByWorkId( spep_6 + 36, SE028, 28 );
setSeVolumeByWorkId( spep_6 + 38, SE028, 32 );
stopSe( spep_6 +66 + 14, SE028, 73 );
setStartTimeMs( SE028,  1233 );

--かめはめ波溜め1
SE031 = playSe( spep_6 +56 + 2, 1131 );
setSeVolumeByWorkId( spep_6 +56 + 2, SE031, 69 );

--かめはめ波溜め2
SE032 = playSe( spep_6 +56 + 12, 1132 );
setSeVolumeByWorkId( spep_6 +66 + 12, SE032, 158 );
stopSe( spep_6 +56 +86 + 44, SE032, 0 );

-- ** 背景 ** --
entryFadeBg( spep_6 + 0, 0, 96, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 96;

--------------------------------------
--かめはめ波を溜める　アップ絵(86F)
--------------------------------------
-- ** エフェクト等 ** --
tame = entryEffectLife( spep_7 + 0, SP_14, 86, 0x100, -1, 0, 0, 0 );  --かめはめ波を溜める　アップ絵(ef_014)
setEffMoveKey( spep_7 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_7 + 86, tame, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_7 + 86, tame, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, tame, 0 );
setEffRotateKey( spep_7 + 86, tame, 0 );
setEffAlphaKey( spep_7 + 0, tame, 255 );
setEffAlphaKey( spep_7 + 86, tame, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_7 + 5,  906, 81, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_7 + 5, shuchusen1, 81, 25 );
setEffMoveKey(   spep_7 + 5, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_7 + 86, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_7 + 5, shuchusen1, 1.6, 1.6 );
setEffScaleKey(  spep_7 + 86, shuchusen1, 1.6, 1.6 );
setEffRotateKey( spep_7 + 5, shuchusen1, 0 );
setEffRotateKey( spep_7 + 86, shuchusen1, 0 );
setEffAlphaKey(  spep_7 + 5, shuchusen1, 255 );
setEffAlphaKey(  spep_7 + 86, shuchusen1, 255 );

-- ** 書き文字エントリー ** --
spep_x = spep_7 + 0;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50 +20, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );

setEffMoveKey( spep_x + 16, ctgogo, 50 -100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50 -100, 515.5 , 0 );

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
--顔カットイン
SE033 = playSe( spep_7 + 6, 1018 );       

-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_7 + 78, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_8 = spep_7 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_8 + 0, 1507, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );
-- ** 音 ** --
playSe( spep_8 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;


--------------------------------------
--かめはめ波発射(84F)
--------------------------------------
-- ** エフェクト等 ** --
hassya = entryEffectLife( spep_9 + 0, SP_15r, 83, 0x100, -1, 0, 0, 0 );  --かめはめ波発射(ef_015)
setEffMoveKey( spep_9 + 0, hassya, 0, 0 , 0 );
setEffMoveKey( spep_9 + 83, hassya, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hassya, -1.0, 1.0 );
setEffScaleKey( spep_9 + 83, hassya, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hassya, 0 );
setEffRotateKey( spep_9 + 83, hassya, 0 );
setEffAlphaKey( spep_9 + 0, hassya, 255 );
setEffAlphaKey( spep_9 + 83, hassya, 255 );

-- ** 音 ** --
--かめはめ波発射1
SE035 = playSe( spep_9 + 0, 1027 );
setSeVolumeByWorkId( spep_9 + 0, SE035, 60 );              

--かめはめ波発射2
SE036 = playSe( spep_9 + 0, 1022 );

--かめはめ波発射3
SE037 = playSe( spep_9 + 0, 1213 );
setSeVolumeByWorkId( spep_9 + 0, SE037, 77 );
stopSe( spep_9 +84 +56 + 18, SE037, 21 );

--かめはめ波発射4
SE038 = playSe( spep_9 + 10, 1124 );
setSeVolumeByWorkId( spep_9 + 10, SE038, 53 );
stopSe( spep_9 +84 +56 + 18, SE038, 16 );
setPitch( spep_9 + 10, SE038, -300 );
setTimeStretch( SE038, 0.8, 10, 1 );

-- ** 背景 ** --
entryFadeBg( spep_9 + 0, 0, 84, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 84;

--------------------------------------
--かめはめ波が敵に迫る(56F)
--------------------------------------
-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_10 + 0, SP_16, 56, 0x100, -1, 0, 0, 0 );  --かめはめ波が敵に迫る　前(ef_016)
setEffMoveKey( spep_10 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, shot_f, 0 );
setEffRotateKey( spep_10 + 56, shot_f, 0 );
setEffAlphaKey( spep_10 + 0, shot_f, 255 );
setEffAlphaKey( spep_10 + 56, shot_f, 255 );

-- ** エフェクト等 ** --
shot_b = entryEffectLife( spep_10 + 0, SP_17, 56, 0x80, -1, 0, 0, 0 );  --かめはめ波が敵に迫る　後(ef_017)
setEffMoveKey( spep_10 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_10 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_10 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, shot_b, 0 );
setEffRotateKey( spep_10 + 56, shot_b, 0 );
setEffAlphaKey( spep_10 + 0, shot_b, 255 );
setEffAlphaKey( spep_10 + 56, shot_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_10 + 0, 1, 1 );
setDisp( spep_10 -3 + 59, 1, 0 );
changeAnime( spep_10 -3 + 0, 1, 106 );

setMoveKey( spep_10 + 0, 1, 169.3, 28.1 , 0 );
setMoveKey( spep_10 + 1, 1, 171, 29.1 , 0 );
setMoveKey( spep_10 + 2, 1, 172.1, 30.1 , 0 );
setMoveKey( spep_10 -3 + 6, 1, 168.6, 28 , 0 );
setMoveKey( spep_10 -3 + 7, 1, 168.6, 28 , 0 );
setMoveKey( spep_10 -3 + 8, 1, 164.7, 26 , 0 );
setMoveKey( spep_10 -3 + 9, 1, 164.7, 26 , 0 );
setMoveKey( spep_10 -3 + 10, 1, 164.2, 23.9 , 0 );
setMoveKey( spep_10 -3 + 12, 1, 163.4, 21.9 , 0 );
setMoveKey( spep_10 -3 + 14, 1, 158.1, 23.8 , 0 );
setMoveKey( spep_10 -3 + 16, 1, 152.4, 25.7 , 0 );
setMoveKey( spep_10 -3 + 18, 1, 150.3, 27.6 , 0 );
setMoveKey( spep_10 -3 + 20, 1, 147.9, 29.5 , 0 );
setMoveKey( spep_10 -3 + 22, 1, 145.2, 27.4 , 0 );
setMoveKey( spep_10 -3 + 24, 1, 142.2, 25.3 , 0 );
setMoveKey( spep_10 -3 + 26, 1, 134.8, 27.1 , 0 );
setMoveKey( spep_10 -3 + 28, 1, 127.1, 29 , 0 );
setMoveKey( spep_10 -3 + 30, 1, 120.2, 17.9 , 0 );
setMoveKey( spep_10 -3 + 32, 1, 105, 18.7 , 0 );
setMoveKey( spep_10 -3 + 34, 1, 101.5, 31.6 , 0 );
setMoveKey( spep_10 -3 + 36, 1, 101.8, 28.4 , 0 );
setMoveKey( spep_10 -3 + 38, 1, 104.4, 38 , 0 );
setMoveKey( spep_10 -3 + 40, 1, 105.8, 28.7 , 0 );
setMoveKey( spep_10 -3 + 42, 1, 83.8, 16.2 , 0 );
setMoveKey( spep_10 -3 + 44, 1, 67.2, 27.2 , 0 );
setMoveKey( spep_10 -3 + 46, 1, 63.4, 32.8 , 0 );
setMoveKey( spep_10 -3 + 48, 1, 54.7, 31.4 , 0 );
setMoveKey( spep_10 -3 + 50, 1, 37.8, 22 , 0 );
setMoveKey( spep_10 -3 + 52, 1, 36.5, 28.5 , 0 );
setMoveKey( spep_10 -3 + 54, 1, 35.1, 21.1 , 0 );
setMoveKey( spep_10 -3 + 56, 1, 13.4, 30.7 , 0 );
setMoveKey( spep_10 -3 + 58, 1, 7.2, 24.2 , 0 );
setMoveKey( spep_10 -3 + 59, 1, 7.2, 24.2 , 0 );

setScaleKey( spep_10 + 0, 1, 0.97, 0.97 );
setScaleKey( spep_10 + 1, 1, 0.98, 0.98 );
setScaleKey( spep_10 + 2, 1, 0.99, 0.99 );
setScaleKey( spep_10 -3 + 6, 1, 1, 1 );
setScaleKey( spep_10 -3 + 7, 1, 1, 1 );
setScaleKey( spep_10 -3 + 8, 1, 1.03, 1.02 );
setScaleKey( spep_10 -3 + 9, 1, 1.03, 1.02 );
setScaleKey( spep_10 -3 + 10, 1, 1.06, 1.05 );
setScaleKey( spep_10 -3 + 12, 1, 1.09, 1.09 );
setScaleKey( spep_10 -3 + 14, 1, 1.13, 1.13 );
setScaleKey( spep_10 -3 + 16, 1, 1.18, 1.17 );
setScaleKey( spep_10 -3 + 18, 1, 1.23, 1.22 );
setScaleKey( spep_10 -3 + 20, 1, 1.28, 1.27 );
setScaleKey( spep_10 -3 + 22, 1, 1.34, 1.33 );
setScaleKey( spep_10 -3 + 24, 1, 1.4, 1.39 );
setScaleKey( spep_10 -3 + 26, 1, 1.47, 1.46 );
setScaleKey( spep_10 -3 + 28, 1, 1.54, 1.53 );
setScaleKey( spep_10 -3 + 30, 1, 1.62, 1.6 );
setScaleKey( spep_10 -3 + 32, 1, 1.69, 1.68 );
setScaleKey( spep_10 -3 + 34, 1, 1.78, 1.76 );
setScaleKey( spep_10 -3 + 36, 1, 1.86, 1.85 );
setScaleKey( spep_10 -3 + 38, 1, 1.95, 1.94 );
setScaleKey( spep_10 -3 + 40, 1, 2.05, 2.03 );
setScaleKey( spep_10 -3 + 42, 1, 2.14, 2.13 );
setScaleKey( spep_10 -3 + 44, 1, 2.24, 2.23 );
setScaleKey( spep_10 -3 + 46, 1, 2.34, 2.33 );
setScaleKey( spep_10 -3 + 48, 1, 2.45, 2.44 );
setScaleKey( spep_10 -3 + 50, 1, 2.56, 2.55 );
setScaleKey( spep_10 -3 + 52, 1, 2.67, 2.67 );
setScaleKey( spep_10 -3 + 54, 1, 2.79, 2.79 );
setScaleKey( spep_10 -3 + 56, 1, 2.91, 2.91 );
setScaleKey( spep_10 -3 + 58, 1, 3.04, 3.04 );
setScaleKey( spep_10 -3 + 59, 1, 3.04, 3.04 );

setRotateKey( spep_10 + 0, 1, -55 );
setRotateKey( spep_10 + 1, 1, -55 );
setRotateKey( spep_10 + 2, 1, -55 );
setRotateKey( spep_10 + 3, 1, -55 );
setRotateKey( spep_10 + 4, 1, -55 );
setRotateKey( spep_10 + 5, 1, -55 );
setRotateKey( spep_10 + 6, 1, -55 );
setRotateKey( spep_10 -3 + 59, 1, -55 );

-- ** 音 ** --
--かめはめ波弾道
SE039 = playSe( spep_9 +46 + 6, 1215 );
setSeVolumeByWorkId( spep_9 +46 + 6, SE039, 63 );
stopSe( spep_9 +46 +56 + 48, SE039, 32 );

--敵飲み込む
SE040 = playSe( spep_10 + 10, 1021 );

-- ** 背景 ** --
entryFadeBg( spep_10 + 0, 0, 56, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 56;

--------------------------------------
--爆発(146F)
--------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_11 + 0, SP_18, 0x100, -1, 0, 0, 0 );  --爆発(ef_018)
setEffMoveKey( spep_11 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_11 + 146, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_11 + 146, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish_f, 0 );
setEffRotateKey( spep_11 + 146, finish_f, 0 );
setEffAlphaKey( spep_11 + 0, finish_f, 255 );
setEffAlphaKey( spep_11 + 146, finish_f, 255 );

-- ** 音 ** --
--敵お星様に
SE041 = playSe( spep_11 + 4, 1146 );
setSeVolumeByWorkId( spep_11 + 4, SE041, 78 );
stopSe( spep_11 + 48, SE041, 25 );

--ラスト爆発1
SE042 = playSe( spep_11 + 42, 1159 );
setSeVolumeByWorkId( spep_11 + 42, SE042, 69 );

--ラスト爆発2
SE043 = playSe( spep_11 + 42, 1188 );
setSeVolumeByWorkId( spep_11 + 42, SE043, 61 );

--ラスト爆発3
SE044 = playSe( spep_11 + 44, 1023 );
setSeVolumeByWorkId( spep_11 + 44, SE044, 124 );

--ラスト爆発4
SE045 = playSe( spep_11 + 44, 1044 );
setSeVolumeByWorkId( spep_11 + 44, SE045, 47 );

--ラスト爆発5
SE046 = playSe( spep_11 + 44, 1024 );

-- ** 背景 ** --
entryFadeBg( spep_11 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_11 + 36 );
endPhase( spep_11+ 136 );

end