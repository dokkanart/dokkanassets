--1019700:孫悟空&孫悟飯(幼年期)_おとうさんにまかせろ
--sp_effect_b1_00120

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
SP_01 = 155825  ;--横走り  ef_001
SP_02 = 155827  ;--急停止～飛びかかり    ef_002
SP_03 = 155829  ;--急停止～飛びかかり　背景 ef_003
SP_04 = 155830  ;--パンチラッシュ  ef_004
SP_05 = 155831  ;--パンチ、キック  ef_005
SP_06 = 155833  ;--パンチ、キック　背景   ef_006
SP_07 = 155834  ;--フィニッシュ   ef_007



--敵側
SP_01r = 155826 ;--横走り　敵側   ef_001_e
SP_02r = 155828 ;--急停止～飛びかかり　敵側 ef_002_e
SP_05r = 155832 ;--パンチ、キック　敵側   ef_005_e
SP_07r = 155835 ;--フィニッシュ　セット   ef_007_e


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
--------------------------------------
--横走り(146F)
--------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --横走り(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 255 );

spep_x = spep_0 + 60;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 100, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 56,  906, 37, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 56, shuchusen1, 37, 25 );
setEffMoveKey(   spep_0 + 56, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 93, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 56, shuchusen1, 1.4, 1.4 );
setEffScaleKey(  spep_0 + 93, shuchusen1, 1.4, 1.4 );
setEffRotateKey( spep_0 + 56, shuchusen1, 0 );
setEffRotateKey( spep_0 + 93, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 56, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 92, shuchusen1, 60 );
setEffAlphaKey(  spep_0 + 93, shuchusen1, 0 );

-- ** 音 ** --
--ロボット足音1
playSe( spep_0 + 12, 1260 );
setSeVolume( spep_0 + 12, 1260, 80 );
--ロボット足音2
playSe( spep_0 + 30, 1260 );
--ロボット足音3
playSe( spep_0 + 52, 1260 );
setSeVolume( spep_0 + 52, 1260, 89 );
--顔カットイン
playSe( spep_0 + 72, 1018 );
--ロボット足音4
playSe( spep_0 + 72, 1260 );
--ロボット足音5
playSe( spep_0 + 90, 1260 );
setSeVolume( spep_0 + 90, 1260, 78 );
--ロボット足音6
playSe( spep_0 + 110, 1260 );
--ロボット足音7
playSe( spep_0 + 130, 1260 );
setSeVolume( spep_0 + 130, 1260, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 138, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

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
--急停止～飛びかかり(245F)
--------------------------------------

-- ** エフェクト等 ** --
stopatt_f = entryEffectLife( spep_2 + 0, SP_02, 244, 0x100, -1, 0, 0, 0 );  --急停止～飛びかかり(ef_002)
setEffMoveKey( spep_2 + 0, stopatt_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 244, stopatt_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stopatt_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 244, stopatt_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stopatt_f, 0 );
setEffRotateKey( spep_2 + 244, stopatt_f, 0 );
setEffAlphaKey( spep_2 + 0, stopatt_f, 255 );
setEffAlphaKey( spep_2 + 244, stopatt_f, 255 );

-- ** エフェクト等 ** --
stopatt_b = entryEffectLife( spep_2 + 0, SP_03, 245, 0x80, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_2 + 0, stopatt_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 245, stopatt_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stopatt_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 245, stopatt_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stopatt_b, 0 );
setEffRotateKey( spep_2 + 245, stopatt_b, 0 );
setEffAlphaKey( spep_2 + 0, stopatt_b, 255 );
setEffAlphaKey( spep_2 + 245, stopatt_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 122,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 122, shuchusen1, 18, 25 );
setEffMoveKey( spep_2 + 122, shuchusen1, 60, 0 , 0 );
setEffMoveKey( spep_2 + 140, shuchusen1, 60, 0 , 0 );
setEffScaleKey( spep_2 + 122, shuchusen1, 1.6, 1.8 );
setEffScaleKey( spep_2 + 140, shuchusen1, 1.6, 1.8 );
setEffRotateKey( spep_2 + 122, shuchusen1, 0 );
setEffRotateKey( spep_2 + 140, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 122, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 140, shuchusen1, 255 );

-- ** 敵キャラクター1 ** --
setDisp( spep_2 -3 + 120, 1, 1 );
setDisp( spep_2 -3 + 181, 1, 0 );
changeAnime( spep_2 -3 + 120, 1, 101 );
changeAnime( spep_2 -3 + 167, 1, 103 );

setMoveKey( spep_2 -3 + 120, 1, 3611.9, -225 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 3031.2, -225 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 2450.6, -225 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 1869.9, -225 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 1289.2, -225 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 708.6, -225 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 127.9, -225 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 123.8, -225 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 119.7, -225 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 115.6, -225 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 111.5, -225 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 107.4, -225 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 103.3, -225 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 99.2, -225 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 95.1, -225 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 95.1, -225 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -19.4, -163.4 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -106.2, -163.4 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -192.9, -163.4 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -279.7, -163.4 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -366.5, -163.4 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -453.3, -163.4 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -540.1, -163.4 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -626.8, -163.4 , 0 );
setMoveKey( spep_2 -3 + 181, 1, -626.8, -163.4 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 181, 1, 1.1, 1.1 );

setRotateKey( spep_2 -3 + 120, 1, 0 );
setRotateKey( spep_2 -3 + 181, 1, 0 );

-- ** 敵キャラクター2 ** --
setDisp( spep_2 -3 + 226, 1, 1 );
changeAnime( spep_2 -3 + 226, 1, 103 );

setMoveKey( spep_2 -3 + 226, 1, 1370.7, -132.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 1145.6, -132.6 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 920.5, -132.6 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 695.4, -132.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 470.3, -132.6 , 0 );


setScaleKey( spep_2 -3 + 226, 1, 1.1, 1.1 );

setRotateKey( spep_2 -3 + 226, 1, 0 );


-- ** 音 ** --
--ロボット足音8
playSe( spep_2 + 4, 1260 );
setSeVolume( spep_2 + 4, 1260, 80 );
--ロボット足音9
playSe( spep_2 + 26, 1260 );

--ズザー1
SE00 = playSe( spep_2 + 26, 1033 );
setSeVolume( spep_2 + 26, 1033, 0 );
setSeVolume( spep_2 + 41, 1033, 0 );
setSeVolume( spep_2 + 46, 1033, 100 );
stopSe( spep_2 + 62, SE00, 16 );

--ズザー2
SE01 = playSe( spep_2 + 42, 1260 );
setSeVolume( spep_2 + 42, 1260, 81 );
stopSe( spep_2 + 51, SE01, 4 );

--ズザー3
playSe( spep_2 + 42, 1192 );
setSeVolume( spep_2 + 42, 1192, 184 );

--ズザー4
SE02 = playSe( spep_2 + 48, 1044 );
stopSe( spep_2 + 81, SE02, 14 );

--ズザー5
playSe( spep_2 + 68, 1192 );
setSeVolume( spep_2 + 68, 1192, 174 );

--ズザー6
playSe( spep_2 + 74, 1260 );
setSeVolume( spep_2 + 74, 1260, 88 );

--敵にフォーカス
SE03 = playSe( spep_2 + 114, 44 );
setSeVolume( spep_2 + 114, 44, 61 );
stopSe( spep_2 + 142, SE03, 27 );

--敵向かってくる
SE04 = playSe( spep_2 + 160, 1003 );

--悟空向かっていく1
SE05 =playSe( spep_2 + 194, 1117 );

--悟空向かっていく2
SE06 =playSe( spep_2 + 214, 8 );
setSeVolume( spep_2 + 214, 8, 67 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 235 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE00, 0);
    --stopSe( SP_dodge - 12, SE01, 0);
    --stopSe( SP_dodge - 12, SE02, 0);
    --stopSe( SP_dodge - 12, SE03, 0);
    stopSe( SP_dodge - 12, SE04, 0);
    stopSe( SP_dodge - 12, SE05, 0);
    stopSe( SP_dodge - 12, SE06, 0);

    setMoveKey( SP_dodge + 0, 1, 245.3, -132.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 222.2, -132.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 199.1, -132.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 176, -132.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 152.9, -132.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 129.8, -132.6 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.1, 1.1 );
    setScaleKey( SP_dodge + 10, 1, 1.1, 1.1 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
   
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
setDisp( spep_2 -3 + 248, 1, 0 );

setMoveKey( spep_2 -3 + 236, 1, 245.3, -132.6 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 222.2, -132.6 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 199.1, -132.6 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 176, -132.6 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 152.9, -132.6 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 129.8, -132.6 , 0 );

setScaleKey( spep_2 -3 + 248, 1, 1.1, 1.1 );

setRotateKey( spep_2 -3 + 248, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 244, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 245;


------------------------------------------------------
-- パンチラッシュ(80F)
------------------------------------------------------

-- ** エフェクト等 ** --
prush = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --パンチラッシュ(ef_004)
setEffMoveKey( spep_3 + 0, prush, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, prush, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, prush, 1.0, 1.0 );
setEffScaleKey( spep_3 + 80, prush, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, prush, 0 );
setEffRotateKey( spep_3 + 80, prush, 0 );
setEffAlphaKey( spep_3 + 0, prush, 255 );
setEffAlphaKey( spep_3 + 80, prush, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 8,  906, 71, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 8, shuchusen2, 37, 25 );
setEffMoveKey(   spep_3 + 8, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 79, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_3 + 8, shuchusen2, 1.6, 1.6 );
setEffScaleKey(  spep_3 + 79, shuchusen2, 1.6, 1.6 );
setEffRotateKey( spep_3 + 8, shuchusen2, 0 );
setEffRotateKey( spep_3 + 79, shuchusen2, 0 );
setEffAlphaKey(  spep_3 + 8, shuchusen2, 255 );
setEffAlphaKey(  spep_3 + 79, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_3 -3 + 10,  10017, 72, 0x100, -1, 0, -44.2, 238.9 );
setEffMoveKey( spep_3 -3 + 10, ctdogaga, -44.2, 238.9 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctdogaga, -76.3, 338.9 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctdogaga, -89.5, 351.8 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctdogaga, -100.2, 391 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctdogaga, -92.8, 399.2 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctdogaga, -99.3, 377.8 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctdogaga, -100.4, 393.4 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdogaga, -92.8, 401.9 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdogaga, -99.5, 379.9 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdogaga, -100.6, 396 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdogaga, -92.7, 404.7 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdogaga, -99.6, 382 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdogaga, -100.7, 398.6 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdogaga, -92.7, 407.5 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctdogaga, -99.8, 384.1 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctdogaga, -100.9, 401.1 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctdogaga, -92.6, 410.2 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctdogaga, -99.9, 386.2 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctdogaga, -101.1, 403.7 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctdogaga, -92.6, 413 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctdogaga, -100.1, 388.3 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctdogaga, -101.3, 406.2 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctdogaga, -92.6, 415.8 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctdogaga, -100.3, 390.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctdogaga, -101.5, 408.8 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctdogaga, -92.5, 418.6 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogaga, -100.4, 392.5 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogaga, -101.7, 411.3 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogaga, -92.5, 421.4 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogaga, -100.5, 394.6 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctdogaga, -101.8, 413.9 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogaga, -92.4, 424.1 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogaga, -100.7, 396.7 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogaga, -102, 416.4 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogaga, -92.3, 426.9 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogaga, -100.8, 398.8 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctdogaga, -102.2, 418.9 , 0 );

setEffScaleKey( spep_3 -3 + 10, ctdogaga, 0.68, 0.68 );
setEffScaleKey( spep_3 -3 + 12, ctdogaga, 1.19, 1.19 );
setEffScaleKey( spep_3 -3 + 14, ctdogaga, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 16, ctdogaga, 2.21, 2.21 );
setEffScaleKey( spep_3 -3 + 18, ctdogaga, 2.23, 2.23 );
setEffScaleKey( spep_3 -3 + 20, ctdogaga, 2.25, 2.25 );
setEffScaleKey( spep_3 -3 + 22, ctdogaga, 2.28, 2.28 );
setEffScaleKey( spep_3 -3 + 24, ctdogaga, 2.3, 2.3 );
setEffScaleKey( spep_3 -3 + 26, ctdogaga, 2.32, 2.32 );
setEffScaleKey( spep_3 -3 + 28, ctdogaga, 2.34, 2.34 );
setEffScaleKey( spep_3 -3 + 30, ctdogaga, 2.37, 2.37 );
setEffScaleKey( spep_3 -3 + 32, ctdogaga, 2.39, 2.39 );
setEffScaleKey( spep_3 -3 + 34, ctdogaga, 2.41, 2.41 );
setEffScaleKey( spep_3 -3 + 36, ctdogaga, 2.44, 2.44 );
setEffScaleKey( spep_3 -3 + 38, ctdogaga, 2.46, 2.46 );
setEffScaleKey( spep_3 -3 + 40, ctdogaga, 2.48, 2.48 );
setEffScaleKey( spep_3 -3 + 42, ctdogaga, 2.5, 2.5 );
setEffScaleKey( spep_3 -3 + 44, ctdogaga, 2.53, 2.53 );
setEffScaleKey( spep_3 -3 + 46, ctdogaga, 2.55, 2.55 );
setEffScaleKey( spep_3 -3 + 48, ctdogaga, 2.57, 2.57 );
setEffScaleKey( spep_3 -3 + 50, ctdogaga, 2.59, 2.59 );
setEffScaleKey( spep_3 -3 + 52, ctdogaga, 2.62, 2.62 );
setEffScaleKey( spep_3 -3 + 54, ctdogaga, 2.64, 2.64 );
setEffScaleKey( spep_3 -3 + 56, ctdogaga, 2.66, 2.66 );
setEffScaleKey( spep_3 -3 + 58, ctdogaga, 2.68, 2.68 );
setEffScaleKey( spep_3 -3 + 60, ctdogaga, 2.71, 2.71 );
setEffScaleKey( spep_3 -3 + 62, ctdogaga, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 64, ctdogaga, 2.75, 2.75 );
setEffScaleKey( spep_3 -3 + 66, ctdogaga, 2.78, 2.78 );
setEffScaleKey( spep_3 -3 + 68, ctdogaga, 2.8, 2.8 );
setEffScaleKey( spep_3 -3 + 70, ctdogaga, 2.82, 2.82 );
setEffScaleKey( spep_3 -3 + 72, ctdogaga, 2.84, 2.84 );
setEffScaleKey( spep_3 -3 + 74, ctdogaga, 2.87, 2.87 );
setEffScaleKey( spep_3 -3 + 76, ctdogaga, 2.89, 2.89 );
setEffScaleKey( spep_3 -3 + 78, ctdogaga, 2.91, 2.91 );
setEffScaleKey( spep_3 -3 + 80, ctdogaga, 2.93, 2.93 );
setEffScaleKey( spep_3 -3 + 82, ctdogaga, 2.96, 2.96 );

setEffRotateKey( spep_3 -3 + 10, ctdogaga, -12.5 );
setEffRotateKey( spep_3 -3 + 12, ctdogaga, -12.7 );
setEffRotateKey( spep_3 -3 + 82, ctdogaga, -12.7 );

setEffAlphaKey( spep_3 -3 + 10, ctdogaga, 255 );
setEffAlphaKey( spep_3 -3 + 82, ctdogaga, 255 );

-- ** 音 ** --
--ラッシュ1
playSe( spep_3 + 3, 1189 );
setSeVolume( spep_3 + 3, 1189, 66 );
--ラッシュ2
playSe( spep_3 + 9, 1009 );
--ラッシュ3
playSe( spep_3 + 9, 1000 );
setSeVolume( spep_3 + 9, 1000, 75 );
--ラッシュ4
playSe( spep_3 + 20, 1010 );
--ラッシュ5
playSe( spep_3 + 20, 1001 );
setSeVolume( spep_3 + 20, 1001, 62 );
--ラッシュ6
playSe( spep_3 + 29, 1000 );
setSeVolume( spep_3 + 29, 1000, 79 );
--ラッシュ7
playSe( spep_3 + 37, 1009 );
setSeVolume( spep_3 + 37, 1009, 69 );
--ラッシュ8
playSe( spep_3 + 37, 1013 );
setSeVolume( spep_3 + 37, 1013, 69 );
--ラッシュ9
playSe( spep_3 + 47, 1010 );
setSeVolume( spep_3 + 47, 1010, 95 );
--ラッシュ10
playSe( spep_3 + 47, 1000 );
setSeVolume( spep_3 + 47, 1000, 66 );
--ラッシュ11
playSe( spep_3 + 55, 1001 );
setSeVolume( spep_3 + 55, 1001, 79 );
--ラッシュ12
playSe( spep_3 + 55, 1110 );
setSeVolume( spep_3 + 55, 1110, 88 );
--ラッシュ13
playSe( spep_3 + 63, 1010 );
setSeVolume( spep_3 + 63, 1010, 62 );
--ラッシュ14
playSe( spep_3 + 63, 1000 );
--ラッシュ15
playSe( spep_3 + 71, 1000 );
setSeVolume( spep_3 + 71, 1000, 126 );

--ラッシュ16
playSe( spep_3 + 80 + 3, 1009 );
--ラッシュ17
playSe( spep_3 + 80 + 5, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;


------------------------------------------------------
-- パンチ、キック(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
pkick_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --パンチ、キック(ef_005)
setEffMoveKey( spep_4 + 0, pkick_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, pkick_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, pkick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, pkick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pkick_f, 0 );
setEffRotateKey( spep_4 + 86, pkick_f, 0 );
setEffAlphaKey( spep_4 + 0, pkick_f, 255 );
setEffAlphaKey( spep_4 + 86, pkick_f, 255 );

pkick_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --背景(ef_006)
setEffMoveKey( spep_4 + 0, pkick_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, pkick_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, pkick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, pkick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pkick_b, 0 );
setEffRotateKey( spep_4 + 86, pkick_b, 0 );
setEffAlphaKey( spep_4 + 0, pkick_b, 255 );
setEffAlphaKey( spep_4 + 86, pkick_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 6, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen3, 37, 25 );
setEffMoveKey(   spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 6, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_4 + 0, shuchusen3, 1.6, 1.8 );
setEffScaleKey(  spep_4 + 6, shuchusen3, 1.6, 1.8 );
setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4 + 6, shuchusen3, 0 );
setEffAlphaKey(  spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey(  spep_4 + 6, shuchusen3, 255 );

shuchusen4 = entryEffectLife( spep_4 + 43,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 43, shuchusen4, 37, 25 );
setEffMoveKey(   spep_4 + 43, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 60, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_4 + 43, shuchusen4, 1.6, 1.8 );
setEffScaleKey(  spep_4 + 60, shuchusen4, 1.6, 1.8 );
setEffRotateKey( spep_4 + 43, shuchusen4, 0 );
setEffRotateKey( spep_4 + 60, shuchusen4, 0 );
setEffAlphaKey(  spep_4 + 43, shuchusen4, 255 );
setEffAlphaKey(  spep_4 + 60, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgaha = entryEffectLife( spep_4 + 0,  10005, 8, 0x100, -1, 0, 28, 140.7 ); --ガッ
setEffMoveKey( spep_4 + 0, ctgaha, -6.9, 215.7 , 0 );
setEffMoveKey( spep_4 + 2, ctgaha, -6.9, 215.7 , 0 );
setEffMoveKey( spep_4 + 4, ctgaha, -5.9, 211.7 , 0 );
setEffMoveKey( spep_4 + 6, ctgaha, -6.9, 215.7 , 0 );
setEffMoveKey( spep_4 + 8, ctgaha, -5.9, 211.7 , 0 );
--setEffMoveKey( spep_4 + 10, ctgaha, -6.9, 215.7 , 0 );

setEffScaleKey( spep_4 + 0, ctgaha, 1.67, 1.67 );
setEffScaleKey( spep_4 + 2, ctgaha, 1.67, 1.67 );
setEffScaleKey( spep_4 + 8, ctgaha, 1.67, 1.67 );

setEffRotateKey( spep_4 + 0, ctgaha, -34.6 );
setEffRotateKey( spep_4 + 8, ctgaha, -34.6 );

setEffAlphaKey( spep_4 + 0, ctgaha, 255 );
setEffAlphaKey( spep_4 + 8, ctgaha, 255 );

ctbaki = entryEffectLife( spep_4 -3 + 46,  10020, 17, 0x100, -1, 0, 102.8, 165.1 ); --バキッ
setEffMoveKey( spep_4 -3 + 46, ctbaki, 102.8, 165.1 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctbaki, 74.8, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctbaki, 74, 306 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctbaki, 74.8, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctbaki, 74, 306 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctbaki, 74.8, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctbaki, 74, 306 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctbaki, 74.8, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctbaki, 74, 306 , 0 );
setEffMoveKey( spep_4 -3 + 63, ctbaki, 74, 306 , 0 );

setEffScaleKey( spep_4 -3 + 46, ctbaki, 0.42, 0.42 );
setEffScaleKey( spep_4 -3 + 48, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 63, ctbaki, 1.79, 1.79 );

setEffRotateKey( spep_4 -3 + 46, ctbaki, -11.5 );
setEffRotateKey( spep_4 -3 + 47, ctbaki, -11.5 );
setEffRotateKey( spep_4 -3 + 48, ctbaki, -11.6 );
setEffRotateKey( spep_4 -3 + 63, ctbaki, -11.6 );

setEffAlphaKey( spep_4 -3 + 46, ctbaki, 255 );
setEffAlphaKey( spep_4 -3 + 63, ctbaki, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 85, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 46, 1, 108 );

--setMoveKey( spep_4  + 0, 1, 78.1, -4.8 , 0 );
setMoveKey( spep_4  + 0, 1, 75, 18.5 , 0 );
setMoveKey( spep_4  + 2, 1, 92.2, -19.9 , 0 );
setMoveKey( spep_4 -3  + 6, 1, 71.6, 7.5 , 0 );
setMoveKey( spep_4 -3  + 8, 1, 89.4, 9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 80.9, 8.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 84.5, 6.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 85.4, 11.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 84.9, 12.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 84.3, 17.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 87.9, 15.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 88.7, 20 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 88.2, 20.8 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 87.7, 25.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 91.3, 23.7 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 92.1, 28.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 91.6, 29.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 91.1, 34.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 94.6, 32.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 95.5, 37.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 94.9, 37.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 94.4, 42.7 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 98, 40.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 131.6, 13.2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 302.8, -8.9 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 294.8, 3.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 319.3, -30.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 303.3, -10 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 274.4, -1.9 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 212.9, -7.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 218.8, -5.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 221.1, -6.2 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 377.6, -10.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 532.8, -22.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 691.7, -27.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 846.9, -34.2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 846.9, -31.8 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 845.7, -36.7 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 848.1, -34.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 846.9, -34.2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 846.9, -31.8 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 845.7, -36.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 848.1, -34.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 846.9, -34.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 846.9, -31.8 , 0 );

--setScaleKey( spep_4 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 0, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 2, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 6, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 8, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 47, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 48, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 50, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 52, 1, 1.93, 1.93 );
setScaleKey( spep_4 -3 + 54, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 56, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 58, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 88, 1, 1.17, 1.17 );

setRotateKey( spep_4 + 0, 1, -32.2 );
setRotateKey( spep_4 -3 + 45, 1, -32.2 );
setRotateKey( spep_4 -3 + 46, 1, 5.3 );
setRotateKey( spep_4 -3 + 88, 1, 5.3 );


-- ** 音 ** --
--蹴り1
playSe( spep_4 + 49, 1003 );
setSeVolume( spep_4 + 49, 1003, 53 );
--蹴り2
playSe( spep_4 + 53, 1120 );

--くるりん
SE07 = playSe( spep_4 + 65, 1117 );
stopSe( spep_4 + 86 + 19, SE07, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 );  --フィニッシュ(ef_007)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 136, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 136, finish_f, 255 );

-- ** 音 ** --
--着地1
playSe( spep_5 + 25, 1106 );
setSeVolume( spep_5 + 25, 1106, 141 );
--着地2
playSe( spep_5 + 27, 1106 );
setSeVolume( spep_5 + 27, 1106, 141 );

--悟飯ジャンプ1
playSe( spep_5 + 29, 4 );
--悟飯ジャンプ2
playSe( spep_5 + 29, 1151 );
--悟飯ジャンプ3
playSe( spep_5 + 91, 4 );
--悟飯ジャンプ4
playSe( spep_5 + 91, 1151 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 26 );
endPhase( spep_5 + 126 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
--------------------------------------
--横走り(146F)
--------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0 );  --横走り(ef_001)
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 146, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 146, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 146, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 146, first_f, 255 );

spep_x = spep_0 + 60;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 100, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 100, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 56,  906, 37, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 56, shuchusen1, 37, 25 );
setEffMoveKey(   spep_0 + 56, shuchusen1, 0, 0 , 0 );
setEffMoveKey(   spep_0 + 93, shuchusen1, 0, 0 , 0 );
setEffScaleKey(  spep_0 + 56, shuchusen1, 1.4, 1.4 );
setEffScaleKey(  spep_0 + 93, shuchusen1, 1.4, 1.4 );
setEffRotateKey( spep_0 + 56, shuchusen1, 0 );
setEffRotateKey( spep_0 + 93, shuchusen1, 0 );
setEffAlphaKey(  spep_0 + 56, shuchusen1, 255 );
setEffAlphaKey(  spep_0 + 92, shuchusen1, 60 );
setEffAlphaKey(  spep_0 + 93, shuchusen1, 0 );

-- ** 音 ** --
--ロボット足音1
playSe( spep_0 + 12, 1260 );
setSeVolume( spep_0 + 12, 1260, 80 );
--ロボット足音2
playSe( spep_0 + 30, 1260 );
--ロボット足音3
playSe( spep_0 + 52, 1260 );
setSeVolume( spep_0 + 52, 1260, 89 );
--顔カットイン
playSe( spep_0 + 72, 1018 );
--ロボット足音4
playSe( spep_0 + 72, 1260 );
--ロボット足音5
playSe( spep_0 + 90, 1260 );
setSeVolume( spep_0 + 90, 1260, 78 );
--ロボット足音6
playSe( spep_0 + 110, 1260 );
--ロボット足音7
playSe( spep_0 + 130, 1260 );
setSeVolume( spep_0 + 130, 1260, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 146, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 白フェード ** --
entryFade( spep_0 + 138, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 146;

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
--急停止～飛びかかり(245F)
--------------------------------------

-- ** エフェクト等 ** --
stopatt_f = entryEffectLife( spep_2 + 0, SP_02r, 244, 0x100, -1, 0, 0, 0 );  --急停止～飛びかかり(ef_002)
setEffMoveKey( spep_2 + 0, stopatt_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 244, stopatt_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stopatt_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 244, stopatt_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stopatt_f, 0 );
setEffRotateKey( spep_2 + 244, stopatt_f, 0 );
setEffAlphaKey( spep_2 + 0, stopatt_f, 255 );
setEffAlphaKey( spep_2 + 244, stopatt_f, 255 );

-- ** エフェクト等 ** --
stopatt_b = entryEffectLife( spep_2 + 0, SP_03, 245, 0x80, -1, 0, 0, 0 );  --背景(ef_003)
setEffMoveKey( spep_2 + 0, stopatt_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 245, stopatt_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, stopatt_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 245, stopatt_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stopatt_b, 0 );
setEffRotateKey( spep_2 + 245, stopatt_b, 0 );
setEffAlphaKey( spep_2 + 0, stopatt_b, 255 );
setEffAlphaKey( spep_2 + 245, stopatt_b, 255 );

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_2 + 122,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 122, shuchusen1, 18, 25 );
setEffMoveKey( spep_2 + 122, shuchusen1, 60, 0 , 0 );
setEffMoveKey( spep_2 + 140, shuchusen1, 60, 0 , 0 );
setEffScaleKey( spep_2 + 122, shuchusen1, 1.6, 1.8 );
setEffScaleKey( spep_2 + 140, shuchusen1, 1.6, 1.8 );
setEffRotateKey( spep_2 + 122, shuchusen1, 0 );
setEffRotateKey( spep_2 + 140, shuchusen1, 0 );
setEffAlphaKey( spep_2 + 122, shuchusen1, 255 );
setEffAlphaKey( spep_2 + 140, shuchusen1, 255 );

-- ** 敵キャラクター1 ** --
setDisp( spep_2 -3 + 120, 1, 1 );
setDisp( spep_2 -3 + 181, 1, 0 );
changeAnime( spep_2 -3 + 120, 1, 101 );
changeAnime( spep_2 -3 + 167, 1, 103 );

setMoveKey( spep_2 -3 + 120, 1, 3611.9, -225 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 3031.2, -225 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 2450.6, -225 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 1869.9, -225 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 1289.2, -225 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 708.6, -225 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 127.9, -225 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 123.8, -225 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 119.7, -225 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 115.6, -225 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 111.5, -225 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 107.4, -225 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 103.3, -225 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 99.2, -225 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 95.1, -225 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 95.1, -225 , 0 );
setMoveKey( spep_2 -3 + 166, 1, -19.4, -163.4 , 0 );
setMoveKey( spep_2 -3 + 168, 1, -106.2, -163.4 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -192.9, -163.4 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -279.7, -163.4 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -366.5, -163.4 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -453.3, -163.4 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -540.1, -163.4 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -626.8, -163.4 , 0 );
setMoveKey( spep_2 -3 + 181, 1, -626.8, -163.4 , 0 );

setScaleKey( spep_2 -3 + 120, 1, 1.1, 1.1 );
setScaleKey( spep_2 -3 + 181, 1, 1.1, 1.1 );

setRotateKey( spep_2 -3 + 120, 1, 0 );
setRotateKey( spep_2 -3 + 181, 1, 0 );

-- ** 敵キャラクター2 ** --
setDisp( spep_2 -3 + 226, 1, 1 );
changeAnime( spep_2 -3 + 226, 1, 103 );

setMoveKey( spep_2 -3 + 226, 1, 1370.7, -132.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, 1145.6, -132.6 , 0 );
setMoveKey( spep_2 -3 + 230, 1, 920.5, -132.6 , 0 );
setMoveKey( spep_2 -3 + 232, 1, 695.4, -132.6 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 470.3, -132.6 , 0 );


setScaleKey( spep_2 -3 + 226, 1, 1.1, 1.1 );

setRotateKey( spep_2 -3 + 226, 1, 0 );


-- ** 音 ** --
--ロボット足音8
playSe( spep_2 + 4, 1260 );
setSeVolume( spep_2 + 4, 1260, 80 );
--ロボット足音9
playSe( spep_2 + 26, 1260 );

--ズザー1
SE00 = playSe( spep_2 + 26, 1033 );
setSeVolume( spep_2 + 26, 1033, 0 );
setSeVolume( spep_2 + 41, 1033, 0 );
setSeVolume( spep_2 + 46, 1033, 100 );
stopSe( spep_2 + 62, SE00, 16 );

--ズザー2
SE01 = playSe( spep_2 + 42, 1260 );
setSeVolume( spep_2 + 42, 1260, 81 );
stopSe( spep_2 + 51, SE01, 4 );

--ズザー3
playSe( spep_2 + 42, 1192 );
setSeVolume( spep_2 + 42, 1192, 184 );

--ズザー4
SE02 = playSe( spep_2 + 48, 1044 );
stopSe( spep_2 + 81, SE02, 14 );

--ズザー5
playSe( spep_2 + 68, 1192 );
setSeVolume( spep_2 + 68, 1192, 174 );

--ズザー6
playSe( spep_2 + 74, 1260 );
setSeVolume( spep_2 + 74, 1260, 88 );

--敵にフォーカス
SE03 = playSe( spep_2 + 114, 44 );
setSeVolume( spep_2 + 114, 44, 61 );
stopSe( spep_2 + 142, SE03, 27 );

--敵向かってくる
SE04 = playSe( spep_2 + 160, 1003 );

--悟空向かっていく1
SE05 =playSe( spep_2 + 194, 1117 );

--悟空向かっていく2
SE06 =playSe( spep_2 + 214, 8 );
setSeVolume( spep_2 + 214, 8, 67 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 235 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE00, 0);
    --stopSe( SP_dodge - 12, SE01, 0);
    --stopSe( SP_dodge - 12, SE02, 0);
    --stopSe( SP_dodge - 12, SE03, 0);
    stopSe( SP_dodge - 12, SE04, 0);
    stopSe( SP_dodge - 12, SE05, 0);
    stopSe( SP_dodge - 12, SE06, 0);

    setMoveKey( SP_dodge + 0, 1, 245.3, -132.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 222.2, -132.6 , 0 );
    setMoveKey( SP_dodge + 4, 1, 199.1, -132.6 , 0 );
    setMoveKey( SP_dodge + 6, 1, 176, -132.6 , 0 );
    setMoveKey( SP_dodge + 8, 1, 152.9, -132.6 , 0 );
    setMoveKey( SP_dodge + 10, 1, 129.8, -132.6 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.1, 1.1 );
    setScaleKey( SP_dodge + 10, 1, 1.1, 1.1 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );
   
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
setDisp( spep_2 -3 + 248, 1, 0 );

setMoveKey( spep_2 -3 + 236, 1, 245.3, -132.6 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 222.2, -132.6 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 199.1, -132.6 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 176, -132.6 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 152.9, -132.6 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 129.8, -132.6 , 0 );

setScaleKey( spep_2 -3 + 248, 1, 1.1, 1.1 );

setRotateKey( spep_2 -3 + 248, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 244, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 245;


------------------------------------------------------
-- パンチラッシュ(80F)
------------------------------------------------------

-- ** エフェクト等 ** --
prush = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --パンチラッシュ(ef_004)
setEffMoveKey( spep_3 + 0, prush, 0, 0 , 0 );
setEffMoveKey( spep_3 + 80, prush, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, prush, -1.0, 1.0 );
setEffScaleKey( spep_3 + 80, prush, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, prush, 0 );
setEffRotateKey( spep_3 + 80, prush, 0 );
setEffAlphaKey( spep_3 + 0, prush, 255 );
setEffAlphaKey( spep_3 + 80, prush, 255 );

-- ** 集中線 ** --
shuchusen2 = entryEffectLife( spep_3 + 8,  906, 71, 0x80, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 8, shuchusen2, 37, 25 );
setEffMoveKey(   spep_3 + 8, shuchusen2, 0, 0 , 0 );
setEffMoveKey(   spep_3 + 79, shuchusen2, 0, 0 , 0 );
setEffScaleKey(  spep_3 + 8, shuchusen2, 1.6, 1.6 );
setEffScaleKey(  spep_3 + 79, shuchusen2, 1.6, 1.6 );
setEffRotateKey( spep_3 + 8, shuchusen2, 0 );
setEffRotateKey( spep_3 + 79, shuchusen2, 0 );
setEffAlphaKey(  spep_3 + 8, shuchusen2, 255 );
setEffAlphaKey(  spep_3 + 79, shuchusen2, 255 );

-- ** 書き文字エントリー ** --
ctdogaga = entryEffectLife( spep_3 -3 + 10,  10017, 72, 0x100, -1, 0, -44.2, 238.9 );
setEffMoveKey( spep_3 -3 + 10, ctdogaga, -44.2, 238.9 , 0 );
setEffMoveKey( spep_3 -3 + 12, ctdogaga, -76.3, 338.9 , 0 );
setEffMoveKey( spep_3 -3 + 14, ctdogaga, -89.5, 351.8 , 0 );
setEffMoveKey( spep_3 -3 + 16, ctdogaga, -100.2, 391 , 0 );
setEffMoveKey( spep_3 -3 + 18, ctdogaga, -92.8, 399.2 , 0 );
setEffMoveKey( spep_3 -3 + 20, ctdogaga, -99.3, 377.8 , 0 );
setEffMoveKey( spep_3 -3 + 22, ctdogaga, -100.4, 393.4 , 0 );
setEffMoveKey( spep_3 -3 + 24, ctdogaga, -92.8, 401.9 , 0 );
setEffMoveKey( spep_3 -3 + 26, ctdogaga, -99.5, 379.9 , 0 );
setEffMoveKey( spep_3 -3 + 28, ctdogaga, -100.6, 396 , 0 );
setEffMoveKey( spep_3 -3 + 30, ctdogaga, -92.7, 404.7 , 0 );
setEffMoveKey( spep_3 -3 + 32, ctdogaga, -99.6, 382 , 0 );
setEffMoveKey( spep_3 -3 + 34, ctdogaga, -100.7, 398.6 , 0 );
setEffMoveKey( spep_3 -3 + 36, ctdogaga, -92.7, 407.5 , 0 );
setEffMoveKey( spep_3 -3 + 38, ctdogaga, -99.8, 384.1 , 0 );
setEffMoveKey( spep_3 -3 + 40, ctdogaga, -100.9, 401.1 , 0 );
setEffMoveKey( spep_3 -3 + 42, ctdogaga, -92.6, 410.2 , 0 );
setEffMoveKey( spep_3 -3 + 44, ctdogaga, -99.9, 386.2 , 0 );
setEffMoveKey( spep_3 -3 + 46, ctdogaga, -101.1, 403.7 , 0 );
setEffMoveKey( spep_3 -3 + 48, ctdogaga, -92.6, 413 , 0 );
setEffMoveKey( spep_3 -3 + 50, ctdogaga, -100.1, 388.3 , 0 );
setEffMoveKey( spep_3 -3 + 52, ctdogaga, -101.3, 406.2 , 0 );
setEffMoveKey( spep_3 -3 + 54, ctdogaga, -92.6, 415.8 , 0 );
setEffMoveKey( spep_3 -3 + 56, ctdogaga, -100.3, 390.4 , 0 );
setEffMoveKey( spep_3 -3 + 58, ctdogaga, -101.5, 408.8 , 0 );
setEffMoveKey( spep_3 -3 + 60, ctdogaga, -92.5, 418.6 , 0 );
setEffMoveKey( spep_3 -3 + 62, ctdogaga, -100.4, 392.5 , 0 );
setEffMoveKey( spep_3 -3 + 64, ctdogaga, -101.7, 411.3 , 0 );
setEffMoveKey( spep_3 -3 + 66, ctdogaga, -92.5, 421.4 , 0 );
setEffMoveKey( spep_3 -3 + 68, ctdogaga, -100.5, 394.6 , 0 );
setEffMoveKey( spep_3 -3 + 70, ctdogaga, -101.8, 413.9 , 0 );
setEffMoveKey( spep_3 -3 + 72, ctdogaga, -92.4, 424.1 , 0 );
setEffMoveKey( spep_3 -3 + 74, ctdogaga, -100.7, 396.7 , 0 );
setEffMoveKey( spep_3 -3 + 76, ctdogaga, -102, 416.4 , 0 );
setEffMoveKey( spep_3 -3 + 78, ctdogaga, -92.3, 426.9 , 0 );
setEffMoveKey( spep_3 -3 + 80, ctdogaga, -100.8, 398.8 , 0 );
setEffMoveKey( spep_3 -3 + 82, ctdogaga, -102.2, 418.9 , 0 );

setEffScaleKey( spep_3 -3 + 10, ctdogaga, 0.68, 0.68 );
setEffScaleKey( spep_3 -3 + 12, ctdogaga, 1.19, 1.19 );
setEffScaleKey( spep_3 -3 + 14, ctdogaga, 1.7, 1.7 );
setEffScaleKey( spep_3 -3 + 16, ctdogaga, 2.21, 2.21 );
setEffScaleKey( spep_3 -3 + 18, ctdogaga, 2.23, 2.23 );
setEffScaleKey( spep_3 -3 + 20, ctdogaga, 2.25, 2.25 );
setEffScaleKey( spep_3 -3 + 22, ctdogaga, 2.28, 2.28 );
setEffScaleKey( spep_3 -3 + 24, ctdogaga, 2.3, 2.3 );
setEffScaleKey( spep_3 -3 + 26, ctdogaga, 2.32, 2.32 );
setEffScaleKey( spep_3 -3 + 28, ctdogaga, 2.34, 2.34 );
setEffScaleKey( spep_3 -3 + 30, ctdogaga, 2.37, 2.37 );
setEffScaleKey( spep_3 -3 + 32, ctdogaga, 2.39, 2.39 );
setEffScaleKey( spep_3 -3 + 34, ctdogaga, 2.41, 2.41 );
setEffScaleKey( spep_3 -3 + 36, ctdogaga, 2.44, 2.44 );
setEffScaleKey( spep_3 -3 + 38, ctdogaga, 2.46, 2.46 );
setEffScaleKey( spep_3 -3 + 40, ctdogaga, 2.48, 2.48 );
setEffScaleKey( spep_3 -3 + 42, ctdogaga, 2.5, 2.5 );
setEffScaleKey( spep_3 -3 + 44, ctdogaga, 2.53, 2.53 );
setEffScaleKey( spep_3 -3 + 46, ctdogaga, 2.55, 2.55 );
setEffScaleKey( spep_3 -3 + 48, ctdogaga, 2.57, 2.57 );
setEffScaleKey( spep_3 -3 + 50, ctdogaga, 2.59, 2.59 );
setEffScaleKey( spep_3 -3 + 52, ctdogaga, 2.62, 2.62 );
setEffScaleKey( spep_3 -3 + 54, ctdogaga, 2.64, 2.64 );
setEffScaleKey( spep_3 -3 + 56, ctdogaga, 2.66, 2.66 );
setEffScaleKey( spep_3 -3 + 58, ctdogaga, 2.68, 2.68 );
setEffScaleKey( spep_3 -3 + 60, ctdogaga, 2.71, 2.71 );
setEffScaleKey( spep_3 -3 + 62, ctdogaga, 2.73, 2.73 );
setEffScaleKey( spep_3 -3 + 64, ctdogaga, 2.75, 2.75 );
setEffScaleKey( spep_3 -3 + 66, ctdogaga, 2.78, 2.78 );
setEffScaleKey( spep_3 -3 + 68, ctdogaga, 2.8, 2.8 );
setEffScaleKey( spep_3 -3 + 70, ctdogaga, 2.82, 2.82 );
setEffScaleKey( spep_3 -3 + 72, ctdogaga, 2.84, 2.84 );
setEffScaleKey( spep_3 -3 + 74, ctdogaga, 2.87, 2.87 );
setEffScaleKey( spep_3 -3 + 76, ctdogaga, 2.89, 2.89 );
setEffScaleKey( spep_3 -3 + 78, ctdogaga, 2.91, 2.91 );
setEffScaleKey( spep_3 -3 + 80, ctdogaga, 2.93, 2.93 );
setEffScaleKey( spep_3 -3 + 82, ctdogaga, 2.96, 2.96 );

setEffRotateKey( spep_3 -3 + 10, ctdogaga, -12.5 );
setEffRotateKey( spep_3 -3 + 12, ctdogaga, -12.7 );
setEffRotateKey( spep_3 -3 + 82, ctdogaga, -12.7 );

setEffAlphaKey( spep_3 -3 + 10, ctdogaga, 255 );
setEffAlphaKey( spep_3 -3 + 82, ctdogaga, 255 );

-- ** 音 ** --
--ラッシュ1
playSe( spep_3 + 3, 1189 );
setSeVolume( spep_3 + 3, 1189, 66 );
--ラッシュ2
playSe( spep_3 + 9, 1009 );
--ラッシュ3
playSe( spep_3 + 9, 1000 );
setSeVolume( spep_3 + 9, 1000, 75 );
--ラッシュ4
playSe( spep_3 + 20, 1010 );
--ラッシュ5
playSe( spep_3 + 20, 1001 );
setSeVolume( spep_3 + 20, 1001, 62 );
--ラッシュ6
playSe( spep_3 + 29, 1000 );
setSeVolume( spep_3 + 29, 1000, 79 );
--ラッシュ7
playSe( spep_3 + 37, 1009 );
setSeVolume( spep_3 + 37, 1009, 69 );
--ラッシュ8
playSe( spep_3 + 37, 1013 );
setSeVolume( spep_3 + 37, 1013, 69 );
--ラッシュ9
playSe( spep_3 + 47, 1010 );
setSeVolume( spep_3 + 47, 1010, 95 );
--ラッシュ10
playSe( spep_3 + 47, 1000 );
setSeVolume( spep_3 + 47, 1000, 66 );
--ラッシュ11
playSe( spep_3 + 55, 1001 );
setSeVolume( spep_3 + 55, 1001, 79 );
--ラッシュ12
playSe( spep_3 + 55, 1110 );
setSeVolume( spep_3 + 55, 1110, 88 );
--ラッシュ13
playSe( spep_3 + 63, 1010 );
setSeVolume( spep_3 + 63, 1010, 62 );
--ラッシュ14
playSe( spep_3 + 63, 1000 );
--ラッシュ15
playSe( spep_3 + 71, 1000 );
setSeVolume( spep_3 + 71, 1000, 126 );

--ラッシュ16
playSe( spep_3 + 80 + 3, 1009 );
--ラッシュ17
playSe( spep_3 + 80 + 5, 1110 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 80;


------------------------------------------------------
-- パンチ、キック(86F)
------------------------------------------------------

-- ** エフェクト等 ** --
pkick_f = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --パンチ、キック(ef_005)
setEffMoveKey( spep_4 + 0, pkick_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, pkick_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, pkick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, pkick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pkick_f, 0 );
setEffRotateKey( spep_4 + 86, pkick_f, 0 );
setEffAlphaKey( spep_4 + 0, pkick_f, 255 );
setEffAlphaKey( spep_4 + 86, pkick_f, 255 );

pkick_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --背景(ef_006)
setEffMoveKey( spep_4 + 0, pkick_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, pkick_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, pkick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, pkick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, pkick_b, 0 );
setEffRotateKey( spep_4 + 86, pkick_b, 0 );
setEffAlphaKey( spep_4 + 0, pkick_b, 255 );
setEffAlphaKey( spep_4 + 86, pkick_b, 255 );

-- ** 集中線 ** --
shuchusen3 = entryEffectLife( spep_4 + 0,  906, 6, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen3, 37, 25 );
setEffMoveKey(   spep_4 + 0, shuchusen3, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 6, shuchusen3, 0, 0 , 0 );
setEffScaleKey(  spep_4 + 0, shuchusen3, 1.6, 1.8 );
setEffScaleKey(  spep_4 + 6, shuchusen3, 1.6, 1.8 );
setEffRotateKey( spep_4 + 0, shuchusen3, 0 );
setEffRotateKey( spep_4 + 6, shuchusen3, 0 );
setEffAlphaKey(  spep_4 + 0, shuchusen3, 255 );
setEffAlphaKey(  spep_4 + 6, shuchusen3, 255 );

shuchusen4 = entryEffectLife( spep_4 + 43,  906, 18, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 43, shuchusen4, 37, 25 );
setEffMoveKey(   spep_4 + 43, shuchusen4, 0, 0 , 0 );
setEffMoveKey(   spep_4 + 60, shuchusen4, 0, 0 , 0 );
setEffScaleKey(  spep_4 + 43, shuchusen4, 1.6, 1.8 );
setEffScaleKey(  spep_4 + 60, shuchusen4, 1.6, 1.8 );
setEffRotateKey( spep_4 + 43, shuchusen4, 0 );
setEffRotateKey( spep_4 + 60, shuchusen4, 0 );
setEffAlphaKey(  spep_4 + 43, shuchusen4, 255 );
setEffAlphaKey(  spep_4 + 60, shuchusen4, 255 );

-- ** 書き文字エントリー ** --
ctgaha = entryEffectLife( spep_4 + 0,  10005, 8, 0x100, -1, 0, 28, 140.7 ); --ガッ
setEffMoveKey( spep_4 + 0, ctgaha, -6.9, 215.7 , 0 );
setEffMoveKey( spep_4 + 2, ctgaha, -6.9, 215.7 , 0 );
setEffMoveKey( spep_4 + 4, ctgaha, -5.9, 211.7 , 0 );
setEffMoveKey( spep_4 + 6, ctgaha, -6.9, 215.7 , 0 );
setEffMoveKey( spep_4 + 8, ctgaha, -5.9, 211.7 , 0 );
--setEffMoveKey( spep_4 + 10, ctgaha, -6.9, 215.7 , 0 );

setEffScaleKey( spep_4 + 0, ctgaha, 1.67, 1.67 );
setEffScaleKey( spep_4 + 2, ctgaha, 1.67, 1.67 );
setEffScaleKey( spep_4 + 8, ctgaha, 1.67, 1.67 );

setEffRotateKey( spep_4 + 0, ctgaha, -34.6 );
setEffRotateKey( spep_4 + 8, ctgaha, -34.6 );

setEffAlphaKey( spep_4 + 0, ctgaha, 255 );
setEffAlphaKey( spep_4 + 8, ctgaha, 255 );

ctbaki = entryEffectLife( spep_4 -3 + 46,  10020, 17, 0x100, -1, 0, 102.8, 165.1 ); --バキッ
setEffMoveKey( spep_4 -3 + 46, ctbaki, 102.8, 165.1 , 0 );
setEffMoveKey( spep_4 -3 + 48, ctbaki, 74.8, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 50, ctbaki, 74, 306 , 0 );
setEffMoveKey( spep_4 -3 + 52, ctbaki, 74.8, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 54, ctbaki, 74, 306 , 0 );
setEffMoveKey( spep_4 -3 + 56, ctbaki, 74.8, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 58, ctbaki, 74, 306 , 0 );
setEffMoveKey( spep_4 -3 + 60, ctbaki, 74.8, 309.8 , 0 );
setEffMoveKey( spep_4 -3 + 62, ctbaki, 74, 306 , 0 );
setEffMoveKey( spep_4 -3 + 63, ctbaki, 74, 306 , 0 );

setEffScaleKey( spep_4 -3 + 46, ctbaki, 0.42, 0.42 );
setEffScaleKey( spep_4 -3 + 48, ctbaki, 1.79, 1.79 );
setEffScaleKey( spep_4 -3 + 63, ctbaki, 1.79, 1.79 );

setEffRotateKey( spep_4 -3 + 46, ctbaki, -11.5 );
setEffRotateKey( spep_4 -3 + 47, ctbaki, -11.5 );
setEffRotateKey( spep_4 -3 + 48, ctbaki, -11.6 );
setEffRotateKey( spep_4 -3 + 63, ctbaki, -11.6 );

setEffAlphaKey( spep_4 -3 + 46, ctbaki, 255 );
setEffAlphaKey( spep_4 -3 + 63, ctbaki, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 85, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 46, 1, 108 );

--setMoveKey( spep_4  + 0, 1, 78.1, -4.8 , 0 );
setMoveKey( spep_4  + 0, 1, 75, 18.5 , 0 );
setMoveKey( spep_4  + 2, 1, 92.2, -19.9 , 0 );
setMoveKey( spep_4 -3  + 6, 1, 71.6, 7.5 , 0 );
setMoveKey( spep_4 -3  + 8, 1, 89.4, 9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 80.9, 8.5 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 84.5, 6.6 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 85.4, 11.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 84.9, 12.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 84.3, 17.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 87.9, 15.2 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 88.7, 20 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 88.2, 20.8 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 87.7, 25.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 91.3, 23.7 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 92.1, 28.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 91.6, 29.4 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 91.1, 34.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 94.6, 32.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 95.5, 37.1 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 94.9, 37.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 94.4, 42.7 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 98, 40.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 131.6, 13.2 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 302.8, -8.9 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 294.8, 3.4 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 319.3, -30.4 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 303.3, -10 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 274.4, -1.9 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 212.9, -7.5 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 218.8, -5.6 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 221.1, -6.2 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 377.6, -10.8 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 532.8, -22.7 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 691.7, -27.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 846.9, -34.2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 846.9, -31.8 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 845.7, -36.7 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 848.1, -34.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 846.9, -34.2 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 846.9, -31.8 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 845.7, -36.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 848.1, -34.2 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 846.9, -34.2 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 846.9, -31.8 , 0 );

--setScaleKey( spep_4 + 0, 1, 1.3, 1.3 );
setScaleKey( spep_4 + 0, 1, 1.56, 1.56 );
setScaleKey( spep_4 + 2, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 6, 1, 1.39, 1.39 );
setScaleKey( spep_4 -3 + 8, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 47, 1, 1.3, 1.3 );
setScaleKey( spep_4 -3 + 48, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 50, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 52, 1, 1.93, 1.93 );
setScaleKey( spep_4 -3 + 54, 1, 1.92, 1.92 );
setScaleKey( spep_4 -3 + 56, 1, 1.55, 1.55 );
setScaleKey( spep_4 -3 + 58, 1, 1.17, 1.17 );
setScaleKey( spep_4 -3 + 88, 1, 1.17, 1.17 );

setRotateKey( spep_4 + 0, 1, -32.2 );
setRotateKey( spep_4 -3 + 45, 1, -32.2 );
setRotateKey( spep_4 -3 + 46, 1, 5.3 );
setRotateKey( spep_4 -3 + 88, 1, 5.3 );


-- ** 音 ** --
--蹴り1
playSe( spep_4 + 49, 1003 );
setSeVolume( spep_4 + 49, 1003, 53 );
--蹴り2
playSe( spep_4 + 53, 1120 );

--くるりん
SE07 = playSe( spep_4 + 65, 1117 );
stopSe( spep_4 + 86 + 19, SE07, 9 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86, 0, 0, 0, 0, 255 );  --黒　背景


-- ** 次の準備 ** --
spep_5 = spep_4 + 86;

------------------------------------------------------
-- フィニッシュ(136F)
------------------------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07r, 0x80, -1, 0, 0, 0 );  --フィニッシュ(ef_007)
setEffMoveKey( spep_5 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 136, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 136, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 136, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 136, finish_f, 255 );

-- ** 音 ** --
--着地1
playSe( spep_5 + 25, 1106 );
setSeVolume( spep_5 + 25, 1106, 141 );
--着地2
playSe( spep_5 + 27, 1106 );
setSeVolume( spep_5 + 27, 1106, 141 );

--悟飯ジャンプ1
playSe( spep_5 + 29, 4 );
--悟飯ジャンプ2
playSe( spep_5 + 29, 1151 );
--悟飯ジャンプ3
playSe( spep_5 + 91, 4 );
--悟飯ジャンプ4
playSe( spep_5 + 91, 1151 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 136, 0, 0, 0, 0, 255 );  --黒　背景

-- ** ダメージ表示 ** --
dealDamage( spep_5 + 26 );
endPhase( spep_5 + 126 );


end